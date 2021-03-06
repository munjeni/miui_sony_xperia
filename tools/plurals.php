<?php

header('Content-Type: text/xml; charset=UTF-8');
parse_str(implode('&', array_slice($argv, 1)), $_GET);

$a_g = $_GET['a'];
$b_g = $_GET['b'];
$c_g = $_GET['c'];

$a = file_get_contents($a_g);
$b = file_get_contents($b_g);

$translated = array();

preg_match_all('| <plurals name="(.*?)">(.*?)</plurals>|is', $a, $matchesa, PREG_SET_ORDER);
preg_match_all('| <plurals name="(.*?)">(.*?)</plurals>|is', $b, $matchesb, PREG_SET_ORDER);

$out = '<?xml version="1.0" encoding="utf-8" ' . '?' . '>
<resources>' . "\n";

if (isset($matchesb))
for ($e=0; $e<count($matchesb); $e++) {
    if (strstr($matchesb[$e][1], '" ')) {
        $translated[ strstr($matchesb[$e][1], '" ', true) ]["orig"] = $matchesb[$e][1];
        $translated[ strstr($matchesb[$e][1], '" ', true) ]["trim"] = strstr($matchesb[$e][1], '" ', true);
        $translated[ strstr($matchesb[$e][1], '" ', true) ]["string"] = $matchesb[$e][2];
    } else {
        $translated[ $matchesb[$e][1] ]["orig"] = $matchesb[$e][1];
        $translated[ $matchesb[$e][1] ]["trim"] = $matchesb[$e][1];
        $translated[ $matchesb[$e][1] ]["string"] = $matchesb[$e][2];
    }
}

if (isset($matchesa))
for ($i=0; $i<count($matchesa); $i++) {
    $origin[ $matchesa[$i][1] ] = $matchesa[$i][2];
    if (isset($translated[ $matchesa[$i][1] ]["trim"])) {
        $out .= '    <plurals name="' . $translated[ $matchesa[$i][1] ]["orig"] . '">' . $translated[ $matchesa[$i][1] ]["string"] . "</plurals>\n";
    } else {
        $out .= '    <plurals name="' . $matchesa[$i][1] . '">' . $origin[ $matchesa[$i][1] ] . "</plurals>\n";
    }
}

if (isset($matchesb)) {
	$out .= "</resources>";
	//print $out;
	$fp = fopen($c_g, 'w');
	fwrite($fp, $out);
	fclose($fp);

	/* helper function for updating translations folder resources */
	$fp = fopen($b_g, 'w+');
	fwrite($fp, $out);
	fclose($fp);
}

?>
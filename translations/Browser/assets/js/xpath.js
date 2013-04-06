function getElementFromXPath(xPathString){
    return getElementByXPathFromBaseElement(document.body, xPathString);
}

function getElementsFromXPath(ele, xpath){
    var xpaths = xpath.split(",");
    if (xpaths.length > 1){
        for (var i = 0; i < xpaths.length; i++){
            var resultEle = getElementsByOneXPath(ele, xpaths[i]);

            if (resultEle != null && resultEle.length != 0){
                return resultEle;
            }
        }
        return null;
    }
    else
        return getElementsByOneXPath(ele, xpath);
}

function getElementsByOneXPath(ele, xPath){
    var eles = [];
    if (xPath.search("//") == 0){
        //xxx[@xxx="xxxx"]
        var tagName = xPath.substring(2, xPath.indexOf("["));
        var attributeName = xPath.substring(xPath.indexOf("@") + 1, xPath.lastIndexOf("="));
        var attributeValue = xPath.substring(xPath.indexOf("\"") + 1, xPath.lastIndexOf("\""));
        var values = attributeValue.split('|');
        var elements = ele.getElementsByTagName(tagName);

        for (var i = 0; i < elements.length; i++){
            var currentAttrVal = elements[i].getAttribute(attributeName);
            for (var j = 0; j < values.length; j++){
                var completeMatch;
                var matchValue = values[j];
                if (matchValue.indexOf("*") == -1){
                    completeMatch = true;
                }
                else{
                    matchValue = matchValue.substring(0, matchValue.indexOf("*"));
                    completeMatch = false;
                }
                if (completeMatch){
                    // completely match
                    if (currentAttrVal == matchValue){
                        eles.push(elements[i]);
                    }
                }
                else{
                    if (matchValue == "" || (currentAttrVal != null && currentAttrVal.indexOf(matchValue) != -1)){
                        eles.push(elements[i]);
                    }
                }
            }
        }
    }
    return eles;
}


function getElementByOneXPath(baseEle, xPathString){
    if (xPathString == null)
        return null;

     if (xPathString.search("//") == 0){
        // //xxx[@xxx="xxxx"]
        var tagName = xPathString.substring(2, xPathString.indexOf("["));
        var attributeName = xPathString.substring(xPathString.indexOf("@") + 1, xPathString.lastIndexOf("="));
        var attributeValue = xPathString.substring(xPathString.indexOf("\"") + 1, xPathString.lastIndexOf("\""));
        var elements = baseEle.getElementsByTagName(tagName);
        var completeMatch;

        if (attributeValue.indexOf("*") == -1){
            completeMatch = true;
        }
        else{
            attributeValue = attributeValue.substring(0, attributeValue.indexOf("*"));
            completeMatch = false;
        }

        if (attributeName == 'id' && completeMatch){
            // //*[@id='xxxx']
            var ele = document.getElementById(attributeValue);
            return ele;
        }
        else if (tagName == 'a' && attributeName == "text"){
            // //a[@text="xxxx"]
            var elements = baseEle.getElementsByTagName(tagName);

            for (i in elements){
                 if (elements[i].innerText == attributeValue){
                     return elements[i];
                 }
            }
        }

        else{
            var eles = getElementsFromXPath(baseEle, xPathString);
            if (eles == null){
                return null;
            }
            return eles[0];
        }
    }
    var tags = xPathString.split('/');
    var currentEle = baseEle;
    for (var i =0; i < tags.length; i++){
        if (tags[i]=='' || tags[i] == 'html' || tags[i] == 'body'){
            continue;
        }
        if (currentEle == null){
            return null;
        }
        var pos1 = tags[i].indexOf("[");
        var pos2 = tags[i].indexOf("]");
        var idx = "1";
        var tag = tags[i];

        if (pos1 != -1){
            idx = tags[i].substring(pos1 + 1, pos2);
            tag = tags[i].substring(0, pos1);
        }

        var idxNum = parseInt(idx);
        var childNodes = currentEle.childNodes;
        if (childNodes == null){
            return null;
        }
        var count = 0;
        for (node in childNodes){
            if(childNodes[node]==null)
                continue;
            if (childNodes[node].nodeType == 1 && childNodes[node].tagName != 'undefined' && childNodes[node].tagName.toLowerCase() == tag)
                count++;
            if (count == idxNum){
                currentEle = childNodes[node];
                break;
            }
        }
        if (count != idxNum) return null;

    }
    return currentEle;
}

function getElementByXPathFromBaseElement(baseEle, xPathString){

    if (baseEle == null){
        return null;
    }
    var xpaths = xPathString.split(",");
    if (xpaths.length > 1){
        for (var i = 0; i < xpaths.length; i++){
            var resultEle = getElementByXPathWithParent(baseEle, xpaths[i]);

            if (resultEle != null){
                return resultEle;
            }
        }
        return null;
    }
    else
        return getElementByXPathWithParent(baseEle, xPathString);
}

function getElementByXPathWithParent(baseEle, xPathString){
    if (xPathString.search("//") == 0){
        if (xPathString.lastIndexOf("\"]") != xPathString.length - 1){
            // //xxx[@xxx="xxx"]/xxx/xxx
            var subPath1 = xPathString.substring(0, xPathString.lastIndexOf("\"]") + 2);
            var subPath2 = xPathString.substring(xPathString.lastIndexOf("\"]") + 2, xPathString.length);
            var parentEle = getElementByOneXPath(baseEle, subPath1);

            if (parentEle == null){
                return null;
            }
            return getElementByOneXPath(parentEle, subPath2);
        }
    }
    return getElementByOneXPath(baseEle, xPathString);
}

function getContentImage(contentEle){
    var imageEles = contentEle.getElementsByTagName("img");
    for (var i = 0; i < imageEles.length; i++){
        var imgWidth = imageEles[i].width;
        var imgHeight = imageEles[i].height;
        if ((imgWidth == 0 && imgHeight == 0) || (imgWidth > 60 && imgHeight > 60)){
            window.reading.onImageLinkFound(imageEles[i].src);
            break;
        }
    }
}

function getContentHTMLFromXPath(xPathString, adsXPath){
    var ele = getElementFromXPath(xPathString);

    if (ele == null){
        window.reading.contentPathNotFound(xPathString);
    }
    else{
        if (adsXPath != ""){
            var adXPathArray = adsXPath.split(",");
            for (var i = 0; i < adXPathArray.length; i++){
                var adEle = getElementByXPathFromBaseElement(ele, adXPathArray[i]);
                if (adEle != null){
                    var parentEle = adEle.parentNode;
                    parentEle.removeChild(adEle);
                }
            }
        }
        getContentImage(ele);
        window.reading.setContentHTML(ele.innerHTML);
    }
}

function getCommentsHTMLFromXPath(xPathString){
    var ele = getElementFromXPath(xPathString);
    if (ele == null){
        window.reading.commentsPathNotFound();
    }
    else{
        window.reading.setCommentsHTML(ele.innerHTML);
    }
}

function getTitleHTMLFromXPath(xPathString){
    var ele = getElementFromXPath(xPathString);
    if (ele == null){
        window.reading.titlePathNotFound(xPathString);
    }
    else{
        window.reading.setTitleHTML(ele.innerHTML);
    }
}

function getNextLinkFromXPath(xPathString){
    var ele = getElementFromXPath(xPathString);
    if (ele == null ||
        ele.tagName.toLowerCase() != 'a' ||
        ele.getAttribute('href') == null ||
        ele.getAttribute('href') == ''){
        window.reading.nextLinkPathNotFound(xPathString);
    }
    else{
        window.reading.setNextLinkUrl(ele.getAttribute('href'));
    }
}

function getInnerHTMLFromXPath(baseEle, xpath){
    if (xpath.lastIndexOf('/innerText') != -1){
        xpath = xpath.substring(0, xpath.lastIndexOf('/innerText'));
        return getInnerTextFromXPath(baseEle, xpath);
    }
    var result = "";
    var ele = getElementByXPathFromBaseElement(baseEle, xpath);
    if (ele != null){
        result = ele.innerHTML;
    }
    return result;
}

function getImgSrcFromXPath(baseEle, xpath){
    var result = "";
    var ele = getElementByXPathFromBaseElement(baseEle, xpath);
    if (ele != null){
        result = ele.src;
    }
    return result;
}

function getInnerTextFromXPath(baseEle, xpath){
    var result = "";
    var ele = getElementByXPathFromBaseElement(baseEle, xpath);
    var childEle = ele.firstChild;
    while (childEle != null){
        if (childEle.nodeType == 3){
            result += childEle.nodeValue;
        }
        childEle = childEle.nextSibling;
    }

    return result;
}

function getLinkHrefFromXPath(baseEle, xpath){
    var result = "";
    var ele = getElementByXPathFromBaseElement(baseEle, xpath);
    if (ele != null){
        if (ele.href == 'javascript:;'){
            // for versions after discuz x1.5, the posting href is the javascript:;,
            // to handle this, we should find the real url via the onclick handler
            var onClickHandler = ele.getAttribute('onclick');
            var params = onClickHandler.substring(onClickHandler.indexOf('(') + 1,onClickHandler.indexOf(')')).split(',');
            for (var i = 0; i < params.length; i++){
                if (params[i].indexOf('forum.php') != -1){
                    result = params[i];
                    break;
                }
            }
        }
        else
            result = ele.href;
    }
    return result;
}


function getRectFromXPath(xPathString){
    var ele = getElementFromXPath(xPathString);
    if (ele == null){
        window.blockRects.xPathNotFound(xPathString);
        return;
    }
    var eleOffsetX = ele.offsetLeft;
    var eleOffsetY = ele.offsetTop;
    var eleCurrent = ele.offsetParent;
    while (eleCurrent != null){
        eleOffsetX += eleCurrent.offsetLeft;
        eleOffsetY += eleCurrent.offsetTop;
        eleCurrent = eleCurrent.offsetParent;
    }
    var eleHeight = ele.scrollHeight;
    var eleWidth = ele.scrollWidth;

    window.blockRects.addWebRect(xPathString, eleOffsetX, eleOffsetY, eleWidth, eleHeight);
}

function getElementXPath(elt)
{
    var path = "";
        for (; elt && elt.nodeType == 1; elt = elt.parentNode)
        {
            idx = getElementIdx(elt);
            xname = elt.tagName;
            if (idx > 1) xname += "[" + idx + "]";
            path = "/" + xname + path;
        }


    return path;
}

function getElementIdx(elt)
{
    var count = 1;
    for (var sib = elt.previousSibling; sib ; sib = sib.previousSibling)
    {
        if(sib.nodeType == 1 && sib.tagName == elt.tagName) count++
    }

    return count;
}

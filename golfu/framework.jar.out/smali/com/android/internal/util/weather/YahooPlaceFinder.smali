.class public Lcom/android/internal/util/weather/YahooPlaceFinder;
.super Ljava/lang/Object;
.source "YahooPlaceFinder.java"


# static fields
.field private static final YAHOO_API_BASE_URL:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://query.yahooapis.com/v1/public/yql?q="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "select woeid from geo.placefinder where text ="

    invoke-static {v1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/util/weather/YahooPlaceFinder;->YAHOO_API_BASE_URL:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static GeoCode(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "c"
    .parameter "location"

    .prologue
    .line 38
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/internal/util/weather/YahooPlaceFinder;->YAHOO_API_BASE_URL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\"%s\""

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 39
    .local v1, url:Ljava/lang/String;
    new-instance v2, Lcom/android/internal/util/weather/HttpRetriever;

    invoke-direct {v2}, Lcom/android/internal/util/weather/HttpRetriever;-><init>()V

    invoke-virtual {v2, v1}, Lcom/android/internal/util/weather/HttpRetriever;->retrieve(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 40
    .local v0, response:Ljava/lang/String;
    new-instance v2, Lcom/android/internal/util/weather/WeatherXmlParser;

    invoke-direct {v2, p0}, Lcom/android/internal/util/weather/WeatherXmlParser;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v0}, Lcom/android/internal/util/weather/WeatherXmlParser;->parsePlaceFinderResponse(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static reverseGeoCode(Landroid/content/Context;DD)Ljava/lang/String;
    .locals 7
    .parameter "c"
    .parameter "latitude"
    .parameter "longitude"

    .prologue
    .line 29
    const-string v3, "\"%s %s\" and gflags=\"R\""

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 31
    .local v0, formattedCoordinates:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/android/internal/util/weather/YahooPlaceFinder;->YAHOO_API_BASE_URL:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 32
    .local v2, url:Ljava/lang/String;
    new-instance v3, Lcom/android/internal/util/weather/HttpRetriever;

    invoke-direct {v3}, Lcom/android/internal/util/weather/HttpRetriever;-><init>()V

    invoke-virtual {v3, v2}, Lcom/android/internal/util/weather/HttpRetriever;->retrieve(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 33
    .local v1, response:Ljava/lang/String;
    new-instance v3, Lcom/android/internal/util/weather/WeatherXmlParser;

    invoke-direct {v3, p0}, Lcom/android/internal/util/weather/WeatherXmlParser;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v1}, Lcom/android/internal/util/weather/WeatherXmlParser;->parsePlaceFinderResponse(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

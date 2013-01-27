.class public Lcom/android/internal/util/weather/YahooPlaceFinder;
.super Ljava/lang/Object;
.source "YahooPlaceFinder.java"


# static fields
.field private static final YAHOO_API_BASE_REV_URL:Ljava/lang/String; = "http://where.yahooapis.com/geocode?appid=jYkTZp64&q=%1$s,+%2$s&gflags=R"

.field private static final YAHOO_API_BASE_URL:Ljava/lang/String; = "http://where.yahooapis.com/geocode?appid=jYkTZp64&q=%1$s"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static GeoCode(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "c"
    .parameter "location"

    .prologue
    .line 36
    const-string v2, "http://where.yahooapis.com/geocode?appid=jYkTZp64&q=%1$s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x20

    const/16 v4, 0x2b

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    .line 37
    .local v1, url:Ljava/lang/String;
    new-instance v2, Lcom/android/internal/util/weather/HttpRetriever;

    invoke-direct {v2}, Lcom/android/internal/util/weather/HttpRetriever;-><init>()V

    invoke-virtual {v2, v1}, Lcom/android/internal/util/weather/HttpRetriever;->retrieve(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 38
    .local v0, response:Ljava/lang/String;
    new-instance v2, Lcom/android/internal/util/weather/WeatherXmlParser;

    invoke-direct {v2, p0}, Lcom/android/internal/util/weather/WeatherXmlParser;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v0}, Lcom/android/internal/util/weather/WeatherXmlParser;->parsePlaceFinderResponse(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static reverseGeoCode(Landroid/content/Context;DD)Ljava/lang/String;
    .locals 6
    .parameter "c"
    .parameter "latitude"
    .parameter "longitude"

    .prologue
    .line 28
    const-string v2, "http://where.yahooapis.com/geocode?appid=jYkTZp64&q=%1$s,+%2$s&gflags=R"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 30
    .local v1, url:Ljava/lang/String;
    new-instance v2, Lcom/android/internal/util/weather/HttpRetriever;

    invoke-direct {v2}, Lcom/android/internal/util/weather/HttpRetriever;-><init>()V

    invoke-virtual {v2, v1}, Lcom/android/internal/util/weather/HttpRetriever;->retrieve(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 31
    .local v0, response:Ljava/lang/String;
    new-instance v2, Lcom/android/internal/util/weather/WeatherXmlParser;

    invoke-direct {v2, p0}, Lcom/android/internal/util/weather/WeatherXmlParser;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v0}, Lcom/android/internal/util/weather/WeatherXmlParser;->parsePlaceFinderResponse(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

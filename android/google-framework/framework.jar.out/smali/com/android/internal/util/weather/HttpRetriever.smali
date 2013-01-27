.class public Lcom/android/internal/util/weather/HttpRetriever;
.super Ljava/lang/Object;
.source "HttpRetriever.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private client:Lorg/apache/http/impl/client/DefaultHttpClient;

.field private httpConnection:Ljava/net/HttpURLConnection;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/util/weather/HttpRetriever;->TAG:Ljava/lang/String;

    .line 54
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    iput-object v0, p0, Lcom/android/internal/util/weather/HttpRetriever;->client:Lorg/apache/http/impl/client/DefaultHttpClient;

    return-void
.end method

.method private getDataFromConnection()Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 126
    iget-object v6, p0, Lcom/android/internal/util/weather/HttpRetriever;->httpConnection:Ljava/net/HttpURLConnection;

    if-nez v6, :cond_0

    .line 127
    iget-object v6, p0, Lcom/android/internal/util/weather/HttpRetriever;->TAG:Ljava/lang/String;

    const-string v7, "Connection is null"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    :goto_0
    return-object v5

    .line 131
    :cond_0
    const/4 v4, 0x0

    .line 132
    .local v4, strValue:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/internal/util/weather/HttpRetriever;->httpConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 133
    .local v1, inputStream:Ljava/io/InputStream;
    if-nez v1, :cond_1

    .line 134
    iget-object v6, p0, Lcom/android/internal/util/weather/HttpRetriever;->TAG:Ljava/lang/String;

    const-string v7, "Input stream error"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 138
    :cond_1
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 139
    .local v2, strBuf:Ljava/lang/StringBuffer;
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-direct {v5, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 140
    .local v0, buffReader:Ljava/io/BufferedReader;
    const-string v3, ""

    .line 142
    .local v3, strLine:Ljava/lang/String;
    :goto_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 143
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 144
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 148
    :cond_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 149
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 150
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method

.method private requestConnectServer(Ljava/lang/String;)V
    .locals 3
    .parameter "strURL"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 73
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    iput-object v0, p0, Lcom/android/internal/util/weather/HttpRetriever;->httpConnection:Ljava/net/HttpURLConnection;

    .line 74
    iget-object v0, p0, Lcom/android/internal/util/weather/HttpRetriever;->httpConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 76
    iget-object v0, p0, Lcom/android/internal/util/weather/HttpRetriever;->httpConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_0

    .line 77
    iget-object v0, p0, Lcom/android/internal/util/weather/HttpRetriever;->TAG:Ljava/lang/String;

    const-string v1, "Something wrong with connection"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    iget-object v0, p0, Lcom/android/internal/util/weather/HttpRetriever;->httpConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 79
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error in connection: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/util/weather/HttpRetriever;->httpConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 81
    :cond_0
    return-void
.end method

.method private requestDisconnect()V
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/internal/util/weather/HttpRetriever;->httpConnection:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/android/internal/util/weather/HttpRetriever;->httpConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 87
    :cond_0
    return-void
.end method


# virtual methods
.method public getDocumentFromURL(Ljava/lang/String;)Lorg/w3c/dom/Document;
    .locals 11
    .parameter "strURL"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 90
    if-nez p1, :cond_0

    .line 91
    iget-object v9, p0, Lcom/android/internal/util/weather/HttpRetriever;->TAG:Ljava/lang/String;

    const-string v10, "Invalid input URL"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v8

    .line 122
    :goto_0
    return-object v2

    .line 96
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/internal/util/weather/HttpRetriever;->requestConnectServer(Ljava/lang/String;)V

    .line 97
    invoke-direct {p0}, Lcom/android/internal/util/weather/HttpRetriever;->getDataFromConnection()Ljava/lang/String;

    move-result-object v7

    .line 98
    .local v7, strDocContent:Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/internal/util/weather/HttpRetriever;->requestDisconnect()V

    .line 100
    if-nez v7, :cond_1

    .line 101
    iget-object v9, p0, Lcom/android/internal/util/weather/HttpRetriever;->TAG:Ljava/lang/String;

    const-string v10, "Cannot get XML content"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v8

    .line 102
    goto :goto_0

    .line 105
    :cond_1
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v6

    .line 106
    .local v6, strContentSize:I
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 107
    .local v5, strBuff:Ljava/lang/StringBuffer;
    add-int/lit8 v9, v6, 0x1

    invoke-virtual {v5, v9}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 108
    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 109
    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    invoke-direct {v4, v9}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 111
    .local v4, is:Ljava/io/ByteArrayInputStream;
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v1

    .line 113
    .local v1, dbf:Ljavax/xml/parsers/DocumentBuilderFactory;
    const/4 v2, 0x0

    .line 116
    .local v2, docData:Lorg/w3c/dom/Document;
    :try_start_0
    invoke-virtual {v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    .line 117
    .local v0, db:Ljavax/xml/parsers/DocumentBuilder;
    invoke-virtual {v0, v4}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 118
    .end local v0           #db:Ljavax/xml/parsers/DocumentBuilder;
    :catch_0
    move-exception v3

    .line 119
    .local v3, e:Ljava/lang/Exception;
    iget-object v9, p0, Lcom/android/internal/util/weather/HttpRetriever;->TAG:Ljava/lang/String;

    const-string v10, "Parser data error"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v8

    .line 120
    goto :goto_0
.end method

.method public retrieve(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "url"

    .prologue
    .line 58
    new-instance v1, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v1, p1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 60
    .local v1, get:Lorg/apache/http/client/methods/HttpGet;
    :try_start_0
    iget-object v5, p0, Lcom/android/internal/util/weather/HttpRetriever;->client:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v5, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    .line 61
    .local v2, getResponse:Lorg/apache/http/HttpResponse;
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v3

    .line 62
    .local v3, getResponseEntity:Lorg/apache/http/HttpEntity;
    if-eqz v3, :cond_0

    .line 63
    invoke-static {v3}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 69
    .end local v2           #getResponse:Lorg/apache/http/HttpResponse;
    .end local v3           #getResponseEntity:Lorg/apache/http/HttpEntity;
    :goto_0
    return-object v4

    .line 66
    :catch_0
    move-exception v0

    .line 67
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 69
    .end local v0           #e:Ljava/io/IOException;
    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

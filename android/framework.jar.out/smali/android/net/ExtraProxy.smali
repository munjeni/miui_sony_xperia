.class public final Landroid/net/ExtraProxy;
.super Ljava/lang/Object;
.source "ExtraProxy.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getPreferredHttpHost(Ljava/net/InetSocketAddress;)Lorg/apache/http/HttpHost;
    .locals 4
    .parameter "sa"

    .prologue
    .line 43
    const/4 v0, 0x0

    .line 44
    .local v0, hostStr:Ljava/lang/String;
    invoke-virtual {p0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 45
    invoke-virtual {p0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    .line 47
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 48
    invoke-virtual {p0}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v0

    .line 51
    :cond_1
    new-instance v1, Lorg/apache/http/HttpHost;

    invoke-virtual {p0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v2

    const-string v3, "http"

    invoke-direct {v1, v0, v2, v3}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    return-object v1
.end method

.class public final Landroid/webkit/ClientCertRequestHandler;
.super Landroid/os/Handler;
.source "ClientCertRequestHandler.java"


# instance fields
.field private final mBrowserFrame:Landroid/webkit/BrowserFrame;

.field private final mHandle:I

.field private final mHostAndPort:Ljava/lang/String;

.field private final mTable:Landroid/webkit/SslClientCertLookupTable;


# direct methods
.method constructor <init>(Landroid/webkit/BrowserFrame;ILjava/lang/String;Landroid/webkit/SslClientCertLookupTable;)V
    .locals 0
    .parameter "browserFrame"
    .parameter "handle"
    .parameter "host_and_port"
    .parameter "table"

    .prologue
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Landroid/webkit/ClientCertRequestHandler;->mBrowserFrame:Landroid/webkit/BrowserFrame;

    iput p2, p0, Landroid/webkit/ClientCertRequestHandler;->mHandle:I

    iput-object p3, p0, Landroid/webkit/ClientCertRequestHandler;->mHostAndPort:Ljava/lang/String;

    iput-object p4, p0, Landroid/webkit/ClientCertRequestHandler;->mTable:Landroid/webkit/SslClientCertLookupTable;

    return-void
.end method

.method static synthetic access$000(Landroid/webkit/ClientCertRequestHandler;)I
    .locals 1
    .parameter "x0"

    .prologue
    iget v0, p0, Landroid/webkit/ClientCertRequestHandler;->mHandle:I

    return v0
.end method

.method static synthetic access$100(Landroid/webkit/ClientCertRequestHandler;)Landroid/webkit/BrowserFrame;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/webkit/ClientCertRequestHandler;->mBrowserFrame:Landroid/webkit/BrowserFrame;

    return-object v0
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/webkit/ClientCertRequestHandler;->mTable:Landroid/webkit/SslClientCertLookupTable;

    iget-object v1, p0, Landroid/webkit/ClientCertRequestHandler;->mHostAndPort:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/SslClientCertLookupTable;->Deny(Ljava/lang/String;)V

    new-instance v0, Landroid/webkit/ClientCertRequestHandler$4;

    invoke-direct {v0, p0}, Landroid/webkit/ClientCertRequestHandler$4;-><init>(Landroid/webkit/ClientCertRequestHandler;)V

    invoke-virtual {p0, v0}, Landroid/webkit/ClientCertRequestHandler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public ignore()V
    .locals 1

    .prologue
    new-instance v0, Landroid/webkit/ClientCertRequestHandler$3;

    invoke-direct {v0, p0}, Landroid/webkit/ClientCertRequestHandler$3;-><init>(Landroid/webkit/ClientCertRequestHandler;)V

    invoke-virtual {p0, v0}, Landroid/webkit/ClientCertRequestHandler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public proceed(Ljava/security/PrivateKey;[Ljava/security/cert/X509Certificate;)V
    .locals 5
    .parameter "privateKey"
    .parameter "chain"

    .prologue
    invoke-interface {p1}, Ljava/security/PrivateKey;->getEncoded()[B

    move-result-object v2

    .local v2, privateKeyBytes:[B
    :try_start_0
    invoke-static {p2}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->encodeCertificates([Ljava/security/cert/Certificate;)[[B

    move-result-object v0

    .local v0, chainBytes:[[B
    iget-object v3, p0, Landroid/webkit/ClientCertRequestHandler;->mTable:Landroid/webkit/SslClientCertLookupTable;

    iget-object v4, p0, Landroid/webkit/ClientCertRequestHandler;->mHostAndPort:Ljava/lang/String;

    invoke-virtual {v3, v4, v2, v0}, Landroid/webkit/SslClientCertLookupTable;->Allow(Ljava/lang/String;[B[[B)V

    new-instance v3, Landroid/webkit/ClientCertRequestHandler$1;

    invoke-direct {v3, p0, v2, v0}, Landroid/webkit/ClientCertRequestHandler$1;-><init>(Landroid/webkit/ClientCertRequestHandler;[B[[B)V

    invoke-virtual {p0, v3}, Landroid/webkit/ClientCertRequestHandler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0           #chainBytes:[[B
    :goto_0
    return-void

    :catch_0
    move-exception v1

    .local v1, e:Ljava/security/cert/CertificateEncodingException;
    new-instance v3, Landroid/webkit/ClientCertRequestHandler$2;

    invoke-direct {v3, p0}, Landroid/webkit/ClientCertRequestHandler$2;-><init>(Landroid/webkit/ClientCertRequestHandler;)V

    invoke-virtual {p0, v3}, Landroid/webkit/ClientCertRequestHandler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

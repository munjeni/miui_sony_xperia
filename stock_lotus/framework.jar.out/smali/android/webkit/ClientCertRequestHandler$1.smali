.class Landroid/webkit/ClientCertRequestHandler$1;
.super Ljava/lang/Object;
.source "ClientCertRequestHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/webkit/ClientCertRequestHandler;->proceed(Ljava/security/PrivateKey;[Ljava/security/cert/X509Certificate;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkit/ClientCertRequestHandler;

.field final synthetic val$chainBytes:[[B

.field final synthetic val$privateKeyBytes:[B


# direct methods
.method constructor <init>(Landroid/webkit/ClientCertRequestHandler;[B[[B)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 58
    iput-object p1, p0, Landroid/webkit/ClientCertRequestHandler$1;->this$0:Landroid/webkit/ClientCertRequestHandler;

    iput-object p2, p0, Landroid/webkit/ClientCertRequestHandler$1;->val$privateKeyBytes:[B

    iput-object p3, p0, Landroid/webkit/ClientCertRequestHandler$1;->val$chainBytes:[[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 60
    iget-object v0, p0, Landroid/webkit/ClientCertRequestHandler$1;->this$0:Landroid/webkit/ClientCertRequestHandler;

    #getter for: Landroid/webkit/ClientCertRequestHandler;->mBrowserFrame:Landroid/webkit/BrowserFrame;
    invoke-static {v0}, Landroid/webkit/ClientCertRequestHandler;->access$100(Landroid/webkit/ClientCertRequestHandler;)Landroid/webkit/BrowserFrame;

    move-result-object v0

    iget-object v1, p0, Landroid/webkit/ClientCertRequestHandler$1;->this$0:Landroid/webkit/ClientCertRequestHandler;

    #getter for: Landroid/webkit/ClientCertRequestHandler;->mHandle:I
    invoke-static {v1}, Landroid/webkit/ClientCertRequestHandler;->access$000(Landroid/webkit/ClientCertRequestHandler;)I

    move-result v1

    iget-object v2, p0, Landroid/webkit/ClientCertRequestHandler$1;->val$privateKeyBytes:[B

    iget-object v3, p0, Landroid/webkit/ClientCertRequestHandler$1;->val$chainBytes:[[B

    invoke-virtual {v0, v1, v2, v3}, Landroid/webkit/BrowserFrame;->nativeSslClientCert(I[B[[B)V

    .line 61
    return-void
.end method

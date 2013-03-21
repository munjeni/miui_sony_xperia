.class Landroid/webkit/ClientCertRequestHandler$2;
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


# direct methods
.method constructor <init>(Landroid/webkit/ClientCertRequestHandler;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Landroid/webkit/ClientCertRequestHandler$2;->this$0:Landroid/webkit/ClientCertRequestHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    iget-object v0, p0, Landroid/webkit/ClientCertRequestHandler$2;->this$0:Landroid/webkit/ClientCertRequestHandler;

    #getter for: Landroid/webkit/ClientCertRequestHandler;->mBrowserFrame:Landroid/webkit/BrowserFrame;
    invoke-static {v0}, Landroid/webkit/ClientCertRequestHandler;->access$100(Landroid/webkit/ClientCertRequestHandler;)Landroid/webkit/BrowserFrame;

    move-result-object v2

    iget-object v0, p0, Landroid/webkit/ClientCertRequestHandler$2;->this$0:Landroid/webkit/ClientCertRequestHandler;

    #getter for: Landroid/webkit/ClientCertRequestHandler;->mHandle:I
    invoke-static {v0}, Landroid/webkit/ClientCertRequestHandler;->access$000(Landroid/webkit/ClientCertRequestHandler;)I

    move-result v3

    move-object v0, v1

    check-cast v0, [[B

    invoke-virtual {v2, v3, v1, v0}, Landroid/webkit/BrowserFrame;->nativeSslClientCert(I[B[[B)V

    return-void
.end method

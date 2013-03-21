.class Landroid/webkit/WebView$PostLayout;
.super Ljava/lang/Object;
.source "WebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PostLayout"
.end annotation


# instance fields
.field final mWebView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>(Landroid/webkit/WebView;)V
    .locals 0
    .parameter "webView"

    .prologue
    .line 5953
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5954
    iput-object p1, p0, Landroid/webkit/WebView$PostLayout;->mWebView:Landroid/webkit/WebView;

    .line 5955
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 5958
    iget-object v0, p0, Landroid/webkit/WebView$PostLayout;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkit/WebView$PostLayout;->mWebView:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;
    invoke-static {v0}, Landroid/webkit/WebView;->access$700(Landroid/webkit/WebView;)Landroid/webkit/WebViewCore;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5959
    iget-object v0, p0, Landroid/webkit/WebView$PostLayout;->mWebView:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;
    invoke-static {v0}, Landroid/webkit/WebView;->access$700(Landroid/webkit/WebView;)Landroid/webkit/WebViewCore;

    move-result-object v0

    const/16 v1, 0xbd

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    .line 5961
    :cond_0
    return-void
.end method

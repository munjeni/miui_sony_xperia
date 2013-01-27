.class Landroid/webkit/MiuiHTML5VideoFullScreen$4;
.super Ljava/lang/Object;
.source "MiuiHTML5VideoFullScreen.java"

# interfaces
.implements Landroid/webkit/WebChromeClient$CustomViewCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/MiuiHTML5VideoFullScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkit/MiuiHTML5VideoFullScreen;


# direct methods
.method constructor <init>(Landroid/webkit/MiuiHTML5VideoFullScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 232
    iput-object p1, p0, Landroid/webkit/MiuiHTML5VideoFullScreen$4;->this$0:Landroid/webkit/MiuiHTML5VideoFullScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCustomViewHidden()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 238
    iget-object v0, p0, Landroid/webkit/MiuiHTML5VideoFullScreen$4;->this$0:Landroid/webkit/MiuiHTML5VideoFullScreen;

    iget-object v0, v0, Landroid/webkit/MiuiHTML5VideoFullScreen;->mProxy:Landroid/webkit/HTML5VideoViewProxy;

    invoke-virtual {v0}, Landroid/webkit/HTML5VideoViewProxy;->dispatchOnStopFullScreen()V

    .line 239
    invoke-static {}, Landroid/webkit/MiuiHTML5VideoFullScreen;->access$1100()Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Landroid/webkit/MiuiHTML5VideoFullScreen$4;->this$0:Landroid/webkit/MiuiHTML5VideoFullScreen;

    #calls: Landroid/webkit/MiuiHTML5VideoFullScreen;->getSurfaceView()Landroid/view/SurfaceView;
    invoke-static {v1}, Landroid/webkit/MiuiHTML5VideoFullScreen;->access$1000(Landroid/webkit/MiuiHTML5VideoFullScreen;)Landroid/view/SurfaceView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 241
    invoke-static {v2}, Landroid/webkit/MiuiHTML5VideoFullScreen;->access$1102(Landroid/widget/FrameLayout;)Landroid/widget/FrameLayout;

    .line 243
    iget-object v0, p0, Landroid/webkit/MiuiHTML5VideoFullScreen$4;->this$0:Landroid/webkit/MiuiHTML5VideoFullScreen;

    iget-object v0, v0, Landroid/webkit/MiuiHTML5VideoFullScreen;->mProxy:Landroid/webkit/HTML5VideoViewProxy;

    invoke-virtual {v0}, Landroid/webkit/HTML5VideoViewProxy;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->getViewManager()Landroid/webkit/ViewManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/ViewManager;->showAll()V

    .line 245
    iget-object v0, p0, Landroid/webkit/MiuiHTML5VideoFullScreen$4;->this$0:Landroid/webkit/MiuiHTML5VideoFullScreen;

    iput-object v2, v0, Landroid/webkit/MiuiHTML5VideoFullScreen;->mProxy:Landroid/webkit/HTML5VideoViewProxy;

    .line 248
    iget-object v0, p0, Landroid/webkit/MiuiHTML5VideoFullScreen$4;->this$0:Landroid/webkit/MiuiHTML5VideoFullScreen;

    #setter for: Landroid/webkit/MiuiHTML5VideoFullScreen;->mMovieController:Landroid/widget/MiuiMovieController;
    invoke-static {v0, v2}, Landroid/webkit/MiuiHTML5VideoFullScreen;->access$202(Landroid/webkit/MiuiHTML5VideoFullScreen;Landroid/widget/MiuiMovieController;)Landroid/widget/MiuiMovieController;

    .line 249
    iget-object v0, p0, Landroid/webkit/MiuiHTML5VideoFullScreen$4;->this$0:Landroid/webkit/MiuiHTML5VideoFullScreen;

    const/4 v1, 0x4

    iput v1, v0, Landroid/webkit/MiuiHTML5VideoFullScreen;->mCurrentState:I

    .line 250
    return-void
.end method

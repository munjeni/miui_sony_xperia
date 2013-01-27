.class Landroid/webkit/MiuiHTML5VideoFullScreen$2;
.super Ljava/lang/Object;
.source "MiuiHTML5VideoFullScreen.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


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
    .line 112
    iput-object p1, p0, Landroid/webkit/MiuiHTML5VideoFullScreen$2;->this$0:Landroid/webkit/MiuiHTML5VideoFullScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 2
    .parameter "holder"
    .parameter "format"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 116
    iget-object v0, p0, Landroid/webkit/MiuiHTML5VideoFullScreen$2;->this$0:Landroid/webkit/MiuiHTML5VideoFullScreen;

    iget-object v0, v0, Landroid/webkit/MiuiHTML5VideoFullScreen;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/webkit/MiuiHTML5VideoFullScreen$2;->this$0:Landroid/webkit/MiuiHTML5VideoFullScreen;

    #getter for: Landroid/webkit/MiuiHTML5VideoFullScreen;->mMovieController:Landroid/widget/MiuiMovieController;
    invoke-static {v0}, Landroid/webkit/MiuiHTML5VideoFullScreen;->access$200(Landroid/webkit/MiuiHTML5VideoFullScreen;)Landroid/widget/MiuiMovieController;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/webkit/MiuiHTML5VideoFullScreen$2;->this$0:Landroid/webkit/MiuiHTML5VideoFullScreen;

    iget v0, v0, Landroid/webkit/MiuiHTML5VideoFullScreen;->mCurrentState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 118
    iget-object v0, p0, Landroid/webkit/MiuiHTML5VideoFullScreen$2;->this$0:Landroid/webkit/MiuiHTML5VideoFullScreen;

    #getter for: Landroid/webkit/MiuiHTML5VideoFullScreen;->mMovieController:Landroid/widget/MiuiMovieController;
    invoke-static {v0}, Landroid/webkit/MiuiHTML5VideoFullScreen;->access$200(Landroid/webkit/MiuiHTML5VideoFullScreen;)Landroid/widget/MiuiMovieController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/MiuiMovieController;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Landroid/webkit/MiuiHTML5VideoFullScreen$2;->this$0:Landroid/webkit/MiuiHTML5VideoFullScreen;

    #getter for: Landroid/webkit/MiuiHTML5VideoFullScreen;->mMovieController:Landroid/widget/MiuiMovieController;
    invoke-static {v0}, Landroid/webkit/MiuiHTML5VideoFullScreen;->access$200(Landroid/webkit/MiuiHTML5VideoFullScreen;)Landroid/widget/MiuiMovieController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/MiuiMovieController;->hide()V

    .line 122
    :cond_0
    iget-object v0, p0, Landroid/webkit/MiuiHTML5VideoFullScreen$2;->this$0:Landroid/webkit/MiuiHTML5VideoFullScreen;

    #getter for: Landroid/webkit/MiuiHTML5VideoFullScreen;->mMovieController:Landroid/widget/MiuiMovieController;
    invoke-static {v0}, Landroid/webkit/MiuiHTML5VideoFullScreen;->access$200(Landroid/webkit/MiuiHTML5VideoFullScreen;)Landroid/widget/MiuiMovieController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/MiuiMovieController;->show()V

    .line 124
    :cond_1
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2
    .parameter "holder"

    .prologue
    .line 128
    iget-object v0, p0, Landroid/webkit/MiuiHTML5VideoFullScreen$2;->this$0:Landroid/webkit/MiuiHTML5VideoFullScreen;

    #setter for: Landroid/webkit/MiuiHTML5VideoFullScreen;->mSurfaceHolder:Landroid/view/SurfaceHolder;
    invoke-static {v0, p1}, Landroid/webkit/MiuiHTML5VideoFullScreen;->access$502(Landroid/webkit/MiuiHTML5VideoFullScreen;Landroid/view/SurfaceHolder;)Landroid/view/SurfaceHolder;

    .line 129
    iget-object v0, p0, Landroid/webkit/MiuiHTML5VideoFullScreen$2;->this$0:Landroid/webkit/MiuiHTML5VideoFullScreen;

    const/4 v1, 0x2

    #setter for: Landroid/webkit/MiuiHTML5VideoFullScreen;->mFullScreenMode:I
    invoke-static {v0, v1}, Landroid/webkit/MiuiHTML5VideoFullScreen;->access$602(Landroid/webkit/MiuiHTML5VideoFullScreen;I)I

    .line 131
    iget-object v0, p0, Landroid/webkit/MiuiHTML5VideoFullScreen$2;->this$0:Landroid/webkit/MiuiHTML5VideoFullScreen;

    #calls: Landroid/webkit/MiuiHTML5VideoFullScreen;->prepareForFullScreen()V
    invoke-static {v0}, Landroid/webkit/MiuiHTML5VideoFullScreen;->access$700(Landroid/webkit/MiuiHTML5VideoFullScreen;)V

    .line 132
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2
    .parameter "holder"

    .prologue
    .line 138
    iget-object v0, p0, Landroid/webkit/MiuiHTML5VideoFullScreen$2;->this$0:Landroid/webkit/MiuiHTML5VideoFullScreen;

    iget-object v1, p0, Landroid/webkit/MiuiHTML5VideoFullScreen$2;->this$0:Landroid/webkit/MiuiHTML5VideoFullScreen;

    iget-object v1, v1, Landroid/webkit/MiuiHTML5VideoFullScreen;->mProxy:Landroid/webkit/HTML5VideoViewProxy;

    invoke-virtual {v0, v1}, Landroid/webkit/MiuiHTML5VideoFullScreen;->pauseAndDispatch(Landroid/webkit/HTML5VideoViewProxy;)V

    .line 139
    iget-object v0, p0, Landroid/webkit/MiuiHTML5VideoFullScreen$2;->this$0:Landroid/webkit/MiuiHTML5VideoFullScreen;

    iget-object v0, v0, Landroid/webkit/MiuiHTML5VideoFullScreen;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 140
    iget-object v0, p0, Landroid/webkit/MiuiHTML5VideoFullScreen$2;->this$0:Landroid/webkit/MiuiHTML5VideoFullScreen;

    const/4 v1, 0x0

    #setter for: Landroid/webkit/MiuiHTML5VideoFullScreen;->mSurfaceHolder:Landroid/view/SurfaceHolder;
    invoke-static {v0, v1}, Landroid/webkit/MiuiHTML5VideoFullScreen;->access$502(Landroid/webkit/MiuiHTML5VideoFullScreen;Landroid/view/SurfaceHolder;)Landroid/view/SurfaceHolder;

    .line 141
    iget-object v0, p0, Landroid/webkit/MiuiHTML5VideoFullScreen$2;->this$0:Landroid/webkit/MiuiHTML5VideoFullScreen;

    #getter for: Landroid/webkit/MiuiHTML5VideoFullScreen;->mMovieController:Landroid/widget/MiuiMovieController;
    invoke-static {v0}, Landroid/webkit/MiuiHTML5VideoFullScreen;->access$200(Landroid/webkit/MiuiHTML5VideoFullScreen;)Landroid/widget/MiuiMovieController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Landroid/webkit/MiuiHTML5VideoFullScreen$2;->this$0:Landroid/webkit/MiuiHTML5VideoFullScreen;

    #getter for: Landroid/webkit/MiuiHTML5VideoFullScreen;->mMovieController:Landroid/widget/MiuiMovieController;
    invoke-static {v0}, Landroid/webkit/MiuiHTML5VideoFullScreen;->access$200(Landroid/webkit/MiuiHTML5VideoFullScreen;)Landroid/widget/MiuiMovieController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/MiuiMovieController;->hide()V

    .line 144
    :cond_0
    return-void
.end method

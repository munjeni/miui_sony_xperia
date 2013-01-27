.class Landroid/webkit/MiuiHTML5VideoFullScreen$6;
.super Ljava/lang/Object;
.source "MiuiHTML5VideoFullScreen.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnVideoSizeChangedListener;


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
    .line 373
    iput-object p1, p0, Landroid/webkit/MiuiHTML5VideoFullScreen$6;->this$0:Landroid/webkit/MiuiHTML5VideoFullScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVideoSizeChanged(Landroid/media/MediaPlayer;II)V
    .locals 3
    .parameter "mp"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 377
    iget-object v0, p0, Landroid/webkit/MiuiHTML5VideoFullScreen$6;->this$0:Landroid/webkit/MiuiHTML5VideoFullScreen;

    #getter for: Landroid/webkit/MiuiHTML5VideoFullScreen;->mVideoWidth:I
    invoke-static {v0}, Landroid/webkit/MiuiHTML5VideoFullScreen;->access$000(Landroid/webkit/MiuiHTML5VideoFullScreen;)I

    move-result v0

    if-ne v0, p2, :cond_0

    iget-object v0, p0, Landroid/webkit/MiuiHTML5VideoFullScreen$6;->this$0:Landroid/webkit/MiuiHTML5VideoFullScreen;

    #getter for: Landroid/webkit/MiuiHTML5VideoFullScreen;->mVideoHeight:I
    invoke-static {v0}, Landroid/webkit/MiuiHTML5VideoFullScreen;->access$100(Landroid/webkit/MiuiHTML5VideoFullScreen;)I

    move-result v0

    if-ne v0, p3, :cond_0

    .line 383
    :goto_0
    return-void

    .line 378
    :cond_0
    iget-object v0, p0, Landroid/webkit/MiuiHTML5VideoFullScreen$6;->this$0:Landroid/webkit/MiuiHTML5VideoFullScreen;

    #setter for: Landroid/webkit/MiuiHTML5VideoFullScreen;->mVideoWidth:I
    invoke-static {v0, p2}, Landroid/webkit/MiuiHTML5VideoFullScreen;->access$002(Landroid/webkit/MiuiHTML5VideoFullScreen;I)I

    .line 379
    iget-object v0, p0, Landroid/webkit/MiuiHTML5VideoFullScreen$6;->this$0:Landroid/webkit/MiuiHTML5VideoFullScreen;

    #setter for: Landroid/webkit/MiuiHTML5VideoFullScreen;->mVideoHeight:I
    invoke-static {v0, p3}, Landroid/webkit/MiuiHTML5VideoFullScreen;->access$102(Landroid/webkit/MiuiHTML5VideoFullScreen;I)I

    .line 381
    iget-object v0, p0, Landroid/webkit/MiuiHTML5VideoFullScreen$6;->this$0:Landroid/webkit/MiuiHTML5VideoFullScreen;

    #getter for: Landroid/webkit/MiuiHTML5VideoFullScreen;->mVideoSurfaceView:Landroid/webkit/MiuiHTML5VideoFullScreen$VideoSurfaceView;
    invoke-static {v0}, Landroid/webkit/MiuiHTML5VideoFullScreen;->access$1300(Landroid/webkit/MiuiHTML5VideoFullScreen;)Landroid/webkit/MiuiHTML5VideoFullScreen$VideoSurfaceView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/MiuiHTML5VideoFullScreen$VideoSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget-object v1, p0, Landroid/webkit/MiuiHTML5VideoFullScreen$6;->this$0:Landroid/webkit/MiuiHTML5VideoFullScreen;

    #getter for: Landroid/webkit/MiuiHTML5VideoFullScreen;->mVideoWidth:I
    invoke-static {v1}, Landroid/webkit/MiuiHTML5VideoFullScreen;->access$000(Landroid/webkit/MiuiHTML5VideoFullScreen;)I

    move-result v1

    iget-object v2, p0, Landroid/webkit/MiuiHTML5VideoFullScreen$6;->this$0:Landroid/webkit/MiuiHTML5VideoFullScreen;

    #getter for: Landroid/webkit/MiuiHTML5VideoFullScreen;->mVideoHeight:I
    invoke-static {v2}, Landroid/webkit/MiuiHTML5VideoFullScreen;->access$100(Landroid/webkit/MiuiHTML5VideoFullScreen;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    goto :goto_0
.end method

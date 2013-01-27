.class Landroid/webkit/MiuiHTML5VideoFullScreen$VideoSurfaceView;
.super Landroid/view/SurfaceView;
.source "MiuiHTML5VideoFullScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/MiuiHTML5VideoFullScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VideoSurfaceView"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkit/MiuiHTML5VideoFullScreen;


# direct methods
.method public constructor <init>(Landroid/webkit/MiuiHTML5VideoFullScreen;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "context"

    .prologue
    .line 30
    iput-object p1, p0, Landroid/webkit/MiuiHTML5VideoFullScreen$VideoSurfaceView;->this$0:Landroid/webkit/MiuiHTML5VideoFullScreen;

    .line 31
    invoke-direct {p0, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 32
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 4
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 36
    iget-object v2, p0, Landroid/webkit/MiuiHTML5VideoFullScreen$VideoSurfaceView;->this$0:Landroid/webkit/MiuiHTML5VideoFullScreen;

    #getter for: Landroid/webkit/MiuiHTML5VideoFullScreen;->mVideoWidth:I
    invoke-static {v2}, Landroid/webkit/MiuiHTML5VideoFullScreen;->access$000(Landroid/webkit/MiuiHTML5VideoFullScreen;)I

    move-result v2

    invoke-static {v2, p1}, Landroid/webkit/MiuiHTML5VideoFullScreen$VideoSurfaceView;->getDefaultSize(II)I

    move-result v1

    .line 37
    .local v1, width:I
    iget-object v2, p0, Landroid/webkit/MiuiHTML5VideoFullScreen$VideoSurfaceView;->this$0:Landroid/webkit/MiuiHTML5VideoFullScreen;

    #getter for: Landroid/webkit/MiuiHTML5VideoFullScreen;->mVideoHeight:I
    invoke-static {v2}, Landroid/webkit/MiuiHTML5VideoFullScreen;->access$100(Landroid/webkit/MiuiHTML5VideoFullScreen;)I

    move-result v2

    invoke-static {v2, p2}, Landroid/webkit/MiuiHTML5VideoFullScreen$VideoSurfaceView;->getDefaultSize(II)I

    move-result v0

    .line 38
    .local v0, height:I
    iget-object v2, p0, Landroid/webkit/MiuiHTML5VideoFullScreen$VideoSurfaceView;->this$0:Landroid/webkit/MiuiHTML5VideoFullScreen;

    #getter for: Landroid/webkit/MiuiHTML5VideoFullScreen;->mVideoWidth:I
    invoke-static {v2}, Landroid/webkit/MiuiHTML5VideoFullScreen;->access$000(Landroid/webkit/MiuiHTML5VideoFullScreen;)I

    move-result v2

    if-lez v2, :cond_0

    iget-object v2, p0, Landroid/webkit/MiuiHTML5VideoFullScreen$VideoSurfaceView;->this$0:Landroid/webkit/MiuiHTML5VideoFullScreen;

    #getter for: Landroid/webkit/MiuiHTML5VideoFullScreen;->mVideoHeight:I
    invoke-static {v2}, Landroid/webkit/MiuiHTML5VideoFullScreen;->access$100(Landroid/webkit/MiuiHTML5VideoFullScreen;)I

    move-result v2

    if-lez v2, :cond_0

    .line 39
    iget-object v2, p0, Landroid/webkit/MiuiHTML5VideoFullScreen$VideoSurfaceView;->this$0:Landroid/webkit/MiuiHTML5VideoFullScreen;

    #getter for: Landroid/webkit/MiuiHTML5VideoFullScreen;->mVideoWidth:I
    invoke-static {v2}, Landroid/webkit/MiuiHTML5VideoFullScreen;->access$000(Landroid/webkit/MiuiHTML5VideoFullScreen;)I

    move-result v2

    mul-int/2addr v2, v0

    iget-object v3, p0, Landroid/webkit/MiuiHTML5VideoFullScreen$VideoSurfaceView;->this$0:Landroid/webkit/MiuiHTML5VideoFullScreen;

    #getter for: Landroid/webkit/MiuiHTML5VideoFullScreen;->mVideoHeight:I
    invoke-static {v3}, Landroid/webkit/MiuiHTML5VideoFullScreen;->access$100(Landroid/webkit/MiuiHTML5VideoFullScreen;)I

    move-result v3

    mul-int/2addr v3, v1

    if-le v2, v3, :cond_1

    .line 40
    iget-object v2, p0, Landroid/webkit/MiuiHTML5VideoFullScreen$VideoSurfaceView;->this$0:Landroid/webkit/MiuiHTML5VideoFullScreen;

    #getter for: Landroid/webkit/MiuiHTML5VideoFullScreen;->mVideoHeight:I
    invoke-static {v2}, Landroid/webkit/MiuiHTML5VideoFullScreen;->access$100(Landroid/webkit/MiuiHTML5VideoFullScreen;)I

    move-result v2

    mul-int/2addr v2, v1

    iget-object v3, p0, Landroid/webkit/MiuiHTML5VideoFullScreen$VideoSurfaceView;->this$0:Landroid/webkit/MiuiHTML5VideoFullScreen;

    #getter for: Landroid/webkit/MiuiHTML5VideoFullScreen;->mVideoWidth:I
    invoke-static {v3}, Landroid/webkit/MiuiHTML5VideoFullScreen;->access$000(Landroid/webkit/MiuiHTML5VideoFullScreen;)I

    move-result v3

    div-int v0, v2, v3

    .line 45
    :cond_0
    :goto_0
    invoke-virtual {p0, v1, v0}, Landroid/webkit/MiuiHTML5VideoFullScreen$VideoSurfaceView;->setMeasuredDimension(II)V

    .line 46
    return-void

    .line 41
    :cond_1
    iget-object v2, p0, Landroid/webkit/MiuiHTML5VideoFullScreen$VideoSurfaceView;->this$0:Landroid/webkit/MiuiHTML5VideoFullScreen;

    #getter for: Landroid/webkit/MiuiHTML5VideoFullScreen;->mVideoWidth:I
    invoke-static {v2}, Landroid/webkit/MiuiHTML5VideoFullScreen;->access$000(Landroid/webkit/MiuiHTML5VideoFullScreen;)I

    move-result v2

    mul-int/2addr v2, v0

    iget-object v3, p0, Landroid/webkit/MiuiHTML5VideoFullScreen$VideoSurfaceView;->this$0:Landroid/webkit/MiuiHTML5VideoFullScreen;

    #getter for: Landroid/webkit/MiuiHTML5VideoFullScreen;->mVideoHeight:I
    invoke-static {v3}, Landroid/webkit/MiuiHTML5VideoFullScreen;->access$100(Landroid/webkit/MiuiHTML5VideoFullScreen;)I

    move-result v3

    mul-int/2addr v3, v1

    if-ge v2, v3, :cond_0

    .line 42
    iget-object v2, p0, Landroid/webkit/MiuiHTML5VideoFullScreen$VideoSurfaceView;->this$0:Landroid/webkit/MiuiHTML5VideoFullScreen;

    #getter for: Landroid/webkit/MiuiHTML5VideoFullScreen;->mVideoWidth:I
    invoke-static {v2}, Landroid/webkit/MiuiHTML5VideoFullScreen;->access$000(Landroid/webkit/MiuiHTML5VideoFullScreen;)I

    move-result v2

    mul-int/2addr v2, v0

    iget-object v3, p0, Landroid/webkit/MiuiHTML5VideoFullScreen$VideoSurfaceView;->this$0:Landroid/webkit/MiuiHTML5VideoFullScreen;

    #getter for: Landroid/webkit/MiuiHTML5VideoFullScreen;->mVideoHeight:I
    invoke-static {v3}, Landroid/webkit/MiuiHTML5VideoFullScreen;->access$100(Landroid/webkit/MiuiHTML5VideoFullScreen;)I

    move-result v3

    div-int v1, v2, v3

    goto :goto_0
.end method

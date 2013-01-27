.class Landroid/webkit/MiuiHTML5VideoFullScreen$7;
.super Ljava/lang/Object;
.source "MiuiHTML5VideoFullScreen.java"

# interfaces
.implements Landroid/widget/MiuiMediaController$OnControllerChangedListener;


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
    .line 387
    iput-object p1, p0, Landroid/webkit/MiuiHTML5VideoFullScreen$7;->this$0:Landroid/webkit/MiuiHTML5VideoFullScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHidden()V
    .locals 2

    .prologue
    .line 423
    iget-object v0, p0, Landroid/webkit/MiuiHTML5VideoFullScreen$7;->this$0:Landroid/webkit/MiuiHTML5VideoFullScreen;

    const/4 v1, 0x0

    #setter for: Landroid/webkit/MiuiHTML5VideoFullScreen;->mShowing:Z
    invoke-static {v0, v1}, Landroid/webkit/MiuiHTML5VideoFullScreen;->access$1502(Landroid/webkit/MiuiHTML5VideoFullScreen;Z)Z

    .line 424
    return-void
.end method

.method public onPlayPause()V
    .locals 1

    .prologue
    .line 391
    iget-object v0, p0, Landroid/webkit/MiuiHTML5VideoFullScreen$7;->this$0:Landroid/webkit/MiuiHTML5VideoFullScreen;

    invoke-virtual {v0}, Landroid/webkit/MiuiHTML5VideoFullScreen;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 392
    iget-object v0, p0, Landroid/webkit/MiuiHTML5VideoFullScreen$7;->this$0:Landroid/webkit/MiuiHTML5VideoFullScreen;

    invoke-virtual {v0}, Landroid/webkit/MiuiHTML5VideoFullScreen;->pause()V

    .line 396
    :goto_0
    return-void

    .line 394
    :cond_0
    iget-object v0, p0, Landroid/webkit/MiuiHTML5VideoFullScreen$7;->this$0:Landroid/webkit/MiuiHTML5VideoFullScreen;

    invoke-virtual {v0}, Landroid/webkit/MiuiHTML5VideoFullScreen;->start()V

    goto :goto_0
.end method

.method public onReplay()V
    .locals 1

    .prologue
    .line 428
    iget-object v0, p0, Landroid/webkit/MiuiHTML5VideoFullScreen$7;->this$0:Landroid/webkit/MiuiHTML5VideoFullScreen;

    invoke-virtual {v0}, Landroid/webkit/MiuiHTML5VideoFullScreen;->start()V

    .line 429
    return-void
.end method

.method public onSeekEnd(I)V
    .locals 2
    .parameter "time"

    .prologue
    .line 410
    iget-object v0, p0, Landroid/webkit/MiuiHTML5VideoFullScreen$7;->this$0:Landroid/webkit/MiuiHTML5VideoFullScreen;

    const/4 v1, 0x0

    #setter for: Landroid/webkit/MiuiHTML5VideoFullScreen;->mDragging:Z
    invoke-static {v0, v1}, Landroid/webkit/MiuiHTML5VideoFullScreen;->access$1402(Landroid/webkit/MiuiHTML5VideoFullScreen;Z)Z

    .line 411
    iget-object v0, p0, Landroid/webkit/MiuiHTML5VideoFullScreen$7;->this$0:Landroid/webkit/MiuiHTML5VideoFullScreen;

    invoke-virtual {v0, p1}, Landroid/webkit/MiuiHTML5VideoFullScreen;->seekTo(I)V

    .line 412
    iget-object v0, p0, Landroid/webkit/MiuiHTML5VideoFullScreen$7;->this$0:Landroid/webkit/MiuiHTML5VideoFullScreen;

    #calls: Landroid/webkit/MiuiHTML5VideoFullScreen;->setProgress()I
    invoke-static {v0}, Landroid/webkit/MiuiHTML5VideoFullScreen;->access$800(Landroid/webkit/MiuiHTML5VideoFullScreen;)I

    .line 413
    return-void
.end method

.method public onSeekMove(I)V
    .locals 1
    .parameter "time"

    .prologue
    .line 405
    iget-object v0, p0, Landroid/webkit/MiuiHTML5VideoFullScreen$7;->this$0:Landroid/webkit/MiuiHTML5VideoFullScreen;

    invoke-virtual {v0, p1}, Landroid/webkit/MiuiHTML5VideoFullScreen;->seekTo(I)V

    .line 406
    return-void
.end method

.method public onSeekStart()V
    .locals 2

    .prologue
    .line 400
    iget-object v0, p0, Landroid/webkit/MiuiHTML5VideoFullScreen$7;->this$0:Landroid/webkit/MiuiHTML5VideoFullScreen;

    const/4 v1, 0x1

    #setter for: Landroid/webkit/MiuiHTML5VideoFullScreen;->mDragging:Z
    invoke-static {v0, v1}, Landroid/webkit/MiuiHTML5VideoFullScreen;->access$1402(Landroid/webkit/MiuiHTML5VideoFullScreen;Z)Z

    .line 401
    return-void
.end method

.method public onShown()V
    .locals 2

    .prologue
    .line 417
    iget-object v0, p0, Landroid/webkit/MiuiHTML5VideoFullScreen$7;->this$0:Landroid/webkit/MiuiHTML5VideoFullScreen;

    const/4 v1, 0x1

    #setter for: Landroid/webkit/MiuiHTML5VideoFullScreen;->mShowing:Z
    invoke-static {v0, v1}, Landroid/webkit/MiuiHTML5VideoFullScreen;->access$1502(Landroid/webkit/MiuiHTML5VideoFullScreen;Z)Z

    .line 418
    iget-object v0, p0, Landroid/webkit/MiuiHTML5VideoFullScreen$7;->this$0:Landroid/webkit/MiuiHTML5VideoFullScreen;

    #calls: Landroid/webkit/MiuiHTML5VideoFullScreen;->setProgress()I
    invoke-static {v0}, Landroid/webkit/MiuiHTML5VideoFullScreen;->access$800(Landroid/webkit/MiuiHTML5VideoFullScreen;)I

    .line 419
    return-void
.end method

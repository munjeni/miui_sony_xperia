.class Landroid/widget/VideoView$2;
.super Ljava/lang/Object;
.source "VideoView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/VideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/VideoView;


# direct methods
.method constructor <init>(Landroid/widget/VideoView;)V
    .locals 0
    .parameter

    .prologue
    .line 283
    iput-object p1, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 9
    .parameter "mp"

    .prologue
    const/4 v8, 0x4

    const/4 v6, 0x2

    const/4 v7, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 285
    iget-object v2, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    #setter for: Landroid/widget/VideoView;->mCurrentState:I
    invoke-static {v2, v6}, Landroid/widget/VideoView;->access$202(Landroid/widget/VideoView;I)I

    .line 288
    invoke-virtual {p1, v3, v3}, Landroid/media/MediaPlayer;->getMetadata(ZZ)Landroid/media/Metadata;

    move-result-object v0

    .line 291
    .local v0, data:Landroid/media/Metadata;
    if-eqz v0, :cond_c

    .line 292
    iget-object v5, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    invoke-virtual {v0, v4}, Landroid/media/Metadata;->has(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v4}, Landroid/media/Metadata;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_8

    :cond_0
    move v2, v4

    :goto_0
    #setter for: Landroid/widget/VideoView;->mCanPause:Z
    invoke-static {v5, v2}, Landroid/widget/VideoView;->access$302(Landroid/widget/VideoView;Z)Z

    .line 294
    iget-object v5, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    invoke-virtual {v0, v6}, Landroid/media/Metadata;->has(I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0, v6}, Landroid/media/Metadata;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_9

    :cond_1
    move v2, v4

    :goto_1
    #setter for: Landroid/widget/VideoView;->mCanSeekBack:Z
    invoke-static {v5, v2}, Landroid/widget/VideoView;->access$402(Landroid/widget/VideoView;Z)Z

    .line 296
    iget-object v5, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    invoke-virtual {v0, v7}, Landroid/media/Metadata;->has(I)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0, v7}, Landroid/media/Metadata;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_a

    :cond_2
    move v2, v4

    :goto_2
    #setter for: Landroid/widget/VideoView;->mCanSeekForward:Z
    invoke-static {v5, v2}, Landroid/widget/VideoView;->access$502(Landroid/widget/VideoView;Z)Z

    .line 298
    iget-object v5, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    invoke-virtual {v0, v8}, Landroid/media/Metadata;->has(I)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v0, v8}, Landroid/media/Metadata;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_b

    :cond_3
    move v2, v4

    :goto_3
    #setter for: Landroid/widget/VideoView;->mCanSeekPosition:Z
    invoke-static {v5, v2}, Landroid/widget/VideoView;->access$602(Landroid/widget/VideoView;Z)Z

    .line 304
    :goto_4
    iget-object v2, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    #getter for: Landroid/widget/VideoView;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;
    invoke-static {v2}, Landroid/widget/VideoView;->access$700(Landroid/widget/VideoView;)Landroid/media/MediaPlayer$OnPreparedListener;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 305
    iget-object v2, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    #getter for: Landroid/widget/VideoView;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;
    invoke-static {v2}, Landroid/widget/VideoView;->access$700(Landroid/widget/VideoView;)Landroid/media/MediaPlayer$OnPreparedListener;

    move-result-object v2

    iget-object v5, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    #getter for: Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v5}, Landroid/widget/VideoView;->access$800(Landroid/widget/VideoView;)Landroid/media/MediaPlayer;

    move-result-object v5

    invoke-interface {v2, v5}, Landroid/media/MediaPlayer$OnPreparedListener;->onPrepared(Landroid/media/MediaPlayer;)V

    .line 307
    :cond_4
    iget-object v2, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    #getter for: Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;
    invoke-static {v2}, Landroid/widget/VideoView;->access$900(Landroid/widget/VideoView;)Landroid/widget/MediaController;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 308
    iget-object v2, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    #getter for: Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;
    invoke-static {v2}, Landroid/widget/VideoView;->access$900(Landroid/widget/VideoView;)Landroid/widget/MediaController;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/MediaController;->setEnabled(Z)V

    .line 310
    :cond_5
    iget-object v2, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v4

    #setter for: Landroid/widget/VideoView;->mVideoWidth:I
    invoke-static {v2, v4}, Landroid/widget/VideoView;->access$002(Landroid/widget/VideoView;I)I

    .line 311
    iget-object v2, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v4

    #setter for: Landroid/widget/VideoView;->mVideoHeight:I
    invoke-static {v2, v4}, Landroid/widget/VideoView;->access$102(Landroid/widget/VideoView;I)I

    .line 313
    iget-object v2, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    #getter for: Landroid/widget/VideoView;->mSeekWhenPrepared:I
    invoke-static {v2}, Landroid/widget/VideoView;->access$1000(Landroid/widget/VideoView;)I

    move-result v1

    .line 314
    .local v1, seekToPosition:I
    if-eqz v1, :cond_6

    .line 315
    iget-object v2, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    invoke-virtual {v2, v1}, Landroid/widget/VideoView;->seekTo(I)V

    .line 317
    :cond_6
    iget-object v2, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    #getter for: Landroid/widget/VideoView;->mVideoWidth:I
    invoke-static {v2}, Landroid/widget/VideoView;->access$000(Landroid/widget/VideoView;)I

    move-result v2

    if-eqz v2, :cond_f

    iget-object v2, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    #getter for: Landroid/widget/VideoView;->mVideoHeight:I
    invoke-static {v2}, Landroid/widget/VideoView;->access$100(Landroid/widget/VideoView;)I

    move-result v2

    if-eqz v2, :cond_f

    .line 319
    iget-object v2, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    invoke-virtual {v2}, Landroid/widget/VideoView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v2

    iget-object v4, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    #getter for: Landroid/widget/VideoView;->mVideoWidth:I
    invoke-static {v4}, Landroid/widget/VideoView;->access$000(Landroid/widget/VideoView;)I

    move-result v4

    iget-object v5, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    #getter for: Landroid/widget/VideoView;->mVideoHeight:I
    invoke-static {v5}, Landroid/widget/VideoView;->access$100(Landroid/widget/VideoView;)I

    move-result v5

    invoke-interface {v2, v4, v5}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    .line 320
    iget-object v2, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    #getter for: Landroid/widget/VideoView;->mSurfaceWidth:I
    invoke-static {v2}, Landroid/widget/VideoView;->access$1100(Landroid/widget/VideoView;)I

    move-result v2

    iget-object v4, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    #getter for: Landroid/widget/VideoView;->mVideoWidth:I
    invoke-static {v4}, Landroid/widget/VideoView;->access$000(Landroid/widget/VideoView;)I

    move-result v4

    if-ne v2, v4, :cond_7

    iget-object v2, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    #getter for: Landroid/widget/VideoView;->mSurfaceHeight:I
    invoke-static {v2}, Landroid/widget/VideoView;->access$1200(Landroid/widget/VideoView;)I

    move-result v2

    iget-object v4, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    #getter for: Landroid/widget/VideoView;->mVideoHeight:I
    invoke-static {v4}, Landroid/widget/VideoView;->access$100(Landroid/widget/VideoView;)I

    move-result v4

    if-ne v2, v4, :cond_7

    .line 324
    iget-object v2, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    #getter for: Landroid/widget/VideoView;->mTargetState:I
    invoke-static {v2}, Landroid/widget/VideoView;->access$1300(Landroid/widget/VideoView;)I

    move-result v2

    if-ne v2, v7, :cond_d

    .line 325
    iget-object v2, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    invoke-virtual {v2}, Landroid/widget/VideoView;->start()V

    .line 326
    iget-object v2, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    #getter for: Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;
    invoke-static {v2}, Landroid/widget/VideoView;->access$900(Landroid/widget/VideoView;)Landroid/widget/MediaController;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 327
    iget-object v2, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    #getter for: Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;
    invoke-static {v2}, Landroid/widget/VideoView;->access$900(Landroid/widget/VideoView;)Landroid/widget/MediaController;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/MediaController;->show()V

    .line 344
    :cond_7
    :goto_5
    return-void

    .end local v1           #seekToPosition:I
    :cond_8
    move v2, v3

    .line 292
    goto/16 :goto_0

    :cond_9
    move v2, v3

    .line 294
    goto/16 :goto_1

    :cond_a
    move v2, v3

    .line 296
    goto/16 :goto_2

    :cond_b
    move v2, v3

    .line 298
    goto/16 :goto_3

    .line 301
    :cond_c
    iget-object v2, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    iget-object v5, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    iget-object v6, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    #setter for: Landroid/widget/VideoView;->mCanSeekForward:Z
    invoke-static {v6, v4}, Landroid/widget/VideoView;->access$502(Landroid/widget/VideoView;Z)Z

    move-result v6

    #setter for: Landroid/widget/VideoView;->mCanSeekBack:Z
    invoke-static {v5, v6}, Landroid/widget/VideoView;->access$402(Landroid/widget/VideoView;Z)Z

    move-result v5

    #setter for: Landroid/widget/VideoView;->mCanPause:Z
    invoke-static {v2, v5}, Landroid/widget/VideoView;->access$302(Landroid/widget/VideoView;Z)Z

    goto/16 :goto_4

    .line 329
    .restart local v1       #seekToPosition:I
    :cond_d
    iget-object v2, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    invoke-virtual {v2}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v2

    if-nez v2, :cond_7

    if-nez v1, :cond_e

    iget-object v2, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    invoke-virtual {v2}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v2

    if-lez v2, :cond_7

    .line 331
    :cond_e
    iget-object v2, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    #getter for: Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;
    invoke-static {v2}, Landroid/widget/VideoView;->access$900(Landroid/widget/VideoView;)Landroid/widget/MediaController;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 333
    iget-object v2, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    #getter for: Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;
    invoke-static {v2}, Landroid/widget/VideoView;->access$900(Landroid/widget/VideoView;)Landroid/widget/MediaController;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/widget/MediaController;->show(I)V

    goto :goto_5

    .line 340
    :cond_f
    iget-object v2, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    #getter for: Landroid/widget/VideoView;->mTargetState:I
    invoke-static {v2}, Landroid/widget/VideoView;->access$1300(Landroid/widget/VideoView;)I

    move-result v2

    if-ne v2, v7, :cond_7

    .line 341
    iget-object v2, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    invoke-virtual {v2}, Landroid/widget/VideoView;->start()V

    goto :goto_5
.end method

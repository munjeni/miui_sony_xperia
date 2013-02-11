.class Lcom/example/android/fmradioreceiver/FmRadioReceiver$8;
.super Ljava/lang/Object;
.source "FmRadioReceiver.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/android/fmradioreceiver/FmRadioReceiver;->setupButtons()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/example/android/fmradioreceiver/FmRadioReceiver;

.field final synthetic val$pause:Landroid/widget/Button;


# direct methods
.method constructor <init>(Lcom/example/android/fmradioreceiver/FmRadioReceiver;Landroid/widget/Button;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 364
    iput-object p1, p0, Lcom/example/android/fmradioreceiver/FmRadioReceiver$8;->this$0:Lcom/example/android/fmradioreceiver/FmRadioReceiver;

    iput-object p2, p0, Lcom/example/android/fmradioreceiver/FmRadioReceiver$8;->val$pause:Landroid/widget/Button;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 367
    iget-object v1, p0, Lcom/example/android/fmradioreceiver/FmRadioReceiver$8;->this$0:Lcom/example/android/fmradioreceiver/FmRadioReceiver;

    #getter for: Lcom/example/android/fmradioreceiver/FmRadioReceiver;->mFmReceiver:Lcom/stericsson/hardware/fm/FmReceiver;
    invoke-static {v1}, Lcom/example/android/fmradioreceiver/FmRadioReceiver;->access$400(Lcom/example/android/fmradioreceiver/FmRadioReceiver;)Lcom/stericsson/hardware/fm/FmReceiver;

    move-result-object v1

    invoke-virtual {v1}, Lcom/stericsson/hardware/fm/FmReceiver;->getState()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/example/android/fmradioreceiver/FmRadioReceiver$8;->this$0:Lcom/example/android/fmradioreceiver/FmRadioReceiver;

    #getter for: Lcom/example/android/fmradioreceiver/FmRadioReceiver;->mPauseMutex:Z
    invoke-static {v1}, Lcom/example/android/fmradioreceiver/FmRadioReceiver;->access$900(Lcom/example/android/fmradioreceiver/FmRadioReceiver;)Z

    move-result v1

    if-eq v1, v3, :cond_0

    .line 369
    :try_start_0
    iget-object v1, p0, Lcom/example/android/fmradioreceiver/FmRadioReceiver$8;->this$0:Lcom/example/android/fmradioreceiver/FmRadioReceiver;

    const/4 v2, 0x1

    #setter for: Lcom/example/android/fmradioreceiver/FmRadioReceiver;->mPauseMutex:Z
    invoke-static {v1, v2}, Lcom/example/android/fmradioreceiver/FmRadioReceiver;->access$902(Lcom/example/android/fmradioreceiver/FmRadioReceiver;Z)Z

    .line 370
    iget-object v1, p0, Lcom/example/android/fmradioreceiver/FmRadioReceiver$8;->this$0:Lcom/example/android/fmradioreceiver/FmRadioReceiver;

    #getter for: Lcom/example/android/fmradioreceiver/FmRadioReceiver;->mFmReceiver:Lcom/stericsson/hardware/fm/FmReceiver;
    invoke-static {v1}, Lcom/example/android/fmradioreceiver/FmRadioReceiver;->access$400(Lcom/example/android/fmradioreceiver/FmRadioReceiver;)Lcom/stericsson/hardware/fm/FmReceiver;

    move-result-object v1

    invoke-virtual {v1}, Lcom/stericsson/hardware/fm/FmReceiver;->resume()V

    .line 371
    iget-object v1, p0, Lcom/example/android/fmradioreceiver/FmRadioReceiver$8;->this$0:Lcom/example/android/fmradioreceiver/FmRadioReceiver;

    #getter for: Lcom/example/android/fmradioreceiver/FmRadioReceiver;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v1}, Lcom/example/android/fmradioreceiver/FmRadioReceiver;->access$1000(Lcom/example/android/fmradioreceiver/FmRadioReceiver;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V

    .line 372
    iget-object v1, p0, Lcom/example/android/fmradioreceiver/FmRadioReceiver$8;->val$pause:Landroid/widget/Button;

    const v2, 0x7f020008

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundResource(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    .line 378
    :goto_0
    iget-object v1, p0, Lcom/example/android/fmradioreceiver/FmRadioReceiver$8;->this$0:Lcom/example/android/fmradioreceiver/FmRadioReceiver;

    #setter for: Lcom/example/android/fmradioreceiver/FmRadioReceiver;->mPauseMutex:Z
    invoke-static {v1, v4}, Lcom/example/android/fmradioreceiver/FmRadioReceiver;->access$902(Lcom/example/android/fmradioreceiver/FmRadioReceiver;Z)Z

    .line 397
    :goto_1
    return-void

    .line 373
    :catch_0
    move-exception v0

    .line 374
    .local v0, e:Ljava/io/IOException;
    iget-object v1, p0, Lcom/example/android/fmradioreceiver/FmRadioReceiver$8;->this$0:Lcom/example/android/fmradioreceiver/FmRadioReceiver;

    const-string v2, "Unable to resume"

    #calls: Lcom/example/android/fmradioreceiver/FmRadioReceiver;->showToast(Ljava/lang/String;I)V
    invoke-static {v1, v2, v3}, Lcom/example/android/fmradioreceiver/FmRadioReceiver;->access$000(Lcom/example/android/fmradioreceiver/FmRadioReceiver;Ljava/lang/String;I)V

    goto :goto_0

    .line 375
    .end local v0           #e:Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 376
    .local v0, e:Ljava/lang/IllegalStateException;
    iget-object v1, p0, Lcom/example/android/fmradioreceiver/FmRadioReceiver$8;->this$0:Lcom/example/android/fmradioreceiver/FmRadioReceiver;

    const-string v2, "Unable to resume"

    #calls: Lcom/example/android/fmradioreceiver/FmRadioReceiver;->showToast(Ljava/lang/String;I)V
    invoke-static {v1, v2, v3}, Lcom/example/android/fmradioreceiver/FmRadioReceiver;->access$000(Lcom/example/android/fmradioreceiver/FmRadioReceiver;Ljava/lang/String;I)V

    goto :goto_0

    .line 379
    .end local v0           #e:Ljava/lang/IllegalStateException;
    :cond_0
    iget-object v1, p0, Lcom/example/android/fmradioreceiver/FmRadioReceiver$8;->this$0:Lcom/example/android/fmradioreceiver/FmRadioReceiver;

    #getter for: Lcom/example/android/fmradioreceiver/FmRadioReceiver;->mFmReceiver:Lcom/stericsson/hardware/fm/FmReceiver;
    invoke-static {v1}, Lcom/example/android/fmradioreceiver/FmRadioReceiver;->access$400(Lcom/example/android/fmradioreceiver/FmRadioReceiver;)Lcom/stericsson/hardware/fm/FmReceiver;

    move-result-object v1

    invoke-virtual {v1}, Lcom/stericsson/hardware/fm/FmReceiver;->getState()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/example/android/fmradioreceiver/FmRadioReceiver$8;->this$0:Lcom/example/android/fmradioreceiver/FmRadioReceiver;

    #getter for: Lcom/example/android/fmradioreceiver/FmRadioReceiver;->mPauseMutex:Z
    invoke-static {v1}, Lcom/example/android/fmradioreceiver/FmRadioReceiver;->access$900(Lcom/example/android/fmradioreceiver/FmRadioReceiver;)Z

    move-result v1

    if-eq v1, v3, :cond_1

    .line 382
    :try_start_1
    iget-object v1, p0, Lcom/example/android/fmradioreceiver/FmRadioReceiver$8;->this$0:Lcom/example/android/fmradioreceiver/FmRadioReceiver;

    const/4 v2, 0x1

    #setter for: Lcom/example/android/fmradioreceiver/FmRadioReceiver;->mPauseMutex:Z
    invoke-static {v1, v2}, Lcom/example/android/fmradioreceiver/FmRadioReceiver;->access$902(Lcom/example/android/fmradioreceiver/FmRadioReceiver;Z)Z

    .line 383
    iget-object v1, p0, Lcom/example/android/fmradioreceiver/FmRadioReceiver$8;->this$0:Lcom/example/android/fmradioreceiver/FmRadioReceiver;

    #getter for: Lcom/example/android/fmradioreceiver/FmRadioReceiver;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v1}, Lcom/example/android/fmradioreceiver/FmRadioReceiver;->access$1000(Lcom/example/android/fmradioreceiver/FmRadioReceiver;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->pause()V

    .line 384
    iget-object v1, p0, Lcom/example/android/fmradioreceiver/FmRadioReceiver$8;->this$0:Lcom/example/android/fmradioreceiver/FmRadioReceiver;

    #getter for: Lcom/example/android/fmradioreceiver/FmRadioReceiver;->mFmReceiver:Lcom/stericsson/hardware/fm/FmReceiver;
    invoke-static {v1}, Lcom/example/android/fmradioreceiver/FmRadioReceiver;->access$400(Lcom/example/android/fmradioreceiver/FmRadioReceiver;)Lcom/stericsson/hardware/fm/FmReceiver;

    move-result-object v1

    invoke-virtual {v1}, Lcom/stericsson/hardware/fm/FmReceiver;->pause()V

    .line 385
    iget-object v1, p0, Lcom/example/android/fmradioreceiver/FmRadioReceiver$8;->val$pause:Landroid/widget/Button;

    const v2, 0x7f02000b

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundResource(I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_3

    .line 391
    :goto_2
    iget-object v1, p0, Lcom/example/android/fmradioreceiver/FmRadioReceiver$8;->this$0:Lcom/example/android/fmradioreceiver/FmRadioReceiver;

    #setter for: Lcom/example/android/fmradioreceiver/FmRadioReceiver;->mPauseMutex:Z
    invoke-static {v1, v4}, Lcom/example/android/fmradioreceiver/FmRadioReceiver;->access$902(Lcom/example/android/fmradioreceiver/FmRadioReceiver;Z)Z

    goto :goto_1

    .line 386
    :catch_2
    move-exception v0

    .line 387
    .local v0, e:Ljava/io/IOException;
    iget-object v1, p0, Lcom/example/android/fmradioreceiver/FmRadioReceiver$8;->this$0:Lcom/example/android/fmradioreceiver/FmRadioReceiver;

    const-string v2, "Unable to pause"

    #calls: Lcom/example/android/fmradioreceiver/FmRadioReceiver;->showToast(Ljava/lang/String;I)V
    invoke-static {v1, v2, v3}, Lcom/example/android/fmradioreceiver/FmRadioReceiver;->access$000(Lcom/example/android/fmradioreceiver/FmRadioReceiver;Ljava/lang/String;I)V

    goto :goto_2

    .line 388
    .end local v0           #e:Ljava/io/IOException;
    :catch_3
    move-exception v0

    .line 389
    .local v0, e:Ljava/lang/IllegalStateException;
    iget-object v1, p0, Lcom/example/android/fmradioreceiver/FmRadioReceiver$8;->this$0:Lcom/example/android/fmradioreceiver/FmRadioReceiver;

    const-string v2, "Unable to pause"

    #calls: Lcom/example/android/fmradioreceiver/FmRadioReceiver;->showToast(Ljava/lang/String;I)V
    invoke-static {v1, v2, v3}, Lcom/example/android/fmradioreceiver/FmRadioReceiver;->access$000(Lcom/example/android/fmradioreceiver/FmRadioReceiver;Ljava/lang/String;I)V

    goto :goto_2

    .line 392
    .end local v0           #e:Ljava/lang/IllegalStateException;
    :cond_1
    iget-object v1, p0, Lcom/example/android/fmradioreceiver/FmRadioReceiver$8;->this$0:Lcom/example/android/fmradioreceiver/FmRadioReceiver;

    #getter for: Lcom/example/android/fmradioreceiver/FmRadioReceiver;->mPauseMutex:Z
    invoke-static {v1}, Lcom/example/android/fmradioreceiver/FmRadioReceiver;->access$900(Lcom/example/android/fmradioreceiver/FmRadioReceiver;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 393
    iget-object v1, p0, Lcom/example/android/fmradioreceiver/FmRadioReceiver$8;->this$0:Lcom/example/android/fmradioreceiver/FmRadioReceiver;

    const-string v2, "MediaPlayer busy. Please wait and try again."

    #calls: Lcom/example/android/fmradioreceiver/FmRadioReceiver;->showToast(Ljava/lang/String;I)V
    invoke-static {v1, v2, v3}, Lcom/example/android/fmradioreceiver/FmRadioReceiver;->access$000(Lcom/example/android/fmradioreceiver/FmRadioReceiver;Ljava/lang/String;I)V

    goto :goto_1

    .line 395
    :cond_2
    const-string v1, "FM Radio Demo App"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No action: incorrect state - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/example/android/fmradioreceiver/FmRadioReceiver$8;->this$0:Lcom/example/android/fmradioreceiver/FmRadioReceiver;

    #getter for: Lcom/example/android/fmradioreceiver/FmRadioReceiver;->mFmReceiver:Lcom/stericsson/hardware/fm/FmReceiver;
    invoke-static {v3}, Lcom/example/android/fmradioreceiver/FmRadioReceiver;->access$400(Lcom/example/android/fmradioreceiver/FmRadioReceiver;)Lcom/stericsson/hardware/fm/FmReceiver;

    move-result-object v3

    invoke-virtual {v3}, Lcom/stericsson/hardware/fm/FmReceiver;->getState()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

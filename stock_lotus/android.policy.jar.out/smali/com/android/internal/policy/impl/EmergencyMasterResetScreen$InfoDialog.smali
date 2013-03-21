.class final Lcom/android/internal/policy/impl/EmergencyMasterResetScreen$InfoDialog;
.super Landroid/app/AlertDialog;
.source "EmergencyMasterResetScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/EmergencyMasterResetScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "InfoDialog"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/EmergencyMasterResetScreen;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/EmergencyMasterResetScreen;III)V
    .locals 2
    .parameter
    .parameter "iconId"
    .parameter "titleId"
    .parameter "messageId"

    .prologue
    .line 326
    iput-object p1, p0, Lcom/android/internal/policy/impl/EmergencyMasterResetScreen$InfoDialog;->this$0:Lcom/android/internal/policy/impl/EmergencyMasterResetScreen;

    .line 327
    #getter for: Lcom/android/internal/policy/impl/EmergencyMasterResetScreen;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/android/internal/policy/impl/EmergencyMasterResetScreen;->access$500(Lcom/android/internal/policy/impl/EmergencyMasterResetScreen;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 328
    invoke-virtual {p0, p2}, Lcom/android/internal/policy/impl/EmergencyMasterResetScreen$InfoDialog;->setIcon(I)V

    .line 329
    invoke-virtual {p0, p3}, Lcom/android/internal/policy/impl/EmergencyMasterResetScreen$InfoDialog;->setTitle(I)V

    .line 330
    #getter for: Lcom/android/internal/policy/impl/EmergencyMasterResetScreen;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/android/internal/policy/impl/EmergencyMasterResetScreen;->access$500(Lcom/android/internal/policy/impl/EmergencyMasterResetScreen;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/EmergencyMasterResetScreen$InfoDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 331
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/EmergencyMasterResetScreen$InfoDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d9

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 333
    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 6
    .parameter "event"

    .prologue
    const/16 v5, 0x18

    const/4 v2, 0x1

    .line 342
    iget-object v1, p0, Lcom/android/internal/policy/impl/EmergencyMasterResetScreen$InfoDialog;->this$0:Lcom/android/internal/policy/impl/EmergencyMasterResetScreen;

    #getter for: Lcom/android/internal/policy/impl/EmergencyMasterResetScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v1}, Lcom/android/internal/policy/impl/EmergencyMasterResetScreen;->access$100(Lcom/android/internal/policy/impl/EmergencyMasterResetScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v1

    iget-object v3, p0, Lcom/android/internal/policy/impl/EmergencyMasterResetScreen$InfoDialog;->this$0:Lcom/android/internal/policy/impl/EmergencyMasterResetScreen;

    #getter for: Lcom/android/internal/policy/impl/EmergencyMasterResetScreen;->mScreenOffTime:I
    invoke-static {v3}, Lcom/android/internal/policy/impl/EmergencyMasterResetScreen;->access$000(Lcom/android/internal/policy/impl/EmergencyMasterResetScreen;)I

    move-result v3

    invoke-interface {v1, v3}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock(I)V

    .line 343
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 345
    .local v0, keyCode:I
    if-eq v0, v5, :cond_0

    const/16 v1, 0x19

    if-ne v0, v1, :cond_4

    .line 347
    :cond_0
    monitor-enter p0

    .line 348
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/EmergencyMasterResetScreen$InfoDialog;->this$0:Lcom/android/internal/policy/impl/EmergencyMasterResetScreen;

    #getter for: Lcom/android/internal/policy/impl/EmergencyMasterResetScreen;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v1}, Lcom/android/internal/policy/impl/EmergencyMasterResetScreen;->access$600(Lcom/android/internal/policy/impl/EmergencyMasterResetScreen;)Landroid/media/AudioManager;

    move-result-object v1

    if-nez v1, :cond_1

    .line 349
    iget-object v3, p0, Lcom/android/internal/policy/impl/EmergencyMasterResetScreen$InfoDialog;->this$0:Lcom/android/internal/policy/impl/EmergencyMasterResetScreen;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/EmergencyMasterResetScreen$InfoDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v4, "audio"

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    #setter for: Lcom/android/internal/policy/impl/EmergencyMasterResetScreen;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v3, v1}, Lcom/android/internal/policy/impl/EmergencyMasterResetScreen;->access$602(Lcom/android/internal/policy/impl/EmergencyMasterResetScreen;Landroid/media/AudioManager;)Landroid/media/AudioManager;

    .line 353
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 355
    iget-object v1, p0, Lcom/android/internal/policy/impl/EmergencyMasterResetScreen$InfoDialog;->this$0:Lcom/android/internal/policy/impl/EmergencyMasterResetScreen;

    #getter for: Lcom/android/internal/policy/impl/EmergencyMasterResetScreen;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v1}, Lcom/android/internal/policy/impl/EmergencyMasterResetScreen;->access$600(Lcom/android/internal/policy/impl/EmergencyMasterResetScreen;)Landroid/media/AudioManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 356
    iget-object v1, p0, Lcom/android/internal/policy/impl/EmergencyMasterResetScreen$InfoDialog;->this$0:Lcom/android/internal/policy/impl/EmergencyMasterResetScreen;

    #getter for: Lcom/android/internal/policy/impl/EmergencyMasterResetScreen;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v1}, Lcom/android/internal/policy/impl/EmergencyMasterResetScreen;->access$600(Lcom/android/internal/policy/impl/EmergencyMasterResetScreen;)Landroid/media/AudioManager;

    move-result-object v3

    const/4 v4, 0x3

    if-ne v0, v5, :cond_3

    move v1, v2

    :goto_0
    const/4 v5, 0x0

    invoke-virtual {v3, v4, v1, v5}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    .line 366
    :cond_2
    :goto_1
    return v2

    .line 353
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 356
    :cond_3
    const/4 v1, -0x1

    goto :goto_0

    .line 366
    :cond_4
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v2

    goto :goto_1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 376
    iget-object v0, p0, Lcom/android/internal/policy/impl/EmergencyMasterResetScreen$InfoDialog;->this$0:Lcom/android/internal/policy/impl/EmergencyMasterResetScreen;

    #getter for: Lcom/android/internal/policy/impl/EmergencyMasterResetScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v0}, Lcom/android/internal/policy/impl/EmergencyMasterResetScreen;->access$100(Lcom/android/internal/policy/impl/EmergencyMasterResetScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/EmergencyMasterResetScreen$InfoDialog;->this$0:Lcom/android/internal/policy/impl/EmergencyMasterResetScreen;

    #getter for: Lcom/android/internal/policy/impl/EmergencyMasterResetScreen;->mScreenOffTime:I
    invoke-static {v1}, Lcom/android/internal/policy/impl/EmergencyMasterResetScreen;->access$000(Lcom/android/internal/policy/impl/EmergencyMasterResetScreen;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock(I)V

    .line 377
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

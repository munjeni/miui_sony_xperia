.class Lmiui/app/screenelement/ActionCommand$RingModeCommand;
.super Lmiui/app/screenelement/ActionCommand$NotificationReceiver;
.source "ActionCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/app/screenelement/ActionCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RingModeCommand"
.end annotation


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mToggleHelper:Lmiui/app/screenelement/ActionCommand$ModeToggleHelper;


# direct methods
.method public constructor <init>(Lmiui/app/screenelement/ScreenContext;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "value"

    .prologue
    .line 207
    const-string v0, "ring_mode"

    sget-object v1, Lmiui/app/screenelement/NotifierManager$NotifierType;->RingMode:Lmiui/app/screenelement/NotifierManager$NotifierType;

    invoke-direct {p0, p1, v0, v1}, Lmiui/app/screenelement/ActionCommand$NotificationReceiver;-><init>(Lmiui/app/screenelement/ScreenContext;Ljava/lang/String;Lmiui/app/screenelement/NotifierManager$NotifierType;)V

    .line 204
    new-instance v0, Lmiui/app/screenelement/ActionCommand$ModeToggleHelper;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lmiui/app/screenelement/ActionCommand$ModeToggleHelper;-><init>(Lmiui/app/screenelement/ActionCommand$1;)V

    iput-object v0, p0, Lmiui/app/screenelement/ActionCommand$RingModeCommand;->mToggleHelper:Lmiui/app/screenelement/ActionCommand$ModeToggleHelper;

    .line 208
    iget-object v0, p0, Lmiui/app/screenelement/ActionCommand$RingModeCommand;->mToggleHelper:Lmiui/app/screenelement/ActionCommand$ModeToggleHelper;

    const-string v1, "normal"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lmiui/app/screenelement/ActionCommand$ModeToggleHelper;->addMode(Ljava/lang/String;I)V

    .line 209
    iget-object v0, p0, Lmiui/app/screenelement/ActionCommand$RingModeCommand;->mToggleHelper:Lmiui/app/screenelement/ActionCommand$ModeToggleHelper;

    const-string v1, "silent"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lmiui/app/screenelement/ActionCommand$ModeToggleHelper;->addMode(Ljava/lang/String;I)V

    .line 210
    iget-object v0, p0, Lmiui/app/screenelement/ActionCommand$RingModeCommand;->mToggleHelper:Lmiui/app/screenelement/ActionCommand$ModeToggleHelper;

    const-string v1, "vibrate"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lmiui/app/screenelement/ActionCommand$ModeToggleHelper;->addMode(Ljava/lang/String;I)V

    .line 211
    iget-object v0, p0, Lmiui/app/screenelement/ActionCommand$RingModeCommand;->mToggleHelper:Lmiui/app/screenelement/ActionCommand$ModeToggleHelper;

    invoke-virtual {v0, p2}, Lmiui/app/screenelement/ActionCommand$ModeToggleHelper;->build(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 212
    const-string v0, "ActionCommand"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid ring mode command value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    :cond_0
    return-void
.end method


# virtual methods
.method protected doPerform()V
    .locals 2

    .prologue
    .line 219
    iget-object v1, p0, Lmiui/app/screenelement/ActionCommand$RingModeCommand;->mAudioManager:Landroid/media/AudioManager;

    if-nez v1, :cond_0

    .line 226
    :goto_0
    return-void

    .line 222
    :cond_0
    iget-object v1, p0, Lmiui/app/screenelement/ActionCommand$RingModeCommand;->mToggleHelper:Lmiui/app/screenelement/ActionCommand$ModeToggleHelper;

    invoke-virtual {v1}, Lmiui/app/screenelement/ActionCommand$ModeToggleHelper;->click()V

    .line 223
    iget-object v1, p0, Lmiui/app/screenelement/ActionCommand$RingModeCommand;->mToggleHelper:Lmiui/app/screenelement/ActionCommand$ModeToggleHelper;

    invoke-virtual {v1}, Lmiui/app/screenelement/ActionCommand$ModeToggleHelper;->getModeId()I

    move-result v0

    .line 224
    .local v0, mode:I
    iget-object v1, p0, Lmiui/app/screenelement/ActionCommand$RingModeCommand;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v0}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 225
    invoke-virtual {p0, v0}, Lmiui/app/screenelement/ActionCommand$RingModeCommand;->updateState(I)V

    goto :goto_0
.end method

.method protected update()V
    .locals 2

    .prologue
    .line 230
    iget-object v0, p0, Lmiui/app/screenelement/ActionCommand$RingModeCommand;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lmiui/app/screenelement/ActionCommand$RingModeCommand;->mContext:Lmiui/app/screenelement/ScreenContext;

    if-eqz v0, :cond_0

    .line 231
    iget-object v0, p0, Lmiui/app/screenelement/ActionCommand$RingModeCommand;->mContext:Lmiui/app/screenelement/ScreenContext;

    iget-object v0, v0, Lmiui/app/screenelement/ScreenContext;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lmiui/app/screenelement/ActionCommand$RingModeCommand;->mAudioManager:Landroid/media/AudioManager;

    .line 233
    :cond_0
    iget-object v0, p0, Lmiui/app/screenelement/ActionCommand$RingModeCommand;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_1

    .line 236
    :goto_0
    return-void

    .line 235
    :cond_1
    iget-object v0, p0, Lmiui/app/screenelement/ActionCommand$RingModeCommand;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    invoke-virtual {p0, v0}, Lmiui/app/screenelement/ActionCommand$RingModeCommand;->updateState(I)V

    goto :goto_0
.end method

.class public Lcom/stericsson/hardware/fm/FmReceiverService;
.super Lcom/stericsson/hardware/fm/IFmReceiver$Stub;
.source "FmReceiverService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stericsson/hardware/fm/FmReceiverService$OnAutomaticSwitchReceiver;,
        Lcom/stericsson/hardware/fm/FmReceiverService$OnExtraCommandReceiver;,
        Lcom/stericsson/hardware/fm/FmReceiverService$OnStereoReceiver;,
        Lcom/stericsson/hardware/fm/FmReceiverService$OnSignalStrengthReceiver;,
        Lcom/stericsson/hardware/fm/FmReceiverService$OnRDSDataReceiver;,
        Lcom/stericsson/hardware/fm/FmReceiverService$OnForcedResetReceiver;,
        Lcom/stericsson/hardware/fm/FmReceiverService$OnForcedPauseReceiver;,
        Lcom/stericsson/hardware/fm/FmReceiverService$OnScanReceiver;,
        Lcom/stericsson/hardware/fm/FmReceiverService$OnErrorReceiver;,
        Lcom/stericsson/hardware/fm/FmReceiverService$OnStartedReceiver;,
        Lcom/stericsson/hardware/fm/FmReceiverService$OnStateChangedReceiver;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FmReceiverService"


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mOnAutomaticSwitchReceivers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Object;",
            "Lcom/stericsson/hardware/fm/FmReceiverService$OnAutomaticSwitchReceiver;",
            ">;"
        }
    .end annotation
.end field

.field private final mOnErrorReceivers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Object;",
            "Lcom/stericsson/hardware/fm/FmReceiverService$OnErrorReceiver;",
            ">;"
        }
    .end annotation
.end field

.field private final mOnExtraCommandReceivers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Object;",
            "Lcom/stericsson/hardware/fm/FmReceiverService$OnExtraCommandReceiver;",
            ">;"
        }
    .end annotation
.end field

.field private final mOnForcedPauseReceivers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Object;",
            "Lcom/stericsson/hardware/fm/FmReceiverService$OnForcedPauseReceiver;",
            ">;"
        }
    .end annotation
.end field

.field private final mOnForcedResetReceivers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Object;",
            "Lcom/stericsson/hardware/fm/FmReceiverService$OnForcedResetReceiver;",
            ">;"
        }
    .end annotation
.end field

.field private final mOnRDSDataReceivers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Object;",
            "Lcom/stericsson/hardware/fm/FmReceiverService$OnRDSDataReceiver;",
            ">;"
        }
    .end annotation
.end field

.field private final mOnScanReceivers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Object;",
            "Lcom/stericsson/hardware/fm/FmReceiverService$OnScanReceiver;",
            ">;"
        }
    .end annotation
.end field

.field private final mOnSignalStrengthReceivers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Object;",
            "Lcom/stericsson/hardware/fm/FmReceiverService$OnSignalStrengthReceiver;",
            ">;"
        }
    .end annotation
.end field

.field private final mOnStartedReceivers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Object;",
            "Lcom/stericsson/hardware/fm/FmReceiverService$OnStartedReceiver;",
            ">;"
        }
    .end annotation
.end field

.field private final mOnStateChangedReceivers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Object;",
            "Lcom/stericsson/hardware/fm/FmReceiverService$OnStateChangedReceiver;",
            ">;"
        }
    .end annotation
.end field

.field private final mOnStereoReceivers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Object;",
            "Lcom/stericsson/hardware/fm/FmReceiverService$OnStereoReceiver;",
            ">;"
        }
    .end annotation
.end field

.field private final mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1299
    const-string v0, "fmradio"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 1300
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 545
    invoke-direct {p0}, Lcom/stericsson/hardware/fm/IFmReceiver$Stub;-><init>()V

    .line 50
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnStateChangedReceivers:Ljava/util/HashMap;

    .line 53
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnStartedReceivers:Ljava/util/HashMap;

    .line 56
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnErrorReceivers:Ljava/util/HashMap;

    .line 59
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnScanReceivers:Ljava/util/HashMap;

    .line 62
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnForcedPauseReceivers:Ljava/util/HashMap;

    .line 65
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnForcedResetReceivers:Ljava/util/HashMap;

    .line 68
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnRDSDataReceivers:Ljava/util/HashMap;

    .line 71
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnSignalStrengthReceivers:Ljava/util/HashMap;

    .line 74
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnStereoReceivers:Ljava/util/HashMap;

    .line 77
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnExtraCommandReceivers:Ljava/util/HashMap;

    .line 80
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnAutomaticSwitchReceivers:Ljava/util/HashMap;

    .line 513
    new-instance v1, Lcom/stericsson/hardware/fm/FmReceiverService$1;

    invoke-direct {v1, p0}, Lcom/stericsson/hardware/fm/FmReceiverService$1;-><init>(Lcom/stericsson/hardware/fm/FmReceiverService;)V

    iput-object v1, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 546
    const-string v1, "FmReceiverService"

    const-string v2, "FmReceiverService created"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    iput-object p1, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mContext:Landroid/content/Context;

    .line 550
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 551
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 552
    const-string v1, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 554
    iget-object v1, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 556
    const/16 v1, 0xa

    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    .line 558
    return-void
.end method

.method private native _fm_receiver_getFrequency()I
.end method

.method private native _fm_receiver_getSignalStrength()I
.end method

.method private native _fm_receiver_getState()I
.end method

.method private native _fm_receiver_getThreshold()I
.end method

.method private native _fm_receiver_isPlayingInStereo()Z
.end method

.method private native _fm_receiver_isRDSDataSupported()Z
.end method

.method private native _fm_receiver_isTunedToValidChannel()Z
.end method

.method private native _fm_receiver_pause()V
.end method

.method private native _fm_receiver_reset()I
.end method

.method private native _fm_receiver_resume()V
.end method

.method private native _fm_receiver_scanDown()V
.end method

.method private native _fm_receiver_scanUp()V
.end method

.method private native _fm_receiver_sendExtraCommand(Ljava/lang/String;[Ljava/lang/String;)Z
.end method

.method private native _fm_receiver_setAutomaticAFSwitching(Z)V
.end method

.method private native _fm_receiver_setAutomaticTASwitching(Z)V
.end method

.method private native _fm_receiver_setForceMono(Z)V
.end method

.method private native _fm_receiver_setFrequency(I)V
.end method

.method private native _fm_receiver_setRDS(Z)V
.end method

.method private native _fm_receiver_setThreshold(I)V
.end method

.method private native _fm_receiver_start(IIII)V
.end method

.method private native _fm_receiver_startAsync(IIII)V
.end method

.method private native _fm_receiver_startFullScan()V
.end method

.method private native _fm_receiver_stopScan()V
.end method

.method static synthetic access$000(Lcom/stericsson/hardware/fm/FmReceiverService;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnStateChangedReceivers:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$100(Lcom/stericsson/hardware/fm/FmReceiverService;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnStartedReceivers:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/stericsson/hardware/fm/FmReceiverService;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnAutomaticSwitchReceivers:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/stericsson/hardware/fm/FmReceiverService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/stericsson/hardware/fm/FmReceiverService;->isAirplaneModeOn()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/stericsson/hardware/fm/FmReceiverService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/stericsson/hardware/fm/FmReceiverService;->_fm_receiver_reset()I

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/stericsson/hardware/fm/FmReceiverService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/stericsson/hardware/fm/FmReceiverService;->notifyOnForcedReset(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/stericsson/hardware/fm/FmReceiverService;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnErrorReceivers:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$300(Lcom/stericsson/hardware/fm/FmReceiverService;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnScanReceivers:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$400(Lcom/stericsson/hardware/fm/FmReceiverService;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnForcedPauseReceivers:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$500(Lcom/stericsson/hardware/fm/FmReceiverService;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnForcedResetReceivers:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$600(Lcom/stericsson/hardware/fm/FmReceiverService;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnRDSDataReceivers:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$700(Lcom/stericsson/hardware/fm/FmReceiverService;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnSignalStrengthReceivers:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$800(Lcom/stericsson/hardware/fm/FmReceiverService;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnStereoReceivers:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$900(Lcom/stericsson/hardware/fm/FmReceiverService;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnExtraCommandReceivers:Ljava/util/HashMap;

    return-object v0
.end method

.method private isAirplaneModeOn()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 541
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private notifyOnAutomaticSwitching(II)V
    .locals 5
    .parameter "newFrequency"
    .parameter "reason"

    .prologue
    .line 1287
    iget-object v4, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnAutomaticSwitchReceivers:Ljava/util/HashMap;

    monitor-enter v4

    .line 1288
    :try_start_0
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnAutomaticSwitchReceivers:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 1289
    .local v0, c:Ljava/util/Collection;
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1290
    .local v1, iterator:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1291
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stericsson/hardware/fm/FmReceiverService$OnAutomaticSwitchReceiver;

    .line 1292
    .local v2, m:Lcom/stericsson/hardware/fm/FmReceiverService$OnAutomaticSwitchReceiver;
    invoke-virtual {v2, p1, p2}, Lcom/stericsson/hardware/fm/FmReceiverService$OnAutomaticSwitchReceiver;->callOnAutomaticSwitch(II)Z

    goto :goto_0

    .line 1294
    .end local v0           #c:Ljava/util/Collection;
    .end local v1           #iterator:Ljava/util/Iterator;
    .end local v2           #m:Lcom/stericsson/hardware/fm/FmReceiverService$OnAutomaticSwitchReceiver;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v0       #c:Ljava/util/Collection;
    .restart local v1       #iterator:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1295
    return-void
.end method

.method private notifyOnError()V
    .locals 5

    .prologue
    .line 1232
    iget-object v4, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnErrorReceivers:Ljava/util/HashMap;

    monitor-enter v4

    .line 1233
    :try_start_0
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnErrorReceivers:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 1234
    .local v0, c:Ljava/util/Collection;
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1235
    .local v1, iterator:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1236
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stericsson/hardware/fm/FmReceiverService$OnErrorReceiver;

    .line 1237
    .local v2, m:Lcom/stericsson/hardware/fm/FmReceiverService$OnErrorReceiver;
    invoke-virtual {v2}, Lcom/stericsson/hardware/fm/FmReceiverService$OnErrorReceiver;->callOnError()Z

    goto :goto_0

    .line 1239
    .end local v0           #c:Ljava/util/Collection;
    .end local v1           #iterator:Ljava/util/Iterator;
    .end local v2           #m:Lcom/stericsson/hardware/fm/FmReceiverService$OnErrorReceiver;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v0       #c:Ljava/util/Collection;
    .restart local v1       #iterator:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1240
    return-void
.end method

.method private notifyOnExtraCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 5
    .parameter "response"
    .parameter "extras"

    .prologue
    .line 1276
    iget-object v4, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnExtraCommandReceivers:Ljava/util/HashMap;

    monitor-enter v4

    .line 1277
    :try_start_0
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnExtraCommandReceivers:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 1278
    .local v0, c:Ljava/util/Collection;
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1279
    .local v1, iterator:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1280
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stericsson/hardware/fm/FmReceiverService$OnExtraCommandReceiver;

    .line 1281
    .local v2, m:Lcom/stericsson/hardware/fm/FmReceiverService$OnExtraCommandReceiver;
    invoke-virtual {v2, p1, p2}, Lcom/stericsson/hardware/fm/FmReceiverService$OnExtraCommandReceiver;->callOnExtraCommand(Ljava/lang/String;Landroid/os/Bundle;)Z

    goto :goto_0

    .line 1283
    .end local v0           #c:Ljava/util/Collection;
    .end local v1           #iterator:Ljava/util/Iterator;
    .end local v2           #m:Lcom/stericsson/hardware/fm/FmReceiverService$OnExtraCommandReceiver;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v0       #c:Ljava/util/Collection;
    .restart local v1       #iterator:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1284
    return-void
.end method

.method private notifyOnForcedPause()V
    .locals 5

    .prologue
    .line 1210
    iget-object v4, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnForcedPauseReceivers:Ljava/util/HashMap;

    monitor-enter v4

    .line 1211
    :try_start_0
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnForcedPauseReceivers:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 1212
    .local v0, c:Ljava/util/Collection;
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1213
    .local v1, iterator:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1214
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stericsson/hardware/fm/FmReceiverService$OnForcedPauseReceiver;

    .line 1215
    .local v2, m:Lcom/stericsson/hardware/fm/FmReceiverService$OnForcedPauseReceiver;
    invoke-virtual {v2}, Lcom/stericsson/hardware/fm/FmReceiverService$OnForcedPauseReceiver;->callOnForcedPause()Z

    goto :goto_0

    .line 1217
    .end local v0           #c:Ljava/util/Collection;
    .end local v1           #iterator:Ljava/util/Iterator;
    .end local v2           #m:Lcom/stericsson/hardware/fm/FmReceiverService$OnForcedPauseReceiver;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v0       #c:Ljava/util/Collection;
    .restart local v1       #iterator:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1218
    return-void
.end method

.method private notifyOnForcedReset(I)V
    .locals 5
    .parameter "reason"

    .prologue
    .line 1221
    iget-object v4, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnForcedResetReceivers:Ljava/util/HashMap;

    monitor-enter v4

    .line 1222
    :try_start_0
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnForcedResetReceivers:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 1223
    .local v0, c:Ljava/util/Collection;
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1224
    .local v1, iterator:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1225
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stericsson/hardware/fm/FmReceiverService$OnForcedResetReceiver;

    .line 1226
    .local v2, m:Lcom/stericsson/hardware/fm/FmReceiverService$OnForcedResetReceiver;
    invoke-virtual {v2, p1}, Lcom/stericsson/hardware/fm/FmReceiverService$OnForcedResetReceiver;->callOnForcedReset(I)Z

    goto :goto_0

    .line 1228
    .end local v0           #c:Ljava/util/Collection;
    .end local v1           #iterator:Ljava/util/Iterator;
    .end local v2           #m:Lcom/stericsson/hardware/fm/FmReceiverService$OnForcedResetReceiver;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v0       #c:Ljava/util/Collection;
    .restart local v1       #iterator:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1229
    return-void
.end method

.method private notifyOnFullScan([I[IZ)V
    .locals 5
    .parameter "frequency"
    .parameter "signalLevel"
    .parameter "aborted"

    .prologue
    .line 1199
    iget-object v4, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnScanReceivers:Ljava/util/HashMap;

    monitor-enter v4

    .line 1200
    :try_start_0
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnScanReceivers:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 1201
    .local v0, c:Ljava/util/Collection;
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1202
    .local v1, iterator:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1203
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stericsson/hardware/fm/FmReceiverService$OnScanReceiver;

    .line 1204
    .local v2, m:Lcom/stericsson/hardware/fm/FmReceiverService$OnScanReceiver;
    invoke-virtual {v2, p1, p2, p3}, Lcom/stericsson/hardware/fm/FmReceiverService$OnScanReceiver;->callOnFullScan([I[IZ)Z

    goto :goto_0

    .line 1206
    .end local v0           #c:Ljava/util/Collection;
    .end local v1           #iterator:Ljava/util/Iterator;
    .end local v2           #m:Lcom/stericsson/hardware/fm/FmReceiverService$OnScanReceiver;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v0       #c:Ljava/util/Collection;
    .restart local v1       #iterator:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1207
    return-void
.end method

.method private notifyOnPlayingInStereo(Z)V
    .locals 5
    .parameter "inStereo"

    .prologue
    .line 1265
    iget-object v4, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnStereoReceivers:Ljava/util/HashMap;

    monitor-enter v4

    .line 1266
    :try_start_0
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnStereoReceivers:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 1267
    .local v0, c:Ljava/util/Collection;
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1268
    .local v1, iterator:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1269
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stericsson/hardware/fm/FmReceiverService$OnStereoReceiver;

    .line 1270
    .local v2, m:Lcom/stericsson/hardware/fm/FmReceiverService$OnStereoReceiver;
    invoke-virtual {v2, p1}, Lcom/stericsson/hardware/fm/FmReceiverService$OnStereoReceiver;->callOnPlayingInStereo(Z)Z

    goto :goto_0

    .line 1272
    .end local v0           #c:Ljava/util/Collection;
    .end local v1           #iterator:Ljava/util/Iterator;
    .end local v2           #m:Lcom/stericsson/hardware/fm/FmReceiverService$OnStereoReceiver;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v0       #c:Ljava/util/Collection;
    .restart local v1       #iterator:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1273
    return-void
.end method

.method private notifyOnRDSDataFound(Landroid/os/Bundle;I)V
    .locals 5
    .parameter "bundle"
    .parameter "frequency"

    .prologue
    .line 1243
    iget-object v4, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnRDSDataReceivers:Ljava/util/HashMap;

    monitor-enter v4

    .line 1244
    :try_start_0
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnRDSDataReceivers:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 1245
    .local v0, c:Ljava/util/Collection;
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1246
    .local v1, iterator:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1247
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stericsson/hardware/fm/FmReceiverService$OnRDSDataReceiver;

    .line 1248
    .local v2, m:Lcom/stericsson/hardware/fm/FmReceiverService$OnRDSDataReceiver;
    invoke-virtual {v2, p1, p2}, Lcom/stericsson/hardware/fm/FmReceiverService$OnRDSDataReceiver;->callOnRDSDataFound(Landroid/os/Bundle;I)Z

    goto :goto_0

    .line 1250
    .end local v0           #c:Ljava/util/Collection;
    .end local v1           #iterator:Ljava/util/Iterator;
    .end local v2           #m:Lcom/stericsson/hardware/fm/FmReceiverService$OnRDSDataReceiver;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v0       #c:Ljava/util/Collection;
    .restart local v1       #iterator:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1251
    return-void
.end method

.method private notifyOnScan(IIIZ)V
    .locals 5
    .parameter "frequency"
    .parameter "signalLevel"
    .parameter "scanDirection"
    .parameter "aborted"

    .prologue
    .line 1188
    iget-object v4, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnScanReceivers:Ljava/util/HashMap;

    monitor-enter v4

    .line 1189
    :try_start_0
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnScanReceivers:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 1190
    .local v0, c:Ljava/util/Collection;
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1191
    .local v1, iterator:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1192
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stericsson/hardware/fm/FmReceiverService$OnScanReceiver;

    .line 1193
    .local v2, m:Lcom/stericsson/hardware/fm/FmReceiverService$OnScanReceiver;
    invoke-virtual {v2, p1, p2, p3, p4}, Lcom/stericsson/hardware/fm/FmReceiverService$OnScanReceiver;->callOnScan(IIIZ)Z

    goto :goto_0

    .line 1195
    .end local v0           #c:Ljava/util/Collection;
    .end local v1           #iterator:Ljava/util/Iterator;
    .end local v2           #m:Lcom/stericsson/hardware/fm/FmReceiverService$OnScanReceiver;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v0       #c:Ljava/util/Collection;
    .restart local v1       #iterator:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1196
    return-void
.end method

.method private notifyOnSignalStrengthChanged(I)V
    .locals 5
    .parameter "signalStrength"

    .prologue
    .line 1254
    iget-object v4, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnSignalStrengthReceivers:Ljava/util/HashMap;

    monitor-enter v4

    .line 1255
    :try_start_0
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnSignalStrengthReceivers:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 1256
    .local v0, c:Ljava/util/Collection;
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1257
    .local v1, iterator:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1258
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stericsson/hardware/fm/FmReceiverService$OnSignalStrengthReceiver;

    .line 1259
    .local v2, m:Lcom/stericsson/hardware/fm/FmReceiverService$OnSignalStrengthReceiver;
    invoke-virtual {v2, p1}, Lcom/stericsson/hardware/fm/FmReceiverService$OnSignalStrengthReceiver;->callOnSignalStrengthChanged(I)Z

    goto :goto_0

    .line 1261
    .end local v0           #c:Ljava/util/Collection;
    .end local v1           #iterator:Ljava/util/Iterator;
    .end local v2           #m:Lcom/stericsson/hardware/fm/FmReceiverService$OnSignalStrengthReceiver;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v0       #c:Ljava/util/Collection;
    .restart local v1       #iterator:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1262
    return-void
.end method

.method private notifyOnStarted()V
    .locals 6

    .prologue
    .line 1172
    iget-object v4, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnStartedReceivers:Ljava/util/HashMap;

    monitor-enter v4

    .line 1173
    :try_start_0
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnStartedReceivers:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 1174
    .local v0, c:Ljava/util/Collection;
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1175
    .local v1, iterator:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1176
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stericsson/hardware/fm/FmReceiverService$OnStartedReceiver;

    .line 1177
    .local v2, m:Lcom/stericsson/hardware/fm/FmReceiverService$OnStartedReceiver;
    invoke-virtual {v2}, Lcom/stericsson/hardware/fm/FmReceiverService$OnStartedReceiver;->callOnStarted()Z

    goto :goto_0

    .line 1184
    .end local v0           #c:Ljava/util/Collection;
    .end local v1           #iterator:Ljava/util/Iterator;
    .end local v2           #m:Lcom/stericsson/hardware/fm/FmReceiverService$OnStartedReceiver;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 1180
    .restart local v0       #c:Ljava/util/Collection;
    .restart local v1       #iterator:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnRDSDataReceivers:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 1181
    const-string v3, "FmReceiverService"

    const-string v5, "Started event with RDS receiver(s), switching on RDS"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1182
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/stericsson/hardware/fm/FmReceiverService;->_fm_receiver_setRDS(Z)V

    .line 1184
    :cond_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1185
    return-void
.end method

.method private notifyOnStateChanged(II)V
    .locals 5
    .parameter "oldState"
    .parameter "newState"

    .prologue
    .line 1161
    iget-object v4, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnStateChangedReceivers:Ljava/util/HashMap;

    monitor-enter v4

    .line 1162
    :try_start_0
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnStateChangedReceivers:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 1163
    .local v0, c:Ljava/util/Collection;
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1164
    .local v1, iterator:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1165
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stericsson/hardware/fm/FmReceiverService$OnStateChangedReceiver;

    .line 1166
    .local v2, m:Lcom/stericsson/hardware/fm/FmReceiverService$OnStateChangedReceiver;
    invoke-virtual {v2, p1, p2}, Lcom/stericsson/hardware/fm/FmReceiverService$OnStateChangedReceiver;->callOnStateChanged(II)Z

    goto :goto_0

    .line 1168
    .end local v0           #c:Ljava/util/Collection;
    .end local v1           #iterator:Ljava/util/Iterator;
    .end local v2           #m:Lcom/stericsson/hardware/fm/FmReceiverService$OnStateChangedReceiver;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v0       #c:Ljava/util/Collection;
    .restart local v1       #iterator:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1169
    return-void
.end method


# virtual methods
.method public addOnAutomaticSwitchListener(Lcom/stericsson/hardware/fm/IOnAutomaticSwitchListener;)V
    .locals 5
    .parameter "listener"

    .prologue
    .line 1126
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mContext:Landroid/content/Context;

    const-string v4, "com.stericsson.permission.FM_RADIO_RECEIVER"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    .line 1128
    new-instance v3, Ljava/lang/SecurityException;

    const-string v4, "Requires FM_RADIO_RECEIVER permission"

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1131
    :cond_0
    invoke-interface {p1}, Lcom/stericsson/hardware/fm/IOnAutomaticSwitchListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 1132
    .local v0, binder:Landroid/os/IBinder;
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnAutomaticSwitchReceivers:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stericsson/hardware/fm/FmReceiverService$OnAutomaticSwitchReceiver;

    .line 1133
    .local v2, receiver:Lcom/stericsson/hardware/fm/FmReceiverService$OnAutomaticSwitchReceiver;
    if-nez v2, :cond_1

    .line 1134
    new-instance v2, Lcom/stericsson/hardware/fm/FmReceiverService$OnAutomaticSwitchReceiver;

    .end local v2           #receiver:Lcom/stericsson/hardware/fm/FmReceiverService$OnAutomaticSwitchReceiver;
    invoke-direct {v2, p0, p1}, Lcom/stericsson/hardware/fm/FmReceiverService$OnAutomaticSwitchReceiver;-><init>(Lcom/stericsson/hardware/fm/FmReceiverService;Lcom/stericsson/hardware/fm/IOnAutomaticSwitchListener;)V

    .line 1135
    .restart local v2       #receiver:Lcom/stericsson/hardware/fm/FmReceiverService$OnAutomaticSwitchReceiver;
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnAutomaticSwitchReceivers:Ljava/util/HashMap;

    invoke-virtual {v3, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1136
    const-string v3, "FmReceiverService"

    const-string v4, "addOnAutomaticSwitchListener(), new receiver added"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1138
    :try_start_0
    invoke-virtual {v2}, Lcom/stericsson/hardware/fm/FmReceiverService$OnAutomaticSwitchReceiver;->getListener()Lcom/stericsson/hardware/fm/IOnAutomaticSwitchListener;

    move-result-object v3

    invoke-interface {v3}, Lcom/stericsson/hardware/fm/IOnAutomaticSwitchListener;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v2, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1143
    :cond_1
    :goto_0
    return-void

    .line 1139
    :catch_0
    move-exception v1

    .line 1140
    .local v1, ex:Landroid/os/RemoteException;
    const-string v3, "FmReceiverService"

    const-string v4, "linkToDeath failed:"

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public addOnErrorListener(Lcom/stericsson/hardware/fm/IOnErrorListener;)V
    .locals 5
    .parameter "listener"

    .prologue
    .line 836
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mContext:Landroid/content/Context;

    const-string v4, "com.stericsson.permission.FM_RADIO_RECEIVER"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    .line 838
    new-instance v3, Ljava/lang/SecurityException;

    const-string v4, "Requires FM_RADIO_RECEIVER permission"

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 841
    :cond_0
    invoke-interface {p1}, Lcom/stericsson/hardware/fm/IOnErrorListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 842
    .local v0, binder:Landroid/os/IBinder;
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnErrorReceivers:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stericsson/hardware/fm/FmReceiverService$OnErrorReceiver;

    .line 843
    .local v2, receiver:Lcom/stericsson/hardware/fm/FmReceiverService$OnErrorReceiver;
    if-nez v2, :cond_1

    .line 844
    new-instance v2, Lcom/stericsson/hardware/fm/FmReceiverService$OnErrorReceiver;

    .end local v2           #receiver:Lcom/stericsson/hardware/fm/FmReceiverService$OnErrorReceiver;
    invoke-direct {v2, p0, p1}, Lcom/stericsson/hardware/fm/FmReceiverService$OnErrorReceiver;-><init>(Lcom/stericsson/hardware/fm/FmReceiverService;Lcom/stericsson/hardware/fm/IOnErrorListener;)V

    .line 845
    .restart local v2       #receiver:Lcom/stericsson/hardware/fm/FmReceiverService$OnErrorReceiver;
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnErrorReceivers:Ljava/util/HashMap;

    invoke-virtual {v3, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 846
    const-string v3, "FmReceiverService"

    const-string v4, "addOnErrorListener(), new receiver added"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 848
    :try_start_0
    invoke-virtual {v2}, Lcom/stericsson/hardware/fm/FmReceiverService$OnErrorReceiver;->getListener()Lcom/stericsson/hardware/fm/IOnErrorListener;

    move-result-object v3

    invoke-interface {v3}, Lcom/stericsson/hardware/fm/IOnErrorListener;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v2, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 853
    :cond_1
    :goto_0
    return-void

    .line 849
    :catch_0
    move-exception v1

    .line 850
    .local v1, ex:Landroid/os/RemoteException;
    const-string v3, "FmReceiverService"

    const-string v4, "linkToDeath failed:"

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public addOnExtraCommandListener(Lcom/stericsson/hardware/fm/IOnExtraCommandListener;)V
    .locals 5
    .parameter "listener"

    .prologue
    .line 1091
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mContext:Landroid/content/Context;

    const-string v4, "com.stericsson.permission.FM_RADIO_RECEIVER"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    .line 1093
    new-instance v3, Ljava/lang/SecurityException;

    const-string v4, "Requires FM_RADIO_RECEIVER permission"

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1096
    :cond_0
    invoke-interface {p1}, Lcom/stericsson/hardware/fm/IOnExtraCommandListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 1097
    .local v0, binder:Landroid/os/IBinder;
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnExtraCommandReceivers:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stericsson/hardware/fm/FmReceiverService$OnExtraCommandReceiver;

    .line 1098
    .local v2, receiver:Lcom/stericsson/hardware/fm/FmReceiverService$OnExtraCommandReceiver;
    if-nez v2, :cond_1

    .line 1099
    new-instance v2, Lcom/stericsson/hardware/fm/FmReceiverService$OnExtraCommandReceiver;

    .end local v2           #receiver:Lcom/stericsson/hardware/fm/FmReceiverService$OnExtraCommandReceiver;
    invoke-direct {v2, p0, p1}, Lcom/stericsson/hardware/fm/FmReceiverService$OnExtraCommandReceiver;-><init>(Lcom/stericsson/hardware/fm/FmReceiverService;Lcom/stericsson/hardware/fm/IOnExtraCommandListener;)V

    .line 1100
    .restart local v2       #receiver:Lcom/stericsson/hardware/fm/FmReceiverService$OnExtraCommandReceiver;
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnExtraCommandReceivers:Ljava/util/HashMap;

    invoke-virtual {v3, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1101
    const-string v3, "FmReceiverService"

    const-string v4, "addOnExtraCommandListener(), new receiver added"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1103
    :try_start_0
    invoke-virtual {v2}, Lcom/stericsson/hardware/fm/FmReceiverService$OnExtraCommandReceiver;->getListener()Lcom/stericsson/hardware/fm/IOnExtraCommandListener;

    move-result-object v3

    invoke-interface {v3}, Lcom/stericsson/hardware/fm/IOnExtraCommandListener;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v2, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1108
    :cond_1
    :goto_0
    return-void

    .line 1104
    :catch_0
    move-exception v1

    .line 1105
    .local v1, ex:Landroid/os/RemoteException;
    const-string v3, "FmReceiverService"

    const-string v4, "linkToDeath failed:"

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public addOnForcedPauseListener(Lcom/stericsson/hardware/fm/IOnForcedPauseListener;)V
    .locals 5
    .parameter "listener"

    .prologue
    .line 906
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mContext:Landroid/content/Context;

    const-string v4, "com.stericsson.permission.FM_RADIO_RECEIVER"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    .line 908
    new-instance v3, Ljava/lang/SecurityException;

    const-string v4, "Requires FM_RADIO_RECEIVER permission"

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 911
    :cond_0
    invoke-interface {p1}, Lcom/stericsson/hardware/fm/IOnForcedPauseListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 912
    .local v0, binder:Landroid/os/IBinder;
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnForcedPauseReceivers:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stericsson/hardware/fm/FmReceiverService$OnForcedPauseReceiver;

    .line 913
    .local v2, receiver:Lcom/stericsson/hardware/fm/FmReceiverService$OnForcedPauseReceiver;
    if-nez v2, :cond_1

    .line 914
    new-instance v2, Lcom/stericsson/hardware/fm/FmReceiverService$OnForcedPauseReceiver;

    .end local v2           #receiver:Lcom/stericsson/hardware/fm/FmReceiverService$OnForcedPauseReceiver;
    invoke-direct {v2, p0, p1}, Lcom/stericsson/hardware/fm/FmReceiverService$OnForcedPauseReceiver;-><init>(Lcom/stericsson/hardware/fm/FmReceiverService;Lcom/stericsson/hardware/fm/IOnForcedPauseListener;)V

    .line 915
    .restart local v2       #receiver:Lcom/stericsson/hardware/fm/FmReceiverService$OnForcedPauseReceiver;
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnForcedPauseReceivers:Ljava/util/HashMap;

    invoke-virtual {v3, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 916
    const-string v3, "FmReceiverService"

    const-string v4, "addOnForcedPauseListener(), new receiver added"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 918
    :try_start_0
    invoke-virtual {v2}, Lcom/stericsson/hardware/fm/FmReceiverService$OnForcedPauseReceiver;->getListener()Lcom/stericsson/hardware/fm/IOnForcedPauseListener;

    move-result-object v3

    invoke-interface {v3}, Lcom/stericsson/hardware/fm/IOnForcedPauseListener;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v2, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 923
    :cond_1
    :goto_0
    return-void

    .line 919
    :catch_0
    move-exception v1

    .line 920
    .local v1, ex:Landroid/os/RemoteException;
    const-string v3, "FmReceiverService"

    const-string v4, "linkToDeath failed:"

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public addOnForcedResetListener(Lcom/stericsson/hardware/fm/IOnForcedResetListener;)V
    .locals 5
    .parameter "listener"

    .prologue
    .line 941
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mContext:Landroid/content/Context;

    const-string v4, "com.stericsson.permission.FM_RADIO_RECEIVER"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    .line 943
    new-instance v3, Ljava/lang/SecurityException;

    const-string v4, "Requires FM_RADIO_RECEIVER permission"

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 946
    :cond_0
    invoke-interface {p1}, Lcom/stericsson/hardware/fm/IOnForcedResetListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 947
    .local v0, binder:Landroid/os/IBinder;
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnForcedResetReceivers:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stericsson/hardware/fm/FmReceiverService$OnForcedResetReceiver;

    .line 948
    .local v2, receiver:Lcom/stericsson/hardware/fm/FmReceiverService$OnForcedResetReceiver;
    if-nez v2, :cond_1

    .line 949
    new-instance v2, Lcom/stericsson/hardware/fm/FmReceiverService$OnForcedResetReceiver;

    .end local v2           #receiver:Lcom/stericsson/hardware/fm/FmReceiverService$OnForcedResetReceiver;
    invoke-direct {v2, p0, p1}, Lcom/stericsson/hardware/fm/FmReceiverService$OnForcedResetReceiver;-><init>(Lcom/stericsson/hardware/fm/FmReceiverService;Lcom/stericsson/hardware/fm/IOnForcedResetListener;)V

    .line 950
    .restart local v2       #receiver:Lcom/stericsson/hardware/fm/FmReceiverService$OnForcedResetReceiver;
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnForcedResetReceivers:Ljava/util/HashMap;

    invoke-virtual {v3, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 951
    const-string v3, "FmReceiverService"

    const-string v4, "addOnForcedResetListener(), new receiver added"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 953
    :try_start_0
    invoke-virtual {v2}, Lcom/stericsson/hardware/fm/FmReceiverService$OnForcedResetReceiver;->getListener()Lcom/stericsson/hardware/fm/IOnForcedResetListener;

    move-result-object v3

    invoke-interface {v3}, Lcom/stericsson/hardware/fm/IOnForcedResetListener;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v2, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 958
    :cond_1
    :goto_0
    return-void

    .line 954
    :catch_0
    move-exception v1

    .line 955
    .local v1, ex:Landroid/os/RemoteException;
    const-string v3, "FmReceiverService"

    const-string v4, "linkToDeath failed:"

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public addOnPlayingInStereoListener(Lcom/stericsson/hardware/fm/IOnStereoListener;)V
    .locals 5
    .parameter "listener"

    .prologue
    .line 1056
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mContext:Landroid/content/Context;

    const-string v4, "com.stericsson.permission.FM_RADIO_RECEIVER"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    .line 1058
    new-instance v3, Ljava/lang/SecurityException;

    const-string v4, "Requires FM_RADIO_RECEIVER permission"

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1061
    :cond_0
    invoke-interface {p1}, Lcom/stericsson/hardware/fm/IOnStereoListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 1062
    .local v0, binder:Landroid/os/IBinder;
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnStereoReceivers:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stericsson/hardware/fm/FmReceiverService$OnStereoReceiver;

    .line 1063
    .local v2, receiver:Lcom/stericsson/hardware/fm/FmReceiverService$OnStereoReceiver;
    if-nez v2, :cond_1

    .line 1064
    new-instance v2, Lcom/stericsson/hardware/fm/FmReceiverService$OnStereoReceiver;

    .end local v2           #receiver:Lcom/stericsson/hardware/fm/FmReceiverService$OnStereoReceiver;
    invoke-direct {v2, p0, p1}, Lcom/stericsson/hardware/fm/FmReceiverService$OnStereoReceiver;-><init>(Lcom/stericsson/hardware/fm/FmReceiverService;Lcom/stericsson/hardware/fm/IOnStereoListener;)V

    .line 1065
    .restart local v2       #receiver:Lcom/stericsson/hardware/fm/FmReceiverService$OnStereoReceiver;
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnStereoReceivers:Ljava/util/HashMap;

    invoke-virtual {v3, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1066
    const-string v3, "FmReceiverService"

    const-string v4, "addOnPlayingInStereoListener(), new receiver added"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1068
    :try_start_0
    invoke-virtual {v2}, Lcom/stericsson/hardware/fm/FmReceiverService$OnStereoReceiver;->getListener()Lcom/stericsson/hardware/fm/IOnStereoListener;

    move-result-object v3

    invoke-interface {v3}, Lcom/stericsson/hardware/fm/IOnStereoListener;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v2, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1073
    :cond_1
    :goto_0
    return-void

    .line 1069
    :catch_0
    move-exception v1

    .line 1070
    .local v1, ex:Landroid/os/RemoteException;
    const-string v3, "FmReceiverService"

    const-string v4, "linkToDeath failed:"

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public addOnRDSDataFoundListener(Lcom/stericsson/hardware/fm/IOnRDSDataFoundListener;)V
    .locals 6
    .parameter "listener"

    .prologue
    const/4 v5, 0x1

    .line 976
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mContext:Landroid/content/Context;

    const-string v4, "com.stericsson.permission.FM_RADIO_RECEIVER"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    .line 978
    new-instance v3, Ljava/lang/SecurityException;

    const-string v4, "Requires FM_RADIO_RECEIVER permission"

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 981
    :cond_0
    invoke-interface {p1}, Lcom/stericsson/hardware/fm/IOnRDSDataFoundListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 982
    .local v0, binder:Landroid/os/IBinder;
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnRDSDataReceivers:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stericsson/hardware/fm/FmReceiverService$OnRDSDataReceiver;

    .line 983
    .local v2, receiver:Lcom/stericsson/hardware/fm/FmReceiverService$OnRDSDataReceiver;
    if-nez v2, :cond_1

    .line 984
    new-instance v2, Lcom/stericsson/hardware/fm/FmReceiverService$OnRDSDataReceiver;

    .end local v2           #receiver:Lcom/stericsson/hardware/fm/FmReceiverService$OnRDSDataReceiver;
    invoke-direct {v2, p0, p1}, Lcom/stericsson/hardware/fm/FmReceiverService$OnRDSDataReceiver;-><init>(Lcom/stericsson/hardware/fm/FmReceiverService;Lcom/stericsson/hardware/fm/IOnRDSDataFoundListener;)V

    .line 985
    .restart local v2       #receiver:Lcom/stericsson/hardware/fm/FmReceiverService$OnRDSDataReceiver;
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnRDSDataReceivers:Ljava/util/HashMap;

    invoke-virtual {v3, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 986
    const-string v3, "FmReceiverService"

    const-string v4, "addOnRDSDataFoundListener(), new receiver added"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 988
    :try_start_0
    invoke-virtual {v2}, Lcom/stericsson/hardware/fm/FmReceiverService$OnRDSDataReceiver;->getListener()Lcom/stericsson/hardware/fm/IOnRDSDataFoundListener;

    move-result-object v3

    invoke-interface {v3}, Lcom/stericsson/hardware/fm/IOnRDSDataFoundListener;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v2, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 992
    :goto_0
    invoke-virtual {p0}, Lcom/stericsson/hardware/fm/FmReceiverService;->getState()I

    move-result v3

    const/4 v4, 0x2

    if-lt v3, v4, :cond_1

    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnRDSDataReceivers:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    if-ne v3, v5, :cond_1

    .line 994
    const-string v3, "FmReceiverService"

    const-string v4, "First RDS receiver added, switching on RDS"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 995
    invoke-direct {p0, v5}, Lcom/stericsson/hardware/fm/FmReceiverService;->_fm_receiver_setRDS(Z)V

    .line 998
    :cond_1
    return-void

    .line 989
    :catch_0
    move-exception v1

    .line 990
    .local v1, ex:Landroid/os/RemoteException;
    const-string v3, "FmReceiverService"

    const-string v4, "linkToDeath failed:"

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public addOnScanListener(Lcom/stericsson/hardware/fm/IOnScanListener;)V
    .locals 5
    .parameter "listener"

    .prologue
    .line 871
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mContext:Landroid/content/Context;

    const-string v4, "com.stericsson.permission.FM_RADIO_RECEIVER"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    .line 873
    new-instance v3, Ljava/lang/SecurityException;

    const-string v4, "Requires FM_RADIO_RECEIVER permission"

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 876
    :cond_0
    invoke-interface {p1}, Lcom/stericsson/hardware/fm/IOnScanListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 877
    .local v0, binder:Landroid/os/IBinder;
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnScanReceivers:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stericsson/hardware/fm/FmReceiverService$OnScanReceiver;

    .line 878
    .local v2, receiver:Lcom/stericsson/hardware/fm/FmReceiverService$OnScanReceiver;
    if-nez v2, :cond_1

    .line 879
    new-instance v2, Lcom/stericsson/hardware/fm/FmReceiverService$OnScanReceiver;

    .end local v2           #receiver:Lcom/stericsson/hardware/fm/FmReceiverService$OnScanReceiver;
    invoke-direct {v2, p0, p1}, Lcom/stericsson/hardware/fm/FmReceiverService$OnScanReceiver;-><init>(Lcom/stericsson/hardware/fm/FmReceiverService;Lcom/stericsson/hardware/fm/IOnScanListener;)V

    .line 880
    .restart local v2       #receiver:Lcom/stericsson/hardware/fm/FmReceiverService$OnScanReceiver;
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnScanReceivers:Ljava/util/HashMap;

    invoke-virtual {v3, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 881
    const-string v3, "FmReceiverService"

    const-string v4, "addOnScanListener(), new receiver added"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 883
    :try_start_0
    invoke-virtual {v2}, Lcom/stericsson/hardware/fm/FmReceiverService$OnScanReceiver;->getListener()Lcom/stericsson/hardware/fm/IOnScanListener;

    move-result-object v3

    invoke-interface {v3}, Lcom/stericsson/hardware/fm/IOnScanListener;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v2, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 888
    :cond_1
    :goto_0
    return-void

    .line 884
    :catch_0
    move-exception v1

    .line 885
    .local v1, ex:Landroid/os/RemoteException;
    const-string v3, "FmReceiverService"

    const-string v4, "linkToDeath failed:"

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public addOnSignalStrengthChangedListener(Lcom/stericsson/hardware/fm/IOnSignalStrengthListener;)V
    .locals 5
    .parameter "listener"

    .prologue
    .line 1021
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mContext:Landroid/content/Context;

    const-string v4, "com.stericsson.permission.FM_RADIO_RECEIVER"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    .line 1023
    new-instance v3, Ljava/lang/SecurityException;

    const-string v4, "Requires FM_RADIO_RECEIVER permission"

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1026
    :cond_0
    invoke-interface {p1}, Lcom/stericsson/hardware/fm/IOnSignalStrengthListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 1027
    .local v0, binder:Landroid/os/IBinder;
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnSignalStrengthReceivers:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stericsson/hardware/fm/FmReceiverService$OnSignalStrengthReceiver;

    .line 1028
    .local v2, receiver:Lcom/stericsson/hardware/fm/FmReceiverService$OnSignalStrengthReceiver;
    if-nez v2, :cond_1

    .line 1029
    new-instance v2, Lcom/stericsson/hardware/fm/FmReceiverService$OnSignalStrengthReceiver;

    .end local v2           #receiver:Lcom/stericsson/hardware/fm/FmReceiverService$OnSignalStrengthReceiver;
    invoke-direct {v2, p0, p1}, Lcom/stericsson/hardware/fm/FmReceiverService$OnSignalStrengthReceiver;-><init>(Lcom/stericsson/hardware/fm/FmReceiverService;Lcom/stericsson/hardware/fm/IOnSignalStrengthListener;)V

    .line 1030
    .restart local v2       #receiver:Lcom/stericsson/hardware/fm/FmReceiverService$OnSignalStrengthReceiver;
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnSignalStrengthReceivers:Ljava/util/HashMap;

    invoke-virtual {v3, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1031
    const-string v3, "FmReceiverService"

    const-string v4, "addOnSignalStrengthChangedListener(), new receiver added"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1033
    :try_start_0
    invoke-virtual {v2}, Lcom/stericsson/hardware/fm/FmReceiverService$OnSignalStrengthReceiver;->getListener()Lcom/stericsson/hardware/fm/IOnSignalStrengthListener;

    move-result-object v3

    invoke-interface {v3}, Lcom/stericsson/hardware/fm/IOnSignalStrengthListener;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v2, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1038
    :cond_1
    :goto_0
    return-void

    .line 1034
    :catch_0
    move-exception v1

    .line 1035
    .local v1, ex:Landroid/os/RemoteException;
    const-string v3, "FmReceiverService"

    const-string v4, "linkToDeath failed:"

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public addOnStartedListener(Lcom/stericsson/hardware/fm/IOnStartedListener;)V
    .locals 5
    .parameter "listener"

    .prologue
    .line 801
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mContext:Landroid/content/Context;

    const-string v4, "com.stericsson.permission.FM_RADIO_RECEIVER"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    .line 803
    new-instance v3, Ljava/lang/SecurityException;

    const-string v4, "Requires FM_RADIO_RECEIVER permission"

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 806
    :cond_0
    invoke-interface {p1}, Lcom/stericsson/hardware/fm/IOnStartedListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 807
    .local v0, binder:Landroid/os/IBinder;
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnStartedReceivers:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stericsson/hardware/fm/FmReceiverService$OnStartedReceiver;

    .line 808
    .local v2, receiver:Lcom/stericsson/hardware/fm/FmReceiverService$OnStartedReceiver;
    if-nez v2, :cond_1

    .line 809
    new-instance v2, Lcom/stericsson/hardware/fm/FmReceiverService$OnStartedReceiver;

    .end local v2           #receiver:Lcom/stericsson/hardware/fm/FmReceiverService$OnStartedReceiver;
    invoke-direct {v2, p0, p1}, Lcom/stericsson/hardware/fm/FmReceiverService$OnStartedReceiver;-><init>(Lcom/stericsson/hardware/fm/FmReceiverService;Lcom/stericsson/hardware/fm/IOnStartedListener;)V

    .line 810
    .restart local v2       #receiver:Lcom/stericsson/hardware/fm/FmReceiverService$OnStartedReceiver;
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnStartedReceivers:Ljava/util/HashMap;

    invoke-virtual {v3, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 811
    const-string v3, "FmReceiverService"

    const-string v4, "addOnStartedListener(), new receiver added"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 813
    :try_start_0
    invoke-virtual {v2}, Lcom/stericsson/hardware/fm/FmReceiverService$OnStartedReceiver;->getListener()Lcom/stericsson/hardware/fm/IOnStartedListener;

    move-result-object v3

    invoke-interface {v3}, Lcom/stericsson/hardware/fm/IOnStartedListener;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v2, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 818
    :cond_1
    :goto_0
    return-void

    .line 814
    :catch_0
    move-exception v1

    .line 815
    .local v1, ex:Landroid/os/RemoteException;
    const-string v3, "FmReceiverService"

    const-string v4, "linkToDeath failed:"

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public addOnStateChangedListener(Lcom/stericsson/hardware/fm/IOnStateChangedListener;)V
    .locals 5
    .parameter "listener"

    .prologue
    .line 766
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mContext:Landroid/content/Context;

    const-string v4, "com.stericsson.permission.FM_RADIO_RECEIVER"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    .line 768
    new-instance v3, Ljava/lang/SecurityException;

    const-string v4, "Requires FM_RADIO_RECEIVER permission"

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 771
    :cond_0
    invoke-interface {p1}, Lcom/stericsson/hardware/fm/IOnStateChangedListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 772
    .local v0, binder:Landroid/os/IBinder;
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnStateChangedReceivers:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stericsson/hardware/fm/FmReceiverService$OnStateChangedReceiver;

    .line 773
    .local v2, receiver:Lcom/stericsson/hardware/fm/FmReceiverService$OnStateChangedReceiver;
    if-nez v2, :cond_1

    .line 774
    new-instance v2, Lcom/stericsson/hardware/fm/FmReceiverService$OnStateChangedReceiver;

    .end local v2           #receiver:Lcom/stericsson/hardware/fm/FmReceiverService$OnStateChangedReceiver;
    invoke-direct {v2, p0, p1}, Lcom/stericsson/hardware/fm/FmReceiverService$OnStateChangedReceiver;-><init>(Lcom/stericsson/hardware/fm/FmReceiverService;Lcom/stericsson/hardware/fm/IOnStateChangedListener;)V

    .line 775
    .restart local v2       #receiver:Lcom/stericsson/hardware/fm/FmReceiverService$OnStateChangedReceiver;
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnStateChangedReceivers:Ljava/util/HashMap;

    invoke-virtual {v3, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 776
    const-string v3, "FmReceiverService"

    const-string v4, "addOnStateChangedListener(), new receiver added"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 778
    :try_start_0
    invoke-virtual {v2}, Lcom/stericsson/hardware/fm/FmReceiverService$OnStateChangedReceiver;->getListener()Lcom/stericsson/hardware/fm/IOnStateChangedListener;

    move-result-object v3

    invoke-interface {v3}, Lcom/stericsson/hardware/fm/IOnStateChangedListener;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v2, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 783
    :cond_1
    :goto_0
    return-void

    .line 779
    :catch_0
    move-exception v1

    .line 780
    .local v1, ex:Landroid/os/RemoteException;
    const-string v3, "FmReceiverService"

    const-string v4, "linkToDeath failed:"

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getFrequency()I
    .locals 2

    .prologue
    .line 631
    iget-object v0, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mContext:Landroid/content/Context;

    const-string v1, "com.stericsson.permission.FM_RADIO_RECEIVER"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 633
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires FM_RADIO_RECEIVER permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 636
    :cond_0
    invoke-direct {p0}, Lcom/stericsson/hardware/fm/FmReceiverService;->_fm_receiver_getFrequency()I

    move-result v0

    return v0
.end method

.method public getSignalStrength()I
    .locals 2

    .prologue
    .line 712
    iget-object v0, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mContext:Landroid/content/Context;

    const-string v1, "com.stericsson.permission.FM_RADIO_RECEIVER"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 714
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires FM_RADIO_RECEIVER permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 717
    :cond_0
    invoke-direct {p0}, Lcom/stericsson/hardware/fm/FmReceiverService;->_fm_receiver_getSignalStrength()I

    move-result v0

    return v0
.end method

.method public getState()I
    .locals 2

    .prologue
    .line 613
    iget-object v0, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mContext:Landroid/content/Context;

    const-string v1, "com.stericsson.permission.FM_RADIO_RECEIVER"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 615
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires FM_RADIO_RECEIVER permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 618
    :cond_0
    invoke-direct {p0}, Lcom/stericsson/hardware/fm/FmReceiverService;->_fm_receiver_getState()I

    move-result v0

    return v0
.end method

.method public getThreshold()I
    .locals 2

    .prologue
    .line 703
    iget-object v0, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mContext:Landroid/content/Context;

    const-string v1, "com.stericsson.permission.FM_RADIO_RECEIVER"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 705
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires FM_RADIO_RECEIVER permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 708
    :cond_0
    invoke-direct {p0}, Lcom/stericsson/hardware/fm/FmReceiverService;->_fm_receiver_getThreshold()I

    move-result v0

    return v0
.end method

.method public isPlayingInStereo()Z
    .locals 2

    .prologue
    .line 721
    iget-object v0, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mContext:Landroid/content/Context;

    const-string v1, "com.stericsson.permission.FM_RADIO_RECEIVER"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 723
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires FM_RADIO_RECEIVER permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 726
    :cond_0
    invoke-direct {p0}, Lcom/stericsson/hardware/fm/FmReceiverService;->_fm_receiver_isPlayingInStereo()Z

    move-result v0

    return v0
.end method

.method public isRDSDataSupported()Z
    .locals 2

    .prologue
    .line 676
    iget-object v0, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mContext:Landroid/content/Context;

    const-string v1, "com.stericsson.permission.FM_RADIO_RECEIVER"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 678
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires FM_RADIO_RECEIVER permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 681
    :cond_0
    invoke-direct {p0}, Lcom/stericsson/hardware/fm/FmReceiverService;->_fm_receiver_isRDSDataSupported()Z

    move-result v0

    return v0
.end method

.method public isTunedToValidChannel()Z
    .locals 2

    .prologue
    .line 685
    iget-object v0, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mContext:Landroid/content/Context;

    const-string v1, "com.stericsson.permission.FM_RADIO_RECEIVER"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 687
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires FM_RADIO_RECEIVER permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 690
    :cond_0
    invoke-direct {p0}, Lcom/stericsson/hardware/fm/FmReceiverService;->_fm_receiver_isTunedToValidChannel()Z

    move-result v0

    return v0
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 595
    iget-object v0, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mContext:Landroid/content/Context;

    const-string v1, "com.stericsson.permission.FM_RADIO_RECEIVER"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 597
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires FM_RADIO_RECEIVER permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 600
    :cond_0
    invoke-direct {p0}, Lcom/stericsson/hardware/fm/FmReceiverService;->_fm_receiver_pause()V

    .line 601
    return-void
.end method

.method public removeOnAutomaticSwitchListener(Lcom/stericsson/hardware/fm/IOnAutomaticSwitchListener;)V
    .locals 4
    .parameter "listener"

    .prologue
    .line 1146
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mContext:Landroid/content/Context;

    const-string v3, "com.stericsson.permission.FM_RADIO_RECEIVER"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 1148
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Requires FM_RADIO_RECEIVER permission"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1151
    :cond_0
    invoke-interface {p1}, Lcom/stericsson/hardware/fm/IOnAutomaticSwitchListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 1152
    .local v0, binder:Landroid/os/IBinder;
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnAutomaticSwitchReceivers:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stericsson/hardware/fm/FmReceiverService$OnAutomaticSwitchReceiver;

    .line 1153
    .local v1, receiver:Lcom/stericsson/hardware/fm/FmReceiverService$OnAutomaticSwitchReceiver;
    if-eqz v1, :cond_1

    .line 1154
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnAutomaticSwitchReceivers:Ljava/util/HashMap;

    iget-object v3, v1, Lcom/stericsson/hardware/fm/FmReceiverService$OnAutomaticSwitchReceiver;->mKey:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1155
    const-string v2, "FmReceiverService"

    const-string/jumbo v3, "removeOnAutomaticSwitchListener(), receiver removed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1156
    invoke-virtual {v1}, Lcom/stericsson/hardware/fm/FmReceiverService$OnAutomaticSwitchReceiver;->getListener()Lcom/stericsson/hardware/fm/IOnAutomaticSwitchListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/stericsson/hardware/fm/IOnAutomaticSwitchListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 1158
    :cond_1
    return-void
.end method

.method public removeOnErrorListener(Lcom/stericsson/hardware/fm/IOnErrorListener;)V
    .locals 4
    .parameter "listener"

    .prologue
    .line 856
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mContext:Landroid/content/Context;

    const-string v3, "com.stericsson.permission.FM_RADIO_RECEIVER"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 858
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Requires FM_RADIO_RECEIVER permission"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 861
    :cond_0
    invoke-interface {p1}, Lcom/stericsson/hardware/fm/IOnErrorListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 862
    .local v0, binder:Landroid/os/IBinder;
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnErrorReceivers:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stericsson/hardware/fm/FmReceiverService$OnErrorReceiver;

    .line 863
    .local v1, receiver:Lcom/stericsson/hardware/fm/FmReceiverService$OnErrorReceiver;
    if-eqz v1, :cond_1

    .line 864
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnErrorReceivers:Ljava/util/HashMap;

    iget-object v3, v1, Lcom/stericsson/hardware/fm/FmReceiverService$OnErrorReceiver;->mKey:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 865
    const-string v2, "FmReceiverService"

    const-string/jumbo v3, "removeOnErrorListener(), receiver removed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 866
    invoke-virtual {v1}, Lcom/stericsson/hardware/fm/FmReceiverService$OnErrorReceiver;->getListener()Lcom/stericsson/hardware/fm/IOnErrorListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/stericsson/hardware/fm/IOnErrorListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 868
    :cond_1
    return-void
.end method

.method public removeOnExtraCommandListener(Lcom/stericsson/hardware/fm/IOnExtraCommandListener;)V
    .locals 4
    .parameter "listener"

    .prologue
    .line 1111
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mContext:Landroid/content/Context;

    const-string v3, "com.stericsson.permission.FM_RADIO_RECEIVER"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 1113
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Requires FM_RADIO_RECEIVER permission"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1116
    :cond_0
    invoke-interface {p1}, Lcom/stericsson/hardware/fm/IOnExtraCommandListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 1117
    .local v0, binder:Landroid/os/IBinder;
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnExtraCommandReceivers:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stericsson/hardware/fm/FmReceiverService$OnExtraCommandReceiver;

    .line 1118
    .local v1, receiver:Lcom/stericsson/hardware/fm/FmReceiverService$OnExtraCommandReceiver;
    if-eqz v1, :cond_1

    .line 1119
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnExtraCommandReceivers:Ljava/util/HashMap;

    iget-object v3, v1, Lcom/stericsson/hardware/fm/FmReceiverService$OnExtraCommandReceiver;->mKey:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1120
    const-string v2, "FmReceiverService"

    const-string/jumbo v3, "removeOnExtraCommandListener(), receiver removed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1121
    invoke-virtual {v1}, Lcom/stericsson/hardware/fm/FmReceiverService$OnExtraCommandReceiver;->getListener()Lcom/stericsson/hardware/fm/IOnExtraCommandListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/stericsson/hardware/fm/IOnExtraCommandListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 1123
    :cond_1
    return-void
.end method

.method public removeOnForcedPauseListener(Lcom/stericsson/hardware/fm/IOnForcedPauseListener;)V
    .locals 4
    .parameter "listener"

    .prologue
    .line 926
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mContext:Landroid/content/Context;

    const-string v3, "com.stericsson.permission.FM_RADIO_RECEIVER"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 928
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Requires FM_RADIO_RECEIVER permission"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 931
    :cond_0
    invoke-interface {p1}, Lcom/stericsson/hardware/fm/IOnForcedPauseListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 932
    .local v0, binder:Landroid/os/IBinder;
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnForcedPauseReceivers:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stericsson/hardware/fm/FmReceiverService$OnForcedPauseReceiver;

    .line 933
    .local v1, receiver:Lcom/stericsson/hardware/fm/FmReceiverService$OnForcedPauseReceiver;
    if-eqz v1, :cond_1

    .line 934
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnForcedPauseReceivers:Ljava/util/HashMap;

    iget-object v3, v1, Lcom/stericsson/hardware/fm/FmReceiverService$OnForcedPauseReceiver;->mKey:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 935
    const-string v2, "FmReceiverService"

    const-string/jumbo v3, "removeOnForcedPauseListener(), receiver removed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 936
    invoke-virtual {v1}, Lcom/stericsson/hardware/fm/FmReceiverService$OnForcedPauseReceiver;->getListener()Lcom/stericsson/hardware/fm/IOnForcedPauseListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/stericsson/hardware/fm/IOnForcedPauseListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 938
    :cond_1
    return-void
.end method

.method public removeOnForcedResetListener(Lcom/stericsson/hardware/fm/IOnForcedResetListener;)V
    .locals 4
    .parameter "listener"

    .prologue
    .line 961
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mContext:Landroid/content/Context;

    const-string v3, "com.stericsson.permission.FM_RADIO_RECEIVER"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 963
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Requires FM_RADIO_RECEIVER permission"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 966
    :cond_0
    invoke-interface {p1}, Lcom/stericsson/hardware/fm/IOnForcedResetListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 967
    .local v0, binder:Landroid/os/IBinder;
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnForcedResetReceivers:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stericsson/hardware/fm/FmReceiverService$OnForcedResetReceiver;

    .line 968
    .local v1, receiver:Lcom/stericsson/hardware/fm/FmReceiverService$OnForcedResetReceiver;
    if-eqz v1, :cond_1

    .line 969
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnForcedResetReceivers:Ljava/util/HashMap;

    iget-object v3, v1, Lcom/stericsson/hardware/fm/FmReceiverService$OnForcedResetReceiver;->mKey:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 970
    const-string v2, "FmReceiverService"

    const-string/jumbo v3, "removeOnForcedResetListener(), receiver removed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 971
    invoke-virtual {v1}, Lcom/stericsson/hardware/fm/FmReceiverService$OnForcedResetReceiver;->getListener()Lcom/stericsson/hardware/fm/IOnForcedResetListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/stericsson/hardware/fm/IOnForcedResetListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 973
    :cond_1
    return-void
.end method

.method public removeOnPlayingInStereoListener(Lcom/stericsson/hardware/fm/IOnStereoListener;)V
    .locals 4
    .parameter "listener"

    .prologue
    .line 1076
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mContext:Landroid/content/Context;

    const-string v3, "com.stericsson.permission.FM_RADIO_RECEIVER"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 1078
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Requires FM_RADIO_RECEIVER permission"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1081
    :cond_0
    invoke-interface {p1}, Lcom/stericsson/hardware/fm/IOnStereoListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 1082
    .local v0, binder:Landroid/os/IBinder;
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnStereoReceivers:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stericsson/hardware/fm/FmReceiverService$OnStereoReceiver;

    .line 1083
    .local v1, receiver:Lcom/stericsson/hardware/fm/FmReceiverService$OnStereoReceiver;
    if-eqz v1, :cond_1

    .line 1084
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnStereoReceivers:Ljava/util/HashMap;

    iget-object v3, v1, Lcom/stericsson/hardware/fm/FmReceiverService$OnStereoReceiver;->mKey:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1085
    const-string v2, "FmReceiverService"

    const-string/jumbo v3, "removeOnPlayingInStereoListener(), receiver removed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1086
    invoke-virtual {v1}, Lcom/stericsson/hardware/fm/FmReceiverService$OnStereoReceiver;->getListener()Lcom/stericsson/hardware/fm/IOnStereoListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/stericsson/hardware/fm/IOnStereoListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 1088
    :cond_1
    return-void
.end method

.method public removeOnRDSDataFoundListener(Lcom/stericsson/hardware/fm/IOnRDSDataFoundListener;)V
    .locals 5
    .parameter "listener"

    .prologue
    const/4 v4, 0x0

    .line 1001
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mContext:Landroid/content/Context;

    const-string v3, "com.stericsson.permission.FM_RADIO_RECEIVER"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 1003
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Requires FM_RADIO_RECEIVER permission"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1006
    :cond_0
    invoke-interface {p1}, Lcom/stericsson/hardware/fm/IOnRDSDataFoundListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 1007
    .local v0, binder:Landroid/os/IBinder;
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnRDSDataReceivers:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stericsson/hardware/fm/FmReceiverService$OnRDSDataReceiver;

    .line 1008
    .local v1, receiver:Lcom/stericsson/hardware/fm/FmReceiverService$OnRDSDataReceiver;
    if-eqz v1, :cond_1

    .line 1009
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnRDSDataReceivers:Ljava/util/HashMap;

    iget-object v3, v1, Lcom/stericsson/hardware/fm/FmReceiverService$OnRDSDataReceiver;->mKey:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1010
    const-string v2, "FmReceiverService"

    const-string/jumbo v3, "removeOnRDSDataFoundListener(), receiver removed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1011
    invoke-virtual {v1}, Lcom/stericsson/hardware/fm/FmReceiverService$OnRDSDataReceiver;->getListener()Lcom/stericsson/hardware/fm/IOnRDSDataFoundListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/stericsson/hardware/fm/IOnRDSDataFoundListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v2, v1, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 1012
    invoke-virtual {p0}, Lcom/stericsson/hardware/fm/FmReceiverService;->getState()I

    move-result v2

    const/4 v3, 0x2

    if-lt v2, v3, :cond_1

    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnRDSDataReceivers:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1014
    const-string v2, "FmReceiverService"

    const-string v3, "Last RDS receiver removed, switching off RDS"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1015
    invoke-direct {p0, v4}, Lcom/stericsson/hardware/fm/FmReceiverService;->_fm_receiver_setRDS(Z)V

    .line 1018
    :cond_1
    return-void
.end method

.method public removeOnScanListener(Lcom/stericsson/hardware/fm/IOnScanListener;)V
    .locals 4
    .parameter "listener"

    .prologue
    .line 891
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mContext:Landroid/content/Context;

    const-string v3, "com.stericsson.permission.FM_RADIO_RECEIVER"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 893
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Requires FM_RADIO_RECEIVER permission"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 896
    :cond_0
    invoke-interface {p1}, Lcom/stericsson/hardware/fm/IOnScanListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 897
    .local v0, binder:Landroid/os/IBinder;
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnScanReceivers:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stericsson/hardware/fm/FmReceiverService$OnScanReceiver;

    .line 898
    .local v1, receiver:Lcom/stericsson/hardware/fm/FmReceiverService$OnScanReceiver;
    if-eqz v1, :cond_1

    .line 899
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnScanReceivers:Ljava/util/HashMap;

    iget-object v3, v1, Lcom/stericsson/hardware/fm/FmReceiverService$OnScanReceiver;->mKey:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 900
    const-string v2, "FmReceiverService"

    const-string/jumbo v3, "removeOnScanListener(), receiver removed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 901
    invoke-virtual {v1}, Lcom/stericsson/hardware/fm/FmReceiverService$OnScanReceiver;->getListener()Lcom/stericsson/hardware/fm/IOnScanListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/stericsson/hardware/fm/IOnScanListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 903
    :cond_1
    return-void
.end method

.method public removeOnSignalStrengthChangedListener(Lcom/stericsson/hardware/fm/IOnSignalStrengthListener;)V
    .locals 4
    .parameter "listener"

    .prologue
    .line 1041
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mContext:Landroid/content/Context;

    const-string v3, "com.stericsson.permission.FM_RADIO_RECEIVER"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 1043
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Requires FM_RADIO_RECEIVER permission"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1046
    :cond_0
    invoke-interface {p1}, Lcom/stericsson/hardware/fm/IOnSignalStrengthListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 1047
    .local v0, binder:Landroid/os/IBinder;
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnSignalStrengthReceivers:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stericsson/hardware/fm/FmReceiverService$OnSignalStrengthReceiver;

    .line 1048
    .local v1, receiver:Lcom/stericsson/hardware/fm/FmReceiverService$OnSignalStrengthReceiver;
    if-eqz v1, :cond_1

    .line 1049
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnSignalStrengthReceivers:Ljava/util/HashMap;

    iget-object v3, v1, Lcom/stericsson/hardware/fm/FmReceiverService$OnSignalStrengthReceiver;->mKey:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1050
    const-string v2, "FmReceiverService"

    const-string/jumbo v3, "removeOnSignalStrengthChangedListener(), receiver removed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1051
    invoke-virtual {v1}, Lcom/stericsson/hardware/fm/FmReceiverService$OnSignalStrengthReceiver;->getListener()Lcom/stericsson/hardware/fm/IOnSignalStrengthListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/stericsson/hardware/fm/IOnSignalStrengthListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 1053
    :cond_1
    return-void
.end method

.method public removeOnStartedListener(Lcom/stericsson/hardware/fm/IOnStartedListener;)V
    .locals 4
    .parameter "listener"

    .prologue
    .line 821
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mContext:Landroid/content/Context;

    const-string v3, "com.stericsson.permission.FM_RADIO_RECEIVER"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 823
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Requires FM_RADIO_RECEIVER permission"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 826
    :cond_0
    invoke-interface {p1}, Lcom/stericsson/hardware/fm/IOnStartedListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 827
    .local v0, binder:Landroid/os/IBinder;
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnStartedReceivers:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stericsson/hardware/fm/FmReceiverService$OnStartedReceiver;

    .line 828
    .local v1, receiver:Lcom/stericsson/hardware/fm/FmReceiverService$OnStartedReceiver;
    if-eqz v1, :cond_1

    .line 829
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnStartedReceivers:Ljava/util/HashMap;

    iget-object v3, v1, Lcom/stericsson/hardware/fm/FmReceiverService$OnStartedReceiver;->mKey:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 830
    const-string v2, "FmReceiverService"

    const-string/jumbo v3, "removeOnStartedListener(), receiver removed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 831
    invoke-virtual {v1}, Lcom/stericsson/hardware/fm/FmReceiverService$OnStartedReceiver;->getListener()Lcom/stericsson/hardware/fm/IOnStartedListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/stericsson/hardware/fm/IOnStartedListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 833
    :cond_1
    return-void
.end method

.method public removeOnStateChangedListener(Lcom/stericsson/hardware/fm/IOnStateChangedListener;)V
    .locals 4
    .parameter "listener"

    .prologue
    .line 786
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mContext:Landroid/content/Context;

    const-string v3, "com.stericsson.permission.FM_RADIO_RECEIVER"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 788
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Requires FM_RADIO_RECEIVER permission"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 791
    :cond_0
    invoke-interface {p1}, Lcom/stericsson/hardware/fm/IOnStateChangedListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 792
    .local v0, binder:Landroid/os/IBinder;
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnStateChangedReceivers:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stericsson/hardware/fm/FmReceiverService$OnStateChangedReceiver;

    .line 793
    .local v1, receiver:Lcom/stericsson/hardware/fm/FmReceiverService$OnStateChangedReceiver;
    if-eqz v1, :cond_1

    .line 794
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnStateChangedReceivers:Ljava/util/HashMap;

    iget-object v3, v1, Lcom/stericsson/hardware/fm/FmReceiverService$OnStateChangedReceiver;->mKey:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 795
    const-string v2, "FmReceiverService"

    const-string/jumbo v3, "removeOnStateChangedListener(), receiver removed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 796
    invoke-virtual {v1}, Lcom/stericsson/hardware/fm/FmReceiverService$OnStateChangedReceiver;->getListener()Lcom/stericsson/hardware/fm/IOnStateChangedListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/stericsson/hardware/fm/IOnStateChangedListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 798
    :cond_1
    return-void
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 586
    iget-object v0, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mContext:Landroid/content/Context;

    const-string v1, "com.stericsson.permission.FM_RADIO_RECEIVER"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 588
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires FM_RADIO_RECEIVER permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 591
    :cond_0
    invoke-direct {p0}, Lcom/stericsson/hardware/fm/FmReceiverService;->_fm_receiver_reset()I

    .line 592
    return-void
.end method

.method public resume()V
    .locals 2

    .prologue
    .line 604
    iget-object v0, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mContext:Landroid/content/Context;

    const-string v1, "com.stericsson.permission.FM_RADIO_RECEIVER"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 606
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires FM_RADIO_RECEIVER permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 609
    :cond_0
    invoke-direct {p0}, Lcom/stericsson/hardware/fm/FmReceiverService;->_fm_receiver_resume()V

    .line 610
    return-void
.end method

.method public scanDown()V
    .locals 2

    .prologue
    .line 649
    iget-object v0, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mContext:Landroid/content/Context;

    const-string v1, "com.stericsson.permission.FM_RADIO_RECEIVER"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 651
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires FM_RADIO_RECEIVER permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 654
    :cond_0
    invoke-direct {p0}, Lcom/stericsson/hardware/fm/FmReceiverService;->_fm_receiver_scanDown()V

    .line 655
    return-void
.end method

.method public scanUp()V
    .locals 2

    .prologue
    .line 640
    iget-object v0, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mContext:Landroid/content/Context;

    const-string v1, "com.stericsson.permission.FM_RADIO_RECEIVER"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 642
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires FM_RADIO_RECEIVER permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 645
    :cond_0
    invoke-direct {p0}, Lcom/stericsson/hardware/fm/FmReceiverService;->_fm_receiver_scanUp()V

    .line 646
    return-void
.end method

.method public sendExtraCommand(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 2
    .parameter "command"
    .parameter "extras"

    .prologue
    .line 757
    iget-object v0, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mContext:Landroid/content/Context;

    const-string v1, "com.stericsson.permission.FM_RADIO_RECEIVER"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 759
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires FM_RADIO_RECEIVER permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 762
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/stericsson/hardware/fm/FmReceiverService;->_fm_receiver_sendExtraCommand(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setAutomaticAFSwitching(Z)V
    .locals 2
    .parameter "automatic"

    .prologue
    .line 739
    iget-object v0, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mContext:Landroid/content/Context;

    const-string v1, "com.stericsson.permission.FM_RADIO_RECEIVER"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 741
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires FM_RADIO_RECEIVER permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 744
    :cond_0
    invoke-direct {p0, p1}, Lcom/stericsson/hardware/fm/FmReceiverService;->_fm_receiver_setAutomaticAFSwitching(Z)V

    .line 745
    return-void
.end method

.method public setAutomaticTASwitching(Z)V
    .locals 2
    .parameter "automatic"

    .prologue
    .line 748
    iget-object v0, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mContext:Landroid/content/Context;

    const-string v1, "com.stericsson.permission.FM_RADIO_RECEIVER"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 750
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires FM_RADIO_RECEIVER permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 753
    :cond_0
    invoke-direct {p0, p1}, Lcom/stericsson/hardware/fm/FmReceiverService;->_fm_receiver_setAutomaticTASwitching(Z)V

    .line 754
    return-void
.end method

.method public setForceMono(Z)V
    .locals 2
    .parameter "forceMono"

    .prologue
    .line 730
    iget-object v0, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mContext:Landroid/content/Context;

    const-string v1, "com.stericsson.permission.FM_RADIO_RECEIVER"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 732
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires FM_RADIO_RECEIVER permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 735
    :cond_0
    invoke-direct {p0, p1}, Lcom/stericsson/hardware/fm/FmReceiverService;->_fm_receiver_setForceMono(Z)V

    .line 736
    return-void
.end method

.method public setFrequency(I)V
    .locals 2
    .parameter "frequency"

    .prologue
    .line 622
    iget-object v0, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mContext:Landroid/content/Context;

    const-string v1, "com.stericsson.permission.FM_RADIO_RECEIVER"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 624
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires FM_RADIO_RECEIVER permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 627
    :cond_0
    invoke-direct {p0, p1}, Lcom/stericsson/hardware/fm/FmReceiverService;->_fm_receiver_setFrequency(I)V

    .line 628
    return-void
.end method

.method public setThreshold(I)V
    .locals 2
    .parameter "threshold"

    .prologue
    .line 694
    iget-object v0, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mContext:Landroid/content/Context;

    const-string v1, "com.stericsson.permission.FM_RADIO_RECEIVER"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 696
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires FM_RADIO_RECEIVER permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 699
    :cond_0
    invoke-direct {p0, p1}, Lcom/stericsson/hardware/fm/FmReceiverService;->_fm_receiver_setThreshold(I)V

    .line 700
    return-void
.end method

.method public start(Lcom/stericsson/hardware/fm/FmBand;)V
    .locals 4
    .parameter "band"

    .prologue
    .line 561
    iget-object v0, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mContext:Landroid/content/Context;

    const-string v1, "com.stericsson.permission.FM_RADIO_RECEIVER"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 563
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires FM_RADIO_RECEIVER permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 566
    :cond_0
    invoke-virtual {p1}, Lcom/stericsson/hardware/fm/FmBand;->getMinFrequency()I

    move-result v0

    invoke-virtual {p1}, Lcom/stericsson/hardware/fm/FmBand;->getMaxFrequency()I

    move-result v1

    invoke-virtual {p1}, Lcom/stericsson/hardware/fm/FmBand;->getDefaultFrequency()I

    move-result v2

    invoke-virtual {p1}, Lcom/stericsson/hardware/fm/FmBand;->getChannelOffset()I

    move-result v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/stericsson/hardware/fm/FmReceiverService;->_fm_receiver_start(IIII)V

    .line 569
    iget-object v0, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnRDSDataReceivers:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 570
    const-string v0, "FmReceiverService"

    const-string v1, "Started with RDS receiver(s), switching on RDS"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/stericsson/hardware/fm/FmReceiverService;->_fm_receiver_setRDS(Z)V

    .line 573
    :cond_1
    return-void
.end method

.method public startAsync(Lcom/stericsson/hardware/fm/FmBand;)V
    .locals 4
    .parameter "band"

    .prologue
    .line 576
    iget-object v0, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mContext:Landroid/content/Context;

    const-string v1, "com.stericsson.permission.FM_RADIO_RECEIVER"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 578
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires FM_RADIO_RECEIVER permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 581
    :cond_0
    invoke-virtual {p1}, Lcom/stericsson/hardware/fm/FmBand;->getMinFrequency()I

    move-result v0

    invoke-virtual {p1}, Lcom/stericsson/hardware/fm/FmBand;->getMaxFrequency()I

    move-result v1

    invoke-virtual {p1}, Lcom/stericsson/hardware/fm/FmBand;->getDefaultFrequency()I

    move-result v2

    invoke-virtual {p1}, Lcom/stericsson/hardware/fm/FmBand;->getChannelOffset()I

    move-result v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/stericsson/hardware/fm/FmReceiverService;->_fm_receiver_startAsync(IIII)V

    .line 583
    return-void
.end method

.method public startFullScan()V
    .locals 2

    .prologue
    .line 658
    iget-object v0, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mContext:Landroid/content/Context;

    const-string v1, "com.stericsson.permission.FM_RADIO_RECEIVER"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 660
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires FM_RADIO_RECEIVER permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 663
    :cond_0
    invoke-direct {p0}, Lcom/stericsson/hardware/fm/FmReceiverService;->_fm_receiver_startFullScan()V

    .line 664
    return-void
.end method

.method public stopScan()V
    .locals 2

    .prologue
    .line 667
    iget-object v0, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mContext:Landroid/content/Context;

    const-string v1, "com.stericsson.permission.FM_RADIO_RECEIVER"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 669
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires FM_RADIO_RECEIVER permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 672
    :cond_0
    invoke-direct {p0}, Lcom/stericsson/hardware/fm/FmReceiverService;->_fm_receiver_stopScan()V

    .line 673
    return-void
.end method

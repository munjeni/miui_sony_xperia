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
    .line 1298
    const-string v0, "fmradio"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 1299
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

    .line 557
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
    .line 1286
    iget-object v4, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnAutomaticSwitchReceivers:Ljava/util/HashMap;

    monitor-enter v4

    .line 1287
    :try_start_0
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnAutomaticSwitchReceivers:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 1288
    .local v0, c:Ljava/util/Collection;
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1289
    .local v1, iterator:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1290
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stericsson/hardware/fm/FmReceiverService$OnAutomaticSwitchReceiver;

    .line 1291
    .local v2, m:Lcom/stericsson/hardware/fm/FmReceiverService$OnAutomaticSwitchReceiver;
    invoke-virtual {v2, p1, p2}, Lcom/stericsson/hardware/fm/FmReceiverService$OnAutomaticSwitchReceiver;->callOnAutomaticSwitch(II)Z

    goto :goto_0

    .line 1293
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

    .line 1294
    return-void
.end method

.method private notifyOnError()V
    .locals 5

    .prologue
    .line 1231
    iget-object v4, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnErrorReceivers:Ljava/util/HashMap;

    monitor-enter v4

    .line 1232
    :try_start_0
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnErrorReceivers:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 1233
    .local v0, c:Ljava/util/Collection;
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1234
    .local v1, iterator:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1235
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stericsson/hardware/fm/FmReceiverService$OnErrorReceiver;

    .line 1236
    .local v2, m:Lcom/stericsson/hardware/fm/FmReceiverService$OnErrorReceiver;
    invoke-virtual {v2}, Lcom/stericsson/hardware/fm/FmReceiverService$OnErrorReceiver;->callOnError()Z

    goto :goto_0

    .line 1238
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

    .line 1239
    return-void
.end method

.method private notifyOnExtraCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 5
    .parameter "response"
    .parameter "extras"

    .prologue
    .line 1275
    iget-object v4, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnExtraCommandReceivers:Ljava/util/HashMap;

    monitor-enter v4

    .line 1276
    :try_start_0
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnExtraCommandReceivers:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 1277
    .local v0, c:Ljava/util/Collection;
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1278
    .local v1, iterator:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1279
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stericsson/hardware/fm/FmReceiverService$OnExtraCommandReceiver;

    .line 1280
    .local v2, m:Lcom/stericsson/hardware/fm/FmReceiverService$OnExtraCommandReceiver;
    invoke-virtual {v2, p1, p2}, Lcom/stericsson/hardware/fm/FmReceiverService$OnExtraCommandReceiver;->callOnExtraCommand(Ljava/lang/String;Landroid/os/Bundle;)Z

    goto :goto_0

    .line 1282
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

    .line 1283
    return-void
.end method

.method private notifyOnForcedPause()V
    .locals 5

    .prologue
    .line 1209
    iget-object v4, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnForcedPauseReceivers:Ljava/util/HashMap;

    monitor-enter v4

    .line 1210
    :try_start_0
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnForcedPauseReceivers:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 1211
    .local v0, c:Ljava/util/Collection;
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1212
    .local v1, iterator:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1213
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stericsson/hardware/fm/FmReceiverService$OnForcedPauseReceiver;

    .line 1214
    .local v2, m:Lcom/stericsson/hardware/fm/FmReceiverService$OnForcedPauseReceiver;
    invoke-virtual {v2}, Lcom/stericsson/hardware/fm/FmReceiverService$OnForcedPauseReceiver;->callOnForcedPause()Z

    goto :goto_0

    .line 1216
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

    .line 1217
    return-void
.end method

.method private notifyOnForcedReset(I)V
    .locals 5
    .parameter "reason"

    .prologue
    .line 1220
    iget-object v4, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnForcedResetReceivers:Ljava/util/HashMap;

    monitor-enter v4

    .line 1221
    :try_start_0
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnForcedResetReceivers:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 1222
    .local v0, c:Ljava/util/Collection;
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1223
    .local v1, iterator:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1224
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stericsson/hardware/fm/FmReceiverService$OnForcedResetReceiver;

    .line 1225
    .local v2, m:Lcom/stericsson/hardware/fm/FmReceiverService$OnForcedResetReceiver;
    invoke-virtual {v2, p1}, Lcom/stericsson/hardware/fm/FmReceiverService$OnForcedResetReceiver;->callOnForcedReset(I)Z

    goto :goto_0

    .line 1227
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

    .line 1228
    return-void
.end method

.method private notifyOnFullScan([I[IZ)V
    .locals 5
    .parameter "frequency"
    .parameter "signalLevel"
    .parameter "aborted"

    .prologue
    .line 1198
    iget-object v4, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnScanReceivers:Ljava/util/HashMap;

    monitor-enter v4

    .line 1199
    :try_start_0
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnScanReceivers:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 1200
    .local v0, c:Ljava/util/Collection;
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1201
    .local v1, iterator:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1202
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stericsson/hardware/fm/FmReceiverService$OnScanReceiver;

    .line 1203
    .local v2, m:Lcom/stericsson/hardware/fm/FmReceiverService$OnScanReceiver;
    invoke-virtual {v2, p1, p2, p3}, Lcom/stericsson/hardware/fm/FmReceiverService$OnScanReceiver;->callOnFullScan([I[IZ)Z

    goto :goto_0

    .line 1205
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

    .line 1206
    return-void
.end method

.method private notifyOnPlayingInStereo(Z)V
    .locals 5
    .parameter "inStereo"

    .prologue
    .line 1264
    iget-object v4, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnStereoReceivers:Ljava/util/HashMap;

    monitor-enter v4

    .line 1265
    :try_start_0
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnStereoReceivers:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 1266
    .local v0, c:Ljava/util/Collection;
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1267
    .local v1, iterator:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1268
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stericsson/hardware/fm/FmReceiverService$OnStereoReceiver;

    .line 1269
    .local v2, m:Lcom/stericsson/hardware/fm/FmReceiverService$OnStereoReceiver;
    invoke-virtual {v2, p1}, Lcom/stericsson/hardware/fm/FmReceiverService$OnStereoReceiver;->callOnPlayingInStereo(Z)Z

    goto :goto_0

    .line 1271
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

    .line 1272
    return-void
.end method

.method private notifyOnRDSDataFound(Landroid/os/Bundle;I)V
    .locals 5
    .parameter "bundle"
    .parameter "frequency"

    .prologue
    .line 1242
    iget-object v4, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnRDSDataReceivers:Ljava/util/HashMap;

    monitor-enter v4

    .line 1243
    :try_start_0
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnRDSDataReceivers:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 1244
    .local v0, c:Ljava/util/Collection;
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1245
    .local v1, iterator:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1246
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stericsson/hardware/fm/FmReceiverService$OnRDSDataReceiver;

    .line 1247
    .local v2, m:Lcom/stericsson/hardware/fm/FmReceiverService$OnRDSDataReceiver;
    invoke-virtual {v2, p1, p2}, Lcom/stericsson/hardware/fm/FmReceiverService$OnRDSDataReceiver;->callOnRDSDataFound(Landroid/os/Bundle;I)Z

    goto :goto_0

    .line 1249
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

    .line 1250
    return-void
.end method

.method private notifyOnScan(IIIZ)V
    .locals 5
    .parameter "frequency"
    .parameter "signalLevel"
    .parameter "scanDirection"
    .parameter "aborted"

    .prologue
    .line 1187
    iget-object v4, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnScanReceivers:Ljava/util/HashMap;

    monitor-enter v4

    .line 1188
    :try_start_0
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnScanReceivers:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 1189
    .local v0, c:Ljava/util/Collection;
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1190
    .local v1, iterator:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1191
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stericsson/hardware/fm/FmReceiverService$OnScanReceiver;

    .line 1192
    .local v2, m:Lcom/stericsson/hardware/fm/FmReceiverService$OnScanReceiver;
    invoke-virtual {v2, p1, p2, p3, p4}, Lcom/stericsson/hardware/fm/FmReceiverService$OnScanReceiver;->callOnScan(IIIZ)Z

    goto :goto_0

    .line 1194
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

    .line 1195
    return-void
.end method

.method private notifyOnSignalStrengthChanged(I)V
    .locals 5
    .parameter "signalStrength"

    .prologue
    .line 1253
    iget-object v4, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnSignalStrengthReceivers:Ljava/util/HashMap;

    monitor-enter v4

    .line 1254
    :try_start_0
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnSignalStrengthReceivers:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 1255
    .local v0, c:Ljava/util/Collection;
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1256
    .local v1, iterator:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1257
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stericsson/hardware/fm/FmReceiverService$OnSignalStrengthReceiver;

    .line 1258
    .local v2, m:Lcom/stericsson/hardware/fm/FmReceiverService$OnSignalStrengthReceiver;
    invoke-virtual {v2, p1}, Lcom/stericsson/hardware/fm/FmReceiverService$OnSignalStrengthReceiver;->callOnSignalStrengthChanged(I)Z

    goto :goto_0

    .line 1260
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

    .line 1261
    return-void
.end method

.method private notifyOnStarted()V
    .locals 6

    .prologue
    .line 1171
    iget-object v4, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnStartedReceivers:Ljava/util/HashMap;

    monitor-enter v4

    .line 1172
    :try_start_0
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnStartedReceivers:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 1173
    .local v0, c:Ljava/util/Collection;
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1174
    .local v1, iterator:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1175
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stericsson/hardware/fm/FmReceiverService$OnStartedReceiver;

    .line 1176
    .local v2, m:Lcom/stericsson/hardware/fm/FmReceiverService$OnStartedReceiver;
    invoke-virtual {v2}, Lcom/stericsson/hardware/fm/FmReceiverService$OnStartedReceiver;->callOnStarted()Z

    goto :goto_0

    .line 1183
    .end local v0           #c:Ljava/util/Collection;
    .end local v1           #iterator:Ljava/util/Iterator;
    .end local v2           #m:Lcom/stericsson/hardware/fm/FmReceiverService$OnStartedReceiver;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 1179
    .restart local v0       #c:Ljava/util/Collection;
    .restart local v1       #iterator:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnRDSDataReceivers:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 1180
    const-string v3, "FmReceiverService"

    const-string v5, "Started event with RDS receiver(s), switching on RDS"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1181
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/stericsson/hardware/fm/FmReceiverService;->_fm_receiver_setRDS(Z)V

    .line 1183
    :cond_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1184
    return-void
.end method

.method private notifyOnStateChanged(II)V
    .locals 5
    .parameter "oldState"
    .parameter "newState"

    .prologue
    .line 1160
    iget-object v4, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnStateChangedReceivers:Ljava/util/HashMap;

    monitor-enter v4

    .line 1161
    :try_start_0
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnStateChangedReceivers:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 1162
    .local v0, c:Ljava/util/Collection;
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1163
    .local v1, iterator:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1164
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stericsson/hardware/fm/FmReceiverService$OnStateChangedReceiver;

    .line 1165
    .local v2, m:Lcom/stericsson/hardware/fm/FmReceiverService$OnStateChangedReceiver;
    invoke-virtual {v2, p1, p2}, Lcom/stericsson/hardware/fm/FmReceiverService$OnStateChangedReceiver;->callOnStateChanged(II)Z

    goto :goto_0

    .line 1167
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

    .line 1168
    return-void
.end method


# virtual methods
.method public addOnAutomaticSwitchListener(Lcom/stericsson/hardware/fm/IOnAutomaticSwitchListener;)V
    .locals 5
    .parameter "listener"

    .prologue
    .line 1125
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mContext:Landroid/content/Context;

    const-string v4, "com.stericsson.permission.FM_RADIO_RECEIVER"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    .line 1127
    new-instance v3, Ljava/lang/SecurityException;

    const-string v4, "Requires FM_RADIO_RECEIVER permission"

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1130
    :cond_0
    invoke-interface {p1}, Lcom/stericsson/hardware/fm/IOnAutomaticSwitchListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 1131
    .local v0, binder:Landroid/os/IBinder;
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnAutomaticSwitchReceivers:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stericsson/hardware/fm/FmReceiverService$OnAutomaticSwitchReceiver;

    .line 1132
    .local v2, receiver:Lcom/stericsson/hardware/fm/FmReceiverService$OnAutomaticSwitchReceiver;
    if-nez v2, :cond_1

    .line 1133
    new-instance v2, Lcom/stericsson/hardware/fm/FmReceiverService$OnAutomaticSwitchReceiver;

    .end local v2           #receiver:Lcom/stericsson/hardware/fm/FmReceiverService$OnAutomaticSwitchReceiver;
    invoke-direct {v2, p0, p1}, Lcom/stericsson/hardware/fm/FmReceiverService$OnAutomaticSwitchReceiver;-><init>(Lcom/stericsson/hardware/fm/FmReceiverService;Lcom/stericsson/hardware/fm/IOnAutomaticSwitchListener;)V

    .line 1134
    .restart local v2       #receiver:Lcom/stericsson/hardware/fm/FmReceiverService$OnAutomaticSwitchReceiver;
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnAutomaticSwitchReceivers:Ljava/util/HashMap;

    invoke-virtual {v3, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1135
    const-string v3, "FmReceiverService"

    const-string v4, "addOnAutomaticSwitchListener(), new receiver added"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1137
    :try_start_0
    invoke-virtual {v2}, Lcom/stericsson/hardware/fm/FmReceiverService$OnAutomaticSwitchReceiver;->getListener()Lcom/stericsson/hardware/fm/IOnAutomaticSwitchListener;

    move-result-object v3

    invoke-interface {v3}, Lcom/stericsson/hardware/fm/IOnAutomaticSwitchListener;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v2, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1142
    :cond_1
    :goto_0
    return-void

    .line 1138
    :catch_0
    move-exception v1

    .line 1139
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
    .line 835
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mContext:Landroid/content/Context;

    const-string v4, "com.stericsson.permission.FM_RADIO_RECEIVER"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    .line 837
    new-instance v3, Ljava/lang/SecurityException;

    const-string v4, "Requires FM_RADIO_RECEIVER permission"

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 840
    :cond_0
    invoke-interface {p1}, Lcom/stericsson/hardware/fm/IOnErrorListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 841
    .local v0, binder:Landroid/os/IBinder;
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnErrorReceivers:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stericsson/hardware/fm/FmReceiverService$OnErrorReceiver;

    .line 842
    .local v2, receiver:Lcom/stericsson/hardware/fm/FmReceiverService$OnErrorReceiver;
    if-nez v2, :cond_1

    .line 843
    new-instance v2, Lcom/stericsson/hardware/fm/FmReceiverService$OnErrorReceiver;

    .end local v2           #receiver:Lcom/stericsson/hardware/fm/FmReceiverService$OnErrorReceiver;
    invoke-direct {v2, p0, p1}, Lcom/stericsson/hardware/fm/FmReceiverService$OnErrorReceiver;-><init>(Lcom/stericsson/hardware/fm/FmReceiverService;Lcom/stericsson/hardware/fm/IOnErrorListener;)V

    .line 844
    .restart local v2       #receiver:Lcom/stericsson/hardware/fm/FmReceiverService$OnErrorReceiver;
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnErrorReceivers:Ljava/util/HashMap;

    invoke-virtual {v3, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 845
    const-string v3, "FmReceiverService"

    const-string v4, "addOnErrorListener(), new receiver added"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 847
    :try_start_0
    invoke-virtual {v2}, Lcom/stericsson/hardware/fm/FmReceiverService$OnErrorReceiver;->getListener()Lcom/stericsson/hardware/fm/IOnErrorListener;

    move-result-object v3

    invoke-interface {v3}, Lcom/stericsson/hardware/fm/IOnErrorListener;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v2, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 852
    :cond_1
    :goto_0
    return-void

    .line 848
    :catch_0
    move-exception v1

    .line 849
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
    .line 1090
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mContext:Landroid/content/Context;

    const-string v4, "com.stericsson.permission.FM_RADIO_RECEIVER"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    .line 1092
    new-instance v3, Ljava/lang/SecurityException;

    const-string v4, "Requires FM_RADIO_RECEIVER permission"

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1095
    :cond_0
    invoke-interface {p1}, Lcom/stericsson/hardware/fm/IOnExtraCommandListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 1096
    .local v0, binder:Landroid/os/IBinder;
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnExtraCommandReceivers:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stericsson/hardware/fm/FmReceiverService$OnExtraCommandReceiver;

    .line 1097
    .local v2, receiver:Lcom/stericsson/hardware/fm/FmReceiverService$OnExtraCommandReceiver;
    if-nez v2, :cond_1

    .line 1098
    new-instance v2, Lcom/stericsson/hardware/fm/FmReceiverService$OnExtraCommandReceiver;

    .end local v2           #receiver:Lcom/stericsson/hardware/fm/FmReceiverService$OnExtraCommandReceiver;
    invoke-direct {v2, p0, p1}, Lcom/stericsson/hardware/fm/FmReceiverService$OnExtraCommandReceiver;-><init>(Lcom/stericsson/hardware/fm/FmReceiverService;Lcom/stericsson/hardware/fm/IOnExtraCommandListener;)V

    .line 1099
    .restart local v2       #receiver:Lcom/stericsson/hardware/fm/FmReceiverService$OnExtraCommandReceiver;
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnExtraCommandReceivers:Ljava/util/HashMap;

    invoke-virtual {v3, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1100
    const-string v3, "FmReceiverService"

    const-string v4, "addOnExtraCommandListener(), new receiver added"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1102
    :try_start_0
    invoke-virtual {v2}, Lcom/stericsson/hardware/fm/FmReceiverService$OnExtraCommandReceiver;->getListener()Lcom/stericsson/hardware/fm/IOnExtraCommandListener;

    move-result-object v3

    invoke-interface {v3}, Lcom/stericsson/hardware/fm/IOnExtraCommandListener;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v2, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1107
    :cond_1
    :goto_0
    return-void

    .line 1103
    :catch_0
    move-exception v1

    .line 1104
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
    .line 905
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mContext:Landroid/content/Context;

    const-string v4, "com.stericsson.permission.FM_RADIO_RECEIVER"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    .line 907
    new-instance v3, Ljava/lang/SecurityException;

    const-string v4, "Requires FM_RADIO_RECEIVER permission"

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 910
    :cond_0
    invoke-interface {p1}, Lcom/stericsson/hardware/fm/IOnForcedPauseListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 911
    .local v0, binder:Landroid/os/IBinder;
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnForcedPauseReceivers:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stericsson/hardware/fm/FmReceiverService$OnForcedPauseReceiver;

    .line 912
    .local v2, receiver:Lcom/stericsson/hardware/fm/FmReceiverService$OnForcedPauseReceiver;
    if-nez v2, :cond_1

    .line 913
    new-instance v2, Lcom/stericsson/hardware/fm/FmReceiverService$OnForcedPauseReceiver;

    .end local v2           #receiver:Lcom/stericsson/hardware/fm/FmReceiverService$OnForcedPauseReceiver;
    invoke-direct {v2, p0, p1}, Lcom/stericsson/hardware/fm/FmReceiverService$OnForcedPauseReceiver;-><init>(Lcom/stericsson/hardware/fm/FmReceiverService;Lcom/stericsson/hardware/fm/IOnForcedPauseListener;)V

    .line 914
    .restart local v2       #receiver:Lcom/stericsson/hardware/fm/FmReceiverService$OnForcedPauseReceiver;
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnForcedPauseReceivers:Ljava/util/HashMap;

    invoke-virtual {v3, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 915
    const-string v3, "FmReceiverService"

    const-string v4, "addOnForcedPauseListener(), new receiver added"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 917
    :try_start_0
    invoke-virtual {v2}, Lcom/stericsson/hardware/fm/FmReceiverService$OnForcedPauseReceiver;->getListener()Lcom/stericsson/hardware/fm/IOnForcedPauseListener;

    move-result-object v3

    invoke-interface {v3}, Lcom/stericsson/hardware/fm/IOnForcedPauseListener;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v2, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 922
    :cond_1
    :goto_0
    return-void

    .line 918
    :catch_0
    move-exception v1

    .line 919
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
    .line 940
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mContext:Landroid/content/Context;

    const-string v4, "com.stericsson.permission.FM_RADIO_RECEIVER"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    .line 942
    new-instance v3, Ljava/lang/SecurityException;

    const-string v4, "Requires FM_RADIO_RECEIVER permission"

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 945
    :cond_0
    invoke-interface {p1}, Lcom/stericsson/hardware/fm/IOnForcedResetListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 946
    .local v0, binder:Landroid/os/IBinder;
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnForcedResetReceivers:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stericsson/hardware/fm/FmReceiverService$OnForcedResetReceiver;

    .line 947
    .local v2, receiver:Lcom/stericsson/hardware/fm/FmReceiverService$OnForcedResetReceiver;
    if-nez v2, :cond_1

    .line 948
    new-instance v2, Lcom/stericsson/hardware/fm/FmReceiverService$OnForcedResetReceiver;

    .end local v2           #receiver:Lcom/stericsson/hardware/fm/FmReceiverService$OnForcedResetReceiver;
    invoke-direct {v2, p0, p1}, Lcom/stericsson/hardware/fm/FmReceiverService$OnForcedResetReceiver;-><init>(Lcom/stericsson/hardware/fm/FmReceiverService;Lcom/stericsson/hardware/fm/IOnForcedResetListener;)V

    .line 949
    .restart local v2       #receiver:Lcom/stericsson/hardware/fm/FmReceiverService$OnForcedResetReceiver;
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnForcedResetReceivers:Ljava/util/HashMap;

    invoke-virtual {v3, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 950
    const-string v3, "FmReceiverService"

    const-string v4, "addOnForcedResetListener(), new receiver added"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 952
    :try_start_0
    invoke-virtual {v2}, Lcom/stericsson/hardware/fm/FmReceiverService$OnForcedResetReceiver;->getListener()Lcom/stericsson/hardware/fm/IOnForcedResetListener;

    move-result-object v3

    invoke-interface {v3}, Lcom/stericsson/hardware/fm/IOnForcedResetListener;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v2, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 957
    :cond_1
    :goto_0
    return-void

    .line 953
    :catch_0
    move-exception v1

    .line 954
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
    .line 1055
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mContext:Landroid/content/Context;

    const-string v4, "com.stericsson.permission.FM_RADIO_RECEIVER"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    .line 1057
    new-instance v3, Ljava/lang/SecurityException;

    const-string v4, "Requires FM_RADIO_RECEIVER permission"

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1060
    :cond_0
    invoke-interface {p1}, Lcom/stericsson/hardware/fm/IOnStereoListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 1061
    .local v0, binder:Landroid/os/IBinder;
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnStereoReceivers:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stericsson/hardware/fm/FmReceiverService$OnStereoReceiver;

    .line 1062
    .local v2, receiver:Lcom/stericsson/hardware/fm/FmReceiverService$OnStereoReceiver;
    if-nez v2, :cond_1

    .line 1063
    new-instance v2, Lcom/stericsson/hardware/fm/FmReceiverService$OnStereoReceiver;

    .end local v2           #receiver:Lcom/stericsson/hardware/fm/FmReceiverService$OnStereoReceiver;
    invoke-direct {v2, p0, p1}, Lcom/stericsson/hardware/fm/FmReceiverService$OnStereoReceiver;-><init>(Lcom/stericsson/hardware/fm/FmReceiverService;Lcom/stericsson/hardware/fm/IOnStereoListener;)V

    .line 1064
    .restart local v2       #receiver:Lcom/stericsson/hardware/fm/FmReceiverService$OnStereoReceiver;
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnStereoReceivers:Ljava/util/HashMap;

    invoke-virtual {v3, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1065
    const-string v3, "FmReceiverService"

    const-string v4, "addOnPlayingInStereoListener(), new receiver added"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1067
    :try_start_0
    invoke-virtual {v2}, Lcom/stericsson/hardware/fm/FmReceiverService$OnStereoReceiver;->getListener()Lcom/stericsson/hardware/fm/IOnStereoListener;

    move-result-object v3

    invoke-interface {v3}, Lcom/stericsson/hardware/fm/IOnStereoListener;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v2, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1072
    :cond_1
    :goto_0
    return-void

    .line 1068
    :catch_0
    move-exception v1

    .line 1069
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

    .line 975
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mContext:Landroid/content/Context;

    const-string v4, "com.stericsson.permission.FM_RADIO_RECEIVER"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    .line 977
    new-instance v3, Ljava/lang/SecurityException;

    const-string v4, "Requires FM_RADIO_RECEIVER permission"

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 980
    :cond_0
    invoke-interface {p1}, Lcom/stericsson/hardware/fm/IOnRDSDataFoundListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 981
    .local v0, binder:Landroid/os/IBinder;
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnRDSDataReceivers:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stericsson/hardware/fm/FmReceiverService$OnRDSDataReceiver;

    .line 982
    .local v2, receiver:Lcom/stericsson/hardware/fm/FmReceiverService$OnRDSDataReceiver;
    if-nez v2, :cond_1

    .line 983
    new-instance v2, Lcom/stericsson/hardware/fm/FmReceiverService$OnRDSDataReceiver;

    .end local v2           #receiver:Lcom/stericsson/hardware/fm/FmReceiverService$OnRDSDataReceiver;
    invoke-direct {v2, p0, p1}, Lcom/stericsson/hardware/fm/FmReceiverService$OnRDSDataReceiver;-><init>(Lcom/stericsson/hardware/fm/FmReceiverService;Lcom/stericsson/hardware/fm/IOnRDSDataFoundListener;)V

    .line 984
    .restart local v2       #receiver:Lcom/stericsson/hardware/fm/FmReceiverService$OnRDSDataReceiver;
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnRDSDataReceivers:Ljava/util/HashMap;

    invoke-virtual {v3, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 985
    const-string v3, "FmReceiverService"

    const-string v4, "addOnRDSDataFoundListener(), new receiver added"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 987
    :try_start_0
    invoke-virtual {v2}, Lcom/stericsson/hardware/fm/FmReceiverService$OnRDSDataReceiver;->getListener()Lcom/stericsson/hardware/fm/IOnRDSDataFoundListener;

    move-result-object v3

    invoke-interface {v3}, Lcom/stericsson/hardware/fm/IOnRDSDataFoundListener;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v2, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 991
    :goto_0
    invoke-virtual {p0}, Lcom/stericsson/hardware/fm/FmReceiverService;->getState()I

    move-result v3

    const/4 v4, 0x2

    if-lt v3, v4, :cond_1

    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnRDSDataReceivers:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    if-ne v3, v5, :cond_1

    .line 993
    const-string v3, "FmReceiverService"

    const-string v4, "First RDS receiver added, switching on RDS"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 994
    invoke-direct {p0, v5}, Lcom/stericsson/hardware/fm/FmReceiverService;->_fm_receiver_setRDS(Z)V

    .line 997
    :cond_1
    return-void

    .line 988
    :catch_0
    move-exception v1

    .line 989
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
    .line 870
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mContext:Landroid/content/Context;

    const-string v4, "com.stericsson.permission.FM_RADIO_RECEIVER"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    .line 872
    new-instance v3, Ljava/lang/SecurityException;

    const-string v4, "Requires FM_RADIO_RECEIVER permission"

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 875
    :cond_0
    invoke-interface {p1}, Lcom/stericsson/hardware/fm/IOnScanListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 876
    .local v0, binder:Landroid/os/IBinder;
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnScanReceivers:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stericsson/hardware/fm/FmReceiverService$OnScanReceiver;

    .line 877
    .local v2, receiver:Lcom/stericsson/hardware/fm/FmReceiverService$OnScanReceiver;
    if-nez v2, :cond_1

    .line 878
    new-instance v2, Lcom/stericsson/hardware/fm/FmReceiverService$OnScanReceiver;

    .end local v2           #receiver:Lcom/stericsson/hardware/fm/FmReceiverService$OnScanReceiver;
    invoke-direct {v2, p0, p1}, Lcom/stericsson/hardware/fm/FmReceiverService$OnScanReceiver;-><init>(Lcom/stericsson/hardware/fm/FmReceiverService;Lcom/stericsson/hardware/fm/IOnScanListener;)V

    .line 879
    .restart local v2       #receiver:Lcom/stericsson/hardware/fm/FmReceiverService$OnScanReceiver;
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnScanReceivers:Ljava/util/HashMap;

    invoke-virtual {v3, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 880
    const-string v3, "FmReceiverService"

    const-string v4, "addOnScanListener(), new receiver added"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 882
    :try_start_0
    invoke-virtual {v2}, Lcom/stericsson/hardware/fm/FmReceiverService$OnScanReceiver;->getListener()Lcom/stericsson/hardware/fm/IOnScanListener;

    move-result-object v3

    invoke-interface {v3}, Lcom/stericsson/hardware/fm/IOnScanListener;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v2, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 887
    :cond_1
    :goto_0
    return-void

    .line 883
    :catch_0
    move-exception v1

    .line 884
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
    .line 1020
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mContext:Landroid/content/Context;

    const-string v4, "com.stericsson.permission.FM_RADIO_RECEIVER"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    .line 1022
    new-instance v3, Ljava/lang/SecurityException;

    const-string v4, "Requires FM_RADIO_RECEIVER permission"

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1025
    :cond_0
    invoke-interface {p1}, Lcom/stericsson/hardware/fm/IOnSignalStrengthListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 1026
    .local v0, binder:Landroid/os/IBinder;
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnSignalStrengthReceivers:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stericsson/hardware/fm/FmReceiverService$OnSignalStrengthReceiver;

    .line 1027
    .local v2, receiver:Lcom/stericsson/hardware/fm/FmReceiverService$OnSignalStrengthReceiver;
    if-nez v2, :cond_1

    .line 1028
    new-instance v2, Lcom/stericsson/hardware/fm/FmReceiverService$OnSignalStrengthReceiver;

    .end local v2           #receiver:Lcom/stericsson/hardware/fm/FmReceiverService$OnSignalStrengthReceiver;
    invoke-direct {v2, p0, p1}, Lcom/stericsson/hardware/fm/FmReceiverService$OnSignalStrengthReceiver;-><init>(Lcom/stericsson/hardware/fm/FmReceiverService;Lcom/stericsson/hardware/fm/IOnSignalStrengthListener;)V

    .line 1029
    .restart local v2       #receiver:Lcom/stericsson/hardware/fm/FmReceiverService$OnSignalStrengthReceiver;
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnSignalStrengthReceivers:Ljava/util/HashMap;

    invoke-virtual {v3, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1030
    const-string v3, "FmReceiverService"

    const-string v4, "addOnSignalStrengthChangedListener(), new receiver added"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1032
    :try_start_0
    invoke-virtual {v2}, Lcom/stericsson/hardware/fm/FmReceiverService$OnSignalStrengthReceiver;->getListener()Lcom/stericsson/hardware/fm/IOnSignalStrengthListener;

    move-result-object v3

    invoke-interface {v3}, Lcom/stericsson/hardware/fm/IOnSignalStrengthListener;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v2, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1037
    :cond_1
    :goto_0
    return-void

    .line 1033
    :catch_0
    move-exception v1

    .line 1034
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
    .line 800
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mContext:Landroid/content/Context;

    const-string v4, "com.stericsson.permission.FM_RADIO_RECEIVER"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    .line 802
    new-instance v3, Ljava/lang/SecurityException;

    const-string v4, "Requires FM_RADIO_RECEIVER permission"

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 805
    :cond_0
    invoke-interface {p1}, Lcom/stericsson/hardware/fm/IOnStartedListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 806
    .local v0, binder:Landroid/os/IBinder;
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnStartedReceivers:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stericsson/hardware/fm/FmReceiverService$OnStartedReceiver;

    .line 807
    .local v2, receiver:Lcom/stericsson/hardware/fm/FmReceiverService$OnStartedReceiver;
    if-nez v2, :cond_1

    .line 808
    new-instance v2, Lcom/stericsson/hardware/fm/FmReceiverService$OnStartedReceiver;

    .end local v2           #receiver:Lcom/stericsson/hardware/fm/FmReceiverService$OnStartedReceiver;
    invoke-direct {v2, p0, p1}, Lcom/stericsson/hardware/fm/FmReceiverService$OnStartedReceiver;-><init>(Lcom/stericsson/hardware/fm/FmReceiverService;Lcom/stericsson/hardware/fm/IOnStartedListener;)V

    .line 809
    .restart local v2       #receiver:Lcom/stericsson/hardware/fm/FmReceiverService$OnStartedReceiver;
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnStartedReceivers:Ljava/util/HashMap;

    invoke-virtual {v3, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 810
    const-string v3, "FmReceiverService"

    const-string v4, "addOnStartedListener(), new receiver added"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 812
    :try_start_0
    invoke-virtual {v2}, Lcom/stericsson/hardware/fm/FmReceiverService$OnStartedReceiver;->getListener()Lcom/stericsson/hardware/fm/IOnStartedListener;

    move-result-object v3

    invoke-interface {v3}, Lcom/stericsson/hardware/fm/IOnStartedListener;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v2, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 817
    :cond_1
    :goto_0
    return-void

    .line 813
    :catch_0
    move-exception v1

    .line 814
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
    .line 765
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mContext:Landroid/content/Context;

    const-string v4, "com.stericsson.permission.FM_RADIO_RECEIVER"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    .line 767
    new-instance v3, Ljava/lang/SecurityException;

    const-string v4, "Requires FM_RADIO_RECEIVER permission"

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 770
    :cond_0
    invoke-interface {p1}, Lcom/stericsson/hardware/fm/IOnStateChangedListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 771
    .local v0, binder:Landroid/os/IBinder;
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnStateChangedReceivers:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stericsson/hardware/fm/FmReceiverService$OnStateChangedReceiver;

    .line 772
    .local v2, receiver:Lcom/stericsson/hardware/fm/FmReceiverService$OnStateChangedReceiver;
    if-nez v2, :cond_1

    .line 773
    new-instance v2, Lcom/stericsson/hardware/fm/FmReceiverService$OnStateChangedReceiver;

    .end local v2           #receiver:Lcom/stericsson/hardware/fm/FmReceiverService$OnStateChangedReceiver;
    invoke-direct {v2, p0, p1}, Lcom/stericsson/hardware/fm/FmReceiverService$OnStateChangedReceiver;-><init>(Lcom/stericsson/hardware/fm/FmReceiverService;Lcom/stericsson/hardware/fm/IOnStateChangedListener;)V

    .line 774
    .restart local v2       #receiver:Lcom/stericsson/hardware/fm/FmReceiverService$OnStateChangedReceiver;
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnStateChangedReceivers:Ljava/util/HashMap;

    invoke-virtual {v3, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 775
    const-string v3, "FmReceiverService"

    const-string v4, "addOnStateChangedListener(), new receiver added"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 777
    :try_start_0
    invoke-virtual {v2}, Lcom/stericsson/hardware/fm/FmReceiverService$OnStateChangedReceiver;->getListener()Lcom/stericsson/hardware/fm/IOnStateChangedListener;

    move-result-object v3

    invoke-interface {v3}, Lcom/stericsson/hardware/fm/IOnStateChangedListener;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v2, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 782
    :cond_1
    :goto_0
    return-void

    .line 778
    :catch_0
    move-exception v1

    .line 779
    .local v1, ex:Landroid/os/RemoteException;
    const-string v3, "FmReceiverService"

    const-string v4, "linkToDeath failed:"

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getFrequency()I
    .locals 2

    .prologue
    .line 630
    iget-object v0, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mContext:Landroid/content/Context;

    const-string v1, "com.stericsson.permission.FM_RADIO_RECEIVER"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 632
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires FM_RADIO_RECEIVER permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 635
    :cond_0
    invoke-direct {p0}, Lcom/stericsson/hardware/fm/FmReceiverService;->_fm_receiver_getFrequency()I

    move-result v0

    return v0
.end method

.method public getSignalStrength()I
    .locals 2

    .prologue
    .line 711
    iget-object v0, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mContext:Landroid/content/Context;

    const-string v1, "com.stericsson.permission.FM_RADIO_RECEIVER"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 713
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires FM_RADIO_RECEIVER permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 716
    :cond_0
    invoke-direct {p0}, Lcom/stericsson/hardware/fm/FmReceiverService;->_fm_receiver_getSignalStrength()I

    move-result v0

    return v0
.end method

.method public getState()I
    .locals 2

    .prologue
    .line 612
    iget-object v0, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mContext:Landroid/content/Context;

    const-string v1, "com.stericsson.permission.FM_RADIO_RECEIVER"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 614
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires FM_RADIO_RECEIVER permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 617
    :cond_0
    invoke-direct {p0}, Lcom/stericsson/hardware/fm/FmReceiverService;->_fm_receiver_getState()I

    move-result v0

    return v0
.end method

.method public getThreshold()I
    .locals 2

    .prologue
    .line 702
    iget-object v0, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mContext:Landroid/content/Context;

    const-string v1, "com.stericsson.permission.FM_RADIO_RECEIVER"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 704
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires FM_RADIO_RECEIVER permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 707
    :cond_0
    invoke-direct {p0}, Lcom/stericsson/hardware/fm/FmReceiverService;->_fm_receiver_getThreshold()I

    move-result v0

    return v0
.end method

.method public isPlayingInStereo()Z
    .locals 2

    .prologue
    .line 720
    iget-object v0, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mContext:Landroid/content/Context;

    const-string v1, "com.stericsson.permission.FM_RADIO_RECEIVER"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 722
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires FM_RADIO_RECEIVER permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 725
    :cond_0
    invoke-direct {p0}, Lcom/stericsson/hardware/fm/FmReceiverService;->_fm_receiver_isPlayingInStereo()Z

    move-result v0

    return v0
.end method

.method public isRDSDataSupported()Z
    .locals 2

    .prologue
    .line 675
    iget-object v0, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mContext:Landroid/content/Context;

    const-string v1, "com.stericsson.permission.FM_RADIO_RECEIVER"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 677
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires FM_RADIO_RECEIVER permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 680
    :cond_0
    invoke-direct {p0}, Lcom/stericsson/hardware/fm/FmReceiverService;->_fm_receiver_isRDSDataSupported()Z

    move-result v0

    return v0
.end method

.method public isTunedToValidChannel()Z
    .locals 2

    .prologue
    .line 684
    iget-object v0, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mContext:Landroid/content/Context;

    const-string v1, "com.stericsson.permission.FM_RADIO_RECEIVER"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 686
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires FM_RADIO_RECEIVER permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 689
    :cond_0
    invoke-direct {p0}, Lcom/stericsson/hardware/fm/FmReceiverService;->_fm_receiver_isTunedToValidChannel()Z

    move-result v0

    return v0
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 594
    iget-object v0, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mContext:Landroid/content/Context;

    const-string v1, "com.stericsson.permission.FM_RADIO_RECEIVER"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 596
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires FM_RADIO_RECEIVER permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 599
    :cond_0
    invoke-direct {p0}, Lcom/stericsson/hardware/fm/FmReceiverService;->_fm_receiver_pause()V

    .line 600
    return-void
.end method

.method public removeOnAutomaticSwitchListener(Lcom/stericsson/hardware/fm/IOnAutomaticSwitchListener;)V
    .locals 4
    .parameter "listener"

    .prologue
    .line 1145
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mContext:Landroid/content/Context;

    const-string v3, "com.stericsson.permission.FM_RADIO_RECEIVER"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 1147
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Requires FM_RADIO_RECEIVER permission"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1150
    :cond_0
    invoke-interface {p1}, Lcom/stericsson/hardware/fm/IOnAutomaticSwitchListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 1151
    .local v0, binder:Landroid/os/IBinder;
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnAutomaticSwitchReceivers:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stericsson/hardware/fm/FmReceiverService$OnAutomaticSwitchReceiver;

    .line 1152
    .local v1, receiver:Lcom/stericsson/hardware/fm/FmReceiverService$OnAutomaticSwitchReceiver;
    if-eqz v1, :cond_1

    .line 1153
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnAutomaticSwitchReceivers:Ljava/util/HashMap;

    iget-object v3, v1, Lcom/stericsson/hardware/fm/FmReceiverService$OnAutomaticSwitchReceiver;->mKey:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1154
    const-string v2, "FmReceiverService"

    const-string/jumbo v3, "removeOnAutomaticSwitchListener(), receiver removed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1155
    invoke-virtual {v1}, Lcom/stericsson/hardware/fm/FmReceiverService$OnAutomaticSwitchReceiver;->getListener()Lcom/stericsson/hardware/fm/IOnAutomaticSwitchListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/stericsson/hardware/fm/IOnAutomaticSwitchListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 1157
    :cond_1
    return-void
.end method

.method public removeOnErrorListener(Lcom/stericsson/hardware/fm/IOnErrorListener;)V
    .locals 4
    .parameter "listener"

    .prologue
    .line 855
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mContext:Landroid/content/Context;

    const-string v3, "com.stericsson.permission.FM_RADIO_RECEIVER"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 857
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Requires FM_RADIO_RECEIVER permission"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 860
    :cond_0
    invoke-interface {p1}, Lcom/stericsson/hardware/fm/IOnErrorListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 861
    .local v0, binder:Landroid/os/IBinder;
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnErrorReceivers:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stericsson/hardware/fm/FmReceiverService$OnErrorReceiver;

    .line 862
    .local v1, receiver:Lcom/stericsson/hardware/fm/FmReceiverService$OnErrorReceiver;
    if-eqz v1, :cond_1

    .line 863
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnErrorReceivers:Ljava/util/HashMap;

    iget-object v3, v1, Lcom/stericsson/hardware/fm/FmReceiverService$OnErrorReceiver;->mKey:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 864
    const-string v2, "FmReceiverService"

    const-string/jumbo v3, "removeOnErrorListener(), receiver removed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 865
    invoke-virtual {v1}, Lcom/stericsson/hardware/fm/FmReceiverService$OnErrorReceiver;->getListener()Lcom/stericsson/hardware/fm/IOnErrorListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/stericsson/hardware/fm/IOnErrorListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 867
    :cond_1
    return-void
.end method

.method public removeOnExtraCommandListener(Lcom/stericsson/hardware/fm/IOnExtraCommandListener;)V
    .locals 4
    .parameter "listener"

    .prologue
    .line 1110
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mContext:Landroid/content/Context;

    const-string v3, "com.stericsson.permission.FM_RADIO_RECEIVER"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 1112
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Requires FM_RADIO_RECEIVER permission"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1115
    :cond_0
    invoke-interface {p1}, Lcom/stericsson/hardware/fm/IOnExtraCommandListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 1116
    .local v0, binder:Landroid/os/IBinder;
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnExtraCommandReceivers:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stericsson/hardware/fm/FmReceiverService$OnExtraCommandReceiver;

    .line 1117
    .local v1, receiver:Lcom/stericsson/hardware/fm/FmReceiverService$OnExtraCommandReceiver;
    if-eqz v1, :cond_1

    .line 1118
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnExtraCommandReceivers:Ljava/util/HashMap;

    iget-object v3, v1, Lcom/stericsson/hardware/fm/FmReceiverService$OnExtraCommandReceiver;->mKey:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1119
    const-string v2, "FmReceiverService"

    const-string/jumbo v3, "removeOnExtraCommandListener(), receiver removed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1120
    invoke-virtual {v1}, Lcom/stericsson/hardware/fm/FmReceiverService$OnExtraCommandReceiver;->getListener()Lcom/stericsson/hardware/fm/IOnExtraCommandListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/stericsson/hardware/fm/IOnExtraCommandListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 1122
    :cond_1
    return-void
.end method

.method public removeOnForcedPauseListener(Lcom/stericsson/hardware/fm/IOnForcedPauseListener;)V
    .locals 4
    .parameter "listener"

    .prologue
    .line 925
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mContext:Landroid/content/Context;

    const-string v3, "com.stericsson.permission.FM_RADIO_RECEIVER"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 927
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Requires FM_RADIO_RECEIVER permission"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 930
    :cond_0
    invoke-interface {p1}, Lcom/stericsson/hardware/fm/IOnForcedPauseListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 931
    .local v0, binder:Landroid/os/IBinder;
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnForcedPauseReceivers:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stericsson/hardware/fm/FmReceiverService$OnForcedPauseReceiver;

    .line 932
    .local v1, receiver:Lcom/stericsson/hardware/fm/FmReceiverService$OnForcedPauseReceiver;
    if-eqz v1, :cond_1

    .line 933
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnForcedPauseReceivers:Ljava/util/HashMap;

    iget-object v3, v1, Lcom/stericsson/hardware/fm/FmReceiverService$OnForcedPauseReceiver;->mKey:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 934
    const-string v2, "FmReceiverService"

    const-string/jumbo v3, "removeOnForcedPauseListener(), receiver removed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 935
    invoke-virtual {v1}, Lcom/stericsson/hardware/fm/FmReceiverService$OnForcedPauseReceiver;->getListener()Lcom/stericsson/hardware/fm/IOnForcedPauseListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/stericsson/hardware/fm/IOnForcedPauseListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 937
    :cond_1
    return-void
.end method

.method public removeOnForcedResetListener(Lcom/stericsson/hardware/fm/IOnForcedResetListener;)V
    .locals 4
    .parameter "listener"

    .prologue
    .line 960
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mContext:Landroid/content/Context;

    const-string v3, "com.stericsson.permission.FM_RADIO_RECEIVER"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 962
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Requires FM_RADIO_RECEIVER permission"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 965
    :cond_0
    invoke-interface {p1}, Lcom/stericsson/hardware/fm/IOnForcedResetListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 966
    .local v0, binder:Landroid/os/IBinder;
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnForcedResetReceivers:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stericsson/hardware/fm/FmReceiverService$OnForcedResetReceiver;

    .line 967
    .local v1, receiver:Lcom/stericsson/hardware/fm/FmReceiverService$OnForcedResetReceiver;
    if-eqz v1, :cond_1

    .line 968
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnForcedResetReceivers:Ljava/util/HashMap;

    iget-object v3, v1, Lcom/stericsson/hardware/fm/FmReceiverService$OnForcedResetReceiver;->mKey:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 969
    const-string v2, "FmReceiverService"

    const-string/jumbo v3, "removeOnForcedResetListener(), receiver removed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 970
    invoke-virtual {v1}, Lcom/stericsson/hardware/fm/FmReceiverService$OnForcedResetReceiver;->getListener()Lcom/stericsson/hardware/fm/IOnForcedResetListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/stericsson/hardware/fm/IOnForcedResetListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 972
    :cond_1
    return-void
.end method

.method public removeOnPlayingInStereoListener(Lcom/stericsson/hardware/fm/IOnStereoListener;)V
    .locals 4
    .parameter "listener"

    .prologue
    .line 1075
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mContext:Landroid/content/Context;

    const-string v3, "com.stericsson.permission.FM_RADIO_RECEIVER"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 1077
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Requires FM_RADIO_RECEIVER permission"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1080
    :cond_0
    invoke-interface {p1}, Lcom/stericsson/hardware/fm/IOnStereoListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 1081
    .local v0, binder:Landroid/os/IBinder;
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnStereoReceivers:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stericsson/hardware/fm/FmReceiverService$OnStereoReceiver;

    .line 1082
    .local v1, receiver:Lcom/stericsson/hardware/fm/FmReceiverService$OnStereoReceiver;
    if-eqz v1, :cond_1

    .line 1083
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnStereoReceivers:Ljava/util/HashMap;

    iget-object v3, v1, Lcom/stericsson/hardware/fm/FmReceiverService$OnStereoReceiver;->mKey:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1084
    const-string v2, "FmReceiverService"

    const-string/jumbo v3, "removeOnPlayingInStereoListener(), receiver removed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1085
    invoke-virtual {v1}, Lcom/stericsson/hardware/fm/FmReceiverService$OnStereoReceiver;->getListener()Lcom/stericsson/hardware/fm/IOnStereoListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/stericsson/hardware/fm/IOnStereoListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 1087
    :cond_1
    return-void
.end method

.method public removeOnRDSDataFoundListener(Lcom/stericsson/hardware/fm/IOnRDSDataFoundListener;)V
    .locals 5
    .parameter "listener"

    .prologue
    const/4 v4, 0x0

    .line 1000
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mContext:Landroid/content/Context;

    const-string v3, "com.stericsson.permission.FM_RADIO_RECEIVER"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 1002
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Requires FM_RADIO_RECEIVER permission"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1005
    :cond_0
    invoke-interface {p1}, Lcom/stericsson/hardware/fm/IOnRDSDataFoundListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 1006
    .local v0, binder:Landroid/os/IBinder;
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnRDSDataReceivers:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stericsson/hardware/fm/FmReceiverService$OnRDSDataReceiver;

    .line 1007
    .local v1, receiver:Lcom/stericsson/hardware/fm/FmReceiverService$OnRDSDataReceiver;
    if-eqz v1, :cond_1

    .line 1008
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnRDSDataReceivers:Ljava/util/HashMap;

    iget-object v3, v1, Lcom/stericsson/hardware/fm/FmReceiverService$OnRDSDataReceiver;->mKey:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1009
    const-string v2, "FmReceiverService"

    const-string/jumbo v3, "removeOnRDSDataFoundListener(), receiver removed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1010
    invoke-virtual {v1}, Lcom/stericsson/hardware/fm/FmReceiverService$OnRDSDataReceiver;->getListener()Lcom/stericsson/hardware/fm/IOnRDSDataFoundListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/stericsson/hardware/fm/IOnRDSDataFoundListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v2, v1, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 1011
    invoke-virtual {p0}, Lcom/stericsson/hardware/fm/FmReceiverService;->getState()I

    move-result v2

    const/4 v3, 0x2

    if-lt v2, v3, :cond_1

    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnRDSDataReceivers:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1013
    const-string v2, "FmReceiverService"

    const-string v3, "Last RDS receiver removed, switching off RDS"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1014
    invoke-direct {p0, v4}, Lcom/stericsson/hardware/fm/FmReceiverService;->_fm_receiver_setRDS(Z)V

    .line 1017
    :cond_1
    return-void
.end method

.method public removeOnScanListener(Lcom/stericsson/hardware/fm/IOnScanListener;)V
    .locals 4
    .parameter "listener"

    .prologue
    .line 890
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mContext:Landroid/content/Context;

    const-string v3, "com.stericsson.permission.FM_RADIO_RECEIVER"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 892
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Requires FM_RADIO_RECEIVER permission"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 895
    :cond_0
    invoke-interface {p1}, Lcom/stericsson/hardware/fm/IOnScanListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 896
    .local v0, binder:Landroid/os/IBinder;
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnScanReceivers:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stericsson/hardware/fm/FmReceiverService$OnScanReceiver;

    .line 897
    .local v1, receiver:Lcom/stericsson/hardware/fm/FmReceiverService$OnScanReceiver;
    if-eqz v1, :cond_1

    .line 898
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnScanReceivers:Ljava/util/HashMap;

    iget-object v3, v1, Lcom/stericsson/hardware/fm/FmReceiverService$OnScanReceiver;->mKey:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 899
    const-string v2, "FmReceiverService"

    const-string/jumbo v3, "removeOnScanListener(), receiver removed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 900
    invoke-virtual {v1}, Lcom/stericsson/hardware/fm/FmReceiverService$OnScanReceiver;->getListener()Lcom/stericsson/hardware/fm/IOnScanListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/stericsson/hardware/fm/IOnScanListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 902
    :cond_1
    return-void
.end method

.method public removeOnSignalStrengthChangedListener(Lcom/stericsson/hardware/fm/IOnSignalStrengthListener;)V
    .locals 4
    .parameter "listener"

    .prologue
    .line 1040
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mContext:Landroid/content/Context;

    const-string v3, "com.stericsson.permission.FM_RADIO_RECEIVER"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 1042
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Requires FM_RADIO_RECEIVER permission"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1045
    :cond_0
    invoke-interface {p1}, Lcom/stericsson/hardware/fm/IOnSignalStrengthListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 1046
    .local v0, binder:Landroid/os/IBinder;
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnSignalStrengthReceivers:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stericsson/hardware/fm/FmReceiverService$OnSignalStrengthReceiver;

    .line 1047
    .local v1, receiver:Lcom/stericsson/hardware/fm/FmReceiverService$OnSignalStrengthReceiver;
    if-eqz v1, :cond_1

    .line 1048
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnSignalStrengthReceivers:Ljava/util/HashMap;

    iget-object v3, v1, Lcom/stericsson/hardware/fm/FmReceiverService$OnSignalStrengthReceiver;->mKey:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1049
    const-string v2, "FmReceiverService"

    const-string/jumbo v3, "removeOnSignalStrengthChangedListener(), receiver removed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1050
    invoke-virtual {v1}, Lcom/stericsson/hardware/fm/FmReceiverService$OnSignalStrengthReceiver;->getListener()Lcom/stericsson/hardware/fm/IOnSignalStrengthListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/stericsson/hardware/fm/IOnSignalStrengthListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 1052
    :cond_1
    return-void
.end method

.method public removeOnStartedListener(Lcom/stericsson/hardware/fm/IOnStartedListener;)V
    .locals 4
    .parameter "listener"

    .prologue
    .line 820
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mContext:Landroid/content/Context;

    const-string v3, "com.stericsson.permission.FM_RADIO_RECEIVER"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 822
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Requires FM_RADIO_RECEIVER permission"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 825
    :cond_0
    invoke-interface {p1}, Lcom/stericsson/hardware/fm/IOnStartedListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 826
    .local v0, binder:Landroid/os/IBinder;
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnStartedReceivers:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stericsson/hardware/fm/FmReceiverService$OnStartedReceiver;

    .line 827
    .local v1, receiver:Lcom/stericsson/hardware/fm/FmReceiverService$OnStartedReceiver;
    if-eqz v1, :cond_1

    .line 828
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnStartedReceivers:Ljava/util/HashMap;

    iget-object v3, v1, Lcom/stericsson/hardware/fm/FmReceiverService$OnStartedReceiver;->mKey:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 829
    const-string v2, "FmReceiverService"

    const-string/jumbo v3, "removeOnStartedListener(), receiver removed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 830
    invoke-virtual {v1}, Lcom/stericsson/hardware/fm/FmReceiverService$OnStartedReceiver;->getListener()Lcom/stericsson/hardware/fm/IOnStartedListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/stericsson/hardware/fm/IOnStartedListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 832
    :cond_1
    return-void
.end method

.method public removeOnStateChangedListener(Lcom/stericsson/hardware/fm/IOnStateChangedListener;)V
    .locals 4
    .parameter "listener"

    .prologue
    .line 785
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mContext:Landroid/content/Context;

    const-string v3, "com.stericsson.permission.FM_RADIO_RECEIVER"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 787
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Requires FM_RADIO_RECEIVER permission"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 790
    :cond_0
    invoke-interface {p1}, Lcom/stericsson/hardware/fm/IOnStateChangedListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 791
    .local v0, binder:Landroid/os/IBinder;
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnStateChangedReceivers:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stericsson/hardware/fm/FmReceiverService$OnStateChangedReceiver;

    .line 792
    .local v1, receiver:Lcom/stericsson/hardware/fm/FmReceiverService$OnStateChangedReceiver;
    if-eqz v1, :cond_1

    .line 793
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnStateChangedReceivers:Ljava/util/HashMap;

    iget-object v3, v1, Lcom/stericsson/hardware/fm/FmReceiverService$OnStateChangedReceiver;->mKey:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 794
    const-string v2, "FmReceiverService"

    const-string/jumbo v3, "removeOnStateChangedListener(), receiver removed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 795
    invoke-virtual {v1}, Lcom/stericsson/hardware/fm/FmReceiverService$OnStateChangedReceiver;->getListener()Lcom/stericsson/hardware/fm/IOnStateChangedListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/stericsson/hardware/fm/IOnStateChangedListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 797
    :cond_1
    return-void
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 585
    iget-object v0, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mContext:Landroid/content/Context;

    const-string v1, "com.stericsson.permission.FM_RADIO_RECEIVER"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 587
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires FM_RADIO_RECEIVER permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 590
    :cond_0
    invoke-direct {p0}, Lcom/stericsson/hardware/fm/FmReceiverService;->_fm_receiver_reset()I

    .line 591
    return-void
.end method

.method public resume()V
    .locals 2

    .prologue
    .line 603
    iget-object v0, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mContext:Landroid/content/Context;

    const-string v1, "com.stericsson.permission.FM_RADIO_RECEIVER"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 605
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires FM_RADIO_RECEIVER permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 608
    :cond_0
    invoke-direct {p0}, Lcom/stericsson/hardware/fm/FmReceiverService;->_fm_receiver_resume()V

    .line 609
    return-void
.end method

.method public scanDown()V
    .locals 2

    .prologue
    .line 648
    iget-object v0, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mContext:Landroid/content/Context;

    const-string v1, "com.stericsson.permission.FM_RADIO_RECEIVER"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 650
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires FM_RADIO_RECEIVER permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 653
    :cond_0
    invoke-direct {p0}, Lcom/stericsson/hardware/fm/FmReceiverService;->_fm_receiver_scanDown()V

    .line 654
    return-void
.end method

.method public scanUp()V
    .locals 2

    .prologue
    .line 639
    iget-object v0, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mContext:Landroid/content/Context;

    const-string v1, "com.stericsson.permission.FM_RADIO_RECEIVER"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 641
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires FM_RADIO_RECEIVER permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 644
    :cond_0
    invoke-direct {p0}, Lcom/stericsson/hardware/fm/FmReceiverService;->_fm_receiver_scanUp()V

    .line 645
    return-void
.end method

.method public sendExtraCommand(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 2
    .parameter "command"
    .parameter "extras"

    .prologue
    .line 756
    iget-object v0, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mContext:Landroid/content/Context;

    const-string v1, "com.stericsson.permission.FM_RADIO_RECEIVER"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 758
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires FM_RADIO_RECEIVER permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 761
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/stericsson/hardware/fm/FmReceiverService;->_fm_receiver_sendExtraCommand(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setAutomaticAFSwitching(Z)V
    .locals 2
    .parameter "automatic"

    .prologue
    .line 738
    iget-object v0, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mContext:Landroid/content/Context;

    const-string v1, "com.stericsson.permission.FM_RADIO_RECEIVER"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 740
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires FM_RADIO_RECEIVER permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 743
    :cond_0
    invoke-direct {p0, p1}, Lcom/stericsson/hardware/fm/FmReceiverService;->_fm_receiver_setAutomaticAFSwitching(Z)V

    .line 744
    return-void
.end method

.method public setAutomaticTASwitching(Z)V
    .locals 2
    .parameter "automatic"

    .prologue
    .line 747
    iget-object v0, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mContext:Landroid/content/Context;

    const-string v1, "com.stericsson.permission.FM_RADIO_RECEIVER"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 749
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires FM_RADIO_RECEIVER permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 752
    :cond_0
    invoke-direct {p0, p1}, Lcom/stericsson/hardware/fm/FmReceiverService;->_fm_receiver_setAutomaticTASwitching(Z)V

    .line 753
    return-void
.end method

.method public setForceMono(Z)V
    .locals 2
    .parameter "forceMono"

    .prologue
    .line 729
    iget-object v0, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mContext:Landroid/content/Context;

    const-string v1, "com.stericsson.permission.FM_RADIO_RECEIVER"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 731
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires FM_RADIO_RECEIVER permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 734
    :cond_0
    invoke-direct {p0, p1}, Lcom/stericsson/hardware/fm/FmReceiverService;->_fm_receiver_setForceMono(Z)V

    .line 735
    return-void
.end method

.method public setFrequency(I)V
    .locals 2
    .parameter "frequency"

    .prologue
    .line 621
    iget-object v0, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mContext:Landroid/content/Context;

    const-string v1, "com.stericsson.permission.FM_RADIO_RECEIVER"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 623
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires FM_RADIO_RECEIVER permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 626
    :cond_0
    invoke-direct {p0, p1}, Lcom/stericsson/hardware/fm/FmReceiverService;->_fm_receiver_setFrequency(I)V

    .line 627
    return-void
.end method

.method public setThreshold(I)V
    .locals 2
    .parameter "threshold"

    .prologue
    .line 693
    iget-object v0, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mContext:Landroid/content/Context;

    const-string v1, "com.stericsson.permission.FM_RADIO_RECEIVER"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 695
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires FM_RADIO_RECEIVER permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 698
    :cond_0
    invoke-direct {p0, p1}, Lcom/stericsson/hardware/fm/FmReceiverService;->_fm_receiver_setThreshold(I)V

    .line 699
    return-void
.end method

.method public start(Lcom/stericsson/hardware/fm/FmBand;)V
    .locals 4
    .parameter "band"

    .prologue
    .line 560
    iget-object v0, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mContext:Landroid/content/Context;

    const-string v1, "com.stericsson.permission.FM_RADIO_RECEIVER"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 562
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires FM_RADIO_RECEIVER permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 565
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

    .line 568
    iget-object v0, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mOnRDSDataReceivers:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 569
    const-string v0, "FmReceiverService"

    const-string v1, "Started with RDS receiver(s), switching on RDS"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/stericsson/hardware/fm/FmReceiverService;->_fm_receiver_setRDS(Z)V

    .line 572
    :cond_1
    return-void
.end method

.method public startAsync(Lcom/stericsson/hardware/fm/FmBand;)V
    .locals 4
    .parameter "band"

    .prologue
    .line 575
    iget-object v0, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mContext:Landroid/content/Context;

    const-string v1, "com.stericsson.permission.FM_RADIO_RECEIVER"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 577
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires FM_RADIO_RECEIVER permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 580
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

    .line 582
    return-void
.end method

.method public startFullScan()V
    .locals 2

    .prologue
    .line 657
    iget-object v0, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mContext:Landroid/content/Context;

    const-string v1, "com.stericsson.permission.FM_RADIO_RECEIVER"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 659
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires FM_RADIO_RECEIVER permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 662
    :cond_0
    invoke-direct {p0}, Lcom/stericsson/hardware/fm/FmReceiverService;->_fm_receiver_startFullScan()V

    .line 663
    return-void
.end method

.method public stopScan()V
    .locals 2

    .prologue
    .line 666
    iget-object v0, p0, Lcom/stericsson/hardware/fm/FmReceiverService;->mContext:Landroid/content/Context;

    const-string v1, "com.stericsson.permission.FM_RADIO_RECEIVER"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 668
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires FM_RADIO_RECEIVER permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 671
    :cond_0
    invoke-direct {p0}, Lcom/stericsson/hardware/fm/FmReceiverService;->_fm_receiver_stopScan()V

    .line 672
    return-void
.end method

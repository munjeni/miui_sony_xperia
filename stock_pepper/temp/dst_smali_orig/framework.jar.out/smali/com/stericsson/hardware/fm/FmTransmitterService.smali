.class public Lcom/stericsson/hardware/fm/FmTransmitterService;
.super Lcom/stericsson/hardware/fm/IFmTransmitter$Stub;
.source "FmTransmitterService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stericsson/hardware/fm/FmTransmitterService$OnExtraCommandReceiver;,
        Lcom/stericsson/hardware/fm/FmTransmitterService$OnForcedResetReceiver;,
        Lcom/stericsson/hardware/fm/FmTransmitterService$OnForcedPauseReceiver;,
        Lcom/stericsson/hardware/fm/FmTransmitterService$OnBlockScanReceiver;,
        Lcom/stericsson/hardware/fm/FmTransmitterService$OnErrorReceiver;,
        Lcom/stericsson/hardware/fm/FmTransmitterService$OnStartedReceiver;,
        Lcom/stericsson/hardware/fm/FmTransmitterService$OnStateChangedReceiver;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FmTransmitterService"


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mOnBlockScanReceivers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Object;",
            "Lcom/stericsson/hardware/fm/FmTransmitterService$OnBlockScanReceiver;",
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
            "Lcom/stericsson/hardware/fm/FmTransmitterService$OnErrorReceiver;",
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
            "Lcom/stericsson/hardware/fm/FmTransmitterService$OnExtraCommandReceiver;",
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
            "Lcom/stericsson/hardware/fm/FmTransmitterService$OnForcedPauseReceiver;",
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
            "Lcom/stericsson/hardware/fm/FmTransmitterService$OnForcedResetReceiver;",
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
            "Lcom/stericsson/hardware/fm/FmTransmitterService$OnStartedReceiver;",
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
            "Lcom/stericsson/hardware/fm/FmTransmitterService$OnStateChangedReceiver;",
            ">;"
        }
    .end annotation
.end field

.field private final mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    invoke-direct {p0}, Lcom/stericsson/hardware/fm/IFmTransmitter$Stub;-><init>()V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mOnStateChangedReceivers:Ljava/util/HashMap;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mOnStartedReceivers:Ljava/util/HashMap;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mOnErrorReceivers:Ljava/util/HashMap;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mOnBlockScanReceivers:Ljava/util/HashMap;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mOnForcedPauseReceivers:Ljava/util/HashMap;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mOnForcedResetReceivers:Ljava/util/HashMap;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mOnExtraCommandReceivers:Ljava/util/HashMap;

    new-instance v1, Lcom/stericsson/hardware/fm/FmTransmitterService$1;

    invoke-direct {v1, p0}, Lcom/stericsson/hardware/fm/FmTransmitterService$1;-><init>(Lcom/stericsson/hardware/fm/FmTransmitterService;)V

    iput-object v1, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mReceiver:Landroid/content/BroadcastReceiver;

    const-string v1, "FmTransmitterService"

    const-string v2, "FmTransmitterService created"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/16 v1, 0xa

    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    return-void
.end method

.method private native _fm_transmitter_getFrequency()I
.end method

.method private native _fm_transmitter_getState()I
.end method

.method private native _fm_transmitter_isBlockScanSupported()Z
.end method

.method private native _fm_transmitter_pause()V
.end method

.method private native _fm_transmitter_reset()I
.end method

.method private native _fm_transmitter_resume()V
.end method

.method private native _fm_transmitter_sendExtraCommand(Ljava/lang/String;[Ljava/lang/String;)Z
.end method

.method private native _fm_transmitter_setFrequency(I)V
.end method

.method private native _fm_transmitter_setRdsData(Landroid/os/Bundle;)V
.end method

.method private native _fm_transmitter_start(IIII)V
.end method

.method private native _fm_transmitter_startAsync(IIII)V
.end method

.method private native _fm_transmitter_startBlockScan(II)V
.end method

.method private native _fm_transmitter_stopScan()V
.end method

.method static synthetic access$000(Lcom/stericsson/hardware/fm/FmTransmitterService;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mOnStateChangedReceivers:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$100(Lcom/stericsson/hardware/fm/FmTransmitterService;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mOnStartedReceivers:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$200(Lcom/stericsson/hardware/fm/FmTransmitterService;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mOnErrorReceivers:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$300(Lcom/stericsson/hardware/fm/FmTransmitterService;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mOnBlockScanReceivers:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$400(Lcom/stericsson/hardware/fm/FmTransmitterService;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mOnForcedPauseReceivers:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$500(Lcom/stericsson/hardware/fm/FmTransmitterService;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mOnForcedResetReceivers:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$600(Lcom/stericsson/hardware/fm/FmTransmitterService;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mOnExtraCommandReceivers:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$700(Lcom/stericsson/hardware/fm/FmTransmitterService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/stericsson/hardware/fm/FmTransmitterService;->isAirplaneModeOn()Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/stericsson/hardware/fm/FmTransmitterService;)I
    .locals 1
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/stericsson/hardware/fm/FmTransmitterService;->_fm_transmitter_reset()I

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/stericsson/hardware/fm/FmTransmitterService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/stericsson/hardware/fm/FmTransmitterService;->notifyOnForcedReset(I)V

    return-void
.end method

.method private isAirplaneModeOn()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mContext:Landroid/content/Context;

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

.method private notifyOnBlockScan([I[IZ)V
    .locals 5
    .parameter "frequency"
    .parameter "signalLevel"
    .parameter "aborted"

    .prologue
    iget-object v4, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mOnBlockScanReceivers:Ljava/util/HashMap;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mOnBlockScanReceivers:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    .local v0, c:Ljava/util/Collection;
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, iterator:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stericsson/hardware/fm/FmTransmitterService$OnBlockScanReceiver;

    .local v2, m:Lcom/stericsson/hardware/fm/FmTransmitterService$OnBlockScanReceiver;
    invoke-virtual {v2, p1, p2, p3}, Lcom/stericsson/hardware/fm/FmTransmitterService$OnBlockScanReceiver;->callOnBlockScan([I[IZ)Z

    goto :goto_0

    .end local v0           #c:Ljava/util/Collection;
    .end local v1           #iterator:Ljava/util/Iterator;
    .end local v2           #m:Lcom/stericsson/hardware/fm/FmTransmitterService$OnBlockScanReceiver;
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

    return-void
.end method

.method private notifyOnError()V
    .locals 5

    .prologue
    iget-object v4, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mOnErrorReceivers:Ljava/util/HashMap;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mOnErrorReceivers:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    .local v0, c:Ljava/util/Collection;
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, iterator:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stericsson/hardware/fm/FmTransmitterService$OnErrorReceiver;

    .local v2, m:Lcom/stericsson/hardware/fm/FmTransmitterService$OnErrorReceiver;
    invoke-virtual {v2}, Lcom/stericsson/hardware/fm/FmTransmitterService$OnErrorReceiver;->callOnError()Z

    goto :goto_0

    .end local v0           #c:Ljava/util/Collection;
    .end local v1           #iterator:Ljava/util/Iterator;
    .end local v2           #m:Lcom/stericsson/hardware/fm/FmTransmitterService$OnErrorReceiver;
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

    return-void
.end method

.method private notifyOnExtraCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 5
    .parameter "response"
    .parameter "extras"

    .prologue
    iget-object v4, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mOnExtraCommandReceivers:Ljava/util/HashMap;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mOnExtraCommandReceivers:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    .local v0, c:Ljava/util/Collection;
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, iterator:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stericsson/hardware/fm/FmTransmitterService$OnExtraCommandReceiver;

    .local v2, m:Lcom/stericsson/hardware/fm/FmTransmitterService$OnExtraCommandReceiver;
    invoke-virtual {v2, p1, p2}, Lcom/stericsson/hardware/fm/FmTransmitterService$OnExtraCommandReceiver;->callOnExtraCommand(Ljava/lang/String;Landroid/os/Bundle;)Z

    goto :goto_0

    .end local v0           #c:Ljava/util/Collection;
    .end local v1           #iterator:Ljava/util/Iterator;
    .end local v2           #m:Lcom/stericsson/hardware/fm/FmTransmitterService$OnExtraCommandReceiver;
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

    return-void
.end method

.method private notifyOnForcedPause()V
    .locals 5

    .prologue
    iget-object v4, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mOnForcedPauseReceivers:Ljava/util/HashMap;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mOnForcedPauseReceivers:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    .local v0, c:Ljava/util/Collection;
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, iterator:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stericsson/hardware/fm/FmTransmitterService$OnForcedPauseReceiver;

    .local v2, m:Lcom/stericsson/hardware/fm/FmTransmitterService$OnForcedPauseReceiver;
    invoke-virtual {v2}, Lcom/stericsson/hardware/fm/FmTransmitterService$OnForcedPauseReceiver;->callOnForcedPause()Z

    goto :goto_0

    .end local v0           #c:Ljava/util/Collection;
    .end local v1           #iterator:Ljava/util/Iterator;
    .end local v2           #m:Lcom/stericsson/hardware/fm/FmTransmitterService$OnForcedPauseReceiver;
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

    return-void
.end method

.method private notifyOnForcedReset(I)V
    .locals 5
    .parameter "reason"

    .prologue
    iget-object v4, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mOnForcedResetReceivers:Ljava/util/HashMap;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mOnForcedResetReceivers:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    .local v0, c:Ljava/util/Collection;
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, iterator:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stericsson/hardware/fm/FmTransmitterService$OnForcedResetReceiver;

    .local v2, m:Lcom/stericsson/hardware/fm/FmTransmitterService$OnForcedResetReceiver;
    invoke-virtual {v2, p1}, Lcom/stericsson/hardware/fm/FmTransmitterService$OnForcedResetReceiver;->callOnForcedReset(I)Z

    goto :goto_0

    .end local v0           #c:Ljava/util/Collection;
    .end local v1           #iterator:Ljava/util/Iterator;
    .end local v2           #m:Lcom/stericsson/hardware/fm/FmTransmitterService$OnForcedResetReceiver;
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

    return-void
.end method

.method private notifyOnStarted()V
    .locals 5

    .prologue
    iget-object v4, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mOnStartedReceivers:Ljava/util/HashMap;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mOnStartedReceivers:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    .local v0, c:Ljava/util/Collection;
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, iterator:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stericsson/hardware/fm/FmTransmitterService$OnStartedReceiver;

    .local v2, m:Lcom/stericsson/hardware/fm/FmTransmitterService$OnStartedReceiver;
    invoke-virtual {v2}, Lcom/stericsson/hardware/fm/FmTransmitterService$OnStartedReceiver;->callOnStarted()Z

    goto :goto_0

    .end local v0           #c:Ljava/util/Collection;
    .end local v1           #iterator:Ljava/util/Iterator;
    .end local v2           #m:Lcom/stericsson/hardware/fm/FmTransmitterService$OnStartedReceiver;
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

    return-void
.end method

.method private notifyOnStateChanged(II)V
    .locals 5
    .parameter "oldState"
    .parameter "newState"

    .prologue
    iget-object v4, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mOnStateChangedReceivers:Ljava/util/HashMap;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mOnStateChangedReceivers:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    .local v0, c:Ljava/util/Collection;
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, iterator:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stericsson/hardware/fm/FmTransmitterService$OnStateChangedReceiver;

    .local v2, m:Lcom/stericsson/hardware/fm/FmTransmitterService$OnStateChangedReceiver;
    invoke-virtual {v2, p1, p2}, Lcom/stericsson/hardware/fm/FmTransmitterService$OnStateChangedReceiver;->callOnStateChanged(II)Z

    goto :goto_0

    .end local v0           #c:Ljava/util/Collection;
    .end local v1           #iterator:Ljava/util/Iterator;
    .end local v2           #m:Lcom/stericsson/hardware/fm/FmTransmitterService$OnStateChangedReceiver;
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

    return-void
.end method


# virtual methods
.method public addOnBlockScanListener(Lcom/stericsson/hardware/fm/IOnBlockScanListener;)V
    .locals 5
    .parameter "listener"

    .prologue
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mContext:Landroid/content/Context;

    const-string v4, "com.stericsson.permission.FM_RADIO_TRANSMITTER"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/SecurityException;

    const-string v4, "Requires FM_RADIO_TRANSMITTER permission"

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    invoke-interface {p1}, Lcom/stericsson/hardware/fm/IOnBlockScanListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .local v0, binder:Landroid/os/IBinder;
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mOnBlockScanReceivers:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stericsson/hardware/fm/FmTransmitterService$OnBlockScanReceiver;

    .local v2, receiver:Lcom/stericsson/hardware/fm/FmTransmitterService$OnBlockScanReceiver;
    if-nez v2, :cond_1

    new-instance v2, Lcom/stericsson/hardware/fm/FmTransmitterService$OnBlockScanReceiver;

    .end local v2           #receiver:Lcom/stericsson/hardware/fm/FmTransmitterService$OnBlockScanReceiver;
    invoke-direct {v2, p0, p1}, Lcom/stericsson/hardware/fm/FmTransmitterService$OnBlockScanReceiver;-><init>(Lcom/stericsson/hardware/fm/FmTransmitterService;Lcom/stericsson/hardware/fm/IOnBlockScanListener;)V

    .restart local v2       #receiver:Lcom/stericsson/hardware/fm/FmTransmitterService$OnBlockScanReceiver;
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mOnBlockScanReceivers:Ljava/util/HashMap;

    invoke-virtual {v3, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "FmTransmitterService"

    const-string v4, "addOnBlockScanListener(), new receiver added"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-virtual {v2}, Lcom/stericsson/hardware/fm/FmTransmitterService$OnBlockScanReceiver;->getListener()Lcom/stericsson/hardware/fm/IOnBlockScanListener;

    move-result-object v3

    invoke-interface {v3}, Lcom/stericsson/hardware/fm/IOnBlockScanListener;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v2, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v1

    .local v1, ex:Landroid/os/RemoteException;
    const-string v3, "FmTransmitterService"

    const-string v4, "linkToDeath failed:"

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public addOnErrorListener(Lcom/stericsson/hardware/fm/IOnErrorListener;)V
    .locals 5
    .parameter "listener"

    .prologue
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mContext:Landroid/content/Context;

    const-string v4, "com.stericsson.permission.FM_RADIO_TRANSMITTER"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/SecurityException;

    const-string v4, "Requires FM_RADIO_TRANSMITTER permission"

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    invoke-interface {p1}, Lcom/stericsson/hardware/fm/IOnErrorListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .local v0, binder:Landroid/os/IBinder;
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mOnErrorReceivers:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stericsson/hardware/fm/FmTransmitterService$OnErrorReceiver;

    .local v2, receiver:Lcom/stericsson/hardware/fm/FmTransmitterService$OnErrorReceiver;
    if-nez v2, :cond_1

    new-instance v2, Lcom/stericsson/hardware/fm/FmTransmitterService$OnErrorReceiver;

    .end local v2           #receiver:Lcom/stericsson/hardware/fm/FmTransmitterService$OnErrorReceiver;
    invoke-direct {v2, p0, p1}, Lcom/stericsson/hardware/fm/FmTransmitterService$OnErrorReceiver;-><init>(Lcom/stericsson/hardware/fm/FmTransmitterService;Lcom/stericsson/hardware/fm/IOnErrorListener;)V

    .restart local v2       #receiver:Lcom/stericsson/hardware/fm/FmTransmitterService$OnErrorReceiver;
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mOnErrorReceivers:Ljava/util/HashMap;

    invoke-virtual {v3, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "FmTransmitterService"

    const-string v4, "addOnErrorListener(), new receiver added"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-virtual {v2}, Lcom/stericsson/hardware/fm/FmTransmitterService$OnErrorReceiver;->getListener()Lcom/stericsson/hardware/fm/IOnErrorListener;

    move-result-object v3

    invoke-interface {v3}, Lcom/stericsson/hardware/fm/IOnErrorListener;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v2, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v1

    .local v1, ex:Landroid/os/RemoteException;
    const-string v3, "FmTransmitterService"

    const-string v4, "linkToDeath failed:"

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public addOnExtraCommandListener(Lcom/stericsson/hardware/fm/IOnExtraCommandListener;)V
    .locals 5
    .parameter "listener"

    .prologue
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mContext:Landroid/content/Context;

    const-string v4, "com.stericsson.permission.FM_RADIO_TRANSMITTER"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/SecurityException;

    const-string v4, "Requires FM_RADIO_TRANSMITTER permission"

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    invoke-interface {p1}, Lcom/stericsson/hardware/fm/IOnExtraCommandListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .local v0, binder:Landroid/os/IBinder;
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mOnExtraCommandReceivers:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stericsson/hardware/fm/FmTransmitterService$OnExtraCommandReceiver;

    .local v2, receiver:Lcom/stericsson/hardware/fm/FmTransmitterService$OnExtraCommandReceiver;
    if-nez v2, :cond_1

    new-instance v2, Lcom/stericsson/hardware/fm/FmTransmitterService$OnExtraCommandReceiver;

    .end local v2           #receiver:Lcom/stericsson/hardware/fm/FmTransmitterService$OnExtraCommandReceiver;
    invoke-direct {v2, p0, p1}, Lcom/stericsson/hardware/fm/FmTransmitterService$OnExtraCommandReceiver;-><init>(Lcom/stericsson/hardware/fm/FmTransmitterService;Lcom/stericsson/hardware/fm/IOnExtraCommandListener;)V

    .restart local v2       #receiver:Lcom/stericsson/hardware/fm/FmTransmitterService$OnExtraCommandReceiver;
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mOnExtraCommandReceivers:Ljava/util/HashMap;

    invoke-virtual {v3, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "FmTransmitterService"

    const-string v4, "addOnExtraCommandListener(), new receiver added"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-virtual {v2}, Lcom/stericsson/hardware/fm/FmTransmitterService$OnExtraCommandReceiver;->getListener()Lcom/stericsson/hardware/fm/IOnExtraCommandListener;

    move-result-object v3

    invoke-interface {v3}, Lcom/stericsson/hardware/fm/IOnExtraCommandListener;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v2, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v1

    .local v1, ex:Landroid/os/RemoteException;
    const-string v3, "FmTransmitterService"

    const-string v4, "linkToDeath failed:"

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public addOnForcedPauseListener(Lcom/stericsson/hardware/fm/IOnForcedPauseListener;)V
    .locals 5
    .parameter "listener"

    .prologue
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mContext:Landroid/content/Context;

    const-string v4, "com.stericsson.permission.FM_RADIO_TRANSMITTER"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/SecurityException;

    const-string v4, "Requires FM_RADIO_TRANSMITTER permission"

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    invoke-interface {p1}, Lcom/stericsson/hardware/fm/IOnForcedPauseListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .local v0, binder:Landroid/os/IBinder;
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mOnForcedPauseReceivers:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stericsson/hardware/fm/FmTransmitterService$OnForcedPauseReceiver;

    .local v2, receiver:Lcom/stericsson/hardware/fm/FmTransmitterService$OnForcedPauseReceiver;
    if-nez v2, :cond_1

    new-instance v2, Lcom/stericsson/hardware/fm/FmTransmitterService$OnForcedPauseReceiver;

    .end local v2           #receiver:Lcom/stericsson/hardware/fm/FmTransmitterService$OnForcedPauseReceiver;
    invoke-direct {v2, p0, p1}, Lcom/stericsson/hardware/fm/FmTransmitterService$OnForcedPauseReceiver;-><init>(Lcom/stericsson/hardware/fm/FmTransmitterService;Lcom/stericsson/hardware/fm/IOnForcedPauseListener;)V

    .restart local v2       #receiver:Lcom/stericsson/hardware/fm/FmTransmitterService$OnForcedPauseReceiver;
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mOnForcedPauseReceivers:Ljava/util/HashMap;

    invoke-virtual {v3, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "FmTransmitterService"

    const-string v4, "addOnForcedPauseListener(), new receiver added"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-virtual {v2}, Lcom/stericsson/hardware/fm/FmTransmitterService$OnForcedPauseReceiver;->getListener()Lcom/stericsson/hardware/fm/IOnForcedPauseListener;

    move-result-object v3

    invoke-interface {v3}, Lcom/stericsson/hardware/fm/IOnForcedPauseListener;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v2, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v1

    .local v1, ex:Landroid/os/RemoteException;
    const-string v3, "FmTransmitterService"

    const-string v4, "linkToDeath failed:"

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public addOnForcedResetListener(Lcom/stericsson/hardware/fm/IOnForcedResetListener;)V
    .locals 5
    .parameter "listener"

    .prologue
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mContext:Landroid/content/Context;

    const-string v4, "com.stericsson.permission.FM_RADIO_TRANSMITTER"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/SecurityException;

    const-string v4, "Requires FM_RADIO_TRANSMITTER permission"

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    invoke-interface {p1}, Lcom/stericsson/hardware/fm/IOnForcedResetListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .local v0, binder:Landroid/os/IBinder;
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mOnForcedResetReceivers:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stericsson/hardware/fm/FmTransmitterService$OnForcedResetReceiver;

    .local v2, receiver:Lcom/stericsson/hardware/fm/FmTransmitterService$OnForcedResetReceiver;
    if-nez v2, :cond_1

    new-instance v2, Lcom/stericsson/hardware/fm/FmTransmitterService$OnForcedResetReceiver;

    .end local v2           #receiver:Lcom/stericsson/hardware/fm/FmTransmitterService$OnForcedResetReceiver;
    invoke-direct {v2, p0, p1}, Lcom/stericsson/hardware/fm/FmTransmitterService$OnForcedResetReceiver;-><init>(Lcom/stericsson/hardware/fm/FmTransmitterService;Lcom/stericsson/hardware/fm/IOnForcedResetListener;)V

    .restart local v2       #receiver:Lcom/stericsson/hardware/fm/FmTransmitterService$OnForcedResetReceiver;
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mOnForcedResetReceivers:Ljava/util/HashMap;

    invoke-virtual {v3, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "FmTransmitterService"

    const-string v4, "addOnForcedResetListener(), new receiver added"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-virtual {v2}, Lcom/stericsson/hardware/fm/FmTransmitterService$OnForcedResetReceiver;->getListener()Lcom/stericsson/hardware/fm/IOnForcedResetListener;

    move-result-object v3

    invoke-interface {v3}, Lcom/stericsson/hardware/fm/IOnForcedResetListener;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v2, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v1

    .local v1, ex:Landroid/os/RemoteException;
    const-string v3, "FmTransmitterService"

    const-string v4, "linkToDeath failed:"

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public addOnStartedListener(Lcom/stericsson/hardware/fm/IOnStartedListener;)V
    .locals 5
    .parameter "listener"

    .prologue
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mContext:Landroid/content/Context;

    const-string v4, "com.stericsson.permission.FM_RADIO_TRANSMITTER"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/SecurityException;

    const-string v4, "Requires FM_RADIO_TRANSMITTER permission"

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    invoke-interface {p1}, Lcom/stericsson/hardware/fm/IOnStartedListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .local v0, binder:Landroid/os/IBinder;
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mOnStartedReceivers:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stericsson/hardware/fm/FmTransmitterService$OnStartedReceiver;

    .local v2, receiver:Lcom/stericsson/hardware/fm/FmTransmitterService$OnStartedReceiver;
    if-nez v2, :cond_1

    new-instance v2, Lcom/stericsson/hardware/fm/FmTransmitterService$OnStartedReceiver;

    .end local v2           #receiver:Lcom/stericsson/hardware/fm/FmTransmitterService$OnStartedReceiver;
    invoke-direct {v2, p0, p1}, Lcom/stericsson/hardware/fm/FmTransmitterService$OnStartedReceiver;-><init>(Lcom/stericsson/hardware/fm/FmTransmitterService;Lcom/stericsson/hardware/fm/IOnStartedListener;)V

    .restart local v2       #receiver:Lcom/stericsson/hardware/fm/FmTransmitterService$OnStartedReceiver;
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mOnStartedReceivers:Ljava/util/HashMap;

    invoke-virtual {v3, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "FmTransmitterService"

    const-string v4, "addOnStartedListener(), new receiver added"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-virtual {v2}, Lcom/stericsson/hardware/fm/FmTransmitterService$OnStartedReceiver;->getListener()Lcom/stericsson/hardware/fm/IOnStartedListener;

    move-result-object v3

    invoke-interface {v3}, Lcom/stericsson/hardware/fm/IOnStartedListener;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v2, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v1

    .local v1, ex:Landroid/os/RemoteException;
    const-string v3, "FmTransmitterService"

    const-string v4, "linkToDeath failed:"

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public addOnStateChangedListener(Lcom/stericsson/hardware/fm/IOnStateChangedListener;)V
    .locals 5
    .parameter "listener"

    .prologue
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mContext:Landroid/content/Context;

    const-string v4, "com.stericsson.permission.FM_RADIO_TRANSMITTER"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/SecurityException;

    const-string v4, "Requires FM_RADIO_TRANSMITTER permission"

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    invoke-interface {p1}, Lcom/stericsson/hardware/fm/IOnStateChangedListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .local v0, binder:Landroid/os/IBinder;
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mOnStateChangedReceivers:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stericsson/hardware/fm/FmTransmitterService$OnStateChangedReceiver;

    .local v2, receiver:Lcom/stericsson/hardware/fm/FmTransmitterService$OnStateChangedReceiver;
    if-nez v2, :cond_1

    new-instance v2, Lcom/stericsson/hardware/fm/FmTransmitterService$OnStateChangedReceiver;

    .end local v2           #receiver:Lcom/stericsson/hardware/fm/FmTransmitterService$OnStateChangedReceiver;
    invoke-direct {v2, p0, p1}, Lcom/stericsson/hardware/fm/FmTransmitterService$OnStateChangedReceiver;-><init>(Lcom/stericsson/hardware/fm/FmTransmitterService;Lcom/stericsson/hardware/fm/IOnStateChangedListener;)V

    .restart local v2       #receiver:Lcom/stericsson/hardware/fm/FmTransmitterService$OnStateChangedReceiver;
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mOnStateChangedReceivers:Ljava/util/HashMap;

    invoke-virtual {v3, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "FmTransmitterService"

    const-string v4, "addOnStateChangedListener(), new receiver added"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-virtual {v2}, Lcom/stericsson/hardware/fm/FmTransmitterService$OnStateChangedReceiver;->getListener()Lcom/stericsson/hardware/fm/IOnStateChangedListener;

    move-result-object v3

    invoke-interface {v3}, Lcom/stericsson/hardware/fm/IOnStateChangedListener;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v2, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v1

    .local v1, ex:Landroid/os/RemoteException;
    const-string v3, "FmTransmitterService"

    const-string v4, "linkToDeath failed:"

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getFrequency()I
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mContext:Landroid/content/Context;

    const-string v1, "com.stericsson.permission.FM_RADIO_TRANSMITTER"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires FM_RADIO_TRANSMITTER permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-direct {p0}, Lcom/stericsson/hardware/fm/FmTransmitterService;->_fm_transmitter_getFrequency()I

    move-result v0

    return v0
.end method

.method public getState()I
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mContext:Landroid/content/Context;

    const-string v1, "com.stericsson.permission.FM_RADIO_TRANSMITTER"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires FM_RADIO_TRANSMITTER permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-direct {p0}, Lcom/stericsson/hardware/fm/FmTransmitterService;->_fm_transmitter_getState()I

    move-result v0

    return v0
.end method

.method public isBlockScanSupported()Z
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mContext:Landroid/content/Context;

    const-string v1, "com.stericsson.permission.FM_RADIO_TRANSMITTER"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires FM_RADIO_TRANSMITTER permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-direct {p0}, Lcom/stericsson/hardware/fm/FmTransmitterService;->_fm_transmitter_isBlockScanSupported()Z

    move-result v0

    return v0
.end method

.method public pause()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mContext:Landroid/content/Context;

    const-string v1, "com.stericsson.permission.FM_RADIO_TRANSMITTER"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires FM_RADIO_TRANSMITTER permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-direct {p0}, Lcom/stericsson/hardware/fm/FmTransmitterService;->_fm_transmitter_pause()V

    return-void
.end method

.method public removeOnBlockScanListener(Lcom/stericsson/hardware/fm/IOnBlockScanListener;)V
    .locals 4
    .parameter "listener"

    .prologue
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mContext:Landroid/content/Context;

    const-string v3, "com.stericsson.permission.FM_RADIO_TRANSMITTER"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Requires FM_RADIO_TRANSMITTER permission"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    invoke-interface {p1}, Lcom/stericsson/hardware/fm/IOnBlockScanListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .local v0, binder:Landroid/os/IBinder;
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mOnBlockScanReceivers:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stericsson/hardware/fm/FmTransmitterService$OnBlockScanReceiver;

    .local v1, receiver:Lcom/stericsson/hardware/fm/FmTransmitterService$OnBlockScanReceiver;
    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mOnBlockScanReceivers:Ljava/util/HashMap;

    iget-object v3, v1, Lcom/stericsson/hardware/fm/FmTransmitterService$OnBlockScanReceiver;->mKey:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "FmTransmitterService"

    const-string v3, "removeOnBlockScanListener(), receiver removed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Lcom/stericsson/hardware/fm/FmTransmitterService$OnBlockScanReceiver;->getListener()Lcom/stericsson/hardware/fm/IOnBlockScanListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/stericsson/hardware/fm/IOnBlockScanListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    :cond_1
    return-void
.end method

.method public removeOnErrorListener(Lcom/stericsson/hardware/fm/IOnErrorListener;)V
    .locals 4
    .parameter "listener"

    .prologue
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mContext:Landroid/content/Context;

    const-string v3, "com.stericsson.permission.FM_RADIO_TRANSMITTER"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Requires FM_RADIO_TRANSMITTER permission"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    invoke-interface {p1}, Lcom/stericsson/hardware/fm/IOnErrorListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .local v0, binder:Landroid/os/IBinder;
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mOnErrorReceivers:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stericsson/hardware/fm/FmTransmitterService$OnErrorReceiver;

    .local v1, receiver:Lcom/stericsson/hardware/fm/FmTransmitterService$OnErrorReceiver;
    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mOnErrorReceivers:Ljava/util/HashMap;

    iget-object v3, v1, Lcom/stericsson/hardware/fm/FmTransmitterService$OnErrorReceiver;->mKey:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "FmTransmitterService"

    const-string v3, "removeOnErrorListener(), receiver removed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Lcom/stericsson/hardware/fm/FmTransmitterService$OnErrorReceiver;->getListener()Lcom/stericsson/hardware/fm/IOnErrorListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/stericsson/hardware/fm/IOnErrorListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    :cond_1
    return-void
.end method

.method public removeOnExtraCommandListener(Lcom/stericsson/hardware/fm/IOnExtraCommandListener;)V
    .locals 4
    .parameter "listener"

    .prologue
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mContext:Landroid/content/Context;

    const-string v3, "com.stericsson.permission.FM_RADIO_TRANSMITTER"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Requires FM_RADIO_TRANSMITTER permission"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    invoke-interface {p1}, Lcom/stericsson/hardware/fm/IOnExtraCommandListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .local v0, binder:Landroid/os/IBinder;
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mOnExtraCommandReceivers:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stericsson/hardware/fm/FmTransmitterService$OnExtraCommandReceiver;

    .local v1, receiver:Lcom/stericsson/hardware/fm/FmTransmitterService$OnExtraCommandReceiver;
    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mOnExtraCommandReceivers:Ljava/util/HashMap;

    iget-object v3, v1, Lcom/stericsson/hardware/fm/FmTransmitterService$OnExtraCommandReceiver;->mKey:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "FmTransmitterService"

    const-string v3, "removeOnExtraCommandListener(), receiver removed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Lcom/stericsson/hardware/fm/FmTransmitterService$OnExtraCommandReceiver;->getListener()Lcom/stericsson/hardware/fm/IOnExtraCommandListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/stericsson/hardware/fm/IOnExtraCommandListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    :cond_1
    return-void
.end method

.method public removeOnForcedPauseListener(Lcom/stericsson/hardware/fm/IOnForcedPauseListener;)V
    .locals 4
    .parameter "listener"

    .prologue
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mContext:Landroid/content/Context;

    const-string v3, "com.stericsson.permission.FM_RADIO_TRANSMITTER"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Requires FM_RADIO_TRANSMITTER permission"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    invoke-interface {p1}, Lcom/stericsson/hardware/fm/IOnForcedPauseListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .local v0, binder:Landroid/os/IBinder;
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mOnForcedPauseReceivers:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stericsson/hardware/fm/FmTransmitterService$OnForcedPauseReceiver;

    .local v1, receiver:Lcom/stericsson/hardware/fm/FmTransmitterService$OnForcedPauseReceiver;
    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mOnForcedPauseReceivers:Ljava/util/HashMap;

    iget-object v3, v1, Lcom/stericsson/hardware/fm/FmTransmitterService$OnForcedPauseReceiver;->mKey:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "FmTransmitterService"

    const-string v3, "removeOnForcedPauseListener(), receiver removed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Lcom/stericsson/hardware/fm/FmTransmitterService$OnForcedPauseReceiver;->getListener()Lcom/stericsson/hardware/fm/IOnForcedPauseListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/stericsson/hardware/fm/IOnForcedPauseListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    :cond_1
    return-void
.end method

.method public removeOnForcedResetListener(Lcom/stericsson/hardware/fm/IOnForcedResetListener;)V
    .locals 4
    .parameter "listener"

    .prologue
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mContext:Landroid/content/Context;

    const-string v3, "com.stericsson.permission.FM_RADIO_TRANSMITTER"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Requires FM_RADIO_TRANSMITTER permission"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    invoke-interface {p1}, Lcom/stericsson/hardware/fm/IOnForcedResetListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .local v0, binder:Landroid/os/IBinder;
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mOnForcedResetReceivers:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stericsson/hardware/fm/FmTransmitterService$OnForcedResetReceiver;

    .local v1, receiver:Lcom/stericsson/hardware/fm/FmTransmitterService$OnForcedResetReceiver;
    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mOnForcedResetReceivers:Ljava/util/HashMap;

    iget-object v3, v1, Lcom/stericsson/hardware/fm/FmTransmitterService$OnForcedResetReceiver;->mKey:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "FmTransmitterService"

    const-string v3, "removeOnForcedResetListener(), receiver removed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Lcom/stericsson/hardware/fm/FmTransmitterService$OnForcedResetReceiver;->getListener()Lcom/stericsson/hardware/fm/IOnForcedResetListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/stericsson/hardware/fm/IOnForcedResetListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    :cond_1
    return-void
.end method

.method public removeOnStartedListener(Lcom/stericsson/hardware/fm/IOnStartedListener;)V
    .locals 4
    .parameter "listener"

    .prologue
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mContext:Landroid/content/Context;

    const-string v3, "com.stericsson.permission.FM_RADIO_TRANSMITTER"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Requires FM_RADIO_TRANSMITTER permission"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    invoke-interface {p1}, Lcom/stericsson/hardware/fm/IOnStartedListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .local v0, binder:Landroid/os/IBinder;
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mOnStartedReceivers:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stericsson/hardware/fm/FmTransmitterService$OnStartedReceiver;

    .local v1, receiver:Lcom/stericsson/hardware/fm/FmTransmitterService$OnStartedReceiver;
    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mOnStartedReceivers:Ljava/util/HashMap;

    iget-object v3, v1, Lcom/stericsson/hardware/fm/FmTransmitterService$OnStartedReceiver;->mKey:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "FmTransmitterService"

    const-string v3, "removeOnStartedListener(), receiver removed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Lcom/stericsson/hardware/fm/FmTransmitterService$OnStartedReceiver;->getListener()Lcom/stericsson/hardware/fm/IOnStartedListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/stericsson/hardware/fm/IOnStartedListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    :cond_1
    return-void
.end method

.method public removeOnStateChangedListener(Lcom/stericsson/hardware/fm/IOnStateChangedListener;)V
    .locals 4
    .parameter "listener"

    .prologue
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mContext:Landroid/content/Context;

    const-string v3, "com.stericsson.permission.FM_RADIO_TRANSMITTER"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Requires FM_RADIO_TRANSMITTER permission"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    invoke-interface {p1}, Lcom/stericsson/hardware/fm/IOnStateChangedListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .local v0, binder:Landroid/os/IBinder;
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mOnStateChangedReceivers:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stericsson/hardware/fm/FmTransmitterService$OnStateChangedReceiver;

    .local v1, receiver:Lcom/stericsson/hardware/fm/FmTransmitterService$OnStateChangedReceiver;
    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mOnStateChangedReceivers:Ljava/util/HashMap;

    iget-object v3, v1, Lcom/stericsson/hardware/fm/FmTransmitterService$OnStateChangedReceiver;->mKey:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "FmTransmitterService"

    const-string v3, "removeOnStateChangedListener(), receiver removed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Lcom/stericsson/hardware/fm/FmTransmitterService$OnStateChangedReceiver;->getListener()Lcom/stericsson/hardware/fm/IOnStateChangedListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/stericsson/hardware/fm/IOnStateChangedListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    :cond_1
    return-void
.end method

.method public reset()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mContext:Landroid/content/Context;

    const-string v1, "com.stericsson.permission.FM_RADIO_TRANSMITTER"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires FM_RADIO_TRANSMITTER permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-direct {p0}, Lcom/stericsson/hardware/fm/FmTransmitterService;->_fm_transmitter_reset()I

    return-void
.end method

.method public resume()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mContext:Landroid/content/Context;

    const-string v1, "com.stericsson.permission.FM_RADIO_TRANSMITTER"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires FM_RADIO_TRANSMITTER permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-direct {p0}, Lcom/stericsson/hardware/fm/FmTransmitterService;->_fm_transmitter_resume()V

    return-void
.end method

.method public sendExtraCommand(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 2
    .parameter "command"
    .parameter "extras"

    .prologue
    iget-object v0, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mContext:Landroid/content/Context;

    const-string v1, "com.stericsson.permission.FM_RADIO_TRANSMITTER"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires FM_RADIO_TRANSMITTER permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/stericsson/hardware/fm/FmTransmitterService;->_fm_transmitter_sendExtraCommand(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setFrequency(I)V
    .locals 2
    .parameter "frequency"

    .prologue
    iget-object v0, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mContext:Landroid/content/Context;

    const-string v1, "com.stericsson.permission.FM_RADIO_TRANSMITTER"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires FM_RADIO_TRANSMITTER permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/stericsson/hardware/fm/FmTransmitterService;->_fm_transmitter_setFrequency(I)V

    return-void
.end method

.method public setRdsData(Landroid/os/Bundle;)V
    .locals 2
    .parameter "rdsData"

    .prologue
    iget-object v0, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mContext:Landroid/content/Context;

    const-string v1, "com.stericsson.permission.FM_RADIO_TRANSMITTER"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires FM_RADIO_TRANSMITTER permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/stericsson/hardware/fm/FmTransmitterService;->_fm_transmitter_setRdsData(Landroid/os/Bundle;)V

    return-void
.end method

.method public start(Lcom/stericsson/hardware/fm/FmBand;)V
    .locals 4
    .parameter "band"

    .prologue
    iget-object v0, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mContext:Landroid/content/Context;

    const-string v1, "com.stericsson.permission.FM_RADIO_TRANSMITTER"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires FM_RADIO_TRANSMITTER permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p1}, Lcom/stericsson/hardware/fm/FmBand;->getMinFrequency()I

    move-result v0

    invoke-virtual {p1}, Lcom/stericsson/hardware/fm/FmBand;->getMaxFrequency()I

    move-result v1

    invoke-virtual {p1}, Lcom/stericsson/hardware/fm/FmBand;->getDefaultFrequency()I

    move-result v2

    invoke-virtual {p1}, Lcom/stericsson/hardware/fm/FmBand;->getChannelOffset()I

    move-result v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/stericsson/hardware/fm/FmTransmitterService;->_fm_transmitter_start(IIII)V

    return-void
.end method

.method public startAsync(Lcom/stericsson/hardware/fm/FmBand;)V
    .locals 4
    .parameter "band"

    .prologue
    iget-object v0, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mContext:Landroid/content/Context;

    const-string v1, "com.stericsson.permission.FM_RADIO_TRANSMITTER"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires FM_RADIO_TRANSMITTER permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p1}, Lcom/stericsson/hardware/fm/FmBand;->getMinFrequency()I

    move-result v0

    invoke-virtual {p1}, Lcom/stericsson/hardware/fm/FmBand;->getMaxFrequency()I

    move-result v1

    invoke-virtual {p1}, Lcom/stericsson/hardware/fm/FmBand;->getDefaultFrequency()I

    move-result v2

    invoke-virtual {p1}, Lcom/stericsson/hardware/fm/FmBand;->getChannelOffset()I

    move-result v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/stericsson/hardware/fm/FmTransmitterService;->_fm_transmitter_startAsync(IIII)V

    return-void
.end method

.method public startBlockScan(II)V
    .locals 2
    .parameter "startFrequency"
    .parameter "endFrequency"

    .prologue
    iget-object v0, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mContext:Landroid/content/Context;

    const-string v1, "com.stericsson.permission.FM_RADIO_TRANSMITTER"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires FM_RADIO_TRANSMITTER permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/stericsson/hardware/fm/FmTransmitterService;->_fm_transmitter_startBlockScan(II)V

    return-void
.end method

.method public stopScan()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mContext:Landroid/content/Context;

    const-string v1, "com.stericsson.permission.FM_RADIO_TRANSMITTER"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires FM_RADIO_TRANSMITTER permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-direct {p0}, Lcom/stericsson/hardware/fm/FmTransmitterService;->_fm_transmitter_stopScan()V

    return-void
.end method

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
    .line 365
    invoke-direct {p0}, Lcom/stericsson/hardware/fm/IFmTransmitter$Stub;-><init>()V

    .line 51
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mOnStateChangedReceivers:Ljava/util/HashMap;

    .line 54
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mOnStartedReceivers:Ljava/util/HashMap;

    .line 57
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mOnErrorReceivers:Ljava/util/HashMap;

    .line 60
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mOnBlockScanReceivers:Ljava/util/HashMap;

    .line 63
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mOnForcedPauseReceivers:Ljava/util/HashMap;

    .line 66
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mOnForcedResetReceivers:Ljava/util/HashMap;

    .line 69
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mOnExtraCommandReceivers:Ljava/util/HashMap;

    .line 333
    new-instance v1, Lcom/stericsson/hardware/fm/FmTransmitterService$1;

    invoke-direct {v1, p0}, Lcom/stericsson/hardware/fm/FmTransmitterService$1;-><init>(Lcom/stericsson/hardware/fm/FmTransmitterService;)V

    iput-object v1, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 366
    const-string v1, "FmTransmitterService"

    const-string v2, "FmTransmitterService created"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    iput-object p1, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mContext:Landroid/content/Context;

    .line 370
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 371
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 372
    const-string v1, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 374
    iget-object v1, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 376
    const/16 v1, 0xa

    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    .line 377
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
    .line 45
    iget-object v0, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mOnStateChangedReceivers:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$100(Lcom/stericsson/hardware/fm/FmTransmitterService;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mOnStartedReceivers:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$200(Lcom/stericsson/hardware/fm/FmTransmitterService;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mOnErrorReceivers:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$300(Lcom/stericsson/hardware/fm/FmTransmitterService;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mOnBlockScanReceivers:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$400(Lcom/stericsson/hardware/fm/FmTransmitterService;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mOnForcedPauseReceivers:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$500(Lcom/stericsson/hardware/fm/FmTransmitterService;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mOnForcedResetReceivers:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$600(Lcom/stericsson/hardware/fm/FmTransmitterService;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mOnExtraCommandReceivers:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$700(Lcom/stericsson/hardware/fm/FmTransmitterService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/stericsson/hardware/fm/FmTransmitterService;->isAirplaneModeOn()Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/stericsson/hardware/fm/FmTransmitterService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/stericsson/hardware/fm/FmTransmitterService;->_fm_transmitter_reset()I

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/stericsson/hardware/fm/FmTransmitterService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/stericsson/hardware/fm/FmTransmitterService;->notifyOnForcedReset(I)V

    return-void
.end method

.method private isAirplaneModeOn()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 361
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
    .line 777
    iget-object v4, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mOnBlockScanReceivers:Ljava/util/HashMap;

    monitor-enter v4

    .line 778
    :try_start_0
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mOnBlockScanReceivers:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 779
    .local v0, c:Ljava/util/Collection;
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 780
    .local v1, iterator:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 781
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stericsson/hardware/fm/FmTransmitterService$OnBlockScanReceiver;

    .line 782
    .local v2, m:Lcom/stericsson/hardware/fm/FmTransmitterService$OnBlockScanReceiver;
    invoke-virtual {v2, p1, p2, p3}, Lcom/stericsson/hardware/fm/FmTransmitterService$OnBlockScanReceiver;->callOnBlockScan([I[IZ)Z

    goto :goto_0

    .line 784
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

    .line 785
    return-void
.end method

.method private notifyOnError()V
    .locals 5

    .prologue
    .line 766
    iget-object v4, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mOnErrorReceivers:Ljava/util/HashMap;

    monitor-enter v4

    .line 767
    :try_start_0
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mOnErrorReceivers:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 768
    .local v0, c:Ljava/util/Collection;
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 769
    .local v1, iterator:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 770
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stericsson/hardware/fm/FmTransmitterService$OnErrorReceiver;

    .line 771
    .local v2, m:Lcom/stericsson/hardware/fm/FmTransmitterService$OnErrorReceiver;
    invoke-virtual {v2}, Lcom/stericsson/hardware/fm/FmTransmitterService$OnErrorReceiver;->callOnError()Z

    goto :goto_0

    .line 773
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

    .line 774
    return-void
.end method

.method private notifyOnExtraCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 5
    .parameter "response"
    .parameter "extras"

    .prologue
    .line 810
    iget-object v4, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mOnExtraCommandReceivers:Ljava/util/HashMap;

    monitor-enter v4

    .line 811
    :try_start_0
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mOnExtraCommandReceivers:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 812
    .local v0, c:Ljava/util/Collection;
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 813
    .local v1, iterator:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 814
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stericsson/hardware/fm/FmTransmitterService$OnExtraCommandReceiver;

    .line 815
    .local v2, m:Lcom/stericsson/hardware/fm/FmTransmitterService$OnExtraCommandReceiver;
    invoke-virtual {v2, p1, p2}, Lcom/stericsson/hardware/fm/FmTransmitterService$OnExtraCommandReceiver;->callOnExtraCommand(Ljava/lang/String;Landroid/os/Bundle;)Z

    goto :goto_0

    .line 817
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

    .line 818
    return-void
.end method

.method private notifyOnForcedPause()V
    .locals 5

    .prologue
    .line 788
    iget-object v4, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mOnForcedPauseReceivers:Ljava/util/HashMap;

    monitor-enter v4

    .line 789
    :try_start_0
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mOnForcedPauseReceivers:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 790
    .local v0, c:Ljava/util/Collection;
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 791
    .local v1, iterator:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 792
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stericsson/hardware/fm/FmTransmitterService$OnForcedPauseReceiver;

    .line 793
    .local v2, m:Lcom/stericsson/hardware/fm/FmTransmitterService$OnForcedPauseReceiver;
    invoke-virtual {v2}, Lcom/stericsson/hardware/fm/FmTransmitterService$OnForcedPauseReceiver;->callOnForcedPause()Z

    goto :goto_0

    .line 795
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

    .line 796
    return-void
.end method

.method private notifyOnForcedReset(I)V
    .locals 5
    .parameter "reason"

    .prologue
    .line 799
    iget-object v4, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mOnForcedResetReceivers:Ljava/util/HashMap;

    monitor-enter v4

    .line 800
    :try_start_0
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mOnForcedResetReceivers:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 801
    .local v0, c:Ljava/util/Collection;
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 802
    .local v1, iterator:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 803
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stericsson/hardware/fm/FmTransmitterService$OnForcedResetReceiver;

    .line 804
    .local v2, m:Lcom/stericsson/hardware/fm/FmTransmitterService$OnForcedResetReceiver;
    invoke-virtual {v2, p1}, Lcom/stericsson/hardware/fm/FmTransmitterService$OnForcedResetReceiver;->callOnForcedReset(I)Z

    goto :goto_0

    .line 806
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

    .line 807
    return-void
.end method

.method private notifyOnStarted()V
    .locals 5

    .prologue
    .line 755
    iget-object v4, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mOnStartedReceivers:Ljava/util/HashMap;

    monitor-enter v4

    .line 756
    :try_start_0
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mOnStartedReceivers:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 757
    .local v0, c:Ljava/util/Collection;
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 758
    .local v1, iterator:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 759
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stericsson/hardware/fm/FmTransmitterService$OnStartedReceiver;

    .line 760
    .local v2, m:Lcom/stericsson/hardware/fm/FmTransmitterService$OnStartedReceiver;
    invoke-virtual {v2}, Lcom/stericsson/hardware/fm/FmTransmitterService$OnStartedReceiver;->callOnStarted()Z

    goto :goto_0

    .line 762
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

    .line 763
    return-void
.end method

.method private notifyOnStateChanged(II)V
    .locals 5
    .parameter "oldState"
    .parameter "newState"

    .prologue
    .line 744
    iget-object v4, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mOnStateChangedReceivers:Ljava/util/HashMap;

    monitor-enter v4

    .line 745
    :try_start_0
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mOnStateChangedReceivers:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 746
    .local v0, c:Ljava/util/Collection;
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 747
    .local v1, iterator:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 748
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stericsson/hardware/fm/FmTransmitterService$OnStateChangedReceiver;

    .line 749
    .local v2, m:Lcom/stericsson/hardware/fm/FmTransmitterService$OnStateChangedReceiver;
    invoke-virtual {v2, p1, p2}, Lcom/stericsson/hardware/fm/FmTransmitterService$OnStateChangedReceiver;->callOnStateChanged(II)Z

    goto :goto_0

    .line 751
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

    .line 752
    return-void
.end method


# virtual methods
.method public addOnBlockScanListener(Lcom/stericsson/hardware/fm/IOnBlockScanListener;)V
    .locals 5
    .parameter "listener"

    .prologue
    .line 604
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mContext:Landroid/content/Context;

    const-string v4, "com.stericsson.permission.FM_RADIO_TRANSMITTER"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    .line 606
    new-instance v3, Ljava/lang/SecurityException;

    const-string v4, "Requires FM_RADIO_TRANSMITTER permission"

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 609
    :cond_0
    invoke-interface {p1}, Lcom/stericsson/hardware/fm/IOnBlockScanListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 610
    .local v0, binder:Landroid/os/IBinder;
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mOnBlockScanReceivers:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stericsson/hardware/fm/FmTransmitterService$OnBlockScanReceiver;

    .line 611
    .local v2, receiver:Lcom/stericsson/hardware/fm/FmTransmitterService$OnBlockScanReceiver;
    if-nez v2, :cond_1

    .line 612
    new-instance v2, Lcom/stericsson/hardware/fm/FmTransmitterService$OnBlockScanReceiver;

    .end local v2           #receiver:Lcom/stericsson/hardware/fm/FmTransmitterService$OnBlockScanReceiver;
    invoke-direct {v2, p0, p1}, Lcom/stericsson/hardware/fm/FmTransmitterService$OnBlockScanReceiver;-><init>(Lcom/stericsson/hardware/fm/FmTransmitterService;Lcom/stericsson/hardware/fm/IOnBlockScanListener;)V

    .line 613
    .restart local v2       #receiver:Lcom/stericsson/hardware/fm/FmTransmitterService$OnBlockScanReceiver;
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mOnBlockScanReceivers:Ljava/util/HashMap;

    invoke-virtual {v3, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 614
    const-string v3, "FmTransmitterService"

    const-string v4, "addOnBlockScanListener(), new receiver added"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    :try_start_0
    invoke-virtual {v2}, Lcom/stericsson/hardware/fm/FmTransmitterService$OnBlockScanReceiver;->getListener()Lcom/stericsson/hardware/fm/IOnBlockScanListener;

    move-result-object v3

    invoke-interface {v3}, Lcom/stericsson/hardware/fm/IOnBlockScanListener;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v2, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 621
    :cond_1
    :goto_0
    return-void

    .line 617
    :catch_0
    move-exception v1

    .line 618
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
    .line 569
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mContext:Landroid/content/Context;

    const-string v4, "com.stericsson.permission.FM_RADIO_TRANSMITTER"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    .line 571
    new-instance v3, Ljava/lang/SecurityException;

    const-string v4, "Requires FM_RADIO_TRANSMITTER permission"

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 574
    :cond_0
    invoke-interface {p1}, Lcom/stericsson/hardware/fm/IOnErrorListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 575
    .local v0, binder:Landroid/os/IBinder;
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mOnErrorReceivers:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stericsson/hardware/fm/FmTransmitterService$OnErrorReceiver;

    .line 576
    .local v2, receiver:Lcom/stericsson/hardware/fm/FmTransmitterService$OnErrorReceiver;
    if-nez v2, :cond_1

    .line 577
    new-instance v2, Lcom/stericsson/hardware/fm/FmTransmitterService$OnErrorReceiver;

    .end local v2           #receiver:Lcom/stericsson/hardware/fm/FmTransmitterService$OnErrorReceiver;
    invoke-direct {v2, p0, p1}, Lcom/stericsson/hardware/fm/FmTransmitterService$OnErrorReceiver;-><init>(Lcom/stericsson/hardware/fm/FmTransmitterService;Lcom/stericsson/hardware/fm/IOnErrorListener;)V

    .line 578
    .restart local v2       #receiver:Lcom/stericsson/hardware/fm/FmTransmitterService$OnErrorReceiver;
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mOnErrorReceivers:Ljava/util/HashMap;

    invoke-virtual {v3, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 579
    const-string v3, "FmTransmitterService"

    const-string v4, "addOnErrorListener(), new receiver added"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    :try_start_0
    invoke-virtual {v2}, Lcom/stericsson/hardware/fm/FmTransmitterService$OnErrorReceiver;->getListener()Lcom/stericsson/hardware/fm/IOnErrorListener;

    move-result-object v3

    invoke-interface {v3}, Lcom/stericsson/hardware/fm/IOnErrorListener;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v2, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 586
    :cond_1
    :goto_0
    return-void

    .line 582
    :catch_0
    move-exception v1

    .line 583
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
    .line 709
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mContext:Landroid/content/Context;

    const-string v4, "com.stericsson.permission.FM_RADIO_TRANSMITTER"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    .line 711
    new-instance v3, Ljava/lang/SecurityException;

    const-string v4, "Requires FM_RADIO_TRANSMITTER permission"

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 714
    :cond_0
    invoke-interface {p1}, Lcom/stericsson/hardware/fm/IOnExtraCommandListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 715
    .local v0, binder:Landroid/os/IBinder;
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mOnExtraCommandReceivers:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stericsson/hardware/fm/FmTransmitterService$OnExtraCommandReceiver;

    .line 716
    .local v2, receiver:Lcom/stericsson/hardware/fm/FmTransmitterService$OnExtraCommandReceiver;
    if-nez v2, :cond_1

    .line 717
    new-instance v2, Lcom/stericsson/hardware/fm/FmTransmitterService$OnExtraCommandReceiver;

    .end local v2           #receiver:Lcom/stericsson/hardware/fm/FmTransmitterService$OnExtraCommandReceiver;
    invoke-direct {v2, p0, p1}, Lcom/stericsson/hardware/fm/FmTransmitterService$OnExtraCommandReceiver;-><init>(Lcom/stericsson/hardware/fm/FmTransmitterService;Lcom/stericsson/hardware/fm/IOnExtraCommandListener;)V

    .line 718
    .restart local v2       #receiver:Lcom/stericsson/hardware/fm/FmTransmitterService$OnExtraCommandReceiver;
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mOnExtraCommandReceivers:Ljava/util/HashMap;

    invoke-virtual {v3, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 719
    const-string v3, "FmTransmitterService"

    const-string v4, "addOnExtraCommandListener(), new receiver added"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    :try_start_0
    invoke-virtual {v2}, Lcom/stericsson/hardware/fm/FmTransmitterService$OnExtraCommandReceiver;->getListener()Lcom/stericsson/hardware/fm/IOnExtraCommandListener;

    move-result-object v3

    invoke-interface {v3}, Lcom/stericsson/hardware/fm/IOnExtraCommandListener;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v2, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 726
    :cond_1
    :goto_0
    return-void

    .line 722
    :catch_0
    move-exception v1

    .line 723
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
    .line 639
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mContext:Landroid/content/Context;

    const-string v4, "com.stericsson.permission.FM_RADIO_TRANSMITTER"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    .line 641
    new-instance v3, Ljava/lang/SecurityException;

    const-string v4, "Requires FM_RADIO_TRANSMITTER permission"

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 644
    :cond_0
    invoke-interface {p1}, Lcom/stericsson/hardware/fm/IOnForcedPauseListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 645
    .local v0, binder:Landroid/os/IBinder;
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mOnForcedPauseReceivers:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stericsson/hardware/fm/FmTransmitterService$OnForcedPauseReceiver;

    .line 646
    .local v2, receiver:Lcom/stericsson/hardware/fm/FmTransmitterService$OnForcedPauseReceiver;
    if-nez v2, :cond_1

    .line 647
    new-instance v2, Lcom/stericsson/hardware/fm/FmTransmitterService$OnForcedPauseReceiver;

    .end local v2           #receiver:Lcom/stericsson/hardware/fm/FmTransmitterService$OnForcedPauseReceiver;
    invoke-direct {v2, p0, p1}, Lcom/stericsson/hardware/fm/FmTransmitterService$OnForcedPauseReceiver;-><init>(Lcom/stericsson/hardware/fm/FmTransmitterService;Lcom/stericsson/hardware/fm/IOnForcedPauseListener;)V

    .line 648
    .restart local v2       #receiver:Lcom/stericsson/hardware/fm/FmTransmitterService$OnForcedPauseReceiver;
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mOnForcedPauseReceivers:Ljava/util/HashMap;

    invoke-virtual {v3, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 649
    const-string v3, "FmTransmitterService"

    const-string v4, "addOnForcedPauseListener(), new receiver added"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    :try_start_0
    invoke-virtual {v2}, Lcom/stericsson/hardware/fm/FmTransmitterService$OnForcedPauseReceiver;->getListener()Lcom/stericsson/hardware/fm/IOnForcedPauseListener;

    move-result-object v3

    invoke-interface {v3}, Lcom/stericsson/hardware/fm/IOnForcedPauseListener;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v2, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 656
    :cond_1
    :goto_0
    return-void

    .line 652
    :catch_0
    move-exception v1

    .line 653
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
    .line 674
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mContext:Landroid/content/Context;

    const-string v4, "com.stericsson.permission.FM_RADIO_TRANSMITTER"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    .line 676
    new-instance v3, Ljava/lang/SecurityException;

    const-string v4, "Requires FM_RADIO_TRANSMITTER permission"

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 679
    :cond_0
    invoke-interface {p1}, Lcom/stericsson/hardware/fm/IOnForcedResetListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 680
    .local v0, binder:Landroid/os/IBinder;
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mOnForcedResetReceivers:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stericsson/hardware/fm/FmTransmitterService$OnForcedResetReceiver;

    .line 681
    .local v2, receiver:Lcom/stericsson/hardware/fm/FmTransmitterService$OnForcedResetReceiver;
    if-nez v2, :cond_1

    .line 682
    new-instance v2, Lcom/stericsson/hardware/fm/FmTransmitterService$OnForcedResetReceiver;

    .end local v2           #receiver:Lcom/stericsson/hardware/fm/FmTransmitterService$OnForcedResetReceiver;
    invoke-direct {v2, p0, p1}, Lcom/stericsson/hardware/fm/FmTransmitterService$OnForcedResetReceiver;-><init>(Lcom/stericsson/hardware/fm/FmTransmitterService;Lcom/stericsson/hardware/fm/IOnForcedResetListener;)V

    .line 683
    .restart local v2       #receiver:Lcom/stericsson/hardware/fm/FmTransmitterService$OnForcedResetReceiver;
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mOnForcedResetReceivers:Ljava/util/HashMap;

    invoke-virtual {v3, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 684
    const-string v3, "FmTransmitterService"

    const-string v4, "addOnForcedResetListener(), new receiver added"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 686
    :try_start_0
    invoke-virtual {v2}, Lcom/stericsson/hardware/fm/FmTransmitterService$OnForcedResetReceiver;->getListener()Lcom/stericsson/hardware/fm/IOnForcedResetListener;

    move-result-object v3

    invoke-interface {v3}, Lcom/stericsson/hardware/fm/IOnForcedResetListener;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v2, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 691
    :cond_1
    :goto_0
    return-void

    .line 687
    :catch_0
    move-exception v1

    .line 688
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
    .line 534
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mContext:Landroid/content/Context;

    const-string v4, "com.stericsson.permission.FM_RADIO_TRANSMITTER"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    .line 536
    new-instance v3, Ljava/lang/SecurityException;

    const-string v4, "Requires FM_RADIO_TRANSMITTER permission"

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 539
    :cond_0
    invoke-interface {p1}, Lcom/stericsson/hardware/fm/IOnStartedListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 540
    .local v0, binder:Landroid/os/IBinder;
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mOnStartedReceivers:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stericsson/hardware/fm/FmTransmitterService$OnStartedReceiver;

    .line 541
    .local v2, receiver:Lcom/stericsson/hardware/fm/FmTransmitterService$OnStartedReceiver;
    if-nez v2, :cond_1

    .line 542
    new-instance v2, Lcom/stericsson/hardware/fm/FmTransmitterService$OnStartedReceiver;

    .end local v2           #receiver:Lcom/stericsson/hardware/fm/FmTransmitterService$OnStartedReceiver;
    invoke-direct {v2, p0, p1}, Lcom/stericsson/hardware/fm/FmTransmitterService$OnStartedReceiver;-><init>(Lcom/stericsson/hardware/fm/FmTransmitterService;Lcom/stericsson/hardware/fm/IOnStartedListener;)V

    .line 543
    .restart local v2       #receiver:Lcom/stericsson/hardware/fm/FmTransmitterService$OnStartedReceiver;
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mOnStartedReceivers:Ljava/util/HashMap;

    invoke-virtual {v3, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 544
    const-string v3, "FmTransmitterService"

    const-string v4, "addOnStartedListener(), new receiver added"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    :try_start_0
    invoke-virtual {v2}, Lcom/stericsson/hardware/fm/FmTransmitterService$OnStartedReceiver;->getListener()Lcom/stericsson/hardware/fm/IOnStartedListener;

    move-result-object v3

    invoke-interface {v3}, Lcom/stericsson/hardware/fm/IOnStartedListener;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v2, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 551
    :cond_1
    :goto_0
    return-void

    .line 547
    :catch_0
    move-exception v1

    .line 548
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
    .line 499
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mContext:Landroid/content/Context;

    const-string v4, "com.stericsson.permission.FM_RADIO_TRANSMITTER"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    .line 501
    new-instance v3, Ljava/lang/SecurityException;

    const-string v4, "Requires FM_RADIO_TRANSMITTER permission"

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 504
    :cond_0
    invoke-interface {p1}, Lcom/stericsson/hardware/fm/IOnStateChangedListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 505
    .local v0, binder:Landroid/os/IBinder;
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mOnStateChangedReceivers:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stericsson/hardware/fm/FmTransmitterService$OnStateChangedReceiver;

    .line 506
    .local v2, receiver:Lcom/stericsson/hardware/fm/FmTransmitterService$OnStateChangedReceiver;
    if-nez v2, :cond_1

    .line 507
    new-instance v2, Lcom/stericsson/hardware/fm/FmTransmitterService$OnStateChangedReceiver;

    .end local v2           #receiver:Lcom/stericsson/hardware/fm/FmTransmitterService$OnStateChangedReceiver;
    invoke-direct {v2, p0, p1}, Lcom/stericsson/hardware/fm/FmTransmitterService$OnStateChangedReceiver;-><init>(Lcom/stericsson/hardware/fm/FmTransmitterService;Lcom/stericsson/hardware/fm/IOnStateChangedListener;)V

    .line 508
    .restart local v2       #receiver:Lcom/stericsson/hardware/fm/FmTransmitterService$OnStateChangedReceiver;
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mOnStateChangedReceivers:Ljava/util/HashMap;

    invoke-virtual {v3, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 509
    const-string v3, "FmTransmitterService"

    const-string v4, "addOnStateChangedListener(), new receiver added"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    :try_start_0
    invoke-virtual {v2}, Lcom/stericsson/hardware/fm/FmTransmitterService$OnStateChangedReceiver;->getListener()Lcom/stericsson/hardware/fm/IOnStateChangedListener;

    move-result-object v3

    invoke-interface {v3}, Lcom/stericsson/hardware/fm/IOnStateChangedListener;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v2, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 516
    :cond_1
    :goto_0
    return-void

    .line 512
    :catch_0
    move-exception v1

    .line 513
    .local v1, ex:Landroid/os/RemoteException;
    const-string v3, "FmTransmitterService"

    const-string v4, "linkToDeath failed:"

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getFrequency()I
    .locals 2

    .prologue
    .line 445
    iget-object v0, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mContext:Landroid/content/Context;

    const-string v1, "com.stericsson.permission.FM_RADIO_TRANSMITTER"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 447
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires FM_RADIO_TRANSMITTER permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 450
    :cond_0
    invoke-direct {p0}, Lcom/stericsson/hardware/fm/FmTransmitterService;->_fm_transmitter_getFrequency()I

    move-result v0

    return v0
.end method

.method public getState()I
    .locals 2

    .prologue
    .line 427
    iget-object v0, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mContext:Landroid/content/Context;

    const-string v1, "com.stericsson.permission.FM_RADIO_TRANSMITTER"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 429
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires FM_RADIO_TRANSMITTER permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 432
    :cond_0
    invoke-direct {p0}, Lcom/stericsson/hardware/fm/FmTransmitterService;->_fm_transmitter_getState()I

    move-result v0

    return v0
.end method

.method public isBlockScanSupported()Z
    .locals 2

    .prologue
    .line 454
    iget-object v0, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mContext:Landroid/content/Context;

    const-string v1, "com.stericsson.permission.FM_RADIO_TRANSMITTER"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 456
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires FM_RADIO_TRANSMITTER permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 459
    :cond_0
    invoke-direct {p0}, Lcom/stericsson/hardware/fm/FmTransmitterService;->_fm_transmitter_isBlockScanSupported()Z

    move-result v0

    return v0
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 409
    iget-object v0, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mContext:Landroid/content/Context;

    const-string v1, "com.stericsson.permission.FM_RADIO_TRANSMITTER"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 411
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires FM_RADIO_TRANSMITTER permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 414
    :cond_0
    invoke-direct {p0}, Lcom/stericsson/hardware/fm/FmTransmitterService;->_fm_transmitter_pause()V

    .line 415
    return-void
.end method

.method public removeOnBlockScanListener(Lcom/stericsson/hardware/fm/IOnBlockScanListener;)V
    .locals 4
    .parameter "listener"

    .prologue
    .line 624
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mContext:Landroid/content/Context;

    const-string v3, "com.stericsson.permission.FM_RADIO_TRANSMITTER"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 626
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Requires FM_RADIO_TRANSMITTER permission"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 629
    :cond_0
    invoke-interface {p1}, Lcom/stericsson/hardware/fm/IOnBlockScanListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 630
    .local v0, binder:Landroid/os/IBinder;
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mOnBlockScanReceivers:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stericsson/hardware/fm/FmTransmitterService$OnBlockScanReceiver;

    .line 631
    .local v1, receiver:Lcom/stericsson/hardware/fm/FmTransmitterService$OnBlockScanReceiver;
    if-eqz v1, :cond_1

    .line 632
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mOnBlockScanReceivers:Ljava/util/HashMap;

    iget-object v3, v1, Lcom/stericsson/hardware/fm/FmTransmitterService$OnBlockScanReceiver;->mKey:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 633
    const-string v2, "FmTransmitterService"

    const-string/jumbo v3, "removeOnBlockScanListener(), receiver removed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    invoke-virtual {v1}, Lcom/stericsson/hardware/fm/FmTransmitterService$OnBlockScanReceiver;->getListener()Lcom/stericsson/hardware/fm/IOnBlockScanListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/stericsson/hardware/fm/IOnBlockScanListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 636
    :cond_1
    return-void
.end method

.method public removeOnErrorListener(Lcom/stericsson/hardware/fm/IOnErrorListener;)V
    .locals 4
    .parameter "listener"

    .prologue
    .line 589
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mContext:Landroid/content/Context;

    const-string v3, "com.stericsson.permission.FM_RADIO_TRANSMITTER"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 591
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Requires FM_RADIO_TRANSMITTER permission"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 594
    :cond_0
    invoke-interface {p1}, Lcom/stericsson/hardware/fm/IOnErrorListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 595
    .local v0, binder:Landroid/os/IBinder;
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mOnErrorReceivers:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stericsson/hardware/fm/FmTransmitterService$OnErrorReceiver;

    .line 596
    .local v1, receiver:Lcom/stericsson/hardware/fm/FmTransmitterService$OnErrorReceiver;
    if-eqz v1, :cond_1

    .line 597
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mOnErrorReceivers:Ljava/util/HashMap;

    iget-object v3, v1, Lcom/stericsson/hardware/fm/FmTransmitterService$OnErrorReceiver;->mKey:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 598
    const-string v2, "FmTransmitterService"

    const-string/jumbo v3, "removeOnErrorListener(), receiver removed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    invoke-virtual {v1}, Lcom/stericsson/hardware/fm/FmTransmitterService$OnErrorReceiver;->getListener()Lcom/stericsson/hardware/fm/IOnErrorListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/stericsson/hardware/fm/IOnErrorListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 601
    :cond_1
    return-void
.end method

.method public removeOnExtraCommandListener(Lcom/stericsson/hardware/fm/IOnExtraCommandListener;)V
    .locals 4
    .parameter "listener"

    .prologue
    .line 729
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mContext:Landroid/content/Context;

    const-string v3, "com.stericsson.permission.FM_RADIO_TRANSMITTER"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 731
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Requires FM_RADIO_TRANSMITTER permission"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 734
    :cond_0
    invoke-interface {p1}, Lcom/stericsson/hardware/fm/IOnExtraCommandListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 735
    .local v0, binder:Landroid/os/IBinder;
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mOnExtraCommandReceivers:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stericsson/hardware/fm/FmTransmitterService$OnExtraCommandReceiver;

    .line 736
    .local v1, receiver:Lcom/stericsson/hardware/fm/FmTransmitterService$OnExtraCommandReceiver;
    if-eqz v1, :cond_1

    .line 737
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mOnExtraCommandReceivers:Ljava/util/HashMap;

    iget-object v3, v1, Lcom/stericsson/hardware/fm/FmTransmitterService$OnExtraCommandReceiver;->mKey:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 738
    const-string v2, "FmTransmitterService"

    const-string/jumbo v3, "removeOnExtraCommandListener(), receiver removed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    invoke-virtual {v1}, Lcom/stericsson/hardware/fm/FmTransmitterService$OnExtraCommandReceiver;->getListener()Lcom/stericsson/hardware/fm/IOnExtraCommandListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/stericsson/hardware/fm/IOnExtraCommandListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 741
    :cond_1
    return-void
.end method

.method public removeOnForcedPauseListener(Lcom/stericsson/hardware/fm/IOnForcedPauseListener;)V
    .locals 4
    .parameter "listener"

    .prologue
    .line 659
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mContext:Landroid/content/Context;

    const-string v3, "com.stericsson.permission.FM_RADIO_TRANSMITTER"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 661
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Requires FM_RADIO_TRANSMITTER permission"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 664
    :cond_0
    invoke-interface {p1}, Lcom/stericsson/hardware/fm/IOnForcedPauseListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 665
    .local v0, binder:Landroid/os/IBinder;
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mOnForcedPauseReceivers:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stericsson/hardware/fm/FmTransmitterService$OnForcedPauseReceiver;

    .line 666
    .local v1, receiver:Lcom/stericsson/hardware/fm/FmTransmitterService$OnForcedPauseReceiver;
    if-eqz v1, :cond_1

    .line 667
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mOnForcedPauseReceivers:Ljava/util/HashMap;

    iget-object v3, v1, Lcom/stericsson/hardware/fm/FmTransmitterService$OnForcedPauseReceiver;->mKey:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 668
    const-string v2, "FmTransmitterService"

    const-string/jumbo v3, "removeOnForcedPauseListener(), receiver removed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    invoke-virtual {v1}, Lcom/stericsson/hardware/fm/FmTransmitterService$OnForcedPauseReceiver;->getListener()Lcom/stericsson/hardware/fm/IOnForcedPauseListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/stericsson/hardware/fm/IOnForcedPauseListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 671
    :cond_1
    return-void
.end method

.method public removeOnForcedResetListener(Lcom/stericsson/hardware/fm/IOnForcedResetListener;)V
    .locals 4
    .parameter "listener"

    .prologue
    .line 694
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mContext:Landroid/content/Context;

    const-string v3, "com.stericsson.permission.FM_RADIO_TRANSMITTER"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 696
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Requires FM_RADIO_TRANSMITTER permission"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 699
    :cond_0
    invoke-interface {p1}, Lcom/stericsson/hardware/fm/IOnForcedResetListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 700
    .local v0, binder:Landroid/os/IBinder;
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mOnForcedResetReceivers:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stericsson/hardware/fm/FmTransmitterService$OnForcedResetReceiver;

    .line 701
    .local v1, receiver:Lcom/stericsson/hardware/fm/FmTransmitterService$OnForcedResetReceiver;
    if-eqz v1, :cond_1

    .line 702
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mOnForcedResetReceivers:Ljava/util/HashMap;

    iget-object v3, v1, Lcom/stericsson/hardware/fm/FmTransmitterService$OnForcedResetReceiver;->mKey:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 703
    const-string v2, "FmTransmitterService"

    const-string/jumbo v3, "removeOnForcedResetListener(), receiver removed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    invoke-virtual {v1}, Lcom/stericsson/hardware/fm/FmTransmitterService$OnForcedResetReceiver;->getListener()Lcom/stericsson/hardware/fm/IOnForcedResetListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/stericsson/hardware/fm/IOnForcedResetListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 706
    :cond_1
    return-void
.end method

.method public removeOnStartedListener(Lcom/stericsson/hardware/fm/IOnStartedListener;)V
    .locals 4
    .parameter "listener"

    .prologue
    .line 554
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mContext:Landroid/content/Context;

    const-string v3, "com.stericsson.permission.FM_RADIO_TRANSMITTER"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 556
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Requires FM_RADIO_TRANSMITTER permission"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 559
    :cond_0
    invoke-interface {p1}, Lcom/stericsson/hardware/fm/IOnStartedListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 560
    .local v0, binder:Landroid/os/IBinder;
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mOnStartedReceivers:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stericsson/hardware/fm/FmTransmitterService$OnStartedReceiver;

    .line 561
    .local v1, receiver:Lcom/stericsson/hardware/fm/FmTransmitterService$OnStartedReceiver;
    if-eqz v1, :cond_1

    .line 562
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mOnStartedReceivers:Ljava/util/HashMap;

    iget-object v3, v1, Lcom/stericsson/hardware/fm/FmTransmitterService$OnStartedReceiver;->mKey:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 563
    const-string v2, "FmTransmitterService"

    const-string/jumbo v3, "removeOnStartedListener(), receiver removed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    invoke-virtual {v1}, Lcom/stericsson/hardware/fm/FmTransmitterService$OnStartedReceiver;->getListener()Lcom/stericsson/hardware/fm/IOnStartedListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/stericsson/hardware/fm/IOnStartedListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 566
    :cond_1
    return-void
.end method

.method public removeOnStateChangedListener(Lcom/stericsson/hardware/fm/IOnStateChangedListener;)V
    .locals 4
    .parameter "listener"

    .prologue
    .line 519
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mContext:Landroid/content/Context;

    const-string v3, "com.stericsson.permission.FM_RADIO_TRANSMITTER"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 521
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Requires FM_RADIO_TRANSMITTER permission"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 524
    :cond_0
    invoke-interface {p1}, Lcom/stericsson/hardware/fm/IOnStateChangedListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 525
    .local v0, binder:Landroid/os/IBinder;
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mOnStateChangedReceivers:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stericsson/hardware/fm/FmTransmitterService$OnStateChangedReceiver;

    .line 526
    .local v1, receiver:Lcom/stericsson/hardware/fm/FmTransmitterService$OnStateChangedReceiver;
    if-eqz v1, :cond_1

    .line 527
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mOnStateChangedReceivers:Ljava/util/HashMap;

    iget-object v3, v1, Lcom/stericsson/hardware/fm/FmTransmitterService$OnStateChangedReceiver;->mKey:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 528
    const-string v2, "FmTransmitterService"

    const-string/jumbo v3, "removeOnStateChangedListener(), receiver removed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    invoke-virtual {v1}, Lcom/stericsson/hardware/fm/FmTransmitterService$OnStateChangedReceiver;->getListener()Lcom/stericsson/hardware/fm/IOnStateChangedListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/stericsson/hardware/fm/IOnStateChangedListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 531
    :cond_1
    return-void
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 400
    iget-object v0, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mContext:Landroid/content/Context;

    const-string v1, "com.stericsson.permission.FM_RADIO_TRANSMITTER"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 402
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires FM_RADIO_TRANSMITTER permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 405
    :cond_0
    invoke-direct {p0}, Lcom/stericsson/hardware/fm/FmTransmitterService;->_fm_transmitter_reset()I

    .line 406
    return-void
.end method

.method public resume()V
    .locals 2

    .prologue
    .line 418
    iget-object v0, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mContext:Landroid/content/Context;

    const-string v1, "com.stericsson.permission.FM_RADIO_TRANSMITTER"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 420
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires FM_RADIO_TRANSMITTER permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 423
    :cond_0
    invoke-direct {p0}, Lcom/stericsson/hardware/fm/FmTransmitterService;->_fm_transmitter_resume()V

    .line 424
    return-void
.end method

.method public sendExtraCommand(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 2
    .parameter "command"
    .parameter "extras"

    .prologue
    .line 490
    iget-object v0, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mContext:Landroid/content/Context;

    const-string v1, "com.stericsson.permission.FM_RADIO_TRANSMITTER"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 492
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires FM_RADIO_TRANSMITTER permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 495
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/stericsson/hardware/fm/FmTransmitterService;->_fm_transmitter_sendExtraCommand(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setFrequency(I)V
    .locals 2
    .parameter "frequency"

    .prologue
    .line 436
    iget-object v0, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mContext:Landroid/content/Context;

    const-string v1, "com.stericsson.permission.FM_RADIO_TRANSMITTER"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 438
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires FM_RADIO_TRANSMITTER permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 441
    :cond_0
    invoke-direct {p0, p1}, Lcom/stericsson/hardware/fm/FmTransmitterService;->_fm_transmitter_setFrequency(I)V

    .line 442
    return-void
.end method

.method public setRdsData(Landroid/os/Bundle;)V
    .locals 2
    .parameter "rdsData"

    .prologue
    .line 481
    iget-object v0, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mContext:Landroid/content/Context;

    const-string v1, "com.stericsson.permission.FM_RADIO_TRANSMITTER"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 483
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires FM_RADIO_TRANSMITTER permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 486
    :cond_0
    invoke-direct {p0, p1}, Lcom/stericsson/hardware/fm/FmTransmitterService;->_fm_transmitter_setRdsData(Landroid/os/Bundle;)V

    .line 487
    return-void
.end method

.method public start(Lcom/stericsson/hardware/fm/FmBand;)V
    .locals 4
    .parameter "band"

    .prologue
    .line 380
    iget-object v0, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mContext:Landroid/content/Context;

    const-string v1, "com.stericsson.permission.FM_RADIO_TRANSMITTER"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 382
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires FM_RADIO_TRANSMITTER permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 385
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

    .line 387
    return-void
.end method

.method public startAsync(Lcom/stericsson/hardware/fm/FmBand;)V
    .locals 4
    .parameter "band"

    .prologue
    .line 390
    iget-object v0, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mContext:Landroid/content/Context;

    const-string v1, "com.stericsson.permission.FM_RADIO_TRANSMITTER"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 392
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires FM_RADIO_TRANSMITTER permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 395
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

    .line 397
    return-void
.end method

.method public startBlockScan(II)V
    .locals 2
    .parameter "startFrequency"
    .parameter "endFrequency"

    .prologue
    .line 463
    iget-object v0, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mContext:Landroid/content/Context;

    const-string v1, "com.stericsson.permission.FM_RADIO_TRANSMITTER"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 465
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires FM_RADIO_TRANSMITTER permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 468
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/stericsson/hardware/fm/FmTransmitterService;->_fm_transmitter_startBlockScan(II)V

    .line 469
    return-void
.end method

.method public stopScan()V
    .locals 2

    .prologue
    .line 472
    iget-object v0, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mContext:Landroid/content/Context;

    const-string v1, "com.stericsson.permission.FM_RADIO_TRANSMITTER"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 474
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires FM_RADIO_TRANSMITTER permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 477
    :cond_0
    invoke-direct {p0}, Lcom/stericsson/hardware/fm/FmTransmitterService;->_fm_transmitter_stopScan()V

    .line 478
    return-void
.end method

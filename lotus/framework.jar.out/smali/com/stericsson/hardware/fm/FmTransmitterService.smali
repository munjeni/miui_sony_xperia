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
    .line 776
    iget-object v4, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mOnBlockScanReceivers:Ljava/util/HashMap;

    monitor-enter v4

    .line 777
    :try_start_0
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mOnBlockScanReceivers:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 778
    .local v0, c:Ljava/util/Collection;
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 779
    .local v1, iterator:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 780
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stericsson/hardware/fm/FmTransmitterService$OnBlockScanReceiver;

    .line 781
    .local v2, m:Lcom/stericsson/hardware/fm/FmTransmitterService$OnBlockScanReceiver;
    invoke-virtual {v2, p1, p2, p3}, Lcom/stericsson/hardware/fm/FmTransmitterService$OnBlockScanReceiver;->callOnBlockScan([I[IZ)Z

    goto :goto_0

    .line 783
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

    .line 784
    return-void
.end method

.method private notifyOnError()V
    .locals 5

    .prologue
    .line 765
    iget-object v4, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mOnErrorReceivers:Ljava/util/HashMap;

    monitor-enter v4

    .line 766
    :try_start_0
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mOnErrorReceivers:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 767
    .local v0, c:Ljava/util/Collection;
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 768
    .local v1, iterator:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 769
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stericsson/hardware/fm/FmTransmitterService$OnErrorReceiver;

    .line 770
    .local v2, m:Lcom/stericsson/hardware/fm/FmTransmitterService$OnErrorReceiver;
    invoke-virtual {v2}, Lcom/stericsson/hardware/fm/FmTransmitterService$OnErrorReceiver;->callOnError()Z

    goto :goto_0

    .line 772
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

    .line 773
    return-void
.end method

.method private notifyOnExtraCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 5
    .parameter "response"
    .parameter "extras"

    .prologue
    .line 809
    iget-object v4, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mOnExtraCommandReceivers:Ljava/util/HashMap;

    monitor-enter v4

    .line 810
    :try_start_0
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mOnExtraCommandReceivers:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 811
    .local v0, c:Ljava/util/Collection;
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 812
    .local v1, iterator:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 813
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stericsson/hardware/fm/FmTransmitterService$OnExtraCommandReceiver;

    .line 814
    .local v2, m:Lcom/stericsson/hardware/fm/FmTransmitterService$OnExtraCommandReceiver;
    invoke-virtual {v2, p1, p2}, Lcom/stericsson/hardware/fm/FmTransmitterService$OnExtraCommandReceiver;->callOnExtraCommand(Ljava/lang/String;Landroid/os/Bundle;)Z

    goto :goto_0

    .line 816
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

    .line 817
    return-void
.end method

.method private notifyOnForcedPause()V
    .locals 5

    .prologue
    .line 787
    iget-object v4, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mOnForcedPauseReceivers:Ljava/util/HashMap;

    monitor-enter v4

    .line 788
    :try_start_0
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mOnForcedPauseReceivers:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 789
    .local v0, c:Ljava/util/Collection;
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 790
    .local v1, iterator:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 791
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stericsson/hardware/fm/FmTransmitterService$OnForcedPauseReceiver;

    .line 792
    .local v2, m:Lcom/stericsson/hardware/fm/FmTransmitterService$OnForcedPauseReceiver;
    invoke-virtual {v2}, Lcom/stericsson/hardware/fm/FmTransmitterService$OnForcedPauseReceiver;->callOnForcedPause()Z

    goto :goto_0

    .line 794
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

    .line 795
    return-void
.end method

.method private notifyOnForcedReset(I)V
    .locals 5
    .parameter "reason"

    .prologue
    .line 798
    iget-object v4, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mOnForcedResetReceivers:Ljava/util/HashMap;

    monitor-enter v4

    .line 799
    :try_start_0
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mOnForcedResetReceivers:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 800
    .local v0, c:Ljava/util/Collection;
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 801
    .local v1, iterator:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 802
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stericsson/hardware/fm/FmTransmitterService$OnForcedResetReceiver;

    .line 803
    .local v2, m:Lcom/stericsson/hardware/fm/FmTransmitterService$OnForcedResetReceiver;
    invoke-virtual {v2, p1}, Lcom/stericsson/hardware/fm/FmTransmitterService$OnForcedResetReceiver;->callOnForcedReset(I)Z

    goto :goto_0

    .line 805
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

    .line 806
    return-void
.end method

.method private notifyOnStarted()V
    .locals 5

    .prologue
    .line 754
    iget-object v4, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mOnStartedReceivers:Ljava/util/HashMap;

    monitor-enter v4

    .line 755
    :try_start_0
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mOnStartedReceivers:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 756
    .local v0, c:Ljava/util/Collection;
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 757
    .local v1, iterator:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 758
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stericsson/hardware/fm/FmTransmitterService$OnStartedReceiver;

    .line 759
    .local v2, m:Lcom/stericsson/hardware/fm/FmTransmitterService$OnStartedReceiver;
    invoke-virtual {v2}, Lcom/stericsson/hardware/fm/FmTransmitterService$OnStartedReceiver;->callOnStarted()Z

    goto :goto_0

    .line 761
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

    .line 762
    return-void
.end method

.method private notifyOnStateChanged(II)V
    .locals 5
    .parameter "oldState"
    .parameter "newState"

    .prologue
    .line 743
    iget-object v4, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mOnStateChangedReceivers:Ljava/util/HashMap;

    monitor-enter v4

    .line 744
    :try_start_0
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mOnStateChangedReceivers:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 745
    .local v0, c:Ljava/util/Collection;
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 746
    .local v1, iterator:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 747
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stericsson/hardware/fm/FmTransmitterService$OnStateChangedReceiver;

    .line 748
    .local v2, m:Lcom/stericsson/hardware/fm/FmTransmitterService$OnStateChangedReceiver;
    invoke-virtual {v2, p1, p2}, Lcom/stericsson/hardware/fm/FmTransmitterService$OnStateChangedReceiver;->callOnStateChanged(II)Z

    goto :goto_0

    .line 750
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

    .line 751
    return-void
.end method


# virtual methods
.method public addOnBlockScanListener(Lcom/stericsson/hardware/fm/IOnBlockScanListener;)V
    .locals 5
    .parameter "listener"

    .prologue
    .line 603
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mContext:Landroid/content/Context;

    const-string v4, "com.stericsson.permission.FM_RADIO_TRANSMITTER"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    .line 605
    new-instance v3, Ljava/lang/SecurityException;

    const-string v4, "Requires FM_RADIO_TRANSMITTER permission"

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 608
    :cond_0
    invoke-interface {p1}, Lcom/stericsson/hardware/fm/IOnBlockScanListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 609
    .local v0, binder:Landroid/os/IBinder;
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mOnBlockScanReceivers:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stericsson/hardware/fm/FmTransmitterService$OnBlockScanReceiver;

    .line 610
    .local v2, receiver:Lcom/stericsson/hardware/fm/FmTransmitterService$OnBlockScanReceiver;
    if-nez v2, :cond_1

    .line 611
    new-instance v2, Lcom/stericsson/hardware/fm/FmTransmitterService$OnBlockScanReceiver;

    .end local v2           #receiver:Lcom/stericsson/hardware/fm/FmTransmitterService$OnBlockScanReceiver;
    invoke-direct {v2, p0, p1}, Lcom/stericsson/hardware/fm/FmTransmitterService$OnBlockScanReceiver;-><init>(Lcom/stericsson/hardware/fm/FmTransmitterService;Lcom/stericsson/hardware/fm/IOnBlockScanListener;)V

    .line 612
    .restart local v2       #receiver:Lcom/stericsson/hardware/fm/FmTransmitterService$OnBlockScanReceiver;
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mOnBlockScanReceivers:Ljava/util/HashMap;

    invoke-virtual {v3, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 613
    const-string v3, "FmTransmitterService"

    const-string v4, "addOnBlockScanListener(), new receiver added"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    :try_start_0
    invoke-virtual {v2}, Lcom/stericsson/hardware/fm/FmTransmitterService$OnBlockScanReceiver;->getListener()Lcom/stericsson/hardware/fm/IOnBlockScanListener;

    move-result-object v3

    invoke-interface {v3}, Lcom/stericsson/hardware/fm/IOnBlockScanListener;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v2, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 620
    :cond_1
    :goto_0
    return-void

    .line 616
    :catch_0
    move-exception v1

    .line 617
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
    .line 568
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mContext:Landroid/content/Context;

    const-string v4, "com.stericsson.permission.FM_RADIO_TRANSMITTER"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    .line 570
    new-instance v3, Ljava/lang/SecurityException;

    const-string v4, "Requires FM_RADIO_TRANSMITTER permission"

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 573
    :cond_0
    invoke-interface {p1}, Lcom/stericsson/hardware/fm/IOnErrorListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 574
    .local v0, binder:Landroid/os/IBinder;
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mOnErrorReceivers:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stericsson/hardware/fm/FmTransmitterService$OnErrorReceiver;

    .line 575
    .local v2, receiver:Lcom/stericsson/hardware/fm/FmTransmitterService$OnErrorReceiver;
    if-nez v2, :cond_1

    .line 576
    new-instance v2, Lcom/stericsson/hardware/fm/FmTransmitterService$OnErrorReceiver;

    .end local v2           #receiver:Lcom/stericsson/hardware/fm/FmTransmitterService$OnErrorReceiver;
    invoke-direct {v2, p0, p1}, Lcom/stericsson/hardware/fm/FmTransmitterService$OnErrorReceiver;-><init>(Lcom/stericsson/hardware/fm/FmTransmitterService;Lcom/stericsson/hardware/fm/IOnErrorListener;)V

    .line 577
    .restart local v2       #receiver:Lcom/stericsson/hardware/fm/FmTransmitterService$OnErrorReceiver;
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mOnErrorReceivers:Ljava/util/HashMap;

    invoke-virtual {v3, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 578
    const-string v3, "FmTransmitterService"

    const-string v4, "addOnErrorListener(), new receiver added"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    :try_start_0
    invoke-virtual {v2}, Lcom/stericsson/hardware/fm/FmTransmitterService$OnErrorReceiver;->getListener()Lcom/stericsson/hardware/fm/IOnErrorListener;

    move-result-object v3

    invoke-interface {v3}, Lcom/stericsson/hardware/fm/IOnErrorListener;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v2, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 585
    :cond_1
    :goto_0
    return-void

    .line 581
    :catch_0
    move-exception v1

    .line 582
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
    .line 708
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mContext:Landroid/content/Context;

    const-string v4, "com.stericsson.permission.FM_RADIO_TRANSMITTER"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    .line 710
    new-instance v3, Ljava/lang/SecurityException;

    const-string v4, "Requires FM_RADIO_TRANSMITTER permission"

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 713
    :cond_0
    invoke-interface {p1}, Lcom/stericsson/hardware/fm/IOnExtraCommandListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 714
    .local v0, binder:Landroid/os/IBinder;
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mOnExtraCommandReceivers:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stericsson/hardware/fm/FmTransmitterService$OnExtraCommandReceiver;

    .line 715
    .local v2, receiver:Lcom/stericsson/hardware/fm/FmTransmitterService$OnExtraCommandReceiver;
    if-nez v2, :cond_1

    .line 716
    new-instance v2, Lcom/stericsson/hardware/fm/FmTransmitterService$OnExtraCommandReceiver;

    .end local v2           #receiver:Lcom/stericsson/hardware/fm/FmTransmitterService$OnExtraCommandReceiver;
    invoke-direct {v2, p0, p1}, Lcom/stericsson/hardware/fm/FmTransmitterService$OnExtraCommandReceiver;-><init>(Lcom/stericsson/hardware/fm/FmTransmitterService;Lcom/stericsson/hardware/fm/IOnExtraCommandListener;)V

    .line 717
    .restart local v2       #receiver:Lcom/stericsson/hardware/fm/FmTransmitterService$OnExtraCommandReceiver;
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mOnExtraCommandReceivers:Ljava/util/HashMap;

    invoke-virtual {v3, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 718
    const-string v3, "FmTransmitterService"

    const-string v4, "addOnExtraCommandListener(), new receiver added"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 720
    :try_start_0
    invoke-virtual {v2}, Lcom/stericsson/hardware/fm/FmTransmitterService$OnExtraCommandReceiver;->getListener()Lcom/stericsson/hardware/fm/IOnExtraCommandListener;

    move-result-object v3

    invoke-interface {v3}, Lcom/stericsson/hardware/fm/IOnExtraCommandListener;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v2, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 725
    :cond_1
    :goto_0
    return-void

    .line 721
    :catch_0
    move-exception v1

    .line 722
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
    .line 638
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mContext:Landroid/content/Context;

    const-string v4, "com.stericsson.permission.FM_RADIO_TRANSMITTER"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    .line 640
    new-instance v3, Ljava/lang/SecurityException;

    const-string v4, "Requires FM_RADIO_TRANSMITTER permission"

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 643
    :cond_0
    invoke-interface {p1}, Lcom/stericsson/hardware/fm/IOnForcedPauseListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 644
    .local v0, binder:Landroid/os/IBinder;
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mOnForcedPauseReceivers:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stericsson/hardware/fm/FmTransmitterService$OnForcedPauseReceiver;

    .line 645
    .local v2, receiver:Lcom/stericsson/hardware/fm/FmTransmitterService$OnForcedPauseReceiver;
    if-nez v2, :cond_1

    .line 646
    new-instance v2, Lcom/stericsson/hardware/fm/FmTransmitterService$OnForcedPauseReceiver;

    .end local v2           #receiver:Lcom/stericsson/hardware/fm/FmTransmitterService$OnForcedPauseReceiver;
    invoke-direct {v2, p0, p1}, Lcom/stericsson/hardware/fm/FmTransmitterService$OnForcedPauseReceiver;-><init>(Lcom/stericsson/hardware/fm/FmTransmitterService;Lcom/stericsson/hardware/fm/IOnForcedPauseListener;)V

    .line 647
    .restart local v2       #receiver:Lcom/stericsson/hardware/fm/FmTransmitterService$OnForcedPauseReceiver;
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mOnForcedPauseReceivers:Ljava/util/HashMap;

    invoke-virtual {v3, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 648
    const-string v3, "FmTransmitterService"

    const-string v4, "addOnForcedPauseListener(), new receiver added"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    :try_start_0
    invoke-virtual {v2}, Lcom/stericsson/hardware/fm/FmTransmitterService$OnForcedPauseReceiver;->getListener()Lcom/stericsson/hardware/fm/IOnForcedPauseListener;

    move-result-object v3

    invoke-interface {v3}, Lcom/stericsson/hardware/fm/IOnForcedPauseListener;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v2, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 655
    :cond_1
    :goto_0
    return-void

    .line 651
    :catch_0
    move-exception v1

    .line 652
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
    .line 673
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mContext:Landroid/content/Context;

    const-string v4, "com.stericsson.permission.FM_RADIO_TRANSMITTER"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    .line 675
    new-instance v3, Ljava/lang/SecurityException;

    const-string v4, "Requires FM_RADIO_TRANSMITTER permission"

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 678
    :cond_0
    invoke-interface {p1}, Lcom/stericsson/hardware/fm/IOnForcedResetListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 679
    .local v0, binder:Landroid/os/IBinder;
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mOnForcedResetReceivers:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stericsson/hardware/fm/FmTransmitterService$OnForcedResetReceiver;

    .line 680
    .local v2, receiver:Lcom/stericsson/hardware/fm/FmTransmitterService$OnForcedResetReceiver;
    if-nez v2, :cond_1

    .line 681
    new-instance v2, Lcom/stericsson/hardware/fm/FmTransmitterService$OnForcedResetReceiver;

    .end local v2           #receiver:Lcom/stericsson/hardware/fm/FmTransmitterService$OnForcedResetReceiver;
    invoke-direct {v2, p0, p1}, Lcom/stericsson/hardware/fm/FmTransmitterService$OnForcedResetReceiver;-><init>(Lcom/stericsson/hardware/fm/FmTransmitterService;Lcom/stericsson/hardware/fm/IOnForcedResetListener;)V

    .line 682
    .restart local v2       #receiver:Lcom/stericsson/hardware/fm/FmTransmitterService$OnForcedResetReceiver;
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mOnForcedResetReceivers:Ljava/util/HashMap;

    invoke-virtual {v3, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 683
    const-string v3, "FmTransmitterService"

    const-string v4, "addOnForcedResetListener(), new receiver added"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    :try_start_0
    invoke-virtual {v2}, Lcom/stericsson/hardware/fm/FmTransmitterService$OnForcedResetReceiver;->getListener()Lcom/stericsson/hardware/fm/IOnForcedResetListener;

    move-result-object v3

    invoke-interface {v3}, Lcom/stericsson/hardware/fm/IOnForcedResetListener;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v2, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 690
    :cond_1
    :goto_0
    return-void

    .line 686
    :catch_0
    move-exception v1

    .line 687
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
    .line 533
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mContext:Landroid/content/Context;

    const-string v4, "com.stericsson.permission.FM_RADIO_TRANSMITTER"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    .line 535
    new-instance v3, Ljava/lang/SecurityException;

    const-string v4, "Requires FM_RADIO_TRANSMITTER permission"

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 538
    :cond_0
    invoke-interface {p1}, Lcom/stericsson/hardware/fm/IOnStartedListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 539
    .local v0, binder:Landroid/os/IBinder;
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mOnStartedReceivers:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stericsson/hardware/fm/FmTransmitterService$OnStartedReceiver;

    .line 540
    .local v2, receiver:Lcom/stericsson/hardware/fm/FmTransmitterService$OnStartedReceiver;
    if-nez v2, :cond_1

    .line 541
    new-instance v2, Lcom/stericsson/hardware/fm/FmTransmitterService$OnStartedReceiver;

    .end local v2           #receiver:Lcom/stericsson/hardware/fm/FmTransmitterService$OnStartedReceiver;
    invoke-direct {v2, p0, p1}, Lcom/stericsson/hardware/fm/FmTransmitterService$OnStartedReceiver;-><init>(Lcom/stericsson/hardware/fm/FmTransmitterService;Lcom/stericsson/hardware/fm/IOnStartedListener;)V

    .line 542
    .restart local v2       #receiver:Lcom/stericsson/hardware/fm/FmTransmitterService$OnStartedReceiver;
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mOnStartedReceivers:Ljava/util/HashMap;

    invoke-virtual {v3, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 543
    const-string v3, "FmTransmitterService"

    const-string v4, "addOnStartedListener(), new receiver added"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    :try_start_0
    invoke-virtual {v2}, Lcom/stericsson/hardware/fm/FmTransmitterService$OnStartedReceiver;->getListener()Lcom/stericsson/hardware/fm/IOnStartedListener;

    move-result-object v3

    invoke-interface {v3}, Lcom/stericsson/hardware/fm/IOnStartedListener;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v2, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 550
    :cond_1
    :goto_0
    return-void

    .line 546
    :catch_0
    move-exception v1

    .line 547
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
    .line 498
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mContext:Landroid/content/Context;

    const-string v4, "com.stericsson.permission.FM_RADIO_TRANSMITTER"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    .line 500
    new-instance v3, Ljava/lang/SecurityException;

    const-string v4, "Requires FM_RADIO_TRANSMITTER permission"

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 503
    :cond_0
    invoke-interface {p1}, Lcom/stericsson/hardware/fm/IOnStateChangedListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 504
    .local v0, binder:Landroid/os/IBinder;
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mOnStateChangedReceivers:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stericsson/hardware/fm/FmTransmitterService$OnStateChangedReceiver;

    .line 505
    .local v2, receiver:Lcom/stericsson/hardware/fm/FmTransmitterService$OnStateChangedReceiver;
    if-nez v2, :cond_1

    .line 506
    new-instance v2, Lcom/stericsson/hardware/fm/FmTransmitterService$OnStateChangedReceiver;

    .end local v2           #receiver:Lcom/stericsson/hardware/fm/FmTransmitterService$OnStateChangedReceiver;
    invoke-direct {v2, p0, p1}, Lcom/stericsson/hardware/fm/FmTransmitterService$OnStateChangedReceiver;-><init>(Lcom/stericsson/hardware/fm/FmTransmitterService;Lcom/stericsson/hardware/fm/IOnStateChangedListener;)V

    .line 507
    .restart local v2       #receiver:Lcom/stericsson/hardware/fm/FmTransmitterService$OnStateChangedReceiver;
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mOnStateChangedReceivers:Ljava/util/HashMap;

    invoke-virtual {v3, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 508
    const-string v3, "FmTransmitterService"

    const-string v4, "addOnStateChangedListener(), new receiver added"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    :try_start_0
    invoke-virtual {v2}, Lcom/stericsson/hardware/fm/FmTransmitterService$OnStateChangedReceiver;->getListener()Lcom/stericsson/hardware/fm/IOnStateChangedListener;

    move-result-object v3

    invoke-interface {v3}, Lcom/stericsson/hardware/fm/IOnStateChangedListener;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v2, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 515
    :cond_1
    :goto_0
    return-void

    .line 511
    :catch_0
    move-exception v1

    .line 512
    .local v1, ex:Landroid/os/RemoteException;
    const-string v3, "FmTransmitterService"

    const-string v4, "linkToDeath failed:"

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getFrequency()I
    .locals 2

    .prologue
    .line 444
    iget-object v0, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mContext:Landroid/content/Context;

    const-string v1, "com.stericsson.permission.FM_RADIO_TRANSMITTER"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 446
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires FM_RADIO_TRANSMITTER permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 449
    :cond_0
    invoke-direct {p0}, Lcom/stericsson/hardware/fm/FmTransmitterService;->_fm_transmitter_getFrequency()I

    move-result v0

    return v0
.end method

.method public getState()I
    .locals 2

    .prologue
    .line 426
    iget-object v0, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mContext:Landroid/content/Context;

    const-string v1, "com.stericsson.permission.FM_RADIO_TRANSMITTER"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 428
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires FM_RADIO_TRANSMITTER permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 431
    :cond_0
    invoke-direct {p0}, Lcom/stericsson/hardware/fm/FmTransmitterService;->_fm_transmitter_getState()I

    move-result v0

    return v0
.end method

.method public isBlockScanSupported()Z
    .locals 2

    .prologue
    .line 453
    iget-object v0, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mContext:Landroid/content/Context;

    const-string v1, "com.stericsson.permission.FM_RADIO_TRANSMITTER"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 455
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires FM_RADIO_TRANSMITTER permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 458
    :cond_0
    invoke-direct {p0}, Lcom/stericsson/hardware/fm/FmTransmitterService;->_fm_transmitter_isBlockScanSupported()Z

    move-result v0

    return v0
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 408
    iget-object v0, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mContext:Landroid/content/Context;

    const-string v1, "com.stericsson.permission.FM_RADIO_TRANSMITTER"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 410
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires FM_RADIO_TRANSMITTER permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 413
    :cond_0
    invoke-direct {p0}, Lcom/stericsson/hardware/fm/FmTransmitterService;->_fm_transmitter_pause()V

    .line 414
    return-void
.end method

.method public removeOnBlockScanListener(Lcom/stericsson/hardware/fm/IOnBlockScanListener;)V
    .locals 4
    .parameter "listener"

    .prologue
    .line 623
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mContext:Landroid/content/Context;

    const-string v3, "com.stericsson.permission.FM_RADIO_TRANSMITTER"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 625
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Requires FM_RADIO_TRANSMITTER permission"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 628
    :cond_0
    invoke-interface {p1}, Lcom/stericsson/hardware/fm/IOnBlockScanListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 629
    .local v0, binder:Landroid/os/IBinder;
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mOnBlockScanReceivers:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stericsson/hardware/fm/FmTransmitterService$OnBlockScanReceiver;

    .line 630
    .local v1, receiver:Lcom/stericsson/hardware/fm/FmTransmitterService$OnBlockScanReceiver;
    if-eqz v1, :cond_1

    .line 631
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mOnBlockScanReceivers:Ljava/util/HashMap;

    iget-object v3, v1, Lcom/stericsson/hardware/fm/FmTransmitterService$OnBlockScanReceiver;->mKey:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 632
    const-string v2, "FmTransmitterService"

    const-string/jumbo v3, "removeOnBlockScanListener(), receiver removed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    invoke-virtual {v1}, Lcom/stericsson/hardware/fm/FmTransmitterService$OnBlockScanReceiver;->getListener()Lcom/stericsson/hardware/fm/IOnBlockScanListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/stericsson/hardware/fm/IOnBlockScanListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 635
    :cond_1
    return-void
.end method

.method public removeOnErrorListener(Lcom/stericsson/hardware/fm/IOnErrorListener;)V
    .locals 4
    .parameter "listener"

    .prologue
    .line 588
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mContext:Landroid/content/Context;

    const-string v3, "com.stericsson.permission.FM_RADIO_TRANSMITTER"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 590
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Requires FM_RADIO_TRANSMITTER permission"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 593
    :cond_0
    invoke-interface {p1}, Lcom/stericsson/hardware/fm/IOnErrorListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 594
    .local v0, binder:Landroid/os/IBinder;
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mOnErrorReceivers:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stericsson/hardware/fm/FmTransmitterService$OnErrorReceiver;

    .line 595
    .local v1, receiver:Lcom/stericsson/hardware/fm/FmTransmitterService$OnErrorReceiver;
    if-eqz v1, :cond_1

    .line 596
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mOnErrorReceivers:Ljava/util/HashMap;

    iget-object v3, v1, Lcom/stericsson/hardware/fm/FmTransmitterService$OnErrorReceiver;->mKey:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 597
    const-string v2, "FmTransmitterService"

    const-string/jumbo v3, "removeOnErrorListener(), receiver removed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    invoke-virtual {v1}, Lcom/stericsson/hardware/fm/FmTransmitterService$OnErrorReceiver;->getListener()Lcom/stericsson/hardware/fm/IOnErrorListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/stericsson/hardware/fm/IOnErrorListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 600
    :cond_1
    return-void
.end method

.method public removeOnExtraCommandListener(Lcom/stericsson/hardware/fm/IOnExtraCommandListener;)V
    .locals 4
    .parameter "listener"

    .prologue
    .line 728
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mContext:Landroid/content/Context;

    const-string v3, "com.stericsson.permission.FM_RADIO_TRANSMITTER"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 730
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Requires FM_RADIO_TRANSMITTER permission"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 733
    :cond_0
    invoke-interface {p1}, Lcom/stericsson/hardware/fm/IOnExtraCommandListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 734
    .local v0, binder:Landroid/os/IBinder;
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mOnExtraCommandReceivers:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stericsson/hardware/fm/FmTransmitterService$OnExtraCommandReceiver;

    .line 735
    .local v1, receiver:Lcom/stericsson/hardware/fm/FmTransmitterService$OnExtraCommandReceiver;
    if-eqz v1, :cond_1

    .line 736
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mOnExtraCommandReceivers:Ljava/util/HashMap;

    iget-object v3, v1, Lcom/stericsson/hardware/fm/FmTransmitterService$OnExtraCommandReceiver;->mKey:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 737
    const-string v2, "FmTransmitterService"

    const-string/jumbo v3, "removeOnExtraCommandListener(), receiver removed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    invoke-virtual {v1}, Lcom/stericsson/hardware/fm/FmTransmitterService$OnExtraCommandReceiver;->getListener()Lcom/stericsson/hardware/fm/IOnExtraCommandListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/stericsson/hardware/fm/IOnExtraCommandListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 740
    :cond_1
    return-void
.end method

.method public removeOnForcedPauseListener(Lcom/stericsson/hardware/fm/IOnForcedPauseListener;)V
    .locals 4
    .parameter "listener"

    .prologue
    .line 658
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mContext:Landroid/content/Context;

    const-string v3, "com.stericsson.permission.FM_RADIO_TRANSMITTER"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 660
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Requires FM_RADIO_TRANSMITTER permission"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 663
    :cond_0
    invoke-interface {p1}, Lcom/stericsson/hardware/fm/IOnForcedPauseListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 664
    .local v0, binder:Landroid/os/IBinder;
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mOnForcedPauseReceivers:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stericsson/hardware/fm/FmTransmitterService$OnForcedPauseReceiver;

    .line 665
    .local v1, receiver:Lcom/stericsson/hardware/fm/FmTransmitterService$OnForcedPauseReceiver;
    if-eqz v1, :cond_1

    .line 666
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mOnForcedPauseReceivers:Ljava/util/HashMap;

    iget-object v3, v1, Lcom/stericsson/hardware/fm/FmTransmitterService$OnForcedPauseReceiver;->mKey:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 667
    const-string v2, "FmTransmitterService"

    const-string/jumbo v3, "removeOnForcedPauseListener(), receiver removed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    invoke-virtual {v1}, Lcom/stericsson/hardware/fm/FmTransmitterService$OnForcedPauseReceiver;->getListener()Lcom/stericsson/hardware/fm/IOnForcedPauseListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/stericsson/hardware/fm/IOnForcedPauseListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 670
    :cond_1
    return-void
.end method

.method public removeOnForcedResetListener(Lcom/stericsson/hardware/fm/IOnForcedResetListener;)V
    .locals 4
    .parameter "listener"

    .prologue
    .line 693
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mContext:Landroid/content/Context;

    const-string v3, "com.stericsson.permission.FM_RADIO_TRANSMITTER"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 695
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Requires FM_RADIO_TRANSMITTER permission"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 698
    :cond_0
    invoke-interface {p1}, Lcom/stericsson/hardware/fm/IOnForcedResetListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 699
    .local v0, binder:Landroid/os/IBinder;
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mOnForcedResetReceivers:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stericsson/hardware/fm/FmTransmitterService$OnForcedResetReceiver;

    .line 700
    .local v1, receiver:Lcom/stericsson/hardware/fm/FmTransmitterService$OnForcedResetReceiver;
    if-eqz v1, :cond_1

    .line 701
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mOnForcedResetReceivers:Ljava/util/HashMap;

    iget-object v3, v1, Lcom/stericsson/hardware/fm/FmTransmitterService$OnForcedResetReceiver;->mKey:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 702
    const-string v2, "FmTransmitterService"

    const-string/jumbo v3, "removeOnForcedResetListener(), receiver removed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 703
    invoke-virtual {v1}, Lcom/stericsson/hardware/fm/FmTransmitterService$OnForcedResetReceiver;->getListener()Lcom/stericsson/hardware/fm/IOnForcedResetListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/stericsson/hardware/fm/IOnForcedResetListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 705
    :cond_1
    return-void
.end method

.method public removeOnStartedListener(Lcom/stericsson/hardware/fm/IOnStartedListener;)V
    .locals 4
    .parameter "listener"

    .prologue
    .line 553
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mContext:Landroid/content/Context;

    const-string v3, "com.stericsson.permission.FM_RADIO_TRANSMITTER"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 555
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Requires FM_RADIO_TRANSMITTER permission"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 558
    :cond_0
    invoke-interface {p1}, Lcom/stericsson/hardware/fm/IOnStartedListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 559
    .local v0, binder:Landroid/os/IBinder;
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mOnStartedReceivers:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stericsson/hardware/fm/FmTransmitterService$OnStartedReceiver;

    .line 560
    .local v1, receiver:Lcom/stericsson/hardware/fm/FmTransmitterService$OnStartedReceiver;
    if-eqz v1, :cond_1

    .line 561
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mOnStartedReceivers:Ljava/util/HashMap;

    iget-object v3, v1, Lcom/stericsson/hardware/fm/FmTransmitterService$OnStartedReceiver;->mKey:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 562
    const-string v2, "FmTransmitterService"

    const-string/jumbo v3, "removeOnStartedListener(), receiver removed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    invoke-virtual {v1}, Lcom/stericsson/hardware/fm/FmTransmitterService$OnStartedReceiver;->getListener()Lcom/stericsson/hardware/fm/IOnStartedListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/stericsson/hardware/fm/IOnStartedListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 565
    :cond_1
    return-void
.end method

.method public removeOnStateChangedListener(Lcom/stericsson/hardware/fm/IOnStateChangedListener;)V
    .locals 4
    .parameter "listener"

    .prologue
    .line 518
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mContext:Landroid/content/Context;

    const-string v3, "com.stericsson.permission.FM_RADIO_TRANSMITTER"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 520
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Requires FM_RADIO_TRANSMITTER permission"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 523
    :cond_0
    invoke-interface {p1}, Lcom/stericsson/hardware/fm/IOnStateChangedListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 524
    .local v0, binder:Landroid/os/IBinder;
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mOnStateChangedReceivers:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stericsson/hardware/fm/FmTransmitterService$OnStateChangedReceiver;

    .line 525
    .local v1, receiver:Lcom/stericsson/hardware/fm/FmTransmitterService$OnStateChangedReceiver;
    if-eqz v1, :cond_1

    .line 526
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mOnStateChangedReceivers:Ljava/util/HashMap;

    iget-object v3, v1, Lcom/stericsson/hardware/fm/FmTransmitterService$OnStateChangedReceiver;->mKey:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 527
    const-string v2, "FmTransmitterService"

    const-string/jumbo v3, "removeOnStateChangedListener(), receiver removed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    invoke-virtual {v1}, Lcom/stericsson/hardware/fm/FmTransmitterService$OnStateChangedReceiver;->getListener()Lcom/stericsson/hardware/fm/IOnStateChangedListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/stericsson/hardware/fm/IOnStateChangedListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 530
    :cond_1
    return-void
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 399
    iget-object v0, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mContext:Landroid/content/Context;

    const-string v1, "com.stericsson.permission.FM_RADIO_TRANSMITTER"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 401
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires FM_RADIO_TRANSMITTER permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 404
    :cond_0
    invoke-direct {p0}, Lcom/stericsson/hardware/fm/FmTransmitterService;->_fm_transmitter_reset()I

    .line 405
    return-void
.end method

.method public resume()V
    .locals 2

    .prologue
    .line 417
    iget-object v0, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mContext:Landroid/content/Context;

    const-string v1, "com.stericsson.permission.FM_RADIO_TRANSMITTER"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 419
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires FM_RADIO_TRANSMITTER permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 422
    :cond_0
    invoke-direct {p0}, Lcom/stericsson/hardware/fm/FmTransmitterService;->_fm_transmitter_resume()V

    .line 423
    return-void
.end method

.method public sendExtraCommand(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 2
    .parameter "command"
    .parameter "extras"

    .prologue
    .line 489
    iget-object v0, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mContext:Landroid/content/Context;

    const-string v1, "com.stericsson.permission.FM_RADIO_TRANSMITTER"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 491
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires FM_RADIO_TRANSMITTER permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 494
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/stericsson/hardware/fm/FmTransmitterService;->_fm_transmitter_sendExtraCommand(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setFrequency(I)V
    .locals 2
    .parameter "frequency"

    .prologue
    .line 435
    iget-object v0, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mContext:Landroid/content/Context;

    const-string v1, "com.stericsson.permission.FM_RADIO_TRANSMITTER"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 437
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires FM_RADIO_TRANSMITTER permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 440
    :cond_0
    invoke-direct {p0, p1}, Lcom/stericsson/hardware/fm/FmTransmitterService;->_fm_transmitter_setFrequency(I)V

    .line 441
    return-void
.end method

.method public setRdsData(Landroid/os/Bundle;)V
    .locals 2
    .parameter "rdsData"

    .prologue
    .line 480
    iget-object v0, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mContext:Landroid/content/Context;

    const-string v1, "com.stericsson.permission.FM_RADIO_TRANSMITTER"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 482
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires FM_RADIO_TRANSMITTER permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 485
    :cond_0
    invoke-direct {p0, p1}, Lcom/stericsson/hardware/fm/FmTransmitterService;->_fm_transmitter_setRdsData(Landroid/os/Bundle;)V

    .line 486
    return-void
.end method

.method public start(Lcom/stericsson/hardware/fm/FmBand;)V
    .locals 4
    .parameter "band"

    .prologue
    .line 379
    iget-object v0, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mContext:Landroid/content/Context;

    const-string v1, "com.stericsson.permission.FM_RADIO_TRANSMITTER"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 381
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires FM_RADIO_TRANSMITTER permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 384
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

    .line 386
    return-void
.end method

.method public startAsync(Lcom/stericsson/hardware/fm/FmBand;)V
    .locals 4
    .parameter "band"

    .prologue
    .line 389
    iget-object v0, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mContext:Landroid/content/Context;

    const-string v1, "com.stericsson.permission.FM_RADIO_TRANSMITTER"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 391
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires FM_RADIO_TRANSMITTER permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 394
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

    .line 396
    return-void
.end method

.method public startBlockScan(II)V
    .locals 2
    .parameter "startFrequency"
    .parameter "endFrequency"

    .prologue
    .line 462
    iget-object v0, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mContext:Landroid/content/Context;

    const-string v1, "com.stericsson.permission.FM_RADIO_TRANSMITTER"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 464
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires FM_RADIO_TRANSMITTER permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 467
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/stericsson/hardware/fm/FmTransmitterService;->_fm_transmitter_startBlockScan(II)V

    .line 468
    return-void
.end method

.method public stopScan()V
    .locals 2

    .prologue
    .line 471
    iget-object v0, p0, Lcom/stericsson/hardware/fm/FmTransmitterService;->mContext:Landroid/content/Context;

    const-string v1, "com.stericsson.permission.FM_RADIO_TRANSMITTER"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 473
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires FM_RADIO_TRANSMITTER permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 476
    :cond_0
    invoke-direct {p0}, Lcom/stericsson/hardware/fm/FmTransmitterService;->_fm_transmitter_stopScan()V

    .line 477
    return-void
.end method

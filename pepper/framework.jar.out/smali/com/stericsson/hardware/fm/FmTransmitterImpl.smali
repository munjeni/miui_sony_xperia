.class public Lcom/stericsson/hardware/fm/FmTransmitterImpl;
.super Lcom/stericsson/hardware/fm/FmTransmitter;
.source "FmTransmitterImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stericsson/hardware/fm/FmTransmitterImpl$OnExtraCommandListenerTransport;,
        Lcom/stericsson/hardware/fm/FmTransmitterImpl$OnForcedResetListenerTransport;,
        Lcom/stericsson/hardware/fm/FmTransmitterImpl$OnForcedPauseListenerTransport;,
        Lcom/stericsson/hardware/fm/FmTransmitterImpl$OnBlockScanListenerTransport;,
        Lcom/stericsson/hardware/fm/FmTransmitterImpl$OnErrorListenerTransport;,
        Lcom/stericsson/hardware/fm/FmTransmitterImpl$OnStartedListenerTransport;,
        Lcom/stericsson/hardware/fm/FmTransmitterImpl$OnStateChangedListenerTransport;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FmTransmitter"


# instance fields
.field private mBand:Lcom/stericsson/hardware/fm/FmBand;

.field private mOnBlockScan:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/stericsson/hardware/fm/FmTransmitter$OnScanListener;",
            "Lcom/stericsson/hardware/fm/FmTransmitterImpl$OnBlockScanListenerTransport;",
            ">;"
        }
    .end annotation
.end field

.field private mOnError:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/stericsson/hardware/fm/FmTransmitter$OnErrorListener;",
            "Lcom/stericsson/hardware/fm/FmTransmitterImpl$OnErrorListenerTransport;",
            ">;"
        }
    .end annotation
.end field

.field private mOnExtraCommand:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/stericsson/hardware/fm/FmTransmitter$OnExtraCommandListener;",
            "Lcom/stericsson/hardware/fm/FmTransmitterImpl$OnExtraCommandListenerTransport;",
            ">;"
        }
    .end annotation
.end field

.field private mOnForcedPause:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/stericsson/hardware/fm/FmTransmitter$OnForcedPauseListener;",
            "Lcom/stericsson/hardware/fm/FmTransmitterImpl$OnForcedPauseListenerTransport;",
            ">;"
        }
    .end annotation
.end field

.field private mOnForcedReset:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/stericsson/hardware/fm/FmTransmitter$OnForcedResetListener;",
            "Lcom/stericsson/hardware/fm/FmTransmitterImpl$OnForcedResetListenerTransport;",
            ">;"
        }
    .end annotation
.end field

.field private mOnStarted:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/stericsson/hardware/fm/FmTransmitter$OnStartedListener;",
            "Lcom/stericsson/hardware/fm/FmTransmitterImpl$OnStartedListenerTransport;",
            ">;"
        }
    .end annotation
.end field

.field private mOnStateChanged:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/stericsson/hardware/fm/FmTransmitter$OnStateChangedListener;",
            "Lcom/stericsson/hardware/fm/FmTransmitterImpl$OnStateChangedListenerTransport;",
            ">;"
        }
    .end annotation
.end field

.field private mService:Lcom/stericsson/hardware/fm/IFmTransmitter;


# direct methods
.method public constructor <init>(Lcom/stericsson/hardware/fm/IFmTransmitter;)V
    .locals 1
    .parameter "service"

    .prologue
    .line 359
    invoke-direct {p0}, Lcom/stericsson/hardware/fm/FmTransmitter;-><init>()V

    .line 53
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/stericsson/hardware/fm/FmTransmitterImpl;->mOnStateChanged:Ljava/util/HashMap;

    .line 59
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/stericsson/hardware/fm/FmTransmitterImpl;->mOnStarted:Ljava/util/HashMap;

    .line 65
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/stericsson/hardware/fm/FmTransmitterImpl;->mOnError:Ljava/util/HashMap;

    .line 71
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/stericsson/hardware/fm/FmTransmitterImpl;->mOnBlockScan:Ljava/util/HashMap;

    .line 77
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/stericsson/hardware/fm/FmTransmitterImpl;->mOnForcedPause:Ljava/util/HashMap;

    .line 83
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/stericsson/hardware/fm/FmTransmitterImpl;->mOnForcedReset:Ljava/util/HashMap;

    .line 89
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/stericsson/hardware/fm/FmTransmitterImpl;->mOnExtraCommand:Ljava/util/HashMap;

    .line 360
    iput-object p1, p0, Lcom/stericsson/hardware/fm/FmTransmitterImpl;->mService:Lcom/stericsson/hardware/fm/IFmTransmitter;

    .line 361
    return-void
.end method


# virtual methods
.method public addOnErrorListener(Lcom/stericsson/hardware/fm/FmTransmitter$OnErrorListener;)V
    .locals 4
    .parameter "listener"

    .prologue
    .line 557
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmTransmitterImpl;->mOnError:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 570
    :goto_0
    return-void

    .line 562
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmTransmitterImpl;->mOnError:Ljava/util/HashMap;

    monitor-enter v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 563
    :try_start_1
    new-instance v1, Lcom/stericsson/hardware/fm/FmTransmitterImpl$OnErrorListenerTransport;

    invoke-direct {v1, p1}, Lcom/stericsson/hardware/fm/FmTransmitterImpl$OnErrorListenerTransport;-><init>(Lcom/stericsson/hardware/fm/FmTransmitter$OnErrorListener;)V

    .line 564
    .local v1, transport:Lcom/stericsson/hardware/fm/FmTransmitterImpl$OnErrorListenerTransport;
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmTransmitterImpl;->mService:Lcom/stericsson/hardware/fm/IFmTransmitter;

    invoke-interface {v2, v1}, Lcom/stericsson/hardware/fm/IFmTransmitter;->addOnErrorListener(Lcom/stericsson/hardware/fm/IOnErrorListener;)V

    .line 565
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmTransmitterImpl;->mOnError:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 566
    monitor-exit v3

    goto :goto_0

    .end local v1           #transport:Lcom/stericsson/hardware/fm/FmTransmitterImpl$OnErrorListenerTransport;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 567
    :catch_0
    move-exception v0

    .line 568
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "FmTransmitter"

    const-string v3, "addOnErrorListener: RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public addOnExtraCommandListener(Lcom/stericsson/hardware/fm/FmTransmitter$OnExtraCommandListener;)V
    .locals 4
    .parameter "listener"

    .prologue
    .line 676
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmTransmitterImpl;->mOnExtraCommand:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 690
    :goto_0
    return-void

    .line 681
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmTransmitterImpl;->mOnExtraCommand:Ljava/util/HashMap;

    monitor-enter v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 682
    :try_start_1
    new-instance v1, Lcom/stericsson/hardware/fm/FmTransmitterImpl$OnExtraCommandListenerTransport;

    invoke-direct {v1, p1}, Lcom/stericsson/hardware/fm/FmTransmitterImpl$OnExtraCommandListenerTransport;-><init>(Lcom/stericsson/hardware/fm/FmTransmitter$OnExtraCommandListener;)V

    .line 684
    .local v1, transport:Lcom/stericsson/hardware/fm/FmTransmitterImpl$OnExtraCommandListenerTransport;
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmTransmitterImpl;->mService:Lcom/stericsson/hardware/fm/IFmTransmitter;

    invoke-interface {v2, v1}, Lcom/stericsson/hardware/fm/IFmTransmitter;->addOnExtraCommandListener(Lcom/stericsson/hardware/fm/IOnExtraCommandListener;)V

    .line 685
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmTransmitterImpl;->mOnExtraCommand:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 686
    monitor-exit v3

    goto :goto_0

    .end local v1           #transport:Lcom/stericsson/hardware/fm/FmTransmitterImpl$OnExtraCommandListenerTransport;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 687
    :catch_0
    move-exception v0

    .line 688
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "FmTransmitter"

    const-string v3, "addOnExtraCommandListener: RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public addOnForcedPauseListener(Lcom/stericsson/hardware/fm/FmTransmitter$OnForcedPauseListener;)V
    .locals 4
    .parameter "listener"

    .prologue
    .line 586
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmTransmitterImpl;->mOnForcedPause:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 600
    :goto_0
    return-void

    .line 591
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmTransmitterImpl;->mOnForcedPause:Ljava/util/HashMap;

    monitor-enter v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 592
    :try_start_1
    new-instance v1, Lcom/stericsson/hardware/fm/FmTransmitterImpl$OnForcedPauseListenerTransport;

    invoke-direct {v1, p1}, Lcom/stericsson/hardware/fm/FmTransmitterImpl$OnForcedPauseListenerTransport;-><init>(Lcom/stericsson/hardware/fm/FmTransmitter$OnForcedPauseListener;)V

    .line 594
    .local v1, transport:Lcom/stericsson/hardware/fm/FmTransmitterImpl$OnForcedPauseListenerTransport;
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmTransmitterImpl;->mService:Lcom/stericsson/hardware/fm/IFmTransmitter;

    invoke-interface {v2, v1}, Lcom/stericsson/hardware/fm/IFmTransmitter;->addOnForcedPauseListener(Lcom/stericsson/hardware/fm/IOnForcedPauseListener;)V

    .line 595
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmTransmitterImpl;->mOnForcedPause:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 596
    monitor-exit v3

    goto :goto_0

    .end local v1           #transport:Lcom/stericsson/hardware/fm/FmTransmitterImpl$OnForcedPauseListenerTransport;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 597
    :catch_0
    move-exception v0

    .line 598
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "FmTransmitter"

    const-string v3, "addOnForcedPauseListener: RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public addOnForcedResetListener(Lcom/stericsson/hardware/fm/FmTransmitter$OnForcedResetListener;)V
    .locals 4
    .parameter "listener"

    .prologue
    .line 616
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmTransmitterImpl;->mOnForcedReset:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 630
    :goto_0
    return-void

    .line 621
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmTransmitterImpl;->mOnForcedReset:Ljava/util/HashMap;

    monitor-enter v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 622
    :try_start_1
    new-instance v1, Lcom/stericsson/hardware/fm/FmTransmitterImpl$OnForcedResetListenerTransport;

    invoke-direct {v1, p1}, Lcom/stericsson/hardware/fm/FmTransmitterImpl$OnForcedResetListenerTransport;-><init>(Lcom/stericsson/hardware/fm/FmTransmitter$OnForcedResetListener;)V

    .line 624
    .local v1, transport:Lcom/stericsson/hardware/fm/FmTransmitterImpl$OnForcedResetListenerTransport;
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmTransmitterImpl;->mService:Lcom/stericsson/hardware/fm/IFmTransmitter;

    invoke-interface {v2, v1}, Lcom/stericsson/hardware/fm/IFmTransmitter;->addOnForcedResetListener(Lcom/stericsson/hardware/fm/IOnForcedResetListener;)V

    .line 625
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmTransmitterImpl;->mOnForcedReset:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 626
    monitor-exit v3

    goto :goto_0

    .end local v1           #transport:Lcom/stericsson/hardware/fm/FmTransmitterImpl$OnForcedResetListenerTransport;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 627
    :catch_0
    move-exception v0

    .line 628
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "FmTransmitter"

    const-string v3, "addOnForcedResetListener: RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public addOnScanListener(Lcom/stericsson/hardware/fm/FmTransmitter$OnScanListener;)V
    .locals 4
    .parameter "listener"

    .prologue
    .line 528
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmTransmitterImpl;->mOnBlockScan:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 541
    :goto_0
    return-void

    .line 533
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmTransmitterImpl;->mOnBlockScan:Ljava/util/HashMap;

    monitor-enter v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 534
    :try_start_1
    new-instance v1, Lcom/stericsson/hardware/fm/FmTransmitterImpl$OnBlockScanListenerTransport;

    invoke-direct {v1, p1}, Lcom/stericsson/hardware/fm/FmTransmitterImpl$OnBlockScanListenerTransport;-><init>(Lcom/stericsson/hardware/fm/FmTransmitter$OnScanListener;)V

    .line 535
    .local v1, transport:Lcom/stericsson/hardware/fm/FmTransmitterImpl$OnBlockScanListenerTransport;
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmTransmitterImpl;->mService:Lcom/stericsson/hardware/fm/IFmTransmitter;

    invoke-interface {v2, v1}, Lcom/stericsson/hardware/fm/IFmTransmitter;->addOnBlockScanListener(Lcom/stericsson/hardware/fm/IOnBlockScanListener;)V

    .line 536
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmTransmitterImpl;->mOnBlockScan:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 537
    monitor-exit v3

    goto :goto_0

    .end local v1           #transport:Lcom/stericsson/hardware/fm/FmTransmitterImpl$OnBlockScanListenerTransport;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 538
    :catch_0
    move-exception v0

    .line 539
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "FmTransmitter"

    const-string v3, "addOnScanListener: RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public addOnStartedListener(Lcom/stericsson/hardware/fm/FmTransmitter$OnStartedListener;)V
    .locals 4
    .parameter "listener"

    .prologue
    .line 499
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmTransmitterImpl;->mOnStarted:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 512
    :goto_0
    return-void

    .line 504
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmTransmitterImpl;->mOnStarted:Ljava/util/HashMap;

    monitor-enter v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 505
    :try_start_1
    new-instance v1, Lcom/stericsson/hardware/fm/FmTransmitterImpl$OnStartedListenerTransport;

    invoke-direct {v1, p1}, Lcom/stericsson/hardware/fm/FmTransmitterImpl$OnStartedListenerTransport;-><init>(Lcom/stericsson/hardware/fm/FmTransmitter$OnStartedListener;)V

    .line 506
    .local v1, transport:Lcom/stericsson/hardware/fm/FmTransmitterImpl$OnStartedListenerTransport;
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmTransmitterImpl;->mService:Lcom/stericsson/hardware/fm/IFmTransmitter;

    invoke-interface {v2, v1}, Lcom/stericsson/hardware/fm/IFmTransmitter;->addOnStartedListener(Lcom/stericsson/hardware/fm/IOnStartedListener;)V

    .line 507
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmTransmitterImpl;->mOnStarted:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 508
    monitor-exit v3

    goto :goto_0

    .end local v1           #transport:Lcom/stericsson/hardware/fm/FmTransmitterImpl$OnStartedListenerTransport;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 509
    :catch_0
    move-exception v0

    .line 510
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "FmTransmitter"

    const-string v3, "addOnStartedListener: RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public addOnStateChangedListener(Lcom/stericsson/hardware/fm/FmTransmitter$OnStateChangedListener;)V
    .locals 4
    .parameter "listener"

    .prologue
    .line 646
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmTransmitterImpl;->mOnStateChanged:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 660
    :goto_0
    return-void

    .line 651
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmTransmitterImpl;->mOnStateChanged:Ljava/util/HashMap;

    monitor-enter v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 652
    :try_start_1
    new-instance v1, Lcom/stericsson/hardware/fm/FmTransmitterImpl$OnStateChangedListenerTransport;

    invoke-direct {v1, p1}, Lcom/stericsson/hardware/fm/FmTransmitterImpl$OnStateChangedListenerTransport;-><init>(Lcom/stericsson/hardware/fm/FmTransmitter$OnStateChangedListener;)V

    .line 654
    .local v1, transport:Lcom/stericsson/hardware/fm/FmTransmitterImpl$OnStateChangedListenerTransport;
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmTransmitterImpl;->mService:Lcom/stericsson/hardware/fm/IFmTransmitter;

    invoke-interface {v2, v1}, Lcom/stericsson/hardware/fm/IFmTransmitter;->addOnStateChangedListener(Lcom/stericsson/hardware/fm/IOnStateChangedListener;)V

    .line 655
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmTransmitterImpl;->mOnStateChanged:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 656
    monitor-exit v3

    goto :goto_0

    .end local v1           #transport:Lcom/stericsson/hardware/fm/FmTransmitterImpl$OnStateChangedListenerTransport;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 657
    :catch_0
    move-exception v0

    .line 658
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "FmTransmitter"

    const-string v3, "addOnStateChangedListener: RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getFrequency()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 443
    :try_start_0
    iget-object v1, p0, Lcom/stericsson/hardware/fm/FmTransmitterImpl;->mService:Lcom/stericsson/hardware/fm/IFmTransmitter;

    invoke-interface {v1}, Lcom/stericsson/hardware/fm/IFmTransmitter;->getFrequency()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 446
    :goto_0
    return v1

    .line 444
    :catch_0
    move-exception v0

    .line 445
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "FmTransmitter"

    const-string v2, "getFrequency: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 446
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getState()I
    .locals 3

    .prologue
    .line 420
    :try_start_0
    iget-object v1, p0, Lcom/stericsson/hardware/fm/FmTransmitterImpl;->mService:Lcom/stericsson/hardware/fm/IFmTransmitter;

    invoke-interface {v1}, Lcom/stericsson/hardware/fm/IFmTransmitter;->getState()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 423
    :goto_0
    return v1

    .line 421
    :catch_0
    move-exception v0

    .line 422
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "FmTransmitter"

    const-string v2, "getState: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 423
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isBlockScanSupported()Z
    .locals 3

    .prologue
    .line 462
    :try_start_0
    iget-object v1, p0, Lcom/stericsson/hardware/fm/FmTransmitterImpl;->mService:Lcom/stericsson/hardware/fm/IFmTransmitter;

    invoke-interface {v1}, Lcom/stericsson/hardware/fm/IFmTransmitter;->isBlockScanSupported()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 465
    :goto_0
    return v1

    .line 463
    :catch_0
    move-exception v0

    .line 464
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "FmTransmitter"

    const-string v2, "isBlockScanSupported: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 465
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public pause()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 401
    :try_start_0
    iget-object v1, p0, Lcom/stericsson/hardware/fm/FmTransmitterImpl;->mService:Lcom/stericsson/hardware/fm/IFmTransmitter;

    invoke-interface {v1}, Lcom/stericsson/hardware/fm/IFmTransmitter;->pause()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 405
    :goto_0
    return-void

    .line 402
    :catch_0
    move-exception v0

    .line 403
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "FmTransmitter"

    const-string/jumbo v2, "pause: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public removeOnErrorListener(Lcom/stericsson/hardware/fm/FmTransmitter$OnErrorListener;)V
    .locals 4
    .parameter "listener"

    .prologue
    .line 575
    :try_start_0
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmTransmitterImpl;->mOnError:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stericsson/hardware/fm/FmTransmitterImpl$OnErrorListenerTransport;

    .line 576
    .local v1, transport:Lcom/stericsson/hardware/fm/FmTransmitterImpl$OnErrorListenerTransport;
    if-eqz v1, :cond_0

    .line 577
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmTransmitterImpl;->mService:Lcom/stericsson/hardware/fm/IFmTransmitter;

    invoke-interface {v2, v1}, Lcom/stericsson/hardware/fm/IFmTransmitter;->removeOnErrorListener(Lcom/stericsson/hardware/fm/IOnErrorListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 582
    .end local v1           #transport:Lcom/stericsson/hardware/fm/FmTransmitterImpl$OnErrorListenerTransport;
    :cond_0
    :goto_0
    return-void

    .line 579
    :catch_0
    move-exception v0

    .line 580
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "FmTransmitter"

    const-string/jumbo v3, "removeOnErrorListener: DeadObjectException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public removeOnExtraCommandListener(Lcom/stericsson/hardware/fm/FmTransmitter$OnExtraCommandListener;)V
    .locals 4
    .parameter "listener"

    .prologue
    .line 695
    :try_start_0
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmTransmitterImpl;->mOnExtraCommand:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stericsson/hardware/fm/FmTransmitterImpl$OnExtraCommandListenerTransport;

    .line 696
    .local v1, transport:Lcom/stericsson/hardware/fm/FmTransmitterImpl$OnExtraCommandListenerTransport;
    if-eqz v1, :cond_0

    .line 697
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmTransmitterImpl;->mService:Lcom/stericsson/hardware/fm/IFmTransmitter;

    invoke-interface {v2, v1}, Lcom/stericsson/hardware/fm/IFmTransmitter;->removeOnExtraCommandListener(Lcom/stericsson/hardware/fm/IOnExtraCommandListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 702
    .end local v1           #transport:Lcom/stericsson/hardware/fm/FmTransmitterImpl$OnExtraCommandListenerTransport;
    :cond_0
    :goto_0
    return-void

    .line 699
    :catch_0
    move-exception v0

    .line 700
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "FmTransmitter"

    const-string/jumbo v3, "removeOnExtraCommandListener: DeadObjectException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public removeOnForcedPauseListener(Lcom/stericsson/hardware/fm/FmTransmitter$OnForcedPauseListener;)V
    .locals 4
    .parameter "listener"

    .prologue
    .line 605
    :try_start_0
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmTransmitterImpl;->mOnForcedPause:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stericsson/hardware/fm/FmTransmitterImpl$OnForcedPauseListenerTransport;

    .line 606
    .local v1, transport:Lcom/stericsson/hardware/fm/FmTransmitterImpl$OnForcedPauseListenerTransport;
    if-eqz v1, :cond_0

    .line 607
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmTransmitterImpl;->mService:Lcom/stericsson/hardware/fm/IFmTransmitter;

    invoke-interface {v2, v1}, Lcom/stericsson/hardware/fm/IFmTransmitter;->removeOnForcedPauseListener(Lcom/stericsson/hardware/fm/IOnForcedPauseListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 612
    .end local v1           #transport:Lcom/stericsson/hardware/fm/FmTransmitterImpl$OnForcedPauseListenerTransport;
    :cond_0
    :goto_0
    return-void

    .line 609
    :catch_0
    move-exception v0

    .line 610
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "FmTransmitter"

    const-string/jumbo v3, "removeOnForcedPauseListener: DeadObjectException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public removeOnForcedResetListener(Lcom/stericsson/hardware/fm/FmTransmitter$OnForcedResetListener;)V
    .locals 4
    .parameter "listener"

    .prologue
    .line 635
    :try_start_0
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmTransmitterImpl;->mOnForcedReset:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stericsson/hardware/fm/FmTransmitterImpl$OnForcedResetListenerTransport;

    .line 636
    .local v1, transport:Lcom/stericsson/hardware/fm/FmTransmitterImpl$OnForcedResetListenerTransport;
    if-eqz v1, :cond_0

    .line 637
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmTransmitterImpl;->mService:Lcom/stericsson/hardware/fm/IFmTransmitter;

    invoke-interface {v2, v1}, Lcom/stericsson/hardware/fm/IFmTransmitter;->removeOnForcedResetListener(Lcom/stericsson/hardware/fm/IOnForcedResetListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 642
    .end local v1           #transport:Lcom/stericsson/hardware/fm/FmTransmitterImpl$OnForcedResetListenerTransport;
    :cond_0
    :goto_0
    return-void

    .line 639
    :catch_0
    move-exception v0

    .line 640
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "FmTransmitter"

    const-string/jumbo v3, "removeOnForcedResetListener: DeadObjectException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public removeOnScanListener(Lcom/stericsson/hardware/fm/FmTransmitter$OnScanListener;)V
    .locals 4
    .parameter "listener"

    .prologue
    .line 546
    :try_start_0
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmTransmitterImpl;->mOnBlockScan:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stericsson/hardware/fm/FmTransmitterImpl$OnBlockScanListenerTransport;

    .line 547
    .local v1, transport:Lcom/stericsson/hardware/fm/FmTransmitterImpl$OnBlockScanListenerTransport;
    if-eqz v1, :cond_0

    .line 548
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmTransmitterImpl;->mService:Lcom/stericsson/hardware/fm/IFmTransmitter;

    invoke-interface {v2, v1}, Lcom/stericsson/hardware/fm/IFmTransmitter;->removeOnBlockScanListener(Lcom/stericsson/hardware/fm/IOnBlockScanListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 553
    .end local v1           #transport:Lcom/stericsson/hardware/fm/FmTransmitterImpl$OnBlockScanListenerTransport;
    :cond_0
    :goto_0
    return-void

    .line 550
    :catch_0
    move-exception v0

    .line 551
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "FmTransmitter"

    const-string/jumbo v3, "removeOnScanListener: DeadObjectException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public removeOnStartedListener(Lcom/stericsson/hardware/fm/FmTransmitter$OnStartedListener;)V
    .locals 4
    .parameter "listener"

    .prologue
    .line 517
    :try_start_0
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmTransmitterImpl;->mOnStarted:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stericsson/hardware/fm/FmTransmitterImpl$OnStartedListenerTransport;

    .line 518
    .local v1, transport:Lcom/stericsson/hardware/fm/FmTransmitterImpl$OnStartedListenerTransport;
    if-eqz v1, :cond_0

    .line 519
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmTransmitterImpl;->mService:Lcom/stericsson/hardware/fm/IFmTransmitter;

    invoke-interface {v2, v1}, Lcom/stericsson/hardware/fm/IFmTransmitter;->removeOnStartedListener(Lcom/stericsson/hardware/fm/IOnStartedListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 524
    .end local v1           #transport:Lcom/stericsson/hardware/fm/FmTransmitterImpl$OnStartedListenerTransport;
    :cond_0
    :goto_0
    return-void

    .line 521
    :catch_0
    move-exception v0

    .line 522
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "FmTransmitter"

    const-string/jumbo v3, "removeOnStartedListener: DeadObjectException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public removeOnStateChangedListener(Lcom/stericsson/hardware/fm/FmTransmitter$OnStateChangedListener;)V
    .locals 4
    .parameter "listener"

    .prologue
    .line 665
    :try_start_0
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmTransmitterImpl;->mOnStateChanged:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stericsson/hardware/fm/FmTransmitterImpl$OnStateChangedListenerTransport;

    .line 666
    .local v1, transport:Lcom/stericsson/hardware/fm/FmTransmitterImpl$OnStateChangedListenerTransport;
    if-eqz v1, :cond_0

    .line 667
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmTransmitterImpl;->mService:Lcom/stericsson/hardware/fm/IFmTransmitter;

    invoke-interface {v2, v1}, Lcom/stericsson/hardware/fm/IFmTransmitter;->removeOnStateChangedListener(Lcom/stericsson/hardware/fm/IOnStateChangedListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 672
    .end local v1           #transport:Lcom/stericsson/hardware/fm/FmTransmitterImpl$OnStateChangedListenerTransport;
    :cond_0
    :goto_0
    return-void

    .line 669
    :catch_0
    move-exception v0

    .line 670
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "FmTransmitter"

    const-string/jumbo v3, "removeOnStateChangedListener: DeadObjectException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public reset()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 410
    :try_start_0
    iget-object v1, p0, Lcom/stericsson/hardware/fm/FmTransmitterImpl;->mService:Lcom/stericsson/hardware/fm/IFmTransmitter;

    invoke-interface {v1}, Lcom/stericsson/hardware/fm/IFmTransmitter;->reset()V

    .line 411
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/stericsson/hardware/fm/FmTransmitterImpl;->mBand:Lcom/stericsson/hardware/fm/FmBand;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 415
    :goto_0
    return-void

    .line 412
    :catch_0
    move-exception v0

    .line 413
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "FmTransmitter"

    const-string/jumbo v2, "reset: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public resume()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 392
    :try_start_0
    iget-object v1, p0, Lcom/stericsson/hardware/fm/FmTransmitterImpl;->mService:Lcom/stericsson/hardware/fm/IFmTransmitter;

    invoke-interface {v1}, Lcom/stericsson/hardware/fm/IFmTransmitter;->resume()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 396
    :goto_0
    return-void

    .line 393
    :catch_0
    move-exception v0

    .line 394
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "FmTransmitter"

    const-string/jumbo v2, "resume: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public sendExtraCommand(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 3
    .parameter "command"
    .parameter "extras"

    .prologue
    .line 490
    :try_start_0
    iget-object v1, p0, Lcom/stericsson/hardware/fm/FmTransmitterImpl;->mService:Lcom/stericsson/hardware/fm/IFmTransmitter;

    invoke-interface {v1, p1, p2}, Lcom/stericsson/hardware/fm/IFmTransmitter;->sendExtraCommand(Ljava/lang/String;[Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 493
    :goto_0
    return v1

    .line 491
    :catch_0
    move-exception v0

    .line 492
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "FmTransmitter"

    const-string/jumbo v2, "sendExtraCommand: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 493
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setFrequency(I)V
    .locals 3
    .parameter "frequency"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 429
    iget-object v1, p0, Lcom/stericsson/hardware/fm/FmTransmitterImpl;->mBand:Lcom/stericsson/hardware/fm/FmBand;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/stericsson/hardware/fm/FmTransmitterImpl;->mBand:Lcom/stericsson/hardware/fm/FmBand;

    invoke-virtual {v1, p1}, Lcom/stericsson/hardware/fm/FmBand;->isFrequencyValid(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 430
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Frequency is not valid in this band."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 434
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/stericsson/hardware/fm/FmTransmitterImpl;->mService:Lcom/stericsson/hardware/fm/IFmTransmitter;

    invoke-interface {v1, p1}, Lcom/stericsson/hardware/fm/IFmTransmitter;->setFrequency(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 438
    :goto_0
    return-void

    .line 435
    :catch_0
    move-exception v0

    .line 436
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "FmTransmitter"

    const-string/jumbo v2, "setFrequency: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setRdsData(Landroid/os/Bundle;)V
    .locals 3
    .parameter "rdsData"

    .prologue
    .line 453
    :try_start_0
    iget-object v1, p0, Lcom/stericsson/hardware/fm/FmTransmitterImpl;->mService:Lcom/stericsson/hardware/fm/IFmTransmitter;

    invoke-interface {v1, p1}, Lcom/stericsson/hardware/fm/IFmTransmitter;->setRdsData(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 457
    :goto_0
    return-void

    .line 454
    :catch_0
    move-exception v0

    .line 455
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "FmTransmitter"

    const-string/jumbo v2, "setRdsData: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public start(Lcom/stericsson/hardware/fm/FmBand;)V
    .locals 3
    .parameter "band"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 378
    if-nez p1, :cond_0

    .line 379
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Band cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 382
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/stericsson/hardware/fm/FmTransmitterImpl;->mService:Lcom/stericsson/hardware/fm/IFmTransmitter;

    invoke-interface {v1, p1}, Lcom/stericsson/hardware/fm/IFmTransmitter;->start(Lcom/stericsson/hardware/fm/FmBand;)V

    .line 383
    iput-object p1, p0, Lcom/stericsson/hardware/fm/FmTransmitterImpl;->mBand:Lcom/stericsson/hardware/fm/FmBand;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 387
    :goto_0
    return-void

    .line 384
    :catch_0
    move-exception v0

    .line 385
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "FmTransmitter"

    const-string/jumbo v2, "start: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public startAsync(Lcom/stericsson/hardware/fm/FmBand;)V
    .locals 3
    .parameter "band"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 365
    if-nez p1, :cond_0

    .line 366
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Band cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 369
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/stericsson/hardware/fm/FmTransmitterImpl;->mService:Lcom/stericsson/hardware/fm/IFmTransmitter;

    invoke-interface {v1, p1}, Lcom/stericsson/hardware/fm/IFmTransmitter;->startAsync(Lcom/stericsson/hardware/fm/FmBand;)V

    .line 370
    iput-object p1, p0, Lcom/stericsson/hardware/fm/FmTransmitterImpl;->mBand:Lcom/stericsson/hardware/fm/FmBand;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 374
    :goto_0
    return-void

    .line 371
    :catch_0
    move-exception v0

    .line 372
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "FmTransmitter"

    const-string/jumbo v2, "startAsync: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public startBlockScan(II)V
    .locals 3
    .parameter "startFrequency"
    .parameter "endFrequency"

    .prologue
    .line 472
    :try_start_0
    iget-object v1, p0, Lcom/stericsson/hardware/fm/FmTransmitterImpl;->mService:Lcom/stericsson/hardware/fm/IFmTransmitter;

    invoke-interface {v1, p1, p2}, Lcom/stericsson/hardware/fm/IFmTransmitter;->startBlockScan(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 476
    :goto_0
    return-void

    .line 473
    :catch_0
    move-exception v0

    .line 474
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "FmTransmitter"

    const-string/jumbo v2, "startBlockScan: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public stopScan()V
    .locals 3

    .prologue
    .line 481
    :try_start_0
    iget-object v1, p0, Lcom/stericsson/hardware/fm/FmTransmitterImpl;->mService:Lcom/stericsson/hardware/fm/IFmTransmitter;

    invoke-interface {v1}, Lcom/stericsson/hardware/fm/IFmTransmitter;->stopScan()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 485
    :goto_0
    return-void

    .line 482
    :catch_0
    move-exception v0

    .line 483
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "FmTransmitter"

    const-string/jumbo v2, "stopScan: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

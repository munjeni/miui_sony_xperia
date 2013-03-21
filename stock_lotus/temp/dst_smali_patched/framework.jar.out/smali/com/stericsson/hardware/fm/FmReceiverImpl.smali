.class public Lcom/stericsson/hardware/fm/FmReceiverImpl;
.super Lcom/stericsson/hardware/fm/FmReceiver;
.source "FmReceiverImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stericsson/hardware/fm/FmReceiverImpl$OnAutomaticSwitchListenerTransport;,
        Lcom/stericsson/hardware/fm/FmReceiverImpl$OnExtraCommandListenerTransport;,
        Lcom/stericsson/hardware/fm/FmReceiverImpl$OnStereoListenerTransport;,
        Lcom/stericsson/hardware/fm/FmReceiverImpl$OnSignalStrengthListenerTransport;,
        Lcom/stericsson/hardware/fm/FmReceiverImpl$OnRDSDataListenerTransport;,
        Lcom/stericsson/hardware/fm/FmReceiverImpl$OnForcedResetListenerTransport;,
        Lcom/stericsson/hardware/fm/FmReceiverImpl$OnForcedPauseListenerTransport;,
        Lcom/stericsson/hardware/fm/FmReceiverImpl$OnScanListenerTransport;,
        Lcom/stericsson/hardware/fm/FmReceiverImpl$OnErrorListenerTransport;,
        Lcom/stericsson/hardware/fm/FmReceiverImpl$OnStartedListenerTransport;,
        Lcom/stericsson/hardware/fm/FmReceiverImpl$OnStateChangedListenerTransport;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FmReceiver"


# instance fields
.field private mBand:Lcom/stericsson/hardware/fm/FmBand;

.field private mOnAutomaticSwitch:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/stericsson/hardware/fm/FmReceiver$OnAutomaticSwitchListener;",
            "Lcom/stericsson/hardware/fm/FmReceiverImpl$OnAutomaticSwitchListenerTransport;",
            ">;"
        }
    .end annotation
.end field

.field private mOnError:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/stericsson/hardware/fm/FmReceiver$OnErrorListener;",
            "Lcom/stericsson/hardware/fm/FmReceiverImpl$OnErrorListenerTransport;",
            ">;"
        }
    .end annotation
.end field

.field private mOnExtraCommand:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/stericsson/hardware/fm/FmReceiver$OnExtraCommandListener;",
            "Lcom/stericsson/hardware/fm/FmReceiverImpl$OnExtraCommandListenerTransport;",
            ">;"
        }
    .end annotation
.end field

.field private mOnForcedPause:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/stericsson/hardware/fm/FmReceiver$OnForcedPauseListener;",
            "Lcom/stericsson/hardware/fm/FmReceiverImpl$OnForcedPauseListenerTransport;",
            ">;"
        }
    .end annotation
.end field

.field private mOnForcedReset:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/stericsson/hardware/fm/FmReceiver$OnForcedResetListener;",
            "Lcom/stericsson/hardware/fm/FmReceiverImpl$OnForcedResetListenerTransport;",
            ">;"
        }
    .end annotation
.end field

.field private mOnRDSData:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/stericsson/hardware/fm/FmReceiver$OnRDSDataFoundListener;",
            "Lcom/stericsson/hardware/fm/FmReceiverImpl$OnRDSDataListenerTransport;",
            ">;"
        }
    .end annotation
.end field

.field private mOnScan:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/stericsson/hardware/fm/FmReceiver$OnScanListener;",
            "Lcom/stericsson/hardware/fm/FmReceiverImpl$OnScanListenerTransport;",
            ">;"
        }
    .end annotation
.end field

.field private mOnSignalStrength:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/stericsson/hardware/fm/FmReceiver$OnSignalStrengthChangedListener;",
            "Lcom/stericsson/hardware/fm/FmReceiverImpl$OnSignalStrengthListenerTransport;",
            ">;"
        }
    .end annotation
.end field

.field private mOnStarted:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/stericsson/hardware/fm/FmReceiver$OnStartedListener;",
            "Lcom/stericsson/hardware/fm/FmReceiverImpl$OnStartedListenerTransport;",
            ">;"
        }
    .end annotation
.end field

.field private mOnStateChanged:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/stericsson/hardware/fm/FmReceiver$OnStateChangedListener;",
            "Lcom/stericsson/hardware/fm/FmReceiverImpl$OnStateChangedListenerTransport;",
            ">;"
        }
    .end annotation
.end field

.field private mOnStereo:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/stericsson/hardware/fm/FmReceiver$OnPlayingInStereoListener;",
            "Lcom/stericsson/hardware/fm/FmReceiverImpl$OnStereoListenerTransport;",
            ">;"
        }
    .end annotation
.end field

.field private mService:Lcom/stericsson/hardware/fm/IFmReceiver;


# direct methods
.method public constructor <init>(Lcom/stericsson/hardware/fm/IFmReceiver;)V
    .locals 1
    .parameter "service"

    .prologue
    invoke-direct {p0}, Lcom/stericsson/hardware/fm/FmReceiver;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mOnStateChanged:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mOnStarted:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mOnError:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mOnScan:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mOnForcedPause:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mOnForcedReset:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mOnRDSData:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mOnSignalStrength:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mOnStereo:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mOnExtraCommand:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mOnAutomaticSwitch:Ljava/util/HashMap;

    iput-object p1, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mService:Lcom/stericsson/hardware/fm/IFmReceiver;

    return-void
.end method


# virtual methods
.method public addOnAutomaticSwitchListener(Lcom/stericsson/hardware/fm/FmReceiver$OnAutomaticSwitchListener;)V
    .locals 4
    .parameter "listener"

    .prologue
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mOnAutomaticSwitch:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mOnAutomaticSwitch:Ljava/util/HashMap;

    monitor-enter v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance v1, Lcom/stericsson/hardware/fm/FmReceiverImpl$OnAutomaticSwitchListenerTransport;

    invoke-direct {v1, p1}, Lcom/stericsson/hardware/fm/FmReceiverImpl$OnAutomaticSwitchListenerTransport;-><init>(Lcom/stericsson/hardware/fm/FmReceiver$OnAutomaticSwitchListener;)V

    .local v1, transport:Lcom/stericsson/hardware/fm/FmReceiverImpl$OnAutomaticSwitchListenerTransport;
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mService:Lcom/stericsson/hardware/fm/IFmReceiver;

    invoke-interface {v2, v1}, Lcom/stericsson/hardware/fm/IFmReceiver;->addOnAutomaticSwitchListener(Lcom/stericsson/hardware/fm/IOnAutomaticSwitchListener;)V

    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mOnAutomaticSwitch:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v3

    goto :goto_0

    .end local v1           #transport:Lcom/stericsson/hardware/fm/FmReceiverImpl$OnAutomaticSwitchListenerTransport;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "FmReceiver"

    const-string v3, "addOnAutomaticSwitchListener: RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public addOnErrorListener(Lcom/stericsson/hardware/fm/FmReceiver$OnErrorListener;)V
    .locals 4
    .parameter "listener"

    .prologue
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mOnError:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mOnError:Ljava/util/HashMap;

    monitor-enter v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance v1, Lcom/stericsson/hardware/fm/FmReceiverImpl$OnErrorListenerTransport;

    invoke-direct {v1, p1}, Lcom/stericsson/hardware/fm/FmReceiverImpl$OnErrorListenerTransport;-><init>(Lcom/stericsson/hardware/fm/FmReceiver$OnErrorListener;)V

    .local v1, transport:Lcom/stericsson/hardware/fm/FmReceiverImpl$OnErrorListenerTransport;
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mService:Lcom/stericsson/hardware/fm/IFmReceiver;

    invoke-interface {v2, v1}, Lcom/stericsson/hardware/fm/IFmReceiver;->addOnErrorListener(Lcom/stericsson/hardware/fm/IOnErrorListener;)V

    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mOnError:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v3

    goto :goto_0

    .end local v1           #transport:Lcom/stericsson/hardware/fm/FmReceiverImpl$OnErrorListenerTransport;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "FmReceiver"

    const-string v3, "addOnErrorListener: RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public addOnExtraCommandListener(Lcom/stericsson/hardware/fm/FmReceiver$OnExtraCommandListener;)V
    .locals 4
    .parameter "listener"

    .prologue
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mOnExtraCommand:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mOnExtraCommand:Ljava/util/HashMap;

    monitor-enter v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance v1, Lcom/stericsson/hardware/fm/FmReceiverImpl$OnExtraCommandListenerTransport;

    invoke-direct {v1, p1}, Lcom/stericsson/hardware/fm/FmReceiverImpl$OnExtraCommandListenerTransport;-><init>(Lcom/stericsson/hardware/fm/FmReceiver$OnExtraCommandListener;)V

    .local v1, transport:Lcom/stericsson/hardware/fm/FmReceiverImpl$OnExtraCommandListenerTransport;
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mService:Lcom/stericsson/hardware/fm/IFmReceiver;

    invoke-interface {v2, v1}, Lcom/stericsson/hardware/fm/IFmReceiver;->addOnExtraCommandListener(Lcom/stericsson/hardware/fm/IOnExtraCommandListener;)V

    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mOnExtraCommand:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v3

    goto :goto_0

    .end local v1           #transport:Lcom/stericsson/hardware/fm/FmReceiverImpl$OnExtraCommandListenerTransport;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "FmReceiver"

    const-string v3, "addOnExtraCommandListener: RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public addOnForcedPauseListener(Lcom/stericsson/hardware/fm/FmReceiver$OnForcedPauseListener;)V
    .locals 4
    .parameter "listener"

    .prologue
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mOnForcedPause:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mOnForcedPause:Ljava/util/HashMap;

    monitor-enter v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance v1, Lcom/stericsson/hardware/fm/FmReceiverImpl$OnForcedPauseListenerTransport;

    invoke-direct {v1, p1}, Lcom/stericsson/hardware/fm/FmReceiverImpl$OnForcedPauseListenerTransport;-><init>(Lcom/stericsson/hardware/fm/FmReceiver$OnForcedPauseListener;)V

    .local v1, transport:Lcom/stericsson/hardware/fm/FmReceiverImpl$OnForcedPauseListenerTransport;
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mService:Lcom/stericsson/hardware/fm/IFmReceiver;

    invoke-interface {v2, v1}, Lcom/stericsson/hardware/fm/IFmReceiver;->addOnForcedPauseListener(Lcom/stericsson/hardware/fm/IOnForcedPauseListener;)V

    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mOnForcedPause:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v3

    goto :goto_0

    .end local v1           #transport:Lcom/stericsson/hardware/fm/FmReceiverImpl$OnForcedPauseListenerTransport;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "FmReceiver"

    const-string v3, "addOnForcedPauseListener: RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public addOnForcedResetListener(Lcom/stericsson/hardware/fm/FmReceiver$OnForcedResetListener;)V
    .locals 4
    .parameter "listener"

    .prologue
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mOnForcedReset:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mOnForcedReset:Ljava/util/HashMap;

    monitor-enter v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance v1, Lcom/stericsson/hardware/fm/FmReceiverImpl$OnForcedResetListenerTransport;

    invoke-direct {v1, p1}, Lcom/stericsson/hardware/fm/FmReceiverImpl$OnForcedResetListenerTransport;-><init>(Lcom/stericsson/hardware/fm/FmReceiver$OnForcedResetListener;)V

    .local v1, transport:Lcom/stericsson/hardware/fm/FmReceiverImpl$OnForcedResetListenerTransport;
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mService:Lcom/stericsson/hardware/fm/IFmReceiver;

    invoke-interface {v2, v1}, Lcom/stericsson/hardware/fm/IFmReceiver;->addOnForcedResetListener(Lcom/stericsson/hardware/fm/IOnForcedResetListener;)V

    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mOnForcedReset:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v3

    goto :goto_0

    .end local v1           #transport:Lcom/stericsson/hardware/fm/FmReceiverImpl$OnForcedResetListenerTransport;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "FmReceiver"

    const-string v3, "addOnForcedResetListener: RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public addOnPlayingInStereoListener(Lcom/stericsson/hardware/fm/FmReceiver$OnPlayingInStereoListener;)V
    .locals 4
    .parameter "listener"

    .prologue
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mOnStereo:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mOnStereo:Ljava/util/HashMap;

    monitor-enter v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance v1, Lcom/stericsson/hardware/fm/FmReceiverImpl$OnStereoListenerTransport;

    invoke-direct {v1, p1}, Lcom/stericsson/hardware/fm/FmReceiverImpl$OnStereoListenerTransport;-><init>(Lcom/stericsson/hardware/fm/FmReceiver$OnPlayingInStereoListener;)V

    .local v1, transport:Lcom/stericsson/hardware/fm/FmReceiverImpl$OnStereoListenerTransport;
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mService:Lcom/stericsson/hardware/fm/IFmReceiver;

    invoke-interface {v2, v1}, Lcom/stericsson/hardware/fm/IFmReceiver;->addOnPlayingInStereoListener(Lcom/stericsson/hardware/fm/IOnStereoListener;)V

    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mOnStereo:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v3

    goto :goto_0

    .end local v1           #transport:Lcom/stericsson/hardware/fm/FmReceiverImpl$OnStereoListenerTransport;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "FmReceiver"

    const-string v3, "addOnPlayingInStereoListener: RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public addOnRDSDataFoundListener(Lcom/stericsson/hardware/fm/FmReceiver$OnRDSDataFoundListener;)V
    .locals 4
    .parameter "listener"

    .prologue
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mOnRDSData:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mOnRDSData:Ljava/util/HashMap;

    monitor-enter v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance v1, Lcom/stericsson/hardware/fm/FmReceiverImpl$OnRDSDataListenerTransport;

    invoke-direct {v1, p1}, Lcom/stericsson/hardware/fm/FmReceiverImpl$OnRDSDataListenerTransport;-><init>(Lcom/stericsson/hardware/fm/FmReceiver$OnRDSDataFoundListener;)V

    .local v1, transport:Lcom/stericsson/hardware/fm/FmReceiverImpl$OnRDSDataListenerTransport;
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mService:Lcom/stericsson/hardware/fm/IFmReceiver;

    invoke-interface {v2, v1}, Lcom/stericsson/hardware/fm/IFmReceiver;->addOnRDSDataFoundListener(Lcom/stericsson/hardware/fm/IOnRDSDataFoundListener;)V

    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mOnRDSData:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v3

    goto :goto_0

    .end local v1           #transport:Lcom/stericsson/hardware/fm/FmReceiverImpl$OnRDSDataListenerTransport;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "FmReceiver"

    const-string v3, "addOnRDSDataFoundListener: RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public addOnScanListener(Lcom/stericsson/hardware/fm/FmReceiver$OnScanListener;)V
    .locals 4
    .parameter "listener"

    .prologue
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mOnScan:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mOnScan:Ljava/util/HashMap;

    monitor-enter v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance v1, Lcom/stericsson/hardware/fm/FmReceiverImpl$OnScanListenerTransport;

    invoke-direct {v1, p1}, Lcom/stericsson/hardware/fm/FmReceiverImpl$OnScanListenerTransport;-><init>(Lcom/stericsson/hardware/fm/FmReceiver$OnScanListener;)V

    .local v1, transport:Lcom/stericsson/hardware/fm/FmReceiverImpl$OnScanListenerTransport;
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mService:Lcom/stericsson/hardware/fm/IFmReceiver;

    invoke-interface {v2, v1}, Lcom/stericsson/hardware/fm/IFmReceiver;->addOnScanListener(Lcom/stericsson/hardware/fm/IOnScanListener;)V

    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mOnScan:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v3

    goto :goto_0

    .end local v1           #transport:Lcom/stericsson/hardware/fm/FmReceiverImpl$OnScanListenerTransport;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "FmReceiver"

    const-string v3, "addOnScanListener: RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public addOnSignalStrengthChangedListener(Lcom/stericsson/hardware/fm/FmReceiver$OnSignalStrengthChangedListener;)V
    .locals 4
    .parameter "listener"

    .prologue
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mOnSignalStrength:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mOnSignalStrength:Ljava/util/HashMap;

    monitor-enter v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance v1, Lcom/stericsson/hardware/fm/FmReceiverImpl$OnSignalStrengthListenerTransport;

    invoke-direct {v1, p1}, Lcom/stericsson/hardware/fm/FmReceiverImpl$OnSignalStrengthListenerTransport;-><init>(Lcom/stericsson/hardware/fm/FmReceiver$OnSignalStrengthChangedListener;)V

    .local v1, transport:Lcom/stericsson/hardware/fm/FmReceiverImpl$OnSignalStrengthListenerTransport;
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mService:Lcom/stericsson/hardware/fm/IFmReceiver;

    invoke-interface {v2, v1}, Lcom/stericsson/hardware/fm/IFmReceiver;->addOnSignalStrengthChangedListener(Lcom/stericsson/hardware/fm/IOnSignalStrengthListener;)V

    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mOnSignalStrength:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v3

    goto :goto_0

    .end local v1           #transport:Lcom/stericsson/hardware/fm/FmReceiverImpl$OnSignalStrengthListenerTransport;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "FmReceiver"

    const-string v3, "addOnSignalStrengthChangedListener: RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public addOnStartedListener(Lcom/stericsson/hardware/fm/FmReceiver$OnStartedListener;)V
    .locals 4
    .parameter "listener"

    .prologue
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mOnStarted:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mOnStarted:Ljava/util/HashMap;

    monitor-enter v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance v1, Lcom/stericsson/hardware/fm/FmReceiverImpl$OnStartedListenerTransport;

    invoke-direct {v1, p1}, Lcom/stericsson/hardware/fm/FmReceiverImpl$OnStartedListenerTransport;-><init>(Lcom/stericsson/hardware/fm/FmReceiver$OnStartedListener;)V

    .local v1, transport:Lcom/stericsson/hardware/fm/FmReceiverImpl$OnStartedListenerTransport;
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mService:Lcom/stericsson/hardware/fm/IFmReceiver;

    invoke-interface {v2, v1}, Lcom/stericsson/hardware/fm/IFmReceiver;->addOnStartedListener(Lcom/stericsson/hardware/fm/IOnStartedListener;)V

    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mOnStarted:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v3

    goto :goto_0

    .end local v1           #transport:Lcom/stericsson/hardware/fm/FmReceiverImpl$OnStartedListenerTransport;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "FmReceiver"

    const-string v3, "addOnStartedListener: RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public addOnStateChangedListener(Lcom/stericsson/hardware/fm/FmReceiver$OnStateChangedListener;)V
    .locals 4
    .parameter "listener"

    .prologue
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mOnStateChanged:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mOnStateChanged:Ljava/util/HashMap;

    monitor-enter v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance v1, Lcom/stericsson/hardware/fm/FmReceiverImpl$OnStateChangedListenerTransport;

    invoke-direct {v1, p1}, Lcom/stericsson/hardware/fm/FmReceiverImpl$OnStateChangedListenerTransport;-><init>(Lcom/stericsson/hardware/fm/FmReceiver$OnStateChangedListener;)V

    .local v1, transport:Lcom/stericsson/hardware/fm/FmReceiverImpl$OnStateChangedListenerTransport;
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mService:Lcom/stericsson/hardware/fm/IFmReceiver;

    invoke-interface {v2, v1}, Lcom/stericsson/hardware/fm/IFmReceiver;->addOnStateChangedListener(Lcom/stericsson/hardware/fm/IOnStateChangedListener;)V

    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mOnStateChanged:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v3

    goto :goto_0

    .end local v1           #transport:Lcom/stericsson/hardware/fm/FmReceiverImpl$OnStateChangedListenerTransport;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "FmReceiver"

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
    :try_start_0
    iget-object v1, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mService:Lcom/stericsson/hardware/fm/IFmReceiver;

    invoke-interface {v1}, Lcom/stericsson/hardware/fm/IFmReceiver;->getFrequency()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "FmReceiver"

    const-string v2, "getFrequency: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getSignalStrength()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    :try_start_0
    iget-object v1, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mService:Lcom/stericsson/hardware/fm/IFmReceiver;

    invoke-interface {v1}, Lcom/stericsson/hardware/fm/IFmReceiver;->getSignalStrength()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "FmReceiver"

    const-string v2, "getSignalStrength: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getState()I
    .locals 3

    .prologue
    :try_start_0
    iget-object v1, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mService:Lcom/stericsson/hardware/fm/IFmReceiver;

    invoke-interface {v1}, Lcom/stericsson/hardware/fm/IFmReceiver;->getState()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "FmReceiver"

    const-string v2, "getState: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getThreshold()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    :try_start_0
    iget-object v1, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mService:Lcom/stericsson/hardware/fm/IFmReceiver;

    invoke-interface {v1}, Lcom/stericsson/hardware/fm/IFmReceiver;->getThreshold()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "FmReceiver"

    const-string v2, "getThreshold: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isPlayingInStereo()Z
    .locals 3

    .prologue
    :try_start_0
    iget-object v1, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mService:Lcom/stericsson/hardware/fm/IFmReceiver;

    invoke-interface {v1}, Lcom/stericsson/hardware/fm/IFmReceiver;->isPlayingInStereo()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "FmReceiver"

    const-string v2, "isPlayingInStereo: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isRDSDataSupported()Z
    .locals 3

    .prologue
    :try_start_0
    iget-object v1, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mService:Lcom/stericsson/hardware/fm/IFmReceiver;

    invoke-interface {v1}, Lcom/stericsson/hardware/fm/IFmReceiver;->isRDSDataSupported()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "FmReceiver"

    const-string v2, "isRDSDataSupported: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isTunedToValidChannel()Z
    .locals 3

    .prologue
    :try_start_0
    iget-object v1, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mService:Lcom/stericsson/hardware/fm/IFmReceiver;

    invoke-interface {v1}, Lcom/stericsson/hardware/fm/IFmReceiver;->isTunedToValidChannel()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "FmReceiver"

    const-string v2, "isTunedToValidChannel: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

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
    :try_start_0
    iget-object v1, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mService:Lcom/stericsson/hardware/fm/IFmReceiver;

    invoke-interface {v1}, Lcom/stericsson/hardware/fm/IFmReceiver;->pause()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "FmReceiver"

    const-string v2, "pause: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public removeOnAutomaticSwitchListener(Lcom/stericsson/hardware/fm/FmReceiver$OnAutomaticSwitchListener;)V
    .locals 4
    .parameter "listener"

    .prologue
    :try_start_0
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mOnAutomaticSwitch:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stericsson/hardware/fm/FmReceiverImpl$OnAutomaticSwitchListenerTransport;

    .local v1, transport:Lcom/stericsson/hardware/fm/FmReceiverImpl$OnAutomaticSwitchListenerTransport;
    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mService:Lcom/stericsson/hardware/fm/IFmReceiver;

    invoke-interface {v2, v1}, Lcom/stericsson/hardware/fm/IFmReceiver;->removeOnAutomaticSwitchListener(Lcom/stericsson/hardware/fm/IOnAutomaticSwitchListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1           #transport:Lcom/stericsson/hardware/fm/FmReceiverImpl$OnAutomaticSwitchListenerTransport;
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "FmReceiver"

    const-string v3, "removeOnAutomaticSwitchListener: DeadObjectException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public removeOnErrorListener(Lcom/stericsson/hardware/fm/FmReceiver$OnErrorListener;)V
    .locals 4
    .parameter "listener"

    .prologue
    :try_start_0
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mOnError:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stericsson/hardware/fm/FmReceiverImpl$OnErrorListenerTransport;

    .local v1, transport:Lcom/stericsson/hardware/fm/FmReceiverImpl$OnErrorListenerTransport;
    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mService:Lcom/stericsson/hardware/fm/IFmReceiver;

    invoke-interface {v2, v1}, Lcom/stericsson/hardware/fm/IFmReceiver;->removeOnErrorListener(Lcom/stericsson/hardware/fm/IOnErrorListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1           #transport:Lcom/stericsson/hardware/fm/FmReceiverImpl$OnErrorListenerTransport;
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "FmReceiver"

    const-string v3, "removeOnErrorListener: DeadObjectException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public removeOnExtraCommandListener(Lcom/stericsson/hardware/fm/FmReceiver$OnExtraCommandListener;)V
    .locals 4
    .parameter "listener"

    .prologue
    :try_start_0
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mOnExtraCommand:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stericsson/hardware/fm/FmReceiverImpl$OnExtraCommandListenerTransport;

    .local v1, transport:Lcom/stericsson/hardware/fm/FmReceiverImpl$OnExtraCommandListenerTransport;
    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mService:Lcom/stericsson/hardware/fm/IFmReceiver;

    invoke-interface {v2, v1}, Lcom/stericsson/hardware/fm/IFmReceiver;->removeOnExtraCommandListener(Lcom/stericsson/hardware/fm/IOnExtraCommandListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1           #transport:Lcom/stericsson/hardware/fm/FmReceiverImpl$OnExtraCommandListenerTransport;
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "FmReceiver"

    const-string v3, "removeOnExtraCommandListener: DeadObjectException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public removeOnForcedPauseListener(Lcom/stericsson/hardware/fm/FmReceiver$OnForcedPauseListener;)V
    .locals 4
    .parameter "listener"

    .prologue
    :try_start_0
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mOnForcedPause:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stericsson/hardware/fm/FmReceiverImpl$OnForcedPauseListenerTransport;

    .local v1, transport:Lcom/stericsson/hardware/fm/FmReceiverImpl$OnForcedPauseListenerTransport;
    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mService:Lcom/stericsson/hardware/fm/IFmReceiver;

    invoke-interface {v2, v1}, Lcom/stericsson/hardware/fm/IFmReceiver;->removeOnForcedPauseListener(Lcom/stericsson/hardware/fm/IOnForcedPauseListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1           #transport:Lcom/stericsson/hardware/fm/FmReceiverImpl$OnForcedPauseListenerTransport;
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "FmReceiver"

    const-string v3, "removeOnForcedPauseListener: DeadObjectException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public removeOnForcedResetListener(Lcom/stericsson/hardware/fm/FmReceiver$OnForcedResetListener;)V
    .locals 4
    .parameter "listener"

    .prologue
    :try_start_0
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mOnForcedReset:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stericsson/hardware/fm/FmReceiverImpl$OnForcedResetListenerTransport;

    .local v1, transport:Lcom/stericsson/hardware/fm/FmReceiverImpl$OnForcedResetListenerTransport;
    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mService:Lcom/stericsson/hardware/fm/IFmReceiver;

    invoke-interface {v2, v1}, Lcom/stericsson/hardware/fm/IFmReceiver;->removeOnForcedResetListener(Lcom/stericsson/hardware/fm/IOnForcedResetListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1           #transport:Lcom/stericsson/hardware/fm/FmReceiverImpl$OnForcedResetListenerTransport;
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "FmReceiver"

    const-string v3, "removeOnForcedResetListener: DeadObjectException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public removeOnPlayingInStereoListener(Lcom/stericsson/hardware/fm/FmReceiver$OnPlayingInStereoListener;)V
    .locals 4
    .parameter "listener"

    .prologue
    :try_start_0
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mOnStereo:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stericsson/hardware/fm/FmReceiverImpl$OnStereoListenerTransport;

    .local v1, transport:Lcom/stericsson/hardware/fm/FmReceiverImpl$OnStereoListenerTransport;
    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mService:Lcom/stericsson/hardware/fm/IFmReceiver;

    invoke-interface {v2, v1}, Lcom/stericsson/hardware/fm/IFmReceiver;->removeOnPlayingInStereoListener(Lcom/stericsson/hardware/fm/IOnStereoListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1           #transport:Lcom/stericsson/hardware/fm/FmReceiverImpl$OnStereoListenerTransport;
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "FmReceiver"

    const-string v3, "removeOnPlayingInStereoListener: DeadObjectException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public removeOnRDSDataFoundListener(Lcom/stericsson/hardware/fm/FmReceiver$OnRDSDataFoundListener;)V
    .locals 4
    .parameter "listener"

    .prologue
    :try_start_0
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mOnRDSData:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stericsson/hardware/fm/FmReceiverImpl$OnRDSDataListenerTransport;

    .local v1, transport:Lcom/stericsson/hardware/fm/FmReceiverImpl$OnRDSDataListenerTransport;
    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mService:Lcom/stericsson/hardware/fm/IFmReceiver;

    invoke-interface {v2, v1}, Lcom/stericsson/hardware/fm/IFmReceiver;->removeOnRDSDataFoundListener(Lcom/stericsson/hardware/fm/IOnRDSDataFoundListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1           #transport:Lcom/stericsson/hardware/fm/FmReceiverImpl$OnRDSDataListenerTransport;
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "FmReceiver"

    const-string v3, "removeOnRDSDataFoundListener: DeadObjectException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public removeOnScanListener(Lcom/stericsson/hardware/fm/FmReceiver$OnScanListener;)V
    .locals 4
    .parameter "listener"

    .prologue
    :try_start_0
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mOnScan:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stericsson/hardware/fm/FmReceiverImpl$OnScanListenerTransport;

    .local v1, transport:Lcom/stericsson/hardware/fm/FmReceiverImpl$OnScanListenerTransport;
    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mService:Lcom/stericsson/hardware/fm/IFmReceiver;

    invoke-interface {v2, v1}, Lcom/stericsson/hardware/fm/IFmReceiver;->removeOnScanListener(Lcom/stericsson/hardware/fm/IOnScanListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1           #transport:Lcom/stericsson/hardware/fm/FmReceiverImpl$OnScanListenerTransport;
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "FmReceiver"

    const-string v3, "removeOnScanListener: DeadObjectException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public removeOnSignalStrengthChangedListener(Lcom/stericsson/hardware/fm/FmReceiver$OnSignalStrengthChangedListener;)V
    .locals 4
    .parameter "listener"

    .prologue
    :try_start_0
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mOnSignalStrength:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stericsson/hardware/fm/FmReceiverImpl$OnSignalStrengthListenerTransport;

    .local v1, transport:Lcom/stericsson/hardware/fm/FmReceiverImpl$OnSignalStrengthListenerTransport;
    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mService:Lcom/stericsson/hardware/fm/IFmReceiver;

    invoke-interface {v2, v1}, Lcom/stericsson/hardware/fm/IFmReceiver;->removeOnSignalStrengthChangedListener(Lcom/stericsson/hardware/fm/IOnSignalStrengthListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1           #transport:Lcom/stericsson/hardware/fm/FmReceiverImpl$OnSignalStrengthListenerTransport;
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "FmReceiver"

    const-string v3, "removeOnSignalStrengthChangedListener: DeadObjectException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public removeOnStartedListener(Lcom/stericsson/hardware/fm/FmReceiver$OnStartedListener;)V
    .locals 4
    .parameter "listener"

    .prologue
    :try_start_0
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mOnStarted:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stericsson/hardware/fm/FmReceiverImpl$OnStartedListenerTransport;

    .local v1, transport:Lcom/stericsson/hardware/fm/FmReceiverImpl$OnStartedListenerTransport;
    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mService:Lcom/stericsson/hardware/fm/IFmReceiver;

    invoke-interface {v2, v1}, Lcom/stericsson/hardware/fm/IFmReceiver;->removeOnStartedListener(Lcom/stericsson/hardware/fm/IOnStartedListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1           #transport:Lcom/stericsson/hardware/fm/FmReceiverImpl$OnStartedListenerTransport;
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "FmReceiver"

    const-string v3, "removeOnStartedListener: DeadObjectException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public removeOnStateChangedListener(Lcom/stericsson/hardware/fm/FmReceiver$OnStateChangedListener;)V
    .locals 4
    .parameter "listener"

    .prologue
    :try_start_0
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mOnStateChanged:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stericsson/hardware/fm/FmReceiverImpl$OnStateChangedListenerTransport;

    .local v1, transport:Lcom/stericsson/hardware/fm/FmReceiverImpl$OnStateChangedListenerTransport;
    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mService:Lcom/stericsson/hardware/fm/IFmReceiver;

    invoke-interface {v2, v1}, Lcom/stericsson/hardware/fm/IFmReceiver;->removeOnStateChangedListener(Lcom/stericsson/hardware/fm/IOnStateChangedListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1           #transport:Lcom/stericsson/hardware/fm/FmReceiverImpl$OnStateChangedListenerTransport;
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "FmReceiver"

    const-string v3, "removeOnStateChangedListener: DeadObjectException"

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
    :try_start_0
    iget-object v1, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mService:Lcom/stericsson/hardware/fm/IFmReceiver;

    invoke-interface {v1}, Lcom/stericsson/hardware/fm/IFmReceiver;->reset()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mBand:Lcom/stericsson/hardware/fm/FmBand;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "FmReceiver"

    const-string v2, "reset: RemoteException"

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
    :try_start_0
    iget-object v1, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mService:Lcom/stericsson/hardware/fm/IFmReceiver;

    invoke-interface {v1}, Lcom/stericsson/hardware/fm/IFmReceiver;->resume()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "FmReceiver"

    const-string v2, "resume: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public scanDown()V
    .locals 3

    .prologue
    :try_start_0
    iget-object v1, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mService:Lcom/stericsson/hardware/fm/IFmReceiver;

    invoke-interface {v1}, Lcom/stericsson/hardware/fm/IFmReceiver;->scanDown()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "FmReceiver"

    const-string v2, "scanDown: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public scanUp()V
    .locals 3

    .prologue
    :try_start_0
    iget-object v1, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mService:Lcom/stericsson/hardware/fm/IFmReceiver;

    invoke-interface {v1}, Lcom/stericsson/hardware/fm/IFmReceiver;->scanUp()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "FmReceiver"

    const-string v2, "scanUp: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public sendExtraCommand(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 3
    .parameter "command"
    .parameter "extras"

    .prologue
    :try_start_0
    iget-object v1, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mService:Lcom/stericsson/hardware/fm/IFmReceiver;

    invoke-interface {v1, p1, p2}, Lcom/stericsson/hardware/fm/IFmReceiver;->sendExtraCommand(Ljava/lang/String;[Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "FmReceiver"

    const-string v2, "sendExtraCommand: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setAutomaticAFSwitching(Z)V
    .locals 3
    .parameter "automatic"

    .prologue
    :try_start_0
    iget-object v1, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mService:Lcom/stericsson/hardware/fm/IFmReceiver;

    invoke-interface {v1, p1}, Lcom/stericsson/hardware/fm/IFmReceiver;->setAutomaticAFSwitching(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "FmReceiver"

    const-string v2, "setAutomaticAFSwitching: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setAutomaticTASwitching(Z)V
    .locals 3
    .parameter "automatic"

    .prologue
    :try_start_0
    iget-object v1, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mService:Lcom/stericsson/hardware/fm/IFmReceiver;

    invoke-interface {v1, p1}, Lcom/stericsson/hardware/fm/IFmReceiver;->setAutomaticTASwitching(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "FmReceiver"

    const-string v2, "setAutomaticTASwitching: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setForceMono(Z)V
    .locals 3
    .parameter "forceMono"

    .prologue
    :try_start_0
    iget-object v1, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mService:Lcom/stericsson/hardware/fm/IFmReceiver;

    invoke-interface {v1, p1}, Lcom/stericsson/hardware/fm/IFmReceiver;->setForceMono(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "FmReceiver"

    const-string v2, "setForceMono: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

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
    iget-object v1, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mBand:Lcom/stericsson/hardware/fm/FmBand;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mBand:Lcom/stericsson/hardware/fm/FmBand;

    invoke-virtual {v1, p1}, Lcom/stericsson/hardware/fm/FmBand;->isFrequencyValid(I)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Frequency is not valid in this band."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mService:Lcom/stericsson/hardware/fm/IFmReceiver;

    invoke-interface {v1, p1}, Lcom/stericsson/hardware/fm/IFmReceiver;->setFrequency(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "FmReceiver"

    const-string v2, "setFrequency: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setThreshold(I)V
    .locals 3
    .parameter "threshold"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    if-ltz p1, :cond_0

    const/16 v1, 0x3e8

    if-le p1, v1, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "threshold not within limits"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mService:Lcom/stericsson/hardware/fm/IFmReceiver;

    invoke-interface {v1, p1}, Lcom/stericsson/hardware/fm/IFmReceiver;->setThreshold(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "FmReceiver"

    const-string v2, "setThreshold: RemoteException"

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
    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Band cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mService:Lcom/stericsson/hardware/fm/IFmReceiver;

    invoke-interface {v1, p1}, Lcom/stericsson/hardware/fm/IFmReceiver;->start(Lcom/stericsson/hardware/fm/FmBand;)V

    iput-object p1, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mBand:Lcom/stericsson/hardware/fm/FmBand;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "FmReceiver"

    const-string v2, "start: RemoteException"

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
    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Band cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mService:Lcom/stericsson/hardware/fm/IFmReceiver;

    invoke-interface {v1, p1}, Lcom/stericsson/hardware/fm/IFmReceiver;->startAsync(Lcom/stericsson/hardware/fm/FmBand;)V

    iput-object p1, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mBand:Lcom/stericsson/hardware/fm/FmBand;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "FmReceiver"

    const-string v2, "startAsync: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public startFullScan()V
    .locals 3

    .prologue
    :try_start_0
    iget-object v1, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mService:Lcom/stericsson/hardware/fm/IFmReceiver;

    invoke-interface {v1}, Lcom/stericsson/hardware/fm/IFmReceiver;->startFullScan()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "FmReceiver"

    const-string v2, "startFullScan: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public stopScan()V
    .locals 3

    .prologue
    :try_start_0
    iget-object v1, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mService:Lcom/stericsson/hardware/fm/IFmReceiver;

    invoke-interface {v1}, Lcom/stericsson/hardware/fm/IFmReceiver;->stopScan()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "FmReceiver"

    const-string v2, "stopScan: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

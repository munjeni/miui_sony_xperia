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
    .line 577
    invoke-direct {p0}, Lcom/stericsson/hardware/fm/FmReceiver;-><init>()V

    .line 53
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mOnStateChanged:Ljava/util/HashMap;

    .line 59
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mOnStarted:Ljava/util/HashMap;

    .line 65
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mOnError:Ljava/util/HashMap;

    .line 71
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mOnScan:Ljava/util/HashMap;

    .line 77
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mOnForcedPause:Ljava/util/HashMap;

    .line 83
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mOnForcedReset:Ljava/util/HashMap;

    .line 89
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mOnRDSData:Ljava/util/HashMap;

    .line 95
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mOnSignalStrength:Ljava/util/HashMap;

    .line 101
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mOnStereo:Ljava/util/HashMap;

    .line 107
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mOnExtraCommand:Ljava/util/HashMap;

    .line 113
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mOnAutomaticSwitch:Ljava/util/HashMap;

    .line 578
    iput-object p1, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mService:Lcom/stericsson/hardware/fm/IFmReceiver;

    .line 579
    return-void
.end method


# virtual methods
.method public addOnAutomaticSwitchListener(Lcom/stericsson/hardware/fm/FmReceiver$OnAutomaticSwitchListener;)V
    .locals 4
    .parameter "listener"

    .prologue
    .line 1100
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mOnAutomaticSwitch:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1113
    :goto_0
    return-void

    .line 1105
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mOnAutomaticSwitch:Ljava/util/HashMap;

    monitor-enter v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1106
    :try_start_1
    new-instance v1, Lcom/stericsson/hardware/fm/FmReceiverImpl$OnAutomaticSwitchListenerTransport;

    invoke-direct {v1, p1}, Lcom/stericsson/hardware/fm/FmReceiverImpl$OnAutomaticSwitchListenerTransport;-><init>(Lcom/stericsson/hardware/fm/FmReceiver$OnAutomaticSwitchListener;)V

    .line 1107
    .local v1, transport:Lcom/stericsson/hardware/fm/FmReceiverImpl$OnAutomaticSwitchListenerTransport;
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mService:Lcom/stericsson/hardware/fm/IFmReceiver;

    invoke-interface {v2, v1}, Lcom/stericsson/hardware/fm/IFmReceiver;->addOnAutomaticSwitchListener(Lcom/stericsson/hardware/fm/IOnAutomaticSwitchListener;)V

    .line 1108
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mOnAutomaticSwitch:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1109
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

    .line 1110
    :catch_0
    move-exception v0

    .line 1111
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
    .line 892
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mOnError:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 905
    :goto_0
    return-void

    .line 897
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mOnError:Ljava/util/HashMap;

    monitor-enter v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 898
    :try_start_1
    new-instance v1, Lcom/stericsson/hardware/fm/FmReceiverImpl$OnErrorListenerTransport;

    invoke-direct {v1, p1}, Lcom/stericsson/hardware/fm/FmReceiverImpl$OnErrorListenerTransport;-><init>(Lcom/stericsson/hardware/fm/FmReceiver$OnErrorListener;)V

    .line 899
    .local v1, transport:Lcom/stericsson/hardware/fm/FmReceiverImpl$OnErrorListenerTransport;
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mService:Lcom/stericsson/hardware/fm/IFmReceiver;

    invoke-interface {v2, v1}, Lcom/stericsson/hardware/fm/IFmReceiver;->addOnErrorListener(Lcom/stericsson/hardware/fm/IOnErrorListener;)V

    .line 900
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mOnError:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 901
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

    .line 902
    :catch_0
    move-exception v0

    .line 903
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
    .line 1070
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mOnExtraCommand:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1084
    :goto_0
    return-void

    .line 1075
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mOnExtraCommand:Ljava/util/HashMap;

    monitor-enter v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1076
    :try_start_1
    new-instance v1, Lcom/stericsson/hardware/fm/FmReceiverImpl$OnExtraCommandListenerTransport;

    invoke-direct {v1, p1}, Lcom/stericsson/hardware/fm/FmReceiverImpl$OnExtraCommandListenerTransport;-><init>(Lcom/stericsson/hardware/fm/FmReceiver$OnExtraCommandListener;)V

    .line 1078
    .local v1, transport:Lcom/stericsson/hardware/fm/FmReceiverImpl$OnExtraCommandListenerTransport;
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mService:Lcom/stericsson/hardware/fm/IFmReceiver;

    invoke-interface {v2, v1}, Lcom/stericsson/hardware/fm/IFmReceiver;->addOnExtraCommandListener(Lcom/stericsson/hardware/fm/IOnExtraCommandListener;)V

    .line 1079
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mOnExtraCommand:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1080
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

    .line 1081
    :catch_0
    move-exception v0

    .line 1082
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
    .line 980
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mOnForcedPause:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 994
    :goto_0
    return-void

    .line 985
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mOnForcedPause:Ljava/util/HashMap;

    monitor-enter v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 986
    :try_start_1
    new-instance v1, Lcom/stericsson/hardware/fm/FmReceiverImpl$OnForcedPauseListenerTransport;

    invoke-direct {v1, p1}, Lcom/stericsson/hardware/fm/FmReceiverImpl$OnForcedPauseListenerTransport;-><init>(Lcom/stericsson/hardware/fm/FmReceiver$OnForcedPauseListener;)V

    .line 988
    .local v1, transport:Lcom/stericsson/hardware/fm/FmReceiverImpl$OnForcedPauseListenerTransport;
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mService:Lcom/stericsson/hardware/fm/IFmReceiver;

    invoke-interface {v2, v1}, Lcom/stericsson/hardware/fm/IFmReceiver;->addOnForcedPauseListener(Lcom/stericsson/hardware/fm/IOnForcedPauseListener;)V

    .line 989
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mOnForcedPause:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 990
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

    .line 991
    :catch_0
    move-exception v0

    .line 992
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
    .line 1010
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mOnForcedReset:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1024
    :goto_0
    return-void

    .line 1015
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mOnForcedReset:Ljava/util/HashMap;

    monitor-enter v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1016
    :try_start_1
    new-instance v1, Lcom/stericsson/hardware/fm/FmReceiverImpl$OnForcedResetListenerTransport;

    invoke-direct {v1, p1}, Lcom/stericsson/hardware/fm/FmReceiverImpl$OnForcedResetListenerTransport;-><init>(Lcom/stericsson/hardware/fm/FmReceiver$OnForcedResetListener;)V

    .line 1018
    .local v1, transport:Lcom/stericsson/hardware/fm/FmReceiverImpl$OnForcedResetListenerTransport;
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mService:Lcom/stericsson/hardware/fm/IFmReceiver;

    invoke-interface {v2, v1}, Lcom/stericsson/hardware/fm/IFmReceiver;->addOnForcedResetListener(Lcom/stericsson/hardware/fm/IOnForcedResetListener;)V

    .line 1019
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mOnForcedReset:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1020
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

    .line 1021
    :catch_0
    move-exception v0

    .line 1022
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
    .line 951
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mOnStereo:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 964
    :goto_0
    return-void

    .line 956
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mOnStereo:Ljava/util/HashMap;

    monitor-enter v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 957
    :try_start_1
    new-instance v1, Lcom/stericsson/hardware/fm/FmReceiverImpl$OnStereoListenerTransport;

    invoke-direct {v1, p1}, Lcom/stericsson/hardware/fm/FmReceiverImpl$OnStereoListenerTransport;-><init>(Lcom/stericsson/hardware/fm/FmReceiver$OnPlayingInStereoListener;)V

    .line 958
    .local v1, transport:Lcom/stericsson/hardware/fm/FmReceiverImpl$OnStereoListenerTransport;
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mService:Lcom/stericsson/hardware/fm/IFmReceiver;

    invoke-interface {v2, v1}, Lcom/stericsson/hardware/fm/IFmReceiver;->addOnPlayingInStereoListener(Lcom/stericsson/hardware/fm/IOnStereoListener;)V

    .line 959
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mOnStereo:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 960
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

    .line 961
    :catch_0
    move-exception v0

    .line 962
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
    .line 863
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mOnRDSData:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 876
    :goto_0
    return-void

    .line 868
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mOnRDSData:Ljava/util/HashMap;

    monitor-enter v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 869
    :try_start_1
    new-instance v1, Lcom/stericsson/hardware/fm/FmReceiverImpl$OnRDSDataListenerTransport;

    invoke-direct {v1, p1}, Lcom/stericsson/hardware/fm/FmReceiverImpl$OnRDSDataListenerTransport;-><init>(Lcom/stericsson/hardware/fm/FmReceiver$OnRDSDataFoundListener;)V

    .line 870
    .local v1, transport:Lcom/stericsson/hardware/fm/FmReceiverImpl$OnRDSDataListenerTransport;
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mService:Lcom/stericsson/hardware/fm/IFmReceiver;

    invoke-interface {v2, v1}, Lcom/stericsson/hardware/fm/IFmReceiver;->addOnRDSDataFoundListener(Lcom/stericsson/hardware/fm/IOnRDSDataFoundListener;)V

    .line 871
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mOnRDSData:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 872
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

    .line 873
    :catch_0
    move-exception v0

    .line 874
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
    .line 834
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mOnScan:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 847
    :goto_0
    return-void

    .line 839
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mOnScan:Ljava/util/HashMap;

    monitor-enter v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 840
    :try_start_1
    new-instance v1, Lcom/stericsson/hardware/fm/FmReceiverImpl$OnScanListenerTransport;

    invoke-direct {v1, p1}, Lcom/stericsson/hardware/fm/FmReceiverImpl$OnScanListenerTransport;-><init>(Lcom/stericsson/hardware/fm/FmReceiver$OnScanListener;)V

    .line 841
    .local v1, transport:Lcom/stericsson/hardware/fm/FmReceiverImpl$OnScanListenerTransport;
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mService:Lcom/stericsson/hardware/fm/IFmReceiver;

    invoke-interface {v2, v1}, Lcom/stericsson/hardware/fm/IFmReceiver;->addOnScanListener(Lcom/stericsson/hardware/fm/IOnScanListener;)V

    .line 842
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mOnScan:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 843
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

    .line 844
    :catch_0
    move-exception v0

    .line 845
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
    .line 921
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mOnSignalStrength:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 935
    :goto_0
    return-void

    .line 926
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mOnSignalStrength:Ljava/util/HashMap;

    monitor-enter v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 927
    :try_start_1
    new-instance v1, Lcom/stericsson/hardware/fm/FmReceiverImpl$OnSignalStrengthListenerTransport;

    invoke-direct {v1, p1}, Lcom/stericsson/hardware/fm/FmReceiverImpl$OnSignalStrengthListenerTransport;-><init>(Lcom/stericsson/hardware/fm/FmReceiver$OnSignalStrengthChangedListener;)V

    .line 929
    .local v1, transport:Lcom/stericsson/hardware/fm/FmReceiverImpl$OnSignalStrengthListenerTransport;
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mService:Lcom/stericsson/hardware/fm/IFmReceiver;

    invoke-interface {v2, v1}, Lcom/stericsson/hardware/fm/IFmReceiver;->addOnSignalStrengthChangedListener(Lcom/stericsson/hardware/fm/IOnSignalStrengthListener;)V

    .line 930
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mOnSignalStrength:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 931
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

    .line 932
    :catch_0
    move-exception v0

    .line 933
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
    .line 805
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mOnStarted:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 818
    :goto_0
    return-void

    .line 810
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mOnStarted:Ljava/util/HashMap;

    monitor-enter v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 811
    :try_start_1
    new-instance v1, Lcom/stericsson/hardware/fm/FmReceiverImpl$OnStartedListenerTransport;

    invoke-direct {v1, p1}, Lcom/stericsson/hardware/fm/FmReceiverImpl$OnStartedListenerTransport;-><init>(Lcom/stericsson/hardware/fm/FmReceiver$OnStartedListener;)V

    .line 812
    .local v1, transport:Lcom/stericsson/hardware/fm/FmReceiverImpl$OnStartedListenerTransport;
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mService:Lcom/stericsson/hardware/fm/IFmReceiver;

    invoke-interface {v2, v1}, Lcom/stericsson/hardware/fm/IFmReceiver;->addOnStartedListener(Lcom/stericsson/hardware/fm/IOnStartedListener;)V

    .line 813
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mOnStarted:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 814
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

    .line 815
    :catch_0
    move-exception v0

    .line 816
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
    .line 1040
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mOnStateChanged:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1054
    :goto_0
    return-void

    .line 1045
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mOnStateChanged:Ljava/util/HashMap;

    monitor-enter v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1046
    :try_start_1
    new-instance v1, Lcom/stericsson/hardware/fm/FmReceiverImpl$OnStateChangedListenerTransport;

    invoke-direct {v1, p1}, Lcom/stericsson/hardware/fm/FmReceiverImpl$OnStateChangedListenerTransport;-><init>(Lcom/stericsson/hardware/fm/FmReceiver$OnStateChangedListener;)V

    .line 1048
    .local v1, transport:Lcom/stericsson/hardware/fm/FmReceiverImpl$OnStateChangedListenerTransport;
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mService:Lcom/stericsson/hardware/fm/IFmReceiver;

    invoke-interface {v2, v1}, Lcom/stericsson/hardware/fm/IFmReceiver;->addOnStateChangedListener(Lcom/stericsson/hardware/fm/IOnStateChangedListener;)V

    .line 1049
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mOnStateChanged:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1050
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

    .line 1051
    :catch_0
    move-exception v0

    .line 1052
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
    .line 690
    :try_start_0
    iget-object v1, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mService:Lcom/stericsson/hardware/fm/IFmReceiver;

    invoke-interface {v1}, Lcom/stericsson/hardware/fm/IFmReceiver;->getFrequency()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 693
    :goto_0
    return v1

    .line 691
    :catch_0
    move-exception v0

    .line 692
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "FmReceiver"

    const-string v2, "getFrequency: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 693
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
    .line 700
    :try_start_0
    iget-object v1, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mService:Lcom/stericsson/hardware/fm/IFmReceiver;

    invoke-interface {v1}, Lcom/stericsson/hardware/fm/IFmReceiver;->getSignalStrength()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 703
    :goto_0
    return v1

    .line 701
    :catch_0
    move-exception v0

    .line 702
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "FmReceiver"

    const-string v2, "getSignalStrength: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 703
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getState()I
    .locals 3

    .prologue
    .line 638
    :try_start_0
    iget-object v1, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mService:Lcom/stericsson/hardware/fm/IFmReceiver;

    invoke-interface {v1}, Lcom/stericsson/hardware/fm/IFmReceiver;->getState()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 641
    :goto_0
    return v1

    .line 639
    :catch_0
    move-exception v0

    .line 640
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "FmReceiver"

    const-string v2, "getState: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 641
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
    .line 680
    :try_start_0
    iget-object v1, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mService:Lcom/stericsson/hardware/fm/IFmReceiver;

    invoke-interface {v1}, Lcom/stericsson/hardware/fm/IFmReceiver;->getThreshold()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 683
    :goto_0
    return v1

    .line 681
    :catch_0
    move-exception v0

    .line 682
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "FmReceiver"

    const-string v2, "getThreshold: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 683
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isPlayingInStereo()Z
    .locals 3

    .prologue
    .line 710
    :try_start_0
    iget-object v1, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mService:Lcom/stericsson/hardware/fm/IFmReceiver;

    invoke-interface {v1}, Lcom/stericsson/hardware/fm/IFmReceiver;->isPlayingInStereo()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 713
    :goto_0
    return v1

    .line 711
    :catch_0
    move-exception v0

    .line 712
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "FmReceiver"

    const-string v2, "isPlayingInStereo: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 713
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isRDSDataSupported()Z
    .locals 3

    .prologue
    .line 648
    :try_start_0
    iget-object v1, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mService:Lcom/stericsson/hardware/fm/IFmReceiver;

    invoke-interface {v1}, Lcom/stericsson/hardware/fm/IFmReceiver;->isRDSDataSupported()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 651
    :goto_0
    return v1

    .line 649
    :catch_0
    move-exception v0

    .line 650
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "FmReceiver"

    const-string v2, "isRDSDataSupported: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 651
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isTunedToValidChannel()Z
    .locals 3

    .prologue
    .line 658
    :try_start_0
    iget-object v1, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mService:Lcom/stericsson/hardware/fm/IFmReceiver;

    invoke-interface {v1}, Lcom/stericsson/hardware/fm/IFmReceiver;->isTunedToValidChannel()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 661
    :goto_0
    return v1

    .line 659
    :catch_0
    move-exception v0

    .line 660
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "FmReceiver"

    const-string v2, "isTunedToValidChannel: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 661
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
    .line 619
    :try_start_0
    iget-object v1, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mService:Lcom/stericsson/hardware/fm/IFmReceiver;

    invoke-interface {v1}, Lcom/stericsson/hardware/fm/IFmReceiver;->pause()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 623
    :goto_0
    return-void

    .line 620
    :catch_0
    move-exception v0

    .line 621
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "FmReceiver"

    const-string/jumbo v2, "pause: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public removeOnAutomaticSwitchListener(Lcom/stericsson/hardware/fm/FmReceiver$OnAutomaticSwitchListener;)V
    .locals 4
    .parameter "listener"

    .prologue
    .line 1118
    :try_start_0
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mOnAutomaticSwitch:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stericsson/hardware/fm/FmReceiverImpl$OnAutomaticSwitchListenerTransport;

    .line 1119
    .local v1, transport:Lcom/stericsson/hardware/fm/FmReceiverImpl$OnAutomaticSwitchListenerTransport;
    if-eqz v1, :cond_0

    .line 1120
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mService:Lcom/stericsson/hardware/fm/IFmReceiver;

    invoke-interface {v2, v1}, Lcom/stericsson/hardware/fm/IFmReceiver;->removeOnAutomaticSwitchListener(Lcom/stericsson/hardware/fm/IOnAutomaticSwitchListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1125
    .end local v1           #transport:Lcom/stericsson/hardware/fm/FmReceiverImpl$OnAutomaticSwitchListenerTransport;
    :cond_0
    :goto_0
    return-void

    .line 1122
    :catch_0
    move-exception v0

    .line 1123
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "FmReceiver"

    const-string/jumbo v3, "removeOnAutomaticSwitchListener: DeadObjectException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public removeOnErrorListener(Lcom/stericsson/hardware/fm/FmReceiver$OnErrorListener;)V
    .locals 4
    .parameter "listener"

    .prologue
    .line 910
    :try_start_0
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mOnError:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stericsson/hardware/fm/FmReceiverImpl$OnErrorListenerTransport;

    .line 911
    .local v1, transport:Lcom/stericsson/hardware/fm/FmReceiverImpl$OnErrorListenerTransport;
    if-eqz v1, :cond_0

    .line 912
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mService:Lcom/stericsson/hardware/fm/IFmReceiver;

    invoke-interface {v2, v1}, Lcom/stericsson/hardware/fm/IFmReceiver;->removeOnErrorListener(Lcom/stericsson/hardware/fm/IOnErrorListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 917
    .end local v1           #transport:Lcom/stericsson/hardware/fm/FmReceiverImpl$OnErrorListenerTransport;
    :cond_0
    :goto_0
    return-void

    .line 914
    :catch_0
    move-exception v0

    .line 915
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "FmReceiver"

    const-string/jumbo v3, "removeOnErrorListener: DeadObjectException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public removeOnExtraCommandListener(Lcom/stericsson/hardware/fm/FmReceiver$OnExtraCommandListener;)V
    .locals 4
    .parameter "listener"

    .prologue
    .line 1089
    :try_start_0
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mOnExtraCommand:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stericsson/hardware/fm/FmReceiverImpl$OnExtraCommandListenerTransport;

    .line 1090
    .local v1, transport:Lcom/stericsson/hardware/fm/FmReceiverImpl$OnExtraCommandListenerTransport;
    if-eqz v1, :cond_0

    .line 1091
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mService:Lcom/stericsson/hardware/fm/IFmReceiver;

    invoke-interface {v2, v1}, Lcom/stericsson/hardware/fm/IFmReceiver;->removeOnExtraCommandListener(Lcom/stericsson/hardware/fm/IOnExtraCommandListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1096
    .end local v1           #transport:Lcom/stericsson/hardware/fm/FmReceiverImpl$OnExtraCommandListenerTransport;
    :cond_0
    :goto_0
    return-void

    .line 1093
    :catch_0
    move-exception v0

    .line 1094
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "FmReceiver"

    const-string/jumbo v3, "removeOnExtraCommandListener: DeadObjectException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public removeOnForcedPauseListener(Lcom/stericsson/hardware/fm/FmReceiver$OnForcedPauseListener;)V
    .locals 4
    .parameter "listener"

    .prologue
    .line 999
    :try_start_0
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mOnForcedPause:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stericsson/hardware/fm/FmReceiverImpl$OnForcedPauseListenerTransport;

    .line 1000
    .local v1, transport:Lcom/stericsson/hardware/fm/FmReceiverImpl$OnForcedPauseListenerTransport;
    if-eqz v1, :cond_0

    .line 1001
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mService:Lcom/stericsson/hardware/fm/IFmReceiver;

    invoke-interface {v2, v1}, Lcom/stericsson/hardware/fm/IFmReceiver;->removeOnForcedPauseListener(Lcom/stericsson/hardware/fm/IOnForcedPauseListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1006
    .end local v1           #transport:Lcom/stericsson/hardware/fm/FmReceiverImpl$OnForcedPauseListenerTransport;
    :cond_0
    :goto_0
    return-void

    .line 1003
    :catch_0
    move-exception v0

    .line 1004
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "FmReceiver"

    const-string/jumbo v3, "removeOnForcedPauseListener: DeadObjectException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public removeOnForcedResetListener(Lcom/stericsson/hardware/fm/FmReceiver$OnForcedResetListener;)V
    .locals 4
    .parameter "listener"

    .prologue
    .line 1029
    :try_start_0
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mOnForcedReset:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stericsson/hardware/fm/FmReceiverImpl$OnForcedResetListenerTransport;

    .line 1030
    .local v1, transport:Lcom/stericsson/hardware/fm/FmReceiverImpl$OnForcedResetListenerTransport;
    if-eqz v1, :cond_0

    .line 1031
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mService:Lcom/stericsson/hardware/fm/IFmReceiver;

    invoke-interface {v2, v1}, Lcom/stericsson/hardware/fm/IFmReceiver;->removeOnForcedResetListener(Lcom/stericsson/hardware/fm/IOnForcedResetListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1036
    .end local v1           #transport:Lcom/stericsson/hardware/fm/FmReceiverImpl$OnForcedResetListenerTransport;
    :cond_0
    :goto_0
    return-void

    .line 1033
    :catch_0
    move-exception v0

    .line 1034
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "FmReceiver"

    const-string/jumbo v3, "removeOnForcedResetListener: DeadObjectException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public removeOnPlayingInStereoListener(Lcom/stericsson/hardware/fm/FmReceiver$OnPlayingInStereoListener;)V
    .locals 4
    .parameter "listener"

    .prologue
    .line 969
    :try_start_0
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mOnStereo:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stericsson/hardware/fm/FmReceiverImpl$OnStereoListenerTransport;

    .line 970
    .local v1, transport:Lcom/stericsson/hardware/fm/FmReceiverImpl$OnStereoListenerTransport;
    if-eqz v1, :cond_0

    .line 971
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mService:Lcom/stericsson/hardware/fm/IFmReceiver;

    invoke-interface {v2, v1}, Lcom/stericsson/hardware/fm/IFmReceiver;->removeOnPlayingInStereoListener(Lcom/stericsson/hardware/fm/IOnStereoListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 976
    .end local v1           #transport:Lcom/stericsson/hardware/fm/FmReceiverImpl$OnStereoListenerTransport;
    :cond_0
    :goto_0
    return-void

    .line 973
    :catch_0
    move-exception v0

    .line 974
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "FmReceiver"

    const-string/jumbo v3, "removeOnPlayingInStereoListener: DeadObjectException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public removeOnRDSDataFoundListener(Lcom/stericsson/hardware/fm/FmReceiver$OnRDSDataFoundListener;)V
    .locals 4
    .parameter "listener"

    .prologue
    .line 881
    :try_start_0
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mOnRDSData:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stericsson/hardware/fm/FmReceiverImpl$OnRDSDataListenerTransport;

    .line 882
    .local v1, transport:Lcom/stericsson/hardware/fm/FmReceiverImpl$OnRDSDataListenerTransport;
    if-eqz v1, :cond_0

    .line 883
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mService:Lcom/stericsson/hardware/fm/IFmReceiver;

    invoke-interface {v2, v1}, Lcom/stericsson/hardware/fm/IFmReceiver;->removeOnRDSDataFoundListener(Lcom/stericsson/hardware/fm/IOnRDSDataFoundListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 888
    .end local v1           #transport:Lcom/stericsson/hardware/fm/FmReceiverImpl$OnRDSDataListenerTransport;
    :cond_0
    :goto_0
    return-void

    .line 885
    :catch_0
    move-exception v0

    .line 886
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "FmReceiver"

    const-string/jumbo v3, "removeOnRDSDataFoundListener: DeadObjectException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public removeOnScanListener(Lcom/stericsson/hardware/fm/FmReceiver$OnScanListener;)V
    .locals 4
    .parameter "listener"

    .prologue
    .line 852
    :try_start_0
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mOnScan:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stericsson/hardware/fm/FmReceiverImpl$OnScanListenerTransport;

    .line 853
    .local v1, transport:Lcom/stericsson/hardware/fm/FmReceiverImpl$OnScanListenerTransport;
    if-eqz v1, :cond_0

    .line 854
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mService:Lcom/stericsson/hardware/fm/IFmReceiver;

    invoke-interface {v2, v1}, Lcom/stericsson/hardware/fm/IFmReceiver;->removeOnScanListener(Lcom/stericsson/hardware/fm/IOnScanListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 859
    .end local v1           #transport:Lcom/stericsson/hardware/fm/FmReceiverImpl$OnScanListenerTransport;
    :cond_0
    :goto_0
    return-void

    .line 856
    :catch_0
    move-exception v0

    .line 857
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "FmReceiver"

    const-string/jumbo v3, "removeOnScanListener: DeadObjectException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public removeOnSignalStrengthChangedListener(Lcom/stericsson/hardware/fm/FmReceiver$OnSignalStrengthChangedListener;)V
    .locals 4
    .parameter "listener"

    .prologue
    .line 940
    :try_start_0
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mOnSignalStrength:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stericsson/hardware/fm/FmReceiverImpl$OnSignalStrengthListenerTransport;

    .line 941
    .local v1, transport:Lcom/stericsson/hardware/fm/FmReceiverImpl$OnSignalStrengthListenerTransport;
    if-eqz v1, :cond_0

    .line 942
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mService:Lcom/stericsson/hardware/fm/IFmReceiver;

    invoke-interface {v2, v1}, Lcom/stericsson/hardware/fm/IFmReceiver;->removeOnSignalStrengthChangedListener(Lcom/stericsson/hardware/fm/IOnSignalStrengthListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 947
    .end local v1           #transport:Lcom/stericsson/hardware/fm/FmReceiverImpl$OnSignalStrengthListenerTransport;
    :cond_0
    :goto_0
    return-void

    .line 944
    :catch_0
    move-exception v0

    .line 945
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "FmReceiver"

    const-string/jumbo v3, "removeOnSignalStrengthChangedListener: DeadObjectException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public removeOnStartedListener(Lcom/stericsson/hardware/fm/FmReceiver$OnStartedListener;)V
    .locals 4
    .parameter "listener"

    .prologue
    .line 823
    :try_start_0
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mOnStarted:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stericsson/hardware/fm/FmReceiverImpl$OnStartedListenerTransport;

    .line 824
    .local v1, transport:Lcom/stericsson/hardware/fm/FmReceiverImpl$OnStartedListenerTransport;
    if-eqz v1, :cond_0

    .line 825
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mService:Lcom/stericsson/hardware/fm/IFmReceiver;

    invoke-interface {v2, v1}, Lcom/stericsson/hardware/fm/IFmReceiver;->removeOnStartedListener(Lcom/stericsson/hardware/fm/IOnStartedListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 830
    .end local v1           #transport:Lcom/stericsson/hardware/fm/FmReceiverImpl$OnStartedListenerTransport;
    :cond_0
    :goto_0
    return-void

    .line 827
    :catch_0
    move-exception v0

    .line 828
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "FmReceiver"

    const-string/jumbo v3, "removeOnStartedListener: DeadObjectException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public removeOnStateChangedListener(Lcom/stericsson/hardware/fm/FmReceiver$OnStateChangedListener;)V
    .locals 4
    .parameter "listener"

    .prologue
    .line 1059
    :try_start_0
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mOnStateChanged:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stericsson/hardware/fm/FmReceiverImpl$OnStateChangedListenerTransport;

    .line 1060
    .local v1, transport:Lcom/stericsson/hardware/fm/FmReceiverImpl$OnStateChangedListenerTransport;
    if-eqz v1, :cond_0

    .line 1061
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mService:Lcom/stericsson/hardware/fm/IFmReceiver;

    invoke-interface {v2, v1}, Lcom/stericsson/hardware/fm/IFmReceiver;->removeOnStateChangedListener(Lcom/stericsson/hardware/fm/IOnStateChangedListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1066
    .end local v1           #transport:Lcom/stericsson/hardware/fm/FmReceiverImpl$OnStateChangedListenerTransport;
    :cond_0
    :goto_0
    return-void

    .line 1063
    :catch_0
    move-exception v0

    .line 1064
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "FmReceiver"

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
    .line 628
    :try_start_0
    iget-object v1, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mService:Lcom/stericsson/hardware/fm/IFmReceiver;

    invoke-interface {v1}, Lcom/stericsson/hardware/fm/IFmReceiver;->reset()V

    .line 629
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mBand:Lcom/stericsson/hardware/fm/FmBand;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 633
    :goto_0
    return-void

    .line 630
    :catch_0
    move-exception v0

    .line 631
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "FmReceiver"

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
    .line 610
    :try_start_0
    iget-object v1, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mService:Lcom/stericsson/hardware/fm/IFmReceiver;

    invoke-interface {v1}, Lcom/stericsson/hardware/fm/IFmReceiver;->resume()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 614
    :goto_0
    return-void

    .line 611
    :catch_0
    move-exception v0

    .line 612
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "FmReceiver"

    const-string/jumbo v2, "resume: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public scanDown()V
    .locals 3

    .prologue
    .line 769
    :try_start_0
    iget-object v1, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mService:Lcom/stericsson/hardware/fm/IFmReceiver;

    invoke-interface {v1}, Lcom/stericsson/hardware/fm/IFmReceiver;->scanDown()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 773
    :goto_0
    return-void

    .line 770
    :catch_0
    move-exception v0

    .line 771
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "FmReceiver"

    const-string/jumbo v2, "scanDown: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public scanUp()V
    .locals 3

    .prologue
    .line 778
    :try_start_0
    iget-object v1, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mService:Lcom/stericsson/hardware/fm/IFmReceiver;

    invoke-interface {v1}, Lcom/stericsson/hardware/fm/IFmReceiver;->scanUp()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 782
    :goto_0
    return-void

    .line 779
    :catch_0
    move-exception v0

    .line 780
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "FmReceiver"

    const-string/jumbo v2, "scanUp: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public sendExtraCommand(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 3
    .parameter "command"
    .parameter "extras"

    .prologue
    .line 796
    :try_start_0
    iget-object v1, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mService:Lcom/stericsson/hardware/fm/IFmReceiver;

    invoke-interface {v1, p1, p2}, Lcom/stericsson/hardware/fm/IFmReceiver;->sendExtraCommand(Ljava/lang/String;[Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 799
    :goto_0
    return v1

    .line 797
    :catch_0
    move-exception v0

    .line 798
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "FmReceiver"

    const-string/jumbo v2, "sendExtraCommand: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 799
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setAutomaticAFSwitching(Z)V
    .locals 3
    .parameter "automatic"

    .prologue
    .line 729
    :try_start_0
    iget-object v1, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mService:Lcom/stericsson/hardware/fm/IFmReceiver;

    invoke-interface {v1, p1}, Lcom/stericsson/hardware/fm/IFmReceiver;->setAutomaticAFSwitching(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 733
    :goto_0
    return-void

    .line 730
    :catch_0
    move-exception v0

    .line 731
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "FmReceiver"

    const-string/jumbo v2, "setAutomaticAFSwitching: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setAutomaticTASwitching(Z)V
    .locals 3
    .parameter "automatic"

    .prologue
    .line 738
    :try_start_0
    iget-object v1, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mService:Lcom/stericsson/hardware/fm/IFmReceiver;

    invoke-interface {v1, p1}, Lcom/stericsson/hardware/fm/IFmReceiver;->setAutomaticTASwitching(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 742
    :goto_0
    return-void

    .line 739
    :catch_0
    move-exception v0

    .line 740
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "FmReceiver"

    const-string/jumbo v2, "setAutomaticTASwitching: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setForceMono(Z)V
    .locals 3
    .parameter "forceMono"

    .prologue
    .line 720
    :try_start_0
    iget-object v1, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mService:Lcom/stericsson/hardware/fm/IFmReceiver;

    invoke-interface {v1, p1}, Lcom/stericsson/hardware/fm/IFmReceiver;->setForceMono(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 724
    :goto_0
    return-void

    .line 721
    :catch_0
    move-exception v0

    .line 722
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "FmReceiver"

    const-string/jumbo v2, "setForceMono: RemoteException"

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
    .line 746
    iget-object v1, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mBand:Lcom/stericsson/hardware/fm/FmBand;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mBand:Lcom/stericsson/hardware/fm/FmBand;

    invoke-virtual {v1, p1}, Lcom/stericsson/hardware/fm/FmBand;->isFrequencyValid(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 747
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Frequency is not valid in this band."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 751
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mService:Lcom/stericsson/hardware/fm/IFmReceiver;

    invoke-interface {v1, p1}, Lcom/stericsson/hardware/fm/IFmReceiver;->setFrequency(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 755
    :goto_0
    return-void

    .line 752
    :catch_0
    move-exception v0

    .line 753
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "FmReceiver"

    const-string/jumbo v2, "setFrequency: RemoteException"

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
    .line 667
    if-ltz p1, :cond_0

    const/16 v1, 0x3e8

    if-le p1, v1, :cond_1

    .line 668
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "threshold not within limits"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 671
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mService:Lcom/stericsson/hardware/fm/IFmReceiver;

    invoke-interface {v1, p1}, Lcom/stericsson/hardware/fm/IFmReceiver;->setThreshold(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 675
    :goto_0
    return-void

    .line 672
    :catch_0
    move-exception v0

    .line 673
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "FmReceiver"

    const-string/jumbo v2, "setThreshold: RemoteException"

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
    .line 596
    if-nez p1, :cond_0

    .line 597
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Band cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 600
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mService:Lcom/stericsson/hardware/fm/IFmReceiver;

    invoke-interface {v1, p1}, Lcom/stericsson/hardware/fm/IFmReceiver;->start(Lcom/stericsson/hardware/fm/FmBand;)V

    .line 601
    iput-object p1, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mBand:Lcom/stericsson/hardware/fm/FmBand;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 605
    :goto_0
    return-void

    .line 602
    :catch_0
    move-exception v0

    .line 603
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "FmReceiver"

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
    .line 583
    if-nez p1, :cond_0

    .line 584
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Band cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 587
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mService:Lcom/stericsson/hardware/fm/IFmReceiver;

    invoke-interface {v1, p1}, Lcom/stericsson/hardware/fm/IFmReceiver;->startAsync(Lcom/stericsson/hardware/fm/FmBand;)V

    .line 588
    iput-object p1, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mBand:Lcom/stericsson/hardware/fm/FmBand;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 592
    :goto_0
    return-void

    .line 589
    :catch_0
    move-exception v0

    .line 590
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "FmReceiver"

    const-string/jumbo v2, "startAsync: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public startFullScan()V
    .locals 3

    .prologue
    .line 760
    :try_start_0
    iget-object v1, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mService:Lcom/stericsson/hardware/fm/IFmReceiver;

    invoke-interface {v1}, Lcom/stericsson/hardware/fm/IFmReceiver;->startFullScan()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 764
    :goto_0
    return-void

    .line 761
    :catch_0
    move-exception v0

    .line 762
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "FmReceiver"

    const-string/jumbo v2, "startFullScan: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public stopScan()V
    .locals 3

    .prologue
    .line 787
    :try_start_0
    iget-object v1, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl;->mService:Lcom/stericsson/hardware/fm/IFmReceiver;

    invoke-interface {v1}, Lcom/stericsson/hardware/fm/IFmReceiver;->stopScan()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 791
    :goto_0
    return-void

    .line 788
    :catch_0
    move-exception v0

    .line 789
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "FmReceiver"

    const-string/jumbo v2, "stopScan: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

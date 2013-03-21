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
    invoke-direct {p0}, Lcom/stericsson/hardware/fm/FmTransmitter;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/stericsson/hardware/fm/FmTransmitterImpl;->mOnStateChanged:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/stericsson/hardware/fm/FmTransmitterImpl;->mOnStarted:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/stericsson/hardware/fm/FmTransmitterImpl;->mOnError:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/stericsson/hardware/fm/FmTransmitterImpl;->mOnBlockScan:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/stericsson/hardware/fm/FmTransmitterImpl;->mOnForcedPause:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/stericsson/hardware/fm/FmTransmitterImpl;->mOnForcedReset:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/stericsson/hardware/fm/FmTransmitterImpl;->mOnExtraCommand:Ljava/util/HashMap;

    iput-object p1, p0, Lcom/stericsson/hardware/fm/FmTransmitterImpl;->mService:Lcom/stericsson/hardware/fm/IFmTransmitter;

    return-void
.end method


# virtual methods
.method public addOnErrorListener(Lcom/stericsson/hardware/fm/FmTransmitter$OnErrorListener;)V
    .locals 4
    .parameter "listener"

    .prologue
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmTransmitterImpl;->mOnError:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmTransmitterImpl;->mOnError:Ljava/util/HashMap;

    monitor-enter v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance v1, Lcom/stericsson/hardware/fm/FmTransmitterImpl$OnErrorListenerTransport;

    invoke-direct {v1, p1}, Lcom/stericsson/hardware/fm/FmTransmitterImpl$OnErrorListenerTransport;-><init>(Lcom/stericsson/hardware/fm/FmTransmitter$OnErrorListener;)V

    .local v1, transport:Lcom/stericsson/hardware/fm/FmTransmitterImpl$OnErrorListenerTransport;
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmTransmitterImpl;->mService:Lcom/stericsson/hardware/fm/IFmTransmitter;

    invoke-interface {v2, v1}, Lcom/stericsson/hardware/fm/IFmTransmitter;->addOnErrorListener(Lcom/stericsson/hardware/fm/IOnErrorListener;)V

    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmTransmitterImpl;->mOnError:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

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

    :catch_0
    move-exception v0

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
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmTransmitterImpl;->mOnExtraCommand:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmTransmitterImpl;->mOnExtraCommand:Ljava/util/HashMap;

    monitor-enter v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance v1, Lcom/stericsson/hardware/fm/FmTransmitterImpl$OnExtraCommandListenerTransport;

    invoke-direct {v1, p1}, Lcom/stericsson/hardware/fm/FmTransmitterImpl$OnExtraCommandListenerTransport;-><init>(Lcom/stericsson/hardware/fm/FmTransmitter$OnExtraCommandListener;)V

    .local v1, transport:Lcom/stericsson/hardware/fm/FmTransmitterImpl$OnExtraCommandListenerTransport;
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmTransmitterImpl;->mService:Lcom/stericsson/hardware/fm/IFmTransmitter;

    invoke-interface {v2, v1}, Lcom/stericsson/hardware/fm/IFmTransmitter;->addOnExtraCommandListener(Lcom/stericsson/hardware/fm/IOnExtraCommandListener;)V

    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmTransmitterImpl;->mOnExtraCommand:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

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

    :catch_0
    move-exception v0

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
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmTransmitterImpl;->mOnForcedPause:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmTransmitterImpl;->mOnForcedPause:Ljava/util/HashMap;

    monitor-enter v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance v1, Lcom/stericsson/hardware/fm/FmTransmitterImpl$OnForcedPauseListenerTransport;

    invoke-direct {v1, p1}, Lcom/stericsson/hardware/fm/FmTransmitterImpl$OnForcedPauseListenerTransport;-><init>(Lcom/stericsson/hardware/fm/FmTransmitter$OnForcedPauseListener;)V

    .local v1, transport:Lcom/stericsson/hardware/fm/FmTransmitterImpl$OnForcedPauseListenerTransport;
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmTransmitterImpl;->mService:Lcom/stericsson/hardware/fm/IFmTransmitter;

    invoke-interface {v2, v1}, Lcom/stericsson/hardware/fm/IFmTransmitter;->addOnForcedPauseListener(Lcom/stericsson/hardware/fm/IOnForcedPauseListener;)V

    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmTransmitterImpl;->mOnForcedPause:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

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

    :catch_0
    move-exception v0

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
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmTransmitterImpl;->mOnForcedReset:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmTransmitterImpl;->mOnForcedReset:Ljava/util/HashMap;

    monitor-enter v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance v1, Lcom/stericsson/hardware/fm/FmTransmitterImpl$OnForcedResetListenerTransport;

    invoke-direct {v1, p1}, Lcom/stericsson/hardware/fm/FmTransmitterImpl$OnForcedResetListenerTransport;-><init>(Lcom/stericsson/hardware/fm/FmTransmitter$OnForcedResetListener;)V

    .local v1, transport:Lcom/stericsson/hardware/fm/FmTransmitterImpl$OnForcedResetListenerTransport;
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmTransmitterImpl;->mService:Lcom/stericsson/hardware/fm/IFmTransmitter;

    invoke-interface {v2, v1}, Lcom/stericsson/hardware/fm/IFmTransmitter;->addOnForcedResetListener(Lcom/stericsson/hardware/fm/IOnForcedResetListener;)V

    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmTransmitterImpl;->mOnForcedReset:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

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

    :catch_0
    move-exception v0

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
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmTransmitterImpl;->mOnBlockScan:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmTransmitterImpl;->mOnBlockScan:Ljava/util/HashMap;

    monitor-enter v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance v1, Lcom/stericsson/hardware/fm/FmTransmitterImpl$OnBlockScanListenerTransport;

    invoke-direct {v1, p1}, Lcom/stericsson/hardware/fm/FmTransmitterImpl$OnBlockScanListenerTransport;-><init>(Lcom/stericsson/hardware/fm/FmTransmitter$OnScanListener;)V

    .local v1, transport:Lcom/stericsson/hardware/fm/FmTransmitterImpl$OnBlockScanListenerTransport;
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmTransmitterImpl;->mService:Lcom/stericsson/hardware/fm/IFmTransmitter;

    invoke-interface {v2, v1}, Lcom/stericsson/hardware/fm/IFmTransmitter;->addOnBlockScanListener(Lcom/stericsson/hardware/fm/IOnBlockScanListener;)V

    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmTransmitterImpl;->mOnBlockScan:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

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

    :catch_0
    move-exception v0

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
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmTransmitterImpl;->mOnStarted:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmTransmitterImpl;->mOnStarted:Ljava/util/HashMap;

    monitor-enter v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance v1, Lcom/stericsson/hardware/fm/FmTransmitterImpl$OnStartedListenerTransport;

    invoke-direct {v1, p1}, Lcom/stericsson/hardware/fm/FmTransmitterImpl$OnStartedListenerTransport;-><init>(Lcom/stericsson/hardware/fm/FmTransmitter$OnStartedListener;)V

    .local v1, transport:Lcom/stericsson/hardware/fm/FmTransmitterImpl$OnStartedListenerTransport;
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmTransmitterImpl;->mService:Lcom/stericsson/hardware/fm/IFmTransmitter;

    invoke-interface {v2, v1}, Lcom/stericsson/hardware/fm/IFmTransmitter;->addOnStartedListener(Lcom/stericsson/hardware/fm/IOnStartedListener;)V

    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmTransmitterImpl;->mOnStarted:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

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

    :catch_0
    move-exception v0

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
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmTransmitterImpl;->mOnStateChanged:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmTransmitterImpl;->mOnStateChanged:Ljava/util/HashMap;

    monitor-enter v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance v1, Lcom/stericsson/hardware/fm/FmTransmitterImpl$OnStateChangedListenerTransport;

    invoke-direct {v1, p1}, Lcom/stericsson/hardware/fm/FmTransmitterImpl$OnStateChangedListenerTransport;-><init>(Lcom/stericsson/hardware/fm/FmTransmitter$OnStateChangedListener;)V

    .local v1, transport:Lcom/stericsson/hardware/fm/FmTransmitterImpl$OnStateChangedListenerTransport;
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmTransmitterImpl;->mService:Lcom/stericsson/hardware/fm/IFmTransmitter;

    invoke-interface {v2, v1}, Lcom/stericsson/hardware/fm/IFmTransmitter;->addOnStateChangedListener(Lcom/stericsson/hardware/fm/IOnStateChangedListener;)V

    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmTransmitterImpl;->mOnStateChanged:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

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

    :catch_0
    move-exception v0

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
    :try_start_0
    iget-object v1, p0, Lcom/stericsson/hardware/fm/FmTransmitterImpl;->mService:Lcom/stericsson/hardware/fm/IFmTransmitter;

    invoke-interface {v1}, Lcom/stericsson/hardware/fm/IFmTransmitter;->getFrequency()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "FmTransmitter"

    const-string v2, "getFrequency: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getState()I
    .locals 3

    .prologue
    :try_start_0
    iget-object v1, p0, Lcom/stericsson/hardware/fm/FmTransmitterImpl;->mService:Lcom/stericsson/hardware/fm/IFmTransmitter;

    invoke-interface {v1}, Lcom/stericsson/hardware/fm/IFmTransmitter;->getState()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "FmTransmitter"

    const-string v2, "getState: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isBlockScanSupported()Z
    .locals 3

    .prologue
    :try_start_0
    iget-object v1, p0, Lcom/stericsson/hardware/fm/FmTransmitterImpl;->mService:Lcom/stericsson/hardware/fm/IFmTransmitter;

    invoke-interface {v1}, Lcom/stericsson/hardware/fm/IFmTransmitter;->isBlockScanSupported()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "FmTransmitter"

    const-string v2, "isBlockScanSupported: RemoteException"

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
    iget-object v1, p0, Lcom/stericsson/hardware/fm/FmTransmitterImpl;->mService:Lcom/stericsson/hardware/fm/IFmTransmitter;

    invoke-interface {v1}, Lcom/stericsson/hardware/fm/IFmTransmitter;->pause()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "FmTransmitter"

    const-string v2, "pause: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public removeOnErrorListener(Lcom/stericsson/hardware/fm/FmTransmitter$OnErrorListener;)V
    .locals 4
    .parameter "listener"

    .prologue
    :try_start_0
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmTransmitterImpl;->mOnError:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stericsson/hardware/fm/FmTransmitterImpl$OnErrorListenerTransport;

    .local v1, transport:Lcom/stericsson/hardware/fm/FmTransmitterImpl$OnErrorListenerTransport;
    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmTransmitterImpl;->mService:Lcom/stericsson/hardware/fm/IFmTransmitter;

    invoke-interface {v2, v1}, Lcom/stericsson/hardware/fm/IFmTransmitter;->removeOnErrorListener(Lcom/stericsson/hardware/fm/IOnErrorListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1           #transport:Lcom/stericsson/hardware/fm/FmTransmitterImpl$OnErrorListenerTransport;
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "FmTransmitter"

    const-string v3, "removeOnErrorListener: DeadObjectException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public removeOnExtraCommandListener(Lcom/stericsson/hardware/fm/FmTransmitter$OnExtraCommandListener;)V
    .locals 4
    .parameter "listener"

    .prologue
    :try_start_0
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmTransmitterImpl;->mOnExtraCommand:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stericsson/hardware/fm/FmTransmitterImpl$OnExtraCommandListenerTransport;

    .local v1, transport:Lcom/stericsson/hardware/fm/FmTransmitterImpl$OnExtraCommandListenerTransport;
    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmTransmitterImpl;->mService:Lcom/stericsson/hardware/fm/IFmTransmitter;

    invoke-interface {v2, v1}, Lcom/stericsson/hardware/fm/IFmTransmitter;->removeOnExtraCommandListener(Lcom/stericsson/hardware/fm/IOnExtraCommandListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1           #transport:Lcom/stericsson/hardware/fm/FmTransmitterImpl$OnExtraCommandListenerTransport;
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "FmTransmitter"

    const-string v3, "removeOnExtraCommandListener: DeadObjectException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public removeOnForcedPauseListener(Lcom/stericsson/hardware/fm/FmTransmitter$OnForcedPauseListener;)V
    .locals 4
    .parameter "listener"

    .prologue
    :try_start_0
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmTransmitterImpl;->mOnForcedPause:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stericsson/hardware/fm/FmTransmitterImpl$OnForcedPauseListenerTransport;

    .local v1, transport:Lcom/stericsson/hardware/fm/FmTransmitterImpl$OnForcedPauseListenerTransport;
    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmTransmitterImpl;->mService:Lcom/stericsson/hardware/fm/IFmTransmitter;

    invoke-interface {v2, v1}, Lcom/stericsson/hardware/fm/IFmTransmitter;->removeOnForcedPauseListener(Lcom/stericsson/hardware/fm/IOnForcedPauseListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1           #transport:Lcom/stericsson/hardware/fm/FmTransmitterImpl$OnForcedPauseListenerTransport;
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "FmTransmitter"

    const-string v3, "removeOnForcedPauseListener: DeadObjectException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public removeOnForcedResetListener(Lcom/stericsson/hardware/fm/FmTransmitter$OnForcedResetListener;)V
    .locals 4
    .parameter "listener"

    .prologue
    :try_start_0
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmTransmitterImpl;->mOnForcedReset:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stericsson/hardware/fm/FmTransmitterImpl$OnForcedResetListenerTransport;

    .local v1, transport:Lcom/stericsson/hardware/fm/FmTransmitterImpl$OnForcedResetListenerTransport;
    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmTransmitterImpl;->mService:Lcom/stericsson/hardware/fm/IFmTransmitter;

    invoke-interface {v2, v1}, Lcom/stericsson/hardware/fm/IFmTransmitter;->removeOnForcedResetListener(Lcom/stericsson/hardware/fm/IOnForcedResetListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1           #transport:Lcom/stericsson/hardware/fm/FmTransmitterImpl$OnForcedResetListenerTransport;
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "FmTransmitter"

    const-string v3, "removeOnForcedResetListener: DeadObjectException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public removeOnScanListener(Lcom/stericsson/hardware/fm/FmTransmitter$OnScanListener;)V
    .locals 4
    .parameter "listener"

    .prologue
    :try_start_0
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmTransmitterImpl;->mOnBlockScan:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stericsson/hardware/fm/FmTransmitterImpl$OnBlockScanListenerTransport;

    .local v1, transport:Lcom/stericsson/hardware/fm/FmTransmitterImpl$OnBlockScanListenerTransport;
    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmTransmitterImpl;->mService:Lcom/stericsson/hardware/fm/IFmTransmitter;

    invoke-interface {v2, v1}, Lcom/stericsson/hardware/fm/IFmTransmitter;->removeOnBlockScanListener(Lcom/stericsson/hardware/fm/IOnBlockScanListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1           #transport:Lcom/stericsson/hardware/fm/FmTransmitterImpl$OnBlockScanListenerTransport;
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "FmTransmitter"

    const-string v3, "removeOnScanListener: DeadObjectException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public removeOnStartedListener(Lcom/stericsson/hardware/fm/FmTransmitter$OnStartedListener;)V
    .locals 4
    .parameter "listener"

    .prologue
    :try_start_0
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmTransmitterImpl;->mOnStarted:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stericsson/hardware/fm/FmTransmitterImpl$OnStartedListenerTransport;

    .local v1, transport:Lcom/stericsson/hardware/fm/FmTransmitterImpl$OnStartedListenerTransport;
    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmTransmitterImpl;->mService:Lcom/stericsson/hardware/fm/IFmTransmitter;

    invoke-interface {v2, v1}, Lcom/stericsson/hardware/fm/IFmTransmitter;->removeOnStartedListener(Lcom/stericsson/hardware/fm/IOnStartedListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1           #transport:Lcom/stericsson/hardware/fm/FmTransmitterImpl$OnStartedListenerTransport;
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "FmTransmitter"

    const-string v3, "removeOnStartedListener: DeadObjectException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public removeOnStateChangedListener(Lcom/stericsson/hardware/fm/FmTransmitter$OnStateChangedListener;)V
    .locals 4
    .parameter "listener"

    .prologue
    :try_start_0
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmTransmitterImpl;->mOnStateChanged:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stericsson/hardware/fm/FmTransmitterImpl$OnStateChangedListenerTransport;

    .local v1, transport:Lcom/stericsson/hardware/fm/FmTransmitterImpl$OnStateChangedListenerTransport;
    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmTransmitterImpl;->mService:Lcom/stericsson/hardware/fm/IFmTransmitter;

    invoke-interface {v2, v1}, Lcom/stericsson/hardware/fm/IFmTransmitter;->removeOnStateChangedListener(Lcom/stericsson/hardware/fm/IOnStateChangedListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1           #transport:Lcom/stericsson/hardware/fm/FmTransmitterImpl$OnStateChangedListenerTransport;
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "FmTransmitter"

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
    iget-object v1, p0, Lcom/stericsson/hardware/fm/FmTransmitterImpl;->mService:Lcom/stericsson/hardware/fm/IFmTransmitter;

    invoke-interface {v1}, Lcom/stericsson/hardware/fm/IFmTransmitter;->reset()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/stericsson/hardware/fm/FmTransmitterImpl;->mBand:Lcom/stericsson/hardware/fm/FmBand;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "FmTransmitter"

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
    iget-object v1, p0, Lcom/stericsson/hardware/fm/FmTransmitterImpl;->mService:Lcom/stericsson/hardware/fm/IFmTransmitter;

    invoke-interface {v1}, Lcom/stericsson/hardware/fm/IFmTransmitter;->resume()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "FmTransmitter"

    const-string v2, "resume: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public sendExtraCommand(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 3
    .parameter "command"
    .parameter "extras"

    .prologue
    :try_start_0
    iget-object v1, p0, Lcom/stericsson/hardware/fm/FmTransmitterImpl;->mService:Lcom/stericsson/hardware/fm/IFmTransmitter;

    invoke-interface {v1, p1, p2}, Lcom/stericsson/hardware/fm/IFmTransmitter;->sendExtraCommand(Ljava/lang/String;[Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "FmTransmitter"

    const-string v2, "sendExtraCommand: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

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
    iget-object v1, p0, Lcom/stericsson/hardware/fm/FmTransmitterImpl;->mBand:Lcom/stericsson/hardware/fm/FmBand;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/stericsson/hardware/fm/FmTransmitterImpl;->mBand:Lcom/stericsson/hardware/fm/FmBand;

    invoke-virtual {v1, p1}, Lcom/stericsson/hardware/fm/FmBand;->isFrequencyValid(I)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Frequency is not valid in this band."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/stericsson/hardware/fm/FmTransmitterImpl;->mService:Lcom/stericsson/hardware/fm/IFmTransmitter;

    invoke-interface {v1, p1}, Lcom/stericsson/hardware/fm/IFmTransmitter;->setFrequency(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "FmTransmitter"

    const-string v2, "setFrequency: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setRdsData(Landroid/os/Bundle;)V
    .locals 3
    .parameter "rdsData"

    .prologue
    :try_start_0
    iget-object v1, p0, Lcom/stericsson/hardware/fm/FmTransmitterImpl;->mService:Lcom/stericsson/hardware/fm/IFmTransmitter;

    invoke-interface {v1, p1}, Lcom/stericsson/hardware/fm/IFmTransmitter;->setRdsData(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "FmTransmitter"

    const-string v2, "setRdsData: RemoteException"

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
    iget-object v1, p0, Lcom/stericsson/hardware/fm/FmTransmitterImpl;->mService:Lcom/stericsson/hardware/fm/IFmTransmitter;

    invoke-interface {v1, p1}, Lcom/stericsson/hardware/fm/IFmTransmitter;->start(Lcom/stericsson/hardware/fm/FmBand;)V

    iput-object p1, p0, Lcom/stericsson/hardware/fm/FmTransmitterImpl;->mBand:Lcom/stericsson/hardware/fm/FmBand;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "FmTransmitter"

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
    iget-object v1, p0, Lcom/stericsson/hardware/fm/FmTransmitterImpl;->mService:Lcom/stericsson/hardware/fm/IFmTransmitter;

    invoke-interface {v1, p1}, Lcom/stericsson/hardware/fm/IFmTransmitter;->startAsync(Lcom/stericsson/hardware/fm/FmBand;)V

    iput-object p1, p0, Lcom/stericsson/hardware/fm/FmTransmitterImpl;->mBand:Lcom/stericsson/hardware/fm/FmBand;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "FmTransmitter"

    const-string v2, "startAsync: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public startBlockScan(II)V
    .locals 3
    .parameter "startFrequency"
    .parameter "endFrequency"

    .prologue
    :try_start_0
    iget-object v1, p0, Lcom/stericsson/hardware/fm/FmTransmitterImpl;->mService:Lcom/stericsson/hardware/fm/IFmTransmitter;

    invoke-interface {v1, p1, p2}, Lcom/stericsson/hardware/fm/IFmTransmitter;->startBlockScan(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "FmTransmitter"

    const-string v2, "startBlockScan: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public stopScan()V
    .locals 3

    .prologue
    :try_start_0
    iget-object v1, p0, Lcom/stericsson/hardware/fm/FmTransmitterImpl;->mService:Lcom/stericsson/hardware/fm/IFmTransmitter;

    invoke-interface {v1}, Lcom/stericsson/hardware/fm/IFmTransmitter;->stopScan()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "FmTransmitter"

    const-string v2, "stopScan: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

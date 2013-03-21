.class final Lcom/stericsson/hardware/fm/FmTransmitterService$OnErrorReceiver;
.super Ljava/lang/Object;
.source "FmTransmitterService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stericsson/hardware/fm/FmTransmitterService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "OnErrorReceiver"
.end annotation


# instance fields
.field final mKey:Ljava/lang/Object;

.field final mListener:Lcom/stericsson/hardware/fm/IOnErrorListener;

.field final synthetic this$0:Lcom/stericsson/hardware/fm/FmTransmitterService;


# direct methods
.method constructor <init>(Lcom/stericsson/hardware/fm/FmTransmitterService;Lcom/stericsson/hardware/fm/IOnErrorListener;)V
    .locals 1
    .parameter
    .parameter "listener"

    .prologue
    iput-object p1, p0, Lcom/stericsson/hardware/fm/FmTransmitterService$OnErrorReceiver;->this$0:Lcom/stericsson/hardware/fm/FmTransmitterService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/stericsson/hardware/fm/FmTransmitterService$OnErrorReceiver;->mListener:Lcom/stericsson/hardware/fm/IOnErrorListener;

    invoke-interface {p2}, Lcom/stericsson/hardware/fm/IOnErrorListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Lcom/stericsson/hardware/fm/FmTransmitterService$OnErrorReceiver;->mKey:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    .prologue
    const-string v0, "FmTransmitterService"

    const-string v1, "FM transmitter listener died"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/stericsson/hardware/fm/FmTransmitterService$OnErrorReceiver;->this$0:Lcom/stericsson/hardware/fm/FmTransmitterService;

    #getter for: Lcom/stericsson/hardware/fm/FmTransmitterService;->mOnErrorReceivers:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/stericsson/hardware/fm/FmTransmitterService;->access$200(Lcom/stericsson/hardware/fm/FmTransmitterService;)Ljava/util/HashMap;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/stericsson/hardware/fm/FmTransmitterService$OnErrorReceiver;->this$0:Lcom/stericsson/hardware/fm/FmTransmitterService;

    #getter for: Lcom/stericsson/hardware/fm/FmTransmitterService;->mOnErrorReceivers:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/stericsson/hardware/fm/FmTransmitterService;->access$200(Lcom/stericsson/hardware/fm/FmTransmitterService;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmTransmitterService$OnErrorReceiver;->mKey:Ljava/lang/Object;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/stericsson/hardware/fm/FmTransmitterService$OnErrorReceiver;->mListener:Lcom/stericsson/hardware/fm/IOnErrorListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/stericsson/hardware/fm/FmTransmitterService$OnErrorReceiver;->mListener:Lcom/stericsson/hardware/fm/IOnErrorListener;

    invoke-interface {v0}, Lcom/stericsson/hardware/fm/IOnErrorListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public callOnError()Z
    .locals 3

    .prologue
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v1, p0, Lcom/stericsson/hardware/fm/FmTransmitterService$OnErrorReceiver;->mListener:Lcom/stericsson/hardware/fm/IOnErrorListener;

    invoke-interface {v1}, Lcom/stericsson/hardware/fm/IOnErrorListener;->onError()V

    monitor-exit p0

    const/4 v1, 0x1

    :goto_0
    return v1

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "FmTransmitterService"

    const-string v2, "callOnError: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getListener()Lcom/stericsson/hardware/fm/IOnErrorListener;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/stericsson/hardware/fm/FmTransmitterService$OnErrorReceiver;->mListener:Lcom/stericsson/hardware/fm/IOnErrorListener;

    return-object v0
.end method

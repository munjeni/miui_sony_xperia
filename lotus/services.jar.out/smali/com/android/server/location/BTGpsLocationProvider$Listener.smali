.class final Lcom/android/server/location/BTGpsLocationProvider$Listener;
.super Ljava/lang/Object;
.source "BTGpsLocationProvider.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/BTGpsLocationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Listener"
.end annotation


# instance fields
.field final mListener:Landroid/location/IGpsStatusListener;

.field final synthetic this$0:Lcom/android/server/location/BTGpsLocationProvider;


# direct methods
.method constructor <init>(Lcom/android/server/location/BTGpsLocationProvider;Landroid/location/IGpsStatusListener;)V
    .locals 0
    .parameter
    .parameter "listener"

    .prologue
    .line 737
    iput-object p1, p0, Lcom/android/server/location/BTGpsLocationProvider$Listener;->this$0:Lcom/android/server/location/BTGpsLocationProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 738
    iput-object p2, p0, Lcom/android/server/location/BTGpsLocationProvider$Listener;->mListener:Landroid/location/IGpsStatusListener;

    .line 739
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    .prologue
    .line 742
    const-string v0, "BTGpsLocationProvider"

    const-string v1, "GPS status listener died"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 744
    iget-object v0, p0, Lcom/android/server/location/BTGpsLocationProvider$Listener;->this$0:Lcom/android/server/location/BTGpsLocationProvider;

    #getter for: Lcom/android/server/location/BTGpsLocationProvider;->mListeners:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/server/location/BTGpsLocationProvider;->access$1500(Lcom/android/server/location/BTGpsLocationProvider;)Ljava/util/ArrayList;

    move-result-object v1

    monitor-enter v1

    .line 745
    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/BTGpsLocationProvider$Listener;->this$0:Lcom/android/server/location/BTGpsLocationProvider;

    #getter for: Lcom/android/server/location/BTGpsLocationProvider;->mListeners:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/server/location/BTGpsLocationProvider;->access$1500(Lcom/android/server/location/BTGpsLocationProvider;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 746
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 747
    iget-object v0, p0, Lcom/android/server/location/BTGpsLocationProvider$Listener;->mListener:Landroid/location/IGpsStatusListener;

    if-eqz v0, :cond_0

    .line 748
    iget-object v0, p0, Lcom/android/server/location/BTGpsLocationProvider$Listener;->mListener:Landroid/location/IGpsStatusListener;

    invoke-interface {v0}, Landroid/location/IGpsStatusListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 750
    :cond_0
    return-void

    .line 746
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

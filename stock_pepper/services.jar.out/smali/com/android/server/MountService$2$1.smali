.class Lcom/android/server/MountService$2$1;
.super Ljava/lang/Thread;
.source "MountService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/MountService$2;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/MountService$2;


# direct methods
.method constructor <init>(Lcom/android/server/MountService$2;)V
    .locals 0
    .parameter

    .prologue
    .line 452
    iput-object p1, p0, Lcom/android/server/MountService$2$1;->this$1:Lcom/android/server/MountService$2;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    const/4 v13, 0x4

    const/4 v12, 0x0

    const/4 v11, 0x0

    .line 458
    const-string v9, "simulator"

    const-string v10, "ro.product.device"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 459
    iget-object v9, p0, Lcom/android/server/MountService$2$1;->this$1:Lcom/android/server/MountService$2;

    iget-object v9, v9, Lcom/android/server/MountService$2;->this$0:Lcom/android/server/MountService;

    const-string v10, "/sdcard"

    #calls: Lcom/android/server/MountService;->notifyVolumeStateChange(Ljava/lang/String;Ljava/lang/String;II)V
    invoke-static {v9, v12, v10, v11, v13}, Lcom/android/server/MountService;->access$900(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;II)V

    .line 518
    :cond_0
    :goto_0
    return-void

    .line 470
    :cond_1
    :try_start_0
    iget-object v9, p0, Lcom/android/server/MountService$2$1;->this$1:Lcom/android/server/MountService$2;

    iget-object v9, v9, Lcom/android/server/MountService$2;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mVolumeStates:Ljava/util/HashMap;
    invoke-static {v9}, Lcom/android/server/MountService;->access$1000(Lcom/android/server/MountService;)Ljava/util/HashMap;

    move-result-object v10

    monitor-enter v10
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 471
    :try_start_1
    iget-object v9, p0, Lcom/android/server/MountService$2$1;->this$1:Lcom/android/server/MountService$2;

    iget-object v9, v9, Lcom/android/server/MountService$2;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mVolumeStates:Ljava/util/HashMap;
    invoke-static {v9}, Lcom/android/server/MountService;->access$1000(Lcom/android/server/MountService;)Ljava/util/HashMap;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 472
    .local v3, keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v0

    .line 473
    .local v0, count:I
    new-array v9, v0, [Ljava/lang/String;

    invoke-interface {v3, v9}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    .line 474
    .local v5, paths:[Ljava/lang/String;
    new-array v8, v0, [Ljava/lang/String;

    .line 475
    .local v8, states:[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v0, :cond_2

    .line 476
    iget-object v9, p0, Lcom/android/server/MountService$2$1;->this$1:Lcom/android/server/MountService$2;

    iget-object v9, v9, Lcom/android/server/MountService$2;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mVolumeStates:Ljava/util/HashMap;
    invoke-static {v9}, Lcom/android/server/MountService;->access$1000(Lcom/android/server/MountService;)Ljava/util/HashMap;

    move-result-object v9

    aget-object v11, v5, v2

    invoke-virtual {v9, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    aput-object v9, v8, v2

    .line 475
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 478
    :cond_2
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 480
    const/4 v2, 0x0

    :goto_2
    if-ge v2, v0, :cond_5

    .line 481
    :try_start_2
    aget-object v4, v5, v2

    .line 482
    .local v4, path:Ljava/lang/String;
    aget-object v7, v8, v2

    .line 484
    .local v7, state:Ljava/lang/String;
    const-string v9, "unmounted"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 485
    iget-object v9, p0, Lcom/android/server/MountService$2$1;->this$1:Lcom/android/server/MountService$2;

    iget-object v9, v9, Lcom/android/server/MountService$2;->this$0:Lcom/android/server/MountService;

    #calls: Lcom/android/server/MountService;->doMountVolume(Ljava/lang/String;)I
    invoke-static {v9, v4}, Lcom/android/server/MountService;->access$1100(Lcom/android/server/MountService;Ljava/lang/String;)I

    move-result v6

    .line 486
    .local v6, rc:I
    if-eqz v6, :cond_3

    .line 487
    const-string v9, "MountService"

    const-string v10, "Boot-time mount failed (%d)"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 480
    .end local v6           #rc:I
    :cond_3
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 478
    .end local v0           #count:I
    .end local v2           #i:I
    .end local v3           #keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .end local v4           #path:Ljava/lang/String;
    .end local v5           #paths:[Ljava/lang/String;
    .end local v7           #state:Ljava/lang/String;
    .end local v8           #states:[Ljava/lang/String;
    :catchall_0
    move-exception v9

    :try_start_3
    monitor-exit v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v9
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 515
    :catch_0
    move-exception v1

    .line 516
    .local v1, ex:Ljava/lang/Exception;
    const-string v9, "MountService"

    const-string v10, "Boot-time mount exception"

    invoke-static {v9, v10, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 490
    .end local v1           #ex:Ljava/lang/Exception;
    .restart local v0       #count:I
    .restart local v2       #i:I
    .restart local v3       #keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v4       #path:Ljava/lang/String;
    .restart local v5       #paths:[Ljava/lang/String;
    .restart local v7       #state:Ljava/lang/String;
    .restart local v8       #states:[Ljava/lang/String;
    :cond_4
    :try_start_5
    const-string v9, "shared"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 495
    iget-object v9, p0, Lcom/android/server/MountService$2$1;->this$1:Lcom/android/server/MountService$2;

    iget-object v9, v9, Lcom/android/server/MountService$2;->this$0:Lcom/android/server/MountService;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x7

    #calls: Lcom/android/server/MountService;->notifyVolumeStateChange(Ljava/lang/String;Ljava/lang/String;II)V
    invoke-static {v9, v10, v4, v11, v12}, Lcom/android/server/MountService;->access$900(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_3

    .line 501
    .end local v4           #path:Ljava/lang/String;
    .end local v7           #state:Ljava/lang/String;
    :cond_5
    iget-object v9, p0, Lcom/android/server/MountService$2$1;->this$1:Lcom/android/server/MountService$2;

    iget-object v9, v9, Lcom/android/server/MountService$2;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mEmulateExternalStorage:Z
    invoke-static {v9}, Lcom/android/server/MountService;->access$1200(Lcom/android/server/MountService;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 502
    iget-object v9, p0, Lcom/android/server/MountService$2$1;->this$1:Lcom/android/server/MountService$2;

    iget-object v9, v9, Lcom/android/server/MountService$2;->this$0:Lcom/android/server/MountService;

    const/4 v10, 0x0

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v11

    invoke-virtual {v11}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x4

    #calls: Lcom/android/server/MountService;->notifyVolumeStateChange(Ljava/lang/String;Ljava/lang/String;II)V
    invoke-static {v9, v10, v11, v12, v13}, Lcom/android/server/MountService;->access$900(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;II)V

    .line 511
    :cond_6
    iget-object v9, p0, Lcom/android/server/MountService$2$1;->this$1:Lcom/android/server/MountService$2;

    iget-object v9, v9, Lcom/android/server/MountService$2;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mSendUmsConnectedOnBoot:Z
    invoke-static {v9}, Lcom/android/server/MountService;->access$1300(Lcom/android/server/MountService;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 512
    iget-object v9, p0, Lcom/android/server/MountService$2$1;->this$1:Lcom/android/server/MountService$2;

    iget-object v9, v9, Lcom/android/server/MountService$2;->this$0:Lcom/android/server/MountService;

    const/4 v10, 0x1

    #calls: Lcom/android/server/MountService;->sendUmsIntent(Z)V
    invoke-static {v9, v10}, Lcom/android/server/MountService;->access$1400(Lcom/android/server/MountService;Z)V

    .line 513
    iget-object v9, p0, Lcom/android/server/MountService$2$1;->this$1:Lcom/android/server/MountService$2;

    iget-object v9, v9, Lcom/android/server/MountService$2;->this$0:Lcom/android/server/MountService;

    const/4 v10, 0x0

    #setter for: Lcom/android/server/MountService;->mSendUmsConnectedOnBoot:Z
    invoke-static {v9, v10}, Lcom/android/server/MountService;->access$1302(Lcom/android/server/MountService;Z)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_0
.end method

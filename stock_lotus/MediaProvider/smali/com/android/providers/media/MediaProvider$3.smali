.class Lcom/android/providers/media/MediaProvider$3;
.super Landroid/os/Handler;
.source "MediaProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/providers/media/MediaProvider;->onCreate()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/providers/media/MediaProvider;


# direct methods
.method constructor <init>(Lcom/android/providers/media/MediaProvider;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 862
    iput-object p1, p0, Lcom/android/providers/media/MediaProvider$3;->this$0:Lcom/android/providers/media/MediaProvider;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 13
    .parameter "msg"

    .prologue
    .line 866
    :goto_0
    iget-object v7, p0, Lcom/android/providers/media/MediaProvider$3;->this$0:Lcom/android/providers/media/MediaProvider;

    #getter for: Lcom/android/providers/media/MediaProvider;->mBackupOrRestoreRunning:Z
    invoke-static {v7}, Lcom/android/providers/media/MediaProvider;->access$600(Lcom/android/providers/media/MediaProvider;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-static {}, Lcom/android/providers/media/MediaScannerService;->isShuttingDown()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 868
    :cond_0
    const-wide/16 v7, 0x1f4

    :try_start_0
    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 870
    :catch_0
    move-exception v1

    .line 871
    .local v1, e:Ljava/lang/InterruptedException;
    invoke-static {}, Lcom/android/providers/media/MediaProvider;->access$100()Ljava/lang/String;

    move-result-object v7

    const-string v8, "Failed to sleep"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 875
    .end local v1           #e:Ljava/lang/InterruptedException;
    :cond_1
    iget v7, p1, Landroid/os/Message;->what:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_7

    .line 876
    iget-object v7, p0, Lcom/android/providers/media/MediaProvider$3;->this$0:Lcom/android/providers/media/MediaProvider;

    #getter for: Lcom/android/providers/media/MediaProvider;->mMediaThumbQueue:Ljava/util/PriorityQueue;
    invoke-static {v7}, Lcom/android/providers/media/MediaProvider;->access$700(Lcom/android/providers/media/MediaProvider;)Ljava/util/PriorityQueue;

    move-result-object v8

    monitor-enter v8

    .line 877
    :try_start_1
    iget-object v9, p0, Lcom/android/providers/media/MediaProvider$3;->this$0:Lcom/android/providers/media/MediaProvider;

    iget-object v7, p0, Lcom/android/providers/media/MediaProvider$3;->this$0:Lcom/android/providers/media/MediaProvider;

    #getter for: Lcom/android/providers/media/MediaProvider;->mMediaThumbQueue:Ljava/util/PriorityQueue;
    invoke-static {v7}, Lcom/android/providers/media/MediaProvider;->access$700(Lcom/android/providers/media/MediaProvider;)Ljava/util/PriorityQueue;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/providers/media/MediaThumbRequest;

    #setter for: Lcom/android/providers/media/MediaProvider;->mCurrentThumbRequest:Lcom/android/providers/media/MediaThumbRequest;
    invoke-static {v9, v7}, Lcom/android/providers/media/MediaProvider;->access$802(Lcom/android/providers/media/MediaProvider;Lcom/android/providers/media/MediaThumbRequest;)Lcom/android/providers/media/MediaThumbRequest;

    .line 878
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 879
    iget-object v7, p0, Lcom/android/providers/media/MediaProvider$3;->this$0:Lcom/android/providers/media/MediaProvider;

    #getter for: Lcom/android/providers/media/MediaProvider;->mCurrentThumbRequest:Lcom/android/providers/media/MediaThumbRequest;
    invoke-static {v7}, Lcom/android/providers/media/MediaProvider;->access$800(Lcom/android/providers/media/MediaProvider;)Lcom/android/providers/media/MediaThumbRequest;

    move-result-object v7

    if-nez v7, :cond_3

    .line 880
    invoke-static {}, Lcom/android/providers/media/MediaProvider;->access$100()Ljava/lang/String;

    move-result-object v7

    const-string v8, "Have message but no request?"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 938
    :cond_2
    :goto_1
    iget-object v7, p0, Lcom/android/providers/media/MediaProvider$3;->this$0:Lcom/android/providers/media/MediaProvider;

    #getter for: Lcom/android/providers/media/MediaProvider;->mLock:Ljava/lang/Object;
    invoke-static {v7}, Lcom/android/providers/media/MediaProvider;->access$1200(Lcom/android/providers/media/MediaProvider;)Ljava/lang/Object;

    move-result-object v8

    monitor-enter v8

    .line 939
    :try_start_2
    iget-object v7, p0, Lcom/android/providers/media/MediaProvider$3;->this$0:Lcom/android/providers/media/MediaProvider;

    #getter for: Lcom/android/providers/media/MediaProvider;->mLock:Ljava/lang/Object;
    invoke-static {v7}, Lcom/android/providers/media/MediaProvider;->access$1200(Lcom/android/providers/media/MediaProvider;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->notifyAll()V

    .line 940
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_b

    .line 941
    return-void

    .line 878
    :catchall_0
    move-exception v7

    :try_start_3
    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v7

    .line 883
    :cond_3
    :try_start_4
    new-instance v6, Ljava/io/File;

    iget-object v7, p0, Lcom/android/providers/media/MediaProvider$3;->this$0:Lcom/android/providers/media/MediaProvider;

    #getter for: Lcom/android/providers/media/MediaProvider;->mCurrentThumbRequest:Lcom/android/providers/media/MediaThumbRequest;
    invoke-static {v7}, Lcom/android/providers/media/MediaProvider;->access$800(Lcom/android/providers/media/MediaProvider;)Lcom/android/providers/media/MediaThumbRequest;

    move-result-object v7

    iget-object v7, v7, Lcom/android/providers/media/MediaThumbRequest;->mPath:Ljava/lang/String;

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 884
    .local v6, origFile:Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-lez v7, :cond_6

    .line 885
    iget-object v7, p0, Lcom/android/providers/media/MediaProvider$3;->this$0:Lcom/android/providers/media/MediaProvider;

    #getter for: Lcom/android/providers/media/MediaProvider;->mCurrentThumbRequest:Lcom/android/providers/media/MediaThumbRequest;
    invoke-static {v7}, Lcom/android/providers/media/MediaProvider;->access$800(Lcom/android/providers/media/MediaProvider;)Lcom/android/providers/media/MediaThumbRequest;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/providers/media/MediaThumbRequest;->execute()V

    .line 887
    iget-object v7, p0, Lcom/android/providers/media/MediaProvider$3;->this$0:Lcom/android/providers/media/MediaProvider;

    #getter for: Lcom/android/providers/media/MediaProvider;->mMediaThumbQueue:Ljava/util/PriorityQueue;
    invoke-static {v7}, Lcom/android/providers/media/MediaProvider;->access$700(Lcom/android/providers/media/MediaProvider;)Ljava/util/PriorityQueue;

    move-result-object v8

    monitor-enter v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_7
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_3

    .line 888
    :try_start_5
    iget-object v7, p0, Lcom/android/providers/media/MediaProvider$3;->this$0:Lcom/android/providers/media/MediaProvider;

    #getter for: Lcom/android/providers/media/MediaProvider;->mMediaThumbQueue:Ljava/util/PriorityQueue;
    invoke-static {v7}, Lcom/android/providers/media/MediaProvider;->access$700(Lcom/android/providers/media/MediaProvider;)Ljava/util/PriorityQueue;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/PriorityQueue;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_4
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/providers/media/MediaThumbRequest;

    .line 889
    .local v5, mtq:Lcom/android/providers/media/MediaThumbRequest;
    iget-wide v9, v5, Lcom/android/providers/media/MediaThumbRequest;->mOrigId:J

    iget-object v7, p0, Lcom/android/providers/media/MediaProvider$3;->this$0:Lcom/android/providers/media/MediaProvider;

    #getter for: Lcom/android/providers/media/MediaProvider;->mCurrentThumbRequest:Lcom/android/providers/media/MediaThumbRequest;
    invoke-static {v7}, Lcom/android/providers/media/MediaProvider;->access$800(Lcom/android/providers/media/MediaProvider;)Lcom/android/providers/media/MediaThumbRequest;

    move-result-object v7

    iget-wide v11, v7, Lcom/android/providers/media/MediaThumbRequest;->mOrigId:J

    cmp-long v7, v9, v11

    if-nez v7, :cond_4

    iget-boolean v7, v5, Lcom/android/providers/media/MediaThumbRequest;->mIsVideo:Z

    iget-object v9, p0, Lcom/android/providers/media/MediaProvider$3;->this$0:Lcom/android/providers/media/MediaProvider;

    #getter for: Lcom/android/providers/media/MediaProvider;->mCurrentThumbRequest:Lcom/android/providers/media/MediaThumbRequest;
    invoke-static {v9}, Lcom/android/providers/media/MediaProvider;->access$800(Lcom/android/providers/media/MediaProvider;)Lcom/android/providers/media/MediaThumbRequest;

    move-result-object v9

    iget-boolean v9, v9, Lcom/android/providers/media/MediaThumbRequest;->mIsVideo:Z

    if-ne v7, v9, :cond_4

    iget-wide v9, v5, Lcom/android/providers/media/MediaThumbRequest;->mMagic:J

    const-wide/16 v11, 0x0

    cmp-long v7, v9, v11

    if-nez v7, :cond_4

    iget-object v7, v5, Lcom/android/providers/media/MediaThumbRequest;->mState:Lcom/android/providers/media/MediaThumbRequest$State;

    sget-object v9, Lcom/android/providers/media/MediaThumbRequest$State;->WAIT:Lcom/android/providers/media/MediaThumbRequest$State;

    if-ne v7, v9, :cond_4

    .line 893
    iget-object v7, p0, Lcom/android/providers/media/MediaProvider$3;->this$0:Lcom/android/providers/media/MediaProvider;

    #getter for: Lcom/android/providers/media/MediaProvider;->mCurrentThumbRequest:Lcom/android/providers/media/MediaThumbRequest;
    invoke-static {v7}, Lcom/android/providers/media/MediaProvider;->access$800(Lcom/android/providers/media/MediaProvider;)Lcom/android/providers/media/MediaThumbRequest;

    move-result-object v7

    iget-wide v9, v7, Lcom/android/providers/media/MediaThumbRequest;->mMagic:J

    iput-wide v9, v5, Lcom/android/providers/media/MediaThumbRequest;->mMagic:J

    goto :goto_2

    .line 896
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v5           #mtq:Lcom/android/providers/media/MediaThumbRequest;
    :catchall_1
    move-exception v7

    monitor-exit v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_7
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_6 .. :try_end_6} :catch_3

    .line 903
    .end local v6           #origFile:Ljava/io/File;
    :catch_1
    move-exception v3

    .line 904
    .local v3, ex:Ljava/io/IOException;
    :try_start_7
    invoke-static {}, Lcom/android/providers/media/MediaProvider;->access$100()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    .line 921
    iget-object v7, p0, Lcom/android/providers/media/MediaProvider$3;->this$0:Lcom/android/providers/media/MediaProvider;

    #getter for: Lcom/android/providers/media/MediaProvider;->mCurrentThumbRequest:Lcom/android/providers/media/MediaThumbRequest;
    invoke-static {v7}, Lcom/android/providers/media/MediaProvider;->access$800(Lcom/android/providers/media/MediaProvider;)Lcom/android/providers/media/MediaThumbRequest;

    move-result-object v8

    monitor-enter v8

    .line 922
    :try_start_8
    iget-object v7, p0, Lcom/android/providers/media/MediaProvider$3;->this$0:Lcom/android/providers/media/MediaProvider;

    #getter for: Lcom/android/providers/media/MediaProvider;->mCurrentThumbRequest:Lcom/android/providers/media/MediaThumbRequest;
    invoke-static {v7}, Lcom/android/providers/media/MediaProvider;->access$800(Lcom/android/providers/media/MediaProvider;)Lcom/android/providers/media/MediaThumbRequest;

    move-result-object v7

    sget-object v9, Lcom/android/providers/media/MediaThumbRequest$State;->DONE:Lcom/android/providers/media/MediaThumbRequest$State;

    iput-object v9, v7, Lcom/android/providers/media/MediaThumbRequest;->mState:Lcom/android/providers/media/MediaThumbRequest$State;

    .line 923
    iget-object v7, p0, Lcom/android/providers/media/MediaProvider$3;->this$0:Lcom/android/providers/media/MediaProvider;

    #getter for: Lcom/android/providers/media/MediaProvider;->mCurrentThumbRequest:Lcom/android/providers/media/MediaThumbRequest;
    invoke-static {v7}, Lcom/android/providers/media/MediaProvider;->access$800(Lcom/android/providers/media/MediaProvider;)Lcom/android/providers/media/MediaThumbRequest;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->notifyAll()V

    .line 924
    monitor-exit v8

    goto/16 :goto_1

    :catchall_2
    move-exception v7

    monitor-exit v8
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    throw v7

    .line 896
    .end local v3           #ex:Ljava/io/IOException;
    .restart local v4       #i$:Ljava/util/Iterator;
    .restart local v6       #origFile:Ljava/io/File;
    :cond_5
    :try_start_9
    monitor-exit v8
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 921
    .end local v4           #i$:Ljava/util/Iterator;
    :goto_3
    iget-object v7, p0, Lcom/android/providers/media/MediaProvider$3;->this$0:Lcom/android/providers/media/MediaProvider;

    #getter for: Lcom/android/providers/media/MediaProvider;->mCurrentThumbRequest:Lcom/android/providers/media/MediaThumbRequest;
    invoke-static {v7}, Lcom/android/providers/media/MediaProvider;->access$800(Lcom/android/providers/media/MediaProvider;)Lcom/android/providers/media/MediaThumbRequest;

    move-result-object v8

    monitor-enter v8

    .line 922
    :try_start_a
    iget-object v7, p0, Lcom/android/providers/media/MediaProvider$3;->this$0:Lcom/android/providers/media/MediaProvider;

    #getter for: Lcom/android/providers/media/MediaProvider;->mCurrentThumbRequest:Lcom/android/providers/media/MediaThumbRequest;
    invoke-static {v7}, Lcom/android/providers/media/MediaProvider;->access$800(Lcom/android/providers/media/MediaProvider;)Lcom/android/providers/media/MediaThumbRequest;

    move-result-object v7

    sget-object v9, Lcom/android/providers/media/MediaThumbRequest$State;->DONE:Lcom/android/providers/media/MediaThumbRequest$State;

    iput-object v9, v7, Lcom/android/providers/media/MediaThumbRequest;->mState:Lcom/android/providers/media/MediaThumbRequest$State;

    .line 923
    iget-object v7, p0, Lcom/android/providers/media/MediaProvider$3;->this$0:Lcom/android/providers/media/MediaProvider;

    #getter for: Lcom/android/providers/media/MediaProvider;->mCurrentThumbRequest:Lcom/android/providers/media/MediaThumbRequest;
    invoke-static {v7}, Lcom/android/providers/media/MediaProvider;->access$800(Lcom/android/providers/media/MediaProvider;)Lcom/android/providers/media/MediaThumbRequest;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->notifyAll()V

    .line 924
    monitor-exit v8

    goto/16 :goto_1

    :catchall_3
    move-exception v7

    monitor-exit v8
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    throw v7

    .line 899
    :cond_6
    :try_start_b
    iget-object v7, p0, Lcom/android/providers/media/MediaProvider$3;->this$0:Lcom/android/providers/media/MediaProvider;

    #getter for: Lcom/android/providers/media/MediaProvider;->mMediaThumbQueue:Ljava/util/PriorityQueue;
    invoke-static {v7}, Lcom/android/providers/media/MediaProvider;->access$700(Lcom/android/providers/media/MediaProvider;)Ljava/util/PriorityQueue;

    move-result-object v8

    monitor-enter v8
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_7
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_b .. :try_end_b} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_b .. :try_end_b} :catch_3

    .line 900
    :try_start_c
    invoke-static {}, Lcom/android/providers/media/MediaProvider;->access$100()Ljava/lang/String;

    move-result-object v7

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "original file hasn\'t been stored yet: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/providers/media/MediaProvider$3;->this$0:Lcom/android/providers/media/MediaProvider;

    #getter for: Lcom/android/providers/media/MediaProvider;->mCurrentThumbRequest:Lcom/android/providers/media/MediaThumbRequest;
    invoke-static {v10}, Lcom/android/providers/media/MediaProvider;->access$800(Lcom/android/providers/media/MediaProvider;)Lcom/android/providers/media/MediaThumbRequest;

    move-result-object v10

    iget-object v10, v10, Lcom/android/providers/media/MediaThumbRequest;->mPath:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 901
    monitor-exit v8

    goto :goto_3

    :catchall_4
    move-exception v7

    monitor-exit v8
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    :try_start_d
    throw v7
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_7
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_d .. :try_end_d} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_d .. :try_end_d} :catch_3

    .line 905
    .end local v6           #origFile:Ljava/io/File;
    :catch_2
    move-exception v3

    .line 908
    .local v3, ex:Ljava/lang/UnsupportedOperationException;
    :try_start_e
    invoke-static {}, Lcom/android/providers/media/MediaProvider;->access$100()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_7

    .line 921
    iget-object v7, p0, Lcom/android/providers/media/MediaProvider$3;->this$0:Lcom/android/providers/media/MediaProvider;

    #getter for: Lcom/android/providers/media/MediaProvider;->mCurrentThumbRequest:Lcom/android/providers/media/MediaThumbRequest;
    invoke-static {v7}, Lcom/android/providers/media/MediaProvider;->access$800(Lcom/android/providers/media/MediaProvider;)Lcom/android/providers/media/MediaThumbRequest;

    move-result-object v8

    monitor-enter v8

    .line 922
    :try_start_f
    iget-object v7, p0, Lcom/android/providers/media/MediaProvider$3;->this$0:Lcom/android/providers/media/MediaProvider;

    #getter for: Lcom/android/providers/media/MediaProvider;->mCurrentThumbRequest:Lcom/android/providers/media/MediaThumbRequest;
    invoke-static {v7}, Lcom/android/providers/media/MediaProvider;->access$800(Lcom/android/providers/media/MediaProvider;)Lcom/android/providers/media/MediaThumbRequest;

    move-result-object v7

    sget-object v9, Lcom/android/providers/media/MediaThumbRequest$State;->DONE:Lcom/android/providers/media/MediaThumbRequest$State;

    iput-object v9, v7, Lcom/android/providers/media/MediaThumbRequest;->mState:Lcom/android/providers/media/MediaThumbRequest$State;

    .line 923
    iget-object v7, p0, Lcom/android/providers/media/MediaProvider$3;->this$0:Lcom/android/providers/media/MediaProvider;

    #getter for: Lcom/android/providers/media/MediaProvider;->mCurrentThumbRequest:Lcom/android/providers/media/MediaThumbRequest;
    invoke-static {v7}, Lcom/android/providers/media/MediaProvider;->access$800(Lcom/android/providers/media/MediaProvider;)Lcom/android/providers/media/MediaThumbRequest;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->notifyAll()V

    .line 924
    monitor-exit v8

    goto/16 :goto_1

    :catchall_5
    move-exception v7

    monitor-exit v8
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    throw v7

    .line 909
    .end local v3           #ex:Ljava/lang/UnsupportedOperationException;
    :catch_3
    move-exception v2

    .line 919
    .local v2, err:Ljava/lang/OutOfMemoryError;
    :try_start_10
    invoke-static {}, Lcom/android/providers/media/MediaProvider;->access$100()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_7

    .line 921
    iget-object v7, p0, Lcom/android/providers/media/MediaProvider$3;->this$0:Lcom/android/providers/media/MediaProvider;

    #getter for: Lcom/android/providers/media/MediaProvider;->mCurrentThumbRequest:Lcom/android/providers/media/MediaThumbRequest;
    invoke-static {v7}, Lcom/android/providers/media/MediaProvider;->access$800(Lcom/android/providers/media/MediaProvider;)Lcom/android/providers/media/MediaThumbRequest;

    move-result-object v8

    monitor-enter v8

    .line 922
    :try_start_11
    iget-object v7, p0, Lcom/android/providers/media/MediaProvider$3;->this$0:Lcom/android/providers/media/MediaProvider;

    #getter for: Lcom/android/providers/media/MediaProvider;->mCurrentThumbRequest:Lcom/android/providers/media/MediaThumbRequest;
    invoke-static {v7}, Lcom/android/providers/media/MediaProvider;->access$800(Lcom/android/providers/media/MediaProvider;)Lcom/android/providers/media/MediaThumbRequest;

    move-result-object v7

    sget-object v9, Lcom/android/providers/media/MediaThumbRequest$State;->DONE:Lcom/android/providers/media/MediaThumbRequest$State;

    iput-object v9, v7, Lcom/android/providers/media/MediaThumbRequest;->mState:Lcom/android/providers/media/MediaThumbRequest$State;

    .line 923
    iget-object v7, p0, Lcom/android/providers/media/MediaProvider$3;->this$0:Lcom/android/providers/media/MediaProvider;

    #getter for: Lcom/android/providers/media/MediaProvider;->mCurrentThumbRequest:Lcom/android/providers/media/MediaThumbRequest;
    invoke-static {v7}, Lcom/android/providers/media/MediaProvider;->access$800(Lcom/android/providers/media/MediaProvider;)Lcom/android/providers/media/MediaThumbRequest;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->notifyAll()V

    .line 924
    monitor-exit v8

    goto/16 :goto_1

    :catchall_6
    move-exception v7

    monitor-exit v8
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_6

    throw v7

    .line 921
    .end local v2           #err:Ljava/lang/OutOfMemoryError;
    :catchall_7
    move-exception v7

    iget-object v8, p0, Lcom/android/providers/media/MediaProvider$3;->this$0:Lcom/android/providers/media/MediaProvider;

    #getter for: Lcom/android/providers/media/MediaProvider;->mCurrentThumbRequest:Lcom/android/providers/media/MediaThumbRequest;
    invoke-static {v8}, Lcom/android/providers/media/MediaProvider;->access$800(Lcom/android/providers/media/MediaProvider;)Lcom/android/providers/media/MediaThumbRequest;

    move-result-object v8

    monitor-enter v8

    .line 922
    :try_start_12
    iget-object v9, p0, Lcom/android/providers/media/MediaProvider$3;->this$0:Lcom/android/providers/media/MediaProvider;

    #getter for: Lcom/android/providers/media/MediaProvider;->mCurrentThumbRequest:Lcom/android/providers/media/MediaThumbRequest;
    invoke-static {v9}, Lcom/android/providers/media/MediaProvider;->access$800(Lcom/android/providers/media/MediaProvider;)Lcom/android/providers/media/MediaThumbRequest;

    move-result-object v9

    sget-object v10, Lcom/android/providers/media/MediaThumbRequest$State;->DONE:Lcom/android/providers/media/MediaThumbRequest$State;

    iput-object v10, v9, Lcom/android/providers/media/MediaThumbRequest;->mState:Lcom/android/providers/media/MediaThumbRequest$State;

    .line 923
    iget-object v9, p0, Lcom/android/providers/media/MediaProvider$3;->this$0:Lcom/android/providers/media/MediaProvider;

    #getter for: Lcom/android/providers/media/MediaProvider;->mCurrentThumbRequest:Lcom/android/providers/media/MediaThumbRequest;
    invoke-static {v9}, Lcom/android/providers/media/MediaProvider;->access$800(Lcom/android/providers/media/MediaProvider;)Lcom/android/providers/media/MediaThumbRequest;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->notifyAll()V

    .line 924
    monitor-exit v8
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_8

    throw v7

    :catchall_8
    move-exception v7

    :try_start_13
    monitor-exit v8
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_8

    throw v7

    .line 927
    :cond_7
    iget v7, p1, Landroid/os/Message;->what:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_2

    .line 929
    iget-object v7, p0, Lcom/android/providers/media/MediaProvider$3;->this$0:Lcom/android/providers/media/MediaProvider;

    #getter for: Lcom/android/providers/media/MediaProvider;->mThumbRequestStack:Ljava/util/Stack;
    invoke-static {v7}, Lcom/android/providers/media/MediaProvider;->access$900(Lcom/android/providers/media/MediaProvider;)Ljava/util/Stack;

    move-result-object v8

    monitor-enter v8

    .line 930
    :try_start_14
    iget-object v7, p0, Lcom/android/providers/media/MediaProvider$3;->this$0:Lcom/android/providers/media/MediaProvider;

    #getter for: Lcom/android/providers/media/MediaProvider;->mThumbRequestStack:Ljava/util/Stack;
    invoke-static {v7}, Lcom/android/providers/media/MediaProvider;->access$900(Lcom/android/providers/media/MediaProvider;)Ljava/util/Stack;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/media/MediaProvider$ThumbData;

    .line 931
    .local v0, d:Lcom/android/providers/media/MediaProvider$ThumbData;
    iget-object v7, p0, Lcom/android/providers/media/MediaProvider$3;->this$0:Lcom/android/providers/media/MediaProvider;

    #calls: Lcom/android/providers/media/MediaProvider;->makeThumbInternal(Lcom/android/providers/media/MediaProvider$ThumbData;)Landroid/os/ParcelFileDescriptor;
    invoke-static {v7, v0}, Lcom/android/providers/media/MediaProvider;->access$1000(Lcom/android/providers/media/MediaProvider;Lcom/android/providers/media/MediaProvider$ThumbData;)Landroid/os/ParcelFileDescriptor;

    .line 932
    monitor-exit v8
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_a

    .line 934
    iget-object v7, p0, Lcom/android/providers/media/MediaProvider$3;->this$0:Lcom/android/providers/media/MediaProvider;

    #getter for: Lcom/android/providers/media/MediaProvider;->mPendingThumbs:Ljava/util/HashSet;
    invoke-static {v7}, Lcom/android/providers/media/MediaProvider;->access$1100(Lcom/android/providers/media/MediaProvider;)Ljava/util/HashSet;

    move-result-object v8

    monitor-enter v8

    .line 935
    :try_start_15
    iget-object v7, p0, Lcom/android/providers/media/MediaProvider$3;->this$0:Lcom/android/providers/media/MediaProvider;

    #getter for: Lcom/android/providers/media/MediaProvider;->mPendingThumbs:Ljava/util/HashSet;
    invoke-static {v7}, Lcom/android/providers/media/MediaProvider;->access$1100(Lcom/android/providers/media/MediaProvider;)Ljava/util/HashSet;

    move-result-object v7

    iget-object v9, v0, Lcom/android/providers/media/MediaProvider$ThumbData;->path:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 936
    monitor-exit v8

    goto/16 :goto_1

    :catchall_9
    move-exception v7

    monitor-exit v8
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_9

    throw v7

    .line 932
    .end local v0           #d:Lcom/android/providers/media/MediaProvider$ThumbData;
    :catchall_a
    move-exception v7

    :try_start_16
    monitor-exit v8
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_a

    throw v7

    .line 940
    :catchall_b
    move-exception v7

    :try_start_17
    monitor-exit v8
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_b

    throw v7
.end method

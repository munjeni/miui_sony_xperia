.class Lcom/android/internal/telephony/IccCustProvider$1;
.super Landroid/os/Handler;
.source "IccCustProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/IccCustProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/IccCustProvider;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/IccCustProvider;)V
    .locals 0
    .parameter

    .prologue
    .line 88
    iput-object p1, p0, Lcom/android/internal/telephony/IccCustProvider$1;->this$0:Lcom/android/internal/telephony/IccCustProvider;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 11
    .parameter "msg"

    .prologue
    .line 90
    iget-object v6, p0, Lcom/android/internal/telephony/IccCustProvider$1;->this$0:Lcom/android/internal/telephony/IccCustProvider;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "+handleMessage="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p1, Landroid/os/Message;->what:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    #calls: Lcom/android/internal/telephony/IccCustProvider;->log(Ljava/lang/String;)V
    invoke-static {v6, v7}, Lcom/android/internal/telephony/IccCustProvider;->access$000(Lcom/android/internal/telephony/IccCustProvider;Ljava/lang/String;)V

    .line 95
    :try_start_0
    iget v6, p1, Landroid/os/Message;->what:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    packed-switch v6, :pswitch_data_0

    .line 130
    :cond_0
    :goto_0
    iget-object v6, p0, Lcom/android/internal/telephony/IccCustProvider$1;->this$0:Lcom/android/internal/telephony/IccCustProvider;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "-handleMessage mRecordsToLoad="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/IccCustProvider$1;->this$0:Lcom/android/internal/telephony/IccCustProvider;

    #getter for: Lcom/android/internal/telephony/IccCustProvider;->mRecordsToLoad:I
    invoke-static {v8}, Lcom/android/internal/telephony/IccCustProvider;->access$700(Lcom/android/internal/telephony/IccCustProvider;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    #calls: Lcom/android/internal/telephony/IccCustProvider;->log(Ljava/lang/String;)V
    invoke-static {v6, v7}, Lcom/android/internal/telephony/IccCustProvider;->access$000(Lcom/android/internal/telephony/IccCustProvider;Ljava/lang/String;)V

    .line 131
    iget-object v6, p0, Lcom/android/internal/telephony/IccCustProvider$1;->this$0:Lcom/android/internal/telephony/IccCustProvider;

    #getter for: Lcom/android/internal/telephony/IccCustProvider;->mRecordsToLoad:I
    invoke-static {v6}, Lcom/android/internal/telephony/IccCustProvider;->access$700(Lcom/android/internal/telephony/IccCustProvider;)I

    move-result v6

    if-nez v6, :cond_1

    .line 132
    iget-object v6, p0, Lcom/android/internal/telephony/IccCustProvider$1;->this$0:Lcom/android/internal/telephony/IccCustProvider;

    #getter for: Lcom/android/internal/telephony/IccCustProvider;->mLock:Ljava/lang/Object;
    invoke-static {v6}, Lcom/android/internal/telephony/IccCustProvider;->access$1000(Lcom/android/internal/telephony/IccCustProvider;)Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7

    .line 133
    :try_start_1
    iget-object v6, p0, Lcom/android/internal/telephony/IccCustProvider$1;->this$0:Lcom/android/internal/telephony/IccCustProvider;

    const/4 v8, 0x1

    #setter for: Lcom/android/internal/telephony/IccCustProvider;->mSimReadReady:Z
    invoke-static {v6, v8}, Lcom/android/internal/telephony/IccCustProvider;->access$1102(Lcom/android/internal/telephony/IccCustProvider;Z)Z

    .line 134
    iget-object v6, p0, Lcom/android/internal/telephony/IccCustProvider$1;->this$0:Lcom/android/internal/telephony/IccCustProvider;

    #getter for: Lcom/android/internal/telephony/IccCustProvider;->mLock:Ljava/lang/Object;
    invoke-static {v6}, Lcom/android/internal/telephony/IccCustProvider;->access$1000(Lcom/android/internal/telephony/IccCustProvider;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->notifyAll()V

    .line 135
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 138
    :cond_1
    :goto_1
    return-void

    .line 97
    :pswitch_0
    :try_start_2
    iget-object v6, p0, Lcom/android/internal/telephony/IccCustProvider$1;->this$0:Lcom/android/internal/telephony/IccCustProvider;

    #getter for: Lcom/android/internal/telephony/IccCustProvider;->mProcessReadLock:Ljava/lang/Object;
    invoke-static {v6}, Lcom/android/internal/telephony/IccCustProvider;->access$100(Lcom/android/internal/telephony/IccCustProvider;)Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    .line 98
    :try_start_3
    iget-object v6, p0, Lcom/android/internal/telephony/IccCustProvider$1;->this$0:Lcom/android/internal/telephony/IccCustProvider;

    #getter for: Lcom/android/internal/telephony/IccCustProvider;->mProcessingStarted:Z
    invoke-static {v6}, Lcom/android/internal/telephony/IccCustProvider;->access$200(Lcom/android/internal/telephony/IccCustProvider;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 99
    iget-object v6, p0, Lcom/android/internal/telephony/IccCustProvider$1;->this$0:Lcom/android/internal/telephony/IccCustProvider;

    const/4 v8, 0x1

    #setter for: Lcom/android/internal/telephony/IccCustProvider;->mProcessingStarted:Z
    invoke-static {v6, v8}, Lcom/android/internal/telephony/IccCustProvider;->access$202(Lcom/android/internal/telephony/IccCustProvider;Z)Z

    .line 100
    iget-object v6, p0, Lcom/android/internal/telephony/IccCustProvider$1;->this$0:Lcom/android/internal/telephony/IccCustProvider;

    const/4 v8, -0x1

    #setter for: Lcom/android/internal/telephony/IccCustProvider;->mSimFlagValue:I
    invoke-static {v6, v8}, Lcom/android/internal/telephony/IccCustProvider;->access$302(Lcom/android/internal/telephony/IccCustProvider;I)I

    .line 101
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    .line 102
    .local v5, p:Lcom/android/internal/telephony/Phone;
    if-eqz v5, :cond_2

    .line 103
    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getIccRecordsLoaded()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 104
    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v4

    .line 105
    .local v4, iccFh:Lcom/android/internal/telephony/IccFileHandler;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "3F00"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v8, p0, Lcom/android/internal/telephony/IccCustProvider$1;->this$0:Lcom/android/internal/telephony/IccCustProvider;

    #getter for: Lcom/android/internal/telephony/IccCustProvider;->mSimFolder:Ljava/lang/String;
    invoke-static {v8}, Lcom/android/internal/telephony/IccCustProvider;->access$400(Lcom/android/internal/telephony/IccCustProvider;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v8, p0, Lcom/android/internal/telephony/IccCustProvider$1;->this$0:Lcom/android/internal/telephony/IccCustProvider;

    #getter for: Lcom/android/internal/telephony/IccCustProvider;->mSimFile:I
    invoke-static {v8}, Lcom/android/internal/telephony/IccCustProvider;->access$500(Lcom/android/internal/telephony/IccCustProvider;)I

    move-result v8

    iget-object v9, p0, Lcom/android/internal/telephony/IccCustProvider$1;->this$0:Lcom/android/internal/telephony/IccCustProvider;

    #getter for: Lcom/android/internal/telephony/IccCustProvider;->mHandler:Landroid/os/Handler;
    invoke-static {v9}, Lcom/android/internal/telephony/IccCustProvider;->access$600(Lcom/android/internal/telephony/IccCustProvider;)Landroid/os/Handler;

    move-result-object v9

    const/4 v10, 0x2

    invoke-virtual {v9, v10}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v4, v6, v8, v9}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(Ljava/lang/String;ILandroid/os/Message;)V

    .line 108
    iget-object v6, p0, Lcom/android/internal/telephony/IccCustProvider$1;->this$0:Lcom/android/internal/telephony/IccCustProvider;

    invoke-static {v6}, Lcom/android/internal/telephony/IccCustProvider;->access$708(Lcom/android/internal/telephony/IccCustProvider;)I

    .line 112
    .end local v4           #iccFh:Lcom/android/internal/telephony/IccFileHandler;
    .end local v5           #p:Lcom/android/internal/telephony/Phone;
    :cond_2
    monitor-exit v7

    goto/16 :goto_0

    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0

    .line 126
    :catch_0
    move-exception v3

    .line 127
    .local v3, exc:Ljava/lang/RuntimeException;
    :try_start_5
    iget-object v6, p0, Lcom/android/internal/telephony/IccCustProvider$1;->this$0:Lcom/android/internal/telephony/IccCustProvider;

    const/4 v7, 0x0

    #setter for: Lcom/android/internal/telephony/IccCustProvider;->mRecordsToLoad:I
    invoke-static {v6, v7}, Lcom/android/internal/telephony/IccCustProvider;->access$702(Lcom/android/internal/telephony/IccCustProvider;I)I

    .line 128
    iget-object v6, p0, Lcom/android/internal/telephony/IccCustProvider$1;->this$0:Lcom/android/internal/telephony/IccCustProvider;

    const/4 v7, -0x1

    #setter for: Lcom/android/internal/telephony/IccCustProvider;->mSimFlagValue:I
    invoke-static {v6, v7}, Lcom/android/internal/telephony/IccCustProvider;->access$302(Lcom/android/internal/telephony/IccCustProvider;I)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 130
    iget-object v6, p0, Lcom/android/internal/telephony/IccCustProvider$1;->this$0:Lcom/android/internal/telephony/IccCustProvider;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "-handleMessage mRecordsToLoad="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/IccCustProvider$1;->this$0:Lcom/android/internal/telephony/IccCustProvider;

    #getter for: Lcom/android/internal/telephony/IccCustProvider;->mRecordsToLoad:I
    invoke-static {v8}, Lcom/android/internal/telephony/IccCustProvider;->access$700(Lcom/android/internal/telephony/IccCustProvider;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    #calls: Lcom/android/internal/telephony/IccCustProvider;->log(Ljava/lang/String;)V
    invoke-static {v6, v7}, Lcom/android/internal/telephony/IccCustProvider;->access$000(Lcom/android/internal/telephony/IccCustProvider;Ljava/lang/String;)V

    .line 131
    iget-object v6, p0, Lcom/android/internal/telephony/IccCustProvider$1;->this$0:Lcom/android/internal/telephony/IccCustProvider;

    #getter for: Lcom/android/internal/telephony/IccCustProvider;->mRecordsToLoad:I
    invoke-static {v6}, Lcom/android/internal/telephony/IccCustProvider;->access$700(Lcom/android/internal/telephony/IccCustProvider;)I

    move-result v6

    if-nez v6, :cond_1

    .line 132
    iget-object v6, p0, Lcom/android/internal/telephony/IccCustProvider$1;->this$0:Lcom/android/internal/telephony/IccCustProvider;

    #getter for: Lcom/android/internal/telephony/IccCustProvider;->mLock:Ljava/lang/Object;
    invoke-static {v6}, Lcom/android/internal/telephony/IccCustProvider;->access$1000(Lcom/android/internal/telephony/IccCustProvider;)Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7

    .line 133
    :try_start_6
    iget-object v6, p0, Lcom/android/internal/telephony/IccCustProvider$1;->this$0:Lcom/android/internal/telephony/IccCustProvider;

    const/4 v8, 0x1

    #setter for: Lcom/android/internal/telephony/IccCustProvider;->mSimReadReady:Z
    invoke-static {v6, v8}, Lcom/android/internal/telephony/IccCustProvider;->access$1102(Lcom/android/internal/telephony/IccCustProvider;Z)Z

    .line 134
    iget-object v6, p0, Lcom/android/internal/telephony/IccCustProvider$1;->this$0:Lcom/android/internal/telephony/IccCustProvider;

    #getter for: Lcom/android/internal/telephony/IccCustProvider;->mLock:Ljava/lang/Object;
    invoke-static {v6}, Lcom/android/internal/telephony/IccCustProvider;->access$1000(Lcom/android/internal/telephony/IccCustProvider;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->notifyAll()V

    .line 135
    monitor-exit v7

    goto/16 :goto_1

    :catchall_1
    move-exception v6

    monitor-exit v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v6

    .line 115
    .end local v3           #exc:Ljava/lang/RuntimeException;
    :pswitch_1
    :try_start_7
    iget-object v6, p0, Lcom/android/internal/telephony/IccCustProvider$1;->this$0:Lcom/android/internal/telephony/IccCustProvider;

    invoke-static {v6}, Lcom/android/internal/telephony/IccCustProvider;->access$710(Lcom/android/internal/telephony/IccCustProvider;)I

    .line 116
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 117
    .local v1, ar:Landroid/os/AsyncResult;
    iget-object v6, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v6, [B

    move-object v0, v6

    check-cast v0, [B

    move-object v2, v0

    .line 118
    .local v2, data:[B
    iget-object v6, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v6, :cond_0

    .line 119
    array-length v6, v2

    iget-object v7, p0, Lcom/android/internal/telephony/IccCustProvider$1;->this$0:Lcom/android/internal/telephony/IccCustProvider;

    #getter for: Lcom/android/internal/telephony/IccCustProvider;->mSimByte:I
    invoke-static {v7}, Lcom/android/internal/telephony/IccCustProvider;->access$800(Lcom/android/internal/telephony/IccCustProvider;)I

    move-result v7

    if-lt v6, v7, :cond_0

    .line 121
    iget-object v6, p0, Lcom/android/internal/telephony/IccCustProvider$1;->this$0:Lcom/android/internal/telephony/IccCustProvider;

    iget-object v7, p0, Lcom/android/internal/telephony/IccCustProvider$1;->this$0:Lcom/android/internal/telephony/IccCustProvider;

    #getter for: Lcom/android/internal/telephony/IccCustProvider;->mSimByte:I
    invoke-static {v7}, Lcom/android/internal/telephony/IccCustProvider;->access$800(Lcom/android/internal/telephony/IccCustProvider;)I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    aget-byte v7, v2, v7

    iget-object v8, p0, Lcom/android/internal/telephony/IccCustProvider$1;->this$0:Lcom/android/internal/telephony/IccCustProvider;

    #getter for: Lcom/android/internal/telephony/IccCustProvider;->mSimBit:I
    invoke-static {v8}, Lcom/android/internal/telephony/IccCustProvider;->access$900(Lcom/android/internal/telephony/IccCustProvider;)I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    shr-int/2addr v7, v8

    and-int/lit8 v7, v7, 0x1

    #setter for: Lcom/android/internal/telephony/IccCustProvider;->mSimFlagValue:I
    invoke-static {v6, v7}, Lcom/android/internal/telephony/IccCustProvider;->access$302(Lcom/android/internal/telephony/IccCustProvider;I)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_0

    goto/16 :goto_0

    .line 130
    .end local v1           #ar:Landroid/os/AsyncResult;
    .end local v2           #data:[B
    :catchall_2
    move-exception v6

    iget-object v7, p0, Lcom/android/internal/telephony/IccCustProvider$1;->this$0:Lcom/android/internal/telephony/IccCustProvider;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "-handleMessage mRecordsToLoad="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/telephony/IccCustProvider$1;->this$0:Lcom/android/internal/telephony/IccCustProvider;

    #getter for: Lcom/android/internal/telephony/IccCustProvider;->mRecordsToLoad:I
    invoke-static {v9}, Lcom/android/internal/telephony/IccCustProvider;->access$700(Lcom/android/internal/telephony/IccCustProvider;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    #calls: Lcom/android/internal/telephony/IccCustProvider;->log(Ljava/lang/String;)V
    invoke-static {v7, v8}, Lcom/android/internal/telephony/IccCustProvider;->access$000(Lcom/android/internal/telephony/IccCustProvider;Ljava/lang/String;)V

    .line 131
    iget-object v7, p0, Lcom/android/internal/telephony/IccCustProvider$1;->this$0:Lcom/android/internal/telephony/IccCustProvider;

    #getter for: Lcom/android/internal/telephony/IccCustProvider;->mRecordsToLoad:I
    invoke-static {v7}, Lcom/android/internal/telephony/IccCustProvider;->access$700(Lcom/android/internal/telephony/IccCustProvider;)I

    move-result v7

    if-nez v7, :cond_3

    .line 132
    iget-object v7, p0, Lcom/android/internal/telephony/IccCustProvider$1;->this$0:Lcom/android/internal/telephony/IccCustProvider;

    #getter for: Lcom/android/internal/telephony/IccCustProvider;->mLock:Ljava/lang/Object;
    invoke-static {v7}, Lcom/android/internal/telephony/IccCustProvider;->access$1000(Lcom/android/internal/telephony/IccCustProvider;)Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7

    .line 133
    :try_start_8
    iget-object v8, p0, Lcom/android/internal/telephony/IccCustProvider$1;->this$0:Lcom/android/internal/telephony/IccCustProvider;

    const/4 v9, 0x1

    #setter for: Lcom/android/internal/telephony/IccCustProvider;->mSimReadReady:Z
    invoke-static {v8, v9}, Lcom/android/internal/telephony/IccCustProvider;->access$1102(Lcom/android/internal/telephony/IccCustProvider;Z)Z

    .line 134
    iget-object v8, p0, Lcom/android/internal/telephony/IccCustProvider$1;->this$0:Lcom/android/internal/telephony/IccCustProvider;

    #getter for: Lcom/android/internal/telephony/IccCustProvider;->mLock:Ljava/lang/Object;
    invoke-static {v8}, Lcom/android/internal/telephony/IccCustProvider;->access$1000(Lcom/android/internal/telephony/IccCustProvider;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->notifyAll()V

    .line 135
    monitor-exit v7
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 130
    :cond_3
    throw v6

    .line 135
    :catchall_3
    move-exception v6

    :try_start_9
    monitor-exit v7
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    throw v6

    :catchall_4
    move-exception v6

    :try_start_a
    monitor-exit v7
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    throw v6

    .line 95
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

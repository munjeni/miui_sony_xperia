.class abstract Lcom/android/internal/telephony/cat/BipProxy$BipChannel;
.super Ljava/lang/Object;
.source "BipProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cat/BipProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "BipChannel"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/cat/BipProxy$BipChannel$OpenSocketAsyncTask;
    }
.end annotation


# instance fields
.field mChannelSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

.field mChannelStatus:I

.field final mDefaultBufferSize:I

.field mRxBuf:[B

.field mRxLen:I

.field mRxPos:I

.field mSocket:Ljava/net/Socket;

.field mTxBuf:[B

.field mTxLen:I

.field mTxPos:I

.field final synthetic this$0:Lcom/android/internal/telephony/cat/BipProxy;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/cat/BipProxy;I)V
    .locals 2
    .parameter
    .parameter "defaultBufferSize"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 687
    iput-object p1, p0, Lcom/android/internal/telephony/cat/BipProxy$BipChannel;->this$0:Lcom/android/internal/telephony/cat/BipProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 676
    iput-object v1, p0, Lcom/android/internal/telephony/cat/BipProxy$BipChannel;->mRxBuf:[B

    .line 677
    iput v0, p0, Lcom/android/internal/telephony/cat/BipProxy$BipChannel;->mRxPos:I

    .line 678
    iput v0, p0, Lcom/android/internal/telephony/cat/BipProxy$BipChannel;->mRxLen:I

    .line 680
    iput-object v1, p0, Lcom/android/internal/telephony/cat/BipProxy$BipChannel;->mTxBuf:[B

    .line 681
    iput v0, p0, Lcom/android/internal/telephony/cat/BipProxy$BipChannel;->mTxPos:I

    .line 682
    iput v0, p0, Lcom/android/internal/telephony/cat/BipProxy$BipChannel;->mTxLen:I

    .line 684
    iput v0, p0, Lcom/android/internal/telephony/cat/BipProxy$BipChannel;->mChannelStatus:I

    .line 685
    iput-object v1, p0, Lcom/android/internal/telephony/cat/BipProxy$BipChannel;->mChannelSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    .line 688
    iput p2, p0, Lcom/android/internal/telephony/cat/BipProxy$BipChannel;->mDefaultBufferSize:I

    .line 689
    return-void
.end method


# virtual methods
.method public close(Lcom/android/internal/telephony/cat/CatCmdMessage;)V
    .locals 6
    .parameter "cmdMsg"

    .prologue
    const/4 v3, 0x0

    .line 725
    iput v3, p0, Lcom/android/internal/telephony/cat/BipProxy$BipChannel;->mRxPos:I

    .line 726
    iput v3, p0, Lcom/android/internal/telephony/cat/BipProxy$BipChannel;->mRxLen:I

    .line 727
    iput v3, p0, Lcom/android/internal/telephony/cat/BipProxy$BipChannel;->mTxPos:I

    .line 728
    iput v3, p0, Lcom/android/internal/telephony/cat/BipProxy$BipChannel;->mTxLen:I

    .line 731
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$BipChannel;->mChannelSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    iget v0, v0, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->channel:I

    shl-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/android/internal/telephony/cat/BipProxy$BipChannel;->mChannelStatus:I

    .line 732
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$BipChannel;->this$0:Lcom/android/internal/telephony/cat/BipProxy;

    #getter for: Lcom/android/internal/telephony/cat/BipProxy;->mCatService:Lcom/android/internal/telephony/cat/CatService;
    invoke-static {v0}, Lcom/android/internal/telephony/cat/BipProxy;->access$000(Lcom/android/internal/telephony/cat/BipProxy;)Lcom/android/internal/telephony/cat/CatService;

    move-result-object v0

    iget-object v1, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v5, 0x0

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    .line 733
    return-void
.end method

.method protected closeSocket()V
    .locals 1

    .prologue
    .line 693
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$BipChannel;->mSocket:Ljava/net/Socket;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$BipChannel;->mSocket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 695
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$BipChannel;->mSocket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 699
    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$BipChannel;->mSocket:Ljava/net/Socket;

    .line 700
    return-void

    .line 696
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected getMin(II)I
    .locals 1
    .parameter "num1"
    .parameter "num2"

    .prologue
    .line 736
    if-le p2, p1, :cond_1

    move v0, p1

    .line 737
    .local v0, min:I
    :goto_0
    if-gez v0, :cond_0

    const/4 v0, 0x0

    .end local v0           #min:I
    :cond_0
    return v0

    :cond_1
    move v0, p2

    .line 736
    goto :goto_0
.end method

.method public getStatus()I
    .locals 2

    .prologue
    .line 879
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getStatus mChannelSettings="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/cat/BipProxy$BipChannel;->mChannelStatus:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 880
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$BipChannel;->mChannelSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    iget v0, v0, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->channel:I

    if-nez v0, :cond_0

    .line 881
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$BipChannel;->mChannelSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    iget v0, v0, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->channel:I

    shl-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/android/internal/telephony/cat/BipProxy$BipChannel;->mChannelStatus:I

    .line 883
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$BipChannel;->this$0:Lcom/android/internal/telephony/cat/BipProxy;

    #getter for: Lcom/android/internal/telephony/cat/BipProxy;->mIsLinkDropped:Z
    invoke-static {v0}, Lcom/android/internal/telephony/cat/BipProxy;->access$200(Lcom/android/internal/telephony/cat/BipProxy;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 884
    iget v0, p0, Lcom/android/internal/telephony/cat/BipProxy$BipChannel;->mChannelStatus:I

    and-int/lit16 v0, v0, 0xf00

    iput v0, p0, Lcom/android/internal/telephony/cat/BipProxy$BipChannel;->mChannelStatus:I

    .line 885
    iget v0, p0, Lcom/android/internal/telephony/cat/BipProxy$BipChannel;->mChannelStatus:I

    or-int/lit8 v0, v0, 0x5

    iput v0, p0, Lcom/android/internal/telephony/cat/BipProxy$BipChannel;->mChannelStatus:I

    .line 887
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getStatus modified mChannelSettings="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/cat/BipProxy$BipChannel;->mChannelStatus:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 890
    iget v0, p0, Lcom/android/internal/telephony/cat/BipProxy$BipChannel;->mChannelStatus:I

    return v0
.end method

.method protected initBuffer(Lcom/android/internal/telephony/cat/CatCmdMessage;)Lcom/android/internal/telephony/cat/ResultCode;
    .locals 3
    .parameter "cmdMsg"

    .prologue
    .line 750
    sget-object v0, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    .line 752
    .local v0, result:Lcom/android/internal/telephony/cat/ResultCode;
    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getChannelSettings()Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/cat/BipProxy$BipChannel;->mChannelSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    .line 753
    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipProxy$BipChannel;->mChannelSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    iget v1, v1, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->channel:I

    shl-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/android/internal/telephony/cat/BipProxy$BipChannel;->mChannelStatus:I

    .line 755
    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipProxy$BipChannel;->mChannelSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    iget v1, v1, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->bufSize:I

    iget v2, p0, Lcom/android/internal/telephony/cat/BipProxy$BipChannel;->mDefaultBufferSize:I

    if-le v1, v2, :cond_1

    .line 756
    sget-object v0, Lcom/android/internal/telephony/cat/ResultCode;->PRFRMD_WITH_MODIFICATION:Lcom/android/internal/telephony/cat/ResultCode;

    .line 757
    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipProxy$BipChannel;->mChannelSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    iget v2, p0, Lcom/android/internal/telephony/cat/BipProxy$BipChannel;->mDefaultBufferSize:I

    iput v2, v1, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->bufSize:I

    .line 762
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipProxy$BipChannel;->mChannelSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    iget v1, v1, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->bufSize:I

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/android/internal/telephony/cat/BipProxy$BipChannel;->mRxBuf:[B

    .line 763
    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipProxy$BipChannel;->mChannelSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    iget v1, v1, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->bufSize:I

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/android/internal/telephony/cat/BipProxy$BipChannel;->mTxBuf:[B

    .line 765
    return-object v0

    .line 758
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipProxy$BipChannel;->mChannelSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    iget v1, v1, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->bufSize:I

    if-gtz v1, :cond_0

    .line 759
    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipProxy$BipChannel;->mChannelSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    iget v2, p0, Lcom/android/internal/telephony/cat/BipProxy$BipChannel;->mDefaultBufferSize:I

    iput v2, v1, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->bufSize:I

    goto :goto_0
.end method

.method protected invalidateData()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 741
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$BipChannel;->mTxBuf:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    .line 742
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$BipChannel;->mRxBuf:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    .line 743
    iput v1, p0, Lcom/android/internal/telephony/cat/BipProxy$BipChannel;->mTxPos:I

    .line 744
    iput v1, p0, Lcom/android/internal/telephony/cat/BipProxy$BipChannel;->mTxLen:I

    .line 745
    iput v1, p0, Lcom/android/internal/telephony/cat/BipProxy$BipChannel;->mRxPos:I

    .line 746
    iput v1, p0, Lcom/android/internal/telephony/cat/BipProxy$BipChannel;->mRxLen:I

    .line 747
    return-void
.end method

.method public open(Lcom/android/internal/telephony/cat/CatCmdMessage;)Z
    .locals 6
    .parameter "cmdMsg"

    .prologue
    .line 703
    const/4 v1, 0x0

    .line 704
    .local v1, ret:Z
    new-instance v2, Lcom/android/internal/telephony/cat/BipProxy$BipChannel$OpenSocketAsyncTask;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/cat/BipProxy$BipChannel$OpenSocketAsyncTask;-><init>(Lcom/android/internal/telephony/cat/BipProxy$BipChannel;)V

    .line 706
    .local v2, task:Lcom/android/internal/telephony/cat/BipProxy$BipChannel$OpenSocketAsyncTask;
    const/4 v3, 0x1

    new-array v3, v3, [Lcom/android/internal/telephony/cat/CatCmdMessage;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/cat/BipProxy$BipChannel$OpenSocketAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 708
    const-wide/16 v3, 0x3

    :try_start_0
    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/internal/telephony/cat/BipProxy$BipChannel$OpenSocketAsyncTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_3

    move-result v1

    .line 721
    :goto_0
    return v1

    .line 709
    :catch_0
    move-exception v0

    .line 710
    .local v0, e:Ljava/util/concurrent/TimeoutException;
    const-string v3, "BIP channel open socket timeout 3 sec"

    invoke-static {p0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 711
    const/4 v1, 0x0

    .line 719
    goto :goto_0

    .line 712
    .end local v0           #e:Ljava/util/concurrent/TimeoutException;
    :catch_1
    move-exception v0

    .line 713
    .local v0, e:Ljava/util/concurrent/ExecutionException;
    const-string v3, "exception on opening socket"

    invoke-static {p0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 714
    const/4 v1, 0x0

    .line 719
    goto :goto_0

    .line 715
    .end local v0           #e:Ljava/util/concurrent/ExecutionException;
    :catch_2
    move-exception v0

    .line 716
    .local v0, e:Ljava/util/concurrent/CancellationException;
    const/4 v1, 0x0

    .line 719
    goto :goto_0

    .line 717
    .end local v0           #e:Ljava/util/concurrent/CancellationException;
    :catch_3
    move-exception v0

    .line 718
    .local v0, e:Ljava/lang/InterruptedException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public abstract openSocket(Lcom/android/internal/telephony/cat/CatCmdMessage;)Z
.end method

.method public receive(Lcom/android/internal/telephony/cat/CatCmdMessage;)V
    .locals 9
    .parameter "cmdMsg"

    .prologue
    const/4 v3, 0x0

    .line 844
    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    .line 845
    .local v2, result:Lcom/android/internal/telephony/cat/ResultCode;
    const/4 v5, 0x0

    .line 847
    .local v5, resp:Lcom/android/internal/telephony/cat/ResponseData;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RECEIVE_DATA on channel no: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getDataSettings()Lcom/android/internal/telephony/cat/CatCmdMessage$DataSettings;

    move-result-object v1

    iget v1, v1, Lcom/android/internal/telephony/cat/CatCmdMessage$DataSettings;->channel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 849
    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getDataSettings()Lcom/android/internal/telephony/cat/CatCmdMessage$DataSettings;

    move-result-object v0

    iget v8, v0, Lcom/android/internal/telephony/cat/CatCmdMessage$DataSettings;->length:I

    .line 850
    .local v8, requested:I
    const/16 v0, 0xed

    if-le v8, v0, :cond_0

    .line 851
    const/16 v8, 0xed

    .line 853
    :cond_0
    iget v0, p0, Lcom/android/internal/telephony/cat/BipProxy$BipChannel;->mRxLen:I

    if-le v8, v0, :cond_1

    .line 854
    iget v8, p0, Lcom/android/internal/telephony/cat/BipProxy$BipChannel;->mRxLen:I

    .line 855
    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->PRFRMD_WITH_MISSING_INFO:Lcom/android/internal/telephony/cat/ResultCode;

    .line 858
    :cond_1
    iget v0, p0, Lcom/android/internal/telephony/cat/BipProxy$BipChannel;->mRxLen:I

    sub-int/2addr v0, v8

    iput v0, p0, Lcom/android/internal/telephony/cat/BipProxy$BipChannel;->mRxLen:I

    .line 859
    const/16 v6, 0xff

    .line 860
    .local v6, available:I
    iget v0, p0, Lcom/android/internal/telephony/cat/BipProxy$BipChannel;->mRxLen:I

    if-ge v0, v6, :cond_2

    iget v6, p0, Lcom/android/internal/telephony/cat/BipProxy$BipChannel;->mRxLen:I

    .line 862
    :cond_2
    const/4 v7, 0x0

    .line 863
    .local v7, data:[B
    if-lez v8, :cond_3

    .line 864
    new-array v7, v8, [B

    .line 865
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$BipChannel;->mRxBuf:[B

    iget v1, p0, Lcom/android/internal/telephony/cat/BipProxy$BipChannel;->mRxPos:I

    invoke-static {v0, v1, v7, v3, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 866
    iget v0, p0, Lcom/android/internal/telephony/cat/BipProxy$BipChannel;->mRxPos:I

    add-int/2addr v0, v8

    iput v0, p0, Lcom/android/internal/telephony/cat/BipProxy$BipChannel;->mRxPos:I

    .line 869
    :cond_3
    new-instance v5, Lcom/android/internal/telephony/cat/ReceiveDataResponseData;

    .end local v5           #resp:Lcom/android/internal/telephony/cat/ResponseData;
    invoke-direct {v5, v7, v6}, Lcom/android/internal/telephony/cat/ReceiveDataResponseData;-><init>([BI)V

    .line 870
    .restart local v5       #resp:Lcom/android/internal/telephony/cat/ResponseData;
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$BipChannel;->this$0:Lcom/android/internal/telephony/cat/BipProxy;

    #getter for: Lcom/android/internal/telephony/cat/BipProxy;->mCatService:Lcom/android/internal/telephony/cat/CatService;
    invoke-static {v0}, Lcom/android/internal/telephony/cat/BipProxy;->access$000(Lcom/android/internal/telephony/cat/BipProxy;)Lcom/android/internal/telephony/cat/CatService;

    move-result-object v0

    iget-object v1, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    .line 872
    iget v0, p0, Lcom/android/internal/telephony/cat/BipProxy$BipChannel;->mRxLen:I

    if-gtz v0, :cond_4

    .line 874
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/BipProxy$BipChannel;->startReaderThread()V

    .line 876
    :cond_4
    return-void
.end method

.method protected sanityCheck()V
    .locals 4

    .prologue
    .line 770
    iget v1, p0, Lcom/android/internal/telephony/cat/BipProxy$BipChannel;->mRxLen:I

    if-gtz v1, :cond_0

    .line 771
    const-string v1, "No data read."

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 783
    :goto_0
    return-void

    .line 773
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/android/internal/telephony/cat/BipProxy$BipChannel;->mRxLen:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " data read."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 774
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/telephony/cat/BipProxy$BipChannel;->mRxPos:I

    .line 775
    const/16 v0, 0xff

    .line 776
    .local v0, available:I
    iget v1, p0, Lcom/android/internal/telephony/cat/BipProxy$BipChannel;->mRxLen:I

    if-ge v1, v0, :cond_1

    .line 777
    iget v0, p0, Lcom/android/internal/telephony/cat/BipProxy$BipChannel;->mRxLen:I

    .line 781
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipProxy$BipChannel;->this$0:Lcom/android/internal/telephony/cat/BipProxy;

    iget v2, p0, Lcom/android/internal/telephony/cat/BipProxy$BipChannel;->mChannelStatus:I

    and-int/lit16 v3, v0, 0xff

    int-to-byte v3, v3

    #calls: Lcom/android/internal/telephony/cat/BipProxy;->sendDataAvailableEvent(II)V
    invoke-static {v1, v2, v3}, Lcom/android/internal/telephony/cat/BipProxy;->access$100(Lcom/android/internal/telephony/cat/BipProxy;II)V

    goto :goto_0
.end method

.method public send(Lcom/android/internal/telephony/cat/CatCmdMessage;)V
    .locals 11
    .parameter "cmdMsg"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 786
    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getDataSettings()Lcom/android/internal/telephony/cat/CatCmdMessage$DataSettings;

    move-result-object v8

    .line 787
    .local v8, dataSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$DataSettings;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SEND_DATA on channel no: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v8, Lcom/android/internal/telephony/cat/CatCmdMessage$DataSettings;->channel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 790
    iget-object v0, v8, Lcom/android/internal/telephony/cat/CatCmdMessage$DataSettings;->data:[B

    array-length v0, v0

    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipProxy$BipChannel;->mTxBuf:[B

    array-length v1, v1

    iget v2, p0, Lcom/android/internal/telephony/cat/BipProxy$BipChannel;->mTxPos:I

    sub-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/cat/BipProxy$BipChannel;->getMin(II)I

    move-result v7

    .line 791
    .local v7, dataLen:I
    if-lez v7, :cond_0

    .line 792
    iget-object v0, v8, Lcom/android/internal/telephony/cat/CatCmdMessage$DataSettings;->data:[B

    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipProxy$BipChannel;->mTxBuf:[B

    iget v2, p0, Lcom/android/internal/telephony/cat/BipProxy$BipChannel;->mTxPos:I

    invoke-static {v0, v4, v1, v2, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 793
    iget v0, p0, Lcom/android/internal/telephony/cat/BipProxy$BipChannel;->mTxPos:I

    add-int/2addr v0, v7

    iput v0, p0, Lcom/android/internal/telephony/cat/BipProxy$BipChannel;->mTxPos:I

    .line 795
    :cond_0
    iget v0, p0, Lcom/android/internal/telephony/cat/BipProxy$BipChannel;->mTxLen:I

    iget-object v1, v8, Lcom/android/internal/telephony/cat/CatCmdMessage$DataSettings;->data:[B

    array-length v1, v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/telephony/cat/BipProxy$BipChannel;->mTxLen:I

    .line 796
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Tx buffer now contains "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/cat/BipProxy$BipChannel;->mTxLen:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " bytes."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 799
    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCommandQualifier()I

    move-result v0

    if-ne v0, v3, :cond_2

    .line 801
    iput v4, p0, Lcom/android/internal/telephony/cat/BipProxy$BipChannel;->mTxPos:I

    .line 802
    iget v10, p0, Lcom/android/internal/telephony/cat/BipProxy$BipChannel;->mTxLen:I

    .line 803
    .local v10, len:I
    iput v4, p0, Lcom/android/internal/telephony/cat/BipProxy$BipChannel;->mTxLen:I

    .line 804
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Sent data to socket "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " bytes."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 807
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$BipChannel;->mSocket:Ljava/net/Socket;

    if-nez v0, :cond_1

    .line 808
    const-string v0, "Socket not available."

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 809
    new-instance v5, Lcom/android/internal/telephony/cat/SendDataResponseData;

    invoke-direct {v5, v4}, Lcom/android/internal/telephony/cat/SendDataResponseData;-><init>(I)V

    .line 810
    .local v5, resp:Lcom/android/internal/telephony/cat/ResponseData;
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$BipChannel;->this$0:Lcom/android/internal/telephony/cat/BipProxy;

    #getter for: Lcom/android/internal/telephony/cat/BipProxy;->mCatService:Lcom/android/internal/telephony/cat/CatService;
    invoke-static {v0}, Lcom/android/internal/telephony/cat/BipProxy;->access$000(Lcom/android/internal/telephony/cat/BipProxy;)Lcom/android/internal/telephony/cat/CatService;

    move-result-object v0

    iget-object v1, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->BIP_ERROR:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    .line 841
    .end local v10           #len:I
    :goto_0
    return-void

    .line 816
    .end local v5           #resp:Lcom/android/internal/telephony/cat/ResponseData;
    .restart local v10       #len:I
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$BipChannel;->mSocket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipProxy$BipChannel;->mTxBuf:[B

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v10}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 826
    .end local v10           #len:I
    :cond_2
    const/16 v6, 0xee

    .line 827
    .local v6, avail:I
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$BipChannel;->mChannelSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    if-eqz v0, :cond_3

    .line 831
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$BipChannel;->mChannelSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    iget v0, v0, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->bufSize:I

    iget v1, p0, Lcom/android/internal/telephony/cat/BipProxy$BipChannel;->mTxLen:I

    sub-int v6, v0, v1

    .line 832
    const/16 v0, 0xff

    if-le v6, v0, :cond_3

    .line 833
    const/16 v6, 0xff

    .line 836
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TR with "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " bytes available in Tx Buffer on channel no: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v8, Lcom/android/internal/telephony/cat/CatCmdMessage$DataSettings;->channel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 839
    new-instance v5, Lcom/android/internal/telephony/cat/SendDataResponseData;

    invoke-direct {v5, v6}, Lcom/android/internal/telephony/cat/SendDataResponseData;-><init>(I)V

    .line 840
    .restart local v5       #resp:Lcom/android/internal/telephony/cat/ResponseData;
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$BipChannel;->this$0:Lcom/android/internal/telephony/cat/BipProxy;

    #getter for: Lcom/android/internal/telephony/cat/BipProxy;->mCatService:Lcom/android/internal/telephony/cat/CatService;
    invoke-static {v0}, Lcom/android/internal/telephony/cat/BipProxy;->access$000(Lcom/android/internal/telephony/cat/BipProxy;)Lcom/android/internal/telephony/cat/CatService;

    move-result-object v0

    iget-object v1, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    move v3, v4

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto :goto_0

    .line 817
    .end local v5           #resp:Lcom/android/internal/telephony/cat/ResponseData;
    .end local v6           #avail:I
    .restart local v10       #len:I
    :catch_0
    move-exception v9

    .line 818
    .local v9, e:Ljava/io/IOException;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IOException "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v9}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 819
    new-instance v5, Lcom/android/internal/telephony/cat/SendDataResponseData;

    invoke-direct {v5, v4}, Lcom/android/internal/telephony/cat/SendDataResponseData;-><init>(I)V

    .line 820
    .restart local v5       #resp:Lcom/android/internal/telephony/cat/ResponseData;
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$BipChannel;->this$0:Lcom/android/internal/telephony/cat/BipProxy;

    #getter for: Lcom/android/internal/telephony/cat/BipProxy;->mCatService:Lcom/android/internal/telephony/cat/CatService;
    invoke-static {v0}, Lcom/android/internal/telephony/cat/BipProxy;->access$000(Lcom/android/internal/telephony/cat/BipProxy;)Lcom/android/internal/telephony/cat/CatService;

    move-result-object v0

    iget-object v1, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->BIP_ERROR:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto/16 :goto_0
.end method

.method public abstract startReaderThread()V
.end method

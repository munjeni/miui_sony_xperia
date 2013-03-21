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

    iput-object p1, p0, Lcom/android/internal/telephony/cat/BipProxy$BipChannel;->this$0:Lcom/android/internal/telephony/cat/BipProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/cat/BipProxy$BipChannel;->mRxBuf:[B

    iput v0, p0, Lcom/android/internal/telephony/cat/BipProxy$BipChannel;->mRxPos:I

    iput v0, p0, Lcom/android/internal/telephony/cat/BipProxy$BipChannel;->mRxLen:I

    iput-object v1, p0, Lcom/android/internal/telephony/cat/BipProxy$BipChannel;->mTxBuf:[B

    iput v0, p0, Lcom/android/internal/telephony/cat/BipProxy$BipChannel;->mTxPos:I

    iput v0, p0, Lcom/android/internal/telephony/cat/BipProxy$BipChannel;->mTxLen:I

    iput v0, p0, Lcom/android/internal/telephony/cat/BipProxy$BipChannel;->mChannelStatus:I

    iput-object v1, p0, Lcom/android/internal/telephony/cat/BipProxy$BipChannel;->mChannelSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    iput p2, p0, Lcom/android/internal/telephony/cat/BipProxy$BipChannel;->mDefaultBufferSize:I

    return-void
.end method


# virtual methods
.method public close(Lcom/android/internal/telephony/cat/CatCmdMessage;)V
    .locals 6
    .parameter "cmdMsg"

    .prologue
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/internal/telephony/cat/BipProxy$BipChannel;->mRxPos:I

    iput v3, p0, Lcom/android/internal/telephony/cat/BipProxy$BipChannel;->mRxLen:I

    iput v3, p0, Lcom/android/internal/telephony/cat/BipProxy$BipChannel;->mTxPos:I

    iput v3, p0, Lcom/android/internal/telephony/cat/BipProxy$BipChannel;->mTxLen:I

    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$BipChannel;->mChannelSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    iget v0, v0, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->channel:I

    shl-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/android/internal/telephony/cat/BipProxy$BipChannel;->mChannelStatus:I

    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$BipChannel;->this$0:Lcom/android/internal/telephony/cat/BipProxy;

    #getter for: Lcom/android/internal/telephony/cat/BipProxy;->mCatService:Lcom/android/internal/telephony/cat/CatService;
    invoke-static {v0}, Lcom/android/internal/telephony/cat/BipProxy;->access$000(Lcom/android/internal/telephony/cat/BipProxy;)Lcom/android/internal/telephony/cat/CatService;

    move-result-object v0

    iget-object v1, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v5, 0x0

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    return-void
.end method

.method protected closeSocket()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$BipChannel;->mSocket:Ljava/net/Socket;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$BipChannel;->mSocket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$BipChannel;->mSocket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$BipChannel;->mSocket:Ljava/net/Socket;

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected getMin(II)I
    .locals 1
    .parameter "num1"
    .parameter "num2"

    .prologue
    if-le p2, p1, :cond_1

    move v0, p1

    .local v0, min:I
    :goto_0
    if-gez v0, :cond_0

    const/4 v0, 0x0

    .end local v0           #min:I
    :cond_0
    return v0

    :cond_1
    move v0, p2

    goto :goto_0
.end method

.method public getStatus()I
    .locals 2

    .prologue
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

    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$BipChannel;->mChannelSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    iget v0, v0, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->channel:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$BipChannel;->mChannelSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    iget v0, v0, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->channel:I

    shl-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/android/internal/telephony/cat/BipProxy$BipChannel;->mChannelStatus:I

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$BipChannel;->this$0:Lcom/android/internal/telephony/cat/BipProxy;

    #getter for: Lcom/android/internal/telephony/cat/BipProxy;->mIsLinkDropped:Z
    invoke-static {v0}, Lcom/android/internal/telephony/cat/BipProxy;->access$200(Lcom/android/internal/telephony/cat/BipProxy;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/internal/telephony/cat/BipProxy$BipChannel;->mChannelStatus:I

    and-int/lit16 v0, v0, 0xf00

    iput v0, p0, Lcom/android/internal/telephony/cat/BipProxy$BipChannel;->mChannelStatus:I

    iget v0, p0, Lcom/android/internal/telephony/cat/BipProxy$BipChannel;->mChannelStatus:I

    or-int/lit8 v0, v0, 0x5

    iput v0, p0, Lcom/android/internal/telephony/cat/BipProxy$BipChannel;->mChannelStatus:I

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

    iget v0, p0, Lcom/android/internal/telephony/cat/BipProxy$BipChannel;->mChannelStatus:I

    return v0
.end method

.method protected initBuffer(Lcom/android/internal/telephony/cat/CatCmdMessage;)Lcom/android/internal/telephony/cat/ResultCode;
    .locals 3
    .parameter "cmdMsg"

    .prologue
    sget-object v0, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    .local v0, result:Lcom/android/internal/telephony/cat/ResultCode;
    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getChannelSettings()Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/cat/BipProxy$BipChannel;->mChannelSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipProxy$BipChannel;->mChannelSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    iget v1, v1, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->channel:I

    shl-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/android/internal/telephony/cat/BipProxy$BipChannel;->mChannelStatus:I

    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipProxy$BipChannel;->mChannelSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    iget v1, v1, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->bufSize:I

    iget v2, p0, Lcom/android/internal/telephony/cat/BipProxy$BipChannel;->mDefaultBufferSize:I

    if-le v1, v2, :cond_1

    sget-object v0, Lcom/android/internal/telephony/cat/ResultCode;->PRFRMD_WITH_MODIFICATION:Lcom/android/internal/telephony/cat/ResultCode;

    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipProxy$BipChannel;->mChannelSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    iget v2, p0, Lcom/android/internal/telephony/cat/BipProxy$BipChannel;->mDefaultBufferSize:I

    iput v2, v1, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->bufSize:I

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipProxy$BipChannel;->mChannelSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    iget v1, v1, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->bufSize:I

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/android/internal/telephony/cat/BipProxy$BipChannel;->mRxBuf:[B

    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipProxy$BipChannel;->mChannelSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    iget v1, v1, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->bufSize:I

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/android/internal/telephony/cat/BipProxy$BipChannel;->mTxBuf:[B

    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipProxy$BipChannel;->mChannelSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    iget v1, v1, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->bufSize:I

    if-gtz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipProxy$BipChannel;->mChannelSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    iget v2, p0, Lcom/android/internal/telephony/cat/BipProxy$BipChannel;->mDefaultBufferSize:I

    iput v2, v1, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->bufSize:I

    goto :goto_0
.end method

.method protected invalidateData()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$BipChannel;->mTxBuf:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$BipChannel;->mRxBuf:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    iput v1, p0, Lcom/android/internal/telephony/cat/BipProxy$BipChannel;->mTxPos:I

    iput v1, p0, Lcom/android/internal/telephony/cat/BipProxy$BipChannel;->mTxLen:I

    iput v1, p0, Lcom/android/internal/telephony/cat/BipProxy$BipChannel;->mRxPos:I

    iput v1, p0, Lcom/android/internal/telephony/cat/BipProxy$BipChannel;->mRxLen:I

    return-void
.end method

.method public open(Lcom/android/internal/telephony/cat/CatCmdMessage;)Z
    .locals 6
    .parameter "cmdMsg"

    .prologue
    const/4 v1, 0x0

    .local v1, ret:Z
    new-instance v2, Lcom/android/internal/telephony/cat/BipProxy$BipChannel$OpenSocketAsyncTask;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/cat/BipProxy$BipChannel$OpenSocketAsyncTask;-><init>(Lcom/android/internal/telephony/cat/BipProxy$BipChannel;)V

    .local v2, task:Lcom/android/internal/telephony/cat/BipProxy$BipChannel$OpenSocketAsyncTask;
    const/4 v3, 0x1

    new-array v3, v3, [Lcom/android/internal/telephony/cat/CatCmdMessage;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/cat/BipProxy$BipChannel$OpenSocketAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

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

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, e:Ljava/util/concurrent/TimeoutException;
    const-string v3, "BIP channel open socket timeout 3 sec"

    invoke-static {p0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    goto :goto_0

    .end local v0           #e:Ljava/util/concurrent/TimeoutException;
    :catch_1
    move-exception v0

    .local v0, e:Ljava/util/concurrent/ExecutionException;
    const-string v3, "exception on opening socket"

    invoke-static {p0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    goto :goto_0

    .end local v0           #e:Ljava/util/concurrent/ExecutionException;
    :catch_2
    move-exception v0

    .local v0, e:Ljava/util/concurrent/CancellationException;
    const/4 v1, 0x0

    goto :goto_0

    .end local v0           #e:Ljava/util/concurrent/CancellationException;
    :catch_3
    move-exception v0

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

    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    .local v2, result:Lcom/android/internal/telephony/cat/ResultCode;
    const/4 v5, 0x0

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

    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getDataSettings()Lcom/android/internal/telephony/cat/CatCmdMessage$DataSettings;

    move-result-object v0

    iget v8, v0, Lcom/android/internal/telephony/cat/CatCmdMessage$DataSettings;->length:I

    .local v8, requested:I
    const/16 v0, 0xed

    if-le v8, v0, :cond_0

    const/16 v8, 0xed

    :cond_0
    iget v0, p0, Lcom/android/internal/telephony/cat/BipProxy$BipChannel;->mRxLen:I

    if-le v8, v0, :cond_1

    iget v8, p0, Lcom/android/internal/telephony/cat/BipProxy$BipChannel;->mRxLen:I

    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->PRFRMD_WITH_MISSING_INFO:Lcom/android/internal/telephony/cat/ResultCode;

    :cond_1
    iget v0, p0, Lcom/android/internal/telephony/cat/BipProxy$BipChannel;->mRxLen:I

    sub-int/2addr v0, v8

    iput v0, p0, Lcom/android/internal/telephony/cat/BipProxy$BipChannel;->mRxLen:I

    const/16 v6, 0xff

    .local v6, available:I
    iget v0, p0, Lcom/android/internal/telephony/cat/BipProxy$BipChannel;->mRxLen:I

    if-ge v0, v6, :cond_2

    iget v6, p0, Lcom/android/internal/telephony/cat/BipProxy$BipChannel;->mRxLen:I

    :cond_2
    const/4 v7, 0x0

    .local v7, data:[B
    if-lez v8, :cond_3

    new-array v7, v8, [B

    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$BipChannel;->mRxBuf:[B

    iget v1, p0, Lcom/android/internal/telephony/cat/BipProxy$BipChannel;->mRxPos:I

    invoke-static {v0, v1, v7, v3, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lcom/android/internal/telephony/cat/BipProxy$BipChannel;->mRxPos:I

    add-int/2addr v0, v8

    iput v0, p0, Lcom/android/internal/telephony/cat/BipProxy$BipChannel;->mRxPos:I

    :cond_3
    new-instance v5, Lcom/android/internal/telephony/cat/ReceiveDataResponseData;

    .end local v5           #resp:Lcom/android/internal/telephony/cat/ResponseData;
    invoke-direct {v5, v7, v6}, Lcom/android/internal/telephony/cat/ReceiveDataResponseData;-><init>([BI)V

    .restart local v5       #resp:Lcom/android/internal/telephony/cat/ResponseData;
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$BipChannel;->this$0:Lcom/android/internal/telephony/cat/BipProxy;

    #getter for: Lcom/android/internal/telephony/cat/BipProxy;->mCatService:Lcom/android/internal/telephony/cat/CatService;
    invoke-static {v0}, Lcom/android/internal/telephony/cat/BipProxy;->access$000(Lcom/android/internal/telephony/cat/BipProxy;)Lcom/android/internal/telephony/cat/CatService;

    move-result-object v0

    iget-object v1, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    iget v0, p0, Lcom/android/internal/telephony/cat/BipProxy$BipChannel;->mRxLen:I

    if-gtz v0, :cond_4

    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/BipProxy$BipChannel;->startReaderThread()V

    :cond_4
    return-void
.end method

.method protected sanityCheck()V
    .locals 4

    .prologue
    iget v1, p0, Lcom/android/internal/telephony/cat/BipProxy$BipChannel;->mRxLen:I

    if-gtz v1, :cond_0

    const-string v1, "No data read."

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-void

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

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/telephony/cat/BipProxy$BipChannel;->mRxPos:I

    const/16 v0, 0xff

    .local v0, available:I
    iget v1, p0, Lcom/android/internal/telephony/cat/BipProxy$BipChannel;->mRxLen:I

    if-ge v1, v0, :cond_1

    iget v0, p0, Lcom/android/internal/telephony/cat/BipProxy$BipChannel;->mRxLen:I

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

    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getDataSettings()Lcom/android/internal/telephony/cat/CatCmdMessage$DataSettings;

    move-result-object v8

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

    iget-object v0, v8, Lcom/android/internal/telephony/cat/CatCmdMessage$DataSettings;->data:[B

    array-length v0, v0

    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipProxy$BipChannel;->mTxBuf:[B

    array-length v1, v1

    iget v2, p0, Lcom/android/internal/telephony/cat/BipProxy$BipChannel;->mTxPos:I

    sub-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/cat/BipProxy$BipChannel;->getMin(II)I

    move-result v7

    .local v7, dataLen:I
    if-lez v7, :cond_0

    iget-object v0, v8, Lcom/android/internal/telephony/cat/CatCmdMessage$DataSettings;->data:[B

    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipProxy$BipChannel;->mTxBuf:[B

    iget v2, p0, Lcom/android/internal/telephony/cat/BipProxy$BipChannel;->mTxPos:I

    invoke-static {v0, v4, v1, v2, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lcom/android/internal/telephony/cat/BipProxy$BipChannel;->mTxPos:I

    add-int/2addr v0, v7

    iput v0, p0, Lcom/android/internal/telephony/cat/BipProxy$BipChannel;->mTxPos:I

    :cond_0
    iget v0, p0, Lcom/android/internal/telephony/cat/BipProxy$BipChannel;->mTxLen:I

    iget-object v1, v8, Lcom/android/internal/telephony/cat/CatCmdMessage$DataSettings;->data:[B

    array-length v1, v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/telephony/cat/BipProxy$BipChannel;->mTxLen:I

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

    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCommandQualifier()I

    move-result v0

    if-ne v0, v3, :cond_2

    iput v4, p0, Lcom/android/internal/telephony/cat/BipProxy$BipChannel;->mTxPos:I

    iget v10, p0, Lcom/android/internal/telephony/cat/BipProxy$BipChannel;->mTxLen:I

    .local v10, len:I
    iput v4, p0, Lcom/android/internal/telephony/cat/BipProxy$BipChannel;->mTxLen:I

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

    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$BipChannel;->mSocket:Ljava/net/Socket;

    if-nez v0, :cond_1

    const-string v0, "Socket not available."

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v5, Lcom/android/internal/telephony/cat/SendDataResponseData;

    invoke-direct {v5, v4}, Lcom/android/internal/telephony/cat/SendDataResponseData;-><init>(I)V

    .local v5, resp:Lcom/android/internal/telephony/cat/ResponseData;
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$BipChannel;->this$0:Lcom/android/internal/telephony/cat/BipProxy;

    #getter for: Lcom/android/internal/telephony/cat/BipProxy;->mCatService:Lcom/android/internal/telephony/cat/CatService;
    invoke-static {v0}, Lcom/android/internal/telephony/cat/BipProxy;->access$000(Lcom/android/internal/telephony/cat/BipProxy;)Lcom/android/internal/telephony/cat/CatService;

    move-result-object v0

    iget-object v1, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->BIP_ERROR:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    .end local v10           #len:I
    :goto_0
    return-void

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

    .end local v10           #len:I
    :cond_2
    const/16 v6, 0xee

    .local v6, avail:I
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$BipChannel;->mChannelSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$BipChannel;->mChannelSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    iget v0, v0, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->bufSize:I

    iget v1, p0, Lcom/android/internal/telephony/cat/BipProxy$BipChannel;->mTxLen:I

    sub-int v6, v0, v1

    const/16 v0, 0xff

    if-le v6, v0, :cond_3

    const/16 v6, 0xff

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

    new-instance v5, Lcom/android/internal/telephony/cat/SendDataResponseData;

    invoke-direct {v5, v6}, Lcom/android/internal/telephony/cat/SendDataResponseData;-><init>(I)V

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

    .end local v5           #resp:Lcom/android/internal/telephony/cat/ResponseData;
    .end local v6           #avail:I
    .restart local v10       #len:I
    :catch_0
    move-exception v9

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

    new-instance v5, Lcom/android/internal/telephony/cat/SendDataResponseData;

    invoke-direct {v5, v4}, Lcom/android/internal/telephony/cat/SendDataResponseData;-><init>(I)V

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

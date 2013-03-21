.class Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;
.super Lcom/android/internal/telephony/cat/BipProxy$BipChannel;
.source "BipProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cat/BipProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TcpServerChannel"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel$ServerThread;
    }
.end annotation


# instance fields
.field mServerSocket:Ljava/net/ServerSocket;

.field mThread:Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel$ServerThread;

.field final synthetic this$0:Lcom/android/internal/telephony/cat/BipProxy;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/cat/BipProxy;)V
    .locals 1
    .parameter

    .prologue
    .line 914
    iput-object p1, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->this$0:Lcom/android/internal/telephony/cat/BipProxy;

    .line 915
    const/16 v0, 0x4000

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/cat/BipProxy$BipChannel;-><init>(Lcom/android/internal/telephony/cat/BipProxy;I)V

    .line 911
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->mThread:Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel$ServerThread;

    .line 916
    return-void
.end method


# virtual methods
.method public close(Lcom/android/internal/telephony/cat/CatCmdMessage;)V
    .locals 6
    .parameter "cmdMsg"

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 947
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->closeSocket()V

    .line 949
    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCommandQualifier()I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 950
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->this$0:Lcom/android/internal/telephony/cat/BipProxy;

    #getter for: Lcom/android/internal/telephony/cat/BipProxy;->mCatService:Lcom/android/internal/telephony/cat/CatService;
    invoke-static {v0}, Lcom/android/internal/telephony/cat/BipProxy;->access$000(Lcom/android/internal/telephony/cat/BipProxy;)Lcom/android/internal/telephony/cat/CatService;

    move-result-object v0

    iget-object v1, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    .line 962
    :goto_0
    return-void

    .line 952
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->mServerSocket:Ljava/net/ServerSocket;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->mServerSocket:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 954
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->mServerSocket:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 958
    :cond_1
    :goto_1
    iput-object v5, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->mServerSocket:Ljava/net/ServerSocket;

    .line 960
    invoke-super {p0, p1}, Lcom/android/internal/telephony/cat/BipProxy$BipChannel;->close(Lcom/android/internal/telephony/cat/CatCmdMessage;)V

    goto :goto_0

    .line 955
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public openSocket(Lcom/android/internal/telephony/cat/CatCmdMessage;)Z
    .locals 13
    .parameter "cmdMsg"

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 920
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->initBuffer(Lcom/android/internal/telephony/cat/CatCmdMessage;)Lcom/android/internal/telephony/cat/ResultCode;

    move-result-object v2

    .line 923
    .local v2, result:Lcom/android/internal/telephony/cat/ResultCode;
    :try_start_0
    new-instance v0, Ljava/net/ServerSocket;

    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->mChannelSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    iget v1, v1, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->port:I

    invoke-direct {v0, v1}, Ljava/net/ServerSocket;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->mServerSocket:Ljava/net/ServerSocket;

    .line 925
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Open server socket on port "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->mChannelSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    iget v1, v1, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->port:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " for channel "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->mChannelSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    iget v1, v1, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->channel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 929
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->mChannelSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    iget v0, v0, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->channel:I

    shl-int/lit8 v0, v0, 0x8

    add-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->mChannelStatus:I

    .line 930
    new-instance v5, Lcom/android/internal/telephony/cat/OpenChannelResponseData;

    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->mChannelSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    iget v0, v0, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->bufSize:I

    iget v1, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->mChannelStatus:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v3, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->mChannelSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    iget-object v3, v3, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->bearerDescription:Lcom/android/internal/telephony/cat/BearerDescription;

    invoke-direct {v5, v0, v1, v3}, Lcom/android/internal/telephony/cat/OpenChannelResponseData;-><init>(ILjava/lang/Integer;Lcom/android/internal/telephony/cat/BearerDescription;)V

    .line 932
    .local v5, resp:Lcom/android/internal/telephony/cat/ResponseData;
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->this$0:Lcom/android/internal/telephony/cat/BipProxy;

    #getter for: Lcom/android/internal/telephony/cat/BipProxy;->mCatService:Lcom/android/internal/telephony/cat/CatService;
    invoke-static {v0}, Lcom/android/internal/telephony/cat/BipProxy;->access$000(Lcom/android/internal/telephony/cat/BipProxy;)Lcom/android/internal/telephony/cat/CatService;

    move-result-object v0

    iget-object v1, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 941
    new-instance v0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel$ServerThread;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel$ServerThread;-><init>(Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;)V

    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel$ServerThread;->start()V

    .line 942
    :goto_0
    return v9

    .line 933
    .end local v5           #resp:Lcom/android/internal/telephony/cat/ResponseData;
    :catch_0
    move-exception v12

    .line 934
    .local v12, e:Ljava/io/IOException;
    new-instance v5, Lcom/android/internal/telephony/cat/OpenChannelResponseData;

    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->mChannelSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    iget v0, v0, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->bufSize:I

    iget v1, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->mChannelStatus:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v3, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->mChannelSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    iget-object v3, v3, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->bearerDescription:Lcom/android/internal/telephony/cat/BearerDescription;

    invoke-direct {v5, v0, v1, v3}, Lcom/android/internal/telephony/cat/OpenChannelResponseData;-><init>(ILjava/lang/Integer;Lcom/android/internal/telephony/cat/BearerDescription;)V

    .line 936
    .restart local v5       #resp:Lcom/android/internal/telephony/cat/ResponseData;
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->this$0:Lcom/android/internal/telephony/cat/BipProxy;

    #getter for: Lcom/android/internal/telephony/cat/BipProxy;->mCatService:Lcom/android/internal/telephony/cat/CatService;
    invoke-static {v0}, Lcom/android/internal/telephony/cat/BipProxy;->access$000(Lcom/android/internal/telephony/cat/BipProxy;)Lcom/android/internal/telephony/cat/CatService;

    move-result-object v6

    iget-object v7, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v8, Lcom/android/internal/telephony/cat/ResultCode;->BIP_ERROR:Lcom/android/internal/telephony/cat/ResultCode;

    move-object v11, v5

    invoke-virtual/range {v6 .. v11}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    .line 938
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IOException "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v12}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move v9, v10

    .line 939
    goto :goto_0
.end method

.method public startReaderThread()V
    .locals 1

    .prologue
    .line 968
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->closeSocket()V

    .line 971
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->mThread:Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel$ServerThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->mThread:Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel$ServerThread;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel$ServerThread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_1

    .line 972
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel$ServerThread;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel$ServerThread;-><init>(Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;)V

    iput-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->mThread:Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel$ServerThread;

    .line 973
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->mThread:Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel$ServerThread;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel$ServerThread;->start()V

    .line 975
    :cond_1
    return-void
.end method

.class Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel$ServerThread;
.super Ljava/lang/Thread;
.source "BipProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ServerThread"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;)V
    .locals 0
    .parameter

    .prologue
    .line 977
    iput-object p1, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel$ServerThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 980
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Server thread start on channel no: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel$ServerThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->mChannelSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    iget v2, v2, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->channel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 982
    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel$ServerThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;

    iget-object v1, v1, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->mSocket:Ljava/net/Socket;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel$ServerThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;

    iget-object v1, v1, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->mSocket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 984
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel$ServerThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;

    iget-object v2, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel$ServerThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->mChannelSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    iget v2, v2, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->channel:I

    shl-int/lit8 v2, v2, 0x8

    add-int/lit16 v2, v2, 0x4000

    iput v2, v1, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->mChannelStatus:I

    .line 985
    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel$ServerThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;

    iget-object v1, v1, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->this$0:Lcom/android/internal/telephony/cat/BipProxy;

    iget-object v2, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel$ServerThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;

    iget v2, v2, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->mChannelStatus:I

    #calls: Lcom/android/internal/telephony/cat/BipProxy;->sendChannelStatusEvent(I)V
    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/BipProxy;->access$300(Lcom/android/internal/telephony/cat/BipProxy;I)V

    .line 989
    :try_start_0
    const-string v1, "Wait for connection"

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 990
    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel$ServerThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;

    iget-object v2, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel$ServerThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->mServerSocket:Ljava/net/ServerSocket;

    invoke-virtual {v2}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->mSocket:Ljava/net/Socket;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 997
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel$ServerThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;

    iget-object v1, v1, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->mSocket:Ljava/net/Socket;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel$ServerThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;

    iget-object v1, v1, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->mSocket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 998
    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel$ServerThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;

    const v2, 0x8000

    iget-object v3, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel$ServerThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;

    iget-object v3, v3, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->mChannelSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    iget v3, v3, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->channel:I

    shl-int/lit8 v3, v3, 0x8

    add-int/2addr v2, v3

    iput v2, v1, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->mChannelStatus:I

    .line 999
    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel$ServerThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;

    iget-object v1, v1, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->this$0:Lcom/android/internal/telephony/cat/BipProxy;

    iget-object v2, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel$ServerThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;

    iget v2, v2, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->mChannelStatus:I

    #calls: Lcom/android/internal/telephony/cat/BipProxy;->sendChannelStatusEvent(I)V
    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/BipProxy;->access$300(Lcom/android/internal/telephony/cat/BipProxy;I)V

    .line 1003
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel$ServerThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;

    iget-object v1, v1, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->mSocket:Ljava/net/Socket;

    if-eqz v1, :cond_2

    .line 1006
    :try_start_1
    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel$ServerThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;

    iget-object v2, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel$ServerThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->mSocket:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel$ServerThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;

    iget-object v3, v3, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->mRxBuf:[B

    invoke-virtual {v2, v3}, Ljava/io/InputStream;->read([B)I

    move-result v2

    iput v2, v1, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->mRxLen:I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1014
    :goto_1
    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel$ServerThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->sanityCheck()V

    .line 1020
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Server thread end on channel no: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel$ServerThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->mChannelSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    iget v2, v2, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->channel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1021
    return-void

    .line 991
    :catch_0
    move-exception v0

    .line 992
    .local v0, e:Ljava/io/IOException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IOException "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1007
    .end local v0           #e:Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 1008
    .restart local v0       #e:Ljava/io/IOException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Read on No: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel$ServerThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->mChannelSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    iget v2, v2, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->channel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", IOException "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1010
    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel$ServerThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->mSocket:Ljava/net/Socket;

    .line 1011
    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel$ServerThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->invalidateData()V

    goto :goto_1

    .line 1016
    .end local v0           #e:Ljava/io/IOException;
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No Socket connection for server thread on channel no: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel$ServerThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->mChannelSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    iget v2, v2, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->channel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_2
.end method

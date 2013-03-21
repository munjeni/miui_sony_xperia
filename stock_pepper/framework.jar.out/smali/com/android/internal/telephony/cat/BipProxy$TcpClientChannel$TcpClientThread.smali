.class Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel$TcpClientThread;
.super Ljava/lang/Thread;
.source "BipProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TcpClientThread"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;)V
    .locals 0
    .parameter

    .prologue
    .line 1097
    iput-object p1, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel$TcpClientThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1100
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Client thread start on channel no: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel$TcpClientThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;->mChannelSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    iget v2, v2, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->channel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1102
    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel$TcpClientThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;

    iget-object v1, v1, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;->mSocket:Ljava/net/Socket;

    if-eqz v1, :cond_0

    .line 1105
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel$TcpClientThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;

    iget-object v2, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel$TcpClientThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;->mSocket:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel$TcpClientThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;

    iget-object v3, v3, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;->mRxBuf:[B

    invoke-virtual {v2, v3}, Ljava/io/InputStream;->read([B)I

    move-result v2

    iput v2, v1, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;->mRxLen:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1113
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel$TcpClientThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;->sanityCheck()V

    .line 1115
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Client thread end on channel no: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel$TcpClientThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;->mChannelSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    iget v2, v2, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->channel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1116
    return-void

    .line 1106
    :catch_0
    move-exception v0

    .line 1107
    .local v0, e:Ljava/io/IOException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Read on No: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel$TcpClientThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;->mChannelSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

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

    .line 1109
    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel$TcpClientThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;->mSocket:Ljava/net/Socket;

    .line 1110
    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel$TcpClientThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;->invalidateData()V

    goto :goto_0
.end method

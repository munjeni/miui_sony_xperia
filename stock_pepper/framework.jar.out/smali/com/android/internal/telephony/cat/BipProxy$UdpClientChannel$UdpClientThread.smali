.class Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel$UdpClientThread;
.super Ljava/lang/Thread;
.source "BipProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UdpClientThread"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;)V
    .locals 0
    .parameter

    .prologue
    .line 1266
    iput-object p1, p0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel$UdpClientThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 1269
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UDP Client thread start on channel no: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel$UdpClientThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;

    iget-object v5, v5, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;->mChannelSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    iget v5, v5, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->channel:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1272
    iget-object v4, p0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel$UdpClientThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;

    iget-object v4, v4, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;->mDatagramSocket:Ljava/net/DatagramSocket;

    if-eqz v4, :cond_0

    .line 1274
    const/4 v1, 0x0

    .line 1275
    .local v1, packet:Ljava/net/DatagramPacket;
    const/4 v3, 0x0

    .line 1278
    .local v3, success:Z
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UDP Client listening on port : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel$UdpClientThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;

    iget-object v5, v5, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;->mDatagramSocket:Ljava/net/DatagramSocket;

    invoke-virtual {v5}, Ljava/net/DatagramSocket;->getLocalPort()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1280
    new-instance v2, Ljava/net/DatagramPacket;

    iget-object v4, p0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel$UdpClientThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;

    iget-object v4, v4, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;->mRxBuf:[B

    iget-object v5, p0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel$UdpClientThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;

    iget-object v5, v5, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;->mRxBuf:[B

    array-length v5, v5

    invoke-direct {v2, v4, v5}, Ljava/net/DatagramPacket;-><init>([BI)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1281
    .end local v1           #packet:Ljava/net/DatagramPacket;
    .local v2, packet:Ljava/net/DatagramPacket;
    :try_start_1
    iget-object v4, p0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel$UdpClientThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;

    iget-object v4, v4, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;->mDatagramSocket:Ljava/net/DatagramSocket;

    invoke-virtual {v4, v2}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2

    .line 1282
    const/4 v3, 0x1

    move-object v1, v2

    .line 1290
    .end local v2           #packet:Ljava/net/DatagramPacket;
    .restart local v1       #packet:Ljava/net/DatagramPacket;
    :goto_0
    if-eqz v3, :cond_1

    .line 1291
    iget-object v4, p0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel$UdpClientThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;

    invoke-virtual {v1}, Ljava/net/DatagramPacket;->getLength()I

    move-result v5

    iput v5, v4, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;->mRxLen:I

    .line 1297
    :goto_1
    iget-object v4, p0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel$UdpClientThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;->sanityCheck()V

    .line 1300
    .end local v1           #packet:Ljava/net/DatagramPacket;
    .end local v3           #success:Z
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UDP Client thread end on channel no: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel$UdpClientThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;

    iget-object v5, v5, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;->mChannelSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    iget v5, v5, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->channel:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1301
    return-void

    .line 1283
    .restart local v1       #packet:Ljava/net/DatagramPacket;
    .restart local v3       #success:Z
    :catch_0
    move-exception v0

    .line 1284
    .local v0, e:Ljava/io/IOException;
    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Read on No: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel$UdpClientThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;

    iget-object v5, v5, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;->mChannelSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    iget v5, v5, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->channel:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", IOException "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 1286
    .end local v0           #e:Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 1287
    .local v0, e:Ljava/lang/IllegalArgumentException;
    :goto_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IllegalArgumentException: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 1293
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :cond_1
    iget-object v4, p0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel$UdpClientThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;

    const/4 v5, 0x0

    iput-object v5, v4, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;->mDatagramSocket:Ljava/net/DatagramSocket;

    .line 1294
    iget-object v4, p0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel$UdpClientThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;->invalidateData()V

    goto :goto_1

    .line 1286
    .end local v1           #packet:Ljava/net/DatagramPacket;
    .restart local v2       #packet:Ljava/net/DatagramPacket;
    :catch_2
    move-exception v0

    move-object v1, v2

    .end local v2           #packet:Ljava/net/DatagramPacket;
    .restart local v1       #packet:Ljava/net/DatagramPacket;
    goto :goto_3

    .line 1283
    .end local v1           #packet:Ljava/net/DatagramPacket;
    .restart local v2       #packet:Ljava/net/DatagramPacket;
    :catch_3
    move-exception v0

    move-object v1, v2

    .end local v2           #packet:Ljava/net/DatagramPacket;
    .restart local v1       #packet:Ljava/net/DatagramPacket;
    goto :goto_2
.end method

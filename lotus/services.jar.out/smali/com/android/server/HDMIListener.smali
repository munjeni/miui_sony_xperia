.class final Lcom/android/server/HDMIListener;
.super Ljava/lang/Object;
.source "HDMIListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final HDMI_CMD_CHANGE_MODE:Ljava/lang/String; = "change_mode: "

.field private static final HDMI_CMD_DISABLE_HDMI:Ljava/lang/String; = "disable_hdmi"

.field private static final HDMI_CMD_ENABLE_HDMI:Ljava/lang/String; = "enable_hdmi"

.field private static final HDMI_CMD_HPDOPTION:Ljava/lang/String; = "hdmi_hpd: "

.field private static final HDMI_CMD_SET_ASHEIGHT:Ljava/lang/String; = "set_asheight: "

.field private static final HDMI_CMD_SET_ASWIDTH:Ljava/lang/String; = "set_aswidth: "

.field private static final HDMI_EVT_AUDIO_OFF:Ljava/lang/String; = "hdmi_audio_off"

.field private static final HDMI_EVT_AUDIO_ON:Ljava/lang/String; = "hdmi_audio_on"

.field private static final HDMI_EVT_CONNECTED:Ljava/lang/String; = "hdmi_connected"

.field private static final HDMI_EVT_DISCONNECTED:Ljava/lang/String; = "hdmi_disconnected"

.field private static final HDMI_EVT_START:Ljava/lang/String; = "hdmi_listner_started"

.field private static final HDMI_SOCKET:Ljava/lang/String; = "hdmid"

.field private static final TAG:Ljava/lang/String; = "HDMIListener"


# instance fields
.field private mEDIDs:[I

.field private mHDMIConnected:Z

.field private mHDMIEnabled:Z

.field private mOutputStream:Ljava/io/DataOutputStream;

.field private mService:Lcom/android/server/HDMIService;


# direct methods
.method constructor <init>(Lcom/android/server/HDMIService;)V
    .locals 1
    .parameter "service"

    .prologue
    const/4 v0, 0x0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-boolean v0, p0, Lcom/android/server/HDMIListener;->mHDMIConnected:Z

    .line 63
    iput-boolean v0, p0, Lcom/android/server/HDMIListener;->mHDMIEnabled:Z

    .line 64
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/server/HDMIListener;->mEDIDs:[I

    .line 67
    iput-object p1, p0, Lcom/android/server/HDMIListener;->mService:Lcom/android/server/HDMIService;

    .line 68
    return-void
.end method

.method private handleEvent(Ljava/lang/String;)V
    .locals 6
    .parameter "event"

    .prologue
    .line 71
    const-string v3, "HDMIListener"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleEvent \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    const-string v3, "hdmi_connected"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 74
    const-string v3, "hdmi_connected"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x2

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 75
    .local v2, ids:[Ljava/lang/String;
    array-length v3, v2

    new-array v3, v3, [I

    iput-object v3, p0, Lcom/android/server/HDMIListener;->mEDIDs:[I

    .line 76
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v3, p0, Lcom/android/server/HDMIListener;->mEDIDs:[I

    array-length v3, v3

    if-ge v1, v3, :cond_0

    .line 78
    :try_start_0
    iget-object v3, p0, Lcom/android/server/HDMIListener;->mEDIDs:[I

    aget-object v4, v2, v1

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    aput v4, v3, v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 79
    :catch_0
    move-exception v0

    .line 80
    .local v0, ex:Ljava/lang/NumberFormatException;
    const-string v3, "HDMIListener"

    const-string v4, "NumberFormatException in handleEvent"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 83
    .end local v0           #ex:Ljava/lang/NumberFormatException;
    :cond_0
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/HDMIListener;->mHDMIConnected:Z

    .line 84
    iget-object v3, p0, Lcom/android/server/HDMIListener;->mService:Lcom/android/server/HDMIService;

    iget-object v4, p0, Lcom/android/server/HDMIListener;->mEDIDs:[I

    invoke-virtual {v3, v4}, Lcom/android/server/HDMIService;->notifyHDMIConnected([I)V

    .line 95
    .end local v1           #i:I
    .end local v2           #ids:[Ljava/lang/String;
    :cond_1
    :goto_2
    return-void

    .line 85
    :cond_2
    const-string v3, "hdmi_disconnected"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 86
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/HDMIListener;->mHDMIConnected:Z

    .line 87
    iget-object v3, p0, Lcom/android/server/HDMIListener;->mService:Lcom/android/server/HDMIService;

    invoke-virtual {v3}, Lcom/android/server/HDMIService;->notifyHDMIDisconnected()V

    goto :goto_2

    .line 88
    :cond_3
    const-string v3, "hdmi_audio_on"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 90
    iget-object v3, p0, Lcom/android/server/HDMIListener;->mService:Lcom/android/server/HDMIService;

    invoke-virtual {v3}, Lcom/android/server/HDMIService;->notifyHDMIAudioOn()V

    goto :goto_2

    .line 91
    :cond_4
    const-string v3, "hdmi_audio_off"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 93
    iget-object v3, p0, Lcom/android/server/HDMIListener;->mService:Lcom/android/server/HDMIService;

    invoke-virtual {v3}, Lcom/android/server/HDMIService;->notifyHDMIAudioOff()V

    goto :goto_2
.end method

.method private listenToSocket()V
    .locals 14

    .prologue
    .line 122
    const/4 v8, 0x0

    .line 125
    .local v8, socket:Landroid/net/LocalSocket;
    :try_start_0
    new-instance v9, Landroid/net/LocalSocket;

    invoke-direct {v9}, Landroid/net/LocalSocket;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    .end local v8           #socket:Landroid/net/LocalSocket;
    .local v9, socket:Landroid/net/LocalSocket;
    :try_start_1
    new-instance v0, Landroid/net/LocalSocketAddress;

    const-string v11, "hdmid"

    sget-object v12, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v0, v11, v12}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    .line 129
    .local v0, address:Landroid/net/LocalSocketAddress;
    invoke-virtual {v9, v0}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V

    .line 131
    invoke-virtual {v9}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    .line 132
    .local v7, inputStream:Ljava/io/InputStream;
    new-instance v11, Ljava/io/DataOutputStream;

    invoke-virtual {v9}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v11, p0, Lcom/android/server/HDMIListener;->mOutputStream:Ljava/io/DataOutputStream;

    .line 141
    const/16 v11, 0x200

    new-array v1, v11, [B

    .line 143
    .local v1, buffer:[B
    const-string v11, "hdmi_listner_started"

    const/4 v12, 0x0

    invoke-direct {p0, v11, v12}, Lcom/android/server/HDMIListener;->writeCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    :cond_0
    invoke-virtual {v7, v1}, Ljava/io/InputStream;->read([B)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    move-result v2

    .line 146
    .local v2, count:I
    if-gez v2, :cond_3

    move-object v8, v9

    .line 161
    .end local v0           #address:Landroid/net/LocalSocketAddress;
    .end local v1           #buffer:[B
    .end local v2           #count:I
    .end local v7           #inputStream:Ljava/io/InputStream;
    .end local v9           #socket:Landroid/net/LocalSocket;
    .restart local v8       #socket:Landroid/net/LocalSocket;
    :goto_0
    monitor-enter p0

    .line 162
    :try_start_2
    iget-object v11, p0, Lcom/android/server/HDMIListener;->mOutputStream:Ljava/io/DataOutputStream;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v11, :cond_1

    .line 164
    :try_start_3
    iget-object v11, p0, Lcom/android/server/HDMIListener;->mOutputStream:Ljava/io/DataOutputStream;

    invoke-virtual {v11}, Ljava/io/DataOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 169
    :goto_1
    const/4 v11, 0x0

    :try_start_4
    iput-object v11, p0, Lcom/android/server/HDMIListener;->mOutputStream:Ljava/io/DataOutputStream;

    .line 171
    :cond_1
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 174
    if-eqz v8, :cond_2

    .line 175
    :try_start_5
    invoke-virtual {v8}, Landroid/net/LocalSocket;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 181
    :cond_2
    :goto_2
    const-string v11, "HDMIListener"

    const-string v12, "Failed to connect to hdmi daemon"

    new-instance v13, Ljava/lang/IllegalStateException;

    invoke-direct {v13}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-static {v11, v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 182
    return-void

    .line 148
    .end local v8           #socket:Landroid/net/LocalSocket;
    .restart local v0       #address:Landroid/net/LocalSocketAddress;
    .restart local v1       #buffer:[B
    .restart local v2       #count:I
    .restart local v7       #inputStream:Ljava/io/InputStream;
    .restart local v9       #socket:Landroid/net/LocalSocket;
    :cond_3
    const/4 v10, 0x0

    .line 149
    .local v10, start:I
    const/4 v6, 0x0

    .local v6, i:I
    :goto_3
    if-ge v6, v2, :cond_0

    .line 150
    :try_start_6
    aget-byte v11, v1, v6

    if-nez v11, :cond_4

    .line 151
    new-instance v4, Ljava/lang/String;

    sub-int v11, v6, v10

    invoke-direct {v4, v1, v10, v11}, Ljava/lang/String;-><init>([BII)V

    .line 152
    .local v4, event:Ljava/lang/String;
    invoke-direct {p0, v4}, Lcom/android/server/HDMIListener;->handleEvent(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 153
    add-int/lit8 v10, v6, 0x1

    .line 149
    .end local v4           #event:Ljava/lang/String;
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 157
    .end local v0           #address:Landroid/net/LocalSocketAddress;
    .end local v1           #buffer:[B
    .end local v2           #count:I
    .end local v6           #i:I
    .end local v7           #inputStream:Ljava/io/InputStream;
    .end local v9           #socket:Landroid/net/LocalSocket;
    .end local v10           #start:I
    .restart local v8       #socket:Landroid/net/LocalSocket;
    :catch_0
    move-exception v5

    .line 158
    .local v5, ex:Ljava/io/IOException;
    :goto_4
    const-string v11, "HDMIListener"

    const-string v12, "Could not open listner socket"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 165
    .end local v5           #ex:Ljava/io/IOException;
    :catch_1
    move-exception v3

    .line 166
    .local v3, e:Ljava/io/IOException;
    :try_start_7
    const-string v11, "HDMIListener"

    const-string v12, "IOException closing output stream"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 171
    .end local v3           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v11

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    throw v11

    .line 177
    :catch_2
    move-exception v5

    .line 178
    .restart local v5       #ex:Ljava/io/IOException;
    const-string v11, "HDMIListener"

    const-string v12, "IOException closing socket"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 157
    .end local v5           #ex:Ljava/io/IOException;
    .end local v8           #socket:Landroid/net/LocalSocket;
    .restart local v9       #socket:Landroid/net/LocalSocket;
    :catch_3
    move-exception v5

    move-object v8, v9

    .end local v9           #socket:Landroid/net/LocalSocket;
    .restart local v8       #socket:Landroid/net/LocalSocket;
    goto :goto_4
.end method

.method private writeCommand(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "command"
    .parameter "argument"

    .prologue
    .line 98
    monitor-enter p0

    .line 99
    :try_start_0
    iget-object v2, p0, Lcom/android/server/HDMIListener;->mOutputStream:Ljava/io/DataOutputStream;

    if-nez v2, :cond_0

    .line 100
    const-string v2, "HDMIListener"

    const-string v3, "No connection to hdmi daemon"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    invoke-static {}, Ljava/lang/Thread;->yield()V

    .line 119
    return-void

    .line 102
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 103
    .local v0, builder:Ljava/lang/StringBuilder;
    if-eqz p2, :cond_1

    .line 104
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    :cond_1
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 109
    :try_start_2
    iget-object v2, p0, Lcom/android/server/HDMIListener;->mOutputStream:Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->write([B)V

    .line 110
    iget-object v2, p0, Lcom/android/server/HDMIListener;->mOutputStream:Ljava/io/DataOutputStream;

    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V

    .line 111
    const-string v2, "HDMIListener"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "writeCommand: \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 113
    :catch_0
    move-exception v1

    .line 114
    .local v1, ex:Ljava/io/IOException;
    :try_start_3
    const-string v2, "HDMIListener"

    const-string v3, "IOException in writeCommand"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 117
    .end local v0           #builder:Ljava/lang/StringBuilder;
    .end local v1           #ex:Ljava/io/IOException;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2
.end method


# virtual methods
.method public changeDisplayMode(I)V
    .locals 2
    .parameter "mode"

    .prologue
    .line 216
    const-string v0, "change_mode: "

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/server/HDMIListener;->writeCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    return-void
.end method

.method public enableHDMIOutput(Z)V
    .locals 2
    .parameter "hdmiEnable"

    .prologue
    const/4 v1, 0x0

    .line 201
    iget-boolean v0, p0, Lcom/android/server/HDMIListener;->mHDMIEnabled:Z

    if-ne v0, p1, :cond_0

    .line 202
    const-string v0, "HDMIListener"

    const-string v1, "enableHDMIOutput ignored, unchanged!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    :goto_0
    return-void

    .line 205
    :cond_0
    if-eqz p1, :cond_1

    .line 206
    const-string v0, "enable_hdmi"

    invoke-direct {p0, v0, v1}, Lcom/android/server/HDMIListener;->writeCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/HDMIListener;->mHDMIEnabled:Z

    goto :goto_0

    .line 210
    :cond_1
    const-string v0, "disable_hdmi"

    invoke-direct {p0, v0, v1}, Lcom/android/server/HDMIListener;->writeCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/HDMIListener;->mHDMIEnabled:Z

    goto :goto_0
.end method

.method isHDMIConnected()Z
    .locals 1

    .prologue
    .line 197
    iget-boolean v0, p0, Lcom/android/server/HDMIListener;->mHDMIConnected:Z

    return v0
.end method

.method public run()V
    .locals 4

    .prologue
    .line 189
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/HDMIListener;->listenToSocket()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 194
    :goto_0
    return-void

    .line 190
    :catch_0
    move-exception v0

    .line 192
    .local v0, t:Ljava/lang/Throwable;
    const-string v1, "HDMIListener"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fatal error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " in HDMIListener thread!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setActionsafeHeightRatio(F)V
    .locals 2
    .parameter "asHeightRatio"

    .prologue
    .line 224
    const-string v0, "set_asheight: "

    new-instance v1, Ljava/lang/Float;

    invoke-direct {v1, p1}, Ljava/lang/Float;-><init>(F)V

    invoke-virtual {v1}, Ljava/lang/Float;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/server/HDMIListener;->writeCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    return-void
.end method

.method public setActionsafeWidthRatio(F)V
    .locals 2
    .parameter "asWidthRatio"

    .prologue
    .line 220
    const-string v0, "set_aswidth: "

    new-instance v1, Ljava/lang/Float;

    invoke-direct {v1, p1}, Ljava/lang/Float;-><init>(F)V

    invoke-virtual {v1}, Ljava/lang/Float;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/server/HDMIListener;->writeCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    return-void
.end method

.method public setHPD(Z)V
    .locals 3
    .parameter "hpdOption"

    .prologue
    .line 228
    const-string v1, "hdmi_hpd: "

    new-instance v2, Ljava/lang/Integer;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {v2, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/android/server/HDMIListener;->writeCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    return-void

    .line 228
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

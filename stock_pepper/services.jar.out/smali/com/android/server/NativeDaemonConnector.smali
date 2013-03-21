.class final Lcom/android/server/NativeDaemonConnector;
.super Ljava/lang/Object;
.source "NativeDaemonConnector.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Landroid/os/Handler$Callback;
.implements Lcom/android/server/Watchdog$Monitor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/NativeDaemonConnector$ResponseCode;
    }
.end annotation


# static fields
.field private static final LOCAL_LOGD:Z


# instance fields
.field private final BUFFER_SIZE:I

.field private TAG:Ljava/lang/String;

.field private mCallbackHandler:Landroid/os/Handler;

.field private mCallbacks:Lcom/android/server/INativeDaemonConnectorCallbacks;

.field private mDaemonLock:Ljava/lang/Object;

.field private mOutputStream:Ljava/io/OutputStream;

.field private mResponseQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSendCommandLock:Ljava/lang/Object;

.field private mSocket:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/INativeDaemonConnectorCallbacks;Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .parameter "callbacks"
    .parameter "socket"
    .parameter "responseQueueSize"
    .parameter "logTag"

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const-string v0, "NativeDaemonConnector"

    iput-object v0, p0, Lcom/android/server/NativeDaemonConnector;->TAG:Ljava/lang/String;

    .line 54
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/NativeDaemonConnector;->mDaemonLock:Ljava/lang/Object;

    .line 56
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/NativeDaemonConnector;->mSendCommandLock:Ljava/lang/Object;

    .line 58
    const/16 v0, 0x1000

    iput v0, p0, Lcom/android/server/NativeDaemonConnector;->BUFFER_SIZE:I

    .line 79
    iput-object p1, p0, Lcom/android/server/NativeDaemonConnector;->mCallbacks:Lcom/android/server/INativeDaemonConnectorCallbacks;

    .line 80
    if-eqz p4, :cond_0

    .line 81
    iput-object p4, p0, Lcom/android/server/NativeDaemonConnector;->TAG:Ljava/lang/String;

    .line 82
    :cond_0
    iput-object p2, p0, Lcom/android/server/NativeDaemonConnector;->mSocket:Ljava/lang/String;

    .line 83
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0, p3}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/NativeDaemonConnector;->mResponseQueue:Ljava/util/concurrent/BlockingQueue;

    .line 84
    return-void
.end method

.method private doCommandLocked(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 11
    .parameter "cmd"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/NativeDaemonConnectorException;
        }
    .end annotation

    .prologue
    .line 260
    iget-object v8, p0, Lcom/android/server/NativeDaemonConnector;->mSendCommandLock:Ljava/lang/Object;

    monitor-enter v8

    .line 261
    :try_start_0
    iget-object v7, p0, Lcom/android/server/NativeDaemonConnector;->mResponseQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v7}, Ljava/util/concurrent/BlockingQueue;->clear()V

    .line 262
    invoke-direct {p0, p1}, Lcom/android/server/NativeDaemonConnector;->sendCommandLocked(Ljava/lang/String;)V

    .line 263
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 265
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 266
    .local v5, response:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 267
    .local v1, complete:Z
    const/4 v0, -0x1

    .line 269
    .local v0, code:I
    :goto_0
    if-nez v1, :cond_1

    .line 272
    :try_start_1
    iget-object v7, p0, Lcom/android/server/NativeDaemonConnector;->mResponseQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v7}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 274
    .local v3, line:Ljava/lang/String;
    const-string v7, " "

    invoke-virtual {v3, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v6

    .line 276
    .local v6, tokens:[Ljava/lang/String;
    const/4 v7, 0x0

    :try_start_2
    aget-object v7, v6, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    move-result v0

    .line 282
    const/16 v7, 0xc8

    if-lt v0, v7, :cond_0

    const/16 v7, 0x258

    if-ge v0, v7, :cond_0

    .line 283
    const/4 v1, 0x1

    .line 285
    :cond_0
    :try_start_3
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 286
    .end local v3           #line:Ljava/lang/String;
    .end local v6           #tokens:[Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 287
    .local v2, ex:Ljava/lang/InterruptedException;
    iget-object v7, p0, Lcom/android/server/NativeDaemonConnector;->TAG:Ljava/lang/String;

    const-string v8, "Failed to process response"

    invoke-static {v7, v8, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 263
    .end local v0           #code:I
    .end local v1           #complete:Z
    .end local v2           #ex:Ljava/lang/InterruptedException;
    .end local v5           #response:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catchall_0
    move-exception v7

    :try_start_4
    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v7

    .line 277
    .restart local v0       #code:I
    .restart local v1       #complete:Z
    .restart local v3       #line:Ljava/lang/String;
    .restart local v5       #response:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v6       #tokens:[Ljava/lang/String;
    :catch_1
    move-exception v4

    .line 278
    .local v4, nfe:Ljava/lang/NumberFormatException;
    :try_start_5
    new-instance v7, Lcom/android/server/NativeDaemonConnectorException;

    const-string v8, "Invalid response from daemon (%s)"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v3, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/android/server/NativeDaemonConnectorException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_0

    .line 291
    .end local v3           #line:Ljava/lang/String;
    .end local v4           #nfe:Ljava/lang/NumberFormatException;
    .end local v6           #tokens:[Ljava/lang/String;
    :cond_1
    const/16 v7, 0x190

    if-lt v0, v7, :cond_2

    const/16 v7, 0x257

    if-gt v0, v7, :cond_2

    .line 297
    new-instance v8, Lcom/android/server/NativeDaemonConnectorException;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const/4 v9, 0x4

    invoke-virtual {v7, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v8, v0, p1, v7}, Lcom/android/server/NativeDaemonConnectorException;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    throw v8

    .line 300
    :cond_2
    return-object v5
.end method

.method private listenToSocket()V
    .locals 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 118
    const/4 v13, 0x0

    .line 119
    .local v13, socket:Landroid/net/LocalSocket;
    const/4 v5, 0x0

    .line 122
    .local v5, count:I
    :try_start_0
    new-instance v14, Landroid/net/LocalSocket;

    invoke-direct {v14}, Landroid/net/LocalSocket;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_9

    .line 123
    .end local v13           #socket:Landroid/net/LocalSocket;
    .local v14, socket:Landroid/net/LocalSocket;
    :try_start_1
    new-instance v2, Landroid/net/LocalSocketAddress;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NativeDaemonConnector;->mSocket:Ljava/lang/String;

    move-object/from16 v17, v0

    sget-object v18, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v2, v0, v1}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    .line 126
    .local v2, address:Landroid/net/LocalSocketAddress;
    invoke-virtual {v14, v2}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V

    .line 128
    invoke-virtual {v14}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v10

    .line 129
    .local v10, inputStream:Ljava/io/InputStream;
    invoke-virtual {v14}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/NativeDaemonConnector;->mOutputStream:Ljava/io/OutputStream;

    .line 131
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NativeDaemonConnector;->mCallbacks:Lcom/android/server/INativeDaemonConnectorCallbacks;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/android/server/INativeDaemonConnectorCallbacks;->onDaemonConnected()V

    .line 133
    const/16 v17, 0x1000

    move/from16 v0, v17

    new-array v3, v0, [B

    .line 134
    .local v3, buffer:[B
    const/4 v15, 0x0

    .line 137
    .local v15, start:I
    :goto_0
    rsub-int v0, v15, 0x1000

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v10, v3, v15, v0}, Ljava/io/InputStream;->read([BII)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-result v5

    .line 138
    if-gez v5, :cond_3

    .line 184
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NativeDaemonConnector;->mSendCommandLock:Ljava/lang/Object;

    move-object/from16 v18, v0

    monitor-enter v18

    .line 185
    if-gez v5, :cond_0

    .line 187
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NativeDaemonConnector;->mResponseQueue:Ljava/util/concurrent/BlockingQueue;

    move-object/from16 v17, v0

    const-string v19, "%d"

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/16 v22, 0x190

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    invoke-static/range {v19 .. v20}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_6

    .line 192
    :cond_0
    :goto_1
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NativeDaemonConnector;->mOutputStream:Ljava/io/OutputStream;

    move-object/from16 v17, v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v17, :cond_1

    .line 194
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NativeDaemonConnector;->mOutputStream:Ljava/io/OutputStream;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_8

    .line 198
    :goto_2
    const/16 v17, 0x0

    :try_start_5
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/NativeDaemonConnector;->mOutputStream:Ljava/io/OutputStream;

    .line 200
    :cond_1
    monitor-exit v18
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 203
    if-eqz v14, :cond_2

    .line 204
    :try_start_6
    invoke-virtual {v14}, Landroid/net/LocalSocket;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_7

    .line 210
    :cond_2
    :goto_3
    return-void

    .line 141
    :cond_3
    add-int/2addr v5, v15

    .line 142
    const/4 v15, 0x0

    .line 144
    const/4 v9, 0x0

    .local v9, i:I
    :goto_4
    if-ge v9, v5, :cond_9

    .line 145
    :try_start_7
    aget-byte v17, v3, v9

    if-nez v17, :cond_4

    .line 146
    new-instance v7, Ljava/lang/String;

    sub-int v17, v9, v15

    move/from16 v0, v17

    invoke-direct {v7, v3, v15, v0}, Ljava/lang/String;-><init>([BII)V

    .line 149
    .local v7, event:Ljava/lang/String;
    const-string v17, " "

    const/16 v18, 0x2

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v7, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    move-result-object v16

    .line 151
    .local v16, tokens:[Ljava/lang/String;
    const/16 v17, 0x0

    :try_start_8
    aget-object v17, v16, v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 153
    .local v4, code:I
    const/16 v17, 0x258

    move/from16 v0, v17

    if-lt v4, v0, :cond_5

    .line 154
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NativeDaemonConnector;->mCallbackHandler:Landroid/os/Handler;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NativeDaemonConnector;->mCallbackHandler:Landroid/os/Handler;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v4, v7}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    .line 166
    .end local v4           #code:I
    :goto_5
    add-int/lit8 v15, v9, 0x1

    .line 144
    .end local v7           #event:Ljava/lang/String;
    .end local v16           #tokens:[Ljava/lang/String;
    :cond_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 158
    .restart local v4       #code:I
    .restart local v7       #event:Ljava/lang/String;
    .restart local v16       #tokens:[Ljava/lang/String;
    :cond_5
    :try_start_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NativeDaemonConnector;->mResponseQueue:Ljava/util/concurrent/BlockingQueue;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v0, v7}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2

    goto :goto_5

    .line 159
    :catch_0
    move-exception v8

    .line 160
    .local v8, ex:Ljava/lang/InterruptedException;
    :try_start_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NativeDaemonConnector;->TAG:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, "Failed to put response onto queue"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3
    .catch Ljava/lang/NumberFormatException; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2

    goto :goto_5

    .line 163
    .end local v4           #code:I
    .end local v8           #ex:Ljava/lang/InterruptedException;
    :catch_1
    move-exception v11

    .line 164
    .local v11, nfe:Ljava/lang/NumberFormatException;
    :try_start_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NativeDaemonConnector;->TAG:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, "Bad msg (%s)"

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput-object v7, v19, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_2

    goto :goto_5

    .line 180
    .end local v2           #address:Landroid/net/LocalSocketAddress;
    .end local v3           #buffer:[B
    .end local v7           #event:Ljava/lang/String;
    .end local v9           #i:I
    .end local v10           #inputStream:Ljava/io/InputStream;
    .end local v11           #nfe:Ljava/lang/NumberFormatException;
    .end local v15           #start:I
    .end local v16           #tokens:[Ljava/lang/String;
    :catch_2
    move-exception v8

    move-object v13, v14

    .line 181
    .end local v14           #socket:Landroid/net/LocalSocket;
    .local v8, ex:Ljava/io/IOException;
    .restart local v13       #socket:Landroid/net/LocalSocket;
    :goto_6
    :try_start_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NativeDaemonConnector;->TAG:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, "Communications error"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 182
    throw v8
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 184
    .end local v8           #ex:Ljava/io/IOException;
    :catchall_0
    move-exception v17

    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NativeDaemonConnector;->mSendCommandLock:Ljava/lang/Object;

    move-object/from16 v18, v0

    monitor-enter v18

    .line 185
    if-gez v5, :cond_6

    .line 187
    :try_start_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NativeDaemonConnector;->mResponseQueue:Ljava/util/concurrent/BlockingQueue;

    move-object/from16 v19, v0

    const-string v20, "%d"

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const/16 v23, 0x190

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    aput-object v23, v21, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-interface/range {v19 .. v20}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_d .. :try_end_d} :catch_3

    .line 192
    :cond_6
    :goto_8
    :try_start_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NativeDaemonConnector;->mOutputStream:Ljava/io/OutputStream;

    move-object/from16 v19, v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    if-eqz v19, :cond_7

    .line 194
    :try_start_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NativeDaemonConnector;->mOutputStream:Ljava/io/OutputStream;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/io/OutputStream;->close()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_5

    .line 198
    :goto_9
    const/16 v19, 0x0

    :try_start_10
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/NativeDaemonConnector;->mOutputStream:Ljava/io/OutputStream;

    .line 200
    :cond_7
    monitor-exit v18
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    .line 203
    if-eqz v13, :cond_8

    .line 204
    :try_start_11
    invoke-virtual {v13}, Landroid/net/LocalSocket;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_4

    .line 184
    :cond_8
    :goto_a
    throw v17

    .line 172
    .end local v13           #socket:Landroid/net/LocalSocket;
    .restart local v2       #address:Landroid/net/LocalSocketAddress;
    .restart local v3       #buffer:[B
    .restart local v9       #i:I
    .restart local v10       #inputStream:Ljava/io/InputStream;
    .restart local v14       #socket:Landroid/net/LocalSocket;
    .restart local v15       #start:I
    :cond_9
    if-eq v15, v5, :cond_a

    .line 173
    rsub-int v12, v15, 0x1000

    .line 174
    .local v12, remaining:I
    const/16 v17, 0x0

    :try_start_12
    move/from16 v0, v17

    invoke-static {v3, v15, v3, v0, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_3
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_2

    .line 175
    move v15, v12

    .line 176
    goto/16 :goto_0

    .line 177
    .end local v12           #remaining:I
    :cond_a
    const/4 v15, 0x0

    goto/16 :goto_0

    .line 188
    .end local v2           #address:Landroid/net/LocalSocketAddress;
    .end local v3           #buffer:[B
    .end local v9           #i:I
    .end local v10           #inputStream:Ljava/io/InputStream;
    .end local v14           #socket:Landroid/net/LocalSocket;
    .end local v15           #start:I
    .restart local v13       #socket:Landroid/net/LocalSocket;
    :catch_3
    move-exception v8

    .line 189
    .local v8, ex:Ljava/lang/InterruptedException;
    :try_start_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NativeDaemonConnector;->TAG:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string v20, "Failed to put response onto queue"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8

    .line 200
    .end local v8           #ex:Ljava/lang/InterruptedException;
    :catchall_1
    move-exception v17

    monitor-exit v18
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    throw v17

    .line 206
    :catch_4
    move-exception v8

    .line 207
    .local v8, ex:Ljava/io/IOException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NativeDaemonConnector;->TAG:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string v19, "Failed closing socket"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_a

    .line 195
    .end local v8           #ex:Ljava/io/IOException;
    :catch_5
    move-exception v6

    .line 196
    .local v6, e:Ljava/io/IOException;
    :try_start_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NativeDaemonConnector;->TAG:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string v20, "Failed closing output stream"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_1

    goto :goto_9

    .line 188
    .end local v6           #e:Ljava/io/IOException;
    .end local v13           #socket:Landroid/net/LocalSocket;
    .restart local v2       #address:Landroid/net/LocalSocketAddress;
    .restart local v3       #buffer:[B
    .restart local v10       #inputStream:Ljava/io/InputStream;
    .restart local v14       #socket:Landroid/net/LocalSocket;
    .restart local v15       #start:I
    :catch_6
    move-exception v8

    .line 189
    .local v8, ex:Ljava/lang/InterruptedException;
    :try_start_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NativeDaemonConnector;->TAG:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v19, "Failed to put response onto queue"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-static {v0, v1, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 200
    .end local v8           #ex:Ljava/lang/InterruptedException;
    :catchall_2
    move-exception v17

    monitor-exit v18
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_2

    throw v17

    .line 206
    :catch_7
    move-exception v8

    .line 207
    .local v8, ex:Ljava/io/IOException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NativeDaemonConnector;->TAG:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, "Failed closing socket"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3

    .line 195
    .end local v8           #ex:Ljava/io/IOException;
    :catch_8
    move-exception v6

    .line 196
    .restart local v6       #e:Ljava/io/IOException;
    :try_start_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NativeDaemonConnector;->TAG:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v19, "Failed closing output stream"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-static {v0, v1, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_2

    goto/16 :goto_2

    .line 184
    .end local v2           #address:Landroid/net/LocalSocketAddress;
    .end local v3           #buffer:[B
    .end local v6           #e:Ljava/io/IOException;
    .end local v10           #inputStream:Ljava/io/InputStream;
    .end local v15           #start:I
    :catchall_3
    move-exception v17

    move-object v13, v14

    .end local v14           #socket:Landroid/net/LocalSocket;
    .restart local v13       #socket:Landroid/net/LocalSocket;
    goto/16 :goto_7

    .line 180
    :catch_9
    move-exception v8

    goto/16 :goto_6
.end method

.method private sendCommandLocked(Ljava/lang/String;)V
    .locals 1
    .parameter "command"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/NativeDaemonConnectorException;
        }
    .end annotation

    .prologue
    .line 213
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/NativeDaemonConnector;->sendCommandLocked(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    return-void
.end method

.method private sendCommandLocked(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "command"
    .parameter "argument"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/NativeDaemonConnectorException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 224
    if-eqz p1, :cond_0

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-ltz v2, :cond_0

    .line 225
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unexpected command: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 227
    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-ltz v2, :cond_1

    .line 228
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unexpected argument: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 232
    :cond_1
    iget-object v2, p0, Lcom/android/server/NativeDaemonConnector;->mOutputStream:Ljava/io/OutputStream;

    if-nez v2, :cond_2

    .line 233
    iget-object v2, p0, Lcom/android/server/NativeDaemonConnector;->TAG:Ljava/lang/String;

    const-string v3, "No connection to daemon"

    new-instance v4, Ljava/lang/IllegalStateException;

    invoke-direct {v4}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-static {v2, v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 234
    new-instance v2, Lcom/android/server/NativeDaemonConnectorException;

    const-string v3, "No output stream!"

    invoke-direct {v2, v3}, Lcom/android/server/NativeDaemonConnectorException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 236
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 237
    .local v0, builder:Ljava/lang/StringBuilder;
    if-eqz p2, :cond_3

    .line 238
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    :cond_3
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 243
    :try_start_0
    iget-object v2, p0, Lcom/android/server/NativeDaemonConnector;->mOutputStream:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 248
    :goto_0
    return-void

    .line 244
    :catch_0
    move-exception v1

    .line 245
    .local v1, ex:Ljava/io/IOException;
    iget-object v2, p0, Lcom/android/server/NativeDaemonConnector;->TAG:Ljava/lang/String;

    const-string v3, "IOException in sendCommand"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public doCommand(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 2
    .parameter "cmd"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/NativeDaemonConnectorException;
        }
    .end annotation

    .prologue
    .line 254
    iget-object v1, p0, Lcom/android/server/NativeDaemonConnector;->mDaemonLock:Ljava/lang/Object;

    monitor-enter v1

    .line 255
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/NativeDaemonConnector;->doCommandLocked(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 256
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public doListCommand(Ljava/lang/String;I)[Ljava/lang/String;
    .locals 17
    .parameter "cmd"
    .parameter "expectedResponseCode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/NativeDaemonConnectorException;
        }
    .end annotation

    .prologue
    .line 309
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/NativeDaemonConnector;->doCommand(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v10

    .line 310
    .local v10, rsp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    new-array v9, v12, [Ljava/lang/String;

    .line 311
    .local v9, rdata:[Ljava/lang/String;
    const/4 v3, 0x0

    .line 313
    .local v3, idx:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v2, v12, :cond_2

    .line 314
    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 316
    .local v7, line:Ljava/lang/String;
    :try_start_0
    const-string v12, " "

    invoke-virtual {v7, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 317
    .local v11, tok:[Ljava/lang/String;
    const/4 v12, 0x0

    aget-object v12, v11, v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 318
    .local v1, code:I
    move/from16 v0, p2

    if-ne v1, v0, :cond_0

    .line 319
    add-int/lit8 v4, v3, 0x1

    .end local v3           #idx:I
    .local v4, idx:I
    const/4 v12, 0x0

    :try_start_1
    aget-object v12, v11, v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    add-int/lit8 v12, v12, 0x1

    invoke-virtual {v7, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v9, v3
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 313
    add-int/lit8 v2, v2, 0x1

    move v3, v4

    .end local v4           #idx:I
    .restart local v3       #idx:I
    goto :goto_0

    .line 320
    :cond_0
    const/16 v12, 0xc8

    if-ne v1, v12, :cond_1

    .line 322
    :try_start_2
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v12

    add-int/lit8 v6, v12, -0x1

    .line 323
    .local v6, last:I
    if-eq v2, v6, :cond_3

    .line 324
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/NativeDaemonConnector;->TAG:Ljava/lang/String;

    const-string v13, "Recv\'d %d lines after end of list {%s}"

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    sub-int v16, v6, v2

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x1

    aput-object p1, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    move v5, v2

    .local v5, j:I
    :goto_1
    if-gt v5, v6, :cond_3

    .line 326
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/NativeDaemonConnector;->TAG:Ljava/lang/String;

    const-string v13, "ExtraData <%s>"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 331
    .end local v5           #j:I
    .end local v6           #last:I
    :cond_1
    new-instance v12, Lcom/android/server/NativeDaemonConnectorException;

    const-string v13, "Expected list response %d, but got %d"

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Lcom/android/server/NativeDaemonConnectorException;-><init>(Ljava/lang/String;)V

    throw v12
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0

    .line 335
    .end local v1           #code:I
    .end local v11           #tok:[Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 336
    .local v8, nfe:Ljava/lang/NumberFormatException;
    :goto_2
    new-instance v12, Lcom/android/server/NativeDaemonConnectorException;

    const-string v13, "Error reading code \'%s\'"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v7, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Lcom/android/server/NativeDaemonConnectorException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 340
    .end local v7           #line:Ljava/lang/String;
    .end local v8           #nfe:Ljava/lang/NumberFormatException;
    :cond_2
    new-instance v12, Lcom/android/server/NativeDaemonConnectorException;

    const-string v13, "Got an empty response"

    invoke-direct {v12, v13}, Lcom/android/server/NativeDaemonConnectorException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 329
    .restart local v1       #code:I
    .restart local v6       #last:I
    .restart local v7       #line:Ljava/lang/String;
    .restart local v11       #tok:[Ljava/lang/String;
    :cond_3
    return-object v9

    .line 335
    .end local v3           #idx:I
    .end local v6           #last:I
    .restart local v4       #idx:I
    :catch_1
    move-exception v8

    move v3, v4

    .end local v4           #idx:I
    .restart local v3       #idx:I
    goto :goto_2
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 8
    .parameter "msg"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 104
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 106
    .local v1, event:Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Lcom/android/server/NativeDaemonConnector;->mCallbacks:Lcom/android/server/INativeDaemonConnectorCallbacks;

    iget v3, p1, Landroid/os/Message;->what:I

    const-string v4, " "

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v1, v4}, Lcom/android/server/INativeDaemonConnectorCallbacks;->onEvent(ILjava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 107
    iget-object v2, p0, Lcom/android/server/NativeDaemonConnector;->TAG:Ljava/lang/String;

    const-string v3, "Unhandled event \'%s\'"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    :cond_0
    :goto_0
    return v6

    .line 110
    :catch_0
    move-exception v0

    .line 111
    .local v0, e:Ljava/lang/Exception;
    iget-object v2, p0, Lcom/android/server/NativeDaemonConnector;->TAG:Ljava/lang/String;

    const-string v3, "Error handling \'%s\'"

    new-array v4, v6, [Ljava/lang/Object;

    aput-object v1, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public monitor()V
    .locals 2

    .prologue
    .line 345
    iget-object v1, p0, Lcom/android/server/NativeDaemonConnector;->mDaemonLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    monitor-exit v1

    .line 346
    return-void

    .line 345
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public run()V
    .locals 4

    .prologue
    .line 88
    new-instance v1, Landroid/os/HandlerThread;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/server/NativeDaemonConnector;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".CallbackHandler"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 89
    .local v1, thread:Landroid/os/HandlerThread;
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 90
    new-instance v2, Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v2, p0, Lcom/android/server/NativeDaemonConnector;->mCallbackHandler:Landroid/os/Handler;

    .line 94
    :goto_0
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/NativeDaemonConnector;->listenToSocket()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 95
    :catch_0
    move-exception v0

    .line 96
    .local v0, e:Ljava/lang/Exception;
    iget-object v2, p0, Lcom/android/server/NativeDaemonConnector;->TAG:Ljava/lang/String;

    const-string v3, "Error in NativeDaemonConnector"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 97
    const-wide/16 v2, 0x1388

    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_0
.end method

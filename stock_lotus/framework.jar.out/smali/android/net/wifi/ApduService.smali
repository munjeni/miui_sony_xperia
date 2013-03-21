.class final Landroid/net/wifi/ApduService;
.super Ljava/lang/Object;
.source "ApduService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/ApduService$1;,
        Landroid/net/wifi/ApduService$ApduCommand;,
        Landroid/net/wifi/ApduService$ApduServiceRunner;
    }
.end annotation


# static fields
.field private static final LOCAL_LOGD:Z = false

.field private static final SOCKET_TIMEOUT:I = 0xbb8

.field private static final TAG:Ljava/lang/String; = "ApduService"

.field private static final WPA_SUPPLICANT_PROCESS_NAME:Ljava/lang/String; = "/system/bin/wpa_supplicant"


# instance fields
.field private mConnectionSocket:Landroid/net/LocalSocket;

.field private volatile mForceClose:Z

.field private final mLock:Ljava/lang/Object;

.field private final mRunnable:Ljava/lang/Runnable;

.field private mServerSocket:Landroid/net/LocalServerSocket;

.field private mSocketName:Ljava/lang/String;

.field private volatile mStarted:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter "socketName"

    .prologue
    const/4 v1, 0x0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/ApduService;->mLock:Ljava/lang/Object;

    .line 51
    iput-object p1, p0, Landroid/net/wifi/ApduService;->mSocketName:Ljava/lang/String;

    .line 52
    iput-boolean v1, p0, Landroid/net/wifi/ApduService;->mForceClose:Z

    .line 53
    iput-boolean v1, p0, Landroid/net/wifi/ApduService;->mStarted:Z

    .line 54
    new-instance v0, Landroid/net/wifi/ApduService$ApduServiceRunner;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/net/wifi/ApduService$ApduServiceRunner;-><init>(Landroid/net/wifi/ApduService;Landroid/net/wifi/ApduService$1;)V

    iput-object v0, p0, Landroid/net/wifi/ApduService;->mRunnable:Ljava/lang/Runnable;

    .line 56
    return-void
.end method

.method static synthetic access$100(Landroid/net/wifi/ApduService;)Landroid/net/LocalServerSocket;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Landroid/net/wifi/ApduService;->mServerSocket:Landroid/net/LocalServerSocket;

    return-object v0
.end method

.method static synthetic access$102(Landroid/net/wifi/ApduService;Landroid/net/LocalServerSocket;)Landroid/net/LocalServerSocket;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    iput-object p1, p0, Landroid/net/wifi/ApduService;->mServerSocket:Landroid/net/LocalServerSocket;

    return-object p1
.end method

.method static synthetic access$200(Landroid/net/wifi/ApduService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Landroid/net/wifi/ApduService;->mSocketName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Landroid/net/wifi/ApduService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/net/wifi/ApduService;->runService()V

    return-void
.end method

.method static synthetic access$400(Landroid/net/wifi/ApduService;)Landroid/net/LocalSocket;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Landroid/net/wifi/ApduService;->mConnectionSocket:Landroid/net/LocalSocket;

    return-object v0
.end method

.method static synthetic access$502(Landroid/net/wifi/ApduService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    iput-boolean p1, p0, Landroid/net/wifi/ApduService;->mStarted:Z

    return p1
.end method

.method private communicateWithClient()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 202
    iget-object v1, p0, Landroid/net/wifi/ApduService;->mConnectionSocket:Landroid/net/LocalSocket;

    const/16 v2, 0xbb8

    invoke-virtual {v1, v2}, Landroid/net/LocalSocket;->setSoTimeout(I)V

    .line 203
    iget-object v1, p0, Landroid/net/wifi/ApduService;->mConnectionSocket:Landroid/net/LocalSocket;

    invoke-virtual {v1}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v8

    .line 204
    .local v8, in:Ljava/io/InputStream;
    iget-object v1, p0, Landroid/net/wifi/ApduService;->mConnectionSocket:Landroid/net/LocalSocket;

    invoke-virtual {v1}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v9

    .line 205
    .local v9, out:Ljava/io/OutputStream;
    new-instance v7, Landroid/net/wifi/ApduService$ApduCommand;

    invoke-direct {v7, p0, v8}, Landroid/net/wifi/ApduService$ApduCommand;-><init>(Landroid/net/wifi/ApduService;Ljava/io/InputStream;)V

    .line 207
    .local v7, apduCommand:Landroid/net/wifi/ApduService$ApduCommand;
    const-string/jumbo v1, "phone"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 208
    .local v0, phone:Lcom/android/internal/telephony/ITelephony;
    if-nez v0, :cond_1

    .line 209
    const-string v1, "ApduService"

    const-string v2, "Error retrieving ITelephony interface"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    :cond_0
    return-void

    .line 213
    :cond_1
    :goto_0
    invoke-virtual {v7}, Landroid/net/wifi/ApduService$ApduCommand;->hasData()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 214
    iget v1, v7, Landroid/net/wifi/ApduService$ApduCommand;->mCla:I

    iget v2, v7, Landroid/net/wifi/ApduService$ApduCommand;->mCmd:I

    iget v3, v7, Landroid/net/wifi/ApduService$ApduCommand;->mP1:I

    iget v4, v7, Landroid/net/wifi/ApduService$ApduCommand;->mP2:I

    iget v5, v7, Landroid/net/wifi/ApduService$ApduCommand;->mLen:I

    iget-object v6, v7, Landroid/net/wifi/ApduService$ApduCommand;->mData:Ljava/lang/String;

    invoke-interface/range {v0 .. v6}, Lcom/android/internal/telephony/ITelephony;->transmitIccBasicChannel(IIIIILjava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 223
    .local v10, response:Ljava/lang/String;
    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/io/OutputStream;->write([B)V

    .line 224
    const/4 v1, 0x0

    invoke-virtual {v9, v1}, Ljava/io/OutputStream;->write(I)V

    .line 226
    new-instance v7, Landroid/net/wifi/ApduService$ApduCommand;

    .end local v7           #apduCommand:Landroid/net/wifi/ApduService$ApduCommand;
    invoke-direct {v7, p0, v8}, Landroid/net/wifi/ApduService$ApduCommand;-><init>(Landroid/net/wifi/ApduService;Ljava/io/InputStream;)V

    .line 227
    .restart local v7       #apduCommand:Landroid/net/wifi/ApduService$ApduCommand;
    goto :goto_0
.end method

.method private isPidAllowed(I)Z
    .locals 9
    .parameter "pid"

    .prologue
    const/4 v6, 0x0

    .line 169
    const/4 v1, 0x0

    .line 171
    .local v1, cmdScanner:Ljava/util/Scanner;
    :try_start_0
    new-instance v0, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "/proc/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/cmdline"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 172
    .local v0, cmdFile:Ljava/io/File;
    new-instance v2, Ljava/util/Scanner;

    invoke-direct {v2, v0}, Ljava/util/Scanner;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_1

    .line 173
    .end local v1           #cmdScanner:Ljava/util/Scanner;
    .local v2, cmdScanner:Ljava/util/Scanner;
    :try_start_1
    invoke-virtual {v2}, Ljava/util/Scanner;->nextLine()Ljava/lang/String;

    move-result-object v4

    .line 178
    .local v4, processCmdLine:Ljava/lang/String;
    const-string v7, "\u0000"

    invoke-virtual {v4, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    aget-object v5, v7, v8

    .line 179
    .local v5, processName:Ljava/lang/String;
    const-string v7, "/system/bin/wpa_supplicant"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/util/NoSuchElementException; {:try_start_1 .. :try_end_1} :catch_2

    move-result v7

    if-eqz v7, :cond_2

    .line 183
    const/4 v6, 0x1

    .line 194
    if-eqz v2, :cond_0

    .line 195
    invoke-virtual {v2}, Ljava/util/Scanner;->close()V

    :cond_0
    move-object v1, v2

    .end local v0           #cmdFile:Ljava/io/File;
    .end local v2           #cmdScanner:Ljava/util/Scanner;
    .end local v4           #processCmdLine:Ljava/lang/String;
    .end local v5           #processName:Ljava/lang/String;
    .restart local v1       #cmdScanner:Ljava/util/Scanner;
    :cond_1
    :goto_0
    return v6

    .line 194
    .end local v1           #cmdScanner:Ljava/util/Scanner;
    .restart local v0       #cmdFile:Ljava/io/File;
    .restart local v2       #cmdScanner:Ljava/util/Scanner;
    .restart local v4       #processCmdLine:Ljava/lang/String;
    .restart local v5       #processName:Ljava/lang/String;
    :cond_2
    if-eqz v2, :cond_3

    .line 195
    invoke-virtual {v2}, Ljava/util/Scanner;->close()V

    :cond_3
    move-object v1, v2

    .end local v2           #cmdScanner:Ljava/util/Scanner;
    .restart local v1       #cmdScanner:Ljava/util/Scanner;
    goto :goto_0

    .line 187
    .end local v0           #cmdFile:Ljava/io/File;
    .end local v4           #processCmdLine:Ljava/lang/String;
    .end local v5           #processName:Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 188
    .local v3, e:Ljava/io/FileNotFoundException;
    :goto_1
    :try_start_2
    const-string v7, "ApduService"

    const-string v8, "Failed to perform security check"

    invoke-static {v7, v8, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 194
    if-eqz v1, :cond_1

    .line 195
    invoke-virtual {v1}, Ljava/util/Scanner;->close()V

    goto :goto_0

    .line 190
    .end local v3           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v3

    .line 191
    .local v3, e:Ljava/util/NoSuchElementException;
    :goto_2
    :try_start_3
    const-string v7, "ApduService"

    const-string v8, "Failed to perform security check"

    invoke-static {v7, v8, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 194
    if-eqz v1, :cond_1

    .line 195
    invoke-virtual {v1}, Ljava/util/Scanner;->close()V

    goto :goto_0

    .line 194
    .end local v3           #e:Ljava/util/NoSuchElementException;
    :catchall_0
    move-exception v6

    :goto_3
    if-eqz v1, :cond_4

    .line 195
    invoke-virtual {v1}, Ljava/util/Scanner;->close()V

    :cond_4
    throw v6

    .line 194
    .end local v1           #cmdScanner:Ljava/util/Scanner;
    .restart local v0       #cmdFile:Ljava/io/File;
    .restart local v2       #cmdScanner:Ljava/util/Scanner;
    :catchall_1
    move-exception v6

    move-object v1, v2

    .end local v2           #cmdScanner:Ljava/util/Scanner;
    .restart local v1       #cmdScanner:Ljava/util/Scanner;
    goto :goto_3

    .line 190
    .end local v1           #cmdScanner:Ljava/util/Scanner;
    .restart local v2       #cmdScanner:Ljava/util/Scanner;
    :catch_2
    move-exception v3

    move-object v1, v2

    .end local v2           #cmdScanner:Ljava/util/Scanner;
    .restart local v1       #cmdScanner:Ljava/util/Scanner;
    goto :goto_2

    .line 187
    .end local v1           #cmdScanner:Ljava/util/Scanner;
    .restart local v2       #cmdScanner:Ljava/util/Scanner;
    :catch_3
    move-exception v3

    move-object v1, v2

    .end local v2           #cmdScanner:Ljava/util/Scanner;
    .restart local v1       #cmdScanner:Ljava/util/Scanner;
    goto :goto_1
.end method

.method private runService()V
    .locals 3

    .prologue
    .line 98
    :goto_0
    iget-boolean v1, p0, Landroid/net/wifi/ApduService;->mForceClose:Z

    if-nez v1, :cond_1

    .line 99
    invoke-direct {p0}, Landroid/net/wifi/ApduService;->waitForConnection()V

    .line 101
    iget-boolean v1, p0, Landroid/net/wifi/ApduService;->mForceClose:Z

    if-nez v1, :cond_0

    .line 106
    :try_start_0
    invoke-direct {p0}, Landroid/net/wifi/ApduService;->communicateWithClient()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 118
    :cond_0
    :goto_1
    :try_start_1
    iget-object v1, p0, Landroid/net/wifi/ApduService;->mConnectionSocket:Landroid/net/LocalSocket;

    invoke-virtual {v1}, Landroid/net/LocalSocket;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 122
    :goto_2
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/net/wifi/ApduService;->mConnectionSocket:Landroid/net/LocalSocket;

    goto :goto_0

    .line 107
    :catch_0
    move-exception v0

    .line 108
    .local v0, e:Ljava/io/IOException;
    const-string v1, "ApduService"

    const-string v2, "Error communicating with client"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 109
    .end local v0           #e:Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 110
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "ApduService"

    const-string v2, "Error communicating with client"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 119
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_2
    move-exception v0

    .line 120
    .local v0, e:Ljava/io/IOException;
    const-string v1, "ApduService"

    const-string v2, "Error closing connection socket"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 127
    .end local v0           #e:Ljava/io/IOException;
    :cond_1
    return-void
.end method

.method private waitForConnection()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 134
    :try_start_0
    iget-object v2, p0, Landroid/net/wifi/ApduService;->mServerSocket:Landroid/net/LocalServerSocket;

    invoke-virtual {v2}, Landroid/net/LocalServerSocket;->accept()Landroid/net/LocalSocket;

    move-result-object v2

    iput-object v2, p0, Landroid/net/wifi/ApduService;->mConnectionSocket:Landroid/net/LocalSocket;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    iget-object v2, p0, Landroid/net/wifi/ApduService;->mConnectionSocket:Landroid/net/LocalSocket;

    if-nez v2, :cond_1

    .line 142
    const-string v2, "ApduService"

    const-string v3, "Server socket missing. Closing down service..."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    iput-boolean v4, p0, Landroid/net/wifi/ApduService;->mForceClose:Z

    .line 163
    :cond_0
    :goto_0
    return-void

    .line 135
    :catch_0
    move-exception v1

    .line 136
    .local v1, e:Ljava/io/IOException;
    const-string v2, "ApduService"

    const-string v3, "Error calling accept on server socket. Closing down service..."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    iput-boolean v4, p0, Landroid/net/wifi/ApduService;->mForceClose:Z

    goto :goto_0

    .line 153
    .end local v1           #e:Ljava/io/IOException;
    :cond_1
    :try_start_1
    iget-object v2, p0, Landroid/net/wifi/ApduService;->mConnectionSocket:Landroid/net/LocalSocket;

    invoke-virtual {v2}, Landroid/net/LocalSocket;->getPeerCredentials()Landroid/net/Credentials;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 160
    .local v0, credentials:Landroid/net/Credentials;
    invoke-virtual {v0}, Landroid/net/Credentials;->getPid()I

    move-result v2

    invoke-direct {p0, v2}, Landroid/net/wifi/ApduService;->isPidAllowed(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 161
    iput-boolean v4, p0, Landroid/net/wifi/ApduService;->mForceClose:Z

    goto :goto_0

    .line 154
    .end local v0           #credentials:Landroid/net/Credentials;
    :catch_1
    move-exception v1

    .line 155
    .restart local v1       #e:Ljava/io/IOException;
    const-string v2, "ApduService"

    const-string v3, "Could not get peer credentials from socket. Closing down service..."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    iput-boolean v4, p0, Landroid/net/wifi/ApduService;->mForceClose:Z

    goto :goto_0
.end method


# virtual methods
.method public start()V
    .locals 3

    .prologue
    .line 327
    iget-object v1, p0, Landroid/net/wifi/ApduService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 328
    :try_start_0
    iget-boolean v0, p0, Landroid/net/wifi/ApduService;->mStarted:Z

    if-eqz v0, :cond_0

    .line 329
    const-string v0, "ApduService"

    const-string v2, "Could not start APDU Service, already started"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    monitor-exit v1

    .line 339
    :goto_0
    return-void

    .line 332
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/wifi/ApduService;->mStarted:Z

    .line 333
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/wifi/ApduService;->mForceClose:Z

    .line 334
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 338
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Landroid/net/wifi/ApduService;->mRunnable:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 334
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method stop()V
    .locals 5

    .prologue
    .line 342
    iget-object v3, p0, Landroid/net/wifi/ApduService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 343
    :try_start_0
    iget-boolean v2, p0, Landroid/net/wifi/ApduService;->mStarted:Z

    if-nez v2, :cond_0

    .line 344
    const-string v2, "ApduService"

    const-string v4, "Could not stop APDU service, not started"

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    monitor-exit v3

    .line 368
    :goto_0
    return-void

    .line 347
    :cond_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 353
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/net/wifi/ApduService;->mForceClose:Z

    .line 354
    new-instance v1, Landroid/net/LocalSocket;

    invoke-direct {v1}, Landroid/net/LocalSocket;-><init>()V

    .line 358
    .local v1, tempSocket:Landroid/net/LocalSocket;
    :try_start_1
    new-instance v2, Landroid/net/LocalSocketAddress;

    iget-object v3, p0, Landroid/net/wifi/ApduService;->mSocketName:Ljava/lang/String;

    invoke-direct {v2, v3}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 364
    :goto_1
    :try_start_2
    invoke-virtual {v1}, Landroid/net/LocalSocket;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 365
    :catch_0
    move-exception v0

    .line 366
    .local v0, e:Ljava/io/IOException;
    const-string v2, "ApduService"

    const-string v3, "Unable to close temporary local socket"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 347
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #tempSocket:Landroid/net/LocalSocket;
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    .line 359
    .restart local v1       #tempSocket:Landroid/net/LocalSocket;
    :catch_1
    move-exception v0

    .line 360
    .restart local v0       #e:Ljava/io/IOException;
    const-string v2, "ApduService"

    const-string v3, "Cannot stop service (server socket connect failed)"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

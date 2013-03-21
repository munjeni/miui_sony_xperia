.class public Landroid/mtp/MtpServer;
.super Ljava/lang/Object;
.source "MtpServer.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final LAST_COMMAND:I = 0x10001

.field public static final MTP_SERVER_DESTROYED:I = 0x10001

.field private static final SERVER_TIMEOUT:J = 0x4L

.field private static final TAG:Ljava/lang/String; = "MtpServer"

.field private static final VENDOR_HANDLER_NOT_STARTED:I = 0x0

.field private static final VENDOR_HANDLER_STARTED:I = 0x1

.field private static final VENDOR_HANDLER_STOPPED:I = 0x2

.field private static mMtpStatus:I

.field private static final sServerStartedLock:Ljava/util/concurrent/Semaphore;


# instance fields
.field private final MTP_UI_NOTIFY_CONNECTED:I

.field private final MTP_UI_NOTIFY_DISCONNECTED:I

.field private final MTP_UI_NOTIFY_EMPTY_UUID:I

.field private final MTP_UI_NOTIFY_NOTRESPONDING:I

.field private mContext:Landroid/content/Context;

.field private mHostEui64:[Ljava/lang/String;

.field private mHostId:I

.field private mHostName:Ljava/lang/String;

.field private mMtpServiceHandler:Landroid/os/Handler;

.field private mNativeContext:I

.field private mUseIp:Z

.field private mUuid:Ljava/lang/String;

.field private mVendorHandler:Landroid/mtp/MtpVendorHandler;

.field private mVendorHandlerStatus:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 45
    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    sput-object v0, Landroid/mtp/MtpServer;->sServerStartedLock:Ljava/util/concurrent/Semaphore;

    .line 61
    const/4 v0, 0x7

    sput v0, Landroid/mtp/MtpServer;->mMtpStatus:I

    .line 68
    const-string/jumbo v0, "media_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/mtp/MtpDatabase;Z)V
    .locals 2
    .parameter "database"
    .parameter "usePtp"

    .prologue
    const/4 v1, 0x0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const/4 v0, 0x0

    iput v0, p0, Landroid/mtp/MtpServer;->mVendorHandlerStatus:I

    .line 57
    const/4 v0, 0x1

    iput v0, p0, Landroid/mtp/MtpServer;->MTP_UI_NOTIFY_CONNECTED:I

    .line 58
    const/4 v0, 0x2

    iput v0, p0, Landroid/mtp/MtpServer;->MTP_UI_NOTIFY_NOTRESPONDING:I

    .line 59
    const/4 v0, 0x3

    iput v0, p0, Landroid/mtp/MtpServer;->MTP_UI_NOTIFY_DISCONNECTED:I

    .line 60
    const/4 v0, 0x4

    iput v0, p0, Landroid/mtp/MtpServer;->MTP_UI_NOTIFY_EMPTY_UUID:I

    .line 63
    iput-object v1, p0, Landroid/mtp/MtpServer;->mMtpServiceHandler:Landroid/os/Handler;

    .line 72
    invoke-direct {p0, p1, p2, v1}, Landroid/mtp/MtpServer;->native_setup(Landroid/mtp/MtpDatabase;ZLandroid/mtp/MtpVendorHandler;)V

    .line 73
    return-void
.end method

.method public constructor <init>(Landroid/mtp/MtpDatabase;ZLandroid/content/Context;)V
    .locals 3
    .parameter "database"
    .parameter "usePtp"
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput v2, p0, Landroid/mtp/MtpServer;->mVendorHandlerStatus:I

    .line 57
    const/4 v0, 0x1

    iput v0, p0, Landroid/mtp/MtpServer;->MTP_UI_NOTIFY_CONNECTED:I

    .line 58
    const/4 v0, 0x2

    iput v0, p0, Landroid/mtp/MtpServer;->MTP_UI_NOTIFY_NOTRESPONDING:I

    .line 59
    const/4 v0, 0x3

    iput v0, p0, Landroid/mtp/MtpServer;->MTP_UI_NOTIFY_DISCONNECTED:I

    .line 60
    const/4 v0, 0x4

    iput v0, p0, Landroid/mtp/MtpServer;->MTP_UI_NOTIFY_EMPTY_UUID:I

    .line 63
    iput-object v1, p0, Landroid/mtp/MtpServer;->mMtpServiceHandler:Landroid/os/Handler;

    .line 76
    iput-boolean v2, p0, Landroid/mtp/MtpServer;->mUseIp:Z

    .line 77
    iput-object v1, p0, Landroid/mtp/MtpServer;->mUuid:Ljava/lang/String;

    .line 78
    iput-object v1, p0, Landroid/mtp/MtpServer;->mHostEui64:[Ljava/lang/String;

    .line 79
    const/4 v0, -0x1

    iput v0, p0, Landroid/mtp/MtpServer;->mHostId:I

    .line 80
    const-string v0, ""

    iput-object v0, p0, Landroid/mtp/MtpServer;->mHostName:Ljava/lang/String;

    .line 81
    const/16 v0, 0x8

    sput v0, Landroid/mtp/MtpServer;->mMtpStatus:I

    .line 82
    iput-object p3, p0, Landroid/mtp/MtpServer;->mContext:Landroid/content/Context;

    .line 83
    new-instance v0, Landroid/mtp/MtpVendorHandler;

    invoke-direct {v0, p3}, Landroid/mtp/MtpVendorHandler;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/mtp/MtpServer;->mVendorHandler:Landroid/mtp/MtpVendorHandler;

    .line 84
    iget-object v0, p0, Landroid/mtp/MtpServer;->mVendorHandler:Landroid/mtp/MtpVendorHandler;

    invoke-direct {p0, p1, p2, v0}, Landroid/mtp/MtpServer;->native_setup(Landroid/mtp/MtpDatabase;ZLandroid/mtp/MtpVendorHandler;)V

    .line 85
    return-void
.end method

.method public constructor <init>(Landroid/mtp/MtpDatabase;ZLandroid/content/Context;ILjava/lang/String;)V
    .locals 4
    .parameter "database"
    .parameter "usePtp"
    .parameter "context"
    .parameter "hostId"
    .parameter "hostName"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput v2, p0, Landroid/mtp/MtpServer;->mVendorHandlerStatus:I

    .line 57
    iput v3, p0, Landroid/mtp/MtpServer;->MTP_UI_NOTIFY_CONNECTED:I

    .line 58
    const/4 v0, 0x2

    iput v0, p0, Landroid/mtp/MtpServer;->MTP_UI_NOTIFY_NOTRESPONDING:I

    .line 59
    const/4 v0, 0x3

    iput v0, p0, Landroid/mtp/MtpServer;->MTP_UI_NOTIFY_DISCONNECTED:I

    .line 60
    const/4 v0, 0x4

    iput v0, p0, Landroid/mtp/MtpServer;->MTP_UI_NOTIFY_EMPTY_UUID:I

    .line 63
    iput-object v1, p0, Landroid/mtp/MtpServer;->mMtpServiceHandler:Landroid/os/Handler;

    .line 89
    if-lez p4, :cond_1

    .line 90
    iput-boolean v3, p0, Landroid/mtp/MtpServer;->mUseIp:Z

    .line 91
    invoke-virtual {p1}, Landroid/mtp/MtpDatabase;->getDeviceUuid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/mtp/MtpServer;->mUuid:Ljava/lang/String;

    .line 92
    iget-object v0, p0, Landroid/mtp/MtpServer;->mUuid:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    iput-object v1, p0, Landroid/mtp/MtpServer;->mUuid:Ljava/lang/String;

    .line 95
    :cond_0
    invoke-virtual {p1, p4}, Landroid/mtp/MtpDatabase;->getHostIdsAsArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/mtp/MtpServer;->mHostEui64:[Ljava/lang/String;

    .line 96
    iput p4, p0, Landroid/mtp/MtpServer;->mHostId:I

    .line 97
    iput-object p5, p0, Landroid/mtp/MtpServer;->mHostName:Ljava/lang/String;

    .line 98
    const/4 v0, 0x5

    sput v0, Landroid/mtp/MtpServer;->mMtpStatus:I

    .line 99
    iput-object v1, p0, Landroid/mtp/MtpServer;->mVendorHandler:Landroid/mtp/MtpVendorHandler;

    .line 109
    :goto_0
    iput-object p3, p0, Landroid/mtp/MtpServer;->mContext:Landroid/content/Context;

    .line 111
    iget-object v0, p0, Landroid/mtp/MtpServer;->mVendorHandler:Landroid/mtp/MtpVendorHandler;

    invoke-direct {p0, p1, p2, v0}, Landroid/mtp/MtpServer;->native_setup(Landroid/mtp/MtpDatabase;ZLandroid/mtp/MtpVendorHandler;)V

    .line 112
    return-void

    .line 101
    :cond_1
    iput-boolean v2, p0, Landroid/mtp/MtpServer;->mUseIp:Z

    .line 102
    iput-object v1, p0, Landroid/mtp/MtpServer;->mUuid:Ljava/lang/String;

    .line 103
    iput-object v1, p0, Landroid/mtp/MtpServer;->mHostEui64:[Ljava/lang/String;

    .line 104
    const/4 v0, -0x1

    iput v0, p0, Landroid/mtp/MtpServer;->mHostId:I

    .line 105
    const-string v0, ""

    iput-object v0, p0, Landroid/mtp/MtpServer;->mHostName:Ljava/lang/String;

    .line 106
    const/16 v0, 0x8

    sput v0, Landroid/mtp/MtpServer;->mMtpStatus:I

    .line 107
    new-instance v0, Landroid/mtp/MtpVendorHandler;

    invoke-direct {v0, p3}, Landroid/mtp/MtpVendorHandler;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/mtp/MtpServer;->mVendorHandler:Landroid/mtp/MtpVendorHandler;

    goto :goto_0
.end method

.method public static getMtpStatus()I
    .locals 1

    .prologue
    .line 216
    sget v0, Landroid/mtp/MtpServer;->mMtpStatus:I

    return v0
.end method

.method private final native native_abort()V
.end method

.method private final native native_add_storage(Landroid/mtp/MtpStorage;)V
.end method

.method private final native native_cleanup()V
.end method

.method private final native native_remove_storage(I)V
.end method

.method private final native native_run()V
.end method

.method private final native native_send_object_added(I)V
.end method

.method private final native native_send_object_removed(I)V
.end method

.method private final native native_setup(Landroid/mtp/MtpDatabase;ZLandroid/mtp/MtpVendorHandler;)V
.end method

.method private notifyMtpService(I)V
    .locals 2
    .parameter "msgId"

    .prologue
    .line 227
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 228
    .local v0, msg:Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 229
    iget-object v1, p0, Landroid/mtp/MtpServer;->mMtpServiceHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 230
    return-void
.end method

.method public static resetServerLock()V
    .locals 1

    .prologue
    .line 179
    sget-object v0, Landroid/mtp/MtpServer;->sServerStartedLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->drainPermits()I

    .line 180
    return-void
.end method

.method private sendNotification(I)V
    .locals 4
    .parameter "errCode"

    .prologue
    .line 233
    const/4 v1, 0x1

    .line 235
    .local v1, status:I
    packed-switch p1, :pswitch_data_0

    .line 261
    :goto_0
    return-void

    .line 237
    :pswitch_0
    const/4 v2, 0x0

    sput v2, Landroid/mtp/MtpServer;->mMtpStatus:I

    .line 254
    :goto_1
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.sonymobile.mtpwifi.NOTIFY"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 255
    .local v0, response:Landroid/content/Intent;
    const-string/jumbo v2, "value_0"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 256
    const-string/jumbo v2, "value_1"

    iget v3, p0, Landroid/mtp/MtpServer;->mHostId:I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 257
    const-string/jumbo v2, "value_2"

    sget v3, Landroid/mtp/MtpServer;->mMtpStatus:I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 258
    const-string/jumbo v2, "value_3"

    iget-object v3, p0, Landroid/mtp/MtpServer;->mHostName:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 259
    const-string v2, "is_response_to"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 260
    iget-object v2, p0, Landroid/mtp/MtpServer;->mContext:Landroid/content/Context;

    const-string v3, "com.sonymobile.mtp.permission.CONTROL_MTP_STACK"

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0

    .line 240
    .end local v0           #response:Landroid/content/Intent;
    :pswitch_1
    const/4 v2, 0x4

    sput v2, Landroid/mtp/MtpServer;->mMtpStatus:I

    goto :goto_1

    .line 243
    :pswitch_2
    const/4 v1, 0x0

    .line 244
    const/4 v2, 0x7

    sput v2, Landroid/mtp/MtpServer;->mMtpStatus:I

    goto :goto_1

    .line 247
    :pswitch_3
    const/4 v1, 0x0

    .line 248
    const/4 v2, 0x6

    sput v2, Landroid/mtp/MtpServer;->mMtpStatus:I

    goto :goto_1

    .line 235
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private declared-synchronized stopVendorHandler()V
    .locals 2

    .prologue
    .line 220
    monitor-enter p0

    :try_start_0
    iget v0, p0, Landroid/mtp/MtpServer;->mVendorHandlerStatus:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 221
    iget-object v0, p0, Landroid/mtp/MtpServer;->mVendorHandler:Landroid/mtp/MtpVendorHandler;

    invoke-virtual {v0}, Landroid/mtp/MtpVendorHandler;->stop()V

    .line 223
    :cond_0
    const/4 v0, 0x2

    iput v0, p0, Landroid/mtp/MtpServer;->mVendorHandlerStatus:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 224
    monitor-exit p0

    return-void

    .line 220
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static waitForServerStarted()V
    .locals 5

    .prologue
    .line 163
    :try_start_0
    sget-object v1, Landroid/mtp/MtpServer;->sServerStartedLock:Ljava/util/concurrent/Semaphore;

    const-wide/16 v2, 0x4

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 164
    const-string v1, "MtpServer"

    const-string v2, "MtpServer takes too much time to start."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    .local v0, exception:Ljava/lang/InterruptedException;
    :cond_0
    :goto_0
    return-void

    .line 166
    .end local v0           #exception:Ljava/lang/InterruptedException;
    :catch_0
    move-exception v0

    .line 167
    .restart local v0       #exception:Ljava/lang/InterruptedException;
    const-string v1, "MtpServer"

    const-string v2, "InterruptedException while tryAcquire() in waitForServerStarted"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public addStorage(Landroid/mtp/MtpStorage;)V
    .locals 0
    .parameter "storage"

    .prologue
    .line 195
    invoke-direct {p0, p1}, Landroid/mtp/MtpServer;->native_add_storage(Landroid/mtp/MtpStorage;)V

    .line 196
    return-void
.end method

.method public removeStorage(Landroid/mtp/MtpStorage;)V
    .locals 2
    .parameter "storage"

    .prologue
    .line 199
    invoke-virtual {p1}, Landroid/mtp/MtpStorage;->getStorageId()I

    move-result v1

    invoke-direct {p0, v1}, Landroid/mtp/MtpServer;->native_remove_storage(I)V

    .line 201
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 203
    .local v0, extMntPath:Ljava/lang/String;
    iget-boolean v1, p0, Landroid/mtp/MtpServer;->mUseIp:Z

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/mtp/MtpStorage;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    .line 211
    invoke-direct {p0}, Landroid/mtp/MtpServer;->native_abort()V

    .line 213
    :cond_0
    return-void
.end method

.method public run()V
    .locals 3

    .prologue
    const v2, 0x10001

    .line 121
    iget-boolean v0, p0, Landroid/mtp/MtpServer;->mUseIp:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/mtp/MtpServer;->mUuid:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 122
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/mtp/MtpServer;->sendNotification(I)V

    .line 124
    invoke-direct {p0, v2}, Landroid/mtp/MtpServer;->notifyMtpService(I)V

    .line 143
    :goto_0
    return-void

    .line 127
    :cond_0
    monitor-enter p0

    .line 128
    :try_start_0
    iget v0, p0, Landroid/mtp/MtpServer;->mVendorHandlerStatus:I

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/mtp/MtpServer;->mVendorHandler:Landroid/mtp/MtpVendorHandler;

    if-eqz v0, :cond_1

    .line 129
    iget-object v0, p0, Landroid/mtp/MtpServer;->mVendorHandler:Landroid/mtp/MtpVendorHandler;

    iget v1, p0, Landroid/mtp/MtpServer;->mNativeContext:I

    invoke-virtual {v0, v1}, Landroid/mtp/MtpVendorHandler;->start(I)V

    .line 130
    const/4 v0, 0x1

    iput v0, p0, Landroid/mtp/MtpServer;->mVendorHandlerStatus:I

    .line 132
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    sget-object v0, Landroid/mtp/MtpServer;->sServerStartedLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 134
    invoke-direct {p0}, Landroid/mtp/MtpServer;->native_run()V

    .line 135
    invoke-direct {p0}, Landroid/mtp/MtpServer;->native_cleanup()V

    .line 136
    iget-boolean v0, p0, Landroid/mtp/MtpServer;->mUseIp:Z

    if-eqz v0, :cond_2

    .line 137
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Landroid/mtp/MtpServer;->sendNotification(I)V

    .line 139
    :cond_2
    const/4 v0, 0x7

    sput v0, Landroid/mtp/MtpServer;->mMtpStatus:I

    .line 140
    invoke-direct {p0}, Landroid/mtp/MtpServer;->stopVendorHandler()V

    .line 142
    invoke-direct {p0, v2}, Landroid/mtp/MtpServer;->notifyMtpService(I)V

    goto :goto_0

    .line 132
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public sendObjectAdded(I)V
    .locals 0
    .parameter "handle"

    .prologue
    .line 187
    invoke-direct {p0, p1}, Landroid/mtp/MtpServer;->native_send_object_added(I)V

    .line 188
    return-void
.end method

.method public sendObjectRemoved(I)V
    .locals 0
    .parameter "handle"

    .prologue
    .line 191
    invoke-direct {p0, p1}, Landroid/mtp/MtpServer;->native_send_object_removed(I)V

    .line 192
    return-void
.end method

.method public setMtpServiceHandler(Landroid/os/Handler;)V
    .locals 0
    .parameter "aHandler"

    .prologue
    .line 183
    iput-object p1, p0, Landroid/mtp/MtpServer;->mMtpServiceHandler:Landroid/os/Handler;

    .line 184
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    .line 115
    new-instance v0, Ljava/lang/Thread;

    const-string v1, "MtpServer"

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 116
    .local v0, thread:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 117
    return-void
.end method

.method public stop()V
    .locals 0

    .prologue
    .line 149
    invoke-direct {p0}, Landroid/mtp/MtpServer;->native_abort()V

    .line 150
    invoke-direct {p0}, Landroid/mtp/MtpServer;->stopVendorHandler()V

    .line 151
    return-void
.end method

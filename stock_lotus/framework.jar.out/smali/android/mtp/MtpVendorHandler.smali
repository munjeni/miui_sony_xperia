.class public final Landroid/mtp/MtpVendorHandler;
.super Ljava/lang/Object;
.source "MtpVendorHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/mtp/MtpVendorHandler$MtpVendorServer;,
        Landroid/mtp/MtpVendorHandler$VendorHandlerThread;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final PACKAGE_NAME:Ljava/lang/String; = "android.mtp"

.field private static final RESPONSE_TIMEOUT:J = 0x5L

.field private static final TAG:Ljava/lang/String; = "MtpVendorHandler"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private final mLock:Ljava/lang/Object;

.field private mMtpVendorServer:Landroid/mtp/IMtpVendorServer;

.field private mNativeContext:I

.field private mResponseCompleted:Z

.field private final mResponseLock:Ljava/util/concurrent/Semaphore;

.field private mVendorHandlerThread:Landroid/mtp/MtpVendorHandler$VendorHandlerThread;

.field private mtpVendorReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    const-string/jumbo v0, "media_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/mtp/MtpVendorHandler;->mLock:Ljava/lang/Object;

    .line 47
    iput-object v1, p0, Landroid/mtp/MtpVendorHandler;->mHandlerThread:Landroid/os/HandlerThread;

    .line 48
    iput-object v1, p0, Landroid/mtp/MtpVendorHandler;->mVendorHandlerThread:Landroid/mtp/MtpVendorHandler$VendorHandlerThread;

    .line 49
    iput-object v1, p0, Landroid/mtp/MtpVendorHandler;->mMtpVendorServer:Landroid/mtp/IMtpVendorServer;

    .line 63
    new-instance v0, Landroid/mtp/MtpVendorHandler$1;

    invoke-direct {v0, p0}, Landroid/mtp/MtpVendorHandler$1;-><init>(Landroid/mtp/MtpVendorHandler;)V

    iput-object v0, p0, Landroid/mtp/MtpVendorHandler;->mtpVendorReceiver:Landroid/content/BroadcastReceiver;

    .line 94
    iput-object p1, p0, Landroid/mtp/MtpVendorHandler;->mContext:Landroid/content/Context;

    .line 95
    new-instance v0, Landroid/mtp/MtpVendorHandler$MtpVendorServer;

    invoke-direct {v0, p0, v1}, Landroid/mtp/MtpVendorHandler$MtpVendorServer;-><init>(Landroid/mtp/MtpVendorHandler;Landroid/mtp/MtpVendorHandler$1;)V

    iput-object v0, p0, Landroid/mtp/MtpVendorHandler;->mMtpVendorServer:Landroid/mtp/IMtpVendorServer;

    .line 96
    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p0, Landroid/mtp/MtpVendorHandler;->mResponseLock:Ljava/util/concurrent/Semaphore;

    .line 97
    return-void
.end method

.method static synthetic access$000(Landroid/mtp/MtpVendorHandler;)Landroid/mtp/MtpVendorHandler$VendorHandlerThread;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Landroid/mtp/MtpVendorHandler;->mVendorHandlerThread:Landroid/mtp/MtpVendorHandler$VendorHandlerThread;

    return-object v0
.end method

.method static synthetic access$200(Landroid/mtp/MtpVendorHandler;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Landroid/mtp/MtpVendorHandler;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$300(Landroid/mtp/MtpVendorHandler;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-boolean v0, p0, Landroid/mtp/MtpVendorHandler;->mResponseCompleted:Z

    return v0
.end method

.method static synthetic access$302(Landroid/mtp/MtpVendorHandler;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    iput-boolean p1, p0, Landroid/mtp/MtpVendorHandler;->mResponseCompleted:Z

    return p1
.end method

.method static synthetic access$400(Landroid/mtp/MtpVendorHandler;)Landroid/mtp/IMtpVendorServer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Landroid/mtp/MtpVendorHandler;->mMtpVendorServer:Landroid/mtp/IMtpVendorServer;

    return-object v0
.end method

.method static synthetic access$500(Landroid/mtp/MtpVendorHandler;)Ljava/util/concurrent/Semaphore;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Landroid/mtp/MtpVendorHandler;->mResponseLock:Ljava/util/concurrent/Semaphore;

    return-object v0
.end method

.method static synthetic access$600(Landroid/mtp/MtpVendorHandler;I[I[B)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 39
    invoke-direct {p0, p1, p2, p3}, Landroid/mtp/MtpVendorHandler;->native_send_vendor_response(I[I[B)V

    return-void
.end method

.method static synthetic access$700(Landroid/mtp/MtpVendorHandler;I[I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Landroid/mtp/MtpVendorHandler;->native_send_vendor_event(I[I)V

    return-void
.end method

.method private final native native_send_vendor_event(I[I)V
.end method

.method private final native native_send_vendor_response(I[I[B)V
.end method


# virtual methods
.method public onVendorCommand(I[I[B)V
    .locals 7
    .parameter "command"
    .parameter "params"
    .parameter "data"

    .prologue
    .line 145
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sonyericsson.mtp.action.COMMAND"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 147
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "EXTRA_MTP_OP_CODE"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 148
    const-string v2, "EXTRA_MTP_PARAMS"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 149
    const-string v2, "EXTRA_MTP_CLASS"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 150
    const-string v2, "EXTRA_MTP_PACKAGE"

    const-string v3, "android.mtp"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 152
    if-eqz p3, :cond_0

    .line 153
    const-string v2, "EXTRA_MTP_DATA"

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 156
    :cond_0
    iget-object v3, p0, Landroid/mtp/MtpVendorHandler;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 157
    const/4 v2, 0x0

    :try_start_0
    iput-boolean v2, p0, Landroid/mtp/MtpVendorHandler;->mResponseCompleted:Z

    .line 158
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 159
    iget-object v2, p0, Landroid/mtp/MtpVendorHandler;->mContext:Landroid/content/Context;

    const-string v3, "com.sonyericsson.mtp.permission.MTP_STACK"

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 162
    :try_start_1
    iget-object v2, p0, Landroid/mtp/MtpVendorHandler;->mResponseLock:Ljava/util/concurrent/Semaphore;

    const-wide/16 v3, 0x5

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v3, v4, v5}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 164
    iget-object v3, p0, Landroid/mtp/MtpVendorHandler;->mLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 165
    :try_start_2
    iget-boolean v2, p0, Landroid/mtp/MtpVendorHandler;->mResponseCompleted:Z

    if-nez v2, :cond_1

    .line 166
    iget-object v2, p0, Landroid/mtp/MtpVendorHandler;->mMtpVendorServer:Landroid/mtp/IMtpVendorServer;

    const/16 v4, 0x2002

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface {v2, v4, v5, v6}, Landroid/mtp/IMtpVendorServer;->sendVendorResponse(I[I[B)V

    .line 168
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/mtp/MtpVendorHandler;->mResponseCompleted:Z

    .line 170
    :cond_1
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 184
    :cond_2
    :goto_0
    return-void

    .line 158
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    .line 170
    :catchall_1
    move-exception v2

    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v2
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_0

    .line 172
    :catch_0
    move-exception v0

    .line 174
    .local v0, exception:Ljava/lang/InterruptedException;
    iget-object v3, p0, Landroid/mtp/MtpVendorHandler;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 175
    :try_start_6
    iget-boolean v2, p0, Landroid/mtp/MtpVendorHandler;->mResponseCompleted:Z

    if-nez v2, :cond_3

    .line 176
    iget-object v2, p0, Landroid/mtp/MtpVendorHandler;->mMtpVendorServer:Landroid/mtp/IMtpVendorServer;

    const/16 v4, 0x2002

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface {v2, v4, v5, v6}, Landroid/mtp/IMtpVendorServer;->sendVendorResponse(I[I[B)V

    .line 178
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/mtp/MtpVendorHandler;->mResponseCompleted:Z

    .line 180
    :cond_3
    monitor-exit v3

    goto :goto_0

    :catchall_2
    move-exception v2

    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v2
.end method

.method public setMtpVendorServer(Landroid/mtp/IMtpVendorServer;)V
    .locals 0
    .parameter "vendorServer"

    .prologue
    .line 100
    iput-object p1, p0, Landroid/mtp/MtpVendorHandler;->mMtpVendorServer:Landroid/mtp/IMtpVendorServer;

    .line 101
    return-void
.end method

.method public start(I)V
    .locals 4
    .parameter "nativeContext"

    .prologue
    .line 109
    iput p1, p0, Landroid/mtp/MtpVendorHandler;->mNativeContext:I

    .line 110
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "MtpVendorHandlerThread"

    const/16 v3, 0xa

    invoke-direct {v1, v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v1, p0, Landroid/mtp/MtpVendorHandler;->mHandlerThread:Landroid/os/HandlerThread;

    .line 112
    iget-object v1, p0, Landroid/mtp/MtpVendorHandler;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 113
    new-instance v1, Landroid/mtp/MtpVendorHandler$VendorHandlerThread;

    iget-object v2, p0, Landroid/mtp/MtpVendorHandler;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Landroid/mtp/MtpVendorHandler$VendorHandlerThread;-><init>(Landroid/mtp/MtpVendorHandler;Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/mtp/MtpVendorHandler;->mVendorHandlerThread:Landroid/mtp/MtpVendorHandler$VendorHandlerThread;

    .line 115
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.sonyericsson.mtp.action.NOTIFICATION"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 116
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "com.sonyericsson.mtp.category.RESPONSE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 117
    const-string v1, "com.sonyericsson.mtp.category.EVENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 118
    iget-object v1, p0, Landroid/mtp/MtpVendorHandler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/mtp/MtpVendorHandler;->mtpVendorReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 121
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 129
    iget-object v0, p0, Landroid/mtp/MtpVendorHandler;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 130
    iget-object v0, p0, Landroid/mtp/MtpVendorHandler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/mtp/MtpVendorHandler;->mtpVendorReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 131
    const/4 v0, 0x0

    iput v0, p0, Landroid/mtp/MtpVendorHandler;->mNativeContext:I

    .line 133
    return-void
.end method

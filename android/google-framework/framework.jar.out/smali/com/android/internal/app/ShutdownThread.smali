.class public final Lcom/android/internal/app/ShutdownThread;
.super Ljava/lang/Thread;
.source "ShutdownThread.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/ShutdownThread$CloseDialogReceiver;
    }
.end annotation


# static fields
.field private static final MAX_BROADCAST_TIME:I = 0x2710

.field private static final MAX_NUM_PHONE_STATE_READS:I = 0x10

.field private static final MAX_SHUTDOWN_WAIT_TIME:I = 0x4e20

.field private static final PHONE_STATE_POLL_SLEEP_MSEC:I = 0x1f4

.field public static final RADIO_SHUTDOWN_PROPERTY:Ljava/lang/String; = "sys.radio.shutdown"

.field public static final SHUTDOWN_ACTION_PROPERTY:Ljava/lang/String; = "sys.shutdown.requested"

.field private static final SHUTDOWN_VIBRATE_MS:I = 0x1f4

.field private static final SYSFS_MDM_EFS_SYNC_COMPLETE:Ljava/lang/String; = "/sys/devices/platform/rs300100a7.65536/sync_sts"

.field private static final SYSFS_MSM_EFS_SYNC_COMPLETE:Ljava/lang/String; = "/sys/devices/platform/rs300000a7.65536/sync_sts"

.field private static final TAG:Ljava/lang/String; = "ShutdownThread"

.field private static mReboot:Z

.field private static mRebootReason:Ljava/lang/String;

.field private static final sInstance:Lcom/android/internal/app/ShutdownThread;

.field private static sIsStarted:Z

.field private static sIsStartedGuard:Ljava/lang/Object;


# instance fields
.field private mActionDone:Z

.field private final mActionDoneSync:Ljava/lang/Object;

.field private mContext:Landroid/content/Context;

.field private mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mHandler:Landroid/os/Handler;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mScreenWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 66
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/internal/app/ShutdownThread;->sIsStartedGuard:Ljava/lang/Object;

    .line 67
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/app/ShutdownThread;->sIsStarted:Z

    .line 80
    new-instance v0, Lcom/android/internal/app/ShutdownThread;

    invoke-direct {v0}, Lcom/android/internal/app/ShutdownThread;-><init>()V

    sput-object v0, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 82
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    .line 91
    return-void
.end method

.method static synthetic access$002(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 53
    sput-boolean p0, Lcom/android/internal/app/ShutdownThread;->mReboot:Z

    return p0
.end method

.method static synthetic access$100(Landroid/content/Context;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 53
    invoke-static {p0}, Lcom/android/internal/app/ShutdownThread;->beginShutdownSequence(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$202(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"

    .prologue
    .line 53
    sput-object p0, Lcom/android/internal/app/ShutdownThread;->mRebootReason:Ljava/lang/String;

    return-object p0
.end method

.method private static beginShutdownSequence(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 219
    sget-object v3, Lcom/android/internal/app/ShutdownThread;->sIsStartedGuard:Ljava/lang/Object;

    monitor-enter v3

    .line 220
    :try_start_0
    sget-boolean v2, Lcom/android/internal/app/ShutdownThread;->sIsStarted:Z

    if-eqz v2, :cond_0

    .line 221
    const-string v2, "ShutdownThread"

    const-string v4, "Shutdown sequence already running, returning."

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    monitor-exit v3

    .line 276
    :goto_0
    return-void

    .line 224
    :cond_0
    const/4 v2, 0x1

    sput-boolean v2, Lcom/android/internal/app/ShutdownThread;->sIsStarted:Z

    .line 225
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 229
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-direct {v1, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 230
    .local v1, pd:Landroid/app/ProgressDialog;
    sget-boolean v2, Lcom/android/internal/app/ShutdownThread;->mReboot:Z

    if-eqz v2, :cond_2

    .line 231
    const v2, 0x1040134

    invoke-virtual {p0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 232
    const v2, 0x104013c

    invoke-virtual {p0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 237
    :goto_1
    invoke-virtual {v1, v5}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 238
    invoke-virtual {v1, v4}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 239
    invoke-virtual {v1}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7d9

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    .line 241
    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V

    .line 243
    sget-object v2, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    iput-object p0, v2, Lcom/android/internal/app/ShutdownThread;->mContext:Landroid/content/Context;

    .line 244
    sget-object v3, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    const-string/jumbo v2, "power"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    iput-object v2, v3, Lcom/android/internal/app/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    .line 247
    sget-object v2, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    iput-object v6, v2, Lcom/android/internal/app/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 249
    :try_start_1
    sget-object v2, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    sget-object v3, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    iget-object v3, v3, Lcom/android/internal/app/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    const/4 v4, 0x1

    const-string v5, "ShutdownThread-cpu"

    invoke-virtual {v3, v4, v5}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/app/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 251
    sget-object v2, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    iget-object v2, v2, Lcom/android/internal/app/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 252
    sget-object v2, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    iget-object v2, v2, Lcom/android/internal/app/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    .line 259
    :goto_2
    sget-object v2, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    iput-object v6, v2, Lcom/android/internal/app/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 260
    sget-object v2, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    iget-object v2, v2, Lcom/android/internal/app/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v2}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 262
    :try_start_2
    sget-object v2, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    sget-object v3, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    iget-object v3, v3, Lcom/android/internal/app/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    const/16 v4, 0x1a

    const-string v5, "ShutdownThread-screen"

    invoke-virtual {v3, v4, v5}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/app/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 264
    sget-object v2, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    iget-object v2, v2, Lcom/android/internal/app/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 265
    sget-object v2, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    iget-object v2, v2, Lcom/android/internal/app/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_1

    .line 273
    :cond_1
    :goto_3
    sget-object v2, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    new-instance v3, Lcom/android/internal/app/ShutdownThread$6;

    invoke-direct {v3}, Lcom/android/internal/app/ShutdownThread$6;-><init>()V

    iput-object v3, v2, Lcom/android/internal/app/ShutdownThread;->mHandler:Landroid/os/Handler;

    .line 275
    sget-object v2, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    invoke-virtual {v2}, Lcom/android/internal/app/ShutdownThread;->start()V

    goto/16 :goto_0

    .line 225
    .end local v1           #pd:Landroid/app/ProgressDialog;
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    .line 234
    .restart local v1       #pd:Landroid/app/ProgressDialog;
    :cond_2
    const v2, 0x1040133

    invoke-virtual {p0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 235
    const v2, 0x1040141

    invoke-virtual {p0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 253
    :catch_0
    move-exception v0

    .line 254
    .local v0, e:Ljava/lang/SecurityException;
    const-string v2, "ShutdownThread"

    const-string v3, "No permission to acquire wake lock"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 255
    sget-object v2, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    iput-object v6, v2, Lcom/android/internal/app/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    goto :goto_2

    .line 266
    .end local v0           #e:Ljava/lang/SecurityException;
    :catch_1
    move-exception v0

    .line 267
    .restart local v0       #e:Ljava/lang/SecurityException;
    const-string v2, "ShutdownThread"

    const-string v3, "No permission to acquire wake lock"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 268
    sget-object v2, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    iput-object v6, v2, Lcom/android/internal/app/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    goto :goto_3
.end method

.method public static reboot(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 1
    .parameter "context"
    .parameter "reason"
    .parameter "confirm"

    .prologue
    .line 213
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/internal/app/ShutdownThread;->mReboot:Z

    .line 214
    sput-object p1, Lcom/android/internal/app/ShutdownThread;->mRebootReason:Ljava/lang/String;

    .line 215
    invoke-static {p0, p2}, Lcom/android/internal/app/ShutdownThread;->shutdown(Landroid/content/Context;Z)V

    .line 216
    return-void
.end method

.method public static rebootOrShutdown(ZLjava/lang/String;)V
    .locals 5
    .parameter "reboot"
    .parameter "reason"

    .prologue
    .line 493
    if-eqz p0, :cond_0

    .line 494
    const-string v2, "ShutdownThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Rebooting, reason: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    :try_start_0
    invoke-static {p1}, Landroid/os/Power;->reboot(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 518
    :goto_0
    const-string v2, "ShutdownThread"

    const-string v3, "Performing low-level shutdown..."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    invoke-static {}, Landroid/os/Power;->shutdown()V

    .line 520
    return-void

    .line 497
    :catch_0
    move-exception v0

    .line 498
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "ShutdownThread"

    const-string v3, "Reboot failed, will attempt shutdown instead"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 502
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    new-instance v1, Landroid/os/Vibrator;

    invoke-direct {v1}, Landroid/os/Vibrator;-><init>()V

    .line 504
    .local v1, vibrator:Landroid/os/Vibrator;
    const-wide/16 v2, 0x1f4

    :try_start_1
    invoke-virtual {v1, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 512
    :goto_1
    const-wide/16 v2, 0x1f4

    :try_start_2
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 513
    :catch_1
    move-exception v2

    goto :goto_0

    .line 505
    :catch_2
    move-exception v0

    .line 507
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v2, "ShutdownThread"

    const-string v3, "Failed to vibrate during shutdown."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public static shutdown(Landroid/content/Context;Z)V
    .locals 12
    .parameter "context"
    .parameter "confirm"

    .prologue
    const v4, 0x1040142

    const v11, 0x1040013

    const v10, 0x1040009

    const v9, 0x1010355

    const/4 v8, 0x0

    .line 104
    sget-object v5, Lcom/android/internal/app/ShutdownThread;->sIsStartedGuard:Ljava/lang/Object;

    monitor-enter v5

    .line 105
    :try_start_0
    sget-boolean v6, Lcom/android/internal/app/ShutdownThread;->sIsStarted:Z

    if-eqz v6, :cond_0

    .line 106
    const-string v4, "ShutdownThread"

    const-string v6, "Request to shutdown already running, returning."

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    monitor-exit v5

    .line 180
    :goto_0
    return-void

    .line 109
    :cond_0
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x10e0012

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 113
    .local v2, longPressBehavior:I
    const/4 v5, 0x2

    if-ne v2, v5, :cond_1

    const v3, 0x1040143

    .line 117
    .local v3, resourceId:I
    :goto_1
    const-string v5, "ShutdownThread"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notifying thread to start shutdown longPressBehavior="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    if-eqz p1, :cond_3

    .line 122
    sget-boolean v5, Lcom/android/internal/app/ShutdownThread;->mReboot:Z

    if-eqz v5, :cond_2

    .line 123
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v9}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x1040134

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x1070012

    new-instance v6, Lcom/android/internal/app/ShutdownThread$3;

    invoke-direct {v6, p0}, Lcom/android/internal/app/ShutdownThread$3;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v5, v8, v6}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/android/internal/app/ShutdownThread$2;

    invoke-direct {v5, p0}, Lcom/android/internal/app/ShutdownThread$2;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v11, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/android/internal/app/ShutdownThread$1;

    invoke-direct {v5}, Lcom/android/internal/app/ShutdownThread$1;-><init>()V

    invoke-virtual {v4, v10, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 150
    .local v1, dialog:Landroid/app/AlertDialog;
    new-instance v4, Lcom/android/internal/app/ShutdownThread$4;

    invoke-direct {v4}, Lcom/android/internal/app/ShutdownThread$4;-><init>()V

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 160
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1070013

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 161
    .local v0, actions:[Ljava/lang/String;
    aget-object v4, v0, v8

    sput-object v4, Lcom/android/internal/app/ShutdownThread;->mRebootReason:Ljava/lang/String;

    .line 175
    .end local v0           #actions:[Ljava/lang/String;
    :goto_2
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x7d9

    invoke-virtual {v4, v5}, Landroid/view/Window;->setType(I)V

    .line 176
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 109
    .end local v1           #dialog:Landroid/app/AlertDialog;
    .end local v2           #longPressBehavior:I
    .end local v3           #resourceId:I
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .restart local v2       #longPressBehavior:I
    :cond_1
    move v3, v4

    .line 113
    goto :goto_1

    .line 163
    .restart local v3       #resourceId:I
    :cond_2
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-direct {v5, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v9}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x1040133

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/android/internal/app/ShutdownThread$5;

    invoke-direct {v5, p0}, Lcom/android/internal/app/ShutdownThread$5;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v11, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v10, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .restart local v1       #dialog:Landroid/app/AlertDialog;
    goto :goto_2

    .line 178
    .end local v1           #dialog:Landroid/app/AlertDialog;
    :cond_3
    invoke-static {p0}, Lcom/android/internal/app/ShutdownThread;->beginShutdownSequence(Landroid/content/Context;)V

    goto/16 :goto_0
.end method


# virtual methods
.method actionDone()V
    .locals 2

    .prologue
    .line 279
    iget-object v1, p0, Lcom/android/internal/app/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    monitor-enter v1

    .line 280
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/internal/app/ShutdownThread;->mActionDone:Z

    .line 281
    iget-object v0, p0, Lcom/android/internal/app/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 282
    monitor-exit v1

    .line 283
    return-void

    .line 282
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public run()V
    .locals 31

    .prologue
    .line 292
    const/16 v25, 0x0

    .local v25, msmEfsSyncDone:Z
    const/16 v23, 0x0

    .line 294
    .local v23, mdmEfsSyncDone:Z
    new-instance v5, Lcom/android/internal/app/ShutdownThread$7;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/android/internal/app/ShutdownThread$7;-><init>(Lcom/android/internal/app/ShutdownThread;)V

    .line 307
    .local v5, br:Landroid/content/BroadcastReceiver;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-boolean v2, Lcom/android/internal/app/ShutdownThread;->mReboot:Z

    if-eqz v2, :cond_d

    const-string v2, "1"

    :goto_0
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v2, Lcom/android/internal/app/ShutdownThread;->mRebootReason:Ljava/lang/String;

    if-eqz v2, :cond_e

    sget-object v2, Lcom/android/internal/app/ShutdownThread;->mRebootReason:Ljava/lang/String;

    :goto_1
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    .line 308
    .local v29, reason:Ljava/lang/String;
    const-string/jumbo v2, "sys.shutdown.requested"

    move-object/from16 v0, v29

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    const-string v2, "ShutdownThread"

    const-string v3, "Sending shutdown broadcast..."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/app/ShutdownThread;->mActionDone:Z

    .line 315
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ShutdownThread;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.ACTION_SHUTDOWN"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/app/ShutdownThread;->mHandler:Landroid/os/Handler;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 318
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v6, 0x2710

    add-long v18, v2, v6

    .line 319
    .local v18, endTime:J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    monitor-enter v3

    .line 320
    :goto_2
    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/app/ShutdownThread;->mActionDone:Z

    if-nez v2, :cond_0

    .line 321
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long v13, v18, v6

    .line 322
    .local v13, delay:J
    const-wide/16 v6, 0x0

    cmp-long v2, v13, v6

    if-gtz v2, :cond_f

    .line 323
    const-string v2, "ShutdownThread"

    const-string v4, "Shutdown broadcast timed out"

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    .end local v13           #delay:J
    :cond_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 333
    const-string v2, "ShutdownThread"

    const-string v3, "Shutting down activity manager..."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    const-string v2, "activity"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/ActivityManagerNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IActivityManager;

    move-result-object v10

    .line 337
    .local v10, am:Landroid/app/IActivityManager;
    if-eqz v10, :cond_1

    .line 339
    const/16 v2, 0x2710

    :try_start_1
    invoke-interface {v10, v2}, Landroid/app/IActivityManager;->shutdown(I)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_9

    .line 344
    :cond_1
    :goto_3
    const-string/jumbo v2, "phone"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v27

    .line 346
    .local v27, phone:Lcom/android/internal/telephony/ITelephony;
    const-string v2, "bluetooth"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/bluetooth/IBluetooth$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetooth;

    move-result-object v11

    .line 350
    .local v11, bluetooth:Landroid/bluetooth/IBluetooth;
    const-string/jumbo v2, "mount"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v24

    .line 355
    .local v24, mount:Landroid/os/storage/IMountService;
    if-eqz v11, :cond_2

    :try_start_2
    invoke-interface {v11}, Landroid/bluetooth/IBluetooth;->getBluetoothState()I

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_10

    :cond_2
    const/4 v12, 0x1

    .line 357
    .local v12, bluetoothOff:Z
    :goto_4
    if-nez v12, :cond_3

    .line 358
    const-string v2, "ShutdownThread"

    const-string v3, "Disabling Bluetooth..."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    const/4 v2, 0x0

    invoke-interface {v11, v2}, Landroid/bluetooth/IBluetooth;->disable(Z)Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 367
    :cond_3
    :goto_5
    if-eqz v27, :cond_4

    :try_start_3
    invoke-interface/range {v27 .. v27}, Lcom/android/internal/telephony/ITelephony;->isRadioOn()Z

    move-result v2

    if-nez v2, :cond_11

    :cond_4
    const/16 v28, 0x1

    .line 368
    .local v28, radioOff:Z
    :goto_6
    if-nez v28, :cond_5

    .line 369
    const-string v2, "ShutdownThread"

    const-string v3, "Turning off radio..."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    const/4 v2, 0x0

    move-object/from16 v0, v27

    invoke-interface {v0, v2}, Lcom/android/internal/telephony/ITelephony;->setRadio(Z)Z
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2

    .line 377
    :cond_5
    :goto_7
    const-string/jumbo v2, "sys.radio.shutdown"

    const-string/jumbo v3, "true"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    sget-boolean v2, Landroid/os/SystemProperties;->QCOM_HARDWARE:Z

    if-eqz v2, :cond_8

    .line 380
    const-string v2, "ShutdownThread"

    const-string v3, "Waiting for radio file system sync to complete ..."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    const/16 v22, 0x0

    .local v22, i:I
    :goto_8
    const/16 v2, 0x10

    move/from16 v0, v22

    if-ge v0, v2, :cond_8

    .line 384
    if-nez v25, :cond_6

    .line 386
    :try_start_4
    new-instance v21, Ljava/io/FileInputStream;

    const-string v2, "/sys/devices/platform/rs300000a7.65536/sync_sts"

    move-object/from16 v0, v21

    invoke-direct {v0, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 387
    .local v21, fis:Ljava/io/FileInputStream;
    invoke-virtual/range {v21 .. v21}, Ljava/io/FileInputStream;->read()I

    move-result v30

    .line 388
    .local v30, result:I
    invoke-virtual/range {v21 .. v21}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 389
    const/16 v2, 0x31

    move/from16 v0, v30

    if-ne v0, v2, :cond_6

    .line 390
    const/16 v25, 0x1

    .line 397
    .end local v21           #fis:Ljava/io/FileInputStream;
    .end local v30           #result:I
    :cond_6
    :goto_9
    if-nez v23, :cond_7

    .line 399
    :try_start_5
    new-instance v21, Ljava/io/FileInputStream;

    const-string v2, "/sys/devices/platform/rs300100a7.65536/sync_sts"

    move-object/from16 v0, v21

    invoke-direct {v0, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 400
    .restart local v21       #fis:Ljava/io/FileInputStream;
    invoke-virtual/range {v21 .. v21}, Ljava/io/FileInputStream;->read()I

    move-result v30

    .line 401
    .restart local v30       #result:I
    invoke-virtual/range {v21 .. v21}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 402
    const/16 v2, 0x31

    move/from16 v0, v30

    if-ne v0, v2, :cond_7

    .line 403
    const/16 v23, 0x1

    .line 410
    .end local v21           #fis:Ljava/io/FileInputStream;
    .end local v30           #result:I
    :cond_7
    :goto_a
    if-eqz v25, :cond_12

    if-eqz v23, :cond_12

    .line 411
    const-string v2, "ShutdownThread"

    const-string v3, "Radio file system sync complete."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    .end local v22           #i:I
    :cond_8
    const-string v2, "ShutdownThread"

    const-string v3, "Waiting for Bluetooth and Radio..."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    const/16 v22, 0x0

    .restart local v22       #i:I
    :goto_b
    const/16 v2, 0x10

    move/from16 v0, v22

    if-ge v0, v2, :cond_b

    .line 423
    if-nez v12, :cond_9

    .line 425
    :try_start_6
    invoke-interface {v11}, Landroid/bluetooth/IBluetooth;->getBluetoothState()I
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_5

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_13

    const/4 v12, 0x1

    .line 432
    :cond_9
    :goto_c
    if-nez v28, :cond_a

    .line 434
    :try_start_7
    invoke-interface/range {v27 .. v27}, Lcom/android/internal/telephony/ITelephony;->isRadioOn()Z
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_6

    move-result v2

    if-nez v2, :cond_14

    const/16 v28, 0x1

    .line 440
    :cond_a
    :goto_d
    if-eqz v28, :cond_15

    if-eqz v12, :cond_15

    .line 441
    const-string v2, "ShutdownThread"

    const-string v3, "Radio and Bluetooth shutdown complete."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    :cond_b
    new-instance v26, Lcom/android/internal/app/ShutdownThread$8;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/internal/app/ShutdownThread$8;-><init>(Lcom/android/internal/app/ShutdownThread;)V

    .line 455
    .local v26, observer:Landroid/os/storage/IMountShutdownObserver;
    const-string v2, "ShutdownThread"

    const-string v3, "Shutting down MountService"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/app/ShutdownThread;->mActionDone:Z

    .line 458
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v6, 0x4e20

    add-long v16, v2, v6

    .line 459
    .local v16, endShutTime:J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    monitor-enter v3

    .line 461
    if-eqz v24, :cond_16

    .line 462
    :try_start_8
    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/os/storage/IMountService;->shutdown(Landroid/os/storage/IMountShutdownObserver;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_7

    .line 469
    :goto_e
    :try_start_9
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/app/ShutdownThread;->mActionDone:Z

    if-nez v2, :cond_c

    .line 470
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long v13, v16, v6

    .line 471
    .restart local v13       #delay:J
    const-wide/16 v6, 0x0

    cmp-long v2, v13, v6

    if-gtz v2, :cond_17

    .line 472
    const-string v2, "ShutdownThread"

    const-string v4, "Shutdown wait timed out"

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    .end local v13           #delay:J
    :cond_c
    monitor-exit v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 482
    sget-boolean v2, Lcom/android/internal/app/ShutdownThread;->mReboot:Z

    sget-object v3, Lcom/android/internal/app/ShutdownThread;->mRebootReason:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/android/internal/app/ShutdownThread;->rebootOrShutdown(ZLjava/lang/String;)V

    .line 483
    return-void

    .line 307
    .end local v10           #am:Landroid/app/IActivityManager;
    .end local v11           #bluetooth:Landroid/bluetooth/IBluetooth;
    .end local v12           #bluetoothOff:Z
    .end local v16           #endShutTime:J
    .end local v18           #endTime:J
    .end local v22           #i:I
    .end local v24           #mount:Landroid/os/storage/IMountService;
    .end local v26           #observer:Landroid/os/storage/IMountShutdownObserver;
    .end local v27           #phone:Lcom/android/internal/telephony/ITelephony;
    .end local v28           #radioOff:Z
    .end local v29           #reason:Ljava/lang/String;
    :cond_d
    const-string v2, "0"

    goto/16 :goto_0

    :cond_e
    const-string v2, ""

    goto/16 :goto_1

    .line 327
    .restart local v13       #delay:J
    .restart local v18       #endTime:J
    .restart local v29       #reason:Ljava/lang/String;
    :cond_f
    :try_start_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    invoke-virtual {v2, v13, v14}, Ljava/lang/Object;->wait(J)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_a} :catch_0

    goto/16 :goto_2

    .line 328
    :catch_0
    move-exception v2

    goto/16 :goto_2

    .line 331
    .end local v13           #delay:J
    :catchall_0
    move-exception v2

    :try_start_b
    monitor-exit v3
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    throw v2

    .line 355
    .restart local v10       #am:Landroid/app/IActivityManager;
    .restart local v11       #bluetooth:Landroid/bluetooth/IBluetooth;
    .restart local v24       #mount:Landroid/os/storage/IMountService;
    .restart local v27       #phone:Lcom/android/internal/telephony/ITelephony;
    :cond_10
    const/4 v12, 0x0

    goto/16 :goto_4

    .line 361
    :catch_1
    move-exception v20

    .line 362
    .local v20, ex:Landroid/os/RemoteException;
    const-string v2, "ShutdownThread"

    const-string v3, "RemoteException during bluetooth shutdown"

    move-object/from16 v0, v20

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 363
    const/4 v12, 0x1

    .restart local v12       #bluetoothOff:Z
    goto/16 :goto_5

    .line 367
    .end local v20           #ex:Landroid/os/RemoteException;
    :cond_11
    const/16 v28, 0x0

    goto/16 :goto_6

    .line 372
    :catch_2
    move-exception v20

    .line 373
    .restart local v20       #ex:Landroid/os/RemoteException;
    const-string v2, "ShutdownThread"

    const-string v3, "RemoteException during radio shutdown"

    move-object/from16 v0, v20

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 374
    const/16 v28, 0x1

    .restart local v28       #radioOff:Z
    goto/16 :goto_7

    .line 392
    .end local v20           #ex:Landroid/os/RemoteException;
    .restart local v22       #i:I
    :catch_3
    move-exception v20

    .line 393
    .local v20, ex:Ljava/lang/Exception;
    const-string v2, "ShutdownThread"

    const-string v3, "Exception during msmEfsSyncDone"

    move-object/from16 v0, v20

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 394
    const/16 v25, 0x1

    goto/16 :goto_9

    .line 405
    .end local v20           #ex:Ljava/lang/Exception;
    :catch_4
    move-exception v20

    .line 406
    .restart local v20       #ex:Ljava/lang/Exception;
    const-string v2, "ShutdownThread"

    const-string v3, "Exception during mdmEfsSyncDone"

    move-object/from16 v0, v20

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 407
    const/16 v23, 0x1

    goto/16 :goto_a

    .line 414
    .end local v20           #ex:Ljava/lang/Exception;
    :cond_12
    const-string v2, "ShutdownThread"

    const-string v3, "Radio file system sync incomplete - retry."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    const-wide/16 v2, 0x1f4

    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    .line 383
    add-int/lit8 v22, v22, 0x1

    goto/16 :goto_8

    .line 425
    :cond_13
    const/4 v12, 0x0

    goto/16 :goto_c

    .line 427
    :catch_5
    move-exception v20

    .line 428
    .local v20, ex:Landroid/os/RemoteException;
    const-string v2, "ShutdownThread"

    const-string v3, "RemoteException during bluetooth shutdown"

    move-object/from16 v0, v20

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 429
    const/4 v12, 0x1

    goto/16 :goto_c

    .line 434
    .end local v20           #ex:Landroid/os/RemoteException;
    :cond_14
    const/16 v28, 0x0

    goto/16 :goto_d

    .line 435
    :catch_6
    move-exception v20

    .line 436
    .restart local v20       #ex:Landroid/os/RemoteException;
    const-string v2, "ShutdownThread"

    const-string v3, "RemoteException during radio shutdown"

    move-object/from16 v0, v20

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 437
    const/16 v28, 0x1

    goto/16 :goto_d

    .line 444
    .end local v20           #ex:Landroid/os/RemoteException;
    :cond_15
    const-wide/16 v2, 0x1f4

    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    .line 422
    add-int/lit8 v22, v22, 0x1

    goto/16 :goto_b

    .line 464
    .restart local v16       #endShutTime:J
    .restart local v26       #observer:Landroid/os/storage/IMountShutdownObserver;
    :cond_16
    :try_start_c
    const-string v2, "ShutdownThread"

    const-string v4, "MountService unavailable for shutdown"

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_7

    goto/16 :goto_e

    .line 466
    :catch_7
    move-exception v15

    .line 467
    .local v15, e:Ljava/lang/Exception;
    :try_start_d
    const-string v2, "ShutdownThread"

    const-string v4, "Exception during MountService shutdown"

    invoke-static {v2, v4, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_e

    .line 480
    .end local v15           #e:Ljava/lang/Exception;
    :catchall_1
    move-exception v2

    monitor-exit v3
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    throw v2

    .line 476
    .restart local v13       #delay:J
    :cond_17
    :try_start_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    invoke-virtual {v2, v13, v14}, Ljava/lang/Object;->wait(J)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_e .. :try_end_e} :catch_8

    goto/16 :goto_e

    .line 477
    :catch_8
    move-exception v2

    goto/16 :goto_e

    .line 340
    .end local v11           #bluetooth:Landroid/bluetooth/IBluetooth;
    .end local v12           #bluetoothOff:Z
    .end local v13           #delay:J
    .end local v16           #endShutTime:J
    .end local v22           #i:I
    .end local v24           #mount:Landroid/os/storage/IMountService;
    .end local v26           #observer:Landroid/os/storage/IMountShutdownObserver;
    .end local v27           #phone:Lcom/android/internal/telephony/ITelephony;
    .end local v28           #radioOff:Z
    :catch_9
    move-exception v2

    goto/16 :goto_3
.end method

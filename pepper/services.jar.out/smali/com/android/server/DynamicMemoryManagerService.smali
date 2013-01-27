.class Lcom/android/server/DynamicMemoryManagerService;
.super Ljava/lang/Object;
.source "DynamicMemoryManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/DynamicMemoryManagerService$DMM_MEM_STATE;
    }
.end annotation


# static fields
.field private static final ACTION_DPD_START:Ljava/lang/String; = "com.android.server.DMMService.action.DPD_START"

.field private static final ACTION_DPD_STOP:Ljava/lang/String; = "com.android.server.DMMService.action.DPD_STOP"

.field private static final WAKELOCK_NAME:Ljava/lang/String; = "DynamicMemoryManagerServiceLock"


# instance fields
.field private final DEBUG:Z

.field private DPD_START:Z

.field private SCREEN_ON:Z

.field private START_ALARM_SET:Z

.field private STOP_ALARM_SET:Z

.field private final TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mStartAlarmManager:Landroid/app/AlarmManager;

.field private mStartIntent:Landroid/content/Intent;

.field private mStartPendingIntent:Landroid/app/PendingIntent;

.field private mState:Lcom/android/server/DynamicMemoryManagerService$DMM_MEM_STATE;

.field private mStopAlarmManager:Landroid/app/AlarmManager;

.field private mStopIntent:Landroid/content/Intent;

.field private mStopPendingIntent:Landroid/app/PendingIntent;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private prevStartHr:I

.field private prevStartMin:I

.field private prevStopHr:I

.field private prevStopMin:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const-string v1, "DMMService"

    iput-object v1, p0, Lcom/android/server/DynamicMemoryManagerService;->TAG:Ljava/lang/String;

    .line 50
    iput-boolean v5, p0, Lcom/android/server/DynamicMemoryManagerService;->SCREEN_ON:Z

    .line 51
    iput-boolean v5, p0, Lcom/android/server/DynamicMemoryManagerService;->DPD_START:Z

    .line 52
    iput-boolean v5, p0, Lcom/android/server/DynamicMemoryManagerService;->START_ALARM_SET:Z

    .line 53
    iput-boolean v5, p0, Lcom/android/server/DynamicMemoryManagerService;->STOP_ALARM_SET:Z

    .line 54
    iput v5, p0, Lcom/android/server/DynamicMemoryManagerService;->prevStartHr:I

    .line 55
    iput v5, p0, Lcom/android/server/DynamicMemoryManagerService;->prevStartMin:I

    .line 56
    iput v5, p0, Lcom/android/server/DynamicMemoryManagerService;->prevStopHr:I

    .line 57
    iput v5, p0, Lcom/android/server/DynamicMemoryManagerService;->prevStopMin:I

    .line 67
    iput-object v6, p0, Lcom/android/server/DynamicMemoryManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 69
    iput-boolean v5, p0, Lcom/android/server/DynamicMemoryManagerService;->DEBUG:Z

    .line 109
    new-instance v1, Lcom/android/server/DynamicMemoryManagerService$1;

    invoke-direct {v1, p0}, Lcom/android/server/DynamicMemoryManagerService$1;-><init>(Lcom/android/server/DynamicMemoryManagerService;)V

    iput-object v1, p0, Lcom/android/server/DynamicMemoryManagerService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 72
    iput-object p1, p0, Lcom/android/server/DynamicMemoryManagerService;->mContext:Landroid/content/Context;

    .line 74
    const-string v1, "DMMService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ro.dev.dmm.dpd.start_address = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ro.dev.dmm.dpd.start_address"

    const-string v4, "0"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    const-string v1, "ro.dev.dmm.dpd.start_address"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 78
    sget-object v1, Lcom/android/server/DynamicMemoryManagerService$DMM_MEM_STATE;->ACTIVE:Lcom/android/server/DynamicMemoryManagerService$DMM_MEM_STATE;

    iput-object v1, p0, Lcom/android/server/DynamicMemoryManagerService;->mState:Lcom/android/server/DynamicMemoryManagerService$DMM_MEM_STATE;

    .line 80
    invoke-direct {p0}, Lcom/android/server/DynamicMemoryManagerService;->registerForBroadcasts()V

    .line 81
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.server.DMMService.action.DPD_START"

    invoke-direct {v1, v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iput-object v1, p0, Lcom/android/server/DynamicMemoryManagerService;->mStartIntent:Landroid/content/Intent;

    .line 82
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.server.DMMService.action.DPD_STOP"

    invoke-direct {v1, v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iput-object v1, p0, Lcom/android/server/DynamicMemoryManagerService;->mStopIntent:Landroid/content/Intent;

    .line 83
    iget-object v1, p0, Lcom/android/server/DynamicMemoryManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/DynamicMemoryManagerService;->mStartIntent:Landroid/content/Intent;

    invoke-static {v1, v5, v2, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/DynamicMemoryManagerService;->mStartPendingIntent:Landroid/app/PendingIntent;

    .line 84
    iget-object v1, p0, Lcom/android/server/DynamicMemoryManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/DynamicMemoryManagerService;->mStopIntent:Landroid/content/Intent;

    invoke-static {v1, v5, v2, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/DynamicMemoryManagerService;->mStopPendingIntent:Landroid/app/PendingIntent;

    .line 85
    iget-object v1, p0, Lcom/android/server/DynamicMemoryManagerService;->mContext:Landroid/content/Context;

    const-string v2, "alarm"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    iput-object v1, p0, Lcom/android/server/DynamicMemoryManagerService;->mStartAlarmManager:Landroid/app/AlarmManager;

    .line 86
    iget-object v1, p0, Lcom/android/server/DynamicMemoryManagerService;->mContext:Landroid/content/Context;

    const-string v2, "alarm"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    iput-object v1, p0, Lcom/android/server/DynamicMemoryManagerService;->mStopAlarmManager:Landroid/app/AlarmManager;

    .line 87
    iget-object v1, p0, Lcom/android/server/DynamicMemoryManagerService;->mContext:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 88
    .local v0, pm:Landroid/os/PowerManager;
    const/4 v1, 0x1

    const-string v2, "DynamicMemoryManagerServiceLock"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/DynamicMemoryManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 89
    const-string v1, "DMMService"

    const-string v2, "DynamicMemoryManager Service Initialized"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    .end local v0           #pm:Landroid/os/PowerManager;
    :goto_0
    return-void

    .line 92
    :cond_0
    const-string v1, "DMMService"

    const-string v2, "DynamicMemoryManager Service Disabled."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/server/DynamicMemoryManagerService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/server/DynamicMemoryManagerService;->manageAlarms()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/DynamicMemoryManagerService;Z)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/android/server/DynamicMemoryManagerService;->enableUnstableMemory(Z)I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/DynamicMemoryManagerService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/android/server/DynamicMemoryManagerService;->SCREEN_ON:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/server/DynamicMemoryManagerService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    iput-boolean p1, p0, Lcom/android/server/DynamicMemoryManagerService;->SCREEN_ON:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/server/DynamicMemoryManagerService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/server/DynamicMemoryManagerService;->checkCurrentStatus()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/DynamicMemoryManagerService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/android/server/DynamicMemoryManagerService;->DPD_START:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/server/DynamicMemoryManagerService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    iput-boolean p1, p0, Lcom/android/server/DynamicMemoryManagerService;->DPD_START:Z

    return p1
.end method

.method static synthetic access$502(Lcom/android/server/DynamicMemoryManagerService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    iput-boolean p1, p0, Lcom/android/server/DynamicMemoryManagerService;->START_ALARM_SET:Z

    return p1
.end method

.method static synthetic access$602(Lcom/android/server/DynamicMemoryManagerService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    iput-boolean p1, p0, Lcom/android/server/DynamicMemoryManagerService;->STOP_ALARM_SET:Z

    return p1
.end method

.method private cancelStartAlarm()Z
    .locals 2

    .prologue
    .line 196
    iget-object v0, p0, Lcom/android/server/DynamicMemoryManagerService;->mStartAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/server/DynamicMemoryManagerService;->mStartPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 197
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/DynamicMemoryManagerService;->START_ALARM_SET:Z

    .line 198
    const/4 v0, 0x1

    return v0
.end method

.method private cancelStopAlarm()Z
    .locals 2

    .prologue
    .line 227
    iget-object v0, p0, Lcom/android/server/DynamicMemoryManagerService;->mStopAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/server/DynamicMemoryManagerService;->mStopPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 228
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/DynamicMemoryManagerService;->STOP_ALARM_SET:Z

    .line 229
    const/4 v0, 0x1

    return v0
.end method

.method private checkCurrentStatus()V
    .locals 14

    .prologue
    const/16 v13, 0xd

    const/4 v4, 0x5

    const/4 v7, 0x2

    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 255
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v10

    .line 256
    .local v10, calendar:Ljava/util/Calendar;
    const/4 v9, 0x0

    .line 258
    .local v9, StopDayOfMonth:I
    invoke-direct {p0}, Lcom/android/server/DynamicMemoryManagerService;->dpdEnabled()I

    move-result v2

    if-ne v2, v11, :cond_3

    .line 259
    invoke-virtual {v10, v4}, Ljava/util/Calendar;->get(I)I

    move-result v9

    .line 260
    iget v2, p0, Lcom/android/server/DynamicMemoryManagerService;->prevStartHr:I

    iget v3, p0, Lcom/android/server/DynamicMemoryManagerService;->prevStopHr:I

    if-gt v2, v3, :cond_0

    iget v2, p0, Lcom/android/server/DynamicMemoryManagerService;->prevStartHr:I

    iget v3, p0, Lcom/android/server/DynamicMemoryManagerService;->prevStopHr:I

    if-ne v2, v3, :cond_1

    iget v2, p0, Lcom/android/server/DynamicMemoryManagerService;->prevStartMin:I

    iget v3, p0, Lcom/android/server/DynamicMemoryManagerService;->prevStopMin:I

    if-le v2, v3, :cond_1

    .line 262
    :cond_0
    add-int/lit8 v9, v9, 0x1

    .line 264
    :cond_1
    new-instance v8, Landroid/text/format/Time;

    invoke-direct {v8}, Landroid/text/format/Time;-><init>()V

    .line 265
    .local v8, NowTime:Landroid/text/format/Time;
    invoke-virtual {v8}, Landroid/text/format/Time;->setToNow()V

    .line 267
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    .line 268
    .local v0, StartTime:Landroid/text/format/Time;
    invoke-virtual {v10, v13}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iget v2, p0, Lcom/android/server/DynamicMemoryManagerService;->prevStartMin:I

    iget v3, p0, Lcom/android/server/DynamicMemoryManagerService;->prevStartHr:I

    invoke-virtual {v10, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v10, v7}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-virtual {v10, v11}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual/range {v0 .. v6}, Landroid/text/format/Time;->set(IIIIII)V

    .line 275
    new-instance v1, Landroid/text/format/Time;

    invoke-direct {v1}, Landroid/text/format/Time;-><init>()V

    .line 276
    .local v1, StopTime:Landroid/text/format/Time;
    invoke-virtual {v10, v13}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iget v3, p0, Lcom/android/server/DynamicMemoryManagerService;->prevStopMin:I

    iget v4, p0, Lcom/android/server/DynamicMemoryManagerService;->prevStopHr:I

    invoke-virtual {v10, v7}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {v10, v11}, Ljava/util/Calendar;->get(I)I

    move-result v7

    move v5, v9

    invoke-virtual/range {v1 .. v7}, Landroid/text/format/Time;->set(IIIIII)V

    .line 283
    invoke-virtual {v8, v0}, Landroid/text/format/Time;->after(Landroid/text/format/Time;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v8, v1}, Landroid/text/format/Time;->before(Landroid/text/format/Time;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 284
    iput-boolean v11, p0, Lcom/android/server/DynamicMemoryManagerService;->DPD_START:Z

    .line 291
    .end local v0           #StartTime:Landroid/text/format/Time;
    .end local v1           #StopTime:Landroid/text/format/Time;
    .end local v8           #NowTime:Landroid/text/format/Time;
    :goto_0
    return-void

    .line 286
    .restart local v0       #StartTime:Landroid/text/format/Time;
    .restart local v1       #StopTime:Landroid/text/format/Time;
    .restart local v8       #NowTime:Landroid/text/format/Time;
    :cond_2
    iput-boolean v12, p0, Lcom/android/server/DynamicMemoryManagerService;->DPD_START:Z

    goto :goto_0

    .line 289
    .end local v0           #StartTime:Landroid/text/format/Time;
    .end local v1           #StopTime:Landroid/text/format/Time;
    .end local v8           #NowTime:Landroid/text/format/Time;
    :cond_3
    iput-boolean v12, p0, Lcom/android/server/DynamicMemoryManagerService;->DPD_START:Z

    goto :goto_0
.end method

.method private dpdEnabled()I
    .locals 2

    .prologue
    .line 166
    const-string v0, "persist.sys.dpd"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private enableUnstableMemory(Z)I
    .locals 4
    .parameter "flag"

    .prologue
    .line 294
    const-string v1, "DMMService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Enable Unstable Memory : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    iget-object v2, p0, Lcom/android/server/DynamicMemoryManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v2

    .line 297
    :try_start_0
    iget-object v1, p0, Lcom/android/server/DynamicMemoryManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 303
    :goto_0
    if-eqz p1, :cond_2

    .line 304
    :try_start_1
    iget-object v1, p0, Lcom/android/server/DynamicMemoryManagerService;->mState:Lcom/android/server/DynamicMemoryManagerService$DMM_MEM_STATE;

    sget-object v3, Lcom/android/server/DynamicMemoryManagerService$DMM_MEM_STATE;->DISABLED:Lcom/android/server/DynamicMemoryManagerService$DMM_MEM_STATE;

    if-ne v1, v3, :cond_0

    .line 305
    invoke-static {p1}, Landroid/os/Power;->SetUnstableMemoryState(Z)I

    move-result v1

    if-gez v1, :cond_1

    .line 306
    const-string v1, "DMMService"

    const-string v3, "Activating Unstable Memory: Failed !"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 319
    :cond_0
    :goto_1
    :try_start_2
    iget-object v1, p0, Lcom/android/server/DynamicMemoryManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 320
    iget-object v1, p0, Lcom/android/server/DynamicMemoryManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 330
    :goto_2
    :try_start_3
    monitor-exit v2

    .line 331
    const/4 v1, 0x0

    return v1

    .line 300
    :catch_0
    move-exception v0

    .line 301
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "DMMService"

    const-string v3, "Unable to Acquired Wakelock: DynamicMemoryManagerServiceLock"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 330
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    .line 308
    :cond_1
    :try_start_4
    sget-object v1, Lcom/android/server/DynamicMemoryManagerService$DMM_MEM_STATE;->ACTIVE:Lcom/android/server/DynamicMemoryManagerService$DMM_MEM_STATE;

    iput-object v1, p0, Lcom/android/server/DynamicMemoryManagerService;->mState:Lcom/android/server/DynamicMemoryManagerService$DMM_MEM_STATE;

    goto :goto_1

    .line 311
    :cond_2
    iget-object v1, p0, Lcom/android/server/DynamicMemoryManagerService;->mState:Lcom/android/server/DynamicMemoryManagerService$DMM_MEM_STATE;

    sget-object v3, Lcom/android/server/DynamicMemoryManagerService$DMM_MEM_STATE;->ACTIVE:Lcom/android/server/DynamicMemoryManagerService$DMM_MEM_STATE;

    if-ne v1, v3, :cond_0

    invoke-direct {p0}, Lcom/android/server/DynamicMemoryManagerService;->dpdEnabled()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    .line 312
    invoke-static {p1}, Landroid/os/Power;->SetUnstableMemoryState(Z)I

    move-result v1

    if-gez v1, :cond_3

    .line 313
    const-string v1, "DMMService"

    const-string v3, "Disabling Unstable Memory: Failed !"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 315
    :cond_3
    sget-object v1, Lcom/android/server/DynamicMemoryManagerService$DMM_MEM_STATE;->DISABLED:Lcom/android/server/DynamicMemoryManagerService$DMM_MEM_STATE;

    iput-object v1, p0, Lcom/android/server/DynamicMemoryManagerService;->mState:Lcom/android/server/DynamicMemoryManagerService$DMM_MEM_STATE;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 324
    :cond_4
    :try_start_5
    const-string v1, "DMMService"

    const-string v3, "Error: Attempring to release unheld Wakelock: DynamicMemoryManagerServiceLock"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_2

    .line 327
    :catch_1
    move-exception v0

    .line 328
    .restart local v0       #e:Ljava/lang/Exception;
    :try_start_6
    const-string v1, "DMMService"

    const-string v3, "Unable to release Wakelock: DynamicMemoryManagerServiceLock"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2
.end method

.method private getDelay(II)J
    .locals 7
    .parameter "sHr"
    .parameter "sMin"

    .prologue
    .line 233
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 234
    .local v0, calendar:Ljava/util/Calendar;
    const/16 v3, 0xb

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    sub-int v1, p1, v3

    .line 235
    .local v1, dHr:I
    const/16 v3, 0xc

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    sub-int v2, p2, v3

    .line 237
    .local v2, dMin:I
    if-gez v1, :cond_0

    .line 238
    add-int/lit8 v1, v1, 0x18

    .line 239
    :cond_0
    if-gez v2, :cond_1

    .line 240
    add-int/lit8 v2, v2, 0x3c

    .line 241
    if-lez v1, :cond_2

    .line 242
    add-int/lit8 v1, v1, -0x1

    .line 251
    :cond_1
    :goto_0
    mul-int/lit8 v3, v1, 0x3c

    add-int/2addr v3, v2

    mul-int/lit8 v3, v3, 0x3c

    mul-int/lit16 v3, v3, 0x3e8

    int-to-long v3, v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    add-long/2addr v3, v5

    return-wide v3

    .line 244
    :cond_2
    add-int/lit8 v3, v1, 0x18

    add-int/lit8 v1, v3, -0x1

    goto :goto_0
.end method

.method private manageAlarms()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 151
    invoke-direct {p0}, Lcom/android/server/DynamicMemoryManagerService;->dpdEnabled()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 152
    invoke-direct {p0}, Lcom/android/server/DynamicMemoryManagerService;->setStartAlarm()Z

    .line 153
    invoke-direct {p0}, Lcom/android/server/DynamicMemoryManagerService;->setStopAlarm()Z

    .line 160
    :goto_0
    return v1

    .line 156
    :cond_0
    invoke-direct {p0}, Lcom/android/server/DynamicMemoryManagerService;->cancelStartAlarm()Z

    .line 157
    invoke-direct {p0}, Lcom/android/server/DynamicMemoryManagerService;->cancelStopAlarm()Z

    .line 158
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/DynamicMemoryManagerService;->DPD_START:Z

    goto :goto_0
.end method

.method private registerForBroadcasts()V
    .locals 3

    .prologue
    .line 96
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 97
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 98
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 99
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 100
    const-string v1, "com.android.server.DMMService.action.DPD_START"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 101
    const-string v1, "com.android.server.DMMService.action.DPD_STOP"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 102
    iget-object v1, p0, Lcom/android/server/DynamicMemoryManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/DynamicMemoryManagerService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 103
    return-void
.end method

.method private setStartAlarm()Z
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v1, 0x0

    .line 170
    const-string v0, "persist.sys.dpd.start_hr"

    const/16 v4, 0x14

    invoke-static {v0, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v7

    .line 171
    .local v7, startHr:I
    const-string v0, "persist.sys.dpd.start_min"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v8

    .line 172
    .local v8, startMin:I
    const-wide/16 v2, 0x0

    .line 179
    .local v2, delay_ms:J
    iget v0, p0, Lcom/android/server/DynamicMemoryManagerService;->prevStartHr:I

    if-ne v7, v0, :cond_0

    iget v0, p0, Lcom/android/server/DynamicMemoryManagerService;->prevStartMin:I

    if-ne v8, v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/DynamicMemoryManagerService;->START_ALARM_SET:Z

    if-nez v0, :cond_1

    .line 180
    :cond_0
    iput v7, p0, Lcom/android/server/DynamicMemoryManagerService;->prevStartHr:I

    .line 181
    iput v8, p0, Lcom/android/server/DynamicMemoryManagerService;->prevStartMin:I

    .line 182
    invoke-direct {p0}, Lcom/android/server/DynamicMemoryManagerService;->cancelStartAlarm()Z

    .line 183
    invoke-direct {p0, v7, v8}, Lcom/android/server/DynamicMemoryManagerService;->getDelay(II)J

    move-result-wide v2

    .line 185
    iget-object v0, p0, Lcom/android/server/DynamicMemoryManagerService;->mStartAlarmManager:Landroid/app/AlarmManager;

    const-wide/32 v4, 0x5265c00

    iget-object v6, p0, Lcom/android/server/DynamicMemoryManagerService;->mStartPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    .line 189
    iput-boolean v9, p0, Lcom/android/server/DynamicMemoryManagerService;->START_ALARM_SET:Z

    .line 191
    :cond_1
    return v9
.end method

.method private setStopAlarm()Z
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v1, 0x0

    .line 202
    const-string v0, "persist.sys.dpd.stop_hr"

    const/4 v4, 0x7

    invoke-static {v0, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v7

    .line 203
    .local v7, stopHr:I
    const-string v0, "persist.sys.dpd.stop_min"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v8

    .line 204
    .local v8, stopMin:I
    const-wide/16 v2, 0x0

    .line 210
    .local v2, delay_ms:J
    iget v0, p0, Lcom/android/server/DynamicMemoryManagerService;->prevStopHr:I

    if-ne v7, v0, :cond_0

    iget v0, p0, Lcom/android/server/DynamicMemoryManagerService;->prevStopMin:I

    if-ne v8, v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/DynamicMemoryManagerService;->STOP_ALARM_SET:Z

    if-nez v0, :cond_1

    .line 211
    :cond_0
    iput v7, p0, Lcom/android/server/DynamicMemoryManagerService;->prevStopHr:I

    .line 212
    iput v8, p0, Lcom/android/server/DynamicMemoryManagerService;->prevStopMin:I

    .line 213
    invoke-direct {p0}, Lcom/android/server/DynamicMemoryManagerService;->cancelStopAlarm()Z

    .line 214
    invoke-direct {p0, v7, v8}, Lcom/android/server/DynamicMemoryManagerService;->getDelay(II)J

    move-result-wide v2

    .line 216
    iget-object v0, p0, Lcom/android/server/DynamicMemoryManagerService;->mStopAlarmManager:Landroid/app/AlarmManager;

    const-wide/32 v4, 0x5265c00

    iget-object v6, p0, Lcom/android/server/DynamicMemoryManagerService;->mStopPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    .line 220
    iput-boolean v9, p0, Lcom/android/server/DynamicMemoryManagerService;->STOP_ALARM_SET:Z

    .line 222
    :cond_1
    return v9
.end method


# virtual methods
.method protected finalize()V
    .locals 0

    .prologue
    .line 107
    return-void
.end method

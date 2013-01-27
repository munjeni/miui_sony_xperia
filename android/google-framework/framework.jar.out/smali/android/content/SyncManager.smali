.class public Landroid/content/SyncManager;
.super Ljava/lang/Object;
.source "SyncManager.java"

# interfaces
.implements Landroid/accounts/OnAccountsUpdateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/SyncManager$SyncHandler;,
        Landroid/content/SyncManager$ServiceConnectionData;,
        Landroid/content/SyncManager$SyncTimeTracker;,
        Landroid/content/SyncManager$AccountSyncStats;,
        Landroid/content/SyncManager$AuthoritySyncStats;,
        Landroid/content/SyncManager$ActiveSyncContext;,
        Landroid/content/SyncManager$SyncAlarmIntentReceiver;,
        Landroid/content/SyncManager$SyncHandlerMessagePayload;,
        Landroid/content/SyncManager$InitializerServiceConnection;
    }
.end annotation


# static fields
.field private static final ACTION_SYNC_ALARM:Ljava/lang/String; = "android.content.syncmanager.SYNC_ALARM"

.field private static final DEFAULT_MAX_SYNC_RETRY_TIME_IN_SECONDS:J = 0xe10L

.field private static final DELAY_RETRY_SYNC_IN_PROGRESS_IN_SECONDS:I = 0xa

.field private static final HANDLE_SYNC_ALARM_WAKE_LOCK:Ljava/lang/String; = "SyncManagerHandleSyncAlarm"

.field private static final INITIALIZATION_UNBIND_DELAY_MS:I = 0x1388

.field private static final INITIAL_ACCOUNTS_ARRAY:[Landroid/accounts/Account; = null

.field private static final INITIAL_SYNC_RETRY_TIME_IN_MS:J = 0x7530L

#the value of this static final field might be set in the static constructor
.field private static final LOCAL_SYNC_DELAY:J = 0x0L

#the value of this static final field might be set in the static constructor
.field private static final MAX_SIMULTANEOUS_INITIALIZATION_SYNCS:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final MAX_SIMULTANEOUS_REGULAR_SYNCS:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final MAX_TIME_PER_SYNC:J = 0x0L

.field private static final SYNC_ALARM_TIMEOUT_MAX:J = 0x6ddd00L

.field private static final SYNC_ALARM_TIMEOUT_MIN:J = 0x7530L

.field private static final SYNC_LOOP_WAKE_LOCK:Ljava/lang/String; = "SyncLoopWakeLock"

#the value of this static final field might be set in the static constructor
.field private static final SYNC_NOTIFICATION_DELAY:J = 0x0L

.field private static final SYNC_WAKE_LOCK_PREFIX:Ljava/lang/String; = "*sync*"

.field private static final TAG:Ljava/lang/String; = "SyncManager"


# instance fields
.field private volatile mAccounts:[Landroid/accounts/Account;

.field protected final mActiveSyncContexts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/SyncManager$ActiveSyncContext;",
            ">;"
        }
    .end annotation
.end field

.field private mAlarmService:Landroid/app/AlarmManager;

.field private mBackgroundDataSettingChanged:Landroid/content/BroadcastReceiver;

.field private volatile mBootCompleted:Z

.field private mBootCompletedReceiver:Landroid/content/BroadcastReceiver;

.field private mConnManagerDoNotUseDirectly:Landroid/net/ConnectivityManager;

.field private mConnectivityIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private volatile mDataConnectionIsConnected:Z

.field private volatile mHandleAlarmWakeLock:Landroid/os/PowerManager$WakeLock;

.field private final mMainHandler:Landroid/os/Handler;

.field private mNeedSyncActiveNotification:Z

.field private final mNotificationMgr:Landroid/app/NotificationManager;

.field private final mPowerManager:Landroid/os/PowerManager;

.field private mShutdownIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mStorageIntentReceiver:Landroid/content/BroadcastReceiver;

.field private volatile mStorageIsLow:Z

.field protected mSyncAdapters:Landroid/content/SyncAdaptersCache;

.field private final mSyncAlarmIntent:Landroid/app/PendingIntent;

.field private final mSyncHandler:Landroid/content/SyncManager$SyncHandler;

.field private volatile mSyncManagerWakeLock:Landroid/os/PowerManager$WakeLock;

.field public mSyncQueue:Landroid/content/SyncQueue;

.field private mSyncStorageEngine:Landroid/content/SyncStorageEngine;

.field private mThemeChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mUiContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x7530

    const/4 v1, 0x2

    .line 91
    invoke-static {}, Landroid/app/ActivityManager;->isLargeRAM()Z

    move-result v2

    .line 92
    .local v2, isLargeRAM:Z
    if-eqz v2, :cond_0

    const/4 v0, 0x5

    .line 93
    .local v0, defaultMaxInitSyncs:I
    :goto_0
    if-eqz v2, :cond_1

    .line 94
    .local v1, defaultMaxRegularSyncs:I
    :goto_1
    const-string/jumbo v3, "sync.max_init_syncs"

    invoke-static {v3, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    sput v3, Landroid/content/SyncManager;->MAX_SIMULTANEOUS_INITIALIZATION_SYNCS:I

    .line 96
    const-string/jumbo v3, "sync.max_regular_syncs"

    invoke-static {v3, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    sput v3, Landroid/content/SyncManager;->MAX_SIMULTANEOUS_REGULAR_SYNCS:I

    .line 98
    const-string/jumbo v3, "sync.local_sync_delay"

    invoke-static {v3, v6, v7}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    sput-wide v3, Landroid/content/SyncManager;->LOCAL_SYNC_DELAY:J

    .line 100
    const-string/jumbo v3, "sync.max_time_per_sync"

    const-wide/32 v4, 0x493e0

    invoke-static {v3, v4, v5}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    sput-wide v3, Landroid/content/SyncManager;->MAX_TIME_PER_SYNC:J

    .line 102
    const-string/jumbo v3, "sync.notification_delay"

    invoke-static {v3, v6, v7}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    sput-wide v3, Landroid/content/SyncManager;->SYNC_NOTIFICATION_DELAY:J

    .line 203
    const/4 v3, 0x0

    new-array v3, v3, [Landroid/accounts/Account;

    sput-object v3, Landroid/content/SyncManager;->INITIAL_ACCOUNTS_ARRAY:[Landroid/accounts/Account;

    return-void

    .end local v0           #defaultMaxInitSyncs:I
    .end local v1           #defaultMaxRegularSyncs:I
    :cond_0
    move v0, v1

    .line 92
    goto :goto_0

    .line 93
    .restart local v0       #defaultMaxInitSyncs:I
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 8
    .parameter "context"
    .parameter "factoryTest"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 302
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    sget-object v2, Landroid/content/SyncManager;->INITIAL_ACCOUNTS_ARRAY:[Landroid/accounts/Account;

    iput-object v2, p0, Landroid/content/SyncManager;->mAccounts:[Landroid/accounts/Account;

    .line 141
    iput-boolean v5, p0, Landroid/content/SyncManager;->mDataConnectionIsConnected:Z

    .line 142
    iput-boolean v5, p0, Landroid/content/SyncManager;->mStorageIsLow:Z

    .line 145
    iput-object v7, p0, Landroid/content/SyncManager;->mAlarmService:Landroid/app/AlarmManager;

    .line 150
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Landroid/content/SyncManager;->mActiveSyncContexts:Ljava/util/ArrayList;

    .line 153
    iput-boolean v5, p0, Landroid/content/SyncManager;->mNeedSyncActiveNotification:Z

    .line 162
    new-instance v2, Landroid/content/SyncManager$1;

    invoke-direct {v2, p0}, Landroid/content/SyncManager$1;-><init>(Landroid/content/SyncManager;)V

    iput-object v2, p0, Landroid/content/SyncManager;->mStorageIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 182
    new-instance v2, Landroid/content/SyncManager$2;

    invoke-direct {v2, p0}, Landroid/content/SyncManager$2;-><init>(Landroid/content/SyncManager;)V

    iput-object v2, p0, Landroid/content/SyncManager;->mBootCompletedReceiver:Landroid/content/BroadcastReceiver;

    .line 188
    new-instance v2, Landroid/content/SyncManager$3;

    invoke-direct {v2, p0}, Landroid/content/SyncManager$3;-><init>(Landroid/content/SyncManager;)V

    iput-object v2, p0, Landroid/content/SyncManager;->mThemeChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 194
    new-instance v2, Landroid/content/SyncManager$4;

    invoke-direct {v2, p0}, Landroid/content/SyncManager$4;-><init>(Landroid/content/SyncManager;)V

    iput-object v2, p0, Landroid/content/SyncManager;->mBackgroundDataSettingChanged:Landroid/content/BroadcastReceiver;

    .line 253
    new-instance v2, Landroid/content/SyncManager$5;

    invoke-direct {v2, p0}, Landroid/content/SyncManager$5;-><init>(Landroid/content/SyncManager;)V

    iput-object v2, p0, Landroid/content/SyncManager;->mConnectivityIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 278
    new-instance v2, Landroid/content/SyncManager$6;

    invoke-direct {v2, p0}, Landroid/content/SyncManager$6;-><init>(Landroid/content/SyncManager;)V

    iput-object v2, p0, Landroid/content/SyncManager;->mShutdownIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 290
    iput-boolean v5, p0, Landroid/content/SyncManager;->mBootCompleted:Z

    .line 305
    iput-object p1, p0, Landroid/content/SyncManager;->mContext:Landroid/content/Context;

    .line 306
    invoke-static {p1}, Landroid/content/SyncStorageEngine;->init(Landroid/content/Context;)V

    .line 307
    invoke-static {}, Landroid/content/SyncStorageEngine;->getSingleton()Landroid/content/SyncStorageEngine;

    move-result-object v2

    iput-object v2, p0, Landroid/content/SyncManager;->mSyncStorageEngine:Landroid/content/SyncStorageEngine;

    .line 308
    new-instance v2, Landroid/content/SyncAdaptersCache;

    iget-object v3, p0, Landroid/content/SyncManager;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/content/SyncAdaptersCache;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Landroid/content/SyncManager;->mSyncAdapters:Landroid/content/SyncAdaptersCache;

    .line 309
    new-instance v2, Landroid/content/SyncQueue;

    iget-object v3, p0, Landroid/content/SyncManager;->mSyncStorageEngine:Landroid/content/SyncStorageEngine;

    iget-object v4, p0, Landroid/content/SyncManager;->mSyncAdapters:Landroid/content/SyncAdaptersCache;

    invoke-direct {v2, v3, v4}, Landroid/content/SyncQueue;-><init>(Landroid/content/SyncStorageEngine;Landroid/content/SyncAdaptersCache;)V

    iput-object v2, p0, Landroid/content/SyncManager;->mSyncQueue:Landroid/content/SyncQueue;

    .line 311
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "SyncHandlerThread"

    const/16 v3, 0xa

    invoke-direct {v1, v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 313
    .local v1, syncThread:Landroid/os/HandlerThread;
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 314
    new-instance v2, Landroid/content/SyncManager$SyncHandler;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Landroid/content/SyncManager$SyncHandler;-><init>(Landroid/content/SyncManager;Landroid/os/Looper;)V

    iput-object v2, p0, Landroid/content/SyncManager;->mSyncHandler:Landroid/content/SyncManager$SyncHandler;

    .line 315
    new-instance v2, Landroid/os/Handler;

    iget-object v3, p0, Landroid/content/SyncManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, Landroid/content/SyncManager;->mMainHandler:Landroid/os/Handler;

    .line 317
    iget-object v2, p0, Landroid/content/SyncManager;->mSyncAdapters:Landroid/content/SyncAdaptersCache;

    new-instance v3, Landroid/content/SyncManager$7;

    invoke-direct {v3, p0}, Landroid/content/SyncManager$7;-><init>(Landroid/content/SyncManager;)V

    iget-object v4, p0, Landroid/content/SyncManager;->mSyncHandler:Landroid/content/SyncManager$SyncHandler;

    invoke-virtual {v2, v3, v4}, Landroid/content/SyncAdaptersCache;->setListener(Landroid/content/pm/RegisteredServicesCacheListener;Landroid/os/Handler;)V

    .line 326
    iget-object v2, p0, Landroid/content/SyncManager;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.content.syncmanager.SYNC_ALARM"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v5, v3, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, p0, Landroid/content/SyncManager;->mSyncAlarmIntent:Landroid/app/PendingIntent;

    .line 329
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 330
    .local v0, intentFilter:Landroid/content/IntentFilter;
    iget-object v2, p0, Landroid/content/SyncManager;->mConnectivityIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 332
    if-nez p2, :cond_0

    .line 333
    new-instance v0, Landroid/content/IntentFilter;

    .end local v0           #intentFilter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 334
    .restart local v0       #intentFilter:Landroid/content/IntentFilter;
    iget-object v2, p0, Landroid/content/SyncManager;->mBootCompletedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 337
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    .end local v0           #intentFilter:Landroid/content/IntentFilter;
    const-string v2, "android.net.conn.BACKGROUND_DATA_SETTING_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 338
    .restart local v0       #intentFilter:Landroid/content/IntentFilter;
    iget-object v2, p0, Landroid/content/SyncManager;->mBackgroundDataSettingChanged:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 340
    new-instance v0, Landroid/content/IntentFilter;

    .end local v0           #intentFilter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.DEVICE_STORAGE_LOW"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 341
    .restart local v0       #intentFilter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.DEVICE_STORAGE_OK"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 342
    iget-object v2, p0, Landroid/content/SyncManager;->mStorageIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 344
    new-instance v0, Landroid/content/IntentFilter;

    .end local v0           #intentFilter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.ACTION_SHUTDOWN"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 345
    .restart local v0       #intentFilter:Landroid/content/IntentFilter;
    const/16 v2, 0x64

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 346
    iget-object v2, p0, Landroid/content/SyncManager;->mShutdownIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 348
    iget-object v2, p0, Landroid/content/SyncManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Landroid/content/SyncManager;->mThemeChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {v2, v3}, Lcom/android/internal/app/ThemeUtils;->registerThemeChangeReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    .line 350
    if-nez p2, :cond_2

    .line 351
    const-string/jumbo v2, "notification"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    iput-object v2, p0, Landroid/content/SyncManager;->mNotificationMgr:Landroid/app/NotificationManager;

    .line 353
    new-instance v2, Landroid/content/SyncManager$SyncAlarmIntentReceiver;

    invoke-direct {v2, p0}, Landroid/content/SyncManager$SyncAlarmIntentReceiver;-><init>(Landroid/content/SyncManager;)V

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.content.syncmanager.SYNC_ALARM"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 358
    :goto_0
    const-string/jumbo v2, "power"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    iput-object v2, p0, Landroid/content/SyncManager;->mPowerManager:Landroid/os/PowerManager;

    .line 364
    iget-object v2, p0, Landroid/content/SyncManager;->mPowerManager:Landroid/os/PowerManager;

    const-string v3, "SyncManagerHandleSyncAlarm"

    invoke-virtual {v2, v6, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Landroid/content/SyncManager;->mHandleAlarmWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 366
    iget-object v2, p0, Landroid/content/SyncManager;->mHandleAlarmWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2, v5}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 373
    iget-object v2, p0, Landroid/content/SyncManager;->mPowerManager:Landroid/os/PowerManager;

    const-string v3, "SyncLoopWakeLock"

    invoke-virtual {v2, v6, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Landroid/content/SyncManager;->mSyncManagerWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 375
    iget-object v2, p0, Landroid/content/SyncManager;->mSyncManagerWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2, v5}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 377
    iget-object v2, p0, Landroid/content/SyncManager;->mSyncStorageEngine:Landroid/content/SyncStorageEngine;

    new-instance v3, Landroid/content/SyncManager$8;

    invoke-direct {v3, p0}, Landroid/content/SyncManager$8;-><init>(Landroid/content/SyncManager;)V

    invoke-virtual {v2, v6, v3}, Landroid/content/SyncStorageEngine;->addStatusChangeListener(ILandroid/content/ISyncStatusObserver;)V

    .line 385
    if-nez p2, :cond_1

    .line 386
    iget-object v2, p0, Landroid/content/SyncManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v2

    iget-object v3, p0, Landroid/content/SyncManager;->mSyncHandler:Landroid/content/SyncManager$SyncHandler;

    invoke-virtual {v2, p0, v3, v5}, Landroid/accounts/AccountManager;->addOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;Landroid/os/Handler;Z)V

    .line 389
    iget-object v2, p0, Landroid/content/SyncManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/content/SyncManager;->onAccountsUpdated([Landroid/accounts/Account;)V

    .line 391
    :cond_1
    return-void

    .line 356
    :cond_2
    iput-object v7, p0, Landroid/content/SyncManager;->mNotificationMgr:Landroid/app/NotificationManager;

    goto :goto_0
.end method

.method static synthetic access$000(Landroid/content/SyncManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-boolean v0, p0, Landroid/content/SyncManager;->mStorageIsLow:Z

    return v0
.end method

.method static synthetic access$002(Landroid/content/SyncManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    iput-boolean p1, p0, Landroid/content/SyncManager;->mStorageIsLow:Z

    return p1
.end method

.method static synthetic access$100(Landroid/content/SyncManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 78
    invoke-direct {p0}, Landroid/content/SyncManager;->sendCheckAlarmsMessage()V

    return-void
.end method

.method static synthetic access$1000(Landroid/content/SyncManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 78
    invoke-direct {p0}, Landroid/content/SyncManager;->sendSyncAlarmMessage()V

    return-void
.end method

.method static synthetic access$1200(Landroid/content/SyncManager;Landroid/content/SyncManager$ActiveSyncContext;Landroid/content/SyncResult;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 78
    invoke-direct {p0, p1, p2}, Landroid/content/SyncManager;->sendSyncFinishedOrCanceledMessage(Landroid/content/SyncManager$ActiveSyncContext;Landroid/content/SyncResult;)V

    return-void
.end method

.method static synthetic access$1300(Landroid/content/SyncManager;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Landroid/content/SyncManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1802(Landroid/content/SyncManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    iput-boolean p1, p0, Landroid/content/SyncManager;->mBootCompleted:Z

    return p1
.end method

.method static synthetic access$1900(Landroid/content/SyncManager;)Landroid/os/PowerManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Landroid/content/SyncManager;->mPowerManager:Landroid/os/PowerManager;

    return-object v0
.end method

.method static synthetic access$200(Landroid/content/SyncManager;)Landroid/content/SyncManager$SyncHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Landroid/content/SyncManager;->mSyncHandler:Landroid/content/SyncManager$SyncHandler;

    return-object v0
.end method

.method static synthetic access$2000(Landroid/content/SyncManager;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Landroid/content/SyncManager;->mSyncManagerWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$2100(Landroid/content/SyncManager;Landroid/content/SyncManager$ActiveSyncContext;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    invoke-direct {p0, p1}, Landroid/content/SyncManager;->isSyncStillActive(Landroid/content/SyncManager$ActiveSyncContext;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2200(Landroid/content/SyncManager;)[Landroid/accounts/Account;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Landroid/content/SyncManager;->mAccounts:[Landroid/accounts/Account;

    return-object v0
.end method

.method static synthetic access$2300()[Landroid/accounts/Account;
    .locals 1

    .prologue
    .line 78
    sget-object v0, Landroid/content/SyncManager;->INITIAL_ACCOUNTS_ARRAY:[Landroid/accounts/Account;

    return-object v0
.end method

.method static synthetic access$2400()J
    .locals 2

    .prologue
    .line 78
    sget-wide v0, Landroid/content/SyncManager;->MAX_TIME_PER_SYNC:J

    return-wide v0
.end method

.method static synthetic access$2500()I
    .locals 1

    .prologue
    .line 78
    sget v0, Landroid/content/SyncManager;->MAX_SIMULTANEOUS_INITIALIZATION_SYNCS:I

    return v0
.end method

.method static synthetic access$2600()I
    .locals 1

    .prologue
    .line 78
    sget v0, Landroid/content/SyncManager;->MAX_SIMULTANEOUS_REGULAR_SYNCS:I

    return v0
.end method

.method static synthetic access$2700(Landroid/content/SyncManager;Landroid/content/SyncOperation;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    invoke-direct {p0, p1}, Landroid/content/SyncManager;->increaseBackoffSetting(Landroid/content/SyncOperation;)V

    return-void
.end method

.method static synthetic access$2800(Landroid/content/SyncManager;Landroid/content/SyncOperation;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    invoke-direct {p0, p1}, Landroid/content/SyncManager;->clearBackoffSetting(Landroid/content/SyncOperation;)V

    return-void
.end method

.method static synthetic access$2900(Landroid/content/SyncManager;Landroid/content/SyncOperation;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 78
    invoke-direct {p0, p1, p2, p3}, Landroid/content/SyncManager;->setDelayUntilTime(Landroid/content/SyncOperation;J)V

    return-void
.end method

.method static synthetic access$3000(Landroid/content/SyncManager;)Landroid/app/NotificationManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Landroid/content/SyncManager;->mNotificationMgr:Landroid/app/NotificationManager;

    return-object v0
.end method

.method static synthetic access$302(Landroid/content/SyncManager;Landroid/content/Context;)Landroid/content/Context;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    iput-object p1, p0, Landroid/content/SyncManager;->mUiContext:Landroid/content/Context;

    return-object p1
.end method

.method static synthetic access$3100()J
    .locals 2

    .prologue
    .line 78
    sget-wide v0, Landroid/content/SyncManager;->SYNC_NOTIFICATION_DELAY:J

    return-wide v0
.end method

.method static synthetic access$3200(Landroid/content/SyncManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-boolean v0, p0, Landroid/content/SyncManager;->mNeedSyncActiveNotification:Z

    return v0
.end method

.method static synthetic access$3202(Landroid/content/SyncManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    iput-boolean p1, p0, Landroid/content/SyncManager;->mNeedSyncActiveNotification:Z

    return p1
.end method

.method static synthetic access$3300(Landroid/content/SyncManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 78
    invoke-direct {p0}, Landroid/content/SyncManager;->ensureAlarmService()V

    return-void
.end method

.method static synthetic access$3400(Landroid/content/SyncManager;)Landroid/app/PendingIntent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Landroid/content/SyncManager;->mSyncAlarmIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method static synthetic access$3500(Landroid/content/SyncManager;)Landroid/app/AlarmManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Landroid/content/SyncManager;->mAlarmService:Landroid/app/AlarmManager;

    return-object v0
.end method

.method static synthetic access$3600(Landroid/content/SyncManager;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    invoke-direct {p0}, Landroid/content/SyncManager;->getUiContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Landroid/content/SyncManager;)Landroid/net/ConnectivityManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    invoke-direct {p0}, Landroid/content/SyncManager;->getConnectivityManager()Landroid/net/ConnectivityManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Landroid/content/SyncManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-boolean v0, p0, Landroid/content/SyncManager;->mDataConnectionIsConnected:Z

    return v0
.end method

.method static synthetic access$502(Landroid/content/SyncManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    iput-boolean p1, p0, Landroid/content/SyncManager;->mDataConnectionIsConnected:Z

    return p1
.end method

.method static synthetic access$600(Landroid/content/SyncManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    invoke-direct {p0}, Landroid/content/SyncManager;->readDataConnectionState()Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Landroid/content/SyncManager;)Landroid/content/SyncStorageEngine;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Landroid/content/SyncManager;->mSyncStorageEngine:Landroid/content/SyncStorageEngine;

    return-object v0
.end method

.method static synthetic access$900(Landroid/content/SyncManager;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Landroid/content/SyncManager;->mHandleAlarmWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method private clearBackoffSetting(Landroid/content/SyncOperation;)V
    .locals 7
    .parameter "op"

    .prologue
    const-wide/16 v3, -0x1

    .line 730
    iget-object v0, p0, Landroid/content/SyncManager;->mSyncStorageEngine:Landroid/content/SyncStorageEngine;

    iget-object v1, p1, Landroid/content/SyncOperation;->account:Landroid/accounts/Account;

    iget-object v2, p1, Landroid/content/SyncOperation;->authority:Ljava/lang/String;

    move-wide v5, v3

    invoke-virtual/range {v0 .. v6}, Landroid/content/SyncStorageEngine;->setBackoff(Landroid/accounts/Account;Ljava/lang/String;JJ)V

    .line 732
    iget-object v1, p0, Landroid/content/SyncManager;->mSyncQueue:Landroid/content/SyncQueue;

    monitor-enter v1

    .line 733
    :try_start_0
    iget-object v0, p0, Landroid/content/SyncManager;->mSyncQueue:Landroid/content/SyncQueue;

    iget-object v2, p1, Landroid/content/SyncOperation;->account:Landroid/accounts/Account;

    iget-object v3, p1, Landroid/content/SyncOperation;->authority:Ljava/lang/String;

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/content/SyncQueue;->onBackoffChanged(Landroid/accounts/Account;Ljava/lang/String;J)V

    .line 734
    monitor-exit v1

    .line 735
    return-void

    .line 734
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private dumpDayStatistic(Ljava/io/PrintWriter;Landroid/content/SyncStorageEngine$DayStats;)V
    .locals 4
    .parameter "pw"
    .parameter "ds"

    .prologue
    .line 1220
    const-string v0, "Success ("

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p2, Landroid/content/SyncStorageEngine$DayStats;->successCount:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 1221
    iget v0, p2, Landroid/content/SyncStorageEngine$DayStats;->successCount:I

    if-lez v0, :cond_0

    .line 1222
    const-string v0, " for "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p2, Landroid/content/SyncStorageEngine$DayStats;->successTime:J

    invoke-direct {p0, p1, v0, v1}, Landroid/content/SyncManager;->dumpTimeSec(Ljava/io/PrintWriter;J)V

    .line 1223
    const-string v0, " avg="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p2, Landroid/content/SyncStorageEngine$DayStats;->successTime:J

    iget v2, p2, Landroid/content/SyncStorageEngine$DayStats;->successCount:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    invoke-direct {p0, p1, v0, v1}, Landroid/content/SyncManager;->dumpTimeSec(Ljava/io/PrintWriter;J)V

    .line 1225
    :cond_0
    const-string v0, ") Failure ("

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p2, Landroid/content/SyncStorageEngine$DayStats;->failureCount:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 1226
    iget v0, p2, Landroid/content/SyncStorageEngine$DayStats;->failureCount:I

    if-lez v0, :cond_1

    .line 1227
    const-string v0, " for "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p2, Landroid/content/SyncStorageEngine$DayStats;->failureTime:J

    invoke-direct {p0, p1, v0, v1}, Landroid/content/SyncManager;->dumpTimeSec(Ljava/io/PrintWriter;J)V

    .line 1228
    const-string v0, " avg="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p2, Landroid/content/SyncStorageEngine$DayStats;->failureTime:J

    iget v2, p2, Landroid/content/SyncStorageEngine$DayStats;->failureCount:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    invoke-direct {p0, p1, v0, v1}, Landroid/content/SyncManager;->dumpTimeSec(Ljava/io/PrintWriter;J)V

    .line 1230
    :cond_1
    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1231
    return-void
.end method

.method private dumpDayStatistics(Ljava/io/PrintWriter;)V
    .locals 12
    .parameter "pw"

    .prologue
    const/4 v11, 0x6

    const/4 v8, 0x0

    .line 1432
    iget-object v7, p0, Landroid/content/SyncManager;->mSyncStorageEngine:Landroid/content/SyncStorageEngine;

    invoke-virtual {v7}, Landroid/content/SyncStorageEngine;->getDayStatistics()[Landroid/content/SyncStorageEngine$DayStats;

    move-result-object v3

    .line 1433
    .local v3, dses:[Landroid/content/SyncStorageEngine$DayStats;
    if-eqz v3, :cond_6

    aget-object v7, v3, v8

    if-eqz v7, :cond_6

    .line 1434
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1435
    const-string v7, "Sync Statistics"

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1436
    const-string v7, "  Today:  "

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    aget-object v7, v3, v8

    invoke-direct {p0, p1, v7}, Landroid/content/SyncManager;->dumpDayStatistic(Ljava/io/PrintWriter;Landroid/content/SyncStorageEngine$DayStats;)V

    .line 1437
    aget-object v7, v3, v8

    iget v5, v7, Landroid/content/SyncStorageEngine$DayStats;->day:I

    .line 1442
    .local v5, today:I
    const/4 v4, 0x1

    .local v4, i:I
    :goto_0
    if-gt v4, v11, :cond_0

    array-length v7, v3

    if-ge v4, v7, :cond_0

    .line 1443
    aget-object v2, v3, v4

    .line 1444
    .local v2, ds:Landroid/content/SyncStorageEngine$DayStats;
    if-nez v2, :cond_3

    .line 1453
    .end local v2           #ds:Landroid/content/SyncStorageEngine$DayStats;
    :cond_0
    move v6, v5

    .line 1454
    .local v6, weekDay:I
    :cond_1
    :goto_1
    array-length v7, v3

    if-ge v4, v7, :cond_6

    .line 1455
    const/4 v0, 0x0

    .line 1456
    .local v0, aggr:Landroid/content/SyncStorageEngine$DayStats;
    add-int/lit8 v6, v6, -0x7

    .line 1457
    :goto_2
    array-length v7, v3

    if-ge v4, v7, :cond_2

    .line 1458
    aget-object v2, v3, v4

    .line 1459
    .restart local v2       #ds:Landroid/content/SyncStorageEngine$DayStats;
    if-nez v2, :cond_4

    .line 1460
    array-length v4, v3

    .line 1475
    .end local v2           #ds:Landroid/content/SyncStorageEngine$DayStats;
    :cond_2
    if-eqz v0, :cond_1

    .line 1476
    const-string v7, "  Week-"

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sub-int v7, v5, v6

    div-int/lit8 v7, v7, 0x7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(I)V

    const-string v7, ": "

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1477
    invoke-direct {p0, p1, v0}, Landroid/content/SyncManager;->dumpDayStatistic(Ljava/io/PrintWriter;Landroid/content/SyncStorageEngine$DayStats;)V

    goto :goto_1

    .line 1445
    .end local v0           #aggr:Landroid/content/SyncStorageEngine$DayStats;
    .end local v6           #weekDay:I
    .restart local v2       #ds:Landroid/content/SyncStorageEngine$DayStats;
    :cond_3
    iget v7, v2, Landroid/content/SyncStorageEngine$DayStats;->day:I

    sub-int v1, v5, v7

    .line 1446
    .local v1, delta:I
    if-gt v1, v11, :cond_0

    .line 1448
    const-string v7, "  Day-"

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v7, ":  "

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1449
    invoke-direct {p0, p1, v2}, Landroid/content/SyncManager;->dumpDayStatistic(Ljava/io/PrintWriter;Landroid/content/SyncStorageEngine$DayStats;)V

    .line 1442
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1463
    .end local v1           #delta:I
    .restart local v0       #aggr:Landroid/content/SyncStorageEngine$DayStats;
    .restart local v6       #weekDay:I
    :cond_4
    iget v7, v2, Landroid/content/SyncStorageEngine$DayStats;->day:I

    sub-int v1, v6, v7

    .line 1464
    .restart local v1       #delta:I
    if-gt v1, v11, :cond_2

    .line 1465
    add-int/lit8 v4, v4, 0x1

    .line 1467
    if-nez v0, :cond_5

    .line 1468
    new-instance v0, Landroid/content/SyncStorageEngine$DayStats;

    .end local v0           #aggr:Landroid/content/SyncStorageEngine$DayStats;
    invoke-direct {v0, v6}, Landroid/content/SyncStorageEngine$DayStats;-><init>(I)V

    .line 1470
    .restart local v0       #aggr:Landroid/content/SyncStorageEngine$DayStats;
    :cond_5
    iget v7, v0, Landroid/content/SyncStorageEngine$DayStats;->successCount:I

    iget v8, v2, Landroid/content/SyncStorageEngine$DayStats;->successCount:I

    add-int/2addr v7, v8

    iput v7, v0, Landroid/content/SyncStorageEngine$DayStats;->successCount:I

    .line 1471
    iget-wide v7, v0, Landroid/content/SyncStorageEngine$DayStats;->successTime:J

    iget-wide v9, v2, Landroid/content/SyncStorageEngine$DayStats;->successTime:J

    add-long/2addr v7, v9

    iput-wide v7, v0, Landroid/content/SyncStorageEngine$DayStats;->successTime:J

    .line 1472
    iget v7, v0, Landroid/content/SyncStorageEngine$DayStats;->failureCount:I

    iget v8, v2, Landroid/content/SyncStorageEngine$DayStats;->failureCount:I

    add-int/2addr v7, v8

    iput v7, v0, Landroid/content/SyncStorageEngine$DayStats;->failureCount:I

    .line 1473
    iget-wide v7, v0, Landroid/content/SyncStorageEngine$DayStats;->failureTime:J

    iget-wide v9, v2, Landroid/content/SyncStorageEngine$DayStats;->failureTime:J

    add-long/2addr v7, v9

    iput-wide v7, v0, Landroid/content/SyncStorageEngine$DayStats;->failureTime:J

    goto :goto_2

    .line 1481
    .end local v0           #aggr:Landroid/content/SyncStorageEngine$DayStats;
    .end local v1           #delta:I
    .end local v2           #ds:Landroid/content/SyncStorageEngine$DayStats;
    .end local v4           #i:I
    .end local v5           #today:I
    .end local v6           #weekDay:I
    :cond_6
    return-void
.end method

.method private dumpRecentHistory(Ljava/io/PrintWriter;)V
    .locals 55
    .parameter "pw"

    .prologue
    .line 1239
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager;->mSyncStorageEngine:Landroid/content/SyncStorageEngine;

    move-object/from16 v50, v0

    invoke-virtual/range {v50 .. v50}, Landroid/content/SyncStorageEngine;->getSyncHistory()Ljava/util/ArrayList;

    move-result-object v26

    .line 1241
    .local v26, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/SyncStorageEngine$SyncHistoryItem;>;"
    if-eqz v26, :cond_f

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v50

    if-lez v50, :cond_f

    .line 1242
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v10

    .line 1243
    .local v10, authorityMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Landroid/content/SyncManager$AuthoritySyncStats;>;"
    const-wide/16 v46, 0x0

    .line 1244
    .local v46, totalElapsedTime:J
    const-wide/16 v48, 0x0

    .line 1245
    .local v48, totalTimes:J
    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1247
    .local v3, N:I
    const/16 v32, 0x0

    .line 1248
    .local v32, maxAuthority:I
    const/16 v31, 0x0

    .line 1249
    .local v31, maxAccount:I
    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v23

    .local v23, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v50

    if-eqz v50, :cond_5

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/content/SyncStorageEngine$SyncHistoryItem;

    .line 1250
    .local v25, item:Landroid/content/SyncStorageEngine$SyncHistoryItem;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager;->mSyncStorageEngine:Landroid/content/SyncStorageEngine;

    move-object/from16 v50, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/content/SyncStorageEngine$SyncHistoryItem;->authorityId:I

    move/from16 v51, v0

    invoke-virtual/range {v50 .. v51}, Landroid/content/SyncStorageEngine;->getAuthority(I)Landroid/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v8

    .line 1254
    .local v8, authority:Landroid/content/SyncStorageEngine$AuthorityInfo;
    if-eqz v8, :cond_4

    .line 1255
    iget-object v11, v8, Landroid/content/SyncStorageEngine$AuthorityInfo;->authority:Ljava/lang/String;

    .line 1256
    .local v11, authorityName:Ljava/lang/String;
    new-instance v50, Ljava/lang/StringBuilder;

    invoke-direct/range {v50 .. v50}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v8, Landroid/content/SyncStorageEngine$AuthorityInfo;->account:Landroid/accounts/Account;

    move-object/from16 v51, v0

    move-object/from16 v0, v51

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object/from16 v51, v0

    invoke-virtual/range {v50 .. v51}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v50

    const-string v51, "/"

    invoke-virtual/range {v50 .. v51}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v50

    iget-object v0, v8, Landroid/content/SyncStorageEngine$AuthorityInfo;->account:Landroid/accounts/Account;

    move-object/from16 v51, v0

    move-object/from16 v0, v51

    iget-object v0, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v51, v0

    invoke-virtual/range {v50 .. v51}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v50

    invoke-virtual/range {v50 .. v50}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1262
    .local v5, accountKey:Ljava/lang/String;
    :goto_1
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v30

    .line 1263
    .local v30, length:I
    move/from16 v0, v30

    move/from16 v1, v32

    if-le v0, v1, :cond_0

    .line 1264
    move/from16 v32, v30

    .line 1266
    :cond_0
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v30

    .line 1267
    move/from16 v0, v30

    move/from16 v1, v31

    if-le v0, v1, :cond_1

    .line 1268
    move/from16 v31, v30

    .line 1271
    :cond_1
    move-object/from16 v0, v25

    iget-wide v0, v0, Landroid/content/SyncStorageEngine$SyncHistoryItem;->elapsedTime:J

    move-wide/from16 v17, v0

    .line 1272
    .local v17, elapsedTime:J
    add-long v46, v46, v17

    .line 1273
    const-wide/16 v50, 0x1

    add-long v48, v48, v50

    .line 1274
    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/SyncManager$AuthoritySyncStats;

    .line 1275
    .local v12, authoritySyncStats:Landroid/content/SyncManager$AuthoritySyncStats;
    if-nez v12, :cond_2

    .line 1276
    new-instance v12, Landroid/content/SyncManager$AuthoritySyncStats;

    .end local v12           #authoritySyncStats:Landroid/content/SyncManager$AuthoritySyncStats;
    const/16 v50, 0x0

    move-object/from16 v0, v50

    invoke-direct {v12, v11, v0}, Landroid/content/SyncManager$AuthoritySyncStats;-><init>(Ljava/lang/String;Landroid/content/SyncManager$1;)V

    .line 1277
    .restart local v12       #authoritySyncStats:Landroid/content/SyncManager$AuthoritySyncStats;
    invoke-interface {v10, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1279
    :cond_2
    iget-wide v0, v12, Landroid/content/SyncManager$AuthoritySyncStats;->elapsedTime:J

    move-wide/from16 v50, v0

    add-long v50, v50, v17

    move-wide/from16 v0, v50

    iput-wide v0, v12, Landroid/content/SyncManager$AuthoritySyncStats;->elapsedTime:J

    .line 1280
    iget v0, v12, Landroid/content/SyncManager$AuthoritySyncStats;->times:I

    move/from16 v50, v0

    add-int/lit8 v50, v50, 0x1

    move/from16 v0, v50

    iput v0, v12, Landroid/content/SyncManager$AuthoritySyncStats;->times:I

    .line 1281
    iget-object v6, v12, Landroid/content/SyncManager$AuthoritySyncStats;->accountMap:Ljava/util/Map;

    .line 1282
    .local v6, accountMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Landroid/content/SyncManager$AccountSyncStats;>;"
    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/SyncManager$AccountSyncStats;

    .line 1283
    .local v7, accountSyncStats:Landroid/content/SyncManager$AccountSyncStats;
    if-nez v7, :cond_3

    .line 1284
    new-instance v7, Landroid/content/SyncManager$AccountSyncStats;

    .end local v7           #accountSyncStats:Landroid/content/SyncManager$AccountSyncStats;
    const/16 v50, 0x0

    move-object/from16 v0, v50

    invoke-direct {v7, v5, v0}, Landroid/content/SyncManager$AccountSyncStats;-><init>(Ljava/lang/String;Landroid/content/SyncManager$1;)V

    .line 1285
    .restart local v7       #accountSyncStats:Landroid/content/SyncManager$AccountSyncStats;
    invoke-interface {v6, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1287
    :cond_3
    iget-wide v0, v7, Landroid/content/SyncManager$AccountSyncStats;->elapsedTime:J

    move-wide/from16 v50, v0

    add-long v50, v50, v17

    move-wide/from16 v0, v50

    iput-wide v0, v7, Landroid/content/SyncManager$AccountSyncStats;->elapsedTime:J

    .line 1288
    iget v0, v7, Landroid/content/SyncManager$AccountSyncStats;->times:I

    move/from16 v50, v0

    add-int/lit8 v50, v50, 0x1

    move/from16 v0, v50

    iput v0, v7, Landroid/content/SyncManager$AccountSyncStats;->times:I

    goto/16 :goto_0

    .line 1258
    .end local v5           #accountKey:Ljava/lang/String;
    .end local v6           #accountMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Landroid/content/SyncManager$AccountSyncStats;>;"
    .end local v7           #accountSyncStats:Landroid/content/SyncManager$AccountSyncStats;
    .end local v11           #authorityName:Ljava/lang/String;
    .end local v12           #authoritySyncStats:Landroid/content/SyncManager$AuthoritySyncStats;
    .end local v17           #elapsedTime:J
    .end local v30           #length:I
    :cond_4
    const-string v11, "Unknown"

    .line 1259
    .restart local v11       #authorityName:Ljava/lang/String;
    const-string v5, "Unknown"

    .restart local v5       #accountKey:Ljava/lang/String;
    goto :goto_1

    .line 1292
    .end local v5           #accountKey:Ljava/lang/String;
    .end local v8           #authority:Landroid/content/SyncStorageEngine$AuthorityInfo;
    .end local v11           #authorityName:Ljava/lang/String;
    .end local v25           #item:Landroid/content/SyncStorageEngine$SyncHistoryItem;
    :cond_5
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1293
    const-string v50, "Detailed Statistics (Recent history):  %d (# of times) %ds (sync time)\n"

    const/16 v51, 0x2

    move/from16 v0, v51

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v51, v0

    const/16 v52, 0x0

    invoke-static/range {v48 .. v49}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v53

    aput-object v53, v51, v52

    const/16 v52, 0x1

    const-wide/16 v53, 0x3e8

    div-long v53, v46, v53

    invoke-static/range {v53 .. v54}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v53

    aput-object v53, v51, v52

    move-object/from16 v0, p1

    move-object/from16 v1, v50

    move-object/from16 v2, v51

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 1296
    new-instance v40, Ljava/util/ArrayList;

    invoke-interface {v10}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v50

    move-object/from16 v0, v40

    move-object/from16 v1, v50

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1298
    .local v40, sortedAuthorities:Ljava/util/List;,"Ljava/util/List<Landroid/content/SyncManager$AuthoritySyncStats;>;"
    new-instance v50, Landroid/content/SyncManager$9;

    move-object/from16 v0, v50

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/content/SyncManager$9;-><init>(Landroid/content/SyncManager;)V

    move-object/from16 v0, v40

    move-object/from16 v1, v50

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1310
    add-int/lit8 v50, v31, 0x3

    move/from16 v0, v32

    move/from16 v1, v50

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v33

    .line 1311
    .local v33, maxLength:I
    add-int/lit8 v50, v33, 0x4

    add-int/lit8 v50, v50, 0x2

    add-int/lit8 v50, v50, 0xa

    add-int/lit8 v35, v50, 0xb

    .line 1312
    .local v35, padLength:I
    move/from16 v0, v35

    new-array v13, v0, [C

    .line 1313
    .local v13, chars:[C
    const/16 v50, 0x2d

    move/from16 v0, v50

    invoke-static {v13, v0}, Ljava/util/Arrays;->fill([CC)V

    .line 1314
    new-instance v38, Ljava/lang/String;

    move-object/from16 v0, v38

    invoke-direct {v0, v13}, Ljava/lang/String;-><init>([C)V

    .line 1316
    .local v38, separator:Ljava/lang/String;
    const-string v50, "  %%-%ds: %%-9s  %%-11s\n"

    const/16 v51, 0x1

    move/from16 v0, v51

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v51, v0

    const/16 v52, 0x0

    add-int/lit8 v53, v33, 0x2

    invoke-static/range {v53 .. v53}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v53

    aput-object v53, v51, v52

    invoke-static/range {v50 .. v51}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 1317
    .local v9, authorityFormat:Ljava/lang/String;
    const-string v50, "    %%-%ds:   %%-9s  %%-11s\n"

    const/16 v51, 0x1

    move/from16 v0, v51

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v51, v0

    const/16 v52, 0x0

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v53

    aput-object v53, v51, v52

    invoke-static/range {v50 .. v51}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 1319
    .local v4, accountFormat:Ljava/lang/String;
    move-object/from16 v0, p1

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1320
    invoke-interface/range {v40 .. v40}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v23

    .end local v23           #i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v50

    if-eqz v50, :cond_7

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/SyncManager$AuthoritySyncStats;

    .line 1321
    .restart local v12       #authoritySyncStats:Landroid/content/SyncManager$AuthoritySyncStats;
    iget-object v0, v12, Landroid/content/SyncManager$AuthoritySyncStats;->name:Ljava/lang/String;

    move-object/from16 v34, v0

    .line 1327
    .local v34, name:Ljava/lang/String;
    iget-wide v0, v12, Landroid/content/SyncManager$AuthoritySyncStats;->elapsedTime:J

    move-wide/from16 v17, v0

    .line 1328
    .restart local v17       #elapsedTime:J
    iget v0, v12, Landroid/content/SyncManager$AuthoritySyncStats;->times:I

    move/from16 v44, v0

    .line 1329
    .local v44, times:I
    const-string v50, "%ds/%d%%"

    const/16 v51, 0x2

    move/from16 v0, v51

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v51, v0

    const/16 v52, 0x0

    const-wide/16 v53, 0x3e8

    div-long v53, v17, v53

    invoke-static/range {v53 .. v54}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v53

    aput-object v53, v51, v52

    const/16 v52, 0x1

    const-wide/16 v53, 0x64

    mul-long v53, v53, v17

    div-long v53, v53, v46

    invoke-static/range {v53 .. v54}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v53

    aput-object v53, v51, v52

    invoke-static/range {v50 .. v51}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v43

    .line 1332
    .local v43, timeStr:Ljava/lang/String;
    const-string v50, "%d/%d%%"

    const/16 v51, 0x2

    move/from16 v0, v51

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v51, v0

    const/16 v52, 0x0

    invoke-static/range {v44 .. v44}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v53

    aput-object v53, v51, v52

    const/16 v52, 0x1

    mul-int/lit8 v53, v44, 0x64

    move/from16 v0, v53

    int-to-long v0, v0

    move-wide/from16 v53, v0

    div-long v53, v53, v48

    invoke-static/range {v53 .. v54}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v53

    aput-object v53, v51, v52

    invoke-static/range {v50 .. v51}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v45

    .line 1335
    .local v45, timesStr:Ljava/lang/String;
    const/16 v50, 0x3

    move/from16 v0, v50

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v50, v0

    const/16 v51, 0x0

    aput-object v34, v50, v51

    const/16 v51, 0x1

    aput-object v45, v50, v51

    const/16 v51, 0x2

    aput-object v43, v50, v51

    move-object/from16 v0, p1

    move-object/from16 v1, v50

    invoke-virtual {v0, v9, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 1337
    new-instance v39, Ljava/util/ArrayList;

    iget-object v0, v12, Landroid/content/SyncManager$AuthoritySyncStats;->accountMap:Ljava/util/Map;

    move-object/from16 v50, v0

    invoke-interface/range {v50 .. v50}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v50

    move-object/from16 v0, v39

    move-object/from16 v1, v50

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1340
    .local v39, sortedAccounts:Ljava/util/List;,"Ljava/util/List<Landroid/content/SyncManager$AccountSyncStats;>;"
    new-instance v50, Landroid/content/SyncManager$10;

    move-object/from16 v0, v50

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/content/SyncManager$10;-><init>(Landroid/content/SyncManager;)V

    move-object/from16 v0, v39

    move-object/from16 v1, v50

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1351
    invoke-interface/range {v39 .. v39}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v24

    .local v24, i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v50

    if-eqz v50, :cond_6

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Landroid/content/SyncManager$AccountSyncStats;

    .line 1352
    .local v41, stats:Landroid/content/SyncManager$AccountSyncStats;
    move-object/from16 v0, v41

    iget-wide v0, v0, Landroid/content/SyncManager$AccountSyncStats;->elapsedTime:J

    move-wide/from16 v17, v0

    .line 1353
    move-object/from16 v0, v41

    iget v0, v0, Landroid/content/SyncManager$AccountSyncStats;->times:I

    move/from16 v44, v0

    .line 1354
    const-string v50, "%ds/%d%%"

    const/16 v51, 0x2

    move/from16 v0, v51

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v51, v0

    const/16 v52, 0x0

    const-wide/16 v53, 0x3e8

    div-long v53, v17, v53

    invoke-static/range {v53 .. v54}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v53

    aput-object v53, v51, v52

    const/16 v52, 0x1

    const-wide/16 v53, 0x64

    mul-long v53, v53, v17

    div-long v53, v53, v46

    invoke-static/range {v53 .. v54}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v53

    aput-object v53, v51, v52

    invoke-static/range {v50 .. v51}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v43

    .line 1357
    const-string v50, "%d/%d%%"

    const/16 v51, 0x2

    move/from16 v0, v51

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v51, v0

    const/16 v52, 0x0

    invoke-static/range {v44 .. v44}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v53

    aput-object v53, v51, v52

    const/16 v52, 0x1

    mul-int/lit8 v53, v44, 0x64

    move/from16 v0, v53

    int-to-long v0, v0

    move-wide/from16 v53, v0

    div-long v53, v53, v48

    invoke-static/range {v53 .. v54}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v53

    aput-object v53, v51, v52

    invoke-static/range {v50 .. v51}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v45

    .line 1360
    const/16 v50, 0x3

    move/from16 v0, v50

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v50, v0

    const/16 v51, 0x0

    move-object/from16 v0, v41

    iget-object v0, v0, Landroid/content/SyncManager$AccountSyncStats;->name:Ljava/lang/String;

    move-object/from16 v52, v0

    aput-object v52, v50, v51

    const/16 v51, 0x1

    aput-object v45, v50, v51

    const/16 v51, 0x2

    aput-object v43, v50, v51

    move-object/from16 v0, p1

    move-object/from16 v1, v50

    invoke-virtual {v0, v4, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    goto/16 :goto_3

    .line 1362
    .end local v41           #stats:Landroid/content/SyncManager$AccountSyncStats;
    :cond_6
    move-object/from16 v0, p1

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1365
    .end local v12           #authoritySyncStats:Landroid/content/SyncManager$AuthoritySyncStats;
    .end local v17           #elapsedTime:J
    .end local v24           #i$:Ljava/util/Iterator;
    .end local v34           #name:Ljava/lang/String;
    .end local v39           #sortedAccounts:Ljava/util/List;,"Ljava/util/List<Landroid/content/SyncManager$AccountSyncStats;>;"
    .end local v43           #timeStr:Ljava/lang/String;
    .end local v44           #times:I
    .end local v45           #timesStr:Ljava/lang/String;
    :cond_7
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1366
    const-string v50, "Recent Sync History"

    move-object/from16 v0, p1

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1367
    new-instance v50, Ljava/lang/StringBuilder;

    invoke-direct/range {v50 .. v50}, Ljava/lang/StringBuilder;-><init>()V

    const-string v51, "  %-"

    invoke-virtual/range {v50 .. v51}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v50

    move-object/from16 v0, v50

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v50

    const-string/jumbo v51, "s  %s\n"

    invoke-virtual/range {v50 .. v51}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v50

    invoke-virtual/range {v50 .. v50}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 1368
    .local v21, format:Ljava/lang/String;
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v29

    .line 1370
    .local v29, lastTimeMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    const/16 v22, 0x0

    .local v22, i:I
    :goto_4
    move/from16 v0, v22

    if-ge v0, v3, :cond_f

    .line 1371
    move-object/from16 v0, v26

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/content/SyncStorageEngine$SyncHistoryItem;

    .line 1372
    .restart local v25       #item:Landroid/content/SyncStorageEngine$SyncHistoryItem;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager;->mSyncStorageEngine:Landroid/content/SyncStorageEngine;

    move-object/from16 v50, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/content/SyncStorageEngine$SyncHistoryItem;->authorityId:I

    move/from16 v51, v0

    invoke-virtual/range {v50 .. v51}, Landroid/content/SyncStorageEngine;->getAuthority(I)Landroid/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v8

    .line 1376
    .restart local v8       #authority:Landroid/content/SyncStorageEngine$AuthorityInfo;
    if-eqz v8, :cond_b

    .line 1377
    iget-object v11, v8, Landroid/content/SyncStorageEngine$AuthorityInfo;->authority:Ljava/lang/String;

    .line 1378
    .restart local v11       #authorityName:Ljava/lang/String;
    new-instance v50, Ljava/lang/StringBuilder;

    invoke-direct/range {v50 .. v50}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v8, Landroid/content/SyncStorageEngine$AuthorityInfo;->account:Landroid/accounts/Account;

    move-object/from16 v51, v0

    move-object/from16 v0, v51

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object/from16 v51, v0

    invoke-virtual/range {v50 .. v51}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v50

    const-string v51, "/"

    invoke-virtual/range {v50 .. v51}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v50

    iget-object v0, v8, Landroid/content/SyncStorageEngine$AuthorityInfo;->account:Landroid/accounts/Account;

    move-object/from16 v51, v0

    move-object/from16 v0, v51

    iget-object v0, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v51, v0

    invoke-virtual/range {v50 .. v51}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v50

    invoke-virtual/range {v50 .. v50}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1383
    .restart local v5       #accountKey:Ljava/lang/String;
    :goto_5
    move-object/from16 v0, v25

    iget-wide v0, v0, Landroid/content/SyncStorageEngine$SyncHistoryItem;->elapsedTime:J

    move-wide/from16 v17, v0

    .line 1384
    .restart local v17       #elapsedTime:J
    new-instance v42, Landroid/text/format/Time;

    invoke-direct/range {v42 .. v42}, Landroid/text/format/Time;-><init>()V

    .line 1385
    .local v42, time:Landroid/text/format/Time;
    move-object/from16 v0, v25

    iget-wide v0, v0, Landroid/content/SyncStorageEngine$SyncHistoryItem;->eventTime:J

    move-wide/from16 v19, v0

    .line 1386
    .local v19, eventTime:J
    move-object/from16 v0, v42

    move-wide/from16 v1, v19

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 1388
    new-instance v50, Ljava/lang/StringBuilder;

    invoke-direct/range {v50 .. v50}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v50

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v50

    const-string v51, "/"

    invoke-virtual/range {v50 .. v51}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v50

    move-object/from16 v0, v50

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v50

    invoke-virtual/range {v50 .. v50}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    .line 1389
    .local v27, key:Ljava/lang/String;
    move-object/from16 v0, v29

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/lang/Long;

    .line 1391
    .local v28, lastEventTime:Ljava/lang/Long;
    if-nez v28, :cond_c

    .line 1392
    const-string v16, ""

    .line 1405
    .local v16, diffString:Ljava/lang/String;
    :goto_6
    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v50

    move-object/from16 v0, v29

    move-object/from16 v1, v27

    move-object/from16 v2, v50

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1407
    const-string v50, "  #%-3d: %s %8s  %5.1fs  %8s"

    const/16 v51, 0x5

    move/from16 v0, v51

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v51, v0

    const/16 v52, 0x0

    add-int/lit8 v53, v22, 0x1

    invoke-static/range {v53 .. v53}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v53

    aput-object v53, v51, v52

    const/16 v52, 0x1

    invoke-static/range {v19 .. v20}, Landroid/content/SyncManager;->formatTime(J)Ljava/lang/String;

    move-result-object v53

    aput-object v53, v51, v52

    const/16 v52, 0x2

    sget-object v53, Landroid/content/SyncStorageEngine;->SOURCES:[Ljava/lang/String;

    move-object/from16 v0, v25

    iget v0, v0, Landroid/content/SyncStorageEngine$SyncHistoryItem;->source:I

    move/from16 v54, v0

    aget-object v53, v53, v54

    aput-object v53, v51, v52

    const/16 v52, 0x3

    move-wide/from16 v0, v17

    long-to-float v0, v0

    move/from16 v53, v0

    const/high16 v54, 0x447a

    div-float v53, v53, v54

    invoke-static/range {v53 .. v53}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v53

    aput-object v53, v51, v52

    const/16 v52, 0x4

    aput-object v16, v51, v52

    move-object/from16 v0, p1

    move-object/from16 v1, v50

    move-object/from16 v2, v51

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 1413
    const/16 v50, 0x2

    move/from16 v0, v50

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v50, v0

    const/16 v51, 0x0

    aput-object v5, v50, v51

    const/16 v51, 0x1

    aput-object v11, v50, v51

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    move-object/from16 v2, v50

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 1415
    move-object/from16 v0, v25

    iget v0, v0, Landroid/content/SyncStorageEngine$SyncHistoryItem;->event:I

    move/from16 v50, v0

    const/16 v51, 0x1

    move/from16 v0, v50

    move/from16 v1, v51

    if-ne v0, v1, :cond_8

    move-object/from16 v0, v25

    iget-wide v0, v0, Landroid/content/SyncStorageEngine$SyncHistoryItem;->upstreamActivity:J

    move-wide/from16 v50, v0

    const-wide/16 v52, 0x0

    cmp-long v50, v50, v52

    if-nez v50, :cond_8

    move-object/from16 v0, v25

    iget-wide v0, v0, Landroid/content/SyncStorageEngine$SyncHistoryItem;->downstreamActivity:J

    move-wide/from16 v50, v0

    const-wide/16 v52, 0x0

    cmp-long v50, v50, v52

    if-eqz v50, :cond_9

    .line 1418
    :cond_8
    const-string v50, "    event=%d upstreamActivity=%d downstreamActivity=%d\n"

    const/16 v51, 0x3

    move/from16 v0, v51

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v51, v0

    const/16 v52, 0x0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/content/SyncStorageEngine$SyncHistoryItem;->event:I

    move/from16 v53, v0

    invoke-static/range {v53 .. v53}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v53

    aput-object v53, v51, v52

    const/16 v52, 0x1

    move-object/from16 v0, v25

    iget-wide v0, v0, Landroid/content/SyncStorageEngine$SyncHistoryItem;->upstreamActivity:J

    move-wide/from16 v53, v0

    invoke-static/range {v53 .. v54}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v53

    aput-object v53, v51, v52

    const/16 v52, 0x2

    move-object/from16 v0, v25

    iget-wide v0, v0, Landroid/content/SyncStorageEngine$SyncHistoryItem;->downstreamActivity:J

    move-wide/from16 v53, v0

    invoke-static/range {v53 .. v54}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v53

    aput-object v53, v51, v52

    move-object/from16 v0, p1

    move-object/from16 v1, v50

    move-object/from16 v2, v51

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 1423
    :cond_9
    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/content/SyncStorageEngine$SyncHistoryItem;->mesg:Ljava/lang/String;

    move-object/from16 v50, v0

    if-eqz v50, :cond_a

    const-string/jumbo v50, "success"

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/content/SyncStorageEngine$SyncHistoryItem;->mesg:Ljava/lang/String;

    move-object/from16 v51, v0

    invoke-virtual/range {v50 .. v51}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v50

    if-nez v50, :cond_a

    .line 1425
    const-string v50, "    mesg=%s\n"

    const/16 v51, 0x1

    move/from16 v0, v51

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v51, v0

    const/16 v52, 0x0

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/content/SyncStorageEngine$SyncHistoryItem;->mesg:Ljava/lang/String;

    move-object/from16 v53, v0

    aput-object v53, v51, v52

    move-object/from16 v0, p1

    move-object/from16 v1, v50

    move-object/from16 v2, v51

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 1370
    :cond_a
    add-int/lit8 v22, v22, 0x1

    goto/16 :goto_4

    .line 1380
    .end local v5           #accountKey:Ljava/lang/String;
    .end local v11           #authorityName:Ljava/lang/String;
    .end local v16           #diffString:Ljava/lang/String;
    .end local v17           #elapsedTime:J
    .end local v19           #eventTime:J
    .end local v27           #key:Ljava/lang/String;
    .end local v28           #lastEventTime:Ljava/lang/Long;
    .end local v42           #time:Landroid/text/format/Time;
    :cond_b
    const-string v11, "Unknown"

    .line 1381
    .restart local v11       #authorityName:Ljava/lang/String;
    const-string v5, "Unknown"

    .restart local v5       #accountKey:Ljava/lang/String;
    goto/16 :goto_5

    .line 1394
    .restart local v17       #elapsedTime:J
    .restart local v19       #eventTime:J
    .restart local v27       #key:Ljava/lang/String;
    .restart local v28       #lastEventTime:Ljava/lang/Long;
    .restart local v42       #time:Landroid/text/format/Time;
    :cond_c
    invoke-virtual/range {v28 .. v28}, Ljava/lang/Long;->longValue()J

    move-result-wide v50

    sub-long v50, v50, v19

    const-wide/16 v52, 0x3e8

    div-long v14, v50, v52

    .line 1395
    .local v14, diff:J
    const-wide/16 v50, 0x3c

    cmp-long v50, v14, v50

    if-gez v50, :cond_d

    .line 1396
    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v16

    .restart local v16       #diffString:Ljava/lang/String;
    goto/16 :goto_6

    .line 1397
    .end local v16           #diffString:Ljava/lang/String;
    :cond_d
    const-wide/16 v50, 0xe10

    cmp-long v50, v14, v50

    if-gez v50, :cond_e

    .line 1398
    const-string v50, "%02d:%02d"

    const/16 v51, 0x2

    move/from16 v0, v51

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v51, v0

    const/16 v52, 0x0

    const-wide/16 v53, 0x3c

    div-long v53, v14, v53

    invoke-static/range {v53 .. v54}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v53

    aput-object v53, v51, v52

    const/16 v52, 0x1

    const-wide/16 v53, 0x3c

    rem-long v53, v14, v53

    invoke-static/range {v53 .. v54}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v53

    aput-object v53, v51, v52

    invoke-static/range {v50 .. v51}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    .restart local v16       #diffString:Ljava/lang/String;
    goto/16 :goto_6

    .line 1400
    .end local v16           #diffString:Ljava/lang/String;
    :cond_e
    const-wide/16 v50, 0xe10

    rem-long v36, v14, v50

    .line 1401
    .local v36, sec:J
    const-string v50, "%02d:%02d:%02d"

    const/16 v51, 0x3

    move/from16 v0, v51

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v51, v0

    const/16 v52, 0x0

    const-wide/16 v53, 0xe10

    div-long v53, v14, v53

    invoke-static/range {v53 .. v54}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v53

    aput-object v53, v51, v52

    const/16 v52, 0x1

    const-wide/16 v53, 0x3c

    div-long v53, v36, v53

    invoke-static/range {v53 .. v54}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v53

    aput-object v53, v51, v52

    const/16 v52, 0x2

    const-wide/16 v53, 0x3c

    rem-long v53, v36, v53

    invoke-static/range {v53 .. v54}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v53

    aput-object v53, v51, v52

    invoke-static/range {v50 .. v51}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    .restart local v16       #diffString:Ljava/lang/String;
    goto/16 :goto_6

    .line 1429
    .end local v3           #N:I
    .end local v4           #accountFormat:Ljava/lang/String;
    .end local v5           #accountKey:Ljava/lang/String;
    .end local v8           #authority:Landroid/content/SyncStorageEngine$AuthorityInfo;
    .end local v9           #authorityFormat:Ljava/lang/String;
    .end local v10           #authorityMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Landroid/content/SyncManager$AuthoritySyncStats;>;"
    .end local v11           #authorityName:Ljava/lang/String;
    .end local v13           #chars:[C
    .end local v14           #diff:J
    .end local v16           #diffString:Ljava/lang/String;
    .end local v17           #elapsedTime:J
    .end local v19           #eventTime:J
    .end local v21           #format:Ljava/lang/String;
    .end local v22           #i:I
    .end local v25           #item:Landroid/content/SyncStorageEngine$SyncHistoryItem;
    .end local v27           #key:Ljava/lang/String;
    .end local v28           #lastEventTime:Ljava/lang/Long;
    .end local v29           #lastTimeMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    .end local v31           #maxAccount:I
    .end local v32           #maxAuthority:I
    .end local v33           #maxLength:I
    .end local v35           #padLength:I
    .end local v36           #sec:J
    .end local v38           #separator:Ljava/lang/String;
    .end local v40           #sortedAuthorities:Ljava/util/List;,"Ljava/util/List<Landroid/content/SyncManager$AuthoritySyncStats;>;"
    .end local v42           #time:Landroid/text/format/Time;
    .end local v46           #totalElapsedTime:J
    .end local v48           #totalTimes:J
    :cond_f
    return-void
.end method

.method private dumpTimeSec(Ljava/io/PrintWriter;J)V
    .locals 4
    .parameter "pw"
    .parameter "time"

    .prologue
    .line 1215
    const-wide/16 v0, 0x3e8

    div-long v0, p2, v0

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    const/16 v0, 0x2e

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    const-wide/16 v0, 0x64

    div-long v0, p2, v0

    const-wide/16 v2, 0xa

    rem-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    .line 1216
    const/16 v0, 0x73

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 1217
    return-void
.end method

.method private ensureAlarmService()V
    .locals 2

    .prologue
    .line 412
    iget-object v0, p0, Landroid/content/SyncManager;->mAlarmService:Landroid/app/AlarmManager;

    if-nez v0, :cond_0

    .line 413
    iget-object v0, p0, Landroid/content/SyncManager;->mContext:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Landroid/content/SyncManager;->mAlarmService:Landroid/app/AlarmManager;

    .line 415
    :cond_0
    return-void
.end method

.method static formatTime(J)Ljava/lang/String;
    .locals 2
    .parameter "time"

    .prologue
    .line 1047
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    .line 1048
    .local v0, tobj:Landroid/text/format/Time;
    invoke-virtual {v0, p0, p1}, Landroid/text/format/Time;->set(J)V

    .line 1049
    const-string v1, "%Y-%m-%d %H:%M:%S"

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getConnectivityManager()Landroid/net/ConnectivityManager;
    .locals 2

    .prologue
    .line 293
    monitor-enter p0

    .line 294
    :try_start_0
    iget-object v0, p0, Landroid/content/SyncManager;->mConnManagerDoNotUseDirectly:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_0

    .line 295
    iget-object v0, p0, Landroid/content/SyncManager;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Landroid/content/SyncManager;->mConnManagerDoNotUseDirectly:Landroid/net/ConnectivityManager;

    .line 298
    :cond_0
    iget-object v0, p0, Landroid/content/SyncManager;->mConnManagerDoNotUseDirectly:Landroid/net/ConnectivityManager;

    monitor-exit p0

    return-object v0

    .line 299
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private getLastFailureMessage(I)Ljava/lang/String;
    .locals 1
    .parameter "code"

    .prologue
    .line 1184
    packed-switch p1, :pswitch_data_0

    .line 1210
    const-string/jumbo v0, "unknown"

    :goto_0
    return-object v0

    .line 1186
    :pswitch_0
    const-string/jumbo v0, "sync already in progress"

    goto :goto_0

    .line 1189
    :pswitch_1
    const-string v0, "authentication error"

    goto :goto_0

    .line 1192
    :pswitch_2
    const-string v0, "I/O error"

    goto :goto_0

    .line 1195
    :pswitch_3
    const-string/jumbo v0, "parse error"

    goto :goto_0

    .line 1198
    :pswitch_4
    const-string v0, "conflict error"

    goto :goto_0

    .line 1201
    :pswitch_5
    const-string/jumbo v0, "too many deletions error"

    goto :goto_0

    .line 1204
    :pswitch_6
    const-string/jumbo v0, "too many retries error"

    goto :goto_0

    .line 1207
    :pswitch_7
    const-string v0, "internal error"

    goto :goto_0

    .line 1184
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private getUiContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 905
    iget-object v0, p0, Landroid/content/SyncManager;->mUiContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 906
    iget-object v0, p0, Landroid/content/SyncManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/app/ThemeUtils;->createUiContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroid/content/SyncManager;->mUiContext:Landroid/content/Context;

    .line 908
    :cond_0
    iget-object v0, p0, Landroid/content/SyncManager;->mUiContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/content/SyncManager;->mUiContext:Landroid/content/Context;

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Landroid/content/SyncManager;->mContext:Landroid/content/Context;

    goto :goto_0
.end method

.method private increaseBackoffSetting(Landroid/content/SyncOperation;)V
    .locals 17
    .parameter "op"

    .prologue
    .line 738
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    .line 740
    .local v10, now:J
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/content/SyncManager;->mSyncStorageEngine:Landroid/content/SyncStorageEngine;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/content/SyncOperation;->account:Landroid/accounts/Account;

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/content/SyncOperation;->authority:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/SyncStorageEngine;->getBackoff(Landroid/accounts/Account;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v12

    .line 742
    .local v12, previousSettings:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    const-wide/16 v6, -0x1

    .line 743
    .local v6, newDelayInMs:J
    if-eqz v12, :cond_2

    .line 746
    iget-object v1, v12, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    cmp-long v1, v10, v1

    if-gez v1, :cond_1

    .line 747
    const-string v1, "SyncManager"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 748
    const-string v2, "SyncManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Still in backoff, do not increase it. Remaining: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, v12, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    sub-long/2addr v13, v10

    const-wide/16 v15, 0x3e8

    div-long/2addr v13, v15

    invoke-virtual {v3, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " seconds."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 781
    :cond_0
    :goto_0
    return-void

    .line 754
    :cond_1
    iget-object v1, v12, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v13, 0x2

    mul-long v6, v1, v13

    .line 756
    :cond_2
    const-wide/16 v1, 0x0

    cmp-long v1, v6, v1

    if-gtz v1, :cond_3

    .line 758
    const-wide/16 v1, 0x7530

    const-wide/32 v13, 0x80e8

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2, v13, v14}, Landroid/content/SyncManager;->jitterize(JJ)J

    move-result-wide v6

    .line 763
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/content/SyncManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "sync_max_retry_delay_in_seconds"

    const-wide/16 v13, 0xe10

    invoke-static {v1, v2, v13, v14}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v8

    .line 766
    .local v8, maxSyncRetryTimeInSeconds:J
    const-wide/16 v1, 0x3e8

    mul-long/2addr v1, v8

    cmp-long v1, v6, v1

    if-lez v1, :cond_4

    .line 767
    const-wide/16 v1, 0x3e8

    mul-long v6, v8, v1

    .line 770
    :cond_4
    add-long v4, v10, v6

    .line 772
    .local v4, backoff:J
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/content/SyncManager;->mSyncStorageEngine:Landroid/content/SyncStorageEngine;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/content/SyncOperation;->account:Landroid/accounts/Account;

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/content/SyncOperation;->authority:Ljava/lang/String;

    invoke-virtual/range {v1 .. v7}, Landroid/content/SyncStorageEngine;->setBackoff(Landroid/accounts/Account;Ljava/lang/String;JJ)V

    .line 775
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    move-object/from16 v0, p1

    iput-object v1, v0, Landroid/content/SyncOperation;->backoff:Ljava/lang/Long;

    .line 776
    invoke-virtual/range {p1 .. p1}, Landroid/content/SyncOperation;->updateEffectiveRunTime()V

    .line 778
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/SyncManager;->mSyncQueue:Landroid/content/SyncQueue;

    monitor-enter v2

    .line 779
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/content/SyncManager;->mSyncQueue:Landroid/content/SyncQueue;

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/content/SyncOperation;->account:Landroid/accounts/Account;

    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/content/SyncOperation;->authority:Ljava/lang/String;

    invoke-virtual {v1, v3, v13, v4, v5}, Landroid/content/SyncQueue;->onBackoffChanged(Landroid/accounts/Account;Ljava/lang/String;J)V

    .line 780
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private initializeSyncAdapter(Landroid/accounts/Account;Ljava/lang/String;)V
    .locals 7
    .parameter "account"
    .parameter "authority"

    .prologue
    .line 418
    const-string v3, "SyncManager"

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 419
    const-string v3, "SyncManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "initializeSyncAdapter: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", authority "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    :cond_0
    iget-object v3, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-static {p2, v3}, Landroid/content/SyncAdapterType;->newKey(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SyncAdapterType;

    move-result-object v2

    .line 422
    .local v2, syncAdapterType:Landroid/content/SyncAdapterType;
    iget-object v3, p0, Landroid/content/SyncManager;->mSyncAdapters:Landroid/content/SyncAdaptersCache;

    invoke-virtual {v3, v2}, Landroid/content/SyncAdaptersCache;->getServiceInfo(Ljava/lang/Object;)Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    move-result-object v1

    .line 424
    .local v1, syncAdapterInfo:Landroid/content/pm/RegisteredServicesCache$ServiceInfo;,"Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    if-nez v1, :cond_2

    .line 425
    const-string v3, "SyncManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "can\'t find a sync adapter for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", removing"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    iget-object v3, p0, Landroid/content/SyncManager;->mSyncStorageEngine:Landroid/content/SyncStorageEngine;

    invoke-virtual {v3, p1, p2}, Landroid/content/SyncStorageEngine;->removeAuthority(Landroid/accounts/Account;Ljava/lang/String;)V

    .line 439
    :cond_1
    :goto_0
    return-void

    .line 430
    :cond_2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 431
    .local v0, intent:Landroid/content/Intent;
    const-string v3, "android.content.SyncAdapter"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 432
    iget-object v3, v1, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 433
    iget-object v3, p0, Landroid/content/SyncManager;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/content/SyncManager$InitializerServiceConnection;

    iget-object v5, p0, Landroid/content/SyncManager;->mContext:Landroid/content/Context;

    iget-object v6, p0, Landroid/content/SyncManager;->mMainHandler:Landroid/os/Handler;

    invoke-direct {v4, p1, p2, v5, v6}, Landroid/content/SyncManager$InitializerServiceConnection;-><init>(Landroid/accounts/Account;Ljava/lang/String;Landroid/content/Context;Landroid/os/Handler;)V

    const/16 v5, 0x15

    invoke-virtual {v3, v0, v4, v5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 437
    const-string v3, "SyncManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "initializeSyncAdapter: failed to bind to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isSyncStillActive(Landroid/content/SyncManager$ActiveSyncContext;)Z
    .locals 3
    .parameter "activeSyncContext"

    .prologue
    .line 2475
    iget-object v2, p0, Landroid/content/SyncManager;->mActiveSyncContexts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/SyncManager$ActiveSyncContext;

    .line 2476
    .local v1, sync:Landroid/content/SyncManager$ActiveSyncContext;
    if-ne v1, p1, :cond_0

    .line 2477
    const/4 v2, 0x1

    .line 2480
    .end local v1           #sync:Landroid/content/SyncManager$ActiveSyncContext;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private jitterize(JJ)J
    .locals 5
    .parameter "minValue"
    .parameter "maxValue"

    .prologue
    .line 398
    new-instance v0, Ljava/util/Random;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    invoke-direct {v0, v3, v4}, Ljava/util/Random;-><init>(J)V

    .line 399
    .local v0, random:Ljava/util/Random;
    sub-long v1, p3, p1

    .line 400
    .local v1, spread:J
    const-wide/32 v3, 0x7fffffff

    cmp-long v3, v1, v3

    if-lez v3, :cond_0

    .line 401
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "the difference between the maxValue and the minValue must be less than 2147483647"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 404
    :cond_0
    long-to-int v3, v1

    invoke-virtual {v0, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v3, p1

    return-wide v3
.end method

.method private readDataConnectionState()Z
    .locals 2

    .prologue
    .line 274
    invoke-direct {p0}, Landroid/content/SyncManager;->getConnectivityManager()Landroid/net/ConnectivityManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 275
    .local v0, networkInfo:Landroid/net/NetworkInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private sendCancelSyncsMessage(Landroid/accounts/Account;Ljava/lang/String;)V
    .locals 3
    .parameter "account"
    .parameter "authority"

    .prologue
    .line 705
    const-string v1, "SyncManager"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "SyncManager"

    const-string/jumbo v2, "sending MESSAGE_CANCEL"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 706
    :cond_0
    iget-object v1, p0, Landroid/content/SyncManager;->mSyncHandler:Landroid/content/SyncManager$SyncHandler;

    invoke-virtual {v1}, Landroid/content/SyncManager$SyncHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 707
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x6

    iput v1, v0, Landroid/os/Message;->what:I

    .line 708
    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 709
    iget-object v1, p0, Landroid/content/SyncManager;->mSyncHandler:Landroid/content/SyncManager$SyncHandler;

    invoke-virtual {v1, v0}, Landroid/content/SyncManager$SyncHandler;->sendMessage(Landroid/os/Message;)Z

    .line 710
    return-void
.end method

.method private sendCheckAlarmsMessage()V
    .locals 2

    .prologue
    .line 691
    const-string v0, "SyncManager"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "SyncManager"

    const-string/jumbo v1, "sending MESSAGE_CHECK_ALARMS"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    :cond_0
    iget-object v0, p0, Landroid/content/SyncManager;->mSyncHandler:Landroid/content/SyncManager$SyncHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/content/SyncManager$SyncHandler;->sendEmptyMessage(I)Z

    .line 693
    return-void
.end method

.method private sendSyncAlarmMessage()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 686
    const-string v0, "SyncManager"

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "SyncManager"

    const-string/jumbo v1, "sending MESSAGE_SYNC_ALARM"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 687
    :cond_0
    iget-object v0, p0, Landroid/content/SyncManager;->mSyncHandler:Landroid/content/SyncManager$SyncHandler;

    invoke-virtual {v0, v2}, Landroid/content/SyncManager$SyncHandler;->sendEmptyMessage(I)Z

    .line 688
    return-void
.end method

.method private sendSyncFinishedOrCanceledMessage(Landroid/content/SyncManager$ActiveSyncContext;Landroid/content/SyncResult;)V
    .locals 3
    .parameter "syncContext"
    .parameter "syncResult"

    .prologue
    .line 697
    const-string v1, "SyncManager"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "SyncManager"

    const-string/jumbo v2, "sending MESSAGE_SYNC_FINISHED"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 698
    :cond_0
    iget-object v1, p0, Landroid/content/SyncManager;->mSyncHandler:Landroid/content/SyncManager$SyncHandler;

    invoke-virtual {v1}, Landroid/content/SyncManager$SyncHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 699
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 700
    new-instance v1, Landroid/content/SyncManager$SyncHandlerMessagePayload;

    invoke-direct {v1, p0, p1, p2}, Landroid/content/SyncManager$SyncHandlerMessagePayload;-><init>(Landroid/content/SyncManager;Landroid/content/SyncManager$ActiveSyncContext;Landroid/content/SyncResult;)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 701
    iget-object v1, p0, Landroid/content/SyncManager;->mSyncHandler:Landroid/content/SyncManager$SyncHandler;

    invoke-virtual {v1, v0}, Landroid/content/SyncManager$SyncHandler;->sendMessage(Landroid/os/Message;)Z

    .line 702
    return-void
.end method

.method private setDelayUntilTime(Landroid/content/SyncOperation;J)V
    .locals 10
    .parameter "op"
    .parameter "delayUntilSeconds"

    .prologue
    .line 784
    const-wide/16 v6, 0x3e8

    mul-long v2, p2, v6

    .line 785
    .local v2, delayUntil:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 787
    .local v0, absoluteNow:J
    cmp-long v6, v2, v0

    if-lez v6, :cond_0

    .line 788
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long v8, v2, v0

    add-long v4, v6, v8

    .line 792
    .local v4, newDelayUntilTime:J
    :goto_0
    iget-object v6, p0, Landroid/content/SyncManager;->mSyncStorageEngine:Landroid/content/SyncStorageEngine;

    iget-object v7, p1, Landroid/content/SyncOperation;->account:Landroid/accounts/Account;

    iget-object v8, p1, Landroid/content/SyncOperation;->authority:Ljava/lang/String;

    invoke-virtual {v6, v7, v8, v4, v5}, Landroid/content/SyncStorageEngine;->setDelayUntilTime(Landroid/accounts/Account;Ljava/lang/String;J)V

    .line 793
    iget-object v7, p0, Landroid/content/SyncManager;->mSyncQueue:Landroid/content/SyncQueue;

    monitor-enter v7

    .line 794
    :try_start_0
    iget-object v6, p0, Landroid/content/SyncManager;->mSyncQueue:Landroid/content/SyncQueue;

    iget-object v8, p1, Landroid/content/SyncOperation;->account:Landroid/accounts/Account;

    iget-object v9, p1, Landroid/content/SyncOperation;->authority:Ljava/lang/String;

    invoke-virtual {v6, v8, v9, v4, v5}, Landroid/content/SyncQueue;->onDelayUntilTimeChanged(Landroid/accounts/Account;Ljava/lang/String;J)V

    .line 795
    monitor-exit v7

    .line 796
    return-void

    .line 790
    .end local v4           #newDelayUntilTime:J
    :cond_0
    const-wide/16 v4, 0x0

    .restart local v4       #newDelayUntilTime:J
    goto :goto_0

    .line 795
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6
.end method


# virtual methods
.method public cancelActiveSync(Landroid/accounts/Account;Ljava/lang/String;)V
    .locals 0
    .parameter "account"
    .parameter "authority"

    .prologue
    .line 804
    invoke-direct {p0, p1, p2}, Landroid/content/SyncManager;->sendCancelSyncsMessage(Landroid/accounts/Account;Ljava/lang/String;)V

    .line 805
    return-void
.end method

.method public clearScheduledSyncOperations(Landroid/accounts/Account;Ljava/lang/String;)V
    .locals 7
    .parameter "account"
    .parameter "authority"

    .prologue
    const-wide/16 v3, -0x1

    .line 837
    iget-object v1, p0, Landroid/content/SyncManager;->mSyncQueue:Landroid/content/SyncQueue;

    monitor-enter v1

    .line 838
    :try_start_0
    iget-object v0, p0, Landroid/content/SyncManager;->mSyncQueue:Landroid/content/SyncQueue;

    invoke-virtual {v0, p1, p2}, Landroid/content/SyncQueue;->remove(Landroid/accounts/Account;Ljava/lang/String;)V

    .line 839
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 840
    iget-object v0, p0, Landroid/content/SyncManager;->mSyncStorageEngine:Landroid/content/SyncStorageEngine;

    move-object v1, p1

    move-object v2, p2

    move-wide v5, v3

    invoke-virtual/range {v0 .. v6}, Landroid/content/SyncStorageEngine;->setBackoff(Landroid/accounts/Account;Ljava/lang/String;JJ)V

    .line 842
    return-void

    .line 839
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;)V
    .locals 4
    .parameter "fd"
    .parameter "pw"

    .prologue
    .line 1036
    invoke-virtual {p0, p2}, Landroid/content/SyncManager;->dumpSyncState(Ljava/io/PrintWriter;)V

    .line 1037
    invoke-virtual {p0, p2}, Landroid/content/SyncManager;->dumpSyncHistory(Ljava/io/PrintWriter;)V

    .line 1039
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1040
    const-string v2, "SyncAdapters:"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1041
    iget-object v2, p0, Landroid/content/SyncManager;->mSyncAdapters:Landroid/content/SyncAdaptersCache;

    invoke-virtual {v2}, Landroid/content/SyncAdaptersCache;->getAllServices()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    .line 1042
    .local v1, info:Landroid/content/pm/RegisteredServicesCache$ServiceInfo;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 1044
    .end local v1           #info:Landroid/content/pm/RegisteredServicesCache$ServiceInfo;
    :cond_0
    return-void
.end method

.method protected dumpSyncHistory(Ljava/io/PrintWriter;)V
    .locals 0
    .parameter "pw"

    .prologue
    .line 1234
    invoke-direct {p0, p1}, Landroid/content/SyncManager;->dumpRecentHistory(Ljava/io/PrintWriter;)V

    .line 1235
    invoke-direct {p0, p1}, Landroid/content/SyncManager;->dumpDayStatistics(Ljava/io/PrintWriter;)V

    .line 1236
    return-void
.end method

.method protected dumpSyncState(Ljava/io/PrintWriter;)V
    .locals 30
    .parameter "pw"

    .prologue
    .line 1053
    const-string v25, "data connected: "

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/content/SyncManager;->mDataConnectionIsConnected:Z

    move/from16 v25, v0

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 1054
    const-string/jumbo v25, "memory low: "

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/content/SyncManager;->mStorageIsLow:Z

    move/from16 v25, v0

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 1056
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/content/SyncManager;->mAccounts:[Landroid/accounts/Account;

    .line 1057
    .local v4, accounts:[Landroid/accounts/Account;
    const-string v25, "accounts: "

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1058
    sget-object v25, Landroid/content/SyncManager;->INITIAL_ACCOUNTS_ARRAY:[Landroid/accounts/Account;

    move-object/from16 v0, v25

    if-eq v4, v0, :cond_0

    .line 1059
    array-length v0, v4

    move/from16 v25, v0

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 1063
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v18

    .line 1064
    .local v18, now:J
    const-string/jumbo v25, "now: "

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p1

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    .line 1065
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, " ("

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v26

    invoke-static/range {v26 .. v27}, Landroid/content/SyncManager;->formatTime(J)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ")"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1066
    const-string/jumbo v25, "uptime: "

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-wide/16 v25, 0x3e8

    div-long v25, v18, v25

    invoke-static/range {v25 .. v26}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1067
    const-string v25, " (HH:MM:SS)"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1068
    const-string/jumbo v25, "time spent syncing: "

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1069
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager;->mSyncHandler:Landroid/content/SyncManager$SyncHandler;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/content/SyncManager$SyncHandler;->mSyncTimeTracker:Landroid/content/SyncManager$SyncTimeTracker;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/content/SyncManager$SyncTimeTracker;->timeSpentSyncing()J

    move-result-wide v25

    const-wide/16 v27, 0x3e8

    div-long v25, v25, v27

    invoke-static/range {v25 .. v26}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1071
    const-string v25, " (HH:MM:SS), sync "

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1072
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager;->mSyncHandler:Landroid/content/SyncManager$SyncHandler;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/content/SyncManager$SyncHandler;->mSyncTimeTracker:Landroid/content/SyncManager$SyncTimeTracker;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-boolean v0, v0, Landroid/content/SyncManager$SyncTimeTracker;->mLastWasSyncing:Z

    move/from16 v25, v0

    if-eqz v25, :cond_1

    const-string v25, ""

    :goto_1
    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1073
    const-string v25, "in progress"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1074
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager;->mSyncHandler:Landroid/content/SyncManager$SyncHandler;

    move-object/from16 v25, v0

    #getter for: Landroid/content/SyncManager$SyncHandler;->mAlarmScheduleTime:Ljava/lang/Long;
    invoke-static/range {v25 .. v25}, Landroid/content/SyncManager$SyncHandler;->access$1400(Landroid/content/SyncManager$SyncHandler;)Ljava/lang/Long;

    move-result-object v25

    if-eqz v25, :cond_2

    .line 1075
    const-string/jumbo v25, "next alarm time: "

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager;->mSyncHandler:Landroid/content/SyncManager$SyncHandler;

    move-object/from16 v25, v0

    #getter for: Landroid/content/SyncManager$SyncHandler;->mAlarmScheduleTime:Ljava/lang/Long;
    invoke-static/range {v25 .. v25}, Landroid/content/SyncManager$SyncHandler;->access$1400(Landroid/content/SyncManager$SyncHandler;)Ljava/lang/Long;

    move-result-object v25

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 1076
    const-string v25, " ("

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1077
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager;->mSyncHandler:Landroid/content/SyncManager$SyncHandler;

    move-object/from16 v25, v0

    #getter for: Landroid/content/SyncManager$SyncHandler;->mAlarmScheduleTime:Ljava/lang/Long;
    invoke-static/range {v25 .. v25}, Landroid/content/SyncManager$SyncHandler;->access$1400(Landroid/content/SyncManager$SyncHandler;)Ljava/lang/Long;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Long;->longValue()J

    move-result-wide v25

    sub-long v25, v25, v18

    const-wide/16 v27, 0x3e8

    div-long v25, v25, v27

    invoke-static/range {v25 .. v26}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1078
    const-string v25, " (HH:MM:SS) from now)"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1083
    :goto_2
    const-string/jumbo v25, "notification info: "

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1084
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    .line 1085
    .local v21, sb:Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager;->mSyncHandler:Landroid/content/SyncManager$SyncHandler;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/content/SyncManager$SyncHandler;->mSyncNotificationInfo:Landroid/content/SyncManager$SyncHandler$SyncNotificationInfo;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/SyncManager$SyncHandler$SyncNotificationInfo;->toString(Ljava/lang/StringBuilder;)V

    .line 1086
    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1088
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1089
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Active Syncs: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager;->mActiveSyncContexts:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1090
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager;->mActiveSyncContexts:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/SyncManager$ActiveSyncContext;

    .line 1091
    .local v5, activeSyncContext:Landroid/content/SyncManager$ActiveSyncContext;
    iget-wide v0, v5, Landroid/content/SyncManager$ActiveSyncContext;->mStartTime:J

    move-wide/from16 v25, v0

    sub-long v25, v18, v25

    const-wide/16 v27, 0x3e8

    div-long v7, v25, v27

    .line 1092
    .local v7, durationInSeconds:J
    const-string v25, "  "

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1093
    invoke-static {v7, v8}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1094
    const-string v25, " - "

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1095
    iget-object v0, v5, Landroid/content/SyncManager$ActiveSyncContext;->mSyncOperation:Landroid/content/SyncOperation;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Landroid/content/SyncOperation;->dump(Z)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1096
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    goto :goto_3

    .line 1061
    .end local v5           #activeSyncContext:Landroid/content/SyncManager$ActiveSyncContext;
    .end local v7           #durationInSeconds:J
    .end local v10           #i$:Ljava/util/Iterator;
    .end local v18           #now:J
    .end local v21           #sb:Ljava/lang/StringBuilder;
    :cond_0
    const-string/jumbo v25, "not known yet"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1072
    .restart local v18       #now:J
    :cond_1
    const-string/jumbo v25, "not "

    goto/16 :goto_1

    .line 1080
    :cond_2
    const-string/jumbo v25, "no alarm is scheduled (there had better not be any pending syncs)"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1099
    .restart local v10       #i$:Ljava/util/Iterator;
    .restart local v21       #sb:Ljava/lang/StringBuilder;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager;->mSyncQueue:Landroid/content/SyncQueue;

    move-object/from16 v26, v0

    monitor-enter v26

    .line 1100
    const/16 v25, 0x0

    :try_start_0
    move-object/from16 v0, v21

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1101
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager;->mSyncQueue:Landroid/content/SyncQueue;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/SyncQueue;->dump(Ljava/lang/StringBuilder;)V

    .line 1102
    monitor-exit v26
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1103
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1104
    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1107
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1108
    const-string v25, "Sync Status"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1109
    move-object v6, v4

    .local v6, arr$:[Landroid/accounts/Account;
    array-length v15, v6

    .local v15, len$:I
    const/4 v10, 0x0

    .local v10, i$:I
    move v11, v10

    .end local v10           #i$:I
    .local v11, i$:I
    :goto_4
    if-ge v11, v15, :cond_e

    aget-object v3, v6, v11

    .line 1110
    .local v3, account:Landroid/accounts/Account;
    const-string v25, "  Account "

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v3, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1111
    const-string v25, " "

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v3, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1112
    const-string v25, ":"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1114
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager;->mSyncAdapters:Landroid/content/SyncAdaptersCache;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/content/SyncAdaptersCache;->getAllServices()Ljava/util/Collection;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .end local v11           #i$:I
    .local v10, i$:Ljava/util/Iterator;
    :cond_4
    :goto_5
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_d

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    .line 1115
    .local v24, syncAdapterType:Landroid/content/pm/RegisteredServicesCache$ServiceInfo;,"Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    move-object/from16 v25, v0

    check-cast v25, Landroid/content/SyncAdapterType;

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    move-object/from16 v25, v0

    iget-object v0, v3, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_4

    .line 1119
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager;->mSyncStorageEngine:Landroid/content/SyncStorageEngine;

    move-object/from16 v26, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    move-object/from16 v25, v0

    check-cast v25, Landroid/content/SyncAdapterType;

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-virtual {v0, v3, v1}, Landroid/content/SyncStorageEngine;->getOrCreateAuthority(Landroid/accounts/Account;Ljava/lang/String;)Landroid/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v22

    .line 1121
    .local v22, settings:Landroid/content/SyncStorageEngine$AuthorityInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager;->mSyncStorageEngine:Landroid/content/SyncStorageEngine;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/SyncStorageEngine;->getOrCreateSyncStatus(Landroid/content/SyncStorageEngine$AuthorityInfo;)Landroid/content/SyncStatusInfo;

    move-result-object v23

    .line 1122
    .local v23, status:Landroid/content/SyncStatusInfo;
    const-string v25, "    "

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/content/SyncStorageEngine$AuthorityInfo;->authority:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1123
    const-string v25, ":"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1124
    const-string v25, "      settings:"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1125
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, " "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v22

    iget v0, v0, Landroid/content/SyncStorageEngine$AuthorityInfo;->syncable:I

    move/from16 v25, v0

    if-lez v25, :cond_8

    const-string/jumbo v25, "syncable"

    :goto_6
    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1128
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, ", "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v22

    iget-boolean v0, v0, Landroid/content/SyncStorageEngine$AuthorityInfo;->enabled:Z

    move/from16 v25, v0

    if-eqz v25, :cond_a

    const-string v25, "enabled"

    :goto_7
    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1129
    move-object/from16 v0, v22

    iget-wide v0, v0, Landroid/content/SyncStorageEngine$AuthorityInfo;->delayUntil:J

    move-wide/from16 v25, v0

    cmp-long v25, v25, v18

    if-lez v25, :cond_5

    .line 1130
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, ", delay for "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v22

    iget-wide v0, v0, Landroid/content/SyncStorageEngine$AuthorityInfo;->delayUntil:J

    move-wide/from16 v26, v0

    sub-long v26, v26, v18

    const-wide/16 v28, 0x3e8

    div-long v26, v26, v28

    invoke-virtual/range {v25 .. v27}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " sec"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1133
    :cond_5
    move-object/from16 v0, v22

    iget-wide v0, v0, Landroid/content/SyncStorageEngine$AuthorityInfo;->backoffTime:J

    move-wide/from16 v25, v0

    cmp-long v25, v25, v18

    if-lez v25, :cond_6

    .line 1134
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, ", backoff for "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v22

    iget-wide v0, v0, Landroid/content/SyncStorageEngine$AuthorityInfo;->backoffTime:J

    move-wide/from16 v26, v0

    sub-long v26, v26, v18

    const-wide/16 v28, 0x3e8

    div-long v26, v26, v28

    invoke-virtual/range {v25 .. v27}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " sec"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1137
    :cond_6
    move-object/from16 v0, v22

    iget-wide v0, v0, Landroid/content/SyncStorageEngine$AuthorityInfo;->backoffDelay:J

    move-wide/from16 v25, v0

    const-wide/16 v27, 0x0

    cmp-long v25, v25, v27

    if-lez v25, :cond_7

    .line 1138
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, ", the backoff increment is "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v22

    iget-wide v0, v0, Landroid/content/SyncStorageEngine$AuthorityInfo;->backoffDelay:J

    move-wide/from16 v26, v0

    const-wide/16 v28, 0x3e8

    div-long v26, v26, v28

    invoke-virtual/range {v25 .. v27}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " sec"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1141
    :cond_7
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1142
    const/16 v20, 0x0

    .line 1143
    .local v20, periodicIndex:I
    :goto_8
    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/content/SyncStorageEngine$AuthorityInfo;->periodicSyncs:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v25

    move/from16 v0, v20

    move/from16 v1, v25

    if-ge v0, v1, :cond_b

    .line 1145
    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/content/SyncStorageEngine$AuthorityInfo;->periodicSyncs:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/util/Pair;

    .line 1146
    .local v12, info:Landroid/util/Pair;,"Landroid/util/Pair<Landroid/os/Bundle;Ljava/lang/Long;>;"
    move-object/from16 v0, v23

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/SyncStatusInfo;->getPeriodicSyncTime(I)J

    move-result-wide v13

    .line 1147
    .local v13, lastPeriodicTime:J
    iget-object v0, v12, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v25, v0

    check-cast v25, Ljava/lang/Long;

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Long;->longValue()J

    move-result-wide v25

    const-wide/16 v27, 0x3e8

    mul-long v25, v25, v27

    add-long v16, v13, v25

    .line 1148
    .local v16, nextPeriodicTime:J
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "      periodic period="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    iget-object v0, v12, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ", extras="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    iget-object v0, v12, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ", next="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-static/range {v16 .. v17}, Landroid/content/SyncManager;->formatTime(J)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1144
    add-int/lit8 v20, v20, 0x1

    goto :goto_8

    .line 1102
    .end local v3           #account:Landroid/accounts/Account;
    .end local v6           #arr$:[Landroid/accounts/Account;
    .end local v12           #info:Landroid/util/Pair;,"Landroid/util/Pair<Landroid/os/Bundle;Ljava/lang/Long;>;"
    .end local v13           #lastPeriodicTime:J
    .end local v15           #len$:I
    .end local v16           #nextPeriodicTime:J
    .end local v20           #periodicIndex:I
    .end local v22           #settings:Landroid/content/SyncStorageEngine$AuthorityInfo;
    .end local v23           #status:Landroid/content/SyncStatusInfo;
    .end local v24           #syncAdapterType:Landroid/content/pm/RegisteredServicesCache$ServiceInfo;,"Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    :catchall_0
    move-exception v25

    :try_start_1
    monitor-exit v26
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v25

    .line 1125
    .restart local v3       #account:Landroid/accounts/Account;
    .restart local v6       #arr$:[Landroid/accounts/Account;
    .restart local v15       #len$:I
    .restart local v22       #settings:Landroid/content/SyncStorageEngine$AuthorityInfo;
    .restart local v23       #status:Landroid/content/SyncStatusInfo;
    .restart local v24       #syncAdapterType:Landroid/content/pm/RegisteredServicesCache$ServiceInfo;,"Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    :cond_8
    move-object/from16 v0, v22

    iget v0, v0, Landroid/content/SyncStorageEngine$AuthorityInfo;->syncable:I

    move/from16 v25, v0

    if-nez v25, :cond_9

    const-string/jumbo v25, "not syncable"

    goto/16 :goto_6

    :cond_9
    const-string/jumbo v25, "not initialized"

    goto/16 :goto_6

    .line 1128
    :cond_a
    const-string v25, "disabled"

    goto/16 :goto_7

    .line 1152
    .restart local v20       #periodicIndex:I
    :cond_b
    const-string v25, "      count: local="

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v23

    iget v0, v0, Landroid/content/SyncStatusInfo;->numSourceLocal:I

    move/from16 v25, v0

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 1153
    const-string v25, " poll="

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v23

    iget v0, v0, Landroid/content/SyncStatusInfo;->numSourcePoll:I

    move/from16 v25, v0

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 1154
    const-string v25, " periodic="

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v23

    iget v0, v0, Landroid/content/SyncStatusInfo;->numSourcePeriodic:I

    move/from16 v25, v0

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 1155
    const-string v25, " server="

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v23

    iget v0, v0, Landroid/content/SyncStatusInfo;->numSourceServer:I

    move/from16 v25, v0

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 1156
    const-string v25, " user="

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v23

    iget v0, v0, Landroid/content/SyncStatusInfo;->numSourceUser:I

    move/from16 v25, v0

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 1157
    const-string v25, " total="

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v23

    iget v0, v0, Landroid/content/SyncStatusInfo;->numSyncs:I

    move/from16 v25, v0

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 1158
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1159
    const-string v25, "      total duration: "

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1160
    move-object/from16 v0, v23

    iget-wide v0, v0, Landroid/content/SyncStatusInfo;->totalElapsedTime:J

    move-wide/from16 v25, v0

    const-wide/16 v27, 0x3e8

    div-long v25, v25, v27

    invoke-static/range {v25 .. v26}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1161
    move-object/from16 v0, v23

    iget-wide v0, v0, Landroid/content/SyncStatusInfo;->lastSuccessTime:J

    move-wide/from16 v25, v0

    const-wide/16 v27, 0x0

    cmp-long v25, v25, v27

    if-eqz v25, :cond_c

    .line 1162
    const-string v25, "      SUCCESS: source="

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1163
    sget-object v25, Landroid/content/SyncStorageEngine;->SOURCES:[Ljava/lang/String;

    move-object/from16 v0, v23

    iget v0, v0, Landroid/content/SyncStatusInfo;->lastSuccessSource:I

    move/from16 v26, v0

    aget-object v25, v25, v26

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1164
    const-string v25, " time="

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1165
    move-object/from16 v0, v23

    iget-wide v0, v0, Landroid/content/SyncStatusInfo;->lastSuccessTime:J

    move-wide/from16 v25, v0

    invoke-static/range {v25 .. v26}, Landroid/content/SyncManager;->formatTime(J)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1167
    :cond_c
    move-object/from16 v0, v23

    iget-wide v0, v0, Landroid/content/SyncStatusInfo;->lastFailureTime:J

    move-wide/from16 v25, v0

    const-wide/16 v27, 0x0

    cmp-long v25, v25, v27

    if-eqz v25, :cond_4

    .line 1168
    const-string v25, "      FAILURE: source="

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1169
    sget-object v25, Landroid/content/SyncStorageEngine;->SOURCES:[Ljava/lang/String;

    move-object/from16 v0, v23

    iget v0, v0, Landroid/content/SyncStatusInfo;->lastFailureSource:I

    move/from16 v26, v0

    aget-object v25, v25, v26

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1171
    const-string v25, " initialTime="

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1172
    move-object/from16 v0, v23

    iget-wide v0, v0, Landroid/content/SyncStatusInfo;->initialFailureTime:J

    move-wide/from16 v25, v0

    invoke-static/range {v25 .. v26}, Landroid/content/SyncManager;->formatTime(J)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1173
    const-string v25, " lastTime="

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1174
    move-object/from16 v0, v23

    iget-wide v0, v0, Landroid/content/SyncStatusInfo;->lastFailureTime:J

    move-wide/from16 v25, v0

    invoke-static/range {v25 .. v26}, Landroid/content/SyncManager;->formatTime(J)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1175
    const/16 v25, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/SyncStatusInfo;->getLastFailureMesgAsInt(I)I

    move-result v9

    .line 1176
    .local v9, errCode:I
    const-string v25, "      message: "

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Landroid/content/SyncManager;->getLastFailureMessage(I)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " ("

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ")"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 1109
    .end local v9           #errCode:I
    .end local v20           #periodicIndex:I
    .end local v22           #settings:Landroid/content/SyncStorageEngine$AuthorityInfo;
    .end local v23           #status:Landroid/content/SyncStatusInfo;
    .end local v24           #syncAdapterType:Landroid/content/pm/RegisteredServicesCache$ServiceInfo;,"Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    :cond_d
    add-int/lit8 v10, v11, 0x1

    .local v10, i$:I
    move v11, v10

    .end local v10           #i$:I
    .restart local v11       #i$:I
    goto/16 :goto_4

    .line 1181
    .end local v3           #account:Landroid/accounts/Account;
    :cond_e
    return-void
.end method

.method public getSyncAdapterTypes()[Landroid/content/SyncAdapterType;
    .locals 6

    .prologue
    .line 674
    iget-object v5, p0, Landroid/content/SyncManager;->mSyncAdapters:Landroid/content/SyncAdaptersCache;

    invoke-virtual {v5}, Landroid/content/SyncAdaptersCache;->getAllServices()Ljava/util/Collection;

    move-result-object v3

    .line 676
    .local v3, serviceInfos:Ljava/util/Collection;,"Ljava/util/Collection<Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;>;"
    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v5

    new-array v4, v5, [Landroid/content/SyncAdapterType;

    .line 677
    .local v4, types:[Landroid/content/SyncAdapterType;
    const/4 v0, 0x0

    .line 678
    .local v0, i:I
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    .line 679
    .local v2, serviceInfo:Landroid/content/pm/RegisteredServicesCache$ServiceInfo;,"Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    iget-object v5, v2, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    check-cast v5, Landroid/content/SyncAdapterType;

    aput-object v5, v4, v0

    .line 680
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 682
    .end local v2           #serviceInfo:Landroid/content/pm/RegisteredServicesCache$ServiceInfo;,"Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    :cond_0
    return-object v4
.end method

.method public getSyncStorageEngine()Landroid/content/SyncStorageEngine;
    .locals 1

    .prologue
    .line 408
    iget-object v0, p0, Landroid/content/SyncManager;->mSyncStorageEngine:Landroid/content/SyncStorageEngine;

    return-object v0
.end method

.method maybeRescheduleSync(Landroid/content/SyncResult;Landroid/content/SyncOperation;)V
    .locals 15
    .parameter "syncResult"
    .parameter "operation"

    .prologue
    .line 845
    const-string v1, "SyncManager"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v13

    .line 846
    .local v13, isLoggable:Z
    if-eqz v13, :cond_0

    .line 847
    const-string v1, "SyncManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "encountered error(s) during the sync: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 850
    :cond_0
    new-instance v14, Landroid/content/SyncOperation;

    move-object/from16 v0, p2

    invoke-direct {v14, v0}, Landroid/content/SyncOperation;-><init>(Landroid/content/SyncOperation;)V

    .line 855
    .end local p2
    .local v14, operation:Landroid/content/SyncOperation;
    iget-object v1, v14, Landroid/content/SyncOperation;->extras:Landroid/os/Bundle;

    const-string v2, "ignore_backoff"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 856
    iget-object v1, v14, Landroid/content/SyncOperation;->extras:Landroid/os/Bundle;

    const-string v2, "ignore_backoff"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 865
    :cond_1
    iget-object v1, v14, Landroid/content/SyncOperation;->extras:Landroid/os/Bundle;

    const-string v2, "do_not_retry"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 866
    const-string v1, "SyncManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "not retrying sync operation because SYNC_EXTRAS_DO_NOT_RETRY was specified "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 902
    :goto_0
    return-void

    .line 868
    :cond_2
    iget-object v1, v14, Landroid/content/SyncOperation;->extras:Landroid/os/Bundle;

    const-string/jumbo v2, "upload"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_3

    move-object/from16 v0, p1

    iget-boolean v1, v0, Landroid/content/SyncResult;->syncAlreadyInProgress:Z

    if-nez v1, :cond_3

    .line 870
    iget-object v1, v14, Landroid/content/SyncOperation;->extras:Landroid/os/Bundle;

    const-string/jumbo v2, "upload"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 871
    const-string v1, "SyncManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "retrying sync operation as a two-way sync because an upload-only sync encountered an error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 873
    invoke-virtual {p0, v14}, Landroid/content/SyncManager;->scheduleSyncOperation(Landroid/content/SyncOperation;)V

    goto :goto_0

    .line 874
    :cond_3
    move-object/from16 v0, p1

    iget-boolean v1, v0, Landroid/content/SyncResult;->tooManyRetries:Z

    if-eqz v1, :cond_4

    .line 875
    const-string v1, "SyncManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "not retrying sync operation because it retried too many times: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 877
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/content/SyncResult;->madeSomeProgress()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 878
    if-eqz v13, :cond_5

    .line 879
    const-string v1, "SyncManager"

    const-string/jumbo v2, "retrying sync operation because even though it had an error it achieved some success"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 882
    :cond_5
    invoke-virtual {p0, v14}, Landroid/content/SyncManager;->scheduleSyncOperation(Landroid/content/SyncOperation;)V

    goto :goto_0

    .line 883
    :cond_6
    move-object/from16 v0, p1

    iget-boolean v1, v0, Landroid/content/SyncResult;->syncAlreadyInProgress:Z

    if-eqz v1, :cond_8

    .line 884
    if-eqz v13, :cond_7

    .line 885
    const-string v1, "SyncManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "retrying sync operation that failed because there was already a sync in progress: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 888
    :cond_7
    new-instance v1, Landroid/content/SyncOperation;

    iget-object v2, v14, Landroid/content/SyncOperation;->account:Landroid/accounts/Account;

    iget v3, v14, Landroid/content/SyncOperation;->syncSource:I

    iget-object v4, v14, Landroid/content/SyncOperation;->authority:Ljava/lang/String;

    iget-object v5, v14, Landroid/content/SyncOperation;->extras:Landroid/os/Bundle;

    const-wide/16 v6, 0x2710

    iget-object v8, v14, Landroid/content/SyncOperation;->backoff:Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    iget-wide v10, v14, Landroid/content/SyncOperation;->delayUntil:J

    iget-boolean v12, v14, Landroid/content/SyncOperation;->allowParallelSyncs:Z

    invoke-direct/range {v1 .. v12}, Landroid/content/SyncOperation;-><init>(Landroid/accounts/Account;ILjava/lang/String;Landroid/os/Bundle;JJJZ)V

    invoke-virtual {p0, v1}, Landroid/content/SyncManager;->scheduleSyncOperation(Landroid/content/SyncOperation;)V

    goto/16 :goto_0

    .line 892
    :cond_8
    invoke-virtual/range {p1 .. p1}, Landroid/content/SyncResult;->hasSoftError()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 893
    if-eqz v13, :cond_9

    .line 894
    const-string v1, "SyncManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "retrying sync operation because it encountered a soft error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 897
    :cond_9
    invoke-virtual {p0, v14}, Landroid/content/SyncManager;->scheduleSyncOperation(Landroid/content/SyncOperation;)V

    goto/16 :goto_0

    .line 899
    :cond_a
    const-string v1, "SyncManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "not retrying sync operation because the error is a hard error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public onAccountsUpdated([Landroid/accounts/Account;)V
    .locals 10
    .parameter "accounts"

    .prologue
    const/4 v1, 0x0

    .line 212
    iget-object v0, p0, Landroid/content/SyncManager;->mAccounts:[Landroid/accounts/Account;

    sget-object v2, Landroid/content/SyncManager;->INITIAL_ACCOUNTS_ARRAY:[Landroid/accounts/Account;

    if-ne v0, v2, :cond_1

    const/4 v9, 0x1

    .line 213
    .local v9, justBootedUp:Z
    :goto_0
    iput-object p1, p0, Landroid/content/SyncManager;->mAccounts:[Landroid/accounts/Account;

    .line 217
    iget-object v0, p0, Landroid/content/SyncManager;->mActiveSyncContexts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/SyncManager$ActiveSyncContext;

    .line 218
    .local v7, currentSyncContext:Landroid/content/SyncManager$ActiveSyncContext;
    iget-object v0, v7, Landroid/content/SyncManager$ActiveSyncContext;->mSyncOperation:Landroid/content/SyncOperation;

    iget-object v0, v0, Landroid/content/SyncOperation;->account:Landroid/accounts/Account;

    invoke-static {p1, v0}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 219
    const-string v0, "SyncManager"

    const-string v2, "canceling sync since the account has been removed"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    invoke-direct {p0, v7, v1}, Landroid/content/SyncManager;->sendSyncFinishedOrCanceledMessage(Landroid/content/SyncManager$ActiveSyncContext;Landroid/content/SyncResult;)V

    goto :goto_1

    .line 212
    .end local v7           #currentSyncContext:Landroid/content/SyncManager$ActiveSyncContext;
    .end local v8           #i$:Ljava/util/Iterator;
    .end local v9           #justBootedUp:Z
    :cond_1
    const/4 v9, 0x0

    goto :goto_0

    .line 227
    .restart local v8       #i$:Ljava/util/Iterator;
    .restart local v9       #justBootedUp:Z
    :cond_2
    invoke-direct {p0}, Landroid/content/SyncManager;->sendCheckAlarmsMessage()V

    .line 229
    iget-boolean v0, p0, Landroid/content/SyncManager;->mBootCompleted:Z

    if-eqz v0, :cond_3

    .line 230
    iget-object v0, p0, Landroid/content/SyncManager;->mSyncStorageEngine:Landroid/content/SyncStorageEngine;

    invoke-virtual {v0, p1}, Landroid/content/SyncStorageEngine;->doDatabaseCleanup([Landroid/accounts/Account;)V

    .line 233
    :cond_3
    array-length v0, p1

    if-lez v0, :cond_4

    .line 248
    move v6, v9

    .line 249
    .local v6, onlyThoseWithUnkownSyncableState:Z
    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v2, v1

    move-object v3, v1

    invoke-virtual/range {v0 .. v6}, Landroid/content/SyncManager;->scheduleSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;JZ)V

    .line 251
    .end local v6           #onlyThoseWithUnkownSyncableState:Z
    :cond_4
    return-void
.end method

.method public scheduleLocalSync(Landroid/accounts/Account;Ljava/lang/String;)V
    .locals 7
    .parameter "account"
    .parameter "authority"

    .prologue
    .line 666
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 667
    .local v3, extras:Landroid/os/Bundle;
    const-string/jumbo v0, "upload"

    const/4 v1, 0x1

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 668
    sget-wide v4, Landroid/content/SyncManager;->LOCAL_SYNC_DELAY:J

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v6}, Landroid/content/SyncManager;->scheduleSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;JZ)V

    .line 670
    return-void
.end method

.method public scheduleSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;JZ)V
    .locals 46
    .parameter "requestedAccount"
    .parameter "requestedAuthority"
    .parameter "extras"
    .parameter "delay"
    .parameter "onlyThoseWithUnkownSyncableState"

    .prologue
    .line 522
    const-string v2, "SyncManager"

    const/4 v7, 0x2

    invoke-static {v2, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v36

    .line 524
    .local v36, isLoggable:Z
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/content/SyncManager;->mBootCompleted:Z

    if-eqz v2, :cond_0

    invoke-direct/range {p0 .. p0}, Landroid/content/SyncManager;->getConnectivityManager()Landroid/net/ConnectivityManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getBackgroundDataSetting()Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_0
    const/16 v28, 0x1

    .line 527
    .local v28, backgroundDataUsageAllowed:Z
    :goto_0
    if-nez p3, :cond_1

    new-instance p3, Landroid/os/Bundle;

    .end local p3
    invoke-direct/range {p3 .. p3}, Landroid/os/Bundle;-><init>()V

    .line 529
    .restart local p3
    :cond_1
    const-string v2, "expedited"

    const/4 v7, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v30

    .line 530
    .local v30, expedited:Ljava/lang/Boolean;
    invoke-virtual/range {v30 .. v30}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 531
    const-wide/16 p4, -0x1

    .line 535
    :cond_2
    if-eqz p1, :cond_6

    .line 536
    const/4 v2, 0x1

    new-array v0, v2, [Landroid/accounts/Account;

    move-object/from16 v26, v0

    const/4 v2, 0x0

    aput-object p1, v26, v2

    .line 549
    .local v26, accounts:[Landroid/accounts/Account;
    :cond_3
    const-string/jumbo v2, "upload"

    const/4 v7, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v45

    .line 550
    .local v45, uploadOnly:Z
    const-string v2, "force"

    const/4 v7, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v39

    .line 551
    .local v39, manualSync:Z
    if-eqz v39, :cond_4

    .line 552
    const-string v2, "ignore_backoff"

    const/4 v7, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v2, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 553
    const-string v2, "ignore_settings"

    const/4 v7, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v2, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 555
    :cond_4
    const-string v2, "ignore_settings"

    const/4 v7, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v34

    .line 559
    .local v34, ignoreSettings:Z
    if-eqz v45, :cond_8

    .line 560
    const/4 v4, 0x1

    .line 573
    .local v4, source:I
    :goto_1
    new-instance v44, Ljava/util/HashSet;

    invoke-direct/range {v44 .. v44}, Ljava/util/HashSet;-><init>()V

    .line 575
    .local v44, syncableAuthorities:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/SyncManager;->mSyncAdapters:Landroid/content/SyncAdaptersCache;

    invoke-virtual {v2}, Landroid/content/SyncAdaptersCache;->getAllServices()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v32

    .local v32, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface/range {v32 .. v32}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface/range {v32 .. v32}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    .line 576
    .local v41, syncAdapter:Landroid/content/pm/RegisteredServicesCache$ServiceInfo;,"Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    move-object/from16 v0, v41

    iget-object v2, v0, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    check-cast v2, Landroid/content/SyncAdapterType;

    iget-object v2, v2, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    move-object/from16 v0, v44

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 524
    .end local v4           #source:I
    .end local v26           #accounts:[Landroid/accounts/Account;
    .end local v28           #backgroundDataUsageAllowed:Z
    .end local v30           #expedited:Ljava/lang/Boolean;
    .end local v32           #i$:Ljava/util/Iterator;
    .end local v34           #ignoreSettings:Z
    .end local v39           #manualSync:Z
    .end local v41           #syncAdapter:Landroid/content/pm/RegisteredServicesCache$ServiceInfo;,"Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    .end local v44           #syncableAuthorities:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v45           #uploadOnly:Z
    :cond_5
    const/16 v28, 0x0

    goto/16 :goto_0

    .line 540
    .restart local v28       #backgroundDataUsageAllowed:Z
    .restart local v30       #expedited:Ljava/lang/Boolean;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager;->mAccounts:[Landroid/accounts/Account;

    move-object/from16 v26, v0

    .line 541
    .restart local v26       #accounts:[Landroid/accounts/Account;
    move-object/from16 v0, v26

    array-length v2, v0

    if-nez v2, :cond_3

    .line 542
    if-eqz v36, :cond_7

    .line 543
    const-string v2, "SyncManager"

    const-string/jumbo v7, "scheduleSync: no accounts configured, dropping"

    invoke-static {v2, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    :cond_7
    return-void

    .line 561
    .restart local v34       #ignoreSettings:Z
    .restart local v39       #manualSync:Z
    .restart local v45       #uploadOnly:Z
    :cond_8
    if-eqz v39, :cond_9

    .line 562
    const/4 v4, 0x3

    .restart local v4       #source:I
    goto :goto_1

    .line 563
    .end local v4           #source:I
    :cond_9
    if-nez p2, :cond_a

    .line 564
    const/4 v4, 0x2

    .restart local v4       #source:I
    goto :goto_1

    .line 568
    .end local v4           #source:I
    :cond_a
    const/4 v4, 0x0

    .restart local v4       #source:I
    goto :goto_1

    .line 581
    .restart local v32       #i$:Ljava/util/Iterator;
    .restart local v44       #syncableAuthorities:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_b
    if-eqz p2, :cond_c

    .line 582
    move-object/from16 v0, v44

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v31

    .line 583
    .local v31, hasSyncAdapter:Z
    invoke-virtual/range {v44 .. v44}, Ljava/util/HashSet;->clear()V

    .line 584
    if-eqz v31, :cond_c

    move-object/from16 v0, v44

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 587
    .end local v31           #hasSyncAdapter:Z
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/SyncManager;->mSyncStorageEngine:Landroid/content/SyncStorageEngine;

    invoke-virtual {v2}, Landroid/content/SyncStorageEngine;->getMasterSyncAutomatically()Z

    move-result v40

    .line 589
    .local v40, masterSyncAutomatically:Z
    invoke-virtual/range {v44 .. v44}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v32

    .end local v32           #i$:Ljava/util/Iterator;
    :cond_d
    invoke-interface/range {v32 .. v32}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface/range {v32 .. v32}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 590
    .local v5, authority:Ljava/lang/String;
    move-object/from16 v27, v26

    .local v27, arr$:[Landroid/accounts/Account;
    move-object/from16 v0, v27

    array-length v0, v0

    move/from16 v38, v0

    .local v38, len$:I
    const/16 v33, 0x0

    .local v33, i$:I
    :goto_3
    move/from16 v0, v33

    move/from16 v1, v38

    if-ge v0, v1, :cond_d

    aget-object v3, v27, v33

    .line 591
    .local v3, account:Landroid/accounts/Account;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/SyncManager;->mSyncStorageEngine:Landroid/content/SyncStorageEngine;

    invoke-virtual {v2, v3, v5}, Landroid/content/SyncStorageEngine;->getIsSyncable(Landroid/accounts/Account;Ljava/lang/String;)I

    move-result v37

    .line 592
    .local v37, isSyncable:I
    if-nez v37, :cond_f

    .line 590
    :cond_e
    :goto_4
    add-int/lit8 v33, v33, 0x1

    goto :goto_3

    .line 595
    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/SyncManager;->mSyncAdapters:Landroid/content/SyncAdaptersCache;

    iget-object v7, v3, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-static {v5, v7}, Landroid/content/SyncAdapterType;->newKey(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SyncAdapterType;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/content/SyncAdaptersCache;->getServiceInfo(Ljava/lang/Object;)Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    move-result-object v42

    .line 598
    .local v42, syncAdapterInfo:Landroid/content/pm/RegisteredServicesCache$ServiceInfo;,"Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    if-eqz v42, :cond_e

    .line 601
    move-object/from16 v0, v42

    iget-object v2, v0, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    check-cast v2, Landroid/content/SyncAdapterType;

    invoke-virtual {v2}, Landroid/content/SyncAdapterType;->allowParallelSyncs()Z

    move-result v13

    .line 602
    .local v13, allowParallelSyncs:Z
    move-object/from16 v0, v42

    iget-object v2, v0, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    check-cast v2, Landroid/content/SyncAdapterType;

    invoke-virtual {v2}, Landroid/content/SyncAdapterType;->isAlwaysSyncable()Z

    move-result v35

    .line 603
    .local v35, isAlwaysSyncable:Z
    if-gez v37, :cond_10

    if-eqz v35, :cond_10

    .line 604
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/SyncManager;->mSyncStorageEngine:Landroid/content/SyncStorageEngine;

    const/4 v7, 0x1

    invoke-virtual {v2, v3, v5, v7}, Landroid/content/SyncStorageEngine;->setIsSyncable(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 605
    const/16 v37, 0x1

    .line 607
    :cond_10
    if-eqz p6, :cond_11

    if-gez v37, :cond_e

    .line 610
    :cond_11
    move-object/from16 v0, v42

    iget-object v2, v0, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    check-cast v2, Landroid/content/SyncAdapterType;

    invoke-virtual {v2}, Landroid/content/SyncAdapterType;->supportsUploading()Z

    move-result v2

    if-nez v2, :cond_12

    if-nez v45, :cond_e

    .line 615
    :cond_12
    if-ltz v37, :cond_13

    if-nez v34, :cond_13

    if-eqz v28, :cond_14

    if-eqz v40, :cond_14

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/SyncManager;->mSyncStorageEngine:Landroid/content/SyncStorageEngine;

    invoke-virtual {v2, v3, v5}, Landroid/content/SyncStorageEngine;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_14

    :cond_13
    const/16 v43, 0x1

    .line 620
    .local v43, syncAllowed:Z
    :goto_5
    if-nez v43, :cond_15

    .line 621
    if-eqz v36, :cond_e

    .line 622
    const-string v2, "SyncManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "scheduleSync: sync of "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " is not allowed, dropping request"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 615
    .end local v43           #syncAllowed:Z
    :cond_14
    const/16 v43, 0x0

    goto :goto_5

    .line 628
    .restart local v43       #syncAllowed:Z
    :cond_15
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/SyncManager;->mSyncStorageEngine:Landroid/content/SyncStorageEngine;

    invoke-virtual {v2, v3, v5}, Landroid/content/SyncStorageEngine;->getBackoff(Landroid/accounts/Account;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v29

    .line 629
    .local v29, backoff:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/SyncManager;->mSyncStorageEngine:Landroid/content/SyncStorageEngine;

    invoke-virtual {v2, v3, v5}, Landroid/content/SyncStorageEngine;->getDelayUntilTime(Landroid/accounts/Account;Ljava/lang/String;)J

    move-result-wide v11

    .line 630
    .local v11, delayUntil:J
    if-eqz v29, :cond_19

    move-object/from16 v0, v29

    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    .line 631
    .local v9, backoffTime:J
    :goto_6
    if-gez v37, :cond_17

    .line 632
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 633
    .local v6, newExtras:Landroid/os/Bundle;
    const-string v2, "initialize"

    const/4 v7, 0x1

    invoke-virtual {v6, v2, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 634
    if-eqz v36, :cond_16

    .line 635
    const-string v2, "SyncManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "scheduleSync: delay "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-wide/from16 v0, p4

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", source "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", account "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", authority "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", extras "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    :cond_16
    new-instance v2, Landroid/content/SyncOperation;

    const-wide/16 v7, 0x0

    invoke-direct/range {v2 .. v13}, Landroid/content/SyncOperation;-><init>(Landroid/accounts/Account;ILjava/lang/String;Landroid/os/Bundle;JJJZ)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/content/SyncManager;->scheduleSyncOperation(Landroid/content/SyncOperation;)V

    .line 647
    .end local v6           #newExtras:Landroid/os/Bundle;
    :cond_17
    if-nez p6, :cond_e

    .line 648
    if-eqz v36, :cond_18

    .line 649
    const-string v2, "SyncManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "scheduleSync: delay "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-wide/from16 v0, p4

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", source "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", account "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", authority "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", extras "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p3

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    :cond_18
    new-instance v14, Landroid/content/SyncOperation;

    move-object v15, v3

    move/from16 v16, v4

    move-object/from16 v17, v5

    move-object/from16 v18, p3

    move-wide/from16 v19, p4

    move-wide/from16 v21, v9

    move-wide/from16 v23, v11

    move/from16 v25, v13

    invoke-direct/range {v14 .. v25}, Landroid/content/SyncOperation;-><init>(Landroid/accounts/Account;ILjava/lang/String;Landroid/os/Bundle;JJJZ)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/content/SyncManager;->scheduleSyncOperation(Landroid/content/SyncOperation;)V

    goto/16 :goto_4

    .line 630
    .end local v9           #backoffTime:J
    :cond_19
    const-wide/16 v9, 0x0

    goto/16 :goto_6
.end method

.method public scheduleSyncOperation(Landroid/content/SyncOperation;)V
    .locals 4
    .parameter "syncOperation"

    .prologue
    const/4 v3, 0x2

    .line 814
    iget-object v2, p0, Landroid/content/SyncManager;->mSyncQueue:Landroid/content/SyncQueue;

    monitor-enter v2

    .line 815
    :try_start_0
    iget-object v1, p0, Landroid/content/SyncManager;->mSyncQueue:Landroid/content/SyncQueue;

    invoke-virtual {v1, p1}, Landroid/content/SyncQueue;->add(Landroid/content/SyncOperation;)Z

    move-result v0

    .line 816
    .local v0, queueChanged:Z
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 818
    if-eqz v0, :cond_2

    .line 819
    const-string v1, "SyncManager"

    invoke-static {v1, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 820
    const-string v1, "SyncManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "scheduleSyncOperation: enqueued "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 822
    :cond_0
    invoke-direct {p0}, Landroid/content/SyncManager;->sendCheckAlarmsMessage()V

    .line 829
    :cond_1
    :goto_0
    return-void

    .line 816
    .end local v0           #queueChanged:Z
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 824
    .restart local v0       #queueChanged:Z
    :cond_2
    const-string v1, "SyncManager"

    invoke-static {v1, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 825
    const-string v1, "SyncManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "scheduleSyncOperation: dropping duplicate sync operation "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

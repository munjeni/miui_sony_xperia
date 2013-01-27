.class public Lcom/android/server/location/BTGpsLocationProvider;
.super Ljava/lang/Object;
.source "BTGpsLocationProvider.java"

# interfaces
.implements Lcom/android/server/location/LocationProviderInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/location/BTGpsLocationProvider$Listener;,
        Lcom/android/server/location/BTGpsLocationProvider$BTGPSMessageThread;
    }
.end annotation


# static fields
.field private static final ADD_LISTENER:I = 0x8

.field private static final CHECK_LOCATION:I = 0x1

.field private static final D:Z = true

.field private static final DOWNLOAD_XTRA_DATA:I = 0x6

.field private static final ENABLE:I = 0x2

.field private static final ENABLE_TRACKING:I = 0x3

.field public static final GPS_CUSTOM_COMMAND:I = 0x3ea

.field public static final GPS_DATA_AVAILABLE:I = 0x3e8

.field public static final GPS_STATUS_UPDATE:I = 0x3e9

.field private static final INJECT_NTP_TIME:I = 0x5

.field private static final REMOVE_LISTENER:I = 0x9

.field private static final REQUEST_SINGLE_SHOT:I = 0xa

.field private static final UPDATE_LOCATION:I = 0x7

.field private static final UPDATE_NETWORK_STATE:I = 0x4

.field private static final WAKELOCK_KEY:Ljava/lang/String; = "GpsLocationProvider"


# instance fields
.field private final PROVIDER:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field private final btsvc:Lcom/android/server/location/BTGPSService;

.field private final mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private final mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private final mClientUids:Landroid/util/SparseIntArray;

.field private final mContext:Landroid/content/Context;

.field private volatile mEnabled:Z

.field private mFixRequestTime:J

.field private final mGpsStatusProvider:Landroid/location/IGpsStatusProvider;

.field private mHandler:Landroid/os/Handler;

.field private final mInitializedLatch:Ljava/util/concurrent/CountDownLatch;

.field private final mIntentBTFilter:Landroid/content/IntentFilter;

.field private mLastFixTime:J

.field private mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/location/BTGpsLocationProvider$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private mLocation:Landroid/location/Location;

.field private mLocationExtras:Landroid/os/Bundle;

.field private final mLocationManager:Landroid/location/ILocationManager;

.field private final mMessageLoopThread:Ljava/lang/Thread;

.field private mNavigating:Z

.field private mPendingListenerMessages:I

.field private mPendingMessageBits:I

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mStatus:I

.field private mStatusUpdateTime:J

.field private mSvCount:I

.field private mTTFF:I

.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private final nmeaparser:Lcom/android/server/location/NMEAParser;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/location/ILocationManager;)V
    .locals 6
    .parameter "context"
    .parameter "locationManager"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const-string v2, "External Bleutooth Location Provider"

    iput-object v2, p0, Lcom/android/server/location/BTGpsLocationProvider;->PROVIDER:Ljava/lang/String;

    .line 57
    const-string v2, "BTGpsLocationProvider"

    iput-object v2, p0, Lcom/android/server/location/BTGpsLocationProvider;->TAG:Ljava/lang/String;

    .line 58
    new-instance v2, Lcom/android/server/location/NMEAParser;

    const-string v3, "External Bleutooth Location Provider"

    invoke-direct {v2, v3}, Lcom/android/server/location/NMEAParser;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/server/location/BTGpsLocationProvider;->nmeaparser:Lcom/android/server/location/NMEAParser;

    .line 60
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/location/BTGpsLocationProvider;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 79
    new-instance v2, Landroid/util/SparseIntArray;

    invoke-direct {v2}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v2, p0, Lcom/android/server/location/BTGpsLocationProvider;->mClientUids:Landroid/util/SparseIntArray;

    .line 93
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/server/location/BTGpsLocationProvider;->mFixRequestTime:J

    .line 95
    iput v5, p0, Lcom/android/server/location/BTGpsLocationProvider;->mTTFF:I

    .line 100
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/location/BTGpsLocationProvider;->mStatusUpdateTime:J

    .line 110
    iput v4, p0, Lcom/android/server/location/BTGpsLocationProvider;->mStatus:I

    .line 112
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    iput-object v2, p0, Lcom/android/server/location/BTGpsLocationProvider;->mLocationExtras:Landroid/os/Bundle;

    .line 113
    new-instance v2, Landroid/location/Location;

    const-string v3, "External Bleutooth Location Provider"

    invoke-direct {v2, v3}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/server/location/BTGpsLocationProvider;->mLocation:Landroid/location/Location;

    .line 120
    new-instance v2, Lcom/android/server/location/BTGpsLocationProvider$BTGPSMessageThread;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/server/location/BTGpsLocationProvider$BTGPSMessageThread;-><init>(Lcom/android/server/location/BTGpsLocationProvider;Lcom/android/server/location/BTGpsLocationProvider$1;)V

    iput-object v2, p0, Lcom/android/server/location/BTGpsLocationProvider;->mMessageLoopThread:Ljava/lang/Thread;

    .line 121
    new-instance v2, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v2, v4}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v2, p0, Lcom/android/server/location/BTGpsLocationProvider;->mInitializedLatch:Ljava/util/concurrent/CountDownLatch;

    .line 732
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/location/BTGpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    .line 754
    new-instance v2, Lcom/android/server/location/BTGpsLocationProvider$2;

    invoke-direct {v2, p0}, Lcom/android/server/location/BTGpsLocationProvider$2;-><init>(Lcom/android/server/location/BTGpsLocationProvider;)V

    iput-object v2, p0, Lcom/android/server/location/BTGpsLocationProvider;->mGpsStatusProvider:Landroid/location/IGpsStatusProvider;

    .line 143
    iput-object p1, p0, Lcom/android/server/location/BTGpsLocationProvider;->mContext:Landroid/content/Context;

    .line 144
    iput-object p2, p0, Lcom/android/server/location/BTGpsLocationProvider;->mLocationManager:Landroid/location/ILocationManager;

    .line 146
    iget-object v2, p0, Lcom/android/server/location/BTGpsLocationProvider;->mMessageLoopThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 150
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/location/BTGpsLocationProvider;->mInitializedLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    new-instance v2, Lcom/android/server/location/BTGPSService;

    iget-object v3, p0, Lcom/android/server/location/BTGpsLocationProvider;->mHandler:Landroid/os/Handler;

    invoke-direct {v2, v3}, Lcom/android/server/location/BTGPSService;-><init>(Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/android/server/location/BTGpsLocationProvider;->btsvc:Lcom/android/server/location/BTGPSService;

    .line 160
    iget-object v2, p0, Lcom/android/server/location/BTGpsLocationProvider;->mContext:Landroid/content/Context;

    const-string v3, "power"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 161
    .local v1, powerManager:Landroid/os/PowerManager;
    const-string v2, "GpsLocationProvider"

    invoke-virtual {v1, v4, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/location/BTGpsLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 162
    iget-object v2, p0, Lcom/android/server/location/BTGpsLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2, v5}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 165
    const-string v2, "batteryinfo"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/location/BTGpsLocationProvider;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 168
    new-instance v2, Lcom/android/server/location/BTGpsLocationProvider$1;

    invoke-direct {v2, p0}, Lcom/android/server/location/BTGpsLocationProvider$1;-><init>(Lcom/android/server/location/BTGpsLocationProvider;)V

    iput-object v2, p0, Lcom/android/server/location/BTGpsLocationProvider;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 189
    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/server/location/BTGpsLocationProvider;->mIntentBTFilter:Landroid/content/IntentFilter;

    .line 190
    iget-object v2, p0, Lcom/android/server/location/BTGpsLocationProvider;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/location/BTGpsLocationProvider;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v4, p0, Lcom/android/server/location/BTGpsLocationProvider;->mIntentBTFilter:Landroid/content/IntentFilter;

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 191
    return-void

    .line 152
    .end local v1           #powerManager:Landroid/os/PowerManager;
    :catch_0
    move-exception v0

    .line 153
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0
.end method

.method static synthetic access$100(Lcom/android/server/location/BTGpsLocationProvider;)Lcom/android/server/location/BTGPSService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/server/location/BTGpsLocationProvider;->btsvc:Lcom/android/server/location/BTGPSService;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/location/BTGpsLocationProvider;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/android/server/location/BTGpsLocationProvider;->handleRemoveListener(I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/location/BTGpsLocationProvider;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/server/location/BTGpsLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/location/BTGpsLocationProvider;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget v0, p0, Lcom/android/server/location/BTGpsLocationProvider;->mPendingMessageBits:I

    return v0
.end method

.method static synthetic access$1272(Lcom/android/server/location/BTGpsLocationProvider;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iget v0, p0, Lcom/android/server/location/BTGpsLocationProvider;->mPendingMessageBits:I

    and-int/2addr v0, p1

    iput v0, p0, Lcom/android/server/location/BTGpsLocationProvider;->mPendingMessageBits:I

    return v0
.end method

.method static synthetic access$1300(Lcom/android/server/location/BTGpsLocationProvider;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget v0, p0, Lcom/android/server/location/BTGpsLocationProvider;->mPendingListenerMessages:I

    return v0
.end method

.method static synthetic access$1310(Lcom/android/server/location/BTGpsLocationProvider;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 54
    iget v0, p0, Lcom/android/server/location/BTGpsLocationProvider;->mPendingListenerMessages:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/android/server/location/BTGpsLocationProvider;->mPendingListenerMessages:I

    return v0
.end method

.method static synthetic access$1400(Lcom/android/server/location/BTGpsLocationProvider;)Ljava/util/concurrent/CountDownLatch;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/server/location/BTGpsLocationProvider;->mInitializedLatch:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/server/location/BTGpsLocationProvider;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/server/location/BTGpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/server/location/BTGpsLocationProvider;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput-object p1, p0, Lcom/android/server/location/BTGpsLocationProvider;->mHandler:Landroid/os/Handler;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/server/location/BTGpsLocationProvider;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/android/server/location/BTGpsLocationProvider;->mEnabled:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/location/BTGpsLocationProvider;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/android/server/location/BTGpsLocationProvider;->handleNMEAMessages(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/location/BTGpsLocationProvider;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/android/server/location/BTGpsLocationProvider;->notifyEnableDisableGPS(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/location/BTGpsLocationProvider;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/android/server/location/BTGpsLocationProvider;->handleEnable()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/location/BTGpsLocationProvider;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/android/server/location/BTGpsLocationProvider;->handleDisable()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/location/BTGpsLocationProvider;Landroid/location/Location;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/android/server/location/BTGpsLocationProvider;->handleUpdateLocation(Landroid/location/Location;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/location/BTGpsLocationProvider;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/android/server/location/BTGpsLocationProvider;->handleAddListener(I)V

    return-void
.end method

.method private handleAddListener(I)V
    .locals 5
    .parameter "uid"

    .prologue
    .line 814
    iget-object v2, p0, Lcom/android/server/location/BTGpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    monitor-enter v2

    .line 815
    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/BTGpsLocationProvider;->mClientUids:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v1

    if-ltz v1, :cond_0

    .line 817
    const-string v1, "BTGpsLocationProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Duplicate add listener for uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 818
    monitor-exit v2

    .line 829
    :goto_0
    return-void

    .line 820
    :cond_0
    iget-object v1, p0, Lcom/android/server/location/BTGpsLocationProvider;->mClientUids:Landroid/util/SparseIntArray;

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 821
    iget-boolean v1, p0, Lcom/android/server/location/BTGpsLocationProvider;->mNavigating:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 823
    :try_start_1
    iget-object v1, p0, Lcom/android/server/location/BTGpsLocationProvider;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v1, p1}, Lcom/android/internal/app/IBatteryStats;->noteStartGps(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 828
    :cond_1
    :goto_1
    :try_start_2
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 824
    :catch_0
    move-exception v0

    .line 825
    .local v0, e:Landroid/os/RemoteException;
    :try_start_3
    const-string v1, "BTGpsLocationProvider"

    const-string v3, "RemoteException in addListener"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method private declared-synchronized handleDisable()V
    .locals 2

    .prologue
    .line 339
    monitor-enter p0

    :try_start_0
    const-string v0, "BTGpsLocationProvider"

    const-string v1, "handleDisable"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    iget-boolean v0, p0, Lcom/android/server/location/BTGpsLocationProvider;->mEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 349
    :goto_0
    monitor-exit p0

    return-void

    .line 341
    :cond_0
    :try_start_1
    const-string v0, "BTGpsLocationProvider"

    const-string v1, "mEnabled -> false"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/location/BTGpsLocationProvider;->mEnabled:Z

    .line 343
    const-string v0, "BTGpsLocationProvider"

    const-string v1, "reportstatus notify listeners and system"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/location/BTGpsLocationProvider;->notifyEnableDisableGPS(Z)V

    .line 345
    const-string v0, "BTGpsLocationProvider"

    const-string v1, "update to out of service"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    const/4 v0, 0x0

    iget v1, p0, Lcom/android/server/location/BTGpsLocationProvider;->mSvCount:I

    invoke-direct {p0, v0, v1}, Lcom/android/server/location/BTGpsLocationProvider;->updateStatus(II)V

    .line 347
    const-string v0, "BTGpsLocationProvider"

    const-string v1, "btservice Stop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    iget-object v0, p0, Lcom/android/server/location/BTGpsLocationProvider;->btsvc:Lcom/android/server/location/BTGPSService;

    invoke-virtual {v0}, Lcom/android/server/location/BTGPSService;->stop()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 339
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized handleEnable()V
    .locals 8

    .prologue
    .line 276
    monitor-enter p0

    :try_start_0
    const-string v5, "BTGpsLocationProvider"

    const-string v6, "handleEnable"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    iget-boolean v5, p0, Lcom/android/server/location/BTGpsLocationProvider;->mEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v5, :cond_1

    .line 326
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 279
    :cond_1
    :try_start_1
    iget-object v5, p0, Lcom/android/server/location/BTGpsLocationProvider;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v5

    if-nez v5, :cond_3

    .line 280
    iget-object v5, p0, Lcom/android/server/location/BTGpsLocationProvider;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v4

    .line 281
    .local v4, state:I
    const/16 v5, 0xa

    if-ne v4, v5, :cond_2

    .line 282
    const-string v5, "BTGpsLocationProvider"

    const-string v6, "BT not available. Enable and wait for it..."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    iget-object v5, p0, Lcom/android/server/location/BTGpsLocationProvider;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothAdapter;->enable()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 288
    :cond_2
    :goto_1
    :try_start_2
    iget-object v5, p0, Lcom/android/server/location/BTGpsLocationProvider;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothAdapter;->getState()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    move-result v4

    .line 289
    const/16 v5, 0xc

    if-ne v4, v5, :cond_5

    .line 304
    .end local v4           #state:I
    :cond_3
    :try_start_3
    const-string v5, "BTGpsLocationProvider"

    const-string v6, "mEnabled -> true"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/server/location/BTGpsLocationProvider;->mEnabled:Z

    .line 306
    const-string v5, "BTGpsLocationProvider"

    const-string v6, "mStatus -> temp unavailable"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    const/4 v5, 0x1

    iput v5, p0, Lcom/android/server/location/BTGpsLocationProvider;->mStatus:I

    .line 308
    const-string v5, "BTGpsLocationProvider"

    const-string v6, "btservice start"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    iget-object v5, p0, Lcom/android/server/location/BTGpsLocationProvider;->btsvc:Lcom/android/server/location/BTGPSService;

    invoke-virtual {v5}, Lcom/android/server/location/BTGPSService;->start()V

    .line 310
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/server/location/BTGpsLocationProvider;->mFixRequestTime:J

    .line 311
    const/4 v5, 0x0

    iput v5, p0, Lcom/android/server/location/BTGpsLocationProvider;->mTTFF:I

    .line 312
    iget-object v5, p0, Lcom/android/server/location/BTGpsLocationProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "0"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 314
    .local v0, btDevice:Ljava/lang/String;
    const-string v5, "BTGpsLocationProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Connecting to saved pref: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    if-eqz v0, :cond_0

    const-string v5, "0"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 316
    iget-object v5, p0, Lcom/android/server/location/BTGpsLocationProvider;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/server/location/BTGpsLocationProvider;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 317
    iget-object v5, p0, Lcom/android/server/location/BTGpsLocationProvider;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 318
    .local v1, d:Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 319
    const-string v5, "BTGpsLocationProvider"

    const-string v6, "Connecting..."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    iget-object v5, p0, Lcom/android/server/location/BTGpsLocationProvider;->btsvc:Lcom/android/server/location/BTGPSService;

    invoke-virtual {v5, v1}, Lcom/android/server/location/BTGPSService;->connect(Landroid/bluetooth/BluetoothDevice;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 276
    .end local v0           #btDevice:Ljava/lang/String;
    .end local v1           #d:Landroid/bluetooth/BluetoothDevice;
    .end local v3           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 291
    .restart local v4       #state:I
    :cond_5
    const/16 v5, 0xb

    if-ne v4, v5, :cond_6

    .line 292
    :try_start_4
    const-string v5, "BTGpsLocationProvider"

    const-string v6, "BT not available yet. waiting for another 400ms"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    const-wide/16 v5, 0x190

    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_1

    .line 299
    :catch_0
    move-exception v2

    .line 300
    .local v2, e:Ljava/lang/InterruptedException;
    :try_start_5
    const-string v5, "BTGpsLocationProvider"

    invoke-virtual {v2}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_1

    .line 295
    .end local v2           #e:Ljava/lang/InterruptedException;
    :cond_6
    :try_start_6
    const-string v5, "BTGpsLocationProvider"

    const-string v6, "BT got disabled or interrupted by other source"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_0
.end method

.method private handleNMEAMessages(Ljava/lang/String;)V
    .locals 13
    .parameter "sentences"

    .prologue
    .line 675
    const-string v0, "\r\n"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 676
    .local v12, sentenceArray:[Ljava/lang/String;
    iget-object v0, p0, Lcom/android/server/location/BTGpsLocationProvider;->nmeaparser:Lcom/android/server/location/NMEAParser;

    invoke-virtual {v0}, Lcom/android/server/location/NMEAParser;->reset()V

    .line 677
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    array-length v0, v12

    if-ge v7, v0, :cond_1

    .line 678
    const-string v0, "BTGpsLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "About to parse: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v2, v12, v7

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    aget-object v0, v12, v7

    if-eqz v0, :cond_0

    const-string v0, ""

    aget-object v1, v12, v7

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 677
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 680
    :cond_0
    iget-object v0, p0, Lcom/android/server/location/BTGpsLocationProvider;->nmeaparser:Lcom/android/server/location/NMEAParser;

    aget-object v1, v12, v7

    invoke-virtual {v0, v1}, Lcom/android/server/location/NMEAParser;->parseNMEALine(Ljava/lang/String;)Z

    move-result v11

    .line 683
    .local v11, parsed:Z
    aget-object v0, v12, v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/location/BTGpsLocationProvider;->reportNmea(Ljava/lang/String;J)V

    goto :goto_1

    .line 685
    .end local v11           #parsed:Z
    :cond_1
    iget-object v0, p0, Lcom/android/server/location/BTGpsLocationProvider;->nmeaparser:Lcom/android/server/location/NMEAParser;

    invoke-virtual {v0}, Lcom/android/server/location/NMEAParser;->getLocation()Landroid/location/Location;

    move-result-object v8

    .line 687
    .local v8, loc:Landroid/location/Location;
    iget-object v0, p0, Lcom/android/server/location/BTGpsLocationProvider;->nmeaparser:Lcom/android/server/location/NMEAParser;

    invoke-virtual {v0}, Lcom/android/server/location/NMEAParser;->isValid()Z

    move-result v0

    invoke-direct {p0, v8, v0}, Lcom/android/server/location/BTGpsLocationProvider;->reportLocation(Landroid/location/Location;Z)V

    .line 688
    iget-object v0, p0, Lcom/android/server/location/BTGpsLocationProvider;->nmeaparser:Lcom/android/server/location/NMEAParser;

    invoke-virtual {v0}, Lcom/android/server/location/NMEAParser;->isSatdataReady()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 689
    iget-object v0, p0, Lcom/android/server/location/BTGpsLocationProvider;->nmeaparser:Lcom/android/server/location/NMEAParser;

    invoke-virtual {v0}, Lcom/android/server/location/NMEAParser;->getmSvCount()I

    move-result v1

    iget-object v0, p0, Lcom/android/server/location/BTGpsLocationProvider;->nmeaparser:Lcom/android/server/location/NMEAParser;

    invoke-virtual {v0}, Lcom/android/server/location/NMEAParser;->getmSvs()[I

    move-result-object v2

    iget-object v0, p0, Lcom/android/server/location/BTGpsLocationProvider;->nmeaparser:Lcom/android/server/location/NMEAParser;

    invoke-virtual {v0}, Lcom/android/server/location/NMEAParser;->getmSnrs()[F

    move-result-object v3

    iget-object v0, p0, Lcom/android/server/location/BTGpsLocationProvider;->nmeaparser:Lcom/android/server/location/NMEAParser;

    invoke-virtual {v0}, Lcom/android/server/location/NMEAParser;->getmSvElevations()[F

    move-result-object v4

    iget-object v0, p0, Lcom/android/server/location/BTGpsLocationProvider;->nmeaparser:Lcom/android/server/location/NMEAParser;

    invoke-virtual {v0}, Lcom/android/server/location/NMEAParser;->getmSvAzimuths()[F

    move-result-object v5

    iget-object v0, p0, Lcom/android/server/location/BTGpsLocationProvider;->nmeaparser:Lcom/android/server/location/NMEAParser;

    invoke-virtual {v0}, Lcom/android/server/location/NMEAParser;->getmSvMasks()[I

    move-result-object v6

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/server/location/BTGpsLocationProvider;->reportSvStatus(I[I[F[F[F[I)V

    .line 696
    :cond_2
    iget-object v0, p0, Lcom/android/server/location/BTGpsLocationProvider;->nmeaparser:Lcom/android/server/location/NMEAParser;

    invoke-virtual {v0}, Lcom/android/server/location/NMEAParser;->getApproximatedRefreshRate()J

    move-result-wide v9

    .line 697
    .local v9, newRate:J
    iget-object v0, p0, Lcom/android/server/location/BTGpsLocationProvider;->btsvc:Lcom/android/server/location/BTGPSService;

    invoke-virtual {v0}, Lcom/android/server/location/BTGPSService;->getRefreshRate()J

    move-result-wide v0

    cmp-long v0, v0, v9

    if-eqz v0, :cond_3

    .line 698
    const-string v0, "BTGpsLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting refresh rate to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " was: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/location/BTGpsLocationProvider;->btsvc:Lcom/android/server/location/BTGPSService;

    invoke-virtual {v2}, Lcom/android/server/location/BTGPSService;->getRefreshRate()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    iget-object v0, p0, Lcom/android/server/location/BTGpsLocationProvider;->btsvc:Lcom/android/server/location/BTGPSService;

    invoke-virtual {v0, v9, v10}, Lcom/android/server/location/BTGPSService;->setRefreshRate(J)V

    .line 702
    :cond_3
    return-void
.end method

.method private handleRemoveListener(I)V
    .locals 5
    .parameter "uid"

    .prologue
    .line 842
    iget-object v2, p0, Lcom/android/server/location/BTGpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    monitor-enter v2

    .line 843
    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/BTGpsLocationProvider;->mClientUids:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v1

    if-gez v1, :cond_0

    .line 845
    const-string v1, "BTGpsLocationProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unneeded remove listener for uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 846
    monitor-exit v2

    .line 857
    :goto_0
    return-void

    .line 848
    :cond_0
    iget-object v1, p0, Lcom/android/server/location/BTGpsLocationProvider;->mClientUids:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 849
    iget-boolean v1, p0, Lcom/android/server/location/BTGpsLocationProvider;->mNavigating:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 851
    :try_start_1
    iget-object v1, p0, Lcom/android/server/location/BTGpsLocationProvider;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v1, p1}, Lcom/android/internal/app/IBatteryStats;->noteStopGps(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 856
    :cond_1
    :goto_1
    :try_start_2
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 852
    :catch_0
    move-exception v0

    .line 853
    .local v0, e:Landroid/os/RemoteException;
    :try_start_3
    const-string v1, "BTGpsLocationProvider"

    const-string v3, "RemoteException in removeListener"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method private handleUpdateLocation(Landroid/location/Location;)V
    .locals 1
    .parameter "location"

    .prologue
    .line 482
    invoke-virtual {p1}, Landroid/location/Location;->hasAccuracy()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 485
    :cond_0
    return-void
.end method

.method private notifyEnableDisableGPS(Z)V
    .locals 9
    .parameter "status"

    .prologue
    .line 597
    const-string v6, "BTGpsLocationProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "notifyEnableDisableGPS status: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    iget-object v7, p0, Lcom/android/server/location/BTGpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    monitor-enter v7

    .line 600
    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/location/BTGpsLocationProvider;->mNavigating:Z

    .line 601
    iget-object v6, p0, Lcom/android/server/location/BTGpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 602
    .local v4, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v4, :cond_1

    .line 603
    iget-object v6, p0, Lcom/android/server/location/BTGpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/location/BTGpsLocationProvider$Listener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 605
    .local v3, listener:Lcom/android/server/location/BTGpsLocationProvider$Listener;
    if-eqz p1, :cond_0

    .line 606
    :try_start_1
    iget-object v6, v3, Lcom/android/server/location/BTGpsLocationProvider$Listener;->mListener:Landroid/location/IGpsStatusListener;

    invoke-interface {v6}, Landroid/location/IGpsStatusListener;->onGpsStarted()V

    .line 602
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 608
    :cond_0
    iget-object v6, v3, Lcom/android/server/location/BTGpsLocationProvider$Listener;->mListener:Landroid/location/IGpsStatusListener;

    invoke-interface {v6}, Landroid/location/IGpsStatusListener;->onGpsStopped()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 610
    :catch_0
    move-exception v0

    .line 611
    .local v0, e:Landroid/os/RemoteException;
    :try_start_2
    const-string v6, "BTGpsLocationProvider"

    const-string v8, "RemoteException in reportStatus"

    invoke-static {v6, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    iget-object v6, p0, Lcom/android/server/location/BTGpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 614
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 619
    .end local v0           #e:Landroid/os/RemoteException;
    .end local v3           #listener:Lcom/android/server/location/BTGpsLocationProvider$Listener;
    :cond_1
    :try_start_3
    iget-object v6, p0, Lcom/android/server/location/BTGpsLocationProvider;->mClientUids:Landroid/util/SparseIntArray;

    invoke-virtual {v6}, Landroid/util/SparseIntArray;->size()I

    move-result v6

    add-int/lit8 v1, v6, -0x1

    :goto_2
    if-ltz v1, :cond_3

    .line 620
    iget-object v6, p0, Lcom/android/server/location/BTGpsLocationProvider;->mClientUids:Landroid/util/SparseIntArray;

    invoke-virtual {v6, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v5

    .line 621
    .local v5, uid:I
    iget-boolean v6, p0, Lcom/android/server/location/BTGpsLocationProvider;->mNavigating:Z

    if-eqz v6, :cond_2

    .line 622
    iget-object v6, p0, Lcom/android/server/location/BTGpsLocationProvider;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v6, v5}, Lcom/android/internal/app/IBatteryStats;->noteStartGps(I)V

    .line 619
    :goto_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 624
    :cond_2
    iget-object v6, p0, Lcom/android/server/location/BTGpsLocationProvider;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v6, v5}, Lcom/android/internal/app/IBatteryStats;->noteStopGps(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3

    .line 627
    .end local v5           #uid:I
    :catch_1
    move-exception v0

    .line 628
    .restart local v0       #e:Landroid/os/RemoteException;
    :try_start_4
    const-string v6, "BTGpsLocationProvider"

    const-string v8, "RemoteException in reportStatus"

    invoke-static {v6, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_3
    new-instance v2, Landroid/content/Intent;

    const-string v6, "android.location.GPS_ENABLED_CHANGE"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 632
    .local v2, intent:Landroid/content/Intent;
    const-string v6, "enabled"

    invoke-virtual {v2, v6, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 633
    iget-object v6, p0, Lcom/android/server/location/BTGpsLocationProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 634
    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 636
    :try_start_5
    const-string v6, "BTGpsLocationProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Setting System GPS status to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    iget-object v6, p0, Lcom/android/server/location/BTGpsLocationProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "gps"

    invoke-static {v6, v7, p1}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 642
    :goto_4
    return-void

    .line 634
    .end local v1           #i:I
    .end local v2           #intent:Landroid/content/Intent;
    .end local v4           #size:I
    :catchall_0
    move-exception v6

    :try_start_6
    monitor-exit v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v6

    .line 639
    .restart local v1       #i:I
    .restart local v2       #intent:Landroid/content/Intent;
    .restart local v4       #size:I
    :catch_2
    move-exception v0

    .line 640
    .local v0, e:Ljava/lang/Exception;
    const-string v6, "BTGpsLocationProvider"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4
.end method

.method private reportLocation(Landroid/location/Location;Z)V
    .locals 12
    .parameter "loc"
    .parameter "isValid"

    .prologue
    const/4 v11, 0x1

    const/4 v7, 0x0

    const/4 v10, 0x2

    .line 502
    if-nez p2, :cond_1

    .line 503
    iget v5, p0, Lcom/android/server/location/BTGpsLocationProvider;->mStatus:I

    if-ne v5, v10, :cond_0

    iget v5, p0, Lcom/android/server/location/BTGpsLocationProvider;->mTTFF:I

    if-lez v5, :cond_0

    .line 504
    const-string v5, "BTGpsLocationProvider"

    const-string v6, "Invalid sat fix -> sending notification to system"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.location.GPS_FIX_CHANGE"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 507
    .local v2, intent:Landroid/content/Intent;
    const-string v5, "enabled"

    invoke-virtual {v2, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 508
    iget-object v5, p0, Lcom/android/server/location/BTGpsLocationProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 509
    iget v5, p0, Lcom/android/server/location/BTGpsLocationProvider;->mSvCount:I

    invoke-direct {p0, v11, v5}, Lcom/android/server/location/BTGpsLocationProvider;->updateStatus(II)V

    .line 561
    .end local v2           #intent:Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 514
    :cond_1
    iget-object v6, p0, Lcom/android/server/location/BTGpsLocationProvider;->mLocation:Landroid/location/Location;

    monitor-enter v6

    .line 515
    :try_start_0
    iget-object v5, p0, Lcom/android/server/location/BTGpsLocationProvider;->mLocation:Landroid/location/Location;

    invoke-virtual {v5, p1}, Landroid/location/Location;->set(Landroid/location/Location;)V

    .line 516
    iget-object v5, p0, Lcom/android/server/location/BTGpsLocationProvider;->mLocation:Landroid/location/Location;

    invoke-virtual {p0}, Lcom/android/server/location/BTGpsLocationProvider;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/location/Location;->setProvider(Ljava/lang/String;)V

    .line 518
    const-string v5, "BTGpsLocationProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "reportLocation lat: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/location/BTGpsLocationProvider;->mLocation:Landroid/location/Location;

    invoke-virtual {v8}, Landroid/location/Location;->getLatitude()D

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " long: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/location/BTGpsLocationProvider;->mLocation:Landroid/location/Location;

    invoke-virtual {v8}, Landroid/location/Location;->getLongitude()D

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " alt: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/location/BTGpsLocationProvider;->mLocation:Landroid/location/Location;

    invoke-virtual {v8}, Landroid/location/Location;->getAltitude()D

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " accuracy: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/location/BTGpsLocationProvider;->mLocation:Landroid/location/Location;

    invoke-virtual {v8}, Landroid/location/Location;->getAccuracy()F

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " timestamp: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/location/BTGpsLocationProvider;->mLocation:Landroid/location/Location;

    invoke-virtual {v8}, Landroid/location/Location;->getTime()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 523
    :try_start_1
    iget-object v5, p0, Lcom/android/server/location/BTGpsLocationProvider;->mLocationManager:Landroid/location/ILocationManager;

    iget-object v7, p0, Lcom/android/server/location/BTGpsLocationProvider;->mLocation:Landroid/location/Location;

    const/4 v8, 0x0

    invoke-interface {v5, v7, v8}, Landroid/location/ILocationManager;->reportLocation(Landroid/location/Location;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 527
    :goto_1
    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 529
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/server/location/BTGpsLocationProvider;->mLastFixTime:J

    .line 531
    iget v5, p0, Lcom/android/server/location/BTGpsLocationProvider;->mTTFF:I

    if-nez v5, :cond_3

    if-eqz p2, :cond_3

    .line 532
    iget-wide v5, p0, Lcom/android/server/location/BTGpsLocationProvider;->mLastFixTime:J

    iget-wide v7, p0, Lcom/android/server/location/BTGpsLocationProvider;->mFixRequestTime:J

    sub-long/2addr v5, v7

    long-to-int v5, v5

    iput v5, p0, Lcom/android/server/location/BTGpsLocationProvider;->mTTFF:I

    .line 533
    const-string v5, "BTGpsLocationProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "TTFF: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/location/BTGpsLocationProvider;->mTTFF:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    iget-object v6, p0, Lcom/android/server/location/BTGpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    monitor-enter v6

    .line 537
    :try_start_3
    iget-object v5, p0, Lcom/android/server/location/BTGpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 538
    .local v4, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    if-ge v1, v4, :cond_2

    .line 539
    iget-object v5, p0, Lcom/android/server/location/BTGpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/location/BTGpsLocationProvider$Listener;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 541
    .local v3, listener:Lcom/android/server/location/BTGpsLocationProvider$Listener;
    :try_start_4
    iget-object v5, v3, Lcom/android/server/location/BTGpsLocationProvider$Listener;->mListener:Landroid/location/IGpsStatusListener;

    iget v7, p0, Lcom/android/server/location/BTGpsLocationProvider;->mTTFF:I

    invoke-interface {v5, v7}, Landroid/location/IGpsStatusListener;->onFirstFix(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1

    .line 538
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 524
    .end local v1           #i:I
    .end local v3           #listener:Lcom/android/server/location/BTGpsLocationProvider$Listener;
    .end local v4           #size:I
    :catch_0
    move-exception v0

    .line 525
    .local v0, e:Landroid/os/RemoteException;
    :try_start_5
    const-string v5, "BTGpsLocationProvider"

    const-string v7, "RemoteException calling reportLocation"

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 527
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v5

    .line 542
    .restart local v1       #i:I
    .restart local v3       #listener:Lcom/android/server/location/BTGpsLocationProvider$Listener;
    .restart local v4       #size:I
    :catch_1
    move-exception v0

    .line 543
    .restart local v0       #e:Landroid/os/RemoteException;
    :try_start_6
    const-string v5, "BTGpsLocationProvider"

    const-string v7, "RemoteException in first fix notification"

    invoke-static {v5, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    iget-object v5, p0, Lcom/android/server/location/BTGpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 546
    add-int/lit8 v4, v4, -0x1

    goto :goto_3

    .line 549
    .end local v0           #e:Landroid/os/RemoteException;
    .end local v3           #listener:Lcom/android/server/location/BTGpsLocationProvider$Listener;
    :cond_2
    monitor-exit v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 552
    .end local v1           #i:I
    .end local v4           #size:I
    :cond_3
    iget v5, p0, Lcom/android/server/location/BTGpsLocationProvider;->mStatus:I

    if-eq v5, v10, :cond_0

    .line 553
    const-string v5, "BTGpsLocationProvider"

    const-string v6, "Notify that we\'re receiving fixes"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.location.GPS_FIX_CHANGE"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 556
    .restart local v2       #intent:Landroid/content/Intent;
    const-string v5, "enabled"

    invoke-virtual {v2, v5, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 557
    iget-object v5, p0, Lcom/android/server/location/BTGpsLocationProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 558
    iget v5, p0, Lcom/android/server/location/BTGpsLocationProvider;->mSvCount:I

    invoke-direct {p0, v10, v5}, Lcom/android/server/location/BTGpsLocationProvider;->updateStatus(II)V

    goto/16 :goto_0

    .line 549
    .end local v2           #intent:Landroid/content/Intent;
    :catchall_1
    move-exception v5

    :try_start_7
    monitor-exit v6
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw v5
.end method

.method private reportNmea(Ljava/lang/String;J)V
    .locals 7
    .parameter "nmeaString"
    .parameter "timestamp"

    .prologue
    .line 650
    iget-object v5, p0, Lcom/android/server/location/BTGpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    monitor-enter v5

    .line 651
    :try_start_0
    iget-object v4, p0, Lcom/android/server/location/BTGpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 652
    .local v3, size:I
    if-lez v3, :cond_0

    .line 654
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 655
    iget-object v4, p0, Lcom/android/server/location/BTGpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/location/BTGpsLocationProvider$Listener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 657
    .local v2, listener:Lcom/android/server/location/BTGpsLocationProvider$Listener;
    :try_start_1
    iget-object v4, v2, Lcom/android/server/location/BTGpsLocationProvider$Listener;->mListener:Landroid/location/IGpsStatusListener;

    invoke-interface {v4, p2, p3, p1}, Landroid/location/IGpsStatusListener;->onNmeaReceived(JLjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 654
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 658
    :catch_0
    move-exception v0

    .line 659
    .local v0, e:Landroid/os/RemoteException;
    :try_start_2
    const-string v4, "BTGpsLocationProvider"

    const-string v6, "RemoteException in reportNmea"

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    iget-object v4, p0, Lcom/android/server/location/BTGpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 662
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 666
    .end local v0           #e:Landroid/os/RemoteException;
    .end local v1           #i:I
    .end local v2           #listener:Lcom/android/server/location/BTGpsLocationProvider$Listener;
    :cond_0
    monitor-exit v5

    .line 667
    return-void

    .line 666
    .end local v3           #size:I
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4
.end method

.method private reportSvStatus(I[I[F[F[F[I)V
    .locals 14
    .parameter "svCount"
    .parameter "mSvs"
    .parameter "mSnrs"
    .parameter "mSvElevations"
    .parameter "mSvAzimuths"
    .parameter "mSvMasks"

    .prologue
    .line 568
    const-string v0, "BTGpsLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "About to report sat status svcount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    iget-object v13, p0, Lcom/android/server/location/BTGpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    monitor-enter v13

    .line 570
    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/BTGpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v12

    .line 571
    .local v12, size:I
    const/4 v10, 0x0

    .local v10, i:I
    :goto_0
    if-ge v10, v12, :cond_0

    .line 572
    iget-object v0, p0, Lcom/android/server/location/BTGpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/location/BTGpsLocationProvider$Listener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 574
    .local v11, listener:Lcom/android/server/location/BTGpsLocationProvider$Listener;
    :try_start_1
    iget-object v0, v11, Lcom/android/server/location/BTGpsLocationProvider$Listener;->mListener:Landroid/location/IGpsStatusListener;

    const/4 v1, 0x0

    aget v6, p6, v1

    const/4 v1, 0x1

    aget v7, p6, v1

    const/4 v1, 0x2

    aget v8, p6, v1

    move v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    invoke-interface/range {v0 .. v8}, Landroid/location/IGpsStatusListener;->onSvStatusChanged(I[I[F[F[FIII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 571
    :goto_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 578
    :catch_0
    move-exception v9

    .line 579
    .local v9, e:Landroid/os/RemoteException;
    :try_start_2
    const-string v0, "BTGpsLocationProvider"

    const-string v1, "RemoteException in reportSvInfo"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    iget-object v0, p0, Lcom/android/server/location/BTGpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 582
    add-int/lit8 v12, v12, -0x1

    goto :goto_1

    .line 585
    .end local v9           #e:Landroid/os/RemoteException;
    .end local v11           #listener:Lcom/android/server/location/BTGpsLocationProvider$Listener;
    :cond_0
    monitor-exit v13
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 588
    iget v0, p0, Lcom/android/server/location/BTGpsLocationProvider;->mStatus:I

    const/4 v1, 0x2

    aget v1, p6, v1

    invoke-static {v1}, Ljava/lang/Integer;->bitCount(I)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/server/location/BTGpsLocationProvider;->updateStatus(II)V

    .line 589
    return-void

    .line 585
    .end local v10           #i:I
    .end local v12           #size:I
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v13
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method private sendMessage(IILjava/lang/Object;)V
    .locals 4
    .parameter "message"
    .parameter "arg"
    .parameter "obj"

    .prologue
    .line 712
    iget-object v2, p0, Lcom/android/server/location/BTGpsLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v2

    .line 713
    :try_start_0
    iget v1, p0, Lcom/android/server/location/BTGpsLocationProvider;->mPendingMessageBits:I

    const/4 v3, 0x1

    shl-int/2addr v3, p1

    or-int/2addr v1, v3

    iput v1, p0, Lcom/android/server/location/BTGpsLocationProvider;->mPendingMessageBits:I

    .line 714
    iget-object v1, p0, Lcom/android/server/location/BTGpsLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 715
    iget-object v1, p0, Lcom/android/server/location/BTGpsLocationProvider;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 716
    iget-object v1, p0, Lcom/android/server/location/BTGpsLocationProvider;->mHandler:Landroid/os/Handler;

    invoke-static {v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 717
    .local v0, m:Landroid/os/Message;
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 718
    iput-object p3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 719
    iget-object v1, p0, Lcom/android/server/location/BTGpsLocationProvider;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 720
    monitor-exit v2

    .line 721
    return-void

    .line 720
    .end local v0           #m:Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private updateStatus(II)V
    .locals 2
    .parameter "status"
    .parameter "svCount"

    .prologue
    .line 725
    iget v0, p0, Lcom/android/server/location/BTGpsLocationProvider;->mStatus:I

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/android/server/location/BTGpsLocationProvider;->mSvCount:I

    if-eq p2, v0, :cond_1

    .line 726
    :cond_0
    iput p1, p0, Lcom/android/server/location/BTGpsLocationProvider;->mStatus:I

    .line 727
    iput p2, p0, Lcom/android/server/location/BTGpsLocationProvider;->mSvCount:I

    .line 728
    iget-object v0, p0, Lcom/android/server/location/BTGpsLocationProvider;->mLocationExtras:Landroid/os/Bundle;

    const-string v1, "satellites"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 729
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/location/BTGpsLocationProvider;->mStatusUpdateTime:J

    .line 731
    :cond_1
    return-void
.end method


# virtual methods
.method public addListener(I)V
    .locals 4
    .parameter "uid"

    .prologue
    .line 804
    iget-object v2, p0, Lcom/android/server/location/BTGpsLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v2

    .line 805
    :try_start_0
    iget v1, p0, Lcom/android/server/location/BTGpsLocationProvider;->mPendingListenerMessages:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/location/BTGpsLocationProvider;->mPendingListenerMessages:I

    .line 806
    iget-object v1, p0, Lcom/android/server/location/BTGpsLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 807
    iget-object v1, p0, Lcom/android/server/location/BTGpsLocationProvider;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x8

    invoke-static {v1, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 808
    .local v0, m:Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 809
    iget-object v1, p0, Lcom/android/server/location/BTGpsLocationProvider;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 810
    monitor-exit v2

    .line 811
    return-void

    .line 810
    .end local v0           #m:Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public disable()V
    .locals 4

    .prologue
    .line 333
    iget-object v1, p0, Lcom/android/server/location/BTGpsLocationProvider;->mHandler:Landroid/os/Handler;

    monitor-enter v1

    .line 334
    const/4 v0, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_0
    invoke-direct {p0, v0, v2, v3}, Lcom/android/server/location/BTGpsLocationProvider;->sendMessage(IILjava/lang/Object;)V

    .line 335
    monitor-exit v1

    .line 336
    return-void

    .line 335
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public enable()V
    .locals 4

    .prologue
    .line 267
    iget-object v1, p0, Lcom/android/server/location/BTGpsLocationProvider;->mHandler:Landroid/os/Handler;

    monitor-enter v1

    .line 268
    const/4 v0, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    :try_start_0
    invoke-direct {p0, v0, v2, v3}, Lcom/android/server/location/BTGpsLocationProvider;->sendMessage(IILjava/lang/Object;)V

    .line 269
    monitor-exit v1

    .line 270
    return-void

    .line 269
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public enableLocationTracking(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 357
    return-void
.end method

.method public getAccuracy()I
    .locals 1

    .prologue
    .line 361
    const/4 v0, 0x1

    return v0
.end method

.method public getGpsStatusProvider()Landroid/location/IGpsStatusProvider;
    .locals 1

    .prologue
    .line 800
    iget-object v0, p0, Lcom/android/server/location/BTGpsLocationProvider;->mGpsStatusProvider:Landroid/location/IGpsStatusProvider;

    return-object v0
.end method

.method public getInternalState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 369
    const/4 v0, 0x0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 374
    const-string v0, "gps"

    return-object v0
.end method

.method public getPowerRequirement()I
    .locals 1

    .prologue
    .line 384
    const/4 v0, 0x2

    return v0
.end method

.method public getStatus(Landroid/os/Bundle;)I
    .locals 2
    .parameter "extras"

    .prologue
    .line 397
    if-eqz p1, :cond_0

    .line 398
    const-string v0, "satellites"

    iget v1, p0, Lcom/android/server/location/BTGpsLocationProvider;->mSvCount:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 400
    :cond_0
    iget v0, p0, Lcom/android/server/location/BTGpsLocationProvider;->mStatus:I

    return v0
.end method

.method public getStatusUpdateTime()J
    .locals 2

    .prologue
    .line 405
    iget-wide v0, p0, Lcom/android/server/location/BTGpsLocationProvider;->mStatusUpdateTime:J

    return-wide v0
.end method

.method public hasMonetaryCost()Z
    .locals 1

    .prologue
    .line 410
    const/4 v0, 0x0

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 415
    iget-boolean v0, p0, Lcom/android/server/location/BTGpsLocationProvider;->mEnabled:Z

    return v0
.end method

.method public meetsCriteria(Landroid/location/Criteria;)Z
    .locals 2
    .parameter "criteria"

    .prologue
    const/4 v0, 0x1

    .line 392
    invoke-virtual {p1}, Landroid/location/Criteria;->getPowerRequirement()I

    move-result v1

    if-eq v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeListener(I)V
    .locals 4
    .parameter "uid"

    .prologue
    .line 832
    iget-object v2, p0, Lcom/android/server/location/BTGpsLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v2

    .line 833
    :try_start_0
    iget v1, p0, Lcom/android/server/location/BTGpsLocationProvider;->mPendingListenerMessages:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/location/BTGpsLocationProvider;->mPendingListenerMessages:I

    .line 834
    iget-object v1, p0, Lcom/android/server/location/BTGpsLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 835
    iget-object v1, p0, Lcom/android/server/location/BTGpsLocationProvider;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x9

    invoke-static {v1, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 836
    .local v0, m:Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 837
    iget-object v1, p0, Lcom/android/server/location/BTGpsLocationProvider;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 838
    monitor-exit v2

    .line 839
    return-void

    .line 838
    .end local v0           #m:Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public requestSingleShotFix()Z
    .locals 1

    .prologue
    .line 421
    const/4 v0, 0x0

    return v0
.end method

.method public requiresCell()Z
    .locals 1

    .prologue
    .line 426
    const/4 v0, 0x0

    return v0
.end method

.method public requiresNetwork()Z
    .locals 1

    .prologue
    .line 431
    const/4 v0, 0x0

    return v0
.end method

.method public requiresSatellite()Z
    .locals 1

    .prologue
    .line 436
    const/4 v0, 0x1

    return v0
.end method

.method public sendExtraCommand(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 5
    .parameter "command"
    .parameter "extras"

    .prologue
    .line 441
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 446
    :goto_0
    return v1

    .line 442
    :cond_0
    iget-object v2, p0, Lcom/android/server/location/BTGpsLocationProvider;->mHandler:Landroid/os/Handler;

    monitor-enter v2

    .line 443
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\r\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 444
    .local v0, customCommand:Ljava/lang/String;
    const/16 v1, 0x3ea

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-direct {p0, v1, v3, v4}, Lcom/android/server/location/BTGpsLocationProvider;->sendMessage(IILjava/lang/Object;)V

    .line 445
    monitor-exit v2

    .line 446
    const/4 v1, 0x1

    goto :goto_0

    .line 445
    .end local v0           #customCommand:Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setMinTime(JLandroid/os/WorkSource;)V
    .locals 0
    .parameter "minTime"
    .parameter "ws"

    .prologue
    .line 455
    return-void
.end method

.method public supportsAltitude()Z
    .locals 1

    .prologue
    .line 459
    iget-object v0, p0, Lcom/android/server/location/BTGpsLocationProvider;->mLocation:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->hasAltitude()Z

    move-result v0

    return v0
.end method

.method public supportsBearing()Z
    .locals 1

    .prologue
    .line 464
    iget-object v0, p0, Lcom/android/server/location/BTGpsLocationProvider;->mLocation:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->hasBearing()Z

    move-result v0

    return v0
.end method

.method public supportsSpeed()Z
    .locals 1

    .prologue
    .line 469
    iget-object v0, p0, Lcom/android/server/location/BTGpsLocationProvider;->mLocation:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->hasSpeed()Z

    move-result v0

    return v0
.end method

.method public updateLocation(Landroid/location/Location;)V
    .locals 2
    .parameter "location"

    .prologue
    .line 478
    const/4 v0, 0x7

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lcom/android/server/location/BTGpsLocationProvider;->sendMessage(IILjava/lang/Object;)V

    .line 479
    return-void
.end method

.method public updateNetworkState(ILandroid/net/NetworkInfo;)V
    .locals 0
    .parameter "state"
    .parameter "info"

    .prologue
    .line 494
    return-void
.end method

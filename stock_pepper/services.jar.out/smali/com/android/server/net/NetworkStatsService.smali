.class public Lcom/android/server/net/NetworkStatsService;
.super Landroid/net/INetworkStatsService$Stub;
.source "NetworkStatsService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/net/NetworkStatsService$DefaultNetworkStatsSettings;,
        Lcom/android/server/net/NetworkStatsService$UidStatsKey;,
        Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;
    }
.end annotation


# static fields
.field public static final ACTION_NETWORK_STATS_POLL:Ljava/lang/String; = "com.android.server.action.NETWORK_STATS_POLL"

.field public static final ACTION_NETWORK_STATS_UPDATED:Ljava/lang/String; = "com.android.server.action.NETWORK_STATS_UPDATED"

.field private static final ENABLE_SAMPLE_AFTER_POLL:Z = true

.field private static final FILE_MAGIC:I = 0x414e4554

.field private static final FLAG_PERSIST_ALL:I = 0x3

.field private static final FLAG_PERSIST_FORCE:I = 0x100

.field private static final FLAG_PERSIST_NETWORK:I = 0x1

.field private static final FLAG_PERSIST_UID:I = 0x2

.field private static final GB_IN_BYTES:J = 0x40000000L

.field private static final KB_IN_BYTES:J = 0x400L

.field private static final LOGD:Z = false

.field private static final LOGV:Z = false

.field private static final MB_IN_BYTES:J = 0x100000L

.field private static final MSG_PERFORM_POLL:I = 0x1

.field private static final MSG_UPDATE_IFACES:I = 0x2

.field private static final TAG:Ljava/lang/String; = "NetworkStats"

.field private static final TAG_NETSTATS_ERROR:Ljava/lang/String; = "netstats_error"

.field private static final VERSION_NETWORK_INIT:I = 0x1

.field private static final VERSION_UID_INIT:I = 0x1

.field private static final VERSION_UID_WITH_IDENT:I = 0x2

.field private static final VERSION_UID_WITH_SET:I = 0x4

.field private static final VERSION_UID_WITH_TAG:I = 0x3


# instance fields
.field private mActiveIfaces:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/net/NetworkIdentitySet;",
            ">;"
        }
    .end annotation
.end field

.field private mActiveUidCounterSet:Landroid/util/SparseIntArray;

.field private final mAlarmManager:Landroid/app/IAlarmManager;

.field private mAlertObserver:Landroid/net/INetworkManagementEventObserver;

.field private mConnManager:Landroid/net/IConnectivityManager;

.field private mConnReceiver:Landroid/content/BroadcastReceiver;

.field private final mContext:Landroid/content/Context;

.field private mDropBox:Landroid/os/DropBoxManager;

.field private final mHandler:Landroid/os/Handler;

.field private mHandlerCallback:Landroid/os/Handler$Callback;

.field private final mHandlerThread:Landroid/os/HandlerThread;

.field private mLastPersistNetworkDevSnapshot:Landroid/net/NetworkStats;

.field private mLastPersistNetworkXtSnapshot:Landroid/net/NetworkStats;

.field private mLastPersistUidSnapshot:Landroid/net/NetworkStats;

.field private mLastPhoneNetworkType:I

.field private mLastPhoneState:I

.field private mLastPollNetworkDevSnapshot:Landroid/net/NetworkStats;

.field private mLastPollNetworkXtSnapshot:Landroid/net/NetworkStats;

.field private mLastPollOperationsSnapshot:Landroid/net/NetworkStats;

.field private mLastPollUidSnapshot:Landroid/net/NetworkStats;

.field private final mNetworkDevFile:Lcom/android/internal/os/AtomicFile;

.field private mNetworkDevStats:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/server/net/NetworkIdentitySet;",
            "Landroid/net/NetworkStatsHistory;",
            ">;"
        }
    .end annotation
.end field

.field private final mNetworkManager:Landroid/os/INetworkManagementService;

.field private mNetworkStatsLoaded:Z

.field private final mNetworkXtFile:Lcom/android/internal/os/AtomicFile;

.field private mNetworkXtStats:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/server/net/NetworkIdentitySet;",
            "Landroid/net/NetworkStatsHistory;",
            ">;"
        }
    .end annotation
.end field

.field private mOperations:Landroid/net/NetworkStats;

.field private mPhoneListener:Landroid/telephony/PhoneStateListener;

.field private mPollIntent:Landroid/app/PendingIntent;

.field private mPollReceiver:Landroid/content/BroadcastReceiver;

.field private mRemovedReceiver:Landroid/content/BroadcastReceiver;

.field private final mSettings:Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;

.field private mShutdownReceiver:Landroid/content/BroadcastReceiver;

.field private final mStatsLock:Ljava/lang/Object;

.field private final mTeleManager:Landroid/telephony/TelephonyManager;

.field private mTetherReceiver:Landroid/content/BroadcastReceiver;

.field private final mTime:Landroid/util/TrustedTime;

.field private final mUidFile:Lcom/android/internal/os/AtomicFile;

.field private mUidStats:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/server/net/NetworkStatsService$UidStatsKey;",
            "Landroid/net/NetworkStatsHistory;",
            ">;"
        }
    .end annotation
.end field

.field private mUidStatsLoaded:Z

.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/app/IAlarmManager;)V
    .locals 7
    .parameter "context"
    .parameter "networkManager"
    .parameter "alarmManager"

    .prologue
    .line 239
    invoke-static {p1}, Landroid/util/NtpTrustedTime;->getInstance(Landroid/content/Context;)Landroid/util/NtpTrustedTime;

    move-result-object v4

    invoke-static {}, Lcom/android/server/net/NetworkStatsService;->getSystemDir()Ljava/io/File;

    move-result-object v5

    new-instance v6, Lcom/android/server/net/NetworkStatsService$DefaultNetworkStatsSettings;

    invoke-direct {v6, p1}, Lcom/android/server/net/NetworkStatsService$DefaultNetworkStatsSettings;-><init>(Landroid/content/Context;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/server/net/NetworkStatsService;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/app/IAlarmManager;Landroid/util/TrustedTime;Ljava/io/File;Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;)V

    .line 241
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/app/IAlarmManager;Landroid/util/TrustedTime;Ljava/io/File;Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;)V
    .locals 6
    .parameter "context"
    .parameter "networkManager"
    .parameter "alarmManager"
    .parameter "time"
    .parameter "systemDir"
    .parameter "settings"

    .prologue
    const/4 v5, 0x0

    .line 249
    invoke-direct {p0}, Landroid/net/INetworkStatsService$Stub;-><init>()V

    .line 199
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mStatsLock:Ljava/lang/Object;

    .line 202
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mActiveIfaces:Ljava/util/HashMap;

    .line 204
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mNetworkDevStats:Ljava/util/HashMap;

    .line 206
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mNetworkXtStats:Ljava/util/HashMap;

    .line 208
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mUidStats:Ljava/util/HashMap;

    .line 211
    iput-boolean v5, p0, Lcom/android/server/net/NetworkStatsService;->mNetworkStatsLoaded:Z

    .line 213
    iput-boolean v5, p0, Lcom/android/server/net/NetworkStatsService;->mUidStatsLoaded:Z

    .line 225
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mActiveUidCounterSet:Landroid/util/SparseIntArray;

    .line 228
    new-instance v1, Landroid/net/NetworkStats;

    const-wide/16 v2, 0x0

    const/16 v4, 0xa

    invoke-direct {v1, v2, v3, v4}, Landroid/net/NetworkStats;-><init>(JI)V

    iput-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mOperations:Landroid/net/NetworkStats;

    .line 611
    new-instance v1, Lcom/android/server/net/NetworkStatsService$1;

    invoke-direct {v1, p0}, Lcom/android/server/net/NetworkStatsService$1;-><init>(Lcom/android/server/net/NetworkStatsService;)V

    iput-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mConnReceiver:Landroid/content/BroadcastReceiver;

    .line 623
    new-instance v1, Lcom/android/server/net/NetworkStatsService$2;

    invoke-direct {v1, p0}, Lcom/android/server/net/NetworkStatsService$2;-><init>(Lcom/android/server/net/NetworkStatsService;)V

    iput-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mTetherReceiver:Landroid/content/BroadcastReceiver;

    .line 632
    new-instance v1, Lcom/android/server/net/NetworkStatsService$3;

    invoke-direct {v1, p0}, Lcom/android/server/net/NetworkStatsService$3;-><init>(Lcom/android/server/net/NetworkStatsService;)V

    iput-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mPollReceiver:Landroid/content/BroadcastReceiver;

    .line 644
    new-instance v1, Lcom/android/server/net/NetworkStatsService$4;

    invoke-direct {v1, p0}, Lcom/android/server/net/NetworkStatsService$4;-><init>(Lcom/android/server/net/NetworkStatsService;)V

    iput-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mRemovedReceiver:Landroid/content/BroadcastReceiver;

    .line 661
    new-instance v1, Lcom/android/server/net/NetworkStatsService$5;

    invoke-direct {v1, p0}, Lcom/android/server/net/NetworkStatsService$5;-><init>(Lcom/android/server/net/NetworkStatsService;)V

    iput-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mShutdownReceiver:Landroid/content/BroadcastReceiver;

    .line 674
    new-instance v1, Lcom/android/server/net/NetworkStatsService$6;

    invoke-direct {v1, p0}, Lcom/android/server/net/NetworkStatsService$6;-><init>(Lcom/android/server/net/NetworkStatsService;)V

    iput-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mAlertObserver:Landroid/net/INetworkManagementEventObserver;

    .line 692
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/net/NetworkStatsService;->mLastPhoneState:I

    .line 693
    iput v5, p0, Lcom/android/server/net/NetworkStatsService;->mLastPhoneNetworkType:I

    .line 699
    new-instance v1, Lcom/android/server/net/NetworkStatsService$7;

    invoke-direct {v1, p0}, Lcom/android/server/net/NetworkStatsService$7;-><init>(Lcom/android/server/net/NetworkStatsService;)V

    iput-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mPhoneListener:Landroid/telephony/PhoneStateListener;

    .line 1627
    new-instance v1, Lcom/android/server/net/NetworkStatsService$8;

    invoke-direct {v1, p0}, Lcom/android/server/net/NetworkStatsService$8;-><init>(Lcom/android/server/net/NetworkStatsService;)V

    iput-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mHandlerCallback:Landroid/os/Handler$Callback;

    .line 250
    const-string v1, "missing Context"

    invoke-static {p1, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    iput-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    .line 251
    const-string v1, "missing INetworkManagementService"

    invoke-static {p2, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/INetworkManagementService;

    iput-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mNetworkManager:Landroid/os/INetworkManagementService;

    .line 252
    const-string v1, "missing IAlarmManager"

    invoke-static {p3, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/IAlarmManager;

    iput-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mAlarmManager:Landroid/app/IAlarmManager;

    .line 253
    const-string v1, "missing TrustedTime"

    invoke-static {p4, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/TrustedTime;

    iput-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mTime:Landroid/util/TrustedTime;

    .line 254
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    const-string v2, "missing TelephonyManager"

    invoke-static {v1, v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mTeleManager:Landroid/telephony/TelephonyManager;

    .line 255
    const-string v1, "missing NetworkStatsSettings"

    invoke-static {p6, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;

    iput-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mSettings:Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;

    .line 257
    const-string v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 259
    .local v0, powerManager:Landroid/os/PowerManager;
    const/4 v1, 0x1

    const-string v2, "NetworkStats"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 261
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "NetworkStats"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 262
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 263
    new-instance v1, Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/net/NetworkStatsService;->mHandlerCallback:Landroid/os/Handler$Callback;

    invoke-direct {v1, v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mHandler:Landroid/os/Handler;

    .line 265
    new-instance v1, Lcom/android/internal/os/AtomicFile;

    new-instance v2, Ljava/io/File;

    const-string v3, "netstats.bin"

    invoke-direct {v2, p5, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lcom/android/internal/os/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mNetworkDevFile:Lcom/android/internal/os/AtomicFile;

    .line 266
    new-instance v1, Lcom/android/internal/os/AtomicFile;

    new-instance v2, Ljava/io/File;

    const-string v3, "netstats_xt.bin"

    invoke-direct {v2, p5, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lcom/android/internal/os/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mNetworkXtFile:Lcom/android/internal/os/AtomicFile;

    .line 267
    new-instance v1, Lcom/android/internal/os/AtomicFile;

    new-instance v2, Ljava/io/File;

    const-string v3, "netstats_uid.bin"

    invoke-direct {v2, p5, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lcom/android/internal/os/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mUidFile:Lcom/android/internal/os/AtomicFile;

    .line 268
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/net/NetworkStatsService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 132
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->updateIfaces()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/net/NetworkStatsService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 132
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkStatsService;->performPoll(I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/net/NetworkStatsService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 132
    iget v0, p0, Lcom/android/server/net/NetworkStatsService;->mLastPhoneNetworkType:I

    return v0
.end method

.method static synthetic access$1002(Lcom/android/server/net/NetworkStatsService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 132
    iput p1, p0, Lcom/android/server/net/NetworkStatsService;->mLastPhoneNetworkType:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/server/net/NetworkStatsService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 132
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->registerGlobalAlert()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/net/NetworkStatsService;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mStatsLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/net/NetworkStatsService;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .parameter "x0"

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/net/NetworkStatsService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 132
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkStatsService;->removeUidLocked(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/net/NetworkStatsService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 132
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->shutdownLocked()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/net/NetworkStatsService;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/net/NetworkStatsService;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/net/NetworkStatsService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 132
    iget v0, p0, Lcom/android/server/net/NetworkStatsService;->mLastPhoneState:I

    return v0
.end method

.method static synthetic access$902(Lcom/android/server/net/NetworkStatsService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 132
    iput p1, p0, Lcom/android/server/net/NetworkStatsService;->mLastPhoneState:I

    return p1
.end method

.method private bootstrapStats()V
    .locals 5

    .prologue
    .line 782
    :try_start_0
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mNetworkManager:Landroid/os/INetworkManagementService;

    const/4 v2, -0x1

    invoke-interface {v1, v2}, Landroid/os/INetworkManagementService;->getNetworkStatsUidDetail(I)Landroid/net/NetworkStats;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mLastPollUidSnapshot:Landroid/net/NetworkStats;

    .line 783
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mNetworkManager:Landroid/os/INetworkManagementService;

    invoke-interface {v1}, Landroid/os/INetworkManagementService;->getNetworkStatsSummary()Landroid/net/NetworkStats;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mLastPollNetworkDevSnapshot:Landroid/net/NetworkStats;

    .line 784
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mLastPollUidSnapshot:Landroid/net/NetworkStats;

    invoke-static {v1}, Lcom/android/server/net/NetworkStatsService;->computeNetworkXtSnapshotFromUid(Landroid/net/NetworkStats;)Landroid/net/NetworkStats;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mLastPollNetworkXtSnapshot:Landroid/net/NetworkStats;

    .line 785
    new-instance v1, Landroid/net/NetworkStats;

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Landroid/net/NetworkStats;-><init>(JI)V

    iput-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mLastPollOperationsSnapshot:Landroid/net/NetworkStats;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 791
    :goto_0
    return-void

    .line 786
    :catch_0
    move-exception v0

    .line 787
    .local v0, e:Ljava/lang/IllegalStateException;
    const-string v1, "NetworkStats"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "problem reading network stats: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 788
    .end local v0           #e:Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method private static computeNetworkXtSnapshotFromUid(Landroid/net/NetworkStats;)Landroid/net/NetworkStats;
    .locals 1
    .parameter "uidSnapshot"

    .prologue
    .line 1599
    invoke-virtual {p0}, Landroid/net/NetworkStats;->groupedByIface()Landroid/net/NetworkStats;

    move-result-object v0

    return-object v0
.end method

.method private computeStatsDelta(Landroid/net/NetworkStats;Landroid/net/NetworkStats;ZLjava/lang/String;)Landroid/net/NetworkStats;
    .locals 9
    .parameter "before"
    .parameter "current"
    .parameter "collectStale"
    .parameter "type"

    .prologue
    const-wide/16 v7, 0x0

    const/16 v6, 0xa

    .line 1552
    if-eqz p1, :cond_1

    .line 1554
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p2, p1, v3}, Landroid/net/NetworkStats;->subtract(Landroid/net/NetworkStats;Z)Landroid/net/NetworkStats;
    :try_end_0
    .catch Landroid/net/NetworkStats$NonMonotonicException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p2

    .line 1580
    .end local p2
    :cond_0
    :goto_0
    return-object p2

    .line 1555
    .restart local p2
    :catch_0
    move-exception v1

    .line 1556
    .local v1, e:Landroid/net/NetworkStats$NonMonotonicException;
    const-string v3, "NetworkStats"

    const-string v4, "found non-monotonic values; saving to dropbox"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1559
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1560
    .local v0, builder:Ljava/lang/StringBuilder;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "found non-monotonic "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " values at left["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Landroid/net/NetworkStats$NonMonotonicException;->leftIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] - right["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Landroid/net/NetworkStats$NonMonotonicException;->rightIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1562
    const-string v3, "left="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Landroid/net/NetworkStats$NonMonotonicException;->left:Landroid/net/NetworkStats;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1563
    const-string v3, "right="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Landroid/net/NetworkStats$NonMonotonicException;->right:Landroid/net/NetworkStats;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1564
    iget-object v3, p0, Lcom/android/server/net/NetworkStatsService;->mDropBox:Landroid/os/DropBoxManager;

    const-string v4, "netstats_error"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/os/DropBoxManager;->addText(Ljava/lang/String;Ljava/lang/String;)V

    .line 1568
    const/4 v3, 0x1

    :try_start_1
    invoke-virtual {p2, p1, v3}, Landroid/net/NetworkStats;->subtract(Landroid/net/NetworkStats;Z)Landroid/net/NetworkStats;
    :try_end_1
    .catch Landroid/net/NetworkStats$NonMonotonicException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object p2

    goto :goto_0

    .line 1569
    :catch_1
    move-exception v2

    .line 1570
    .local v2, e1:Landroid/net/NetworkStats$NonMonotonicException;
    const-string v3, "NetworkStats"

    const-string v4, "found non-monotonic values; returning empty delta"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1571
    new-instance p2, Landroid/net/NetworkStats;

    .end local p2
    invoke-direct {p2, v7, v8, v6}, Landroid/net/NetworkStats;-><init>(JI)V

    goto :goto_0

    .line 1574
    .end local v0           #builder:Ljava/lang/StringBuilder;
    .end local v1           #e:Landroid/net/NetworkStats$NonMonotonicException;
    .end local v2           #e1:Landroid/net/NetworkStats$NonMonotonicException;
    .restart local p2
    :cond_1
    if-nez p3, :cond_0

    .line 1580
    new-instance p2, Landroid/net/NetworkStats;

    .end local p2
    invoke-direct {p2, v7, v8, v6}, Landroid/net/NetworkStats;-><init>(JI)V

    goto/16 :goto_0
.end method

.method private ensureUidStatsLoadedLocked()V
    .locals 1

    .prologue
    .line 1187
    iget-boolean v0, p0, Lcom/android/server/net/NetworkStatsService;->mUidStatsLoaded:Z

    if-nez v0, :cond_0

    .line 1188
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->readUidStatsLocked()V

    .line 1189
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/net/NetworkStatsService;->mUidStatsLoaded:Z

    .line 1191
    :cond_0
    return-void
.end method

.method private estimateNetworkBuckets()I
    .locals 4

    .prologue
    .line 1603
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mSettings:Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;

    invoke-interface {v0}, Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;->getNetworkMaxHistory()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mSettings:Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;

    invoke-interface {v2}, Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;->getNetworkBucketDuration()J

    move-result-wide v2

    div-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method private static estimateResizeBuckets(Landroid/net/NetworkStatsHistory;J)I
    .locals 4
    .parameter "existing"
    .parameter "newBucketDuration"

    .prologue
    .line 1611
    invoke-virtual {p0}, Landroid/net/NetworkStatsHistory;->size()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p0}, Landroid/net/NetworkStatsHistory;->getBucketDuration()J

    move-result-wide v2

    mul-long/2addr v0, v2

    div-long/2addr v0, p1

    long-to-int v0, v0

    return v0
.end method

.method private estimateUidBuckets()I
    .locals 4

    .prologue
    .line 1607
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mSettings:Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;

    invoke-interface {v0}, Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;->getUidMaxHistory()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mSettings:Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;

    invoke-interface {v2}, Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;->getUidBucketDuration()J

    move-result-wide v2

    div-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method private findOrCreateNetworkDevStatsLocked(Lcom/android/server/net/NetworkIdentitySet;)Landroid/net/NetworkStatsHistory;
    .locals 1
    .parameter "ident"

    .prologue
    .line 1084
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mNetworkDevStats:Ljava/util/HashMap;

    invoke-direct {p0, p1, v0}, Lcom/android/server/net/NetworkStatsService;->findOrCreateNetworkStatsLocked(Lcom/android/server/net/NetworkIdentitySet;Ljava/util/HashMap;)Landroid/net/NetworkStatsHistory;

    move-result-object v0

    return-object v0
.end method

.method private findOrCreateNetworkStatsLocked(Lcom/android/server/net/NetworkIdentitySet;Ljava/util/HashMap;)Landroid/net/NetworkStatsHistory;
    .locals 6
    .parameter "ident"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/net/NetworkIdentitySet;",
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/server/net/NetworkIdentitySet;",
            "Landroid/net/NetworkStatsHistory;",
            ">;)",
            "Landroid/net/NetworkStatsHistory;"
        }
    .end annotation

    .prologue
    .line 1089
    .local p2, source:Ljava/util/HashMap;,"Ljava/util/HashMap<Lcom/android/server/net/NetworkIdentitySet;Landroid/net/NetworkStatsHistory;>;"
    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkStatsHistory;

    .line 1092
    .local v2, existing:Landroid/net/NetworkStatsHistory;
    iget-object v4, p0, Lcom/android/server/net/NetworkStatsService;->mSettings:Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;

    invoke-interface {v4}, Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;->getNetworkBucketDuration()J

    move-result-wide v0

    .line 1093
    .local v0, bucketDuration:J
    const/4 v3, 0x0

    .line 1094
    .local v3, updated:Landroid/net/NetworkStatsHistory;
    if-nez v2, :cond_1

    .line 1095
    new-instance v3, Landroid/net/NetworkStatsHistory;

    .end local v3           #updated:Landroid/net/NetworkStatsHistory;
    const/16 v4, 0xa

    invoke-direct {v3, v0, v1, v4}, Landroid/net/NetworkStatsHistory;-><init>(JI)V

    .line 1102
    .restart local v3       #updated:Landroid/net/NetworkStatsHistory;
    :cond_0
    :goto_0
    if-eqz v3, :cond_2

    .line 1103
    invoke-virtual {p2, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1106
    .end local v3           #updated:Landroid/net/NetworkStatsHistory;
    :goto_1
    return-object v3

    .line 1096
    .restart local v3       #updated:Landroid/net/NetworkStatsHistory;
    :cond_1
    invoke-virtual {v2}, Landroid/net/NetworkStatsHistory;->getBucketDuration()J

    move-result-wide v4

    cmp-long v4, v4, v0

    if-eqz v4, :cond_0

    .line 1097
    new-instance v3, Landroid/net/NetworkStatsHistory;

    .end local v3           #updated:Landroid/net/NetworkStatsHistory;
    invoke-static {v2, v0, v1}, Lcom/android/server/net/NetworkStatsService;->estimateResizeBuckets(Landroid/net/NetworkStatsHistory;J)I

    move-result v4

    invoke-direct {v3, v0, v1, v4}, Landroid/net/NetworkStatsHistory;-><init>(JI)V

    .line 1099
    .restart local v3       #updated:Landroid/net/NetworkStatsHistory;
    invoke-virtual {v3, v2}, Landroid/net/NetworkStatsHistory;->recordEntireHistory(Landroid/net/NetworkStatsHistory;)V

    goto :goto_0

    :cond_2
    move-object v3, v2

    .line 1106
    goto :goto_1
.end method

.method private findOrCreateNetworkXtStatsLocked(Lcom/android/server/net/NetworkIdentitySet;)Landroid/net/NetworkStatsHistory;
    .locals 1
    .parameter "ident"

    .prologue
    .line 1080
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mNetworkXtStats:Ljava/util/HashMap;

    invoke-direct {p0, p1, v0}, Lcom/android/server/net/NetworkStatsService;->findOrCreateNetworkStatsLocked(Lcom/android/server/net/NetworkIdentitySet;Ljava/util/HashMap;)Landroid/net/NetworkStatsHistory;

    move-result-object v0

    return-object v0
.end method

.method private findOrCreateUidStatsLocked(Lcom/android/server/net/NetworkIdentitySet;III)Landroid/net/NetworkStatsHistory;
    .locals 7
    .parameter "ident"
    .parameter "uid"
    .parameter "set"
    .parameter "tag"

    .prologue
    .line 1112
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->ensureUidStatsLoadedLocked()V

    .line 1114
    new-instance v3, Lcom/android/server/net/NetworkStatsService$UidStatsKey;

    invoke-direct {v3, p1, p2, p3, p4}, Lcom/android/server/net/NetworkStatsService$UidStatsKey;-><init>(Lcom/android/server/net/NetworkIdentitySet;III)V

    .line 1115
    .local v3, key:Lcom/android/server/net/NetworkStatsService$UidStatsKey;
    iget-object v5, p0, Lcom/android/server/net/NetworkStatsService;->mUidStats:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkStatsHistory;

    .line 1118
    .local v2, existing:Landroid/net/NetworkStatsHistory;
    iget-object v5, p0, Lcom/android/server/net/NetworkStatsService;->mSettings:Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;

    invoke-interface {v5}, Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;->getUidBucketDuration()J

    move-result-wide v0

    .line 1119
    .local v0, bucketDuration:J
    const/4 v4, 0x0

    .line 1120
    .local v4, updated:Landroid/net/NetworkStatsHistory;
    if-nez v2, :cond_1

    .line 1121
    new-instance v4, Landroid/net/NetworkStatsHistory;

    .end local v4           #updated:Landroid/net/NetworkStatsHistory;
    const/16 v5, 0xa

    invoke-direct {v4, v0, v1, v5}, Landroid/net/NetworkStatsHistory;-><init>(JI)V

    .line 1128
    .restart local v4       #updated:Landroid/net/NetworkStatsHistory;
    :cond_0
    :goto_0
    if-eqz v4, :cond_2

    .line 1129
    iget-object v5, p0, Lcom/android/server/net/NetworkStatsService;->mUidStats:Ljava/util/HashMap;

    invoke-virtual {v5, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1132
    .end local v4           #updated:Landroid/net/NetworkStatsHistory;
    :goto_1
    return-object v4

    .line 1122
    .restart local v4       #updated:Landroid/net/NetworkStatsHistory;
    :cond_1
    invoke-virtual {v2}, Landroid/net/NetworkStatsHistory;->getBucketDuration()J

    move-result-wide v5

    cmp-long v5, v5, v0

    if-eqz v5, :cond_0

    .line 1123
    new-instance v4, Landroid/net/NetworkStatsHistory;

    .end local v4           #updated:Landroid/net/NetworkStatsHistory;
    invoke-static {v2, v0, v1}, Lcom/android/server/net/NetworkStatsService;->estimateResizeBuckets(Landroid/net/NetworkStatsHistory;J)I

    move-result v5

    invoke-direct {v4, v0, v1, v5}, Landroid/net/NetworkStatsHistory;-><init>(JI)V

    .line 1125
    .restart local v4       #updated:Landroid/net/NetworkStatsHistory;
    invoke-virtual {v4, v2}, Landroid/net/NetworkStatsHistory;->recordEntireHistory(Landroid/net/NetworkStatsHistory;)V

    goto :goto_0

    :cond_2
    move-object v4, v2

    .line 1132
    goto :goto_1
.end method

.method private generateRandomLocked([Ljava/lang/String;)V
    .locals 51
    .parameter "args"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1471
    const/4 v11, 0x1

    aget-object v11, p1, v11

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v42

    .line 1472
    .local v42, totalBytes:J
    const/4 v11, 0x2

    aget-object v11, p1, v11

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v44

    .line 1474
    .local v44, totalTime:J
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v37

    .line 1475
    .local v37, pm:Landroid/content/pm/PackageManager;
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v41

    .line 1476
    .local v41, specialUidList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/16 v30, 0x3

    .local v30, i:I
    :goto_0
    move-object/from16 v0, p1

    array-length v11, v0

    move/from16 v0, v30

    if-ge v0, v11, :cond_0

    .line 1478
    :try_start_0
    aget-object v11, p1, v30

    const/4 v12, 0x0

    move-object/from16 v0, v37

    invoke-virtual {v0, v11, v12}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v11

    iget v11, v11, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object/from16 v0, v41

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1476
    add-int/lit8 v30, v30, 0x1

    goto :goto_0

    .line 1479
    :catch_0
    move-exception v27

    .line 1480
    .local v27, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v11, Ljava/lang/RuntimeException;

    move-object/from16 v0, v27

    invoke-direct {v11, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v11

    .line 1484
    .end local v27           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    invoke-static {}, Lcom/google/android/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v36

    .line 1485
    .local v36, otherUidSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Integer;>;"
    const/4 v11, 0x0

    move-object/from16 v0, v37

    invoke-virtual {v0, v11}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v31

    .local v31, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Landroid/content/pm/ApplicationInfo;

    .line 1486
    .local v34, info:Landroid/content/pm/ApplicationInfo;
    const-string v11, "android.permission.INTERNET"

    move-object/from16 v0, v34

    iget-object v12, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v37

    invoke-virtual {v0, v11, v12}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v11

    if-nez v11, :cond_1

    move-object/from16 v0, v34

    iget v11, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object/from16 v0, v41

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 1488
    move-object/from16 v0, v34

    iget v11, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object/from16 v0, v36

    invoke-virtual {v0, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1492
    .end local v34           #info:Landroid/content/pm/ApplicationInfo;
    :cond_2
    new-instance v35, Ljava/util/ArrayList;

    invoke-direct/range {v35 .. v36}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1494
    .local v35, otherUidList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 1495
    .local v6, end:J
    sub-long v4, v6, v44

    .line 1497
    .local v4, start:J
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/net/NetworkStatsService;->mNetworkDevStats:Ljava/util/HashMap;

    invoke-virtual {v11}, Ljava/util/HashMap;->clear()V

    .line 1498
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/net/NetworkStatsService;->mNetworkXtStats:Ljava/util/HashMap;

    invoke-virtual {v11}, Ljava/util/HashMap;->clear()V

    .line 1499
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/net/NetworkStatsService;->mUidStats:Ljava/util/HashMap;

    invoke-virtual {v11}, Ljava/util/HashMap;->clear()V

    .line 1501
    new-instance v38, Ljava/util/Random;

    invoke-direct/range {v38 .. v38}, Ljava/util/Random;-><init>()V

    .line 1502
    .local v38, r:Ljava/util/Random;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/net/NetworkStatsService;->mActiveIfaces:Ljava/util/HashMap;

    invoke-virtual {v11}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v31

    .end local v31           #i$:Ljava/util/Iterator;
    :cond_3
    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Lcom/android/server/net/NetworkIdentitySet;

    .line 1503
    .local v33, ident:Lcom/android/server/net/NetworkIdentitySet;
    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Lcom/android/server/net/NetworkStatsService;->findOrCreateNetworkDevStatsLocked(Lcom/android/server/net/NetworkIdentitySet;)Landroid/net/NetworkStatsHistory;

    move-result-object v26

    .line 1504
    .local v26, devHistory:Landroid/net/NetworkStatsHistory;
    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Lcom/android/server/net/NetworkStatsService;->findOrCreateNetworkXtStatsLocked(Lcom/android/server/net/NetworkIdentitySet;)Landroid/net/NetworkStatsHistory;

    move-result-object v50

    .line 1506
    .local v50, xtHistory:Landroid/net/NetworkStatsHistory;
    new-instance v49, Ljava/util/ArrayList;

    invoke-direct/range {v49 .. v49}, Ljava/util/ArrayList;-><init>()V

    .line 1507
    .local v49, uidList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    move-object/from16 v0, v49

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1509
    invoke-virtual/range {v49 .. v49}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-nez v11, :cond_4

    .line 1510
    invoke-static/range {v35 .. v35}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    .line 1511
    move-object/from16 v0, v49

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1514
    :cond_4
    const/16 v28, 0x1

    .line 1515
    .local v28, first:Z
    move-wide/from16 v39, v42

    .line 1516
    .local v39, remainingBytes:J
    invoke-virtual/range {v49 .. v49}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v32

    .local v32, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface/range {v32 .. v32}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface/range {v32 .. v32}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v46

    .line 1517
    .local v46, uid:I
    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move/from16 v2, v46

    invoke-direct {v0, v1, v2, v11, v12}, Lcom/android/server/net/NetworkStatsService;->findOrCreateUidStatsLocked(Lcom/android/server/net/NetworkIdentitySet;III)Landroid/net/NetworkStatsHistory;

    move-result-object v3

    .line 1519
    .local v3, defaultHistory:Landroid/net/NetworkStatsHistory;
    const/4 v11, 0x1

    const/4 v12, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move/from16 v2, v46

    invoke-direct {v0, v1, v2, v11, v12}, Lcom/android/server/net/NetworkStatsService;->findOrCreateUidStatsLocked(Lcom/android/server/net/NetworkIdentitySet;III)Landroid/net/NetworkStatsHistory;

    move-result-object v10

    .line 1522
    .local v10, foregroundHistory:Landroid/net/NetworkStatsHistory;
    invoke-virtual/range {v49 .. v49}, Ljava/util/ArrayList;->size()I

    move-result v11

    int-to-long v11, v11

    div-long v47, v42, v11

    .line 1524
    .local v47, uidBytes:J
    invoke-virtual/range {v38 .. v38}, Ljava/util/Random;->nextFloat()F

    move-result v29

    .line 1525
    .local v29, fractionDefault:F
    move-wide/from16 v0, v47

    long-to-float v11, v0

    mul-float v11, v11, v29

    float-to-long v8, v11

    .line 1526
    .local v8, defaultBytes:J
    move-wide/from16 v0, v47

    long-to-float v11, v0

    const/high16 v12, 0x3f80

    sub-float v12, v12, v29

    mul-float/2addr v11, v12

    float-to-long v15, v11

    .line 1528
    .local v15, foregroundBytes:J
    invoke-virtual/range {v3 .. v9}, Landroid/net/NetworkStatsHistory;->generateRandom(JJJ)V

    move-wide v11, v4

    move-wide v13, v6

    .line 1529
    invoke-virtual/range {v10 .. v16}, Landroid/net/NetworkStatsHistory;->generateRandom(JJJ)V

    .line 1531
    if-eqz v28, :cond_5

    .line 1532
    add-long v11, v4, v6

    const-wide/16 v13, 0x2

    div-long v18, v11, v13

    .line 1533
    .local v18, bumpTime:J
    const-wide/32 v11, 0x5265c00

    add-long v20, v18, v11

    const-wide/32 v22, 0xc800000

    const-wide/16 v24, 0x0

    move-object/from16 v17, v3

    invoke-virtual/range {v17 .. v25}, Landroid/net/NetworkStatsHistory;->recordData(JJJJ)V

    .line 1535
    const/16 v28, 0x0

    .line 1538
    .end local v18           #bumpTime:J
    :cond_5
    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Landroid/net/NetworkStatsHistory;->recordEntireHistory(Landroid/net/NetworkStatsHistory;)V

    .line 1539
    move-object/from16 v0, v26

    invoke-virtual {v0, v10}, Landroid/net/NetworkStatsHistory;->recordEntireHistory(Landroid/net/NetworkStatsHistory;)V

    .line 1540
    move-object/from16 v0, v50

    invoke-virtual {v0, v3}, Landroid/net/NetworkStatsHistory;->recordEntireHistory(Landroid/net/NetworkStatsHistory;)V

    .line 1541
    move-object/from16 v0, v50

    invoke-virtual {v0, v10}, Landroid/net/NetworkStatsHistory;->recordEntireHistory(Landroid/net/NetworkStatsHistory;)V

    goto :goto_2

    .line 1544
    .end local v3           #defaultHistory:Landroid/net/NetworkStatsHistory;
    .end local v8           #defaultBytes:J
    .end local v10           #foregroundHistory:Landroid/net/NetworkStatsHistory;
    .end local v15           #foregroundBytes:J
    .end local v26           #devHistory:Landroid/net/NetworkStatsHistory;
    .end local v28           #first:Z
    .end local v29           #fractionDefault:F
    .end local v32           #i$:Ljava/util/Iterator;
    .end local v33           #ident:Lcom/android/server/net/NetworkIdentitySet;
    .end local v39           #remainingBytes:J
    .end local v46           #uid:I
    .end local v47           #uidBytes:J
    .end local v49           #uidList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v50           #xtHistory:Landroid/net/NetworkStatsHistory;
    :cond_6
    return-void
.end method

.method private static getActiveSubscriberId(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .parameter "context"

    .prologue
    .line 1648
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 1650
    .local v0, telephony:Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getHistoryForNetwork(Landroid/net/NetworkTemplate;ILjava/util/HashMap;)Landroid/net/NetworkStatsHistory;
    .locals 8
    .parameter "template"
    .parameter "fields"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/NetworkTemplate;",
            "I",
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/server/net/NetworkIdentitySet;",
            "Landroid/net/NetworkStatsHistory;",
            ">;)",
            "Landroid/net/NetworkStatsHistory;"
        }
    .end annotation

    .prologue
    .line 399
    .local p3, source:Ljava/util/HashMap;,"Ljava/util/HashMap<Lcom/android/server/net/NetworkIdentitySet;Landroid/net/NetworkStatsHistory;>;"
    iget-object v5, p0, Lcom/android/server/net/NetworkStatsService;->mStatsLock:Ljava/lang/Object;

    monitor-enter v5

    .line 401
    :try_start_0
    new-instance v0, Landroid/net/NetworkStatsHistory;

    iget-object v4, p0, Lcom/android/server/net/NetworkStatsService;->mSettings:Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;

    invoke-interface {v4}, Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;->getNetworkBucketDuration()J

    move-result-wide v6

    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->estimateNetworkBuckets()I

    move-result v4

    invoke-direct {v0, v6, v7, v4, p2}, Landroid/net/NetworkStatsHistory;-><init>(JII)V

    .line 403
    .local v0, combined:Landroid/net/NetworkStatsHistory;
    invoke-virtual {p3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/net/NetworkIdentitySet;

    .line 404
    .local v3, ident:Lcom/android/server/net/NetworkIdentitySet;
    invoke-static {p1, v3}, Lcom/android/server/net/NetworkStatsService;->templateMatches(Landroid/net/NetworkTemplate;Lcom/android/server/net/NetworkIdentitySet;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 405
    invoke-virtual {p3, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkStatsHistory;

    .line 406
    .local v1, history:Landroid/net/NetworkStatsHistory;
    if-eqz v1, :cond_0

    .line 407
    invoke-virtual {v0, v1}, Landroid/net/NetworkStatsHistory;->recordEntireHistory(Landroid/net/NetworkStatsHistory;)V

    goto :goto_0

    .line 412
    .end local v0           #combined:Landroid/net/NetworkStatsHistory;
    .end local v1           #history:Landroid/net/NetworkStatsHistory;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #ident:Lcom/android/server/net/NetworkIdentitySet;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 411
    .restart local v0       #combined:Landroid/net/NetworkStatsHistory;
    .restart local v2       #i$:Ljava/util/Iterator;
    :cond_1
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v0
.end method

.method private getHistoryForNetworkDev(Landroid/net/NetworkTemplate;I)Landroid/net/NetworkStatsHistory;
    .locals 1
    .parameter "template"
    .parameter "fields"

    .prologue
    .line 390
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mNetworkDevStats:Ljava/util/HashMap;

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/net/NetworkStatsService;->getHistoryForNetwork(Landroid/net/NetworkTemplate;ILjava/util/HashMap;)Landroid/net/NetworkStatsHistory;

    move-result-object v0

    return-object v0
.end method

.method private getHistoryForNetworkXt(Landroid/net/NetworkTemplate;I)Landroid/net/NetworkStatsHistory;
    .locals 1
    .parameter "template"
    .parameter "fields"

    .prologue
    .line 394
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mNetworkXtStats:Ljava/util/HashMap;

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/net/NetworkStatsService;->getHistoryForNetwork(Landroid/net/NetworkTemplate;ILjava/util/HashMap;)Landroid/net/NetworkStatsHistory;

    move-result-object v0

    return-object v0
.end method

.method private getHistoryStartLocked(Landroid/net/NetworkTemplate;Ljava/util/HashMap;)J
    .locals 7
    .parameter "template"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/NetworkTemplate;",
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/server/net/NetworkIdentitySet;",
            "Landroid/net/NetworkStatsHistory;",
            ">;)J"
        }
    .end annotation

    .prologue
    .line 487
    .local p2, source:Ljava/util/HashMap;,"Ljava/util/HashMap<Lcom/android/server/net/NetworkIdentitySet;Landroid/net/NetworkStatsHistory;>;"
    const-wide v3, 0x7fffffffffffffffL

    .line 488
    .local v3, start:J
    invoke-virtual {p2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/net/NetworkIdentitySet;

    .line 489
    .local v2, ident:Lcom/android/server/net/NetworkIdentitySet;
    invoke-static {p1, v2}, Lcom/android/server/net/NetworkStatsService;->templateMatches(Landroid/net/NetworkTemplate;Lcom/android/server/net/NetworkIdentitySet;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 490
    invoke-virtual {p2, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkStatsHistory;

    .line 491
    .local v0, history:Landroid/net/NetworkStatsHistory;
    invoke-virtual {v0}, Landroid/net/NetworkStatsHistory;->getStart()J

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    goto :goto_0

    .line 494
    .end local v0           #history:Landroid/net/NetworkStatsHistory;
    .end local v2           #ident:Lcom/android/server/net/NetworkIdentitySet;
    :cond_1
    return-wide v3
.end method

.method private getNetworkStatsTethering()Landroid/net/NetworkStats;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1590
    :try_start_0
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mConnManager:Landroid/net/IConnectivityManager;

    invoke-interface {v2}, Landroid/net/IConnectivityManager;->getTetheredIfacePairs()[Ljava/lang/String;

    move-result-object v1

    .line 1591
    .local v1, tetheredIfacePairs:[Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mNetworkManager:Landroid/os/INetworkManagementService;

    invoke-interface {v2, v1}, Landroid/os/INetworkManagementService;->getNetworkStatsTethering([Ljava/lang/String;)Landroid/net/NetworkStats;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 1594
    .end local v1           #tetheredIfacePairs:[Ljava/lang/String;
    :goto_0
    return-object v2

    .line 1592
    :catch_0
    move-exception v0

    .line 1593
    .local v0, e:Ljava/lang/IllegalStateException;
    const-string v2, "NetworkStats"

    const-string v3, "problem reading network stats"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1594
    new-instance v2, Landroid/net/NetworkStats;

    const-wide/16 v3, 0x0

    const/16 v5, 0xa

    invoke-direct {v2, v3, v4, v5}, Landroid/net/NetworkStats;-><init>(JI)V

    goto :goto_0
.end method

.method private getSummaryForNetwork(Landroid/net/NetworkTemplate;JJLjava/util/HashMap;)Landroid/net/NetworkStats;
    .locals 14
    .parameter "template"
    .parameter "start"
    .parameter "end"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/NetworkTemplate;",
            "JJ",
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/server/net/NetworkIdentitySet;",
            "Landroid/net/NetworkStatsHistory;",
            ">;)",
            "Landroid/net/NetworkStats;"
        }
    .end annotation

    .prologue
    .line 455
    .local p6, source:Ljava/util/HashMap;,"Ljava/util/HashMap<Lcom/android/server/net/NetworkIdentitySet;Landroid/net/NetworkStatsHistory;>;"
    iget-object v13, p0, Lcom/android/server/net/NetworkStatsService;->mStatsLock:Ljava/lang/Object;

    monitor-enter v13

    .line 457
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 459
    .local v6, now:J
    new-instance v12, Landroid/net/NetworkStats;

    sub-long v2, p4, p2

    const/4 v4, 0x1

    invoke-direct {v12, v2, v3, v4}, Landroid/net/NetworkStats;-><init>(JI)V

    .line 460
    .local v12, stats:Landroid/net/NetworkStats;
    new-instance v9, Landroid/net/NetworkStats$Entry;

    invoke-direct {v9}, Landroid/net/NetworkStats$Entry;-><init>()V

    .line 461
    .local v9, entry:Landroid/net/NetworkStats$Entry;
    const/4 v8, 0x0

    .line 464
    .local v8, historyEntry:Landroid/net/NetworkStatsHistory$Entry;
    invoke-virtual/range {p6 .. p6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/net/NetworkIdentitySet;

    .line 465
    .local v11, ident:Lcom/android/server/net/NetworkIdentitySet;
    invoke-static {p1, v11}, Lcom/android/server/net/NetworkStatsService;->templateMatches(Landroid/net/NetworkTemplate;Lcom/android/server/net/NetworkIdentitySet;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 466
    move-object/from16 v0, p6

    invoke-virtual {v0, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkStatsHistory;

    .local v1, history:Landroid/net/NetworkStatsHistory;
    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    .line 467
    invoke-virtual/range {v1 .. v8}, Landroid/net/NetworkStatsHistory;->getValues(JJJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v8

    .line 469
    sget-object v2, Landroid/net/NetworkStats;->IFACE_ALL:Ljava/lang/String;

    iput-object v2, v9, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    .line 470
    const/4 v2, -0x1

    iput v2, v9, Landroid/net/NetworkStats$Entry;->uid:I

    .line 471
    const/4 v2, 0x0

    iput v2, v9, Landroid/net/NetworkStats$Entry;->tag:I

    .line 472
    iget-wide v2, v8, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    iput-wide v2, v9, Landroid/net/NetworkStats$Entry;->rxBytes:J

    .line 473
    iget-wide v2, v8, Landroid/net/NetworkStatsHistory$Entry;->rxPackets:J

    iput-wide v2, v9, Landroid/net/NetworkStats$Entry;->rxPackets:J

    .line 474
    iget-wide v2, v8, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    iput-wide v2, v9, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 475
    iget-wide v2, v8, Landroid/net/NetworkStatsHistory$Entry;->txPackets:J

    iput-wide v2, v9, Landroid/net/NetworkStats$Entry;->txPackets:J

    .line 477
    invoke-virtual {v12, v9}, Landroid/net/NetworkStats;->combineValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    goto :goto_0

    .line 482
    .end local v1           #history:Landroid/net/NetworkStatsHistory;
    .end local v6           #now:J
    .end local v8           #historyEntry:Landroid/net/NetworkStatsHistory$Entry;
    .end local v9           #entry:Landroid/net/NetworkStats$Entry;
    .end local v10           #i$:Ljava/util/Iterator;
    .end local v11           #ident:Lcom/android/server/net/NetworkIdentitySet;
    .end local v12           #stats:Landroid/net/NetworkStats;
    :catchall_0
    move-exception v2

    monitor-exit v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 481
    .restart local v6       #now:J
    .restart local v8       #historyEntry:Landroid/net/NetworkStatsHistory$Entry;
    .restart local v9       #entry:Landroid/net/NetworkStats$Entry;
    .restart local v10       #i$:Ljava/util/Iterator;
    .restart local v12       #stats:Landroid/net/NetworkStats;
    :cond_1
    :try_start_1
    monitor-exit v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v12
.end method

.method private getSummaryForNetworkDev(Landroid/net/NetworkTemplate;JJ)Landroid/net/NetworkStats;
    .locals 7
    .parameter "template"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 446
    iget-object v6, p0, Lcom/android/server/net/NetworkStatsService;->mNetworkDevStats:Ljava/util/HashMap;

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/net/NetworkStatsService;->getSummaryForNetwork(Landroid/net/NetworkTemplate;JJLjava/util/HashMap;)Landroid/net/NetworkStats;

    move-result-object v0

    return-object v0
.end method

.method private getSummaryForNetworkXt(Landroid/net/NetworkTemplate;JJ)Landroid/net/NetworkStats;
    .locals 7
    .parameter "template"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 450
    iget-object v6, p0, Lcom/android/server/net/NetworkStatsService;->mNetworkXtStats:Ljava/util/HashMap;

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/net/NetworkStatsService;->getSummaryForNetwork(Landroid/net/NetworkTemplate;JJLjava/util/HashMap;)Landroid/net/NetworkStats;

    move-result-object v0

    return-object v0
.end method

.method private static getSystemDir()Ljava/io/File;
    .locals 3

    .prologue
    .line 244
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "system"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private performNetworkDevPollLocked(Landroid/net/NetworkStats;J)V
    .locals 11
    .parameter "networkDevSnapshot"
    .parameter "currentTime"

    .prologue
    .line 897
    invoke-static {}, Lcom/google/android/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v9

    .line 899
    .local v9, unknownIface:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/android/server/net/NetworkStatsService;->mLastPollNetworkDevSnapshot:Landroid/net/NetworkStats;

    const/4 v4, 0x0

    const-string v10, "dev"

    invoke-direct {p0, v3, p1, v4, v10}, Lcom/android/server/net/NetworkStatsService;->computeStatsDelta(Landroid/net/NetworkStats;Landroid/net/NetworkStats;ZLjava/lang/String;)Landroid/net/NetworkStats;

    move-result-object v6

    .line 901
    .local v6, delta:Landroid/net/NetworkStats;
    invoke-virtual {v6}, Landroid/net/NetworkStats;->getElapsedRealtime()J

    move-result-wide v3

    sub-long v1, p2, v3

    .line 903
    .local v1, timeStart:J
    const/4 v5, 0x0

    .line 904
    .local v5, entry:Landroid/net/NetworkStats$Entry;
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    invoke-virtual {v6}, Landroid/net/NetworkStats;->size()I

    move-result v3

    if-ge v7, v3, :cond_1

    .line 905
    invoke-virtual {v6, v7, v5}, Landroid/net/NetworkStats;->getValues(ILandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object v5

    .line 906
    iget-object v3, p0, Lcom/android/server/net/NetworkStatsService;->mActiveIfaces:Ljava/util/HashMap;

    iget-object v4, v5, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/net/NetworkIdentitySet;

    .line 907
    .local v8, ident:Lcom/android/server/net/NetworkIdentitySet;
    if-nez v8, :cond_0

    .line 908
    iget-object v3, v5, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    invoke-virtual {v9, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 904
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 912
    :cond_0
    invoke-direct {p0, v8}, Lcom/android/server/net/NetworkStatsService;->findOrCreateNetworkDevStatsLocked(Lcom/android/server/net/NetworkIdentitySet;)Landroid/net/NetworkStatsHistory;

    move-result-object v0

    .local v0, history:Landroid/net/NetworkStatsHistory;
    move-wide v3, p2

    .line 913
    invoke-virtual/range {v0 .. v5}, Landroid/net/NetworkStatsHistory;->recordData(JJLandroid/net/NetworkStats$Entry;)V

    goto :goto_1

    .line 916
    .end local v0           #history:Landroid/net/NetworkStatsHistory;
    .end local v8           #ident:Lcom/android/server/net/NetworkIdentitySet;
    :cond_1
    iput-object p1, p0, Lcom/android/server/net/NetworkStatsService;->mLastPollNetworkDevSnapshot:Landroid/net/NetworkStats;

    .line 921
    return-void
.end method

.method private performNetworkXtPollLocked(Landroid/net/NetworkStats;J)V
    .locals 11
    .parameter "networkXtSnapshot"
    .parameter "currentTime"

    .prologue
    .line 927
    invoke-static {}, Lcom/google/android/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v9

    .line 929
    .local v9, unknownIface:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/android/server/net/NetworkStatsService;->mLastPollNetworkXtSnapshot:Landroid/net/NetworkStats;

    const/4 v4, 0x0

    const-string v10, "xt"

    invoke-direct {p0, v3, p1, v4, v10}, Lcom/android/server/net/NetworkStatsService;->computeStatsDelta(Landroid/net/NetworkStats;Landroid/net/NetworkStats;ZLjava/lang/String;)Landroid/net/NetworkStats;

    move-result-object v6

    .line 931
    .local v6, delta:Landroid/net/NetworkStats;
    invoke-virtual {v6}, Landroid/net/NetworkStats;->getElapsedRealtime()J

    move-result-wide v3

    sub-long v1, p2, v3

    .line 933
    .local v1, timeStart:J
    const/4 v5, 0x0

    .line 934
    .local v5, entry:Landroid/net/NetworkStats$Entry;
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    invoke-virtual {v6}, Landroid/net/NetworkStats;->size()I

    move-result v3

    if-ge v7, v3, :cond_1

    .line 935
    invoke-virtual {v6, v7, v5}, Landroid/net/NetworkStats;->getValues(ILandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object v5

    .line 936
    iget-object v3, p0, Lcom/android/server/net/NetworkStatsService;->mActiveIfaces:Ljava/util/HashMap;

    iget-object v4, v5, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/net/NetworkIdentitySet;

    .line 937
    .local v8, ident:Lcom/android/server/net/NetworkIdentitySet;
    if-nez v8, :cond_0

    .line 938
    iget-object v3, v5, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    invoke-virtual {v9, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 934
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 942
    :cond_0
    invoke-direct {p0, v8}, Lcom/android/server/net/NetworkStatsService;->findOrCreateNetworkXtStatsLocked(Lcom/android/server/net/NetworkIdentitySet;)Landroid/net/NetworkStatsHistory;

    move-result-object v0

    .local v0, history:Landroid/net/NetworkStatsHistory;
    move-wide v3, p2

    .line 943
    invoke-virtual/range {v0 .. v5}, Landroid/net/NetworkStatsHistory;->recordData(JJLandroid/net/NetworkStats$Entry;)V

    goto :goto_1

    .line 946
    .end local v0           #history:Landroid/net/NetworkStatsHistory;
    .end local v8           #ident:Lcom/android/server/net/NetworkIdentitySet;
    :cond_1
    iput-object p1, p0, Lcom/android/server/net/NetworkStatsService;->mLastPollNetworkXtSnapshot:Landroid/net/NetworkStats;

    .line 951
    return-void
.end method

.method private performPoll(I)V
    .locals 4
    .parameter "flags"

    .prologue
    .line 795
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mTime:Landroid/util/TrustedTime;

    invoke-interface {v0}, Landroid/util/TrustedTime;->getCacheAge()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mSettings:Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;

    invoke-interface {v2}, Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;->getTimeCacheMaxAge()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 796
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mTime:Landroid/util/TrustedTime;

    invoke-interface {v0}, Landroid/util/TrustedTime;->forceRefresh()Z

    .line 799
    :cond_0
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mStatsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 800
    :try_start_0
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 803
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkStatsService;->performPollLocked(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 805
    :try_start_2
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 807
    monitor-exit v1

    .line 808
    return-void

    .line 805
    :catchall_0
    move-exception v0

    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v0

    .line 807
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method private performPollLocked(I)V
    .locals 30
    .parameter "flags"

    .prologue
    .line 816
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v20

    .line 818
    .local v20, startRealtime:J
    and-int/lit8 v27, p1, 0x1

    if-eqz v27, :cond_5

    const/4 v12, 0x1

    .line 819
    .local v12, persistNetwork:Z
    :goto_0
    and-int/lit8 v27, p1, 0x2

    if-eqz v27, :cond_6

    const/16 v17, 0x1

    .line 820
    .local v17, persistUid:Z
    :goto_1
    move/from16 v0, p1

    and-int/lit16 v0, v0, 0x100

    move/from16 v27, v0

    if-eqz v27, :cond_7

    const/4 v11, 0x1

    .line 823
    .local v11, persistForce:Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkStatsService;->mTime:Landroid/util/TrustedTime;

    move-object/from16 v27, v0

    invoke-interface/range {v27 .. v27}, Landroid/util/TrustedTime;->hasCache()Z

    move-result v27

    if-eqz v27, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkStatsService;->mTime:Landroid/util/TrustedTime;

    move-object/from16 v27, v0

    invoke-interface/range {v27 .. v27}, Landroid/util/TrustedTime;->currentTimeMillis()J

    move-result-wide v5

    .line 825
    .local v5, currentTime:J
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkStatsService;->mSettings:Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;

    move-object/from16 v27, v0

    invoke-interface/range {v27 .. v27}, Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;->getPersistThreshold()J

    move-result-wide v23

    .line 832
    .local v23, threshold:J
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/android/server/net/NetworkStatsService;->getNetworkStatsTethering()Landroid/net/NetworkStats;

    move-result-object v22

    .line 835
    .local v22, tetherSnapshot:Landroid/net/NetworkStats;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkStatsService;->mNetworkManager:Landroid/os/INetworkManagementService;

    move-object/from16 v27, v0

    const/16 v28, -0x1

    invoke-interface/range {v27 .. v28}, Landroid/os/INetworkManagementService;->getNetworkStatsUidDetail(I)Landroid/net/NetworkStats;

    move-result-object v25

    .line 836
    .local v25, uidSnapshot:Landroid/net/NetworkStats;
    move-object/from16 v0, v25

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/net/NetworkStats;->combineAllValues(Landroid/net/NetworkStats;)V

    .line 837
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1, v5, v6}, Lcom/android/server/net/NetworkStatsService;->performUidPollLocked(Landroid/net/NetworkStats;J)V

    .line 840
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkStatsService;->mNetworkManager:Landroid/os/INetworkManagementService;

    move-object/from16 v27, v0

    invoke-interface/range {v27 .. v27}, Landroid/os/INetworkManagementService;->getNetworkStatsSummary()Landroid/net/NetworkStats;

    move-result-object v8

    .line 841
    .local v8, networkDevSnapshot:Landroid/net/NetworkStats;
    move-object/from16 v0, p0

    invoke-direct {v0, v8, v5, v6}, Lcom/android/server/net/NetworkStatsService;->performNetworkDevPollLocked(Landroid/net/NetworkStats;J)V

    .line 844
    invoke-static/range {v25 .. v25}, Lcom/android/server/net/NetworkStatsService;->computeNetworkXtSnapshotFromUid(Landroid/net/NetworkStats;)Landroid/net/NetworkStats;

    move-result-object v10

    .line 845
    .local v10, networkXtSnapshot:Landroid/net/NetworkStats;
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v5, v6}, Lcom/android/server/net/NetworkStatsService;->performNetworkXtPollLocked(Landroid/net/NetworkStats;J)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 856
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkStatsService;->mLastPersistNetworkDevSnapshot:Landroid/net/NetworkStats;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    const-string v29, "devp"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move/from16 v2, v28

    move-object/from16 v3, v29

    invoke-direct {v0, v1, v8, v2, v3}, Lcom/android/server/net/NetworkStatsService;->computeStatsDelta(Landroid/net/NetworkStats;Landroid/net/NetworkStats;ZLjava/lang/String;)Landroid/net/NetworkStats;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/net/NetworkStats;->getTotalBytes()J

    move-result-wide v13

    .line 858
    .local v13, persistNetworkDevDelta:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkStatsService;->mLastPersistNetworkXtSnapshot:Landroid/net/NetworkStats;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    const-string v29, "xtp"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move/from16 v2, v28

    move-object/from16 v3, v29

    invoke-direct {v0, v1, v10, v2, v3}, Lcom/android/server/net/NetworkStatsService;->computeStatsDelta(Landroid/net/NetworkStats;Landroid/net/NetworkStats;ZLjava/lang/String;)Landroid/net/NetworkStats;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/net/NetworkStats;->getTotalBytes()J

    move-result-wide v15

    .line 860
    .local v15, persistNetworkXtDelta:J
    cmp-long v27, v13, v23

    if-gtz v27, :cond_0

    cmp-long v27, v15, v23

    if-lez v27, :cond_9

    :cond_0
    const/4 v9, 0x1

    .line 862
    .local v9, networkOverThreshold:Z
    :goto_4
    if-nez v11, :cond_1

    if-eqz v12, :cond_2

    if-eqz v9, :cond_2

    .line 863
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/android/server/net/NetworkStatsService;->writeNetworkDevStatsLocked()V

    .line 864
    invoke-direct/range {p0 .. p0}, Lcom/android/server/net/NetworkStatsService;->writeNetworkXtStatsLocked()V

    .line 865
    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/android/server/net/NetworkStatsService;->mLastPersistNetworkDevSnapshot:Landroid/net/NetworkStats;

    .line 866
    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/android/server/net/NetworkStatsService;->mLastPersistNetworkXtSnapshot:Landroid/net/NetworkStats;

    .line 870
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkStatsService;->mLastPersistUidSnapshot:Landroid/net/NetworkStats;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    const-string v29, "uidp"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v25

    move/from16 v3, v28

    move-object/from16 v4, v29

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/net/NetworkStatsService;->computeStatsDelta(Landroid/net/NetworkStats;Landroid/net/NetworkStats;ZLjava/lang/String;)Landroid/net/NetworkStats;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/net/NetworkStats;->getTotalBytes()J

    move-result-wide v18

    .line 872
    .local v18, persistUidDelta:J
    if-nez v11, :cond_3

    if-eqz v17, :cond_4

    cmp-long v27, v18, v23

    if-lez v27, :cond_4

    .line 873
    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/android/server/net/NetworkStatsService;->writeUidStatsLocked()V

    .line 874
    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/net/NetworkStatsService;->mLastPersistUidSnapshot:Landroid/net/NetworkStats;

    .line 884
    :cond_4
    invoke-direct/range {p0 .. p0}, Lcom/android/server/net/NetworkStatsService;->performSample()V

    .line 888
    new-instance v26, Landroid/content/Intent;

    const-string v27, "com.android.server.action.NETWORK_STATS_UPDATED"

    invoke-direct/range {v26 .. v27}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 889
    .local v26, updatedIntent:Landroid/content/Intent;
    const/high16 v27, 0x4000

    invoke-virtual/range {v26 .. v27}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 890
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    const-string v28, "android.permission.READ_NETWORK_USAGE_HISTORY"

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 891
    .end local v8           #networkDevSnapshot:Landroid/net/NetworkStats;
    .end local v9           #networkOverThreshold:Z
    .end local v10           #networkXtSnapshot:Landroid/net/NetworkStats;
    .end local v13           #persistNetworkDevDelta:J
    .end local v15           #persistNetworkXtDelta:J
    .end local v18           #persistUidDelta:J
    .end local v22           #tetherSnapshot:Landroid/net/NetworkStats;
    .end local v25           #uidSnapshot:Landroid/net/NetworkStats;
    .end local v26           #updatedIntent:Landroid/content/Intent;
    :goto_5
    return-void

    .line 818
    .end local v5           #currentTime:J
    .end local v11           #persistForce:Z
    .end local v12           #persistNetwork:Z
    .end local v17           #persistUid:Z
    .end local v23           #threshold:J
    :cond_5
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 819
    .restart local v12       #persistNetwork:Z
    :cond_6
    const/16 v17, 0x0

    goto/16 :goto_1

    .line 820
    .restart local v17       #persistUid:Z
    :cond_7
    const/4 v11, 0x0

    goto/16 :goto_2

    .line 823
    .restart local v11       #persistForce:Z
    :cond_8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    goto/16 :goto_3

    .line 847
    .restart local v5       #currentTime:J
    .restart local v23       #threshold:J
    :catch_0
    move-exception v7

    .line 848
    .local v7, e:Ljava/lang/IllegalStateException;
    const-string v27, "NetworkStats"

    const-string v28, "problem reading network stats"

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-static {v0, v1, v7}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .line 850
    .end local v7           #e:Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v7

    .line 852
    .local v7, e:Landroid/os/RemoteException;
    goto :goto_5

    .line 860
    .end local v7           #e:Landroid/os/RemoteException;
    .restart local v8       #networkDevSnapshot:Landroid/net/NetworkStats;
    .restart local v10       #networkXtSnapshot:Landroid/net/NetworkStats;
    .restart local v13       #persistNetworkDevDelta:J
    .restart local v15       #persistNetworkXtDelta:J
    .restart local v22       #tetherSnapshot:Landroid/net/NetworkStats;
    .restart local v25       #uidSnapshot:Landroid/net/NetworkStats;
    :cond_9
    const/4 v9, 0x0

    goto/16 :goto_4
.end method

.method private performSample()V
    .locals 43

    .prologue
    .line 998
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkStatsService;->mSettings:Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;

    invoke-interface {v2}, Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;->getNetworkBucketDuration()J

    move-result-wide v8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkStatsService;->mSettings:Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;

    invoke-interface {v2}, Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;->getUidBucketDuration()J

    move-result-wide v10

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v37

    .line 1002
    .local v37, largestBucketSize:J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkStatsService;->mTime:Landroid/util/TrustedTime;

    invoke-interface {v2}, Landroid/util/TrustedTime;->hasCache()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkStatsService;->mTime:Landroid/util/TrustedTime;

    invoke-interface {v2}, Landroid/util/TrustedTime;->currentTimeMillis()J

    move-result-wide v39

    .line 1003
    .local v39, now:J
    :goto_0
    rem-long v8, v39, v37

    sub-long v8, v39, v8

    add-long v6, v8, v37

    .line 1004
    .local v6, end:J
    sub-long v4, v6, v37

    .line 1006
    .local v4, start:J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkStatsService;->mTime:Landroid/util/TrustedTime;

    invoke-interface {v2}, Landroid/util/TrustedTime;->hasCache()Z

    move-result v2

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkStatsService;->mTime:Landroid/util/TrustedTime;

    invoke-interface {v2}, Landroid/util/TrustedTime;->currentTimeMillis()J

    move-result-wide v32

    .line 1007
    .local v32, trustedTime:J
    :goto_1
    const-wide v34, 0x7fffffffffffffffL

    .line 1009
    .local v34, devHistoryStart:J
    const/4 v3, 0x0

    .line 1010
    .local v3, template:Landroid/net/NetworkTemplate;
    const/16 v36, 0x0

    .line 1011
    .local v36, devTotal:Landroid/net/NetworkStats$Entry;
    const/16 v42, 0x0

    .line 1012
    .local v42, xtTotal:Landroid/net/NetworkStats$Entry;
    const/16 v41, 0x0

    .line 1015
    .local v41, uidTotal:Landroid/net/NetworkStats$Entry;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/server/net/NetworkStatsService;->getActiveSubscriberId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/NetworkTemplate;->buildTemplateMobileAll(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v3

    move-object/from16 v2, p0

    .line 1016
    invoke-direct/range {v2 .. v7}, Lcom/android/server/net/NetworkStatsService;->getSummaryForNetworkDev(Landroid/net/NetworkTemplate;JJ)Landroid/net/NetworkStats;

    move-result-object v2

    move-object/from16 v0, v36

    invoke-virtual {v2, v0}, Landroid/net/NetworkStats;->getTotal(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object v36

    .line 1017
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkStatsService;->mNetworkDevStats:Ljava/util/HashMap;

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v2}, Lcom/android/server/net/NetworkStatsService;->getHistoryStartLocked(Landroid/net/NetworkTemplate;Ljava/util/HashMap;)J

    move-result-wide v34

    move-object/from16 v2, p0

    .line 1018
    invoke-direct/range {v2 .. v7}, Lcom/android/server/net/NetworkStatsService;->getSummaryForNetworkXt(Landroid/net/NetworkTemplate;JJ)Landroid/net/NetworkStats;

    move-result-object v2

    move-object/from16 v0, v42

    invoke-virtual {v2, v0}, Landroid/net/NetworkStats;->getTotal(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object v42

    .line 1019
    const/4 v8, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/net/NetworkStatsService;->getSummaryForAllUid(Landroid/net/NetworkTemplate;JJZ)Landroid/net/NetworkStats;

    move-result-object v2

    move-object/from16 v0, v41

    invoke-virtual {v2, v0}, Landroid/net/NetworkStats;->getTotal(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object v41

    .line 1021
    move-object/from16 v0, v36

    iget-wide v8, v0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    move-object/from16 v0, v36

    iget-wide v10, v0, Landroid/net/NetworkStats$Entry;->rxPackets:J

    move-object/from16 v0, v36

    iget-wide v12, v0, Landroid/net/NetworkStats$Entry;->txBytes:J

    move-object/from16 v0, v36

    iget-wide v14, v0, Landroid/net/NetworkStats$Entry;->txPackets:J

    move-object/from16 v0, v42

    iget-wide v0, v0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    move-wide/from16 v16, v0

    move-object/from16 v0, v42

    iget-wide v0, v0, Landroid/net/NetworkStats$Entry;->rxPackets:J

    move-wide/from16 v18, v0

    move-object/from16 v0, v42

    iget-wide v0, v0, Landroid/net/NetworkStats$Entry;->txBytes:J

    move-wide/from16 v20, v0

    move-object/from16 v0, v42

    iget-wide v0, v0, Landroid/net/NetworkStats$Entry;->txPackets:J

    move-wide/from16 v22, v0

    move-object/from16 v0, v41

    iget-wide v0, v0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    move-wide/from16 v24, v0

    move-object/from16 v0, v41

    iget-wide v0, v0, Landroid/net/NetworkStats$Entry;->rxPackets:J

    move-wide/from16 v26, v0

    move-object/from16 v0, v41

    iget-wide v0, v0, Landroid/net/NetworkStats$Entry;->txBytes:J

    move-wide/from16 v28, v0

    move-object/from16 v0, v41

    iget-wide v0, v0, Landroid/net/NetworkStats$Entry;->txPackets:J

    move-wide/from16 v30, v0

    invoke-static/range {v8 .. v35}, Lcom/android/server/EventLogTags;->writeNetstatsMobileSample(JJJJJJJJJJJJJJ)V

    .line 1028
    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateWifi()Landroid/net/NetworkTemplate;

    move-result-object v3

    move-object/from16 v2, p0

    .line 1029
    invoke-direct/range {v2 .. v7}, Lcom/android/server/net/NetworkStatsService;->getSummaryForNetworkDev(Landroid/net/NetworkTemplate;JJ)Landroid/net/NetworkStats;

    move-result-object v2

    move-object/from16 v0, v36

    invoke-virtual {v2, v0}, Landroid/net/NetworkStats;->getTotal(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object v36

    .line 1030
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkStatsService;->mNetworkDevStats:Ljava/util/HashMap;

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v2}, Lcom/android/server/net/NetworkStatsService;->getHistoryStartLocked(Landroid/net/NetworkTemplate;Ljava/util/HashMap;)J

    move-result-wide v34

    move-object/from16 v2, p0

    .line 1031
    invoke-direct/range {v2 .. v7}, Lcom/android/server/net/NetworkStatsService;->getSummaryForNetworkXt(Landroid/net/NetworkTemplate;JJ)Landroid/net/NetworkStats;

    move-result-object v2

    move-object/from16 v0, v42

    invoke-virtual {v2, v0}, Landroid/net/NetworkStats;->getTotal(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object v42

    .line 1032
    const/4 v8, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/net/NetworkStatsService;->getSummaryForAllUid(Landroid/net/NetworkTemplate;JJZ)Landroid/net/NetworkStats;

    move-result-object v2

    move-object/from16 v0, v41

    invoke-virtual {v2, v0}, Landroid/net/NetworkStats;->getTotal(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object v41

    .line 1033
    move-object/from16 v0, v36

    iget-wide v8, v0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    move-object/from16 v0, v36

    iget-wide v10, v0, Landroid/net/NetworkStats$Entry;->rxPackets:J

    move-object/from16 v0, v36

    iget-wide v12, v0, Landroid/net/NetworkStats$Entry;->txBytes:J

    move-object/from16 v0, v36

    iget-wide v14, v0, Landroid/net/NetworkStats$Entry;->txPackets:J

    move-object/from16 v0, v42

    iget-wide v0, v0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    move-wide/from16 v16, v0

    move-object/from16 v0, v42

    iget-wide v0, v0, Landroid/net/NetworkStats$Entry;->rxPackets:J

    move-wide/from16 v18, v0

    move-object/from16 v0, v42

    iget-wide v0, v0, Landroid/net/NetworkStats$Entry;->txBytes:J

    move-wide/from16 v20, v0

    move-object/from16 v0, v42

    iget-wide v0, v0, Landroid/net/NetworkStats$Entry;->txPackets:J

    move-wide/from16 v22, v0

    move-object/from16 v0, v41

    iget-wide v0, v0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    move-wide/from16 v24, v0

    move-object/from16 v0, v41

    iget-wide v0, v0, Landroid/net/NetworkStats$Entry;->rxPackets:J

    move-wide/from16 v26, v0

    move-object/from16 v0, v41

    iget-wide v0, v0, Landroid/net/NetworkStats$Entry;->txBytes:J

    move-wide/from16 v28, v0

    move-object/from16 v0, v41

    iget-wide v0, v0, Landroid/net/NetworkStats$Entry;->txPackets:J

    move-wide/from16 v30, v0

    invoke-static/range {v8 .. v35}, Lcom/android/server/EventLogTags;->writeNetstatsWifiSample(JJJJJJJJJJJJJJ)V

    .line 1038
    return-void

    .line 1002
    .end local v3           #template:Landroid/net/NetworkTemplate;
    .end local v4           #start:J
    .end local v6           #end:J
    .end local v32           #trustedTime:J
    .end local v34           #devHistoryStart:J
    .end local v36           #devTotal:Landroid/net/NetworkStats$Entry;
    .end local v39           #now:J
    .end local v41           #uidTotal:Landroid/net/NetworkStats$Entry;
    .end local v42           #xtTotal:Landroid/net/NetworkStats$Entry;
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v39

    goto/16 :goto_0

    .line 1006
    .restart local v4       #start:J
    .restart local v6       #end:J
    .restart local v39       #now:J
    :cond_1
    const-wide/16 v32, -0x1

    goto/16 :goto_1
.end method

.method private performUidPollLocked(Landroid/net/NetworkStats;J)V
    .locals 14
    .parameter "uidSnapshot"
    .parameter "currentTime"

    .prologue
    .line 957
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->ensureUidStatsLoadedLocked()V

    .line 959
    iget-object v3, p0, Lcom/android/server/net/NetworkStatsService;->mLastPollUidSnapshot:Landroid/net/NetworkStats;

    const/4 v4, 0x0

    const-string v12, "uid"

    invoke-direct {p0, v3, p1, v4, v12}, Lcom/android/server/net/NetworkStatsService;->computeStatsDelta(Landroid/net/NetworkStats;Landroid/net/NetworkStats;ZLjava/lang/String;)Landroid/net/NetworkStats;

    move-result-object v6

    .line 961
    .local v6, delta:Landroid/net/NetworkStats;
    iget-object v3, p0, Lcom/android/server/net/NetworkStatsService;->mLastPollOperationsSnapshot:Landroid/net/NetworkStats;

    iget-object v4, p0, Lcom/android/server/net/NetworkStatsService;->mOperations:Landroid/net/NetworkStats;

    const/4 v12, 0x0

    const-string v13, "uidop"

    invoke-direct {p0, v3, v4, v12, v13}, Lcom/android/server/net/NetworkStatsService;->computeStatsDelta(Landroid/net/NetworkStats;Landroid/net/NetworkStats;ZLjava/lang/String;)Landroid/net/NetworkStats;

    move-result-object v10

    .line 963
    .local v10, operationsDelta:Landroid/net/NetworkStats;
    invoke-virtual {v6}, Landroid/net/NetworkStats;->getElapsedRealtime()J

    move-result-wide v3

    sub-long v1, p2, v3

    .line 965
    .local v1, timeStart:J
    const/4 v5, 0x0

    .line 966
    .local v5, entry:Landroid/net/NetworkStats$Entry;
    const/4 v11, 0x0

    .line 967
    .local v11, operationsEntry:Landroid/net/NetworkStats$Entry;
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    invoke-virtual {v6}, Landroid/net/NetworkStats;->size()I

    move-result v3

    if-ge v7, v3, :cond_4

    .line 968
    invoke-virtual {v6, v7, v5}, Landroid/net/NetworkStats;->getValues(ILandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object v5

    .line 969
    iget-object v3, p0, Lcom/android/server/net/NetworkStatsService;->mActiveIfaces:Ljava/util/HashMap;

    iget-object v4, v5, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/net/NetworkIdentitySet;

    .line 970
    .local v8, ident:Lcom/android/server/net/NetworkIdentitySet;
    if-nez v8, :cond_2

    .line 971
    iget-wide v3, v5, Landroid/net/NetworkStats$Entry;->rxBytes:J

    const-wide/16 v12, 0x0

    cmp-long v3, v3, v12

    if-gtz v3, :cond_0

    iget-wide v3, v5, Landroid/net/NetworkStats$Entry;->rxPackets:J

    const-wide/16 v12, 0x0

    cmp-long v3, v3, v12

    if-gtz v3, :cond_0

    iget-wide v3, v5, Landroid/net/NetworkStats$Entry;->txBytes:J

    const-wide/16 v12, 0x0

    cmp-long v3, v3, v12

    if-gtz v3, :cond_0

    iget-wide v3, v5, Landroid/net/NetworkStats$Entry;->txPackets:J

    const-wide/16 v12, 0x0

    cmp-long v3, v3, v12

    if-lez v3, :cond_1

    .line 973
    :cond_0
    const-string v3, "NetworkStats"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "dropping UID delta from unknown iface: "

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 967
    :cond_1
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 979
    :cond_2
    sget-object v3, Landroid/net/NetworkStats;->IFACE_ALL:Ljava/lang/String;

    iget v4, v5, Landroid/net/NetworkStats$Entry;->uid:I

    iget v12, v5, Landroid/net/NetworkStats$Entry;->set:I

    iget v13, v5, Landroid/net/NetworkStats$Entry;->tag:I

    invoke-virtual {v10, v3, v4, v12, v13}, Landroid/net/NetworkStats;->findIndex(Ljava/lang/String;III)I

    move-result v9

    .line 980
    .local v9, j:I
    const/4 v3, -0x1

    if-eq v9, v3, :cond_3

    .line 981
    invoke-virtual {v10, v9, v11}, Landroid/net/NetworkStats;->getValues(ILandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object v11

    .line 982
    iget-wide v3, v11, Landroid/net/NetworkStats$Entry;->operations:J

    iput-wide v3, v5, Landroid/net/NetworkStats$Entry;->operations:J

    .line 985
    :cond_3
    iget v3, v5, Landroid/net/NetworkStats$Entry;->uid:I

    iget v4, v5, Landroid/net/NetworkStats$Entry;->set:I

    iget v12, v5, Landroid/net/NetworkStats$Entry;->tag:I

    invoke-direct {p0, v8, v3, v4, v12}, Lcom/android/server/net/NetworkStatsService;->findOrCreateUidStatsLocked(Lcom/android/server/net/NetworkIdentitySet;III)Landroid/net/NetworkStatsHistory;

    move-result-object v0

    .local v0, history:Landroid/net/NetworkStatsHistory;
    move-wide/from16 v3, p2

    .line 987
    invoke-virtual/range {v0 .. v5}, Landroid/net/NetworkStatsHistory;->recordData(JJLandroid/net/NetworkStats$Entry;)V

    goto :goto_1

    .line 990
    .end local v0           #history:Landroid/net/NetworkStatsHistory;
    .end local v8           #ident:Lcom/android/server/net/NetworkIdentitySet;
    .end local v9           #j:I
    :cond_4
    iput-object p1, p0, Lcom/android/server/net/NetworkStatsService;->mLastPollUidSnapshot:Landroid/net/NetworkStats;

    .line 991
    iget-object v3, p0, Lcom/android/server/net/NetworkStatsService;->mOperations:Landroid/net/NetworkStats;

    invoke-virtual {v3}, Landroid/net/NetworkStats;->clone()Landroid/net/NetworkStats;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/net/NetworkStatsService;->mLastPollOperationsSnapshot:Landroid/net/NetworkStats;

    .line 992
    return-void
.end method

.method private readNetworkDevStatsLocked()V
    .locals 2

    .prologue
    .line 1138
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mNetworkDevFile:Lcom/android/internal/os/AtomicFile;

    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mNetworkDevStats:Ljava/util/HashMap;

    invoke-static {v0, v1}, Lcom/android/server/net/NetworkStatsService;->readNetworkStats(Lcom/android/internal/os/AtomicFile;Ljava/util/HashMap;)V

    .line 1139
    return-void
.end method

.method private static readNetworkStats(Lcom/android/internal/os/AtomicFile;Ljava/util/HashMap;)V
    .locals 12
    .parameter "inputFile"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/os/AtomicFile;",
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/server/net/NetworkIdentitySet;",
            "Landroid/net/NetworkStatsHistory;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1149
    .local p1, output:Ljava/util/HashMap;,"Ljava/util/HashMap<Lcom/android/server/net/NetworkIdentitySet;Landroid/net/NetworkStatsHistory;>;"
    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    .line 1151
    const/4 v4, 0x0

    .line 1153
    .local v4, in:Ljava/io/DataInputStream;
    :try_start_0
    new-instance v5, Ljava/io/DataInputStream;

    new-instance v9, Ljava/io/BufferedInputStream;

    invoke-virtual {p0}, Lcom/android/internal/os/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v5, v9}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 1156
    .end local v4           #in:Ljava/io/DataInputStream;
    .local v5, in:Ljava/io/DataInputStream;
    :try_start_1
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    .line 1157
    .local v6, magic:I
    const v9, 0x414e4554

    if-eq v6, v9, :cond_0

    .line 1158
    new-instance v9, Ljava/net/ProtocolException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "unexpected magic: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1177
    .end local v6           #magic:I
    :catch_0
    move-exception v9

    move-object v4, v5

    .line 1182
    .end local v5           #in:Ljava/io/DataInputStream;
    .restart local v4       #in:Ljava/io/DataInputStream;
    :goto_0
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1184
    :goto_1
    return-void

    .line 1161
    .end local v4           #in:Ljava/io/DataInputStream;
    .restart local v5       #in:Ljava/io/DataInputStream;
    .restart local v6       #magic:I
    :cond_0
    :try_start_2
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readInt()I

    move-result v8

    .line 1162
    .local v8, version:I
    packed-switch v8, :pswitch_data_0

    .line 1174
    new-instance v9, Ljava/net/ProtocolException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "unexpected version: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 1179
    .end local v6           #magic:I
    .end local v8           #version:I
    :catch_1
    move-exception v0

    move-object v4, v5

    .line 1180
    .end local v5           #in:Ljava/io/DataInputStream;
    .local v0, e:Ljava/io/IOException;
    .restart local v4       #in:Ljava/io/DataInputStream;
    :goto_2
    :try_start_3
    const-string v9, "NetworkStats"

    const-string v10, "problem reading network stats"

    invoke-static {v9, v10, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 1182
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v9

    :goto_3
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v9

    .line 1165
    .end local v4           #in:Ljava/io/DataInputStream;
    .restart local v5       #in:Ljava/io/DataInputStream;
    .restart local v6       #magic:I
    .restart local v8       #version:I
    :pswitch_0
    :try_start_4
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readInt()I

    move-result v7

    .line 1166
    .local v7, size:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_4
    if-ge v2, v7, :cond_1

    .line 1167
    new-instance v3, Lcom/android/server/net/NetworkIdentitySet;

    invoke-direct {v3, v5}, Lcom/android/server/net/NetworkIdentitySet;-><init>(Ljava/io/DataInputStream;)V

    .line 1168
    .local v3, ident:Lcom/android/server/net/NetworkIdentitySet;
    new-instance v1, Landroid/net/NetworkStatsHistory;

    invoke-direct {v1, v5}, Landroid/net/NetworkStatsHistory;-><init>(Ljava/io/DataInputStream;)V

    .line 1169
    .local v1, history:Landroid/net/NetworkStatsHistory;
    invoke-virtual {p1, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 1166
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 1182
    .end local v1           #history:Landroid/net/NetworkStatsHistory;
    .end local v3           #ident:Lcom/android/server/net/NetworkIdentitySet;
    :cond_1
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    move-object v4, v5

    .line 1183
    .end local v5           #in:Ljava/io/DataInputStream;
    .restart local v4       #in:Ljava/io/DataInputStream;
    goto :goto_1

    .line 1182
    .end local v2           #i:I
    .end local v4           #in:Ljava/io/DataInputStream;
    .end local v6           #magic:I
    .end local v7           #size:I
    .end local v8           #version:I
    .restart local v5       #in:Ljava/io/DataInputStream;
    :catchall_1
    move-exception v9

    move-object v4, v5

    .end local v5           #in:Ljava/io/DataInputStream;
    .restart local v4       #in:Ljava/io/DataInputStream;
    goto :goto_3

    .line 1179
    :catch_2
    move-exception v0

    goto :goto_2

    .line 1177
    :catch_3
    move-exception v9

    goto :goto_0

    .line 1162
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private readNetworkXtStatsLocked()V
    .locals 2

    .prologue
    .line 1143
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mNetworkXtFile:Lcom/android/internal/os/AtomicFile;

    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mNetworkXtStats:Ljava/util/HashMap;

    invoke-static {v0, v1}, Lcom/android/server/net/NetworkStatsService;->readNetworkStats(Lcom/android/internal/os/AtomicFile;Ljava/util/HashMap;)V

    .line 1144
    return-void
.end method

.method private readUidStatsLocked()V
    .locals 20

    .prologue
    .line 1197
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkStatsService;->mUidStats:Ljava/util/HashMap;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/HashMap;->clear()V

    .line 1199
    const/4 v7, 0x0

    .line 1201
    .local v7, in:Ljava/io/DataInputStream;
    :try_start_0
    new-instance v8, Ljava/io/DataInputStream;

    new-instance v17, Ljava/io/BufferedInputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkStatsService;->mUidFile:Lcom/android/internal/os/AtomicFile;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/os/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v17

    invoke-direct {v8, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 1204
    .end local v7           #in:Ljava/io/DataInputStream;
    .local v8, in:Ljava/io/DataInputStream;
    :try_start_1
    invoke-virtual {v8}, Ljava/io/DataInputStream;->readInt()I

    move-result v11

    .line 1205
    .local v11, magic:I
    const v17, 0x414e4554

    move/from16 v0, v17

    if-eq v11, v0, :cond_0

    .line 1206
    new-instance v17, Ljava/net/ProtocolException;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "unexpected magic: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v17
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1250
    .end local v11           #magic:I
    :catch_0
    move-exception v17

    move-object v7, v8

    .line 1255
    .end local v8           #in:Ljava/io/DataInputStream;
    .restart local v7       #in:Ljava/io/DataInputStream;
    :goto_0
    invoke-static {v7}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1257
    :goto_1
    return-void

    .line 1209
    .end local v7           #in:Ljava/io/DataInputStream;
    .restart local v8       #in:Ljava/io/DataInputStream;
    .restart local v11       #magic:I
    :cond_0
    :try_start_2
    invoke-virtual {v8}, Ljava/io/DataInputStream;->readInt()I

    move-result v16

    .line 1210
    .local v16, version:I
    packed-switch v16, :pswitch_data_0

    .line 1247
    new-instance v17, Ljava/net/ProtocolException;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "unexpected version: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v17
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 1252
    .end local v11           #magic:I
    .end local v16           #version:I
    :catch_1
    move-exception v2

    move-object v7, v8

    .line 1253
    .end local v8           #in:Ljava/io/DataInputStream;
    .local v2, e:Ljava/io/IOException;
    .restart local v7       #in:Ljava/io/DataInputStream;
    :goto_2
    :try_start_3
    const-string v17, "NetworkStats"

    const-string v18, "problem reading uid stats"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 1255
    .end local v2           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v17

    :goto_3
    invoke-static {v7}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v17

    .line 1228
    .end local v7           #in:Ljava/io/DataInputStream;
    .restart local v8       #in:Ljava/io/DataInputStream;
    .restart local v11       #magic:I
    .restart local v16       #version:I
    :pswitch_0
    :try_start_4
    invoke-virtual {v8}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    .line 1229
    .local v6, identSize:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_4
    if-ge v4, v6, :cond_3

    .line 1230
    new-instance v5, Lcom/android/server/net/NetworkIdentitySet;

    invoke-direct {v5, v8}, Lcom/android/server/net/NetworkIdentitySet;-><init>(Ljava/io/DataInputStream;)V

    .line 1232
    .local v5, ident:Lcom/android/server/net/NetworkIdentitySet;
    invoke-virtual {v8}, Ljava/io/DataInputStream;->readInt()I

    move-result v13

    .line 1233
    .local v13, size:I
    const/4 v9, 0x0

    .local v9, j:I
    :goto_5
    if-ge v9, v13, :cond_2

    .line 1234
    invoke-virtual {v8}, Ljava/io/DataInputStream;->readInt()I

    move-result v15

    .line 1235
    .local v15, uid:I
    const/16 v17, 0x4

    move/from16 v0, v16

    move/from16 v1, v17

    if-lt v0, v1, :cond_1

    invoke-virtual {v8}, Ljava/io/DataInputStream;->readInt()I

    move-result v12

    .line 1237
    .local v12, set:I
    :goto_6
    invoke-virtual {v8}, Ljava/io/DataInputStream;->readInt()I

    move-result v14

    .line 1239
    .local v14, tag:I
    new-instance v10, Lcom/android/server/net/NetworkStatsService$UidStatsKey;

    invoke-direct {v10, v5, v15, v12, v14}, Lcom/android/server/net/NetworkStatsService$UidStatsKey;-><init>(Lcom/android/server/net/NetworkIdentitySet;III)V

    .line 1240
    .local v10, key:Lcom/android/server/net/NetworkStatsService$UidStatsKey;
    new-instance v3, Landroid/net/NetworkStatsHistory;

    invoke-direct {v3, v8}, Landroid/net/NetworkStatsHistory;-><init>(Ljava/io/DataInputStream;)V

    .line 1241
    .local v3, history:Landroid/net/NetworkStatsHistory;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkStatsService;->mUidStats:Ljava/util/HashMap;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v10, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 1233
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    .line 1235
    .end local v3           #history:Landroid/net/NetworkStatsHistory;
    .end local v10           #key:Lcom/android/server/net/NetworkStatsService$UidStatsKey;
    .end local v12           #set:I
    .end local v14           #tag:I
    :cond_1
    const/4 v12, 0x0

    goto :goto_6

    .line 1229
    .end local v15           #uid:I
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 1255
    .end local v4           #i:I
    .end local v5           #ident:Lcom/android/server/net/NetworkIdentitySet;
    .end local v6           #identSize:I
    .end local v9           #j:I
    .end local v13           #size:I
    :cond_3
    :pswitch_1
    invoke-static {v8}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    move-object v7, v8

    .line 1256
    .end local v8           #in:Ljava/io/DataInputStream;
    .restart local v7       #in:Ljava/io/DataInputStream;
    goto :goto_1

    .line 1255
    .end local v7           #in:Ljava/io/DataInputStream;
    .end local v11           #magic:I
    .end local v16           #version:I
    .restart local v8       #in:Ljava/io/DataInputStream;
    :catchall_1
    move-exception v17

    move-object v7, v8

    .end local v8           #in:Ljava/io/DataInputStream;
    .restart local v7       #in:Ljava/io/DataInputStream;
    goto :goto_3

    .line 1252
    :catch_2
    move-exception v2

    goto :goto_2

    .line 1250
    :catch_3
    move-exception v17

    goto/16 :goto_0

    .line 1210
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private registerGlobalAlert()V
    .locals 6

    .prologue
    .line 374
    :try_start_0
    iget-object v3, p0, Lcom/android/server/net/NetworkStatsService;->mSettings:Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;

    invoke-interface {v3}, Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;->getPersistThreshold()J

    move-result-wide v0

    .line 375
    .local v0, alertBytes:J
    iget-object v3, p0, Lcom/android/server/net/NetworkStatsService;->mNetworkManager:Landroid/os/INetworkManagementService;

    invoke-interface {v3, v0, v1}, Landroid/os/INetworkManagementService;->setGlobalAlert(J)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 381
    .end local v0           #alertBytes:J
    :goto_0
    return-void

    .line 376
    :catch_0
    move-exception v2

    .line 377
    .local v2, e:Ljava/lang/IllegalStateException;
    const-string v3, "NetworkStats"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "problem registering for global alert: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 378
    .end local v2           #e:Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v3

    goto :goto_0
.end method

.method private registerPollAlarmLocked()V
    .locals 7

    .prologue
    .line 352
    :try_start_0
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mPollIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    .line 353
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mAlarmManager:Landroid/app/IAlarmManager;

    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mPollIntent:Landroid/app/PendingIntent;

    invoke-interface {v0, v1}, Landroid/app/IAlarmManager;->remove(Landroid/app/PendingIntent;)V

    .line 356
    :cond_0
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.android.server.action.NETWORK_STATS_POLL"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    invoke-static {v0, v1, v4, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mPollIntent:Landroid/app/PendingIntent;

    .line 359
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 360
    .local v2, currentRealtime:J
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mAlarmManager:Landroid/app/IAlarmManager;

    const/4 v1, 0x3

    iget-object v4, p0, Lcom/android/server/net/NetworkStatsService;->mSettings:Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;

    invoke-interface {v4}, Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;->getPollInterval()J

    move-result-wide v4

    iget-object v6, p0, Lcom/android/server/net/NetworkStatsService;->mPollIntent:Landroid/app/PendingIntent;

    invoke-interface/range {v0 .. v6}, Landroid/app/IAlarmManager;->setInexactRepeating(IJJLandroid/app/PendingIntent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 365
    .end local v2           #currentRealtime:J
    :goto_0
    return-void

    .line 362
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private removeUidLocked(I)V
    .locals 8
    .parameter "uid"

    .prologue
    const/4 v7, 0x0

    .line 1044
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->ensureUidStatsLoadedLocked()V

    .line 1047
    const/4 v5, 0x3

    invoke-direct {p0, v5}, Lcom/android/server/net/NetworkStatsService;->performPollLocked(I)V

    .line 1049
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 1050
    .local v2, knownKeys:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/net/NetworkStatsService$UidStatsKey;>;"
    iget-object v5, p0, Lcom/android/server/net/NetworkStatsService;->mUidStats:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1053
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/net/NetworkStatsService$UidStatsKey;

    .line 1054
    .local v1, key:Lcom/android/server/net/NetworkStatsService$UidStatsKey;
    iget v5, v1, Lcom/android/server/net/NetworkStatsService$UidStatsKey;->uid:I

    if-ne v5, p1, :cond_0

    .line 1056
    iget v5, v1, Lcom/android/server/net/NetworkStatsService$UidStatsKey;->tag:I

    if-nez v5, :cond_1

    .line 1057
    iget-object v5, p0, Lcom/android/server/net/NetworkStatsService;->mUidStats:Ljava/util/HashMap;

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/NetworkStatsHistory;

    .line 1058
    .local v4, uidHistory:Landroid/net/NetworkStatsHistory;
    iget-object v5, v1, Lcom/android/server/net/NetworkStatsService$UidStatsKey;->ident:Lcom/android/server/net/NetworkIdentitySet;

    const/4 v6, -0x4

    invoke-direct {p0, v5, v6, v7, v7}, Lcom/android/server/net/NetworkStatsService;->findOrCreateUidStatsLocked(Lcom/android/server/net/NetworkIdentitySet;III)Landroid/net/NetworkStatsHistory;

    move-result-object v3

    .line 1060
    .local v3, removedHistory:Landroid/net/NetworkStatsHistory;
    invoke-virtual {v3, v4}, Landroid/net/NetworkStatsHistory;->recordEntireHistory(Landroid/net/NetworkStatsHistory;)V

    .line 1062
    .end local v3           #removedHistory:Landroid/net/NetworkStatsHistory;
    .end local v4           #uidHistory:Landroid/net/NetworkStatsHistory;
    :cond_1
    iget-object v5, p0, Lcom/android/server/net/NetworkStatsService;->mUidStats:Ljava/util/HashMap;

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1067
    .end local v1           #key:Lcom/android/server/net/NetworkStatsService$UidStatsKey;
    :cond_2
    iget-object v5, p0, Lcom/android/server/net/NetworkStatsService;->mLastPollUidSnapshot:Landroid/net/NetworkStats;

    if-eqz v5, :cond_3

    .line 1068
    iget-object v5, p0, Lcom/android/server/net/NetworkStatsService;->mLastPollUidSnapshot:Landroid/net/NetworkStats;

    invoke-virtual {v5, p1}, Landroid/net/NetworkStats;->withoutUid(I)Landroid/net/NetworkStats;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/net/NetworkStatsService;->mLastPollUidSnapshot:Landroid/net/NetworkStats;

    .line 1069
    iget-object v5, p0, Lcom/android/server/net/NetworkStatsService;->mLastPollUidSnapshot:Landroid/net/NetworkStats;

    invoke-static {v5}, Lcom/android/server/net/NetworkStatsService;->computeNetworkXtSnapshotFromUid(Landroid/net/NetworkStats;)Landroid/net/NetworkStats;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/net/NetworkStatsService;->mLastPollNetworkXtSnapshot:Landroid/net/NetworkStats;

    .line 1073
    :cond_3
    invoke-static {p1}, Lcom/android/server/NetworkManagementSocketTagger;->resetKernelUidStats(I)V

    .line 1076
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->writeUidStatsLocked()V

    .line 1077
    return-void
.end method

.method private shutdownLocked()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 324
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mConnReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 325
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mTetherReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 326
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mPollReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 327
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mRemovedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 328
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mShutdownReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 330
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mTeleManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mPhoneListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 332
    iget-boolean v0, p0, Lcom/android/server/net/NetworkStatsService;->mNetworkStatsLoaded:Z

    if-eqz v0, :cond_0

    .line 333
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->writeNetworkDevStatsLocked()V

    .line 334
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->writeNetworkXtStatsLocked()V

    .line 336
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/net/NetworkStatsService;->mUidStatsLoaded:Z

    if-eqz v0, :cond_1

    .line 337
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->writeUidStatsLocked()V

    .line 339
    :cond_1
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mNetworkDevStats:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 340
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mNetworkXtStats:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 341
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mUidStats:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 342
    iput-boolean v2, p0, Lcom/android/server/net/NetworkStatsService;->mNetworkStatsLoaded:Z

    .line 343
    iput-boolean v2, p0, Lcom/android/server/net/NetworkStatsService;->mUidStatsLoaded:Z

    .line 344
    return-void
.end method

.method private static templateMatches(Landroid/net/NetworkTemplate;Lcom/android/server/net/NetworkIdentitySet;)Z
    .locals 3
    .parameter "template"
    .parameter "identSet"

    .prologue
    .line 1619
    invoke-virtual {p1}, Lcom/android/server/net/NetworkIdentitySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkIdentity;

    .line 1620
    .local v1, ident:Landroid/net/NetworkIdentity;
    invoke-virtual {p0, v1}, Landroid/net/NetworkTemplate;->matches(Landroid/net/NetworkIdentity;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1621
    const/4 v2, 0x1

    .line 1624
    .end local v1           #ident:Landroid/net/NetworkIdentity;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private updateIfaces()V
    .locals 3

    .prologue
    .line 722
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mStatsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 723
    :try_start_0
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 725
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->updateIfacesLocked()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 727
    :try_start_2
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 729
    monitor-exit v1

    .line 730
    return-void

    .line 727
    :catchall_0
    move-exception v0

    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v0

    .line 729
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method private updateIfacesLocked()V
    .locals 9

    .prologue
    .line 747
    const/4 v8, 0x1

    invoke-direct {p0, v8}, Lcom/android/server/net/NetworkStatsService;->performPollLocked(I)V

    .line 751
    :try_start_0
    iget-object v8, p0, Lcom/android/server/net/NetworkStatsService;->mConnManager:Landroid/net/IConnectivityManager;

    invoke-interface {v8}, Landroid/net/IConnectivityManager;->getAllNetworkState()[Landroid/net/NetworkState;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 758
    .local v7, states:[Landroid/net/NetworkState;
    iget-object v8, p0, Lcom/android/server/net/NetworkStatsService;->mActiveIfaces:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->clear()V

    .line 760
    move-object v0, v7

    .local v0, arr$:[Landroid/net/NetworkState;
    array-length v5, v0

    .local v5, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v5, :cond_2

    aget-object v6, v0, v2

    .line 761
    .local v6, state:Landroid/net/NetworkState;
    iget-object v8, v6, Landroid/net/NetworkState;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v8}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 763
    iget-object v8, v6, Landroid/net/NetworkState;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v8}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v4

    .line 765
    .local v4, iface:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/server/net/NetworkStatsService;->mActiveIfaces:Ljava/util/HashMap;

    invoke-virtual {v8, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/net/NetworkIdentitySet;

    .line 766
    .local v3, ident:Lcom/android/server/net/NetworkIdentitySet;
    if-nez v3, :cond_0

    .line 767
    new-instance v3, Lcom/android/server/net/NetworkIdentitySet;

    .end local v3           #ident:Lcom/android/server/net/NetworkIdentitySet;
    invoke-direct {v3}, Lcom/android/server/net/NetworkIdentitySet;-><init>()V

    .line 768
    .restart local v3       #ident:Lcom/android/server/net/NetworkIdentitySet;
    iget-object v8, p0, Lcom/android/server/net/NetworkStatsService;->mActiveIfaces:Ljava/util/HashMap;

    invoke-virtual {v8, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 771
    :cond_0
    iget-object v8, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    invoke-static {v8, v6}, Landroid/net/NetworkIdentity;->buildNetworkIdentity(Landroid/content/Context;Landroid/net/NetworkState;)Landroid/net/NetworkIdentity;

    move-result-object v8

    invoke-virtual {v3, v8}, Lcom/android/server/net/NetworkIdentitySet;->add(Ljava/lang/Object;)Z

    .line 760
    .end local v3           #ident:Lcom/android/server/net/NetworkIdentitySet;
    .end local v4           #iface:Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 752
    .end local v0           #arr$:[Landroid/net/NetworkState;
    .end local v2           #i$:I
    .end local v5           #len$:I
    .end local v6           #state:Landroid/net/NetworkState;
    .end local v7           #states:[Landroid/net/NetworkState;
    :catch_0
    move-exception v1

    .line 774
    :cond_2
    return-void
.end method

.method private writeNetworkDevStatsLocked()V
    .locals 2

    .prologue
    .line 1261
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mNetworkDevStats:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mNetworkDevFile:Lcom/android/internal/os/AtomicFile;

    invoke-direct {p0, v0, v1}, Lcom/android/server/net/NetworkStatsService;->writeNetworkStats(Ljava/util/HashMap;Lcom/android/internal/os/AtomicFile;)V

    .line 1262
    return-void
.end method

.method private writeNetworkStats(Ljava/util/HashMap;Lcom/android/internal/os/AtomicFile;)V
    .locals 23
    .parameter
    .parameter "outputFile"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/server/net/NetworkIdentitySet;",
            "Landroid/net/NetworkStatsHistory;",
            ">;",
            "Lcom/android/internal/os/AtomicFile;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1274
    .local p1, input:Ljava/util/HashMap;,"Ljava/util/HashMap<Lcom/android/server/net/NetworkIdentitySet;Landroid/net/NetworkStatsHistory;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkStatsService;->mTime:Landroid/util/TrustedTime;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Landroid/util/TrustedTime;->hasCache()Z

    move-result v20

    if-eqz v20, :cond_1

    .line 1275
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 1276
    .local v16, systemCurrentTime:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkStatsService;->mTime:Landroid/util/TrustedTime;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Landroid/util/TrustedTime;->currentTimeMillis()J

    move-result-wide v18

    .line 1278
    .local v18, trustedCurrentTime:J
    invoke-static/range {v16 .. v19}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    .line 1279
    .local v6, currentTime:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkStatsService;->mSettings:Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;->getNetworkMaxHistory()J

    move-result-wide v13

    .line 1281
    .local v13, maxHistory:J
    invoke-virtual/range {p1 .. p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_1

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/net/NetworkStatsHistory;

    .line 1282
    .local v10, history:Landroid/net/NetworkStatsHistory;
    invoke-virtual {v10}, Landroid/net/NetworkStatsHistory;->size()I

    move-result v4

    .line 1283
    .local v4, beforeSize:I
    sub-long v20, v6, v13

    move-wide/from16 v0, v20

    invoke-virtual {v10, v0, v1}, Landroid/net/NetworkStatsHistory;->removeBucketsBefore(J)V

    .line 1284
    invoke-virtual {v10}, Landroid/net/NetworkStatsHistory;->size()I

    move-result v3

    .line 1286
    .local v3, afterSize:I
    const/16 v20, 0x18

    move/from16 v0, v20

    if-le v4, v0, :cond_0

    div-int/lit8 v20, v4, 0x2

    move/from16 v0, v20

    if-ge v3, v0, :cond_0

    .line 1288
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 1289
    .local v5, builder:Ljava/lang/StringBuilder;
    const-string v20, "yikes, dropping more than half of history"

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const/16 v21, 0xa

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1290
    const-string v20, "systemCurrentTime="

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    const/16 v21, 0xa

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1291
    const-string v20, "trustedCurrentTime="

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    const/16 v21, 0xa

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1292
    const-string v20, "maxHistory="

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    const/16 v21, 0xa

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1293
    const-string v20, "beforeSize="

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const/16 v21, 0xa

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1294
    const-string v20, "afterSize="

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const/16 v21, 0xa

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1295
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkStatsService;->mDropBox:Landroid/os/DropBoxManager;

    move-object/from16 v20, v0

    const-string v21, "netstats_error"

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v20 .. v22}, Landroid/os/DropBoxManager;->addText(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1300
    .end local v3           #afterSize:I
    .end local v4           #beforeSize:I
    .end local v5           #builder:Ljava/lang/StringBuilder;
    .end local v6           #currentTime:J
    .end local v10           #history:Landroid/net/NetworkStatsHistory;
    .end local v11           #i$:Ljava/util/Iterator;
    .end local v13           #maxHistory:J
    .end local v16           #systemCurrentTime:J
    .end local v18           #trustedCurrentTime:J
    :cond_1
    const/4 v9, 0x0

    .line 1302
    .local v9, fos:Ljava/io/FileOutputStream;
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/os/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v9

    .line 1303
    new-instance v15, Ljava/io/DataOutputStream;

    new-instance v20, Ljava/io/BufferedOutputStream;

    move-object/from16 v0, v20

    invoke-direct {v0, v9}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object/from16 v0, v20

    invoke-direct {v15, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1305
    .local v15, out:Ljava/io/DataOutputStream;
    const v20, 0x414e4554

    move/from16 v0, v20

    invoke-virtual {v15, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1306
    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-virtual {v15, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1308
    invoke-virtual/range {p1 .. p1}, Ljava/util/HashMap;->size()I

    move-result v20

    move/from16 v0, v20

    invoke-virtual {v15, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1309
    invoke-virtual/range {p1 .. p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .restart local v11       #i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_3

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/net/NetworkIdentitySet;

    .line 1310
    .local v12, ident:Lcom/android/server/net/NetworkIdentitySet;
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/net/NetworkStatsHistory;

    .line 1311
    .restart local v10       #history:Landroid/net/NetworkStatsHistory;
    invoke-virtual {v12, v15}, Lcom/android/server/net/NetworkIdentitySet;->writeToStream(Ljava/io/DataOutputStream;)V

    .line 1312
    invoke-virtual {v10, v15}, Landroid/net/NetworkStatsHistory;->writeToStream(Ljava/io/DataOutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1317
    .end local v10           #history:Landroid/net/NetworkStatsHistory;
    .end local v11           #i$:Ljava/util/Iterator;
    .end local v12           #ident:Lcom/android/server/net/NetworkIdentitySet;
    .end local v15           #out:Ljava/io/DataOutputStream;
    :catch_0
    move-exception v8

    .line 1318
    .local v8, e:Ljava/io/IOException;
    const-string v20, "NetworkStats"

    const-string v21, "problem writing stats"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v8}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1319
    if-eqz v9, :cond_2

    .line 1320
    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Lcom/android/internal/os/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 1323
    .end local v8           #e:Ljava/io/IOException;
    :cond_2
    :goto_2
    return-void

    .line 1315
    .restart local v11       #i$:Ljava/util/Iterator;
    .restart local v15       #out:Ljava/io/DataOutputStream;
    :cond_3
    :try_start_1
    invoke-virtual {v15}, Ljava/io/DataOutputStream;->flush()V

    .line 1316
    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Lcom/android/internal/os/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method private writeNetworkXtStatsLocked()V
    .locals 2

    .prologue
    .line 1266
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mNetworkXtStats:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mNetworkXtFile:Lcom/android/internal/os/AtomicFile;

    invoke-direct {p0, v0, v1}, Lcom/android/server/net/NetworkStatsService;->writeNetworkStats(Ljava/util/HashMap;Lcom/android/internal/os/AtomicFile;)V

    .line 1267
    return-void
.end method

.method private writeUidStatsLocked()V
    .locals 22

    .prologue
    .line 1328
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/net/NetworkStatsService;->mUidStatsLoaded:Z

    move/from16 v18, v0

    if-nez v18, :cond_1

    .line 1329
    const-string v18, "NetworkStats"

    const-string v19, "asked to write UID stats when not loaded; skipping"

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1395
    :cond_0
    :goto_0
    return-void

    .line 1336
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkStatsService;->mTime:Landroid/util/TrustedTime;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Landroid/util/TrustedTime;->hasCache()Z

    move-result v18

    if-eqz v18, :cond_3

    .line 1337
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkStatsService;->mTime:Landroid/util/TrustedTime;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Landroid/util/TrustedTime;->currentTimeMillis()J

    move-result-wide v20

    invoke-static/range {v18 .. v21}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    .line 1339
    .local v2, currentTime:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkStatsService;->mSettings:Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;->getUidMaxHistory()J

    move-result-wide v15

    .line 1340
    .local v15, maxUidHistory:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkStatsService;->mSettings:Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;->getTagMaxHistory()J

    move-result-wide v13

    .line 1341
    .local v13, maxTagHistory:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkStatsService;->mUidStats:Ljava/util/HashMap;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/net/NetworkStatsService$UidStatsKey;

    .line 1342
    .local v10, key:Lcom/android/server/net/NetworkStatsService$UidStatsKey;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkStatsService;->mUidStats:Ljava/util/HashMap;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/NetworkStatsHistory;

    .line 1345
    .local v6, history:Landroid/net/NetworkStatsHistory;
    iget v0, v10, Lcom/android/server/net/NetworkStatsService$UidStatsKey;->tag:I

    move/from16 v18, v0

    if-nez v18, :cond_2

    .line 1346
    sub-long v18, v2, v15

    move-wide/from16 v0, v18

    invoke-virtual {v6, v0, v1}, Landroid/net/NetworkStatsHistory;->removeBucketsBefore(J)V

    goto :goto_1

    .line 1348
    :cond_2
    sub-long v18, v2, v13

    move-wide/from16 v0, v18

    invoke-virtual {v6, v0, v1}, Landroid/net/NetworkStatsHistory;->removeBucketsBefore(J)V

    goto :goto_1

    .line 1354
    .end local v2           #currentTime:J
    .end local v6           #history:Landroid/net/NetworkStatsHistory;
    .end local v7           #i$:Ljava/util/Iterator;
    .end local v10           #key:Lcom/android/server/net/NetworkStatsService$UidStatsKey;
    .end local v13           #maxTagHistory:J
    .end local v15           #maxUidHistory:J
    :cond_3
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v12

    .line 1355
    .local v12, keysByIdent:Ljava/util/HashMap;,"Ljava/util/HashMap<Lcom/android/server/net/NetworkIdentitySet;Ljava/util/ArrayList<Lcom/android/server/net/NetworkStatsService$UidStatsKey;>;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkStatsService;->mUidStats:Ljava/util/HashMap;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .restart local v7       #i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/net/NetworkStatsService$UidStatsKey;

    .line 1356
    .restart local v10       #key:Lcom/android/server/net/NetworkStatsService$UidStatsKey;
    iget-object v0, v10, Lcom/android/server/net/NetworkStatsService$UidStatsKey;->ident:Lcom/android/server/net/NetworkIdentitySet;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/ArrayList;

    .line 1357
    .local v11, keys:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/net/NetworkStatsService$UidStatsKey;>;"
    if-nez v11, :cond_4

    .line 1358
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v11

    .line 1359
    iget-object v0, v10, Lcom/android/server/net/NetworkStatsService$UidStatsKey;->ident:Lcom/android/server/net/NetworkIdentitySet;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v12, v0, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1361
    :cond_4
    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1364
    .end local v10           #key:Lcom/android/server/net/NetworkStatsService$UidStatsKey;
    .end local v11           #keys:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/net/NetworkStatsService$UidStatsKey;>;"
    :cond_5
    const/4 v5, 0x0

    .line 1366
    .local v5, fos:Ljava/io/FileOutputStream;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkStatsService;->mUidFile:Lcom/android/internal/os/AtomicFile;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/os/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v5

    .line 1367
    new-instance v17, Ljava/io/DataOutputStream;

    new-instance v18, Ljava/io/BufferedOutputStream;

    move-object/from16 v0, v18

    invoke-direct {v0, v5}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct/range {v17 .. v18}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1369
    .local v17, out:Ljava/io/DataOutputStream;
    const v18, 0x414e4554

    invoke-virtual/range {v17 .. v18}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1370
    const/16 v18, 0x4

    invoke-virtual/range {v17 .. v18}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1372
    invoke-virtual {v12}, Ljava/util/HashMap;->size()I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1373
    invoke-virtual {v12}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .end local v7           #i$:Ljava/util/Iterator;
    :cond_6
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/net/NetworkIdentitySet;

    .line 1374
    .local v9, ident:Lcom/android/server/net/NetworkIdentitySet;
    invoke-virtual {v12, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/ArrayList;

    .line 1375
    .restart local v11       #keys:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/net/NetworkStatsService$UidStatsKey;>;"
    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Lcom/android/server/net/NetworkIdentitySet;->writeToStream(Ljava/io/DataOutputStream;)V

    .line 1377
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1378
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/net/NetworkStatsService$UidStatsKey;

    .line 1379
    .restart local v10       #key:Lcom/android/server/net/NetworkStatsService$UidStatsKey;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkStatsService;->mUidStats:Ljava/util/HashMap;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/NetworkStatsHistory;

    .line 1380
    .restart local v6       #history:Landroid/net/NetworkStatsHistory;
    iget v0, v10, Lcom/android/server/net/NetworkStatsService$UidStatsKey;->uid:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1381
    iget v0, v10, Lcom/android/server/net/NetworkStatsService$UidStatsKey;->set:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1382
    iget v0, v10, Lcom/android/server/net/NetworkStatsService$UidStatsKey;->tag:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1383
    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Landroid/net/NetworkStatsHistory;->writeToStream(Ljava/io/DataOutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 1389
    .end local v6           #history:Landroid/net/NetworkStatsHistory;
    .end local v8           #i$:Ljava/util/Iterator;
    .end local v9           #ident:Lcom/android/server/net/NetworkIdentitySet;
    .end local v10           #key:Lcom/android/server/net/NetworkStatsService$UidStatsKey;
    .end local v11           #keys:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/net/NetworkStatsService$UidStatsKey;>;"
    .end local v17           #out:Ljava/io/DataOutputStream;
    :catch_0
    move-exception v4

    .line 1390
    .local v4, e:Ljava/io/IOException;
    const-string v18, "NetworkStats"

    const-string v19, "problem writing stats"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v4}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1391
    if-eqz v5, :cond_0

    .line 1392
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkStatsService;->mUidFile:Lcom/android/internal/os/AtomicFile;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Lcom/android/internal/os/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    goto/16 :goto_0

    .line 1387
    .end local v4           #e:Ljava/io/IOException;
    .restart local v17       #out:Ljava/io/DataOutputStream;
    :cond_7
    :try_start_1
    invoke-virtual/range {v17 .. v17}, Ljava/io/DataOutputStream;->flush()V

    .line 1388
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkStatsService;->mUidFile:Lcom/android/internal/os/AtomicFile;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Lcom/android/internal/os/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method


# virtual methods
.method public bindConnectivityManager(Landroid/net/IConnectivityManager;)V
    .locals 1
    .parameter "connManager"

    .prologue
    .line 271
    const-string v0, "missing IConnectivityManager"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/IConnectivityManager;

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mConnManager:Landroid/net/IConnectivityManager;

    .line 272
    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 15
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    .line 1399
    iget-object v12, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    const-string v13, "android.permission.DUMP"

    const-string v14, "NetworkStats"

    invoke-virtual {v12, v13, v14}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1401
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 1402
    .local v2, argSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    move-object/from16 v3, p3

    .local v3, arr$:[Ljava/lang/String;
    array-length v11, v3

    .local v11, len$:I
    const/4 v6, 0x0

    .local v6, i$:I
    :goto_0
    if-ge v6, v11, :cond_0

    aget-object v1, v3, v6

    .line 1403
    .local v1, arg:Ljava/lang/String;
    invoke-virtual {v2, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1402
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1406
    .end local v1           #arg:Ljava/lang/String;
    :cond_0
    const-string v12, "full"

    invoke-virtual {v2, v12}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    .line 1408
    .local v4, fullHistory:Z
    iget-object v13, p0, Lcom/android/server/net/NetworkStatsService;->mStatsLock:Ljava/lang/Object;

    monitor-enter v13

    .line 1410
    :try_start_0
    const-string v12, "generate"

    invoke-virtual {v2, v12}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 1411
    move-object/from16 v0, p3

    invoke-direct {p0, v0}, Lcom/android/server/net/NetworkStatsService;->generateRandomLocked([Ljava/lang/String;)V

    .line 1412
    const-string v12, "Generated stub stats"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1413
    monitor-exit v13

    .line 1464
    .end local v6           #i$:I
    :goto_1
    return-void

    .line 1416
    .restart local v6       #i$:I
    :cond_1
    const-string v12, "poll"

    invoke-virtual {v2, v12}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 1417
    const/16 v12, 0x103

    invoke-direct {p0, v12}, Lcom/android/server/net/NetworkStatsService;->performPollLocked(I)V

    .line 1418
    const-string v12, "Forced poll"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1419
    monitor-exit v13

    goto :goto_1

    .line 1463
    .end local v6           #i$:I
    :catchall_0
    move-exception v12

    monitor-exit v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v12

    .line 1422
    .restart local v6       #i$:I
    :cond_2
    :try_start_1
    const-string v12, "Active interfaces:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1423
    iget-object v12, p0, Lcom/android/server/net/NetworkStatsService;->mActiveIfaces:Ljava/util/HashMap;

    invoke-virtual {v12}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 1424
    .local v8, iface:Ljava/lang/String;
    iget-object v12, p0, Lcom/android/server/net/NetworkStatsService;->mActiveIfaces:Ljava/util/HashMap;

    invoke-virtual {v12, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/net/NetworkIdentitySet;

    .line 1425
    .local v7, ident:Lcom/android/server/net/NetworkIdentitySet;
    const-string v12, "  iface="

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1426
    const-string v12, " ident="

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7}, Lcom/android/server/net/NetworkIdentitySet;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    .line 1429
    .end local v7           #ident:Lcom/android/server/net/NetworkIdentitySet;
    .end local v8           #iface:Ljava/lang/String;
    :cond_3
    const-string v12, "Known historical dev stats:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1430
    iget-object v12, p0, Lcom/android/server/net/NetworkStatsService;->mNetworkDevStats:Ljava/util/HashMap;

    invoke-virtual {v12}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/net/NetworkIdentitySet;

    .line 1431
    .restart local v7       #ident:Lcom/android/server/net/NetworkIdentitySet;
    iget-object v12, p0, Lcom/android/server/net/NetworkStatsService;->mNetworkDevStats:Ljava/util/HashMap;

    invoke-virtual {v12, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/NetworkStatsHistory;

    .line 1432
    .local v5, history:Landroid/net/NetworkStatsHistory;
    const-string v12, "  ident="

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7}, Lcom/android/server/net/NetworkIdentitySet;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1433
    const-string v12, "  "

    move-object/from16 v0, p2

    invoke-virtual {v5, v12, v0, v4}, Landroid/net/NetworkStatsHistory;->dump(Ljava/lang/String;Ljava/io/PrintWriter;Z)V

    goto :goto_3

    .line 1436
    .end local v5           #history:Landroid/net/NetworkStatsHistory;
    .end local v7           #ident:Lcom/android/server/net/NetworkIdentitySet;
    :cond_4
    const-string v12, "Known historical xt stats:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1437
    iget-object v12, p0, Lcom/android/server/net/NetworkStatsService;->mNetworkXtStats:Ljava/util/HashMap;

    invoke-virtual {v12}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/net/NetworkIdentitySet;

    .line 1438
    .restart local v7       #ident:Lcom/android/server/net/NetworkIdentitySet;
    iget-object v12, p0, Lcom/android/server/net/NetworkStatsService;->mNetworkXtStats:Ljava/util/HashMap;

    invoke-virtual {v12, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/NetworkStatsHistory;

    .line 1439
    .restart local v5       #history:Landroid/net/NetworkStatsHistory;
    const-string v12, "  ident="

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7}, Lcom/android/server/net/NetworkIdentitySet;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1440
    const-string v12, "  "

    move-object/from16 v0, p2

    invoke-virtual {v5, v12, v0, v4}, Landroid/net/NetworkStatsHistory;->dump(Ljava/lang/String;Ljava/io/PrintWriter;Z)V

    goto :goto_4

    .line 1443
    .end local v5           #history:Landroid/net/NetworkStatsHistory;
    .end local v7           #ident:Lcom/android/server/net/NetworkIdentitySet;
    :cond_5
    const-string v12, "detail"

    invoke-virtual {v2, v12}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 1446
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->ensureUidStatsLoadedLocked()V

    .line 1448
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v10

    .line 1449
    .local v10, keys:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/net/NetworkStatsService$UidStatsKey;>;"
    iget-object v12, p0, Lcom/android/server/net/NetworkStatsService;->mUidStats:Ljava/util/HashMap;

    invoke-virtual {v12}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1450
    invoke-static {v10}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 1452
    const-string v12, "Detailed UID stats:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1453
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/net/NetworkStatsService$UidStatsKey;

    .line 1454
    .local v9, key:Lcom/android/server/net/NetworkStatsService$UidStatsKey;
    const-string v12, "  ident="

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v12, v9, Lcom/android/server/net/NetworkStatsService$UidStatsKey;->ident:Lcom/android/server/net/NetworkIdentitySet;

    invoke-virtual {v12}, Lcom/android/server/net/NetworkIdentitySet;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1455
    const-string v12, " uid="

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v12, v9, Lcom/android/server/net/NetworkStatsService$UidStatsKey;->uid:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(I)V

    .line 1456
    const-string v12, " set="

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v12, v9, Lcom/android/server/net/NetworkStatsService$UidStatsKey;->set:I

    invoke-static {v12}, Landroid/net/NetworkStats;->setToString(I)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1457
    const-string v12, " tag="

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v12, v9, Lcom/android/server/net/NetworkStatsService$UidStatsKey;->tag:I

    invoke-static {v12}, Landroid/net/NetworkStats;->tagToString(I)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1459
    iget-object v12, p0, Lcom/android/server/net/NetworkStatsService;->mUidStats:Ljava/util/HashMap;

    invoke-virtual {v12, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/NetworkStatsHistory;

    .line 1460
    .restart local v5       #history:Landroid/net/NetworkStatsHistory;
    const-string v12, "    "

    move-object/from16 v0, p2

    invoke-virtual {v5, v12, v0, v4}, Landroid/net/NetworkStatsHistory;->dump(Ljava/lang/String;Ljava/io/PrintWriter;Z)V

    goto :goto_5

    .line 1463
    .end local v5           #history:Landroid/net/NetworkStatsHistory;
    .end local v9           #key:Lcom/android/server/net/NetworkStatsService$UidStatsKey;
    .end local v10           #keys:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/net/NetworkStatsService$UidStatsKey;>;"
    :cond_6
    monitor-exit v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1
.end method

.method public forceUpdate()V
    .locals 3

    .prologue
    .line 602
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_NETWORK_USAGE_HISTORY"

    const-string v2, "NetworkStats"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 603
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/android/server/net/NetworkStatsService;->performPoll(I)V

    .line 604
    return-void
.end method

.method public getDataLayerSnapshotForUid(I)Landroid/net/NetworkStats;
    .locals 7
    .parameter "uid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 544
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    if-eq v4, p1, :cond_0

    .line 545
    iget-object v4, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.ACCESS_NETWORK_STATE"

    const-string v6, "NetworkStats"

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 550
    :cond_0
    iget-object v4, p0, Lcom/android/server/net/NetworkStatsService;->mNetworkManager:Landroid/os/INetworkManagementService;

    invoke-interface {v4, p1}, Landroid/os/INetworkManagementService;->getNetworkStatsUidDetail(I)Landroid/net/NetworkStats;

    move-result-object v3

    .line 551
    .local v3, networkLayer:Landroid/net/NetworkStats;
    new-instance v0, Landroid/net/NetworkStats;

    invoke-virtual {v3}, Landroid/net/NetworkStats;->getElapsedRealtime()J

    move-result-wide v4

    invoke-virtual {v3}, Landroid/net/NetworkStats;->size()I

    move-result v6

    invoke-direct {v0, v4, v5, v6}, Landroid/net/NetworkStats;-><init>(JI)V

    .line 554
    .local v0, dataLayer:Landroid/net/NetworkStats;
    const/4 v1, 0x0

    .line 555
    .local v1, entry:Landroid/net/NetworkStats$Entry;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-virtual {v3}, Landroid/net/NetworkStats;->size()I

    move-result v4

    if-ge v2, v4, :cond_1

    .line 556
    invoke-virtual {v3, v2, v1}, Landroid/net/NetworkStats;->getValues(ILandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object v1

    .line 557
    sget-object v4, Landroid/net/NetworkStats;->IFACE_ALL:Ljava/lang/String;

    iput-object v4, v1, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    .line 558
    invoke-virtual {v0, v1}, Landroid/net/NetworkStats;->combineValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    .line 555
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 562
    :cond_1
    iget-object v4, p0, Lcom/android/server/net/NetworkStatsService;->mOperations:Landroid/net/NetworkStats;

    invoke-virtual {v0, v4}, Landroid/net/NetworkStats;->spliceOperationsFrom(Landroid/net/NetworkStats;)V

    .line 563
    return-object v0
.end method

.method public getHistoryForNetwork(Landroid/net/NetworkTemplate;I)Landroid/net/NetworkStatsHistory;
    .locals 3
    .parameter "template"
    .parameter "fields"

    .prologue
    .line 385
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_NETWORK_USAGE_HISTORY"

    const-string v2, "NetworkStats"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    invoke-direct {p0, p1, p2}, Lcom/android/server/net/NetworkStatsService;->getHistoryForNetworkDev(Landroid/net/NetworkTemplate;I)Landroid/net/NetworkStatsHistory;

    move-result-object v0

    return-object v0
.end method

.method public getHistoryForUid(Landroid/net/NetworkTemplate;IIII)Landroid/net/NetworkStatsHistory;
    .locals 9
    .parameter "template"
    .parameter "uid"
    .parameter "set"
    .parameter "tag"
    .parameter "fields"

    .prologue
    .line 418
    iget-object v5, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    const-string v6, "android.permission.READ_NETWORK_USAGE_HISTORY"

    const-string v7, "NetworkStats"

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    iget-object v6, p0, Lcom/android/server/net/NetworkStatsService;->mStatsLock:Ljava/lang/Object;

    monitor-enter v6

    .line 421
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->ensureUidStatsLoadedLocked()V

    .line 424
    new-instance v0, Landroid/net/NetworkStatsHistory;

    iget-object v5, p0, Lcom/android/server/net/NetworkStatsService;->mSettings:Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;

    invoke-interface {v5}, Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;->getUidBucketDuration()J

    move-result-wide v7

    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->estimateUidBuckets()I

    move-result v5

    invoke-direct {v0, v7, v8, v5, p5}, Landroid/net/NetworkStatsHistory;-><init>(JII)V

    .line 426
    .local v0, combined:Landroid/net/NetworkStatsHistory;
    iget-object v5, p0, Lcom/android/server/net/NetworkStatsService;->mUidStats:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/net/NetworkStatsService$UidStatsKey;

    .line 427
    .local v3, key:Lcom/android/server/net/NetworkStatsService$UidStatsKey;
    const/4 v5, -0x1

    if-eq p3, v5, :cond_1

    iget v5, v3, Lcom/android/server/net/NetworkStatsService$UidStatsKey;->set:I

    if-ne v5, p3, :cond_2

    :cond_1
    const/4 v4, 0x1

    .line 428
    .local v4, setMatches:Z
    :goto_1
    iget-object v5, v3, Lcom/android/server/net/NetworkStatsService$UidStatsKey;->ident:Lcom/android/server/net/NetworkIdentitySet;

    invoke-static {p1, v5}, Lcom/android/server/net/NetworkStatsService;->templateMatches(Landroid/net/NetworkTemplate;Lcom/android/server/net/NetworkIdentitySet;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget v5, v3, Lcom/android/server/net/NetworkStatsService$UidStatsKey;->uid:I

    if-ne v5, p2, :cond_0

    if-eqz v4, :cond_0

    iget v5, v3, Lcom/android/server/net/NetworkStatsService$UidStatsKey;->tag:I

    if-ne v5, p4, :cond_0

    .line 430
    iget-object v5, p0, Lcom/android/server/net/NetworkStatsService;->mUidStats:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkStatsHistory;

    .line 431
    .local v1, history:Landroid/net/NetworkStatsHistory;
    invoke-virtual {v0, v1}, Landroid/net/NetworkStatsHistory;->recordEntireHistory(Landroid/net/NetworkStatsHistory;)V

    goto :goto_0

    .line 436
    .end local v0           #combined:Landroid/net/NetworkStatsHistory;
    .end local v1           #history:Landroid/net/NetworkStatsHistory;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #key:Lcom/android/server/net/NetworkStatsService$UidStatsKey;
    .end local v4           #setMatches:Z
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 427
    .restart local v0       #combined:Landroid/net/NetworkStatsHistory;
    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v3       #key:Lcom/android/server/net/NetworkStatsService$UidStatsKey;
    :cond_2
    const/4 v4, 0x0

    goto :goto_1

    .line 435
    .end local v3           #key:Lcom/android/server/net/NetworkStatsService$UidStatsKey;
    :cond_3
    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v0
.end method

.method public getSummaryForAllUid(Landroid/net/NetworkTemplate;JJZ)Landroid/net/NetworkStats;
    .locals 13
    .parameter "template"
    .parameter "start"
    .parameter "end"
    .parameter "includeTags"

    .prologue
    .line 500
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.READ_NETWORK_USAGE_HISTORY"

    const-string v3, "NetworkStats"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 502
    iget-object v12, p0, Lcom/android/server/net/NetworkStatsService;->mStatsLock:Ljava/lang/Object;

    monitor-enter v12

    .line 503
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->ensureUidStatsLoadedLocked()V

    .line 506
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 508
    .local v5, now:J
    new-instance v11, Landroid/net/NetworkStats;

    sub-long v1, p4, p2

    const/16 v3, 0x18

    invoke-direct {v11, v1, v2, v3}, Landroid/net/NetworkStats;-><init>(JI)V

    .line 509
    .local v11, stats:Landroid/net/NetworkStats;
    new-instance v8, Landroid/net/NetworkStats$Entry;

    invoke-direct {v8}, Landroid/net/NetworkStats$Entry;-><init>()V

    .line 510
    .local v8, entry:Landroid/net/NetworkStats$Entry;
    const/4 v7, 0x0

    .line 512
    .local v7, historyEntry:Landroid/net/NetworkStatsHistory$Entry;
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mUidStats:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/net/NetworkStatsService$UidStatsKey;

    .line 513
    .local v10, key:Lcom/android/server/net/NetworkStatsService$UidStatsKey;
    iget-object v1, v10, Lcom/android/server/net/NetworkStatsService$UidStatsKey;->ident:Lcom/android/server/net/NetworkIdentitySet;

    invoke-static {p1, v1}, Lcom/android/server/net/NetworkStatsService;->templateMatches(Landroid/net/NetworkTemplate;Lcom/android/server/net/NetworkIdentitySet;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 516
    iget v1, v10, Lcom/android/server/net/NetworkStatsService$UidStatsKey;->tag:I

    if-eqz v1, :cond_1

    if-eqz p6, :cond_0

    .line 517
    :cond_1
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mUidStats:Ljava/util/HashMap;

    invoke-virtual {v1, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkStatsHistory;

    .local v0, history:Landroid/net/NetworkStatsHistory;
    move-wide v1, p2

    move-wide/from16 v3, p4

    .line 518
    invoke-virtual/range {v0 .. v7}, Landroid/net/NetworkStatsHistory;->getValues(JJJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v7

    .line 520
    sget-object v1, Landroid/net/NetworkStats;->IFACE_ALL:Ljava/lang/String;

    iput-object v1, v8, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    .line 521
    iget v1, v10, Lcom/android/server/net/NetworkStatsService$UidStatsKey;->uid:I

    iput v1, v8, Landroid/net/NetworkStats$Entry;->uid:I

    .line 522
    iget v1, v10, Lcom/android/server/net/NetworkStatsService$UidStatsKey;->set:I

    iput v1, v8, Landroid/net/NetworkStats$Entry;->set:I

    .line 523
    iget v1, v10, Lcom/android/server/net/NetworkStatsService$UidStatsKey;->tag:I

    iput v1, v8, Landroid/net/NetworkStats$Entry;->tag:I

    .line 524
    iget-wide v1, v7, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    iput-wide v1, v8, Landroid/net/NetworkStats$Entry;->rxBytes:J

    .line 525
    iget-wide v1, v7, Landroid/net/NetworkStatsHistory$Entry;->rxPackets:J

    iput-wide v1, v8, Landroid/net/NetworkStats$Entry;->rxPackets:J

    .line 526
    iget-wide v1, v7, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    iput-wide v1, v8, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 527
    iget-wide v1, v7, Landroid/net/NetworkStatsHistory$Entry;->txPackets:J

    iput-wide v1, v8, Landroid/net/NetworkStats$Entry;->txPackets:J

    .line 528
    iget-wide v1, v7, Landroid/net/NetworkStatsHistory$Entry;->operations:J

    iput-wide v1, v8, Landroid/net/NetworkStats$Entry;->operations:J

    .line 530
    iget-wide v1, v8, Landroid/net/NetworkStats$Entry;->rxBytes:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gtz v1, :cond_2

    iget-wide v1, v8, Landroid/net/NetworkStats$Entry;->rxPackets:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gtz v1, :cond_2

    iget-wide v1, v8, Landroid/net/NetworkStats$Entry;->txBytes:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gtz v1, :cond_2

    iget-wide v1, v8, Landroid/net/NetworkStats$Entry;->txPackets:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gtz v1, :cond_2

    iget-wide v1, v8, Landroid/net/NetworkStats$Entry;->operations:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    .line 532
    :cond_2
    invoke-virtual {v11, v8}, Landroid/net/NetworkStats;->combineValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    goto :goto_0

    .line 539
    .end local v0           #history:Landroid/net/NetworkStatsHistory;
    .end local v5           #now:J
    .end local v7           #historyEntry:Landroid/net/NetworkStatsHistory$Entry;
    .end local v8           #entry:Landroid/net/NetworkStats$Entry;
    .end local v9           #i$:Ljava/util/Iterator;
    .end local v10           #key:Lcom/android/server/net/NetworkStatsService$UidStatsKey;
    .end local v11           #stats:Landroid/net/NetworkStats;
    :catchall_0
    move-exception v1

    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 538
    .restart local v5       #now:J
    .restart local v7       #historyEntry:Landroid/net/NetworkStatsHistory$Entry;
    .restart local v8       #entry:Landroid/net/NetworkStats$Entry;
    .restart local v9       #i$:Ljava/util/Iterator;
    .restart local v11       #stats:Landroid/net/NetworkStats;
    :cond_3
    :try_start_1
    monitor-exit v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v11
.end method

.method public getSummaryForNetwork(Landroid/net/NetworkTemplate;JJ)Landroid/net/NetworkStats;
    .locals 3
    .parameter "template"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 441
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_NETWORK_USAGE_HISTORY"

    const-string v2, "NetworkStats"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    invoke-direct/range {p0 .. p5}, Lcom/android/server/net/NetworkStatsService;->getSummaryForNetworkDev(Landroid/net/NetworkTemplate;JJ)Landroid/net/NetworkStats;

    move-result-object v0

    return-object v0
.end method

.method public incrementOperationCount(III)V
    .locals 17
    .parameter "uid"
    .parameter "tag"
    .parameter "operationCount"

    .prologue
    .line 568
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    move/from16 v0, p1

    if-eq v1, v0, :cond_0

    .line 569
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.MODIFY_NETWORK_ACCOUNTING"

    const-string v3, "NetworkStats"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 572
    :cond_0
    if-gez p3, :cond_1

    .line 573
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "operation count can only be incremented"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 575
    :cond_1
    if-nez p2, :cond_2

    .line 576
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "operation count must have specific tag"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 579
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkStatsService;->mStatsLock:Ljava/lang/Object;

    move-object/from16 v16, v0

    monitor-enter v16

    .line 580
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/net/NetworkStatsService;->mActiveUidCounterSet:Landroid/util/SparseIntArray;

    const/4 v2, 0x0

    move/from16 v0, p1

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v4

    .line 581
    .local v4, set:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/net/NetworkStatsService;->mOperations:Landroid/net/NetworkStats;

    sget-object v2, Landroid/net/NetworkStats;->IFACE_ALL:Ljava/lang/String;

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    move/from16 v0, p3

    int-to-long v14, v0

    move/from16 v3, p1

    move/from16 v5, p2

    invoke-virtual/range {v1 .. v15}, Landroid/net/NetworkStats;->combineValues(Ljava/lang/String;IIIJJJJJ)Landroid/net/NetworkStats;

    .line 582
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/net/NetworkStatsService;->mOperations:Landroid/net/NetworkStats;

    sget-object v2, Landroid/net/NetworkStats;->IFACE_ALL:Ljava/lang/String;

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    move/from16 v0, p3

    int-to-long v14, v0

    move/from16 v3, p1

    invoke-virtual/range {v1 .. v15}, Landroid/net/NetworkStats;->combineValues(Ljava/lang/String;IIIJJJJJ)Landroid/net/NetworkStats;

    .line 583
    monitor-exit v16

    .line 584
    return-void

    .line 583
    .end local v4           #set:I
    :catchall_0
    move-exception v1

    monitor-exit v16
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setUidForeground(IZ)V
    .locals 5
    .parameter "uid"
    .parameter "uidForeground"

    .prologue
    const/4 v1, 0x0

    .line 588
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.MODIFY_NETWORK_ACCOUNTING"

    const-string v4, "NetworkStats"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 590
    iget-object v3, p0, Lcom/android/server/net/NetworkStatsService;->mStatsLock:Ljava/lang/Object;

    monitor-enter v3

    .line 591
    if-eqz p2, :cond_0

    const/4 v1, 0x1

    .line 592
    .local v1, set:I
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mActiveUidCounterSet:Landroid/util/SparseIntArray;

    const/4 v4, 0x0

    invoke-virtual {v2, p1, v4}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 593
    .local v0, oldSet:I
    if-eq v0, v1, :cond_1

    .line 594
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mActiveUidCounterSet:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 595
    invoke-static {p1, v1}, Lcom/android/server/NetworkManagementSocketTagger;->setKernelCounterSet(II)V

    .line 597
    :cond_1
    monitor-exit v3

    .line 598
    return-void

    .line 597
    .end local v0           #oldSet:I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public systemReady()V
    .locals 9

    .prologue
    .line 275
    iget-object v6, p0, Lcom/android/server/net/NetworkStatsService;->mStatsLock:Ljava/lang/Object;

    monitor-enter v6

    .line 279
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->readNetworkDevStatsLocked()V

    .line 280
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->readNetworkXtStatsLocked()V

    .line 281
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/server/net/NetworkStatsService;->mNetworkStatsLoaded:Z

    .line 282
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 285
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->bootstrapStats()V

    .line 288
    new-instance v0, Landroid/content/IntentFilter;

    const-string v5, "android.net.conn.CONNECTIVITY_CHANGE_IMMEDIATE"

    invoke-direct {v0, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 289
    .local v0, connFilter:Landroid/content/IntentFilter;
    iget-object v5, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/server/net/NetworkStatsService;->mConnReceiver:Landroid/content/BroadcastReceiver;

    const-string v7, "android.permission.CONNECTIVITY_INTERNAL"

    iget-object v8, p0, Lcom/android/server/net/NetworkStatsService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v6, v0, v7, v8}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 292
    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 293
    .local v4, tetherFilter:Landroid/content/IntentFilter;
    iget-object v5, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/server/net/NetworkStatsService;->mTetherReceiver:Landroid/content/BroadcastReceiver;

    const-string v7, "android.permission.CONNECTIVITY_INTERNAL"

    iget-object v8, p0, Lcom/android/server/net/NetworkStatsService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v6, v4, v7, v8}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 296
    new-instance v1, Landroid/content/IntentFilter;

    const-string v5, "com.android.server.action.NETWORK_STATS_POLL"

    invoke-direct {v1, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 297
    .local v1, pollFilter:Landroid/content/IntentFilter;
    iget-object v5, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/server/net/NetworkStatsService;->mPollReceiver:Landroid/content/BroadcastReceiver;

    const-string v7, "android.permission.READ_NETWORK_USAGE_HISTORY"

    iget-object v8, p0, Lcom/android/server/net/NetworkStatsService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v6, v1, v7, v8}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 300
    new-instance v2, Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.UID_REMOVED"

    invoke-direct {v2, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 301
    .local v2, removedFilter:Landroid/content/IntentFilter;
    iget-object v5, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/server/net/NetworkStatsService;->mRemovedReceiver:Landroid/content/BroadcastReceiver;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/android/server/net/NetworkStatsService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v6, v2, v7, v8}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 304
    new-instance v3, Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.ACTION_SHUTDOWN"

    invoke-direct {v3, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 305
    .local v3, shutdownFilter:Landroid/content/IntentFilter;
    iget-object v5, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/server/net/NetworkStatsService;->mShutdownReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v5, v6, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 308
    :try_start_1
    iget-object v5, p0, Lcom/android/server/net/NetworkStatsService;->mNetworkManager:Landroid/os/INetworkManagementService;

    iget-object v6, p0, Lcom/android/server/net/NetworkStatsService;->mAlertObserver:Landroid/net/INetworkManagementEventObserver;

    invoke-interface {v5, v6}, Landroid/os/INetworkManagementService;->registerObserver(Landroid/net/INetworkManagementEventObserver;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 315
    :goto_0
    iget-object v5, p0, Lcom/android/server/net/NetworkStatsService;->mTeleManager:Landroid/telephony/TelephonyManager;

    iget-object v6, p0, Lcom/android/server/net/NetworkStatsService;->mPhoneListener:Landroid/telephony/PhoneStateListener;

    const/16 v7, 0x40

    invoke-virtual {v5, v6, v7}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 317
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->registerPollAlarmLocked()V

    .line 318
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->registerGlobalAlert()V

    .line 320
    iget-object v5, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    const-string v6, "dropbox"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/DropBoxManager;

    iput-object v5, p0, Lcom/android/server/net/NetworkStatsService;->mDropBox:Landroid/os/DropBoxManager;

    .line 321
    return-void

    .line 282
    .end local v0           #connFilter:Landroid/content/IntentFilter;
    .end local v1           #pollFilter:Landroid/content/IntentFilter;
    .end local v2           #removedFilter:Landroid/content/IntentFilter;
    .end local v3           #shutdownFilter:Landroid/content/IntentFilter;
    .end local v4           #tetherFilter:Landroid/content/IntentFilter;
    :catchall_0
    move-exception v5

    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    .line 309
    .restart local v0       #connFilter:Landroid/content/IntentFilter;
    .restart local v1       #pollFilter:Landroid/content/IntentFilter;
    .restart local v2       #removedFilter:Landroid/content/IntentFilter;
    .restart local v3       #shutdownFilter:Landroid/content/IntentFilter;
    .restart local v4       #tetherFilter:Landroid/content/IntentFilter;
    :catch_0
    move-exception v5

    goto :goto_0
.end method

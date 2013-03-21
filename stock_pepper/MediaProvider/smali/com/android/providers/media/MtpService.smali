.class public Lcom/android/providers/media/MtpService;
.super Landroid/app/Service;
.source "MtpService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/media/MtpService$MtpMsgHandler;
    }
.end annotation


# static fields
.field private static final PTP_DIRECTORIES:[Ljava/lang/String;

.field private static final sLock:Ljava/lang/Object;

.field private static sPreviousSrvDestroyed:Z


# instance fields
.field private mBatteryLevel:I

.field private mBatteryScale:I

.field private final mBinder:Lcom/android/providers/media/IMtpService$Stub;

.field private mDatabase:Landroid/mtp/MtpDatabase;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mMtpDisabled:Z

.field private mMtpMsgHandler:Lcom/android/providers/media/MtpService$MtpMsgHandler;

.field private mPtpMode:Z

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mServer:Landroid/mtp/MtpServer;

.field private mServerFinished:Z

.field private mServiceFinished:Z

.field private final mStorageEventListener:Landroid/os/storage/StorageEventListener;

.field private mStorageManager:Landroid/os/storage/StorageManager;

.field private final mStorageMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/mtp/MtpStorage;",
            ">;"
        }
    .end annotation
.end field

.field private mVolumes:[Landroid/os/storage/StorageVolume;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 56
    sput-boolean v3, Lcom/android/providers/media/MtpService;->sPreviousSrvDestroyed:Z

    .line 58
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/providers/media/MtpService;->sLock:Ljava/lang/Object;

    .line 66
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    sget-object v2, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    aput-object v2, v0, v1

    sget-object v1, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/providers/media/MtpService;->PTP_DIRECTORIES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 52
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 59
    iput-object v1, p0, Lcom/android/providers/media/MtpService;->mMtpMsgHandler:Lcom/android/providers/media/MtpService$MtpMsgHandler;

    .line 60
    iput-object v1, p0, Lcom/android/providers/media/MtpService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 61
    iput-boolean v0, p0, Lcom/android/providers/media/MtpService;->mServerFinished:Z

    .line 62
    iput-boolean v0, p0, Lcom/android/providers/media/MtpService;->mServiceFinished:Z

    .line 82
    new-instance v0, Lcom/android/providers/media/MtpService$1;

    invoke-direct {v0, p0}, Lcom/android/providers/media/MtpService$1;-><init>(Lcom/android/providers/media/MtpService;)V

    iput-object v0, p0, Lcom/android/providers/media/MtpService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 109
    new-instance v0, Lcom/android/providers/media/MtpService$2;

    invoke-direct {v0, p0}, Lcom/android/providers/media/MtpService$2;-><init>(Lcom/android/providers/media/MtpService;)V

    iput-object v0, p0, Lcom/android/providers/media/MtpService;->mStorageEventListener:Landroid/os/storage/StorageEventListener;

    .line 130
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/providers/media/MtpService;->mStorageMap:Ljava/util/HashMap;

    .line 293
    new-instance v0, Lcom/android/providers/media/MtpService$3;

    invoke-direct {v0, p0}, Lcom/android/providers/media/MtpService$3;-><init>(Lcom/android/providers/media/MtpService;)V

    iput-object v0, p0, Lcom/android/providers/media/MtpService;->mBinder:Lcom/android/providers/media/IMtpService$Stub;

    return-void
.end method

.method static synthetic access$000(Lcom/android/providers/media/MtpService;)Lcom/android/providers/media/IMtpService$Stub;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/providers/media/MtpService;->mBinder:Lcom/android/providers/media/IMtpService$Stub;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/providers/media/MtpService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/android/providers/media/MtpService;->mMtpDisabled:Z

    return v0
.end method

.method static synthetic access$1000()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/android/providers/media/MtpService;->sLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/providers/media/MtpService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/android/providers/media/MtpService;->mMtpDisabled:Z

    return p1
.end method

.method static synthetic access$1100()Z
    .locals 1

    .prologue
    .line 52
    sget-boolean v0, Lcom/android/providers/media/MtpService;->sPreviousSrvDestroyed:Z

    return v0
.end method

.method static synthetic access$1102(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 52
    sput-boolean p0, Lcom/android/providers/media/MtpService;->sPreviousSrvDestroyed:Z

    return p0
.end method

.method static synthetic access$1200(Lcom/android/providers/media/MtpService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/android/providers/media/MtpService;->mServiceFinished:Z

    return v0
.end method

.method static synthetic access$1202(Lcom/android/providers/media/MtpService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/android/providers/media/MtpService;->mServiceFinished:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/android/providers/media/MtpService;)Landroid/os/HandlerThread;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/providers/media/MtpService;->mHandlerThread:Landroid/os/HandlerThread;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/providers/media/MtpService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/android/providers/media/MtpService;->mPtpMode:Z

    return v0
.end method

.method static synthetic access$1402(Lcom/android/providers/media/MtpService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/android/providers/media/MtpService;->mPtpMode:Z

    return p1
.end method

.method static synthetic access$1500()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/android/providers/media/MtpService;->PTP_DIRECTORIES:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/providers/media/MtpService;)[Landroid/os/storage/StorageVolume;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/providers/media/MtpService;->mVolumes:[Landroid/os/storage/StorageVolume;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/providers/media/MtpService;)Landroid/mtp/MtpServer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/providers/media/MtpService;->mServer:Landroid/mtp/MtpServer;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/android/providers/media/MtpService;Landroid/mtp/MtpServer;)Landroid/mtp/MtpServer;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput-object p1, p0, Lcom/android/providers/media/MtpService;->mServer:Landroid/mtp/MtpServer;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/android/providers/media/MtpService;)Lcom/android/providers/media/MtpService$MtpMsgHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/providers/media/MtpService;->mMtpMsgHandler:Lcom/android/providers/media/MtpService$MtpMsgHandler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/providers/media/MtpService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/android/providers/media/MtpService;->addStorageDevicesLocked()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/providers/media/MtpService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget v0, p0, Lcom/android/providers/media/MtpService;->mBatteryScale:I

    return v0
.end method

.method static synthetic access$302(Lcom/android/providers/media/MtpService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput p1, p0, Lcom/android/providers/media/MtpService;->mBatteryScale:I

    return p1
.end method

.method static synthetic access$400(Lcom/android/providers/media/MtpService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget v0, p0, Lcom/android/providers/media/MtpService;->mBatteryLevel:I

    return v0
.end method

.method static synthetic access$402(Lcom/android/providers/media/MtpService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput p1, p0, Lcom/android/providers/media/MtpService;->mBatteryLevel:I

    return p1
.end method

.method static synthetic access$500(Lcom/android/providers/media/MtpService;)Landroid/mtp/MtpDatabase;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/providers/media/MtpService;->mDatabase:Landroid/mtp/MtpDatabase;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/providers/media/MtpService;Landroid/mtp/MtpDatabase;)Landroid/mtp/MtpDatabase;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput-object p1, p0, Lcom/android/providers/media/MtpService;->mDatabase:Landroid/mtp/MtpDatabase;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/providers/media/MtpService;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/android/providers/media/MtpService;->volumeMountedLocked(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/providers/media/MtpService;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/providers/media/MtpService;->mStorageMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/providers/media/MtpService;Landroid/mtp/MtpStorage;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/android/providers/media/MtpService;->removeStorageLocked(Landroid/mtp/MtpStorage;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/providers/media/MtpService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/android/providers/media/MtpService;->mServerFinished:Z

    return v0
.end method

.method static synthetic access$902(Lcom/android/providers/media/MtpService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/android/providers/media/MtpService;->mServerFinished:Z

    return p1
.end method

.method private addStorageDevicesLocked()V
    .locals 5

    .prologue
    .line 72
    iget-boolean v2, p0, Lcom/android/providers/media/MtpService;->mPtpMode:Z

    if-eqz v2, :cond_1

    .line 74
    iget-object v2, p0, Lcom/android/providers/media/MtpService;->mStorageMap:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/android/providers/media/MtpService;->mVolumes:[Landroid/os/storage/StorageVolume;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/mtp/MtpStorage;

    invoke-direct {p0, v2}, Lcom/android/providers/media/MtpService;->addStorageLocked(Landroid/mtp/MtpStorage;)V

    .line 80
    :cond_0
    return-void

    .line 76
    :cond_1
    iget-object v2, p0, Lcom/android/providers/media/MtpService;->mStorageMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

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

    check-cast v1, Landroid/mtp/MtpStorage;

    .line 77
    .local v1, storage:Landroid/mtp/MtpStorage;
    invoke-direct {p0, v1}, Lcom/android/providers/media/MtpService;->addStorageLocked(Landroid/mtp/MtpStorage;)V

    goto :goto_0
.end method

.method private addStorageLocked(Landroid/mtp/MtpStorage;)V
    .locals 3
    .parameter "storage"

    .prologue
    .line 339
    const-string v0, "MtpService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addStorageLocked "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/mtp/MtpStorage;->getStorageId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/mtp/MtpStorage;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    iget-object v0, p0, Lcom/android/providers/media/MtpService;->mDatabase:Landroid/mtp/MtpDatabase;

    if-eqz v0, :cond_0

    .line 341
    iget-object v0, p0, Lcom/android/providers/media/MtpService;->mDatabase:Landroid/mtp/MtpDatabase;

    invoke-virtual {v0, p1}, Landroid/mtp/MtpDatabase;->addStorage(Landroid/mtp/MtpStorage;)V

    .line 343
    :cond_0
    iget-object v0, p0, Lcom/android/providers/media/MtpService;->mServer:Landroid/mtp/MtpServer;

    if-eqz v0, :cond_1

    .line 344
    iget-object v0, p0, Lcom/android/providers/media/MtpService;->mServer:Landroid/mtp/MtpServer;

    invoke-virtual {v0, p1}, Landroid/mtp/MtpServer;->addStorage(Landroid/mtp/MtpStorage;)V

    .line 346
    :cond_1
    return-void
.end method

.method private removeStorageLocked(Landroid/mtp/MtpStorage;)V
    .locals 3
    .parameter "storage"

    .prologue
    .line 349
    const-string v0, "MtpService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeStorageLocked "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/mtp/MtpStorage;->getStorageId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/mtp/MtpStorage;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    iget-object v0, p0, Lcom/android/providers/media/MtpService;->mDatabase:Landroid/mtp/MtpDatabase;

    if-eqz v0, :cond_0

    .line 351
    iget-object v0, p0, Lcom/android/providers/media/MtpService;->mDatabase:Landroid/mtp/MtpDatabase;

    invoke-virtual {v0, p1}, Landroid/mtp/MtpDatabase;->removeStorage(Landroid/mtp/MtpStorage;)V

    .line 353
    :cond_0
    iget-object v0, p0, Lcom/android/providers/media/MtpService;->mServer:Landroid/mtp/MtpServer;

    if-eqz v0, :cond_1

    .line 354
    iget-object v0, p0, Lcom/android/providers/media/MtpService;->mServer:Landroid/mtp/MtpServer;

    invoke-virtual {v0, p1}, Landroid/mtp/MtpServer;->removeStorage(Landroid/mtp/MtpStorage;)V

    .line 356
    :cond_1
    return-void
.end method

.method private stopMtpServer()V
    .locals 3

    .prologue
    .line 281
    iget-object v1, p0, Lcom/android/providers/media/MtpService;->mServer:Landroid/mtp/MtpServer;

    if-eqz v1, :cond_0

    .line 285
    iget-object v1, p0, Lcom/android/providers/media/MtpService;->mServer:Landroid/mtp/MtpServer;

    invoke-virtual {v1}, Landroid/mtp/MtpServer;->stop()V

    .line 289
    :goto_0
    iget-object v1, p0, Lcom/android/providers/media/MtpService;->mMtpMsgHandler:Lcom/android/providers/media/MtpService$MtpMsgHandler;

    const v2, 0x10003

    invoke-virtual {v1, v2}, Lcom/android/providers/media/MtpService$MtpMsgHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 290
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/providers/media/MtpService;->mMtpMsgHandler:Lcom/android/providers/media/MtpService$MtpMsgHandler;

    invoke-virtual {v1, v0}, Lcom/android/providers/media/MtpService$MtpMsgHandler;->sendMessage(Landroid/os/Message;)Z

    .line 291
    return-void

    .line 287
    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    const-string v1, "MtpService"

    const-string v2, "mServer not started even after waiting for 4s!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private volumeMountedLocked(Ljava/lang/String;)V
    .locals 7
    .parameter "path"

    .prologue
    .line 319
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v6, p0, Lcom/android/providers/media/MtpService;->mVolumes:[Landroid/os/storage/StorageVolume;

    array-length v6, v6

    if-ge v0, v6, :cond_1

    .line 320
    iget-object v6, p0, Lcom/android/providers/media/MtpService;->mVolumes:[Landroid/os/storage/StorageVolume;

    aget-object v5, v6, v0

    .line 321
    .local v5, volume:Landroid/os/storage/StorageVolume;
    invoke-virtual {v5}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 322
    invoke-static {v0}, Landroid/mtp/MtpStorage;->getStorageId(I)I

    move-result v4

    .line 323
    .local v4, storageId:I
    invoke-virtual {v5}, Landroid/os/storage/StorageVolume;->getMtpReserveSpace()I

    move-result v6

    mul-int/lit16 v6, v6, 0x400

    mul-int/lit16 v6, v6, 0x400

    int-to-long v1, v6

    .line 325
    .local v1, reserveSpace:J
    new-instance v3, Landroid/mtp/MtpStorage;

    invoke-direct {v3, v5}, Landroid/mtp/MtpStorage;-><init>(Landroid/os/storage/StorageVolume;)V

    .line 326
    .local v3, storage:Landroid/mtp/MtpStorage;
    iget-object v6, p0, Lcom/android/providers/media/MtpService;->mStorageMap:Ljava/util/HashMap;

    invoke-virtual {v6, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    iget-boolean v6, p0, Lcom/android/providers/media/MtpService;->mMtpDisabled:Z

    if-nez v6, :cond_1

    .line 329
    if-eqz v0, :cond_0

    iget-boolean v6, p0, Lcom/android/providers/media/MtpService;->mPtpMode:Z

    if-nez v6, :cond_1

    .line 330
    :cond_0
    invoke-direct {p0, v3}, Lcom/android/providers/media/MtpService;->addStorageLocked(Landroid/mtp/MtpStorage;)V

    .line 336
    .end local v1           #reserveSpace:J
    .end local v3           #storage:Landroid/mtp/MtpStorage;
    .end local v4           #storageId:I
    .end local v5           #volume:Landroid/os/storage/StorageVolume;
    :cond_1
    return-void

    .line 319
    .restart local v5       #volume:Landroid/os/storage/StorageVolume;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 315
    iget-object v0, p0, Lcom/android/providers/media/MtpService;->mBinder:Lcom/android/providers/media/IMtpService$Stub;

    return-object v0
.end method

.method public onCreate()V
    .locals 8

    .prologue
    .line 136
    const-string v5, "keyguard"

    invoke-virtual {p0, v5}, Lcom/android/providers/media/MtpService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/KeyguardManager;

    .line 138
    .local v1, keyguardManager:Landroid/app/KeyguardManager;
    invoke-virtual {v1}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v1}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x1

    :goto_0
    iput-boolean v5, p0, Lcom/android/providers/media/MtpService;->mMtpDisabled:Z

    .line 139
    iget-object v5, p0, Lcom/android/providers/media/MtpService;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v6, Landroid/content/IntentFilter;

    const-string v7, "android.intent.action.USER_PRESENT"

    invoke-direct {v6, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v5, v6}, Lcom/android/providers/media/MtpService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 140
    iget-object v5, p0, Lcom/android/providers/media/MtpService;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v6, Landroid/content/IntentFilter;

    const-string v7, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v6, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v5, v6}, Lcom/android/providers/media/MtpService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 141
    const-string v5, "storage"

    invoke-virtual {p0, v5}, Lcom/android/providers/media/MtpService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/storage/StorageManager;

    iput-object v5, p0, Lcom/android/providers/media/MtpService;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 142
    iget-object v6, p0, Lcom/android/providers/media/MtpService;->mBinder:Lcom/android/providers/media/IMtpService$Stub;

    monitor-enter v6

    .line 143
    :try_start_0
    iget-object v5, p0, Lcom/android/providers/media/MtpService;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v7, p0, Lcom/android/providers/media/MtpService;->mStorageEventListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v5, v7}, Landroid/os/storage/StorageManager;->registerListener(Landroid/os/storage/StorageEventListener;)V

    .line 144
    iget-object v5, p0, Lcom/android/providers/media/MtpService;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v5}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v4

    .line 145
    .local v4, volumes:[Landroid/os/storage/StorageVolume;
    iput-object v4, p0, Lcom/android/providers/media/MtpService;->mVolumes:[Landroid/os/storage/StorageVolume;

    .line 146
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v5, v4

    if-ge v0, v5, :cond_2

    .line 147
    aget-object v5, v4, v0

    invoke-virtual {v5}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 148
    .local v2, path:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/providers/media/MtpService;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v5, v2}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 149
    .local v3, state:Ljava/lang/String;
    const-string v5, "mounted"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 150
    invoke-direct {p0, v2}, Lcom/android/providers/media/MtpService;->volumeMountedLocked(Ljava/lang/String;)V

    .line 146
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 138
    .end local v0           #i:I
    .end local v2           #path:Ljava/lang/String;
    .end local v3           #state:Ljava/lang/String;
    .end local v4           #volumes:[Landroid/os/storage/StorageVolume;
    :cond_1
    const/4 v5, 0x0

    goto :goto_0

    .line 153
    .restart local v0       #i:I
    .restart local v4       #volumes:[Landroid/os/storage/StorageVolume;
    :cond_2
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 154
    new-instance v5, Landroid/os/HandlerThread;

    const-string v6, "MtpMsgHandlerThread"

    const/16 v7, 0xa

    invoke-direct {v5, v6, v7}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v5, p0, Lcom/android/providers/media/MtpService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 156
    iget-object v5, p0, Lcom/android/providers/media/MtpService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v5}, Landroid/os/HandlerThread;->start()V

    .line 157
    new-instance v5, Lcom/android/providers/media/MtpService$MtpMsgHandler;

    iget-object v6, p0, Lcom/android/providers/media/MtpService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v6}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-direct {v5, p0, v6}, Lcom/android/providers/media/MtpService$MtpMsgHandler;-><init>(Lcom/android/providers/media/MtpService;Landroid/os/Looper;)V

    iput-object v5, p0, Lcom/android/providers/media/MtpService;->mMtpMsgHandler:Lcom/android/providers/media/MtpService$MtpMsgHandler;

    .line 158
    return-void

    .line 153
    .end local v0           #i:I
    .end local v4           #volumes:[Landroid/os/storage/StorageVolume;
    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 271
    iget-object v0, p0, Lcom/android/providers/media/MtpService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/providers/media/MtpService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 272
    iget-object v0, p0, Lcom/android/providers/media/MtpService;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/android/providers/media/MtpService;->mStorageEventListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->unregisterListener(Landroid/os/storage/StorageEventListener;)V

    .line 276
    invoke-static {}, Landroid/mtp/MtpServer;->waitForServerStarted()V

    .line 277
    invoke-direct {p0}, Lcom/android/providers/media/MtpService;->stopMtpServer()V

    .line 278
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 3
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 167
    invoke-static {}, Landroid/mtp/MtpServer;->resetServerLock()V

    .line 168
    iget-object v1, p0, Lcom/android/providers/media/MtpService;->mMtpMsgHandler:Lcom/android/providers/media/MtpService$MtpMsgHandler;

    const v2, 0x10002

    invoke-virtual {v1, v2}, Lcom/android/providers/media/MtpService$MtpMsgHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 169
    .local v0, msg:Landroid/os/Message;
    if-nez p1, :cond_0

    .line 170
    const/4 v1, 0x0

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 174
    :goto_0
    iget-object v1, p0, Lcom/android/providers/media/MtpService;->mMtpMsgHandler:Lcom/android/providers/media/MtpService$MtpMsgHandler;

    invoke-virtual {v1, v0}, Lcom/android/providers/media/MtpService$MtpMsgHandler;->sendMessage(Landroid/os/Message;)Z

    .line 176
    const/4 v1, 0x1

    return v1

    .line 172
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_0
.end method

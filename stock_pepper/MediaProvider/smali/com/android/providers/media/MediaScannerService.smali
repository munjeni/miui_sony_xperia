.class public Lcom/android/providers/media/MediaScannerService;
.super Landroid/app/Service;
.source "MediaScannerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/media/MediaScannerService$ServiceHandler;
    }
.end annotation


# static fields
.field private static volatile sIsShuttingDown:Z

.field private static sWaitForAction:[Ljava/lang/String;


# instance fields
.field private final mBinder:Landroid/media/IMediaScannerService$Stub;

.field private volatile mCurrentTask:I

.field private mExternalStoragePaths:[Ljava/lang/String;

.field private mMediaProvider:Landroid/content/IContentProvider;

.field private volatile mServiceHandler:Lcom/android/providers/media/MediaScannerService$ServiceHandler;

.field private volatile mServiceLooper:Landroid/os/Looper;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/providers/media/MediaScannerService;->sIsShuttingDown:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 66
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/providers/media/MediaScannerService;->mCurrentTask:I

    .line 270
    new-instance v0, Lcom/android/providers/media/MediaScannerService$1;

    invoke-direct {v0, p0}, Lcom/android/providers/media/MediaScannerService$1;-><init>(Lcom/android/providers/media/MediaScannerService;)V

    iput-object v0, p0, Lcom/android/providers/media/MediaScannerService;->mBinder:Landroid/media/IMediaScannerService$Stub;

    .line 56
    return-void
.end method

.method static synthetic access$100(Lcom/android/providers/media/MediaScannerService;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Lcom/android/providers/media/MediaScannerService;->scanFile(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/providers/media/MediaScannerService;)[Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/providers/media/MediaScannerService;->mExternalStoragePaths:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/providers/media/MediaScannerService;)Landroid/content/IContentProvider;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/providers/media/MediaScannerService;->mMediaProvider:Landroid/content/IContentProvider;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/providers/media/MediaScannerService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    iput p1, p0, Lcom/android/providers/media/MediaScannerService;->mCurrentTask:I

    return p1
.end method

.method static synthetic access$500()V
    .locals 0

    .prologue
    .line 56
    invoke-static {}, Lcom/android/providers/media/MediaScannerService;->unblockScanner()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/providers/media/MediaScannerService;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Lcom/android/providers/media/MediaScannerService;->scan([Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static blockScanner()V
    .locals 5

    .prologue
    .line 145
    :try_start_0
    new-instance v0, Ljava/io/File;

    const-string v2, "/data/data/com.android.providers.media/lock"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 146
    .local v0, f:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    :goto_0
    return-void

    .line 147
    :catch_0
    move-exception v1

    .line 148
    .local v1, io:Ljava/io/IOException;
    const-string v2, "MediaScannerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error creating lock file:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private createMediaScanner()Landroid/media/MediaScanner;
    .locals 7

    .prologue
    .line 90
    new-instance v4, Landroid/media/MediaScanner;

    invoke-direct {v4, p0}, Landroid/media/MediaScanner;-><init>(Landroid/content/Context;)V

    .line 91
    .local v4, scanner:Landroid/media/MediaScanner;
    invoke-virtual {p0}, Lcom/android/providers/media/MediaScannerService;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget-object v2, v5, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 92
    .local v2, locale:Ljava/util/Locale;
    if-eqz v2, :cond_0

    .line 93
    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 94
    .local v1, language:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 95
    .local v0, country:Ljava/lang/String;
    const/4 v3, 0x0

    .line 96
    .local v3, localeString:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 97
    if-eqz v0, :cond_1

    .line 98
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/media/MediaScanner;->setLocale(Ljava/lang/String;)V

    .line 105
    .end local v0           #country:Ljava/lang/String;
    .end local v1           #language:Ljava/lang/String;
    .end local v3           #localeString:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v4

    .line 100
    .restart local v0       #country:Ljava/lang/String;
    .restart local v1       #language:Ljava/lang/String;
    .restart local v3       #localeString:Ljava/lang/String;
    :cond_1
    invoke-virtual {v4, v1}, Landroid/media/MediaScanner;->setLocale(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static declared-synchronized isShuttingDown()Z
    .locals 2

    .prologue
    .line 422
    const-class v0, Lcom/android/providers/media/MediaScannerService;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/android/providers/media/MediaScannerService;->sIsShuttingDown:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private openDatabase(Ljava/lang/String;)V
    .locals 4
    .parameter "volumeName"

    .prologue
    .line 81
    :try_start_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 82
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "name"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    invoke-virtual {p0}, Lcom/android/providers/media/MediaScannerService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "content://media/"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    .end local v1           #values:Landroid/content/ContentValues;
    :goto_0
    return-void

    .line 84
    :catch_0
    move-exception v0

    .line 85
    .local v0, ex:Ljava/lang/IllegalArgumentException;
    const-string v2, "MediaScannerService"

    const-string v3, "failed to open media database"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private scan([Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .parameter "directories"
    .parameter "volumeName"

    .prologue
    const/4 v7, 0x0

    .line 110
    iget-object v5, p0, Lcom/android/providers/media/MediaScannerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 112
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 113
    .local v4, values:Landroid/content/ContentValues;
    const-string v5, "volume"

    invoke-virtual {v4, v5, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    invoke-virtual {p0}, Lcom/android/providers/media/MediaScannerService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {}, Landroid/provider/MediaStore;->getMediaScannerUri()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v5, v6, v4}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    .line 116
    .local v1, scanUri:Landroid/net/Uri;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "file://"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x0

    aget-object v6, p1, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 119
    .local v3, uri:Landroid/net/Uri;
    :try_start_0
    const-string v5, "external"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 120
    invoke-direct {p0, p2}, Lcom/android/providers/media/MediaScannerService;->openDatabase(Ljava/lang/String;)V

    .line 123
    :cond_0
    invoke-direct {p0}, Lcom/android/providers/media/MediaScannerService;->createMediaScanner()Landroid/media/MediaScanner;

    move-result-object v2

    .line 124
    .local v2, scanner:Landroid/media/MediaScanner;
    invoke-virtual {v2, p1, p2}, Landroid/media/MediaScanner;->scanDirectories([Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    .end local v2           #scanner:Landroid/media/MediaScanner;
    :goto_0
    invoke-virtual {p0}, Lcom/android/providers/media/MediaScannerService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v5, v1, v7, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 131
    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-direct {v5, v6, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v5}, Lcom/android/providers/media/MediaScannerService;->sendBroadcast(Landroid/content/Intent;)V

    .line 136
    :try_start_1
    iget-object v5, p0, Lcom/android/providers/media/MediaScannerService;->mMediaProvider:Landroid/content/IContentProvider;

    const-string v6, "com.android.providers.media.InternalMediaThumbs"

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-interface {v5, v6, v7, v8}, Landroid/content/IContentProvider;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 140
    :goto_1
    iget-object v5, p0, Lcom/android/providers/media/MediaScannerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 141
    return-void

    .line 125
    :catch_0
    move-exception v0

    .line 126
    .local v0, e:Ljava/lang/Exception;
    const-string v5, "MediaScannerService"

    const-string v6, "exception in MediaScanner.scan()"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 137
    .end local v0           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 138
    .local v0, e:Landroid/os/RemoteException;
    const-string v5, "MediaScannerService"

    const-string v6, "RemoteException not possible to wait"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private scanFile(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 3
    .parameter "path"
    .parameter "mimeType"

    .prologue
    .line 258
    const-string v1, "external"

    .line 259
    .local v1, volumeName:Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/android/providers/media/MediaScannerService;->openDatabase(Ljava/lang/String;)V

    .line 260
    invoke-direct {p0}, Lcom/android/providers/media/MediaScannerService;->createMediaScanner()Landroid/media/MediaScanner;

    move-result-object v0

    .line 261
    .local v0, scanner:Landroid/media/MediaScanner;
    invoke-virtual {v0, p1, v1, p2}, Landroid/media/MediaScanner;->scanSingleFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    return-object v2
.end method

.method static declared-synchronized signalShutdown()V
    .locals 2

    .prologue
    .line 417
    const-class v1, Lcom/android/providers/media/MediaScannerService;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/android/providers/media/MediaScannerService;->blockScanner()V

    .line 418
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/providers/media/MediaScannerService;->sIsShuttingDown:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 419
    monitor-exit v1

    return-void

    .line 417
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static unblockScanner()V
    .locals 2

    .prologue
    .line 153
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/data/com.android.providers.media/lock"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 154
    .local v0, f:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 155
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 267
    iget-object v0, p0, Lcom/android/providers/media/MediaScannerService;->mBinder:Landroid/media/IMediaScannerService$Stub;

    return-object v0
.end method

.method public onCreate()V
    .locals 5

    .prologue
    .line 160
    const-string v3, "power"

    invoke-virtual {p0, v3}, Lcom/android/providers/media/MediaScannerService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 161
    .local v0, pm:Landroid/os/PowerManager;
    const/4 v3, 0x1

    const-string v4, "MediaScannerService"

    invoke-virtual {v0, v3, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    iput-object v3, p0, Lcom/android/providers/media/MediaScannerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 162
    const-string v3, "storage"

    invoke-virtual {p0, v3}, Lcom/android/providers/media/MediaScannerService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/StorageManager;

    .line 163
    .local v1, storageManager:Landroid/os/storage/StorageManager;
    invoke-virtual {v1}, Landroid/os/storage/StorageManager;->getVolumePaths()[Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/providers/media/MediaScannerService;->mExternalStoragePaths:[Ljava/lang/String;

    .line 164
    invoke-virtual {p0}, Lcom/android/providers/media/MediaScannerService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "media"

    invoke-virtual {v3, v4}, Landroid/content/ContentResolver;->acquireProvider(Ljava/lang/String;)Landroid/content/IContentProvider;

    move-result-object v3

    iput-object v3, p0, Lcom/android/providers/media/MediaScannerService;->mMediaProvider:Landroid/content/IContentProvider;

    .line 165
    sget-object v3, Lcom/android/providers/media/MediaScannerService;->sWaitForAction:[Ljava/lang/String;

    if-nez v3, :cond_0

    .line 166
    iget-object v3, p0, Lcom/android/providers/media/MediaScannerService;->mExternalStoragePaths:[Ljava/lang/String;

    array-length v3, v3

    new-array v3, v3, [Ljava/lang/String;

    sput-object v3, Lcom/android/providers/media/MediaScannerService;->sWaitForAction:[Ljava/lang/String;

    .line 170
    :cond_0
    invoke-static {}, Lcom/android/providers/media/MediaScannerService;->unblockScanner()V

    .line 175
    new-instance v2, Ljava/lang/Thread;

    const/4 v3, 0x0

    const-string v4, "MediaScannerService"

    invoke-direct {v2, v3, p0, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 176
    .local v2, thr:Ljava/lang/Thread;
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 177
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 232
    :goto_0
    iget-object v0, p0, Lcom/android/providers/media/MediaScannerService;->mServiceLooper:Landroid/os/Looper;

    if-nez v0, :cond_0

    .line 233
    monitor-enter p0

    .line 235
    const-wide/16 v0, 0x64

    :try_start_0
    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 238
    :goto_1
    :try_start_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 240
    :cond_0
    iget-object v0, p0, Lcom/android/providers/media/MediaScannerService;->mServiceLooper:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 241
    return-void

    .line 236
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 7
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    const/4 v3, 0x2

    const/4 v4, 0x3

    .line 182
    :goto_0
    iget-object v5, p0, Lcom/android/providers/media/MediaScannerService;->mServiceHandler:Lcom/android/providers/media/MediaScannerService$ServiceHandler;

    if-nez v5, :cond_0

    .line 183
    monitor-enter p0

    .line 185
    const-wide/16 v5, 0x64

    :try_start_0
    invoke-virtual {p0, v5, v6}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 188
    :goto_1
    :try_start_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 191
    :cond_0
    if-nez p1, :cond_1

    .line 192
    const-string v4, "MediaScannerService"

    const-string v5, "Intent is null in onStartCommand: "

    new-instance v6, Ljava/lang/NullPointerException;

    invoke-direct {v6}, Ljava/lang/NullPointerException;-><init>()V

    invoke-static {v4, v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 225
    :goto_2
    return v3

    .line 197
    :cond_1
    iget-object v5, p0, Lcom/android/providers/media/MediaScannerService;->mServiceHandler:Lcom/android/providers/media/MediaScannerService$ServiceHandler;

    invoke-virtual {v5}, Lcom/android/providers/media/MediaScannerService$ServiceHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 198
    .local v1, msg:Landroid/os/Message;
    iput p3, v1, Landroid/os/Message;->arg1:I

    .line 199
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 200
    .local v0, bundle:Landroid/os/Bundle;
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 201
    const-string v5, "filepath"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 202
    const/4 v3, 0x1

    iput v3, v1, Landroid/os/Message;->what:I

    .line 222
    :goto_3
    iget-object v3, p0, Lcom/android/providers/media/MediaScannerService;->mServiceHandler:Lcom/android/providers/media/MediaScannerService$ServiceHandler;

    invoke-virtual {v3, v1}, Lcom/android/providers/media/MediaScannerService$ServiceHandler;->sendMessage(Landroid/os/Message;)Z

    move v3, v4

    .line 225
    goto :goto_2

    .line 205
    :cond_2
    const-string v5, "volume"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 206
    .local v2, volume:Ljava/lang/String;
    const-string v5, "internal"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 207
    iput v3, v1, Landroid/os/Message;->what:I

    goto :goto_3

    .line 208
    :cond_3
    const-string v3, "external"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 209
    iget-object v5, p0, Lcom/android/providers/media/MediaScannerService;->mServiceHandler:Lcom/android/providers/media/MediaScannerService$ServiceHandler;

    monitor-enter v5

    .line 210
    :try_start_2
    iget v3, p0, Lcom/android/providers/media/MediaScannerService;->mCurrentTask:I

    if-ne v3, v4, :cond_4

    .line 212
    invoke-static {}, Lcom/android/providers/media/MediaScannerService;->blockScanner()V

    .line 214
    :cond_4
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 215
    iput v4, v1, Landroid/os/Message;->what:I

    goto :goto_3

    .line 214
    :catchall_1
    move-exception v3

    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v3

    .line 217
    :cond_5
    const-string v3, "MediaScannerService"

    const-string v5, "Unknown scan command"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 186
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v1           #msg:Landroid/os/Message;
    .end local v2           #volume:Ljava/lang/String;
    :catch_0
    move-exception v5

    goto :goto_1
.end method

.method public run()V
    .locals 2

    .prologue
    .line 247
    const/16 v0, 0xb

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 249
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 251
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/media/MediaScannerService;->mServiceLooper:Landroid/os/Looper;

    .line 252
    new-instance v0, Lcom/android/providers/media/MediaScannerService$ServiceHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/providers/media/MediaScannerService$ServiceHandler;-><init>(Lcom/android/providers/media/MediaScannerService;Lcom/android/providers/media/MediaScannerService$1;)V

    iput-object v0, p0, Lcom/android/providers/media/MediaScannerService;->mServiceHandler:Lcom/android/providers/media/MediaScannerService$ServiceHandler;

    .line 254
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 255
    return-void
.end method

.method shouldScan(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .parameter "volumePath"
    .parameter "action"

    .prologue
    const/4 v1, 0x1

    .line 387
    if-nez p2, :cond_1

    .line 413
    :cond_0
    :goto_0
    return v1

    .line 391
    :cond_1
    iget-object v2, p0, Lcom/android/providers/media/MediaScannerService;->mExternalStoragePaths:[Ljava/lang/String;

    array-length v2, v2

    add-int/lit8 v0, v2, -0x1

    .line 392
    .local v0, index:I
    :goto_1
    if-ltz v0, :cond_2

    iget-object v2, p0, Lcom/android/providers/media/MediaScannerService;->mExternalStoragePaths:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 393
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 395
    :cond_2
    if-ltz v0, :cond_0

    .line 399
    sget-object v2, Lcom/android/providers/media/MediaScannerService;->sWaitForAction:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 400
    sget-object v2, Lcom/android/providers/media/MediaScannerService;->sWaitForAction:[Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v3, v2, v0

    .line 407
    :cond_3
    :goto_2
    const/4 v0, 0x0

    :goto_3
    iget-object v2, p0, Lcom/android/providers/media/MediaScannerService;->mExternalStoragePaths:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 408
    sget-object v2, Lcom/android/providers/media/MediaScannerService;->sWaitForAction:[Ljava/lang/String;

    aget-object v2, v2, v0

    if-eqz v2, :cond_6

    .line 409
    const/4 v1, 0x0

    goto :goto_0

    .line 401
    :cond_4
    const-string v2, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 402
    sget-object v2, Lcom/android/providers/media/MediaScannerService;->sWaitForAction:[Ljava/lang/String;

    const-string v3, "android.intent.action.MEDIA_UNMOUNTED"

    aput-object v3, v2, v0

    goto :goto_2

    .line 403
    :cond_5
    const-string v2, "android.intent.action.MEDIA_BAD_REMOVAL"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 404
    sget-object v2, Lcom/android/providers/media/MediaScannerService;->sWaitForAction:[Ljava/lang/String;

    const-string v3, "android.intent.action.MEDIA_EJECT"

    aput-object v3, v2, v0

    goto :goto_2

    .line 407
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_3
.end method

.class Lcom/android/server/SamplingRateChangeProcessor;
.super Ljava/lang/Object;
.source "CpuGovernorService.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final SAMPLING_RATE_DECREASE:I = 0x2

.field private static final SAMPLING_RATE_FILE_PATH:Ljava/lang/String; = "/sys/devices/system/cpu/cpufreq/ondemand/sampling_rate"

.field public static final SAMPLING_RATE_INCREASE:I = 0x1

.field private static final SCREEN_OFF_SAMPLING_RATE:Ljava/lang/String; = "500000"


# instance fields
.field private MAX_SAMPLING_RATE_LENGTH:I

.field private final TAG:Ljava/lang/String;

.field private mNotificationPending:Z

.field private mSamplingRateChanges:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mSavedSamplingRate:Ljava/lang/String;

.field private mSynchSamplingRateChanges:Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 381
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 382
    const-string v0, "SamplingRateChangeProcessor"

    iput-object v0, p0, Lcom/android/server/SamplingRateChangeProcessor;->TAG:Ljava/lang/String;

    .line 386
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/SamplingRateChangeProcessor;->mNotificationPending:Z

    .line 387
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/android/server/SamplingRateChangeProcessor;->mSamplingRateChanges:Ljava/util/Vector;

    .line 388
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/SamplingRateChangeProcessor;->mSynchSamplingRateChanges:Ljava/lang/Object;

    .line 389
    const-string v0, "0"

    iput-object v0, p0, Lcom/android/server/SamplingRateChangeProcessor;->mSavedSamplingRate:Ljava/lang/String;

    .line 390
    const/16 v0, 0x20

    iput v0, p0, Lcom/android/server/SamplingRateChangeProcessor;->MAX_SAMPLING_RATE_LENGTH:I

    return-void
.end method

.method private decreaseSamplingRate()V
    .locals 6

    .prologue
    .line 467
    new-instance v1, Ljava/io/File;

    const-string v3, "/sys/devices/system/cpu/cpufreq/ondemand/sampling_rate"

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 469
    .local v1, fileSamplingRate:Ljava/io/File;
    iget-object v3, p0, Lcom/android/server/SamplingRateChangeProcessor;->mSavedSamplingRate:Ljava/lang/String;

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->canWrite()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 471
    :try_start_0
    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/File;)V

    .line 473
    .local v2, samplingRateWriter:Ljava/io/PrintWriter;
    iget-object v3, p0, Lcom/android/server/SamplingRateChangeProcessor;->mSavedSamplingRate:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 474
    invoke-virtual {v2}, Ljava/io/PrintWriter;->close()V

    .line 475
    const-string v3, "SamplingRateChangeProcessor"

    const-string v4, "Decreased sampling rate."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 480
    .end local v2           #samplingRateWriter:Ljava/io/PrintWriter;
    :cond_0
    :goto_0
    return-void

    .line 476
    :catch_0
    move-exception v0

    .line 477
    .local v0, exception:Ljava/lang/Exception;
    const-string v3, "SamplingRateChangeProcessor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error occurred while decreasing sampling rate: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private increaseSamplingRate()V
    .locals 8

    .prologue
    .line 441
    new-instance v1, Ljava/io/File;

    const-string v5, "/sys/devices/system/cpu/cpufreq/ondemand/sampling_rate"

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 443
    .local v1, fileSamplingRate:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->canWrite()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 445
    :try_start_0
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, v1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 447
    .local v3, samplingRateReader:Ljava/io/BufferedReader;
    iget v5, p0, Lcom/android/server/SamplingRateChangeProcessor;->MAX_SAMPLING_RATE_LENGTH:I

    new-array v2, v5, [C

    .line 449
    .local v2, samplingRate:[C
    const/4 v5, 0x0

    iget v6, p0, Lcom/android/server/SamplingRateChangeProcessor;->MAX_SAMPLING_RATE_LENGTH:I

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v3, v2, v5, v6}, Ljava/io/BufferedReader;->read([CII)I

    .line 451
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 453
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v2}, Ljava/lang/String;-><init>([C)V

    iput-object v5, p0, Lcom/android/server/SamplingRateChangeProcessor;->mSavedSamplingRate:Ljava/lang/String;

    .line 454
    new-instance v4, Ljava/io/PrintWriter;

    invoke-direct {v4, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/File;)V

    .line 456
    .local v4, samplingRateWriter:Ljava/io/PrintWriter;
    const-string v5, "500000"

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 457
    invoke-virtual {v4}, Ljava/io/PrintWriter;->close()V

    .line 458
    const-string v5, "SamplingRateChangeProcessor"

    const-string v6, "Increased sampling rate."

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 464
    .end local v2           #samplingRate:[C
    .end local v3           #samplingRateReader:Ljava/io/BufferedReader;
    .end local v4           #samplingRateWriter:Ljava/io/PrintWriter;
    :cond_0
    :goto_0
    return-void

    .line 459
    :catch_0
    move-exception v0

    .line 460
    .local v0, exception:Ljava/lang/Exception;
    const-string v5, "0"

    iput-object v5, p0, Lcom/android/server/SamplingRateChangeProcessor;->mSavedSamplingRate:Ljava/lang/String;

    .line 461
    const-string v5, "SamplingRateChangeProcessor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error occurred while increasing sampling rate: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public getNotificationPending()Z
    .locals 1

    .prologue
    .line 400
    iget-boolean v0, p0, Lcom/android/server/SamplingRateChangeProcessor;->mNotificationPending:Z

    return v0
.end method

.method public getSamplingRateChangeRequests()Ljava/util/Vector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 404
    iget-object v0, p0, Lcom/android/server/SamplingRateChangeProcessor;->mSamplingRateChanges:Ljava/util/Vector;

    return-object v0
.end method

.method public getSynchObject()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 408
    iget-object v0, p0, Lcom/android/server/SamplingRateChangeProcessor;->mSynchSamplingRateChanges:Ljava/lang/Object;

    return-object v0
.end method

.method public run()V
    .locals 3

    .prologue
    .line 414
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/SamplingRateChangeProcessor;->mSynchSamplingRateChanges:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 415
    :try_start_1
    iget-boolean v1, p0, Lcom/android/server/SamplingRateChangeProcessor;->mNotificationPending:Z

    if-nez v1, :cond_1

    .line 416
    iget-object v1, p0, Lcom/android/server/SamplingRateChangeProcessor;->mSynchSamplingRateChanges:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    .line 419
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/SamplingRateChangeProcessor;->mNotificationPending:Z

    .line 420
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 424
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/android/server/SamplingRateChangeProcessor;->mSamplingRateChanges:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 426
    :try_start_2
    iget-object v1, p0, Lcom/android/server/SamplingRateChangeProcessor;->mSamplingRateChanges:Ljava/util/Vector;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 428
    .local v0, samplingRateChangeRequestType:I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 429
    invoke-direct {p0}, Lcom/android/server/SamplingRateChangeProcessor;->increaseSamplingRate()V
    :try_end_2
    .catch Ljava/util/ConcurrentModificationException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 433
    .end local v0           #samplingRateChangeRequestType:I
    :catch_0
    move-exception v1

    goto :goto_0

    .line 420
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1

    .line 421
    :catch_1
    move-exception v1

    goto :goto_0

    .line 430
    .restart local v0       #samplingRateChangeRequestType:I
    :cond_3
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 431
    :try_start_5
    invoke-direct {p0}, Lcom/android/server/SamplingRateChangeProcessor;->decreaseSamplingRate()V
    :try_end_5
    .catch Ljava/util/ConcurrentModificationException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_0
.end method

.method public setNotificationPending(Z)V
    .locals 0
    .parameter "notificationPending"

    .prologue
    .line 396
    iput-boolean p1, p0, Lcom/android/server/SamplingRateChangeProcessor;->mNotificationPending:Z

    .line 397
    return-void
.end method

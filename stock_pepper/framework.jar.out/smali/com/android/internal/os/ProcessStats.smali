.class public Lcom/android/internal/os/ProcessStats;
.super Ljava/lang/Object;
.source "ProcessStats.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/ProcessStats$Stats;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final LOAD_AVERAGE_FORMAT:[I = null

.field private static final PROCESS_FULL_STATS_FORMAT:[I = null

.field static final PROCESS_FULL_STAT_MAJOR_FAULTS:I = 0x2

.field static final PROCESS_FULL_STAT_MINOR_FAULTS:I = 0x1

.field static final PROCESS_FULL_STAT_STIME:I = 0x4

.field static final PROCESS_FULL_STAT_UTIME:I = 0x3

.field static final PROCESS_FULL_STAT_VSIZE:I = 0x5

.field private static final PROCESS_STATS_FORMAT:[I = null

.field static final PROCESS_STAT_MAJOR_FAULTS:I = 0x1

.field static final PROCESS_STAT_MINOR_FAULTS:I = 0x0

.field static final PROCESS_STAT_STIME:I = 0x3

.field static final PROCESS_STAT_UTIME:I = 0x2

.field private static final SYSTEM_CPU_FORMAT:[I = null

.field private static final TAG:Ljava/lang/String; = "ProcessStats"

.field private static final localLOGV:Z

.field private static final sLoadComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/internal/os/ProcessStats$Stats;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mBaseIdleTime:J

.field private mBaseIoWaitTime:J

.field private mBaseIrqTime:J

.field private mBaseSoftIrqTime:J

.field private mBaseSystemTime:J

.field private mBaseUserTime:J

.field private mBuffer:[B

.field private mCpuSpeedTimes:[J

.field private mCpuSpeeds:[J

.field private mCurPids:[I

.field private mCurThreadPids:[I

.field private mCurrentSampleRealTime:J

.field private mCurrentSampleTime:J

.field private mFirst:Z

.field private final mIncludeThreads:Z

.field private mLastSampleRealTime:J

.field private mLastSampleTime:J

.field private mLoad1:F

.field private mLoad15:F

.field private mLoad5:F

.field private final mLoadAverageData:[F

.field private final mProcStats:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/os/ProcessStats$Stats;",
            ">;"
        }
    .end annotation
.end field

.field private final mProcessFullStatsData:[J

.field private final mProcessFullStatsStringData:[Ljava/lang/String;

.field private final mProcessStatsData:[J

.field private mRelCpuSpeedTimes:[J

.field private mRelIdleTime:I

.field private mRelIoWaitTime:I

.field private mRelIrqTime:I

.field private mRelSoftIrqTime:I

.field private mRelSystemTime:I

.field private mRelUserTime:I

.field private final mSinglePidStatsData:[J

.field private final mSystemCpuData:[J

.field private final mWorkingProcs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/os/ProcessStats$Stats;",
            ">;"
        }
    .end annotation
.end field

.field private mWorkingProcsSorted:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const/16 v0, 0xf

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/internal/os/ProcessStats;->PROCESS_STATS_FORMAT:[I

    .line 71
    const/16 v0, 0x16

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/internal/os/ProcessStats;->PROCESS_FULL_STATS_FORMAT:[I

    .line 105
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/internal/os/ProcessStats;->SYSTEM_CPU_FORMAT:[I

    .line 118
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/android/internal/os/ProcessStats;->LOAD_AVERAGE_FORMAT:[I

    .line 237
    new-instance v0, Lcom/android/internal/os/ProcessStats$1;

    invoke-direct {v0}, Lcom/android/internal/os/ProcessStats$1;-><init>()V

    sput-object v0, Lcom/android/internal/os/ProcessStats;->sLoadComparator:Ljava/util/Comparator;

    return-void

    .line 43
    nop

    :array_0
    .array-data 0x4
        0x20t 0x0t 0x0t 0x0t
        0x20t 0x2t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x20t 0x20t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x20t 0x20t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x20t 0x20t 0x0t 0x0t
        0x20t 0x20t 0x0t 0x0t
    .end array-data

    .line 71
    :array_1
    .array-data 0x4
        0x20t 0x0t 0x0t 0x0t
        0x20t 0x12t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x20t 0x20t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x20t 0x20t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x20t 0x20t 0x0t 0x0t
        0x20t 0x20t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x20t 0x20t 0x0t 0x0t
    .end array-data

    .line 105
    :array_2
    .array-data 0x4
        0x20t 0x1t 0x0t 0x0t
        0x20t 0x20t 0x0t 0x0t
        0x20t 0x20t 0x0t 0x0t
        0x20t 0x20t 0x0t 0x0t
        0x20t 0x20t 0x0t 0x0t
        0x20t 0x20t 0x0t 0x0t
        0x20t 0x20t 0x0t 0x0t
        0x20t 0x20t 0x0t 0x0t
    .end array-data

    .line 118
    :array_3
    .array-data 0x4
        0x20t 0x40t 0x0t 0x0t
        0x20t 0x40t 0x0t 0x0t
        0x20t 0x40t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Z)V
    .locals 4
    .parameter "includeThreads"

    .prologue
    const/4 v3, 0x6

    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 256
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-array v0, v2, [J

    iput-object v0, p0, Lcom/android/internal/os/ProcessStats;->mProcessStatsData:[J

    .line 69
    new-array v0, v2, [J

    iput-object v0, p0, Lcom/android/internal/os/ProcessStats;->mSinglePidStatsData:[J

    .line 102
    new-array v0, v3, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/os/ProcessStats;->mProcessFullStatsStringData:[Ljava/lang/String;

    .line 103
    new-array v0, v3, [J

    iput-object v0, p0, Lcom/android/internal/os/ProcessStats;->mProcessFullStatsData:[J

    .line 116
    const/4 v0, 0x7

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/internal/os/ProcessStats;->mSystemCpuData:[J

    .line 124
    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/internal/os/ProcessStats;->mLoadAverageData:[F

    .line 128
    iput v1, p0, Lcom/android/internal/os/ProcessStats;->mLoad1:F

    .line 129
    iput v1, p0, Lcom/android/internal/os/ProcessStats;->mLoad5:F

    .line 130
    iput v1, p0, Lcom/android/internal/os/ProcessStats;->mLoad15:F

    .line 154
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/ProcessStats;->mProcStats:Ljava/util/ArrayList;

    .line 155
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/ProcessStats;->mWorkingProcs:Ljava/util/ArrayList;

    .line 158
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/os/ProcessStats;->mFirst:Z

    .line 160
    const/16 v0, 0x1000

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/internal/os/ProcessStats;->mBuffer:[B

    .line 257
    iput-boolean p1, p0, Lcom/android/internal/os/ProcessStats;->mIncludeThreads:Z

    .line 258
    return-void
.end method

.method private collectStats(Ljava/lang/String;IZ[ILjava/util/ArrayList;)[I
    .locals 27
    .parameter "statsFile"
    .parameter "parentPid"
    .parameter "first"
    .parameter "curPids"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IZ[I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/os/ProcessStats$Stats;",
            ">;)[I"
        }
    .end annotation

    .prologue
    .line 344
    .local p5, allProcs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/os/ProcessStats$Stats;>;"
    move-object/from16 v0, p1

    move-object/from16 v1, p4

    invoke-static {v0, v1}, Landroid/os/Process;->getPids(Ljava/lang/String;[I)[I

    move-result-object v17

    .line 345
    .local v17, pids:[I
    if-nez v17, :cond_1

    const/4 v9, 0x0

    .line 346
    .local v9, NP:I
    :goto_0
    invoke-virtual/range {p5 .. p5}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 347
    .local v10, NS:I
    const/4 v11, 0x0

    .line 348
    .local v11, curStatsIndex:I
    const/4 v12, 0x0

    .local v12, i:I
    :goto_1
    if-ge v12, v9, :cond_0

    .line 349
    aget v5, v17, v12

    .line 350
    .local v5, pid:I
    if-gez v5, :cond_2

    .line 351
    move v9, v5

    .line 507
    .end local v5           #pid:I
    :cond_0
    :goto_2
    if-ge v11, v10, :cond_f

    .line 509
    move-object/from16 v0, p5

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/internal/os/ProcessStats$Stats;

    .line 510
    .local v20, st:Lcom/android/internal/os/ProcessStats$Stats;
    const/4 v3, 0x0

    move-object/from16 v0, v20

    iput v3, v0, Lcom/android/internal/os/ProcessStats$Stats;->rel_utime:I

    .line 511
    const/4 v3, 0x0

    move-object/from16 v0, v20

    iput v3, v0, Lcom/android/internal/os/ProcessStats$Stats;->rel_stime:I

    .line 512
    const/4 v3, 0x0

    move-object/from16 v0, v20

    iput v3, v0, Lcom/android/internal/os/ProcessStats$Stats;->rel_minfaults:I

    .line 513
    const/4 v3, 0x0

    move-object/from16 v0, v20

    iput v3, v0, Lcom/android/internal/os/ProcessStats$Stats;->rel_majfaults:I

    .line 514
    const/4 v3, 0x1

    move-object/from16 v0, v20

    iput-boolean v3, v0, Lcom/android/internal/os/ProcessStats$Stats;->removed:Z

    .line 515
    const/4 v3, 0x1

    move-object/from16 v0, v20

    iput-boolean v3, v0, Lcom/android/internal/os/ProcessStats$Stats;->working:Z

    .line 516
    move-object/from16 v0, p5

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 517
    add-int/lit8 v10, v10, -0x1

    .line 519
    goto :goto_2

    .line 345
    .end local v9           #NP:I
    .end local v10           #NS:I
    .end local v11           #curStatsIndex:I
    .end local v12           #i:I
    .end local v20           #st:Lcom/android/internal/os/ProcessStats$Stats;
    :cond_1
    move-object/from16 v0, v17

    array-length v9, v0

    goto :goto_0

    .line 354
    .restart local v5       #pid:I
    .restart local v9       #NP:I
    .restart local v10       #NS:I
    .restart local v11       #curStatsIndex:I
    .restart local v12       #i:I
    :cond_2
    if-ge v11, v10, :cond_4

    move-object/from16 v0, p5

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/os/ProcessStats$Stats;

    move-object/from16 v20, v3

    .line 356
    .restart local v20       #st:Lcom/android/internal/os/ProcessStats$Stats;
    :goto_3
    if-eqz v20, :cond_9

    move-object/from16 v0, v20

    iget v3, v0, Lcom/android/internal/os/ProcessStats$Stats;->pid:I

    if-ne v3, v5, :cond_9

    .line 358
    const/4 v3, 0x0

    move-object/from16 v0, v20

    iput-boolean v3, v0, Lcom/android/internal/os/ProcessStats$Stats;->added:Z

    .line 359
    const/4 v3, 0x0

    move-object/from16 v0, v20

    iput-boolean v3, v0, Lcom/android/internal/os/ProcessStats$Stats;->working:Z

    .line 360
    add-int/lit8 v11, v11, 0x1

    .line 365
    move-object/from16 v0, v20

    iget-boolean v3, v0, Lcom/android/internal/os/ProcessStats$Stats;->interesting:Z

    if-eqz v3, :cond_3

    .line 366
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v23

    .line 368
    .local v23, uptime:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/ProcessStats;->mProcessStatsData:[J

    move-object/from16 v18, v0

    .line 369
    .local v18, procStats:[J
    move-object/from16 v0, v20

    iget-object v3, v0, Lcom/android/internal/os/ProcessStats$Stats;->statFile:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/android/internal/os/ProcessStats;->PROCESS_STATS_FORMAT:[I

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, v18

    invoke-static {v3, v4, v6, v0, v7}, Landroid/os/Process;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    move-result v3

    if-nez v3, :cond_5

    .line 348
    .end local v18           #procStats:[J
    .end local v23           #uptime:J
    :cond_3
    :goto_4
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_1

    .line 354
    .end local v20           #st:Lcom/android/internal/os/ProcessStats$Stats;
    :cond_4
    const/16 v20, 0x0

    goto :goto_3

    .line 374
    .restart local v18       #procStats:[J
    .restart local v20       #st:Lcom/android/internal/os/ProcessStats$Stats;
    .restart local v23       #uptime:J
    :cond_5
    const/4 v3, 0x0

    aget-wide v15, v18, v3

    .line 375
    .local v15, minfaults:J
    const/4 v3, 0x1

    aget-wide v13, v18, v3

    .line 376
    .local v13, majfaults:J
    const/4 v3, 0x2

    aget-wide v25, v18, v3

    .line 377
    .local v25, utime:J
    const/4 v3, 0x3

    aget-wide v21, v18, v3

    .line 379
    .local v21, stime:J
    move-object/from16 v0, v20

    iget-wide v3, v0, Lcom/android/internal/os/ProcessStats$Stats;->base_utime:J

    cmp-long v3, v25, v3

    if-nez v3, :cond_6

    move-object/from16 v0, v20

    iget-wide v3, v0, Lcom/android/internal/os/ProcessStats$Stats;->base_stime:J

    cmp-long v3, v21, v3

    if-nez v3, :cond_6

    .line 380
    const/4 v3, 0x0

    move-object/from16 v0, v20

    iput v3, v0, Lcom/android/internal/os/ProcessStats$Stats;->rel_utime:I

    .line 381
    const/4 v3, 0x0

    move-object/from16 v0, v20

    iput v3, v0, Lcom/android/internal/os/ProcessStats$Stats;->rel_stime:I

    .line 382
    const/4 v3, 0x0

    move-object/from16 v0, v20

    iput v3, v0, Lcom/android/internal/os/ProcessStats$Stats;->rel_minfaults:I

    .line 383
    const/4 v3, 0x0

    move-object/from16 v0, v20

    iput v3, v0, Lcom/android/internal/os/ProcessStats$Stats;->rel_majfaults:I

    .line 384
    move-object/from16 v0, v20

    iget-boolean v3, v0, Lcom/android/internal/os/ProcessStats$Stats;->active:Z

    if-eqz v3, :cond_3

    .line 385
    const/4 v3, 0x0

    move-object/from16 v0, v20

    iput-boolean v3, v0, Lcom/android/internal/os/ProcessStats$Stats;->active:Z

    goto :goto_4

    .line 390
    :cond_6
    move-object/from16 v0, v20

    iget-boolean v3, v0, Lcom/android/internal/os/ProcessStats$Stats;->active:Z

    if-nez v3, :cond_7

    .line 391
    const/4 v3, 0x1

    move-object/from16 v0, v20

    iput-boolean v3, v0, Lcom/android/internal/os/ProcessStats$Stats;->active:Z

    .line 394
    :cond_7
    if-gez p2, :cond_8

    .line 395
    move-object/from16 v0, v20

    iget-object v3, v0, Lcom/android/internal/os/ProcessStats$Stats;->cmdlineFile:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v3}, Lcom/android/internal/os/ProcessStats;->getName(Lcom/android/internal/os/ProcessStats$Stats;Ljava/lang/String;)V

    .line 396
    move-object/from16 v0, v20

    iget-object v3, v0, Lcom/android/internal/os/ProcessStats$Stats;->threadStats:Ljava/util/ArrayList;

    if-eqz v3, :cond_8

    .line 397
    move-object/from16 v0, v20

    iget-object v4, v0, Lcom/android/internal/os/ProcessStats$Stats;->threadsDir:Ljava/lang/String;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/os/ProcessStats;->mCurThreadPids:[I

    move-object/from16 v0, v20

    iget-object v8, v0, Lcom/android/internal/os/ProcessStats$Stats;->threadStats:Ljava/util/ArrayList;

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/internal/os/ProcessStats;->collectStats(Ljava/lang/String;IZ[ILjava/util/ArrayList;)[I

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/os/ProcessStats;->mCurThreadPids:[I

    .line 408
    :cond_8
    move-object/from16 v0, v20

    iget-wide v3, v0, Lcom/android/internal/os/ProcessStats$Stats;->base_uptime:J

    sub-long v3, v23, v3

    move-object/from16 v0, v20

    iput-wide v3, v0, Lcom/android/internal/os/ProcessStats$Stats;->rel_uptime:J

    .line 409
    move-wide/from16 v0, v23

    move-object/from16 v2, v20

    iput-wide v0, v2, Lcom/android/internal/os/ProcessStats$Stats;->base_uptime:J

    .line 410
    move-object/from16 v0, v20

    iget-wide v3, v0, Lcom/android/internal/os/ProcessStats$Stats;->base_utime:J

    sub-long v3, v25, v3

    long-to-int v3, v3

    move-object/from16 v0, v20

    iput v3, v0, Lcom/android/internal/os/ProcessStats$Stats;->rel_utime:I

    .line 411
    move-object/from16 v0, v20

    iget-wide v3, v0, Lcom/android/internal/os/ProcessStats$Stats;->base_stime:J

    sub-long v3, v21, v3

    long-to-int v3, v3

    move-object/from16 v0, v20

    iput v3, v0, Lcom/android/internal/os/ProcessStats$Stats;->rel_stime:I

    .line 412
    move-wide/from16 v0, v25

    move-object/from16 v2, v20

    iput-wide v0, v2, Lcom/android/internal/os/ProcessStats$Stats;->base_utime:J

    .line 413
    move-wide/from16 v0, v21

    move-object/from16 v2, v20

    iput-wide v0, v2, Lcom/android/internal/os/ProcessStats$Stats;->base_stime:J

    .line 414
    move-object/from16 v0, v20

    iget-wide v3, v0, Lcom/android/internal/os/ProcessStats$Stats;->base_minfaults:J

    sub-long v3, v15, v3

    long-to-int v3, v3

    move-object/from16 v0, v20

    iput v3, v0, Lcom/android/internal/os/ProcessStats$Stats;->rel_minfaults:I

    .line 415
    move-object/from16 v0, v20

    iget-wide v3, v0, Lcom/android/internal/os/ProcessStats$Stats;->base_majfaults:J

    sub-long v3, v13, v3

    long-to-int v3, v3

    move-object/from16 v0, v20

    iput v3, v0, Lcom/android/internal/os/ProcessStats$Stats;->rel_majfaults:I

    .line 416
    move-object/from16 v0, v20

    iput-wide v15, v0, Lcom/android/internal/os/ProcessStats$Stats;->base_minfaults:J

    .line 417
    move-object/from16 v0, v20

    iput-wide v13, v0, Lcom/android/internal/os/ProcessStats$Stats;->base_majfaults:J

    .line 418
    const/4 v3, 0x1

    move-object/from16 v0, v20

    iput-boolean v3, v0, Lcom/android/internal/os/ProcessStats$Stats;->working:Z

    goto/16 :goto_4

    .line 424
    .end local v13           #majfaults:J
    .end local v15           #minfaults:J
    .end local v18           #procStats:[J
    .end local v21           #stime:J
    .end local v23           #uptime:J
    .end local v25           #utime:J
    :cond_9
    if-eqz v20, :cond_a

    move-object/from16 v0, v20

    iget v3, v0, Lcom/android/internal/os/ProcessStats$Stats;->pid:I

    if-le v3, v5, :cond_e

    .line 426
    :cond_a
    new-instance v20, Lcom/android/internal/os/ProcessStats$Stats;

    .end local v20           #st:Lcom/android/internal/os/ProcessStats$Stats;
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/os/ProcessStats;->mIncludeThreads:Z

    move-object/from16 v0, v20

    move/from16 v1, p2

    invoke-direct {v0, v5, v1, v3}, Lcom/android/internal/os/ProcessStats$Stats;-><init>(IIZ)V

    .line 427
    .restart local v20       #st:Lcom/android/internal/os/ProcessStats$Stats;
    move-object/from16 v0, p5

    move-object/from16 v1, v20

    invoke-virtual {v0, v11, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 428
    add-int/lit8 v11, v11, 0x1

    .line 429
    add-int/lit8 v10, v10, 0x1

    .line 434
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/ProcessStats;->mProcessFullStatsStringData:[Ljava/lang/String;

    move-object/from16 v19, v0

    .line 435
    .local v19, procStatsString:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/ProcessStats;->mProcessFullStatsData:[J

    move-object/from16 v18, v0

    .line 436
    .restart local v18       #procStats:[J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    move-object/from16 v0, v20

    iput-wide v3, v0, Lcom/android/internal/os/ProcessStats$Stats;->base_uptime:J

    .line 437
    move-object/from16 v0, v20

    iget-object v3, v0, Lcom/android/internal/os/ProcessStats$Stats;->statFile:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/android/internal/os/ProcessStats;->PROCESS_FULL_STATS_FORMAT:[I

    const/4 v6, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-static {v3, v4, v0, v1, v6}, Landroid/os/Process;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 445
    const/4 v3, 0x1

    move-object/from16 v0, v20

    iput-boolean v3, v0, Lcom/android/internal/os/ProcessStats$Stats;->interesting:Z

    .line 446
    const/4 v3, 0x0

    aget-object v3, v19, v3

    move-object/from16 v0, v20

    iput-object v3, v0, Lcom/android/internal/os/ProcessStats$Stats;->baseName:Ljava/lang/String;

    .line 447
    const/4 v3, 0x1

    aget-wide v3, v18, v3

    move-object/from16 v0, v20

    iput-wide v3, v0, Lcom/android/internal/os/ProcessStats$Stats;->base_minfaults:J

    .line 448
    const/4 v3, 0x2

    aget-wide v3, v18, v3

    move-object/from16 v0, v20

    iput-wide v3, v0, Lcom/android/internal/os/ProcessStats$Stats;->base_majfaults:J

    .line 449
    const/4 v3, 0x3

    aget-wide v3, v18, v3

    move-object/from16 v0, v20

    iput-wide v3, v0, Lcom/android/internal/os/ProcessStats$Stats;->base_utime:J

    .line 450
    const/4 v3, 0x4

    aget-wide v3, v18, v3

    move-object/from16 v0, v20

    iput-wide v3, v0, Lcom/android/internal/os/ProcessStats$Stats;->base_stime:J

    .line 463
    :goto_5
    if-gez p2, :cond_d

    .line 464
    move-object/from16 v0, v20

    iget-object v3, v0, Lcom/android/internal/os/ProcessStats$Stats;->cmdlineFile:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v3}, Lcom/android/internal/os/ProcessStats;->getName(Lcom/android/internal/os/ProcessStats$Stats;Ljava/lang/String;)V

    .line 465
    move-object/from16 v0, v20

    iget-object v3, v0, Lcom/android/internal/os/ProcessStats$Stats;->threadStats:Ljava/util/ArrayList;

    if-eqz v3, :cond_b

    .line 466
    move-object/from16 v0, v20

    iget-object v4, v0, Lcom/android/internal/os/ProcessStats$Stats;->threadsDir:Ljava/lang/String;

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/os/ProcessStats;->mCurThreadPids:[I

    move-object/from16 v0, v20

    iget-object v8, v0, Lcom/android/internal/os/ProcessStats$Stats;->threadStats:Ljava/util/ArrayList;

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/internal/os/ProcessStats;->collectStats(Ljava/lang/String;IZ[ILjava/util/ArrayList;)[I

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/os/ProcessStats;->mCurThreadPids:[I

    .line 478
    :cond_b
    :goto_6
    const/4 v3, 0x0

    move-object/from16 v0, v20

    iput v3, v0, Lcom/android/internal/os/ProcessStats$Stats;->rel_utime:I

    .line 479
    const/4 v3, 0x0

    move-object/from16 v0, v20

    iput v3, v0, Lcom/android/internal/os/ProcessStats$Stats;->rel_stime:I

    .line 480
    const/4 v3, 0x0

    move-object/from16 v0, v20

    iput v3, v0, Lcom/android/internal/os/ProcessStats$Stats;->rel_minfaults:I

    .line 481
    const/4 v3, 0x0

    move-object/from16 v0, v20

    iput v3, v0, Lcom/android/internal/os/ProcessStats$Stats;->rel_majfaults:I

    .line 482
    const/4 v3, 0x1

    move-object/from16 v0, v20

    iput-boolean v3, v0, Lcom/android/internal/os/ProcessStats$Stats;->added:Z

    .line 483
    if-nez p3, :cond_3

    move-object/from16 v0, v20

    iget-boolean v3, v0, Lcom/android/internal/os/ProcessStats$Stats;->interesting:Z

    if-eqz v3, :cond_3

    .line 484
    const/4 v3, 0x1

    move-object/from16 v0, v20

    iput-boolean v3, v0, Lcom/android/internal/os/ProcessStats$Stats;->working:Z

    goto/16 :goto_4

    .line 457
    :cond_c
    const-string v3, "ProcessStats"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Skipping unknown process pid "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    const-string v3, "<unknown>"

    move-object/from16 v0, v20

    iput-object v3, v0, Lcom/android/internal/os/ProcessStats$Stats;->baseName:Ljava/lang/String;

    .line 459
    const-wide/16 v3, 0x0

    move-object/from16 v0, v20

    iput-wide v3, v0, Lcom/android/internal/os/ProcessStats$Stats;->base_stime:J

    move-object/from16 v0, v20

    iput-wide v3, v0, Lcom/android/internal/os/ProcessStats$Stats;->base_utime:J

    .line 460
    const-wide/16 v3, 0x0

    move-object/from16 v0, v20

    iput-wide v3, v0, Lcom/android/internal/os/ProcessStats$Stats;->base_majfaults:J

    move-object/from16 v0, v20

    iput-wide v3, v0, Lcom/android/internal/os/ProcessStats$Stats;->base_minfaults:J

    goto/16 :goto_5

    .line 469
    :cond_d
    move-object/from16 v0, v20

    iget-boolean v3, v0, Lcom/android/internal/os/ProcessStats$Stats;->interesting:Z

    if-eqz v3, :cond_b

    .line 470
    move-object/from16 v0, v20

    iget-object v3, v0, Lcom/android/internal/os/ProcessStats$Stats;->baseName:Ljava/lang/String;

    move-object/from16 v0, v20

    iput-object v3, v0, Lcom/android/internal/os/ProcessStats$Stats;->name:Ljava/lang/String;

    .line 471
    move-object/from16 v0, v20

    iget-object v3, v0, Lcom/android/internal/os/ProcessStats$Stats;->name:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/os/ProcessStats;->onMeasureProcessName(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v20

    iput v3, v0, Lcom/android/internal/os/ProcessStats$Stats;->nameWidth:I

    goto :goto_6

    .line 490
    .end local v18           #procStats:[J
    .end local v19           #procStatsString:[Ljava/lang/String;
    :cond_e
    const/4 v3, 0x0

    move-object/from16 v0, v20

    iput v3, v0, Lcom/android/internal/os/ProcessStats$Stats;->rel_utime:I

    .line 491
    const/4 v3, 0x0

    move-object/from16 v0, v20

    iput v3, v0, Lcom/android/internal/os/ProcessStats$Stats;->rel_stime:I

    .line 492
    const/4 v3, 0x0

    move-object/from16 v0, v20

    iput v3, v0, Lcom/android/internal/os/ProcessStats$Stats;->rel_minfaults:I

    .line 493
    const/4 v3, 0x0

    move-object/from16 v0, v20

    iput v3, v0, Lcom/android/internal/os/ProcessStats$Stats;->rel_majfaults:I

    .line 494
    const/4 v3, 0x1

    move-object/from16 v0, v20

    iput-boolean v3, v0, Lcom/android/internal/os/ProcessStats$Stats;->removed:Z

    .line 495
    const/4 v3, 0x1

    move-object/from16 v0, v20

    iput-boolean v3, v0, Lcom/android/internal/os/ProcessStats$Stats;->working:Z

    .line 496
    move-object/from16 v0, p5

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 497
    add-int/lit8 v10, v10, -0x1

    .line 503
    add-int/lit8 v12, v12, -0x1

    .line 504
    goto/16 :goto_4

    .line 521
    .end local v5           #pid:I
    .end local v20           #st:Lcom/android/internal/os/ProcessStats$Stats;
    :cond_f
    return-object v17
.end method

.method private getCpuSpeedTimes([J)[J
    .locals 14
    .parameter "out"

    .prologue
    const/16 v13, 0x3c

    const/4 v12, 0x0

    .line 560
    move-object v6, p1

    .line 561
    .local v6, tempTimes:[J
    iget-object v5, p0, Lcom/android/internal/os/ProcessStats;->mCpuSpeeds:[J

    .line 562
    .local v5, tempSpeeds:[J
    const/16 v0, 0x3c

    .line 563
    .local v0, MAX_SPEEDS:I
    if-nez p1, :cond_0

    .line 564
    new-array v6, v13, [J

    .line 565
    new-array v5, v13, [J

    .line 567
    :cond_0
    const/4 v3, 0x0

    .line 568
    .local v3, speed:I
    const-string v10, "/sys/devices/system/cpu/cpu0/cpufreq/stats/time_in_state"

    invoke-direct {p0, v10, v12}, Lcom/android/internal/os/ProcessStats;->readFile(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v1

    .line 570
    .local v1, file:Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 571
    new-instance v4, Ljava/util/StringTokenizer;

    const-string v10, "\n "

    invoke-direct {v4, v1, v10}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 572
    .local v4, st:Ljava/util/StringTokenizer;
    :cond_1
    :goto_0
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 573
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v7

    .line 575
    .local v7, token:Ljava/lang/String;
    :try_start_0
    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 576
    .local v8, val:J
    aput-wide v8, v5, v3

    .line 577
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v7

    .line 578
    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 579
    aput-wide v8, v6, v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 580
    add-int/lit8 v3, v3, 0x1

    .line 581
    if-ne v3, v13, :cond_1

    .line 591
    .end local v4           #st:Ljava/util/StringTokenizer;
    .end local v7           #token:Ljava/lang/String;
    .end local v8           #val:J
    :cond_2
    if-nez p1, :cond_3

    .line 592
    new-array p1, v3, [J

    .line 593
    new-array v10, v3, [J

    iput-object v10, p0, Lcom/android/internal/os/ProcessStats;->mCpuSpeeds:[J

    .line 594
    iget-object v10, p0, Lcom/android/internal/os/ProcessStats;->mCpuSpeeds:[J

    invoke-static {v5, v12, v10, v12, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 595
    invoke-static {v6, v12, p1, v12, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 597
    :cond_3
    return-object p1

    .line 586
    .restart local v4       #st:Ljava/util/StringTokenizer;
    .restart local v7       #token:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 587
    .local v2, nfe:Ljava/lang/NumberFormatException;
    const-string v10, "ProcessStats"

    const-string v11, "Unable to parse time_in_state"

    invoke-static {v10, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getName(Lcom/android/internal/os/ProcessStats$Stats;Ljava/lang/String;)V
    .locals 5
    .parameter "st"
    .parameter "cmdlineFile"

    .prologue
    .line 841
    iget-object v2, p1, Lcom/android/internal/os/ProcessStats$Stats;->name:Ljava/lang/String;

    .line 842
    .local v2, newName:Ljava/lang/String;
    iget-object v3, p1, Lcom/android/internal/os/ProcessStats$Stats;->name:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p1, Lcom/android/internal/os/ProcessStats$Stats;->name:Ljava/lang/String;

    const-string v4, "app_process"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p1, Lcom/android/internal/os/ProcessStats$Stats;->name:Ljava/lang/String;

    const-string v4, "<pre-initialized>"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 844
    :cond_0
    const/4 v3, 0x0

    invoke-direct {p0, p2, v3}, Lcom/android/internal/os/ProcessStats;->readFile(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v0

    .line 845
    .local v0, cmdName:Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_1

    .line 846
    move-object v2, v0

    .line 847
    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 848
    .local v1, i:I
    if-lez v1, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v1, v3, :cond_1

    .line 849
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 852
    .end local v1           #i:I
    :cond_1
    if-nez v2, :cond_2

    .line 853
    iget-object v2, p1, Lcom/android/internal/os/ProcessStats$Stats;->baseName:Ljava/lang/String;

    .line 856
    .end local v0           #cmdName:Ljava/lang/String;
    :cond_2
    iget-object v3, p1, Lcom/android/internal/os/ProcessStats$Stats;->name:Ljava/lang/String;

    if-eqz v3, :cond_3

    iget-object v3, p1, Lcom/android/internal/os/ProcessStats$Stats;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 857
    :cond_3
    iput-object v2, p1, Lcom/android/internal/os/ProcessStats$Stats;->name:Ljava/lang/String;

    .line 858
    iget-object v3, p1, Lcom/android/internal/os/ProcessStats$Stats;->name:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/android/internal/os/ProcessStats;->onMeasureProcessName(Ljava/lang/String;)I

    move-result v3

    iput v3, p1, Lcom/android/internal/os/ProcessStats$Stats;->nameWidth:I

    .line 860
    :cond_4
    return-void
.end method

.method private printProcessCPU(Ljava/io/PrintWriter;Ljava/lang/String;ILjava/lang/String;IIIIIIII)V
    .locals 7
    .parameter "pw"
    .parameter "prefix"
    .parameter "pid"
    .parameter "label"
    .parameter "totalTime"
    .parameter "user"
    .parameter "system"
    .parameter "iowait"
    .parameter "irq"
    .parameter "softIrq"
    .parameter "minFaults"
    .parameter "majFaults"

    .prologue
    .line 761
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 762
    if-nez p5, :cond_0

    const/4 p5, 0x1

    .line 763
    :cond_0
    add-int v1, p6, p7

    add-int/2addr v1, p8

    add-int v1, v1, p9

    add-int v1, v1, p10

    int-to-long v3, v1

    int-to-long v5, p5

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/os/ProcessStats;->printRatio(Ljava/io/PrintWriter;JJ)V

    .line 764
    const-string v1, "% "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 765
    if-ltz p3, :cond_1

    .line 766
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(I)V

    .line 767
    const-string v1, "/"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 769
    :cond_1
    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 770
    const-string v1, ": "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 771
    int-to-long v3, p6

    int-to-long v5, p5

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/os/ProcessStats;->printRatio(Ljava/io/PrintWriter;JJ)V

    .line 772
    const-string v1, "% user + "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 773
    int-to-long v3, p7

    int-to-long v5, p5

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/os/ProcessStats;->printRatio(Ljava/io/PrintWriter;JJ)V

    .line 774
    const-string v1, "% kernel"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 775
    if-lez p8, :cond_2

    .line 776
    const-string v1, " + "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 777
    int-to-long v3, p8

    int-to-long v5, p5

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/os/ProcessStats;->printRatio(Ljava/io/PrintWriter;JJ)V

    .line 778
    const-string v1, "% iowait"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 780
    :cond_2
    if-lez p9, :cond_3

    .line 781
    const-string v1, " + "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 782
    move/from16 v0, p9

    int-to-long v3, v0

    int-to-long v5, p5

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/os/ProcessStats;->printRatio(Ljava/io/PrintWriter;JJ)V

    .line 783
    const-string v1, "% irq"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 785
    :cond_3
    if-lez p10, :cond_4

    .line 786
    const-string v1, " + "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 787
    move/from16 v0, p10

    int-to-long v3, v0

    int-to-long v5, p5

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/os/ProcessStats;->printRatio(Ljava/io/PrintWriter;JJ)V

    .line 788
    const-string v1, "% softirq"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 790
    :cond_4
    if-gtz p11, :cond_5

    if-lez p12, :cond_7

    .line 791
    :cond_5
    const-string v1, " / faults:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 792
    if-lez p11, :cond_6

    .line 793
    const-string v1, " "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 794
    move/from16 v0, p11

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 795
    const-string v1, " minor"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 797
    :cond_6
    if-lez p12, :cond_7

    .line 798
    const-string v1, " "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 799
    move/from16 v0, p12

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 800
    const-string v1, " major"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 803
    :cond_7
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 804
    return-void
.end method

.method private printRatio(Ljava/io/PrintWriter;JJ)V
    .locals 10
    .parameter "pw"
    .parameter "numerator"
    .parameter "denominator"

    .prologue
    const-wide/16 v8, 0xa

    .line 746
    const-wide/16 v6, 0x3e8

    mul-long/2addr v6, p2

    div-long v4, v6, p4

    .line 747
    .local v4, thousands:J
    div-long v0, v4, v8

    .line 748
    .local v0, hundreds:J
    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    .line 749
    cmp-long v6, v0, v8

    if-gez v6, :cond_0

    .line 750
    mul-long v6, v0, v8

    sub-long v2, v4, v6

    .line 751
    .local v2, remainder:J
    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    if-eqz v6, :cond_0

    .line 752
    const/16 v6, 0x2e

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(C)V

    .line 753
    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    .line 756
    .end local v2           #remainder:J
    :cond_0
    return-void
.end method

.method private readFile(Ljava/lang/String;C)Ljava/lang/String;
    .locals 8
    .parameter "file"
    .parameter "endChar"

    .prologue
    .line 810
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v4

    .line 811
    .local v4, savedPolicy:Landroid/os/StrictMode$ThreadPolicy;
    const/4 v1, 0x0

    .line 813
    .local v1, is:Ljava/io/FileInputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 814
    .end local v1           #is:Ljava/io/FileInputStream;
    .local v2, is:Ljava/io/FileInputStream;
    :try_start_1
    iget-object v5, p0, Lcom/android/internal/os/ProcessStats;->mBuffer:[B

    invoke-virtual {v2, v5}, Ljava/io/FileInputStream;->read([B)I

    move-result v3

    .line 815
    .local v3, len:I
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 817
    if-lez v3, :cond_3

    .line 819
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 820
    iget-object v5, p0, Lcom/android/internal/os/ProcessStats;->mBuffer:[B

    aget-byte v5, v5, v0

    if-ne v5, p2, :cond_2

    .line 824
    :cond_0
    new-instance v5, Ljava/lang/String;

    iget-object v6, p0, Lcom/android/internal/os/ProcessStats;->mBuffer:[B

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7, v0}, Ljava/lang/String;-><init>([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7

    .line 829
    if-eqz v2, :cond_1

    .line 831
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 835
    :cond_1
    :goto_1
    invoke-static {v4}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    move-object v1, v2

    .line 837
    .end local v0           #i:I
    .end local v2           #is:Ljava/io/FileInputStream;
    .end local v3           #len:I
    .restart local v1       #is:Ljava/io/FileInputStream;
    :goto_2
    return-object v5

    .line 819
    .end local v1           #is:Ljava/io/FileInputStream;
    .restart local v0       #i:I
    .restart local v2       #is:Ljava/io/FileInputStream;
    .restart local v3       #len:I
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 829
    .end local v0           #i:I
    :cond_3
    if-eqz v2, :cond_4

    .line 831
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 835
    :cond_4
    :goto_3
    invoke-static {v4}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    move-object v1, v2

    .line 837
    .end local v2           #is:Ljava/io/FileInputStream;
    .end local v3           #len:I
    .restart local v1       #is:Ljava/io/FileInputStream;
    :goto_4
    const/4 v5, 0x0

    goto :goto_2

    .line 826
    :catch_0
    move-exception v5

    .line 829
    :goto_5
    if-eqz v1, :cond_5

    .line 831
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 835
    :cond_5
    :goto_6
    invoke-static {v4}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    goto :goto_4

    .line 827
    :catch_1
    move-exception v5

    .line 829
    :goto_7
    if-eqz v1, :cond_6

    .line 831
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    .line 835
    :cond_6
    :goto_8
    invoke-static {v4}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    goto :goto_4

    .line 829
    :catchall_0
    move-exception v5

    :goto_9
    if-eqz v1, :cond_7

    .line 831
    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6

    .line 835
    :cond_7
    :goto_a
    invoke-static {v4}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw v5

    .line 832
    .end local v1           #is:Ljava/io/FileInputStream;
    .restart local v0       #i:I
    .restart local v2       #is:Ljava/io/FileInputStream;
    .restart local v3       #len:I
    :catch_2
    move-exception v6

    goto :goto_1

    .end local v0           #i:I
    :catch_3
    move-exception v5

    goto :goto_3

    .end local v2           #is:Ljava/io/FileInputStream;
    .end local v3           #len:I
    .restart local v1       #is:Ljava/io/FileInputStream;
    :catch_4
    move-exception v5

    goto :goto_6

    :catch_5
    move-exception v5

    goto :goto_8

    :catch_6
    move-exception v6

    goto :goto_a

    .line 829
    .end local v1           #is:Ljava/io/FileInputStream;
    .restart local v2       #is:Ljava/io/FileInputStream;
    :catchall_1
    move-exception v5

    move-object v1, v2

    .end local v2           #is:Ljava/io/FileInputStream;
    .restart local v1       #is:Ljava/io/FileInputStream;
    goto :goto_9

    .line 827
    .end local v1           #is:Ljava/io/FileInputStream;
    .restart local v2       #is:Ljava/io/FileInputStream;
    :catch_7
    move-exception v5

    move-object v1, v2

    .end local v2           #is:Ljava/io/FileInputStream;
    .restart local v1       #is:Ljava/io/FileInputStream;
    goto :goto_7

    .line 826
    .end local v1           #is:Ljava/io/FileInputStream;
    .restart local v2       #is:Ljava/io/FileInputStream;
    :catch_8
    move-exception v5

    move-object v1, v2

    .end local v2           #is:Ljava/io/FileInputStream;
    .restart local v1       #is:Ljava/io/FileInputStream;
    goto :goto_5
.end method


# virtual methods
.method final buildWorkingProcs()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 630
    iget-boolean v6, p0, Lcom/android/internal/os/ProcessStats;->mWorkingProcsSorted:Z

    if-nez v6, :cond_4

    .line 631
    iget-object v6, p0, Lcom/android/internal/os/ProcessStats;->mWorkingProcs:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 632
    iget-object v6, p0, Lcom/android/internal/os/ProcessStats;->mProcStats:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 633
    .local v1, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_3

    .line 634
    iget-object v6, p0, Lcom/android/internal/os/ProcessStats;->mProcStats:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/os/ProcessStats$Stats;

    .line 635
    .local v4, stats:Lcom/android/internal/os/ProcessStats$Stats;
    iget-boolean v6, v4, Lcom/android/internal/os/ProcessStats$Stats;->working:Z

    if-eqz v6, :cond_2

    .line 636
    iget-object v6, p0, Lcom/android/internal/os/ProcessStats;->mWorkingProcs:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 637
    iget-object v6, v4, Lcom/android/internal/os/ProcessStats$Stats;->threadStats:Ljava/util/ArrayList;

    if-eqz v6, :cond_2

    iget-object v6, v4, Lcom/android/internal/os/ProcessStats$Stats;->threadStats:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-le v6, v8, :cond_2

    .line 638
    iget-object v6, v4, Lcom/android/internal/os/ProcessStats$Stats;->workingThreads:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 639
    iget-object v6, v4, Lcom/android/internal/os/ProcessStats$Stats;->threadStats:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 640
    .local v0, M:I
    const/4 v3, 0x0

    .local v3, j:I
    :goto_1
    if-ge v3, v0, :cond_1

    .line 641
    iget-object v6, v4, Lcom/android/internal/os/ProcessStats$Stats;->threadStats:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/os/ProcessStats$Stats;

    .line 642
    .local v5, tstats:Lcom/android/internal/os/ProcessStats$Stats;
    iget-boolean v6, v5, Lcom/android/internal/os/ProcessStats$Stats;->working:Z

    if-eqz v6, :cond_0

    .line 643
    iget-object v6, v4, Lcom/android/internal/os/ProcessStats$Stats;->workingThreads:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 640
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 646
    .end local v5           #tstats:Lcom/android/internal/os/ProcessStats$Stats;
    :cond_1
    iget-object v6, v4, Lcom/android/internal/os/ProcessStats$Stats;->workingThreads:Ljava/util/ArrayList;

    sget-object v7, Lcom/android/internal/os/ProcessStats;->sLoadComparator:Ljava/util/Comparator;

    invoke-static {v6, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 633
    .end local v0           #M:I
    .end local v3           #j:I
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 650
    .end local v4           #stats:Lcom/android/internal/os/ProcessStats$Stats;
    :cond_3
    iget-object v6, p0, Lcom/android/internal/os/ProcessStats;->mWorkingProcs:Ljava/util/ArrayList;

    sget-object v7, Lcom/android/internal/os/ProcessStats;->sLoadComparator:Ljava/util/Comparator;

    invoke-static {v6, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 651
    iput-boolean v8, p0, Lcom/android/internal/os/ProcessStats;->mWorkingProcsSorted:Z

    .line 653
    .end local v1           #N:I
    .end local v2           #i:I
    :cond_4
    return-void
.end method

.method public final countStats()I
    .locals 1

    .prologue
    .line 656
    iget-object v0, p0, Lcom/android/internal/os/ProcessStats;->mProcStats:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public final countWorkingStats()I
    .locals 1

    .prologue
    .line 664
    invoke-virtual {p0}, Lcom/android/internal/os/ProcessStats;->buildWorkingProcs()V

    .line 665
    iget-object v0, p0, Lcom/android/internal/os/ProcessStats;->mWorkingProcs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getCpuTimeForPid(I)J
    .locals 8
    .parameter "pid"

    .prologue
    const/4 v6, 0x0

    .line 525
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/proc/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/stat"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 526
    .local v0, statFile:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/internal/os/ProcessStats;->mSinglePidStatsData:[J

    .line 527
    .local v1, statsData:[J
    sget-object v4, Lcom/android/internal/os/ProcessStats;->PROCESS_STATS_FORMAT:[I

    invoke-static {v0, v4, v6, v1, v6}, Landroid/os/Process;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 529
    const/4 v4, 0x2

    aget-wide v4, v1, v4

    const/4 v6, 0x3

    aget-wide v6, v1, v6

    add-long v2, v4, v6

    .line 533
    :goto_0
    return-wide v2

    :cond_0
    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method public getLastCpuSpeedTimes()[J
    .locals 8

    .prologue
    .line 542
    iget-object v3, p0, Lcom/android/internal/os/ProcessStats;->mCpuSpeedTimes:[J

    if-nez v3, :cond_0

    .line 543
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/android/internal/os/ProcessStats;->getCpuSpeedTimes([J)[J

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/os/ProcessStats;->mCpuSpeedTimes:[J

    .line 544
    iget-object v3, p0, Lcom/android/internal/os/ProcessStats;->mCpuSpeedTimes:[J

    array-length v3, v3

    new-array v3, v3, [J

    iput-object v3, p0, Lcom/android/internal/os/ProcessStats;->mRelCpuSpeedTimes:[J

    .line 545
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v3, p0, Lcom/android/internal/os/ProcessStats;->mCpuSpeedTimes:[J

    array-length v3, v3

    if-ge v0, v3, :cond_1

    .line 546
    iget-object v3, p0, Lcom/android/internal/os/ProcessStats;->mRelCpuSpeedTimes:[J

    const-wide/16 v4, 0x1

    aput-wide v4, v3, v0

    .line 545
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 549
    .end local v0           #i:I
    :cond_0
    iget-object v3, p0, Lcom/android/internal/os/ProcessStats;->mRelCpuSpeedTimes:[J

    invoke-direct {p0, v3}, Lcom/android/internal/os/ProcessStats;->getCpuSpeedTimes([J)[J

    .line 550
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_1
    iget-object v3, p0, Lcom/android/internal/os/ProcessStats;->mCpuSpeedTimes:[J

    array-length v3, v3

    if-ge v0, v3, :cond_1

    .line 551
    iget-object v3, p0, Lcom/android/internal/os/ProcessStats;->mRelCpuSpeedTimes:[J

    aget-wide v1, v3, v0

    .line 552
    .local v1, temp:J
    iget-object v3, p0, Lcom/android/internal/os/ProcessStats;->mRelCpuSpeedTimes:[J

    aget-wide v4, v3, v0

    iget-object v6, p0, Lcom/android/internal/os/ProcessStats;->mCpuSpeedTimes:[J

    aget-wide v6, v6, v0

    sub-long/2addr v4, v6

    aput-wide v4, v3, v0

    .line 553
    iget-object v3, p0, Lcom/android/internal/os/ProcessStats;->mCpuSpeedTimes:[J

    aput-wide v1, v3, v0

    .line 550
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 556
    .end local v1           #temp:J
    :cond_1
    iget-object v3, p0, Lcom/android/internal/os/ProcessStats;->mRelCpuSpeedTimes:[J

    return-object v3
.end method

.method public final getLastIdleTime()I
    .locals 1

    .prologue
    .line 621
    iget v0, p0, Lcom/android/internal/os/ProcessStats;->mRelIdleTime:I

    return v0
.end method

.method public final getLastIoWaitTime()I
    .locals 1

    .prologue
    .line 609
    iget v0, p0, Lcom/android/internal/os/ProcessStats;->mRelIoWaitTime:I

    return v0
.end method

.method public final getLastIrqTime()I
    .locals 1

    .prologue
    .line 613
    iget v0, p0, Lcom/android/internal/os/ProcessStats;->mRelIrqTime:I

    return v0
.end method

.method public final getLastSoftIrqTime()I
    .locals 1

    .prologue
    .line 617
    iget v0, p0, Lcom/android/internal/os/ProcessStats;->mRelSoftIrqTime:I

    return v0
.end method

.method public final getLastSystemTime()I
    .locals 1

    .prologue
    .line 605
    iget v0, p0, Lcom/android/internal/os/ProcessStats;->mRelSystemTime:I

    return v0
.end method

.method public final getLastUserTime()I
    .locals 1

    .prologue
    .line 601
    iget v0, p0, Lcom/android/internal/os/ProcessStats;->mRelUserTime:I

    return v0
.end method

.method public final getStats(I)Lcom/android/internal/os/ProcessStats$Stats;
    .locals 1
    .parameter "index"

    .prologue
    .line 660
    iget-object v0, p0, Lcom/android/internal/os/ProcessStats;->mProcStats:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/ProcessStats$Stats;

    return-object v0
.end method

.method public final getTotalCpuPercent()F
    .locals 3

    .prologue
    .line 625
    iget v0, p0, Lcom/android/internal/os/ProcessStats;->mRelUserTime:I

    iget v1, p0, Lcom/android/internal/os/ProcessStats;->mRelSystemTime:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/internal/os/ProcessStats;->mRelIrqTime:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    const/high16 v1, 0x42c8

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/android/internal/os/ProcessStats;->mRelUserTime:I

    iget v2, p0, Lcom/android/internal/os/ProcessStats;->mRelSystemTime:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/android/internal/os/ProcessStats;->mRelIrqTime:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/android/internal/os/ProcessStats;->mRelIdleTime:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method public final getWorkingStats(I)Lcom/android/internal/os/ProcessStats$Stats;
    .locals 1
    .parameter "index"

    .prologue
    .line 669
    iget-object v0, p0, Lcom/android/internal/os/ProcessStats;->mWorkingProcs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/ProcessStats$Stats;

    return-object v0
.end method

.method public init()V
    .locals 1

    .prologue
    .line 269
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/os/ProcessStats;->mFirst:Z

    .line 270
    invoke-virtual {p0}, Lcom/android/internal/os/ProcessStats;->update()V

    .line 271
    return-void
.end method

.method public onLoadChanged(FFF)V
    .locals 0
    .parameter "load1"
    .parameter "load5"
    .parameter "load15"

    .prologue
    .line 261
    return-void
.end method

.method public onMeasureProcessName(Ljava/lang/String;)I
    .locals 1
    .parameter "name"

    .prologue
    .line 264
    const/4 v0, 0x0

    return v0
.end method

.method public final printCurrentLoad()Ljava/lang/String;
    .locals 3

    .prologue
    .line 673
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 674
    .local v1, sw:Ljava/io/StringWriter;
    new-instance v0, Ljava/io/PrintWriter;

    invoke-direct {v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 675
    .local v0, pw:Ljava/io/PrintWriter;
    const-string v2, "Load: "

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 676
    iget v2, p0, Lcom/android/internal/os/ProcessStats;->mLoad1:F

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(F)V

    .line 677
    const-string v2, " / "

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 678
    iget v2, p0, Lcom/android/internal/os/ProcessStats;->mLoad5:F

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(F)V

    .line 679
    const-string v2, " / "

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 680
    iget v2, p0, Lcom/android/internal/os/ProcessStats;->mLoad15:F

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(F)V

    .line 681
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public final printCurrentState(J)Ljava/lang/String;
    .locals 29
    .parameter "now"

    .prologue
    .line 685
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/os/ProcessStats;->buildWorkingProcs()V

    .line 687
    new-instance v26, Ljava/io/StringWriter;

    invoke-direct/range {v26 .. v26}, Ljava/io/StringWriter;-><init>()V

    .line 688
    .local v26, sw:Ljava/io/StringWriter;
    new-instance v3, Ljava/io/PrintWriter;

    move-object/from16 v0, v26

    invoke-direct {v3, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 690
    .local v3, pw:Ljava/io/PrintWriter;
    const-string v2, "CPU usage from "

    invoke-virtual {v3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 691
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/internal/os/ProcessStats;->mLastSampleTime:J

    cmp-long v2, p1, v4

    if-lez v2, :cond_1

    .line 692
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/internal/os/ProcessStats;->mLastSampleTime:J

    sub-long v4, p1, v4

    invoke-virtual {v3, v4, v5}, Ljava/io/PrintWriter;->print(J)V

    .line 693
    const-string/jumbo v2, "ms to "

    invoke-virtual {v3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 694
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/internal/os/ProcessStats;->mCurrentSampleTime:J

    sub-long v4, p1, v4

    invoke-virtual {v3, v4, v5}, Ljava/io/PrintWriter;->print(J)V

    .line 695
    const-string/jumbo v2, "ms ago"

    invoke-virtual {v3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 703
    :goto_0
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/internal/os/ProcessStats;->mCurrentSampleTime:J

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/internal/os/ProcessStats;->mLastSampleTime:J

    sub-long v23, v4, v6

    .line 704
    .local v23, sampleTime:J
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/internal/os/ProcessStats;->mCurrentSampleRealTime:J

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/internal/os/ProcessStats;->mLastSampleRealTime:J

    sub-long v21, v4, v6

    .line 705
    .local v21, sampleRealTime:J
    const-wide/16 v4, 0x0

    cmp-long v2, v21, v4

    if-lez v2, :cond_2

    const-wide/16 v4, 0x64

    mul-long v4, v4, v23

    div-long v19, v4, v21

    .line 708
    .local v19, percAwake:J
    :goto_1
    const-wide/16 v4, 0x64

    cmp-long v2, v19, v4

    if-eqz v2, :cond_0

    .line 709
    const-string v2, " with "

    invoke-virtual {v3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 710
    move-wide/from16 v0, v19

    invoke-virtual {v3, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    .line 711
    const-string v2, "% awake"

    invoke-virtual {v3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 713
    :cond_0
    const-string v2, ":"

    invoke-virtual {v3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 715
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/os/ProcessStats;->mRelUserTime:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/os/ProcessStats;->mRelSystemTime:I

    add-int/2addr v2, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/os/ProcessStats;->mRelIoWaitTime:I

    add-int/2addr v2, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/os/ProcessStats;->mRelIrqTime:I

    add-int/2addr v2, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/os/ProcessStats;->mRelSoftIrqTime:I

    add-int/2addr v2, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/os/ProcessStats;->mRelIdleTime:I

    add-int v27, v2, v4

    .line 721
    .local v27, totalTime:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/os/ProcessStats;->mWorkingProcs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v16

    .line 722
    .local v16, N:I
    const/16 v17, 0x0

    .local v17, i:I
    :goto_2
    move/from16 v0, v17

    move/from16 v1, v16

    if-ge v0, v1, :cond_8

    .line 723
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/os/ProcessStats;->mWorkingProcs:Ljava/util/ArrayList;

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/android/internal/os/ProcessStats$Stats;

    .line 724
    .local v25, st:Lcom/android/internal/os/ProcessStats$Stats;
    move-object/from16 v0, v25

    iget-boolean v2, v0, Lcom/android/internal/os/ProcessStats$Stats;->added:Z

    if-eqz v2, :cond_3

    const-string v4, " +"

    :goto_3
    move-object/from16 v0, v25

    iget v5, v0, Lcom/android/internal/os/ProcessStats$Stats;->pid:I

    move-object/from16 v0, v25

    iget-object v6, v0, Lcom/android/internal/os/ProcessStats$Stats;->name:Ljava/lang/String;

    move-object/from16 v0, v25

    iget-wide v7, v0, Lcom/android/internal/os/ProcessStats$Stats;->rel_uptime:J

    const-wide/16 v9, 0x5

    add-long/2addr v7, v9

    long-to-int v2, v7

    div-int/lit8 v7, v2, 0xa

    move-object/from16 v0, v25

    iget v8, v0, Lcom/android/internal/os/ProcessStats$Stats;->rel_utime:I

    move-object/from16 v0, v25

    iget v9, v0, Lcom/android/internal/os/ProcessStats$Stats;->rel_stime:I

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, v25

    iget v13, v0, Lcom/android/internal/os/ProcessStats$Stats;->rel_minfaults:I

    move-object/from16 v0, v25

    iget v14, v0, Lcom/android/internal/os/ProcessStats$Stats;->rel_majfaults:I

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v14}, Lcom/android/internal/os/ProcessStats;->printProcessCPU(Ljava/io/PrintWriter;Ljava/lang/String;ILjava/lang/String;IIIIIIII)V

    .line 727
    move-object/from16 v0, v25

    iget-boolean v2, v0, Lcom/android/internal/os/ProcessStats$Stats;->removed:Z

    if-nez v2, :cond_7

    move-object/from16 v0, v25

    iget-object v2, v0, Lcom/android/internal/os/ProcessStats$Stats;->workingThreads:Ljava/util/ArrayList;

    if-eqz v2, :cond_7

    .line 728
    move-object/from16 v0, v25

    iget-object v2, v0, Lcom/android/internal/os/ProcessStats$Stats;->workingThreads:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v15

    .line 729
    .local v15, M:I
    const/16 v18, 0x0

    .local v18, j:I
    :goto_4
    move/from16 v0, v18

    if-ge v0, v15, :cond_7

    .line 730
    move-object/from16 v0, v25

    iget-object v2, v0, Lcom/android/internal/os/ProcessStats$Stats;->workingThreads:Ljava/util/ArrayList;

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/android/internal/os/ProcessStats$Stats;

    .line 731
    .local v28, tst:Lcom/android/internal/os/ProcessStats$Stats;
    move-object/from16 v0, v28

    iget-boolean v2, v0, Lcom/android/internal/os/ProcessStats$Stats;->added:Z

    if-eqz v2, :cond_5

    const-string v4, "   +"

    :goto_5
    move-object/from16 v0, v28

    iget v5, v0, Lcom/android/internal/os/ProcessStats$Stats;->pid:I

    move-object/from16 v0, v28

    iget-object v6, v0, Lcom/android/internal/os/ProcessStats$Stats;->name:Ljava/lang/String;

    move-object/from16 v0, v25

    iget-wide v7, v0, Lcom/android/internal/os/ProcessStats$Stats;->rel_uptime:J

    const-wide/16 v9, 0x5

    add-long/2addr v7, v9

    long-to-int v2, v7

    div-int/lit8 v7, v2, 0xa

    move-object/from16 v0, v28

    iget v8, v0, Lcom/android/internal/os/ProcessStats$Stats;->rel_utime:I

    move-object/from16 v0, v28

    iget v9, v0, Lcom/android/internal/os/ProcessStats$Stats;->rel_stime:I

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v14}, Lcom/android/internal/os/ProcessStats;->printProcessCPU(Ljava/io/PrintWriter;Ljava/lang/String;ILjava/lang/String;IIIIIIII)V

    .line 729
    add-int/lit8 v18, v18, 0x1

    goto :goto_4

    .line 697
    .end local v15           #M:I
    .end local v16           #N:I
    .end local v17           #i:I
    .end local v18           #j:I
    .end local v19           #percAwake:J
    .end local v21           #sampleRealTime:J
    .end local v23           #sampleTime:J
    .end local v25           #st:Lcom/android/internal/os/ProcessStats$Stats;
    .end local v27           #totalTime:I
    .end local v28           #tst:Lcom/android/internal/os/ProcessStats$Stats;
    :cond_1
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/internal/os/ProcessStats;->mLastSampleTime:J

    sub-long v4, v4, p1

    invoke-virtual {v3, v4, v5}, Ljava/io/PrintWriter;->print(J)V

    .line 698
    const-string/jumbo v2, "ms to "

    invoke-virtual {v3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 699
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/internal/os/ProcessStats;->mCurrentSampleTime:J

    sub-long v4, v4, p1

    invoke-virtual {v3, v4, v5}, Ljava/io/PrintWriter;->print(J)V

    .line 700
    const-string/jumbo v2, "ms later"

    invoke-virtual {v3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 705
    .restart local v21       #sampleRealTime:J
    .restart local v23       #sampleTime:J
    :cond_2
    const-wide/16 v19, 0x64

    goto/16 :goto_1

    .line 724
    .restart local v16       #N:I
    .restart local v17       #i:I
    .restart local v19       #percAwake:J
    .restart local v25       #st:Lcom/android/internal/os/ProcessStats$Stats;
    .restart local v27       #totalTime:I
    :cond_3
    move-object/from16 v0, v25

    iget-boolean v2, v0, Lcom/android/internal/os/ProcessStats$Stats;->removed:Z

    if-eqz v2, :cond_4

    const-string v4, " -"

    goto/16 :goto_3

    :cond_4
    const-string v4, "  "

    goto/16 :goto_3

    .line 731
    .restart local v15       #M:I
    .restart local v18       #j:I
    .restart local v28       #tst:Lcom/android/internal/os/ProcessStats$Stats;
    :cond_5
    move-object/from16 v0, v28

    iget-boolean v2, v0, Lcom/android/internal/os/ProcessStats$Stats;->removed:Z

    if-eqz v2, :cond_6

    const-string v4, "   -"

    goto :goto_5

    :cond_6
    const-string v4, "    "

    goto :goto_5

    .line 722
    .end local v15           #M:I
    .end local v18           #j:I
    .end local v28           #tst:Lcom/android/internal/os/ProcessStats$Stats;
    :cond_7
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_2

    .line 739
    .end local v25           #st:Lcom/android/internal/os/ProcessStats$Stats;
    :cond_8
    const-string v4, ""

    const/4 v5, -0x1

    const-string v6, "TOTAL"

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/internal/os/ProcessStats;->mRelUserTime:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/internal/os/ProcessStats;->mRelSystemTime:I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/internal/os/ProcessStats;->mRelIoWaitTime:I

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/internal/os/ProcessStats;->mRelIrqTime:I

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/internal/os/ProcessStats;->mRelSoftIrqTime:I

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v2, p0

    move/from16 v7, v27

    invoke-direct/range {v2 .. v14}, Lcom/android/internal/os/ProcessStats;->printProcessCPU(Ljava/io/PrintWriter;Ljava/lang/String;ILjava/lang/String;IIIIIIII)V

    .line 742
    invoke-virtual/range {v26 .. v26}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public update()V
    .locals 26

    .prologue
    .line 275
    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/android/internal/os/ProcessStats;->mCurrentSampleTime:J

    move-object/from16 v0, p0

    iput-wide v3, v0, Lcom/android/internal/os/ProcessStats;->mLastSampleTime:J

    .line 276
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    move-object/from16 v0, p0

    iput-wide v3, v0, Lcom/android/internal/os/ProcessStats;->mCurrentSampleTime:J

    .line 277
    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/android/internal/os/ProcessStats;->mCurrentSampleRealTime:J

    move-object/from16 v0, p0

    iput-wide v3, v0, Lcom/android/internal/os/ProcessStats;->mLastSampleRealTime:J

    .line 278
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    move-object/from16 v0, p0

    iput-wide v3, v0, Lcom/android/internal/os/ProcessStats;->mCurrentSampleRealTime:J

    .line 280
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/ProcessStats;->mSystemCpuData:[J

    move-object/from16 v21, v0

    .line 281
    .local v21, sysCpu:[J
    const-string v3, "/proc/stat"

    sget-object v4, Lcom/android/internal/os/ProcessStats;->SYSTEM_CPU_FORMAT:[I

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v21

    invoke-static {v3, v4, v5, v0, v6}, Landroid/os/Process;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 284
    const/4 v3, 0x0

    aget-wide v3, v21, v3

    const/4 v5, 0x1

    aget-wide v5, v21, v5

    add-long v24, v3, v5

    .line 286
    .local v24, usertime:J
    const/4 v3, 0x2

    aget-wide v22, v21, v3

    .line 288
    .local v22, systemtime:J
    const/4 v3, 0x3

    aget-wide v9, v21, v3

    .line 290
    .local v9, idletime:J
    const/4 v3, 0x4

    aget-wide v11, v21, v3

    .line 291
    .local v11, iowaittime:J
    const/4 v3, 0x5

    aget-wide v13, v21, v3

    .line 292
    .local v13, irqtime:J
    const/4 v3, 0x6

    aget-wide v19, v21, v3

    .line 294
    .local v19, softirqtime:J
    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/android/internal/os/ProcessStats;->mBaseUserTime:J

    sub-long v3, v24, v3

    long-to-int v3, v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/os/ProcessStats;->mRelUserTime:I

    .line 295
    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/android/internal/os/ProcessStats;->mBaseSystemTime:J

    sub-long v3, v22, v3

    long-to-int v3, v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/os/ProcessStats;->mRelSystemTime:I

    .line 296
    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/android/internal/os/ProcessStats;->mBaseIoWaitTime:J

    sub-long v3, v11, v3

    long-to-int v3, v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/os/ProcessStats;->mRelIoWaitTime:I

    .line 297
    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/android/internal/os/ProcessStats;->mBaseIrqTime:J

    sub-long v3, v13, v3

    long-to-int v3, v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/os/ProcessStats;->mRelIrqTime:I

    .line 298
    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/android/internal/os/ProcessStats;->mBaseSoftIrqTime:J

    sub-long v3, v19, v3

    long-to-int v3, v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/os/ProcessStats;->mRelSoftIrqTime:I

    .line 299
    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/android/internal/os/ProcessStats;->mBaseIdleTime:J

    sub-long v3, v9, v3

    long-to-int v3, v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/os/ProcessStats;->mRelIdleTime:I

    .line 310
    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/os/ProcessStats;->mBaseUserTime:J

    .line 311
    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/os/ProcessStats;->mBaseSystemTime:J

    .line 312
    move-object/from16 v0, p0

    iput-wide v11, v0, Lcom/android/internal/os/ProcessStats;->mBaseIoWaitTime:J

    .line 313
    move-object/from16 v0, p0

    iput-wide v13, v0, Lcom/android/internal/os/ProcessStats;->mBaseIrqTime:J

    .line 314
    move-wide/from16 v0, v19

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/os/ProcessStats;->mBaseSoftIrqTime:J

    .line 315
    move-object/from16 v0, p0

    iput-wide v9, v0, Lcom/android/internal/os/ProcessStats;->mBaseIdleTime:J

    .line 318
    .end local v9           #idletime:J
    .end local v11           #iowaittime:J
    .end local v13           #irqtime:J
    .end local v19           #softirqtime:J
    .end local v22           #systemtime:J
    .end local v24           #usertime:J
    :cond_0
    const-string v4, "/proc"

    const/4 v5, -0x1

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/internal/os/ProcessStats;->mFirst:Z

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/os/ProcessStats;->mCurPids:[I

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/os/ProcessStats;->mProcStats:Ljava/util/ArrayList;

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/internal/os/ProcessStats;->collectStats(Ljava/lang/String;IZ[ILjava/util/ArrayList;)[I

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/os/ProcessStats;->mCurPids:[I

    .line 320
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/ProcessStats;->mLoadAverageData:[F

    move-object/from16 v18, v0

    .line 321
    .local v18, loadAverages:[F
    const-string v3, "/proc/loadavg"

    sget-object v4, Lcom/android/internal/os/ProcessStats;->LOAD_AVERAGE_FORMAT:[I

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v18

    invoke-static {v3, v4, v5, v6, v0}, Landroid/os/Process;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 323
    const/4 v3, 0x0

    aget v15, v18, v3

    .line 324
    .local v15, load1:F
    const/4 v3, 0x1

    aget v17, v18, v3

    .line 325
    .local v17, load5:F
    const/4 v3, 0x2

    aget v16, v18, v3

    .line 326
    .local v16, load15:F
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/os/ProcessStats;->mLoad1:F

    cmpl-float v3, v15, v3

    if-nez v3, :cond_1

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/os/ProcessStats;->mLoad5:F

    cmpl-float v3, v17, v3

    if-nez v3, :cond_1

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/os/ProcessStats;->mLoad15:F

    cmpl-float v3, v16, v3

    if-eqz v3, :cond_2

    .line 327
    :cond_1
    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/internal/os/ProcessStats;->mLoad1:F

    .line 328
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/os/ProcessStats;->mLoad5:F

    .line 329
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/os/ProcessStats;->mLoad15:F

    .line 330
    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v16

    invoke-virtual {v0, v15, v1, v2}, Lcom/android/internal/os/ProcessStats;->onLoadChanged(FFF)V

    .line 337
    .end local v15           #load1:F
    .end local v16           #load15:F
    .end local v17           #load5:F
    :cond_2
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/os/ProcessStats;->mWorkingProcsSorted:Z

    .line 338
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/os/ProcessStats;->mFirst:Z

    .line 339
    return-void
.end method

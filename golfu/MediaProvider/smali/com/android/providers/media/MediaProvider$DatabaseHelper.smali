.class final Lcom/android/providers/media/MediaProvider$DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "MediaProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/media/MediaProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "DatabaseHelper"
.end annotation


# static fields
.field private static final DB_TMPFILE_PAT:Ljava/util/regex/Pattern;


# instance fields
.field mAlbumCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field mArtistCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field final mContext:Landroid/content/Context;

.field final mEarlyUpgrade:Z

.field final mInternal:Z

.field final mName:Ljava/lang/String;

.field final mObjectRemovedCallback:Landroid/database/sqlite/SQLiteDatabase$CustomFunction;

.field mUpgradeAttempted:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 286
    const-string v0, "\\.db-\\w+\\z"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->DB_TMPFILE_PAT:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;ZZLandroid/database/sqlite/SQLiteDatabase$CustomFunction;)V
    .locals 2
    .parameter "context"
    .parameter "name"
    .parameter "internal"
    .parameter "earlyUpgrade"
    .parameter "objectRemovedCallback"

    .prologue
    .line 302
    const/4 v0, 0x0

    const/16 v1, 0x198

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 296
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mArtistCache:Ljava/util/HashMap;

    .line 297
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mAlbumCache:Ljava/util/HashMap;

    .line 303
    iput-object p1, p0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    .line 304
    iput-object p2, p0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mName:Ljava/lang/String;

    .line 305
    iput-boolean p3, p0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mInternal:Z

    .line 306
    iput-boolean p4, p0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mEarlyUpgrade:Z

    .line 307
    iput-object p5, p0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mObjectRemovedCallback:Landroid/database/sqlite/SQLiteDatabase$CustomFunction;

    .line 308
    return-void
.end method


# virtual methods
.method public declared-synchronized getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 5

    .prologue
    .line 330
    monitor-enter p0

    const/4 v1, 0x0

    .line 331
    .local v1, result:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v2, 0x0

    :try_start_0
    iput-boolean v2, p0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mUpgradeAttempted:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 333
    :try_start_1
    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    .line 344
    :cond_0
    if-nez v1, :cond_1

    :try_start_2
    iget-boolean v2, p0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mUpgradeAttempted:Z

    if-eqz v2, :cond_1

    .line 345
    iget-object v2, p0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 346
    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v1

    :cond_1
    move-object v2, v1

    .line 348
    :goto_0
    monitor-exit p0

    return-object v2

    .line 334
    :catch_0
    move-exception v0

    .line 335
    .local v0, e:Ljava/lang/Exception;
    :try_start_3
    iget-boolean v2, p0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mUpgradeAttempted:Z

    if-nez v2, :cond_0

    .line 336
    invoke-static {}, Lcom/android/providers/media/MediaProvider;->access$400()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "failed to open database "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 337
    const/4 v2, 0x0

    goto :goto_0

    .line 330
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .parameter "db"

    .prologue
    .line 315
    iget-boolean v0, p0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mInternal:Z

    const/4 v1, 0x0

    const/16 v2, 0x198

    #calls: Lcom/android/providers/media/MediaProvider;->updateDatabase(Landroid/database/sqlite/SQLiteDatabase;ZII)V
    invoke-static {p1, v0, v1, v2}, Lcom/android/providers/media/MediaProvider;->access$800(Landroid/database/sqlite/SQLiteDatabase;ZII)V

    .line 316
    return-void
.end method

.method public onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 28
    .parameter "db"

    .prologue
    .line 362
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->enableWriteAheadLogging()Z

    .line 364
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mInternal:Z

    move/from16 v25, v0

    if-eqz v25, :cond_1

    .line 456
    :cond_0
    return-void

    .line 366
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mEarlyUpgrade:Z

    move/from16 v25, v0

    if-nez v25, :cond_0

    .line 368
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mObjectRemovedCallback:Landroid/database/sqlite/SQLiteDatabase$CustomFunction;

    move-object/from16 v25, v0

    if-eqz v25, :cond_2

    .line 369
    const-string v25, "_OBJECT_REMOVED"

    const/16 v26, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mObjectRemovedCallback:Landroid/database/sqlite/SQLiteDatabase$CustomFunction;

    move-object/from16 v27, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    move/from16 v2, v26

    move-object/from16 v3, v27

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->addCustomFunction(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CustomFunction;)V

    .line 373
    :cond_2
    invoke-static {}, Landroid/os/Environment;->isExternalStorageRemovable()Z

    move-result v25

    if-eqz v25, :cond_0

    .line 376
    new-instance v9, Ljava/io/File;

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-direct {v9, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 377
    .local v9, file:Ljava/io/File;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    .line 378
    .local v18, now:J
    move-wide/from16 v0, v18

    invoke-virtual {v9, v0, v1}, Ljava/io/File;->setLastModified(J)Z

    .line 381
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/content/Context;->databaseList()[Ljava/lang/String;

    move-result-object v6

    .line 382
    .local v6, databases:[Ljava/lang/String;
    invoke-virtual {v6}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    .line 383
    .local v7, dbFiles:[Ljava/lang/String;
    array-length v5, v6

    .line 384
    .local v5, count:I
    const/4 v13, 0x3

    .line 387
    .local v13, limit:I
    const-wide v25, 0x134fd9000L

    sub-long v23, v18, v25

    .line 388
    .local v23, twoMonthsAgo:J
    const/4 v10, 0x0

    .local v10, i:I
    :goto_0
    array-length v0, v6

    move/from16 v25, v0

    move/from16 v0, v25

    if-ge v10, v0, :cond_a

    .line 390
    sget-object v25, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->DB_TMPFILE_PAT:Ljava/util/regex/Pattern;

    aget-object v26, v6, v10

    invoke-virtual/range {v25 .. v26}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/util/regex/Matcher;->find()Z

    move-result v25

    if-eqz v25, :cond_4

    .line 391
    const/16 v25, 0x0

    aput-object v25, v6, v10

    .line 392
    add-int/lit8 v5, v5, -0x1

    .line 388
    :cond_3
    :goto_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 396
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    aget-object v26, v6, v10

    invoke-virtual/range {v25 .. v26}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v20

    .line 397
    .local v20, other:Ljava/io/File;
    const-string v25, "internal.db"

    aget-object v26, v6, v10

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_5

    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_6

    .line 398
    :cond_5
    const/16 v25, 0x0

    aput-object v25, v6, v10

    .line 399
    add-int/lit8 v5, v5, -0x1

    .line 400
    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_3

    .line 403
    add-int/lit8 v13, v13, -0x1

    goto :goto_1

    .line 406
    :cond_6
    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->lastModified()J

    move-result-wide v21

    .line 407
    .local v21, time:J
    cmp-long v25, v21, v23

    if-gez v25, :cond_3

    .line 411
    aget-object v17, v6, v10

    .line 412
    .local v17, name:Ljava/lang/String;
    move-object v4, v7

    .local v4, arr$:[Ljava/lang/String;
    array-length v12, v4

    .local v12, len$:I
    const/4 v11, 0x0

    .local v11, i$:I
    :goto_2
    if-ge v11, v12, :cond_8

    aget-object v8, v4, v11

    .line 413
    .local v8, f:Ljava/lang/String;
    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_7

    .line 414
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v8}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    .line 412
    :cond_7
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 418
    .end local v8           #f:Ljava/lang/String;
    :cond_8
    const/16 v25, 0x0

    aput-object v25, v6, v10

    .line 419
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    .line 452
    .end local v20           #other:Ljava/io/File;
    .end local v21           #time:J
    .local v14, lruIndex:I
    .local v15, lruTime:J
    :cond_9
    const/16 v25, 0x0

    aput-object v25, v6, v14

    .line 453
    add-int/lit8 v5, v5, -0x1

    .line 426
    .end local v4           #arr$:[Ljava/lang/String;
    .end local v11           #i$:I
    .end local v12           #len$:I
    .end local v14           #lruIndex:I
    .end local v15           #lruTime:J
    .end local v17           #name:Ljava/lang/String;
    :cond_a
    if-le v5, v13, :cond_0

    .line 427
    const/4 v14, -0x1

    .line 428
    .restart local v14       #lruIndex:I
    const-wide/16 v15, 0x0

    .line 430
    .restart local v15       #lruTime:J
    const/4 v10, 0x0

    :goto_3
    array-length v0, v6

    move/from16 v25, v0

    move/from16 v0, v25

    if-ge v10, v0, :cond_d

    .line 431
    aget-object v25, v6, v10

    if-eqz v25, :cond_c

    .line 432
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    aget-object v26, v6, v10

    invoke-virtual/range {v25 .. v26}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/io/File;->lastModified()J

    move-result-wide v21

    .line 433
    .restart local v21       #time:J
    const-wide/16 v25, 0x0

    cmp-long v25, v15, v25

    if-eqz v25, :cond_b

    cmp-long v25, v21, v15

    if-gez v25, :cond_c

    .line 434
    :cond_b
    move v14, v10

    .line 435
    move-wide/from16 v15, v21

    .line 430
    .end local v21           #time:J
    :cond_c
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 441
    :cond_d
    const/16 v25, -0x1

    move/from16 v0, v25

    if-eq v14, v0, :cond_a

    .line 445
    aget-object v17, v6, v14

    .line 446
    .restart local v17       #name:Ljava/lang/String;
    move-object v4, v7

    .restart local v4       #arr$:[Ljava/lang/String;
    array-length v12, v4

    .restart local v12       #len$:I
    const/4 v11, 0x0

    .restart local v11       #i$:I
    :goto_4
    if-ge v11, v12, :cond_9

    aget-object v8, v4, v11

    .line 447
    .restart local v8       #f:Ljava/lang/String;
    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_e

    .line 448
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v8}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    .line 446
    :cond_e
    add-int/lit8 v11, v11, 0x1

    goto :goto_4
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1
    .parameter "db"
    .parameter "oldV"
    .parameter "newV"

    .prologue
    .line 324
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mUpgradeAttempted:Z

    .line 325
    iget-boolean v0, p0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mInternal:Z

    #calls: Lcom/android/providers/media/MediaProvider;->updateDatabase(Landroid/database/sqlite/SQLiteDatabase;ZII)V
    invoke-static {p1, v0, p2, p3}, Lcom/android/providers/media/MediaProvider;->access$800(Landroid/database/sqlite/SQLiteDatabase;ZII)V

    .line 326
    return-void
.end method

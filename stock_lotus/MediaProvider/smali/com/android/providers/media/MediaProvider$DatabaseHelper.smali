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

.field mSemcExt:Lcom/android/providers/media/SemcMediaExtensions;

.field mUpgradeAttempted:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;ZZLandroid/database/sqlite/SQLiteDatabase$CustomFunction;)V
    .locals 2
    .parameter "context"
    .parameter "name"
    .parameter "internal"
    .parameter "earlyUpgrade"
    .parameter "objectRemovedCallback"

    .prologue
    .line 610
    const/4 v0, 0x0

    const/16 v1, 0x198

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 604
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mArtistCache:Ljava/util/HashMap;

    .line 605
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mAlbumCache:Ljava/util/HashMap;

    .line 611
    iput-object p1, p0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    .line 612
    iput-object p2, p0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mName:Ljava/lang/String;

    .line 613
    iput-boolean p3, p0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mInternal:Z

    .line 614
    iput-boolean p4, p0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mEarlyUpgrade:Z

    .line 615
    iput-object p5, p0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mObjectRemovedCallback:Landroid/database/sqlite/SQLiteDatabase$CustomFunction;

    .line 616
    new-instance v0, Lcom/android/providers/media/SemcMediaExtensions;

    invoke-direct {v0}, Lcom/android/providers/media/SemcMediaExtensions;-><init>()V

    iput-object v0, p0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mSemcExt:Lcom/android/providers/media/SemcMediaExtensions;

    .line 617
    return-void
.end method


# virtual methods
.method public declared-synchronized getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 5

    .prologue
    .line 648
    monitor-enter p0

    const/4 v1, 0x0

    .line 649
    .local v1, result:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v2, 0x0

    :try_start_0
    iput-boolean v2, p0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mUpgradeAttempted:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 651
    :try_start_1
    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    .line 662
    :cond_0
    if-nez v1, :cond_1

    :try_start_2
    iget-boolean v2, p0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mUpgradeAttempted:Z

    if-eqz v2, :cond_1

    .line 663
    iget-object v2, p0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 664
    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 670
    :cond_1
    iget-object v2, p0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mSemcExt:Lcom/android/providers/media/SemcMediaExtensions;

    invoke-virtual {v2, v1}, Lcom/android/providers/media/SemcMediaExtensions;->checkExtensions(Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 671
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 672
    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v1

    :cond_2
    move-object v2, v1

    .line 675
    :goto_0
    monitor-exit p0

    return-object v2

    .line 652
    :catch_0
    move-exception v0

    .line 653
    .local v0, e:Ljava/lang/Exception;
    :try_start_3
    iget-boolean v2, p0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mUpgradeAttempted:Z

    if-nez v2, :cond_0

    .line 654
    invoke-static {}, Lcom/android/providers/media/MediaProvider;->access$100()Ljava/lang/String;

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

    .line 655
    const/4 v2, 0x0

    goto :goto_0

    .line 648
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
    .line 624
    iget-boolean v0, p0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mInternal:Z

    const/4 v1, 0x0

    const/16 v2, 0x198

    #calls: Lcom/android/providers/media/MediaProvider;->updateDatabase(Landroid/database/sqlite/SQLiteDatabase;ZII)V
    invoke-static {p1, v0, v1, v2}, Lcom/android/providers/media/MediaProvider;->access$400(Landroid/database/sqlite/SQLiteDatabase;ZII)V

    .line 625
    return-void
.end method

.method public onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 22
    .parameter "db"

    .prologue
    .line 689
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->enableWriteAheadLogging()Z

    .line 691
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mInternal:Z

    move/from16 v19, v0

    if-eqz v19, :cond_1

    .line 763
    :cond_0
    return-void

    .line 693
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mEarlyUpgrade:Z

    move/from16 v19, v0

    if-nez v19, :cond_0

    .line 695
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mObjectRemovedCallback:Landroid/database/sqlite/SQLiteDatabase$CustomFunction;

    move-object/from16 v19, v0

    if-eqz v19, :cond_2

    .line 696
    const-string v19, "_OBJECT_REMOVED"

    const/16 v20, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mObjectRemovedCallback:Landroid/database/sqlite/SQLiteDatabase$CustomFunction;

    move-object/from16 v21, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move/from16 v2, v20

    move-object/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->addCustomFunction(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CustomFunction;)V

    .line 700
    :cond_2
    invoke-static {}, Landroid/os/Environment;->isExternalStorageRemovable()Z

    move-result v19

    if-eqz v19, :cond_0

    .line 703
    new-instance v6, Ljava/io/File;

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 704
    .local v6, file:Ljava/io/File;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 705
    .local v12, now:J
    invoke-virtual {v6, v12, v13}, Ljava/io/File;->setLastModified(J)Z

    .line 708
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->databaseList()[Ljava/lang/String;

    move-result-object v5

    .line 709
    .local v5, databases:[Ljava/lang/String;
    array-length v4, v5

    .line 710
    .local v4, count:I
    const/4 v8, 0x3

    .line 713
    .local v8, limit:I
    const-wide v19, 0x134fd9000L

    sub-long v17, v12, v19

    .line 714
    .local v17, twoMonthsAgo:J
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    array-length v0, v5

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v7, v0, :cond_8

    .line 715
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    aget-object v20, v5, v7

    invoke-virtual/range {v19 .. v20}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v14

    .line 716
    .local v14, other:Ljava/io/File;
    const-string v19, "internal.db"

    aget-object v20, v5, v7

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_3

    invoke-virtual {v6, v14}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_5

    .line 717
    :cond_3
    const/16 v19, 0x0

    aput-object v19, v5, v7

    .line 718
    add-int/lit8 v4, v4, -0x1

    .line 719
    invoke-virtual {v6, v14}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_4

    .line 722
    add-int/lit8 v8, v8, -0x1

    .line 714
    :cond_4
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 724
    :cond_5
    aget-object v19, v5, v7

    invoke-static/range {v19 .. v19}, Lcom/android/providers/media/MediaProvider;->isMediaDatabaseName(Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_6

    .line 726
    const/16 v19, 0x0

    aput-object v19, v5, v7

    .line 727
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 729
    :cond_6
    invoke-virtual {v14}, Ljava/io/File;->lastModified()J

    move-result-wide v15

    .line 730
    .local v15, time:J
    cmp-long v19, v15, v17

    if-gez v19, :cond_4

    .line 732
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    aget-object v20, v5, v7

    invoke-virtual/range {v19 .. v20}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    .line 733
    const/16 v19, 0x0

    aput-object v19, v5, v7

    .line 734
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 756
    .end local v14           #other:Ljava/io/File;
    .end local v15           #time:J
    .local v9, lruIndex:I
    .local v10, lruTime:J
    :cond_7
    const/16 v19, -0x1

    move/from16 v0, v19

    if-eq v9, v0, :cond_8

    .line 758
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    aget-object v20, v5, v9

    invoke-virtual/range {v19 .. v20}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    .line 759
    const/16 v19, 0x0

    aput-object v19, v5, v9

    .line 760
    add-int/lit8 v4, v4, -0x1

    .line 741
    .end local v9           #lruIndex:I
    .end local v10           #lruTime:J
    :cond_8
    if-le v4, v8, :cond_0

    .line 742
    const/4 v9, -0x1

    .line 743
    .restart local v9       #lruIndex:I
    const-wide/16 v10, 0x0

    .line 745
    .restart local v10       #lruTime:J
    const/4 v7, 0x0

    :goto_2
    array-length v0, v5

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v7, v0, :cond_7

    .line 746
    aget-object v19, v5, v7

    if-eqz v19, :cond_a

    .line 747
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    aget-object v20, v5, v7

    invoke-virtual/range {v19 .. v20}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->lastModified()J

    move-result-wide v15

    .line 748
    .restart local v15       #time:J
    const-wide/16 v19, 0x0

    cmp-long v19, v10, v19

    if-eqz v19, :cond_9

    cmp-long v19, v15, v10

    if-gez v19, :cond_a

    .line 749
    :cond_9
    move v9, v7

    .line 750
    move-wide v10, v15

    .line 745
    .end local v15           #time:J
    :cond_a
    add-int/lit8 v7, v7, 0x1

    goto :goto_2
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 3
    .parameter "db"
    .parameter "oldV"
    .parameter "newV"

    .prologue
    .line 633
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mUpgradeAttempted:Z

    .line 634
    iget-object v1, p0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mSemcExt:Lcom/android/providers/media/SemcMediaExtensions;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/providers/media/SemcMediaExtensions;->preUpdate(Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 636
    invoke-static {}, Lcom/android/providers/media/MediaProvider;->access$500()[Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 637
    iget-object v1, p0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    const-string v2, "storage"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    .line 639
    .local v0, storageManager:Landroid/os/storage/StorageManager;
    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->getVolumePaths()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/providers/media/MediaProvider;->access$502([Ljava/lang/String;)[Ljava/lang/String;

    .line 642
    .end local v0           #storageManager:Landroid/os/storage/StorageManager;
    :cond_0
    iget-boolean v1, p0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mInternal:Z

    #calls: Lcom/android/providers/media/MediaProvider;->updateDatabase(Landroid/database/sqlite/SQLiteDatabase;ZII)V
    invoke-static {p1, v1, p2, p3}, Lcom/android/providers/media/MediaProvider;->access$400(Landroid/database/sqlite/SQLiteDatabase;ZII)V

    .line 643
    iget-object v1, p0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mSemcExt:Lcom/android/providers/media/SemcMediaExtensions;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/providers/media/SemcMediaExtensions;->postUpdate(Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 644
    return-void
.end method

.class public Landroid/database/sqlite/SQLiteStatement;
.super Landroid/database/sqlite/SQLiteProgram;
.source "SQLiteStatement.java"


# static fields
.field private static final LOCK_ACQUIRED:I = 0x2

.field private static final READ:Z = true

.field private static final TAG:Ljava/lang/String; = "SQLiteStatement"

.field private static final TRANS_STARTED:I = 0x1

.field private static final WRITE:Z


# instance fields
.field private mOrigDb:Landroid/database/sqlite/SQLiteDatabase;

.field private mState:I


# direct methods
.method constructor <init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .parameter "db"
    .parameter "sql"
    .parameter "bindArgs"

    .prologue
    .line 63
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/database/sqlite/SQLiteProgram;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/Object;Z)V

    .line 64
    return-void
.end method

.method private acquireAndLock(Z)J
    .locals 6
    .parameter "rwFlag"

    .prologue
    const/4 v5, 0x2

    .line 220
    const/4 v3, 0x0

    iput v3, p0, Landroid/database/sqlite/SQLiteStatement;->mState:I

    .line 222
    iget-object v3, p0, Landroid/database/sqlite/SQLiteStatement;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->verifyDbIsOpen()V

    .line 223
    iget v3, p0, Landroid/database/sqlite/SQLiteStatement;->mStatementType:I

    and-int/lit8 v3, v3, 0x40

    if-lez v3, :cond_3

    iget-object v3, p0, Landroid/database/sqlite/SQLiteStatement;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v4, p0, Landroid/database/sqlite/SQLiteStatement;->mSql:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->getDbConnection(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 226
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    :goto_0
    iget-object v3, p0, Landroid/database/sqlite/SQLiteStatement;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    iput-object v3, p0, Landroid/database/sqlite/SQLiteStatement;->mOrigDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 227
    iput-object v0, p0, Landroid/database/sqlite/SQLiteStatement;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 228
    iget-object v3, p0, Landroid/database/sqlite/SQLiteStatement;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    iget v3, v3, Landroid/database/sqlite/SQLiteDatabase;->mNativeHandle:I

    invoke-virtual {p0, v3}, Landroid/database/sqlite/SQLiteStatement;->setNativeHandle(I)V

    .line 229
    iget-object v3, p0, Landroid/database/sqlite/SQLiteStatement;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->isMemoryDatabase()Z

    move-result v3

    if-nez v3, :cond_0

    .line 230
    if-nez p1, :cond_4

    .line 231
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v3

    invoke-interface {v3}, Ldalvik/system/BlockGuard$Policy;->onWriteToDisk()V

    .line 243
    :cond_0
    :goto_1
    iget v3, p0, Landroid/database/sqlite/SQLiteStatement;->mStatementType:I

    and-int/lit8 v3, v3, 0xf

    const/4 v4, 0x4

    if-ne v3, v4, :cond_5

    .line 244
    iget-object v3, p0, Landroid/database/sqlite/SQLiteStatement;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->isDbLockedByCurrentThread()Z

    move-result v3

    if-nez v3, :cond_1

    .line 247
    iget-object v3, p0, Landroid/database/sqlite/SQLiteStatement;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionUsingExecSqlFlag()V

    .line 258
    :cond_1
    :goto_2
    iget-object v3, p0, Landroid/database/sqlite/SQLiteStatement;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->isDbLockedByCurrentThread()Z

    move-result v3

    if-nez v3, :cond_2

    .line 259
    iget-object v3, p0, Landroid/database/sqlite/SQLiteStatement;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v4, p0, Landroid/database/sqlite/SQLiteStatement;->mSql:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->lock(Ljava/lang/String;)V

    .line 260
    iput v5, p0, Landroid/database/sqlite/SQLiteStatement;->mState:I

    .line 263
    :cond_2
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteStatement;->acquireReference()V

    .line 264
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 265
    .local v1, startTime:J
    iget-object v3, p0, Landroid/database/sqlite/SQLiteStatement;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->closePendingStatements()V

    .line 266
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteStatement;->compileAndbindAllArgs()V

    .line 267
    return-wide v1

    .line 223
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v1           #startTime:J
    :cond_3
    iget-object v0, p0, Landroid/database/sqlite/SQLiteStatement;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    goto :goto_0

    .line 233
    .restart local v0       #db:Landroid/database/sqlite/SQLiteDatabase;
    :cond_4
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v3

    invoke-interface {v3}, Ldalvik/system/BlockGuard$Policy;->onReadFromDisk()V

    goto :goto_1

    .line 249
    :cond_5
    iget v3, p0, Landroid/database/sqlite/SQLiteStatement;->mStatementType:I

    and-int/lit8 v3, v3, 0xf

    if-ne v3, v5, :cond_1

    .line 252
    iget-object v3, p0, Landroid/database/sqlite/SQLiteStatement;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v3

    if-nez v3, :cond_1

    .line 253
    iget-object v3, p0, Landroid/database/sqlite/SQLiteStatement;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransactionNonExclusive()V

    .line 254
    const/4 v3, 0x1

    iput v3, p0, Landroid/database/sqlite/SQLiteStatement;->mState:I

    goto :goto_2
.end method

.method private final native native_1x1_blob_ashmem()Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private final native native_1x1_long()J
.end method

.method private final native native_1x1_string()Ljava/lang/String;
.end method

.method private final native native_execute()I
.end method

.method private final native native_executeInsert()J
.end method

.method private final native native_executeSql(Ljava/lang/String;)V
.end method

.method private releaseAndUnlock()V
    .locals 2

    .prologue
    .line 274
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteStatement;->releaseReference()V

    .line 275
    iget v0, p0, Landroid/database/sqlite/SQLiteStatement;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 277
    :try_start_0
    iget-object v0, p0, Landroid/database/sqlite/SQLiteStatement;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 279
    iget-object v0, p0, Landroid/database/sqlite/SQLiteStatement;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 284
    :cond_0
    :goto_0
    iget v0, p0, Landroid/database/sqlite/SQLiteStatement;->mStatementType:I

    and-int/lit8 v0, v0, 0xf

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    iget v0, p0, Landroid/database/sqlite/SQLiteStatement;->mStatementType:I

    and-int/lit8 v0, v0, 0xf

    const/4 v1, 0x6

    if-ne v0, v1, :cond_2

    .line 288
    :cond_1
    iget-object v0, p0, Landroid/database/sqlite/SQLiteStatement;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->resetTransactionUsingExecSqlFlag()V

    .line 290
    :cond_2
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V

    .line 293
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteStatement;->release()V

    .line 295
    iget-object v0, p0, Landroid/database/sqlite/SQLiteStatement;->mOrigDb:Landroid/database/sqlite/SQLiteDatabase;

    iput-object v0, p0, Landroid/database/sqlite/SQLiteStatement;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 296
    iget-object v0, p0, Landroid/database/sqlite/SQLiteStatement;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/database/sqlite/SQLiteStatement;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    iget v0, v0, Landroid/database/sqlite/SQLiteDatabase;->mNativeHandle:I

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteStatement;->setNativeHandle(I)V

    .line 297
    :cond_3
    return-void

    .line 279
    :catchall_0
    move-exception v0

    iget-object v1, p0, Landroid/database/sqlite/SQLiteStatement;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0

    .line 281
    :cond_4
    iget v0, p0, Landroid/database/sqlite/SQLiteStatement;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 282
    iget-object v0, p0, Landroid/database/sqlite/SQLiteStatement;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->unlock()V

    goto :goto_0
.end method

.method private saveSqlAsLastSqlStatement()V
    .locals 2

    .prologue
    .line 124
    iget v0, p0, Landroid/database/sqlite/SQLiteStatement;->mStatementType:I

    and-int/lit8 v0, v0, 0xf

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p0, Landroid/database/sqlite/SQLiteStatement;->mStatementType:I

    and-int/lit8 v0, v0, 0xf

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 128
    :cond_0
    iget-object v0, p0, Landroid/database/sqlite/SQLiteStatement;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v1, p0, Landroid/database/sqlite/SQLiteStatement;->mSql:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->setLastSqlStatement(Ljava/lang/String;)V

    .line 130
    :cond_1
    return-void
.end method


# virtual methods
.method public execute()V
    .locals 0

    .prologue
    .line 74
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteStatement;->executeUpdateDelete()I

    .line 75
    return-void
.end method

.method public executeInsert()J
    .locals 2

    .prologue
    .line 115
    :try_start_0
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteStatement;->saveSqlAsLastSqlStatement()V

    .line 116
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/database/sqlite/SQLiteStatement;->acquireAndLock(Z)J

    .line 117
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteStatement;->native_executeInsert()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    .line 119
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteStatement;->releaseAndUnlock()V

    return-wide v0

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Landroid/database/sqlite/SQLiteStatement;->releaseAndUnlock()V

    throw v0
.end method

.method public executeUpdateDelete()I
    .locals 2

    .prologue
    .line 87
    :try_start_0
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteStatement;->saveSqlAsLastSqlStatement()V

    .line 88
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Landroid/database/sqlite/SQLiteStatement;->acquireAndLock(Z)J

    .line 89
    const/4 v0, 0x0

    .line 90
    .local v0, numChanges:I
    iget v1, p0, Landroid/database/sqlite/SQLiteStatement;->mStatementType:I

    and-int/lit8 v1, v1, 0x20

    if-lez v1, :cond_0

    .line 94
    iget-object v1, p0, Landroid/database/sqlite/SQLiteStatement;->mSql:Ljava/lang/String;

    invoke-direct {p0, v1}, Landroid/database/sqlite/SQLiteStatement;->native_executeSql(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    :goto_0
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteStatement;->releaseAndUnlock()V

    return v0

    .line 96
    :cond_0
    :try_start_1
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteStatement;->native_execute()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 100
    .end local v0           #numChanges:I
    :catchall_0
    move-exception v1

    invoke-direct {p0}, Landroid/database/sqlite/SQLiteStatement;->releaseAndUnlock()V

    throw v1
.end method

.method public simpleQueryForBlobFileDescriptor()Landroid/os/ParcelFileDescriptor;
    .locals 8

    .prologue
    .line 187
    const/4 v5, 0x1

    :try_start_0
    invoke-direct {p0, v5}, Landroid/database/sqlite/SQLiteStatement;->acquireAndLock(Z)J

    move-result-wide v3

    .line 188
    .local v3, timeStart:J
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteStatement;->native_1x1_blob_ashmem()Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    .line 189
    .local v2, retValue:Landroid/os/ParcelFileDescriptor;
    iget-object v5, p0, Landroid/database/sqlite/SQLiteStatement;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v6, p0, Landroid/database/sqlite/SQLiteStatement;->mSql:Ljava/lang/String;

    invoke-virtual {v5, v6, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->logTimeStat(Ljava/lang/String;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteDoneException; {:try_start_0 .. :try_end_0} :catch_1

    .line 199
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteStatement;->releaseAndUnlock()V

    .end local v2           #retValue:Landroid/os/ParcelFileDescriptor;
    .end local v3           #timeStart:J
    :goto_0
    return-object v2

    .line 191
    :catch_0
    move-exception v1

    .line 192
    .local v1, ex:Ljava/io/IOException;
    :try_start_1
    const-string v5, "SQLiteStatement"

    const-string/jumbo v6, "simpleQueryForBlobFileDescriptor() failed"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 193
    const/4 v2, 0x0

    .line 199
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteStatement;->releaseAndUnlock()V

    goto :goto_0

    .line 194
    .end local v1           #ex:Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 195
    .local v0, e:Landroid/database/sqlite/SQLiteDoneException;
    :try_start_2
    new-instance v5, Landroid/database/sqlite/SQLiteDoneException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "expected 1 row from this query but query returned no data. check the query: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/database/sqlite/SQLiteStatement;->mSql:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/database/sqlite/SQLiteDoneException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 199
    .end local v0           #e:Landroid/database/sqlite/SQLiteDoneException;
    :catchall_0
    move-exception v5

    invoke-direct {p0}, Landroid/database/sqlite/SQLiteStatement;->releaseAndUnlock()V

    throw v5
.end method

.method public simpleQueryForLong()J
    .locals 8

    .prologue
    .line 141
    const/4 v5, 0x1

    :try_start_0
    invoke-direct {p0, v5}, Landroid/database/sqlite/SQLiteStatement;->acquireAndLock(Z)J

    move-result-wide v3

    .line 142
    .local v3, timeStart:J
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteStatement;->native_1x1_long()J

    move-result-wide v1

    .line 143
    .local v1, retValue:J
    iget-object v5, p0, Landroid/database/sqlite/SQLiteStatement;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v6, p0, Landroid/database/sqlite/SQLiteStatement;->mSql:Ljava/lang/String;

    invoke-virtual {v5, v6, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->logTimeStat(Ljava/lang/String;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteDoneException; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteStatement;->releaseAndUnlock()V

    return-wide v1

    .line 145
    .end local v1           #retValue:J
    .end local v3           #timeStart:J
    :catch_0
    move-exception v0

    .line 146
    .local v0, e:Landroid/database/sqlite/SQLiteDoneException;
    :try_start_1
    new-instance v5, Landroid/database/sqlite/SQLiteDoneException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "expected 1 row from this query but query returned no data. check the query: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/database/sqlite/SQLiteStatement;->mSql:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/database/sqlite/SQLiteDoneException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 150
    .end local v0           #e:Landroid/database/sqlite/SQLiteDoneException;
    :catchall_0
    move-exception v5

    invoke-direct {p0}, Landroid/database/sqlite/SQLiteStatement;->releaseAndUnlock()V

    throw v5
.end method

.method public simpleQueryForString()Ljava/lang/String;
    .locals 7

    .prologue
    .line 164
    const/4 v4, 0x1

    :try_start_0
    invoke-direct {p0, v4}, Landroid/database/sqlite/SQLiteStatement;->acquireAndLock(Z)J

    move-result-wide v2

    .line 165
    .local v2, timeStart:J
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteStatement;->native_1x1_string()Ljava/lang/String;

    move-result-object v1

    .line 166
    .local v1, retValue:Ljava/lang/String;
    iget-object v4, p0, Landroid/database/sqlite/SQLiteStatement;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v5, p0, Landroid/database/sqlite/SQLiteStatement;->mSql:Ljava/lang/String;

    invoke-virtual {v4, v5, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->logTimeStat(Ljava/lang/String;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteDoneException; {:try_start_0 .. :try_end_0} :catch_0

    .line 173
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteStatement;->releaseAndUnlock()V

    return-object v1

    .line 168
    .end local v1           #retValue:Ljava/lang/String;
    .end local v2           #timeStart:J
    :catch_0
    move-exception v0

    .line 169
    .local v0, e:Landroid/database/sqlite/SQLiteDoneException;
    :try_start_1
    new-instance v4, Landroid/database/sqlite/SQLiteDoneException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "expected 1 row from this query but query returned no data. check the query: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/database/sqlite/SQLiteStatement;->mSql:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/database/sqlite/SQLiteDoneException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 173
    .end local v0           #e:Landroid/database/sqlite/SQLiteDoneException;
    :catchall_0
    move-exception v4

    invoke-direct {p0}, Landroid/database/sqlite/SQLiteStatement;->releaseAndUnlock()V

    throw v4
.end method

.class public Landroid/database/sqlite/SQLiteCursor;
.super Landroid/database/AbstractWindowedCursor;
.source "SQLiteCursor.java"


# static fields
.field static final NO_COUNT:I = -0x1

.field static final TAG:Ljava/lang/String; = "SQLiteCursor"


# instance fields
.field private mColumnNameMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mColumns:[Ljava/lang/String;

.field private volatile mCount:I

.field private final mDriver:Landroid/database/sqlite/SQLiteCursorDriver;

.field private final mEditTable:Ljava/lang/String;

.field private mQuery:Landroid/database/sqlite/SQLiteQuery;

.field private final mStackTrace:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Landroid/database/sqlite/SQLiteCursorDriver;Ljava/lang/String;Landroid/database/sqlite/SQLiteQuery;)V
    .locals 5
    .parameter "driver"
    .parameter "editTable"
    .parameter "query"

    .prologue
    const/4 v4, 0x0

    invoke-direct {p0}, Landroid/database/AbstractWindowedCursor;-><init>()V

    const/4 v3, -0x1

    iput v3, p0, Landroid/database/sqlite/SQLiteCursor;->mCount:I

    if-nez p3, :cond_0

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "query object cannot be null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    iget-object v3, p3, Landroid/database/sqlite/SQLiteQuery;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v3, :cond_1

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "query.mDatabase cannot be null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1
    invoke-static {}, Landroid/os/StrictMode;->vmSqliteObjectLeaksEnabled()Z

    move-result v3

    if-eqz v3, :cond_3

    new-instance v3, Landroid/database/sqlite/DatabaseObjectNotClosedException;

    invoke-direct {v3}, Landroid/database/sqlite/DatabaseObjectNotClosedException;-><init>()V

    invoke-virtual {v3}, Landroid/database/sqlite/DatabaseObjectNotClosedException;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v3

    iput-object v3, p0, Landroid/database/sqlite/SQLiteCursor;->mStackTrace:Ljava/lang/Throwable;

    :goto_0
    iput-object p1, p0, Landroid/database/sqlite/SQLiteCursor;->mDriver:Landroid/database/sqlite/SQLiteCursorDriver;

    iput-object p2, p0, Landroid/database/sqlite/SQLiteCursor;->mEditTable:Ljava/lang/String;

    iput-object v4, p0, Landroid/database/sqlite/SQLiteCursor;->mColumnNameMap:Ljava/util/Map;

    iput-object p3, p0, Landroid/database/sqlite/SQLiteCursor;->mQuery:Landroid/database/sqlite/SQLiteQuery;

    iget-object v3, p3, Landroid/database/sqlite/SQLiteQuery;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v4, p3, Landroid/database/sqlite/SQLiteQuery;->mSql:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->lock(Ljava/lang/String;)V

    :try_start_0
    iget-object v3, p0, Landroid/database/sqlite/SQLiteCursor;->mQuery:Landroid/database/sqlite/SQLiteQuery;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteQuery;->columnCountLocked()I

    move-result v0

    .local v0, columnCount:I
    new-array v3, v0, [Ljava/lang/String;

    iput-object v3, p0, Landroid/database/sqlite/SQLiteCursor;->mColumns:[Ljava/lang/String;

    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v0, :cond_4

    iget-object v3, p0, Landroid/database/sqlite/SQLiteCursor;->mQuery:Landroid/database/sqlite/SQLiteQuery;

    invoke-virtual {v3, v2}, Landroid/database/sqlite/SQLiteQuery;->columnNameLocked(I)Ljava/lang/String;

    move-result-object v1

    .local v1, columnName:Ljava/lang/String;
    iget-object v3, p0, Landroid/database/sqlite/SQLiteCursor;->mColumns:[Ljava/lang/String;

    aput-object v1, v3, v2

    const-string v3, "_id"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iput v2, p0, Landroid/database/sqlite/SQLiteCursor;->mRowIdColumnIndex:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v0           #columnCount:I
    .end local v1           #columnName:Ljava/lang/String;
    .end local v2           #i:I
    :cond_3
    iput-object v4, p0, Landroid/database/sqlite/SQLiteCursor;->mStackTrace:Ljava/lang/Throwable;

    goto :goto_0

    .restart local v0       #columnCount:I
    .restart local v2       #i:I
    :cond_4
    iget-object v3, p3, Landroid/database/sqlite/SQLiteQuery;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->unlock()V

    return-void

    .end local v0           #columnCount:I
    .end local v2           #i:I
    :catchall_0
    move-exception v3

    iget-object v4, p3, Landroid/database/sqlite/SQLiteQuery;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->unlock()V

    throw v3
.end method

.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteCursorDriver;Ljava/lang/String;Landroid/database/sqlite/SQLiteQuery;)V
    .locals 0
    .parameter "db"
    .parameter "driver"
    .parameter "editTable"
    .parameter "query"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    invoke-direct {p0, p2, p3, p4}, Landroid/database/sqlite/SQLiteCursor;-><init>(Landroid/database/sqlite/SQLiteCursorDriver;Ljava/lang/String;Landroid/database/sqlite/SQLiteQuery;)V

    return-void
.end method

.method private fillWindow(I)V
    .locals 4
    .parameter "startPos"

    .prologue
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteCursor;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteCursor;->clearOrCreateWindow(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/database/sqlite/SQLiteCursor;->mWindow:Landroid/database/CursorWindow;

    invoke-virtual {v1, p1}, Landroid/database/CursorWindow;->setStartPosition(I)V

    invoke-direct {p0}, Landroid/database/sqlite/SQLiteCursor;->getQuery()Landroid/database/sqlite/SQLiteQuery;

    move-result-object v1

    iget-object v2, p0, Landroid/database/sqlite/SQLiteCursor;->mWindow:Landroid/database/CursorWindow;

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteQuery;->fillWindow(Landroid/database/CursorWindow;)I

    move-result v0

    .local v0, count:I
    if-nez p1, :cond_2

    const-string v1, "SQLiteCursor"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "SQLiteCursor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "received count(*) from native_fill_window: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput v0, p0, Landroid/database/sqlite/SQLiteCursor;->mCount:I

    :cond_1
    return-void

    :cond_2
    iget v1, p0, Landroid/database/sqlite/SQLiteCursor;->mCount:I

    if-gtz v1, :cond_1

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Row count should never be zero or negative when the start position is non-zero"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private declared-synchronized getQuery()Landroid/database/sqlite/SQLiteQuery;
    .locals 1

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/database/sqlite/SQLiteCursor;->mQuery:Landroid/database/sqlite/SQLiteQuery;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    invoke-super {p0}, Landroid/database/AbstractWindowedCursor;->close()V

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/database/sqlite/SQLiteCursor;->mQuery:Landroid/database/sqlite/SQLiteQuery;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteQuery;->close()V

    iget-object v0, p0, Landroid/database/sqlite/SQLiteCursor;->mDriver:Landroid/database/sqlite/SQLiteCursorDriver;

    invoke-interface {v0}, Landroid/database/sqlite/SQLiteCursorDriver;->cursorClosed()V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public deactivate()V
    .locals 1

    .prologue
    invoke-super {p0}, Landroid/database/AbstractWindowedCursor;->deactivate()V

    iget-object v0, p0, Landroid/database/sqlite/SQLiteCursor;->mDriver:Landroid/database/sqlite/SQLiteCursorDriver;

    invoke-interface {v0}, Landroid/database/sqlite/SQLiteCursorDriver;->cursorDeactivated()V

    return-void
.end method

.method protected finalize()V
    .locals 5

    .prologue
    const/16 v1, 0x3e8

    :try_start_0
    iget-object v2, p0, Landroid/database/sqlite/SQLiteCursor;->mWindow:Landroid/database/CursorWindow;

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/database/sqlite/SQLiteCursor;->mStackTrace:Ljava/lang/Throwable;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/database/sqlite/SQLiteCursor;->mQuery:Landroid/database/sqlite/SQLiteQuery;

    iget-object v2, v2, Landroid/database/sqlite/SQLiteQuery;->mSql:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    .local v0, len:I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Finalizing a Cursor that has not been deactivated or closed. database = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/database/sqlite/SQLiteCursor;->mQuery:Landroid/database/sqlite/SQLiteQuery;

    iget-object v3, v3, Landroid/database/sqlite/SQLiteQuery;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", table = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/database/sqlite/SQLiteCursor;->mEditTable:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", query = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/database/sqlite/SQLiteCursor;->mQuery:Landroid/database/sqlite/SQLiteQuery;

    iget-object v3, v3, Landroid/database/sqlite/SQLiteQuery;->mSql:Ljava/lang/String;

    const/4 v4, 0x0

    if-le v0, v1, :cond_0

    move v0, v1

    .end local v0           #len:I
    :cond_0
    invoke-virtual {v3, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/database/sqlite/SQLiteCursor;->mStackTrace:Ljava/lang/Throwable;

    invoke-static {v1, v2}, Landroid/os/StrictMode;->onSqliteObjectLeaked(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteCursor;->close()V

    invoke-static {}, Landroid/database/sqlite/SQLiteDebug;->notifyActiveCursorFinalized()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    invoke-super {p0}, Landroid/database/AbstractWindowedCursor;->finalize()V

    return-void

    :catchall_0
    move-exception v1

    invoke-super {p0}, Landroid/database/AbstractWindowedCursor;->finalize()V

    throw v1
.end method

.method public getColumnIndex(Ljava/lang/String;)I
    .locals 10
    .parameter "columnName"

    .prologue
    const/4 v6, -0x1

    iget-object v7, p0, Landroid/database/sqlite/SQLiteCursor;->mColumnNameMap:Ljava/util/Map;

    if-nez v7, :cond_1

    iget-object v1, p0, Landroid/database/sqlite/SQLiteCursor;->mColumns:[Ljava/lang/String;

    .local v1, columns:[Ljava/lang/String;
    array-length v0, v1

    .local v0, columnCount:I
    new-instance v4, Ljava/util/HashMap;

    const/high16 v7, 0x3f80

    invoke-direct {v4, v0, v7}, Ljava/util/HashMap;-><init>(IF)V

    .local v4, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v0, :cond_0

    aget-object v7, v1, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iput-object v4, p0, Landroid/database/sqlite/SQLiteCursor;->mColumnNameMap:Ljava/util/Map;

    .end local v0           #columnCount:I
    .end local v1           #columns:[Ljava/lang/String;
    .end local v3           #i:I
    .end local v4           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_1
    const/16 v7, 0x2e

    invoke-virtual {p1, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    .local v5, periodIndex:I
    if-eq v5, v6, :cond_2

    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    .local v2, e:Ljava/lang/Exception;
    const-string v7, "SQLiteCursor"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "requesting column name with table name -- "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    add-int/lit8 v7, v5, 0x1

    invoke-virtual {p1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .end local v2           #e:Ljava/lang/Exception;
    :cond_2
    iget-object v7, p0, Landroid/database/sqlite/SQLiteCursor;->mColumnNameMap:Ljava/util/Map;

    invoke-interface {v7, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .local v3, i:Ljava/lang/Integer;
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    :cond_3
    return v6
.end method

.method public getColumnNames()[Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/database/sqlite/SQLiteCursor;->mColumns:[Ljava/lang/String;

    return-object v0
.end method

.method public getCount()I
    .locals 2

    .prologue
    iget v0, p0, Landroid/database/sqlite/SQLiteCursor;->mCount:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/database/sqlite/SQLiteCursor;->fillWindow(I)V

    :cond_0
    iget v0, p0, Landroid/database/sqlite/SQLiteCursor;->mCount:I

    return v0
.end method

.method public getDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/database/sqlite/SQLiteCursor;->mQuery:Landroid/database/sqlite/SQLiteQuery;

    iget-object v0, v0, Landroid/database/sqlite/SQLiteQuery;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onMove(II)Z
    .locals 2
    .parameter "oldPosition"
    .parameter "newPosition"

    .prologue
    iget-object v0, p0, Landroid/database/sqlite/SQLiteCursor;->mWindow:Landroid/database/CursorWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/database/sqlite/SQLiteCursor;->mWindow:Landroid/database/CursorWindow;

    invoke-virtual {v0}, Landroid/database/CursorWindow;->getStartPosition()I

    move-result v0

    if-lt p2, v0, :cond_0

    iget-object v0, p0, Landroid/database/sqlite/SQLiteCursor;->mWindow:Landroid/database/CursorWindow;

    invoke-virtual {v0}, Landroid/database/CursorWindow;->getStartPosition()I

    move-result v0

    iget-object v1, p0, Landroid/database/sqlite/SQLiteCursor;->mWindow:Landroid/database/CursorWindow;

    invoke-virtual {v1}, Landroid/database/CursorWindow;->getNumRows()I

    move-result v1

    add-int/2addr v0, v1

    if-lt p2, v0, :cond_1

    :cond_0
    invoke-direct {p0, p2}, Landroid/database/sqlite/SQLiteCursor;->fillWindow(I)V

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public requery()Z
    .locals 8

    .prologue
    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteCursor;->isClosed()Z

    move-result v5

    if-eqz v5, :cond_0

    :goto_0
    return v2

    :cond_0
    const-wide/16 v3, 0x0

    .local v3, timeStart:J
    monitor-enter p0

    :try_start_0
    iget-object v5, p0, Landroid/database/sqlite/SQLiteCursor;->mWindow:Landroid/database/CursorWindow;

    if-eqz v5, :cond_1

    iget-object v5, p0, Landroid/database/sqlite/SQLiteCursor;->mWindow:Landroid/database/CursorWindow;

    invoke-virtual {v5}, Landroid/database/CursorWindow;->clear()V

    :cond_1
    const/4 v5, -0x1

    iput v5, p0, Landroid/database/sqlite/SQLiteCursor;->mPos:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_1
    iget-object v5, p0, Landroid/database/sqlite/SQLiteCursor;->mQuery:Landroid/database/sqlite/SQLiteQuery;

    iget-object v5, v5, Landroid/database/sqlite/SQLiteQuery;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v6, p0, Landroid/database/sqlite/SQLiteCursor;->mQuery:Landroid/database/sqlite/SQLiteQuery;

    iget-object v6, v6, Landroid/database/sqlite/SQLiteQuery;->mSql:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->getDatabaseHandle(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    :try_start_2
    iget-object v5, p0, Landroid/database/sqlite/SQLiteCursor;->mQuery:Landroid/database/sqlite/SQLiteQuery;

    iget-object v5, v5, Landroid/database/sqlite/SQLiteQuery;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v5

    if-nez v5, :cond_2

    :try_start_3
    iget-object v5, p0, Landroid/database/sqlite/SQLiteCursor;->mQuery:Landroid/database/sqlite/SQLiteQuery;

    iget-object v5, v5, Landroid/database/sqlite/SQLiteQuery;->mSql:Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->lock(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_1

    :try_start_4
    iget-object v5, p0, Landroid/database/sqlite/SQLiteCursor;->mQuery:Landroid/database/sqlite/SQLiteQuery;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteQuery;->close()V

    new-instance v5, Landroid/database/sqlite/SQLiteQuery;

    iget-object v6, p0, Landroid/database/sqlite/SQLiteCursor;->mQuery:Landroid/database/sqlite/SQLiteQuery;

    invoke-direct {v5, v0, v6}, Landroid/database/sqlite/SQLiteQuery;-><init>(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteQuery;)V

    iput-object v5, p0, Landroid/database/sqlite/SQLiteCursor;->mQuery:Landroid/database/sqlite/SQLiteQuery;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_2

    :try_start_5
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->unlock()V

    :cond_2
    iget-object v5, p0, Landroid/database/sqlite/SQLiteCursor;->mDriver:Landroid/database/sqlite/SQLiteCursorDriver;

    invoke-interface {v5, p0}, Landroid/database/sqlite/SQLiteCursorDriver;->cursorRequeried(Landroid/database/Cursor;)V

    const/4 v5, -0x1

    iput v5, p0, Landroid/database/sqlite/SQLiteCursor;->mCount:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    iget-object v5, p0, Landroid/database/sqlite/SQLiteCursor;->mQuery:Landroid/database/sqlite/SQLiteQuery;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteQuery;->requery()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_6} :catch_3

    :try_start_7
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    const/4 v2, 0x0

    .local v2, result:Z
    :try_start_8
    invoke-super {p0}, Landroid/database/AbstractWindowedCursor;->requery()Z
    :try_end_8
    .catch Ljava/lang/IllegalStateException; {:try_start_8 .. :try_end_8} :catch_4

    move-result v2

    goto :goto_0

    .end local v2           #result:Z
    :catch_0
    move-exception v1

    .local v1, e:Ljava/lang/IllegalStateException;
    :try_start_9
    const-string v5, "SQLiteCursor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "requery() failed "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    monitor-exit p0

    goto :goto_0

    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v1           #e:Ljava/lang/IllegalStateException;
    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    throw v5

    .restart local v0       #db:Landroid/database/sqlite/SQLiteDatabase;
    :catch_1
    move-exception v1

    .restart local v1       #e:Ljava/lang/IllegalStateException;
    :try_start_a
    const-string v5, "SQLiteCursor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "requery() failed "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_0

    .end local v1           #e:Ljava/lang/IllegalStateException;
    :catch_2
    move-exception v1

    .restart local v1       #e:Ljava/lang/IllegalStateException;
    :try_start_b
    const-string v5, "SQLiteCursor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "requery() failed "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    :try_start_c
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->unlock()V

    monitor-exit p0

    goto/16 :goto_0

    .end local v1           #e:Ljava/lang/IllegalStateException;
    :catchall_1
    move-exception v5

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->unlock()V

    throw v5

    :catch_3
    move-exception v1

    .restart local v1       #e:Ljava/lang/IllegalStateException;
    const-string v5, "SQLiteCursor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "requery() failed "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    monitor-exit p0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto/16 :goto_0

    .end local v1           #e:Ljava/lang/IllegalStateException;
    .restart local v2       #result:Z
    :catch_4
    move-exception v1

    .restart local v1       #e:Ljava/lang/IllegalStateException;
    const-string v5, "SQLiteCursor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "requery() failed "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0
.end method

.method public setSelectionArguments([Ljava/lang/String;)V
    .locals 1
    .parameter "selectionArgs"

    .prologue
    iget-object v0, p0, Landroid/database/sqlite/SQLiteCursor;->mDriver:Landroid/database/sqlite/SQLiteCursorDriver;

    invoke-interface {v0, p1}, Landroid/database/sqlite/SQLiteCursorDriver;->setBindArguments([Ljava/lang/String;)V

    return-void
.end method

.method public setWindow(Landroid/database/CursorWindow;)V
    .locals 1
    .parameter "window"

    .prologue
    invoke-super {p0, p1}, Landroid/database/AbstractWindowedCursor;->setWindow(Landroid/database/CursorWindow;)V

    const/4 v0, -0x1

    iput v0, p0, Landroid/database/sqlite/SQLiteCursor;->mCount:I

    return-void
.end method

.class public Lcom/android/internal/telephony/IccCustProvider;
.super Landroid/content/ContentProvider;
.source "IccCustProvider.java"


# static fields
.field private static final DBG:Z = false

.field private static final EVENT_GET_READ_SIM_FLAG_DONE:I = 0x2

.field private static final EVENT_START_PROCESSING:I = 0x1

.field private static final SIM_CARD_TYPE_COLUMN_NAMES:[Ljava/lang/String; = null

.field private static final SIM_CARD_TYPE_NOT_VALID:I = -0x1

.field private static final SIM_FLAG:I = 0x1

.field private static final TAG:Ljava/lang/String; = "IccCustProvider"

.field private static final URL_MATCHER:Landroid/content/UriMatcher; = null

.field private static final WAIT_TIMEOUT:I = 0x2710


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private final mLock:Ljava/lang/Object;

.field private final mProcessReadLock:Ljava/lang/Object;

.field private mProcessingStarted:Z

.field private mRecordsToLoad:I

.field private mSimBit:I

.field private mSimByte:I

.field private mSimFile:I

.field private mSimFlagValue:I

.field private mSimFolder:Ljava/lang/String;

.field private mSimReadReady:Z

.field private mSimulator:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 43
    new-array v0, v3, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "type"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/telephony/IccCustProvider;->SIM_CARD_TYPE_COLUMN_NAMES:[Ljava/lang/String;

    .line 55
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/android/internal/telephony/IccCustProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    .line 58
    sget-object v0, Lcom/android/internal/telephony/IccCustProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "icc-cust"

    const-string/jumbo v2, "sim_card_flag"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 59
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 65
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/IccCustProvider;->mRecordsToLoad:I

    .line 67
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/IccCustProvider;->mSimFlagValue:I

    .line 69
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/IccCustProvider;->mLock:Ljava/lang/Object;

    .line 83
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/IccCustProvider;->mProcessReadLock:Ljava/lang/Object;

    .line 88
    new-instance v0, Lcom/android/internal/telephony/IccCustProvider$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/IccCustProvider$1;-><init>(Lcom/android/internal/telephony/IccCustProvider;)V

    iput-object v0, p0, Lcom/android/internal/telephony/IccCustProvider;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/IccCustProvider;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/IccCustProvider;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/IccCustProvider;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/internal/telephony/IccCustProvider;->mProcessReadLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/internal/telephony/IccCustProvider;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/internal/telephony/IccCustProvider;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/android/internal/telephony/IccCustProvider;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput-boolean p1, p0, Lcom/android/internal/telephony/IccCustProvider;->mSimReadReady:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/IccCustProvider;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/android/internal/telephony/IccCustProvider;->mProcessingStarted:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/internal/telephony/IccCustProvider;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput-boolean p1, p0, Lcom/android/internal/telephony/IccCustProvider;->mProcessingStarted:Z

    return p1
.end method

.method static synthetic access$302(Lcom/android/internal/telephony/IccCustProvider;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput p1, p0, Lcom/android/internal/telephony/IccCustProvider;->mSimFlagValue:I

    return p1
.end method

.method static synthetic access$400(Lcom/android/internal/telephony/IccCustProvider;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/internal/telephony/IccCustProvider;->mSimFolder:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/internal/telephony/IccCustProvider;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget v0, p0, Lcom/android/internal/telephony/IccCustProvider;->mSimFile:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/internal/telephony/IccCustProvider;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/internal/telephony/IccCustProvider;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/internal/telephony/IccCustProvider;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget v0, p0, Lcom/android/internal/telephony/IccCustProvider;->mRecordsToLoad:I

    return v0
.end method

.method static synthetic access$702(Lcom/android/internal/telephony/IccCustProvider;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput p1, p0, Lcom/android/internal/telephony/IccCustProvider;->mRecordsToLoad:I

    return p1
.end method

.method static synthetic access$708(Lcom/android/internal/telephony/IccCustProvider;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 38
    iget v0, p0, Lcom/android/internal/telephony/IccCustProvider;->mRecordsToLoad:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/internal/telephony/IccCustProvider;->mRecordsToLoad:I

    return v0
.end method

.method static synthetic access$710(Lcom/android/internal/telephony/IccCustProvider;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 38
    iget v0, p0, Lcom/android/internal/telephony/IccCustProvider;->mRecordsToLoad:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/android/internal/telephony/IccCustProvider;->mRecordsToLoad:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/internal/telephony/IccCustProvider;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget v0, p0, Lcom/android/internal/telephony/IccCustProvider;->mSimByte:I

    return v0
.end method

.method static synthetic access$900(Lcom/android/internal/telephony/IccCustProvider;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget v0, p0, Lcom/android/internal/telephony/IccCustProvider;->mSimBit:I

    return v0
.end method

.method private declared-synchronized fetchSimFlag(Ljava/lang/String;III)I
    .locals 6
    .parameter "simFolder"
    .parameter "simFile"
    .parameter "simByte"
    .parameter "simBit"

    .prologue
    .line 276
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/IccCustProvider;->mLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 277
    :try_start_1
    iput-object p1, p0, Lcom/android/internal/telephony/IccCustProvider;->mSimFolder:Ljava/lang/String;

    .line 278
    iput p2, p0, Lcom/android/internal/telephony/IccCustProvider;->mSimFile:I

    .line 279
    iput p3, p0, Lcom/android/internal/telephony/IccCustProvider;->mSimByte:I

    .line 280
    iput p4, p0, Lcom/android/internal/telephony/IccCustProvider;->mSimBit:I

    .line 281
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/internal/telephony/IccCustProvider;->mSimReadReady:Z

    .line 282
    :goto_0
    iget-boolean v2, p0, Lcom/android/internal/telephony/IccCustProvider;->mSimReadReady:Z

    if-nez v2, :cond_1

    .line 283
    iget-object v4, p0, Lcom/android/internal/telephony/IccCustProvider;->mProcessReadLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 284
    const/4 v2, 0x0

    :try_start_2
    iput-boolean v2, p0, Lcom/android/internal/telephony/IccCustProvider;->mProcessingStarted:Z

    .line 285
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 286
    :try_start_3
    iget-object v2, p0, Lcom/android/internal/telephony/IccCustProvider;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/internal/telephony/IccCustProvider;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 288
    :try_start_4
    iget-object v2, p0, Lcom/android/internal/telephony/IccCustProvider;->mLock:Ljava/lang/Object;

    const-wide/16 v4, 0x2710

    invoke-virtual {v2, v4, v5}, Ljava/lang/Object;->wait(J)V

    .line 289
    iget-object v4, p0, Lcom/android/internal/telephony/IccCustProvider;->mProcessReadLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0

    .line 290
    :try_start_5
    iget-boolean v2, p0, Lcom/android/internal/telephony/IccCustProvider;->mProcessingStarted:Z

    if-nez v2, :cond_0

    .line 291
    const/4 v1, -0x1

    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :try_start_6
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 301
    :goto_1
    monitor-exit p0

    return v1

    .line 285
    :catchall_0
    move-exception v2

    :try_start_7
    monitor-exit v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    throw v2

    .line 299
    :catchall_1
    move-exception v2

    monitor-exit v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    throw v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 276
    :catchall_2
    move-exception v2

    monitor-exit p0

    throw v2

    .line 293
    :cond_0
    :try_start_a
    monitor-exit v4

    goto :goto_0

    :catchall_3
    move-exception v2

    monitor-exit v4
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    :try_start_b
    throw v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_b} :catch_0

    .line 294
    :catch_0
    move-exception v0

    .line 295
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fetchSimFlag exception "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/IccCustProvider;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 298
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_1
    iget v1, p0, Lcom/android/internal/telephony/IccCustProvider;->mSimFlagValue:I

    .line 299
    .local v1, simFlag:I
    monitor-exit v3
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    goto :goto_1
.end method

.method private log(Ljava/lang/String;)V
    .locals 0
    .parameter "msg"

    .prologue
    .line 308
    return-void
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3
    .parameter "url"
    .parameter "where"
    .parameter "whereArgs"

    .prologue
    .line 246
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot delete URL: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3
    .parameter "url"

    .prologue
    .line 212
    sget-object v0, Lcom/android/internal/telephony/IccCustProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 217
    const-string v0, "getType IllegalArgumentException"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/IccCustProvider;->log(Ljava/lang/String;)V

    .line 218
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown URL "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 214
    :pswitch_0
    const-string/jumbo v0, "vnd.android.cursor.dir/sim-flag"

    return-object v0

    .line 212
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 3
    .parameter "url"
    .parameter "initialValues"

    .prologue
    .line 232
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot insert into URL: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onCreate()Z
    .locals 1

    .prologue
    .line 148
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 11
    .parameter "url"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sort"

    .prologue
    .line 167
    const/4 v0, 0x0

    .line 168
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz p4, :cond_0

    array-length v8, p4

    const/4 v9, 0x4

    if-eq v8, v9, :cond_1

    .line 169
    :cond_0
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "Incorrect selection argument"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 172
    :cond_1
    const/4 v7, 0x0

    .line 173
    .local v7, simFolder:Ljava/lang/String;
    const/4 v5, 0x0

    .line 174
    .local v5, simFile:I
    const/4 v4, 0x0

    .line 175
    .local v4, simByte:I
    const/4 v3, 0x0

    .line 177
    .local v3, simBit:I
    const/4 v8, 0x0

    :try_start_0
    aget-object v7, p4, v8

    .line 178
    const/4 v8, 0x1

    aget-object v8, p4, v8

    const/16 v9, 0x10

    invoke-static {v8, v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v5

    .line 179
    const/4 v8, 0x2

    aget-object v8, p4, v8

    const/16 v9, 0x10

    invoke-static {v8, v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    .line 180
    const/4 v8, 0x3

    aget-object v8, p4, v8

    const/16 v9, 0x10

    invoke-static {v8, v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 184
    if-lez v4, :cond_2

    if-lez v3, :cond_2

    const/16 v8, 0x8

    if-le v3, v8, :cond_3

    .line 185
    :cond_2
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "Incorrect selectionArgs argument"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 181
    :catch_0
    move-exception v1

    .line 182
    .local v1, e:Ljava/lang/NumberFormatException;
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "Incorrect selectionArgs argument"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 188
    .end local v1           #e:Ljava/lang/NumberFormatException;
    :cond_3
    sget-object v8, Lcom/android/internal/telephony/IccCustProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v8, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v8

    packed-switch v8, :pswitch_data_0

    .line 197
    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unknown URL "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 190
    :pswitch_0
    invoke-direct {p0, v7, v5, v4, v3}, Lcom/android/internal/telephony/IccCustProvider;->fetchSimFlag(Ljava/lang/String;III)I

    move-result v6

    .line 191
    .local v6, simFlag:I
    const/4 v8, 0x1

    new-array v2, v8, [Ljava/lang/Integer;

    const/4 v8, 0x0

    new-instance v9, Ljava/lang/Integer;

    invoke-direct {v9, v6}, Ljava/lang/Integer;-><init>(I)V

    aput-object v9, v2, v8

    .line 192
    .local v2, record:[Ljava/lang/Integer;
    new-instance v0, Landroid/database/MatrixCursor;

    .end local v0           #cursor:Landroid/database/Cursor;
    sget-object v8, Lcom/android/internal/telephony/IccCustProvider;->SIM_CARD_TYPE_COLUMN_NAMES:[Ljava/lang/String;

    invoke-direct {v0, v8}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .restart local v0       #cursor:Landroid/database/Cursor;
    move-object v8, v0

    .line 193
    check-cast v8, Landroid/database/MatrixCursor;

    invoke-virtual {v8, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 200
    return-object v0

    .line 188
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3
    .parameter "url"
    .parameter "values"
    .parameter "where"
    .parameter "whereArgs"

    .prologue
    .line 261
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot update URL: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

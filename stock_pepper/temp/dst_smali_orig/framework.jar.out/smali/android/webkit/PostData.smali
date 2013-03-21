.class Landroid/webkit/PostData;
.super Ljava/io/InputStream;
.source "PostData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/PostData$DataStream;
    }
.end annotation


# static fields
.field public static final DEBUG:Z = false

.field private static final LOGTAG:Ljava/lang/String; = "PostData"


# instance fields
.field private mClosed:Z

.field private final mContext:Landroid/content/Context;

.field private final mEntries:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation
.end field

.field private mMark:I

.field private mPos:I


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Landroid/webkit/PostData;->mEntries:Ljava/util/Vector;

    iput-boolean v1, p0, Landroid/webkit/PostData;->mClosed:Z

    iput-object p1, p0, Landroid/webkit/PostData;->mContext:Landroid/content/Context;

    iput v1, p0, Landroid/webkit/PostData;->mPos:I

    iput v1, p0, Landroid/webkit/PostData;->mMark:I

    return-void
.end method

.method private appendData([B)V
    .locals 2
    .parameter "data"

    .prologue
    iget-object v0, p0, Landroid/webkit/PostData;->mEntries:Ljava/util/Vector;

    new-instance v1, Landroid/webkit/PostData$DataStream;

    invoke-direct {v1, p0, p1}, Landroid/webkit/PostData$DataStream;-><init>(Landroid/webkit/PostData;[B)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/PostData;->mClosed:Z

    return-void
.end method

.method private appendFile(Ljava/lang/String;)V
    .locals 4
    .parameter "uri"

    .prologue
    :try_start_0
    iget-object v0, p0, Landroid/webkit/PostData;->mEntries:Ljava/util/Vector;

    new-instance v1, Ljava/io/BufferedInputStream;

    iget-object v2, p0, Landroid/webkit/PostData;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/PostData;->mClosed:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public available()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    iget-boolean v2, p0, Landroid/webkit/PostData;->mClosed:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/io/IOException;

    const-string v3, "Tried to use a closed stream"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    const/4 v1, 0x0

    .local v1, n:I
    iget v0, p0, Landroid/webkit/PostData;->mPos:I

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Landroid/webkit/PostData;->mEntries:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Landroid/webkit/PostData;->mEntries:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->available()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public close()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    iget-object v2, p0, Landroid/webkit/PostData;->mEntries:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/InputStream;

    .local v1, inputStream:Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_0

    .end local v1           #inputStream:Ljava/io/InputStream;
    :cond_0
    iget-object v2, p0, Landroid/webkit/PostData;->mEntries:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->clear()V

    iput v3, p0, Landroid/webkit/PostData;->mPos:I

    iput v3, p0, Landroid/webkit/PostData;->mMark:I

    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/webkit/PostData;->mClosed:Z

    return-void
.end method

.method public contains(Ljava/lang/String;)Z
    .locals 5
    .parameter "s"

    .prologue
    iget-object v4, p0, Landroid/webkit/PostData;->mEntries:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/InputStream;

    .local v2, inputStream:Ljava/io/InputStream;
    instance-of v4, v2, Landroid/webkit/PostData$DataStream;

    if-eqz v4, :cond_0

    move-object v3, v2

    check-cast v3, Landroid/webkit/PostData$DataStream;

    .local v3, stream:Landroid/webkit/PostData$DataStream;
    new-instance v0, Ljava/lang/String;

    invoke-virtual {v3}, Landroid/webkit/PostData$DataStream;->getBuf()[B

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>([B)V

    .local v0, dataString:Ljava/lang/String;
    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    .end local v0           #dataString:Ljava/lang/String;
    .end local v2           #inputStream:Ljava/io/InputStream;
    .end local v3           #stream:Landroid/webkit/PostData$DataStream;
    :goto_0
    return v4

    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public mark(I)V
    .locals 2
    .parameter "readlimit"

    .prologue
    iget v0, p0, Landroid/webkit/PostData;->mPos:I

    iput v0, p0, Landroid/webkit/PostData;->mMark:I

    iget v0, p0, Landroid/webkit/PostData;->mMark:I

    iget-object v1, p0, Landroid/webkit/PostData;->mEntries:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Landroid/webkit/PostData;->mEntries:Ljava/util/Vector;

    iget v1, p0, Landroid/webkit/PostData;->mMark:I

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->mark(I)V

    :cond_0
    return-void
.end method

.method public markSupported()Z
    .locals 1

    .prologue
    const/4 v0, 0x1

    return v0
.end method

.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    iget-boolean v1, p0, Landroid/webkit/PostData;->mClosed:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/io/IOException;

    const-string v2, "Tried to use a closed stream"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    const/4 v0, -0x1

    .local v0, n:I
    :goto_0
    iget v1, p0, Landroid/webkit/PostData;->mPos:I

    iget-object v2, p0, Landroid/webkit/PostData;->mEntries:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v1, p0, Landroid/webkit/PostData;->mEntries:Ljava/util/Vector;

    iget v2, p0, Landroid/webkit/PostData;->mPos:I

    invoke-virtual {v1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v0

    if-ltz v0, :cond_2

    :cond_1
    return v0

    :cond_2
    iget v1, p0, Landroid/webkit/PostData;->mPos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/webkit/PostData;->mPos:I

    goto :goto_0
.end method

.method public read([BII)I
    .locals 5
    .parameter "b"
    .parameter "offset"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    iget-boolean v2, p0, Landroid/webkit/PostData;->mClosed:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/io/IOException;

    const-string v3, "Tried to use a closed stream"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    if-nez p1, :cond_1

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "b == null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    array-length v2, p1

    if-gt p2, v2, :cond_2

    if-gez p2, :cond_3

    :cond_2
    new-instance v2, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Offset out of bounds: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_3
    if-ltz p3, :cond_4

    array-length v2, p1

    sub-int/2addr v2, p2

    if-le p3, v2, :cond_5

    :cond_4
    new-instance v2, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Length out of bounds: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_5
    const/4 v1, 0x0

    .local v1, n:I
    iget v2, p0, Landroid/webkit/PostData;->mPos:I

    iget-object v3, p0, Landroid/webkit/PostData;->mEntries:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-lt v2, v3, :cond_6

    const/4 v2, -0x1

    :goto_0
    return v2

    :cond_6
    :goto_1
    iget v2, p0, Landroid/webkit/PostData;->mPos:I

    iget-object v3, p0, Landroid/webkit/PostData;->mEntries:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v2, v3, :cond_8

    if-lez p3, :cond_8

    iget-object v2, p0, Landroid/webkit/PostData;->mEntries:Ljava/util/Vector;

    iget v3, p0, Landroid/webkit/PostData;->mPos:I

    invoke-virtual {v2, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/InputStream;

    invoke-virtual {v2, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .local v0, k:I
    if-gez v0, :cond_7

    iget v2, p0, Landroid/webkit/PostData;->mPos:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroid/webkit/PostData;->mPos:I

    goto :goto_1

    :cond_7
    sub-int/2addr p3, v0

    add-int/2addr p2, v0

    add-int/2addr v1, v0

    goto :goto_1

    .end local v0           #k:I
    :cond_8
    move v2, v1

    goto :goto_0
.end method

.method public declared-synchronized reset()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Landroid/webkit/PostData;->mClosed:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/io/IOException;

    const-string v2, "Tried to use a closed stream"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    :cond_0
    :try_start_1
    iget v1, p0, Landroid/webkit/PostData;->mMark:I

    iput v1, p0, Landroid/webkit/PostData;->mPos:I

    iget v0, p0, Landroid/webkit/PostData;->mPos:I

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Landroid/webkit/PostData;->mEntries:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Landroid/webkit/PostData;->mEntries:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->reset()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    monitor-exit p0

    return-void
.end method

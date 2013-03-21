.class public Landroid/os/ParcelFileDescriptor;
.super Ljava/lang/Object;
.source "ParcelFileDescriptor.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;,
        Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/os/ParcelFileDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field public static final MODE_APPEND:I = 0x2000000

.field public static final MODE_CREATE:I = 0x8000000

.field public static final MODE_READ_ONLY:I = 0x10000000

.field public static final MODE_READ_WRITE:I = 0x30000000

.field public static final MODE_TRUNCATE:I = 0x4000000

.field public static final MODE_WORLD_READABLE:I = 0x1

.field public static final MODE_WORLD_WRITEABLE:I = 0x2

.field public static final MODE_WRITE_ONLY:I = 0x20000000


# instance fields
.field private mClosed:Z

.field private final mFileDescriptor:Ljava/io/FileDescriptor;

.field private final mParcelDescriptor:Landroid/os/ParcelFileDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 425
    new-instance v0, Landroid/os/ParcelFileDescriptor$1;

    invoke-direct {v0}, Landroid/os/ParcelFileDescriptor$1;-><init>()V

    sput-object v0, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/ParcelFileDescriptor;)V
    .locals 1
    .parameter "descriptor"

    .prologue
    .line 390
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 391
    iput-object p1, p0, Landroid/os/ParcelFileDescriptor;->mParcelDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 392
    iget-object v0, p0, Landroid/os/ParcelFileDescriptor;->mParcelDescriptor:Landroid/os/ParcelFileDescriptor;

    iget-object v0, v0, Landroid/os/ParcelFileDescriptor;->mFileDescriptor:Ljava/io/FileDescriptor;

    iput-object v0, p0, Landroid/os/ParcelFileDescriptor;->mFileDescriptor:Ljava/io/FileDescriptor;

    .line 393
    return-void
.end method

.method constructor <init>(Ljava/io/FileDescriptor;)V
    .locals 2
    .parameter "descriptor"

    .prologue
    .line 396
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 397
    if-nez p1, :cond_0

    .line 398
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "descriptor must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 400
    :cond_0
    iput-object p1, p0, Landroid/os/ParcelFileDescriptor;->mFileDescriptor:Ljava/io/FileDescriptor;

    .line 401
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/ParcelFileDescriptor;->mParcelDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 402
    return-void
.end method

.method public static adoptFd(I)Landroid/os/ParcelFileDescriptor;
    .locals 2
    .parameter "fd"

    .prologue
    .line 174
    invoke-static {p0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptorFromFdNoDup(I)Ljava/io/FileDescriptor;

    move-result-object v0

    .line 175
    .local v0, fdesc:Ljava/io/FileDescriptor;
    new-instance v1, Landroid/os/ParcelFileDescriptor;

    invoke-direct {v1, v0}, Landroid/os/ParcelFileDescriptor;-><init>(Ljava/io/FileDescriptor;)V

    return-object v1
.end method

.method public static createPipe()[Landroid/os/ParcelFileDescriptor;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 218
    new-array v0, v2, [Ljava/io/FileDescriptor;

    .line 219
    .local v0, fds:[Ljava/io/FileDescriptor;
    invoke-static {v0}, Landroid/os/ParcelFileDescriptor;->createPipeNative([Ljava/io/FileDescriptor;)V

    .line 220
    new-array v1, v2, [Landroid/os/ParcelFileDescriptor;

    .line 221
    .local v1, pfds:[Landroid/os/ParcelFileDescriptor;
    new-instance v2, Landroid/os/ParcelFileDescriptor;

    aget-object v3, v0, v4

    invoke-direct {v2, v3}, Landroid/os/ParcelFileDescriptor;-><init>(Ljava/io/FileDescriptor;)V

    aput-object v2, v1, v4

    .line 222
    new-instance v2, Landroid/os/ParcelFileDescriptor;

    aget-object v3, v0, v5

    invoke-direct {v2, v3}, Landroid/os/ParcelFileDescriptor;-><init>(Ljava/io/FileDescriptor;)V

    aput-object v2, v1, v5

    .line 223
    return-object v1
.end method

.method private static native createPipeNative([Ljava/io/FileDescriptor;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public static dup(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;
    .locals 2
    .parameter "orig"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 131
    invoke-static {p0}, Landroid/os/Parcel;->dupFileDescriptor(Ljava/io/FileDescriptor;)Ljava/io/FileDescriptor;

    move-result-object v0

    .line 132
    .local v0, fd:Ljava/io/FileDescriptor;
    if-eqz v0, :cond_0

    new-instance v1, Landroid/os/ParcelFileDescriptor;

    invoke-direct {v1, v0}, Landroid/os/ParcelFileDescriptor;-><init>(Ljava/io/FileDescriptor;)V

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static fromData([BLjava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 5
    .parameter "data"
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 240
    if-nez p0, :cond_1

    .line 247
    :cond_0
    :goto_0
    return-object v2

    .line 241
    :cond_1
    new-instance v1, Landroid/os/MemoryFile;

    array-length v3, p0

    invoke-direct {v1, p1, v3}, Landroid/os/MemoryFile;-><init>(Ljava/lang/String;I)V

    .line 242
    .local v1, file:Landroid/os/MemoryFile;
    array-length v3, p0

    if-lez v3, :cond_2

    .line 243
    array-length v3, p0

    invoke-virtual {v1, p0, v4, v4, v3}, Landroid/os/MemoryFile;->writeBytes([BIII)V

    .line 245
    :cond_2
    invoke-virtual {v1}, Landroid/os/MemoryFile;->deactivate()V

    .line 246
    invoke-virtual {v1}, Landroid/os/MemoryFile;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    .line 247
    .local v0, fd:Ljava/io/FileDescriptor;
    if-eqz v0, :cond_0

    new-instance v2, Landroid/os/ParcelFileDescriptor;

    invoke-direct {v2, v0}, Landroid/os/ParcelFileDescriptor;-><init>(Ljava/io/FileDescriptor;)V

    goto :goto_0
.end method

.method public static fromDatagramSocket(Ljava/net/DatagramSocket;)Landroid/os/ParcelFileDescriptor;
    .locals 2
    .parameter "datagramSocket"

    .prologue
    .line 208
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->getFileDescriptor$()Ljava/io/FileDescriptor;

    move-result-object v0

    .line 209
    .local v0, fd:Ljava/io/FileDescriptor;
    if-eqz v0, :cond_0

    new-instance v1, Landroid/os/ParcelFileDescriptor;

    invoke-direct {v1, v0}, Landroid/os/ParcelFileDescriptor;-><init>(Ljava/io/FileDescriptor;)V

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static fromFd(I)Landroid/os/ParcelFileDescriptor;
    .locals 2
    .parameter "fd"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 156
    invoke-static {p0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptorFromFd(I)Ljava/io/FileDescriptor;

    move-result-object v0

    .line 157
    .local v0, fdesc:Ljava/io/FileDescriptor;
    new-instance v1, Landroid/os/ParcelFileDescriptor;

    invoke-direct {v1, v0}, Landroid/os/ParcelFileDescriptor;-><init>(Ljava/io/FileDescriptor;)V

    return-object v1
.end method

.method public static fromSocket(Ljava/net/Socket;)Landroid/os/ParcelFileDescriptor;
    .locals 2
    .parameter "socket"

    .prologue
    .line 194
    invoke-virtual {p0}, Ljava/net/Socket;->getFileDescriptor$()Ljava/io/FileDescriptor;

    move-result-object v0

    .line 195
    .local v0, fd:Ljava/io/FileDescriptor;
    if-eqz v0, :cond_0

    new-instance v1, Landroid/os/ParcelFileDescriptor;

    invoke-direct {v1, v0}, Landroid/os/ParcelFileDescriptor;-><init>(Ljava/io/FileDescriptor;)V

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private native getFdNative()I
.end method

.method private static native getFileDescriptorFromFd(I)Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native getFileDescriptorFromFdNoDup(I)Ljava/io/FileDescriptor;
.end method

.method public static open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;
    .locals 5
    .parameter "file"
    .parameter "mode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 106
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 107
    .local v1, path:Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v2

    .line 108
    .local v2, security:Ljava/lang/SecurityManager;
    if-eqz v2, :cond_0

    .line 109
    invoke-virtual {v2, v1}, Ljava/lang/SecurityManager;->checkRead(Ljava/lang/String;)V

    .line 110
    const/high16 v3, 0x2000

    and-int/2addr v3, p1

    if-eqz v3, :cond_0

    .line 111
    invoke-virtual {v2, v1}, Ljava/lang/SecurityManager;->checkWrite(Ljava/lang/String;)V

    .line 115
    :cond_0
    const/high16 v3, 0x3000

    and-int/2addr v3, p1

    if-nez v3, :cond_1

    .line 116
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Must specify MODE_READ_ONLY, MODE_WRITE_ONLY, or MODE_READ_WRITE"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 120
    :cond_1
    invoke-static {v1, p1}, Landroid/os/Parcel;->openFileDescriptor(Ljava/lang/String;I)Ljava/io/FileDescriptor;

    move-result-object v0

    .line 121
    .local v0, fd:Ljava/io/FileDescriptor;
    if-eqz v0, :cond_2

    new-instance v3, Landroid/os/ParcelFileDescriptor;

    invoke-direct {v3, v0}, Landroid/os/ParcelFileDescriptor;-><init>(Ljava/io/FileDescriptor;)V

    :goto_0
    return-object v3

    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 314
    monitor-enter p0

    .line 315
    :try_start_0
    iget-boolean v0, p0, Landroid/os/ParcelFileDescriptor;->mClosed:Z

    if-eqz v0, :cond_1

    monitor-exit p0

    .line 325
    :cond_0
    :goto_0
    return-void

    .line 316
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/os/ParcelFileDescriptor;->mClosed:Z

    .line 317
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 318
    iget-object v0, p0, Landroid/os/ParcelFileDescriptor;->mParcelDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_2

    .line 321
    iget-object v0, p0, Landroid/os/ParcelFileDescriptor;->mParcelDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V

    goto :goto_0

    .line 317
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 322
    :cond_2
    iget-object v0, p0, Landroid/os/ParcelFileDescriptor;->mFileDescriptor:Ljava/io/FileDescriptor;

    if-eqz v0, :cond_0

    .line 323
    iget-object v0, p0, Landroid/os/ParcelFileDescriptor;->mFileDescriptor:Ljava/io/FileDescriptor;

    invoke-static {v0}, Landroid/os/Parcel;->closeFileDescriptor(Ljava/io/FileDescriptor;)V

    goto :goto_0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 406
    const/4 v0, 0x1

    return v0
.end method

.method public detachFd()I
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 292
    iget-boolean v2, p0, Landroid/os/ParcelFileDescriptor;->mClosed:Z

    if-eqz v2, :cond_0

    .line 293
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Already closed"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 295
    :cond_0
    iget-object v2, p0, Landroid/os/ParcelFileDescriptor;->mParcelDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz v2, :cond_1

    .line 296
    iget-object v2, p0, Landroid/os/ParcelFileDescriptor;->mParcelDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->detachFd()I

    move-result v0

    .line 297
    .local v0, fd:I
    iput-boolean v3, p0, Landroid/os/ParcelFileDescriptor;->mClosed:Z

    move v1, v0

    .line 303
    .end local v0           #fd:I
    .local v1, fd:I
    :goto_0
    return v1

    .line 300
    .end local v1           #fd:I
    :cond_1
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v0

    .line 301
    .restart local v0       #fd:I
    iput-boolean v3, p0, Landroid/os/ParcelFileDescriptor;->mClosed:Z

    .line 302
    iget-object v2, p0, Landroid/os/ParcelFileDescriptor;->mFileDescriptor:Ljava/io/FileDescriptor;

    invoke-static {v2}, Landroid/os/Parcel;->clearFileDescriptor(Ljava/io/FileDescriptor;)V

    move v1, v0

    .line 303
    .end local v0           #fd:I
    .restart local v1       #fd:I
    goto :goto_0
.end method

.method public dup()Landroid/os/ParcelFileDescriptor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 142
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-static {v0}, Landroid/os/ParcelFileDescriptor;->dup(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 381
    :try_start_0
    iget-boolean v0, p0, Landroid/os/ParcelFileDescriptor;->mClosed:Z

    if-nez v0, :cond_0

    .line 382
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 385
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 387
    return-void

    .line 385
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getFd()I
    .locals 2

    .prologue
    .line 278
    iget-boolean v0, p0, Landroid/os/ParcelFileDescriptor;->mClosed:Z

    if-eqz v0, :cond_0

    .line 279
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 281
    :cond_0
    invoke-direct {p0}, Landroid/os/ParcelFileDescriptor;->getFdNative()I

    move-result v0

    return v0
.end method

.method public getFileDescriptor()Ljava/io/FileDescriptor;
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Landroid/os/ParcelFileDescriptor;->mFileDescriptor:Ljava/io/FileDescriptor;

    return-object v0
.end method

.method public native getStatSize()J
.end method

.method public native seekTo(J)J
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 375
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{ParcelFileDescriptor: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/os/ParcelFileDescriptor;->mFileDescriptor:Ljava/io/FileDescriptor;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "out"
    .parameter "flags"

    .prologue
    .line 415
    iget-object v0, p0, Landroid/os/ParcelFileDescriptor;->mFileDescriptor:Ljava/io/FileDescriptor;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFileDescriptor(Ljava/io/FileDescriptor;)V

    .line 416
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/os/ParcelFileDescriptor;->mClosed:Z

    if-nez v0, :cond_0

    .line 418
    :try_start_0
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 423
    :cond_0
    :goto_0
    return-void

    .line 419
    :catch_0
    move-exception v0

    goto :goto_0
.end method

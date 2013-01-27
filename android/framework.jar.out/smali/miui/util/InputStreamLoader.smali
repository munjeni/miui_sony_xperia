.class public Lmiui/util/InputStreamLoader;
.super Ljava/lang/Object;
.source "InputStreamLoader.java"


# instance fields
.field mByteArrayInputStream:Ljava/io/ByteArrayInputStream;

.field private mContext:Landroid/content/Context;

.field private mInputStream:Ljava/io/InputStream;

.field private mPath:Ljava/lang/String;

.field private mUri:Landroid/net/Uri;

.field private mZipFile:Ljava/util/zip/ZipFile;

.field private mZipPath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 2
    .parameter "context"
    .parameter "uri"

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const-string v0, "file"

    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 31
    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/util/InputStreamLoader;->mPath:Ljava/lang/String;

    .line 37
    :goto_0
    return-void

    .line 34
    :cond_0
    iput-object p1, p0, Lmiui/util/InputStreamLoader;->mContext:Landroid/content/Context;

    .line 35
    iput-object p2, p0, Lmiui/util/InputStreamLoader;->mUri:Landroid/net/Uri;

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "path"

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lmiui/util/InputStreamLoader;->mPath:Ljava/lang/String;

    .line 27
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "zipPath"
    .parameter "entry"

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lmiui/util/InputStreamLoader;->mZipPath:Ljava/lang/String;

    .line 41
    iput-object p2, p0, Lmiui/util/InputStreamLoader;->mPath:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .parameter "data"

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iput-object v0, p0, Lmiui/util/InputStreamLoader;->mByteArrayInputStream:Ljava/io/ByteArrayInputStream;

    .line 46
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 79
    :try_start_0
    iget-object v0, p0, Lmiui/util/InputStreamLoader;->mInputStream:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lmiui/util/InputStreamLoader;->mInputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 83
    :cond_0
    iget-object v0, p0, Lmiui/util/InputStreamLoader;->mZipFile:Ljava/util/zip/ZipFile;

    if-eqz v0, :cond_1

    .line 84
    iget-object v0, p0, Lmiui/util/InputStreamLoader;->mZipFile:Ljava/util/zip/ZipFile;

    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    :cond_1
    :goto_0
    return-void

    .line 86
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public get()Ljava/io/InputStream;
    .locals 3

    .prologue
    .line 49
    invoke-virtual {p0}, Lmiui/util/InputStreamLoader;->close()V

    .line 52
    :try_start_0
    iget-object v0, p0, Lmiui/util/InputStreamLoader;->mUri:Landroid/net/Uri;

    if-eqz v0, :cond_2

    .line 53
    iget-object v0, p0, Lmiui/util/InputStreamLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lmiui/util/InputStreamLoader;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lmiui/util/InputStreamLoader;->mInputStream:Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    :cond_0
    :goto_0
    iget-object v0, p0, Lmiui/util/InputStreamLoader;->mInputStream:Ljava/io/InputStream;

    if-eqz v0, :cond_1

    .line 70
    iget-object v0, p0, Lmiui/util/InputStreamLoader;->mInputStream:Ljava/io/InputStream;

    instance-of v0, v0, Ljava/io/ByteArrayInputStream;

    if-nez v0, :cond_1

    .line 71
    new-instance v0, Ljava/io/BufferedInputStream;

    iget-object v1, p0, Lmiui/util/InputStreamLoader;->mInputStream:Ljava/io/InputStream;

    const/16 v2, 0x4000

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    iput-object v0, p0, Lmiui/util/InputStreamLoader;->mInputStream:Ljava/io/InputStream;

    .line 74
    :cond_1
    iget-object v0, p0, Lmiui/util/InputStreamLoader;->mInputStream:Ljava/io/InputStream;

    return-object v0

    .line 55
    :cond_2
    :try_start_1
    iget-object v0, p0, Lmiui/util/InputStreamLoader;->mZipPath:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 56
    new-instance v0, Ljava/util/zip/ZipFile;

    iget-object v1, p0, Lmiui/util/InputStreamLoader;->mZipPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lmiui/util/InputStreamLoader;->mZipFile:Ljava/util/zip/ZipFile;

    .line 57
    iget-object v0, p0, Lmiui/util/InputStreamLoader;->mZipFile:Ljava/util/zip/ZipFile;

    iget-object v1, p0, Lmiui/util/InputStreamLoader;->mZipFile:Ljava/util/zip/ZipFile;

    iget-object v2, p0, Lmiui/util/InputStreamLoader;->mPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lmiui/util/InputStreamLoader;->mInputStream:Ljava/io/InputStream;

    goto :goto_0

    .line 65
    :catch_0
    move-exception v0

    goto :goto_0

    .line 59
    :cond_3
    iget-object v0, p0, Lmiui/util/InputStreamLoader;->mPath:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 60
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lmiui/util/InputStreamLoader;->mPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lmiui/util/InputStreamLoader;->mInputStream:Ljava/io/InputStream;

    goto :goto_0

    .line 61
    :cond_4
    iget-object v0, p0, Lmiui/util/InputStreamLoader;->mByteArrayInputStream:Ljava/io/ByteArrayInputStream;

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lmiui/util/InputStreamLoader;->mByteArrayInputStream:Ljava/io/ByteArrayInputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 63
    iget-object v0, p0, Lmiui/util/InputStreamLoader;->mByteArrayInputStream:Ljava/io/ByteArrayInputStream;

    iput-object v0, p0, Lmiui/util/InputStreamLoader;->mInputStream:Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

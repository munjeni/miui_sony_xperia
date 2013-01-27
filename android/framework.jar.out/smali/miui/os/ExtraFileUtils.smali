.class public Lmiui/os/ExtraFileUtils;
.super Ljava/lang/Object;
.source "ExtraFileUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    return-void
.end method

.method public static addNoMedia(Ljava/lang/String;)V
    .locals 3
    .parameter "path"

    .prologue
    .line 100
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 101
    .local v0, dir:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 103
    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string v2, ".nomedia"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    :cond_0
    :goto_0
    return-void

    .line 104
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static deleteDir(Ljava/io/File;)Z
    .locals 6
    .parameter "fileOrFolder"

    .prologue
    .line 39
    const/4 v2, 0x1

    .line 40
    .local v2, isSuccess:Z
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 41
    invoke-virtual {p0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    .line 42
    .local v0, children:[Ljava/lang/String;
    if-nez v0, :cond_0

    .line 43
    const/4 v4, 0x0

    .line 58
    .end local v0           #children:[Ljava/lang/String;
    :goto_0
    return v4

    .line 46
    .restart local v0       #children:[Ljava/lang/String;
    :cond_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v4, v0

    if-ge v1, v4, :cond_2

    .line 47
    new-instance v4, Ljava/io/File;

    aget-object v5, v0, v1

    invoke-direct {v4, p0, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v4}, Lmiui/os/ExtraFileUtils;->deleteDir(Ljava/io/File;)Z

    move-result v3

    .line 48
    .local v3, success:Z
    if-nez v3, :cond_1

    .line 50
    const/4 v2, 0x0

    .line 46
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 55
    .end local v0           #children:[Ljava/lang/String;
    .end local v1           #i:I
    .end local v3           #success:Z
    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v4

    if-nez v4, :cond_3

    .line 56
    const/4 v2, 0x0

    :cond_3
    move v4, v2

    .line 58
    goto :goto_0
.end method

.method public static getExtension(Ljava/io/File;)Ljava/lang/String;
    .locals 2
    .parameter "file"

    .prologue
    .line 62
    if-nez p0, :cond_0

    .line 63
    const-string v1, ""

    .line 66
    :goto_0
    return-object v1

    .line 65
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 66
    .local v0, fileName:Ljava/lang/String;
    invoke-static {v0}, Lmiui/os/ExtraFileUtils;->getExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getExtension(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "fileName"

    .prologue
    .line 70
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 71
    const-string v1, ""

    .line 77
    :goto_0
    return-object v1

    .line 73
    :cond_0
    const-string v1, "."

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 74
    .local v0, index:I
    const/4 v1, -0x1

    if-le v0, v1, :cond_1

    .line 75
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 77
    :cond_1
    const-string v1, ""

    goto :goto_0
.end method

.method public static getFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "filePath"

    .prologue
    .line 122
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 123
    const-string p0, ""

    .line 129
    .end local p0
    .local v0, index:I
    :cond_0
    :goto_0
    return-object p0

    .line 125
    .end local v0           #index:I
    .restart local p0
    :cond_1
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 126
    .restart local v0       #index:I
    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    .line 127
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static getFileTitle(Ljava/io/File;)Ljava/lang/String;
    .locals 2
    .parameter "file"

    .prologue
    .line 81
    if-nez p0, :cond_0

    .line 82
    const-string v1, ""

    .line 85
    :goto_0
    return-object v1

    .line 84
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 85
    .local v0, fileName:Ljava/lang/String;
    invoke-static {v0}, Lmiui/os/ExtraFileUtils;->getFileTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getFileTitle(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "fileName"

    .prologue
    .line 89
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 90
    const-string p0, ""

    .line 96
    .end local p0
    .local v0, index:I
    :cond_0
    :goto_0
    return-object p0

    .line 92
    .end local v0           #index:I
    .restart local p0
    :cond_1
    const-string v1, "."

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 93
    .restart local v0       #index:I
    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    .line 94
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static getParentFolderPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "filePath"

    .prologue
    .line 111
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 112
    const-string p0, ""

    .line 118
    .end local p0
    .local v0, index:I
    :cond_0
    :goto_0
    return-object p0

    .line 114
    .end local v0           #index:I
    .restart local p0
    :cond_1
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 115
    .restart local v0       #index:I
    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    .line 116
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static mkdirs(Ljava/io/File;III)Z
    .locals 3
    .parameter "file"
    .parameter "mode"
    .parameter "uid"
    .parameter "gid"

    .prologue
    const/4 v1, 0x0

    .line 19
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 35
    :cond_0
    :goto_0
    return v1

    .line 24
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    .line 25
    .local v0, parentDir:Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 26
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2, p1, p2, p3}, Lmiui/os/ExtraFileUtils;->mkdirs(Ljava/io/File;III)Z

    .line 30
    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->mkdir()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 31
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1, p2, p3}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 32
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static standardizeFolderPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "path"

    .prologue
    .line 133
    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .end local p0
    :goto_0
    return-object p0

    .restart local p0
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

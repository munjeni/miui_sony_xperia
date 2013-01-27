.class public Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenResourceLoader;
.super Lmiui/app/screenelement/ResourceLoader;
.source "LockScreenResourceLoader.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "LockScreenResourceLoader"

.field private static final MANIFEST_XML:Ljava/lang/String; = "manifest.xml"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lmiui/app/screenelement/ResourceLoader;-><init>()V

    return-void
.end method

.method private containsFile(Ljava/lang/String;)Z
    .locals 1
    .parameter "manifestName"

    .prologue
    .line 96
    invoke-static {}, Lmiui/content/res/ThemeResources;->getSystem()Lmiui/content/res/ThemeResourcesSystem;

    move-result-object v0

    invoke-virtual {v0, p1}, Lmiui/content/res/ThemeResourcesSystem;->containsAwesomeLockscreenEntry(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public getBitmapInfo(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Lmiui/app/screenelement/ResourceManager$BitmapInfo;
    .locals 6
    .parameter "src"
    .parameter "opts"

    .prologue
    .line 31
    invoke-static {}, Lmiui/content/res/ThemeResources;->getSystem()Lmiui/content/res/ThemeResourcesSystem;

    move-result-object v4

    invoke-virtual {v4, p1}, Lmiui/content/res/ThemeResourcesSystem;->getAwesomeLockscreenFileStream(Ljava/lang/String;)Lmiui/content/res/ThemeZipFile$ThemeFileInfo;

    move-result-object v2

    .line 32
    .local v2, info:Lmiui/content/res/ThemeZipFile$ThemeFileInfo;
    if-eqz v2, :cond_1

    .line 34
    :try_start_0
    iget v4, v2, Lmiui/content/res/ThemeZipFile$ThemeFileInfo;->mDensity:I

    if-eqz v4, :cond_0

    .line 35
    iget v4, v2, Lmiui/content/res/ThemeZipFile$ThemeFileInfo;->mDensity:I

    iput v4, p2, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    .line 37
    :cond_0
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 38
    .local v3, padding:Landroid/graphics/Rect;
    iget-object v4, v2, Lmiui/content/res/ThemeZipFile$ThemeFileInfo;->mInput:Ljava/io/InputStream;

    invoke-static {v4, v3, p2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 39
    .local v0, bmp:Landroid/graphics/Bitmap;
    new-instance v4, Lmiui/app/screenelement/ResourceManager$BitmapInfo;

    invoke-direct {v4, v0, v3}, Lmiui/app/screenelement/ResourceManager$BitmapInfo;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Rect;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    :try_start_1
    iget-object v5, v2, Lmiui/content/res/ThemeZipFile$ThemeFileInfo;->mInput:Ljava/io/InputStream;

    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 50
    .end local v0           #bmp:Landroid/graphics/Bitmap;
    .end local v3           #padding:Landroid/graphics/Rect;
    :goto_0
    return-object v4

    .line 40
    :catch_0
    move-exception v1

    .line 41
    .local v1, e:Ljava/lang/OutOfMemoryError;
    :try_start_2
    const-string v4, "ResourceManager"

    invoke-virtual {v1}, Ljava/lang/OutOfMemoryError;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 44
    :try_start_3
    iget-object v4, v2, Lmiui/content/res/ThemeZipFile$ThemeFileInfo;->mInput:Ljava/io/InputStream;

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 50
    .end local v1           #e:Ljava/lang/OutOfMemoryError;
    :cond_1
    :goto_1
    const/4 v4, 0x0

    goto :goto_0

    .line 43
    :catchall_0
    move-exception v4

    .line 44
    :try_start_4
    iget-object v5, v2, Lmiui/content/res/ThemeZipFile$ThemeFileInfo;->mInput:Ljava/io/InputStream;

    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 46
    :goto_2
    throw v4

    .line 45
    :catch_1
    move-exception v5

    goto :goto_2

    .restart local v1       #e:Ljava/lang/OutOfMemoryError;
    :catch_2
    move-exception v4

    goto :goto_1

    .end local v1           #e:Ljava/lang/OutOfMemoryError;
    .restart local v0       #bmp:Landroid/graphics/Bitmap;
    .restart local v3       #padding:Landroid/graphics/Rect;
    :catch_3
    move-exception v5

    goto :goto_0
.end method

.method public getFile(Ljava/lang/String;)Landroid/os/MemoryFile;
    .locals 11
    .parameter "src"

    .prologue
    const/4 v7, 0x0

    const/high16 v9, 0x1

    .line 101
    invoke-static {}, Lmiui/content/res/ThemeResources;->getSystem()Lmiui/content/res/ThemeResourcesSystem;

    move-result-object v8

    invoke-virtual {v8, p1}, Lmiui/content/res/ThemeResourcesSystem;->getAwesomeLockscreenFileStream(Ljava/lang/String;)Lmiui/content/res/ThemeZipFile$ThemeFileInfo;

    move-result-object v3

    .line 102
    .local v3, info:Lmiui/content/res/ThemeZipFile$ThemeFileInfo;
    if-eqz v3, :cond_2

    .line 103
    const/high16 v0, 0x1

    .line 104
    .local v0, COUNT:I
    new-array v1, v9, [B

    .line 106
    .local v1, buff:[B
    :try_start_0
    new-instance v4, Landroid/os/MemoryFile;

    const/4 v8, 0x0

    iget-wide v9, v3, Lmiui/content/res/ThemeZipFile$ThemeFileInfo;->mSize:J

    long-to-int v9, v9

    invoke-direct {v4, v8, v9}, Landroid/os/MemoryFile;-><init>(Ljava/lang/String;I)V

    .line 107
    .local v4, mf:Landroid/os/MemoryFile;
    const/4 v5, -0x1

    .line 108
    .local v5, read:I
    const/4 v6, 0x0

    .line 109
    .local v6, start:I
    :goto_0
    iget-object v8, v3, Lmiui/content/res/ThemeZipFile$ThemeFileInfo;->mInput:Ljava/io/InputStream;

    const/4 v9, 0x0

    const/high16 v10, 0x1

    invoke-virtual {v8, v1, v9, v10}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    if-lez v5, :cond_0

    .line 110
    const/4 v8, 0x0

    invoke-virtual {v4, v1, v8, v6, v5}, Landroid/os/MemoryFile;->writeBytes([BIII)V

    .line 111
    add-int/2addr v6, v5

    goto :goto_0

    .line 113
    :cond_0
    invoke-virtual {v4}, Landroid/os/MemoryFile;->length()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-result v8

    if-lez v8, :cond_1

    .line 121
    :try_start_1
    iget-object v7, v3, Lmiui/content/res/ThemeZipFile$ThemeFileInfo;->mInput:Ljava/io/InputStream;

    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6

    .line 127
    .end local v0           #COUNT:I
    .end local v1           #buff:[B
    .end local v4           #mf:Landroid/os/MemoryFile;
    .end local v5           #read:I
    .end local v6           #start:I
    :goto_1
    return-object v4

    .line 121
    .restart local v0       #COUNT:I
    .restart local v1       #buff:[B
    .restart local v4       #mf:Landroid/os/MemoryFile;
    .restart local v5       #read:I
    .restart local v6       #start:I
    :cond_1
    :try_start_2
    iget-object v8, v3, Lmiui/content/res/ThemeZipFile$ThemeFileInfo;->mInput:Ljava/io/InputStream;

    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    .end local v0           #COUNT:I
    .end local v1           #buff:[B
    .end local v4           #mf:Landroid/os/MemoryFile;
    .end local v5           #read:I
    .end local v6           #start:I
    :cond_2
    :goto_2
    move-object v4, v7

    .line 127
    goto :goto_1

    .line 115
    .restart local v0       #COUNT:I
    .restart local v1       #buff:[B
    :catch_0
    move-exception v2

    .line 116
    .local v2, e:Ljava/lang/OutOfMemoryError;
    :try_start_3
    const-string v8, "ResourceManager"

    invoke-virtual {v2}, Ljava/lang/OutOfMemoryError;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 121
    :try_start_4
    iget-object v8, v3, Lmiui/content/res/ThemeZipFile$ThemeFileInfo;->mInput:Ljava/io/InputStream;

    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    .line 122
    :catch_1
    move-exception v8

    goto :goto_2

    .line 117
    .end local v2           #e:Ljava/lang/OutOfMemoryError;
    :catch_2
    move-exception v2

    .line 118
    .local v2, e:Ljava/io/IOException;
    :try_start_5
    const-string v8, "ResourceManager"

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 121
    :try_start_6
    iget-object v8, v3, Lmiui/content/res/ThemeZipFile$ThemeFileInfo;->mInput:Ljava/io/InputStream;

    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_2

    .line 122
    :catch_3
    move-exception v8

    goto :goto_2

    .line 120
    .end local v2           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v7

    .line 121
    :try_start_7
    iget-object v8, v3, Lmiui/content/res/ThemeZipFile$ThemeFileInfo;->mInput:Ljava/io/InputStream;

    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 123
    :goto_3
    throw v7

    .line 122
    :catch_4
    move-exception v8

    goto :goto_3

    .restart local v4       #mf:Landroid/os/MemoryFile;
    .restart local v5       #read:I
    .restart local v6       #start:I
    :catch_5
    move-exception v8

    goto :goto_2

    :catch_6
    move-exception v7

    goto :goto_1
.end method

.method public getManifestRoot()Lorg/w3c/dom/Element;
    .locals 10

    .prologue
    .line 55
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v1

    .line 56
    .local v1, dbf:Ljavax/xml/parsers/DocumentBuilderFactory;
    const/4 v4, 0x0

    .line 58
    .local v4, info:Lmiui/content/res/ThemeZipFile$ThemeFileInfo;
    :try_start_0
    invoke-virtual {v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    .line 59
    .local v0, db:Ljavax/xml/parsers/DocumentBuilder;
    const/4 v5, 0x0

    .line 60
    .local v5, manifestName:Ljava/lang/String;
    iget-object v7, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenResourceLoader;->mLanguageCountrySuffix:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 61
    const-string v7, "manifest.xml"

    iget-object v8, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenResourceLoader;->mLanguageCountrySuffix:Ljava/lang/String;

    invoke-static {v7, v8}, Lmiui/app/screenelement/util/Utils;->addFileNameSuffix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 62
    invoke-direct {p0, v5}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenResourceLoader;->containsFile(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 63
    const/4 v5, 0x0

    .line 66
    :cond_0
    iget-object v7, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenResourceLoader;->mLanguageSuffix:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    if-nez v5, :cond_1

    .line 67
    const-string v7, "manifest.xml"

    iget-object v8, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenResourceLoader;->mLanguageSuffix:Ljava/lang/String;

    invoke-static {v7, v8}, Lmiui/app/screenelement/util/Utils;->addFileNameSuffix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 68
    invoke-direct {p0, v5}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenResourceLoader;->containsFile(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 69
    const/4 v5, 0x0

    .line 72
    :cond_1
    if-nez v5, :cond_2

    .line 73
    const-string v5, "manifest.xml"

    .line 75
    :cond_2
    invoke-static {}, Lmiui/content/res/ThemeResources;->getSystem()Lmiui/content/res/ThemeResourcesSystem;

    move-result-object v7

    invoke-virtual {v7, v5}, Lmiui/content/res/ThemeResourcesSystem;->getAwesomeLockscreenFileStream(Ljava/lang/String;)Lmiui/content/res/ThemeZipFile$ThemeFileInfo;

    move-result-object v4

    .line 76
    iget-object v7, v4, Lmiui/content/res/ThemeZipFile$ThemeFileInfo;->mInput:Ljava/io/InputStream;

    invoke-virtual {v0, v7}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v2

    .line 77
    .local v2, doc:Lorg/w3c/dom/Document;
    invoke-interface {v2}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v6

    .line 78
    .local v6, root:Lorg/w3c/dom/Element;
    const-string v7, "LockScreenResourceLoader"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "load root:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v6}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " from: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    invoke-interface {v6}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "Lockscreen"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    if-eqz v7, :cond_4

    .line 85
    if-eqz v4, :cond_3

    .line 86
    :try_start_1
    iget-object v7, v4, Lmiui/content/res/ThemeZipFile$ThemeFileInfo;->mInput:Ljava/io/InputStream;

    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 92
    .end local v0           #db:Ljavax/xml/parsers/DocumentBuilder;
    .end local v2           #doc:Lorg/w3c/dom/Document;
    .end local v5           #manifestName:Ljava/lang/String;
    .end local v6           #root:Lorg/w3c/dom/Element;
    :cond_3
    :goto_0
    return-object v6

    .line 85
    .restart local v0       #db:Ljavax/xml/parsers/DocumentBuilder;
    .restart local v2       #doc:Lorg/w3c/dom/Document;
    .restart local v5       #manifestName:Ljava/lang/String;
    .restart local v6       #root:Lorg/w3c/dom/Element;
    :cond_4
    if-eqz v4, :cond_5

    .line 86
    :try_start_2
    iget-object v7, v4, Lmiui/content/res/ThemeZipFile$ThemeFileInfo;->mInput:Ljava/io/InputStream;

    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 92
    .end local v0           #db:Ljavax/xml/parsers/DocumentBuilder;
    .end local v2           #doc:Lorg/w3c/dom/Document;
    .end local v5           #manifestName:Ljava/lang/String;
    .end local v6           #root:Lorg/w3c/dom/Element;
    :cond_5
    :goto_1
    const/4 v6, 0x0

    goto :goto_0

    .line 81
    :catch_0
    move-exception v3

    .line 82
    .local v3, e:Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 85
    if-eqz v4, :cond_5

    .line 86
    :try_start_4
    iget-object v7, v4, Lmiui/content/res/ThemeZipFile$ThemeFileInfo;->mInput:Ljava/io/InputStream;

    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 88
    :catch_1
    move-exception v7

    goto :goto_1

    .line 84
    .end local v3           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    .line 85
    if-eqz v4, :cond_6

    .line 86
    :try_start_5
    iget-object v8, v4, Lmiui/content/res/ThemeZipFile$ThemeFileInfo;->mInput:Ljava/io/InputStream;

    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 89
    :cond_6
    :goto_2
    throw v7

    .line 88
    :catch_2
    move-exception v8

    goto :goto_2

    .restart local v0       #db:Ljavax/xml/parsers/DocumentBuilder;
    .restart local v2       #doc:Lorg/w3c/dom/Document;
    .restart local v5       #manifestName:Ljava/lang/String;
    .restart local v6       #root:Lorg/w3c/dom/Element;
    :catch_3
    move-exception v7

    goto :goto_1

    :catch_4
    move-exception v7

    goto :goto_0
.end method

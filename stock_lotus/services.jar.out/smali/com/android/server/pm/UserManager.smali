.class public Lcom/android/server/pm/UserManager;
.super Ljava/lang/Object;
.source "UserManager.java"


# static fields
.field private static final ATTR_FLAGS:Ljava/lang/String; = "flags"

.field private static final ATTR_ID:Ljava/lang/String; = "id"

.field private static final LOG_TAG:Ljava/lang/String; = "UserManager"

.field private static final TAG_NAME:Ljava/lang/String; = "name"

.field private static final TAG_USER:Ljava/lang/String; = "user"

.field private static final TAG_USERS:Ljava/lang/String; = "users"

.field private static final USER_INFO_DIR:Ljava/lang/String; = null

.field private static final USER_LIST_FILENAME:Ljava/lang/String; = "userlist.xml"


# instance fields
.field private mBaseUserPath:Ljava/io/File;

.field private mInstaller:Lcom/android/server/pm/Installer;

.field private mUserIds:[I

.field private final mUserListFile:Ljava/io/File;

.field private mUsers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mUsersDir:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "system"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "users"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/UserManager;->USER_INFO_DIR:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/Installer;Ljava/io/File;)V
    .locals 1
    .parameter "installer"
    .parameter "baseUserPath"

    .prologue
    .line 89
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/android/server/pm/UserManager;-><init>(Ljava/io/File;Ljava/io/File;)V

    .line 90
    iput-object p1, p0, Lcom/android/server/pm/UserManager;->mInstaller:Lcom/android/server/pm/Installer;

    .line 91
    return-void
.end method

.method constructor <init>(Ljava/io/File;Ljava/io/File;)V
    .locals 3
    .parameter "dataDir"
    .parameter "baseUserPath"

    .prologue
    const/4 v2, -0x1

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/android/server/pm/UserManager;->USER_INFO_DIR:Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/pm/UserManager;->mUsersDir:Ljava/io/File;

    .line 78
    iget-object v0, p0, Lcom/android/server/pm/UserManager;->mUsersDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 79
    iput-object p2, p0, Lcom/android/server/pm/UserManager;->mBaseUserPath:Ljava/io/File;

    .line 80
    iget-object v0, p0, Lcom/android/server/pm/UserManager;->mUsersDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x1fd

    invoke-static {v0, v1, v2, v2}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 84
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/pm/UserManager;->mUsersDir:Ljava/io/File;

    const-string v2, "userlist.xml"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/pm/UserManager;->mUserListFile:Ljava/io/File;

    .line 85
    invoke-direct {p0}, Lcom/android/server/pm/UserManager;->readUserList()V

    .line 86
    return-void
.end method

.method private createPackageFolders(ILjava/io/File;Ljava/util/List;)Z
    .locals 11
    .parameter "id"
    .parameter "userPath"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/io/File;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p3, apps:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    const/4 v10, 0x1

    const/4 v8, -0x1

    .line 402
    iget-object v6, p0, Lcom/android/server/pm/UserManager;->mInstaller:Lcom/android/server/pm/Installer;

    if-eqz v6, :cond_0

    if-nez p3, :cond_1

    .line 421
    :cond_0
    :goto_0
    return v10

    .line 404
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 406
    .local v2, startTime:J
    invoke-virtual {p2}, Ljava/io/File;->mkdir()Z

    .line 407
    invoke-virtual {p2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x1f9

    invoke-static {v6, v7, v8, v8}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 411
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 412
    .local v0, app:Landroid/content/pm/ApplicationInfo;
    iget v6, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v7, 0x2710

    if-le v6, v7, :cond_2

    iget v6, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    const v7, 0x186a0

    if-ge v6, v7, :cond_2

    .line 414
    iget-object v6, p0, Lcom/android/server/pm/UserManager;->mInstaller:Lcom/android/server/pm/Installer;

    iget-object v7, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v8, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {p1, v8}, Landroid/content/pm/PackageManager;->getUid(II)I

    move-result v8

    invoke-virtual {v6, v7, v8, p1}, Lcom/android/server/pm/Installer;->createUserData(Ljava/lang/String;II)I

    goto :goto_1

    .line 418
    .end local v0           #app:Landroid/content/pm/ApplicationInfo;
    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 419
    .local v4, stopTime:J
    const-string v6, "UserManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Time to create "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " packages = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sub-long v8, v4, v2

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "ms"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private fallbackToSingleUser()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 160
    new-instance v0, Landroid/content/pm/UserInfo;

    const-string v1, "Primary"

    const/4 v2, 0x3

    invoke-direct {v0, v3, v1, v2}, Landroid/content/pm/UserInfo;-><init>(ILjava/lang/String;I)V

    .line 162
    .local v0, primary:Landroid/content/pm/UserInfo;
    iget-object v1, p0, Lcom/android/server/pm/UserManager;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1, v3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 163
    invoke-direct {p0}, Lcom/android/server/pm/UserManager;->updateUserIds()V

    .line 165
    invoke-direct {p0}, Lcom/android/server/pm/UserManager;->writeUserList()V

    .line 166
    invoke-direct {p0, v0}, Lcom/android/server/pm/UserManager;->writeUser(Landroid/content/pm/UserInfo;)V

    .line 167
    return-void
.end method

.method private getNextAvailableId()I
    .locals 2

    .prologue
    .line 390
    const/4 v0, 0x0

    .line 391
    .local v0, i:I
    :goto_0
    const v1, 0x7fffffff

    if-ge v0, v1, :cond_0

    .line 392
    iget-object v1, p0, Lcom/android/server/pm/UserManager;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    if-gez v1, :cond_1

    .line 397
    :cond_0
    return v0

    .line 395
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private readUser(I)Landroid/content/pm/UserInfo;
    .locals 13
    .parameter "id"

    .prologue
    .line 259
    const/4 v3, 0x0

    .line 260
    .local v3, flags:I
    const/4 v4, 0x0

    .line 262
    .local v4, name:Ljava/lang/String;
    const/4 v0, 0x0

    .line 264
    .local v0, fis:Ljava/io/FileInputStream;
    :try_start_0
    new-instance v8, Ljava/io/File;

    iget-object v10, p0, Lcom/android/server/pm/UserManager;->mUsersDir:Ljava/io/File;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ".xml"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v8, v10, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 265
    .local v8, userFile:Ljava/io/File;
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 266
    .end local v0           #fis:Ljava/io/FileInputStream;
    .local v1, fis:Ljava/io/FileInputStream;
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v5

    .line 267
    .local v5, parser:Lorg/xmlpull/v1/XmlPullParser;
    const/4 v10, 0x0

    invoke-interface {v5, v1, v10}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 270
    :cond_0
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    .local v7, type:I
    const/4 v10, 0x2

    if-eq v7, v10, :cond_1

    const/4 v10, 0x1

    if-ne v7, v10, :cond_0

    .line 274
    :cond_1
    const/4 v10, 0x2

    if-eq v7, v10, :cond_2

    .line 275
    const-string v10, "UserManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Unable to read user "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    const/4 v9, 0x0

    move-object v0, v1

    .line 306
    .end local v1           #fis:Ljava/io/FileInputStream;
    .end local v5           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v7           #type:I
    .end local v8           #userFile:Ljava/io/File;
    .restart local v0       #fis:Ljava/io/FileInputStream;
    :goto_0
    return-object v9

    .line 279
    .end local v0           #fis:Ljava/io/FileInputStream;
    .restart local v1       #fis:Ljava/io/FileInputStream;
    .restart local v5       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v7       #type:I
    .restart local v8       #userFile:Ljava/io/File;
    :cond_2
    const/4 v10, 0x2

    if-ne v7, v10, :cond_6

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    const-string v11, "user"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 280
    const/4 v10, 0x0

    const-string v11, "id"

    invoke-interface {v5, v10, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 281
    .local v6, storedId:Ljava/lang/String;
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    if-eq v10, p1, :cond_3

    .line 282
    const-string v10, "UserManager"

    const-string v11, "User id does not match the file name"

    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    const/4 v9, 0x0

    move-object v0, v1

    .end local v1           #fis:Ljava/io/FileInputStream;
    .restart local v0       #fis:Ljava/io/FileInputStream;
    goto :goto_0

    .line 285
    .end local v0           #fis:Ljava/io/FileInputStream;
    .restart local v1       #fis:Ljava/io/FileInputStream;
    :cond_3
    const/4 v10, 0x0

    const-string v11, "flags"

    invoke-interface {v5, v10, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 286
    .local v2, flagString:Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 289
    :cond_4
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    const/4 v10, 0x2

    if-eq v7, v10, :cond_5

    const/4 v10, 0x1

    if-ne v7, v10, :cond_4

    .line 291
    :cond_5
    const/4 v10, 0x2

    if-ne v7, v10, :cond_6

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    const-string v11, "name"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 292
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    .line 293
    const/4 v10, 0x4

    if-ne v7, v10, :cond_6

    .line 294
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v4

    .line 298
    .end local v2           #flagString:Ljava/lang/String;
    .end local v6           #storedId:Ljava/lang/String;
    :cond_6
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 300
    new-instance v9, Landroid/content/pm/UserInfo;

    invoke-direct {v9, p1, v4, v3}, Landroid/content/pm/UserInfo;-><init>(ILjava/lang/String;I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1

    .local v9, userInfo:Landroid/content/pm/UserInfo;
    move-object v0, v1

    .line 301
    .end local v1           #fis:Ljava/io/FileInputStream;
    .restart local v0       #fis:Ljava/io/FileInputStream;
    goto :goto_0

    .line 304
    .end local v5           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v7           #type:I
    .end local v8           #userFile:Ljava/io/File;
    .end local v9           #userInfo:Landroid/content/pm/UserInfo;
    :catch_0
    move-exception v10

    .line 306
    :goto_1
    const/4 v9, 0x0

    goto :goto_0

    .line 304
    .end local v0           #fis:Ljava/io/FileInputStream;
    .restart local v1       #fis:Ljava/io/FileInputStream;
    .restart local v8       #userFile:Ljava/io/File;
    :catch_1
    move-exception v10

    move-object v0, v1

    .end local v1           #fis:Ljava/io/FileInputStream;
    .restart local v0       #fis:Ljava/io/FileInputStream;
    goto :goto_1

    .line 303
    .end local v8           #userFile:Ljava/io/File;
    :catch_2
    move-exception v10

    goto :goto_1

    .end local v0           #fis:Ljava/io/FileInputStream;
    .restart local v1       #fis:Ljava/io/FileInputStream;
    .restart local v8       #userFile:Ljava/io/File;
    :catch_3
    move-exception v10

    move-object v0, v1

    .end local v1           #fis:Ljava/io/FileInputStream;
    .restart local v0       #fis:Ljava/io/FileInputStream;
    goto :goto_1
.end method

.method private readUserList()V
    .locals 13

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x2

    .line 111
    new-instance v9, Landroid/util/SparseArray;

    invoke-direct {v9}, Landroid/util/SparseArray;-><init>()V

    iput-object v9, p0, Lcom/android/server/pm/UserManager;->mUsers:Landroid/util/SparseArray;

    .line 112
    iget-object v9, p0, Lcom/android/server/pm/UserManager;->mUserListFile:Ljava/io/File;

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_1

    .line 113
    invoke-direct {p0}, Lcom/android/server/pm/UserManager;->fallbackToSingleUser()V

    .line 156
    :cond_0
    :goto_0
    return-void

    .line 116
    :cond_1
    const/4 v0, 0x0

    .line 118
    .local v0, fis:Ljava/io/FileInputStream;
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    iget-object v9, p0, Lcom/android/server/pm/UserManager;->mUserListFile:Ljava/io/File;

    invoke-direct {v1, v9}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_3

    .line 119
    .end local v0           #fis:Ljava/io/FileInputStream;
    .local v1, fis:Ljava/io/FileInputStream;
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v5

    .line 120
    .local v5, parser:Lorg/xmlpull/v1/XmlPullParser;
    const/4 v9, 0x0

    invoke-interface {v5, v1, v9}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 123
    :cond_2
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    .local v7, type:I
    if-eq v7, v11, :cond_3

    if-ne v7, v12, :cond_2

    .line 127
    :cond_3
    if-eq v7, v11, :cond_4

    .line 128
    const-string v9, "UserManager"

    const-string v10, "Unable to read user list"

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    invoke-direct {p0}, Lcom/android/server/pm/UserManager;->fallbackToSingleUser()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_7

    .line 148
    if-eqz v1, :cond_0

    .line 150
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 151
    :catch_0
    move-exception v4

    .line 152
    .local v4, ioex:Ljava/io/IOException;
    const-string v9, "UserManager"

    const-string v10, "Error when closing FileInputStream"

    .end local v1           #fis:Ljava/io/FileInputStream;
    .end local v5           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v7           #type:I
    :goto_1
    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 133
    .end local v4           #ioex:Ljava/io/IOException;
    .restart local v1       #fis:Ljava/io/FileInputStream;
    .restart local v5       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v7       #type:I
    :cond_4
    :goto_2
    :try_start_3
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    if-eq v7, v12, :cond_5

    .line 134
    if-ne v7, v11, :cond_4

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "user"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 135
    const/4 v9, 0x0

    const-string v10, "id"

    invoke-interface {v5, v9, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 136
    .local v2, id:Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-direct {p0, v9}, Lcom/android/server/pm/UserManager;->readUser(I)Landroid/content/pm/UserInfo;

    move-result-object v8

    .line 137
    .local v8, user:Landroid/content/pm/UserInfo;
    if-eqz v8, :cond_4

    .line 138
    iget-object v9, p0, Lcom/android/server/pm/UserManager;->mUsers:Landroid/util/SparseArray;

    iget v10, v8, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v9, v10, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_7

    goto :goto_2

    .line 143
    .end local v2           #id:Ljava/lang/String;
    .end local v5           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v7           #type:I
    .end local v8           #user:Landroid/content/pm/UserInfo;
    :catch_1
    move-exception v3

    move-object v0, v1

    .line 144
    .end local v1           #fis:Ljava/io/FileInputStream;
    .restart local v0       #fis:Ljava/io/FileInputStream;
    .local v3, ioe:Ljava/io/IOException;
    :goto_3
    :try_start_4
    invoke-direct {p0}, Lcom/android/server/pm/UserManager;->fallbackToSingleUser()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 148
    if-eqz v0, :cond_0

    .line 150
    :try_start_5
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_0

    .line 151
    :catch_2
    move-exception v4

    .line 152
    .restart local v4       #ioex:Ljava/io/IOException;
    const-string v9, "UserManager"

    const-string v10, "Error when closing FileInputStream"

    goto :goto_1

    .line 142
    .end local v0           #fis:Ljava/io/FileInputStream;
    .end local v3           #ioe:Ljava/io/IOException;
    .end local v4           #ioex:Ljava/io/IOException;
    .restart local v1       #fis:Ljava/io/FileInputStream;
    .restart local v5       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v7       #type:I
    :cond_5
    :try_start_6
    invoke-direct {p0}, Lcom/android/server/pm/UserManager;->updateUserIds()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_7

    .line 148
    if-eqz v1, :cond_6

    .line 150
    :try_start_7
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    :cond_6
    :goto_4
    move-object v0, v1

    .line 155
    .end local v1           #fis:Ljava/io/FileInputStream;
    .restart local v0       #fis:Ljava/io/FileInputStream;
    goto :goto_0

    .line 145
    .end local v5           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v7           #type:I
    :catch_3
    move-exception v6

    .line 146
    .local v6, pe:Lorg/xmlpull/v1/XmlPullParserException;
    :goto_5
    :try_start_8
    invoke-direct {p0}, Lcom/android/server/pm/UserManager;->fallbackToSingleUser()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 148
    if-eqz v0, :cond_0

    .line 150
    :try_start_9
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    goto/16 :goto_0

    .line 151
    :catch_4
    move-exception v4

    .line 152
    .restart local v4       #ioex:Ljava/io/IOException;
    const-string v9, "UserManager"

    const-string v10, "Error when closing FileInputStream"

    goto :goto_1

    .line 148
    .end local v4           #ioex:Ljava/io/IOException;
    .end local v6           #pe:Lorg/xmlpull/v1/XmlPullParserException;
    :catchall_0
    move-exception v9

    :goto_6
    if-eqz v0, :cond_7

    .line 150
    :try_start_a
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5

    .line 148
    :cond_7
    :goto_7
    throw v9

    .line 151
    :catch_5
    move-exception v4

    .line 152
    .restart local v4       #ioex:Ljava/io/IOException;
    const-string v10, "UserManager"

    const-string v11, "Error when closing FileInputStream"

    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 151
    .end local v0           #fis:Ljava/io/FileInputStream;
    .end local v4           #ioex:Ljava/io/IOException;
    .restart local v1       #fis:Ljava/io/FileInputStream;
    .restart local v5       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v7       #type:I
    :catch_6
    move-exception v4

    .line 152
    .restart local v4       #ioex:Ljava/io/IOException;
    const-string v9, "UserManager"

    const-string v10, "Error when closing FileInputStream"

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 148
    .end local v4           #ioex:Ljava/io/IOException;
    .end local v5           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v7           #type:I
    :catchall_1
    move-exception v9

    move-object v0, v1

    .end local v1           #fis:Ljava/io/FileInputStream;
    .restart local v0       #fis:Ljava/io/FileInputStream;
    goto :goto_6

    .line 145
    .end local v0           #fis:Ljava/io/FileInputStream;
    .restart local v1       #fis:Ljava/io/FileInputStream;
    :catch_7
    move-exception v6

    move-object v0, v1

    .end local v1           #fis:Ljava/io/FileInputStream;
    .restart local v0       #fis:Ljava/io/FileInputStream;
    goto :goto_5

    .line 143
    :catch_8
    move-exception v3

    goto :goto_3
.end method

.method private removePackageFolders(I)Z
    .locals 2
    .parameter "id"

    .prologue
    const/4 v1, 0x1

    .line 426
    iget-object v0, p0, Lcom/android/server/pm/UserManager;->mInstaller:Lcom/android/server/pm/Installer;

    if-nez v0, :cond_0

    .line 429
    :goto_0
    return v1

    .line 428
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/UserManager;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/Installer;->removeUserDataDirs(I)I

    goto :goto_0
.end method

.method private updateUserIds()V
    .locals 3

    .prologue
    .line 377
    iget-object v1, p0, Lcom/android/server/pm/UserManager;->mUserIds:[I

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/pm/UserManager;->mUserIds:[I

    array-length v1, v1

    iget-object v2, p0, Lcom/android/server/pm/UserManager;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 378
    :cond_0
    iget-object v1, p0, Lcom/android/server/pm/UserManager;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/android/server/pm/UserManager;->mUserIds:[I

    .line 380
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/server/pm/UserManager;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 381
    iget-object v1, p0, Lcom/android/server/pm/UserManager;->mUserIds:[I

    iget-object v2, p0, Lcom/android/server/pm/UserManager;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    aput v2, v1, v0

    .line 380
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 383
    :cond_2
    return-void
.end method

.method private writeUser(Landroid/content/pm/UserInfo;)V
    .locals 10
    .parameter "userInfo"

    .prologue
    .line 177
    const/4 v0, 0x0

    .line 179
    .local v0, bos:Ljava/io/BufferedOutputStream;
    :try_start_0
    new-instance v5, Ljava/io/File;

    iget-object v7, p0, Lcom/android/server/pm/UserManager;->mUsersDir:Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget v9, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".xml"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 180
    .local v5, mUserFile:Ljava/io/File;
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 181
    .local v2, fos:Ljava/io/FileOutputStream;
    new-instance v1, Ljava/io/BufferedOutputStream;

    invoke-direct {v1, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 184
    .end local v0           #bos:Ljava/io/BufferedOutputStream;
    .local v1, bos:Ljava/io/BufferedOutputStream;
    :try_start_1
    new-instance v6, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v6}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 185
    .local v6, serializer:Lorg/xmlpull/v1/XmlSerializer;
    const-string v7, "utf-8"

    invoke-interface {v6, v1, v7}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 186
    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 187
    const-string v7, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/4 v8, 0x1

    invoke-interface {v6, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 189
    const/4 v7, 0x0

    const-string v8, "user"

    invoke-interface {v6, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 190
    const/4 v7, 0x0

    const-string v8, "id"

    iget v9, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v6, v7, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 191
    const/4 v7, 0x0

    const-string v8, "flags"

    iget v9, p1, Landroid/content/pm/UserInfo;->flags:I

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v6, v7, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 193
    const/4 v7, 0x0

    const-string v8, "name"

    invoke-interface {v6, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 194
    iget-object v7, p1, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    invoke-interface {v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 195
    const/4 v7, 0x0

    const-string v8, "name"

    invoke-interface {v6, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 197
    const/4 v7, 0x0

    const-string v8, "user"

    invoke-interface {v6, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 199
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 203
    if-eqz v1, :cond_0

    .line 205
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    :cond_0
    :goto_0
    move-object v0, v1

    .line 211
    .end local v1           #bos:Ljava/io/BufferedOutputStream;
    .end local v2           #fos:Ljava/io/FileOutputStream;
    .end local v5           #mUserFile:Ljava/io/File;
    .end local v6           #serializer:Lorg/xmlpull/v1/XmlSerializer;
    .restart local v0       #bos:Ljava/io/BufferedOutputStream;
    :cond_1
    :goto_1
    return-void

    .line 200
    :catch_0
    move-exception v3

    .line 201
    .local v3, ioe:Ljava/io/IOException;
    :goto_2
    :try_start_3
    const-string v7, "UserManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error writing user info "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 203
    if-eqz v0, :cond_1

    .line 205
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 206
    :catch_1
    move-exception v4

    .line 207
    .local v4, ioex:Ljava/io/IOException;
    const-string v7, "UserManager"

    const-string v8, "Error when closing BufferedOutputStream"

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 203
    .end local v3           #ioe:Ljava/io/IOException;
    .end local v4           #ioex:Ljava/io/IOException;
    :catchall_0
    move-exception v7

    :goto_3
    if-eqz v0, :cond_2

    .line 205
    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 203
    :cond_2
    :goto_4
    throw v7

    .line 206
    :catch_2
    move-exception v4

    .line 207
    .restart local v4       #ioex:Ljava/io/IOException;
    const-string v8, "UserManager"

    const-string v9, "Error when closing BufferedOutputStream"

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 206
    .end local v0           #bos:Ljava/io/BufferedOutputStream;
    .end local v4           #ioex:Ljava/io/IOException;
    .restart local v1       #bos:Ljava/io/BufferedOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    .restart local v5       #mUserFile:Ljava/io/File;
    .restart local v6       #serializer:Lorg/xmlpull/v1/XmlSerializer;
    :catch_3
    move-exception v4

    .line 207
    .restart local v4       #ioex:Ljava/io/IOException;
    const-string v7, "UserManager"

    const-string v8, "Error when closing BufferedOutputStream"

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 203
    .end local v4           #ioex:Ljava/io/IOException;
    .end local v6           #serializer:Lorg/xmlpull/v1/XmlSerializer;
    :catchall_1
    move-exception v7

    move-object v0, v1

    .end local v1           #bos:Ljava/io/BufferedOutputStream;
    .restart local v0       #bos:Ljava/io/BufferedOutputStream;
    goto :goto_3

    .line 200
    .end local v0           #bos:Ljava/io/BufferedOutputStream;
    .restart local v1       #bos:Ljava/io/BufferedOutputStream;
    :catch_4
    move-exception v3

    move-object v0, v1

    .end local v1           #bos:Ljava/io/BufferedOutputStream;
    .restart local v0       #bos:Ljava/io/BufferedOutputStream;
    goto :goto_2
.end method

.method private writeUserList()V
    .locals 11

    .prologue
    .line 222
    const/4 v0, 0x0

    .line 224
    .local v0, bos:Ljava/io/BufferedOutputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v8, p0, Lcom/android/server/pm/UserManager;->mUserListFile:Ljava/io/File;

    invoke-direct {v2, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 225
    .local v2, fos:Ljava/io/FileOutputStream;
    new-instance v1, Ljava/io/BufferedOutputStream;

    invoke-direct {v1, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 228
    .end local v0           #bos:Ljava/io/BufferedOutputStream;
    .local v1, bos:Ljava/io/BufferedOutputStream;
    :try_start_1
    new-instance v6, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v6}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 229
    .local v6, serializer:Lorg/xmlpull/v1/XmlSerializer;
    const-string v8, "utf-8"

    invoke-interface {v6, v1, v8}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 230
    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-interface {v6, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 231
    const-string v8, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/4 v9, 0x1

    invoke-interface {v6, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 233
    const/4 v8, 0x0

    const-string v9, "users"

    invoke-interface {v6, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 235
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    iget-object v8, p0, Lcom/android/server/pm/UserManager;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v8

    if-ge v3, v8, :cond_0

    .line 236
    iget-object v8, p0, Lcom/android/server/pm/UserManager;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v8, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/UserInfo;

    .line 237
    .local v7, user:Landroid/content/pm/UserInfo;
    const/4 v8, 0x0

    const-string v9, "user"

    invoke-interface {v6, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 238
    const/4 v8, 0x0

    const-string v9, "id"

    iget v10, v7, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v6, v8, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 239
    const/4 v8, 0x0

    const-string v9, "user"

    invoke-interface {v6, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 235
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 242
    .end local v7           #user:Landroid/content/pm/UserInfo;
    :cond_0
    const/4 v8, 0x0

    const-string v9, "users"

    invoke-interface {v6, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 244
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 248
    if-eqz v1, :cond_1

    .line 250
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    :cond_1
    :goto_1
    move-object v0, v1

    .line 256
    .end local v1           #bos:Ljava/io/BufferedOutputStream;
    .end local v2           #fos:Ljava/io/FileOutputStream;
    .end local v3           #i:I
    .end local v6           #serializer:Lorg/xmlpull/v1/XmlSerializer;
    .restart local v0       #bos:Ljava/io/BufferedOutputStream;
    :cond_2
    :goto_2
    return-void

    .line 245
    :catch_0
    move-exception v4

    .line 246
    .local v4, ioe:Ljava/io/IOException;
    :goto_3
    :try_start_3
    const-string v8, "UserManager"

    const-string v9, "Error writing user list"

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 248
    if-eqz v0, :cond_2

    .line 250
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    .line 251
    :catch_1
    move-exception v5

    .line 252
    .local v5, ioex:Ljava/io/IOException;
    const-string v8, "UserManager"

    const-string v9, "Error when closing BufferedOutputStream"

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 248
    .end local v4           #ioe:Ljava/io/IOException;
    .end local v5           #ioex:Ljava/io/IOException;
    :catchall_0
    move-exception v8

    :goto_4
    if-eqz v0, :cond_3

    .line 250
    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 248
    :cond_3
    :goto_5
    throw v8

    .line 251
    :catch_2
    move-exception v5

    .line 252
    .restart local v5       #ioex:Ljava/io/IOException;
    const-string v9, "UserManager"

    const-string v10, "Error when closing BufferedOutputStream"

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 251
    .end local v0           #bos:Ljava/io/BufferedOutputStream;
    .end local v5           #ioex:Ljava/io/IOException;
    .restart local v1       #bos:Ljava/io/BufferedOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    .restart local v3       #i:I
    .restart local v6       #serializer:Lorg/xmlpull/v1/XmlSerializer;
    :catch_3
    move-exception v5

    .line 252
    .restart local v5       #ioex:Ljava/io/IOException;
    const-string v8, "UserManager"

    const-string v9, "Error when closing BufferedOutputStream"

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 248
    .end local v3           #i:I
    .end local v5           #ioex:Ljava/io/IOException;
    .end local v6           #serializer:Lorg/xmlpull/v1/XmlSerializer;
    :catchall_1
    move-exception v8

    move-object v0, v1

    .end local v1           #bos:Ljava/io/BufferedOutputStream;
    .restart local v0       #bos:Ljava/io/BufferedOutputStream;
    goto :goto_4

    .line 245
    .end local v0           #bos:Ljava/io/BufferedOutputStream;
    .restart local v1       #bos:Ljava/io/BufferedOutputStream;
    :catch_4
    move-exception v4

    move-object v0, v1

    .end local v1           #bos:Ljava/io/BufferedOutputStream;
    .restart local v0       #bos:Ljava/io/BufferedOutputStream;
    goto :goto_3
.end method


# virtual methods
.method public clearUserDataForAllUsers(Ljava/lang/String;)V
    .locals 5
    .parameter "packageName"

    .prologue
    .line 356
    iget-object v0, p0, Lcom/android/server/pm/UserManager;->mUserIds:[I

    .local v0, arr$:[I
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget v3, v0, v1

    .line 358
    .local v3, userId:I
    if-nez v3, :cond_0

    .line 356
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 360
    :cond_0
    iget-object v4, p0, Lcom/android/server/pm/UserManager;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-virtual {v4, p1, v3}, Lcom/android/server/pm/Installer;->clearUserData(Ljava/lang/String;I)I

    goto :goto_1

    .line 362
    .end local v3           #userId:I
    :cond_1
    return-void
.end method

.method public createUser(Ljava/lang/String;ILjava/util/List;)Landroid/content/pm/UserInfo;
    .locals 5
    .parameter "name"
    .parameter "flags"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;)",
            "Landroid/content/pm/UserInfo;"
        }
    .end annotation

    .prologue
    .line 310
    .local p3, apps:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-direct {p0}, Lcom/android/server/pm/UserManager;->getNextAvailableId()I

    move-result v0

    .line 311
    .local v0, userId:I
    new-instance v1, Landroid/content/pm/UserInfo;

    invoke-direct {v1, v0, p1, p2}, Landroid/content/pm/UserInfo;-><init>(ILjava/lang/String;I)V

    .line 312
    .local v1, userInfo:Landroid/content/pm/UserInfo;
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/android/server/pm/UserManager;->mBaseUserPath:Ljava/io/File;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 313
    .local v2, userPath:Ljava/io/File;
    invoke-direct {p0, v0, v2, p3}, Lcom/android/server/pm/UserManager;->createPackageFolders(ILjava/io/File;Ljava/util/List;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 314
    const/4 v1, 0x0

    .line 320
    .end local v1           #userInfo:Landroid/content/pm/UserInfo;
    :goto_0
    return-object v1

    .line 316
    .restart local v1       #userInfo:Landroid/content/pm/UserInfo;
    :cond_0
    iget-object v3, p0, Lcom/android/server/pm/UserManager;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 317
    invoke-direct {p0}, Lcom/android/server/pm/UserManager;->writeUserList()V

    .line 318
    invoke-direct {p0, v1}, Lcom/android/server/pm/UserManager;->writeUser(Landroid/content/pm/UserInfo;)V

    .line 319
    invoke-direct {p0}, Lcom/android/server/pm/UserManager;->updateUserIds()V

    goto :goto_0
.end method

.method getUserIds()[I
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/server/pm/UserManager;->mUserIds:[I

    return-object v0
.end method

.method public getUsers()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 94
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/pm/UserManager;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 95
    .local v1, users:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/UserInfo;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/server/pm/UserManager;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 96
    iget-object v2, p0, Lcom/android/server/pm/UserManager;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 98
    :cond_0
    return-object v1
.end method

.method public installPackageForAllUsers(Ljava/lang/String;I)V
    .locals 6
    .parameter "packageName"
    .parameter "uid"

    .prologue
    .line 346
    iget-object v0, p0, Lcom/android/server/pm/UserManager;->mUserIds:[I

    .local v0, arr$:[I
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget v3, v0, v1

    .line 348
    .local v3, userId:I
    if-nez v3, :cond_0

    .line 346
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 350
    :cond_0
    iget-object v4, p0, Lcom/android/server/pm/UserManager;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-static {v3, p2}, Landroid/content/pm/PackageManager;->getUid(II)I

    move-result v5

    invoke-virtual {v4, p1, v5, v3}, Lcom/android/server/pm/Installer;->createUserData(Ljava/lang/String;II)I

    goto :goto_1

    .line 353
    .end local v3           #userId:I
    :cond_1
    return-void
.end method

.method public removePackageForAllUsers(Ljava/lang/String;)V
    .locals 5
    .parameter "packageName"

    .prologue
    .line 365
    iget-object v0, p0, Lcom/android/server/pm/UserManager;->mUserIds:[I

    .local v0, arr$:[I
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget v3, v0, v1

    .line 367
    .local v3, userId:I
    if-nez v3, :cond_0

    .line 365
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 369
    :cond_0
    iget-object v4, p0, Lcom/android/server/pm/UserManager;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-virtual {v4, p1, v3}, Lcom/android/server/pm/Installer;->remove(Ljava/lang/String;I)I

    goto :goto_1

    .line 371
    .end local v3           #userId:I
    :cond_1
    return-void
.end method

.method public removeUser(I)V
    .locals 5
    .parameter "id"

    .prologue
    .line 330
    iget-object v2, p0, Lcom/android/server/pm/UserManager;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    .line 331
    .local v1, userInfo:Landroid/content/pm/UserInfo;
    if-eqz v1, :cond_0

    .line 333
    iget-object v2, p0, Lcom/android/server/pm/UserManager;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 335
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/android/server/pm/UserManager;->mUsersDir:Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".xml"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 336
    .local v0, userFile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 338
    invoke-direct {p0}, Lcom/android/server/pm/UserManager;->writeUserList()V

    .line 340
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManager;->removePackageFolders(I)Z

    .line 341
    invoke-direct {p0}, Lcom/android/server/pm/UserManager;->updateUserIds()V

    .line 343
    .end local v0           #userFile:Ljava/io/File;
    :cond_0
    return-void
.end method

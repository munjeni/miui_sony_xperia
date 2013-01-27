.class Lcom/android/server/pm/ExtraPackageManagerServices;
.super Ljava/lang/Object;
.source "ExtraPackageManagerServices.java"


# static fields
.field private static final INSTALL_DIR:Ljava/lang/String; = "/data/app/"

.field private static final PREINSTALL_DIR:Ljava/lang/String; = "/data/media/preinstall_apps/"

.field private static final PREINSTALL_HISTORY_FILE:Ljava/lang/String; = "/data/system/preinstall_history"

.field private static final REINSTALL_MARK_FILE:Ljava/lang/String; = "/data/media/preinstall_apps/reinstall_apps"

.field private static final TAG:Ljava/lang/String; = "ExtraPackageManager"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static deleteOdexFile(Ljava/lang/String;)V
    .locals 4
    .parameter "apkName"

    .prologue
    .line 70
    const-string v2, ".apk"

    const-string v3, ".odex"

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 71
    .local v1, odexName:Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/data/app/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 72
    .local v0, installOdex:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 73
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 75
    :cond_0
    return-void
.end method

.method private static installPreinstallApp(Ljava/io/File;)V
    .locals 4
    .parameter "apkFile"

    .prologue
    .line 78
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 79
    .local v0, apkName:Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/data/app/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 80
    .local v1, installApk:Ljava/io/File;
    invoke-static {p0, v1}, Landroid/os/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    .line 81
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/io/File;->setReadable(ZZ)Z

    .line 82
    invoke-static {v0}, Lcom/android/server/pm/ExtraPackageManagerServices;->deleteOdexFile(Ljava/lang/String;)V

    .line 83
    return-void
.end method

.method private static final isPackageFilename(Ljava/lang/String;)Z
    .locals 1
    .parameter "name"

    .prologue
    .line 86
    if-eqz p0, :cond_0

    const-string v0, ".apk"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static packagePermissionsUpdate(Lcom/android/server/pm/Settings;Lcom/android/server/pm/PackageSetting;Landroid/content/pm/PackageParser$Package;)V
    .locals 8
    .parameter "curPkgSettings"
    .parameter "ps"
    .parameter "pkg"

    .prologue
    .line 98
    iget-object v6, p1, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    if-eqz v6, :cond_1

    iget-object v2, p1, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    .line 99
    .local v2, gp:Lcom/android/server/pm/GrantedPermissions;
    :goto_0
    iget-object v6, p2, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 100
    .local v0, N:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v0, :cond_3

    .line 101
    iget-object v6, p2, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 102
    .local v4, name:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/pm/Settings;->mPermissions:Ljava/util/HashMap;

    invoke-virtual {v6, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/BasePermission;

    .line 103
    .local v1, bp:Lcom/android/server/pm/BasePermission;
    if-eqz v1, :cond_0

    .line 104
    iget-object v5, v1, Lcom/android/server/pm/BasePermission;->name:Ljava/lang/String;

    .line 105
    .local v5, perm:Ljava/lang/String;
    iget-object v6, v2, Lcom/android/server/pm/GrantedPermissions;->grantedPermissions:Ljava/util/HashSet;

    invoke-virtual {v6, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 106
    iget-object v6, v2, Lcom/android/server/pm/GrantedPermissions;->grantedPermissions:Ljava/util/HashSet;

    invoke-virtual {v6, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 107
    iget-object v6, v2, Lcom/android/server/pm/GrantedPermissions;->gids:[I

    iget-object v7, v1, Lcom/android/server/pm/BasePermission;->gids:[I

    invoke-static {v6, v7}, Lcom/android/server/pm/PackageManagerService;->appendInts([I[I)[I

    move-result-object v6

    iput-object v6, v2, Lcom/android/server/pm/GrantedPermissions;->gids:[I

    .line 100
    .end local v5           #perm:Ljava/lang/String;
    :cond_0
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .end local v0           #N:I
    .end local v1           #bp:Lcom/android/server/pm/BasePermission;
    .end local v2           #gp:Lcom/android/server/pm/GrantedPermissions;
    .end local v3           #i:I
    .end local v4           #name:Ljava/lang/String;
    :cond_1
    move-object v2, p1

    .line 98
    goto :goto_0

    .line 108
    .restart local v0       #N:I
    .restart local v1       #bp:Lcom/android/server/pm/BasePermission;
    .restart local v2       #gp:Lcom/android/server/pm/GrantedPermissions;
    .restart local v3       #i:I
    .restart local v4       #name:Ljava/lang/String;
    .restart local v5       #perm:Ljava/lang/String;
    :cond_2
    iget-boolean v6, p1, Lcom/android/server/pm/PackageSetting;->haveGids:Z

    if-nez v6, :cond_0

    .line 109
    iget-object v6, v2, Lcom/android/server/pm/GrantedPermissions;->gids:[I

    iget-object v7, v1, Lcom/android/server/pm/BasePermission;->gids:[I

    invoke-static {v6, v7}, Lcom/android/server/pm/PackageManagerService;->appendInts([I[I)[I

    move-result-object v6

    iput-object v6, v2, Lcom/android/server/pm/GrantedPermissions;->gids:[I

    goto :goto_2

    .line 113
    .end local v1           #bp:Lcom/android/server/pm/BasePermission;
    .end local v4           #name:Ljava/lang/String;
    .end local v5           #perm:Ljava/lang/String;
    :cond_3
    return-void
.end method

.method private static parsePackage(Ljava/io/File;)Landroid/content/pm/PackageParser$Package;
    .locals 4
    .parameter "apkFile"

    .prologue
    .line 90
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 91
    .local v0, apkPath:Ljava/lang/String;
    const/4 v1, 0x4

    .line 92
    .local v1, parseFlags:I
    new-instance v2, Landroid/content/pm/PackageParser;

    invoke-direct {v2, v0}, Landroid/content/pm/PackageParser;-><init>(Ljava/lang/String;)V

    .line 93
    .local v2, pp:Landroid/content/pm/PackageParser;
    const/4 v3, 0x0

    invoke-virtual {v2, p0, v0, v3, v1}, Landroid/content/pm/PackageParser;->parsePackage(Ljava/io/File;Ljava/lang/String;Landroid/util/DisplayMetrics;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v3

    return-object v3
.end method

.method public static performPreinstallApp(Lcom/android/server/pm/Settings;)V
    .locals 15
    .parameter "curPkgSettings"

    .prologue
    .line 116
    new-instance v5, Ljava/io/File;

    const-string v12, "/data/media/preinstall_apps/"

    invoke-direct {v5, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 118
    .local v5, preinstallAppDir:Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v6

    .line 119
    .local v6, preinstallAppNames:[Ljava/lang/String;
    if-nez v6, :cond_1

    .line 120
    const-string v12, "ExtraPackageManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "No files in preinstall app dir "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    :cond_0
    :goto_0
    return-void

    .line 124
    :cond_1
    const-string v12, "/data/system/preinstall_history"

    invoke-static {v12}, Lcom/android/server/pm/ExtraPackageManagerServices;->readPreinstallAppHistory(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 126
    .local v2, installHistory:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v9, Ljava/io/File;

    const-string v12, "/data/media/preinstall_apps/reinstall_apps"

    invoke-direct {v9, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 127
    .local v9, reinstallMarkFile:Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v3

    .line 129
    .local v3, isNeedReinstall:Z
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v12, v6

    if-ge v1, v12, :cond_9

    .line 130
    aget-object v7, v6, v1

    .line 131
    .local v7, preinstallName:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/server/pm/ExtraPackageManagerServices;->isPackageFilename(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_3

    .line 129
    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 136
    :cond_3
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 137
    .local v0, hasRecorded:Z
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v5, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 138
    .local v4, preinstallApp:Ljava/io/File;
    invoke-static {v4}, Lcom/android/server/pm/ExtraPackageManagerServices;->parsePackage(Ljava/io/File;)Landroid/content/pm/PackageParser$Package;

    move-result-object v8

    .line 139
    .local v8, preinstallPkg:Landroid/content/pm/PackageParser$Package;
    if-nez v8, :cond_4

    .line 140
    const-string v12, "ExtraPackageManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "preinstall app "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " package parser fail!"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 144
    :cond_4
    iget-object v12, v8, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v12}, Lcom/android/server/pm/Settings;->peekPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v11

    .line 147
    .local v11, userPkgSetting:Lcom/android/server/pm/PackageSetting;
    if-eqz v11, :cond_7

    .line 149
    iget v12, v8, Landroid/content/pm/PackageParser$Package;->mVersionCode:I

    iget v13, v11, Lcom/android/server/pm/PackageSetting;->versionCode:I

    if-le v12, v13, :cond_6

    .line 152
    iget v12, v11, Lcom/android/server/pm/PackageSetting;->pkgFlags:I

    and-int/lit8 v12, v12, 0x1

    if-nez v12, :cond_5

    .line 153
    iget-object v10, v11, Lcom/android/server/pm/PackageSetting;->codePath:Ljava/io/File;

    .line 154
    .local v10, userApkFile:Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/android/server/pm/ExtraPackageManagerServices;->deleteOdexFile(Ljava/lang/String;)V

    .line 155
    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    .line 158
    .end local v10           #userApkFile:Ljava/io/File;
    :cond_5
    invoke-static {v4}, Lcom/android/server/pm/ExtraPackageManagerServices;->installPreinstallApp(Ljava/io/File;)V

    .line 162
    invoke-static {p0, v11, v8}, Lcom/android/server/pm/ExtraPackageManagerServices;->packagePermissionsUpdate(Lcom/android/server/pm/Settings;Lcom/android/server/pm/PackageSetting;Landroid/content/pm/PackageParser$Package;)V

    .line 171
    :cond_6
    :goto_3
    if-nez v0, :cond_2

    .line 172
    const-string v12, "/data/system/preinstall_history"

    invoke-static {v12, v7}, Lcom/android/server/pm/ExtraPackageManagerServices;->writePreinstallAppHistory(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 166
    :cond_7
    if-eqz v0, :cond_8

    if-eqz v3, :cond_6

    .line 167
    :cond_8
    invoke-static {v4}, Lcom/android/server/pm/ExtraPackageManagerServices;->installPreinstallApp(Ljava/io/File;)V

    goto :goto_3

    .line 176
    .end local v0           #hasRecorded:Z
    .end local v4           #preinstallApp:Ljava/io/File;
    .end local v7           #preinstallName:Ljava/lang/String;
    .end local v8           #preinstallPkg:Landroid/content/pm/PackageParser$Package;
    .end local v11           #userPkgSetting:Lcom/android/server/pm/PackageSetting;
    :cond_9
    if-eqz v3, :cond_0

    .line 177
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    goto/16 :goto_0
.end method

.method private static readPreinstallAppHistory(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 6
    .parameter "filePath"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 25
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 28
    .local v2, hisList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 30
    .local v3, installHistoryFile:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    .line 47
    .end local v3           #installHistoryFile:Ljava/io/File;
    :goto_0
    return-object v2

    .line 34
    .restart local v3       #installHistoryFile:Ljava/io/File;
    :cond_0
    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, v3}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    .line 35
    .local v1, fileReader:Ljava/io/FileReader;
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 36
    .local v0, bufferReader:Ljava/io/BufferedReader;
    const/4 v4, 0x0

    .line 38
    .local v4, line:Ljava/lang/String;
    :goto_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 39
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 44
    .end local v0           #bufferReader:Ljava/io/BufferedReader;
    .end local v1           #fileReader:Ljava/io/FileReader;
    .end local v3           #installHistoryFile:Ljava/io/File;
    .end local v4           #line:Ljava/lang/String;
    :catch_0
    move-exception v5

    goto :goto_0

    .line 42
    .restart local v0       #bufferReader:Ljava/io/BufferedReader;
    .restart local v1       #fileReader:Ljava/io/FileReader;
    .restart local v3       #installHistoryFile:Ljava/io/File;
    .restart local v4       #line:Ljava/lang/String;
    :cond_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 43
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method private static writePreinstallAppHistory(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "filePath"
    .parameter "installPkgName"

    .prologue
    .line 52
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 54
    .local v2, installHistoryFile:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 55
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    .line 58
    :cond_0
    new-instance v1, Ljava/io/FileWriter;

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    .line 59
    .local v1, fileWriter:Ljava/io/FileWriter;
    new-instance v0, Ljava/io/BufferedWriter;

    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 60
    .local v0, bufferWriter:Ljava/io/BufferedWriter;
    invoke-virtual {v0, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 61
    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 63
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V

    .line 64
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    .end local v0           #bufferWriter:Ljava/io/BufferedWriter;
    .end local v1           #fileWriter:Ljava/io/FileWriter;
    .end local v2           #installHistoryFile:Ljava/io/File;
    :goto_0
    return-void

    .line 65
    :catch_0
    move-exception v3

    goto :goto_0
.end method

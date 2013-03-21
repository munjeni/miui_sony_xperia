.class Lcom/android/server/pm/ExtraPackageManagerServices;
.super Ljava/lang/Object;
.source "ExtraPackageManagerServices.java"


# static fields
.field private static final INSTALL_DIR:Ljava/lang/String; = "/data/app/"

.field private static final PREINSTALL_HISTORY_FILE:Ljava/lang/String; = "/data/system/preinstall_history"

.field private static final REINSTALL_MARK_FILE:Ljava/lang/String; = "reinstall_apps"

.field private static final TAG:Ljava/lang/String; = "ExtraPackageManagerServices"

.field private static final THIRD_PART_DEV_PREINSTALL_DIR:Ljava/lang/String; = "/data/preinstall_apps/"

.field private static final XIAOMI_PREINSTALL_DIR:Ljava/lang/String; = "/data/media/preinstall_apps/"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blockAutoStartedApp(Landroid/content/pm/ApplicationInfo;Lcom/android/server/pm/Settings;)V
    .locals 4
    .parameter "info"
    .parameter "curPkgSettings"

    .prologue
    const/4 v3, 0x1

    .line 194
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    .line 195
    .local v0, uid:I
    if-eqz p0, :cond_0

    iget v1, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v2, 0x4000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    .line 196
    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v1, v3, v3, v0}, Lcom/android/server/pm/Settings;->setPackageStoppedStateLPw(Ljava/lang/String;ZZI)Z

    .line 198
    :cond_0
    return-void
.end method

.method private static deleteOdexFile(Ljava/lang/String;)V
    .locals 4
    .parameter "apkName"

    .prologue
    .line 74
    const-string v2, ".apk"

    const-string v3, ".odex"

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 75
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

    .line 76
    .local v0, installOdex:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 77
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 79
    :cond_0
    return-void
.end method

.method private static installPreinstallApp(Ljava/io/File;)V
    .locals 4
    .parameter "apkFile"

    .prologue
    .line 82
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 83
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

    .line 84
    .local v1, installApk:Ljava/io/File;
    invoke-static {p0, v1}, Landroid/os/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    .line 85
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/io/File;->setReadable(ZZ)Z

    .line 86
    invoke-static {v0}, Lcom/android/server/pm/ExtraPackageManagerServices;->deleteOdexFile(Ljava/lang/String;)V

    .line 87
    return-void
.end method

.method private static final isPackageFilename(Ljava/lang/String;)Z
    .locals 1
    .parameter "name"

    .prologue
    .line 90
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
    .line 102
    iget-object v6, p1, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    if-eqz v6, :cond_1

    iget-object v2, p1, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    .line 103
    .local v2, gp:Lcom/android/server/pm/GrantedPermissions;
    :goto_0
    iget-object v6, p2, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 104
    .local v0, N:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v0, :cond_3

    .line 105
    iget-object v6, p2, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 106
    .local v4, name:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/pm/Settings;->mPermissions:Ljava/util/HashMap;

    invoke-virtual {v6, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/BasePermission;

    .line 107
    .local v1, bp:Lcom/android/server/pm/BasePermission;
    if-eqz v1, :cond_0

    .line 108
    iget-object v5, v1, Lcom/android/server/pm/BasePermission;->name:Ljava/lang/String;

    .line 109
    .local v5, perm:Ljava/lang/String;
    iget-object v6, v2, Lcom/android/server/pm/GrantedPermissions;->grantedPermissions:Ljava/util/HashSet;

    invoke-virtual {v6, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 110
    iget-object v6, v2, Lcom/android/server/pm/GrantedPermissions;->grantedPermissions:Ljava/util/HashSet;

    invoke-virtual {v6, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 111
    iget-object v6, v2, Lcom/android/server/pm/GrantedPermissions;->gids:[I

    iget-object v7, v1, Lcom/android/server/pm/BasePermission;->gids:[I

    invoke-static {v6, v7}, Lcom/android/server/pm/PackageManagerService;->appendInts([I[I)[I

    move-result-object v6

    iput-object v6, v2, Lcom/android/server/pm/GrantedPermissions;->gids:[I

    .line 104
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

    .line 102
    goto :goto_0

    .line 112
    .restart local v0       #N:I
    .restart local v1       #bp:Lcom/android/server/pm/BasePermission;
    .restart local v2       #gp:Lcom/android/server/pm/GrantedPermissions;
    .restart local v3       #i:I
    .restart local v4       #name:Ljava/lang/String;
    .restart local v5       #perm:Ljava/lang/String;
    :cond_2
    iget-boolean v6, p1, Lcom/android/server/pm/PackageSetting;->haveGids:Z

    if-nez v6, :cond_0

    .line 113
    iget-object v6, v2, Lcom/android/server/pm/GrantedPermissions;->gids:[I

    iget-object v7, v1, Lcom/android/server/pm/BasePermission;->gids:[I

    invoke-static {v6, v7}, Lcom/android/server/pm/PackageManagerService;->appendInts([I[I)[I

    move-result-object v6

    iput-object v6, v2, Lcom/android/server/pm/GrantedPermissions;->gids:[I

    goto :goto_2

    .line 117
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
    .line 94
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 95
    .local v0, apkPath:Ljava/lang/String;
    const/4 v1, 0x4

    .line 96
    .local v1, parseFlags:I
    new-instance v2, Landroid/content/pm/PackageParser;

    invoke-direct {v2, v0}, Landroid/content/pm/PackageParser;-><init>(Ljava/lang/String;)V

    .line 97
    .local v2, pp:Landroid/content/pm/PackageParser;
    const/4 v3, 0x0

    invoke-virtual {v2, p0, v0, v3, v1}, Landroid/content/pm/PackageParser;->parsePackage(Ljava/io/File;Ljava/lang/String;Landroid/util/DisplayMetrics;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v3

    return-object v3
.end method

.method public static performPreinstallApp(Lcom/android/server/pm/Settings;)V
    .locals 17
    .parameter "curPkgSettings"

    .prologue
    .line 120
    const/4 v1, 0x0

    .line 122
    .local v1, dir:Ljava/lang/String;
    sget-boolean v14, Lmiui/os/Build;->IS_XIAOMI:Z

    if-eqz v14, :cond_1

    .line 123
    const-string v1, "/data/media/preinstall_apps/"

    .line 128
    :goto_0
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 130
    .local v7, preinstallAppDir:Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v8

    .line 131
    .local v8, preinstallAppNames:[Ljava/lang/String;
    if-nez v8, :cond_2

    .line 132
    const-string v14, "ExtraPackageManagerServices"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "No files in preinstall app dir "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    :cond_0
    :goto_1
    return-void

    .line 125
    .end local v7           #preinstallAppDir:Ljava/io/File;
    .end local v8           #preinstallAppNames:[Ljava/lang/String;
    :cond_1
    const-string v1, "/data/preinstall_apps/"

    goto :goto_0

    .line 136
    .restart local v7       #preinstallAppDir:Ljava/io/File;
    .restart local v8       #preinstallAppNames:[Ljava/lang/String;
    :cond_2
    const-string v14, "/data/system/preinstall_history"

    invoke-static {v14}, Lcom/android/server/pm/ExtraPackageManagerServices;->readPreinstallAppHistory(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 138
    .local v4, installHistory:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v11, Ljava/io/File;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "reinstall_apps"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v11, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 139
    .local v11, reinstallMarkFile:Ljava/io/File;
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v5

    .line 141
    .local v5, isNeedReinstall:Z
    const/4 v3, 0x0

    .local v3, i:I
    :goto_2
    array-length v14, v8

    if-ge v3, v14, :cond_a

    .line 142
    aget-object v9, v8, v3

    .line 143
    .local v9, preinstallName:Ljava/lang/String;
    invoke-static {v9}, Lcom/android/server/pm/ExtraPackageManagerServices;->isPackageFilename(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_4

    .line 141
    :cond_3
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 148
    :cond_4
    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    .line 149
    .local v2, hasRecorded:Z
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v7, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 150
    .local v6, preinstallApp:Ljava/io/File;
    invoke-static {v6}, Lcom/android/server/pm/ExtraPackageManagerServices;->parsePackage(Ljava/io/File;)Landroid/content/pm/PackageParser$Package;

    move-result-object v10

    .line 151
    .local v10, preinstallPkg:Landroid/content/pm/PackageParser$Package;
    if-nez v10, :cond_5

    .line 152
    const-string v14, "ExtraPackageManagerServices"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "preinstall app "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " package parser fail!"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 156
    :cond_5
    iget-object v14, v10, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/server/pm/Settings;->peekPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v13

    .line 159
    .local v13, userPkgSetting:Lcom/android/server/pm/PackageSetting;
    if-eqz v13, :cond_8

    .line 161
    iget v14, v10, Landroid/content/pm/PackageParser$Package;->mVersionCode:I

    iget v15, v13, Lcom/android/server/pm/PackageSetting;->versionCode:I

    if-le v14, v15, :cond_7

    .line 164
    iget v14, v13, Lcom/android/server/pm/PackageSetting;->pkgFlags:I

    and-int/lit8 v14, v14, 0x1

    if-nez v14, :cond_6

    .line 165
    iget-object v12, v13, Lcom/android/server/pm/PackageSetting;->codePath:Ljava/io/File;

    .line 166
    .local v12, userApkFile:Ljava/io/File;
    invoke-virtual {v12}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/android/server/pm/ExtraPackageManagerServices;->deleteOdexFile(Ljava/lang/String;)V

    .line 167
    invoke-virtual {v12}, Ljava/io/File;->delete()Z

    .line 170
    .end local v12           #userApkFile:Ljava/io/File;
    :cond_6
    invoke-static {v6}, Lcom/android/server/pm/ExtraPackageManagerServices;->installPreinstallApp(Ljava/io/File;)V

    .line 174
    move-object/from16 v0, p0

    invoke-static {v0, v13, v10}, Lcom/android/server/pm/ExtraPackageManagerServices;->packagePermissionsUpdate(Lcom/android/server/pm/Settings;Lcom/android/server/pm/PackageSetting;Landroid/content/pm/PackageParser$Package;)V

    .line 183
    :cond_7
    :goto_4
    if-nez v2, :cond_3

    .line 184
    const-string v14, "/data/system/preinstall_history"

    invoke-static {v14, v9}, Lcom/android/server/pm/ExtraPackageManagerServices;->writePreinstallAppHistory(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 178
    :cond_8
    if-eqz v2, :cond_9

    if-eqz v5, :cond_7

    .line 179
    :cond_9
    invoke-static {v6}, Lcom/android/server/pm/ExtraPackageManagerServices;->installPreinstallApp(Ljava/io/File;)V

    goto :goto_4

    .line 188
    .end local v2           #hasRecorded:Z
    .end local v6           #preinstallApp:Ljava/io/File;
    .end local v9           #preinstallName:Ljava/lang/String;
    .end local v10           #preinstallPkg:Landroid/content/pm/PackageParser$Package;
    .end local v13           #userPkgSetting:Lcom/android/server/pm/PackageSetting;
    :cond_a
    if-eqz v5, :cond_0

    .line 189
    invoke-virtual {v11}, Ljava/io/File;->delete()Z

    goto/16 :goto_1
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
    .line 29
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 32
    .local v2, hisList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 34
    .local v3, installHistoryFile:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    .line 51
    .end local v3           #installHistoryFile:Ljava/io/File;
    :goto_0
    return-object v2

    .line 38
    .restart local v3       #installHistoryFile:Ljava/io/File;
    :cond_0
    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, v3}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    .line 39
    .local v1, fileReader:Ljava/io/FileReader;
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 40
    .local v0, bufferReader:Ljava/io/BufferedReader;
    const/4 v4, 0x0

    .line 42
    .local v4, line:Ljava/lang/String;
    :goto_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 43
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 48
    .end local v0           #bufferReader:Ljava/io/BufferedReader;
    .end local v1           #fileReader:Ljava/io/FileReader;
    .end local v3           #installHistoryFile:Ljava/io/File;
    .end local v4           #line:Ljava/lang/String;
    :catch_0
    move-exception v5

    goto :goto_0

    .line 46
    .restart local v0       #bufferReader:Ljava/io/BufferedReader;
    .restart local v1       #fileReader:Ljava/io/FileReader;
    .restart local v3       #installHistoryFile:Ljava/io/File;
    .restart local v4       #line:Ljava/lang/String;
    :cond_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 47
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
    .line 56
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 58
    .local v2, installHistoryFile:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 59
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    .line 62
    :cond_0
    new-instance v1, Ljava/io/FileWriter;

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    .line 63
    .local v1, fileWriter:Ljava/io/FileWriter;
    new-instance v0, Ljava/io/BufferedWriter;

    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 64
    .local v0, bufferWriter:Ljava/io/BufferedWriter;
    invoke-virtual {v0, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 65
    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 67
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V

    .line 68
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    .end local v0           #bufferWriter:Ljava/io/BufferedWriter;
    .end local v1           #fileWriter:Ljava/io/FileWriter;
    .end local v2           #installHistoryFile:Ljava/io/File;
    :goto_0
    return-void

    .line 69
    :catch_0
    move-exception v3

    goto :goto_0
.end method

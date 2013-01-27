.class final Lcom/android/server/pm/PackageManagerService$AppDirObserver;
.super Landroid/os/FileObserver;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AppDirObserver"
.end annotation


# instance fields
.field private final mIsRom:Z

.field private final mRootDir:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;IZ)V
    .locals 0
    .parameter
    .parameter "path"
    .parameter "mask"
    .parameter "isrom"

    .prologue
    .line 4876
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$AppDirObserver;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 4877
    invoke-direct {p0, p2, p3}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;I)V

    .line 4878
    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$AppDirObserver;->mRootDir:Ljava/lang/String;

    .line 4879
    iput-boolean p4, p0, Lcom/android/server/pm/PackageManagerService$AppDirObserver;->mIsRom:Z

    .line 4880
    return-void
.end method


# virtual methods
.method public onEvent(ILjava/lang/String;)V
    .locals 19
    .parameter "event"
    .parameter "path"

    .prologue
    .line 4883
    const/16 v17, 0x0

    .line 4884
    .local v17, removedPackage:Ljava/lang/String;
    const/16 v18, -0x1

    .line 4885
    .local v18, removedUid:I
    const/4 v12, 0x0

    .line 4886
    .local v12, addedPackage:Ljava/lang/String;
    const/4 v13, -0x1

    .line 4887
    .local v13, addedUid:I
    const/4 v8, 0x0

    .line 4890
    .local v8, category:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService$AppDirObserver;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v10, v1, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Ljava/lang/Object;

    monitor-enter v10

    .line 4891
    const/16 v16, 0x0

    .line 4892
    .local v16, fullPathStr:Ljava/lang/String;
    const/4 v2, 0x0

    .line 4893
    .local v2, fullPath:Ljava/io/File;
    if-eqz p2, :cond_0

    .line 4894
    :try_start_0
    new-instance v15, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService$AppDirObserver;->mRootDir:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-direct {v15, v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4895
    .end local v2           #fullPath:Ljava/io/File;
    .local v15, fullPath:Ljava/io/File;
    :try_start_1
    invoke-virtual {v15}, Ljava/io/File;->getPath()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    move-result-object v16

    move-object v2, v15

    .line 4901
    .end local v15           #fullPath:Ljava/io/File;
    .restart local v2       #fullPath:Ljava/io/File;
    :cond_0
    :try_start_2
    #calls: Lcom/android/server/pm/PackageManagerService;->isPackageFilename(Ljava/lang/String;)Z
    invoke-static/range {p2 .. p2}, Lcom/android/server/pm/PackageManagerService;->access$1100(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 4904
    monitor-exit v10

    .line 4976
    :cond_1
    :goto_0
    return-void

    .line 4909
    :cond_2
    #calls: Lcom/android/server/pm/PackageManagerService;->ignoreCodePath(Ljava/lang/String;)Z
    invoke-static/range {v16 .. v16}, Lcom/android/server/pm/PackageManagerService;->access$1200(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 4910
    monitor-exit v10

    goto :goto_0

    .line 4961
    :catchall_0
    move-exception v1

    :goto_1
    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 4912
    :cond_3
    const/4 v5, 0x0

    .line 4914
    .local v5, p:Landroid/content/pm/PackageParser$Package;
    :try_start_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService$AppDirObserver;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v1, Lcom/android/server/pm/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 4915
    :try_start_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService$AppDirObserver;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mAppDirs:Ljava/util/HashMap;

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/content/pm/PackageParser$Package;

    move-object v5, v0

    .line 4916
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 4917
    move/from16 v0, p1

    and-int/lit16 v1, v0, 0x248

    if-eqz v1, :cond_a

    .line 4918
    if-eqz v5, :cond_a

    .line 4919
    :try_start_5
    iget-boolean v1, v5, Landroid/content/pm/PackageParser$Package;->mIsThemeApk:Z

    if-eqz v1, :cond_4

    .line 4920
    const-string v8, "com.tmobile.intent.category.THEME_PACKAGE_INSTALL_STATE_CHANGE"

    .line 4922
    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService$AppDirObserver;->this$0:Lcom/android/server/pm/PackageManagerService;

    const/4 v3, 0x1

    invoke-virtual {v1, v5, v3}, Lcom/android/server/pm/PackageManagerService;->removePackageLI(Landroid/content/pm/PackageParser$Package;Z)V

    .line 4923
    iget-object v1, v5, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v17, v0

    .line 4924
    iget-object v1, v5, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v18, v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-object v14, v8

    .line 4928
    .end local v8           #category:Ljava/lang/String;
    .local v14, category:Ljava/lang/String;
    :goto_2
    move/from16 v0, p1

    and-int/lit16 v1, v0, 0x88

    if-eqz v1, :cond_9

    .line 4929
    if-nez v5, :cond_5

    .line 4930
    :try_start_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService$AppDirObserver;->this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/pm/PackageManagerService$AppDirObserver;->mIsRom:Z

    if-eqz v3, :cond_7

    const/16 v3, 0x41

    :goto_3
    or-int/lit8 v3, v3, 0x2

    or-int/lit8 v3, v3, 0x4

    const/16 v4, 0x61

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .end local v5           #p:Landroid/content/pm/PackageParser$Package;
    #calls: Lcom/android/server/pm/PackageManagerService;->scanPackageLI(Ljava/io/File;IIJ)Landroid/content/pm/PackageParser$Package;
    invoke-static/range {v1 .. v6}, Lcom/android/server/pm/PackageManagerService;->access$1300(Lcom/android/server/pm/PackageManagerService;Ljava/io/File;IIJ)Landroid/content/pm/PackageParser$Package;

    move-result-object v5

    .line 4937
    .restart local v5       #p:Landroid/content/pm/PackageParser$Package;
    if-eqz v5, :cond_5

    .line 4944
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService$AppDirObserver;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v11, v1, Lcom/android/server/pm/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v11
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 4945
    :try_start_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$AppDirObserver;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v5, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    iget-object v1, v5, Landroid/content/pm/PackageParser$Package;->permissions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_8

    const/4 v6, 0x1

    :goto_4
    const/4 v7, 0x0

    const/4 v8, 0x0

    #calls: Lcom/android/server/pm/PackageManagerService;->updatePermissionsLPw(Ljava/lang/String;Landroid/content/pm/PackageParser$Package;ZZZ)V
    invoke-static/range {v3 .. v8}, Lcom/android/server/pm/PackageManagerService;->access$1400(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;Landroid/content/pm/PackageParser$Package;ZZZ)V

    .line 4947
    monitor-exit v11
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 4948
    :try_start_8
    iget-object v1, v5, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v12, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 4949
    iget-object v1, v5, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v13, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 4952
    :cond_5
    if-eqz v5, :cond_9

    iget-boolean v1, v5, Landroid/content/pm/PackageParser$Package;->mIsThemeApk:Z

    if-eqz v1, :cond_9

    .line 4953
    const-string v8, "com.tmobile.intent.category.THEME_PACKAGE_INSTALL_STATE_CHANGE"
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 4958
    .end local v14           #category:Ljava/lang/String;
    .restart local v8       #category:Ljava/lang/String;
    :goto_5
    :try_start_9
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService$AppDirObserver;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v1, Lcom/android/server/pm/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 4959
    :try_start_a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService$AppDirObserver;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v1}, Lcom/android/server/pm/Settings;->writeLPr()V

    .line 4960
    monitor-exit v3
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 4961
    :try_start_b
    monitor-exit v10
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 4963
    if-eqz v17, :cond_6

    .line 4964
    new-instance v9, Landroid/os/Bundle;

    const/4 v1, 0x1

    invoke-direct {v9, v1}, Landroid/os/Bundle;-><init>(I)V

    .line 4965
    .local v9, extras:Landroid/os/Bundle;
    const-string v1, "android.intent.extra.UID"

    move/from16 v0, v18

    invoke-virtual {v9, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4966
    const-string v1, "android.intent.extra.DATA_REMOVED"

    const/4 v3, 0x0

    invoke-virtual {v9, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 4967
    const-string v6, "android.intent.action.PACKAGE_REMOVED"

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v7, v17

    invoke-static/range {v6 .. v11}, Lcom/android/server/pm/PackageManagerService;->sendPackageBroadcast(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/IIntentReceiver;)V

    .line 4970
    .end local v9           #extras:Landroid/os/Bundle;
    :cond_6
    if-eqz v12, :cond_1

    .line 4971
    new-instance v9, Landroid/os/Bundle;

    const/4 v1, 0x1

    invoke-direct {v9, v1}, Landroid/os/Bundle;-><init>(I)V

    .line 4972
    .restart local v9       #extras:Landroid/os/Bundle;
    const-string v1, "android.intent.extra.UID"

    invoke-virtual {v9, v1, v13}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4973
    const-string v6, "android.intent.action.PACKAGE_ADDED"

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v7, v12

    invoke-static/range {v6 .. v11}, Lcom/android/server/pm/PackageManagerService;->sendPackageBroadcast(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/IIntentReceiver;)V

    goto/16 :goto_0

    .line 4916
    .end local v9           #extras:Landroid/os/Bundle;
    :catchall_1
    move-exception v1

    :try_start_c
    monitor-exit v3
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    :try_start_d
    throw v1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 4930
    .end local v8           #category:Ljava/lang/String;
    .restart local v14       #category:Ljava/lang/String;
    :cond_7
    const/4 v3, 0x0

    goto/16 :goto_3

    .line 4945
    :cond_8
    const/4 v6, 0x0

    goto :goto_4

    .line 4947
    :catchall_2
    move-exception v1

    :try_start_e
    monitor-exit v11
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    :try_start_f
    throw v1
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    .line 4961
    .end local v5           #p:Landroid/content/pm/PackageParser$Package;
    :catchall_3
    move-exception v1

    move-object v8, v14

    .end local v14           #category:Ljava/lang/String;
    .restart local v8       #category:Ljava/lang/String;
    goto/16 :goto_1

    .line 4960
    .restart local v5       #p:Landroid/content/pm/PackageParser$Package;
    :catchall_4
    move-exception v1

    :try_start_10
    monitor-exit v3
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    :try_start_11
    throw v1
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    .line 4961
    .end local v2           #fullPath:Ljava/io/File;
    .end local v5           #p:Landroid/content/pm/PackageParser$Package;
    .restart local v15       #fullPath:Ljava/io/File;
    :catchall_5
    move-exception v1

    move-object v2, v15

    .end local v15           #fullPath:Ljava/io/File;
    .restart local v2       #fullPath:Ljava/io/File;
    goto/16 :goto_1

    .end local v8           #category:Ljava/lang/String;
    .restart local v5       #p:Landroid/content/pm/PackageParser$Package;
    .restart local v14       #category:Ljava/lang/String;
    :cond_9
    move-object v8, v14

    .end local v14           #category:Ljava/lang/String;
    .restart local v8       #category:Ljava/lang/String;
    goto :goto_5

    :cond_a
    move-object v14, v8

    .end local v8           #category:Ljava/lang/String;
    .restart local v14       #category:Ljava/lang/String;
    goto/16 :goto_2
.end method

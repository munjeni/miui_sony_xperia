.class Lcom/android/server/BackupManagerService$1;
.super Landroid/content/BroadcastReceiver;
.source "BackupManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BackupManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/BackupManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/BackupManagerService;)V
    .locals 0
    .parameter

    .prologue
    .line 1272
    iput-object p1, p0, Lcom/android/server/BackupManagerService$1;->this$0:Lcom/android/server/BackupManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v10, 0x0

    .line 1274
    const-string v7, "BackupManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Received broadcast "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1276
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1277
    .local v0, action:Ljava/lang/String;
    const/4 v5, 0x0

    .line 1278
    .local v5, replacing:Z
    const/4 v1, 0x0

    .line 1279
    .local v1, added:Z
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 1280
    .local v2, extras:Landroid/os/Bundle;
    const/4 v3, 0x0

    .line 1281
    .local v3, pkgList:[Ljava/lang/String;
    const-string v7, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 1284
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v6

    .line 1285
    .local v6, uri:Landroid/net/Uri;
    if-nez v6, :cond_2

    .line 1328
    .end local v1           #added:Z
    .end local v6           #uri:Landroid/net/Uri;
    :cond_1
    :goto_0
    return-void

    .line 1288
    .restart local v1       #added:Z
    .restart local v6       #uri:Landroid/net/Uri;
    :cond_2
    invoke-virtual {v6}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v4

    .line 1289
    .local v4, pkgName:Ljava/lang/String;
    if-eqz v4, :cond_3

    .line 1290
    const/4 v7, 0x1

    new-array v3, v7, [Ljava/lang/String;

    .end local v3           #pkgList:[Ljava/lang/String;
    aput-object v4, v3, v10

    .line 1292
    .restart local v3       #pkgList:[Ljava/lang/String;
    :cond_3
    const-string v7, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1295
    const/4 v5, 0x1

    move v1, v5

    .line 1308
    .end local v1           #added:Z
    .end local v4           #pkgName:Ljava/lang/String;
    .end local v6           #uri:Landroid/net/Uri;
    :cond_4
    :goto_1
    if-eqz v3, :cond_1

    array-length v7, v3

    if-eqz v7, :cond_1

    .line 1311
    if-eqz v1, :cond_9

    .line 1312
    iget-object v7, p0, Lcom/android/server/BackupManagerService$1;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v8, v7, Lcom/android/server/BackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    monitor-enter v8

    .line 1313
    if-eqz v5, :cond_8

    .line 1314
    :try_start_0
    iget-object v7, p0, Lcom/android/server/BackupManagerService$1;->this$0:Lcom/android/server/BackupManagerService;

    invoke-virtual {v7, v3}, Lcom/android/server/BackupManagerService;->updatePackageParticipantsLocked([Ljava/lang/String;)V

    .line 1318
    :goto_2
    monitor-exit v8

    goto :goto_0

    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .line 1297
    .restart local v1       #added:Z
    .restart local v4       #pkgName:Ljava/lang/String;
    .restart local v6       #uri:Landroid/net/Uri;
    :cond_5
    const-string v7, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 1298
    const-string v7, "android.intent.extra.REPLACING"

    invoke-virtual {v2, v7, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    goto :goto_1

    .line 1300
    .end local v4           #pkgName:Ljava/lang/String;
    .end local v6           #uri:Landroid/net/Uri;
    :cond_6
    const-string v7, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 1301
    const/4 v1, 0x1

    .line 1302
    const-string v7, "android.intent.extra.changed_package_list"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 1303
    :cond_7
    const-string v7, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1304
    const/4 v1, 0x0

    .line 1305
    const-string v7, "android.intent.extra.changed_package_list"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 1316
    .end local v1           #added:Z
    :cond_8
    :try_start_1
    iget-object v7, p0, Lcom/android/server/BackupManagerService$1;->this$0:Lcom/android/server/BackupManagerService;

    invoke-virtual {v7, v3}, Lcom/android/server/BackupManagerService;->addPackageParticipantsLocked([Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 1320
    :cond_9
    if-nez v5, :cond_1

    .line 1323
    iget-object v7, p0, Lcom/android/server/BackupManagerService$1;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v8, v7, Lcom/android/server/BackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    monitor-enter v8

    .line 1324
    :try_start_2
    iget-object v7, p0, Lcom/android/server/BackupManagerService$1;->this$0:Lcom/android/server/BackupManagerService;

    invoke-virtual {v7, v3}, Lcom/android/server/BackupManagerService;->removePackageParticipantsLocked([Ljava/lang/String;)V

    .line 1325
    monitor-exit v8

    goto :goto_0

    :catchall_1
    move-exception v7

    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v7
.end method

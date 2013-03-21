.class Lcom/android/server/AppWidgetService$3;
.super Landroid/content/BroadcastReceiver;
.source "AppWidgetService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AppWidgetService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/AppWidgetService;


# direct methods
.method constructor <init>(Lcom/android/server/AppWidgetService;)V
    .locals 0
    .parameter

    .prologue
    .line 1464
    iput-object p1, p0, Lcom/android/server/AppWidgetService$3;->this$0:Lcom/android/server/AppWidgetService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 21
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 1466
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 1468
    .local v3, action:Ljava/lang/String;
    const-string v18, "android.intent.action.BOOT_COMPLETED"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_1

    .line 1469
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppWidgetService$3;->this$0:Lcom/android/server/AppWidgetService;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/AppWidgetService;->sendInitialBroadcasts()V

    .line 1554
    :cond_0
    :goto_0
    return-void

    .line 1470
    :cond_1
    const-string v18, "android.intent.action.RESTORE_FINISH"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_miui_add1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppWidgetService$3;->this$0:Lcom/android/server/AppWidgetService;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/AppWidgetService;->reload()V

    goto :goto_0

    :cond_miui_add1
    const-string v18, "android.intent.action.CONFIGURATION_CHANGED"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_5

    .line 1471
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v15

    .line 1472
    .local v15, revised:Ljava/util/Locale;
    if-eqz v15, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppWidgetService$3;->this$0:Lcom/android/server/AppWidgetService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/AppWidgetService;->mLocale:Ljava/util/Locale;

    move-object/from16 v18, v0

    if-eqz v18, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppWidgetService$3;->this$0:Lcom/android/server/AppWidgetService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/AppWidgetService;->mLocale:Ljava/util/Locale;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_0

    .line 1474
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppWidgetService$3;->this$0:Lcom/android/server/AppWidgetService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iput-object v15, v0, Lcom/android/server/AppWidgetService;->mLocale:Ljava/util/Locale;

    .line 1476
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppWidgetService$3;->this$0:Lcom/android/server/AppWidgetService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/AppWidgetService;->mAppWidgetIds:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    monitor-enter v19

    .line 1477
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppWidgetService$3;->this$0:Lcom/android/server/AppWidgetService;

    move-object/from16 v18, v0

    #calls: Lcom/android/server/AppWidgetService;->ensureStateLoadedLocked()Z
    invoke-static/range {v18 .. v18}, Lcom/android/server/AppWidgetService;->access$000(Lcom/android/server/AppWidgetService;)Z

    .line 1478
    new-instance v14, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppWidgetService$3;->this$0:Lcom/android/server/AppWidgetService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/AppWidgetService;->mInstalledProviders:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-direct {v14, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1479
    .local v14, providers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/AppWidgetService$Provider;>;"
    const/16 v16, 0x0

    .line 1480
    .local v16, saveNeeded:Z
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1481
    .local v2, N:I
    add-int/lit8 v8, v2, -0x1

    .local v8, i:I
    :goto_1
    if-ltz v8, :cond_3

    .line 1482
    invoke-virtual {v14, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/AppWidgetService$Provider;

    .line 1483
    .local v11, p:Lcom/android/server/AppWidgetService$Provider;
    iget-object v0, v11, Lcom/android/server/AppWidgetService$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v13

    .line 1484
    .local v13, pkgName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppWidgetService$3;->this$0:Lcom/android/server/AppWidgetService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Lcom/android/server/AppWidgetService;->updateProvidersForPackageLocked(Ljava/lang/String;)Z

    move-result v18

    or-int v16, v16, v18

    .line 1481
    add-int/lit8 v8, v8, -0x1

    goto :goto_1

    .line 1486
    .end local v11           #p:Lcom/android/server/AppWidgetService$Provider;
    .end local v13           #pkgName:Ljava/lang/String;
    :cond_3
    if-eqz v16, :cond_4

    .line 1487
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppWidgetService$3;->this$0:Lcom/android/server/AppWidgetService;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/AppWidgetService;->saveStateLocked()V

    .line 1489
    :cond_4
    monitor-exit v19

    goto/16 :goto_0

    .end local v2           #N:I
    .end local v8           #i:I
    .end local v14           #providers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/AppWidgetService$Provider;>;"
    .end local v16           #saveNeeded:Z
    :catchall_0
    move-exception v18

    monitor-exit v19
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v18

    .line 1492
    .end local v15           #revised:Ljava/util/Locale;
    :cond_5
    const/4 v4, 0x0

    .line 1493
    .local v4, added:Z
    const/4 v6, 0x0

    .line 1494
    .local v6, changed:Z
    const/4 v12, 0x0

    .line 1495
    .local v12, pkgList:[Ljava/lang/String;
    const-string v18, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_8

    .line 1496
    const-string v18, "android.intent.extra.changed_package_list"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 1497
    const/4 v4, 0x1

    .line 1514
    :goto_2
    if-eqz v12, :cond_0

    array-length v0, v12

    move/from16 v18, v0

    if-eqz v18, :cond_0

    .line 1517
    if-nez v4, :cond_6

    if-eqz v6, :cond_d

    .line 1518
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppWidgetService$3;->this$0:Lcom/android/server/AppWidgetService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/AppWidgetService;->mAppWidgetIds:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    monitor-enter v19

    .line 1519
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppWidgetService$3;->this$0:Lcom/android/server/AppWidgetService;

    move-object/from16 v18, v0

    #calls: Lcom/android/server/AppWidgetService;->ensureStateLoadedLocked()Z
    invoke-static/range {v18 .. v18}, Lcom/android/server/AppWidgetService;->access$000(Lcom/android/server/AppWidgetService;)Z

    .line 1520
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    .line 1521
    .local v7, extras:Landroid/os/Bundle;
    const/16 v16, 0x0

    .line 1522
    .restart local v16       #saveNeeded:Z
    if-nez v6, :cond_7

    if-eqz v7, :cond_a

    const-string v18, "android.intent.extra.REPLACING"

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v7, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v18

    if-eqz v18, :cond_a

    .line 1524
    :cond_7
    move-object v5, v12

    .local v5, arr$:[Ljava/lang/String;
    array-length v10, v5

    .local v10, len$:I
    const/4 v9, 0x0

    .local v9, i$:I
    :goto_3
    if-ge v9, v10, :cond_b

    aget-object v13, v5, v9

    .line 1526
    .restart local v13       #pkgName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppWidgetService$3;->this$0:Lcom/android/server/AppWidgetService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Lcom/android/server/AppWidgetService;->updateProvidersForPackageLocked(Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v18

    or-int v16, v16, v18

    .line 1524
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 1498
    .end local v5           #arr$:[Ljava/lang/String;
    .end local v7           #extras:Landroid/os/Bundle;
    .end local v9           #i$:I
    .end local v10           #len$:I
    .end local v13           #pkgName:Ljava/lang/String;
    .end local v16           #saveNeeded:Z
    :cond_8
    const-string v18, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_9

    .line 1499
    const-string v18, "android.intent.extra.changed_package_list"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 1500
    const/4 v4, 0x0

    goto :goto_2

    .line 1502
    :cond_9
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v17

    .line 1503
    .local v17, uri:Landroid/net/Uri;
    if-eqz v17, :cond_0

    .line 1506
    invoke-virtual/range {v17 .. v17}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v13

    .line 1507
    .restart local v13       #pkgName:Ljava/lang/String;
    if-eqz v13, :cond_0

    .line 1510
    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v12, v0, [Ljava/lang/String;

    .end local v12           #pkgList:[Ljava/lang/String;
    const/16 v18, 0x0

    aput-object v13, v12, v18

    .line 1511
    .restart local v12       #pkgList:[Ljava/lang/String;
    const-string v18, "android.intent.action.PACKAGE_ADDED"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 1512
    const-string v18, "android.intent.action.PACKAGE_CHANGED"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    goto/16 :goto_2

    .line 1530
    .end local v13           #pkgName:Ljava/lang/String;
    .end local v17           #uri:Landroid/net/Uri;
    .restart local v7       #extras:Landroid/os/Bundle;
    .restart local v16       #saveNeeded:Z
    :cond_a
    move-object v5, v12

    .restart local v5       #arr$:[Ljava/lang/String;
    :try_start_2
    array-length v10, v5

    .restart local v10       #len$:I
    const/4 v9, 0x0

    .restart local v9       #i$:I
    :goto_4
    if-ge v9, v10, :cond_b

    aget-object v13, v5, v9

    .line 1531
    .restart local v13       #pkgName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppWidgetService$3;->this$0:Lcom/android/server/AppWidgetService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Lcom/android/server/AppWidgetService;->addProvidersForPackageLocked(Ljava/lang/String;)Z

    move-result v18

    or-int v16, v16, v18

    .line 1530
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 1534
    .end local v13           #pkgName:Ljava/lang/String;
    :cond_b
    if-eqz v16, :cond_c

    .line 1535
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppWidgetService$3;->this$0:Lcom/android/server/AppWidgetService;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/AppWidgetService;->saveStateLocked()V

    .line 1537
    :cond_c
    monitor-exit v19

    goto/16 :goto_0

    .end local v5           #arr$:[Ljava/lang/String;
    .end local v7           #extras:Landroid/os/Bundle;
    .end local v9           #i$:I
    .end local v10           #len$:I
    .end local v16           #saveNeeded:Z
    :catchall_1
    move-exception v18

    monitor-exit v19
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v18

    .line 1539
    :cond_d
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    .line 1540
    .restart local v7       #extras:Landroid/os/Bundle;
    if-eqz v7, :cond_e

    const-string v18, "android.intent.extra.REPLACING"

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v7, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v18

    if-nez v18, :cond_0

    .line 1543
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppWidgetService$3;->this$0:Lcom/android/server/AppWidgetService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/AppWidgetService;->mAppWidgetIds:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    monitor-enter v19

    .line 1544
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppWidgetService$3;->this$0:Lcom/android/server/AppWidgetService;

    move-object/from16 v18, v0

    #calls: Lcom/android/server/AppWidgetService;->ensureStateLoadedLocked()Z
    invoke-static/range {v18 .. v18}, Lcom/android/server/AppWidgetService;->access$000(Lcom/android/server/AppWidgetService;)Z

    .line 1545
    move-object v5, v12

    .restart local v5       #arr$:[Ljava/lang/String;
    array-length v10, v5

    .restart local v10       #len$:I
    const/4 v9, 0x0

    .restart local v9       #i$:I
    :goto_5
    if-ge v9, v10, :cond_10

    aget-object v13, v5, v9

    .line 1546
    .restart local v13       #pkgName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppWidgetService$3;->this$0:Lcom/android/server/AppWidgetService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Lcom/android/server/AppWidgetService;->removeProvidersForPackageLocked(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_f

    .line 1547
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppWidgetService$3;->this$0:Lcom/android/server/AppWidgetService;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/AppWidgetService;->saveStateLocked()V

    .line 1545
    :cond_f
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    .line 1550
    .end local v13           #pkgName:Ljava/lang/String;
    :cond_10
    monitor-exit v19

    goto/16 :goto_0

    .end local v5           #arr$:[Ljava/lang/String;
    .end local v9           #i$:I
    .end local v10           #len$:I
    :catchall_2
    move-exception v18

    monitor-exit v19
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v18
.end method

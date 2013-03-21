.class Lcom/android/server/NotificationManagerService$2;
.super Landroid/content/BroadcastReceiver;
.source "NotificationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/NotificationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/NotificationManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/NotificationManagerService;)V
    .locals 0
    .parameter

    .prologue
    .line 326
    iput-object p1, p0, Lcom/android/server/NotificationManagerService$2;->this$0:Lcom/android/server/NotificationManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 15
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 329
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 331
    .local v1, action:Ljava/lang/String;
    const/4 v8, 0x0

    .line 333
    .local v8, queryRestart:Z
    const-string v10, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    const-string v10, "android.intent.action.PACKAGE_RESTARTED"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    const-string v10, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    const-string v10, "android.intent.action.QUERY_PACKAGE_RESTART"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v10, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 338
    :cond_0
    const-string v10, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 339
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 340
    .local v3, bundle:Landroid/os/Bundle;
    const-string v10, "android.intent.extra.DONT_KILL_APP"

    invoke-virtual {v3, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 393
    .end local v3           #bundle:Landroid/os/Bundle;
    :cond_1
    :goto_0
    return-void

    .line 344
    :cond_2
    const/4 v6, 0x0

    .line 345
    .local v6, pkgList:[Ljava/lang/String;
    const-string v10, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 346
    const-string v10, "android.intent.extra.changed_package_list"

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 360
    :goto_1
    if-eqz v6, :cond_1

    array-length v10, v6

    if-lez v10, :cond_1

    .line 361
    move-object v2, v6

    .local v2, arr$:[Ljava/lang/String;
    array-length v5, v2

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_2
    if-ge v4, v5, :cond_1

    aget-object v7, v2, v4

    .line 362
    .local v7, pkgName:Ljava/lang/String;
    iget-object v11, p0, Lcom/android/server/NotificationManagerService$2;->this$0:Lcom/android/server/NotificationManagerService;

    const/4 v12, 0x0

    const/4 v13, 0x0

    if-nez v8, :cond_5

    const/4 v10, 0x1

    :goto_3
    invoke-virtual {v11, v7, v12, v13, v10}, Lcom/android/server/NotificationManagerService;->cancelAllNotificationsInt(Ljava/lang/String;IIZ)Z

    .line 361
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 347
    .end local v2           #arr$:[Ljava/lang/String;
    .end local v4           #i$:I
    .end local v5           #len$:I
    .end local v7           #pkgName:Ljava/lang/String;
    :cond_3
    if-eqz v8, :cond_4

    .line 348
    const-string v10, "android.intent.extra.PACKAGES"

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    .line 350
    :cond_4
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v9

    .line 351
    .local v9, uri:Landroid/net/Uri;
    if-eqz v9, :cond_1

    .line 354
    invoke-virtual {v9}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v7

    .line 355
    .restart local v7       #pkgName:Ljava/lang/String;
    if-eqz v7, :cond_1

    .line 358
    const/4 v10, 0x1

    new-array v6, v10, [Ljava/lang/String;

    .end local v6           #pkgList:[Ljava/lang/String;
    const/4 v10, 0x0

    aput-object v7, v6, v10

    .restart local v6       #pkgList:[Ljava/lang/String;
    goto :goto_1

    .line 362
    .end local v9           #uri:Landroid/net/Uri;
    .restart local v2       #arr$:[Ljava/lang/String;
    .restart local v4       #i$:I
    .restart local v5       #len$:I
    :cond_5
    const/4 v10, 0x0

    goto :goto_3

    .line 365
    .end local v2           #arr$:[Ljava/lang/String;
    .end local v4           #i$:I
    .end local v5           #len$:I
    .end local v6           #pkgList:[Ljava/lang/String;
    .end local v7           #pkgName:Ljava/lang/String;
    :cond_6
    const-string v10, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 368
    iget-object v10, p0, Lcom/android/server/NotificationManagerService$2;->this$0:Lcom/android/server/NotificationManagerService;

    const/4 v11, 0x1

    #setter for: Lcom/android/server/NotificationManagerService;->mScreenOn:Z
    invoke-static {v10, v11}, Lcom/android/server/NotificationManagerService;->access$1102(Lcom/android/server/NotificationManagerService;Z)Z

    goto :goto_0

    .line 369
    :cond_7
    const-string v10, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 370
    iget-object v10, p0, Lcom/android/server/NotificationManagerService$2;->this$0:Lcom/android/server/NotificationManagerService;

    const/4 v11, 0x0

    #setter for: Lcom/android/server/NotificationManagerService;->mScreenOn:Z
    invoke-static {v10, v11}, Lcom/android/server/NotificationManagerService;->access$1102(Lcom/android/server/NotificationManagerService;Z)Z

    .line 371
    iget-object v10, p0, Lcom/android/server/NotificationManagerService$2;->this$0:Lcom/android/server/NotificationManagerService;

    #calls: Lcom/android/server/NotificationManagerService;->updateNotificationPulse()V
    invoke-static {v10}, Lcom/android/server/NotificationManagerService;->access$1200(Lcom/android/server/NotificationManagerService;)V

    goto :goto_0

    .line 372
    :cond_8
    const-string v10, "android.intent.action.PHONE_STATE"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 373
    iget-object v10, p0, Lcom/android/server/NotificationManagerService$2;->this$0:Lcom/android/server/NotificationManagerService;

    const-string v11, "state"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    sget-object v12, Landroid/telephony/TelephonyManager;->EXTRA_STATE_OFFHOOK:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    #setter for: Lcom/android/server/NotificationManagerService;->mInCall:Z
    invoke-static {v10, v11}, Lcom/android/server/NotificationManagerService;->access$1302(Lcom/android/server/NotificationManagerService;Z)Z

    .line 375
    iget-object v10, p0, Lcom/android/server/NotificationManagerService$2;->this$0:Lcom/android/server/NotificationManagerService;

    #calls: Lcom/android/server/NotificationManagerService;->updateNotificationPulse()V
    invoke-static {v10}, Lcom/android/server/NotificationManagerService;->access$1200(Lcom/android/server/NotificationManagerService;)V

    .line 376
    iget-object v10, p0, Lcom/android/server/NotificationManagerService$2;->this$0:Lcom/android/server/NotificationManagerService;

    #getter for: Lcom/android/server/NotificationManagerService;->mInCallToneGeneratorLock:Ljava/lang/Object;
    invoke-static {v10}, Lcom/android/server/NotificationManagerService;->access$1400(Lcom/android/server/NotificationManagerService;)Ljava/lang/Object;

    move-result-object v11

    monitor-enter v11

    .line 377
    :try_start_0
    iget-object v10, p0, Lcom/android/server/NotificationManagerService$2;->this$0:Lcom/android/server/NotificationManagerService;

    #getter for: Lcom/android/server/NotificationManagerService;->mInCall:Z
    invoke-static {v10}, Lcom/android/server/NotificationManagerService;->access$1300(Lcom/android/server/NotificationManagerService;)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 378
    iget-object v10, p0, Lcom/android/server/NotificationManagerService$2;->this$0:Lcom/android/server/NotificationManagerService;

    #getter for: Lcom/android/server/NotificationManagerService;->mInCallToneGenerator:Landroid/media/ToneGenerator;
    invoke-static {v10}, Lcom/android/server/NotificationManagerService;->access$1500(Lcom/android/server/NotificationManagerService;)Landroid/media/ToneGenerator;

    move-result-object v10

    if-nez v10, :cond_9

    .line 379
    iget-object v10, p0, Lcom/android/server/NotificationManagerService$2;->this$0:Lcom/android/server/NotificationManagerService;

    new-instance v12, Landroid/media/ToneGenerator;

    const/4 v13, 0x0

    const/16 v14, 0x64

    invoke-direct {v12, v13, v14}, Landroid/media/ToneGenerator;-><init>(II)V

    #setter for: Lcom/android/server/NotificationManagerService;->mInCallToneGenerator:Landroid/media/ToneGenerator;
    invoke-static {v10, v12}, Lcom/android/server/NotificationManagerService;->access$1502(Lcom/android/server/NotificationManagerService;Landroid/media/ToneGenerator;)Landroid/media/ToneGenerator;

    .line 388
    :cond_9
    :goto_4
    monitor-exit v11

    goto/16 :goto_0

    :catchall_0
    move-exception v10

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v10

    .line 383
    :cond_a
    :try_start_1
    iget-object v10, p0, Lcom/android/server/NotificationManagerService$2;->this$0:Lcom/android/server/NotificationManagerService;

    #getter for: Lcom/android/server/NotificationManagerService;->mInCallToneGenerator:Landroid/media/ToneGenerator;
    invoke-static {v10}, Lcom/android/server/NotificationManagerService;->access$1500(Lcom/android/server/NotificationManagerService;)Landroid/media/ToneGenerator;

    move-result-object v10

    if-eqz v10, :cond_9

    .line 384
    iget-object v10, p0, Lcom/android/server/NotificationManagerService$2;->this$0:Lcom/android/server/NotificationManagerService;

    #getter for: Lcom/android/server/NotificationManagerService;->mInCallToneGenerator:Landroid/media/ToneGenerator;
    invoke-static {v10}, Lcom/android/server/NotificationManagerService;->access$1500(Lcom/android/server/NotificationManagerService;)Landroid/media/ToneGenerator;

    move-result-object v10

    invoke-virtual {v10}, Landroid/media/ToneGenerator;->release()V

    .line 385
    iget-object v10, p0, Lcom/android/server/NotificationManagerService$2;->this$0:Lcom/android/server/NotificationManagerService;

    const/4 v12, 0x0

    #setter for: Lcom/android/server/NotificationManagerService;->mInCallToneGenerator:Landroid/media/ToneGenerator;
    invoke-static {v10, v12}, Lcom/android/server/NotificationManagerService;->access$1502(Lcom/android/server/NotificationManagerService;Landroid/media/ToneGenerator;)Landroid/media/ToneGenerator;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    .line 389
    :cond_b
    const-string v10, "android.intent.action.USER_PRESENT"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 391
    iget-object v10, p0, Lcom/android/server/NotificationManagerService$2;->this$0:Lcom/android/server/NotificationManagerService;

    #getter for: Lcom/android/server/NotificationManagerService;->mNotificationLight:Lcom/android/server/LightsService$Light;
    invoke-static {v10}, Lcom/android/server/NotificationManagerService;->access$1600(Lcom/android/server/NotificationManagerService;)Lcom/android/server/LightsService$Light;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/server/LightsService$Light;->turnOff()V

    goto/16 :goto_0
.end method

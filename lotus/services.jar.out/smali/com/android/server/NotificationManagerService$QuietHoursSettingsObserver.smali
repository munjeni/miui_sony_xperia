.class Lcom/android/server/NotificationManagerService$QuietHoursSettingsObserver;
.super Landroid/database/ContentObserver;
.source "NotificationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/NotificationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "QuietHoursSettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/NotificationManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/NotificationManagerService;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "handler"

    .prologue
    .line 461
    iput-object p1, p0, Lcom/android/server/NotificationManagerService$QuietHoursSettingsObserver;->this$0:Lcom/android/server/NotificationManagerService;

    .line 462
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 463
    return-void
.end method


# virtual methods
.method observe()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 466
    iget-object v1, p0, Lcom/android/server/NotificationManagerService$QuietHoursSettingsObserver;->this$0:Lcom/android/server/NotificationManagerService;

    iget-object v1, v1, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 467
    .local v0, resolver:Landroid/content/ContentResolver;
    const-string v1, "quiet_hours_enabled"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 469
    const-string v1, "quiet_hours_start"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 471
    const-string v1, "quiet_hours_end"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 473
    const-string v1, "quiet_hours_mute"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 475
    const-string v1, "quiet_hours_still"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 477
    const-string v1, "quiet_hours_dim"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 479
    invoke-virtual {p0}, Lcom/android/server/NotificationManagerService$QuietHoursSettingsObserver;->update()V

    .line 480
    return-void
.end method

.method public onChange(Z)V
    .locals 1
    .parameter "selfChange"

    .prologue
    .line 483
    invoke-virtual {p0}, Lcom/android/server/NotificationManagerService$QuietHoursSettingsObserver;->update()V

    .line 484
    iget-object v0, p0, Lcom/android/server/NotificationManagerService$QuietHoursSettingsObserver;->this$0:Lcom/android/server/NotificationManagerService;

    #calls: Lcom/android/server/NotificationManagerService;->updateNotificationPulse()V
    invoke-static {v0}, Lcom/android/server/NotificationManagerService;->access$1400(Lcom/android/server/NotificationManagerService;)V

    .line 485
    return-void
.end method

.method public update()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 488
    iget-object v1, p0, Lcom/android/server/NotificationManagerService$QuietHoursSettingsObserver;->this$0:Lcom/android/server/NotificationManagerService;

    iget-object v1, v1, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 489
    .local v0, resolver:Landroid/content/ContentResolver;
    iget-object v4, p0, Lcom/android/server/NotificationManagerService$QuietHoursSettingsObserver;->this$0:Lcom/android/server/NotificationManagerService;

    const-string v1, "quiet_hours_enabled"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    :goto_0
    #setter for: Lcom/android/server/NotificationManagerService;->mQuietHoursEnabled:Z
    invoke-static {v4, v1}, Lcom/android/server/NotificationManagerService;->access$2202(Lcom/android/server/NotificationManagerService;Z)Z

    .line 491
    iget-object v1, p0, Lcom/android/server/NotificationManagerService$QuietHoursSettingsObserver;->this$0:Lcom/android/server/NotificationManagerService;

    const-string v4, "quiet_hours_start"

    invoke-static {v0, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    #setter for: Lcom/android/server/NotificationManagerService;->mQuietHoursStart:I
    invoke-static {v1, v4}, Lcom/android/server/NotificationManagerService;->access$2302(Lcom/android/server/NotificationManagerService;I)I

    .line 493
    iget-object v1, p0, Lcom/android/server/NotificationManagerService$QuietHoursSettingsObserver;->this$0:Lcom/android/server/NotificationManagerService;

    const-string v4, "quiet_hours_end"

    invoke-static {v0, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    #setter for: Lcom/android/server/NotificationManagerService;->mQuietHoursEnd:I
    invoke-static {v1, v4}, Lcom/android/server/NotificationManagerService;->access$2402(Lcom/android/server/NotificationManagerService;I)I

    .line 495
    iget-object v4, p0, Lcom/android/server/NotificationManagerService$QuietHoursSettingsObserver;->this$0:Lcom/android/server/NotificationManagerService;

    const-string v1, "quiet_hours_mute"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    :goto_1
    #setter for: Lcom/android/server/NotificationManagerService;->mQuietHoursMute:Z
    invoke-static {v4, v1}, Lcom/android/server/NotificationManagerService;->access$2502(Lcom/android/server/NotificationManagerService;Z)Z

    .line 497
    iget-object v4, p0, Lcom/android/server/NotificationManagerService$QuietHoursSettingsObserver;->this$0:Lcom/android/server/NotificationManagerService;

    const-string v1, "quiet_hours_still"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_2

    move v1, v2

    :goto_2
    #setter for: Lcom/android/server/NotificationManagerService;->mQuietHoursStill:Z
    invoke-static {v4, v1}, Lcom/android/server/NotificationManagerService;->access$2602(Lcom/android/server/NotificationManagerService;Z)Z

    .line 499
    iget-object v1, p0, Lcom/android/server/NotificationManagerService$QuietHoursSettingsObserver;->this$0:Lcom/android/server/NotificationManagerService;

    const-string v4, "quiet_hours_dim"

    invoke-static {v0, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_3

    :goto_3
    #setter for: Lcom/android/server/NotificationManagerService;->mQuietHoursDim:Z
    invoke-static {v1, v2}, Lcom/android/server/NotificationManagerService;->access$2702(Lcom/android/server/NotificationManagerService;Z)Z

    .line 501
    return-void

    :cond_0
    move v1, v3

    .line 489
    goto :goto_0

    :cond_1
    move v1, v3

    .line 495
    goto :goto_1

    :cond_2
    move v1, v3

    .line 497
    goto :goto_2

    :cond_3
    move v2, v3

    .line 499
    goto :goto_3
.end method

.class Landroid/media/AudioService$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/AudioService;


# direct methods
.method constructor <init>(Landroid/media/AudioService;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 2355
    iput-object p1, p0, Landroid/media/AudioService$SettingsObserver;->this$0:Landroid/media/AudioService;

    .line 2356
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 2357
    #getter for: Landroid/media/AudioService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {p1}, Landroid/media/AudioService;->access$3000(Landroid/media/AudioService;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "mode_ringer_streams_affected"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 2359
    #getter for: Landroid/media/AudioService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {p1}, Landroid/media/AudioService;->access$3000(Landroid/media/AudioService;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "volume_link_notification"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 2361
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 7
    .parameter "selfChange"

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x1

    .line 2365
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 2366
    iget-object v3, p0, Landroid/media/AudioService$SettingsObserver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mSettingsLock:Ljava/lang/Object;
    invoke-static {v3}, Landroid/media/AudioService;->access$5600(Landroid/media/AudioService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 2367
    :try_start_0
    iget-object v4, p0, Landroid/media/AudioService$SettingsObserver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v4}, Landroid/media/AudioService;->access$3000(Landroid/media/AudioService;)Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "mode_ringer_streams_affected"

    const/16 v6, 0xa6

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 2371
    .local v1, ringerModeAffectedStreams:I
    iget-object v4, p0, Landroid/media/AudioService$SettingsObserver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mVoiceCapable:Z
    invoke-static {v4}, Landroid/media/AudioService;->access$5700(Landroid/media/AudioService;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2372
    and-int/lit8 v1, v1, -0x9

    .line 2376
    :goto_0
    iget-object v4, p0, Landroid/media/AudioService$SettingsObserver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mRingerModeAffectedStreams:I
    invoke-static {v4}, Landroid/media/AudioService;->access$5800(Landroid/media/AudioService;)I

    move-result v4

    if-eq v1, v4, :cond_0

    .line 2381
    iget-object v4, p0, Landroid/media/AudioService$SettingsObserver;->this$0:Landroid/media/AudioService;

    #setter for: Landroid/media/AudioService;->mRingerModeAffectedStreams:I
    invoke-static {v4, v1}, Landroid/media/AudioService;->access$5802(Landroid/media/AudioService;I)I

    .line 2382
    iget-object v4, p0, Landroid/media/AudioService$SettingsObserver;->this$0:Landroid/media/AudioService;

    iget-object v5, p0, Landroid/media/AudioService$SettingsObserver;->this$0:Landroid/media/AudioService;

    invoke-virtual {v5}, Landroid/media/AudioService;->getRingerMode()I

    move-result v5

    const/4 v6, 0x0

    #calls: Landroid/media/AudioService;->setRingerModeInt(IZ)V
    invoke-static {v4, v5, v6}, Landroid/media/AudioService;->access$5200(Landroid/media/AudioService;IZ)V

    .line 2384
    :cond_0
    iget-object v4, p0, Landroid/media/AudioService$SettingsObserver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v4}, Landroid/media/AudioService;->access$3000(Landroid/media/AudioService;)Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "volume_link_notification"

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v0, :cond_2

    .line 2386
    .local v0, linkNotificationWithVolume:Z
    :goto_1
    if-eqz v0, :cond_3

    .line 2387
    iget-object v2, p0, Landroid/media/AudioService$SettingsObserver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->STREAM_VOLUME_ALIAS:[I
    invoke-static {v2}, Landroid/media/AudioService;->access$3300(Landroid/media/AudioService;)[I

    move-result-object v2

    const/4 v4, 0x5

    const/4 v5, 0x2

    aput v5, v2, v4

    .line 2391
    :goto_2
    monitor-exit v3

    .line 2392
    return-void

    .line 2374
    .end local v0           #linkNotificationWithVolume:Z
    :cond_1
    or-int/lit8 v1, v1, 0x8

    goto :goto_0

    :cond_2
    move v0, v2

    .line 2384
    goto :goto_1

    .line 2389
    .restart local v0       #linkNotificationWithVolume:Z
    :cond_3
    iget-object v2, p0, Landroid/media/AudioService$SettingsObserver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->STREAM_VOLUME_ALIAS:[I
    invoke-static {v2}, Landroid/media/AudioService;->access$3300(Landroid/media/AudioService;)[I

    move-result-object v2

    const/4 v4, 0x5

    const/4 v5, 0x5

    aput v5, v2, v4

    goto :goto_2

    .line 2391
    .end local v0           #linkNotificationWithVolume:Z
    .end local v1           #ringerModeAffectedStreams:I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.class Lcom/android/internal/policy/impl/KeyguardStatusViewManager$1$1;
.super Ljava/lang/Object;
.source "KeyguardStatusViewManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/KeyguardStatusViewManager$1;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/policy/impl/KeyguardStatusViewManager$1;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/KeyguardStatusViewManager$1;)V
    .locals 0
    .parameter

    .prologue
    .line 278
    iput-object p1, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$1$1;->this$1:Lcom/android/internal/policy/impl/KeyguardStatusViewManager$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    .line 281
    iget-object v10, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$1$1;->this$1:Lcom/android/internal/policy/impl/KeyguardStatusViewManager$1;

    iget-object v10, v10, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$1;->this$0:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    #calls: Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->getContext()Landroid/content/Context;
    invoke-static {v10}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->access$400(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;)Landroid/content/Context;

    move-result-object v10

    const-string v11, "location"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/location/LocationManager;

    .line 283
    .local v5, locationManager:Landroid/location/LocationManager;
    iget-object v10, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$1$1;->this$1:Lcom/android/internal/policy/impl/KeyguardStatusViewManager$1;

    iget-object v10, v10, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$1;->this$0:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    #calls: Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->getContext()Landroid/content/Context;
    invoke-static {v10}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->access$400(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;)Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 284
    .local v7, resolver:Landroid/content/ContentResolver;
    const-string v10, "weather_use_custom_location"

    const/4 v11, 0x0

    invoke-static {v7, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_0

    const/4 v8, 0x1

    .line 286
    .local v8, useCustomLoc:Z
    :goto_0
    const-string v10, "weather_custom_location"

    invoke-static {v7, v10}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 288
    .local v2, customLoc:Ljava/lang/String;
    const/4 v9, 0x0

    .line 291
    .local v9, woeid:Ljava/lang/String;
    if-eqz v2, :cond_1

    if-eqz v8, :cond_1

    .line 293
    :try_start_0
    iget-object v10, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$1$1;->this$1:Lcom/android/internal/policy/impl/KeyguardStatusViewManager$1;

    iget-object v10, v10, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$1;->this$0:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    #calls: Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->getContext()Landroid/content/Context;
    invoke-static {v10}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->access$400(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;)Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10, v2}, Lcom/android/internal/util/weather/YahooPlaceFinder;->GeoCode(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 321
    :goto_1
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v6

    .line 322
    .local v6, msg:Landroid/os/Message;
    const/4 v10, 0x1

    iput v10, v6, Landroid/os/Message;->what:I

    .line 323
    iput-object v9, v6, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 324
    iget-object v10, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$1$1;->this$1:Lcom/android/internal/policy/impl/KeyguardStatusViewManager$1;

    iget-object v10, v10, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$1;->this$0:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    #getter for: Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mHandler:Landroid/os/Handler;
    invoke-static {v10}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->access$500(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;)Landroid/os/Handler;

    move-result-object v10

    invoke-virtual {v10, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 325
    return-void

    .line 284
    .end local v2           #customLoc:Ljava/lang/String;
    .end local v6           #msg:Landroid/os/Message;
    .end local v8           #useCustomLoc:Z
    .end local v9           #woeid:Ljava/lang/String;
    :cond_0
    const/4 v8, 0x0

    goto :goto_0

    .line 296
    .restart local v2       #customLoc:Ljava/lang/String;
    .restart local v8       #useCustomLoc:Z
    .restart local v9       #woeid:Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 297
    .local v3, e:Ljava/lang/Exception;
    const-string v10, "KeyguardStatusView"

    const-string v11, "ERROR: Could not get Location code"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 302
    .end local v3           #e:Ljava/lang/Exception;
    :cond_1
    new-instance v1, Landroid/location/Criteria;

    invoke-direct {v1}, Landroid/location/Criteria;-><init>()V

    .line 303
    .local v1, crit:Landroid/location/Criteria;
    const/4 v10, 0x2

    invoke-virtual {v1, v10}, Landroid/location/Criteria;->setAccuracy(I)V

    .line 304
    const/4 v10, 0x1

    invoke-virtual {v5, v1, v10}, Landroid/location/LocationManager;->getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;

    move-result-object v0

    .line 305
    .local v0, bestProvider:Ljava/lang/String;
    const/4 v4, 0x0

    .line 306
    .local v4, loc:Landroid/location/Location;
    if-eqz v0, :cond_2

    .line 307
    invoke-virtual {v5, v0}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v4

    .line 312
    :goto_2
    :try_start_1
    iget-object v10, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$1$1;->this$1:Lcom/android/internal/policy/impl/KeyguardStatusViewManager$1;

    iget-object v10, v10, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$1;->this$0:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    #calls: Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->getContext()Landroid/content/Context;
    invoke-static {v10}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->access$400(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;)Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v4}, Landroid/location/Location;->getLatitude()D

    move-result-wide v11

    invoke-virtual {v4}, Landroid/location/Location;->getLongitude()D

    move-result-wide v13

    invoke-static {v10, v11, v12, v13, v14}, Lcom/android/internal/util/weather/YahooPlaceFinder;->reverseGeoCode(Landroid/content/Context;DD)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v9

    goto :goto_1

    .line 309
    :cond_2
    const-string v10, "passive"

    invoke-virtual {v5, v10}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v4

    goto :goto_2

    .line 316
    :catch_1
    move-exception v3

    .line 317
    .restart local v3       #e:Ljava/lang/Exception;
    const-string v10, "KeyguardStatusView"

    const-string v11, "ERROR: Could not get Location code"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

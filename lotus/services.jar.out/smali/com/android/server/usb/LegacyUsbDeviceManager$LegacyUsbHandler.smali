.class final Lcom/android/server/usb/LegacyUsbDeviceManager$LegacyUsbHandler;
.super Landroid/os/Handler;
.source "LegacyUsbDeviceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usb/LegacyUsbDeviceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LegacyUsbHandler"
.end annotation


# instance fields
.field private mAdbNotificationShown:Z

.field final mBootCompletedReceiver:Landroid/content/BroadcastReceiver;

.field private mConfigured:Z

.field private mConnected:Z

.field private mCurrentAccessory:Landroid/hardware/usb/UsbAccessory;

.field private mCurrentFunctions:Ljava/lang/String;

.field private mDefaultFunctions:Ljava/lang/String;

.field private mUsbNotificationId:I

.field final synthetic this$0:Lcom/android/server/usb/LegacyUsbDeviceManager;


# direct methods
.method public constructor <init>(Lcom/android/server/usb/LegacyUsbDeviceManager;Landroid/os/Looper;)V
    .locals 12
    .parameter
    .parameter "looper"

    .prologue
    const/16 v9, 0x400

    const/4 v8, 0x0

    .line 254
    iput-object p1, p0, Lcom/android/server/usb/LegacyUsbDeviceManager$LegacyUsbHandler;->this$0:Lcom/android/server/usb/LegacyUsbDeviceManager;

    .line 255
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 239
    iput-boolean v8, p0, Lcom/android/server/usb/LegacyUsbDeviceManager$LegacyUsbHandler;->mConnected:Z

    .line 240
    iput-boolean v8, p0, Lcom/android/server/usb/LegacyUsbDeviceManager$LegacyUsbHandler;->mConfigured:Z

    .line 247
    new-instance v8, Lcom/android/server/usb/LegacyUsbDeviceManager$LegacyUsbHandler$1;

    invoke-direct {v8, p0}, Lcom/android/server/usb/LegacyUsbDeviceManager$LegacyUsbHandler$1;-><init>(Lcom/android/server/usb/LegacyUsbDeviceManager$LegacyUsbHandler;)V

    iput-object v8, p0, Lcom/android/server/usb/LegacyUsbDeviceManager$LegacyUsbHandler;->mBootCompletedReceiver:Landroid/content/BroadcastReceiver;

    .line 256
    new-array v0, v9, [C

    .line 261
    .local v0, buffer:[C
    :try_start_0
    const-string v8, "persist.sys.usb.config"

    const-string v9, "adb"

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/server/usb/LegacyUsbDeviceManager$LegacyUsbHandler;->mDefaultFunctions:Ljava/lang/String;

    .line 264
    const-string v8, "sys.usb.config"

    const-string v9, "none"

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 265
    .local v1, config:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/server/usb/LegacyUsbDeviceManager$LegacyUsbHandler;->mDefaultFunctions:Ljava/lang/String;

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 266
    invoke-static {}, Lcom/android/server/usb/LegacyUsbDeviceManager;->access$500()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "resetting config to persistent property: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/usb/LegacyUsbDeviceManager$LegacyUsbHandler;->mDefaultFunctions:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    const-string v8, "sys.usb.config"

    iget-object v9, p0, Lcom/android/server/usb/LegacyUsbDeviceManager$LegacyUsbHandler;->mDefaultFunctions:Ljava/lang/String;

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 272
    :cond_0
    :try_start_1
    new-instance v5, Ljava/io/FileReader;

    const-string v8, "/sys/class/switch/usb_connected/state"

    invoke-direct {v5, v8}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 273
    .local v5, file:Ljava/io/FileReader;
    const/4 v8, 0x0

    const/16 v9, 0x400

    invoke-virtual {v5, v0, v8, v9}, Ljava/io/FileReader;->read([CII)I

    move-result v6

    .line 274
    .local v6, len:I
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V

    .line 275
    const-string v8, "1"

    new-instance v9, Ljava/lang/String;

    const/4 v10, 0x0

    invoke-direct {v9, v0, v10, v6}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    iput-boolean v8, p0, Lcom/android/server/usb/LegacyUsbDeviceManager$LegacyUsbHandler;->mConnected:Z

    .line 277
    new-instance v5, Ljava/io/FileReader;

    .end local v5           #file:Ljava/io/FileReader;
    const-string v8, "/sys/class/switch/usb_configuration/state"

    invoke-direct {v5, v8}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 278
    .restart local v5       #file:Ljava/io/FileReader;
    const/4 v8, 0x0

    const/16 v9, 0x400

    invoke-virtual {v5, v0, v8, v9}, Ljava/io/FileReader;->read([CII)I

    move-result v6

    .line 279
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V

    .line 280
    const-string v8, "1"

    new-instance v9, Ljava/lang/String;

    const/4 v10, 0x0

    invoke-direct {v9, v0, v10, v6}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    iput-boolean v8, p0, Lcom/android/server/usb/LegacyUsbDeviceManager$LegacyUsbHandler;->mConfigured:Z
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 298
    .end local v5           #file:Ljava/io/FileReader;
    .end local v6           #len:I
    :goto_0
    :try_start_2
    iget-object v8, p0, Lcom/android/server/usb/LegacyUsbDeviceManager$LegacyUsbHandler;->mDefaultFunctions:Ljava/lang/String;

    iput-object v8, p0, Lcom/android/server/usb/LegacyUsbDeviceManager$LegacyUsbHandler;->mCurrentFunctions:Ljava/lang/String;

    .line 299
    iget-boolean v8, p0, Lcom/android/server/usb/LegacyUsbDeviceManager$LegacyUsbHandler;->mConnected:Z

    if-nez v8, :cond_2

    iget-boolean v8, p0, Lcom/android/server/usb/LegacyUsbDeviceManager$LegacyUsbHandler;->mConfigured:Z

    if-nez v8, :cond_2

    const-string v8, "DISCONNECTED"

    invoke-virtual {p0, v8}, Lcom/android/server/usb/LegacyUsbDeviceManager$LegacyUsbHandler;->updateState(Ljava/lang/String;)V

    .line 304
    :goto_1
    iget-object v8, p0, Lcom/android/server/usb/LegacyUsbDeviceManager$LegacyUsbHandler;->mCurrentFunctions:Ljava/lang/String;

    const-string v9, "adb"

    #calls: Lcom/android/server/usb/LegacyUsbDeviceManager;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static {v8, v9}, Lcom/android/server/usb/LegacyUsbDeviceManager;->access$700(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    #setter for: Lcom/android/server/usb/LegacyUsbDeviceManager;->mAdbEnabled:Z
    invoke-static {p1, v8}, Lcom/android/server/usb/LegacyUsbDeviceManager;->access$602(Lcom/android/server/usb/LegacyUsbDeviceManager;Z)Z

    .line 306
    const-string v8, "persist.service.adb.enable"

    const-string v9, "0"

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 307
    .local v7, value:Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_1

    .line 308
    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 309
    .local v3, enable:C
    const/16 v8, 0x31

    if-ne v3, v8, :cond_5

    .line 310
    const/4 v8, 0x1

    invoke-direct {p0, v8}, Lcom/android/server/usb/LegacyUsbDeviceManager$LegacyUsbHandler;->setAdbEnabled(Z)V

    .line 317
    .end local v3           #enable:C
    :cond_1
    :goto_2
    #getter for: Lcom/android/server/usb/LegacyUsbDeviceManager;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {p1}, Lcom/android/server/usb/LegacyUsbDeviceManager;->access$000(Lcom/android/server/usb/LegacyUsbDeviceManager;)Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "adb_enabled"

    invoke-static {v9}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    const/4 v10, 0x0

    new-instance v11, Lcom/android/server/usb/LegacyUsbDeviceManager$AdbSettingsObserver;

    invoke-direct {v11, p1}, Lcom/android/server/usb/LegacyUsbDeviceManager$AdbSettingsObserver;-><init>(Lcom/android/server/usb/LegacyUsbDeviceManager;)V

    invoke-virtual {v8, v9, v10, v11}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 322
    #getter for: Lcom/android/server/usb/LegacyUsbDeviceManager;->mLegacy:Z
    invoke-static {p1}, Lcom/android/server/usb/LegacyUsbDeviceManager;->access$200(Lcom/android/server/usb/LegacyUsbDeviceManager;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 323
    #getter for: Lcom/android/server/usb/LegacyUsbDeviceManager;->mUEventObserver:Landroid/os/UEventObserver;
    invoke-static {p1}, Lcom/android/server/usb/LegacyUsbDeviceManager;->access$800(Lcom/android/server/usb/LegacyUsbDeviceManager;)Landroid/os/UEventObserver;

    move-result-object v8

    const-string v9, "DEVPATH=/devices/virtual/switch/usb_mass_storage"

    invoke-virtual {v8, v9}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    .line 328
    :goto_3
    #getter for: Lcom/android/server/usb/LegacyUsbDeviceManager;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/android/server/usb/LegacyUsbDeviceManager;->access$900(Lcom/android/server/usb/LegacyUsbDeviceManager;)Landroid/content/Context;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/usb/LegacyUsbDeviceManager$LegacyUsbHandler;->mBootCompletedReceiver:Landroid/content/BroadcastReceiver;

    new-instance v10, Landroid/content/IntentFilter;

    const-string v11, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v10, v11}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 334
    .end local v1           #config:Ljava/lang/String;
    .end local v7           #value:Ljava/lang/String;
    :goto_4
    return-void

    .line 281
    .restart local v1       #config:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 282
    .local v2, e:Ljava/io/FileNotFoundException;
    invoke-static {}, Lcom/android/server/usb/LegacyUsbDeviceManager;->access$500()Ljava/lang/String;

    move-result-object v8

    const-string v9, "This kernel does not have USB configuration switch support"

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    invoke-static {}, Lcom/android/server/usb/LegacyUsbDeviceManager;->access$500()Ljava/lang/String;

    move-result-object v8

    const-string v9, "Trying legacy USB configuration switch support"

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 285
    :try_start_3
    new-instance v5, Ljava/io/FileReader;

    const-string v8, "/sys/class/switch/usb_mass_storage/state"

    invoke-direct {v5, v8}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 286
    .restart local v5       #file:Ljava/io/FileReader;
    const/4 v8, 0x0

    const/16 v9, 0x400

    invoke-virtual {v5, v0, v8, v9}, Ljava/io/FileReader;->read([CII)I

    move-result v6

    .line 287
    .restart local v6       #len:I
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V

    .line 288
    const-string v8, "online"

    new-instance v9, Ljava/lang/String;

    const/4 v10, 0x0

    invoke-direct {v9, v0, v10, v6}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    iput-boolean v8, p0, Lcom/android/server/usb/LegacyUsbDeviceManager$LegacyUsbHandler;->mConnected:Z

    .line 289
    const/4 v8, 0x1

    #setter for: Lcom/android/server/usb/LegacyUsbDeviceManager;->mLegacy:Z
    invoke-static {p1, v8}, Lcom/android/server/usb/LegacyUsbDeviceManager;->access$202(Lcom/android/server/usb/LegacyUsbDeviceManager;Z)Z

    .line 290
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/server/usb/LegacyUsbDeviceManager$LegacyUsbHandler;->mConfigured:Z
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_0

    .line 291
    .end local v5           #file:Ljava/io/FileReader;
    .end local v6           #len:I
    :catch_1
    move-exception v4

    .line 292
    .local v4, f:Ljava/io/FileNotFoundException;
    :try_start_4
    invoke-static {}, Lcom/android/server/usb/LegacyUsbDeviceManager;->access$500()Ljava/lang/String;

    move-result-object v8

    const-string v9, "This kernel does not have legacy USB configuration switch support"

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_0

    .line 331
    .end local v1           #config:Ljava/lang/String;
    .end local v2           #e:Ljava/io/FileNotFoundException;
    .end local v4           #f:Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v2

    .line 332
    .local v2, e:Ljava/lang/Exception;
    invoke-static {}, Lcom/android/server/usb/LegacyUsbDeviceManager;->access$500()Ljava/lang/String;

    move-result-object v8

    const-string v9, "Error initializing listener"

    invoke-static {v8, v9, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 293
    .restart local v1       #config:Ljava/lang/String;
    .local v2, e:Ljava/io/FileNotFoundException;
    :catch_3
    move-exception v4

    .line 294
    .local v4, f:Ljava/lang/Exception;
    :try_start_5
    invoke-static {}, Lcom/android/server/usb/LegacyUsbDeviceManager;->access$500()Ljava/lang/String;

    move-result-object v8

    const-string v9, ""

    invoke-static {v8, v9, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 300
    .end local v2           #e:Ljava/io/FileNotFoundException;
    .end local v4           #f:Ljava/lang/Exception;
    :cond_2
    iget-boolean v8, p0, Lcom/android/server/usb/LegacyUsbDeviceManager$LegacyUsbHandler;->mConnected:Z

    if-eqz v8, :cond_3

    iget-boolean v8, p0, Lcom/android/server/usb/LegacyUsbDeviceManager$LegacyUsbHandler;->mConfigured:Z

    if-nez v8, :cond_3

    const-string v8, "CONNECTED"

    invoke-virtual {p0, v8}, Lcom/android/server/usb/LegacyUsbDeviceManager$LegacyUsbHandler;->updateState(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 301
    :cond_3
    iget-boolean v8, p0, Lcom/android/server/usb/LegacyUsbDeviceManager$LegacyUsbHandler;->mConnected:Z

    if-eqz v8, :cond_4

    iget-boolean v8, p0, Lcom/android/server/usb/LegacyUsbDeviceManager$LegacyUsbHandler;->mConfigured:Z

    if-eqz v8, :cond_4

    const-string v8, "CONFIGURED"

    invoke-virtual {p0, v8}, Lcom/android/server/usb/LegacyUsbDeviceManager$LegacyUsbHandler;->updateState(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 302
    :cond_4
    const-string v8, "UNKNOWN"

    invoke-virtual {p0, v8}, Lcom/android/server/usb/LegacyUsbDeviceManager$LegacyUsbHandler;->updateState(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 311
    .restart local v3       #enable:C
    .restart local v7       #value:Ljava/lang/String;
    :cond_5
    const/16 v8, 0x30

    if-ne v3, v8, :cond_1

    .line 312
    const/4 v8, 0x0

    invoke-direct {p0, v8}, Lcom/android/server/usb/LegacyUsbDeviceManager$LegacyUsbHandler;->setAdbEnabled(Z)V

    goto/16 :goto_2

    .line 325
    .end local v3           #enable:C
    :cond_6
    #getter for: Lcom/android/server/usb/LegacyUsbDeviceManager;->mUEventObserver:Landroid/os/UEventObserver;
    invoke-static {p1}, Lcom/android/server/usb/LegacyUsbDeviceManager;->access$800(Lcom/android/server/usb/LegacyUsbDeviceManager;)Landroid/os/UEventObserver;

    move-result-object v8

    const-string v9, "DEVPATH=/devices/virtual/switch/usb_connected"

    invoke-virtual {v8, v9}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    .line 326
    #getter for: Lcom/android/server/usb/LegacyUsbDeviceManager;->mUEventObserver:Landroid/os/UEventObserver;
    invoke-static {p1}, Lcom/android/server/usb/LegacyUsbDeviceManager;->access$800(Lcom/android/server/usb/LegacyUsbDeviceManager;)Landroid/os/UEventObserver;

    move-result-object v8

    const-string v9, "DEVPATH=/devices/virtual/switch/usb_configuration"

    invoke-virtual {v8, v9}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_3
.end method

.method private setAdbEnabled(Z)V
    .locals 2
    .parameter "enable"

    .prologue
    .line 415
    iget-object v0, p0, Lcom/android/server/usb/LegacyUsbDeviceManager$LegacyUsbHandler;->this$0:Lcom/android/server/usb/LegacyUsbDeviceManager;

    #getter for: Lcom/android/server/usb/LegacyUsbDeviceManager;->mAdbEnabled:Z
    invoke-static {v0}, Lcom/android/server/usb/LegacyUsbDeviceManager;->access$600(Lcom/android/server/usb/LegacyUsbDeviceManager;)Z

    move-result v0

    if-eq p1, v0, :cond_0

    .line 416
    iget-object v0, p0, Lcom/android/server/usb/LegacyUsbDeviceManager$LegacyUsbHandler;->this$0:Lcom/android/server/usb/LegacyUsbDeviceManager;

    #setter for: Lcom/android/server/usb/LegacyUsbDeviceManager;->mAdbEnabled:Z
    invoke-static {v0, p1}, Lcom/android/server/usb/LegacyUsbDeviceManager;->access$602(Lcom/android/server/usb/LegacyUsbDeviceManager;Z)Z

    .line 419
    iget-object v0, p0, Lcom/android/server/usb/LegacyUsbDeviceManager$LegacyUsbHandler;->mDefaultFunctions:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/server/usb/LegacyUsbDeviceManager$LegacyUsbHandler;->setEnabledFunctions(Ljava/lang/String;Z)V

    .line 420
    invoke-direct {p0}, Lcom/android/server/usb/LegacyUsbDeviceManager$LegacyUsbHandler;->updateAdbNotification()V

    .line 422
    :cond_0
    const-string v1, "persist.service.adb.enable"

    if-eqz p1, :cond_1

    const-string v0, "1"

    :goto_0
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    return-void

    .line 422
    :cond_1
    const-string v0, "0"

    goto :goto_0
.end method

.method private setEnabledFunctions(Ljava/lang/String;Z)V
    .locals 3
    .parameter "functions"
    .parameter "makeDefault"

    .prologue
    .line 426
    if-eqz p1, :cond_4

    if-eqz p2, :cond_4

    .line 427
    iget-object v0, p0, Lcom/android/server/usb/LegacyUsbDeviceManager$LegacyUsbHandler;->this$0:Lcom/android/server/usb/LegacyUsbDeviceManager;

    #getter for: Lcom/android/server/usb/LegacyUsbDeviceManager;->mAdbEnabled:Z
    invoke-static {v0}, Lcom/android/server/usb/LegacyUsbDeviceManager;->access$600(Lcom/android/server/usb/LegacyUsbDeviceManager;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 428
    const-string v0, "adb"

    #calls: Lcom/android/server/usb/LegacyUsbDeviceManager;->addFunction(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {p1, v0}, Lcom/android/server/usb/LegacyUsbDeviceManager;->access$1000(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 432
    :goto_0
    iget-object v0, p0, Lcom/android/server/usb/LegacyUsbDeviceManager$LegacyUsbHandler;->mDefaultFunctions:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 433
    const-string v0, "none"

    invoke-direct {p0, v0}, Lcom/android/server/usb/LegacyUsbDeviceManager$LegacyUsbHandler;->setUsbConfig(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 434
    invoke-static {}, Lcom/android/server/usb/LegacyUsbDeviceManager;->access$500()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Failed to disable USB"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    iget-object v0, p0, Lcom/android/server/usb/LegacyUsbDeviceManager$LegacyUsbHandler;->mCurrentFunctions:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/usb/LegacyUsbDeviceManager$LegacyUsbHandler;->setUsbConfig(Ljava/lang/String;)Z

    .line 476
    :cond_0
    :goto_1
    return-void

    .line 430
    :cond_1
    const-string v0, "adb"

    #calls: Lcom/android/server/usb/LegacyUsbDeviceManager;->removeFunction(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {p1, v0}, Lcom/android/server/usb/LegacyUsbDeviceManager;->access$1100(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 441
    :cond_2
    const-string v0, "persist.sys.usb.config"

    invoke-static {v0, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    invoke-direct {p0, p1}, Lcom/android/server/usb/LegacyUsbDeviceManager$LegacyUsbHandler;->waitForState(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 443
    iput-object p1, p0, Lcom/android/server/usb/LegacyUsbDeviceManager$LegacyUsbHandler;->mCurrentFunctions:Ljava/lang/String;

    .line 444
    iput-object p1, p0, Lcom/android/server/usb/LegacyUsbDeviceManager$LegacyUsbHandler;->mDefaultFunctions:Ljava/lang/String;

    goto :goto_1

    .line 446
    :cond_3
    invoke-static {}, Lcom/android/server/usb/LegacyUsbDeviceManager;->access$500()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to switch persistent USB config to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    const-string v0, "persist.sys.usb.config"

    iget-object v1, p0, Lcom/android/server/usb/LegacyUsbDeviceManager$LegacyUsbHandler;->mDefaultFunctions:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 452
    :cond_4
    if-nez p1, :cond_5

    .line 453
    iget-object p1, p0, Lcom/android/server/usb/LegacyUsbDeviceManager$LegacyUsbHandler;->mDefaultFunctions:Ljava/lang/String;

    .line 455
    :cond_5
    iget-object v0, p0, Lcom/android/server/usb/LegacyUsbDeviceManager$LegacyUsbHandler;->this$0:Lcom/android/server/usb/LegacyUsbDeviceManager;

    #getter for: Lcom/android/server/usb/LegacyUsbDeviceManager;->mAdbEnabled:Z
    invoke-static {v0}, Lcom/android/server/usb/LegacyUsbDeviceManager;->access$600(Lcom/android/server/usb/LegacyUsbDeviceManager;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 456
    const-string v0, "adb"

    #calls: Lcom/android/server/usb/LegacyUsbDeviceManager;->addFunction(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {p1, v0}, Lcom/android/server/usb/LegacyUsbDeviceManager;->access$1000(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 460
    :goto_2
    iget-object v0, p0, Lcom/android/server/usb/LegacyUsbDeviceManager$LegacyUsbHandler;->mCurrentFunctions:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 461
    const-string v0, "none"

    invoke-direct {p0, v0}, Lcom/android/server/usb/LegacyUsbDeviceManager$LegacyUsbHandler;->setUsbConfig(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 462
    invoke-static {}, Lcom/android/server/usb/LegacyUsbDeviceManager;->access$500()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Failed to disable USB"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    iget-object v0, p0, Lcom/android/server/usb/LegacyUsbDeviceManager$LegacyUsbHandler;->mCurrentFunctions:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/usb/LegacyUsbDeviceManager$LegacyUsbHandler;->setUsbConfig(Ljava/lang/String;)Z

    goto :goto_1

    .line 458
    :cond_6
    const-string v0, "adb"

    #calls: Lcom/android/server/usb/LegacyUsbDeviceManager;->removeFunction(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {p1, v0}, Lcom/android/server/usb/LegacyUsbDeviceManager;->access$1100(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 467
    :cond_7
    invoke-direct {p0, p1}, Lcom/android/server/usb/LegacyUsbDeviceManager$LegacyUsbHandler;->setUsbConfig(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 468
    iput-object p1, p0, Lcom/android/server/usb/LegacyUsbDeviceManager$LegacyUsbHandler;->mCurrentFunctions:Ljava/lang/String;

    goto :goto_1

    .line 470
    :cond_8
    invoke-static {}, Lcom/android/server/usb/LegacyUsbDeviceManager;->access$500()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to switch USB config to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    iget-object v0, p0, Lcom/android/server/usb/LegacyUsbDeviceManager$LegacyUsbHandler;->mCurrentFunctions:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/usb/LegacyUsbDeviceManager$LegacyUsbHandler;->setUsbConfig(Ljava/lang/String;)Z

    goto/16 :goto_1
.end method

.method private setUsbConfig(Ljava/lang/String;)Z
    .locals 1
    .parameter "config"

    .prologue
    .line 409
    const-string v0, "sys.usb.config"

    invoke-static {v0, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    invoke-direct {p0, p1}, Lcom/android/server/usb/LegacyUsbDeviceManager$LegacyUsbHandler;->waitForState(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private updateAdbNotification()V
    .locals 12

    .prologue
    const/4 v9, 0x0

    const v11, 0x1040431

    const/4 v10, 0x0

    .line 597
    iget-object v7, p0, Lcom/android/server/usb/LegacyUsbDeviceManager$LegacyUsbHandler;->this$0:Lcom/android/server/usb/LegacyUsbDeviceManager;

    #getter for: Lcom/android/server/usb/LegacyUsbDeviceManager;->mNotificationManager:Landroid/app/NotificationManager;
    invoke-static {v7}, Lcom/android/server/usb/LegacyUsbDeviceManager;->access$1400(Lcom/android/server/usb/LegacyUsbDeviceManager;)Landroid/app/NotificationManager;

    move-result-object v7

    if-nez v7, :cond_1

    .line 630
    :cond_0
    :goto_0
    return-void

    .line 598
    :cond_1
    const v0, 0x1040431

    .line 599
    .local v0, id:I
    iget-object v7, p0, Lcom/android/server/usb/LegacyUsbDeviceManager$LegacyUsbHandler;->this$0:Lcom/android/server/usb/LegacyUsbDeviceManager;

    #getter for: Lcom/android/server/usb/LegacyUsbDeviceManager;->mAdbEnabled:Z
    invoke-static {v7}, Lcom/android/server/usb/LegacyUsbDeviceManager;->access$600(Lcom/android/server/usb/LegacyUsbDeviceManager;)Z

    move-result v7

    if-eqz v7, :cond_2

    iget-boolean v7, p0, Lcom/android/server/usb/LegacyUsbDeviceManager$LegacyUsbHandler;->mConnected:Z

    if-eqz v7, :cond_2

    .line 600
    const-string v7, "0"

    const-string v8, "persist.adb.notify"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 602
    iget-boolean v7, p0, Lcom/android/server/usb/LegacyUsbDeviceManager$LegacyUsbHandler;->mAdbNotificationShown:Z

    if-nez v7, :cond_0

    .line 603
    iget-object v7, p0, Lcom/android/server/usb/LegacyUsbDeviceManager$LegacyUsbHandler;->this$0:Lcom/android/server/usb/LegacyUsbDeviceManager;

    #getter for: Lcom/android/server/usb/LegacyUsbDeviceManager;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/server/usb/LegacyUsbDeviceManager;->access$900(Lcom/android/server/usb/LegacyUsbDeviceManager;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 604
    .local v5, r:Landroid/content/res/Resources;
    invoke-virtual {v5, v11}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    .line 605
    .local v6, title:Ljava/lang/CharSequence;
    const v7, 0x1040432

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 608
    .local v2, message:Ljava/lang/CharSequence;
    new-instance v3, Landroid/app/Notification;

    invoke-direct {v3}, Landroid/app/Notification;-><init>()V

    .line 609
    .local v3, notification:Landroid/app/Notification;
    const v7, 0x108051c

    iput v7, v3, Landroid/app/Notification;->icon:I

    .line 610
    const-wide/16 v7, 0x0

    iput-wide v7, v3, Landroid/app/Notification;->when:J

    .line 611
    const/4 v7, 0x2

    iput v7, v3, Landroid/app/Notification;->flags:I

    .line 612
    iput-object v6, v3, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 613
    iput v10, v3, Landroid/app/Notification;->defaults:I

    .line 614
    iput-object v9, v3, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 615
    iput-object v9, v3, Landroid/app/Notification;->vibrate:[J

    .line 617
    new-instance v7, Landroid/content/ComponentName;

    const-string v8, "com.android.settings"

    const-string v9, "com.android.settings.DevelopmentSettings"

    invoke-direct {v7, v8, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v7}, Landroid/content/Intent;->makeRestartActivityTask(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v1

    .line 620
    .local v1, intent:Landroid/content/Intent;
    iget-object v7, p0, Lcom/android/server/usb/LegacyUsbDeviceManager$LegacyUsbHandler;->this$0:Lcom/android/server/usb/LegacyUsbDeviceManager;

    #getter for: Lcom/android/server/usb/LegacyUsbDeviceManager;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/server/usb/LegacyUsbDeviceManager;->access$900(Lcom/android/server/usb/LegacyUsbDeviceManager;)Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v10, v1, v10}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 622
    .local v4, pi:Landroid/app/PendingIntent;
    iget-object v7, p0, Lcom/android/server/usb/LegacyUsbDeviceManager$LegacyUsbHandler;->this$0:Lcom/android/server/usb/LegacyUsbDeviceManager;

    #getter for: Lcom/android/server/usb/LegacyUsbDeviceManager;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/server/usb/LegacyUsbDeviceManager;->access$900(Lcom/android/server/usb/LegacyUsbDeviceManager;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v3, v7, v6, v2, v4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 623
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/server/usb/LegacyUsbDeviceManager$LegacyUsbHandler;->mAdbNotificationShown:Z

    .line 624
    iget-object v7, p0, Lcom/android/server/usb/LegacyUsbDeviceManager$LegacyUsbHandler;->this$0:Lcom/android/server/usb/LegacyUsbDeviceManager;

    #getter for: Lcom/android/server/usb/LegacyUsbDeviceManager;->mNotificationManager:Landroid/app/NotificationManager;
    invoke-static {v7}, Lcom/android/server/usb/LegacyUsbDeviceManager;->access$1400(Lcom/android/server/usb/LegacyUsbDeviceManager;)Landroid/app/NotificationManager;

    move-result-object v7

    invoke-virtual {v7, v11, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0

    .line 626
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #message:Ljava/lang/CharSequence;
    .end local v3           #notification:Landroid/app/Notification;
    .end local v4           #pi:Landroid/app/PendingIntent;
    .end local v5           #r:Landroid/content/res/Resources;
    .end local v6           #title:Ljava/lang/CharSequence;
    :cond_2
    iget-boolean v7, p0, Lcom/android/server/usb/LegacyUsbDeviceManager$LegacyUsbHandler;->mAdbNotificationShown:Z

    if-eqz v7, :cond_0

    .line 627
    iput-boolean v10, p0, Lcom/android/server/usb/LegacyUsbDeviceManager$LegacyUsbHandler;->mAdbNotificationShown:Z

    .line 628
    iget-object v7, p0, Lcom/android/server/usb/LegacyUsbDeviceManager$LegacyUsbHandler;->this$0:Lcom/android/server/usb/LegacyUsbDeviceManager;

    #getter for: Lcom/android/server/usb/LegacyUsbDeviceManager;->mNotificationManager:Landroid/app/NotificationManager;
    invoke-static {v7}, Lcom/android/server/usb/LegacyUsbDeviceManager;->access$1400(Lcom/android/server/usb/LegacyUsbDeviceManager;)Landroid/app/NotificationManager;

    move-result-object v7

    invoke-virtual {v7, v11}, Landroid/app/NotificationManager;->cancel(I)V

    goto/16 :goto_0
.end method

.method private updateUsbNotification()V
    .locals 11

    .prologue
    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 540
    iget-object v7, p0, Lcom/android/server/usb/LegacyUsbDeviceManager$LegacyUsbHandler;->this$0:Lcom/android/server/usb/LegacyUsbDeviceManager;

    #getter for: Lcom/android/server/usb/LegacyUsbDeviceManager;->mNotificationManager:Landroid/app/NotificationManager;
    invoke-static {v7}, Lcom/android/server/usb/LegacyUsbDeviceManager;->access$1400(Lcom/android/server/usb/LegacyUsbDeviceManager;)Landroid/app/NotificationManager;

    move-result-object v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/server/usb/LegacyUsbDeviceManager$LegacyUsbHandler;->this$0:Lcom/android/server/usb/LegacyUsbDeviceManager;

    #getter for: Lcom/android/server/usb/LegacyUsbDeviceManager;->mUseUsbNotification:Z
    invoke-static {v7}, Lcom/android/server/usb/LegacyUsbDeviceManager;->access$1500(Lcom/android/server/usb/LegacyUsbDeviceManager;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 594
    :cond_0
    :goto_0
    return-void

    .line 545
    :cond_1
    const/4 v0, 0x0

    .line 546
    .local v0, id:I
    iget-object v7, p0, Lcom/android/server/usb/LegacyUsbDeviceManager$LegacyUsbHandler;->this$0:Lcom/android/server/usb/LegacyUsbDeviceManager;

    #getter for: Lcom/android/server/usb/LegacyUsbDeviceManager;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/server/usb/LegacyUsbDeviceManager;->access$900(Lcom/android/server/usb/LegacyUsbDeviceManager;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 547
    .local v5, r:Landroid/content/res/Resources;
    iget-boolean v7, p0, Lcom/android/server/usb/LegacyUsbDeviceManager$LegacyUsbHandler;->mConnected:Z

    if-eqz v7, :cond_2

    .line 548
    iget-object v7, p0, Lcom/android/server/usb/LegacyUsbDeviceManager$LegacyUsbHandler;->mCurrentFunctions:Ljava/lang/String;

    const-string v8, "mtp"

    #calls: Lcom/android/server/usb/LegacyUsbDeviceManager;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static {v7, v8}, Lcom/android/server/usb/LegacyUsbDeviceManager;->access$700(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 549
    const v0, 0x1040429

    .line 564
    :cond_2
    :goto_1
    iget v7, p0, Lcom/android/server/usb/LegacyUsbDeviceManager$LegacyUsbHandler;->mUsbNotificationId:I

    if-eq v0, v7, :cond_0

    .line 566
    iget v7, p0, Lcom/android/server/usb/LegacyUsbDeviceManager$LegacyUsbHandler;->mUsbNotificationId:I

    if-eqz v7, :cond_3

    .line 567
    iget-object v7, p0, Lcom/android/server/usb/LegacyUsbDeviceManager$LegacyUsbHandler;->this$0:Lcom/android/server/usb/LegacyUsbDeviceManager;

    #getter for: Lcom/android/server/usb/LegacyUsbDeviceManager;->mNotificationManager:Landroid/app/NotificationManager;
    invoke-static {v7}, Lcom/android/server/usb/LegacyUsbDeviceManager;->access$1400(Lcom/android/server/usb/LegacyUsbDeviceManager;)Landroid/app/NotificationManager;

    move-result-object v7

    iget v8, p0, Lcom/android/server/usb/LegacyUsbDeviceManager$LegacyUsbHandler;->mUsbNotificationId:I

    invoke-virtual {v7, v8}, Landroid/app/NotificationManager;->cancel(I)V

    .line 568
    iput v10, p0, Lcom/android/server/usb/LegacyUsbDeviceManager$LegacyUsbHandler;->mUsbNotificationId:I

    .line 570
    :cond_3
    if-eqz v0, :cond_0

    .line 571
    const v7, 0x104042d

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 573
    .local v2, message:Ljava/lang/CharSequence;
    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    .line 575
    .local v6, title:Ljava/lang/CharSequence;
    new-instance v3, Landroid/app/Notification;

    invoke-direct {v3}, Landroid/app/Notification;-><init>()V

    .line 576
    .local v3, notification:Landroid/app/Notification;
    const v7, 0x108053a

    iput v7, v3, Landroid/app/Notification;->icon:I

    .line 577
    const-wide/16 v7, 0x0

    iput-wide v7, v3, Landroid/app/Notification;->when:J

    .line 578
    const/4 v7, 0x2

    iput v7, v3, Landroid/app/Notification;->flags:I

    .line 579
    iput-object v6, v3, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 580
    iput v10, v3, Landroid/app/Notification;->defaults:I

    .line 581
    iput-object v9, v3, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 582
    iput-object v9, v3, Landroid/app/Notification;->vibrate:[J

    .line 584
    new-instance v7, Landroid/content/ComponentName;

    const-string v8, "com.android.settings"

    const-string v9, "com.android.settings.UsbSettings"

    invoke-direct {v7, v8, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v7}, Landroid/content/Intent;->makeRestartActivityTask(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v1

    .line 587
    .local v1, intent:Landroid/content/Intent;
    iget-object v7, p0, Lcom/android/server/usb/LegacyUsbDeviceManager$LegacyUsbHandler;->this$0:Lcom/android/server/usb/LegacyUsbDeviceManager;

    #getter for: Lcom/android/server/usb/LegacyUsbDeviceManager;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/server/usb/LegacyUsbDeviceManager;->access$900(Lcom/android/server/usb/LegacyUsbDeviceManager;)Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v10, v1, v10}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 589
    .local v4, pi:Landroid/app/PendingIntent;
    iget-object v7, p0, Lcom/android/server/usb/LegacyUsbDeviceManager$LegacyUsbHandler;->this$0:Lcom/android/server/usb/LegacyUsbDeviceManager;

    #getter for: Lcom/android/server/usb/LegacyUsbDeviceManager;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/server/usb/LegacyUsbDeviceManager;->access$900(Lcom/android/server/usb/LegacyUsbDeviceManager;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v3, v7, v6, v2, v4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 590
    iget-object v7, p0, Lcom/android/server/usb/LegacyUsbDeviceManager$LegacyUsbHandler;->this$0:Lcom/android/server/usb/LegacyUsbDeviceManager;

    #getter for: Lcom/android/server/usb/LegacyUsbDeviceManager;->mNotificationManager:Landroid/app/NotificationManager;
    invoke-static {v7}, Lcom/android/server/usb/LegacyUsbDeviceManager;->access$1400(Lcom/android/server/usb/LegacyUsbDeviceManager;)Landroid/app/NotificationManager;

    move-result-object v7

    invoke-virtual {v7, v0, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 591
    iput v0, p0, Lcom/android/server/usb/LegacyUsbDeviceManager$LegacyUsbHandler;->mUsbNotificationId:I

    goto/16 :goto_0

    .line 550
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #message:Ljava/lang/CharSequence;
    .end local v3           #notification:Landroid/app/Notification;
    .end local v4           #pi:Landroid/app/PendingIntent;
    .end local v6           #title:Ljava/lang/CharSequence;
    :cond_4
    iget-object v7, p0, Lcom/android/server/usb/LegacyUsbDeviceManager$LegacyUsbHandler;->mCurrentFunctions:Ljava/lang/String;

    const-string v8, "ptp"

    #calls: Lcom/android/server/usb/LegacyUsbDeviceManager;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static {v7, v8}, Lcom/android/server/usb/LegacyUsbDeviceManager;->access$700(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 551
    const v0, 0x104042a

    goto :goto_1

    .line 555
    :cond_5
    iget-object v7, p0, Lcom/android/server/usb/LegacyUsbDeviceManager$LegacyUsbHandler;->mCurrentFunctions:Ljava/lang/String;

    const-string v8, "accessory"

    #calls: Lcom/android/server/usb/LegacyUsbDeviceManager;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static {v7, v8}, Lcom/android/server/usb/LegacyUsbDeviceManager;->access$700(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 556
    const v0, 0x104042c

    goto/16 :goto_1

    .line 559
    :cond_6
    iget-object v7, p0, Lcom/android/server/usb/LegacyUsbDeviceManager$LegacyUsbHandler;->mCurrentFunctions:Ljava/lang/String;

    const-string v8, "rndis"

    #calls: Lcom/android/server/usb/LegacyUsbDeviceManager;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static {v7, v8}, Lcom/android/server/usb/LegacyUsbDeviceManager;->access$700(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 560
    invoke-static {}, Lcom/android/server/usb/LegacyUsbDeviceManager;->access$500()Ljava/lang/String;

    move-result-object v7

    const-string v8, "No known USB function in updateUsbNotification"

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method private updateUsbState()V
    .locals 5

    .prologue
    .line 480
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.hardware.usb.action.USB_STATE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 481
    .local v2, intent:Landroid/content/Intent;
    const/high16 v3, 0x2000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 482
    const-string v3, "connected"

    iget-boolean v4, p0, Lcom/android/server/usb/LegacyUsbDeviceManager$LegacyUsbHandler;->mConnected:Z

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 483
    const-string v3, "configured"

    iget-boolean v4, p0, Lcom/android/server/usb/LegacyUsbDeviceManager$LegacyUsbHandler;->mConfigured:Z

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 485
    iget-object v3, p0, Lcom/android/server/usb/LegacyUsbDeviceManager$LegacyUsbHandler;->mCurrentFunctions:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 486
    iget-object v3, p0, Lcom/android/server/usb/LegacyUsbDeviceManager$LegacyUsbHandler;->mCurrentFunctions:Ljava/lang/String;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 487
    .local v0, functions:[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_0

    .line 488
    aget-object v3, v0, v1

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 487
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 492
    .end local v0           #functions:[Ljava/lang/String;
    .end local v1           #i:I
    :cond_0
    iget-object v3, p0, Lcom/android/server/usb/LegacyUsbDeviceManager$LegacyUsbHandler;->this$0:Lcom/android/server/usb/LegacyUsbDeviceManager;

    #getter for: Lcom/android/server/usb/LegacyUsbDeviceManager;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/usb/LegacyUsbDeviceManager;->access$900(Lcom/android/server/usb/LegacyUsbDeviceManager;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 493
    return-void
.end method

.method private waitForState(Ljava/lang/String;)Z
    .locals 4
    .parameter "state"

    .prologue
    .line 393
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v1, 0x14

    if-ge v0, v1, :cond_1

    .line 395
    const-string v1, "sys.usb.state"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 403
    :goto_1
    return v1

    .line 398
    :cond_0
    const-wide/16 v1, 0x32

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 393
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 402
    :cond_1
    invoke-static {}, Lcom/android/server/usb/LegacyUsbDeviceManager;->access$500()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "waitForState("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") FAILED"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    const/4 v1, 0x0

    goto :goto_1

    .line 399
    :catch_0
    move-exception v1

    goto :goto_2
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;)V
    .locals 5
    .parameter "fd"
    .parameter "pw"

    .prologue
    .line 633
    const-string v1, "  USB Device State:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 634
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    Current Functions: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/usb/LegacyUsbDeviceManager$LegacyUsbHandler;->mCurrentFunctions:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 635
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    Default Functions: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/usb/LegacyUsbDeviceManager$LegacyUsbHandler;->mDefaultFunctions:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 636
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    mConnected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/usb/LegacyUsbDeviceManager$LegacyUsbHandler;->mConnected:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 637
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    mConfigured: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/usb/LegacyUsbDeviceManager$LegacyUsbHandler;->mConfigured:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 638
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    mCurrentAccessory: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/usb/LegacyUsbDeviceManager$LegacyUsbHandler;->mCurrentAccessory:Landroid/hardware/usb/UsbAccessory;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 640
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    Kernel function list: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    const-string v3, "/sys/devices/virtual/usb_composite/"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 642
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    Mass storage backing file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    invoke-static {}, Lcom/android/server/usb/LegacyUsbDeviceManager;->access$1600()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 647
    :goto_0
    return-void

    .line 644
    :catch_0
    move-exception v0

    .line 645
    .local v0, e:Ljava/io/IOException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IOException: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getCurrentAccessory()Landroid/hardware/usb/UsbAccessory;
    .locals 1

    .prologue
    .line 536
    iget-object v0, p0, Lcom/android/server/usb/LegacyUsbDeviceManager$LegacyUsbHandler;->mCurrentAccessory:Landroid/hardware/usb/UsbAccessory;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 497
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 533
    :cond_0
    :goto_0
    return-void

    .line 500
    :pswitch_0
    iget v2, p1, Landroid/os/Message;->arg1:I

    if-ne v2, v3, :cond_2

    move v2, v3

    :goto_1
    iput-boolean v2, p0, Lcom/android/server/usb/LegacyUsbDeviceManager$LegacyUsbHandler;->mConnected:Z

    .line 501
    iget v2, p1, Landroid/os/Message;->arg2:I

    if-ne v2, v3, :cond_3

    :goto_2
    iput-boolean v3, p0, Lcom/android/server/usb/LegacyUsbDeviceManager$LegacyUsbHandler;->mConfigured:Z

    .line 502
    invoke-direct {p0}, Lcom/android/server/usb/LegacyUsbDeviceManager$LegacyUsbHandler;->updateUsbNotification()V

    .line 503
    invoke-direct {p0}, Lcom/android/server/usb/LegacyUsbDeviceManager$LegacyUsbHandler;->updateAdbNotification()V

    .line 505
    iget-boolean v2, p0, Lcom/android/server/usb/LegacyUsbDeviceManager$LegacyUsbHandler;->mConnected:Z

    if-nez v2, :cond_1

    .line 507
    iget-object v2, p0, Lcom/android/server/usb/LegacyUsbDeviceManager$LegacyUsbHandler;->mDefaultFunctions:Ljava/lang/String;

    invoke-direct {p0, v2, v4}, Lcom/android/server/usb/LegacyUsbDeviceManager$LegacyUsbHandler;->setEnabledFunctions(Ljava/lang/String;Z)V

    .line 509
    :cond_1
    iget-object v2, p0, Lcom/android/server/usb/LegacyUsbDeviceManager$LegacyUsbHandler;->this$0:Lcom/android/server/usb/LegacyUsbDeviceManager;

    #getter for: Lcom/android/server/usb/LegacyUsbDeviceManager;->mBootCompleted:Z
    invoke-static {v2}, Lcom/android/server/usb/LegacyUsbDeviceManager;->access$1200(Lcom/android/server/usb/LegacyUsbDeviceManager;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 510
    invoke-direct {p0}, Lcom/android/server/usb/LegacyUsbDeviceManager$LegacyUsbHandler;->updateUsbState()V

    goto :goto_0

    :cond_2
    move v2, v4

    .line 500
    goto :goto_1

    :cond_3
    move v3, v4

    .line 501
    goto :goto_2

    .line 514
    :pswitch_1
    iget v2, p1, Landroid/os/Message;->arg1:I

    if-ne v2, v3, :cond_4

    :goto_3
    invoke-direct {p0, v3}, Lcom/android/server/usb/LegacyUsbDeviceManager$LegacyUsbHandler;->setAdbEnabled(Z)V

    goto :goto_0

    :cond_4
    move v3, v4

    goto :goto_3

    .line 517
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 518
    .local v0, function:Ljava/lang/String;
    iget v2, p1, Landroid/os/Message;->arg1:I

    if-ne v2, v3, :cond_5

    move v1, v3

    .line 519
    .local v1, makeDefault:Z
    :goto_4
    invoke-direct {p0, v0, v1}, Lcom/android/server/usb/LegacyUsbDeviceManager$LegacyUsbHandler;->setEnabledFunctions(Ljava/lang/String;Z)V

    goto :goto_0

    .end local v1           #makeDefault:Z
    :cond_5
    move v1, v4

    .line 518
    goto :goto_4

    .line 522
    .end local v0           #function:Ljava/lang/String;
    :pswitch_3
    invoke-direct {p0}, Lcom/android/server/usb/LegacyUsbDeviceManager$LegacyUsbHandler;->updateUsbNotification()V

    .line 523
    invoke-direct {p0}, Lcom/android/server/usb/LegacyUsbDeviceManager$LegacyUsbHandler;->updateAdbNotification()V

    .line 524
    invoke-direct {p0}, Lcom/android/server/usb/LegacyUsbDeviceManager$LegacyUsbHandler;->updateUsbState()V

    goto :goto_0

    .line 527
    :pswitch_4
    iget-object v2, p0, Lcom/android/server/usb/LegacyUsbDeviceManager$LegacyUsbHandler;->this$0:Lcom/android/server/usb/LegacyUsbDeviceManager;

    #setter for: Lcom/android/server/usb/LegacyUsbDeviceManager;->mBootCompleted:Z
    invoke-static {v2, v3}, Lcom/android/server/usb/LegacyUsbDeviceManager;->access$1202(Lcom/android/server/usb/LegacyUsbDeviceManager;Z)Z

    .line 528
    iget-object v2, p0, Lcom/android/server/usb/LegacyUsbDeviceManager$LegacyUsbHandler;->mCurrentAccessory:Landroid/hardware/usb/UsbAccessory;

    if-eqz v2, :cond_0

    .line 529
    iget-object v2, p0, Lcom/android/server/usb/LegacyUsbDeviceManager$LegacyUsbHandler;->this$0:Lcom/android/server/usb/LegacyUsbDeviceManager;

    #getter for: Lcom/android/server/usb/LegacyUsbDeviceManager;->mSettingsManager:Lcom/android/server/usb/UsbSettingsManager;
    invoke-static {v2}, Lcom/android/server/usb/LegacyUsbDeviceManager;->access$1300(Lcom/android/server/usb/LegacyUsbDeviceManager;)Lcom/android/server/usb/UsbSettingsManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/usb/LegacyUsbDeviceManager$LegacyUsbHandler;->mCurrentAccessory:Landroid/hardware/usb/UsbAccessory;

    invoke-virtual {v2, v3}, Lcom/android/server/usb/UsbSettingsManager;->accessoryAttached(Landroid/hardware/usb/UsbAccessory;)V

    goto :goto_0

    .line 497
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public isConfigured()Z
    .locals 1

    .prologue
    .line 341
    iget-boolean v0, p0, Lcom/android/server/usb/LegacyUsbDeviceManager$LegacyUsbHandler;->mConfigured:Z

    return v0
.end method

.method public isConnected()Z
    .locals 1

    .prologue
    .line 337
    iget-boolean v0, p0, Lcom/android/server/usb/LegacyUsbDeviceManager$LegacyUsbHandler;->mConnected:Z

    return v0
.end method

.method public sendMessage(ILjava/lang/Object;)V
    .locals 1
    .parameter "what"
    .parameter "arg"

    .prologue
    .line 352
    invoke-virtual {p0, p1}, Lcom/android/server/usb/LegacyUsbDeviceManager$LegacyUsbHandler;->removeMessages(I)V

    .line 353
    invoke-static {p0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 354
    .local v0, m:Landroid/os/Message;
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 355
    invoke-virtual {p0, v0}, Lcom/android/server/usb/LegacyUsbDeviceManager$LegacyUsbHandler;->sendMessage(Landroid/os/Message;)Z

    .line 356
    return-void
.end method

.method public sendMessage(ILjava/lang/Object;Z)V
    .locals 2
    .parameter "what"
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 359
    invoke-virtual {p0, p1}, Lcom/android/server/usb/LegacyUsbDeviceManager$LegacyUsbHandler;->removeMessages(I)V

    .line 360
    invoke-static {p0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 361
    .local v0, m:Landroid/os/Message;
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 362
    if-eqz p3, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 363
    invoke-virtual {p0, v0}, Lcom/android/server/usb/LegacyUsbDeviceManager$LegacyUsbHandler;->sendMessage(Landroid/os/Message;)Z

    .line 364
    return-void

    .line 362
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public sendMessage(IZ)V
    .locals 2
    .parameter "what"
    .parameter "arg"

    .prologue
    .line 345
    invoke-virtual {p0, p1}, Lcom/android/server/usb/LegacyUsbDeviceManager$LegacyUsbHandler;->removeMessages(I)V

    .line 346
    invoke-static {p0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 347
    .local v0, m:Landroid/os/Message;
    if-eqz p2, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 348
    invoke-virtual {p0, v0}, Lcom/android/server/usb/LegacyUsbDeviceManager$LegacyUsbHandler;->sendMessage(Landroid/os/Message;)Z

    .line 349
    return-void

    .line 347
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public updateState(Ljava/lang/String;)V
    .locals 6
    .parameter "state"

    .prologue
    const/4 v4, 0x0

    .line 369
    const-string v3, "DISCONNECTED"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 370
    const/4 v1, 0x0

    .line 371
    .local v1, connected:I
    const/4 v0, 0x0

    .line 382
    .local v0, configured:I
    :goto_0
    invoke-virtual {p0, v4}, Lcom/android/server/usb/LegacyUsbDeviceManager$LegacyUsbHandler;->removeMessages(I)V

    .line 383
    invoke-static {p0, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v2

    .line 384
    .local v2, msg:Landroid/os/Message;
    iput v1, v2, Landroid/os/Message;->arg1:I

    .line 385
    iput v0, v2, Landroid/os/Message;->arg2:I

    .line 387
    if-nez v1, :cond_3

    const-wide/16 v3, 0x3e8

    :goto_1
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/server/usb/LegacyUsbDeviceManager$LegacyUsbHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 388
    .end local v0           #configured:I
    .end local v1           #connected:I
    .end local v2           #msg:Landroid/os/Message;
    :goto_2
    return-void

    .line 372
    :cond_0
    const-string v3, "CONNECTED"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 373
    const/4 v1, 0x1

    .line 374
    .restart local v1       #connected:I
    const/4 v0, 0x0

    .restart local v0       #configured:I
    goto :goto_0

    .line 375
    .end local v0           #configured:I
    .end local v1           #connected:I
    :cond_1
    const-string v3, "CONFIGURED"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 376
    const/4 v1, 0x1

    .line 377
    .restart local v1       #connected:I
    const/4 v0, 0x1

    .restart local v0       #configured:I
    goto :goto_0

    .line 379
    .end local v0           #configured:I
    .end local v1           #connected:I
    :cond_2
    invoke-static {}, Lcom/android/server/usb/LegacyUsbDeviceManager;->access$500()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unknown state "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 387
    .restart local v0       #configured:I
    .restart local v1       #connected:I
    .restart local v2       #msg:Landroid/os/Message;
    :cond_3
    const-wide/16 v3, 0x0

    goto :goto_1
.end method

.class public Lmiui/provider/ExtraSettings$Secure;
.super Ljava/lang/Object;
.source "ExtraSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/provider/ExtraSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Secure"
.end annotation


# static fields
.field public static final ACCESS_CONTROL_LOCK_ENABLED:Ljava/lang/String; = "access_control_lock_enabled"

.field public static APP_ENCRYPT_PASSWORD:Ljava/lang/String; = null

.field public static final DATA_USAGE_ADJUSTING_TIME:Ljava/lang/String; = "data_usage_adjusting_time"

.field public static final DATA_USAGE_ADJUSTMENT:Ljava/lang/String; = "data_usage_adjustment"

.field public static final DATA_USAGE_LIMIT_BYTES:Ljava/lang/String; = "data_usage_limit_bytes"

.field public static final DEFAULT_FIND_DEVICE_PIN_LOCK:I = 0x0

.field public static final DEFAULT_INPUT_METHOD_CHOOSED:Ljava/lang/String; = "default_input_method_choosed"

.field public static final DEFAULT_PERMANENTLY_LOCK_SIM_CHANGE:I = 0x0

.field public static DEFAULT_SHOW_MAGNIFIER_WHEN_INPUT:I = 0x0

.field public static final DEFAULT_VPN_ENABLE_PASSWORD:I = 0x0

.field public static FIND_DEVICE_PIN_LOCK:Ljava/lang/String; = null

.field public static FORCE_CLOCE_DIALOG_ENABLED:Ljava/lang/String; = null

.field public static MOBILE_DOWNLOAD_FILE_SIZE_PROMPT_POPUP_ENABLED:Ljava/lang/String; = null

.field public static final MOBILE_POLICY:Ljava/lang/String; = "mobile_policy"

.field public static final PASSWORD_FOR_PRIVACYMODE:Ljava/lang/String; = "password_for_privacymode"

.field public static PERMANENTLY_LOCK_SIM_CHANGE:Ljava/lang/String; = null

.field public static final PRIVACY_MODE_ENABLED:Ljava/lang/String; = "privacy_mode_enabled"

.field public static REGISTER_FIND_DEVICE_SIM_NUMBER:Ljava/lang/String; = null

.field public static final SAFE_GUARD_CHOOSED:Ljava/lang/String; = "safe_guard_choosed"

.field public static final SCREEN_BUTTONS_HAS_BEEN_DISABLED:Ljava/lang/String; = "screen_buttons_has_been_disabled"

.field public static final SCREEN_BUTTONS_STATE:Ljava/lang/String; = "screen_buttons_state"

.field public static final SCREEN_BUTTONS_TURN_ON:Ljava/lang/String; = "screen_buttons_turn_on"

.field public static SHOW_MAGNIFIER_WHEN_INPUT:Ljava/lang/String; = null

.field public static final STATUS_BAR_EXPANDED_NOTIFICATION_BLACK_LIST:Ljava/lang/String; = "status_bar_expanded_notification_black_list"

.field public static final UPLOAD_LOG:Ljava/lang/String; = "upload_log_pref"

.field public static final USB_MODE:Ljava/lang/String; = "usb_mode"

.field public static final USB_MODE_ASK_USER:I = 0x0

.field public static final USB_MODE_CHARGE_ONLY:I = 0x1

.field public static final USB_MODE_MOUNT_STORAGE:I = 0x2

.field public static final VPN_ENABLE_PASSWORD:Ljava/lang/String; = "vpn_password_enable"

.field private static sStorageThreshold:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 796
    const-string/jumbo v0, "mobile_download_file_size_prompt_popup_enabled"

    sput-object v0, Lmiui/provider/ExtraSettings$Secure;->MOBILE_DOWNLOAD_FILE_SIZE_PROMPT_POPUP_ENABLED:Ljava/lang/String;

    .line 798
    const-wide/16 v0, 0x0

    sput-wide v0, Lmiui/provider/ExtraSettings$Secure;->sStorageThreshold:J

    .line 816
    const-string v0, "force_close_dialog_enabled"

    sput-object v0, Lmiui/provider/ExtraSettings$Secure;->FORCE_CLOCE_DIALOG_ENABLED:Ljava/lang/String;

    .line 829
    const-string/jumbo v0, "show_magnifier_when_input"

    sput-object v0, Lmiui/provider/ExtraSettings$Secure;->SHOW_MAGNIFIER_WHEN_INPUT:Ljava/lang/String;

    .line 830
    const/4 v0, 0x1

    sput v0, Lmiui/provider/ExtraSettings$Secure;->DEFAULT_SHOW_MAGNIFIER_WHEN_INPUT:I

    .line 842
    const-string v0, "app_encrypt_password"

    sput-object v0, Lmiui/provider/ExtraSettings$Secure;->APP_ENCRYPT_PASSWORD:Ljava/lang/String;

    .line 848
    const-string/jumbo v0, "resister_find_device_sim_number"

    sput-object v0, Lmiui/provider/ExtraSettings$Secure;->REGISTER_FIND_DEVICE_SIM_NUMBER:Ljava/lang/String;

    .line 854
    const-string/jumbo v0, "permanently_lock_sim_change"

    sput-object v0, Lmiui/provider/ExtraSettings$Secure;->PERMANENTLY_LOCK_SIM_CHANGE:Ljava/lang/String;

    .line 861
    const-string v0, "find_device_pin_lock"

    sput-object v0, Lmiui/provider/ExtraSettings$Secure;->FIND_DEVICE_PIN_LOCK:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 713
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkPrivacyAndReturnCursor(Landroid/content/Context;)Landroid/database/Cursor;
    .locals 5
    .parameter "context"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 765
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v4, "privacy_mode_enabled"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v2, v1, :cond_0

    move v0, v2

    .line 767
    .local v0, enabled:Z
    :goto_0
    if-eqz v0, :cond_1

    .line 768
    new-instance v1, Landroid/database/MatrixCursor;

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "_id"

    aput-object v4, v2, v3

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 772
    :goto_1
    return-object v1

    .end local v0           #enabled:Z
    :cond_0
    move v0, v3

    .line 765
    goto :goto_0

    .line 772
    .restart local v0       #enabled:Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static getStorageThreshold(Landroid/content/ContentResolver;)J
    .locals 6
    .parameter "resolver"

    .prologue
    .line 801
    sget-wide v2, Lmiui/provider/ExtraSettings$Secure;->sStorageThreshold:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 802
    const-string/jumbo v2, "sys_storage_threshold_percentage"

    const/16 v3, 0xa

    invoke-static {p0, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 807
    .local v1, value:I
    new-instance v0, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 808
    .local v0, stats:Landroid/os/StatFs;
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockCount()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v4

    int-to-long v4, v4

    mul-long/2addr v2, v4

    int-to-long v4, v1

    mul-long/2addr v2, v4

    const-wide/16 v4, 0x64

    div-long/2addr v2, v4

    sput-wide v2, Lmiui/provider/ExtraSettings$Secure;->sStorageThreshold:J

    .line 810
    .end local v0           #stats:Landroid/os/StatFs;
    .end local v1           #value:I
    :cond_0
    sget-wide v2, Lmiui/provider/ExtraSettings$Secure;->sStorageThreshold:J

    return-wide v2
.end method

.method public static isForceCloseDialogEnabled(Landroid/content/Context;)Z
    .locals 4
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 819
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lmiui/provider/ExtraSettings$Secure;->FORCE_CLOCE_DIALOG_ENABLED:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-ne v0, v2, :cond_0

    .line 823
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 819
    goto :goto_0

    .line 821
    :catch_0
    move-exception v2

    .line 823
    const-string/jumbo v2, "user"

    sget-object v3, Lmiui/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lmiui/os/Build;->isDevelopmentVersion()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    move v1, v0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public static showMagnifierWhenInput(Landroid/content/Context;)Z
    .locals 4
    .parameter "context"

    .prologue
    const/4 v0, 0x1

    .line 832
    sget-boolean v1, Lmiui/os/Build;->SHOW_MAGNIFIER_WHEN_INPUT:Z

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x6090010

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lmiui/provider/ExtraSettings$Secure;->SHOW_MAGNIFIER_WHEN_INPUT:Ljava/lang/String;

    sget v3, Lmiui/provider/ExtraSettings$Secure;->DEFAULT_SHOW_MAGNIFIER_WHEN_INPUT:I

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v0, v1, :cond_1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

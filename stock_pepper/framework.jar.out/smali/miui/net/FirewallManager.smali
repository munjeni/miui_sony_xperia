.class public Lmiui/net/FirewallManager;
.super Ljava/lang/Object;
.source "FirewallManager.java"


# static fields
.field public static final ALARM_BOOT_COMPLETED_FLAG:I = 0x1

.field private static final DEBUG:Z = true

.field public static final DRIVE_MODE_FLAG:I = 0x4

.field private static final LOG_TAG:Ljava/lang/String; = "FirewallService"

.field public static final SERVICE_NAME:Ljava/lang/String; = "miui.Firewall"

.field public static final SIM_CARD_SYNC_COMPLETED_FLAG:I = 0x2

.field private static sInstance:Lmiui/net/FirewallManager;


# instance fields
.field private mService:Lmiui/net/IFirewall;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    new-instance v0, Lmiui/net/FirewallManager;

    invoke-direct {v0}, Lmiui/net/FirewallManager;-><init>()V

    sput-object v0, Lmiui/net/FirewallManager;->sInstance:Lmiui/net/FirewallManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    invoke-direct {p0}, Lmiui/net/FirewallManager;->ensureService()V

    .line 65
    return-void
.end method

.method public static checkAccessControl(Landroid/app/Activity;Landroid/content/ContentResolver;Ljava/lang/String;Landroid/content/pm/PackageManager;Landroid/app/IApplicationThread;Landroid/os/IBinder;Ljava/lang/String;)V
    .locals 18
    .parameter "parent"
    .parameter "resolver"
    .parameter "packageName"
    .parameter "pm"
    .parameter "thread"
    .parameter "token"
    .parameter "id"

    .prologue
    .line 283
    if-eqz p0, :cond_1

    .line 313
    :cond_0
    :goto_0
    return-void

    .line 285
    :cond_1
    const/4 v2, 0x1

    const-string v3, "access_control_lock_enabled"

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v3, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 290
    const/16 v17, 0x0

    .line 292
    .local v17, info:Landroid/content/pm/ApplicationInfo;
    const/4 v2, 0x0

    :try_start_0
    move-object/from16 v0, p3

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v17

    .line 296
    :goto_1
    if-eqz v17, :cond_0

    move-object/from16 v0, v17

    iget v2, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v3, -0x8000

    and-int/2addr v2, v3

    const/high16 v3, -0x8000

    if-ne v2, v3, :cond_0

    .line 298
    invoke-static {}, Lmiui/net/FirewallManager;->getInstance()Lmiui/net/FirewallManager;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Lmiui/net/FirewallManager;->checkAccessControlPass(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 300
    new-instance v4, Landroid/content/Intent;

    const-string v2, "android.app.action.CONFIRM_ACCESS_CONTROL"

    invoke-direct {v4, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 301
    .local v4, intent:Landroid/content/Intent;
    const-string v2, "android.intent.extra.shortcut.NAME"

    move-object/from16 v0, p2

    invoke-virtual {v4, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 304
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v10, -0x1

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v3, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    invoke-interface/range {v2 .. v15}, Landroid/app/IActivityManager;->startActivity(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;[Landroid/net/Uri;ILandroid/os/IBinder;Ljava/lang/String;IZZLjava/lang/String;Landroid/os/ParcelFileDescriptor;Z)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 309
    :catch_0
    move-exception v2

    goto :goto_0

    .line 293
    .end local v4           #intent:Landroid/content/Intent;
    :catch_1
    move-exception v16

    .line 294
    .local v16, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const/16 v17, 0x0

    goto :goto_1
.end method

.method public static decodeApnSetting(Ljava/lang/String;)Lcom/android/internal/telephony/ApnSetting;
    .locals 20
    .parameter "data"

    .prologue
    .line 263
    invoke-static/range {p0 .. p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 264
    const/4 v1, 0x0

    .line 278
    :goto_0
    return-object v1

    .line 267
    :cond_0
    const-string v2, "\\s*,\\s*"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v19

    .line 268
    .local v19, a:[Ljava/lang/String;
    move-object/from16 v0, v19

    array-length v2, v0

    const/16 v3, 0x10

    if-ge v2, v3, :cond_1

    .line 269
    const/4 v1, 0x0

    goto :goto_0

    .line 272
    :cond_1
    new-instance v1, Lcom/android/internal/telephony/ApnSetting;

    const/4 v2, 0x0

    aget-object v2, v19, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    aget-object v3, v19, v3

    const/4 v4, 0x2

    aget-object v4, v19, v4

    const/4 v5, 0x3

    aget-object v5, v19, v5

    const/4 v6, 0x4

    aget-object v6, v19, v6

    const/4 v7, 0x5

    aget-object v7, v19, v7

    const/4 v8, 0x6

    aget-object v8, v19, v8

    const/4 v9, 0x7

    aget-object v9, v19, v9

    const/16 v10, 0x8

    aget-object v10, v19, v10

    const/16 v11, 0x9

    aget-object v11, v19, v11

    const/16 v12, 0xa

    aget-object v12, v19, v12

    const/16 v13, 0xb

    aget-object v13, v19, v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    const/16 v14, 0xc

    aget-object v14, v19, v14

    const-string v15, "\\s*\\|\\s*"

    invoke-virtual {v14, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    const/16 v15, 0xd

    aget-object v15, v19, v15

    const/16 v16, 0xe

    aget-object v16, v19, v16

    const/16 v17, 0xf

    aget-object v17, v19, v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v17

    const/16 v18, 0x10

    aget-object v18, v19, v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    invoke-direct/range {v1 .. v18}, Lcom/android/internal/telephony/ApnSetting;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 278
    .local v1, apn:Lcom/android/internal/telephony/ApnSetting;
    goto :goto_0
.end method

.method public static encodeApnSetting(Lcom/android/internal/telephony/ApnSetting;)Ljava/lang/String;
    .locals 4
    .parameter "apn"

    .prologue
    const/16 v3, 0x2c

    .line 232
    if-nez p0, :cond_0

    .line 233
    const/4 v0, 0x0

    .line 236
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/android/internal/telephony/ApnSetting;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/ApnSetting;->numeric:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/ApnSetting;->carrier:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/ApnSetting;->apn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/ApnSetting;->proxy:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/ApnSetting;->port:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/ApnSetting;->mmsc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/ApnSetting;->mmsProxy:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/ApnSetting;->mmsPort:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/ApnSetting;->user:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/ApnSetting;->password:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/ApnSetting;->authType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "|"

    iget-object v2, p0, Lcom/android/internal/telephony/ApnSetting;->types:[Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/ApnSetting;->protocol:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/ApnSetting;->roamingProtocol:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/ApnSetting;->carrierEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/ApnSetting;->bearer:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method private ensureService()V
    .locals 2

    .prologue
    .line 71
    iget-object v0, p0, Lmiui/net/FirewallManager;->mService:Lmiui/net/IFirewall;

    if-nez v0, :cond_0

    .line 72
    const-class v1, Lmiui/net/FirewallManager;

    monitor-enter v1

    .line 73
    :try_start_0
    const-string/jumbo v0, "miui.Firewall"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lmiui/net/IFirewall$Stub;->asInterface(Landroid/os/IBinder;)Lmiui/net/IFirewall;

    move-result-object v0

    iput-object v0, p0, Lmiui/net/FirewallManager;->mService:Lmiui/net/IFirewall;

    .line 74
    monitor-exit v1

    .line 76
    :cond_0
    return-void

    .line 74
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getInstance()Lmiui/net/FirewallManager;
    .locals 1

    .prologue
    .line 84
    sget-object v0, Lmiui/net/FirewallManager;->sInstance:Lmiui/net/FirewallManager;

    return-object v0
.end method

.method public static isAccessControlProtected(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 6
    .parameter "context"
    .parameter "packageName"

    .prologue
    const/high16 v5, -0x8000

    const/4 v2, 0x0

    .line 316
    const/4 v1, 0x0

    .line 318
    .local v1, info:Landroid/content/pm/ApplicationInfo;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 322
    if-eqz v1, :cond_0

    iget v3, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v3, v5

    if-ne v3, v5, :cond_0

    const/4 v2, 0x1

    :cond_0
    :goto_0
    return v2

    .line 319
    :catch_0
    move-exception v0

    .line 320
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0
.end method


# virtual methods
.method public addAccessControlPass(Ljava/lang/String;)V
    .locals 1
    .parameter "packageName"

    .prologue
    .line 150
    :try_start_0
    invoke-direct {p0}, Lmiui/net/FirewallManager;->ensureService()V

    .line 151
    iget-object v0, p0, Lmiui/net/FirewallManager;->mService:Lmiui/net/IFirewall;

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lmiui/net/FirewallManager;->mService:Lmiui/net/IFirewall;

    invoke-interface {v0, p1}, Lmiui/net/IFirewall;->addAccessControlPass(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    :cond_0
    :goto_0
    return-void

    .line 154
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public addOneShotFlag(I)V
    .locals 1
    .parameter "flag"

    .prologue
    .line 163
    :try_start_0
    invoke-direct {p0}, Lmiui/net/FirewallManager;->ensureService()V

    .line 164
    iget-object v0, p0, Lmiui/net/FirewallManager;->mService:Lmiui/net/IFirewall;

    if-eqz v0, :cond_0

    if-lez p1, :cond_0

    .line 165
    iget-object v0, p0, Lmiui/net/FirewallManager;->mService:Lmiui/net/IFirewall;

    invoke-interface {v0, p1}, Lmiui/net/IFirewall;->addOneShotFlag(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    :cond_0
    :goto_0
    return-void

    .line 167
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public checkAccessControlPass(Ljava/lang/String;)Z
    .locals 2
    .parameter "packageName"

    .prologue
    .line 213
    const/4 v0, 0x0

    .line 215
    .local v0, retval:Z
    :try_start_0
    invoke-direct {p0}, Lmiui/net/FirewallManager;->ensureService()V

    .line 216
    iget-object v1, p0, Lmiui/net/FirewallManager;->mService:Lmiui/net/IFirewall;

    if-eqz v1, :cond_0

    .line 217
    iget-object v1, p0, Lmiui/net/FirewallManager;->mService:Lmiui/net/IFirewall;

    invoke-interface {v1, p1}, Lmiui/net/IFirewall;->checkAccessControlPass(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 221
    :cond_0
    :goto_0
    return v0

    .line 219
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getOneShotFlag(I)Z
    .locals 1
    .parameter "flag"

    .prologue
    .line 176
    :try_start_0
    invoke-direct {p0}, Lmiui/net/FirewallManager;->ensureService()V

    .line 177
    iget-object v0, p0, Lmiui/net/FirewallManager;->mService:Lmiui/net/IFirewall;

    if-eqz v0, :cond_0

    if-lez p1, :cond_0

    .line 178
    iget-object v0, p0, Lmiui/net/FirewallManager;->mService:Lmiui/net/IFirewall;

    invoke-interface {v0, p1}, Lmiui/net/IFirewall;->getOneShotFlag(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 182
    :goto_0
    return v0

    .line 180
    :catch_0
    move-exception v0

    .line 182
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDataConnected(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "networkType"
    .parameter "key"
    .parameter "ifname"

    .prologue
    .line 120
    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 121
    invoke-direct {p0}, Lmiui/net/FirewallManager;->ensureService()V

    .line 122
    iget-object v0, p0, Lmiui/net/FirewallManager;->mService:Lmiui/net/IFirewall;

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lmiui/net/FirewallManager;->mService:Lmiui/net/IFirewall;

    invoke-interface {v0, p1, p2, p3}, Lmiui/net/IFirewall;->onDataConnected(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    :cond_0
    :goto_0
    return-void

    .line 126
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onDataDisconnected(ILjava/lang/String;)V
    .locals 1
    .parameter "networkType"
    .parameter "key"

    .prologue
    .line 135
    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 136
    invoke-direct {p0}, Lmiui/net/FirewallManager;->ensureService()V

    .line 137
    iget-object v0, p0, Lmiui/net/FirewallManager;->mService:Lmiui/net/IFirewall;

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lmiui/net/FirewallManager;->mService:Lmiui/net/IFirewall;

    invoke-interface {v0, p1, p2}, Lmiui/net/IFirewall;->onDataDisconnected(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    :cond_0
    :goto_0
    return-void

    .line 141
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onStartUsingNetworkFeature(III)V
    .locals 1
    .parameter "uid"
    .parameter "pid"
    .parameter "networkType"

    .prologue
    .line 93
    :try_start_0
    invoke-direct {p0}, Lmiui/net/FirewallManager;->ensureService()V

    .line 94
    iget-object v0, p0, Lmiui/net/FirewallManager;->mService:Lmiui/net/IFirewall;

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lmiui/net/FirewallManager;->mService:Lmiui/net/IFirewall;

    invoke-interface {v0, p1, p2, p3}, Lmiui/net/IFirewall;->onStartUsingNetworkFeature(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    :cond_0
    :goto_0
    return-void

    .line 97
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onStopUsingNetworkFeature(III)V
    .locals 1
    .parameter "uid"
    .parameter "pid"
    .parameter "networkType"

    .prologue
    .line 107
    :try_start_0
    invoke-direct {p0}, Lmiui/net/FirewallManager;->ensureService()V

    .line 108
    iget-object v0, p0, Lmiui/net/FirewallManager;->mService:Lmiui/net/IFirewall;

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lmiui/net/FirewallManager;->mService:Lmiui/net/IFirewall;

    invoke-interface {v0, p1, p2, p3}, Lmiui/net/IFirewall;->onStopUsingNetworkFeature(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    :cond_0
    :goto_0
    return-void

    .line 111
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public removeAccessControlPass(Ljava/lang/String;)V
    .locals 1
    .parameter "packageName"

    .prologue
    .line 201
    :try_start_0
    invoke-direct {p0}, Lmiui/net/FirewallManager;->ensureService()V

    .line 202
    iget-object v0, p0, Lmiui/net/FirewallManager;->mService:Lmiui/net/IFirewall;

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lmiui/net/FirewallManager;->mService:Lmiui/net/IFirewall;

    invoke-interface {v0, p1}, Lmiui/net/IFirewall;->removeAccessControlPass(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 207
    :cond_0
    :goto_0
    return-void

    .line 205
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public removeOneShotFlag(I)V
    .locals 1
    .parameter "flag"

    .prologue
    .line 189
    :try_start_0
    invoke-direct {p0}, Lmiui/net/FirewallManager;->ensureService()V

    .line 190
    iget-object v0, p0, Lmiui/net/FirewallManager;->mService:Lmiui/net/IFirewall;

    if-eqz v0, :cond_0

    if-lez p1, :cond_0

    .line 191
    iget-object v0, p0, Lmiui/net/FirewallManager;->mService:Lmiui/net/IFirewall;

    invoke-interface {v0, p1}, Lmiui/net/IFirewall;->removeOneShotFlag(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 195
    :cond_0
    :goto_0
    return-void

    .line 193
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.class Lcom/android/internal/policy/impl/AwesomeLockScreen;
.super Landroid/widget/FrameLayout;
.source "AwesomeLockScreen.java"

# interfaces
.implements Lcom/android/internal/policy/impl/KeyguardScreen;
.implements Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;
.implements Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimStateCallback;
.implements Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot$UnlockerCallback;
.implements Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerListener;
.implements Lcom/android/internal/policy/impl/QcomCallback;


# static fields
.field private static final COMMAND_PAUSE:Ljava/lang/String; = "pause"

.field private static final COMMAND_RESUME:Ljava/lang/String; = "resume"

.field private static final DBG:Z = false

.field private static final OWNER_INFO_VAR:Ljava/lang/String; = "owner_info"

.field private static final TAG:Ljava/lang/String; = "AwesomeLockScreen"

.field private static mHapticFeedbackUtil:Lmiui/util/HapticFeedbackUtil;

.field private static sStartTime:J

.field private static sTotalWakenTime:J


# instance fields
.field private isPaused:Z

.field private mAudioManager:Landroid/media/AudioManager;

.field private final mCallback:Lcom/miui/internal/policy/impl/KeyguardScreenCallback;

.field private mConfig:Lmiui/app/screenelement/util/LockscreenConfigFile;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private final mLockscreenContext:Lmiui/app/screenelement/ScreenContext;

.field private mLockscreenView:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView;

.field private mResourceMgr:Lmiui/app/screenelement/LifecycleResourceManager;

.field private mRoot:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;

.field private mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

.field private mWakeStartTime:J


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/miui/internal/policy/impl/KeyguardScreenCallback;)V
    .locals 13
    .parameter "context"
    .parameter "configuration"
    .parameter "lockPatternUtils"
    .parameter "updateMonitor"
    .parameter "callback"

    .prologue
    .line 95
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 57
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/AwesomeLockScreen;->isPaused:Z

    .line 96
    move-object/from16 v0, p3

    iput-object v0, p0, Lcom/android/internal/policy/impl/AwesomeLockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 97
    move-object/from16 v0, p4

    iput-object v0, p0, Lcom/android/internal/policy/impl/AwesomeLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    .line 98
    move-object/from16 v0, p5

    iput-object v0, p0, Lcom/android/internal/policy/impl/AwesomeLockScreen;->mCallback:Lcom/miui/internal/policy/impl/KeyguardScreenCallback;

    .line 99
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/AwesomeLockScreen;->setFocusable(Z)V

    .line 100
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/AwesomeLockScreen;->setFocusableInTouchMode(Z)V

    .line 103
    sget-object v1, Lcom/android/internal/policy/impl/AwesomeLockScreen;->mHapticFeedbackUtil:Lmiui/util/HapticFeedbackUtil;

    if-nez v1, :cond_0

    .line 104
    new-instance v1, Lmiui/util/HapticFeedbackUtil;

    const/4 v2, 0x1

    invoke-direct {v1, p1, v2}, Lmiui/util/HapticFeedbackUtil;-><init>(Landroid/content/Context;Z)V

    sput-object v1, Lcom/android/internal/policy/impl/AwesomeLockScreen;->mHapticFeedbackUtil:Lmiui/util/HapticFeedbackUtil;

    .line 107
    :cond_0
    const-string v1, "audio"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/android/internal/policy/impl/AwesomeLockScreen;->mAudioManager:Landroid/media/AudioManager;

    .line 109
    move-object/from16 v0, p4

    invoke-virtual {v0, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->registerInfoCallback(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;)V

    .line 110
    move-object/from16 v0, p4

    invoke-virtual {v0, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->registerSimStateCallback(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimStateCallback;)V

    .line 113
    const v7, 0x36ee80

    .line 115
    .local v7, CHECK_TIME:I
    const v8, 0x36ee80

    .line 116
    .local v8, INACTIVE_TIME:I
    new-instance v1, Lmiui/app/screenelement/LifecycleResourceManager;

    new-instance v2, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenResourceLoader;

    invoke-direct {v2}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenResourceLoader;-><init>()V

    iget-object v3, p0, Lcom/android/internal/policy/impl/AwesomeLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget-object v3, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenResourceLoader;->setLocal(Ljava/util/Locale;)Lmiui/app/screenelement/ResourceLoader;

    move-result-object v2

    const-wide/32 v3, 0x36ee80

    const-wide/32 v5, 0x36ee80

    invoke-direct/range {v1 .. v6}, Lmiui/app/screenelement/LifecycleResourceManager;-><init>(Lmiui/app/screenelement/ResourceLoader;JJ)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/AwesomeLockScreen;->mResourceMgr:Lmiui/app/screenelement/LifecycleResourceManager;

    .line 118
    new-instance v1, Lmiui/app/screenelement/ScreenContext;

    iget-object v2, p0, Lcom/android/internal/policy/impl/AwesomeLockScreen;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/internal/policy/impl/AwesomeLockScreen;->mResourceMgr:Lmiui/app/screenelement/LifecycleResourceManager;

    new-instance v4, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenElementFactory;

    invoke-direct {v4, p0, p0}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenElementFactory;-><init>(Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot$UnlockerCallback;Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerListener;)V

    invoke-direct {v1, v2, v3, v4}, Lmiui/app/screenelement/ScreenContext;-><init>(Landroid/content/Context;Lmiui/app/screenelement/ResourceManager;Lmiui/app/screenelement/elements/ScreenElementFactory;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/AwesomeLockScreen;->mLockscreenContext:Lmiui/app/screenelement/ScreenContext;

    .line 120
    invoke-direct {p0}, Lcom/android/internal/policy/impl/AwesomeLockScreen;->loadConfig()V

    .line 123
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/AwesomeLockScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    .line 124
    .local v12, res:Landroid/content/ContentResolver;
    const-string v1, "lock_screen_owner_info_enabled"

    const/4 v2, 0x1

    invoke-static {v12, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_2

    const/4 v9, 0x1

    .line 126
    .local v9, ownerInfoEnabled:Z
    :goto_0
    if-eqz v9, :cond_3

    const-string v1, "lock_screen_owner_info"

    invoke-static {v12, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 128
    .local v10, ownerString:Ljava/lang/String;
    :goto_1
    const-string v1, "owner_info"

    iget-object v2, p0, Lcom/android/internal/policy/impl/AwesomeLockScreen;->mLockscreenContext:Lmiui/app/screenelement/ScreenContext;

    iget-object v2, v2, Lmiui/app/screenelement/ScreenContext;->mVariables:Lmiui/app/screenelement/data/Variables;

    invoke-static {v1, v2, v10}, Lmiui/app/screenelement/util/Utils;->putVariableString(Ljava/lang/String;Lmiui/app/screenelement/data/Variables;Ljava/lang/String;)V

    .line 130
    new-instance v1, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;

    iget-object v2, p0, Lcom/android/internal/policy/impl/AwesomeLockScreen;->mLockscreenContext:Lmiui/app/screenelement/ScreenContext;

    invoke-direct {v1, v2, p0}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;-><init>(Lmiui/app/screenelement/ScreenContext;Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot$UnlockerCallback;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/AwesomeLockScreen;->mRoot:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;

    .line 131
    iget-object v1, p0, Lcom/android/internal/policy/impl/AwesomeLockScreen;->mRoot:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;

    invoke-virtual {v1}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->load()Z

    .line 132
    new-instance v1, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/AwesomeLockScreen;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/internal/policy/impl/AwesomeLockScreen;->mRoot:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;

    invoke-direct {v1, v2, v3}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView;-><init>(Landroid/content/Context;Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/AwesomeLockScreen;->mLockscreenView:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView;

    .line 133
    new-instance v11, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x1

    invoke-direct {v11, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 135
    .local v11, params:Landroid/widget/FrameLayout$LayoutParams;
    iget-object v1, p0, Lcom/android/internal/policy/impl/AwesomeLockScreen;->mLockscreenView:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView;

    invoke-virtual {p0, v1, v11}, Lcom/android/internal/policy/impl/AwesomeLockScreen;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 137
    iget-object v1, p0, Lcom/android/internal/policy/impl/AwesomeLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->shouldShowBatteryInfo()Z

    move-result v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/AwesomeLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isDevicePluggedIn()Z

    move-result v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/AwesomeLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getBatteryLevel()I

    move-result v3

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/policy/impl/AwesomeLockScreen;->onRefreshBatteryInfo(ZZI)V

    .line 141
    sget-wide v1, Lcom/android/internal/policy/impl/AwesomeLockScreen;->sStartTime:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    .line 142
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    sput-wide v1, Lcom/android/internal/policy/impl/AwesomeLockScreen;->sStartTime:J

    .line 144
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    iput-wide v1, p0, Lcom/android/internal/policy/impl/AwesomeLockScreen;->mWakeStartTime:J

    .line 146
    return-void

    .line 124
    .end local v9           #ownerInfoEnabled:Z
    .end local v10           #ownerString:Ljava/lang/String;
    .end local v11           #params:Landroid/widget/FrameLayout$LayoutParams;
    :cond_2
    const/4 v9, 0x0

    goto :goto_0

    .line 126
    .restart local v9       #ownerInfoEnabled:Z
    :cond_3
    const/4 v10, 0x0

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/AwesomeLockScreen;)Lcom/miui/internal/policy/impl/KeyguardScreenCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/internal/policy/impl/AwesomeLockScreen;->mCallback:Lcom/miui/internal/policy/impl/KeyguardScreenCallback;

    return-object v0
.end method

.method private loadConfig()V
    .locals 9

    .prologue
    .line 149
    new-instance v5, Lmiui/app/screenelement/util/LockscreenConfigFile;

    invoke-direct {v5}, Lmiui/app/screenelement/util/LockscreenConfigFile;-><init>()V

    iput-object v5, p0, Lcom/android/internal/policy/impl/AwesomeLockScreen;->mConfig:Lmiui/app/screenelement/util/LockscreenConfigFile;

    .line 150
    iget-object v5, p0, Lcom/android/internal/policy/impl/AwesomeLockScreen;->mConfig:Lmiui/app/screenelement/util/LockscreenConfigFile;

    sget-object v6, Lmiui/content/res/ThemeResources;->sAppliedLockstyleConfigPath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lmiui/app/screenelement/util/LockscreenConfigFile;->load(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 151
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/internal/policy/impl/AwesomeLockScreen;->mConfig:Lmiui/app/screenelement/util/LockscreenConfigFile;

    .line 170
    :cond_0
    return-void

    .line 154
    :cond_1
    iget-object v5, p0, Lcom/android/internal/policy/impl/AwesomeLockScreen;->mConfig:Lmiui/app/screenelement/util/LockscreenConfigFile;

    invoke-virtual {v5}, Lmiui/app/screenelement/util/LockscreenConfigFile;->getVariables()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmiui/app/screenelement/util/LockscreenConfigFile$Variable;

    .line 155
    .local v4, v:Lmiui/app/screenelement/util/LockscreenConfigFile$Variable;
    iget-object v5, v4, Lmiui/app/screenelement/util/LockscreenConfigFile$Variable;->type:Ljava/lang/String;

    const-string v6, "string"

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 156
    iget-object v5, v4, Lmiui/app/screenelement/util/LockscreenConfigFile$Variable;->name:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/internal/policy/impl/AwesomeLockScreen;->mLockscreenContext:Lmiui/app/screenelement/ScreenContext;

    iget-object v6, v6, Lmiui/app/screenelement/ScreenContext;->mVariables:Lmiui/app/screenelement/data/Variables;

    iget-object v7, v4, Lmiui/app/screenelement/util/LockscreenConfigFile$Variable;->value:Ljava/lang/String;

    invoke-static {v5, v6, v7}, Lmiui/app/screenelement/util/Utils;->putVariableString(Ljava/lang/String;Lmiui/app/screenelement/data/Variables;Ljava/lang/String;)V

    goto :goto_0

    .line 157
    :cond_3
    iget-object v5, v4, Lmiui/app/screenelement/util/LockscreenConfigFile$Variable;->type:Ljava/lang/String;

    const-string v6, "number"

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 159
    :try_start_0
    iget-object v5, v4, Lmiui/app/screenelement/util/LockscreenConfigFile$Variable;->value:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    .line 160
    .local v0, d:D
    iget-object v5, v4, Lmiui/app/screenelement/util/LockscreenConfigFile$Variable;->name:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/internal/policy/impl/AwesomeLockScreen;->mLockscreenContext:Lmiui/app/screenelement/ScreenContext;

    iget-object v6, v6, Lmiui/app/screenelement/ScreenContext;->mVariables:Lmiui/app/screenelement/data/Variables;

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lmiui/app/screenelement/util/Utils;->putVariableNumber(Ljava/lang/String;Lmiui/app/screenelement/data/Variables;Ljava/lang/Double;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 161
    .end local v0           #d:D
    :catch_0
    move-exception v5

    goto :goto_0

    .line 165
    .end local v4           #v:Lmiui/app/screenelement/util/LockscreenConfigFile$Variable;
    :cond_4
    iget-object v5, p0, Lcom/android/internal/policy/impl/AwesomeLockScreen;->mConfig:Lmiui/app/screenelement/util/LockscreenConfigFile;

    invoke-virtual {v5}, Lmiui/app/screenelement/util/LockscreenConfigFile;->getTasks()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiui/app/screenelement/util/Task;

    .line 166
    .local v3, t:Lmiui/app/screenelement/util/Task;
    iget-object v5, v3, Lmiui/app/screenelement/util/Task;->id:Ljava/lang/String;

    const-string v6, "name"

    iget-object v7, p0, Lcom/android/internal/policy/impl/AwesomeLockScreen;->mLockscreenContext:Lmiui/app/screenelement/ScreenContext;

    iget-object v7, v7, Lmiui/app/screenelement/ScreenContext;->mVariables:Lmiui/app/screenelement/data/Variables;

    iget-object v8, v3, Lmiui/app/screenelement/util/Task;->name:Ljava/lang/String;

    invoke-static {v5, v6, v7, v8}, Lmiui/app/screenelement/util/Utils;->putVariableString(Ljava/lang/String;Ljava/lang/String;Lmiui/app/screenelement/data/Variables;Ljava/lang/String;)V

    .line 167
    iget-object v5, v3, Lmiui/app/screenelement/util/Task;->id:Ljava/lang/String;

    const-string v6, "package"

    iget-object v7, p0, Lcom/android/internal/policy/impl/AwesomeLockScreen;->mLockscreenContext:Lmiui/app/screenelement/ScreenContext;

    iget-object v7, v7, Lmiui/app/screenelement/ScreenContext;->mVariables:Lmiui/app/screenelement/data/Variables;

    iget-object v8, v3, Lmiui/app/screenelement/util/Task;->packageName:Ljava/lang/String;

    invoke-static {v5, v6, v7, v8}, Lmiui/app/screenelement/util/Utils;->putVariableString(Ljava/lang/String;Ljava/lang/String;Lmiui/app/screenelement/data/Variables;Ljava/lang/String;)V

    .line 168
    iget-object v5, v3, Lmiui/app/screenelement/util/Task;->id:Ljava/lang/String;

    const-string v6, "class"

    iget-object v7, p0, Lcom/android/internal/policy/impl/AwesomeLockScreen;->mLockscreenContext:Lmiui/app/screenelement/ScreenContext;

    iget-object v7, v7, Lmiui/app/screenelement/ScreenContext;->mVariables:Lmiui/app/screenelement/data/Variables;

    iget-object v8, v3, Lmiui/app/screenelement/util/Task;->className:Ljava/lang/String;

    invoke-static {v5, v6, v7, v8}, Lmiui/app/screenelement/util/Utils;->putVariableString(Ljava/lang/String;Ljava/lang/String;Lmiui/app/screenelement/data/Variables;Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public cleanUp()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 232
    iget-object v0, p0, Lcom/android/internal/policy/impl/AwesomeLockScreen;->mLockscreenView:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView;

    invoke-virtual {v0}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView;->cleanUp()V

    .line 233
    iget-object v0, p0, Lcom/android/internal/policy/impl/AwesomeLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->removeCallback(Ljava/lang/Object;)V

    .line 234
    iput-object v1, p0, Lcom/android/internal/policy/impl/AwesomeLockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 235
    iput-object v1, p0, Lcom/android/internal/policy/impl/AwesomeLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    .line 236
    return-void
.end method

.method public endUnlockMoving(Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;)V
    .locals 1
    .parameter "ele"

    .prologue
    .line 307
    iget-object v0, p0, Lcom/android/internal/policy/impl/AwesomeLockScreen;->mRoot:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;

    if-eqz v0, :cond_0

    .line 308
    iget-object v0, p0, Lcom/android/internal/policy/impl/AwesomeLockScreen;->mRoot:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;

    invoke-virtual {v0, p1}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->endUnlockMoving(Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;)V

    .line 310
    :cond_0
    return-void
.end method

.method public findTask(Ljava/lang/String;)Lmiui/app/screenelement/util/Task;
    .locals 1
    .parameter "id"

    .prologue
    .line 297
    iget-object v0, p0, Lcom/android/internal/policy/impl/AwesomeLockScreen;->mConfig:Lmiui/app/screenelement/util/LockscreenConfigFile;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/AwesomeLockScreen;->mConfig:Lmiui/app/screenelement/util/LockscreenConfigFile;

    invoke-virtual {v0, p1}, Lmiui/app/screenelement/util/LockscreenConfigFile;->getTask(Ljava/lang/String;)Lmiui/app/screenelement/util/Task;

    move-result-object v0

    goto :goto_0
.end method

.method public haptic(I)V
    .locals 3
    .parameter "effectId"

    .prologue
    .line 291
    sget-object v0, Lcom/android/internal/policy/impl/AwesomeLockScreen;->mHapticFeedbackUtil:Lmiui/util/HapticFeedbackUtil;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lmiui/util/HapticFeedbackUtil;->performHapticFeedback(IZ)Z

    .line 293
    return-void
.end method

.method public isDisplayDesktop()Z
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/android/internal/policy/impl/AwesomeLockScreen;->mRoot:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;

    invoke-virtual {v0}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->isDisplayDesktop()Z

    move-result v0

    return v0
.end method

.method public isSecure()Z
    .locals 1

    .prologue
    .line 341
    iget-object v0, p0, Lcom/android/internal/policy/impl/AwesomeLockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v0

    return v0
.end method

.method public isSoundEnable()Z
    .locals 2

    .prologue
    .line 302
    iget-object v0, p0, Lcom/android/internal/policy/impl/AwesomeLockScreen;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public needsInput()Z
    .locals 1

    .prologue
    .line 205
    const/4 v0, 0x0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .prologue
    .line 189
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 190
    return-void
.end method

.method public onClockVisibilityChanged()V
    .locals 0

    .prologue
    .line 325
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 200
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 201
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 194
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 195
    return-void
.end method

.method public onDeviceProvisioned()V
    .locals 0

    .prologue
    .line 329
    return-void
.end method

.method public onPause()V
    .locals 6

    .prologue
    .line 210
    iget-object v2, p0, Lcom/android/internal/policy/impl/AwesomeLockScreen;->mLockscreenView:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView;

    invoke-virtual {v2}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView;->onPause()V

    .line 211
    iget-object v2, p0, Lcom/android/internal/policy/impl/AwesomeLockScreen;->mRoot:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;

    const-string v3, "pause"

    invoke-virtual {v2, v3}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->onCommand(Ljava/lang/String;)V

    .line 212
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/AwesomeLockScreen;->isPaused:Z

    .line 214
    iget-object v2, p0, Lcom/android/internal/policy/impl/AwesomeLockScreen;->mResourceMgr:Lmiui/app/screenelement/LifecycleResourceManager;

    invoke-virtual {v2}, Lmiui/app/screenelement/LifecycleResourceManager;->checkCache()V

    .line 217
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    iget-wide v4, p0, Lcom/android/internal/policy/impl/AwesomeLockScreen;->mWakeStartTime:J

    sub-long v0, v2, v4

    .line 218
    .local v0, wakenTime:J
    sget-wide v2, Lcom/android/internal/policy/impl/AwesomeLockScreen;->sTotalWakenTime:J

    add-long/2addr v2, v0

    sput-wide v2, Lcom/android/internal/policy/impl/AwesomeLockScreen;->sTotalWakenTime:J

    .line 219
    return-void
.end method

.method public onPhoneStateChanged(I)V
    .locals 0
    .parameter "phoneState"

    .prologue
    .line 321
    return-void
.end method

.method public onPhoneStateChanged(Ljava/lang/String;)V
    .locals 0
    .parameter "newState"

    .prologue
    .line 244
    return-void
.end method

.method public onRefreshBatteryInfo(ZZI)V
    .locals 1
    .parameter "showBatteryInfo"
    .parameter "pluggedIn"
    .parameter "batteryLevel"

    .prologue
    .line 248
    iget-object v0, p0, Lcom/android/internal/policy/impl/AwesomeLockScreen;->mRoot:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;

    if-eqz v0, :cond_0

    .line 249
    iget-object v0, p0, Lcom/android/internal/policy/impl/AwesomeLockScreen;->mRoot:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;

    invoke-virtual {v0, p1, p2, p3}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->onRefreshBatteryInfo(ZZI)V

    .line 251
    :cond_0
    return-void
.end method

.method public onRefreshCarrierInfo(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "plmn"
    .parameter "spn"

    .prologue
    .line 181
    return-void
.end method

.method public onRefreshCarrierInfo(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V
    .locals 0
    .parameter "plmn"
    .parameter "spn"
    .parameter "subscription"

    .prologue
    .line 333
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 223
    iget-object v0, p0, Lcom/android/internal/policy/impl/AwesomeLockScreen;->mLockscreenView:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView;

    invoke-virtual {v0}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView;->onResume()V

    .line 224
    iget-object v0, p0, Lcom/android/internal/policy/impl/AwesomeLockScreen;->mRoot:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;

    const-string v1, "resume"

    invoke-virtual {v0, v1}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->onCommand(Ljava/lang/String;)V

    .line 225
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/AwesomeLockScreen;->isPaused:Z

    .line 227
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/policy/impl/AwesomeLockScreen;->mWakeStartTime:J

    .line 228
    return-void
.end method

.method public onRingerModeChanged(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 241
    return-void
.end method

.method public onSimStateChanged(Lcom/android/internal/telephony/IccCard$State;)V
    .locals 0
    .parameter "simState"

    .prologue
    .line 255
    return-void
.end method

.method public onSimStateChanged(Lcom/android/internal/telephony/IccCard$State;I)V
    .locals 0
    .parameter "simState"
    .parameter "subscription"

    .prologue
    .line 337
    return-void
.end method

.method public onTimeChanged()V
    .locals 0

    .prologue
    .line 175
    return-void
.end method

.method public pokeWakelock()V
    .locals 1

    .prologue
    .line 281
    iget-object v0, p0, Lcom/android/internal/policy/impl/AwesomeLockScreen;->mCallback:Lcom/miui/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/miui/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    .line 282
    return-void
.end method

.method public pokeWakelock(I)V
    .locals 1
    .parameter "millis"

    .prologue
    .line 286
    iget-object v0, p0, Lcom/android/internal/policy/impl/AwesomeLockScreen;->mCallback:Lcom/miui/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0, p1}, Lcom/miui/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock(I)V

    .line 287
    return-void
.end method

.method public startUnlockMoving(Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;)V
    .locals 1
    .parameter "ele"

    .prologue
    .line 314
    iget-object v0, p0, Lcom/android/internal/policy/impl/AwesomeLockScreen;->mRoot:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;

    if-eqz v0, :cond_0

    .line 315
    iget-object v0, p0, Lcom/android/internal/policy/impl/AwesomeLockScreen;->mRoot:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;

    invoke-virtual {v0, p1}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->startUnlockMoving(Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;)V

    .line 317
    :cond_0
    return-void
.end method

.method public unlocked(Landroid/content/Intent;)V
    .locals 8
    .parameter "intent"

    .prologue
    .line 259
    iget-object v0, p0, Lcom/android/internal/policy/impl/AwesomeLockScreen;->mCallback:Lcom/miui/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0, p1}, Lcom/miui/internal/policy/impl/KeyguardScreenCallback;->setPendingIntent(Landroid/content/Intent;)V

    .line 262
    new-instance v0, Lcom/android/internal/policy/impl/AwesomeLockScreen$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/AwesomeLockScreen$1;-><init>(Lcom/android/internal/policy/impl/AwesomeLockScreen;)V

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/AwesomeLockScreen;->post(Ljava/lang/Runnable;)Z

    .line 275
    const-string v0, "AwesomeLockScreen"

    const-string v1, "lockscreen awake time: [%d sec] in time range: [%d sec]"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget-wide v4, Lcom/android/internal/policy/impl/AwesomeLockScreen;->sTotalWakenTime:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    sget-wide v6, Lcom/android/internal/policy/impl/AwesomeLockScreen;->sStartTime:J

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    return-void
.end method

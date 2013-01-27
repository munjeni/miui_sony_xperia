.class public Lmiui/util/HapticFeedbackUtil;
.super Ljava/lang/Object;
.source "HapticFeedbackUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/util/HapticFeedbackUtil$SettingsObserver;
    }
.end annotation


# static fields
.field private static final KEYBOARD_TAP_PATTERN_PROPERTY:[Ljava/lang/String; = null

.field private static final KEY_VIBRATE_EX_ENABLED:Ljava/lang/String; = "ro.haptic.vibrate_ex.enabled"

.field private static final LONG_PRESS_PATTERN_PROPERTY:[Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "HapticFeedbackUtil"

.field private static final VIRTUAL_DOWN_PATTERN_PROPERTY:[Ljava/lang/String;

.field private static final VIRTUAL_UP_PATTERN_PROPERTY:[Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mKeyboardTapVibePattern:[J

.field private mLongPressVibePattern:[J

.field private final mVibrateEx:Z

.field private mVibrator:Landroid/os/Vibrator;

.field private mVirtualKeyUpVibePattern:[J

.field private mVirtualKeyVibePattern:[J


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 25
    new-array v0, v5, [Ljava/lang/String;

    const-string/jumbo v1, "persist.sys.haptic.long.weak"

    aput-object v1, v0, v2

    const-string/jumbo v1, "persist.sys.haptic.long.normal"

    aput-object v1, v0, v3

    const-string/jumbo v1, "persist.sys.haptic.long.strong"

    aput-object v1, v0, v4

    sput-object v0, Lmiui/util/HapticFeedbackUtil;->LONG_PRESS_PATTERN_PROPERTY:[Ljava/lang/String;

    .line 31
    new-array v0, v5, [Ljava/lang/String;

    const-string/jumbo v1, "persist.sys.haptic.tap.weak"

    aput-object v1, v0, v2

    const-string/jumbo v1, "persist.sys.haptic.tap.normal"

    aput-object v1, v0, v3

    const-string/jumbo v1, "persist.sys.haptic.tap.strong"

    aput-object v1, v0, v4

    sput-object v0, Lmiui/util/HapticFeedbackUtil;->KEYBOARD_TAP_PATTERN_PROPERTY:[Ljava/lang/String;

    .line 37
    new-array v0, v5, [Ljava/lang/String;

    const-string/jumbo v1, "persist.sys.haptic.down.weak"

    aput-object v1, v0, v2

    const-string/jumbo v1, "persist.sys.haptic.down.normal"

    aput-object v1, v0, v3

    const-string/jumbo v1, "persist.sys.haptic.down.strong"

    aput-object v1, v0, v4

    sput-object v0, Lmiui/util/HapticFeedbackUtil;->VIRTUAL_DOWN_PATTERN_PROPERTY:[Ljava/lang/String;

    .line 43
    new-array v0, v5, [Ljava/lang/String;

    const-string/jumbo v1, "persist.sys.haptic.up.weak"

    aput-object v1, v0, v2

    const-string/jumbo v1, "persist.sys.haptic.up.normal"

    aput-object v1, v0, v3

    const-string/jumbo v1, "persist.sys.haptic.up.strong"

    aput-object v1, v0, v4

    sput-object v0, Lmiui/util/HapticFeedbackUtil;->VIRTUAL_UP_PATTERN_PROPERTY:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 3
    .parameter "c"
    .parameter "onceOnly"

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Lmiui/util/HapticFeedbackUtil;->mContext:Landroid/content/Context;

    .line 69
    const-string/jumbo v1, "ro.haptic.vibrate_ex.enabled"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lmiui/util/HapticFeedbackUtil;->mVibrateEx:Z

    .line 70
    new-instance v1, Landroid/os/Vibrator;

    invoke-direct {v1}, Landroid/os/Vibrator;-><init>()V

    iput-object v1, p0, Lmiui/util/HapticFeedbackUtil;->mVibrator:Landroid/os/Vibrator;

    .line 71
    if-eqz p2, :cond_0

    .line 72
    invoke-virtual {p0}, Lmiui/util/HapticFeedbackUtil;->updateSettings()V

    .line 77
    :goto_0
    return-void

    .line 74
    :cond_0
    new-instance v0, Lmiui/util/HapticFeedbackUtil$SettingsObserver;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lmiui/util/HapticFeedbackUtil$SettingsObserver;-><init>(Lmiui/util/HapticFeedbackUtil;Landroid/os/Handler;)V

    .line 75
    .local v0, settingsObserver:Lmiui/util/HapticFeedbackUtil$SettingsObserver;
    invoke-virtual {v0}, Lmiui/util/HapticFeedbackUtil$SettingsObserver;->observe()V

    goto :goto_0
.end method

.method static synthetic access$000(Lmiui/util/HapticFeedbackUtil;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lmiui/util/HapticFeedbackUtil;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private static getLongIntArray(Landroid/content/res/Resources;I)[J
    .locals 5
    .parameter "r"
    .parameter "resid"

    .prologue
    .line 177
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    .line 178
    .local v0, ar:[I
    if-nez v0, :cond_1

    .line 179
    const/4 v2, 0x0

    .line 185
    :cond_0
    return-object v2

    .line 181
    :cond_1
    array-length v3, v0

    new-array v2, v3, [J

    .line 182
    .local v2, out:[J
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_0

    .line 183
    aget v3, v0, v1

    int-to-long v3, v3

    aput-wide v3, v2, v1

    .line 182
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private loadHaptic(Ljava/lang/String;I)[J
    .locals 2
    .parameter "key"
    .parameter "defaultRes"

    .prologue
    .line 167
    invoke-static {p1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 169
    .local v0, hapString:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 170
    iget-object v1, p0, Lmiui/util/HapticFeedbackUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, p2}, Lmiui/util/HapticFeedbackUtil;->getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object v1

    .line 173
    :goto_0
    return-object v1

    :cond_0
    invoke-direct {p0, v0}, Lmiui/util/HapticFeedbackUtil;->stringToLongArray(Ljava/lang/String;)[J

    move-result-object v1

    goto :goto_0
.end method

.method private stringToLongArray(Ljava/lang/String;)[J
    .locals 7
    .parameter "inpString"

    .prologue
    .line 189
    if-nez p1, :cond_1

    .line 190
    const/4 v4, 0x1

    new-array v2, v4, [J

    .line 191
    .local v2, returnByte:[J
    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    aput-wide v5, v2, v4

    .line 201
    :cond_0
    return-object v2

    .line 194
    .end local v2           #returnByte:[J
    :cond_1
    const-string v4, ","

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 195
    .local v3, splitStr:[Ljava/lang/String;
    array-length v1, v3

    .line 196
    .local v1, los:I
    new-array v2, v1, [J

    .line 198
    .restart local v2       #returnByte:[J
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 199
    aget-object v4, v3, v0

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    aput-wide v4, v2, v0

    .line 198
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public isSupportedEffect(I)Z
    .locals 1
    .parameter "effectId"

    .prologue
    .line 80
    const/4 v0, 0x3

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public performHapticFeedback(IZ)Z
    .locals 9
    .parameter "effectId"
    .parameter "always"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 120
    iget-object v6, p0, Lmiui/util/HapticFeedbackUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "haptic_feedback_enabled"

    invoke-static {v6, v7, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-nez v6, :cond_0

    move v1, v5

    .line 122
    .local v1, hapticsDisabled:Z
    :goto_0
    if-nez p2, :cond_1

    if-eqz v1, :cond_1

    .line 163
    :goto_1
    return v4

    .end local v1           #hapticsDisabled:Z
    :cond_0
    move v1, v4

    .line 120
    goto :goto_0

    .line 126
    .restart local v1       #hapticsDisabled:Z
    :cond_1
    const/4 v3, 0x0

    .line 127
    .local v3, pattern:[J
    packed-switch p1, :pswitch_data_0

    goto :goto_1

    .line 129
    :pswitch_0
    iget-object v3, p0, Lmiui/util/HapticFeedbackUtil;->mLongPressVibePattern:[J

    .line 144
    :goto_2
    if-eqz v3, :cond_2

    array-length v6, v3

    if-nez v6, :cond_3

    .line 145
    :cond_2
    const-string v5, "HapticFeedbackUtil"

    const-string/jumbo v6, "vibrate: null or empty pattern"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 132
    :pswitch_1
    iget-object v3, p0, Lmiui/util/HapticFeedbackUtil;->mVirtualKeyVibePattern:[J

    .line 133
    goto :goto_2

    .line 135
    :pswitch_2
    iget-object v3, p0, Lmiui/util/HapticFeedbackUtil;->mKeyboardTapVibePattern:[J

    .line 136
    goto :goto_2

    .line 138
    :pswitch_3
    iget-object v3, p0, Lmiui/util/HapticFeedbackUtil;->mVirtualKeyUpVibePattern:[J

    .line 139
    goto :goto_2

    .line 149
    :cond_3
    iget-boolean v6, p0, Lmiui/util/HapticFeedbackUtil;->mVibrateEx:Z

    if-eqz v6, :cond_5

    .line 150
    array-length v4, v3

    new-array v0, v4, [B

    .line 151
    .local v0, bytes:[B
    const/4 v2, 0x0

    .local v2, i:I
    :goto_3
    array-length v4, v3

    if-ge v2, v4, :cond_4

    .line 152
    aget-wide v6, v3, v2

    long-to-int v4, v6

    int-to-byte v4, v4

    aput-byte v4, v0, v2

    .line 151
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 154
    :cond_4
    iget-object v4, p0, Lmiui/util/HapticFeedbackUtil;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v4, v0}, Landroid/os/Vibrator;->vibrateEx([B)V

    .end local v0           #bytes:[B
    .end local v2           #i:I
    :goto_4
    move v4, v5

    .line 163
    goto :goto_1

    .line 155
    :cond_5
    array-length v6, v3

    if-ne v6, v5, :cond_6

    .line 157
    iget-object v6, p0, Lmiui/util/HapticFeedbackUtil;->mVibrator:Landroid/os/Vibrator;

    aget-wide v7, v3, v4

    invoke-virtual {v6, v7, v8}, Landroid/os/Vibrator;->vibrate(J)V

    goto :goto_4

    .line 160
    :cond_6
    iget-object v4, p0, Lmiui/util/HapticFeedbackUtil;->mVibrator:Landroid/os/Vibrator;

    const/4 v6, -0x1

    invoke-virtual {v4, v3, v6}, Landroid/os/Vibrator;->vibrate([JI)V

    goto :goto_4

    .line 127
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public updateSettings()V
    .locals 4

    .prologue
    .line 102
    iget-object v1, p0, Lmiui/util/HapticFeedbackUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "haptic_feedback_level"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 106
    .local v0, level:I
    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 109
    sget-object v1, Lmiui/util/HapticFeedbackUtil;->LONG_PRESS_PATTERN_PROPERTY:[Ljava/lang/String;

    aget-object v1, v1, v0

    iget-object v2, p0, Lmiui/util/HapticFeedbackUtil;->mContext:Landroid/content/Context;

    const v3, 0x6060008

    invoke-static {v2, v3}, Lmiui/util/ResourceMapper;->resolveReference(Landroid/content/Context;I)I

    move-result v2

    invoke-direct {p0, v1, v2}, Lmiui/util/HapticFeedbackUtil;->loadHaptic(Ljava/lang/String;I)[J

    move-result-object v1

    iput-object v1, p0, Lmiui/util/HapticFeedbackUtil;->mLongPressVibePattern:[J

    .line 111
    sget-object v1, Lmiui/util/HapticFeedbackUtil;->VIRTUAL_DOWN_PATTERN_PROPERTY:[Ljava/lang/String;

    aget-object v1, v1, v0

    iget-object v2, p0, Lmiui/util/HapticFeedbackUtil;->mContext:Landroid/content/Context;

    const v3, 0x6060004

    invoke-static {v2, v3}, Lmiui/util/ResourceMapper;->resolveReference(Landroid/content/Context;I)I

    move-result v2

    invoke-direct {p0, v1, v2}, Lmiui/util/HapticFeedbackUtil;->loadHaptic(Ljava/lang/String;I)[J

    move-result-object v1

    iput-object v1, p0, Lmiui/util/HapticFeedbackUtil;->mVirtualKeyVibePattern:[J

    .line 113
    sget-object v1, Lmiui/util/HapticFeedbackUtil;->KEYBOARD_TAP_PATTERN_PROPERTY:[Ljava/lang/String;

    aget-object v1, v1, v0

    iget-object v2, p0, Lmiui/util/HapticFeedbackUtil;->mContext:Landroid/content/Context;

    const v3, 0x6060009

    invoke-static {v2, v3}, Lmiui/util/ResourceMapper;->resolveReference(Landroid/content/Context;I)I

    move-result v2

    invoke-direct {p0, v1, v2}, Lmiui/util/HapticFeedbackUtil;->loadHaptic(Ljava/lang/String;I)[J

    move-result-object v1

    iput-object v1, p0, Lmiui/util/HapticFeedbackUtil;->mKeyboardTapVibePattern:[J

    .line 115
    sget-object v1, Lmiui/util/HapticFeedbackUtil;->VIRTUAL_UP_PATTERN_PROPERTY:[Ljava/lang/String;

    aget-object v1, v1, v0

    const v2, 0x6060002

    invoke-direct {p0, v1, v2}, Lmiui/util/HapticFeedbackUtil;->loadHaptic(Ljava/lang/String;I)[J

    move-result-object v1

    iput-object v1, p0, Lmiui/util/HapticFeedbackUtil;->mVirtualKeyUpVibePattern:[J

    .line 117
    return-void
.end method

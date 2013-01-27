.class public Lmiui/os/Build;
.super Landroid/os/Build;
.source "Build.java"


# static fields
#the value of this static final field might be set in the static constructor
.field public static final IS_DEFY:Z = false

#the value of this static final field might be set in the static constructor
.field public static final IS_DESIRE:Z = false

#the value of this static final field might be set in the static constructor
.field public static final IS_DEVELOPMENT_VERSION:Z = false

#the value of this static final field might be set in the static constructor
.field public static final IS_FAST_GPU_DEVICE:Z = false

.field public static final IS_FINAL_USER_BUILD:Z = false

#the value of this static final field might be set in the static constructor
.field public static final IS_GALAXYS2:Z = false

#the value of this static final field might be set in the static constructor
.field public static final IS_GALAXYS_NEXUS:Z = false

#the value of this static final field might be set in the static constructor
.field public static final IS_HK_BUILD:Z = false

#the value of this static final field might be set in the static constructor
.field public static final IS_HTC_HD2:Z = false

#the value of this static final field might be set in the static constructor
.field public static final IS_I9000:Z = false

#the value of this static final field might be set in the static constructor
.field public static final IS_LOW_MEMORY_DEVICE:Z = false

#the value of this static final field might be set in the static constructor
.field public static final IS_MI1S:Z = false

#the value of this static final field might be set in the static constructor
.field public static final IS_MILESTONE:Z = false

#the value of this static final field might be set in the static constructor
.field public static final IS_MIONE:Z = false

#the value of this static final field might be set in the static constructor
.field public static final IS_MIONE_CT_CUSTOMIZATION:Z = false

#the value of this static final field might be set in the static constructor
.field public static final IS_MIONE_PLUS_CDMA:Z = false

#the value of this static final field might be set in the static constructor
.field public static final IS_MITWO:Z = false

#the value of this static final field might be set in the static constructor
.field private static final IS_MITWO_HK_BUILD:Z = false

#the value of this static final field might be set in the static constructor
.field private static final IS_MITWO_TW_BUILD:Z = false

#the value of this static final field might be set in the static constructor
.field public static final IS_NEED_UNCOMPRESSED_UCS2_SMS_DEVICE:Z = false

#the value of this static final field might be set in the static constructor
.field public static final IS_NEXUS_ONE:Z = false

#the value of this static final field might be set in the static constructor
.field public static final IS_NEXUS_S:Z = false

#the value of this static final field might be set in the static constructor
.field public static final IS_P990:Z = false

#the value of this static final field might be set in the static constructor
.field public static final IS_RICH_MEMORY_DEVICE:Z = false

#the value of this static final field might be set in the static constructor
.field public static final IS_STABLE_VERSION:Z = false

#the value of this static final field might be set in the static constructor
.field public static final IS_T959:Z = false

#the value of this static final field might be set in the static constructor
.field public static final IS_TW_BUILD:Z = false

#the value of this static final field might be set in the static constructor
.field public static final IS_U8860:Z = false

#the value of this static final field might be set in the static constructor
.field public static final IS_U9200:Z = false

#the value of this static final field might be set in the static constructor
.field public static final IS_XIAOMI:Z = false

.field private static final REGULAR_EXPRESSION_FOR_DEVELOPMENT:Ljava/lang/String; = "\\d+.\\d+.\\d+(.ALPHA)?"

.field public static final SHOW_MAGNIFIER_WHEN_INPUT:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 11
    const-string v0, "jordan"

    sget-object v3, Lmiui/os/Build;->BOARD:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lmiui/os/Build;->IS_DEFY:Z

    .line 12
    const-string v0, "bravo"

    sget-object v3, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lmiui/os/Build;->IS_DESIRE:Z

    .line 13
    const-string v0, "galaxys2"

    sget-object v3, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lmiui/os/Build;->IS_GALAXYS2:Z

    .line 14
    const-string v0, "htcleo"

    sget-object v3, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "leo"

    sget-object v3, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_0
    move v0, v2

    :goto_0
    sput-boolean v0, Lmiui/os/Build;->IS_HTC_HD2:Z

    .line 15
    const-string v0, "aries"

    sget-object v3, Lmiui/os/Build;->BOARD:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lmiui/os/Build;->IS_I9000:Z

    .line 16
    const-string/jumbo v0, "umts_sholes"

    sget-object v3, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lmiui/os/Build;->IS_MILESTONE:Z

    .line 17
    const-string/jumbo v0, "mione"

    sget-object v3, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "mione_plus"

    sget-object v3, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_1
    move v0, v2

    :goto_1
    sput-boolean v0, Lmiui/os/Build;->IS_MIONE:Z

    .line 18
    const-string v0, "aries"

    sget-object v3, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lmiui/os/Build;->IS_MITWO:Z

    .line 19
    sget-boolean v0, Lmiui/os/Build;->IS_MIONE:Z

    if-nez v0, :cond_2

    sget-boolean v0, Lmiui/os/Build;->IS_MITWO:Z

    if-eqz v0, :cond_a

    :cond_2
    move v0, v2

    :goto_2
    sput-boolean v0, Lmiui/os/Build;->IS_XIAOMI:Z

    .line 20
    const-string/jumbo v0, "passion"

    sget-object v3, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lmiui/os/Build;->IS_NEXUS_ONE:Z

    .line 21
    const-string v0, "crespo"

    sget-object v3, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lmiui/os/Build;->IS_NEXUS_S:Z

    .line 22
    const-string/jumbo v0, "maguro"

    sget-object v3, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lmiui/os/Build;->IS_GALAXYS_NEXUS:Z

    .line 23
    const-string/jumbo v0, "p990"

    sget-object v3, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lmiui/os/Build;->IS_P990:Z

    .line 24
    sget-object v0, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    const-string/jumbo v3, "vibrant"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lmiui/os/Build;->IS_T959:Z

    .line 25
    const-string v0, "hwu8860"

    sget-object v3, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lmiui/os/Build;->IS_U8860:Z

    .line 26
    const-string v0, "hwu9200"

    sget-object v3, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lmiui/os/Build;->IS_U9200:Z

    .line 27
    const-string v0, "MI 1S"

    sget-object v3, Lmiui/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "MI 1SC"

    sget-object v3, Lmiui/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    :cond_3
    move v0, v2

    :goto_3
    sput-boolean v0, Lmiui/os/Build;->IS_MI1S:Z

    .line 29
    sget-boolean v0, Lmiui/os/Build;->IS_MIONE:Z

    if-nez v0, :cond_4

    sget-boolean v0, Lmiui/os/Build;->IS_GALAXYS2:Z

    if-eqz v0, :cond_c

    :cond_4
    move v0, v2

    :goto_4
    sput-boolean v0, Lmiui/os/Build;->IS_RICH_MEMORY_DEVICE:Z

    .line 30
    sget-boolean v0, Lmiui/os/Build;->IS_MILESTONE:Z

    sput-boolean v0, Lmiui/os/Build;->IS_LOW_MEMORY_DEVICE:Z

    .line 32
    sget-boolean v0, Lmiui/os/Build;->IS_MIONE:Z

    if-nez v0, :cond_5

    sget-boolean v0, Lmiui/os/Build;->IS_I9000:Z

    if-nez v0, :cond_5

    sget-boolean v0, Lmiui/os/Build;->IS_P990:Z

    if-nez v0, :cond_5

    sget-boolean v0, Lmiui/os/Build;->IS_NEXUS_S:Z

    if-nez v0, :cond_5

    sget-boolean v0, Lmiui/os/Build;->IS_GALAXYS2:Z

    if-eqz v0, :cond_d

    :cond_5
    move v0, v2

    :goto_5
    sput-boolean v0, Lmiui/os/Build;->IS_FAST_GPU_DEVICE:Z

    .line 35
    sget-boolean v0, Lmiui/os/Build;->IS_MILESTONE:Z

    if-nez v0, :cond_6

    sget-boolean v0, Lmiui/os/Build;->IS_NEXUS_S:Z

    if-nez v0, :cond_6

    sget-boolean v0, Lmiui/os/Build;->IS_I9000:Z

    if-nez v0, :cond_6

    sget-boolean v0, Lmiui/os/Build;->IS_DEFY:Z

    if-nez v0, :cond_6

    sget-boolean v0, Lmiui/os/Build;->IS_GALAXYS2:Z

    if-nez v0, :cond_6

    sget-boolean v0, Lmiui/os/Build;->IS_P990:Z

    if-eqz v0, :cond_e

    :cond_6
    move v0, v2

    :goto_6
    sput-boolean v0, Lmiui/os/Build;->IS_NEED_UNCOMPRESSED_UCS2_SMS_DEVICE:Z

    .line 38
    sget-boolean v0, Lmiui/os/Build;->IS_MIONE:Z

    if-eqz v0, :cond_f

    invoke-static {}, Lmiui/os/Build;->isMsm8660()Z

    move-result v0

    if-eqz v0, :cond_f

    move v0, v2

    :goto_7
    sput-boolean v0, Lmiui/os/Build;->IS_MIONE_PLUS_CDMA:Z

    .line 42
    const-string v0, "ct"

    const-string/jumbo v3, "ro.carrier.name"

    invoke-static {v3}, Lmiui/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lmiui/os/Build;->IS_MIONE_CT_CUSTOMIZATION:Z

    .line 45
    sget-boolean v0, Lmiui/os/Build;->IS_XIAOMI:Z

    if-nez v0, :cond_7

    sget-boolean v0, Lmiui/os/Build;->IS_GALAXYS_NEXUS:Z

    if-nez v0, :cond_7

    sget-boolean v0, Lmiui/os/Build;->IS_NEXUS_S:Z

    if-eqz v0, :cond_10

    :cond_7
    move v0, v2

    :goto_8
    sput-boolean v0, Lmiui/os/Build;->SHOW_MAGNIFIER_WHEN_INPUT:Z

    .line 50
    sget-object v0, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_11

    sget-object v0, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    const-string v3, "\\d+.\\d+.\\d+(.ALPHA)?"

    invoke-virtual {v0, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    move v0, v2

    :goto_9
    sput-boolean v0, Lmiui/os/Build;->IS_DEVELOPMENT_VERSION:Z

    .line 54
    const-string/jumbo v0, "user"

    sget-object v3, Lmiui/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    sget-boolean v0, Lmiui/os/Build;->IS_DEVELOPMENT_VERSION:Z

    if-nez v0, :cond_12

    :goto_a
    sput-boolean v2, Lmiui/os/Build;->IS_STABLE_VERSION:Z

    .line 58
    const-string v0, "aries_tw"

    const-string/jumbo v1, "ro.product.mod_device"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lmiui/os/Build;->IS_MITWO_TW_BUILD:Z

    .line 60
    const-string v0, "aries_hk"

    const-string/jumbo v1, "ro.product.mod_device"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lmiui/os/Build;->IS_MITWO_HK_BUILD:Z

    .line 63
    sget-boolean v0, Lmiui/os/Build;->IS_MITWO_TW_BUILD:Z

    sput-boolean v0, Lmiui/os/Build;->IS_TW_BUILD:Z

    .line 64
    sget-boolean v0, Lmiui/os/Build;->IS_MITWO_HK_BUILD:Z

    sput-boolean v0, Lmiui/os/Build;->IS_HK_BUILD:Z

    return-void

    :cond_8
    move v0, v1

    .line 14
    goto/16 :goto_0

    :cond_9
    move v0, v1

    .line 17
    goto/16 :goto_1

    :cond_a
    move v0, v1

    .line 19
    goto/16 :goto_2

    :cond_b
    move v0, v1

    .line 27
    goto/16 :goto_3

    :cond_c
    move v0, v1

    .line 29
    goto/16 :goto_4

    :cond_d
    move v0, v1

    .line 32
    goto/16 :goto_5

    :cond_e
    move v0, v1

    .line 35
    goto/16 :goto_6

    :cond_f
    move v0, v1

    .line 38
    goto/16 :goto_7

    :cond_10
    move v0, v1

    .line 45
    goto :goto_8

    :cond_11
    move v0, v1

    .line 50
    goto :goto_9

    :cond_12
    move v2, v1

    .line 54
    goto :goto_a
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Landroid/os/Build;-><init>()V

    return-void
.end method

.method private static getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "property"

    .prologue
    .line 99
    const-string/jumbo v0, "unknown"

    invoke-static {p0, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isDevelopmentVersion()Z
    .locals 1

    .prologue
    .line 70
    sget-boolean v0, Lmiui/os/Build;->IS_DEVELOPMENT_VERSION:Z

    return v0
.end method

.method public static isMsm8660()Z
    .locals 2

    .prologue
    .line 85
    const-string/jumbo v1, "ro.soc.name"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 86
    .local v0, soc:Ljava/lang/String;
    const-string/jumbo v1, "msm8660"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "unkown"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isOfficialVersion()Z
    .locals 1

    .prologue
    .line 81
    sget-boolean v0, Lmiui/os/Build;->IS_DEVELOPMENT_VERSION:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lmiui/os/Build;->IS_STABLE_VERSION:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isStableVersion()Z
    .locals 1

    .prologue
    .line 77
    sget-boolean v0, Lmiui/os/Build;->IS_STABLE_VERSION:Z

    return v0
.end method

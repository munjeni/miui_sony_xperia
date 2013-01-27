.class public Lcom/android/internal/telephony/SimRegionCache;
.super Ljava/lang/Object;
.source "SimRegionCache.java"


# static fields
.field public static final MCC_KOREAN:I = 0x1c2

.field public static final MCC_UNSET:I = -0x80000000

.field private static regionFromMcc:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const/high16 v0, -0x8000

    sput v0, Lcom/android/internal/telephony/SimRegionCache;->regionFromMcc:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getRegion()I
    .locals 4

    .prologue
    const/4 v3, 0x3

    .line 36
    sget v1, Lcom/android/internal/telephony/SimRegionCache;->regionFromMcc:I

    const/high16 v2, -0x8000

    if-ne v1, v2, :cond_0

    .line 37
    const-string v1, "gsm.sim.operator.numeric"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 41
    .local v0, plmn:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v1, v3, :cond_0

    .line 43
    const/4 v1, 0x0

    const/4 v2, 0x3

    :try_start_0
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/android/internal/telephony/SimRegionCache;->regionFromMcc:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    :cond_0
    :goto_0
    sget v1, Lcom/android/internal/telephony/SimRegionCache;->regionFromMcc:I

    return v1

    .line 44
    :catch_0
    move-exception v1

    goto :goto_0
.end method

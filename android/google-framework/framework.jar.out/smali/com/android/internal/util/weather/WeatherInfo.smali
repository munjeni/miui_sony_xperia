.class public Lcom/android/internal/util/weather/WeatherInfo;
.super Ljava/lang/Object;
.source "WeatherInfo.java"


# static fields
.field public static final NODATA:Ljava/lang/String; = "-"


# instance fields
.field public city:Ljava/lang/String;

.field public condition:Ljava/lang/String;

.field public condition_code:Ljava/lang/String;

.field public forecast_date:Ljava/lang/String;

.field public high:Ljava/lang/String;

.field public humidity:Ljava/lang/String;

.field public last_sync:J

.field public low:Ljava/lang/String;

.field public speed_unit:Ljava/lang/String;

.field public temp:Ljava/lang/String;

.field public temp_unit:Ljava/lang/String;

.field public wind:Ljava/lang/String;

.field public wind_dir:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const-string v0, "-"

    iput-object v0, p0, Lcom/android/internal/util/weather/WeatherInfo;->city:Ljava/lang/String;

    .line 32
    const-string v0, "-"

    iput-object v0, p0, Lcom/android/internal/util/weather/WeatherInfo;->forecast_date:Ljava/lang/String;

    .line 33
    const-string v0, "-"

    iput-object v0, p0, Lcom/android/internal/util/weather/WeatherInfo;->condition:Ljava/lang/String;

    .line 34
    const-string v0, "-"

    iput-object v0, p0, Lcom/android/internal/util/weather/WeatherInfo;->condition_code:Ljava/lang/String;

    .line 35
    const-string v0, "-"

    iput-object v0, p0, Lcom/android/internal/util/weather/WeatherInfo;->temp:Ljava/lang/String;

    .line 36
    const-string v0, "-"

    iput-object v0, p0, Lcom/android/internal/util/weather/WeatherInfo;->temp_unit:Ljava/lang/String;

    .line 37
    const-string v0, "-"

    iput-object v0, p0, Lcom/android/internal/util/weather/WeatherInfo;->humidity:Ljava/lang/String;

    .line 38
    const-string v0, "-"

    iput-object v0, p0, Lcom/android/internal/util/weather/WeatherInfo;->wind:Ljava/lang/String;

    .line 39
    const-string v0, "-"

    iput-object v0, p0, Lcom/android/internal/util/weather/WeatherInfo;->wind_dir:Ljava/lang/String;

    .line 40
    const-string v0, "-"

    iput-object v0, p0, Lcom/android/internal/util/weather/WeatherInfo;->speed_unit:Ljava/lang/String;

    .line 41
    const-string v0, "-"

    iput-object v0, p0, Lcom/android/internal/util/weather/WeatherInfo;->low:Ljava/lang/String;

    .line 42
    const-string v0, "-"

    iput-object v0, p0, Lcom/android/internal/util/weather/WeatherInfo;->high:Ljava/lang/String;

    .line 43
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/util/weather/WeatherInfo;->last_sync:J

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 4
    .parameter "context"
    .parameter "city"
    .parameter "fdate"
    .parameter "condition"
    .parameter "condition_code"
    .parameter "temp"
    .parameter "temp_unit"
    .parameter "humidity"
    .parameter "wind"
    .parameter "wind_dir"
    .parameter "speed_unit"
    .parameter "low"
    .parameter "high"
    .parameter "last_sync"

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p2, p0, Lcom/android/internal/util/weather/WeatherInfo;->city:Ljava/lang/String;

    .line 51
    iput-object p3, p0, Lcom/android/internal/util/weather/WeatherInfo;->forecast_date:Ljava/lang/String;

    .line 52
    iput-object p4, p0, Lcom/android/internal/util/weather/WeatherInfo;->condition:Ljava/lang/String;

    .line 53
    iput-object p5, p0, Lcom/android/internal/util/weather/WeatherInfo;->condition_code:Ljava/lang/String;

    .line 54
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/util/weather/WeatherInfo;->humidity:Ljava/lang/String;

    .line 55
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, p1, p10}, Lcom/android/internal/util/weather/WeatherInfo;->calcDirection(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p9}, Lcom/android/internal/util/weather/WeatherInfo;->trimSpeed(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/util/weather/WeatherInfo;->wind:Ljava/lang/String;

    .line 56
    iput-object p11, p0, Lcom/android/internal/util/weather/WeatherInfo;->speed_unit:Ljava/lang/String;

    .line 57
    move-wide/from16 v0, p14

    iput-wide v0, p0, Lcom/android/internal/util/weather/WeatherInfo;->last_sync:J

    .line 59
    iput-object p7, p0, Lcom/android/internal/util/weather/WeatherInfo;->temp_unit:Ljava/lang/String;

    .line 60
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\u00b0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/util/weather/WeatherInfo;->temp:Ljava/lang/String;

    .line 61
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p12

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\u00b0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/util/weather/WeatherInfo;->low:Ljava/lang/String;

    .line 62
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p13

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\u00b0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/util/weather/WeatherInfo;->high:Ljava/lang/String;

    .line 63
    return-void
.end method

.method private calcDirection(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "context"
    .parameter "degrees"

    .prologue
    const/16 v3, 0x152

    .line 84
    :try_start_0
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 85
    .local v0, deg:I
    if-ge v0, v3, :cond_0

    const/16 v2, 0x16

    if-gt v0, v2, :cond_1

    .line 86
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x104051c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 104
    .end local v0           #deg:I
    :goto_0
    return-object v2

    .line 87
    .restart local v0       #deg:I
    :cond_1
    const/16 v2, 0x44

    if-ge v0, v2, :cond_2

    .line 88
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x104051d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 89
    :cond_2
    const/16 v2, 0x71

    if-ge v0, v2, :cond_3

    .line 90
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x104051e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 91
    :cond_3
    const/16 v2, 0x9e

    if-ge v0, v2, :cond_4

    .line 92
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x104051f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 93
    :cond_4
    const/16 v2, 0xcb

    if-ge v0, v2, :cond_5

    .line 94
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1040520

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 95
    :cond_5
    const/16 v2, 0xf8

    if-ge v0, v2, :cond_6

    .line 96
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1040521

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 97
    :cond_6
    const/16 v2, 0x125

    if-ge v0, v2, :cond_7

    .line 98
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1040522

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 99
    :cond_7
    if-ge v0, v3, :cond_8

    .line 100
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1040523

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 102
    :cond_8
    const-string v2, ""
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 103
    .end local v0           #deg:I
    :catch_0
    move-exception v1

    .line 104
    .local v1, e:Ljava/lang/NumberFormatException;
    const-string v2, ""

    goto :goto_0
.end method

.method public static getTranslatedConditionString(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "context"
    .parameter "conditionCode"
    .parameter "providedString"

    .prologue
    .line 77
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "weather_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "string"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 79
    .local v0, resID:I
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    .end local p2
    :cond_0
    return-object p2
.end method

.method private trimSpeed(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "speed"

    .prologue
    .line 110
    :try_start_0
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 112
    :goto_0
    return-object v1

    .line 111
    :catch_0
    move-exception v0

    .line 112
    .local v0, e:Ljava/lang/NumberFormatException;
    const-string v1, ""

    goto :goto_0
.end method

.class public Lcom/android/server/location/NMEAParser;
.super Ljava/lang/Object;
.source "NMEAParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/location/NMEAParser$GPGSVParser;,
        Lcom/android/server/location/NMEAParser$GPGSAParser;,
        Lcom/android/server/location/NMEAParser$GPGGAParser;,
        Lcom/android/server/location/NMEAParser$GPRMCParser;,
        Lcom/android/server/location/NMEAParser$ParseInterface;
    }
.end annotation


# static fields
.field public static final ALMANAC_MASK:I = 0x1

.field private static final BUNDLE_SATS:Ljava/lang/String; = "satellites"

.field public static final EPHEMERIS_MASK:I = 0x0

.field private static final MAX_SVS:I = 0x20

.field private static final TAG:Ljava/lang/String; = "NMEAParser"

.field public static final USED_FOR_FIX_MASK:I = 0x2

.field private static final delim:Ljava/lang/String; = ","


# instance fields
.field private GPSCalendar:Ljava/util/GregorianCalendar;

.field private final GPSTimezone:Ljava/util/TimeZone;

.field private HDOP:F

.field private HEPE_FACTOR:F

.field private PDOP:F

.field private VDOP:F

.field private isValid:Z

.field private loc:Landroid/location/Location;

.field private mFixAccuracy:F

.field private mFixAltitude:F

.field private mFixBearing:F

.field private mFixDateTimeStamp:J

.field private mFixLatitude:D

.field private mFixLongitude:D

.field private mFixQuality:I

.field private mFixSatsTracked:I

.field private mFixSpeed:F

.field private mFixTimestampDelta:J

.field private mSatsReady:Z

.field private mSnrs:[F

.field private mSvAzimuths:[F

.field private mSvCount:I

.field private mSvElevations:[F

.field private mSvMasks:[I

.field private mSvs:[I

.field private parseMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/location/NMEAParser$ParseInterface;",
            ">;"
        }
    .end annotation
.end field

.field private provider:Ljava/lang/String;

.field private final sentencePattern:Ljava/util/regex/Pattern;

.field private final timeFormatter:Ljava/text/SimpleDateFormat;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 7
    .parameter "prov"

    .prologue
    const-wide/16 v5, 0x0

    const/4 v4, 0x0

    const/16 v3, 0x20

    const/4 v2, 0x0

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const-string v0, "\\$([^*$]{5,})(\\*\\w{2})?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/NMEAParser;->sentencePattern:Ljava/util/regex/Pattern;

    .line 39
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "HHmmss.S"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/location/NMEAParser;->timeFormatter:Ljava/text/SimpleDateFormat;

    .line 40
    const-string v0, "UTC"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/NMEAParser;->GPSTimezone:Ljava/util/TimeZone;

    .line 41
    new-instance v0, Ljava/util/GregorianCalendar;

    iget-object v1, p0, Lcom/android/server/location/NMEAParser;->GPSTimezone:Ljava/util/TimeZone;

    invoke-direct {v0, v1}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    iput-object v0, p0, Lcom/android/server/location/NMEAParser;->GPSCalendar:Ljava/util/GregorianCalendar;

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/NMEAParser;->parseMap:Ljava/util/HashMap;

    .line 54
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/android/server/location/NMEAParser;->mSvs:[I

    .line 55
    new-array v0, v3, [F

    iput-object v0, p0, Lcom/android/server/location/NMEAParser;->mSnrs:[F

    .line 56
    new-array v0, v3, [F

    iput-object v0, p0, Lcom/android/server/location/NMEAParser;->mSvElevations:[F

    .line 57
    new-array v0, v3, [F

    iput-object v0, p0, Lcom/android/server/location/NMEAParser;->mSvAzimuths:[F

    .line 58
    const/4 v0, 0x3

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/server/location/NMEAParser;->mSvMasks:[I

    .line 61
    iput v2, p0, Lcom/android/server/location/NMEAParser;->PDOP:F

    .line 62
    iput v2, p0, Lcom/android/server/location/NMEAParser;->HDOP:F

    .line 63
    iput v2, p0, Lcom/android/server/location/NMEAParser;->VDOP:F

    .line 65
    iput-boolean v4, p0, Lcom/android/server/location/NMEAParser;->isValid:Z

    .line 66
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/location/NMEAParser;->mFixDateTimeStamp:J

    .line 67
    iput-wide v5, p0, Lcom/android/server/location/NMEAParser;->mFixLongitude:D

    .line 68
    iput-wide v5, p0, Lcom/android/server/location/NMEAParser;->mFixLatitude:D

    .line 69
    iput v2, p0, Lcom/android/server/location/NMEAParser;->mFixAltitude:F

    .line 70
    iput v2, p0, Lcom/android/server/location/NMEAParser;->mFixSpeed:F

    .line 71
    iput v2, p0, Lcom/android/server/location/NMEAParser;->mFixBearing:F

    .line 72
    iput v2, p0, Lcom/android/server/location/NMEAParser;->mFixAccuracy:F

    .line 73
    iput v4, p0, Lcom/android/server/location/NMEAParser;->mFixSatsTracked:I

    .line 74
    iput v4, p0, Lcom/android/server/location/NMEAParser;->mFixQuality:I

    .line 77
    const/high16 v0, 0x4080

    iput v0, p0, Lcom/android/server/location/NMEAParser;->HEPE_FACTOR:F

    .line 80
    const-wide/16 v0, 0x1f4

    iput-wide v0, p0, Lcom/android/server/location/NMEAParser;->mFixTimestampDelta:J

    .line 82
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/location/NMEAParser;->mSatsReady:Z

    .line 83
    new-instance v0, Landroid/location/Location;

    iget-object v1, p0, Lcom/android/server/location/NMEAParser;->provider:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/location/NMEAParser;->loc:Landroid/location/Location;

    .line 90
    iget-object v0, p0, Lcom/android/server/location/NMEAParser;->parseMap:Ljava/util/HashMap;

    const-string v1, "GPRMC"

    new-instance v2, Lcom/android/server/location/NMEAParser$GPRMCParser;

    invoke-direct {v2, p0}, Lcom/android/server/location/NMEAParser$GPRMCParser;-><init>(Lcom/android/server/location/NMEAParser;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    iget-object v0, p0, Lcom/android/server/location/NMEAParser;->parseMap:Ljava/util/HashMap;

    const-string v1, "GPGGA"

    new-instance v2, Lcom/android/server/location/NMEAParser$GPGGAParser;

    invoke-direct {v2, p0}, Lcom/android/server/location/NMEAParser$GPGGAParser;-><init>(Lcom/android/server/location/NMEAParser;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    iget-object v0, p0, Lcom/android/server/location/NMEAParser;->parseMap:Ljava/util/HashMap;

    const-string v1, "GPGSA"

    new-instance v2, Lcom/android/server/location/NMEAParser$GPGSAParser;

    invoke-direct {v2, p0}, Lcom/android/server/location/NMEAParser$GPGSAParser;-><init>(Lcom/android/server/location/NMEAParser;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    iget-object v0, p0, Lcom/android/server/location/NMEAParser;->parseMap:Ljava/util/HashMap;

    const-string v1, "GPGSV"

    new-instance v2, Lcom/android/server/location/NMEAParser$GPGSVParser;

    invoke-direct {v2, p0}, Lcom/android/server/location/NMEAParser$GPGSVParser;-><init>(Lcom/android/server/location/NMEAParser;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    iput-object p1, p0, Lcom/android/server/location/NMEAParser;->provider:Ljava/lang/String;

    .line 96
    iget-object v0, p0, Lcom/android/server/location/NMEAParser;->timeFormatter:Ljava/text/SimpleDateFormat;

    const-string v1, "UTC"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 98
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/location/NMEAParser;Ljava/lang/String;)J
    .locals 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/android/server/location/NMEAParser;->parseTimeToDate(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$100(Lcom/android/server/location/NMEAParser;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Lcom/android/server/location/NMEAParser;->updateTimeStamp(J)V

    return-void
.end method

.method static synthetic access$1002(Lcom/android/server/location/NMEAParser;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/android/server/location/NMEAParser;->isValid:Z

    return p1
.end method

.method static synthetic access$1102(Lcom/android/server/location/NMEAParser;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iput p1, p0, Lcom/android/server/location/NMEAParser;->mFixSatsTracked:I

    return p1
.end method

.method static synthetic access$1200(Lcom/android/server/location/NMEAParser;Ljava/lang/String;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/android/server/location/NMEAParser;->parseStringToInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1302(Lcom/android/server/location/NMEAParser;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iput p1, p0, Lcom/android/server/location/NMEAParser;->mFixAccuracy:F

    return p1
.end method

.method static synthetic access$1400(Lcom/android/server/location/NMEAParser;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget v0, p0, Lcom/android/server/location/NMEAParser;->HEPE_FACTOR:F

    return v0
.end method

.method static synthetic access$1502(Lcom/android/server/location/NMEAParser;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iput p1, p0, Lcom/android/server/location/NMEAParser;->mFixAltitude:F

    return p1
.end method

.method static synthetic access$1600(Lcom/android/server/location/NMEAParser;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/server/location/NMEAParser;->mSvMasks:[I

    return-object v0
.end method

.method static synthetic access$1702(Lcom/android/server/location/NMEAParser;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iput p1, p0, Lcom/android/server/location/NMEAParser;->PDOP:F

    return p1
.end method

.method static synthetic access$1802(Lcom/android/server/location/NMEAParser;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iput p1, p0, Lcom/android/server/location/NMEAParser;->HDOP:F

    return p1
.end method

.method static synthetic access$1902(Lcom/android/server/location/NMEAParser;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iput p1, p0, Lcom/android/server/location/NMEAParser;->VDOP:F

    return p1
.end method

.method static synthetic access$2000(Lcom/android/server/location/NMEAParser;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget v0, p0, Lcom/android/server/location/NMEAParser;->mSvCount:I

    return v0
.end method

.method static synthetic access$2002(Lcom/android/server/location/NMEAParser;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iput p1, p0, Lcom/android/server/location/NMEAParser;->mSvCount:I

    return p1
.end method

.method static synthetic access$202(Lcom/android/server/location/NMEAParser;D)D
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iput-wide p1, p0, Lcom/android/server/location/NMEAParser;->mFixLatitude:D

    return-wide p1
.end method

.method static synthetic access$2100(Lcom/android/server/location/NMEAParser;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/android/server/location/NMEAParser;->mSatsReady:Z

    return v0
.end method

.method static synthetic access$2102(Lcom/android/server/location/NMEAParser;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/android/server/location/NMEAParser;->mSatsReady:Z

    return p1
.end method

.method static synthetic access$2200(Lcom/android/server/location/NMEAParser;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/android/server/location/NMEAParser;->resetSats()V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/server/location/NMEAParser;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/server/location/NMEAParser;->mSvs:[I

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/server/location/NMEAParser;)[F
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/server/location/NMEAParser;->mSvElevations:[F

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/server/location/NMEAParser;)[F
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/server/location/NMEAParser;->mSvAzimuths:[F

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/server/location/NMEAParser;)[F
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/server/location/NMEAParser;->mSnrs:[F

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/location/NMEAParser;Ljava/lang/String;Ljava/lang/String;)D
    .locals 2
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Lcom/android/server/location/NMEAParser;->parseCoordinate(Ljava/lang/String;Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$402(Lcom/android/server/location/NMEAParser;D)D
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iput-wide p1, p0, Lcom/android/server/location/NMEAParser;->mFixLongitude:D

    return-wide p1
.end method

.method static synthetic access$502(Lcom/android/server/location/NMEAParser;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iput p1, p0, Lcom/android/server/location/NMEAParser;->mFixSpeed:F

    return p1
.end method

.method static synthetic access$600(Lcom/android/server/location/NMEAParser;Ljava/lang/String;)F
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/android/server/location/NMEAParser;->parseSpeedInKnots(Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method static synthetic access$702(Lcom/android/server/location/NMEAParser;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iput p1, p0, Lcom/android/server/location/NMEAParser;->mFixBearing:F

    return p1
.end method

.method static synthetic access$800(Lcom/android/server/location/NMEAParser;Ljava/lang/String;)F
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/android/server/location/NMEAParser;->parseStringToFloat(Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/android/server/location/NMEAParser;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget v0, p0, Lcom/android/server/location/NMEAParser;->mFixQuality:I

    return v0
.end method

.method static synthetic access$902(Lcom/android/server/location/NMEAParser;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iput p1, p0, Lcom/android/server/location/NMEAParser;->mFixQuality:I

    return p1
.end method

.method private computeChecksum(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "in"

    .prologue
    .line 436
    const/4 v2, 0x0

    .line 437
    .local v2, result:B
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 438
    .local v0, chars:[C
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_0

    .line 439
    aget-char v3, v0, v1

    int-to-byte v3, v3

    xor-int/2addr v3, v2

    int-to-byte v2, v3

    .line 438
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 440
    :cond_0
    const-string v3, "%02X"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private getParser(Ljava/lang/String;)Lcom/android/server/location/NMEAParser$ParseInterface;
    .locals 3
    .parameter "sid"

    .prologue
    .line 423
    iget-object v0, p0, Lcom/android/server/location/NMEAParser;->parseMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 424
    iget-object v0, p0, Lcom/android/server/location/NMEAParser;->parseMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/location/NMEAParser$ParseInterface;

    .line 428
    :goto_0
    return-object v0

    .line 426
    :cond_0
    const-string v0, "NMEAParser"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not instantiate "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "parser"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private parseCoordinate(Ljava/lang/String;Ljava/lang/String;)D
    .locals 11
    .parameter "in"
    .parameter "orientation"

    .prologue
    const-wide/high16 v9, 0x4059

    .line 211
    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    .line 212
    .local v0, c:D
    div-double v5, v0, v9

    double-to-int v2, v5

    .line 213
    .local v2, deg:I
    int-to-double v5, v2

    int-to-double v7, v2

    mul-double/2addr v7, v9

    sub-double v7, v0, v7

    const-wide v9, 0x3f91111111111171L

    mul-double/2addr v7, v9

    add-double v3, v5, v7

    .line 214
    .local v3, res:D
    const-string v5, "S"

    invoke-virtual {v5, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "W"

    invoke-virtual {v5, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    neg-double v3, v3

    .line 215
    .end local v3           #res:D
    :cond_1
    return-wide v3
.end method

.method private parseSpeedInKMH(Ljava/lang/String;)F
    .locals 3
    .parameter "str"

    .prologue
    .line 225
    const/4 v0, 0x0

    .line 226
    .local v0, res:F
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    const v2, 0x3e8e38e4

    mul-float v0, v1, v2

    .line 227
    return v0
.end method

.method private parseSpeedInKnots(Ljava/lang/String;)F
    .locals 3
    .parameter "str"

    .prologue
    .line 219
    const/4 v0, 0x0

    .line 220
    .local v0, res:F
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    const v2, 0x3f03b2a2

    mul-float v0, v1, v2

    .line 221
    return v0
.end method

.method private parseStringToFloat(Ljava/lang/String;)F
    .locals 4
    .parameter "str"

    .prologue
    .line 192
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 193
    const/4 v1, 0x0

    .line 201
    :goto_0
    return v1

    .line 195
    :cond_0
    const/4 v1, 0x0

    .line 197
    .local v1, res:F
    :try_start_0
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 198
    :catch_0
    move-exception v0

    .line 199
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "NMEAParser"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private parseStringToInt(Ljava/lang/String;)I
    .locals 4
    .parameter "str"

    .prologue
    .line 180
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 181
    const/4 v1, 0x0

    .line 188
    :goto_0
    return v1

    .line 182
    :cond_0
    const/4 v1, 0x0

    .line 184
    .local v1, res:I
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 185
    :catch_0
    move-exception v0

    .line 186
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "NMEAParser"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private parseTimeToDate(Ljava/lang/String;)J
    .locals 7
    .parameter "time"

    .prologue
    .line 167
    :try_start_0
    iget-object v3, p0, Lcom/android/server/location/NMEAParser;->timeFormatter:Ljava/text/SimpleDateFormat;

    invoke-virtual {v3, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 168
    .local v0, btTime:Ljava/util/Date;
    iget-object v3, p0, Lcom/android/server/location/NMEAParser;->GPSTimezone:Ljava/util/TimeZone;

    invoke-static {v3}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v2

    .line 169
    .local v2, localCalendar:Ljava/util/Calendar;
    iget-object v3, p0, Lcom/android/server/location/NMEAParser;->GPSCalendar:Ljava/util/GregorianCalendar;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    .line 170
    iget-object v3, p0, Lcom/android/server/location/NMEAParser;->GPSCalendar:Ljava/util/GregorianCalendar;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/4 v5, 0x2

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const/4 v6, 0x5

    invoke-virtual {v2, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {v3, v4, v5, v6}, Ljava/util/GregorianCalendar;->set(III)V

    .line 172
    iget-object v3, p0, Lcom/android/server/location/NMEAParser;->GPSCalendar:Ljava/util/GregorianCalendar;

    invoke-virtual {v3}, Ljava/util/GregorianCalendar;->getTimeInMillis()J
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v3

    .line 175
    .end local v0           #btTime:Ljava/util/Date;
    .end local v2           #localCalendar:Ljava/util/Calendar;
    :goto_0
    return-wide v3

    .line 173
    :catch_0
    move-exception v1

    .line 174
    .local v1, e:Ljava/text/ParseException;
    const-string v3, "NMEAParser"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not parse: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    const-wide/16 v3, 0x0

    goto :goto_0
.end method

.method private resetSats()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 133
    iput v2, p0, Lcom/android/server/location/NMEAParser;->mSvCount:I

    .line 134
    iget-object v0, p0, Lcom/android/server/location/NMEAParser;->mSvs:[I

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([II)V

    .line 135
    iget-object v0, p0, Lcom/android/server/location/NMEAParser;->mSnrs:[F

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    .line 136
    iget-object v0, p0, Lcom/android/server/location/NMEAParser;->mSvElevations:[F

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    .line 137
    iget-object v0, p0, Lcom/android/server/location/NMEAParser;->mSvAzimuths:[F

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    .line 138
    return-void
.end method

.method private updateTimeStamp(J)V
    .locals 8
    .parameter "in"

    .prologue
    const-wide/16 v6, 0x3e8

    const-wide/16 v4, 0x64

    .line 101
    iget-wide v0, p0, Lcom/android/server/location/NMEAParser;->mFixDateTimeStamp:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lcom/android/server/location/NMEAParser;->mFixDateTimeStamp:J

    cmp-long v0, p1, v0

    if-eqz v0, :cond_1

    .line 102
    iget-wide v0, p0, Lcom/android/server/location/NMEAParser;->mFixDateTimeStamp:J

    sub-long v0, p1, v0

    iput-wide v0, p0, Lcom/android/server/location/NMEAParser;->mFixTimestampDelta:J

    .line 103
    iget-wide v0, p0, Lcom/android/server/location/NMEAParser;->mFixTimestampDelta:J

    cmp-long v0, v0, v4

    if-gez v0, :cond_0

    iput-wide v4, p0, Lcom/android/server/location/NMEAParser;->mFixTimestampDelta:J

    .line 104
    :cond_0
    iget-wide v0, p0, Lcom/android/server/location/NMEAParser;->mFixTimestampDelta:J

    cmp-long v0, v0, v6

    if-lez v0, :cond_1

    iput-wide v6, p0, Lcom/android/server/location/NMEAParser;->mFixTimestampDelta:J

    .line 106
    :cond_1
    iput-wide p1, p0, Lcom/android/server/location/NMEAParser;->mFixDateTimeStamp:J

    .line 107
    return-void
.end method


# virtual methods
.method public getApproximatedRefreshRate()J
    .locals 2

    .prologue
    .line 110
    iget-wide v0, p0, Lcom/android/server/location/NMEAParser;->mFixTimestampDelta:J

    return-wide v0
.end method

.method public getHDOP()F
    .locals 1

    .prologue
    .line 483
    iget v0, p0, Lcom/android/server/location/NMEAParser;->HDOP:F

    return v0
.end method

.method public getLocation()Landroid/location/Location;
    .locals 5

    .prologue
    .line 145
    iget-object v1, p0, Lcom/android/server/location/NMEAParser;->loc:Landroid/location/Location;

    invoke-virtual {v1}, Landroid/location/Location;->reset()V

    .line 146
    iget-wide v1, p0, Lcom/android/server/location/NMEAParser;->mFixDateTimeStamp:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/location/NMEAParser;->loc:Landroid/location/Location;

    iget-wide v2, p0, Lcom/android/server/location/NMEAParser;->mFixDateTimeStamp:J

    invoke-virtual {v1, v2, v3}, Landroid/location/Location;->setTime(J)V

    .line 147
    :cond_0
    iget-object v1, p0, Lcom/android/server/location/NMEAParser;->loc:Landroid/location/Location;

    iget-wide v2, p0, Lcom/android/server/location/NMEAParser;->mFixLatitude:D

    invoke-virtual {v1, v2, v3}, Landroid/location/Location;->setLatitude(D)V

    .line 148
    iget-object v1, p0, Lcom/android/server/location/NMEAParser;->loc:Landroid/location/Location;

    iget-wide v2, p0, Lcom/android/server/location/NMEAParser;->mFixLongitude:D

    invoke-virtual {v1, v2, v3}, Landroid/location/Location;->setLongitude(D)V

    .line 149
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 150
    .local v0, extras:Landroid/os/Bundle;
    const-string v1, "satellites"

    iget v2, p0, Lcom/android/server/location/NMEAParser;->mFixSatsTracked:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 151
    iget-object v1, p0, Lcom/android/server/location/NMEAParser;->loc:Landroid/location/Location;

    invoke-virtual {v1, v0}, Landroid/location/Location;->setExtras(Landroid/os/Bundle;)V

    .line 152
    iget-object v1, p0, Lcom/android/server/location/NMEAParser;->loc:Landroid/location/Location;

    iget v2, p0, Lcom/android/server/location/NMEAParser;->mFixAccuracy:F

    invoke-virtual {v1, v2}, Landroid/location/Location;->setAccuracy(F)V

    .line 153
    iget-object v1, p0, Lcom/android/server/location/NMEAParser;->loc:Landroid/location/Location;

    iget v2, p0, Lcom/android/server/location/NMEAParser;->mFixAltitude:F

    float-to-double v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/location/Location;->setAltitude(D)V

    .line 154
    iget-object v1, p0, Lcom/android/server/location/NMEAParser;->loc:Landroid/location/Location;

    iget v2, p0, Lcom/android/server/location/NMEAParser;->mFixSpeed:F

    invoke-virtual {v1, v2}, Landroid/location/Location;->setSpeed(F)V

    .line 155
    iget-object v1, p0, Lcom/android/server/location/NMEAParser;->loc:Landroid/location/Location;

    iget v2, p0, Lcom/android/server/location/NMEAParser;->mFixBearing:F

    invoke-virtual {v1, v2}, Landroid/location/Location;->setBearing(F)V

    .line 156
    iget-object v1, p0, Lcom/android/server/location/NMEAParser;->loc:Landroid/location/Location;

    return-object v1
.end method

.method public getPDOP()F
    .locals 1

    .prologue
    .line 479
    iget v0, p0, Lcom/android/server/location/NMEAParser;->PDOP:F

    return v0
.end method

.method public getVDOP()F
    .locals 1

    .prologue
    .line 487
    iget v0, p0, Lcom/android/server/location/NMEAParser;->VDOP:F

    return v0
.end method

.method public getmFixAccuracy()F
    .locals 1

    .prologue
    .line 511
    iget v0, p0, Lcom/android/server/location/NMEAParser;->mFixAccuracy:F

    return v0
.end method

.method public getmFixAltitude()F
    .locals 1

    .prologue
    .line 503
    iget v0, p0, Lcom/android/server/location/NMEAParser;->mFixAltitude:F

    return v0
.end method

.method public getmFixDate()J
    .locals 2

    .prologue
    .line 491
    iget-wide v0, p0, Lcom/android/server/location/NMEAParser;->mFixDateTimeStamp:J

    return-wide v0
.end method

.method public getmFixLatitude()D
    .locals 2

    .prologue
    .line 499
    iget-wide v0, p0, Lcom/android/server/location/NMEAParser;->mFixLatitude:D

    return-wide v0
.end method

.method public getmFixLongitude()D
    .locals 2

    .prologue
    .line 495
    iget-wide v0, p0, Lcom/android/server/location/NMEAParser;->mFixLongitude:D

    return-wide v0
.end method

.method public getmFixQuality()I
    .locals 1

    .prologue
    .line 515
    iget v0, p0, Lcom/android/server/location/NMEAParser;->mFixQuality:I

    return v0
.end method

.method public getmFixSatsTracked()I
    .locals 1

    .prologue
    .line 538
    iget v0, p0, Lcom/android/server/location/NMEAParser;->mFixSatsTracked:I

    return v0
.end method

.method public getmFixSpeed()F
    .locals 1

    .prologue
    .line 507
    iget v0, p0, Lcom/android/server/location/NMEAParser;->mFixSpeed:F

    return v0
.end method

.method public getmSnrs()[F
    .locals 1

    .prologue
    .line 522
    iget-object v0, p0, Lcom/android/server/location/NMEAParser;->mSnrs:[F

    return-object v0
.end method

.method public getmSvAzimuths()[F
    .locals 1

    .prologue
    .line 530
    iget-object v0, p0, Lcom/android/server/location/NMEAParser;->mSvAzimuths:[F

    return-object v0
.end method

.method public getmSvCount()I
    .locals 1

    .prologue
    .line 475
    iget v0, p0, Lcom/android/server/location/NMEAParser;->mSvCount:I

    return v0
.end method

.method public getmSvElevations()[F
    .locals 1

    .prologue
    .line 526
    iget-object v0, p0, Lcom/android/server/location/NMEAParser;->mSvElevations:[F

    return-object v0
.end method

.method public getmSvMasks()[I
    .locals 1

    .prologue
    .line 534
    iget-object v0, p0, Lcom/android/server/location/NMEAParser;->mSvMasks:[I

    return-object v0
.end method

.method public getmSvs()[I
    .locals 1

    .prologue
    .line 518
    iget-object v0, p0, Lcom/android/server/location/NMEAParser;->mSvs:[I

    return-object v0
.end method

.method public isSatdataReady()Z
    .locals 1

    .prologue
    .line 542
    iget-boolean v0, p0, Lcom/android/server/location/NMEAParser;->mSatsReady:Z

    return v0
.end method

.method public isValid()Z
    .locals 1

    .prologue
    .line 116
    iget-boolean v0, p0, Lcom/android/server/location/NMEAParser;->isValid:Z

    return v0
.end method

.method public parseNMEALine(Ljava/lang/String;)Z
    .locals 10
    .parameter "sentence"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 444
    iget-object v8, p0, Lcom/android/server/location/NMEAParser;->sentencePattern:Ljava/util/regex/Pattern;

    invoke-virtual {v8, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 445
    .local v3, m:Ljava/util/regex/Matcher;
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 446
    invoke-virtual {v3, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    .line 447
    .local v4, nmeaSentence:Ljava/lang/String;
    const/4 v8, 0x5

    invoke-virtual {v4, v6, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 448
    .local v1, command:Ljava/lang/String;
    const/4 v8, 0x2

    invoke-virtual {v3, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 449
    .local v0, checksum:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 452
    const/4 v8, 0x3

    invoke-virtual {v0, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 453
    invoke-direct {p0, v4}, Lcom/android/server/location/NMEAParser;->computeChecksum(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 454
    const-string v7, "NMEAParser"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "skipping sentence: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " due to checksum error "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-direct {p0, v4}, Lcom/android/server/location/NMEAParser;->computeChecksum(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    .end local v0           #checksum:Ljava/lang/String;
    .end local v1           #command:Ljava/lang/String;
    .end local v4           #nmeaSentence:Ljava/lang/String;
    :goto_0
    return v6

    .line 459
    .restart local v0       #checksum:Ljava/lang/String;
    .restart local v1       #command:Ljava/lang/String;
    .restart local v4       #nmeaSentence:Ljava/lang/String;
    :cond_0
    invoke-direct {p0, v1}, Lcom/android/server/location/NMEAParser;->getParser(Ljava/lang/String;)Lcom/android/server/location/NMEAParser$ParseInterface;

    move-result-object v5

    .line 460
    .local v5, parser:Lcom/android/server/location/NMEAParser$ParseInterface;
    if-eqz v5, :cond_1

    .line 462
    :try_start_0
    invoke-interface {v5, v4}, Lcom/android/server/location/NMEAParser$ParseInterface;->parse(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0           #checksum:Ljava/lang/String;
    .end local v1           #command:Ljava/lang/String;
    .end local v4           #nmeaSentence:Ljava/lang/String;
    .end local v5           #parser:Lcom/android/server/location/NMEAParser$ParseInterface;
    :cond_1
    move v6, v7

    .line 471
    goto :goto_0

    .line 463
    .restart local v0       #checksum:Ljava/lang/String;
    .restart local v1       #command:Ljava/lang/String;
    .restart local v4       #nmeaSentence:Ljava/lang/String;
    .restart local v5       #parser:Lcom/android/server/location/NMEAParser$ParseInterface;
    :catch_0
    move-exception v2

    .line 466
    .local v2, e:Ljava/lang/Exception;
    const-string v7, "NMEAParser"

    invoke-static {v7, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public reset()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const-wide/16 v1, 0x0

    const/4 v0, 0x0

    .line 123
    iput-wide v1, p0, Lcom/android/server/location/NMEAParser;->mFixLongitude:D

    .line 124
    iput-wide v1, p0, Lcom/android/server/location/NMEAParser;->mFixLatitude:D

    .line 125
    iput v0, p0, Lcom/android/server/location/NMEAParser;->mFixAltitude:F

    .line 126
    iput v0, p0, Lcom/android/server/location/NMEAParser;->mFixSpeed:F

    .line 127
    iput v0, p0, Lcom/android/server/location/NMEAParser;->mFixAccuracy:F

    .line 128
    iput v3, p0, Lcom/android/server/location/NMEAParser;->mFixQuality:I

    .line 129
    iput v3, p0, Lcom/android/server/location/NMEAParser;->mFixSatsTracked:I

    .line 130
    return-void
.end method

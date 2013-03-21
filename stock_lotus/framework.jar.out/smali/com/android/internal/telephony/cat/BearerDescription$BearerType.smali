.class public final enum Lcom/android/internal/telephony/cat/BearerDescription$BearerType;
.super Ljava/lang/Enum;
.source "BearerDescription.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cat/BearerDescription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BearerType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/telephony/cat/BearerDescription$BearerType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/telephony/cat/BearerDescription$BearerType;

.field public static final enum BLUETOOTH:Lcom/android/internal/telephony/cat/BearerDescription$BearerType;

.field public static final enum DEFAULT_BEARER:Lcom/android/internal/telephony/cat/BearerDescription$BearerType;

.field public static final enum IRDA:Lcom/android/internal/telephony/cat/BearerDescription$BearerType;

.field public static final enum I_WLAN:Lcom/android/internal/telephony/cat/BearerDescription$BearerType;

.field public static final enum LOCAL_LINK:Lcom/android/internal/telephony/cat/BearerDescription$BearerType;

.field public static final enum MOBILE_CSD:Lcom/android/internal/telephony/cat/BearerDescription$BearerType;

.field public static final enum MOBILE_PS:Lcom/android/internal/telephony/cat/BearerDescription$BearerType;

.field public static final enum MOBILE_PS_EXTENDED_QOS:Lcom/android/internal/telephony/cat/BearerDescription$BearerType;

.field public static final enum RS232:Lcom/android/internal/telephony/cat/BearerDescription$BearerType;

.field public static final enum USB:Lcom/android/internal/telephony/cat/BearerDescription$BearerType;


# instance fields
.field private mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x5

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 38
    new-instance v0, Lcom/android/internal/telephony/cat/BearerDescription$BearerType;

    const-string v1, "MOBILE_CSD"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v4}, Lcom/android/internal/telephony/cat/BearerDescription$BearerType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/BearerDescription$BearerType;->MOBILE_CSD:Lcom/android/internal/telephony/cat/BearerDescription$BearerType;

    .line 39
    new-instance v0, Lcom/android/internal/telephony/cat/BearerDescription$BearerType;

    const-string v1, "MOBILE_PS"

    invoke-direct {v0, v1, v4, v5}, Lcom/android/internal/telephony/cat/BearerDescription$BearerType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/BearerDescription$BearerType;->MOBILE_PS:Lcom/android/internal/telephony/cat/BearerDescription$BearerType;

    .line 40
    new-instance v0, Lcom/android/internal/telephony/cat/BearerDescription$BearerType;

    const-string v1, "DEFAULT_BEARER"

    invoke-direct {v0, v1, v5, v6}, Lcom/android/internal/telephony/cat/BearerDescription$BearerType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/BearerDescription$BearerType;->DEFAULT_BEARER:Lcom/android/internal/telephony/cat/BearerDescription$BearerType;

    .line 41
    new-instance v0, Lcom/android/internal/telephony/cat/BearerDescription$BearerType;

    const-string v1, "LOCAL_LINK"

    invoke-direct {v0, v1, v6, v7}, Lcom/android/internal/telephony/cat/BearerDescription$BearerType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/BearerDescription$BearerType;->LOCAL_LINK:Lcom/android/internal/telephony/cat/BearerDescription$BearerType;

    .line 42
    new-instance v0, Lcom/android/internal/telephony/cat/BearerDescription$BearerType;

    const-string v1, "BLUETOOTH"

    invoke-direct {v0, v1, v7, v8}, Lcom/android/internal/telephony/cat/BearerDescription$BearerType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/BearerDescription$BearerType;->BLUETOOTH:Lcom/android/internal/telephony/cat/BearerDescription$BearerType;

    .line 43
    new-instance v0, Lcom/android/internal/telephony/cat/BearerDescription$BearerType;

    const-string v1, "IRDA"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v8, v2}, Lcom/android/internal/telephony/cat/BearerDescription$BearerType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/BearerDescription$BearerType;->IRDA:Lcom/android/internal/telephony/cat/BearerDescription$BearerType;

    .line 44
    new-instance v0, Lcom/android/internal/telephony/cat/BearerDescription$BearerType;

    const-string v1, "RS232"

    const/4 v2, 0x6

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cat/BearerDescription$BearerType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/BearerDescription$BearerType;->RS232:Lcom/android/internal/telephony/cat/BearerDescription$BearerType;

    .line 45
    new-instance v0, Lcom/android/internal/telephony/cat/BearerDescription$BearerType;

    const-string v1, "MOBILE_PS_EXTENDED_QOS"

    const/4 v2, 0x7

    const/16 v3, 0x9

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cat/BearerDescription$BearerType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/BearerDescription$BearerType;->MOBILE_PS_EXTENDED_QOS:Lcom/android/internal/telephony/cat/BearerDescription$BearerType;

    .line 46
    new-instance v0, Lcom/android/internal/telephony/cat/BearerDescription$BearerType;

    const-string v1, "I_WLAN"

    const/16 v2, 0x8

    const/16 v3, 0xa

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cat/BearerDescription$BearerType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/BearerDescription$BearerType;->I_WLAN:Lcom/android/internal/telephony/cat/BearerDescription$BearerType;

    .line 47
    new-instance v0, Lcom/android/internal/telephony/cat/BearerDescription$BearerType;

    const-string v1, "USB"

    const/16 v2, 0x9

    const/16 v3, 0x10

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cat/BearerDescription$BearerType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/BearerDescription$BearerType;->USB:Lcom/android/internal/telephony/cat/BearerDescription$BearerType;

    .line 37
    const/16 v0, 0xa

    new-array v0, v0, [Lcom/android/internal/telephony/cat/BearerDescription$BearerType;

    const/4 v1, 0x0

    sget-object v2, Lcom/android/internal/telephony/cat/BearerDescription$BearerType;->MOBILE_CSD:Lcom/android/internal/telephony/cat/BearerDescription$BearerType;

    aput-object v2, v0, v1

    sget-object v1, Lcom/android/internal/telephony/cat/BearerDescription$BearerType;->MOBILE_PS:Lcom/android/internal/telephony/cat/BearerDescription$BearerType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/internal/telephony/cat/BearerDescription$BearerType;->DEFAULT_BEARER:Lcom/android/internal/telephony/cat/BearerDescription$BearerType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/internal/telephony/cat/BearerDescription$BearerType;->LOCAL_LINK:Lcom/android/internal/telephony/cat/BearerDescription$BearerType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/internal/telephony/cat/BearerDescription$BearerType;->BLUETOOTH:Lcom/android/internal/telephony/cat/BearerDescription$BearerType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/android/internal/telephony/cat/BearerDescription$BearerType;->IRDA:Lcom/android/internal/telephony/cat/BearerDescription$BearerType;

    aput-object v1, v0, v8

    const/4 v1, 0x6

    sget-object v2, Lcom/android/internal/telephony/cat/BearerDescription$BearerType;->RS232:Lcom/android/internal/telephony/cat/BearerDescription$BearerType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/android/internal/telephony/cat/BearerDescription$BearerType;->MOBILE_PS_EXTENDED_QOS:Lcom/android/internal/telephony/cat/BearerDescription$BearerType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/android/internal/telephony/cat/BearerDescription$BearerType;->I_WLAN:Lcom/android/internal/telephony/cat/BearerDescription$BearerType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/android/internal/telephony/cat/BearerDescription$BearerType;->USB:Lcom/android/internal/telephony/cat/BearerDescription$BearerType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/telephony/cat/BearerDescription$BearerType;->$VALUES:[Lcom/android/internal/telephony/cat/BearerDescription$BearerType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .parameter
    .parameter
    .parameter "value"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 52
    iput p3, p0, Lcom/android/internal/telephony/cat/BearerDescription$BearerType;->mValue:I

    .line 53
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/cat/BearerDescription$BearerType;
    .locals 1
    .parameter "name"

    .prologue
    .line 37
    const-class v0, Lcom/android/internal/telephony/cat/BearerDescription$BearerType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/cat/BearerDescription$BearerType;

    return-object v0
.end method

.method public static values()[Lcom/android/internal/telephony/cat/BearerDescription$BearerType;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/android/internal/telephony/cat/BearerDescription$BearerType;->$VALUES:[Lcom/android/internal/telephony/cat/BearerDescription$BearerType;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/cat/BearerDescription$BearerType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/cat/BearerDescription$BearerType;

    return-object v0
.end method


# virtual methods
.method public value()I
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lcom/android/internal/telephony/cat/BearerDescription$BearerType;->mValue:I

    return v0
.end method

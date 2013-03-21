.class public final enum Lcom/android/internal/telephony/OperatorInfo$SelectionMode;
.super Ljava/lang/Enum;
.source "OperatorInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/OperatorInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SelectionMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/telephony/OperatorInfo$SelectionMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/telephony/OperatorInfo$SelectionMode;

.field public static final enum AUTOMATIC:Lcom/android/internal/telephony/OperatorInfo$SelectionMode;

.field public static final enum MANUAL:Lcom/android/internal/telephony/OperatorInfo$SelectionMode;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 39
    new-instance v0, Lcom/android/internal/telephony/OperatorInfo$SelectionMode;

    const-string v1, "AUTOMATIC"

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/OperatorInfo$SelectionMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/OperatorInfo$SelectionMode;->AUTOMATIC:Lcom/android/internal/telephony/OperatorInfo$SelectionMode;

    .line 40
    new-instance v0, Lcom/android/internal/telephony/OperatorInfo$SelectionMode;

    const-string v1, "MANUAL"

    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/OperatorInfo$SelectionMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/OperatorInfo$SelectionMode;->MANUAL:Lcom/android/internal/telephony/OperatorInfo$SelectionMode;

    .line 38
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/internal/telephony/OperatorInfo$SelectionMode;

    sget-object v1, Lcom/android/internal/telephony/OperatorInfo$SelectionMode;->AUTOMATIC:Lcom/android/internal/telephony/OperatorInfo$SelectionMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/OperatorInfo$SelectionMode;->MANUAL:Lcom/android/internal/telephony/OperatorInfo$SelectionMode;

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/internal/telephony/OperatorInfo$SelectionMode;->$VALUES:[Lcom/android/internal/telephony/OperatorInfo$SelectionMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/OperatorInfo$SelectionMode;
    .locals 1
    .parameter "name"

    .prologue
    .line 38
    const-class v0, Lcom/android/internal/telephony/OperatorInfo$SelectionMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/OperatorInfo$SelectionMode;

    return-object v0
.end method

.method public static values()[Lcom/android/internal/telephony/OperatorInfo$SelectionMode;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/android/internal/telephony/OperatorInfo$SelectionMode;->$VALUES:[Lcom/android/internal/telephony/OperatorInfo$SelectionMode;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/OperatorInfo$SelectionMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/OperatorInfo$SelectionMode;

    return-object v0
.end method

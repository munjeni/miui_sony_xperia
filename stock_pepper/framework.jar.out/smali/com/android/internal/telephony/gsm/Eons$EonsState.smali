.class public final enum Lcom/android/internal/telephony/gsm/Eons$EonsState;
.super Ljava/lang/Enum;
.source "Eons.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/Eons;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EonsState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/telephony/gsm/Eons$EonsState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/telephony/gsm/Eons$EonsState;

.field public static final enum DISABLED:Lcom/android/internal/telephony/gsm/Eons$EonsState;

.field public static final enum INITING:Lcom/android/internal/telephony/gsm/Eons$EonsState;

.field public static final enum PNN_AND_OPL_PRESENT:Lcom/android/internal/telephony/gsm/Eons$EonsState;

.field public static final enum PNN_PRESENT:Lcom/android/internal/telephony/gsm/Eons$EonsState;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 54
    new-instance v0, Lcom/android/internal/telephony/gsm/Eons$EonsState;

    const-string v1, "INITING"

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/gsm/Eons$EonsState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/gsm/Eons$EonsState;->INITING:Lcom/android/internal/telephony/gsm/Eons$EonsState;

    .line 55
    new-instance v0, Lcom/android/internal/telephony/gsm/Eons$EonsState;

    const-string v1, "DISABLED"

    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/gsm/Eons$EonsState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/gsm/Eons$EonsState;->DISABLED:Lcom/android/internal/telephony/gsm/Eons$EonsState;

    .line 56
    new-instance v0, Lcom/android/internal/telephony/gsm/Eons$EonsState;

    const-string v1, "PNN_PRESENT"

    invoke-direct {v0, v1, v4}, Lcom/android/internal/telephony/gsm/Eons$EonsState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/gsm/Eons$EonsState;->PNN_PRESENT:Lcom/android/internal/telephony/gsm/Eons$EonsState;

    .line 57
    new-instance v0, Lcom/android/internal/telephony/gsm/Eons$EonsState;

    const-string v1, "PNN_AND_OPL_PRESENT"

    invoke-direct {v0, v1, v5}, Lcom/android/internal/telephony/gsm/Eons$EonsState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/gsm/Eons$EonsState;->PNN_AND_OPL_PRESENT:Lcom/android/internal/telephony/gsm/Eons$EonsState;

    .line 53
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/internal/telephony/gsm/Eons$EonsState;

    sget-object v1, Lcom/android/internal/telephony/gsm/Eons$EonsState;->INITING:Lcom/android/internal/telephony/gsm/Eons$EonsState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/gsm/Eons$EonsState;->DISABLED:Lcom/android/internal/telephony/gsm/Eons$EonsState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/internal/telephony/gsm/Eons$EonsState;->PNN_PRESENT:Lcom/android/internal/telephony/gsm/Eons$EonsState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/internal/telephony/gsm/Eons$EonsState;->PNN_AND_OPL_PRESENT:Lcom/android/internal/telephony/gsm/Eons$EonsState;

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/internal/telephony/gsm/Eons$EonsState;->$VALUES:[Lcom/android/internal/telephony/gsm/Eons$EonsState;

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
    .line 53
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/gsm/Eons$EonsState;
    .locals 1
    .parameter "name"

    .prologue
    .line 53
    const-class v0, Lcom/android/internal/telephony/gsm/Eons$EonsState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/Eons$EonsState;

    return-object v0
.end method

.method public static values()[Lcom/android/internal/telephony/gsm/Eons$EonsState;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/android/internal/telephony/gsm/Eons$EonsState;->$VALUES:[Lcom/android/internal/telephony/gsm/Eons$EonsState;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/gsm/Eons$EonsState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/gsm/Eons$EonsState;

    return-object v0
.end method


# virtual methods
.method public isDisabled()Z
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lcom/android/internal/telephony/gsm/Eons$EonsState;->DISABLED:Lcom/android/internal/telephony/gsm/Eons$EonsState;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isIniting()Z
    .locals 1

    .prologue
    .line 60
    sget-object v0, Lcom/android/internal/telephony/gsm/Eons$EonsState;->INITING:Lcom/android/internal/telephony/gsm/Eons$EonsState;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPnnAndOplPresent()Z
    .locals 1

    .prologue
    .line 72
    sget-object v0, Lcom/android/internal/telephony/gsm/Eons$EonsState;->PNN_AND_OPL_PRESENT:Lcom/android/internal/telephony/gsm/Eons$EonsState;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPnnPresent()Z
    .locals 1

    .prologue
    .line 68
    sget-object v0, Lcom/android/internal/telephony/gsm/Eons$EonsState;->PNN_PRESENT:Lcom/android/internal/telephony/gsm/Eons$EonsState;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

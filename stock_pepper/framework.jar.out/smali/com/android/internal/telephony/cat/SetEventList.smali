.class public final enum Lcom/android/internal/telephony/cat/SetEventList;
.super Ljava/lang/Enum;
.source "SetEventList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/telephony/cat/SetEventList;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/telephony/cat/SetEventList;

.field public static final enum BROWSER_TERMINATION_EVENT:Lcom/android/internal/telephony/cat/SetEventList;

.field public static final enum ERROR_TERMINATION:Lcom/android/internal/telephony/cat/SetEventList;

.field public static final enum IDLE_SCREEN_AVAILABLE_EVENT:Lcom/android/internal/telephony/cat/SetEventList;

.field public static final enum LANGUAGE_SELECTION_EVENT:Lcom/android/internal/telephony/cat/SetEventList;

.field public static final enum NO_EVENT:Lcom/android/internal/telephony/cat/SetEventList;

.field public static final enum USER_ACTIVITY_EVENT:Lcom/android/internal/telephony/cat/SetEventList;

.field public static final enum USER_TERMINATION:Lcom/android/internal/telephony/cat/SetEventList;


# instance fields
.field private mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x5

    const/4 v6, 0x4

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 33
    new-instance v0, Lcom/android/internal/telephony/cat/SetEventList;

    const-string v1, "USER_ACTIVITY_EVENT"

    invoke-direct {v0, v1, v4, v6}, Lcom/android/internal/telephony/cat/SetEventList;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/SetEventList;->USER_ACTIVITY_EVENT:Lcom/android/internal/telephony/cat/SetEventList;

    .line 35
    new-instance v0, Lcom/android/internal/telephony/cat/SetEventList;

    const-string v1, "IDLE_SCREEN_AVAILABLE_EVENT"

    invoke-direct {v0, v1, v5, v7}, Lcom/android/internal/telephony/cat/SetEventList;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/SetEventList;->IDLE_SCREEN_AVAILABLE_EVENT:Lcom/android/internal/telephony/cat/SetEventList;

    .line 37
    new-instance v0, Lcom/android/internal/telephony/cat/SetEventList;

    const-string v1, "LANGUAGE_SELECTION_EVENT"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v8, v2}, Lcom/android/internal/telephony/cat/SetEventList;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/SetEventList;->LANGUAGE_SELECTION_EVENT:Lcom/android/internal/telephony/cat/SetEventList;

    .line 39
    new-instance v0, Lcom/android/internal/telephony/cat/SetEventList;

    const-string v1, "BROWSER_TERMINATION_EVENT"

    const/4 v2, 0x3

    const/16 v3, 0x8

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cat/SetEventList;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/SetEventList;->BROWSER_TERMINATION_EVENT:Lcom/android/internal/telephony/cat/SetEventList;

    .line 45
    new-instance v0, Lcom/android/internal/telephony/cat/SetEventList;

    const-string v1, "NO_EVENT"

    const/16 v2, 0xff

    invoke-direct {v0, v1, v6, v2}, Lcom/android/internal/telephony/cat/SetEventList;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/SetEventList;->NO_EVENT:Lcom/android/internal/telephony/cat/SetEventList;

    .line 47
    new-instance v0, Lcom/android/internal/telephony/cat/SetEventList;

    const-string v1, "USER_TERMINATION"

    invoke-direct {v0, v1, v7, v4}, Lcom/android/internal/telephony/cat/SetEventList;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/SetEventList;->USER_TERMINATION:Lcom/android/internal/telephony/cat/SetEventList;

    .line 48
    new-instance v0, Lcom/android/internal/telephony/cat/SetEventList;

    const-string v1, "ERROR_TERMINATION"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2, v5}, Lcom/android/internal/telephony/cat/SetEventList;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/SetEventList;->ERROR_TERMINATION:Lcom/android/internal/telephony/cat/SetEventList;

    .line 31
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/android/internal/telephony/cat/SetEventList;

    sget-object v1, Lcom/android/internal/telephony/cat/SetEventList;->USER_ACTIVITY_EVENT:Lcom/android/internal/telephony/cat/SetEventList;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/internal/telephony/cat/SetEventList;->IDLE_SCREEN_AVAILABLE_EVENT:Lcom/android/internal/telephony/cat/SetEventList;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/internal/telephony/cat/SetEventList;->LANGUAGE_SELECTION_EVENT:Lcom/android/internal/telephony/cat/SetEventList;

    aput-object v1, v0, v8

    const/4 v1, 0x3

    sget-object v2, Lcom/android/internal/telephony/cat/SetEventList;->BROWSER_TERMINATION_EVENT:Lcom/android/internal/telephony/cat/SetEventList;

    aput-object v2, v0, v1

    sget-object v1, Lcom/android/internal/telephony/cat/SetEventList;->NO_EVENT:Lcom/android/internal/telephony/cat/SetEventList;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/internal/telephony/cat/SetEventList;->USER_TERMINATION:Lcom/android/internal/telephony/cat/SetEventList;

    aput-object v1, v0, v7

    const/4 v1, 0x6

    sget-object v2, Lcom/android/internal/telephony/cat/SetEventList;->ERROR_TERMINATION:Lcom/android/internal/telephony/cat/SetEventList;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/telephony/cat/SetEventList;->$VALUES:[Lcom/android/internal/telephony/cat/SetEventList;

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
    .line 52
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 53
    iput p3, p0, Lcom/android/internal/telephony/cat/SetEventList;->mValue:I

    .line 54
    return-void
.end method

.method public static fromInt(I)Lcom/android/internal/telephony/cat/SetEventList;
    .locals 5
    .parameter "value"

    .prologue
    .line 61
    invoke-static {}, Lcom/android/internal/telephony/cat/SetEventList;->values()[Lcom/android/internal/telephony/cat/SetEventList;

    move-result-object v0

    .local v0, arr$:[Lcom/android/internal/telephony/cat/SetEventList;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 62
    .local v3, r:Lcom/android/internal/telephony/cat/SetEventList;
    iget v4, v3, Lcom/android/internal/telephony/cat/SetEventList;->mValue:I

    if-ne v4, p0, :cond_0

    .line 66
    .end local v3           #r:Lcom/android/internal/telephony/cat/SetEventList;
    :goto_1
    return-object v3

    .line 61
    .restart local v3       #r:Lcom/android/internal/telephony/cat/SetEventList;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 66
    .end local v3           #r:Lcom/android/internal/telephony/cat/SetEventList;
    :cond_1
    sget-object v3, Lcom/android/internal/telephony/cat/SetEventList;->NO_EVENT:Lcom/android/internal/telephony/cat/SetEventList;

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/cat/SetEventList;
    .locals 1
    .parameter "name"

    .prologue
    .line 31
    const-class v0, Lcom/android/internal/telephony/cat/SetEventList;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/cat/SetEventList;

    return-object v0
.end method

.method public static values()[Lcom/android/internal/telephony/cat/SetEventList;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/android/internal/telephony/cat/SetEventList;->$VALUES:[Lcom/android/internal/telephony/cat/SetEventList;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/cat/SetEventList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/cat/SetEventList;

    return-object v0
.end method


# virtual methods
.method public value()I
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lcom/android/internal/telephony/cat/SetEventList;->mValue:I

    return v0
.end method

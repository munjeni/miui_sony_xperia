.class public final enum Lcom/android/internal/widget/LockPatternUtils$PatternUnlockMode;
.super Ljava/lang/Enum;
.source "LockPatternUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/LockPatternUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PatternUnlockMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/widget/LockPatternUtils$PatternUnlockMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/widget/LockPatternUtils$PatternUnlockMode;

.field public static final enum Account:Lcom/android/internal/widget/LockPatternUtils$PatternUnlockMode;

.field public static final enum None:Lcom/android/internal/widget/LockPatternUtils$PatternUnlockMode;

.field public static final enum Question:Lcom/android/internal/widget/LockPatternUtils$PatternUnlockMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 166
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils$PatternUnlockMode;

    const-string v1, "None"

    invoke-direct {v0, v1, v2}, Lcom/android/internal/widget/LockPatternUtils$PatternUnlockMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/widget/LockPatternUtils$PatternUnlockMode;->None:Lcom/android/internal/widget/LockPatternUtils$PatternUnlockMode;

    .line 167
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils$PatternUnlockMode;

    const-string v1, "Question"

    invoke-direct {v0, v1, v3}, Lcom/android/internal/widget/LockPatternUtils$PatternUnlockMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/widget/LockPatternUtils$PatternUnlockMode;->Question:Lcom/android/internal/widget/LockPatternUtils$PatternUnlockMode;

    .line 168
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils$PatternUnlockMode;

    const-string v1, "Account"

    invoke-direct {v0, v1, v4}, Lcom/android/internal/widget/LockPatternUtils$PatternUnlockMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/widget/LockPatternUtils$PatternUnlockMode;->Account:Lcom/android/internal/widget/LockPatternUtils$PatternUnlockMode;

    .line 165
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/internal/widget/LockPatternUtils$PatternUnlockMode;

    sget-object v1, Lcom/android/internal/widget/LockPatternUtils$PatternUnlockMode;->None:Lcom/android/internal/widget/LockPatternUtils$PatternUnlockMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/widget/LockPatternUtils$PatternUnlockMode;->Question:Lcom/android/internal/widget/LockPatternUtils$PatternUnlockMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/internal/widget/LockPatternUtils$PatternUnlockMode;->Account:Lcom/android/internal/widget/LockPatternUtils$PatternUnlockMode;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/internal/widget/LockPatternUtils$PatternUnlockMode;->$VALUES:[Lcom/android/internal/widget/LockPatternUtils$PatternUnlockMode;

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
    .line 165
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/widget/LockPatternUtils$PatternUnlockMode;
    .locals 1
    .parameter "name"

    .prologue
    .line 165
    const-class v0, Lcom/android/internal/widget/LockPatternUtils$PatternUnlockMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/LockPatternUtils$PatternUnlockMode;

    return-object v0
.end method

.method public static values()[Lcom/android/internal/widget/LockPatternUtils$PatternUnlockMode;
    .locals 1

    .prologue
    .line 165
    sget-object v0, Lcom/android/internal/widget/LockPatternUtils$PatternUnlockMode;->$VALUES:[Lcom/android/internal/widget/LockPatternUtils$PatternUnlockMode;

    invoke-virtual {v0}, [Lcom/android/internal/widget/LockPatternUtils$PatternUnlockMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/widget/LockPatternUtils$PatternUnlockMode;

    return-object v0
.end method

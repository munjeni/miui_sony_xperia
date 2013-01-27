.class final enum Lcom/android/internal/policy/impl/MiuiLockScreen$Status;
.super Ljava/lang/Enum;
.source "MiuiLockScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/MiuiLockScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/policy/impl/MiuiLockScreen$Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/policy/impl/MiuiLockScreen$Status;

.field public static final enum NetworkLocked:Lcom/android/internal/policy/impl/MiuiLockScreen$Status;

.field public static final enum Normal:Lcom/android/internal/policy/impl/MiuiLockScreen$Status;

.field public static final enum SimLocked:Lcom/android/internal/policy/impl/MiuiLockScreen$Status;

.field public static final enum SimMissing:Lcom/android/internal/policy/impl/MiuiLockScreen$Status;

.field public static final enum SimMissingLocked:Lcom/android/internal/policy/impl/MiuiLockScreen$Status;

.field public static final enum SimPukLocked:Lcom/android/internal/policy/impl/MiuiLockScreen$Status;


# instance fields
.field private final mShowStatusLines:Z


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 194
    new-instance v0, Lcom/android/internal/policy/impl/MiuiLockScreen$Status;

    const-string v1, "Normal"

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/policy/impl/MiuiLockScreen$Status;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/android/internal/policy/impl/MiuiLockScreen$Status;->Normal:Lcom/android/internal/policy/impl/MiuiLockScreen$Status;

    .line 199
    new-instance v0, Lcom/android/internal/policy/impl/MiuiLockScreen$Status;

    const-string v1, "NetworkLocked"

    invoke-direct {v0, v1, v4, v4}, Lcom/android/internal/policy/impl/MiuiLockScreen$Status;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/android/internal/policy/impl/MiuiLockScreen$Status;->NetworkLocked:Lcom/android/internal/policy/impl/MiuiLockScreen$Status;

    .line 204
    new-instance v0, Lcom/android/internal/policy/impl/MiuiLockScreen$Status;

    const-string v1, "SimMissing"

    invoke-direct {v0, v1, v5, v3}, Lcom/android/internal/policy/impl/MiuiLockScreen$Status;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/android/internal/policy/impl/MiuiLockScreen$Status;->SimMissing:Lcom/android/internal/policy/impl/MiuiLockScreen$Status;

    .line 210
    new-instance v0, Lcom/android/internal/policy/impl/MiuiLockScreen$Status;

    const-string v1, "SimMissingLocked"

    invoke-direct {v0, v1, v6, v3}, Lcom/android/internal/policy/impl/MiuiLockScreen$Status;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/android/internal/policy/impl/MiuiLockScreen$Status;->SimMissingLocked:Lcom/android/internal/policy/impl/MiuiLockScreen$Status;

    .line 216
    new-instance v0, Lcom/android/internal/policy/impl/MiuiLockScreen$Status;

    const-string v1, "SimPukLocked"

    invoke-direct {v0, v1, v7, v3}, Lcom/android/internal/policy/impl/MiuiLockScreen$Status;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/android/internal/policy/impl/MiuiLockScreen$Status;->SimPukLocked:Lcom/android/internal/policy/impl/MiuiLockScreen$Status;

    .line 221
    new-instance v0, Lcom/android/internal/policy/impl/MiuiLockScreen$Status;

    const-string v1, "SimLocked"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v4}, Lcom/android/internal/policy/impl/MiuiLockScreen$Status;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/android/internal/policy/impl/MiuiLockScreen$Status;->SimLocked:Lcom/android/internal/policy/impl/MiuiLockScreen$Status;

    .line 190
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/android/internal/policy/impl/MiuiLockScreen$Status;

    sget-object v1, Lcom/android/internal/policy/impl/MiuiLockScreen$Status;->Normal:Lcom/android/internal/policy/impl/MiuiLockScreen$Status;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/internal/policy/impl/MiuiLockScreen$Status;->NetworkLocked:Lcom/android/internal/policy/impl/MiuiLockScreen$Status;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/internal/policy/impl/MiuiLockScreen$Status;->SimMissing:Lcom/android/internal/policy/impl/MiuiLockScreen$Status;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/internal/policy/impl/MiuiLockScreen$Status;->SimMissingLocked:Lcom/android/internal/policy/impl/MiuiLockScreen$Status;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/internal/policy/impl/MiuiLockScreen$Status;->SimPukLocked:Lcom/android/internal/policy/impl/MiuiLockScreen$Status;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/android/internal/policy/impl/MiuiLockScreen$Status;->SimLocked:Lcom/android/internal/policy/impl/MiuiLockScreen$Status;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/policy/impl/MiuiLockScreen$Status;->$VALUES:[Lcom/android/internal/policy/impl/MiuiLockScreen$Status;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZ)V
    .locals 0
    .parameter
    .parameter
    .parameter "mShowStatusLines"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    .prologue
    .line 225
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 226
    iput-boolean p3, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$Status;->mShowStatusLines:Z

    .line 227
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/policy/impl/MiuiLockScreen$Status;
    .locals 1
    .parameter "name"

    .prologue
    .line 190
    const-class v0, Lcom/android/internal/policy/impl/MiuiLockScreen$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/MiuiLockScreen$Status;

    return-object v0
.end method

.method public static values()[Lcom/android/internal/policy/impl/MiuiLockScreen$Status;
    .locals 1

    .prologue
    .line 190
    sget-object v0, Lcom/android/internal/policy/impl/MiuiLockScreen$Status;->$VALUES:[Lcom/android/internal/policy/impl/MiuiLockScreen$Status;

    invoke-virtual {v0}, [Lcom/android/internal/policy/impl/MiuiLockScreen$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/policy/impl/MiuiLockScreen$Status;

    return-object v0
.end method


# virtual methods
.method public showStatusLines()Z
    .locals 1

    .prologue
    .line 234
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$Status;->mShowStatusLines:Z

    return v0
.end method

.class final enum Lcom/android/internal/policy/impl/EmergencyMasterResetScreen$Mode;
.super Ljava/lang/Enum;
.source "EmergencyMasterResetScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/EmergencyMasterResetScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Mode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/policy/impl/EmergencyMasterResetScreen$Mode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/policy/impl/EmergencyMasterResetScreen$Mode;

.field public static final enum FinalConfirmation:Lcom/android/internal/policy/impl/EmergencyMasterResetScreen$Mode;

.field public static final enum LowBattery:Lcom/android/internal/policy/impl/EmergencyMasterResetScreen$Mode;

.field public static final enum None:Lcom/android/internal/policy/impl/EmergencyMasterResetScreen$Mode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 77
    new-instance v0, Lcom/android/internal/policy/impl/EmergencyMasterResetScreen$Mode;

    const-string v1, "None"

    invoke-direct {v0, v1, v2}, Lcom/android/internal/policy/impl/EmergencyMasterResetScreen$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/policy/impl/EmergencyMasterResetScreen$Mode;->None:Lcom/android/internal/policy/impl/EmergencyMasterResetScreen$Mode;

    .line 79
    new-instance v0, Lcom/android/internal/policy/impl/EmergencyMasterResetScreen$Mode;

    const-string v1, "LowBattery"

    invoke-direct {v0, v1, v3}, Lcom/android/internal/policy/impl/EmergencyMasterResetScreen$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/policy/impl/EmergencyMasterResetScreen$Mode;->LowBattery:Lcom/android/internal/policy/impl/EmergencyMasterResetScreen$Mode;

    .line 81
    new-instance v0, Lcom/android/internal/policy/impl/EmergencyMasterResetScreen$Mode;

    const-string v1, "FinalConfirmation"

    invoke-direct {v0, v1, v4}, Lcom/android/internal/policy/impl/EmergencyMasterResetScreen$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/policy/impl/EmergencyMasterResetScreen$Mode;->FinalConfirmation:Lcom/android/internal/policy/impl/EmergencyMasterResetScreen$Mode;

    .line 75
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/internal/policy/impl/EmergencyMasterResetScreen$Mode;

    sget-object v1, Lcom/android/internal/policy/impl/EmergencyMasterResetScreen$Mode;->None:Lcom/android/internal/policy/impl/EmergencyMasterResetScreen$Mode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/policy/impl/EmergencyMasterResetScreen$Mode;->LowBattery:Lcom/android/internal/policy/impl/EmergencyMasterResetScreen$Mode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/internal/policy/impl/EmergencyMasterResetScreen$Mode;->FinalConfirmation:Lcom/android/internal/policy/impl/EmergencyMasterResetScreen$Mode;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/internal/policy/impl/EmergencyMasterResetScreen$Mode;->$VALUES:[Lcom/android/internal/policy/impl/EmergencyMasterResetScreen$Mode;

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
    .line 75
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/policy/impl/EmergencyMasterResetScreen$Mode;
    .locals 1
    .parameter "name"

    .prologue
    .line 75
    const-class v0, Lcom/android/internal/policy/impl/EmergencyMasterResetScreen$Mode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/EmergencyMasterResetScreen$Mode;

    return-object v0
.end method

.method public static values()[Lcom/android/internal/policy/impl/EmergencyMasterResetScreen$Mode;
    .locals 1

    .prologue
    .line 75
    sget-object v0, Lcom/android/internal/policy/impl/EmergencyMasterResetScreen$Mode;->$VALUES:[Lcom/android/internal/policy/impl/EmergencyMasterResetScreen$Mode;

    invoke-virtual {v0}, [Lcom/android/internal/policy/impl/EmergencyMasterResetScreen$Mode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/policy/impl/EmergencyMasterResetScreen$Mode;

    return-object v0
.end method

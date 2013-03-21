.class public final enum Landroid/os/storage/StorageManager$StorageType;
.super Ljava/lang/Enum;
.source "StorageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/storage/StorageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "StorageType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/os/storage/StorageManager$StorageType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/os/storage/StorageManager$StorageType;

.field public static final enum EXTERNAL_CARD:Landroid/os/storage/StorageManager$StorageType;

.field public static final enum EXTERNAL_USB:Landroid/os/storage/StorageManager$StorageType;

.field public static final enum INTERNAL:Landroid/os/storage/StorageManager$StorageType;

.field public static final enum UNKNOWN:Landroid/os/storage/StorageManager$StorageType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 593
    new-instance v0, Landroid/os/storage/StorageManager$StorageType;

    const-string v1, "INTERNAL"

    invoke-direct {v0, v1, v2}, Landroid/os/storage/StorageManager$StorageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/os/storage/StorageManager$StorageType;->INTERNAL:Landroid/os/storage/StorageManager$StorageType;

    .line 596
    new-instance v0, Landroid/os/storage/StorageManager$StorageType;

    const-string v1, "EXTERNAL_CARD"

    invoke-direct {v0, v1, v3}, Landroid/os/storage/StorageManager$StorageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/os/storage/StorageManager$StorageType;->EXTERNAL_CARD:Landroid/os/storage/StorageManager$StorageType;

    .line 599
    new-instance v0, Landroid/os/storage/StorageManager$StorageType;

    const-string v1, "EXTERNAL_USB"

    invoke-direct {v0, v1, v4}, Landroid/os/storage/StorageManager$StorageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/os/storage/StorageManager$StorageType;->EXTERNAL_USB:Landroid/os/storage/StorageManager$StorageType;

    .line 602
    new-instance v0, Landroid/os/storage/StorageManager$StorageType;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v5}, Landroid/os/storage/StorageManager$StorageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/os/storage/StorageManager$StorageType;->UNKNOWN:Landroid/os/storage/StorageManager$StorageType;

    .line 591
    const/4 v0, 0x4

    new-array v0, v0, [Landroid/os/storage/StorageManager$StorageType;

    sget-object v1, Landroid/os/storage/StorageManager$StorageType;->INTERNAL:Landroid/os/storage/StorageManager$StorageType;

    aput-object v1, v0, v2

    sget-object v1, Landroid/os/storage/StorageManager$StorageType;->EXTERNAL_CARD:Landroid/os/storage/StorageManager$StorageType;

    aput-object v1, v0, v3

    sget-object v1, Landroid/os/storage/StorageManager$StorageType;->EXTERNAL_USB:Landroid/os/storage/StorageManager$StorageType;

    aput-object v1, v0, v4

    sget-object v1, Landroid/os/storage/StorageManager$StorageType;->UNKNOWN:Landroid/os/storage/StorageManager$StorageType;

    aput-object v1, v0, v5

    sput-object v0, Landroid/os/storage/StorageManager$StorageType;->$VALUES:[Landroid/os/storage/StorageManager$StorageType;

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
    .line 591
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/os/storage/StorageManager$StorageType;
    .locals 1
    .parameter "name"

    .prologue
    .line 591
    const-class v0, Landroid/os/storage/StorageManager$StorageType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager$StorageType;

    return-object v0
.end method

.method public static values()[Landroid/os/storage/StorageManager$StorageType;
    .locals 1

    .prologue
    .line 591
    sget-object v0, Landroid/os/storage/StorageManager$StorageType;->$VALUES:[Landroid/os/storage/StorageManager$StorageType;

    invoke-virtual {v0}, [Landroid/os/storage/StorageManager$StorageType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/os/storage/StorageManager$StorageType;

    return-object v0
.end method

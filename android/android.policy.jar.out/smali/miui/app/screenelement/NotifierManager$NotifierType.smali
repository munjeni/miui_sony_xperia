.class public final enum Lmiui/app/screenelement/NotifierManager$NotifierType;
.super Ljava/lang/Enum;
.source "NotifierManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/app/screenelement/NotifierManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NotifierType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lmiui/app/screenelement/NotifierManager$NotifierType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lmiui/app/screenelement/NotifierManager$NotifierType;

.field public static final enum Battery:Lmiui/app/screenelement/NotifierManager$NotifierType;

.field public static final enum Bluetooth:Lmiui/app/screenelement/NotifierManager$NotifierType;

.field public static final enum MobileData:Lmiui/app/screenelement/NotifierManager$NotifierType;

.field public static final enum RingMode:Lmiui/app/screenelement/NotifierManager$NotifierType;

.field public static final enum UsbState:Lmiui/app/screenelement/NotifierManager$NotifierType;

.field public static final enum VolumeChanged:Lmiui/app/screenelement/NotifierManager$NotifierType;

.field public static final enum WifiState:Lmiui/app/screenelement/NotifierManager$NotifierType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 27
    new-instance v0, Lmiui/app/screenelement/NotifierManager$NotifierType;

    const-string v1, "Battery"

    invoke-direct {v0, v1, v3}, Lmiui/app/screenelement/NotifierManager$NotifierType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/app/screenelement/NotifierManager$NotifierType;->Battery:Lmiui/app/screenelement/NotifierManager$NotifierType;

    .line 28
    new-instance v0, Lmiui/app/screenelement/NotifierManager$NotifierType;

    const-string v1, "UsbState"

    invoke-direct {v0, v1, v4}, Lmiui/app/screenelement/NotifierManager$NotifierType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/app/screenelement/NotifierManager$NotifierType;->UsbState:Lmiui/app/screenelement/NotifierManager$NotifierType;

    .line 29
    new-instance v0, Lmiui/app/screenelement/NotifierManager$NotifierType;

    const-string v1, "Bluetooth"

    invoke-direct {v0, v1, v5}, Lmiui/app/screenelement/NotifierManager$NotifierType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/app/screenelement/NotifierManager$NotifierType;->Bluetooth:Lmiui/app/screenelement/NotifierManager$NotifierType;

    .line 30
    new-instance v0, Lmiui/app/screenelement/NotifierManager$NotifierType;

    const-string v1, "WifiState"

    invoke-direct {v0, v1, v6}, Lmiui/app/screenelement/NotifierManager$NotifierType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/app/screenelement/NotifierManager$NotifierType;->WifiState:Lmiui/app/screenelement/NotifierManager$NotifierType;

    .line 31
    new-instance v0, Lmiui/app/screenelement/NotifierManager$NotifierType;

    const-string v1, "RingMode"

    invoke-direct {v0, v1, v7}, Lmiui/app/screenelement/NotifierManager$NotifierType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/app/screenelement/NotifierManager$NotifierType;->RingMode:Lmiui/app/screenelement/NotifierManager$NotifierType;

    .line 32
    new-instance v0, Lmiui/app/screenelement/NotifierManager$NotifierType;

    const-string v1, "MobileData"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lmiui/app/screenelement/NotifierManager$NotifierType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/app/screenelement/NotifierManager$NotifierType;->MobileData:Lmiui/app/screenelement/NotifierManager$NotifierType;

    .line 33
    new-instance v0, Lmiui/app/screenelement/NotifierManager$NotifierType;

    const-string v1, "VolumeChanged"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lmiui/app/screenelement/NotifierManager$NotifierType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/app/screenelement/NotifierManager$NotifierType;->VolumeChanged:Lmiui/app/screenelement/NotifierManager$NotifierType;

    .line 26
    const/4 v0, 0x7

    new-array v0, v0, [Lmiui/app/screenelement/NotifierManager$NotifierType;

    sget-object v1, Lmiui/app/screenelement/NotifierManager$NotifierType;->Battery:Lmiui/app/screenelement/NotifierManager$NotifierType;

    aput-object v1, v0, v3

    sget-object v1, Lmiui/app/screenelement/NotifierManager$NotifierType;->UsbState:Lmiui/app/screenelement/NotifierManager$NotifierType;

    aput-object v1, v0, v4

    sget-object v1, Lmiui/app/screenelement/NotifierManager$NotifierType;->Bluetooth:Lmiui/app/screenelement/NotifierManager$NotifierType;

    aput-object v1, v0, v5

    sget-object v1, Lmiui/app/screenelement/NotifierManager$NotifierType;->WifiState:Lmiui/app/screenelement/NotifierManager$NotifierType;

    aput-object v1, v0, v6

    sget-object v1, Lmiui/app/screenelement/NotifierManager$NotifierType;->RingMode:Lmiui/app/screenelement/NotifierManager$NotifierType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lmiui/app/screenelement/NotifierManager$NotifierType;->MobileData:Lmiui/app/screenelement/NotifierManager$NotifierType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lmiui/app/screenelement/NotifierManager$NotifierType;->VolumeChanged:Lmiui/app/screenelement/NotifierManager$NotifierType;

    aput-object v2, v0, v1

    sput-object v0, Lmiui/app/screenelement/NotifierManager$NotifierType;->$VALUES:[Lmiui/app/screenelement/NotifierManager$NotifierType;

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
    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lmiui/app/screenelement/NotifierManager$NotifierType;
    .locals 1
    .parameter "name"

    .prologue
    .line 26
    const-class v0, Lmiui/app/screenelement/NotifierManager$NotifierType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lmiui/app/screenelement/NotifierManager$NotifierType;

    return-object v0
.end method

.method public static values()[Lmiui/app/screenelement/NotifierManager$NotifierType;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lmiui/app/screenelement/NotifierManager$NotifierType;->$VALUES:[Lmiui/app/screenelement/NotifierManager$NotifierType;

    invoke-virtual {v0}, [Lmiui/app/screenelement/NotifierManager$NotifierType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmiui/app/screenelement/NotifierManager$NotifierType;

    return-object v0
.end method

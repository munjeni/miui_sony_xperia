.class final enum Lcom/sonyericsson/customizedsettings/MasterResetService$Settings_Provider;
.super Ljava/lang/Enum;
.source "MasterResetService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/customizedsettings/MasterResetService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Settings_Provider"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonyericsson/customizedsettings/MasterResetService$Settings_Provider;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/customizedsettings/MasterResetService$Settings_Provider;

.field public static final enum SECURE:Lcom/sonyericsson/customizedsettings/MasterResetService$Settings_Provider;

.field public static final enum SYSTEM:Lcom/sonyericsson/customizedsettings/MasterResetService$Settings_Provider;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 95
    new-instance v0, Lcom/sonyericsson/customizedsettings/MasterResetService$Settings_Provider;

    const-string v1, "SYSTEM"

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/customizedsettings/MasterResetService$Settings_Provider;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/customizedsettings/MasterResetService$Settings_Provider;->SYSTEM:Lcom/sonyericsson/customizedsettings/MasterResetService$Settings_Provider;

    new-instance v0, Lcom/sonyericsson/customizedsettings/MasterResetService$Settings_Provider;

    const-string v1, "SECURE"

    invoke-direct {v0, v1, v3}, Lcom/sonyericsson/customizedsettings/MasterResetService$Settings_Provider;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/customizedsettings/MasterResetService$Settings_Provider;->SECURE:Lcom/sonyericsson/customizedsettings/MasterResetService$Settings_Provider;

    .line 94
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/sonyericsson/customizedsettings/MasterResetService$Settings_Provider;

    sget-object v1, Lcom/sonyericsson/customizedsettings/MasterResetService$Settings_Provider;->SYSTEM:Lcom/sonyericsson/customizedsettings/MasterResetService$Settings_Provider;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/customizedsettings/MasterResetService$Settings_Provider;->SECURE:Lcom/sonyericsson/customizedsettings/MasterResetService$Settings_Provider;

    aput-object v1, v0, v3

    sput-object v0, Lcom/sonyericsson/customizedsettings/MasterResetService$Settings_Provider;->$VALUES:[Lcom/sonyericsson/customizedsettings/MasterResetService$Settings_Provider;

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
    .line 94
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/customizedsettings/MasterResetService$Settings_Provider;
    .locals 1
    .parameter "name"

    .prologue
    .line 94
    const-class v0, Lcom/sonyericsson/customizedsettings/MasterResetService$Settings_Provider;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/customizedsettings/MasterResetService$Settings_Provider;

    return-object v0
.end method

.method public static values()[Lcom/sonyericsson/customizedsettings/MasterResetService$Settings_Provider;
    .locals 1

    .prologue
    .line 94
    sget-object v0, Lcom/sonyericsson/customizedsettings/MasterResetService$Settings_Provider;->$VALUES:[Lcom/sonyericsson/customizedsettings/MasterResetService$Settings_Provider;

    invoke-virtual {v0}, [Lcom/sonyericsson/customizedsettings/MasterResetService$Settings_Provider;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/customizedsettings/MasterResetService$Settings_Provider;

    return-object v0
.end method

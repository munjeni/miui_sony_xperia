.class final enum Landroid/mtp/MtpDatabase$PropValueType;
.super Ljava/lang/Enum;
.source "MtpDatabase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/mtp/MtpDatabase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "PropValueType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/mtp/MtpDatabase$PropValueType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/mtp/MtpDatabase$PropValueType;

.field public static final enum VALUE_INT:Landroid/mtp/MtpDatabase$PropValueType;

.field public static final enum VALUE_STRING:Landroid/mtp/MtpDatabase$PropValueType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 944
    new-instance v0, Landroid/mtp/MtpDatabase$PropValueType;

    const-string v1, "VALUE_INT"

    invoke-direct {v0, v1, v2}, Landroid/mtp/MtpDatabase$PropValueType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/mtp/MtpDatabase$PropValueType;->VALUE_INT:Landroid/mtp/MtpDatabase$PropValueType;

    .line 945
    new-instance v0, Landroid/mtp/MtpDatabase$PropValueType;

    const-string v1, "VALUE_STRING"

    invoke-direct {v0, v1, v3}, Landroid/mtp/MtpDatabase$PropValueType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/mtp/MtpDatabase$PropValueType;->VALUE_STRING:Landroid/mtp/MtpDatabase$PropValueType;

    .line 943
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/mtp/MtpDatabase$PropValueType;

    sget-object v1, Landroid/mtp/MtpDatabase$PropValueType;->VALUE_INT:Landroid/mtp/MtpDatabase$PropValueType;

    aput-object v1, v0, v2

    sget-object v1, Landroid/mtp/MtpDatabase$PropValueType;->VALUE_STRING:Landroid/mtp/MtpDatabase$PropValueType;

    aput-object v1, v0, v3

    sput-object v0, Landroid/mtp/MtpDatabase$PropValueType;->$VALUES:[Landroid/mtp/MtpDatabase$PropValueType;

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
    .line 943
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/mtp/MtpDatabase$PropValueType;
    .locals 1
    .parameter "name"

    .prologue
    .line 943
    const-class v0, Landroid/mtp/MtpDatabase$PropValueType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/mtp/MtpDatabase$PropValueType;

    return-object v0
.end method

.method public static values()[Landroid/mtp/MtpDatabase$PropValueType;
    .locals 1

    .prologue
    .line 943
    sget-object v0, Landroid/mtp/MtpDatabase$PropValueType;->$VALUES:[Landroid/mtp/MtpDatabase$PropValueType;

    invoke-virtual {v0}, [Landroid/mtp/MtpDatabase$PropValueType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/mtp/MtpDatabase$PropValueType;

    return-object v0
.end method

.class public final enum Lmiui/app/screenelement/data/Expression$BinaryExpression$Ope;
.super Ljava/lang/Enum;
.source "Expression.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/app/screenelement/data/Expression$BinaryExpression;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Ope"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lmiui/app/screenelement/data/Expression$BinaryExpression$Ope;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lmiui/app/screenelement/data/Expression$BinaryExpression$Ope;

.field public static final enum ADD:Lmiui/app/screenelement/data/Expression$BinaryExpression$Ope;

.field public static final enum DIV:Lmiui/app/screenelement/data/Expression$BinaryExpression$Ope;

.field public static final enum INVALID:Lmiui/app/screenelement/data/Expression$BinaryExpression$Ope;

.field public static final enum MIN:Lmiui/app/screenelement/data/Expression$BinaryExpression$Ope;

.field public static final enum MOD:Lmiui/app/screenelement/data/Expression$BinaryExpression$Ope;

.field public static final enum MUL:Lmiui/app/screenelement/data/Expression$BinaryExpression$Ope;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 332
    new-instance v0, Lmiui/app/screenelement/data/Expression$BinaryExpression$Ope;

    const-string v1, "INVALID"

    invoke-direct {v0, v1, v3}, Lmiui/app/screenelement/data/Expression$BinaryExpression$Ope;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/app/screenelement/data/Expression$BinaryExpression$Ope;->INVALID:Lmiui/app/screenelement/data/Expression$BinaryExpression$Ope;

    .line 333
    new-instance v0, Lmiui/app/screenelement/data/Expression$BinaryExpression$Ope;

    const-string v1, "ADD"

    invoke-direct {v0, v1, v4}, Lmiui/app/screenelement/data/Expression$BinaryExpression$Ope;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/app/screenelement/data/Expression$BinaryExpression$Ope;->ADD:Lmiui/app/screenelement/data/Expression$BinaryExpression$Ope;

    .line 334
    new-instance v0, Lmiui/app/screenelement/data/Expression$BinaryExpression$Ope;

    const-string v1, "MIN"

    invoke-direct {v0, v1, v5}, Lmiui/app/screenelement/data/Expression$BinaryExpression$Ope;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/app/screenelement/data/Expression$BinaryExpression$Ope;->MIN:Lmiui/app/screenelement/data/Expression$BinaryExpression$Ope;

    .line 335
    new-instance v0, Lmiui/app/screenelement/data/Expression$BinaryExpression$Ope;

    const-string v1, "MUL"

    invoke-direct {v0, v1, v6}, Lmiui/app/screenelement/data/Expression$BinaryExpression$Ope;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/app/screenelement/data/Expression$BinaryExpression$Ope;->MUL:Lmiui/app/screenelement/data/Expression$BinaryExpression$Ope;

    .line 336
    new-instance v0, Lmiui/app/screenelement/data/Expression$BinaryExpression$Ope;

    const-string v1, "DIV"

    invoke-direct {v0, v1, v7}, Lmiui/app/screenelement/data/Expression$BinaryExpression$Ope;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/app/screenelement/data/Expression$BinaryExpression$Ope;->DIV:Lmiui/app/screenelement/data/Expression$BinaryExpression$Ope;

    .line 337
    new-instance v0, Lmiui/app/screenelement/data/Expression$BinaryExpression$Ope;

    const-string v1, "MOD"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lmiui/app/screenelement/data/Expression$BinaryExpression$Ope;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/app/screenelement/data/Expression$BinaryExpression$Ope;->MOD:Lmiui/app/screenelement/data/Expression$BinaryExpression$Ope;

    .line 331
    const/4 v0, 0x6

    new-array v0, v0, [Lmiui/app/screenelement/data/Expression$BinaryExpression$Ope;

    sget-object v1, Lmiui/app/screenelement/data/Expression$BinaryExpression$Ope;->INVALID:Lmiui/app/screenelement/data/Expression$BinaryExpression$Ope;

    aput-object v1, v0, v3

    sget-object v1, Lmiui/app/screenelement/data/Expression$BinaryExpression$Ope;->ADD:Lmiui/app/screenelement/data/Expression$BinaryExpression$Ope;

    aput-object v1, v0, v4

    sget-object v1, Lmiui/app/screenelement/data/Expression$BinaryExpression$Ope;->MIN:Lmiui/app/screenelement/data/Expression$BinaryExpression$Ope;

    aput-object v1, v0, v5

    sget-object v1, Lmiui/app/screenelement/data/Expression$BinaryExpression$Ope;->MUL:Lmiui/app/screenelement/data/Expression$BinaryExpression$Ope;

    aput-object v1, v0, v6

    sget-object v1, Lmiui/app/screenelement/data/Expression$BinaryExpression$Ope;->DIV:Lmiui/app/screenelement/data/Expression$BinaryExpression$Ope;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lmiui/app/screenelement/data/Expression$BinaryExpression$Ope;->MOD:Lmiui/app/screenelement/data/Expression$BinaryExpression$Ope;

    aput-object v2, v0, v1

    sput-object v0, Lmiui/app/screenelement/data/Expression$BinaryExpression$Ope;->$VALUES:[Lmiui/app/screenelement/data/Expression$BinaryExpression$Ope;

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
    .line 331
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lmiui/app/screenelement/data/Expression$BinaryExpression$Ope;
    .locals 1
    .parameter "name"

    .prologue
    .line 331
    const-class v0, Lmiui/app/screenelement/data/Expression$BinaryExpression$Ope;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lmiui/app/screenelement/data/Expression$BinaryExpression$Ope;

    return-object v0
.end method

.method public static values()[Lmiui/app/screenelement/data/Expression$BinaryExpression$Ope;
    .locals 1

    .prologue
    .line 331
    sget-object v0, Lmiui/app/screenelement/data/Expression$BinaryExpression$Ope;->$VALUES:[Lmiui/app/screenelement/data/Expression$BinaryExpression$Ope;

    invoke-virtual {v0}, [Lmiui/app/screenelement/data/Expression$BinaryExpression$Ope;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmiui/app/screenelement/data/Expression$BinaryExpression$Ope;

    return-object v0
.end method

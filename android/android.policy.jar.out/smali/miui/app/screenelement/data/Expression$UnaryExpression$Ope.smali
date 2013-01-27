.class public final enum Lmiui/app/screenelement/data/Expression$UnaryExpression$Ope;
.super Ljava/lang/Enum;
.source "Expression.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/app/screenelement/data/Expression$UnaryExpression;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Ope"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lmiui/app/screenelement/data/Expression$UnaryExpression$Ope;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lmiui/app/screenelement/data/Expression$UnaryExpression$Ope;

.field public static final enum INVALID:Lmiui/app/screenelement/data/Expression$UnaryExpression$Ope;

.field public static final enum MIN:Lmiui/app/screenelement/data/Expression$UnaryExpression$Ope;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 281
    new-instance v0, Lmiui/app/screenelement/data/Expression$UnaryExpression$Ope;

    const-string v1, "INVALID"

    invoke-direct {v0, v1, v2}, Lmiui/app/screenelement/data/Expression$UnaryExpression$Ope;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/app/screenelement/data/Expression$UnaryExpression$Ope;->INVALID:Lmiui/app/screenelement/data/Expression$UnaryExpression$Ope;

    .line 282
    new-instance v0, Lmiui/app/screenelement/data/Expression$UnaryExpression$Ope;

    const-string v1, "MIN"

    invoke-direct {v0, v1, v3}, Lmiui/app/screenelement/data/Expression$UnaryExpression$Ope;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/app/screenelement/data/Expression$UnaryExpression$Ope;->MIN:Lmiui/app/screenelement/data/Expression$UnaryExpression$Ope;

    .line 280
    const/4 v0, 0x2

    new-array v0, v0, [Lmiui/app/screenelement/data/Expression$UnaryExpression$Ope;

    sget-object v1, Lmiui/app/screenelement/data/Expression$UnaryExpression$Ope;->INVALID:Lmiui/app/screenelement/data/Expression$UnaryExpression$Ope;

    aput-object v1, v0, v2

    sget-object v1, Lmiui/app/screenelement/data/Expression$UnaryExpression$Ope;->MIN:Lmiui/app/screenelement/data/Expression$UnaryExpression$Ope;

    aput-object v1, v0, v3

    sput-object v0, Lmiui/app/screenelement/data/Expression$UnaryExpression$Ope;->$VALUES:[Lmiui/app/screenelement/data/Expression$UnaryExpression$Ope;

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
    .line 280
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lmiui/app/screenelement/data/Expression$UnaryExpression$Ope;
    .locals 1
    .parameter "name"

    .prologue
    .line 280
    const-class v0, Lmiui/app/screenelement/data/Expression$UnaryExpression$Ope;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lmiui/app/screenelement/data/Expression$UnaryExpression$Ope;

    return-object v0
.end method

.method public static values()[Lmiui/app/screenelement/data/Expression$UnaryExpression$Ope;
    .locals 1

    .prologue
    .line 280
    sget-object v0, Lmiui/app/screenelement/data/Expression$UnaryExpression$Ope;->$VALUES:[Lmiui/app/screenelement/data/Expression$UnaryExpression$Ope;

    invoke-virtual {v0}, [Lmiui/app/screenelement/data/Expression$UnaryExpression$Ope;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmiui/app/screenelement/data/Expression$UnaryExpression$Ope;

    return-object v0
.end method

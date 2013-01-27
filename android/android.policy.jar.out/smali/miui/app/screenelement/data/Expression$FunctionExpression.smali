.class Lmiui/app/screenelement/data/Expression$FunctionExpression;
.super Lmiui/app/screenelement/data/Expression;
.source "Expression.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/app/screenelement/data/Expression;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FunctionExpression"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/app/screenelement/data/Expression$FunctionExpression$FunctionDesc;,
        Lmiui/app/screenelement/data/Expression$FunctionExpression$Fun;
    }
.end annotation


# static fields
.field private static sFunMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lmiui/app/screenelement/data/Expression$FunctionExpression$FunctionDesc;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mFun:Lmiui/app/screenelement/data/Expression$FunctionExpression$Fun;

.field private mParaExps:[Lmiui/app/screenelement/data/Expression;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 473
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lmiui/app/screenelement/data/Expression$FunctionExpression;->sFunMap:Ljava/util/HashMap;

    .line 475
    sget-object v0, Lmiui/app/screenelement/data/Expression$FunctionExpression;->sFunMap:Ljava/util/HashMap;

    const-string v1, "sin"

    new-instance v2, Lmiui/app/screenelement/data/Expression$FunctionExpression$FunctionDesc;

    sget-object v3, Lmiui/app/screenelement/data/Expression$FunctionExpression$Fun;->SIN:Lmiui/app/screenelement/data/Expression$FunctionExpression$Fun;

    invoke-direct {v2, v3, v4}, Lmiui/app/screenelement/data/Expression$FunctionExpression$FunctionDesc;-><init>(Lmiui/app/screenelement/data/Expression$FunctionExpression$Fun;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 476
    sget-object v0, Lmiui/app/screenelement/data/Expression$FunctionExpression;->sFunMap:Ljava/util/HashMap;

    const-string v1, "cos"

    new-instance v2, Lmiui/app/screenelement/data/Expression$FunctionExpression$FunctionDesc;

    sget-object v3, Lmiui/app/screenelement/data/Expression$FunctionExpression$Fun;->COS:Lmiui/app/screenelement/data/Expression$FunctionExpression$Fun;

    invoke-direct {v2, v3, v4}, Lmiui/app/screenelement/data/Expression$FunctionExpression$FunctionDesc;-><init>(Lmiui/app/screenelement/data/Expression$FunctionExpression$Fun;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 477
    sget-object v0, Lmiui/app/screenelement/data/Expression$FunctionExpression;->sFunMap:Ljava/util/HashMap;

    const-string v1, "tan"

    new-instance v2, Lmiui/app/screenelement/data/Expression$FunctionExpression$FunctionDesc;

    sget-object v3, Lmiui/app/screenelement/data/Expression$FunctionExpression$Fun;->TAN:Lmiui/app/screenelement/data/Expression$FunctionExpression$Fun;

    invoke-direct {v2, v3, v4}, Lmiui/app/screenelement/data/Expression$FunctionExpression$FunctionDesc;-><init>(Lmiui/app/screenelement/data/Expression$FunctionExpression$Fun;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 478
    sget-object v0, Lmiui/app/screenelement/data/Expression$FunctionExpression;->sFunMap:Ljava/util/HashMap;

    const-string v1, "asin"

    new-instance v2, Lmiui/app/screenelement/data/Expression$FunctionExpression$FunctionDesc;

    sget-object v3, Lmiui/app/screenelement/data/Expression$FunctionExpression$Fun;->ASIN:Lmiui/app/screenelement/data/Expression$FunctionExpression$Fun;

    invoke-direct {v2, v3, v4}, Lmiui/app/screenelement/data/Expression$FunctionExpression$FunctionDesc;-><init>(Lmiui/app/screenelement/data/Expression$FunctionExpression$Fun;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 479
    sget-object v0, Lmiui/app/screenelement/data/Expression$FunctionExpression;->sFunMap:Ljava/util/HashMap;

    const-string v1, "acos"

    new-instance v2, Lmiui/app/screenelement/data/Expression$FunctionExpression$FunctionDesc;

    sget-object v3, Lmiui/app/screenelement/data/Expression$FunctionExpression$Fun;->ACOS:Lmiui/app/screenelement/data/Expression$FunctionExpression$Fun;

    invoke-direct {v2, v3, v4}, Lmiui/app/screenelement/data/Expression$FunctionExpression$FunctionDesc;-><init>(Lmiui/app/screenelement/data/Expression$FunctionExpression$Fun;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 480
    sget-object v0, Lmiui/app/screenelement/data/Expression$FunctionExpression;->sFunMap:Ljava/util/HashMap;

    const-string v1, "atan"

    new-instance v2, Lmiui/app/screenelement/data/Expression$FunctionExpression$FunctionDesc;

    sget-object v3, Lmiui/app/screenelement/data/Expression$FunctionExpression$Fun;->ATAN:Lmiui/app/screenelement/data/Expression$FunctionExpression$Fun;

    invoke-direct {v2, v3, v4}, Lmiui/app/screenelement/data/Expression$FunctionExpression$FunctionDesc;-><init>(Lmiui/app/screenelement/data/Expression$FunctionExpression$Fun;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 481
    sget-object v0, Lmiui/app/screenelement/data/Expression$FunctionExpression;->sFunMap:Ljava/util/HashMap;

    const-string v1, "sinh"

    new-instance v2, Lmiui/app/screenelement/data/Expression$FunctionExpression$FunctionDesc;

    sget-object v3, Lmiui/app/screenelement/data/Expression$FunctionExpression$Fun;->SINH:Lmiui/app/screenelement/data/Expression$FunctionExpression$Fun;

    invoke-direct {v2, v3, v4}, Lmiui/app/screenelement/data/Expression$FunctionExpression$FunctionDesc;-><init>(Lmiui/app/screenelement/data/Expression$FunctionExpression$Fun;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 482
    sget-object v0, Lmiui/app/screenelement/data/Expression$FunctionExpression;->sFunMap:Ljava/util/HashMap;

    const-string v1, "cosh"

    new-instance v2, Lmiui/app/screenelement/data/Expression$FunctionExpression$FunctionDesc;

    sget-object v3, Lmiui/app/screenelement/data/Expression$FunctionExpression$Fun;->COSH:Lmiui/app/screenelement/data/Expression$FunctionExpression$Fun;

    invoke-direct {v2, v3, v4}, Lmiui/app/screenelement/data/Expression$FunctionExpression$FunctionDesc;-><init>(Lmiui/app/screenelement/data/Expression$FunctionExpression$Fun;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 483
    sget-object v0, Lmiui/app/screenelement/data/Expression$FunctionExpression;->sFunMap:Ljava/util/HashMap;

    const-string v1, "sqrt"

    new-instance v2, Lmiui/app/screenelement/data/Expression$FunctionExpression$FunctionDesc;

    sget-object v3, Lmiui/app/screenelement/data/Expression$FunctionExpression$Fun;->SQRT:Lmiui/app/screenelement/data/Expression$FunctionExpression$Fun;

    invoke-direct {v2, v3, v4}, Lmiui/app/screenelement/data/Expression$FunctionExpression$FunctionDesc;-><init>(Lmiui/app/screenelement/data/Expression$FunctionExpression$Fun;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 484
    sget-object v0, Lmiui/app/screenelement/data/Expression$FunctionExpression;->sFunMap:Ljava/util/HashMap;

    const-string v1, "abs"

    new-instance v2, Lmiui/app/screenelement/data/Expression$FunctionExpression$FunctionDesc;

    sget-object v3, Lmiui/app/screenelement/data/Expression$FunctionExpression$Fun;->ABS:Lmiui/app/screenelement/data/Expression$FunctionExpression$Fun;

    invoke-direct {v2, v3, v4}, Lmiui/app/screenelement/data/Expression$FunctionExpression$FunctionDesc;-><init>(Lmiui/app/screenelement/data/Expression$FunctionExpression$Fun;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 485
    sget-object v0, Lmiui/app/screenelement/data/Expression$FunctionExpression;->sFunMap:Ljava/util/HashMap;

    const-string v1, "len"

    new-instance v2, Lmiui/app/screenelement/data/Expression$FunctionExpression$FunctionDesc;

    sget-object v3, Lmiui/app/screenelement/data/Expression$FunctionExpression$Fun;->LEN:Lmiui/app/screenelement/data/Expression$FunctionExpression$Fun;

    invoke-direct {v2, v3, v4}, Lmiui/app/screenelement/data/Expression$FunctionExpression$FunctionDesc;-><init>(Lmiui/app/screenelement/data/Expression$FunctionExpression$Fun;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 486
    sget-object v0, Lmiui/app/screenelement/data/Expression$FunctionExpression;->sFunMap:Ljava/util/HashMap;

    const-string v1, "round"

    new-instance v2, Lmiui/app/screenelement/data/Expression$FunctionExpression$FunctionDesc;

    sget-object v3, Lmiui/app/screenelement/data/Expression$FunctionExpression$Fun;->ROUND:Lmiui/app/screenelement/data/Expression$FunctionExpression$Fun;

    invoke-direct {v2, v3, v4}, Lmiui/app/screenelement/data/Expression$FunctionExpression$FunctionDesc;-><init>(Lmiui/app/screenelement/data/Expression$FunctionExpression$Fun;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 487
    sget-object v0, Lmiui/app/screenelement/data/Expression$FunctionExpression;->sFunMap:Ljava/util/HashMap;

    const-string v1, "int"

    new-instance v2, Lmiui/app/screenelement/data/Expression$FunctionExpression$FunctionDesc;

    sget-object v3, Lmiui/app/screenelement/data/Expression$FunctionExpression$Fun;->INT:Lmiui/app/screenelement/data/Expression$FunctionExpression$Fun;

    invoke-direct {v2, v3, v4}, Lmiui/app/screenelement/data/Expression$FunctionExpression$FunctionDesc;-><init>(Lmiui/app/screenelement/data/Expression$FunctionExpression$Fun;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 489
    sget-object v0, Lmiui/app/screenelement/data/Expression$FunctionExpression;->sFunMap:Ljava/util/HashMap;

    const-string v1, "isnull"

    new-instance v2, Lmiui/app/screenelement/data/Expression$FunctionExpression$FunctionDesc;

    sget-object v3, Lmiui/app/screenelement/data/Expression$FunctionExpression$Fun;->ISNULL:Lmiui/app/screenelement/data/Expression$FunctionExpression$Fun;

    invoke-direct {v2, v3, v4}, Lmiui/app/screenelement/data/Expression$FunctionExpression$FunctionDesc;-><init>(Lmiui/app/screenelement/data/Expression$FunctionExpression$Fun;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 490
    sget-object v0, Lmiui/app/screenelement/data/Expression$FunctionExpression;->sFunMap:Ljava/util/HashMap;

    const-string v1, "not"

    new-instance v2, Lmiui/app/screenelement/data/Expression$FunctionExpression$FunctionDesc;

    sget-object v3, Lmiui/app/screenelement/data/Expression$FunctionExpression$Fun;->NOT:Lmiui/app/screenelement/data/Expression$FunctionExpression$Fun;

    invoke-direct {v2, v3, v4}, Lmiui/app/screenelement/data/Expression$FunctionExpression$FunctionDesc;-><init>(Lmiui/app/screenelement/data/Expression$FunctionExpression$Fun;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 492
    sget-object v0, Lmiui/app/screenelement/data/Expression$FunctionExpression;->sFunMap:Ljava/util/HashMap;

    const-string v1, "min"

    new-instance v2, Lmiui/app/screenelement/data/Expression$FunctionExpression$FunctionDesc;

    sget-object v3, Lmiui/app/screenelement/data/Expression$FunctionExpression$Fun;->MIN:Lmiui/app/screenelement/data/Expression$FunctionExpression$Fun;

    invoke-direct {v2, v3, v5}, Lmiui/app/screenelement/data/Expression$FunctionExpression$FunctionDesc;-><init>(Lmiui/app/screenelement/data/Expression$FunctionExpression$Fun;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 493
    sget-object v0, Lmiui/app/screenelement/data/Expression$FunctionExpression;->sFunMap:Ljava/util/HashMap;

    const-string v1, "max"

    new-instance v2, Lmiui/app/screenelement/data/Expression$FunctionExpression$FunctionDesc;

    sget-object v3, Lmiui/app/screenelement/data/Expression$FunctionExpression$Fun;->MAX:Lmiui/app/screenelement/data/Expression$FunctionExpression$Fun;

    invoke-direct {v2, v3, v5}, Lmiui/app/screenelement/data/Expression$FunctionExpression$FunctionDesc;-><init>(Lmiui/app/screenelement/data/Expression$FunctionExpression$Fun;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 494
    sget-object v0, Lmiui/app/screenelement/data/Expression$FunctionExpression;->sFunMap:Ljava/util/HashMap;

    const-string v1, "digit"

    new-instance v2, Lmiui/app/screenelement/data/Expression$FunctionExpression$FunctionDesc;

    sget-object v3, Lmiui/app/screenelement/data/Expression$FunctionExpression$Fun;->DIGIT:Lmiui/app/screenelement/data/Expression$FunctionExpression$Fun;

    invoke-direct {v2, v3, v5}, Lmiui/app/screenelement/data/Expression$FunctionExpression$FunctionDesc;-><init>(Lmiui/app/screenelement/data/Expression$FunctionExpression$Fun;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 496
    sget-object v0, Lmiui/app/screenelement/data/Expression$FunctionExpression;->sFunMap:Ljava/util/HashMap;

    const-string v1, "eq"

    new-instance v2, Lmiui/app/screenelement/data/Expression$FunctionExpression$FunctionDesc;

    sget-object v3, Lmiui/app/screenelement/data/Expression$FunctionExpression$Fun;->EQ:Lmiui/app/screenelement/data/Expression$FunctionExpression$Fun;

    invoke-direct {v2, v3, v5}, Lmiui/app/screenelement/data/Expression$FunctionExpression$FunctionDesc;-><init>(Lmiui/app/screenelement/data/Expression$FunctionExpression$Fun;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 497
    sget-object v0, Lmiui/app/screenelement/data/Expression$FunctionExpression;->sFunMap:Ljava/util/HashMap;

    const-string v1, "ne"

    new-instance v2, Lmiui/app/screenelement/data/Expression$FunctionExpression$FunctionDesc;

    sget-object v3, Lmiui/app/screenelement/data/Expression$FunctionExpression$Fun;->NE:Lmiui/app/screenelement/data/Expression$FunctionExpression$Fun;

    invoke-direct {v2, v3, v5}, Lmiui/app/screenelement/data/Expression$FunctionExpression$FunctionDesc;-><init>(Lmiui/app/screenelement/data/Expression$FunctionExpression$Fun;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 498
    sget-object v0, Lmiui/app/screenelement/data/Expression$FunctionExpression;->sFunMap:Ljava/util/HashMap;

    const-string v1, "ge"

    new-instance v2, Lmiui/app/screenelement/data/Expression$FunctionExpression$FunctionDesc;

    sget-object v3, Lmiui/app/screenelement/data/Expression$FunctionExpression$Fun;->GE:Lmiui/app/screenelement/data/Expression$FunctionExpression$Fun;

    invoke-direct {v2, v3, v5}, Lmiui/app/screenelement/data/Expression$FunctionExpression$FunctionDesc;-><init>(Lmiui/app/screenelement/data/Expression$FunctionExpression$Fun;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 499
    sget-object v0, Lmiui/app/screenelement/data/Expression$FunctionExpression;->sFunMap:Ljava/util/HashMap;

    const-string v1, "gt"

    new-instance v2, Lmiui/app/screenelement/data/Expression$FunctionExpression$FunctionDesc;

    sget-object v3, Lmiui/app/screenelement/data/Expression$FunctionExpression$Fun;->GT:Lmiui/app/screenelement/data/Expression$FunctionExpression$Fun;

    invoke-direct {v2, v3, v5}, Lmiui/app/screenelement/data/Expression$FunctionExpression$FunctionDesc;-><init>(Lmiui/app/screenelement/data/Expression$FunctionExpression$Fun;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 500
    sget-object v0, Lmiui/app/screenelement/data/Expression$FunctionExpression;->sFunMap:Ljava/util/HashMap;

    const-string v1, "le"

    new-instance v2, Lmiui/app/screenelement/data/Expression$FunctionExpression$FunctionDesc;

    sget-object v3, Lmiui/app/screenelement/data/Expression$FunctionExpression$Fun;->LE:Lmiui/app/screenelement/data/Expression$FunctionExpression$Fun;

    invoke-direct {v2, v3, v5}, Lmiui/app/screenelement/data/Expression$FunctionExpression$FunctionDesc;-><init>(Lmiui/app/screenelement/data/Expression$FunctionExpression$Fun;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 501
    sget-object v0, Lmiui/app/screenelement/data/Expression$FunctionExpression;->sFunMap:Ljava/util/HashMap;

    const-string v1, "lt"

    new-instance v2, Lmiui/app/screenelement/data/Expression$FunctionExpression$FunctionDesc;

    sget-object v3, Lmiui/app/screenelement/data/Expression$FunctionExpression$Fun;->LT:Lmiui/app/screenelement/data/Expression$FunctionExpression$Fun;

    invoke-direct {v2, v3, v5}, Lmiui/app/screenelement/data/Expression$FunctionExpression$FunctionDesc;-><init>(Lmiui/app/screenelement/data/Expression$FunctionExpression$Fun;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 502
    sget-object v0, Lmiui/app/screenelement/data/Expression$FunctionExpression;->sFunMap:Ljava/util/HashMap;

    const-string v1, "ifelse"

    new-instance v2, Lmiui/app/screenelement/data/Expression$FunctionExpression$FunctionDesc;

    sget-object v3, Lmiui/app/screenelement/data/Expression$FunctionExpression$Fun;->IFELSE:Lmiui/app/screenelement/data/Expression$FunctionExpression$Fun;

    const/4 v4, 0x3

    invoke-direct {v2, v3, v4}, Lmiui/app/screenelement/data/Expression$FunctionExpression$FunctionDesc;-><init>(Lmiui/app/screenelement/data/Expression$FunctionExpression$Fun;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 504
    sget-object v0, Lmiui/app/screenelement/data/Expression$FunctionExpression;->sFunMap:Ljava/util/HashMap;

    const-string v1, "eqs"

    new-instance v2, Lmiui/app/screenelement/data/Expression$FunctionExpression$FunctionDesc;

    sget-object v3, Lmiui/app/screenelement/data/Expression$FunctionExpression$Fun;->EQS:Lmiui/app/screenelement/data/Expression$FunctionExpression$Fun;

    invoke-direct {v2, v3, v5}, Lmiui/app/screenelement/data/Expression$FunctionExpression$FunctionDesc;-><init>(Lmiui/app/screenelement/data/Expression$FunctionExpression$Fun;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 505
    sget-object v0, Lmiui/app/screenelement/data/Expression$FunctionExpression;->sFunMap:Ljava/util/HashMap;

    const-string v1, "substr"

    new-instance v2, Lmiui/app/screenelement/data/Expression$FunctionExpression$FunctionDesc;

    sget-object v3, Lmiui/app/screenelement/data/Expression$FunctionExpression$Fun;->SUBSTR:Lmiui/app/screenelement/data/Expression$FunctionExpression$Fun;

    invoke-direct {v2, v3, v5}, Lmiui/app/screenelement/data/Expression$FunctionExpression$FunctionDesc;-><init>(Lmiui/app/screenelement/data/Expression$FunctionExpression$Fun;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 506
    return-void
.end method

.method public constructor <init>([Lmiui/app/screenelement/data/Expression;Ljava/lang/String;)V
    .locals 0
    .parameter "exps"
    .parameter "fun"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/app/screenelement/ScreenElementLoadException;
        }
    .end annotation

    .prologue
    .line 509
    invoke-direct {p0}, Lmiui/app/screenelement/data/Expression;-><init>()V

    .line 510
    iput-object p1, p0, Lmiui/app/screenelement/data/Expression$FunctionExpression;->mParaExps:[Lmiui/app/screenelement/data/Expression;

    .line 511
    invoke-direct {p0, p2}, Lmiui/app/screenelement/data/Expression$FunctionExpression;->parseFunction(Ljava/lang/String;)V

    .line 512
    return-void
.end method

.method private digit(II)I
    .locals 3
    .parameter "number"
    .parameter "n"

    .prologue
    const/4 v1, -0x1

    .line 631
    if-gtz p2, :cond_1

    .line 636
    :cond_0
    :goto_0
    return v1

    .line 633
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-lez p1, :cond_2

    add-int/lit8 v2, p2, -0x1

    if-ge v0, v2, :cond_2

    .line 634
    div-int/lit8 p1, p1, 0xa

    .line 633
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 636
    :cond_2
    if-lez p1, :cond_0

    rem-int/lit8 v1, p1, 0xa

    goto :goto_0
.end method

.method private len(I)I
    .locals 2
    .parameter "number"

    .prologue
    .line 641
    const/4 v0, 0x1

    .line 642
    .local v0, len:I
    :goto_0
    const/16 v1, 0xa

    if-lt p1, v1, :cond_0

    .line 643
    div-int/lit8 p1, p1, 0xa

    .line 644
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 646
    :cond_0
    return v0
.end method

.method private parseFunction(Ljava/lang/String;)V
    .locals 6
    .parameter "fun"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/app/screenelement/ScreenElementLoadException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 515
    sget-object v1, Lmiui/app/screenelement/data/Expression$FunctionExpression;->sFunMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/app/screenelement/data/Expression$FunctionExpression$FunctionDesc;

    .line 516
    .local v0, fd:Lmiui/app/screenelement/data/Expression$FunctionExpression$FunctionDesc;
    if-eqz v0, :cond_0

    move v1, v2

    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "invalid function:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lmiui/app/screenelement/util/Utils;->asserts(ZLjava/lang/String;)V

    .line 518
    iget-object v1, v0, Lmiui/app/screenelement/data/Expression$FunctionExpression$FunctionDesc;->fun:Lmiui/app/screenelement/data/Expression$FunctionExpression$Fun;

    iput-object v1, p0, Lmiui/app/screenelement/data/Expression$FunctionExpression;->mFun:Lmiui/app/screenelement/data/Expression$FunctionExpression$Fun;

    .line 519
    iget-object v1, p0, Lmiui/app/screenelement/data/Expression$FunctionExpression;->mParaExps:[Lmiui/app/screenelement/data/Expression;

    array-length v1, v1

    iget v4, v0, Lmiui/app/screenelement/data/Expression$FunctionExpression$FunctionDesc;->params:I

    if-lt v1, v4, :cond_1

    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "parameters count not matching for function: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lmiui/app/screenelement/util/Utils;->asserts(ZLjava/lang/String;)V

    .line 520
    return-void

    :cond_0
    move v1, v3

    .line 516
    goto :goto_0

    :cond_1
    move v2, v3

    .line 519
    goto :goto_1
.end method


# virtual methods
.method public evaluate(Lmiui/app/screenelement/data/Variables;)D
    .locals 12
    .parameter "var"

    .prologue
    const/4 v11, 0x0

    const-wide/high16 v4, 0x3ff0

    const/4 v10, 0x1

    const-wide/16 v6, 0x0

    .line 524
    iget-object v8, p0, Lmiui/app/screenelement/data/Expression$FunctionExpression;->mParaExps:[Lmiui/app/screenelement/data/Expression;

    aget-object v8, v8, v11

    invoke-virtual {v8, p1}, Lmiui/app/screenelement/data/Expression;->evaluate(Lmiui/app/screenelement/data/Variables;)D

    move-result-wide v2

    .line 525
    .local v2, value0:D
    sget-object v8, Lmiui/app/screenelement/data/Expression$1;->$SwitchMap$miui$app$screenelement$data$Expression$FunctionExpression$Fun:[I

    iget-object v9, p0, Lmiui/app/screenelement/data/Expression$FunctionExpression;->mFun:Lmiui/app/screenelement/data/Expression$FunctionExpression$Fun;

    invoke-virtual {v9}, Lmiui/app/screenelement/data/Expression$FunctionExpression$Fun;->ordinal()I

    move-result v9

    aget v8, v8, v9

    packed-switch v8, :pswitch_data_0

    .line 592
    const-string v4, "Expression"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "fail to evalute FunctionExpression, invalid function: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v8, p0, Lmiui/app/screenelement/data/Expression$FunctionExpression;->mFun:Lmiui/app/screenelement/data/Expression$FunctionExpression$Fun;

    invoke-virtual {v8}, Lmiui/app/screenelement/data/Expression$FunctionExpression$Fun;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-wide v4, v6

    .line 593
    :cond_0
    :goto_0
    return-wide v4

    .line 527
    :pswitch_0
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    goto :goto_0

    .line 529
    :pswitch_1
    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    goto :goto_0

    .line 531
    :pswitch_2
    invoke-static {v2, v3}, Ljava/lang/Math;->tan(D)D

    move-result-wide v4

    goto :goto_0

    .line 533
    :pswitch_3
    invoke-static {v2, v3}, Ljava/lang/Math;->asin(D)D

    move-result-wide v4

    goto :goto_0

    .line 535
    :pswitch_4
    invoke-static {v2, v3}, Ljava/lang/Math;->acos(D)D

    move-result-wide v4

    goto :goto_0

    .line 537
    :pswitch_5
    invoke-static {v2, v3}, Ljava/lang/Math;->atan(D)D

    move-result-wide v4

    goto :goto_0

    .line 539
    :pswitch_6
    invoke-static {v2, v3}, Ljava/lang/Math;->sinh(D)D

    move-result-wide v4

    goto :goto_0

    .line 541
    :pswitch_7
    invoke-static {v2, v3}, Ljava/lang/Math;->cosh(D)D

    move-result-wide v4

    goto :goto_0

    .line 543
    :pswitch_8
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    goto :goto_0

    .line 545
    :pswitch_9
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    goto :goto_0

    .line 547
    :pswitch_a
    iget-object v4, p0, Lmiui/app/screenelement/data/Expression$FunctionExpression;->mParaExps:[Lmiui/app/screenelement/data/Expression;

    aget-object v4, v4, v11

    invoke-virtual {v4, p1}, Lmiui/app/screenelement/data/Expression;->evaluateStr(Lmiui/app/screenelement/data/Variables;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    int-to-double v4, v4

    goto :goto_0

    .line 549
    :pswitch_b
    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-double v4, v4

    goto :goto_0

    .line 551
    :pswitch_c
    double-to-int v4, v2

    int-to-double v4, v4

    goto :goto_0

    .line 553
    :pswitch_d
    iget-object v8, p0, Lmiui/app/screenelement/data/Expression$FunctionExpression;->mParaExps:[Lmiui/app/screenelement/data/Expression;

    aget-object v8, v8, v11

    invoke-virtual {v8, p1}, Lmiui/app/screenelement/data/Expression;->isNull(Lmiui/app/screenelement/data/Variables;)Z

    move-result v8

    if-nez v8, :cond_0

    move-wide v4, v6

    goto :goto_0

    .line 555
    :pswitch_e
    cmpl-double v8, v2, v6

    if-lez v8, :cond_1

    :goto_1
    move-wide v4, v6

    goto :goto_0

    :cond_1
    move-wide v6, v4

    goto :goto_1

    .line 557
    :pswitch_f
    iget-object v4, p0, Lmiui/app/screenelement/data/Expression$FunctionExpression;->mParaExps:[Lmiui/app/screenelement/data/Expression;

    aget-object v4, v4, v10

    invoke-virtual {v4, p1}, Lmiui/app/screenelement/data/Expression;->evaluate(Lmiui/app/screenelement/data/Variables;)D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    goto :goto_0

    .line 559
    :pswitch_10
    iget-object v4, p0, Lmiui/app/screenelement/data/Expression$FunctionExpression;->mParaExps:[Lmiui/app/screenelement/data/Expression;

    aget-object v4, v4, v10

    invoke-virtual {v4, p1}, Lmiui/app/screenelement/data/Expression;->evaluate(Lmiui/app/screenelement/data/Variables;)D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    goto :goto_0

    .line 561
    :pswitch_11
    double-to-int v4, v2

    iget-object v5, p0, Lmiui/app/screenelement/data/Expression$FunctionExpression;->mParaExps:[Lmiui/app/screenelement/data/Expression;

    aget-object v5, v5, v10

    invoke-virtual {v5, p1}, Lmiui/app/screenelement/data/Expression;->evaluate(Lmiui/app/screenelement/data/Variables;)D

    move-result-wide v5

    double-to-int v5, v5

    invoke-direct {p0, v4, v5}, Lmiui/app/screenelement/data/Expression$FunctionExpression;->digit(II)I

    move-result v4

    int-to-double v4, v4

    goto/16 :goto_0

    .line 563
    :pswitch_12
    iget-object v8, p0, Lmiui/app/screenelement/data/Expression$FunctionExpression;->mParaExps:[Lmiui/app/screenelement/data/Expression;

    aget-object v8, v8, v10

    invoke-virtual {v8, p1}, Lmiui/app/screenelement/data/Expression;->evaluate(Lmiui/app/screenelement/data/Variables;)D

    move-result-wide v8

    cmpl-double v8, v2, v8

    if-eqz v8, :cond_0

    move-wide v4, v6

    goto/16 :goto_0

    .line 565
    :pswitch_13
    iget-object v8, p0, Lmiui/app/screenelement/data/Expression$FunctionExpression;->mParaExps:[Lmiui/app/screenelement/data/Expression;

    aget-object v8, v8, v10

    invoke-virtual {v8, p1}, Lmiui/app/screenelement/data/Expression;->evaluate(Lmiui/app/screenelement/data/Variables;)D

    move-result-wide v8

    cmpl-double v8, v2, v8

    if-nez v8, :cond_0

    move-wide v4, v6

    goto/16 :goto_0

    .line 567
    :pswitch_14
    iget-object v8, p0, Lmiui/app/screenelement/data/Expression$FunctionExpression;->mParaExps:[Lmiui/app/screenelement/data/Expression;

    aget-object v8, v8, v10

    invoke-virtual {v8, p1}, Lmiui/app/screenelement/data/Expression;->evaluate(Lmiui/app/screenelement/data/Variables;)D

    move-result-wide v8

    cmpl-double v8, v2, v8

    if-gez v8, :cond_0

    move-wide v4, v6

    goto/16 :goto_0

    .line 569
    :pswitch_15
    iget-object v8, p0, Lmiui/app/screenelement/data/Expression$FunctionExpression;->mParaExps:[Lmiui/app/screenelement/data/Expression;

    aget-object v8, v8, v10

    invoke-virtual {v8, p1}, Lmiui/app/screenelement/data/Expression;->evaluate(Lmiui/app/screenelement/data/Variables;)D

    move-result-wide v8

    cmpl-double v8, v2, v8

    if-gtz v8, :cond_0

    move-wide v4, v6

    goto/16 :goto_0

    .line 571
    :pswitch_16
    iget-object v8, p0, Lmiui/app/screenelement/data/Expression$FunctionExpression;->mParaExps:[Lmiui/app/screenelement/data/Expression;

    aget-object v8, v8, v10

    invoke-virtual {v8, p1}, Lmiui/app/screenelement/data/Expression;->evaluate(Lmiui/app/screenelement/data/Variables;)D

    move-result-wide v8

    cmpg-double v8, v2, v8

    if-lez v8, :cond_0

    move-wide v4, v6

    goto/16 :goto_0

    .line 573
    :pswitch_17
    iget-object v8, p0, Lmiui/app/screenelement/data/Expression$FunctionExpression;->mParaExps:[Lmiui/app/screenelement/data/Expression;

    aget-object v8, v8, v10

    invoke-virtual {v8, p1}, Lmiui/app/screenelement/data/Expression;->evaluate(Lmiui/app/screenelement/data/Variables;)D

    move-result-wide v8

    cmpg-double v8, v2, v8

    if-ltz v8, :cond_0

    move-wide v4, v6

    goto/16 :goto_0

    .line 575
    :pswitch_18
    iget-object v4, p0, Lmiui/app/screenelement/data/Expression$FunctionExpression;->mParaExps:[Lmiui/app/screenelement/data/Expression;

    array-length v1, v4

    .line 576
    .local v1, len:I
    rem-int/lit8 v4, v1, 0x2

    if-eq v4, v10, :cond_2

    .line 577
    const-string v4, "Expression"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "function parameter number should be 2*n+1: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v8, p0, Lmiui/app/screenelement/data/Expression$FunctionExpression;->mFun:Lmiui/app/screenelement/data/Expression$FunctionExpression$Fun;

    invoke-virtual {v8}, Lmiui/app/screenelement/data/Expression$FunctionExpression$Fun;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-wide v4, v6

    .line 578
    goto/16 :goto_0

    .line 580
    :cond_2
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    add-int/lit8 v4, v1, -0x1

    div-int/lit8 v4, v4, 0x2

    if-ge v0, v4, :cond_4

    .line 581
    iget-object v4, p0, Lmiui/app/screenelement/data/Expression$FunctionExpression;->mParaExps:[Lmiui/app/screenelement/data/Expression;

    mul-int/lit8 v5, v0, 0x2

    aget-object v4, v4, v5

    invoke-virtual {v4, p1}, Lmiui/app/screenelement/data/Expression;->evaluate(Lmiui/app/screenelement/data/Variables;)D

    move-result-wide v4

    cmpl-double v4, v4, v6

    if-lez v4, :cond_3

    .line 582
    iget-object v4, p0, Lmiui/app/screenelement/data/Expression$FunctionExpression;->mParaExps:[Lmiui/app/screenelement/data/Expression;

    mul-int/lit8 v5, v0, 0x2

    add-int/lit8 v5, v5, 0x1

    aget-object v4, v4, v5

    invoke-virtual {v4, p1}, Lmiui/app/screenelement/data/Expression;->evaluate(Lmiui/app/screenelement/data/Variables;)D

    move-result-wide v4

    goto/16 :goto_0

    .line 580
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 584
    :cond_4
    iget-object v4, p0, Lmiui/app/screenelement/data/Expression$FunctionExpression;->mParaExps:[Lmiui/app/screenelement/data/Expression;

    add-int/lit8 v5, v1, -0x1

    aget-object v4, v4, v5

    invoke-virtual {v4, p1}, Lmiui/app/screenelement/data/Expression;->evaluate(Lmiui/app/screenelement/data/Variables;)D

    move-result-wide v4

    goto/16 :goto_0

    .line 587
    .end local v0           #i:I
    .end local v1           #len:I
    :pswitch_19
    iget-object v8, p0, Lmiui/app/screenelement/data/Expression$FunctionExpression;->mParaExps:[Lmiui/app/screenelement/data/Expression;

    aget-object v8, v8, v11

    invoke-virtual {v8, p1}, Lmiui/app/screenelement/data/Expression;->evaluateStr(Lmiui/app/screenelement/data/Variables;)Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lmiui/app/screenelement/data/Expression$FunctionExpression;->mParaExps:[Lmiui/app/screenelement/data/Expression;

    aget-object v9, v9, v10

    invoke-virtual {v9, p1}, Lmiui/app/screenelement/data/Expression;->evaluateStr(Lmiui/app/screenelement/data/Variables;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    move-wide v4, v6

    goto/16 :goto_0

    .line 589
    :pswitch_1a
    invoke-virtual {p0, p1}, Lmiui/app/screenelement/data/Expression$FunctionExpression;->evaluateStr(Lmiui/app/screenelement/data/Variables;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v6, v7}, Lmiui/app/screenelement/util/Utils;->stringToDouble(Ljava/lang/String;D)D

    move-result-wide v4

    goto/16 :goto_0

    .line 525
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
    .end packed-switch
.end method

.method public evaluateStr(Lmiui/app/screenelement/data/Variables;)Ljava/lang/String;
    .locals 10
    .parameter "var"

    .prologue
    const/4 v6, 0x0

    const/4 v9, 0x1

    .line 598
    sget-object v7, Lmiui/app/screenelement/data/Expression$1;->$SwitchMap$miui$app$screenelement$data$Expression$FunctionExpression$Fun:[I

    iget-object v8, p0, Lmiui/app/screenelement/data/Expression$FunctionExpression;->mFun:Lmiui/app/screenelement/data/Expression$FunctionExpression$Fun;

    invoke-virtual {v8}, Lmiui/app/screenelement/data/Expression$FunctionExpression$Fun;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_0

    .line 626
    :pswitch_0
    invoke-virtual {p0, p1}, Lmiui/app/screenelement/data/Expression$FunctionExpression;->evaluate(Lmiui/app/screenelement/data/Variables;)D

    move-result-wide v6

    invoke-static {v6, v7}, Lmiui/app/screenelement/util/Utils;->doubleToString(D)Ljava/lang/String;

    move-result-object v6

    :goto_0
    return-object v6

    .line 600
    :pswitch_1
    iget-object v7, p0, Lmiui/app/screenelement/data/Expression$FunctionExpression;->mParaExps:[Lmiui/app/screenelement/data/Expression;

    array-length v3, v7

    .line 601
    .local v3, len:I
    rem-int/lit8 v7, v3, 0x2

    if-eq v7, v9, :cond_0

    .line 602
    const-string v7, "Expression"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "function parameter number should be 2*n+1: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lmiui/app/screenelement/data/Expression$FunctionExpression;->mFun:Lmiui/app/screenelement/data/Expression$FunctionExpression$Fun;

    invoke-virtual {v9}, Lmiui/app/screenelement/data/Expression$FunctionExpression$Fun;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 605
    :cond_0
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    add-int/lit8 v6, v3, -0x1

    div-int/lit8 v6, v6, 0x2

    if-ge v2, v6, :cond_2

    .line 606
    iget-object v6, p0, Lmiui/app/screenelement/data/Expression$FunctionExpression;->mParaExps:[Lmiui/app/screenelement/data/Expression;

    mul-int/lit8 v7, v2, 0x2

    aget-object v6, v6, v7

    invoke-virtual {v6, p1}, Lmiui/app/screenelement/data/Expression;->evaluate(Lmiui/app/screenelement/data/Variables;)D

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmpl-double v6, v6, v8

    if-lez v6, :cond_1

    .line 607
    iget-object v6, p0, Lmiui/app/screenelement/data/Expression$FunctionExpression;->mParaExps:[Lmiui/app/screenelement/data/Expression;

    mul-int/lit8 v7, v2, 0x2

    add-int/lit8 v7, v7, 0x1

    aget-object v6, v6, v7

    invoke-virtual {v6, p1}, Lmiui/app/screenelement/data/Expression;->evaluateStr(Lmiui/app/screenelement/data/Variables;)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 605
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 609
    :cond_2
    iget-object v6, p0, Lmiui/app/screenelement/data/Expression$FunctionExpression;->mParaExps:[Lmiui/app/screenelement/data/Expression;

    add-int/lit8 v7, v3, -0x1

    aget-object v6, v6, v7

    invoke-virtual {v6, p1}, Lmiui/app/screenelement/data/Expression;->evaluateStr(Lmiui/app/screenelement/data/Variables;)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 612
    .end local v2           #i:I
    .end local v3           #len:I
    :pswitch_2
    iget-object v7, p0, Lmiui/app/screenelement/data/Expression$FunctionExpression;->mParaExps:[Lmiui/app/screenelement/data/Expression;

    const/4 v8, 0x0

    aget-object v7, v7, v8

    invoke-virtual {v7, p1}, Lmiui/app/screenelement/data/Expression;->evaluateStr(Lmiui/app/screenelement/data/Variables;)Ljava/lang/String;

    move-result-object v5

    .line 613
    .local v5, str:Ljava/lang/String;
    iget-object v7, p0, Lmiui/app/screenelement/data/Expression$FunctionExpression;->mParaExps:[Lmiui/app/screenelement/data/Expression;

    array-length v3, v7

    .line 614
    .restart local v3       #len:I
    iget-object v7, p0, Lmiui/app/screenelement/data/Expression$FunctionExpression;->mParaExps:[Lmiui/app/screenelement/data/Expression;

    aget-object v7, v7, v9

    invoke-virtual {v7, p1}, Lmiui/app/screenelement/data/Expression;->evaluate(Lmiui/app/screenelement/data/Variables;)D

    move-result-wide v7

    double-to-int v4, v7

    .line 616
    .local v4, start:I
    const/4 v7, 0x3

    if-lt v3, v7, :cond_3

    .line 617
    :try_start_0
    iget-object v7, p0, Lmiui/app/screenelement/data/Expression$FunctionExpression;->mParaExps:[Lmiui/app/screenelement/data/Expression;

    const/4 v8, 0x2

    aget-object v7, v7, v8

    invoke-virtual {v7, p1}, Lmiui/app/screenelement/data/Expression;->evaluate(Lmiui/app/screenelement/data/Variables;)D

    move-result-wide v7

    double-to-int v1, v7

    .line 618
    .local v1, end:I
    invoke-virtual {v5, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 620
    .end local v1           #end:I
    :cond_3
    invoke-virtual {v5, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    goto/16 :goto_0

    .line 621
    :catch_0
    move-exception v0

    .line 622
    .local v0, e:Ljava/lang/IndexOutOfBoundsException;
    goto/16 :goto_0

    .line 598
    :pswitch_data_0
    .packed-switch 0x19
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

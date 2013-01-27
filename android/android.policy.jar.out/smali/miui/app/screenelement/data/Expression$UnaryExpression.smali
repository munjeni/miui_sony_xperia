.class Lmiui/app/screenelement/data/Expression$UnaryExpression;
.super Lmiui/app/screenelement/data/Expression;
.source "Expression.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/app/screenelement/data/Expression;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UnaryExpression"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/app/screenelement/data/Expression$UnaryExpression$Ope;
    }
.end annotation


# instance fields
.field private mExp:Lmiui/app/screenelement/data/Expression;

.field private mOpe:Lmiui/app/screenelement/data/Expression$UnaryExpression$Ope;


# direct methods
.method public constructor <init>(Lmiui/app/screenelement/data/Expression;Ljava/lang/String;)V
    .locals 3
    .parameter "exp"
    .parameter "op"

    .prologue
    .line 285
    invoke-direct {p0}, Lmiui/app/screenelement/data/Expression;-><init>()V

    .line 278
    sget-object v0, Lmiui/app/screenelement/data/Expression$UnaryExpression$Ope;->INVALID:Lmiui/app/screenelement/data/Expression$UnaryExpression$Ope;

    iput-object v0, p0, Lmiui/app/screenelement/data/Expression$UnaryExpression;->mOpe:Lmiui/app/screenelement/data/Expression$UnaryExpression$Ope;

    .line 286
    iput-object p1, p0, Lmiui/app/screenelement/data/Expression$UnaryExpression;->mExp:Lmiui/app/screenelement/data/Expression;

    .line 287
    invoke-static {p2}, Lmiui/app/screenelement/data/Expression$UnaryExpression;->parseOperator(Ljava/lang/String;)Lmiui/app/screenelement/data/Expression$UnaryExpression$Ope;

    move-result-object v0

    iput-object v0, p0, Lmiui/app/screenelement/data/Expression$UnaryExpression;->mOpe:Lmiui/app/screenelement/data/Expression$UnaryExpression$Ope;

    .line 288
    iget-object v0, p0, Lmiui/app/screenelement/data/Expression$UnaryExpression;->mOpe:Lmiui/app/screenelement/data/Expression$UnaryExpression$Ope;

    sget-object v1, Lmiui/app/screenelement/data/Expression$UnaryExpression$Ope;->INVALID:Lmiui/app/screenelement/data/Expression$UnaryExpression$Ope;

    if-ne v0, v1, :cond_0

    .line 289
    const-string v0, "Expression"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BinaryExpression: invalid operator:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    :cond_0
    return-void
.end method

.method public static parseOperator(Ljava/lang/String;)Lmiui/app/screenelement/data/Expression$UnaryExpression$Ope;
    .locals 1
    .parameter "op"

    .prologue
    .line 294
    const-string v0, "-"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 295
    sget-object v0, Lmiui/app/screenelement/data/Expression$UnaryExpression$Ope;->MIN:Lmiui/app/screenelement/data/Expression$UnaryExpression$Ope;

    .line 298
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lmiui/app/screenelement/data/Expression$UnaryExpression$Ope;->INVALID:Lmiui/app/screenelement/data/Expression$UnaryExpression$Ope;

    goto :goto_0
.end method


# virtual methods
.method public evaluate(Lmiui/app/screenelement/data/Variables;)D
    .locals 4
    .parameter "var"

    .prologue
    .line 303
    sget-object v0, Lmiui/app/screenelement/data/Expression$1;->$SwitchMap$miui$app$screenelement$data$Expression$UnaryExpression$Ope:[I

    iget-object v1, p0, Lmiui/app/screenelement/data/Expression$UnaryExpression;->mOpe:Lmiui/app/screenelement/data/Expression$UnaryExpression$Ope;

    invoke-virtual {v1}, Lmiui/app/screenelement/data/Expression$UnaryExpression$Ope;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 308
    const-string v0, "Expression"

    const-string v1, "fail to evalute UnaryExpression, invalid operator"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    iget-object v0, p0, Lmiui/app/screenelement/data/Expression$UnaryExpression;->mExp:Lmiui/app/screenelement/data/Expression;

    invoke-virtual {v0, p1}, Lmiui/app/screenelement/data/Expression;->evaluate(Lmiui/app/screenelement/data/Variables;)D

    move-result-wide v0

    :goto_0
    return-wide v0

    .line 305
    :pswitch_0
    const-wide/16 v0, 0x0

    iget-object v2, p0, Lmiui/app/screenelement/data/Expression$UnaryExpression;->mExp:Lmiui/app/screenelement/data/Expression;

    invoke-virtual {v2, p1}, Lmiui/app/screenelement/data/Expression;->evaluate(Lmiui/app/screenelement/data/Variables;)D

    move-result-wide v2

    sub-double/2addr v0, v2

    goto :goto_0

    .line 303
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public evaluateStr(Lmiui/app/screenelement/data/Variables;)Ljava/lang/String;
    .locals 2
    .parameter "var"

    .prologue
    .line 319
    invoke-virtual {p0, p1}, Lmiui/app/screenelement/data/Expression$UnaryExpression;->evaluate(Lmiui/app/screenelement/data/Variables;)D

    move-result-wide v0

    invoke-static {v0, v1}, Lmiui/app/screenelement/util/Utils;->doubleToString(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isNull(Lmiui/app/screenelement/data/Variables;)Z
    .locals 1
    .parameter "var"

    .prologue
    .line 314
    iget-object v0, p0, Lmiui/app/screenelement/data/Expression$UnaryExpression;->mExp:Lmiui/app/screenelement/data/Expression;

    invoke-virtual {v0, p1}, Lmiui/app/screenelement/data/Expression;->isNull(Lmiui/app/screenelement/data/Variables;)Z

    move-result v0

    return v0
.end method

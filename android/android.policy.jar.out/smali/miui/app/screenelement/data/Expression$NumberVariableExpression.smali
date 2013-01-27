.class Lmiui/app/screenelement/data/Expression$NumberVariableExpression;
.super Lmiui/app/screenelement/data/Expression$VariableExpression;
.source "Expression.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/app/screenelement/data/Expression;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NumberVariableExpression"
.end annotation


# instance fields
.field private mIndexedVar:Lmiui/app/screenelement/util/IndexedNumberVariable;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "exp"

    .prologue
    .line 156
    invoke-direct {p0, p1}, Lmiui/app/screenelement/data/Expression$VariableExpression;-><init>(Ljava/lang/String;)V

    .line 157
    return-void
.end method

.method private ensureVar(Lmiui/app/screenelement/data/Variables;)V
    .locals 3
    .parameter "var"

    .prologue
    .line 167
    iget-object v0, p0, Lmiui/app/screenelement/data/Expression$NumberVariableExpression;->mIndexedVar:Lmiui/app/screenelement/util/IndexedNumberVariable;

    if-nez v0, :cond_0

    .line 168
    new-instance v0, Lmiui/app/screenelement/util/IndexedNumberVariable;

    iget-object v1, p0, Lmiui/app/screenelement/data/Expression$NumberVariableExpression;->mVar:Lmiui/app/screenelement/util/Variable;

    invoke-virtual {v1}, Lmiui/app/screenelement/util/Variable;->getObjName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lmiui/app/screenelement/data/Expression$NumberVariableExpression;->mVar:Lmiui/app/screenelement/util/Variable;

    invoke-virtual {v2}, Lmiui/app/screenelement/util/Variable;->getPropertyName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1}, Lmiui/app/screenelement/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Ljava/lang/String;Lmiui/app/screenelement/data/Variables;)V

    iput-object v0, p0, Lmiui/app/screenelement/data/Expression$NumberVariableExpression;->mIndexedVar:Lmiui/app/screenelement/util/IndexedNumberVariable;

    .line 170
    :cond_0
    return-void
.end method


# virtual methods
.method public evaluate(Lmiui/app/screenelement/data/Variables;)D
    .locals 3
    .parameter "var"

    .prologue
    .line 161
    invoke-direct {p0, p1}, Lmiui/app/screenelement/data/Expression$NumberVariableExpression;->ensureVar(Lmiui/app/screenelement/data/Variables;)V

    .line 162
    iget-object v1, p0, Lmiui/app/screenelement/data/Expression$NumberVariableExpression;->mIndexedVar:Lmiui/app/screenelement/util/IndexedNumberVariable;

    invoke-virtual {v1}, Lmiui/app/screenelement/util/IndexedNumberVariable;->get()Ljava/lang/Double;

    move-result-object v0

    .line 163
    .local v0, value:Ljava/lang/Double;
    if-nez v0, :cond_0

    const-wide/16 v1, 0x0

    :goto_0
    return-wide v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    goto :goto_0
.end method

.method public evaluateStr(Lmiui/app/screenelement/data/Variables;)Ljava/lang/String;
    .locals 2
    .parameter "var"

    .prologue
    .line 180
    invoke-virtual {p0, p1}, Lmiui/app/screenelement/data/Expression$NumberVariableExpression;->evaluate(Lmiui/app/screenelement/data/Variables;)D

    move-result-wide v0

    invoke-static {v0, v1}, Lmiui/app/screenelement/util/Utils;->doubleToString(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isNull(Lmiui/app/screenelement/data/Variables;)Z
    .locals 1
    .parameter "var"

    .prologue
    .line 174
    invoke-direct {p0, p1}, Lmiui/app/screenelement/data/Expression$NumberVariableExpression;->ensureVar(Lmiui/app/screenelement/data/Variables;)V

    .line 175
    iget-object v0, p0, Lmiui/app/screenelement/data/Expression$NumberVariableExpression;->mIndexedVar:Lmiui/app/screenelement/util/IndexedNumberVariable;

    invoke-virtual {v0}, Lmiui/app/screenelement/util/IndexedNumberVariable;->get()Ljava/lang/Double;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

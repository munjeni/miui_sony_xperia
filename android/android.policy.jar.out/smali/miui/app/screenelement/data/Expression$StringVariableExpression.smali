.class Lmiui/app/screenelement/data/Expression$StringVariableExpression;
.super Lmiui/app/screenelement/data/Expression$VariableExpression;
.source "Expression.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/app/screenelement/data/Expression;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StringVariableExpression"
.end annotation


# instance fields
.field private mIndexedVar:Lmiui/app/screenelement/util/IndexedStringVariable;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "exp"

    .prologue
    .line 188
    invoke-direct {p0, p1}, Lmiui/app/screenelement/data/Expression$VariableExpression;-><init>(Ljava/lang/String;)V

    .line 189
    return-void
.end method

.method private ensureVar(Lmiui/app/screenelement/data/Variables;)V
    .locals 3
    .parameter "var"

    .prologue
    .line 217
    iget-object v0, p0, Lmiui/app/screenelement/data/Expression$StringVariableExpression;->mIndexedVar:Lmiui/app/screenelement/util/IndexedStringVariable;

    if-nez v0, :cond_0

    .line 218
    new-instance v0, Lmiui/app/screenelement/util/IndexedStringVariable;

    iget-object v1, p0, Lmiui/app/screenelement/data/Expression$StringVariableExpression;->mVar:Lmiui/app/screenelement/util/Variable;

    invoke-virtual {v1}, Lmiui/app/screenelement/util/Variable;->getObjName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lmiui/app/screenelement/data/Expression$StringVariableExpression;->mVar:Lmiui/app/screenelement/util/Variable;

    invoke-virtual {v2}, Lmiui/app/screenelement/util/Variable;->getPropertyName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1}, Lmiui/app/screenelement/util/IndexedStringVariable;-><init>(Ljava/lang/String;Ljava/lang/String;Lmiui/app/screenelement/data/Variables;)V

    iput-object v0, p0, Lmiui/app/screenelement/data/Expression$StringVariableExpression;->mIndexedVar:Lmiui/app/screenelement/util/IndexedStringVariable;

    .line 220
    :cond_0
    return-void
.end method


# virtual methods
.method public evaluate(Lmiui/app/screenelement/data/Variables;)D
    .locals 7
    .parameter "var"

    .prologue
    const-wide/16 v3, 0x0

    .line 193
    invoke-virtual {p0, p1}, Lmiui/app/screenelement/data/Expression$StringVariableExpression;->evaluateStr(Lmiui/app/screenelement/data/Variables;)Ljava/lang/String;

    move-result-object v1

    .line 194
    .local v1, str:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 200
    :goto_0
    return-wide v3

    .line 197
    :cond_0
    :try_start_0
    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    .line 198
    .local v2, value:Ljava/lang/Double;
    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v3

    goto :goto_0

    .line 199
    .end local v2           #value:Ljava/lang/Double;
    :catch_0
    move-exception v0

    .line 200
    .local v0, e:Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method public evaluateStr(Lmiui/app/screenelement/data/Variables;)Ljava/lang/String;
    .locals 1
    .parameter "var"

    .prologue
    .line 212
    invoke-direct {p0, p1}, Lmiui/app/screenelement/data/Expression$StringVariableExpression;->ensureVar(Lmiui/app/screenelement/data/Variables;)V

    .line 213
    iget-object v0, p0, Lmiui/app/screenelement/data/Expression$StringVariableExpression;->mIndexedVar:Lmiui/app/screenelement/util/IndexedStringVariable;

    invoke-virtual {v0}, Lmiui/app/screenelement/util/IndexedStringVariable;->get()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isNull(Lmiui/app/screenelement/data/Variables;)Z
    .locals 1
    .parameter "var"

    .prologue
    .line 206
    invoke-direct {p0, p1}, Lmiui/app/screenelement/data/Expression$StringVariableExpression;->ensureVar(Lmiui/app/screenelement/data/Variables;)V

    .line 207
    iget-object v0, p0, Lmiui/app/screenelement/data/Expression$StringVariableExpression;->mIndexedVar:Lmiui/app/screenelement/util/IndexedStringVariable;

    invoke-virtual {v0}, Lmiui/app/screenelement/util/IndexedStringVariable;->get()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

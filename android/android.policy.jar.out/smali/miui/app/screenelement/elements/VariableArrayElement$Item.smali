.class Lmiui/app/screenelement/elements/VariableArrayElement$Item;
.super Ljava/lang/Object;
.source "VariableArrayElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/app/screenelement/elements/VariableArrayElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Item"
.end annotation


# instance fields
.field public mExpression:Lmiui/app/screenelement/data/Expression;

.field public mNumValue:D

.field public mStrValue:Ljava/lang/String;

.field final synthetic this$0:Lmiui/app/screenelement/elements/VariableArrayElement;


# direct methods
.method public constructor <init>(Lmiui/app/screenelement/elements/VariableArrayElement;Lorg/w3c/dom/Element;)V
    .locals 2
    .parameter
    .parameter "ele"

    .prologue
    .line 122
    iput-object p1, p0, Lmiui/app/screenelement/elements/VariableArrayElement$Item;->this$0:Lmiui/app/screenelement/elements/VariableArrayElement;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    if-eqz p2, :cond_0

    .line 124
    const-string v0, "expression"

    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmiui/app/screenelement/data/Expression;->build(Ljava/lang/String;)Lmiui/app/screenelement/data/Expression;

    move-result-object v0

    iput-object v0, p0, Lmiui/app/screenelement/elements/VariableArrayElement$Item;->mExpression:Lmiui/app/screenelement/data/Expression;

    .line 125
    const-string v0, "value"

    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/app/screenelement/elements/VariableArrayElement$Item;->mStrValue:Ljava/lang/String;

    .line 126
    #getter for: Lmiui/app/screenelement/elements/VariableArrayElement;->mIsStringType:Z
    invoke-static {p1}, Lmiui/app/screenelement/elements/VariableArrayElement;->access$000(Lmiui/app/screenelement/elements/VariableArrayElement;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 128
    :try_start_0
    iget-object v0, p0, Lmiui/app/screenelement/elements/VariableArrayElement$Item;->mStrValue:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lmiui/app/screenelement/elements/VariableArrayElement$Item;->mNumValue:D
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    :cond_0
    :goto_0
    return-void

    .line 129
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public evaluate(Lmiui/app/screenelement/data/Variables;)Ljava/lang/Double;
    .locals 2
    .parameter "vars"

    .prologue
    .line 146
    iget-object v0, p0, Lmiui/app/screenelement/elements/VariableArrayElement$Item;->mExpression:Lmiui/app/screenelement/data/Expression;

    if-eqz v0, :cond_1

    .line 147
    iget-object v0, p0, Lmiui/app/screenelement/elements/VariableArrayElement$Item;->mExpression:Lmiui/app/screenelement/data/Expression;

    invoke-virtual {v0, p1}, Lmiui/app/screenelement/data/Expression;->isNull(Lmiui/app/screenelement/data/Variables;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 149
    :goto_0
    return-object v0

    .line 147
    :cond_0
    iget-object v0, p0, Lmiui/app/screenelement/elements/VariableArrayElement$Item;->mExpression:Lmiui/app/screenelement/data/Expression;

    invoke-virtual {v0, p1}, Lmiui/app/screenelement/data/Expression;->evaluate(Lmiui/app/screenelement/data/Variables;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_0

    .line 149
    :cond_1
    iget-wide v0, p0, Lmiui/app/screenelement/elements/VariableArrayElement$Item;->mNumValue:D

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_0
.end method

.method public evaluateStr(Lmiui/app/screenelement/data/Variables;)Ljava/lang/String;
    .locals 1
    .parameter "vars"

    .prologue
    .line 140
    iget-object v0, p0, Lmiui/app/screenelement/elements/VariableArrayElement$Item;->mExpression:Lmiui/app/screenelement/data/Expression;

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lmiui/app/screenelement/elements/VariableArrayElement$Item;->mExpression:Lmiui/app/screenelement/data/Expression;

    invoke-virtual {v0, p1}, Lmiui/app/screenelement/data/Expression;->evaluateStr(Lmiui/app/screenelement/data/Variables;)Ljava/lang/String;

    move-result-object v0

    .line 142
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lmiui/app/screenelement/elements/VariableArrayElement$Item;->mStrValue:Ljava/lang/String;

    goto :goto_0
.end method

.method public isExpression()Z
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lmiui/app/screenelement/elements/VariableArrayElement$Item;->mExpression:Lmiui/app/screenelement/data/Expression;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.class Lmiui/app/screenelement/ActionCommand$VariableAssignmentCommand;
.super Lmiui/app/screenelement/ActionCommand;
.source "ActionCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/app/screenelement/ActionCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VariableAssignmentCommand"
.end annotation


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "VariableCommand"


# instance fields
.field private mExpression:Lmiui/app/screenelement/data/Expression;

.field private mNumVariable:Lmiui/app/screenelement/util/IndexedNumberVariable;

.field private mStrVariable:Lmiui/app/screenelement/util/IndexedStringVariable;


# direct methods
.method public constructor <init>(Lmiui/app/screenelement/ScreenContext;Lorg/w3c/dom/Element;)V
    .locals 8
    .parameter "context"
    .parameter "ele"

    .prologue
    .line 746
    invoke-direct {p0, p1}, Lmiui/app/screenelement/ActionCommand;-><init>(Lmiui/app/screenelement/ScreenContext;)V

    .line 747
    const-string v4, "name"

    invoke-interface {p2, v4}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 748
    .local v1, name:Ljava/lang/String;
    const-string v4, "expression"

    invoke-interface {p2, v4}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 749
    .local v0, expression:Ljava/lang/String;
    const-string v4, "type"

    invoke-interface {p2, v4}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 751
    .local v2, type:Ljava/lang/String;
    new-instance v3, Lmiui/app/screenelement/util/Variable;

    invoke-direct {v3, v1}, Lmiui/app/screenelement/util/Variable;-><init>(Ljava/lang/String;)V

    .line 752
    .local v3, v:Lmiui/app/screenelement/util/Variable;
    const-string v4, "string"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 753
    new-instance v4, Lmiui/app/screenelement/util/IndexedStringVariable;

    invoke-virtual {v3}, Lmiui/app/screenelement/util/Variable;->getObjName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lmiui/app/screenelement/util/Variable;->getPropertyName()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p1, Lmiui/app/screenelement/ScreenContext;->mVariables:Lmiui/app/screenelement/data/Variables;

    invoke-direct {v4, v5, v6, v7}, Lmiui/app/screenelement/util/IndexedStringVariable;-><init>(Ljava/lang/String;Ljava/lang/String;Lmiui/app/screenelement/data/Variables;)V

    iput-object v4, p0, Lmiui/app/screenelement/ActionCommand$VariableAssignmentCommand;->mStrVariable:Lmiui/app/screenelement/util/IndexedStringVariable;

    .line 757
    :goto_0
    invoke-static {v0}, Lmiui/app/screenelement/data/Expression;->build(Ljava/lang/String;)Lmiui/app/screenelement/data/Expression;

    move-result-object v4

    iput-object v4, p0, Lmiui/app/screenelement/ActionCommand$VariableAssignmentCommand;->mExpression:Lmiui/app/screenelement/data/Expression;

    .line 758
    iget-object v4, p0, Lmiui/app/screenelement/ActionCommand$VariableAssignmentCommand;->mExpression:Lmiui/app/screenelement/data/Expression;

    if-nez v4, :cond_0

    .line 759
    const-string v4, "ActionCommand"

    const-string v5, "invalid expression in VariableAssignmentCommand"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 761
    :cond_0
    return-void

    .line 755
    :cond_1
    new-instance v4, Lmiui/app/screenelement/util/IndexedNumberVariable;

    invoke-virtual {v3}, Lmiui/app/screenelement/util/Variable;->getObjName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lmiui/app/screenelement/util/Variable;->getPropertyName()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p1, Lmiui/app/screenelement/ScreenContext;->mVariables:Lmiui/app/screenelement/data/Variables;

    invoke-direct {v4, v5, v6, v7}, Lmiui/app/screenelement/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Ljava/lang/String;Lmiui/app/screenelement/data/Variables;)V

    iput-object v4, p0, Lmiui/app/screenelement/ActionCommand$VariableAssignmentCommand;->mNumVariable:Lmiui/app/screenelement/util/IndexedNumberVariable;

    goto :goto_0
.end method


# virtual methods
.method protected doPerform()V
    .locals 3

    .prologue
    .line 765
    iget-object v0, p0, Lmiui/app/screenelement/ActionCommand$VariableAssignmentCommand;->mNumVariable:Lmiui/app/screenelement/util/IndexedNumberVariable;

    if-eqz v0, :cond_1

    .line 766
    iget-object v0, p0, Lmiui/app/screenelement/ActionCommand$VariableAssignmentCommand;->mNumVariable:Lmiui/app/screenelement/util/IndexedNumberVariable;

    iget-object v1, p0, Lmiui/app/screenelement/ActionCommand$VariableAssignmentCommand;->mExpression:Lmiui/app/screenelement/data/Expression;

    iget-object v2, p0, Lmiui/app/screenelement/ActionCommand$VariableAssignmentCommand;->mContext:Lmiui/app/screenelement/ScreenContext;

    iget-object v2, v2, Lmiui/app/screenelement/ScreenContext;->mVariables:Lmiui/app/screenelement/data/Variables;

    invoke-virtual {v1, v2}, Lmiui/app/screenelement/data/Expression;->evaluate(Lmiui/app/screenelement/data/Variables;)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lmiui/app/screenelement/util/IndexedNumberVariable;->set(D)V

    .line 770
    :cond_0
    :goto_0
    return-void

    .line 767
    :cond_1
    iget-object v0, p0, Lmiui/app/screenelement/ActionCommand$VariableAssignmentCommand;->mStrVariable:Lmiui/app/screenelement/util/IndexedStringVariable;

    if-eqz v0, :cond_0

    .line 768
    iget-object v0, p0, Lmiui/app/screenelement/ActionCommand$VariableAssignmentCommand;->mStrVariable:Lmiui/app/screenelement/util/IndexedStringVariable;

    iget-object v1, p0, Lmiui/app/screenelement/ActionCommand$VariableAssignmentCommand;->mExpression:Lmiui/app/screenelement/data/Expression;

    iget-object v2, p0, Lmiui/app/screenelement/ActionCommand$VariableAssignmentCommand;->mContext:Lmiui/app/screenelement/ScreenContext;

    iget-object v2, v2, Lmiui/app/screenelement/ScreenContext;->mVariables:Lmiui/app/screenelement/data/Variables;

    invoke-virtual {v1, v2}, Lmiui/app/screenelement/data/Expression;->evaluateStr(Lmiui/app/screenelement/data/Variables;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/app/screenelement/util/IndexedStringVariable;->set(Ljava/lang/String;)V

    goto :goto_0
.end method

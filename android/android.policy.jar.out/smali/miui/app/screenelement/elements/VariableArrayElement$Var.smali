.class Lmiui/app/screenelement/elements/VariableArrayElement$Var;
.super Ljava/lang/Object;
.source "VariableArrayElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/app/screenelement/elements/VariableArrayElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Var"
.end annotation


# instance fields
.field private mConst:Z

.field private mCurrentItemIsExpression:Z

.field private mIndex:I

.field private mIndexExpression:Lmiui/app/screenelement/data/Expression;

.field private mName:Ljava/lang/String;

.field private mNumberVar:Lmiui/app/screenelement/util/IndexedNumberVariable;

.field private mStringVar:Lmiui/app/screenelement/util/IndexedStringVariable;

.field final synthetic this$0:Lmiui/app/screenelement/elements/VariableArrayElement;


# direct methods
.method public constructor <init>(Lmiui/app/screenelement/elements/VariableArrayElement;Lorg/w3c/dom/Element;)V
    .locals 3
    .parameter
    .parameter "ele"

    .prologue
    .line 56
    iput-object p1, p0, Lmiui/app/screenelement/elements/VariableArrayElement$Var;->this$0:Lmiui/app/screenelement/elements/VariableArrayElement;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v0, -0x1

    iput v0, p0, Lmiui/app/screenelement/elements/VariableArrayElement$Var;->mIndex:I

    .line 57
    if-eqz p2, :cond_0

    .line 58
    const-string v0, "name"

    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/app/screenelement/elements/VariableArrayElement$Var;->mName:Ljava/lang/String;

    .line 59
    const-string v0, "index"

    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmiui/app/screenelement/data/Expression;->build(Ljava/lang/String;)Lmiui/app/screenelement/data/Expression;

    move-result-object v0

    iput-object v0, p0, Lmiui/app/screenelement/elements/VariableArrayElement$Var;->mIndexExpression:Lmiui/app/screenelement/data/Expression;

    .line 60
    const-string v0, "const"

    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lmiui/app/screenelement/elements/VariableArrayElement$Var;->mConst:Z

    .line 62
    #getter for: Lmiui/app/screenelement/elements/VariableArrayElement;->mIsStringType:Z
    invoke-static {p1}, Lmiui/app/screenelement/elements/VariableArrayElement;->access$000(Lmiui/app/screenelement/elements/VariableArrayElement;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 63
    new-instance v0, Lmiui/app/screenelement/util/IndexedStringVariable;

    iget-object v1, p0, Lmiui/app/screenelement/elements/VariableArrayElement$Var;->mName:Ljava/lang/String;

    iget-object v2, p1, Lmiui/app/screenelement/elements/VariableArrayElement;->mContext:Lmiui/app/screenelement/ScreenContext;

    iget-object v2, v2, Lmiui/app/screenelement/ScreenContext;->mVariables:Lmiui/app/screenelement/data/Variables;

    invoke-direct {v0, v1, v2}, Lmiui/app/screenelement/util/IndexedStringVariable;-><init>(Ljava/lang/String;Lmiui/app/screenelement/data/Variables;)V

    iput-object v0, p0, Lmiui/app/screenelement/elements/VariableArrayElement$Var;->mStringVar:Lmiui/app/screenelement/util/IndexedStringVariable;

    .line 69
    :cond_0
    :goto_0
    return-void

    .line 65
    :cond_1
    new-instance v0, Lmiui/app/screenelement/util/IndexedNumberVariable;

    iget-object v1, p0, Lmiui/app/screenelement/elements/VariableArrayElement$Var;->mName:Ljava/lang/String;

    iget-object v2, p1, Lmiui/app/screenelement/elements/VariableArrayElement;->mContext:Lmiui/app/screenelement/ScreenContext;

    iget-object v2, v2, Lmiui/app/screenelement/ScreenContext;->mVariables:Lmiui/app/screenelement/data/Variables;

    invoke-direct {v0, v1, v2}, Lmiui/app/screenelement/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Lmiui/app/screenelement/data/Variables;)V

    iput-object v0, p0, Lmiui/app/screenelement/elements/VariableArrayElement$Var;->mNumberVar:Lmiui/app/screenelement/util/IndexedNumberVariable;

    goto :goto_0
.end method

.method private update()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 81
    iget-object v3, p0, Lmiui/app/screenelement/elements/VariableArrayElement$Var;->mIndexExpression:Lmiui/app/screenelement/data/Expression;

    if-nez v3, :cond_1

    .line 112
    :cond_0
    :goto_0
    return-void

    .line 84
    :cond_1
    iget-object v3, p0, Lmiui/app/screenelement/elements/VariableArrayElement$Var;->this$0:Lmiui/app/screenelement/elements/VariableArrayElement;

    iget-object v3, v3, Lmiui/app/screenelement/elements/VariableArrayElement;->mContext:Lmiui/app/screenelement/ScreenContext;

    iget-object v2, v3, Lmiui/app/screenelement/ScreenContext;->mVariables:Lmiui/app/screenelement/data/Variables;

    .line 85
    .local v2, var:Lmiui/app/screenelement/data/Variables;
    iget-object v3, p0, Lmiui/app/screenelement/elements/VariableArrayElement$Var;->mIndexExpression:Lmiui/app/screenelement/data/Expression;

    invoke-virtual {v3, v2}, Lmiui/app/screenelement/data/Expression;->evaluate(Lmiui/app/screenelement/data/Variables;)D

    move-result-wide v3

    double-to-int v0, v3

    .line 86
    .local v0, index:I
    if-ltz v0, :cond_2

    iget-object v3, p0, Lmiui/app/screenelement/elements/VariableArrayElement$Var;->this$0:Lmiui/app/screenelement/elements/VariableArrayElement;

    #getter for: Lmiui/app/screenelement/elements/VariableArrayElement;->mArray:Ljava/util/ArrayList;
    invoke-static {v3}, Lmiui/app/screenelement/elements/VariableArrayElement;->access$100(Lmiui/app/screenelement/elements/VariableArrayElement;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v0, v3, :cond_4

    .line 88
    :cond_2
    iget-object v3, p0, Lmiui/app/screenelement/elements/VariableArrayElement$Var;->this$0:Lmiui/app/screenelement/elements/VariableArrayElement;

    #getter for: Lmiui/app/screenelement/elements/VariableArrayElement;->mIsStringType:Z
    invoke-static {v3}, Lmiui/app/screenelement/elements/VariableArrayElement;->access$000(Lmiui/app/screenelement/elements/VariableArrayElement;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 89
    iget-object v3, p0, Lmiui/app/screenelement/elements/VariableArrayElement$Var;->mStringVar:Lmiui/app/screenelement/util/IndexedStringVariable;

    invoke-virtual {v3, v5}, Lmiui/app/screenelement/util/IndexedStringVariable;->set(Ljava/lang/String;)V

    goto :goto_0

    .line 91
    :cond_3
    iget-object v3, p0, Lmiui/app/screenelement/elements/VariableArrayElement$Var;->mNumberVar:Lmiui/app/screenelement/util/IndexedNumberVariable;

    invoke-virtual {v3, v5}, Lmiui/app/screenelement/util/IndexedNumberVariable;->set(Ljava/lang/Double;)V

    goto :goto_0

    .line 96
    :cond_4
    iget v3, p0, Lmiui/app/screenelement/elements/VariableArrayElement$Var;->mIndex:I

    if-ne v3, v0, :cond_5

    iget-boolean v3, p0, Lmiui/app/screenelement/elements/VariableArrayElement$Var;->mCurrentItemIsExpression:Z

    if-eqz v3, :cond_0

    .line 101
    :cond_5
    iget-object v3, p0, Lmiui/app/screenelement/elements/VariableArrayElement$Var;->this$0:Lmiui/app/screenelement/elements/VariableArrayElement;

    #getter for: Lmiui/app/screenelement/elements/VariableArrayElement;->mArray:Ljava/util/ArrayList;
    invoke-static {v3}, Lmiui/app/screenelement/elements/VariableArrayElement;->access$100(Lmiui/app/screenelement/elements/VariableArrayElement;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/app/screenelement/elements/VariableArrayElement$Item;

    .line 102
    .local v1, item:Lmiui/app/screenelement/elements/VariableArrayElement$Item;
    iget v3, p0, Lmiui/app/screenelement/elements/VariableArrayElement$Var;->mIndex:I

    if-eq v3, v0, :cond_6

    .line 103
    iput v0, p0, Lmiui/app/screenelement/elements/VariableArrayElement$Var;->mIndex:I

    .line 104
    invoke-virtual {v1}, Lmiui/app/screenelement/elements/VariableArrayElement$Item;->isExpression()Z

    move-result v3

    iput-boolean v3, p0, Lmiui/app/screenelement/elements/VariableArrayElement$Var;->mCurrentItemIsExpression:Z

    .line 107
    :cond_6
    iget-object v3, p0, Lmiui/app/screenelement/elements/VariableArrayElement$Var;->this$0:Lmiui/app/screenelement/elements/VariableArrayElement;

    #getter for: Lmiui/app/screenelement/elements/VariableArrayElement;->mIsStringType:Z
    invoke-static {v3}, Lmiui/app/screenelement/elements/VariableArrayElement;->access$000(Lmiui/app/screenelement/elements/VariableArrayElement;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 108
    iget-object v3, p0, Lmiui/app/screenelement/elements/VariableArrayElement$Var;->mStringVar:Lmiui/app/screenelement/util/IndexedStringVariable;

    invoke-virtual {v1, v2}, Lmiui/app/screenelement/elements/VariableArrayElement$Item;->evaluateStr(Lmiui/app/screenelement/data/Variables;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lmiui/app/screenelement/util/IndexedStringVariable;->set(Ljava/lang/String;)V

    goto :goto_0

    .line 110
    :cond_7
    iget-object v3, p0, Lmiui/app/screenelement/elements/VariableArrayElement$Var;->mNumberVar:Lmiui/app/screenelement/util/IndexedNumberVariable;

    invoke-virtual {v1, v2}, Lmiui/app/screenelement/elements/VariableArrayElement$Item;->evaluate(Lmiui/app/screenelement/data/Variables;)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v3, v4}, Lmiui/app/screenelement/util/IndexedNumberVariable;->set(Ljava/lang/Double;)V

    goto :goto_0
.end method


# virtual methods
.method public init()V
    .locals 0

    .prologue
    .line 77
    invoke-direct {p0}, Lmiui/app/screenelement/elements/VariableArrayElement$Var;->update()V

    .line 78
    return-void
.end method

.method public tick()V
    .locals 1

    .prologue
    .line 72
    iget-boolean v0, p0, Lmiui/app/screenelement/elements/VariableArrayElement$Var;->mConst:Z

    if-nez v0, :cond_0

    .line 73
    invoke-direct {p0}, Lmiui/app/screenelement/elements/VariableArrayElement$Var;->update()V

    .line 74
    :cond_0
    return-void
.end method

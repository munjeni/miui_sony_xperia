.class public Lmiui/app/screenelement/elements/VariableElement;
.super Lmiui/app/screenelement/elements/ScreenElement;
.source "VariableElement.java"


# static fields
.field private static final OLD_VALUE:Ljava/lang/String; = "old_value"

.field public static final TAG_NAME:Ljava/lang/String; = "Var"


# instance fields
.field private mAnimation:Lmiui/app/screenelement/animation/VariableAnimation;

.field private mConst:Z

.field private mExpression:Lmiui/app/screenelement/data/Expression;

.field private mIsStringType:Z

.field private mNumberVar:Lmiui/app/screenelement/util/IndexedNumberVariable;

.field private mOldNumberVar:Lmiui/app/screenelement/util/IndexedNumberVariable;

.field private mOldValue:Ljava/lang/Double;

.field private mStringVar:Lmiui/app/screenelement/util/IndexedStringVariable;

.field private mThreshold:D

.field private mTrigger:Lmiui/app/screenelement/CommandTrigger;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/app/screenelement/ScreenContext;Lmiui/app/screenelement/ScreenElementRoot;)V
    .locals 7
    .parameter "ele"
    .parameter "c"
    .parameter "root"

    .prologue
    .line 53
    invoke-direct {p0, p1, p2, p3}, Lmiui/app/screenelement/elements/ScreenElement;-><init>(Lorg/w3c/dom/Element;Lmiui/app/screenelement/ScreenContext;Lmiui/app/screenelement/ScreenElementRoot;)V

    .line 44
    const/4 v3, 0x0

    iput-object v3, p0, Lmiui/app/screenelement/elements/VariableElement;->mOldValue:Ljava/lang/Double;

    .line 54
    if-eqz p1, :cond_1

    .line 55
    const-string v3, "expression"

    invoke-interface {p1, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lmiui/app/screenelement/data/Expression;->build(Ljava/lang/String;)Lmiui/app/screenelement/data/Expression;

    move-result-object v3

    iput-object v3, p0, Lmiui/app/screenelement/elements/VariableElement;->mExpression:Lmiui/app/screenelement/data/Expression;

    .line 56
    const-string v3, "threshold"

    const/high16 v4, 0x3f80

    invoke-static {p1, v3, v4}, Lmiui/app/screenelement/util/Utils;->getAttrAsFloat(Lorg/w3c/dom/Element;Ljava/lang/String;F)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    float-to-double v3, v3

    iput-wide v3, p0, Lmiui/app/screenelement/elements/VariableElement;->mThreshold:D

    .line 57
    const-string v3, "string"

    const-string v4, "type"

    invoke-interface {p1, v4}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lmiui/app/screenelement/elements/VariableElement;->mIsStringType:Z

    .line 58
    const-string v3, "const"

    invoke-interface {p1, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lmiui/app/screenelement/elements/VariableElement;->mConst:Z

    .line 59
    iget-boolean v3, p0, Lmiui/app/screenelement/elements/VariableElement;->mIsStringType:Z

    if-eqz v3, :cond_2

    .line 60
    new-instance v3, Lmiui/app/screenelement/util/IndexedStringVariable;

    iget-object v4, p0, Lmiui/app/screenelement/elements/VariableElement;->mName:Ljava/lang/String;

    iget-object v5, p2, Lmiui/app/screenelement/ScreenContext;->mVariables:Lmiui/app/screenelement/data/Variables;

    invoke-direct {v3, v4, v5}, Lmiui/app/screenelement/util/IndexedStringVariable;-><init>(Ljava/lang/String;Lmiui/app/screenelement/data/Variables;)V

    iput-object v3, p0, Lmiui/app/screenelement/elements/VariableElement;->mStringVar:Lmiui/app/screenelement/util/IndexedStringVariable;

    .line 66
    :goto_0
    const-string v3, "VariableAnimation"

    invoke-static {p1, v3}, Lmiui/app/screenelement/util/Utils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 67
    .local v0, ani:Lorg/w3c/dom/Element;
    if-eqz v0, :cond_0

    .line 69
    :try_start_0
    new-instance v3, Lmiui/app/screenelement/animation/VariableAnimation;

    invoke-direct {v3, v0, p2}, Lmiui/app/screenelement/animation/VariableAnimation;-><init>(Lorg/w3c/dom/Element;Lmiui/app/screenelement/ScreenContext;)V

    iput-object v3, p0, Lmiui/app/screenelement/elements/VariableElement;->mAnimation:Lmiui/app/screenelement/animation/VariableAnimation;
    :try_end_0
    .catch Lmiui/app/screenelement/ScreenElementLoadException; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    :cond_0
    :goto_1
    const-string v3, "Trigger"

    invoke-static {p1, v3}, Lmiui/app/screenelement/util/Utils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v2

    .line 77
    .local v2, trigger:Lorg/w3c/dom/Element;
    if-eqz v2, :cond_1

    .line 79
    :try_start_1
    new-instance v3, Lmiui/app/screenelement/CommandTrigger;

    iget-object v4, p0, Lmiui/app/screenelement/elements/VariableElement;->mContext:Lmiui/app/screenelement/ScreenContext;

    invoke-direct {v3, v4, v2, p3}, Lmiui/app/screenelement/CommandTrigger;-><init>(Lmiui/app/screenelement/ScreenContext;Lorg/w3c/dom/Element;Lmiui/app/screenelement/ScreenElementRoot;)V

    iput-object v3, p0, Lmiui/app/screenelement/elements/VariableElement;->mTrigger:Lmiui/app/screenelement/CommandTrigger;
    :try_end_1
    .catch Lmiui/app/screenelement/ScreenElementLoadException; {:try_start_1 .. :try_end_1} :catch_1

    .line 85
    .end local v0           #ani:Lorg/w3c/dom/Element;
    .end local v2           #trigger:Lorg/w3c/dom/Element;
    :cond_1
    :goto_2
    return-void

    .line 62
    :cond_2
    new-instance v3, Lmiui/app/screenelement/util/IndexedNumberVariable;

    iget-object v4, p0, Lmiui/app/screenelement/elements/VariableElement;->mName:Ljava/lang/String;

    iget-object v5, p2, Lmiui/app/screenelement/ScreenContext;->mVariables:Lmiui/app/screenelement/data/Variables;

    invoke-direct {v3, v4, v5}, Lmiui/app/screenelement/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Lmiui/app/screenelement/data/Variables;)V

    iput-object v3, p0, Lmiui/app/screenelement/elements/VariableElement;->mNumberVar:Lmiui/app/screenelement/util/IndexedNumberVariable;

    .line 63
    new-instance v3, Lmiui/app/screenelement/util/IndexedNumberVariable;

    iget-object v4, p0, Lmiui/app/screenelement/elements/VariableElement;->mName:Ljava/lang/String;

    const-string v5, "old_value"

    iget-object v6, p2, Lmiui/app/screenelement/ScreenContext;->mVariables:Lmiui/app/screenelement/data/Variables;

    invoke-direct {v3, v4, v5, v6}, Lmiui/app/screenelement/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Ljava/lang/String;Lmiui/app/screenelement/data/Variables;)V

    iput-object v3, p0, Lmiui/app/screenelement/elements/VariableElement;->mOldNumberVar:Lmiui/app/screenelement/util/IndexedNumberVariable;

    goto :goto_0

    .line 70
    .restart local v0       #ani:Lorg/w3c/dom/Element;
    :catch_0
    move-exception v1

    .line 71
    .local v1, e:Lmiui/app/screenelement/ScreenElementLoadException;
    invoke-virtual {v1}, Lmiui/app/screenelement/ScreenElementLoadException;->printStackTrace()V

    goto :goto_1

    .line 80
    .end local v1           #e:Lmiui/app/screenelement/ScreenElementLoadException;
    .restart local v2       #trigger:Lorg/w3c/dom/Element;
    :catch_1
    move-exception v1

    .line 81
    .restart local v1       #e:Lmiui/app/screenelement/ScreenElementLoadException;
    invoke-virtual {v1}, Lmiui/app/screenelement/ScreenElementLoadException;->printStackTrace()V

    goto :goto_2
.end method

.method private update()V
    .locals 6

    .prologue
    .line 119
    iget-object v2, p0, Lmiui/app/screenelement/elements/VariableElement;->mContext:Lmiui/app/screenelement/ScreenContext;

    iget-object v1, v2, Lmiui/app/screenelement/ScreenContext;->mVariables:Lmiui/app/screenelement/data/Variables;

    .line 120
    .local v1, var:Lmiui/app/screenelement/data/Variables;
    iget-boolean v2, p0, Lmiui/app/screenelement/elements/VariableElement;->mIsStringType:Z

    if-eqz v2, :cond_2

    .line 121
    iget-object v2, p0, Lmiui/app/screenelement/elements/VariableElement;->mExpression:Lmiui/app/screenelement/data/Expression;

    if-nez v2, :cond_1

    .line 144
    :cond_0
    :goto_0
    return-void

    .line 123
    :cond_1
    iget-object v2, p0, Lmiui/app/screenelement/elements/VariableElement;->mStringVar:Lmiui/app/screenelement/util/IndexedStringVariable;

    iget-object v3, p0, Lmiui/app/screenelement/elements/VariableElement;->mExpression:Lmiui/app/screenelement/data/Expression;

    invoke-virtual {v3, v1}, Lmiui/app/screenelement/data/Expression;->evaluateStr(Lmiui/app/screenelement/data/Variables;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lmiui/app/screenelement/util/IndexedStringVariable;->set(Ljava/lang/String;)V

    goto :goto_0

    .line 125
    :cond_2
    const/4 v0, 0x0

    .line 126
    .local v0, value:Ljava/lang/Double;
    iget-object v2, p0, Lmiui/app/screenelement/elements/VariableElement;->mAnimation:Lmiui/app/screenelement/animation/VariableAnimation;

    if-eqz v2, :cond_6

    .line 127
    iget-object v2, p0, Lmiui/app/screenelement/elements/VariableElement;->mAnimation:Lmiui/app/screenelement/animation/VariableAnimation;

    invoke-virtual {v2}, Lmiui/app/screenelement/animation/VariableAnimation;->getValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    .line 131
    :cond_3
    :goto_1
    iget-object v2, p0, Lmiui/app/screenelement/elements/VariableElement;->mNumberVar:Lmiui/app/screenelement/util/IndexedNumberVariable;

    invoke-virtual {v2, v0}, Lmiui/app/screenelement/util/IndexedNumberVariable;->set(Ljava/lang/Double;)V

    .line 133
    if-eqz v0, :cond_0

    iget-object v2, p0, Lmiui/app/screenelement/elements/VariableElement;->mOldValue:Ljava/lang/Double;

    invoke-virtual {v0, v2}, Ljava/lang/Double;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 134
    iget-object v2, p0, Lmiui/app/screenelement/elements/VariableElement;->mOldValue:Ljava/lang/Double;

    if-nez v2, :cond_4

    .line 135
    iput-object v0, p0, Lmiui/app/screenelement/elements/VariableElement;->mOldValue:Ljava/lang/Double;

    .line 137
    :cond_4
    iget-object v2, p0, Lmiui/app/screenelement/elements/VariableElement;->mOldNumberVar:Lmiui/app/screenelement/util/IndexedNumberVariable;

    iget-object v3, p0, Lmiui/app/screenelement/elements/VariableElement;->mOldValue:Ljava/lang/Double;

    invoke-virtual {v2, v3}, Lmiui/app/screenelement/util/IndexedNumberVariable;->set(Ljava/lang/Double;)V

    .line 138
    iget-object v2, p0, Lmiui/app/screenelement/elements/VariableElement;->mTrigger:Lmiui/app/screenelement/CommandTrigger;

    if-eqz v2, :cond_5

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    iget-object v4, p0, Lmiui/app/screenelement/elements/VariableElement;->mOldValue:Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    sub-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    iget-wide v4, p0, Lmiui/app/screenelement/elements/VariableElement;->mThreshold:D

    cmpl-double v2, v2, v4

    if-ltz v2, :cond_5

    .line 139
    iget-object v2, p0, Lmiui/app/screenelement/elements/VariableElement;->mTrigger:Lmiui/app/screenelement/CommandTrigger;

    invoke-virtual {v2}, Lmiui/app/screenelement/CommandTrigger;->perform()V

    .line 141
    :cond_5
    iput-object v0, p0, Lmiui/app/screenelement/elements/VariableElement;->mOldValue:Ljava/lang/Double;

    goto :goto_0

    .line 128
    :cond_6
    iget-object v2, p0, Lmiui/app/screenelement/elements/VariableElement;->mExpression:Lmiui/app/screenelement/data/Expression;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lmiui/app/screenelement/elements/VariableElement;->mExpression:Lmiui/app/screenelement/data/Expression;

    invoke-virtual {v2, v1}, Lmiui/app/screenelement/data/Expression;->isNull(Lmiui/app/screenelement/data/Variables;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 129
    iget-object v2, p0, Lmiui/app/screenelement/elements/VariableElement;->mExpression:Lmiui/app/screenelement/data/Expression;

    invoke-virtual {v2, v1}, Lmiui/app/screenelement/data/Expression;->evaluate(Lmiui/app/screenelement/data/Variables;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_1
.end method


# virtual methods
.method public init()V
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lmiui/app/screenelement/elements/VariableElement;->mAnimation:Lmiui/app/screenelement/animation/VariableAnimation;

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lmiui/app/screenelement/elements/VariableElement;->mAnimation:Lmiui/app/screenelement/animation/VariableAnimation;

    invoke-virtual {v0}, Lmiui/app/screenelement/animation/VariableAnimation;->init()V

    .line 108
    :cond_0
    invoke-direct {p0}, Lmiui/app/screenelement/elements/VariableElement;->update()V

    .line 109
    return-void
.end method

.method public render(Landroid/graphics/Canvas;)V
    .locals 0
    .parameter "c"

    .prologue
    .line 90
    return-void
.end method

.method public reset(J)V
    .locals 1
    .parameter "time"

    .prologue
    .line 112
    iget-object v0, p0, Lmiui/app/screenelement/elements/VariableElement;->mAnimation:Lmiui/app/screenelement/animation/VariableAnimation;

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lmiui/app/screenelement/elements/VariableElement;->mAnimation:Lmiui/app/screenelement/animation/VariableAnimation;

    invoke-virtual {v0, p1, p2}, Lmiui/app/screenelement/animation/VariableAnimation;->reset(J)V

    .line 114
    :cond_0
    invoke-direct {p0}, Lmiui/app/screenelement/elements/VariableElement;->update()V

    .line 115
    return-void
.end method

.method public tick(J)V
    .locals 1
    .parameter "currentTime"

    .prologue
    .line 94
    invoke-super {p0, p1, p2}, Lmiui/app/screenelement/elements/ScreenElement;->tick(J)V

    .line 95
    iget-boolean v0, p0, Lmiui/app/screenelement/elements/VariableElement;->mIsVisible:Z

    if-nez v0, :cond_1

    .line 103
    :cond_0
    :goto_0
    return-void

    .line 98
    :cond_1
    iget-object v0, p0, Lmiui/app/screenelement/elements/VariableElement;->mAnimation:Lmiui/app/screenelement/animation/VariableAnimation;

    if-eqz v0, :cond_2

    .line 99
    iget-object v0, p0, Lmiui/app/screenelement/elements/VariableElement;->mAnimation:Lmiui/app/screenelement/animation/VariableAnimation;

    invoke-virtual {v0, p1, p2}, Lmiui/app/screenelement/animation/VariableAnimation;->tick(J)V

    .line 101
    :cond_2
    iget-boolean v0, p0, Lmiui/app/screenelement/elements/VariableElement;->mConst:Z

    if-nez v0, :cond_0

    .line 102
    invoke-direct {p0}, Lmiui/app/screenelement/elements/VariableElement;->update()V

    goto :goto_0
.end method

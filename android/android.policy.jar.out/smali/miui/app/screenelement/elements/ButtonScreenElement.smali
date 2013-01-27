.class public Lmiui/app/screenelement/elements/ButtonScreenElement;
.super Lmiui/app/screenelement/elements/AnimatedScreenElement;
.source "ButtonScreenElement.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/app/screenelement/elements/ButtonScreenElement$ButtonAction;,
        Lmiui/app/screenelement/elements/ButtonScreenElement$ButtonActionListener;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ButtonScreenElement"

.field public static final TAG_NAME:Ljava/lang/String; = "Button"


# instance fields
.field private mListener:Lmiui/app/screenelement/elements/ButtonScreenElement$ButtonActionListener;

.field private mListenerName:Ljava/lang/String;

.field private mNormalElements:Lmiui/app/screenelement/elements/ElementGroup;

.field private mPressed:Z

.field private mPressedElements:Lmiui/app/screenelement/elements/ElementGroup;

.field private mPreviousTapPositionX:F

.field private mPreviousTapPositionY:F

.field private mPreviousTapUpTime:J

.field private mTouching:Z

.field private mTriggers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lmiui/app/screenelement/CommandTrigger;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/app/screenelement/ScreenContext;Lmiui/app/screenelement/ScreenElementRoot;)V
    .locals 1
    .parameter "ele"
    .parameter "c"
    .parameter "root"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/app/screenelement/ScreenElementLoadException;
        }
    .end annotation

    .prologue
    .line 64
    invoke-direct {p0, p1, p2, p3}, Lmiui/app/screenelement/elements/AnimatedScreenElement;-><init>(Lorg/w3c/dom/Element;Lmiui/app/screenelement/ScreenContext;Lmiui/app/screenelement/ScreenElementRoot;)V

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/app/screenelement/elements/ButtonScreenElement;->mTriggers:Ljava/util/ArrayList;

    .line 65
    invoke-virtual {p0, p1, p3}, Lmiui/app/screenelement/elements/ButtonScreenElement;->load(Lorg/w3c/dom/Element;Lmiui/app/screenelement/ScreenElementRoot;)V

    .line 66
    if-eqz p1, :cond_0

    .line 67
    const-string v0, "listener"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/app/screenelement/elements/ButtonScreenElement;->mListenerName:Ljava/lang/String;

    .line 69
    :cond_0
    return-void
.end method

.method private getCur()Lmiui/app/screenelement/elements/ElementGroup;
    .locals 1

    .prologue
    .line 291
    iget-boolean v0, p0, Lmiui/app/screenelement/elements/ButtonScreenElement;->mPressed:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lmiui/app/screenelement/elements/ButtonScreenElement;->mTouching:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/app/screenelement/elements/ButtonScreenElement;->mPressedElements:Lmiui/app/screenelement/elements/ElementGroup;

    if-eqz v0, :cond_0

    .line 292
    iget-object v0, p0, Lmiui/app/screenelement/elements/ButtonScreenElement;->mPressedElements:Lmiui/app/screenelement/elements/ElementGroup;

    .line 294
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lmiui/app/screenelement/elements/ButtonScreenElement;->mNormalElements:Lmiui/app/screenelement/elements/ElementGroup;

    goto :goto_0
.end method

.method private onCancel()V
    .locals 1

    .prologue
    .line 181
    sget-object v0, Lmiui/app/screenelement/elements/ButtonScreenElement$ButtonAction;->Cancel:Lmiui/app/screenelement/elements/ButtonScreenElement$ButtonAction;

    invoke-direct {p0, v0}, Lmiui/app/screenelement/elements/ButtonScreenElement;->performAction(Lmiui/app/screenelement/elements/ButtonScreenElement$ButtonAction;)V

    .line 182
    return-void
.end method

.method private performAction(Lmiui/app/screenelement/elements/ButtonScreenElement$ButtonAction;)V
    .locals 3
    .parameter "action"

    .prologue
    .line 185
    iget-object v2, p0, Lmiui/app/screenelement/elements/ButtonScreenElement;->mTriggers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/app/screenelement/CommandTrigger;

    .line 186
    .local v1, tri:Lmiui/app/screenelement/CommandTrigger;
    invoke-virtual {v1}, Lmiui/app/screenelement/CommandTrigger;->getAction()Lmiui/app/screenelement/elements/ButtonScreenElement$ButtonAction;

    move-result-object v2

    if-ne v2, p1, :cond_0

    .line 187
    invoke-virtual {v1}, Lmiui/app/screenelement/CommandTrigger;->perform()V

    goto :goto_0

    .line 189
    .end local v1           #tri:Lmiui/app/screenelement/CommandTrigger;
    :cond_1
    iget-object v2, p0, Lmiui/app/screenelement/elements/ButtonScreenElement;->mRoot:Lmiui/app/screenelement/ScreenElementRoot;

    invoke-virtual {v2, p0, p1}, Lmiui/app/screenelement/ScreenElementRoot;->onButtonInteractive(Lmiui/app/screenelement/elements/ButtonScreenElement;Lmiui/app/screenelement/elements/ButtonScreenElement$ButtonAction;)V

    .line 190
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 3

    .prologue
    .line 273
    iget-object v2, p0, Lmiui/app/screenelement/elements/ButtonScreenElement;->mNormalElements:Lmiui/app/screenelement/elements/ElementGroup;

    if-eqz v2, :cond_0

    .line 274
    iget-object v2, p0, Lmiui/app/screenelement/elements/ButtonScreenElement;->mNormalElements:Lmiui/app/screenelement/elements/ElementGroup;

    invoke-virtual {v2}, Lmiui/app/screenelement/elements/ElementGroup;->finish()V

    .line 275
    :cond_0
    iget-object v2, p0, Lmiui/app/screenelement/elements/ButtonScreenElement;->mPressedElements:Lmiui/app/screenelement/elements/ElementGroup;

    if-eqz v2, :cond_1

    .line 276
    iget-object v2, p0, Lmiui/app/screenelement/elements/ButtonScreenElement;->mPressedElements:Lmiui/app/screenelement/elements/ElementGroup;

    invoke-virtual {v2}, Lmiui/app/screenelement/elements/ElementGroup;->finish()V

    .line 277
    :cond_1
    iget-object v2, p0, Lmiui/app/screenelement/elements/ButtonScreenElement;->mTriggers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/app/screenelement/CommandTrigger;

    .line 278
    .local v1, tri:Lmiui/app/screenelement/CommandTrigger;
    invoke-virtual {v1}, Lmiui/app/screenelement/CommandTrigger;->finish()V

    goto :goto_0

    .line 280
    .end local v1           #tri:Lmiui/app/screenelement/CommandTrigger;
    :cond_2
    return-void
.end method

.method public init()V
    .locals 7

    .prologue
    .line 203
    invoke-super {p0}, Lmiui/app/screenelement/elements/AnimatedScreenElement;->init()V

    .line 204
    iget-object v4, p0, Lmiui/app/screenelement/elements/ButtonScreenElement;->mNormalElements:Lmiui/app/screenelement/elements/ElementGroup;

    if-eqz v4, :cond_0

    .line 205
    iget-object v4, p0, Lmiui/app/screenelement/elements/ButtonScreenElement;->mNormalElements:Lmiui/app/screenelement/elements/ElementGroup;

    invoke-virtual {v4}, Lmiui/app/screenelement/elements/ElementGroup;->init()V

    .line 206
    :cond_0
    iget-object v4, p0, Lmiui/app/screenelement/elements/ButtonScreenElement;->mPressedElements:Lmiui/app/screenelement/elements/ElementGroup;

    if-eqz v4, :cond_1

    .line 207
    iget-object v4, p0, Lmiui/app/screenelement/elements/ButtonScreenElement;->mPressedElements:Lmiui/app/screenelement/elements/ElementGroup;

    invoke-virtual {v4}, Lmiui/app/screenelement/elements/ElementGroup;->init()V

    .line 208
    :cond_1
    iget-object v4, p0, Lmiui/app/screenelement/elements/ButtonScreenElement;->mTriggers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiui/app/screenelement/CommandTrigger;

    .line 209
    .local v3, tri:Lmiui/app/screenelement/CommandTrigger;
    invoke-virtual {v3}, Lmiui/app/screenelement/CommandTrigger;->init()V

    goto :goto_0

    .line 212
    .end local v3           #tri:Lmiui/app/screenelement/CommandTrigger;
    :cond_2
    iget-object v4, p0, Lmiui/app/screenelement/elements/ButtonScreenElement;->mListener:Lmiui/app/screenelement/elements/ButtonScreenElement$ButtonActionListener;

    if-nez v4, :cond_3

    iget-object v4, p0, Lmiui/app/screenelement/elements/ButtonScreenElement;->mListenerName:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 213
    iget-object v4, p0, Lmiui/app/screenelement/elements/ButtonScreenElement;->mRoot:Lmiui/app/screenelement/ScreenElementRoot;

    iget-object v5, p0, Lmiui/app/screenelement/elements/ButtonScreenElement;->mListenerName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lmiui/app/screenelement/ScreenElementRoot;->findElement(Ljava/lang/String;)Lmiui/app/screenelement/elements/ScreenElement;

    move-result-object v2

    .line 215
    .local v2, se:Lmiui/app/screenelement/elements/ScreenElement;
    :try_start_0
    check-cast v2, Lmiui/app/screenelement/elements/ButtonScreenElement$ButtonActionListener;

    .end local v2           #se:Lmiui/app/screenelement/elements/ScreenElement;
    iput-object v2, p0, Lmiui/app/screenelement/elements/ButtonScreenElement;->mListener:Lmiui/app/screenelement/elements/ButtonScreenElement$ButtonActionListener;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 220
    :cond_3
    :goto_1
    return-void

    .line 216
    :catch_0
    move-exception v0

    .line 217
    .local v0, e:Ljava/lang/ClassCastException;
    const-string v4, "ButtonScreenElement"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "button listener designated by the name is not actually a listener: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lmiui/app/screenelement/elements/ButtonScreenElement;->mListenerName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public load(Lorg/w3c/dom/Element;Lmiui/app/screenelement/ScreenElementRoot;)V
    .locals 9
    .parameter "node"
    .parameter "root"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/app/screenelement/ScreenElementLoadException;
        }
    .end annotation

    .prologue
    .line 76
    if-nez p1, :cond_0

    .line 77
    const-string v6, "ButtonScreenElement"

    const-string v7, "node is null"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    new-instance v6, Lmiui/app/screenelement/ScreenElementLoadException;

    const-string v7, "node is null"

    invoke-direct {v6, v7}, Lmiui/app/screenelement/ScreenElementLoadException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 80
    :cond_0
    const-string v6, "Normal"

    invoke-static {p1, v6}, Lmiui/app/screenelement/util/Utils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v3

    .line 81
    .local v3, normal:Lorg/w3c/dom/Element;
    if-eqz v3, :cond_1

    .line 82
    new-instance v6, Lmiui/app/screenelement/elements/ElementGroup;

    iget-object v7, p0, Lmiui/app/screenelement/elements/ButtonScreenElement;->mContext:Lmiui/app/screenelement/ScreenContext;

    invoke-direct {v6, v3, v7, p2}, Lmiui/app/screenelement/elements/ElementGroup;-><init>(Lorg/w3c/dom/Element;Lmiui/app/screenelement/ScreenContext;Lmiui/app/screenelement/ScreenElementRoot;)V

    iput-object v6, p0, Lmiui/app/screenelement/elements/ButtonScreenElement;->mNormalElements:Lmiui/app/screenelement/elements/ElementGroup;

    .line 85
    :cond_1
    const-string v6, "Pressed"

    invoke-static {p1, v6}, Lmiui/app/screenelement/util/Utils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v4

    .line 86
    .local v4, pressed:Lorg/w3c/dom/Element;
    if-eqz v4, :cond_2

    .line 87
    new-instance v6, Lmiui/app/screenelement/elements/ElementGroup;

    iget-object v7, p0, Lmiui/app/screenelement/elements/ButtonScreenElement;->mContext:Lmiui/app/screenelement/ScreenContext;

    invoke-direct {v6, v4, v7, p2}, Lmiui/app/screenelement/elements/ElementGroup;-><init>(Lorg/w3c/dom/Element;Lmiui/app/screenelement/ScreenContext;Lmiui/app/screenelement/ScreenElementRoot;)V

    iput-object v6, p0, Lmiui/app/screenelement/elements/ButtonScreenElement;->mPressedElements:Lmiui/app/screenelement/elements/ElementGroup;

    .line 91
    :cond_2
    const-string v6, "Triggers"

    invoke-static {p1, v6}, Lmiui/app/screenelement/util/Utils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v5

    .line 92
    .local v5, triggers:Lorg/w3c/dom/Element;
    if-eqz v5, :cond_5

    .line 93
    invoke-interface {v5}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 94
    .local v0, children:Lorg/w3c/dom/NodeList;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v6

    if-ge v1, v6, :cond_5

    .line 95
    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    invoke-interface {v6}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_3

    .line 96
    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/Element;

    .line 97
    .local v2, item:Lorg/w3c/dom/Element;
    invoke-interface {v2}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Trigger"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 94
    .end local v2           #item:Lorg/w3c/dom/Element;
    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 100
    .restart local v2       #item:Lorg/w3c/dom/Element;
    :cond_4
    iget-object v6, p0, Lmiui/app/screenelement/elements/ButtonScreenElement;->mTriggers:Ljava/util/ArrayList;

    new-instance v7, Lmiui/app/screenelement/CommandTrigger;

    iget-object v8, p0, Lmiui/app/screenelement/elements/ButtonScreenElement;->mContext:Lmiui/app/screenelement/ScreenContext;

    invoke-direct {v7, v8, v2, p2}, Lmiui/app/screenelement/CommandTrigger;-><init>(Lmiui/app/screenelement/ScreenContext;Lorg/w3c/dom/Element;Lmiui/app/screenelement/ScreenElementRoot;)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 104
    .end local v0           #children:Lorg/w3c/dom/NodeList;
    .end local v1           #i:I
    .end local v2           #item:Lorg/w3c/dom/Element;
    :cond_5
    return-void
.end method

.method public onTouch(Landroid/view/MotionEvent;)Z
    .locals 14
    .parameter "event"

    .prologue
    const/4 v12, 0x1

    const/4 v10, 0x0

    .line 108
    invoke-virtual {p0}, Lmiui/app/screenelement/elements/ButtonScreenElement;->isVisible()Z

    move-result v11

    if-nez v11, :cond_1

    move v6, v10

    .line 177
    :cond_0
    :goto_0
    return v6

    .line 111
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    .line 112
    .local v8, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    .line 113
    .local v9, y:F
    const/4 v6, 0x0

    .line 114
    .local v6, ret:Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v11

    packed-switch v11, :pswitch_data_0

    goto :goto_0

    .line 116
    :pswitch_0
    invoke-virtual {p0, v8, v9}, Lmiui/app/screenelement/elements/ButtonScreenElement;->touched(FF)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 117
    iput-boolean v12, p0, Lmiui/app/screenelement/elements/ButtonScreenElement;->mPressed:Z

    .line 118
    iput-boolean v12, p0, Lmiui/app/screenelement/elements/ButtonScreenElement;->mTouching:Z

    .line 119
    iget-object v10, p0, Lmiui/app/screenelement/elements/ButtonScreenElement;->mListener:Lmiui/app/screenelement/elements/ButtonScreenElement$ButtonActionListener;

    if-eqz v10, :cond_2

    .line 120
    iget-object v10, p0, Lmiui/app/screenelement/elements/ButtonScreenElement;->mListener:Lmiui/app/screenelement/elements/ButtonScreenElement$ButtonActionListener;

    iget-object v11, p0, Lmiui/app/screenelement/elements/ButtonScreenElement;->mName:Ljava/lang/String;

    invoke-interface {v10, v11}, Lmiui/app/screenelement/elements/ButtonScreenElement$ButtonActionListener;->onButtonDown(Ljava/lang/String;)Z

    .line 122
    :cond_2
    sget-object v10, Lmiui/app/screenelement/elements/ButtonScreenElement$ButtonAction;->Down:Lmiui/app/screenelement/elements/ButtonScreenElement$ButtonAction;

    invoke-direct {p0, v10}, Lmiui/app/screenelement/elements/ButtonScreenElement;->performAction(Lmiui/app/screenelement/elements/ButtonScreenElement$ButtonAction;)V

    .line 124
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    iget-wide v12, p0, Lmiui/app/screenelement/elements/ButtonScreenElement;->mPreviousTapUpTime:J

    sub-long v4, v10, v12

    .line 125
    .local v4, duration:J
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v10

    int-to-long v10, v10

    cmp-long v10, v4, v10

    if-gtz v10, :cond_4

    .line 126
    iget v10, p0, Lmiui/app/screenelement/elements/ButtonScreenElement;->mPreviousTapPositionX:F

    sub-float v0, v8, v10

    .line 127
    .local v0, deltaX:F
    iget v10, p0, Lmiui/app/screenelement/elements/ButtonScreenElement;->mPreviousTapPositionY:F

    sub-float v1, v9, v10

    .line 128
    .local v1, deltaY:F
    mul-float v10, v0, v0

    mul-float v11, v1, v1

    add-float v2, v10, v11

    .line 129
    .local v2, distanceSquared:F
    iget-object v10, p0, Lmiui/app/screenelement/elements/ButtonScreenElement;->mContext:Lmiui/app/screenelement/ScreenContext;

    iget-object v10, v10, Lmiui/app/screenelement/ScreenContext;->mContext:Landroid/content/Context;

    invoke-static {v10}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/ViewConfiguration;->getScaledDoubleTapSlop()I

    move-result v3

    .line 130
    .local v3, doubleTapSlop:I
    mul-int v7, v3, v3

    .line 131
    .local v7, slopSquared:I
    int-to-float v10, v7

    cmpg-float v10, v2, v10

    if-gez v10, :cond_4

    .line 132
    iget-object v10, p0, Lmiui/app/screenelement/elements/ButtonScreenElement;->mListener:Lmiui/app/screenelement/elements/ButtonScreenElement$ButtonActionListener;

    if-eqz v10, :cond_3

    .line 133
    iget-object v10, p0, Lmiui/app/screenelement/elements/ButtonScreenElement;->mListener:Lmiui/app/screenelement/elements/ButtonScreenElement$ButtonActionListener;

    iget-object v11, p0, Lmiui/app/screenelement/elements/ButtonScreenElement;->mName:Ljava/lang/String;

    invoke-interface {v10, v11}, Lmiui/app/screenelement/elements/ButtonScreenElement$ButtonActionListener;->onButtonDoubleClick(Ljava/lang/String;)Z

    .line 135
    :cond_3
    sget-object v10, Lmiui/app/screenelement/elements/ButtonScreenElement$ButtonAction;->Double:Lmiui/app/screenelement/elements/ButtonScreenElement$ButtonAction;

    invoke-direct {p0, v10}, Lmiui/app/screenelement/elements/ButtonScreenElement;->performAction(Lmiui/app/screenelement/elements/ButtonScreenElement$ButtonAction;)V

    .line 138
    .end local v0           #deltaX:F
    .end local v1           #deltaY:F
    .end local v2           #distanceSquared:F
    .end local v3           #doubleTapSlop:I
    .end local v7           #slopSquared:I
    :cond_4
    iput v8, p0, Lmiui/app/screenelement/elements/ButtonScreenElement;->mPreviousTapPositionX:F

    .line 139
    iput v9, p0, Lmiui/app/screenelement/elements/ButtonScreenElement;->mPreviousTapPositionY:F

    .line 140
    iget-object v10, p0, Lmiui/app/screenelement/elements/ButtonScreenElement;->mPressedElements:Lmiui/app/screenelement/elements/ElementGroup;

    if-eqz v10, :cond_5

    .line 141
    iget-object v10, p0, Lmiui/app/screenelement/elements/ButtonScreenElement;->mPressedElements:Lmiui/app/screenelement/elements/ElementGroup;

    invoke-virtual {v10}, Lmiui/app/screenelement/elements/ElementGroup;->reset()V

    .line 142
    :cond_5
    const/4 v6, 0x1

    .line 143
    goto :goto_0

    .line 146
    .end local v4           #duration:J
    :pswitch_1
    invoke-virtual {p0, v8, v9}, Lmiui/app/screenelement/elements/ButtonScreenElement;->touched(FF)Z

    move-result v10

    iput-boolean v10, p0, Lmiui/app/screenelement/elements/ButtonScreenElement;->mTouching:Z

    .line 147
    iget-boolean v6, p0, Lmiui/app/screenelement/elements/ButtonScreenElement;->mTouching:Z

    .line 148
    goto/16 :goto_0

    .line 150
    :pswitch_2
    iget-boolean v11, p0, Lmiui/app/screenelement/elements/ButtonScreenElement;->mPressed:Z

    if-eqz v11, :cond_0

    .line 151
    invoke-virtual {p0, v8, v9}, Lmiui/app/screenelement/elements/ButtonScreenElement;->touched(FF)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 152
    iget-object v11, p0, Lmiui/app/screenelement/elements/ButtonScreenElement;->mListener:Lmiui/app/screenelement/elements/ButtonScreenElement$ButtonActionListener;

    if-eqz v11, :cond_6

    .line 153
    iget-object v11, p0, Lmiui/app/screenelement/elements/ButtonScreenElement;->mListener:Lmiui/app/screenelement/elements/ButtonScreenElement$ButtonActionListener;

    iget-object v12, p0, Lmiui/app/screenelement/elements/ButtonScreenElement;->mName:Ljava/lang/String;

    invoke-interface {v11, v12}, Lmiui/app/screenelement/elements/ButtonScreenElement$ButtonActionListener;->onButtonUp(Ljava/lang/String;)Z

    .line 155
    :cond_6
    sget-object v11, Lmiui/app/screenelement/elements/ButtonScreenElement$ButtonAction;->Up:Lmiui/app/screenelement/elements/ButtonScreenElement$ButtonAction;

    invoke-direct {p0, v11}, Lmiui/app/screenelement/elements/ButtonScreenElement;->performAction(Lmiui/app/screenelement/elements/ButtonScreenElement$ButtonAction;)V

    .line 156
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v11

    iput-wide v11, p0, Lmiui/app/screenelement/elements/ButtonScreenElement;->mPreviousTapUpTime:J

    .line 160
    :goto_1
    iget-object v11, p0, Lmiui/app/screenelement/elements/ButtonScreenElement;->mNormalElements:Lmiui/app/screenelement/elements/ElementGroup;

    if-eqz v11, :cond_7

    .line 161
    iget-object v11, p0, Lmiui/app/screenelement/elements/ButtonScreenElement;->mNormalElements:Lmiui/app/screenelement/elements/ElementGroup;

    invoke-virtual {v11}, Lmiui/app/screenelement/elements/ElementGroup;->reset()V

    .line 162
    :cond_7
    iput-boolean v10, p0, Lmiui/app/screenelement/elements/ButtonScreenElement;->mPressed:Z

    .line 163
    iput-boolean v10, p0, Lmiui/app/screenelement/elements/ButtonScreenElement;->mTouching:Z

    .line 164
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 158
    :cond_8
    invoke-direct {p0}, Lmiui/app/screenelement/elements/ButtonScreenElement;->onCancel()V

    goto :goto_1

    .line 169
    :pswitch_3
    iget-object v11, p0, Lmiui/app/screenelement/elements/ButtonScreenElement;->mNormalElements:Lmiui/app/screenelement/elements/ElementGroup;

    if-eqz v11, :cond_9

    .line 170
    iget-object v11, p0, Lmiui/app/screenelement/elements/ButtonScreenElement;->mNormalElements:Lmiui/app/screenelement/elements/ElementGroup;

    invoke-virtual {v11}, Lmiui/app/screenelement/elements/ElementGroup;->reset()V

    .line 171
    :cond_9
    invoke-direct {p0}, Lmiui/app/screenelement/elements/ButtonScreenElement;->onCancel()V

    .line 172
    iput-boolean v10, p0, Lmiui/app/screenelement/elements/ButtonScreenElement;->mTouching:Z

    .line 173
    iput-boolean v10, p0, Lmiui/app/screenelement/elements/ButtonScreenElement;->mPressed:Z

    goto/16 :goto_0

    .line 114
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public pause()V
    .locals 3

    .prologue
    .line 232
    iget-object v2, p0, Lmiui/app/screenelement/elements/ButtonScreenElement;->mNormalElements:Lmiui/app/screenelement/elements/ElementGroup;

    if-eqz v2, :cond_0

    .line 233
    iget-object v2, p0, Lmiui/app/screenelement/elements/ButtonScreenElement;->mNormalElements:Lmiui/app/screenelement/elements/ElementGroup;

    invoke-virtual {v2}, Lmiui/app/screenelement/elements/ElementGroup;->pause()V

    .line 234
    :cond_0
    iget-object v2, p0, Lmiui/app/screenelement/elements/ButtonScreenElement;->mPressedElements:Lmiui/app/screenelement/elements/ElementGroup;

    if-eqz v2, :cond_1

    .line 235
    iget-object v2, p0, Lmiui/app/screenelement/elements/ButtonScreenElement;->mPressedElements:Lmiui/app/screenelement/elements/ElementGroup;

    invoke-virtual {v2}, Lmiui/app/screenelement/elements/ElementGroup;->pause()V

    .line 236
    :cond_1
    iget-object v2, p0, Lmiui/app/screenelement/elements/ButtonScreenElement;->mTriggers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/app/screenelement/CommandTrigger;

    .line 237
    .local v1, tri:Lmiui/app/screenelement/CommandTrigger;
    invoke-virtual {v1}, Lmiui/app/screenelement/CommandTrigger;->pause()V

    goto :goto_0

    .line 239
    .end local v1           #tri:Lmiui/app/screenelement/CommandTrigger;
    :cond_2
    const/4 v2, 0x0

    iput-boolean v2, p0, Lmiui/app/screenelement/elements/ButtonScreenElement;->mPressed:Z

    .line 240
    return-void
.end method

.method public render(Landroid/graphics/Canvas;)V
    .locals 2
    .parameter "c"

    .prologue
    .line 254
    invoke-virtual {p0}, Lmiui/app/screenelement/elements/ButtonScreenElement;->isVisible()Z

    move-result v1

    if-nez v1, :cond_1

    .line 259
    :cond_0
    :goto_0
    return-void

    .line 256
    :cond_1
    invoke-direct {p0}, Lmiui/app/screenelement/elements/ButtonScreenElement;->getCur()Lmiui/app/screenelement/elements/ElementGroup;

    move-result-object v0

    .line 257
    .local v0, cur:Lmiui/app/screenelement/elements/ElementGroup;
    if-eqz v0, :cond_0

    .line 258
    invoke-virtual {v0, p1}, Lmiui/app/screenelement/elements/ElementGroup;->render(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public reset(J)V
    .locals 1
    .parameter "time"

    .prologue
    .line 224
    invoke-super {p0, p1, p2}, Lmiui/app/screenelement/elements/AnimatedScreenElement;->reset(J)V

    .line 225
    iget-object v0, p0, Lmiui/app/screenelement/elements/ButtonScreenElement;->mNormalElements:Lmiui/app/screenelement/elements/ElementGroup;

    if-eqz v0, :cond_0

    .line 226
    iget-object v0, p0, Lmiui/app/screenelement/elements/ButtonScreenElement;->mNormalElements:Lmiui/app/screenelement/elements/ElementGroup;

    invoke-virtual {v0, p1, p2}, Lmiui/app/screenelement/elements/ElementGroup;->reset(J)V

    .line 227
    :cond_0
    iget-object v0, p0, Lmiui/app/screenelement/elements/ButtonScreenElement;->mPressedElements:Lmiui/app/screenelement/elements/ElementGroup;

    if-eqz v0, :cond_1

    .line 228
    iget-object v0, p0, Lmiui/app/screenelement/elements/ButtonScreenElement;->mPressedElements:Lmiui/app/screenelement/elements/ElementGroup;

    invoke-virtual {v0, p1, p2}, Lmiui/app/screenelement/elements/ElementGroup;->reset(J)V

    .line 229
    :cond_1
    return-void
.end method

.method public resume()V
    .locals 3

    .prologue
    .line 243
    iget-object v2, p0, Lmiui/app/screenelement/elements/ButtonScreenElement;->mNormalElements:Lmiui/app/screenelement/elements/ElementGroup;

    if-eqz v2, :cond_0

    .line 244
    iget-object v2, p0, Lmiui/app/screenelement/elements/ButtonScreenElement;->mNormalElements:Lmiui/app/screenelement/elements/ElementGroup;

    invoke-virtual {v2}, Lmiui/app/screenelement/elements/ElementGroup;->resume()V

    .line 245
    :cond_0
    iget-object v2, p0, Lmiui/app/screenelement/elements/ButtonScreenElement;->mPressedElements:Lmiui/app/screenelement/elements/ElementGroup;

    if-eqz v2, :cond_1

    .line 246
    iget-object v2, p0, Lmiui/app/screenelement/elements/ButtonScreenElement;->mPressedElements:Lmiui/app/screenelement/elements/ElementGroup;

    invoke-virtual {v2}, Lmiui/app/screenelement/elements/ElementGroup;->resume()V

    .line 247
    :cond_1
    iget-object v2, p0, Lmiui/app/screenelement/elements/ButtonScreenElement;->mTriggers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/app/screenelement/CommandTrigger;

    .line 248
    .local v1, tri:Lmiui/app/screenelement/CommandTrigger;
    invoke-virtual {v1}, Lmiui/app/screenelement/CommandTrigger;->resume()V

    goto :goto_0

    .line 250
    .end local v1           #tri:Lmiui/app/screenelement/CommandTrigger;
    :cond_2
    return-void
.end method

.method public setListener(Lmiui/app/screenelement/elements/ButtonScreenElement$ButtonActionListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 72
    iput-object p1, p0, Lmiui/app/screenelement/elements/ButtonScreenElement;->mListener:Lmiui/app/screenelement/elements/ButtonScreenElement$ButtonActionListener;

    .line 73
    return-void
.end method

.method public showCategory(Ljava/lang/String;Z)V
    .locals 1
    .parameter "category"
    .parameter "show"

    .prologue
    .line 284
    iget-object v0, p0, Lmiui/app/screenelement/elements/ButtonScreenElement;->mNormalElements:Lmiui/app/screenelement/elements/ElementGroup;

    if-eqz v0, :cond_0

    .line 285
    iget-object v0, p0, Lmiui/app/screenelement/elements/ButtonScreenElement;->mNormalElements:Lmiui/app/screenelement/elements/ElementGroup;

    invoke-virtual {v0, p1, p2}, Lmiui/app/screenelement/elements/ElementGroup;->showCategory(Ljava/lang/String;Z)V

    .line 286
    :cond_0
    iget-object v0, p0, Lmiui/app/screenelement/elements/ButtonScreenElement;->mPressedElements:Lmiui/app/screenelement/elements/ElementGroup;

    if-eqz v0, :cond_1

    .line 287
    iget-object v0, p0, Lmiui/app/screenelement/elements/ButtonScreenElement;->mPressedElements:Lmiui/app/screenelement/elements/ElementGroup;

    invoke-virtual {v0, p1, p2}, Lmiui/app/screenelement/elements/ElementGroup;->showCategory(Ljava/lang/String;Z)V

    .line 288
    :cond_1
    return-void
.end method

.method public tick(J)V
    .locals 2
    .parameter "currentTime"

    .prologue
    .line 263
    invoke-super {p0, p1, p2}, Lmiui/app/screenelement/elements/AnimatedScreenElement;->tick(J)V

    .line 264
    invoke-virtual {p0}, Lmiui/app/screenelement/elements/ButtonScreenElement;->isVisible()Z

    move-result v1

    if-nez v1, :cond_1

    .line 269
    :cond_0
    :goto_0
    return-void

    .line 266
    :cond_1
    invoke-direct {p0}, Lmiui/app/screenelement/elements/ButtonScreenElement;->getCur()Lmiui/app/screenelement/elements/ElementGroup;

    move-result-object v0

    .line 267
    .local v0, cur:Lmiui/app/screenelement/elements/ElementGroup;
    if-eqz v0, :cond_0

    .line 268
    invoke-virtual {v0, p1, p2}, Lmiui/app/screenelement/elements/ElementGroup;->tick(J)V

    goto :goto_0
.end method

.method public touched(FF)Z
    .locals 6
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v4, 0x0

    .line 193
    iget-object v5, p0, Lmiui/app/screenelement/elements/ButtonScreenElement;->mParent:Lmiui/app/screenelement/elements/ElementGroup;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lmiui/app/screenelement/elements/ButtonScreenElement;->mParent:Lmiui/app/screenelement/elements/ElementGroup;

    invoke-virtual {v5}, Lmiui/app/screenelement/elements/ElementGroup;->getX()F

    move-result v0

    .line 194
    .local v0, parentX:F
    :goto_0
    iget-object v5, p0, Lmiui/app/screenelement/elements/ButtonScreenElement;->mParent:Lmiui/app/screenelement/elements/ElementGroup;

    if-eqz v5, :cond_1

    iget-object v4, p0, Lmiui/app/screenelement/elements/ButtonScreenElement;->mParent:Lmiui/app/screenelement/elements/ElementGroup;

    invoke-virtual {v4}, Lmiui/app/screenelement/elements/ElementGroup;->getY()F

    move-result v1

    .line 195
    .local v1, parentY:F
    :goto_1
    invoke-virtual {p0}, Lmiui/app/screenelement/elements/ButtonScreenElement;->getX()F

    move-result v2

    .line 196
    .local v2, x0:F
    invoke-virtual {p0}, Lmiui/app/screenelement/elements/ButtonScreenElement;->getY()F

    move-result v3

    .line 197
    .local v3, y0:F
    add-float v4, v0, v2

    cmpl-float v4, p1, v4

    if-ltz v4, :cond_2

    add-float v4, v0, v2

    invoke-virtual {p0}, Lmiui/app/screenelement/elements/ButtonScreenElement;->getWidth()F

    move-result v5

    add-float/2addr v4, v5

    cmpg-float v4, p1, v4

    if-gtz v4, :cond_2

    add-float v4, v1, v3

    cmpl-float v4, p2, v4

    if-ltz v4, :cond_2

    add-float v4, v1, v3

    invoke-virtual {p0}, Lmiui/app/screenelement/elements/ButtonScreenElement;->getHeight()F

    move-result v5

    add-float/2addr v4, v5

    cmpg-float v4, p2, v4

    if-gtz v4, :cond_2

    const/4 v4, 0x1

    :goto_2
    return v4

    .end local v0           #parentX:F
    .end local v1           #parentY:F
    .end local v2           #x0:F
    .end local v3           #y0:F
    :cond_0
    move v0, v4

    .line 193
    goto :goto_0

    .restart local v0       #parentX:F
    :cond_1
    move v1, v4

    .line 194
    goto :goto_1

    .line 197
    .restart local v1       #parentY:F
    .restart local v2       #x0:F
    .restart local v3       #y0:F
    :cond_2
    const/4 v4, 0x0

    goto :goto_2
.end method

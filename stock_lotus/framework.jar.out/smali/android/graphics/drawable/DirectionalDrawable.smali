.class Landroid/graphics/drawable/DirectionalDrawable;
.super Landroid/graphics/drawable/DrawableContainer;
.source "DirectionalDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/drawable/DirectionalDrawable$1;,
        Landroid/graphics/drawable/DirectionalDrawable$DirectionalState;
    }
.end annotation


# instance fields
.field private final mDirectionalState:Landroid/graphics/drawable/DirectionalDrawable$DirectionalState;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 87
    invoke-direct {p0, v0, v0}, Landroid/graphics/drawable/DirectionalDrawable;-><init>(Landroid/graphics/drawable/DirectionalDrawable$DirectionalState;Landroid/content/res/Resources;)V

    .line 88
    return-void
.end method

.method private constructor <init>(Landroid/graphics/drawable/DirectionalDrawable$DirectionalState;Landroid/content/res/Resources;)V
    .locals 3
    .parameter "state"
    .parameter "res"

    .prologue
    .line 90
    invoke-direct {p0}, Landroid/graphics/drawable/DrawableContainer;-><init>()V

    .line 91
    new-instance v1, Landroid/graphics/drawable/DirectionalDrawable$DirectionalState;

    invoke-direct {v1, p1, p0, p2}, Landroid/graphics/drawable/DirectionalDrawable$DirectionalState;-><init>(Landroid/graphics/drawable/DirectionalDrawable$DirectionalState;Landroid/graphics/drawable/DirectionalDrawable;Landroid/content/res/Resources;)V

    .line 92
    .local v1, ds:Landroid/graphics/drawable/DirectionalDrawable$DirectionalState;
    iput-object v1, p0, Landroid/graphics/drawable/DirectionalDrawable;->mDirectionalState:Landroid/graphics/drawable/DirectionalDrawable$DirectionalState;

    .line 93
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/DirectionalDrawable;->setConstantState(Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;)V

    .line 94
    invoke-virtual {v1}, Landroid/graphics/drawable/DirectionalDrawable$DirectionalState;->getCurrentIndex()I

    move-result v0

    .line 95
    .local v0, defaultIndex:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 96
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/DirectionalDrawable;->selectDrawable(I)Z

    .line 98
    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Landroid/graphics/drawable/DirectionalDrawable$DirectionalState;Landroid/content/res/Resources;Landroid/graphics/drawable/DirectionalDrawable$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/DirectionalDrawable;-><init>(Landroid/graphics/drawable/DirectionalDrawable$DirectionalState;Landroid/content/res/Resources;)V

    return-void
.end method

.method private resolveDirection()Z
    .locals 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 124
    invoke-virtual {p0}, Landroid/graphics/drawable/DirectionalDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    .line 125
    .local v0, callBack:Landroid/graphics/drawable/Drawable$Callback;
    instance-of v4, v0, Landroid/graphics/drawable/Drawable$Callback2;

    if-eqz v4, :cond_0

    .line 126
    check-cast v0, Landroid/graphics/drawable/Drawable$Callback2;

    .end local v0           #callBack:Landroid/graphics/drawable/Drawable$Callback;
    invoke-interface {v0, p0}, Landroid/graphics/drawable/Drawable$Callback2;->getResolvedLayoutDirection(Landroid/graphics/drawable/Drawable;)I

    move-result v1

    .line 127
    .local v1, direction:I
    const/high16 v4, 0x4000

    if-ne v1, v4, :cond_1

    .line 128
    iget-object v4, p0, Landroid/graphics/drawable/DirectionalDrawable;->mDirectionalState:Landroid/graphics/drawable/DirectionalDrawable$DirectionalState;

    invoke-virtual {v4, v3}, Landroid/graphics/drawable/DirectionalDrawable$DirectionalState;->setDirection(I)V

    .line 132
    :goto_0
    iget-object v4, p0, Landroid/graphics/drawable/DirectionalDrawable;->mDirectionalState:Landroid/graphics/drawable/DirectionalDrawable$DirectionalState;

    invoke-virtual {v4}, Landroid/graphics/drawable/DirectionalDrawable$DirectionalState;->getCurrentIndex()I

    move-result v4

    invoke-virtual {p0, v4}, Landroid/graphics/drawable/DirectionalDrawable;->selectDrawable(I)Z

    .line 134
    .end local v1           #direction:I
    :cond_0
    iget-object v4, p0, Landroid/graphics/drawable/DirectionalDrawable;->mDirectionalState:Landroid/graphics/drawable/DirectionalDrawable$DirectionalState;

    #getter for: Landroid/graphics/drawable/DirectionalDrawable$DirectionalState;->mCurrentDirection:I
    invoke-static {v4}, Landroid/graphics/drawable/DirectionalDrawable$DirectionalState;->access$100(Landroid/graphics/drawable/DirectionalDrawable$DirectionalState;)I

    move-result v4

    if-ne v4, v2, :cond_2

    :goto_1
    return v2

    .line 130
    .restart local v1       #direction:I
    :cond_1
    iget-object v4, p0, Landroid/graphics/drawable/DirectionalDrawable;->mDirectionalState:Landroid/graphics/drawable/DirectionalDrawable$DirectionalState;

    invoke-virtual {v4, v2}, Landroid/graphics/drawable/DirectionalDrawable$DirectionalState;->setDirection(I)V

    goto :goto_0

    .end local v1           #direction:I
    :cond_2
    move v2, v3

    .line 134
    goto :goto_1
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 0
    .parameter "canvas"

    .prologue
    .line 102
    invoke-direct {p0}, Landroid/graphics/drawable/DirectionalDrawable;->resolveDirection()Z

    .line 103
    invoke-super {p0, p1}, Landroid/graphics/drawable/DrawableContainer;->draw(Landroid/graphics/Canvas;)V

    .line 104
    return-void
.end method

.method public getPadding(Landroid/graphics/Rect;)Z
    .locals 2
    .parameter "padding"

    .prologue
    .line 108
    invoke-direct {p0}, Landroid/graphics/drawable/DirectionalDrawable;->resolveDirection()Z

    .line 109
    invoke-virtual {p0}, Landroid/graphics/drawable/DirectionalDrawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 110
    .local v0, current:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 111
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v1

    .line 113
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Landroid/graphics/drawable/DrawableContainer;->getPadding(Landroid/graphics/Rect;)Z

    move-result v1

    goto :goto_0
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V
    .locals 10
    .parameter "r"
    .parameter "parser"
    .parameter "attrs"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 38
    invoke-super {p0, p1, p2, p3}, Landroid/graphics/drawable/DrawableContainer;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V

    .line 42
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v7

    add-int/lit8 v3, v7, 0x1

    .line 45
    .local v3, innerDepth:I
    :cond_0
    :goto_0
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    .local v6, type:I
    const/4 v7, 0x1

    if-eq v6, v7, :cond_5

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    .local v1, depth:I
    if-eq v1, v3, :cond_1

    const/4 v7, 0x3

    if-eq v6, v7, :cond_5

    .line 47
    :cond_1
    const/4 v7, 0x2

    if-ne v6, v7, :cond_0

    .line 50
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 51
    .local v5, tagName:Ljava/lang/String;
    const-string v7, "left-to-right"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    const-string/jumbo v7, "right-to-left"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 58
    :cond_2
    const/4 v7, 0x0

    const-string v8, "drawable"

    const/4 v9, 0x0

    invoke-interface {p3, v7, v8, v9}, Landroid/util/AttributeSet;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v4

    .line 61
    .local v4, resDraw:I
    if-eqz v4, :cond_3

    .line 62
    invoke-virtual {p1, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 68
    .local v2, draw:Landroid/graphics/drawable/Drawable;
    const-string v7, "left-to-right"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 69
    iget-object v7, p0, Landroid/graphics/drawable/DirectionalDrawable;->mDirectionalState:Landroid/graphics/drawable/DirectionalDrawable$DirectionalState;

    invoke-virtual {v7, v2}, Landroid/graphics/drawable/DirectionalDrawable$DirectionalState;->setLtrDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 64
    .end local v2           #draw:Landroid/graphics/drawable/Drawable;
    :cond_3
    new-instance v7, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": tag requires a \'drawable\' attribute"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 71
    .restart local v2       #draw:Landroid/graphics/drawable/Drawable;
    :cond_4
    iget-object v7, p0, Landroid/graphics/drawable/DirectionalDrawable;->mDirectionalState:Landroid/graphics/drawable/DirectionalDrawable$DirectionalState;

    invoke-virtual {v7, v2}, Landroid/graphics/drawable/DirectionalDrawable$DirectionalState;->setRtlDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 75
    .end local v1           #depth:I
    .end local v2           #draw:Landroid/graphics/drawable/Drawable;
    .end local v4           #resDraw:I
    .end local v5           #tagName:Ljava/lang/String;
    :cond_5
    iget-object v7, p0, Landroid/graphics/drawable/DirectionalDrawable;->mDirectionalState:Landroid/graphics/drawable/DirectionalDrawable$DirectionalState;

    invoke-virtual {v7}, Landroid/graphics/drawable/DirectionalDrawable$DirectionalState;->getCurrentIndex()I

    move-result v0

    .line 76
    .local v0, defaultIndex:I
    const/4 v7, -0x1

    if-eq v0, v7, :cond_6

    .line 77
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/DirectionalDrawable;->selectDrawable(I)Z

    .line 79
    :cond_6
    iget-object v7, p0, Landroid/graphics/drawable/DirectionalDrawable;->mDirectionalState:Landroid/graphics/drawable/DirectionalDrawable$DirectionalState;

    #calls: Landroid/graphics/drawable/DirectionalDrawable$DirectionalState;->bothDrawablesSet()Z
    invoke-static {v7}, Landroid/graphics/drawable/DirectionalDrawable$DirectionalState;->access$000(Landroid/graphics/drawable/DirectionalDrawable$DirectionalState;)Z

    move-result v7

    if-nez v7, :cond_7

    .line 80
    new-instance v7, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v8, "directional-drawable tag requires both a left-to-right and a right-to-left child item"

    invoke-direct {v7, v8}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 84
    :cond_7
    return-void
.end method

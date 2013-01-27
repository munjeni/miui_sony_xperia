.class public Lmiui/app/screenelement/elements/ImageNumberScreenElement;
.super Lmiui/app/screenelement/elements/AnimatedScreenElement;
.source "ImageNumberScreenElement.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ImageNumberScreenElement"

.field public static final TAG_NAME:Ljava/lang/String; = "ImageNumber"


# instance fields
.field private mActualWidthVar:Lmiui/app/screenelement/util/IndexedNumberVariable;

.field private mNumExpression:Lmiui/app/screenelement/data/Expression;

.field private mPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/app/screenelement/ScreenContext;Lmiui/app/screenelement/ScreenElementRoot;)V
    .locals 4
    .parameter "node"
    .parameter "c"
    .parameter "root"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/app/screenelement/ScreenElementLoadException;
        }
    .end annotation

    .prologue
    .line 30
    invoke-direct {p0, p1, p2, p3}, Lmiui/app/screenelement/elements/AnimatedScreenElement;-><init>(Lorg/w3c/dom/Element;Lmiui/app/screenelement/ScreenContext;Lmiui/app/screenelement/ScreenElementRoot;)V

    .line 25
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lmiui/app/screenelement/elements/ImageNumberScreenElement;->mPaint:Landroid/graphics/Paint;

    .line 31
    invoke-virtual {p0, p1}, Lmiui/app/screenelement/elements/ImageNumberScreenElement;->load(Lorg/w3c/dom/Element;)V

    .line 32
    iget-boolean v0, p0, Lmiui/app/screenelement/elements/ImageNumberScreenElement;->mHasName:Z

    if-eqz v0, :cond_0

    .line 33
    new-instance v0, Lmiui/app/screenelement/util/IndexedNumberVariable;

    iget-object v1, p0, Lmiui/app/screenelement/elements/ImageNumberScreenElement;->mName:Ljava/lang/String;

    const-string v2, "actual_w"

    iget-object v3, p2, Lmiui/app/screenelement/ScreenContext;->mVariables:Lmiui/app/screenelement/data/Variables;

    invoke-direct {v0, v1, v2, v3}, Lmiui/app/screenelement/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Ljava/lang/String;Lmiui/app/screenelement/data/Variables;)V

    iput-object v0, p0, Lmiui/app/screenelement/elements/ImageNumberScreenElement;->mActualWidthVar:Lmiui/app/screenelement/util/IndexedNumberVariable;

    .line 35
    :cond_0
    return-void
.end method


# virtual methods
.method protected getBitmap(C)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "c"

    .prologue
    .line 73
    iget-object v1, p0, Lmiui/app/screenelement/elements/ImageNumberScreenElement;->mAni:Lmiui/app/screenelement/animation/AnimatedElement;

    invoke-virtual {v1}, Lmiui/app/screenelement/animation/AnimatedElement;->getSrc()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lmiui/app/screenelement/util/Utils;->addFileNameSuffix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 74
    .local v0, name:Ljava/lang/String;
    iget-object v1, p0, Lmiui/app/screenelement/elements/ImageNumberScreenElement;->mContext:Lmiui/app/screenelement/ScreenContext;

    iget-object v1, v1, Lmiui/app/screenelement/ScreenContext;->mResourceManager:Lmiui/app/screenelement/ResourceManager;

    invoke-virtual {v1, v0}, Lmiui/app/screenelement/ResourceManager;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method public load(Lorg/w3c/dom/Element;)V
    .locals 2
    .parameter "node"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/app/screenelement/ScreenElementLoadException;
        }
    .end annotation

    .prologue
    .line 38
    if-nez p1, :cond_0

    .line 39
    const-string v0, "ImageNumberScreenElement"

    const-string v1, "node is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    new-instance v0, Lmiui/app/screenelement/ScreenElementLoadException;

    const-string v1, "node is null"

    invoke-direct {v0, v1}, Lmiui/app/screenelement/ScreenElementLoadException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 43
    :cond_0
    const-string v0, "number"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmiui/app/screenelement/data/Expression;->build(Ljava/lang/String;)Lmiui/app/screenelement/data/Expression;

    move-result-object v0

    iput-object v0, p0, Lmiui/app/screenelement/elements/ImageNumberScreenElement;->mNumExpression:Lmiui/app/screenelement/data/Expression;

    .line 44
    return-void
.end method

.method public render(Landroid/graphics/Canvas;)V
    .locals 11
    .parameter "c"

    .prologue
    .line 48
    invoke-virtual {p0}, Lmiui/app/screenelement/elements/ImageNumberScreenElement;->isVisible()Z

    move-result v8

    if-nez v8, :cond_1

    .line 70
    :cond_0
    :goto_0
    return-void

    .line 51
    :cond_1
    invoke-virtual {p0}, Lmiui/app/screenelement/elements/ImageNumberScreenElement;->getAlpha()I

    move-result v0

    .line 53
    .local v0, alpha:I
    iget-object v8, p0, Lmiui/app/screenelement/elements/ImageNumberScreenElement;->mNumExpression:Lmiui/app/screenelement/data/Expression;

    iget-object v9, p0, Lmiui/app/screenelement/elements/ImageNumberScreenElement;->mContext:Lmiui/app/screenelement/ScreenContext;

    iget-object v9, v9, Lmiui/app/screenelement/ScreenContext;->mVariables:Lmiui/app/screenelement/data/Variables;

    invoke-virtual {v8, v9}, Lmiui/app/screenelement/data/Expression;->evaluate(Lmiui/app/screenelement/data/Variables;)D

    move-result-wide v8

    double-to-int v5, v8

    .line 54
    .local v5, number:I
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .line 55
    .local v4, numStr:Ljava/lang/String;
    invoke-virtual {p0}, Lmiui/app/screenelement/elements/ImageNumberScreenElement;->getX()F

    move-result v3

    .line 56
    .local v3, left:F
    invoke-virtual {p0}, Lmiui/app/screenelement/elements/ImageNumberScreenElement;->getY()F

    move-result v6

    .line 57
    .local v6, top:F
    const/4 v7, 0x0

    .line 58
    .local v7, width:F
    iget-object v8, p0, Lmiui/app/screenelement/elements/ImageNumberScreenElement;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 59
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v2, v8, :cond_3

    .line 60
    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-virtual {p0, v8}, Lmiui/app/screenelement/elements/ImageNumberScreenElement;->getBitmap(C)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 61
    .local v1, bmp:Landroid/graphics/Bitmap;
    if-eqz v1, :cond_2

    .line 62
    add-float v8, v3, v7

    iget-object v9, p0, Lmiui/app/screenelement/elements/ImageNumberScreenElement;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v8, v6, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 63
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v7, v8

    .line 59
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 67
    .end local v1           #bmp:Landroid/graphics/Bitmap;
    :cond_3
    iget-boolean v8, p0, Lmiui/app/screenelement/elements/ImageNumberScreenElement;->mHasName:Z

    if-eqz v8, :cond_0

    .line 68
    iget-object v8, p0, Lmiui/app/screenelement/elements/ImageNumberScreenElement;->mActualWidthVar:Lmiui/app/screenelement/util/IndexedNumberVariable;

    invoke-virtual {p0, v7}, Lmiui/app/screenelement/elements/ImageNumberScreenElement;->descale(F)F

    move-result v9

    float-to-double v9, v9

    invoke-virtual {v8, v9, v10}, Lmiui/app/screenelement/util/IndexedNumberVariable;->set(D)V

    goto :goto_0
.end method

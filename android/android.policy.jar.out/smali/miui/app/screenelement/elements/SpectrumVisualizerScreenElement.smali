.class public Lmiui/app/screenelement/elements/SpectrumVisualizerScreenElement;
.super Lmiui/app/screenelement/elements/ImageScreenElement;
.source "SpectrumVisualizerScreenElement.java"


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "SpectrumVisualizer"


# instance fields
.field private mCanvas:Landroid/graphics/Canvas;

.field private mDotbar:Ljava/lang/String;

.field private mPanel:Ljava/lang/String;

.field private mResDensity:I

.field private mShadow:Ljava/lang/String;

.field private mSpectrumVisualizer:Lmiui/widget/SpectrumVisualizer;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/app/screenelement/ScreenContext;Lmiui/app/screenelement/ScreenElementRoot;)V
    .locals 3
    .parameter "ele"
    .parameter "c"
    .parameter "root"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/app/screenelement/ScreenElementLoadException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 34
    invoke-direct {p0, p1, p2, p3}, Lmiui/app/screenelement/elements/ImageScreenElement;-><init>(Lorg/w3c/dom/Element;Lmiui/app/screenelement/ScreenContext;Lmiui/app/screenelement/ScreenElementRoot;)V

    .line 36
    const-string v0, "panelSrc"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/app/screenelement/elements/SpectrumVisualizerScreenElement;->mPanel:Ljava/lang/String;

    .line 37
    const-string v0, "dotbarSrc"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/app/screenelement/elements/SpectrumVisualizerScreenElement;->mDotbar:Ljava/lang/String;

    .line 38
    const-string v0, "shadowSrc"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/app/screenelement/elements/SpectrumVisualizerScreenElement;->mShadow:Ljava/lang/String;

    .line 40
    new-instance v0, Lmiui/widget/SpectrumVisualizer;

    iget-object v1, p2, Lmiui/app/screenelement/ScreenContext;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lmiui/widget/SpectrumVisualizer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lmiui/app/screenelement/elements/SpectrumVisualizerScreenElement;->mSpectrumVisualizer:Lmiui/widget/SpectrumVisualizer;

    .line 41
    iget-object v0, p0, Lmiui/app/screenelement/elements/SpectrumVisualizerScreenElement;->mSpectrumVisualizer:Lmiui/widget/SpectrumVisualizer;

    invoke-virtual {v0, v2}, Lmiui/widget/SpectrumVisualizer;->setSoftDrawEnabled(Z)V

    .line 42
    iget-object v0, p0, Lmiui/app/screenelement/elements/SpectrumVisualizerScreenElement;->mSpectrumVisualizer:Lmiui/widget/SpectrumVisualizer;

    invoke-virtual {v0, v2}, Lmiui/widget/SpectrumVisualizer;->enableUpdate(Z)V

    .line 43
    return-void
.end method


# virtual methods
.method public enableUpdate(Z)V
    .locals 1
    .parameter "b"

    .prologue
    .line 73
    iget-object v0, p0, Lmiui/app/screenelement/elements/SpectrumVisualizerScreenElement;->mSpectrumVisualizer:Lmiui/widget/SpectrumVisualizer;

    invoke-virtual {v0, p1}, Lmiui/widget/SpectrumVisualizer;->enableUpdate(Z)V

    .line 74
    return-void
.end method

.method protected getBitmap()Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 65
    iget-object v0, p0, Lmiui/app/screenelement/elements/SpectrumVisualizerScreenElement;->mCanvas:Landroid/graphics/Canvas;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 66
    iget-object v0, p0, Lmiui/app/screenelement/elements/SpectrumVisualizerScreenElement;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->setDensity(I)V

    .line 67
    iget-object v0, p0, Lmiui/app/screenelement/elements/SpectrumVisualizerScreenElement;->mSpectrumVisualizer:Lmiui/widget/SpectrumVisualizer;

    iget-object v1, p0, Lmiui/app/screenelement/elements/SpectrumVisualizerScreenElement;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, v1}, Lmiui/widget/SpectrumVisualizer;->draw(Landroid/graphics/Canvas;)V

    .line 68
    iget-object v0, p0, Lmiui/app/screenelement/elements/SpectrumVisualizerScreenElement;->mCanvas:Landroid/graphics/Canvas;

    iget v1, p0, Lmiui/app/screenelement/elements/SpectrumVisualizerScreenElement;->mResDensity:I

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setDensity(I)V

    .line 69
    iget-object v0, p0, Lmiui/app/screenelement/elements/SpectrumVisualizerScreenElement;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public init()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v5, 0x0

    .line 47
    iget-object v6, p0, Lmiui/app/screenelement/elements/SpectrumVisualizerScreenElement;->mPanel:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    move-object v2, v5

    .line 48
    .local v2, panel:Landroid/graphics/Bitmap;
    :goto_0
    iget-object v6, p0, Lmiui/app/screenelement/elements/SpectrumVisualizerScreenElement;->mDotbar:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    move-object v0, v5

    .line 49
    .local v0, dotbar:Landroid/graphics/Bitmap;
    :goto_1
    iget-object v6, p0, Lmiui/app/screenelement/elements/SpectrumVisualizerScreenElement;->mShadow:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    move-object v3, v5

    .line 50
    .local v3, shadow:Landroid/graphics/Bitmap;
    :goto_2
    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    .line 51
    iget-object v5, p0, Lmiui/app/screenelement/elements/SpectrumVisualizerScreenElement;->mSpectrumVisualizer:Lmiui/widget/SpectrumVisualizer;

    invoke-virtual {v5, v2, v0, v3}, Lmiui/widget/SpectrumVisualizer;->setBitmaps(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 52
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getDensity()I

    move-result v5

    iput v5, p0, Lmiui/app/screenelement/elements/SpectrumVisualizerScreenElement;->mResDensity:I

    .line 56
    :cond_0
    iget-object v5, p0, Lmiui/app/screenelement/elements/SpectrumVisualizerScreenElement;->mSpectrumVisualizer:Lmiui/widget/SpectrumVisualizer;

    invoke-virtual {v5}, Lmiui/widget/SpectrumVisualizer;->getVisualWidth()I

    move-result v4

    .line 57
    .local v4, width:I
    iget-object v5, p0, Lmiui/app/screenelement/elements/SpectrumVisualizerScreenElement;->mSpectrumVisualizer:Lmiui/widget/SpectrumVisualizer;

    invoke-virtual {v5}, Lmiui/widget/SpectrumVisualizer;->getVisualHeight()I

    move-result v1

    .line 58
    .local v1, height:I
    iget-object v5, p0, Lmiui/app/screenelement/elements/SpectrumVisualizerScreenElement;->mSpectrumVisualizer:Lmiui/widget/SpectrumVisualizer;

    invoke-virtual {v5, v8, v8, v4, v1}, Lmiui/widget/SpectrumVisualizer;->layout(IIII)V

    .line 59
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v1, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, p0, Lmiui/app/screenelement/elements/SpectrumVisualizerScreenElement;->mBitmap:Landroid/graphics/Bitmap;

    .line 60
    iget-object v5, p0, Lmiui/app/screenelement/elements/SpectrumVisualizerScreenElement;->mBitmap:Landroid/graphics/Bitmap;

    iget v6, p0, Lmiui/app/screenelement/elements/SpectrumVisualizerScreenElement;->mResDensity:I

    invoke-virtual {v5, v6}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 61
    new-instance v5, Landroid/graphics/Canvas;

    iget-object v6, p0, Lmiui/app/screenelement/elements/SpectrumVisualizerScreenElement;->mBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v5, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v5, p0, Lmiui/app/screenelement/elements/SpectrumVisualizerScreenElement;->mCanvas:Landroid/graphics/Canvas;

    .line 62
    return-void

    .line 47
    .end local v0           #dotbar:Landroid/graphics/Bitmap;
    .end local v1           #height:I
    .end local v2           #panel:Landroid/graphics/Bitmap;
    .end local v3           #shadow:Landroid/graphics/Bitmap;
    .end local v4           #width:I
    :cond_1
    iget-object v6, p0, Lmiui/app/screenelement/elements/SpectrumVisualizerScreenElement;->mContext:Lmiui/app/screenelement/ScreenContext;

    iget-object v6, v6, Lmiui/app/screenelement/ScreenContext;->mResourceManager:Lmiui/app/screenelement/ResourceManager;

    iget-object v7, p0, Lmiui/app/screenelement/elements/SpectrumVisualizerScreenElement;->mPanel:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lmiui/app/screenelement/ResourceManager;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_0

    .line 48
    .restart local v2       #panel:Landroid/graphics/Bitmap;
    :cond_2
    iget-object v6, p0, Lmiui/app/screenelement/elements/SpectrumVisualizerScreenElement;->mContext:Lmiui/app/screenelement/ScreenContext;

    iget-object v6, v6, Lmiui/app/screenelement/ScreenContext;->mResourceManager:Lmiui/app/screenelement/ResourceManager;

    iget-object v7, p0, Lmiui/app/screenelement/elements/SpectrumVisualizerScreenElement;->mDotbar:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lmiui/app/screenelement/ResourceManager;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_1

    .line 49
    .restart local v0       #dotbar:Landroid/graphics/Bitmap;
    :cond_3
    iget-object v5, p0, Lmiui/app/screenelement/elements/SpectrumVisualizerScreenElement;->mContext:Lmiui/app/screenelement/ScreenContext;

    iget-object v5, v5, Lmiui/app/screenelement/ScreenContext;->mResourceManager:Lmiui/app/screenelement/ResourceManager;

    iget-object v6, p0, Lmiui/app/screenelement/elements/SpectrumVisualizerScreenElement;->mShadow:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lmiui/app/screenelement/ResourceManager;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    goto :goto_2
.end method

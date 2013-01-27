.class public Lmiui/app/screenelement/elements/VirtualScreen;
.super Lmiui/app/screenelement/elements/ElementGroup;
.source "VirtualScreen.java"


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "VirtualScreen"


# instance fields
.field private mScreenBitmap:Landroid/graphics/Bitmap;

.field private mScreenCanvas:Landroid/graphics/Canvas;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/app/screenelement/ScreenContext;Lmiui/app/screenelement/ScreenElementRoot;)V
    .locals 0
    .parameter "node"
    .parameter "c"
    .parameter "root"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/app/screenelement/ScreenElementLoadException;
        }
    .end annotation

    .prologue
    .line 22
    invoke-direct {p0, p1, p2, p3}, Lmiui/app/screenelement/elements/ElementGroup;-><init>(Lorg/w3c/dom/Element;Lmiui/app/screenelement/ScreenContext;Lmiui/app/screenelement/ScreenElementRoot;)V

    .line 23
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lmiui/app/screenelement/elements/VirtualScreen;->mScreenBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 42
    return-void
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lmiui/app/screenelement/elements/VirtualScreen;->mScreenBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public init()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 27
    invoke-super {p0}, Lmiui/app/screenelement/elements/ElementGroup;->init()V

    .line 28
    invoke-virtual {p0}, Lmiui/app/screenelement/elements/VirtualScreen;->getWidth()F

    move-result v1

    .line 29
    .local v1, width:F
    cmpg-float v2, v1, v4

    if-gez v2, :cond_0

    .line 30
    const-string v2, "screen_width"

    iget-object v3, p0, Lmiui/app/screenelement/elements/VirtualScreen;->mContext:Lmiui/app/screenelement/ScreenContext;

    iget-object v3, v3, Lmiui/app/screenelement/ScreenContext;->mVariables:Lmiui/app/screenelement/data/Variables;

    invoke-static {v2, v3}, Lmiui/app/screenelement/util/Utils;->getVariableNumber(Ljava/lang/String;Lmiui/app/screenelement/data/Variables;)D

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lmiui/app/screenelement/elements/VirtualScreen;->scale(D)F

    move-result v1

    .line 31
    :cond_0
    invoke-virtual {p0}, Lmiui/app/screenelement/elements/VirtualScreen;->getHeight()F

    move-result v0

    .line 32
    .local v0, height:F
    cmpg-float v2, v0, v4

    if-gez v2, :cond_1

    .line 33
    const-string v2, "screen_height"

    iget-object v3, p0, Lmiui/app/screenelement/elements/VirtualScreen;->mContext:Lmiui/app/screenelement/ScreenContext;

    iget-object v3, v3, Lmiui/app/screenelement/ScreenContext;->mVariables:Lmiui/app/screenelement/data/Variables;

    invoke-static {v2, v3}, Lmiui/app/screenelement/util/Utils;->getVariableNumber(Ljava/lang/String;Lmiui/app/screenelement/data/Variables;)D

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lmiui/app/screenelement/elements/VirtualScreen;->scale(D)F

    move-result v0

    .line 34
    :cond_1
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lmiui/app/screenelement/elements/VirtualScreen;->mScreenBitmap:Landroid/graphics/Bitmap;

    .line 35
    iget-object v2, p0, Lmiui/app/screenelement/elements/VirtualScreen;->mScreenBitmap:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lmiui/app/screenelement/elements/VirtualScreen;->mRoot:Lmiui/app/screenelement/ScreenElementRoot;

    invoke-virtual {v3}, Lmiui/app/screenelement/ScreenElementRoot;->getTargetDensity()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 36
    new-instance v2, Landroid/graphics/Canvas;

    iget-object v3, p0, Lmiui/app/screenelement/elements/VirtualScreen;->mScreenBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v2, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v2, p0, Lmiui/app/screenelement/elements/VirtualScreen;->mScreenCanvas:Landroid/graphics/Canvas;

    .line 37
    return-void
.end method

.method public render(Landroid/graphics/Canvas;)V
    .locals 3
    .parameter "c"

    .prologue
    .line 46
    iget-object v0, p0, Lmiui/app/screenelement/elements/VirtualScreen;->mScreenCanvas:Landroid/graphics/Canvas;

    const/4 v1, 0x0

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 47
    iget-object v0, p0, Lmiui/app/screenelement/elements/VirtualScreen;->mScreenCanvas:Landroid/graphics/Canvas;

    invoke-super {p0, v0}, Lmiui/app/screenelement/elements/ElementGroup;->render(Landroid/graphics/Canvas;)V

    .line 48
    return-void
.end method

.class public Lmiui/app/screenelement/elements/ImageScreenElement;
.super Lmiui/app/screenelement/elements/AnimatedScreenElement;
.source "ImageScreenElement.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/app/screenelement/elements/ImageScreenElement$1;,
        Lmiui/app/screenelement/elements/ImageScreenElement$pair;,
        Lmiui/app/screenelement/elements/ImageScreenElement$SrcType;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ImageScreenElement"

.field public static final MASK_TAG_NAME:Ljava/lang/String; = "Mask"

.field public static final TAG_NAME:Ljava/lang/String; = "Image"

.field private static final VAR_BMP_HEIGHT:Ljava/lang/String; = "bmp_height"

.field private static final VAR_BMP_WIDTH:Ljava/lang/String; = "bmp_width"


# instance fields
.field private mAngleX:Lmiui/app/screenelement/data/Expression;

.field private mAngleY:Lmiui/app/screenelement/data/Expression;

.field private mAngleZ:Lmiui/app/screenelement/data/Expression;

.field private mAntiAlias:Z

.field protected mBitmap:Landroid/graphics/Bitmap;

.field protected mBitmapChanged:Z

.field private mBmpSizeHeightVar:Lmiui/app/screenelement/util/IndexedNumberVariable;

.field private mBmpSizeWidthVar:Lmiui/app/screenelement/util/IndexedNumberVariable;

.field private mBufferCanvas:Landroid/graphics/Canvas;

.field private mCachedBitmap:Landroid/graphics/Bitmap;

.field private mCachedBitmapName:Ljava/lang/String;

.field private mCamera:Landroid/graphics/Camera;

.field private mCenterZ:Lmiui/app/screenelement/data/Expression;

.field protected mCurrentBitmap:Landroid/graphics/Bitmap;

.field private mDesRect:Landroid/graphics/Rect;

.field private mKey:Ljava/lang/String;

.field private mMaskBuffer:Landroid/graphics/Bitmap;

.field private mMaskPaint:Landroid/graphics/Paint;

.field private mMasks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lmiui/app/screenelement/animation/AnimatedElement;",
            ">;"
        }
    .end annotation
.end field

.field private mMatrix:Landroid/graphics/Matrix;

.field private mPaint:Landroid/graphics/Paint;

.field private mRotateXYpair:Lmiui/app/screenelement/elements/ImageScreenElement$pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiui/app/screenelement/elements/ImageScreenElement$pair",
            "<",
            "Ljava/lang/Double;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private mSrcH:Lmiui/app/screenelement/data/Expression;

.field private mSrcRect:Landroid/graphics/Rect;

.field private mSrcType:Lmiui/app/screenelement/elements/ImageScreenElement$SrcType;

.field private mSrcW:Lmiui/app/screenelement/data/Expression;

.field private mSrcX:Lmiui/app/screenelement/data/Expression;

.field private mSrcY:Lmiui/app/screenelement/data/Expression;

.field private mUseVirtualScreen:Z

.field private mVirtualScreen:Lmiui/app/screenelement/elements/VirtualScreen;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/app/screenelement/ScreenContext;Lmiui/app/screenelement/ScreenElementRoot;)V
    .locals 5
    .parameter "node"
    .parameter "c"
    .parameter "root"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/app/screenelement/ScreenElementLoadException;
        }
    .end annotation

    .prologue
    .line 110
    invoke-direct {p0, p1, p2, p3}, Lmiui/app/screenelement/elements/AnimatedScreenElement;-><init>(Lorg/w3c/dom/Element;Lmiui/app/screenelement/ScreenContext;Lmiui/app/screenelement/ScreenElementRoot;)V

    .line 44
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lmiui/app/screenelement/elements/ImageScreenElement;->mMaskPaint:Landroid/graphics/Paint;

    .line 46
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lmiui/app/screenelement/elements/ImageScreenElement;->mPaint:Landroid/graphics/Paint;

    .line 52
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lmiui/app/screenelement/elements/ImageScreenElement;->mDesRect:Landroid/graphics/Rect;

    .line 89
    sget-object v1, Lmiui/app/screenelement/elements/ImageScreenElement$SrcType;->ResourceImage:Lmiui/app/screenelement/elements/ImageScreenElement$SrcType;

    iput-object v1, p0, Lmiui/app/screenelement/elements/ImageScreenElement;->mSrcType:Lmiui/app/screenelement/elements/ImageScreenElement$SrcType;

    .line 111
    invoke-virtual {p0, p1}, Lmiui/app/screenelement/elements/ImageScreenElement;->load(Lorg/w3c/dom/Element;)V

    .line 113
    const/4 v1, 0x1

    iput-boolean v1, p0, Lmiui/app/screenelement/elements/ImageScreenElement;->mAntiAlias:Z

    .line 114
    iget-object v1, p0, Lmiui/app/screenelement/elements/ImageScreenElement;->mPaint:Landroid/graphics/Paint;

    iget-boolean v2, p0, Lmiui/app/screenelement/elements/ImageScreenElement;->mAntiAlias:Z

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 115
    iget-object v1, p0, Lmiui/app/screenelement/elements/ImageScreenElement;->mMaskPaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 116
    const-string v1, "srcX"

    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lmiui/app/screenelement/data/Expression;->build(Ljava/lang/String;)Lmiui/app/screenelement/data/Expression;

    move-result-object v1

    iput-object v1, p0, Lmiui/app/screenelement/elements/ImageScreenElement;->mSrcX:Lmiui/app/screenelement/data/Expression;

    .line 117
    const-string v1, "srcY"

    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lmiui/app/screenelement/data/Expression;->build(Ljava/lang/String;)Lmiui/app/screenelement/data/Expression;

    move-result-object v1

    iput-object v1, p0, Lmiui/app/screenelement/elements/ImageScreenElement;->mSrcY:Lmiui/app/screenelement/data/Expression;

    .line 118
    const-string v1, "srcW"

    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lmiui/app/screenelement/data/Expression;->build(Ljava/lang/String;)Lmiui/app/screenelement/data/Expression;

    move-result-object v1

    iput-object v1, p0, Lmiui/app/screenelement/elements/ImageScreenElement;->mSrcW:Lmiui/app/screenelement/data/Expression;

    .line 119
    const-string v1, "srcH"

    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lmiui/app/screenelement/data/Expression;->build(Ljava/lang/String;)Lmiui/app/screenelement/data/Expression;

    move-result-object v1

    iput-object v1, p0, Lmiui/app/screenelement/elements/ImageScreenElement;->mSrcH:Lmiui/app/screenelement/data/Expression;

    .line 120
    iget-object v1, p0, Lmiui/app/screenelement/elements/ImageScreenElement;->mSrcX:Lmiui/app/screenelement/data/Expression;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lmiui/app/screenelement/elements/ImageScreenElement;->mSrcY:Lmiui/app/screenelement/data/Expression;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lmiui/app/screenelement/elements/ImageScreenElement;->mSrcW:Lmiui/app/screenelement/data/Expression;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lmiui/app/screenelement/elements/ImageScreenElement;->mSrcH:Lmiui/app/screenelement/data/Expression;

    if-eqz v1, :cond_0

    .line 121
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lmiui/app/screenelement/elements/ImageScreenElement;->mSrcRect:Landroid/graphics/Rect;

    .line 123
    :cond_0
    const-string v1, "angleX"

    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lmiui/app/screenelement/data/Expression;->build(Ljava/lang/String;)Lmiui/app/screenelement/data/Expression;

    move-result-object v1

    iput-object v1, p0, Lmiui/app/screenelement/elements/ImageScreenElement;->mAngleX:Lmiui/app/screenelement/data/Expression;

    .line 124
    const-string v1, "angleY"

    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lmiui/app/screenelement/data/Expression;->build(Ljava/lang/String;)Lmiui/app/screenelement/data/Expression;

    move-result-object v1

    iput-object v1, p0, Lmiui/app/screenelement/elements/ImageScreenElement;->mAngleY:Lmiui/app/screenelement/data/Expression;

    .line 125
    const-string v1, "angleZ"

    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lmiui/app/screenelement/data/Expression;->build(Ljava/lang/String;)Lmiui/app/screenelement/data/Expression;

    move-result-object v1

    iput-object v1, p0, Lmiui/app/screenelement/elements/ImageScreenElement;->mAngleZ:Lmiui/app/screenelement/data/Expression;

    .line 126
    const-string v1, "centerZ"

    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lmiui/app/screenelement/data/Expression;->build(Ljava/lang/String;)Lmiui/app/screenelement/data/Expression;

    move-result-object v1

    iput-object v1, p0, Lmiui/app/screenelement/elements/ImageScreenElement;->mCenterZ:Lmiui/app/screenelement/data/Expression;

    .line 127
    iget-object v1, p0, Lmiui/app/screenelement/elements/ImageScreenElement;->mAngleX:Lmiui/app/screenelement/data/Expression;

    if-nez v1, :cond_1

    iget-object v1, p0, Lmiui/app/screenelement/elements/ImageScreenElement;->mAngleY:Lmiui/app/screenelement/data/Expression;

    if-nez v1, :cond_1

    iget-object v1, p0, Lmiui/app/screenelement/elements/ImageScreenElement;->mAngleZ:Lmiui/app/screenelement/data/Expression;

    if-eqz v1, :cond_2

    .line 128
    :cond_1
    new-instance v1, Landroid/graphics/Camera;

    invoke-direct {v1}, Landroid/graphics/Camera;-><init>()V

    iput-object v1, p0, Lmiui/app/screenelement/elements/ImageScreenElement;->mCamera:Landroid/graphics/Camera;

    .line 129
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lmiui/app/screenelement/elements/ImageScreenElement;->mMatrix:Landroid/graphics/Matrix;

    .line 132
    :cond_2
    const-string v1, "useVirtualScreen"

    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lmiui/app/screenelement/elements/ImageScreenElement;->mUseVirtualScreen:Z

    .line 133
    const-string v1, "srcType"

    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 134
    .local v0, srcType:Ljava/lang/String;
    const-string v1, "ResourceImage"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 135
    sget-object v1, Lmiui/app/screenelement/elements/ImageScreenElement$SrcType;->ResourceImage:Lmiui/app/screenelement/elements/ImageScreenElement$SrcType;

    iput-object v1, p0, Lmiui/app/screenelement/elements/ImageScreenElement;->mSrcType:Lmiui/app/screenelement/elements/ImageScreenElement$SrcType;

    .line 145
    :goto_0
    iget-boolean v1, p0, Lmiui/app/screenelement/elements/ImageScreenElement;->mHasName:Z

    if-eqz v1, :cond_3

    .line 146
    new-instance v1, Lmiui/app/screenelement/util/IndexedNumberVariable;

    iget-object v2, p0, Lmiui/app/screenelement/elements/ImageScreenElement;->mName:Ljava/lang/String;

    const-string v3, "bmp_width"

    iget-object v4, p2, Lmiui/app/screenelement/ScreenContext;->mVariables:Lmiui/app/screenelement/data/Variables;

    invoke-direct {v1, v2, v3, v4}, Lmiui/app/screenelement/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Ljava/lang/String;Lmiui/app/screenelement/data/Variables;)V

    iput-object v1, p0, Lmiui/app/screenelement/elements/ImageScreenElement;->mBmpSizeWidthVar:Lmiui/app/screenelement/util/IndexedNumberVariable;

    .line 147
    new-instance v1, Lmiui/app/screenelement/util/IndexedNumberVariable;

    iget-object v2, p0, Lmiui/app/screenelement/elements/ImageScreenElement;->mName:Ljava/lang/String;

    const-string v3, "bmp_height"

    iget-object v4, p2, Lmiui/app/screenelement/ScreenContext;->mVariables:Lmiui/app/screenelement/data/Variables;

    invoke-direct {v1, v2, v3, v4}, Lmiui/app/screenelement/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Ljava/lang/String;Lmiui/app/screenelement/data/Variables;)V

    iput-object v1, p0, Lmiui/app/screenelement/elements/ImageScreenElement;->mBmpSizeHeightVar:Lmiui/app/screenelement/util/IndexedNumberVariable;

    .line 149
    :cond_3
    return-void

    .line 136
    :cond_4
    iget-boolean v1, p0, Lmiui/app/screenelement/elements/ImageScreenElement;->mUseVirtualScreen:Z

    if-nez v1, :cond_5

    const-string v1, "VirtualScreen"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 137
    :cond_5
    sget-object v1, Lmiui/app/screenelement/elements/ImageScreenElement$SrcType;->VirtualScreen:Lmiui/app/screenelement/elements/ImageScreenElement$SrcType;

    iput-object v1, p0, Lmiui/app/screenelement/elements/ImageScreenElement;->mSrcType:Lmiui/app/screenelement/elements/ImageScreenElement$SrcType;

    goto :goto_0

    .line 138
    :cond_6
    const-string v1, "ApplicationIcon"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 139
    sget-object v1, Lmiui/app/screenelement/elements/ImageScreenElement$SrcType;->ApplicationIcon:Lmiui/app/screenelement/elements/ImageScreenElement$SrcType;

    iput-object v1, p0, Lmiui/app/screenelement/elements/ImageScreenElement;->mSrcType:Lmiui/app/screenelement/elements/ImageScreenElement$SrcType;

    goto :goto_0

    .line 142
    :cond_7
    sget-object v1, Lmiui/app/screenelement/elements/ImageScreenElement$SrcType;->ResourceImage:Lmiui/app/screenelement/elements/ImageScreenElement$SrcType;

    iput-object v1, p0, Lmiui/app/screenelement/elements/ImageScreenElement;->mSrcType:Lmiui/app/screenelement/elements/ImageScreenElement$SrcType;

    goto :goto_0
.end method

.method private getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 377
    iget-object v0, p0, Lmiui/app/screenelement/elements/ImageScreenElement;->mKey:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 378
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/app/screenelement/elements/ImageScreenElement;->mKey:Ljava/lang/String;

    .line 379
    :cond_0
    iget-object v0, p0, Lmiui/app/screenelement/elements/ImageScreenElement;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method private loadMask(Lorg/w3c/dom/Element;)V
    .locals 6
    .parameter "node"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/app/screenelement/ScreenElementLoadException;
        }
    .end annotation

    .prologue
    .line 161
    iget-object v2, p0, Lmiui/app/screenelement/elements/ImageScreenElement;->mMasks:Ljava/util/ArrayList;

    if-nez v2, :cond_0

    .line 162
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lmiui/app/screenelement/elements/ImageScreenElement;->mMasks:Ljava/util/ArrayList;

    .line 164
    :cond_0
    iget-object v2, p0, Lmiui/app/screenelement/elements/ImageScreenElement;->mMasks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 166
    const-string v2, "Mask"

    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 167
    .local v1, images:Lorg/w3c/dom/NodeList;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 168
    iget-object v3, p0, Lmiui/app/screenelement/elements/ImageScreenElement;->mMasks:Ljava/util/ArrayList;

    new-instance v4, Lmiui/app/screenelement/animation/AnimatedElement;

    invoke-interface {v1, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/Element;

    iget-object v5, p0, Lmiui/app/screenelement/elements/ImageScreenElement;->mContext:Lmiui/app/screenelement/ScreenContext;

    invoke-direct {v4, v2, v5}, Lmiui/app/screenelement/animation/AnimatedElement;-><init>(Lorg/w3c/dom/Element;Lmiui/app/screenelement/ScreenContext;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 167
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 170
    :cond_1
    return-void
.end method

.method private renderWithMask(Landroid/graphics/Canvas;Lmiui/app/screenelement/animation/AnimatedElement;II)V
    .locals 46
    .parameter "bufferCanvas"
    .parameter "mask"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 403
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 404
    move-object/from16 v0, p0

    iget-object v2, v0, Lmiui/app/screenelement/elements/ImageScreenElement;->mContext:Lmiui/app/screenelement/ScreenContext;

    iget-object v2, v2, Lmiui/app/screenelement/ScreenContext;->mResourceManager:Lmiui/app/screenelement/ResourceManager;

    invoke-virtual/range {p2 .. p2}, Lmiui/app/screenelement/animation/AnimatedElement;->getSrc()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Lmiui/app/screenelement/ResourceManager;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v38

    .line 405
    .local v38, rawMask:Landroid/graphics/Bitmap;
    if-nez v38, :cond_0

    .line 457
    :goto_0
    return-void

    .line 408
    :cond_0
    invoke-virtual/range {p2 .. p2}, Lmiui/app/screenelement/animation/AnimatedElement;->getX()F

    move-result v2

    float-to-double v9, v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v10}, Lmiui/app/screenelement/elements/ImageScreenElement;->scale(D)F

    move-result v2

    float-to-double v0, v2

    move-wide/from16 v30, v0

    .line 409
    .local v30, maskX:D
    invoke-virtual/range {p2 .. p2}, Lmiui/app/screenelement/animation/AnimatedElement;->getY()F

    move-result v2

    float-to-double v9, v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v10}, Lmiui/app/screenelement/elements/ImageScreenElement;->scale(D)F

    move-result v2

    float-to-double v0, v2

    move-wide/from16 v32, v0

    .line 410
    .local v32, maskY:D
    invoke-virtual/range {p2 .. p2}, Lmiui/app/screenelement/animation/AnimatedElement;->getRotationAngle()F

    move-result v29

    .line 411
    .local v29, maskAngle:F
    invoke-virtual/range {p2 .. p2}, Lmiui/app/screenelement/animation/AnimatedElement;->isAlignAbsolute()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 412
    invoke-virtual/range {p0 .. p0}, Lmiui/app/screenelement/elements/ImageScreenElement;->getAngle()F

    move-result v17

    .line 413
    .local v17, angle:F
    const/4 v2, 0x0

    cmpl-float v2, v17, v2

    if-nez v2, :cond_4

    .line 414
    move/from16 v0, p3

    int-to-double v9, v0

    sub-double v30, v30, v9

    .line 415
    move/from16 v0, p4

    int-to-double v9, v0

    sub-double v32, v32, v9

    .line 443
    .end local v17           #angle:F
    :cond_1
    :goto_1
    invoke-virtual/range {p2 .. p2}, Lmiui/app/screenelement/animation/AnimatedElement;->getCenterX()F

    move-result v2

    float-to-double v9, v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v10}, Lmiui/app/screenelement/elements/ImageScreenElement;->scale(D)F

    move-result v2

    float-to-double v9, v2

    add-double v9, v9, v30

    double-to-float v2, v9

    invoke-virtual/range {p2 .. p2}, Lmiui/app/screenelement/animation/AnimatedElement;->getCenterY()F

    move-result v9

    float-to-double v9, v9

    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v10}, Lmiui/app/screenelement/elements/ImageScreenElement;->scale(D)F

    move-result v9

    float-to-double v9, v9

    add-double v9, v9, v32

    double-to-float v9, v9

    move-object/from16 v0, p1

    move/from16 v1, v29

    invoke-virtual {v0, v1, v2, v9}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 445
    move-wide/from16 v0, v30

    double-to-int v0, v0

    move/from16 v34, v0

    .line 446
    .local v34, mx:I
    move-wide/from16 v0, v32

    double-to-int v0, v0

    move/from16 v35, v0

    .line 447
    .local v35, my:I
    invoke-virtual/range {p2 .. p2}, Lmiui/app/screenelement/animation/AnimatedElement;->getWidth()F

    move-result v2

    float-to-double v9, v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v10}, Lmiui/app/screenelement/elements/ImageScreenElement;->scale(D)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v43

    .line 448
    .local v43, width:I
    if-gez v43, :cond_2

    .line 449
    invoke-virtual/range {v38 .. v38}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v43

    .line 450
    :cond_2
    invoke-virtual/range {p2 .. p2}, Lmiui/app/screenelement/animation/AnimatedElement;->getHeight()F

    move-result v2

    float-to-double v9, v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v10}, Lmiui/app/screenelement/elements/ImageScreenElement;->scale(D)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v28

    .line 451
    .local v28, height:I
    if-gez v28, :cond_3

    .line 452
    invoke-virtual/range {v38 .. v38}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v28

    .line 453
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lmiui/app/screenelement/elements/ImageScreenElement;->mDesRect:Landroid/graphics/Rect;

    add-int v9, v34, v43

    add-int v10, v35, v28

    move/from16 v0, v34

    move/from16 v1, v35

    invoke-virtual {v2, v0, v1, v9, v10}, Landroid/graphics/Rect;->set(IIII)V

    .line 454
    move-object/from16 v0, p0

    iget-object v2, v0, Lmiui/app/screenelement/elements/ImageScreenElement;->mMaskPaint:Landroid/graphics/Paint;

    invoke-virtual/range {p2 .. p2}, Lmiui/app/screenelement/animation/AnimatedElement;->getAlpha()I

    move-result v9

    invoke-virtual {v2, v9}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 455
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Lmiui/app/screenelement/elements/ImageScreenElement;->mDesRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v10, v0, Lmiui/app/screenelement/elements/ImageScreenElement;->mMaskPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move-object/from16 v1, v38

    invoke-virtual {v0, v1, v2, v9, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 456
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_0

    .line 417
    .end local v28           #height:I
    .end local v34           #mx:I
    .end local v35           #my:I
    .end local v43           #width:I
    .restart local v17       #angle:F
    :cond_4
    sub-float v29, v29, v17

    .line 418
    const-wide v36, 0x400921fb54442c46L

    .line 419
    .local v36, pi:D
    move/from16 v0, v17

    float-to-double v9, v0

    const-wide v11, 0x400921fb54442c46L

    mul-double/2addr v9, v11

    const-wide v11, 0x4066800000000000L

    div-double v7, v9, v11

    .line 420
    .local v7, angleA:D
    invoke-virtual/range {p0 .. p0}, Lmiui/app/screenelement/elements/ImageScreenElement;->getCenterX()F

    move-result v2

    float-to-double v3, v2

    .line 421
    .local v3, cx:D
    invoke-virtual/range {p0 .. p0}, Lmiui/app/screenelement/elements/ImageScreenElement;->getCenterY()F

    move-result v2

    float-to-double v5, v2

    .line 422
    .local v5, cy:D
    move-object/from16 v0, p0

    iget-object v2, v0, Lmiui/app/screenelement/elements/ImageScreenElement;->mRotateXYpair:Lmiui/app/screenelement/elements/ImageScreenElement$pair;

    if-nez v2, :cond_5

    .line 423
    new-instance v2, Lmiui/app/screenelement/elements/ImageScreenElement$pair;

    const/4 v9, 0x0

    invoke-direct {v2, v9}, Lmiui/app/screenelement/elements/ImageScreenElement$pair;-><init>(Lmiui/app/screenelement/elements/ImageScreenElement$1;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lmiui/app/screenelement/elements/ImageScreenElement;->mRotateXYpair:Lmiui/app/screenelement/elements/ImageScreenElement$pair;

    .line 425
    :cond_5
    move-object/from16 v0, p0

    iget-object v9, v0, Lmiui/app/screenelement/elements/ImageScreenElement;->mRotateXYpair:Lmiui/app/screenelement/elements/ImageScreenElement$pair;

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v9}, Lmiui/app/screenelement/elements/ImageScreenElement;->rotateXY(DDDLmiui/app/screenelement/elements/ImageScreenElement$pair;)V

    .line 427
    move/from16 v0, p3

    int-to-double v9, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lmiui/app/screenelement/elements/ImageScreenElement;->mRotateXYpair:Lmiui/app/screenelement/elements/ImageScreenElement$pair;

    iget-object v2, v2, Lmiui/app/screenelement/elements/ImageScreenElement$pair;->p1:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v11

    add-double v39, v9, v11

    .line 428
    .local v39, rx:D
    move/from16 v0, p4

    int-to-double v9, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lmiui/app/screenelement/elements/ImageScreenElement;->mRotateXYpair:Lmiui/app/screenelement/elements/ImageScreenElement$pair;

    iget-object v2, v2, Lmiui/app/screenelement/elements/ImageScreenElement$pair;->p2:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v11

    add-double v41, v9, v11

    .line 431
    .local v41, ry:D
    invoke-virtual/range {p2 .. p2}, Lmiui/app/screenelement/animation/AnimatedElement;->getCenterX()F

    move-result v2

    float-to-double v10, v2

    invoke-virtual/range {p2 .. p2}, Lmiui/app/screenelement/animation/AnimatedElement;->getCenterY()F

    move-result v2

    float-to-double v12, v2

    invoke-virtual/range {p2 .. p2}, Lmiui/app/screenelement/animation/AnimatedElement;->getRotationAngle()F

    move-result v2

    float-to-double v14, v2

    const-wide v44, 0x400921fb54442c46L

    mul-double v14, v14, v44

    const-wide v44, 0x4066800000000000L

    div-double v14, v14, v44

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/screenelement/elements/ImageScreenElement;->mRotateXYpair:Lmiui/app/screenelement/elements/ImageScreenElement$pair;

    move-object/from16 v16, v0

    move-object/from16 v9, p0

    invoke-direct/range {v9 .. v16}, Lmiui/app/screenelement/elements/ImageScreenElement;->rotateXY(DDDLmiui/app/screenelement/elements/ImageScreenElement$pair;)V

    .line 432
    move-object/from16 v0, p0

    iget-object v2, v0, Lmiui/app/screenelement/elements/ImageScreenElement;->mRotateXYpair:Lmiui/app/screenelement/elements/ImageScreenElement$pair;

    iget-object v2, v2, Lmiui/app/screenelement/elements/ImageScreenElement$pair;->p1:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v9

    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v10}, Lmiui/app/screenelement/elements/ImageScreenElement;->scale(D)F

    move-result v2

    float-to-double v9, v2

    add-double v30, v30, v9

    .line 433
    move-object/from16 v0, p0

    iget-object v2, v0, Lmiui/app/screenelement/elements/ImageScreenElement;->mRotateXYpair:Lmiui/app/screenelement/elements/ImageScreenElement$pair;

    iget-object v2, v2, Lmiui/app/screenelement/elements/ImageScreenElement$pair;->p2:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v9

    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v10}, Lmiui/app/screenelement/elements/ImageScreenElement;->scale(D)F

    move-result v2

    float-to-double v9, v2

    add-double v32, v32, v9

    .line 434
    sub-double v24, v30, v39

    .line 435
    .local v24, dx:D
    sub-double v26, v32, v41

    .line 436
    .local v26, dy:D
    mul-double v9, v24, v24

    mul-double v11, v26, v26

    add-double/2addr v9, v11

    invoke-static {v9, v10}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v22

    .line 437
    .local v22, dm:D
    div-double v9, v24, v22

    invoke-static {v9, v10}, Ljava/lang/Math;->asin(D)D

    move-result-wide v18

    .line 438
    .local v18, angleB:D
    const-wide/16 v9, 0x0

    cmpl-double v2, v26, v9

    if-lez v2, :cond_6

    add-double v20, v7, v18

    .line 439
    .local v20, angleC:D
    :goto_2
    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->sin(D)D

    move-result-wide v9

    mul-double v30, v22, v9

    .line 440
    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->cos(D)D

    move-result-wide v9

    mul-double v32, v22, v9

    goto/16 :goto_1

    .line 438
    .end local v20           #angleC:D
    :cond_6
    const-wide v9, 0x400921fb54442c46L

    add-double/2addr v9, v7

    sub-double v20, v9, v18

    goto :goto_2
.end method

.method private rotateXY(DDDLmiui/app/screenelement/elements/ImageScreenElement$pair;)V
    .locals 13
    .parameter "centerX"
    .parameter "centerY"
    .parameter "angle"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DDD",
            "Lmiui/app/screenelement/elements/ImageScreenElement$pair",
            "<",
            "Ljava/lang/Double;",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 388
    .local p7, pr:Lmiui/app/screenelement/elements/ImageScreenElement$pair;,"Lmiui/app/screenelement/elements/ImageScreenElement$pair<Ljava/lang/Double;Ljava/lang/Double;>;"
    mul-double v9, p1, p1

    mul-double v11, p3, p3

    add-double/2addr v9, v11

    invoke-static {v9, v10}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    .line 390
    .local v5, cm:D
    const-wide/16 v9, 0x0

    cmpl-double v9, v5, v9

    if-lez v9, :cond_0

    .line 391
    const-wide v7, 0x400921fb54442c46L

    .line 392
    .local v7, pi:D
    div-double v9, p1, v5

    invoke-static {v9, v10}, Ljava/lang/Math;->acos(D)D

    move-result-wide v1

    .line 393
    .local v1, angle1:D
    const-wide v9, 0x400921fb54442c46L

    sub-double/2addr v9, v1

    sub-double v3, v9, p5

    .line 394
    .local v3, angle2:D
    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v9

    mul-double/2addr v9, v5

    add-double/2addr v9, p1

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    move-object/from16 v0, p7

    iput-object v9, v0, Lmiui/app/screenelement/elements/ImageScreenElement$pair;->p1:Ljava/lang/Object;

    .line 395
    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v9

    mul-double/2addr v9, v5

    sub-double v9, p3, v9

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    move-object/from16 v0, p7

    iput-object v9, v0, Lmiui/app/screenelement/elements/ImageScreenElement$pair;->p2:Ljava/lang/Object;

    .line 400
    .end local v1           #angle1:D
    .end local v3           #angle2:D
    .end local v7           #pi:D
    :goto_0
    return-void

    .line 397
    :cond_0
    const-wide/16 v9, 0x0

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    move-object/from16 v0, p7

    iput-object v9, v0, Lmiui/app/screenelement/elements/ImageScreenElement$pair;->p1:Ljava/lang/Object;

    .line 398
    const-wide/16 v9, 0x0

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    move-object/from16 v0, p7

    iput-object v9, v0, Lmiui/app/screenelement/elements/ImageScreenElement$pair;->p2:Ljava/lang/Object;

    goto :goto_0
.end method

.method private updateBmpSizeVar()V
    .locals 3

    .prologue
    .line 347
    iget-boolean v0, p0, Lmiui/app/screenelement/elements/ImageScreenElement;->mHasName:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lmiui/app/screenelement/elements/ImageScreenElement;->mBitmapChanged:Z

    if-eqz v0, :cond_0

    .line 350
    iget-object v0, p0, Lmiui/app/screenelement/elements/ImageScreenElement;->mBmpSizeWidthVar:Lmiui/app/screenelement/util/IndexedNumberVariable;

    invoke-virtual {p0}, Lmiui/app/screenelement/elements/ImageScreenElement;->getBitmapWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0, v1}, Lmiui/app/screenelement/elements/ImageScreenElement;->descale(F)F

    move-result v1

    float-to-double v1, v1

    invoke-virtual {v0, v1, v2}, Lmiui/app/screenelement/util/IndexedNumberVariable;->set(D)V

    .line 351
    iget-object v0, p0, Lmiui/app/screenelement/elements/ImageScreenElement;->mBmpSizeHeightVar:Lmiui/app/screenelement/util/IndexedNumberVariable;

    invoke-virtual {p0}, Lmiui/app/screenelement/elements/ImageScreenElement;->getBitmapHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0, v1}, Lmiui/app/screenelement/elements/ImageScreenElement;->descale(F)F

    move-result v1

    float-to-double v1, v1

    invoke-virtual {v0, v1, v2}, Lmiui/app/screenelement/util/IndexedNumberVariable;->set(D)V

    .line 352
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/app/screenelement/elements/ImageScreenElement;->mBitmapChanged:Z

    .line 354
    :cond_0
    return-void
.end method


# virtual methods
.method protected getBitmap()Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    .line 357
    sget-object v1, Lmiui/app/screenelement/elements/ImageScreenElement$1;->$SwitchMap$miui$app$screenelement$elements$ImageScreenElement$SrcType:[I

    iget-object v2, p0, Lmiui/app/screenelement/elements/ImageScreenElement;->mSrcType:Lmiui/app/screenelement/elements/ImageScreenElement$SrcType;

    invoke-virtual {v2}, Lmiui/app/screenelement/elements/ImageScreenElement$SrcType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 363
    iget-object v1, p0, Lmiui/app/screenelement/elements/ImageScreenElement;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    .line 364
    iget-object v1, p0, Lmiui/app/screenelement/elements/ImageScreenElement;->mBitmap:Landroid/graphics/Bitmap;

    .line 372
    :goto_0
    return-object v1

    .line 359
    :pswitch_0
    iget-object v1, p0, Lmiui/app/screenelement/elements/ImageScreenElement;->mVirtualScreen:Lmiui/app/screenelement/elements/VirtualScreen;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lmiui/app/screenelement/elements/ImageScreenElement;->mVirtualScreen:Lmiui/app/screenelement/elements/VirtualScreen;

    invoke-virtual {v1}, Lmiui/app/screenelement/elements/VirtualScreen;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 361
    :pswitch_1
    iget-object v1, p0, Lmiui/app/screenelement/elements/ImageScreenElement;->mBitmap:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 366
    :cond_1
    iget-object v1, p0, Lmiui/app/screenelement/elements/ImageScreenElement;->mAni:Lmiui/app/screenelement/animation/AnimatedElement;

    invoke-virtual {v1}, Lmiui/app/screenelement/animation/AnimatedElement;->getSrc()Ljava/lang/String;

    move-result-object v0

    .line 367
    .local v0, name:Ljava/lang/String;
    iget-object v1, p0, Lmiui/app/screenelement/elements/ImageScreenElement;->mCachedBitmapName:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 368
    iput-object v0, p0, Lmiui/app/screenelement/elements/ImageScreenElement;->mCachedBitmapName:Ljava/lang/String;

    .line 369
    iget-object v1, p0, Lmiui/app/screenelement/elements/ImageScreenElement;->mContext:Lmiui/app/screenelement/ScreenContext;

    iget-object v1, v1, Lmiui/app/screenelement/ScreenContext;->mResourceManager:Lmiui/app/screenelement/ResourceManager;

    invoke-virtual {v1, v0}, Lmiui/app/screenelement/ResourceManager;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lmiui/app/screenelement/elements/ImageScreenElement;->mCachedBitmap:Landroid/graphics/Bitmap;

    .line 370
    const/4 v1, 0x1

    iput-boolean v1, p0, Lmiui/app/screenelement/elements/ImageScreenElement;->mBitmapChanged:Z

    .line 372
    :cond_2
    iget-object v1, p0, Lmiui/app/screenelement/elements/ImageScreenElement;->mCachedBitmap:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 357
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected getBitmapHeight()I
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lmiui/app/screenelement/elements/ImageScreenElement;->mCurrentBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/app/screenelement/elements/ImageScreenElement;->mCurrentBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getBitmapWidth()I
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lmiui/app/screenelement/elements/ImageScreenElement;->mCurrentBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/app/screenelement/elements/ImageScreenElement;->mCurrentBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public init()V
    .locals 11

    .prologue
    const/4 v8, 0x1

    .line 174
    invoke-super {p0}, Lmiui/app/screenelement/elements/AnimatedScreenElement;->init()V

    .line 175
    iget-object v7, p0, Lmiui/app/screenelement/elements/ImageScreenElement;->mMasks:Ljava/util/ArrayList;

    if-eqz v7, :cond_0

    .line 176
    iget-object v7, p0, Lmiui/app/screenelement/elements/ImageScreenElement;->mMasks:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiui/app/screenelement/animation/AnimatedElement;

    .line 177
    .local v3, mask:Lmiui/app/screenelement/animation/AnimatedElement;
    invoke-virtual {v3}, Lmiui/app/screenelement/animation/AnimatedElement;->init()V

    goto :goto_0

    .line 181
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #mask:Lmiui/app/screenelement/animation/AnimatedElement;
    :cond_0
    iput-boolean v8, p0, Lmiui/app/screenelement/elements/ImageScreenElement;->mBitmapChanged:Z

    .line 182
    sget-object v7, Lmiui/app/screenelement/elements/ImageScreenElement$1;->$SwitchMap$miui$app$screenelement$elements$ImageScreenElement$SrcType:[I

    iget-object v8, p0, Lmiui/app/screenelement/elements/ImageScreenElement;->mSrcType:Lmiui/app/screenelement/elements/ImageScreenElement$SrcType;

    invoke-virtual {v8}, Lmiui/app/screenelement/elements/ImageScreenElement$SrcType;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_0

    .line 209
    :cond_1
    :goto_1
    return-void

    .line 184
    :pswitch_0
    iget-object v7, p0, Lmiui/app/screenelement/elements/ImageScreenElement;->mRoot:Lmiui/app/screenelement/ScreenElementRoot;

    iget-object v8, p0, Lmiui/app/screenelement/elements/ImageScreenElement;->mAni:Lmiui/app/screenelement/animation/AnimatedElement;

    invoke-virtual {v8}, Lmiui/app/screenelement/animation/AnimatedElement;->getSrc()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lmiui/app/screenelement/ScreenElementRoot;->findElement(Ljava/lang/String;)Lmiui/app/screenelement/elements/ScreenElement;

    move-result-object v5

    .line 185
    .local v5, se:Lmiui/app/screenelement/elements/ScreenElement;
    instance-of v7, v5, Lmiui/app/screenelement/elements/VirtualScreen;

    if-eqz v7, :cond_1

    .line 186
    check-cast v5, Lmiui/app/screenelement/elements/VirtualScreen;

    .end local v5           #se:Lmiui/app/screenelement/elements/ScreenElement;
    iput-object v5, p0, Lmiui/app/screenelement/elements/ImageScreenElement;->mVirtualScreen:Lmiui/app/screenelement/elements/VirtualScreen;

    goto :goto_1

    .line 190
    :pswitch_1
    iget-object v7, p0, Lmiui/app/screenelement/elements/ImageScreenElement;->mAni:Lmiui/app/screenelement/animation/AnimatedElement;

    invoke-virtual {v7}, Lmiui/app/screenelement/animation/AnimatedElement;->getSrc()Ljava/lang/String;

    move-result-object v6

    .line 191
    .local v6, src:Ljava/lang/String;
    if-eqz v6, :cond_3

    .line 192
    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 193
    .local v4, name:[Ljava/lang/String;
    array-length v7, v4

    const/4 v8, 0x2

    if-ne v7, v8, :cond_2

    .line 195
    :try_start_0
    iget-object v7, p0, Lmiui/app/screenelement/elements/ImageScreenElement;->mContext:Lmiui/app/screenelement/ScreenContext;

    iget-object v7, v7, Lmiui/app/screenelement/ScreenContext;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    new-instance v8, Landroid/content/ComponentName;

    const/4 v9, 0x0

    aget-object v9, v4, v9

    const/4 v10, 0x1

    aget-object v10, v4, v10

    invoke-direct {v8, v9, v10}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Landroid/content/pm/PackageManager;->getActivityIcon(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 197
    .local v0, d:Landroid/graphics/drawable/Drawable;
    instance-of v7, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v7, :cond_1

    .line 198
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .end local v0           #d:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v7

    iput-object v7, p0, Lmiui/app/screenelement/elements/ImageScreenElement;->mBitmap:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 200
    :catch_0
    move-exception v1

    .line 201
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v7, "ImageScreenElement"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "fail to get icon for src of ApplicationIcon type: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 204
    .end local v1           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_2
    const-string v7, "ImageScreenElement"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "invalid src of ApplicationIcon type: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 206
    .end local v4           #name:[Ljava/lang/String;
    :cond_3
    const-string v7, "ImageScreenElement"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "invalid src of ApplicationIcon type: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 182
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
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
    .line 152
    if-nez p1, :cond_0

    .line 153
    const-string v0, "ImageScreenElement"

    const-string v1, "node is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    new-instance v0, Lmiui/app/screenelement/ScreenElementLoadException;

    const-string v1, "node is null"

    invoke-direct {v0, v1}, Lmiui/app/screenelement/ScreenElementLoadException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 157
    :cond_0
    invoke-direct {p0, p1}, Lmiui/app/screenelement/elements/ImageScreenElement;->loadMask(Lorg/w3c/dom/Element;)V

    .line 158
    return-void
.end method

.method public render(Landroid/graphics/Canvas;)V
    .locals 38
    .parameter "c"

    .prologue
    .line 225
    invoke-virtual/range {p0 .. p0}, Lmiui/app/screenelement/elements/ImageScreenElement;->isVisible()Z

    move-result v33

    if-nez v33, :cond_1

    .line 340
    :cond_0
    :goto_0
    return-void

    .line 228
    :cond_1
    move-object/from16 v0, p0

    iget-object v8, v0, Lmiui/app/screenelement/elements/ImageScreenElement;->mCurrentBitmap:Landroid/graphics/Bitmap;

    .line 229
    .local v8, bmp:Landroid/graphics/Bitmap;
    if-eqz v8, :cond_0

    .line 232
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v17

    .line 233
    .local v17, isHardwareAccelerated:Z
    invoke-virtual/range {p0 .. p0}, Lmiui/app/screenelement/elements/ImageScreenElement;->getAlpha()I

    move-result v5

    .line 234
    .local v5, alpha:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/screenelement/elements/ImageScreenElement;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 235
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getDensity()I

    move-result v22

    .line 236
    .local v22, oldDensity:I
    const/16 v33, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setDensity(I)V

    .line 237
    invoke-virtual/range {p0 .. p0}, Lmiui/app/screenelement/elements/ImageScreenElement;->getWidth()F

    move-result v7

    .line 238
    .local v7, aniWidth:F
    invoke-virtual/range {p0 .. p0}, Lmiui/app/screenelement/elements/ImageScreenElement;->getHeight()F

    move-result v6

    .line 239
    .local v6, aniHeight:F
    const/16 v33, 0x0

    cmpl-float v33, v7, v33

    if-eqz v33, :cond_0

    const/16 v33, 0x0

    cmpl-float v33, v6, v33

    if-eqz v33, :cond_0

    .line 242
    invoke-virtual/range {p0 .. p0}, Lmiui/app/screenelement/elements/ImageScreenElement;->getBitmapWidth()I

    move-result v33

    move/from16 v0, v33

    int-to-float v10, v0

    .line 243
    .local v10, bmpWidth:F
    invoke-virtual/range {p0 .. p0}, Lmiui/app/screenelement/elements/ImageScreenElement;->getBitmapHeight()I

    move-result v33

    move/from16 v0, v33

    int-to-float v9, v0

    .line 245
    .local v9, bmpHeight:F
    const/16 v33, 0x0

    cmpg-float v33, v7, v33

    if-gez v33, :cond_7

    move/from16 v30, v10

    .line 246
    .local v30, width:F
    :goto_1
    const/16 v33, 0x0

    cmpg-float v33, v6, v33

    if-gez v33, :cond_8

    move v15, v9

    .line 248
    .local v15, height:F
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lmiui/app/screenelement/elements/ImageScreenElement;->getX()F

    move-result v33

    move-object/from16 v0, p0

    move/from16 v1, v33

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lmiui/app/screenelement/elements/ImageScreenElement;->getLeft(FF)F

    move-result v33

    move/from16 v0, v33

    float-to-int v0, v0

    move/from16 v31, v0

    .line 249
    .local v31, x:I
    invoke-virtual/range {p0 .. p0}, Lmiui/app/screenelement/elements/ImageScreenElement;->getY()F

    move-result v33

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v1, v15}, Lmiui/app/screenelement/elements/ImageScreenElement;->getTop(FF)F

    move-result v33

    move/from16 v0, v33

    float-to-int v0, v0

    move/from16 v32, v0

    .line 250
    .local v32, y:I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 251
    invoke-virtual/range {p0 .. p0}, Lmiui/app/screenelement/elements/ImageScreenElement;->getCenterX()F

    move-result v13

    .line 252
    .local v13, centerX:F
    invoke-virtual/range {p0 .. p0}, Lmiui/app/screenelement/elements/ImageScreenElement;->getCenterY()F

    move-result v14

    .line 253
    .local v14, centerY:F
    invoke-virtual/range {p0 .. p0}, Lmiui/app/screenelement/elements/ImageScreenElement;->getAngle()F

    move-result v33

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v34, v0

    add-float v34, v34, v13

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v35, v0

    add-float v35, v35, v14

    move-object/from16 v0, p1

    move/from16 v1, v33

    move/from16 v2, v34

    move/from16 v3, v35

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 254
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/screenelement/elements/ImageScreenElement;->mCamera:Landroid/graphics/Camera;

    move-object/from16 v33, v0

    if-eqz v33, :cond_6

    .line 255
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/screenelement/elements/ImageScreenElement;->mCamera:Landroid/graphics/Camera;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Landroid/graphics/Camera;->save()V

    .line 256
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/screenelement/elements/ImageScreenElement;->mAngleX:Lmiui/app/screenelement/data/Expression;

    move-object/from16 v33, v0

    if-eqz v33, :cond_2

    .line 257
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/screenelement/elements/ImageScreenElement;->mCamera:Landroid/graphics/Camera;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/screenelement/elements/ImageScreenElement;->mAngleX:Lmiui/app/screenelement/data/Expression;

    move-object/from16 v34, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/screenelement/elements/ImageScreenElement;->mContext:Lmiui/app/screenelement/ScreenContext;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget-object v0, v0, Lmiui/app/screenelement/ScreenContext;->mVariables:Lmiui/app/screenelement/data/Variables;

    move-object/from16 v35, v0

    invoke-virtual/range {v34 .. v35}, Lmiui/app/screenelement/data/Expression;->evaluate(Lmiui/app/screenelement/data/Variables;)D

    move-result-wide v34

    move-wide/from16 v0, v34

    double-to-float v0, v0

    move/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Landroid/graphics/Camera;->rotateX(F)V

    .line 259
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/screenelement/elements/ImageScreenElement;->mAngleY:Lmiui/app/screenelement/data/Expression;

    move-object/from16 v33, v0

    if-eqz v33, :cond_3

    .line 260
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/screenelement/elements/ImageScreenElement;->mCamera:Landroid/graphics/Camera;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/screenelement/elements/ImageScreenElement;->mAngleY:Lmiui/app/screenelement/data/Expression;

    move-object/from16 v34, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/screenelement/elements/ImageScreenElement;->mContext:Lmiui/app/screenelement/ScreenContext;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget-object v0, v0, Lmiui/app/screenelement/ScreenContext;->mVariables:Lmiui/app/screenelement/data/Variables;

    move-object/from16 v35, v0

    invoke-virtual/range {v34 .. v35}, Lmiui/app/screenelement/data/Expression;->evaluate(Lmiui/app/screenelement/data/Variables;)D

    move-result-wide v34

    move-wide/from16 v0, v34

    double-to-float v0, v0

    move/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Landroid/graphics/Camera;->rotateY(F)V

    .line 262
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/screenelement/elements/ImageScreenElement;->mAngleZ:Lmiui/app/screenelement/data/Expression;

    move-object/from16 v33, v0

    if-eqz v33, :cond_4

    .line 263
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/screenelement/elements/ImageScreenElement;->mCamera:Landroid/graphics/Camera;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/screenelement/elements/ImageScreenElement;->mAngleZ:Lmiui/app/screenelement/data/Expression;

    move-object/from16 v34, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/screenelement/elements/ImageScreenElement;->mContext:Lmiui/app/screenelement/ScreenContext;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget-object v0, v0, Lmiui/app/screenelement/ScreenContext;->mVariables:Lmiui/app/screenelement/data/Variables;

    move-object/from16 v35, v0

    invoke-virtual/range {v34 .. v35}, Lmiui/app/screenelement/data/Expression;->evaluate(Lmiui/app/screenelement/data/Variables;)D

    move-result-wide v34

    move-wide/from16 v0, v34

    double-to-float v0, v0

    move/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Landroid/graphics/Camera;->rotateZ(F)V

    .line 265
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/screenelement/elements/ImageScreenElement;->mCenterZ:Lmiui/app/screenelement/data/Expression;

    move-object/from16 v33, v0

    if-eqz v33, :cond_5

    .line 266
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/screenelement/elements/ImageScreenElement;->mCamera:Landroid/graphics/Camera;

    move-object/from16 v33, v0

    const/16 v34, 0x0

    const/16 v35, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/screenelement/elements/ImageScreenElement;->mCenterZ:Lmiui/app/screenelement/data/Expression;

    move-object/from16 v36, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/screenelement/elements/ImageScreenElement;->mContext:Lmiui/app/screenelement/ScreenContext;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget-object v0, v0, Lmiui/app/screenelement/ScreenContext;->mVariables:Lmiui/app/screenelement/data/Variables;

    move-object/from16 v37, v0

    invoke-virtual/range {v36 .. v37}, Lmiui/app/screenelement/data/Expression;->evaluate(Lmiui/app/screenelement/data/Variables;)D

    move-result-wide v36

    move-wide/from16 v0, v36

    double-to-float v0, v0

    move/from16 v36, v0

    invoke-virtual/range {v33 .. v36}, Landroid/graphics/Camera;->translate(FFF)V

    .line 268
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/screenelement/elements/ImageScreenElement;->mCamera:Landroid/graphics/Camera;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/screenelement/elements/ImageScreenElement;->mMatrix:Landroid/graphics/Matrix;

    move-object/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    .line 269
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/screenelement/elements/ImageScreenElement;->mCamera:Landroid/graphics/Camera;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Landroid/graphics/Camera;->restore()V

    .line 270
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/screenelement/elements/ImageScreenElement;->mMatrix:Landroid/graphics/Matrix;

    move-object/from16 v33, v0

    move/from16 v0, v31

    neg-int v0, v0

    move/from16 v34, v0

    move/from16 v0, v34

    int-to-float v0, v0

    move/from16 v34, v0

    sub-float v34, v34, v13

    move/from16 v0, v32

    neg-int v0, v0

    move/from16 v35, v0

    move/from16 v0, v35

    int-to-float v0, v0

    move/from16 v35, v0

    sub-float v35, v35, v14

    invoke-virtual/range {v33 .. v35}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 271
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/screenelement/elements/ImageScreenElement;->mMatrix:Landroid/graphics/Matrix;

    move-object/from16 v33, v0

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v34, v0

    add-float v34, v34, v13

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v35, v0

    add-float v35, v35, v14

    invoke-virtual/range {v33 .. v35}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 272
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/screenelement/elements/ImageScreenElement;->mMatrix:Landroid/graphics/Matrix;

    move-object/from16 v33, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 274
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/screenelement/elements/ImageScreenElement;->mMasks:Ljava/util/ArrayList;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Ljava/util/ArrayList;->size()I

    move-result v33

    if-nez v33, :cond_e

    .line 275
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v33

    if-eqz v33, :cond_a

    .line 276
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/screenelement/elements/ImageScreenElement;->mContext:Lmiui/app/screenelement/ScreenContext;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget-object v0, v0, Lmiui/app/screenelement/ScreenContext;->mResourceManager:Lmiui/app/screenelement/ResourceManager;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/screenelement/elements/ImageScreenElement;->mAni:Lmiui/app/screenelement/animation/AnimatedElement;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Lmiui/app/screenelement/animation/AnimatedElement;->getSrc()Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Lmiui/app/screenelement/ResourceManager;->getNinePatch(Ljava/lang/String;)Landroid/graphics/NinePatch;

    move-result-object v21

    .line 277
    .local v21, np:Landroid/graphics/NinePatch;
    if-eqz v21, :cond_9

    .line 278
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/screenelement/elements/ImageScreenElement;->mDesRect:Landroid/graphics/Rect;

    move-object/from16 v33, v0

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v34, v0

    add-float v34, v34, v30

    move/from16 v0, v34

    float-to-int v0, v0

    move/from16 v34, v0

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v35, v0

    add-float v35, v35, v15

    move/from16 v0, v35

    float-to-int v0, v0

    move/from16 v35, v0

    move-object/from16 v0, v33

    move/from16 v1, v31

    move/from16 v2, v32

    move/from16 v3, v34

    move/from16 v4, v35

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 279
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/screenelement/elements/ImageScreenElement;->mDesRect:Landroid/graphics/Rect;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/screenelement/elements/ImageScreenElement;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v34, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    move-object/from16 v2, v33

    move-object/from16 v3, v34

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/NinePatch;->draw(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 338
    .end local v21           #np:Landroid/graphics/NinePatch;
    :goto_3
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 339
    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setDensity(I)V

    goto/16 :goto_0

    .end local v13           #centerX:F
    .end local v14           #centerY:F
    .end local v15           #height:F
    .end local v30           #width:F
    .end local v31           #x:I
    .end local v32           #y:I
    :cond_7
    move/from16 v30, v7

    .line 245
    goto/16 :goto_1

    .restart local v30       #width:F
    :cond_8
    move v15, v6

    .line 246
    goto/16 :goto_2

    .line 281
    .restart local v13       #centerX:F
    .restart local v14       #centerY:F
    .restart local v15       #height:F
    .restart local v21       #np:Landroid/graphics/NinePatch;
    .restart local v31       #x:I
    .restart local v32       #y:I
    :cond_9
    const-string v33, "ImageScreenElement"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "the image contains ninepatch chunk but couldn\'t get NinePatch object: "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/screenelement/elements/ImageScreenElement;->mAni:Lmiui/app/screenelement/animation/AnimatedElement;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lmiui/app/screenelement/animation/AnimatedElement;->getSrc()Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 285
    .end local v21           #np:Landroid/graphics/NinePatch;
    :cond_a
    const/16 v33, 0x0

    cmpl-float v33, v7, v33

    if-gtz v33, :cond_b

    const/16 v33, 0x0

    cmpl-float v33, v6, v33

    if-gtz v33, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/screenelement/elements/ImageScreenElement;->mSrcRect:Landroid/graphics/Rect;

    move-object/from16 v33, v0

    if-eqz v33, :cond_d

    .line 286
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/screenelement/elements/ImageScreenElement;->mDesRect:Landroid/graphics/Rect;

    move-object/from16 v33, v0

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v34, v0

    add-float v34, v34, v30

    move/from16 v0, v34

    float-to-int v0, v0

    move/from16 v34, v0

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v35, v0

    add-float v35, v35, v15

    move/from16 v0, v35

    float-to-int v0, v0

    move/from16 v35, v0

    move-object/from16 v0, v33

    move/from16 v1, v31

    move/from16 v2, v32

    move/from16 v3, v34

    move/from16 v4, v35

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 287
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/screenelement/elements/ImageScreenElement;->mSrcRect:Landroid/graphics/Rect;

    move-object/from16 v33, v0

    if-eqz v33, :cond_c

    .line 288
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/screenelement/elements/ImageScreenElement;->mSrcX:Lmiui/app/screenelement/data/Expression;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/screenelement/elements/ImageScreenElement;->mContext:Lmiui/app/screenelement/ScreenContext;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget-object v0, v0, Lmiui/app/screenelement/ScreenContext;->mVariables:Lmiui/app/screenelement/data/Variables;

    move-object/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Lmiui/app/screenelement/data/Expression;->evaluate(Lmiui/app/screenelement/data/Variables;)D

    move-result-wide v33

    move-object/from16 v0, p0

    move-wide/from16 v1, v33

    invoke-virtual {v0, v1, v2}, Lmiui/app/screenelement/elements/ImageScreenElement;->scale(D)F

    move-result v33

    move/from16 v0, v33

    float-to-int v0, v0

    move/from16 v27, v0

    .line 289
    .local v27, sX:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/screenelement/elements/ImageScreenElement;->mSrcY:Lmiui/app/screenelement/data/Expression;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/screenelement/elements/ImageScreenElement;->mContext:Lmiui/app/screenelement/ScreenContext;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget-object v0, v0, Lmiui/app/screenelement/ScreenContext;->mVariables:Lmiui/app/screenelement/data/Variables;

    move-object/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Lmiui/app/screenelement/data/Expression;->evaluate(Lmiui/app/screenelement/data/Variables;)D

    move-result-wide v33

    move-object/from16 v0, p0

    move-wide/from16 v1, v33

    invoke-virtual {v0, v1, v2}, Lmiui/app/screenelement/elements/ImageScreenElement;->scale(D)F

    move-result v33

    move/from16 v0, v33

    float-to-int v0, v0

    move/from16 v28, v0

    .line 290
    .local v28, sY:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/screenelement/elements/ImageScreenElement;->mSrcW:Lmiui/app/screenelement/data/Expression;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/screenelement/elements/ImageScreenElement;->mContext:Lmiui/app/screenelement/ScreenContext;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget-object v0, v0, Lmiui/app/screenelement/ScreenContext;->mVariables:Lmiui/app/screenelement/data/Variables;

    move-object/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Lmiui/app/screenelement/data/Expression;->evaluate(Lmiui/app/screenelement/data/Variables;)D

    move-result-wide v33

    move-object/from16 v0, p0

    move-wide/from16 v1, v33

    invoke-virtual {v0, v1, v2}, Lmiui/app/screenelement/elements/ImageScreenElement;->scale(D)F

    move-result v33

    move/from16 v0, v33

    float-to-int v0, v0

    move/from16 v26, v0

    .line 291
    .local v26, sW:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/screenelement/elements/ImageScreenElement;->mSrcH:Lmiui/app/screenelement/data/Expression;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/screenelement/elements/ImageScreenElement;->mContext:Lmiui/app/screenelement/ScreenContext;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget-object v0, v0, Lmiui/app/screenelement/ScreenContext;->mVariables:Lmiui/app/screenelement/data/Variables;

    move-object/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Lmiui/app/screenelement/data/Expression;->evaluate(Lmiui/app/screenelement/data/Variables;)D

    move-result-wide v33

    move-object/from16 v0, p0

    move-wide/from16 v1, v33

    invoke-virtual {v0, v1, v2}, Lmiui/app/screenelement/elements/ImageScreenElement;->scale(D)F

    move-result v33

    move/from16 v0, v33

    float-to-int v0, v0

    move/from16 v25, v0

    .line 292
    .local v25, sH:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/screenelement/elements/ImageScreenElement;->mSrcRect:Landroid/graphics/Rect;

    move-object/from16 v33, v0

    add-int v34, v27, v26

    add-int v35, v28, v25

    move-object/from16 v0, v33

    move/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v34

    move/from16 v4, v35

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 294
    .end local v25           #sH:I
    .end local v26           #sW:I
    .end local v27           #sX:I
    .end local v28           #sY:I
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/screenelement/elements/ImageScreenElement;->mSrcRect:Landroid/graphics/Rect;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/screenelement/elements/ImageScreenElement;->mDesRect:Landroid/graphics/Rect;

    move-object/from16 v34, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/screenelement/elements/ImageScreenElement;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v35, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    move-object/from16 v3, v35

    invoke-virtual {v0, v8, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto/16 :goto_3

    .line 296
    :cond_d
    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v33, v0

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v34, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/screenelement/elements/ImageScreenElement;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v35, v0

    move-object/from16 v0, p1

    move/from16 v1, v33

    move/from16 v2, v34

    move-object/from16 v3, v35

    invoke-virtual {v0, v8, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_3

    .line 300
    :cond_e
    const/16 v33, 0x0

    cmpg-float v33, v7, v33

    if-gez v33, :cond_13

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v33

    move/from16 v0, v33

    int-to-float v0, v0

    move/from16 v24, v0

    .line 301
    .local v24, rawWidth:F
    :goto_4
    const/16 v33, 0x0

    cmpg-float v33, v6, v33

    if-gez v33, :cond_14

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v33

    move/from16 v0, v33

    int-to-float v0, v0

    move/from16 v23, v0

    .line 302
    .local v23, rawHeight:F
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lmiui/app/screenelement/elements/ImageScreenElement;->getMaxWidth()F

    move-result v20

    .line 303
    .local v20, maxWidth:F
    invoke-virtual/range {p0 .. p0}, Lmiui/app/screenelement/elements/ImageScreenElement;->getMaxHeight()F

    move-result v19

    .line 304
    .local v19, maxHeight:F
    move/from16 v0, v20

    move/from16 v1, v24

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v20

    .line 305
    move/from16 v0, v19

    move/from16 v1, v23

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v19

    .line 306
    move/from16 v0, v20

    float-to-double v0, v0

    move-wide/from16 v33, v0

    invoke-static/range {v33 .. v34}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v33

    move-wide/from16 v0, v33

    double-to-int v12, v0

    .line 307
    .local v12, bufferWidth:I
    move/from16 v0, v19

    float-to-double v0, v0

    move-wide/from16 v33, v0

    invoke-static/range {v33 .. v34}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v33

    move-wide/from16 v0, v33

    double-to-int v11, v0

    .line 308
    .local v11, bufferHeight:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/screenelement/elements/ImageScreenElement;->mMaskBuffer:Landroid/graphics/Bitmap;

    move-object/from16 v33, v0

    if-eqz v33, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/screenelement/elements/ImageScreenElement;->mMaskBuffer:Landroid/graphics/Bitmap;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v33

    move/from16 v0, v33

    if-gt v12, v0, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/screenelement/elements/ImageScreenElement;->mMaskBuffer:Landroid/graphics/Bitmap;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v33

    move/from16 v0, v33

    if-gt v11, v0, :cond_f

    if-nez v17, :cond_10

    .line 310
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/screenelement/elements/ImageScreenElement;->mContext:Lmiui/app/screenelement/ScreenContext;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget-object v0, v0, Lmiui/app/screenelement/ScreenContext;->mResourceManager:Lmiui/app/screenelement/ResourceManager;

    move-object/from16 v33, v0

    invoke-direct/range {p0 .. p0}, Lmiui/app/screenelement/elements/ImageScreenElement;->getKey()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    move/from16 v2, v17

    invoke-virtual {v0, v12, v11, v1, v2}, Lmiui/app/screenelement/ResourceManager;->getMaskBufferBitmap(IILjava/lang/String;Z)Landroid/graphics/Bitmap;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    iput-object v0, v1, Lmiui/app/screenelement/elements/ImageScreenElement;->mMaskBuffer:Landroid/graphics/Bitmap;

    .line 312
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/screenelement/elements/ImageScreenElement;->mMaskBuffer:Landroid/graphics/Bitmap;

    move-object/from16 v33, v0

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getDensity()I

    move-result v34

    invoke-virtual/range {v33 .. v34}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 313
    new-instance v33, Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/screenelement/elements/ImageScreenElement;->mMaskBuffer:Landroid/graphics/Bitmap;

    move-object/from16 v34, v0

    invoke-direct/range {v33 .. v34}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    iput-object v0, v1, Lmiui/app/screenelement/elements/ImageScreenElement;->mBufferCanvas:Landroid/graphics/Canvas;

    .line 315
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/screenelement/elements/ImageScreenElement;->mBufferCanvas:Landroid/graphics/Canvas;

    move-object/from16 v33, v0

    const/16 v34, 0x0

    sget-object v35, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual/range {v33 .. v35}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 317
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/screenelement/elements/ImageScreenElement;->mRoot:Lmiui/app/screenelement/ScreenElementRoot;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Lmiui/app/screenelement/ScreenElementRoot;->getScale()F

    move-result v29

    .line 318
    .local v29, scale:F
    const/16 v33, 0x0

    cmpl-float v33, v7, v33

    if-gtz v33, :cond_11

    const/16 v33, 0x0

    cmpl-float v33, v6, v33

    if-gtz v33, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/screenelement/elements/ImageScreenElement;->mSrcRect:Landroid/graphics/Rect;

    move-object/from16 v33, v0

    if-eqz v33, :cond_15

    .line 319
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/screenelement/elements/ImageScreenElement;->mDesRect:Landroid/graphics/Rect;

    move-object/from16 v33, v0

    const/16 v34, 0x0

    const/16 v35, 0x0

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v36, v0

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v37, v0

    invoke-virtual/range {v33 .. v37}, Landroid/graphics/Rect;->set(IIII)V

    .line 320
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/screenelement/elements/ImageScreenElement;->mSrcRect:Landroid/graphics/Rect;

    move-object/from16 v33, v0

    if-eqz v33, :cond_12

    .line 321
    move/from16 v0, v29

    float-to-double v0, v0

    move-wide/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/screenelement/elements/ImageScreenElement;->mSrcX:Lmiui/app/screenelement/data/Expression;

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/screenelement/elements/ImageScreenElement;->mContext:Lmiui/app/screenelement/ScreenContext;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget-object v0, v0, Lmiui/app/screenelement/ScreenContext;->mVariables:Lmiui/app/screenelement/data/Variables;

    move-object/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Lmiui/app/screenelement/data/Expression;->evaluate(Lmiui/app/screenelement/data/Variables;)D

    move-result-wide v35

    mul-double v33, v33, v35

    move-wide/from16 v0, v33

    double-to-int v0, v0

    move/from16 v27, v0

    .line 322
    .restart local v27       #sX:I
    move/from16 v0, v29

    float-to-double v0, v0

    move-wide/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/screenelement/elements/ImageScreenElement;->mSrcY:Lmiui/app/screenelement/data/Expression;

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/screenelement/elements/ImageScreenElement;->mContext:Lmiui/app/screenelement/ScreenContext;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget-object v0, v0, Lmiui/app/screenelement/ScreenContext;->mVariables:Lmiui/app/screenelement/data/Variables;

    move-object/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Lmiui/app/screenelement/data/Expression;->evaluate(Lmiui/app/screenelement/data/Variables;)D

    move-result-wide v35

    mul-double v33, v33, v35

    move-wide/from16 v0, v33

    double-to-int v0, v0

    move/from16 v28, v0

    .line 323
    .restart local v28       #sY:I
    move/from16 v0, v29

    float-to-double v0, v0

    move-wide/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/screenelement/elements/ImageScreenElement;->mSrcW:Lmiui/app/screenelement/data/Expression;

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/screenelement/elements/ImageScreenElement;->mContext:Lmiui/app/screenelement/ScreenContext;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget-object v0, v0, Lmiui/app/screenelement/ScreenContext;->mVariables:Lmiui/app/screenelement/data/Variables;

    move-object/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Lmiui/app/screenelement/data/Expression;->evaluate(Lmiui/app/screenelement/data/Variables;)D

    move-result-wide v35

    mul-double v33, v33, v35

    move-wide/from16 v0, v33

    double-to-int v0, v0

    move/from16 v26, v0

    .line 324
    .restart local v26       #sW:I
    move/from16 v0, v29

    float-to-double v0, v0

    move-wide/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/screenelement/elements/ImageScreenElement;->mSrcH:Lmiui/app/screenelement/data/Expression;

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/screenelement/elements/ImageScreenElement;->mContext:Lmiui/app/screenelement/ScreenContext;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget-object v0, v0, Lmiui/app/screenelement/ScreenContext;->mVariables:Lmiui/app/screenelement/data/Variables;

    move-object/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Lmiui/app/screenelement/data/Expression;->evaluate(Lmiui/app/screenelement/data/Variables;)D

    move-result-wide v35

    mul-double v33, v33, v35

    move-wide/from16 v0, v33

    double-to-int v0, v0

    move/from16 v25, v0

    .line 325
    .restart local v25       #sH:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/screenelement/elements/ImageScreenElement;->mSrcRect:Landroid/graphics/Rect;

    move-object/from16 v33, v0

    add-int v34, v27, v26

    add-int v35, v28, v25

    move-object/from16 v0, v33

    move/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v34

    move/from16 v4, v35

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 327
    .end local v25           #sH:I
    .end local v26           #sW:I
    .end local v27           #sX:I
    .end local v28           #sY:I
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/screenelement/elements/ImageScreenElement;->mBufferCanvas:Landroid/graphics/Canvas;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/screenelement/elements/ImageScreenElement;->mSrcRect:Landroid/graphics/Rect;

    move-object/from16 v34, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/screenelement/elements/ImageScreenElement;->mDesRect:Landroid/graphics/Rect;

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/screenelement/elements/ImageScreenElement;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v36, v0

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    move-object/from16 v3, v36

    invoke-virtual {v0, v8, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 332
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/screenelement/elements/ImageScreenElement;->mMasks:Ljava/util/ArrayList;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, i$:Ljava/util/Iterator;
    :goto_7
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v33

    if-eqz v33, :cond_16

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lmiui/app/screenelement/animation/AnimatedElement;

    .line 333
    .local v18, mask:Lmiui/app/screenelement/animation/AnimatedElement;
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/screenelement/elements/ImageScreenElement;->mBufferCanvas:Landroid/graphics/Canvas;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move-object/from16 v2, v18

    move/from16 v3, v31

    move/from16 v4, v32

    invoke-direct {v0, v1, v2, v3, v4}, Lmiui/app/screenelement/elements/ImageScreenElement;->renderWithMask(Landroid/graphics/Canvas;Lmiui/app/screenelement/animation/AnimatedElement;II)V

    goto :goto_7

    .end local v11           #bufferHeight:I
    .end local v12           #bufferWidth:I
    .end local v16           #i$:Ljava/util/Iterator;
    .end local v18           #mask:Lmiui/app/screenelement/animation/AnimatedElement;
    .end local v19           #maxHeight:F
    .end local v20           #maxWidth:F
    .end local v23           #rawHeight:F
    .end local v24           #rawWidth:F
    .end local v29           #scale:F
    :cond_13
    move/from16 v24, v7

    .line 300
    goto/16 :goto_4

    .restart local v24       #rawWidth:F
    :cond_14
    move/from16 v23, v6

    .line 301
    goto/16 :goto_5

    .line 329
    .restart local v11       #bufferHeight:I
    .restart local v12       #bufferWidth:I
    .restart local v19       #maxHeight:F
    .restart local v20       #maxWidth:F
    .restart local v23       #rawHeight:F
    .restart local v29       #scale:F
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/screenelement/elements/ImageScreenElement;->mBufferCanvas:Landroid/graphics/Canvas;

    move-object/from16 v33, v0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    move-object/from16 v0, v33

    move/from16 v1, v34

    move/from16 v2, v35

    move-object/from16 v3, v36

    invoke-virtual {v0, v8, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_6

    .line 336
    .restart local v16       #i$:Ljava/util/Iterator;
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/screenelement/elements/ImageScreenElement;->mMaskBuffer:Landroid/graphics/Bitmap;

    move-object/from16 v33, v0

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v34, v0

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v35, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/screenelement/elements/ImageScreenElement;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v36, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v33

    move/from16 v2, v34

    move/from16 v3, v35

    move-object/from16 v4, v36

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_3
.end method

.method public reset(J)V
    .locals 3
    .parameter "time"

    .prologue
    .line 475
    invoke-super {p0, p1, p2}, Lmiui/app/screenelement/elements/AnimatedScreenElement;->reset(J)V

    .line 476
    iget-object v2, p0, Lmiui/app/screenelement/elements/ImageScreenElement;->mMasks:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 477
    iget-object v2, p0, Lmiui/app/screenelement/elements/ImageScreenElement;->mMasks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/app/screenelement/animation/AnimatedElement;

    .line 478
    .local v1, mask:Lmiui/app/screenelement/animation/AnimatedElement;
    invoke-virtual {v1, p1, p2}, Lmiui/app/screenelement/animation/AnimatedElement;->reset(J)V

    goto :goto_0

    .line 481
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #mask:Lmiui/app/screenelement/animation/AnimatedElement;
    :cond_0
    return-void
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "bmp"

    .prologue
    .line 343
    iput-object p1, p0, Lmiui/app/screenelement/elements/ImageScreenElement;->mBitmap:Landroid/graphics/Bitmap;

    .line 344
    return-void
.end method

.method protected shouldScaleBitmap()Z
    .locals 1

    .prologue
    .line 212
    const/4 v0, 0x1

    return v0
.end method

.method public tick(J)V
    .locals 3
    .parameter "currentTime"

    .prologue
    .line 461
    invoke-super {p0, p1, p2}, Lmiui/app/screenelement/elements/AnimatedScreenElement;->tick(J)V

    .line 462
    invoke-virtual {p0}, Lmiui/app/screenelement/elements/ImageScreenElement;->isVisible()Z

    move-result v2

    if-nez v2, :cond_1

    .line 471
    :cond_0
    return-void

    .line 464
    :cond_1
    invoke-virtual {p0}, Lmiui/app/screenelement/elements/ImageScreenElement;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lmiui/app/screenelement/elements/ImageScreenElement;->mCurrentBitmap:Landroid/graphics/Bitmap;

    .line 465
    invoke-direct {p0}, Lmiui/app/screenelement/elements/ImageScreenElement;->updateBmpSizeVar()V

    .line 466
    iget-object v2, p0, Lmiui/app/screenelement/elements/ImageScreenElement;->mMasks:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 467
    iget-object v2, p0, Lmiui/app/screenelement/elements/ImageScreenElement;->mMasks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/app/screenelement/animation/AnimatedElement;

    .line 468
    .local v1, mask:Lmiui/app/screenelement/animation/AnimatedElement;
    invoke-virtual {v1, p1, p2}, Lmiui/app/screenelement/animation/AnimatedElement;->tick(J)V

    goto :goto_0
.end method

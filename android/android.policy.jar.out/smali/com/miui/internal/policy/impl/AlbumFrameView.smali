.class public Lcom/miui/internal/policy/impl/AlbumFrameView;
.super Landroid/view/View;
.source "AlbumFrameView.java"


# static fields
.field public static final MATRIX_VALUES_SIZE:I = 0x9


# instance fields
.field private mDisplayBitmap:Landroid/graphics/Bitmap;

.field private final mDisplayMatrix:Landroid/graphics/Matrix;

.field private mFilterBitmap:Landroid/graphics/Bitmap;

.field private mFilterBitmapPaddingRect:Landroid/graphics/Rect;

.field private mFilterPaint:Landroid/graphics/Paint;

.field private mMaskPaint:Landroid/graphics/Paint;

.field private final mMatrixValuesTemp:[F

.field private mPaintFlags:Landroid/graphics/PaintFlagsDrawFilter;

.field private mPrepareValues:[F

.field private mTempBitmap:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 19
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/internal/policy/impl/AlbumFrameView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 23
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/internal/policy/impl/AlbumFrameView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v3, 0x0

    .line 27
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 83
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/policy/impl/AlbumFrameView;->mDisplayMatrix:Landroid/graphics/Matrix;

    .line 89
    iput-object v3, p0, Lcom/miui/internal/policy/impl/AlbumFrameView;->mPrepareValues:[F

    .line 92
    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/miui/internal/policy/impl/AlbumFrameView;->mMatrixValuesTemp:[F

    .line 95
    iput-object v3, p0, Lcom/miui/internal/policy/impl/AlbumFrameView;->mDisplayBitmap:Landroid/graphics/Bitmap;

    .line 98
    iput-object v3, p0, Lcom/miui/internal/policy/impl/AlbumFrameView;->mFilterBitmap:Landroid/graphics/Bitmap;

    .line 103
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/policy/impl/AlbumFrameView;->mFilterPaint:Landroid/graphics/Paint;

    .line 104
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/policy/impl/AlbumFrameView;->mMaskPaint:Landroid/graphics/Paint;

    .line 105
    new-instance v0, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v1, 0x0

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    iput-object v0, p0, Lcom/miui/internal/policy/impl/AlbumFrameView;->mPaintFlags:Landroid/graphics/PaintFlagsDrawFilter;

    .line 122
    iput-object v3, p0, Lcom/miui/internal/policy/impl/AlbumFrameView;->mTempBitmap:Landroid/graphics/Bitmap;

    .line 28
    iget-object v0, p0, Lcom/miui/internal/policy/impl/AlbumFrameView;->mFilterPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 29
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/policy/impl/AlbumFrameView;->mFilterBitmapPaddingRect:Landroid/graphics/Rect;

    .line 30
    return-void
.end method

.method private fitCenter()V
    .locals 8

    .prologue
    .line 137
    iget-object v5, p0, Lcom/miui/internal/policy/impl/AlbumFrameView;->mDisplayBitmap:Landroid/graphics/Bitmap;

    if-nez v5, :cond_1

    .line 155
    :cond_0
    :goto_0
    return-void

    .line 140
    :cond_1
    iget-object v5, p0, Lcom/miui/internal/policy/impl/AlbumFrameView;->mFilterBitmap:Landroid/graphics/Bitmap;

    if-eqz v5, :cond_0

    .line 144
    iget-object v5, p0, Lcom/miui/internal/policy/impl/AlbumFrameView;->mFilterBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    iget-object v6, p0, Lcom/miui/internal/policy/impl/AlbumFrameView;->mFilterBitmapPaddingRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    sub-int/2addr v5, v6

    iget-object v6, p0, Lcom/miui/internal/policy/impl/AlbumFrameView;->mFilterBitmapPaddingRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    sub-int/2addr v5, v6

    int-to-float v1, v5

    .line 145
    .local v1, filterWidth:F
    iget-object v5, p0, Lcom/miui/internal/policy/impl/AlbumFrameView;->mFilterBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    iget-object v6, p0, Lcom/miui/internal/policy/impl/AlbumFrameView;->mFilterBitmapPaddingRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v6

    iget-object v6, p0, Lcom/miui/internal/policy/impl/AlbumFrameView;->mFilterBitmapPaddingRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v5, v6

    int-to-float v0, v5

    .line 148
    .local v0, filterHeight:F
    iget-object v5, p0, Lcom/miui/internal/policy/impl/AlbumFrameView;->mDisplayBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v4, v5

    .line 149
    .local v4, w:F
    iget-object v5, p0, Lcom/miui/internal/policy/impl/AlbumFrameView;->mDisplayBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v2, v5

    .line 150
    .local v2, h:F
    div-float v5, v1, v4

    div-float v6, v0, v2

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 152
    .local v3, scale:F
    iget-object v5, p0, Lcom/miui/internal/policy/impl/AlbumFrameView;->mDisplayMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v5}, Landroid/graphics/Matrix;->reset()V

    .line 153
    iget-object v5, p0, Lcom/miui/internal/policy/impl/AlbumFrameView;->mDisplayMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v5, v3, v3}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 154
    iget-object v5, p0, Lcom/miui/internal/policy/impl/AlbumFrameView;->mDisplayMatrix:Landroid/graphics/Matrix;

    iget-object v6, p0, Lcom/miui/internal/policy/impl/AlbumFrameView;->mFilterBitmapPaddingRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    iget-object v7, p0, Lcom/miui/internal/policy/impl/AlbumFrameView;->mFilterBitmapPaddingRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    int-to-float v7, v7

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_0
.end method

.method private updateTempBitmap()V
    .locals 14

    .prologue
    const/4 v13, 0x0

    .line 158
    invoke-virtual {p0}, Lcom/miui/internal/policy/impl/AlbumFrameView;->getHeight()I

    move-result v7

    .line 159
    .local v7, height:I
    invoke-virtual {p0}, Lcom/miui/internal/policy/impl/AlbumFrameView;->getWidth()I

    move-result v12

    .line 160
    .local v12, width:I
    iget-object v1, p0, Lcom/miui/internal/policy/impl/AlbumFrameView;->mTempBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/internal/policy/impl/AlbumFrameView;->mTempBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-ne v1, v7, :cond_0

    iget-object v1, p0, Lcom/miui/internal/policy/impl/AlbumFrameView;->mTempBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-eq v1, v12, :cond_3

    .line 162
    :cond_0
    if-lez v12, :cond_1

    if-gtz v7, :cond_2

    .line 199
    :cond_1
    :goto_0
    return-void

    .line 165
    :cond_2
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v12, v7, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/internal/policy/impl/AlbumFrameView;->mTempBitmap:Landroid/graphics/Bitmap;

    .line 169
    :cond_3
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/miui/internal/policy/impl/AlbumFrameView;->mTempBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 170
    .local v0, canvas:Landroid/graphics/Canvas;
    iget-object v1, p0, Lcom/miui/internal/policy/impl/AlbumFrameView;->mPaintFlags:Landroid/graphics/PaintFlagsDrawFilter;

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 171
    const/4 v1, 0x0

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 172
    iget-object v6, p0, Lcom/miui/internal/policy/impl/AlbumFrameView;->mDisplayBitmap:Landroid/graphics/Bitmap;

    .line 173
    .local v6, bm:Landroid/graphics/Bitmap;
    invoke-direct {p0}, Lcom/miui/internal/policy/impl/AlbumFrameView;->fitCenter()V

    .line 174
    if-eqz v6, :cond_5

    .line 175
    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    .line 176
    iget-object v1, p0, Lcom/miui/internal/policy/impl/AlbumFrameView;->mDisplayMatrix:Landroid/graphics/Matrix;

    if-eqz v1, :cond_4

    .line 177
    iget-object v1, p0, Lcom/miui/internal/policy/impl/AlbumFrameView;->mDisplayMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 179
    :cond_4
    const/4 v1, 0x0

    invoke-virtual {v0, v6, v13, v13, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 180
    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    .line 183
    :cond_5
    invoke-virtual {p0}, Lcom/miui/internal/policy/impl/AlbumFrameView;->getWidth()I

    move-result v11

    .line 184
    .local v11, viewWidth:I
    invoke-virtual {p0}, Lcom/miui/internal/policy/impl/AlbumFrameView;->getHeight()I

    move-result v10

    .line 185
    .local v10, viewHeight:I
    const/4 v8, 0x0

    .line 186
    .local v8, offsetX:I
    const/4 v9, 0x0

    .line 187
    .local v9, offsetY:I
    iget-object v1, p0, Lcom/miui/internal/policy/impl/AlbumFrameView;->mFilterBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_6

    .line 188
    iget-object v1, p0, Lcom/miui/internal/policy/impl/AlbumFrameView;->mFilterBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    sub-int v1, v11, v1

    div-int/lit8 v8, v1, 0x2

    .line 189
    iget-object v1, p0, Lcom/miui/internal/policy/impl/AlbumFrameView;->mFilterBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sub-int v1, v10, v1

    div-int/lit8 v9, v1, 0x2

    .line 190
    iget-object v1, p0, Lcom/miui/internal/policy/impl/AlbumFrameView;->mFilterBitmap:Landroid/graphics/Bitmap;

    int-to-float v2, v8

    int-to-float v3, v9

    iget-object v4, p0, Lcom/miui/internal/policy/impl/AlbumFrameView;->mFilterPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 193
    :cond_6
    if-lez v8, :cond_1

    if-lez v9, :cond_1

    .line 194
    int-to-float v1, v8

    int-to-float v2, v9

    sub-int v3, v11, v8

    int-to-float v3, v3

    sub-int v4, v10, v9

    int-to-float v4, v4

    sget-object v5, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->clipRect(FFFFLandroid/graphics/Region$Op;)Z

    .line 196
    int-to-float v3, v11

    int-to-float v4, v10

    iget-object v5, p0, Lcom/miui/internal/policy/impl/AlbumFrameView;->mMaskPaint:Landroid/graphics/Paint;

    move v1, v13

    move v2, v13

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_0
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .parameter "canvas"

    .prologue
    const/4 v2, 0x0

    .line 125
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 126
    iget-object v0, p0, Lcom/miui/internal/policy/impl/AlbumFrameView;->mPaintFlags:Landroid/graphics/PaintFlagsDrawFilter;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 127
    invoke-direct {p0}, Lcom/miui/internal/policy/impl/AlbumFrameView;->updateTempBitmap()V

    .line 128
    iget-object v0, p0, Lcom/miui/internal/policy/impl/AlbumFrameView;->mTempBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 129
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 4
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    const/4 v3, 0x0

    .line 110
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 111
    if-eqz p1, :cond_0

    .line 112
    iget-object v0, p0, Lcom/miui/internal/policy/impl/AlbumFrameView;->mPrepareValues:[F

    if-nez v0, :cond_1

    .line 113
    invoke-direct {p0}, Lcom/miui/internal/policy/impl/AlbumFrameView;->fitCenter()V

    .line 120
    :cond_0
    :goto_0
    return-void

    .line 115
    :cond_1
    iget-object v0, p0, Lcom/miui/internal/policy/impl/AlbumFrameView;->mPrepareValues:[F

    iget-object v1, p0, Lcom/miui/internal/policy/impl/AlbumFrameView;->mMatrixValuesTemp:[F

    const/16 v2, 0x9

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 116
    iget-object v0, p0, Lcom/miui/internal/policy/impl/AlbumFrameView;->mDisplayMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/miui/internal/policy/impl/AlbumFrameView;->mMatrixValuesTemp:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->setValues([F)V

    goto :goto_0
.end method

.method public recyleFilterBitmap()V
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/miui/internal/policy/impl/AlbumFrameView;->mFilterBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/miui/internal/policy/impl/AlbumFrameView;->mFilterBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/internal/policy/impl/AlbumFrameView;->mFilterBitmap:Landroid/graphics/Bitmap;

    .line 56
    :cond_0
    return-void
.end method

.method public setDisplayBitmap(Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "bm"

    .prologue
    .line 37
    iput-object p1, p0, Lcom/miui/internal/policy/impl/AlbumFrameView;->mDisplayBitmap:Landroid/graphics/Bitmap;

    .line 38
    invoke-virtual {p0}, Lcom/miui/internal/policy/impl/AlbumFrameView;->invalidate()V

    .line 39
    return-void
.end method

.method public setFilterBitmap(Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "filter"

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/miui/internal/policy/impl/AlbumFrameView;->recyleFilterBitmap()V

    .line 43
    iput-object p1, p0, Lcom/miui/internal/policy/impl/AlbumFrameView;->mFilterBitmap:Landroid/graphics/Bitmap;

    .line 44
    invoke-virtual {p0}, Lcom/miui/internal/policy/impl/AlbumFrameView;->invalidate()V

    .line 45
    return-void
.end method

.method public setMatrixValues([F)V
    .locals 4
    .parameter "values"

    .prologue
    const/16 v3, 0x9

    const/4 v2, 0x0

    .line 61
    invoke-virtual {p0}, Lcom/miui/internal/policy/impl/AlbumFrameView;->getWidth()I

    move-result v1

    if-nez v1, :cond_0

    .line 62
    new-array v0, v3, [F

    .line 63
    .local v0, v:[F
    invoke-static {p1, v2, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 64
    iput-object v0, p0, Lcom/miui/internal/policy/impl/AlbumFrameView;->mPrepareValues:[F

    .line 71
    .end local v0           #v:[F
    :goto_0
    return-void

    .line 66
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/miui/internal/policy/impl/AlbumFrameView;->mPrepareValues:[F

    .line 67
    iget-object v1, p0, Lcom/miui/internal/policy/impl/AlbumFrameView;->mMatrixValuesTemp:[F

    invoke-static {p1, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 68
    iget-object v1, p0, Lcom/miui/internal/policy/impl/AlbumFrameView;->mDisplayMatrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/miui/internal/policy/impl/AlbumFrameView;->mMatrixValuesTemp:[F

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->setValues([F)V

    .line 69
    invoke-virtual {p0}, Lcom/miui/internal/policy/impl/AlbumFrameView;->invalidate()V

    goto :goto_0
.end method

.method public setRect(Landroid/graphics/Rect;)V
    .locals 0
    .parameter "rect"

    .prologue
    .line 48
    iput-object p1, p0, Lcom/miui/internal/policy/impl/AlbumFrameView;->mFilterBitmapPaddingRect:Landroid/graphics/Rect;

    .line 49
    return-void
.end method

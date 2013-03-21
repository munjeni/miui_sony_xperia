.class public final Landroid/widget/MagnifierView;
.super Landroid/view/View;
.source "MagnifierView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;


# static fields
.field private static final ALPHA_PTOL:F = 0.1f

.field private static final ALPHA_SPRING_DAMPING_RATIO:F = 1.0f

.field private static final ALPHA_SPRING_STIFFNESS:F = 80.0f

.field private static final ALPHA_VTOL:F = 1.0f

.field private static final BARREL_DISTORTION_COLS:I = 0x3

.field private static final BARREL_DISTORTION_ROWS:I = 0x3

.field private static final BARREL_DISTORTION_X:[[[F = null

.field private static final BARREL_DISTORTION_Y:[[[F = null

.field private static final BD_RECT:[[F = null

.field private static final BD_RND:[F = null

.field private static final ENABLE_BARREL_DISTORTION:Z = true

.field private static final INITIAL_OFFSET_FACTOR:[F = null

.field private static final NBR_OF_SUPPORTED_POSITIONS:I = 0x3

.field private static final NBR_OF_SUPPORTED_SHAPES:I = 0x2

.field public static final OFFSET_FACTOR_TARGET_DEFAULT:I = 0x0

.field private static final OFFSET_FACTOR_TARGET_DEFAULT_SET:[[F = null

.field public static final OFFSET_FACTOR_TARGET_DISTANT:I = 0x1

.field private static final OFFSET_FACTOR_TARGET_DISTANT_SET:[[F = null

.field private static final OFFSET_PTOL:F = 0.001f

.field private static final OFFSET_SPRING_DAMPING_RATIO:F = 0.6f

.field private static final OFFSET_SPRING_STIFFNESS:F = 150.0f

.field private static final OFFSET_VTOL:F = 0.01f

.field private static final POSITION_ABOVE:I = 0x0

.field private static final POSITION_LEFT:I = 0x1

.field private static final POSITION_RIGHT:I = 0x2

.field public static final SHAPE_RECTANGULAR:I = 0x1

.field public static final SHAPE_ROUND:I = 0x0

.field private static final ZOOM_RATIO:F = 1.45f


# instance fields
.field private mAbstractOffset:I

.field private mAlphaDyn:Landroid/widget/SpringDynamics;

.field private final mAlphaRunnable:Ljava/lang/Runnable;

.field private mArrowDrawables:[Landroid/graphics/drawable/Drawable;

.field private final mBarrelDistortionPaint:Landroid/graphics/Paint;

.field private mBarrelDistortionVerts:[F

.field private final mCenter:Landroid/graphics/Point;

.field private final mFrames:[Landroid/graphics/drawable/Drawable;

.field private mHeight:I

.field private mIsWindowVisible:Z

.field private final mLocationInWindow:[I

.field private mMagnificationHeight:[I

.field private mMagnificationWidth:[I

.field private mMagnifierPopup:Landroid/widget/PopupWindow;

.field private mMaskBitmaps:[Landroid/graphics/Bitmap;

.field private mNextShape:I

.field private mOffscreenBitmap:Landroid/graphics/Bitmap;

.field private mOffscreenCanvas:Landroid/graphics/Canvas;

.field private mOffsetDynX:Landroid/widget/SpringDynamics;

.field private mOffsetDynY:Landroid/widget/SpringDynamics;

.field private final mOffsetXRunnable:Ljava/lang/Runnable;

.field private final mOffsetYRunnable:Ljava/lang/Runnable;

.field private final mPaintBackground:Landroid/graphics/Paint;

.field private final mPaintBackplate:Landroid/graphics/Paint;

.field private mShape:I

.field private final mView:Landroid/view/View;

.field private final mViewMaskPaint:Landroid/graphics/Paint;

.field private mWidth:I

.field private mWindowHeight:I

.field private mWindowWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 120
    new-array v0, v6, [F

    fill-array-data v0, :array_0

    sput-object v0, Landroid/widget/MagnifierView;->BD_RND:[F

    .line 125
    new-array v0, v6, [[F

    new-array v1, v6, [F

    fill-array-data v1, :array_1

    aput-object v1, v0, v4

    new-array v1, v6, [F

    fill-array-data v1, :array_2

    aput-object v1, v0, v5

    sput-object v0, Landroid/widget/MagnifierView;->BD_RECT:[[F

    .line 134
    new-array v0, v6, [[[F

    new-array v1, v7, [[F

    new-array v2, v7, [F

    fill-array-data v2, :array_3

    aput-object v2, v1, v4

    new-array v2, v7, [F

    sget-object v3, Landroid/widget/MagnifierView;->BD_RND:[F

    aget v3, v3, v4

    neg-float v3, v3

    aput v3, v2, v4

    sget-object v3, Landroid/widget/MagnifierView;->BD_RND:[F

    aget v3, v3, v5

    neg-float v3, v3

    aput v3, v2, v5

    sget-object v3, Landroid/widget/MagnifierView;->BD_RND:[F

    aget v3, v3, v5

    aput v3, v2, v6

    sget-object v3, Landroid/widget/MagnifierView;->BD_RND:[F

    aget v3, v3, v4

    aput v3, v2, v8

    aput-object v2, v1, v5

    new-array v2, v7, [F

    sget-object v3, Landroid/widget/MagnifierView;->BD_RND:[F

    aget v3, v3, v4

    neg-float v3, v3

    aput v3, v2, v4

    sget-object v3, Landroid/widget/MagnifierView;->BD_RND:[F

    aget v3, v3, v5

    neg-float v3, v3

    aput v3, v2, v5

    sget-object v3, Landroid/widget/MagnifierView;->BD_RND:[F

    aget v3, v3, v5

    aput v3, v2, v6

    sget-object v3, Landroid/widget/MagnifierView;->BD_RND:[F

    aget v3, v3, v4

    aput v3, v2, v8

    aput-object v2, v1, v6

    new-array v2, v7, [F

    fill-array-data v2, :array_4

    aput-object v2, v1, v8

    aput-object v1, v0, v4

    new-array v1, v7, [[F

    new-array v2, v7, [F

    fill-array-data v2, :array_5

    aput-object v2, v1, v4

    new-array v2, v7, [F

    sget-object v3, Landroid/widget/MagnifierView;->BD_RECT:[[F

    aget-object v3, v3, v4

    aget v3, v3, v4

    neg-float v3, v3

    aput v3, v2, v4

    sget-object v3, Landroid/widget/MagnifierView;->BD_RECT:[[F

    aget-object v3, v3, v4

    aget v3, v3, v5

    neg-float v3, v3

    aput v3, v2, v5

    sget-object v3, Landroid/widget/MagnifierView;->BD_RECT:[[F

    aget-object v3, v3, v4

    aget v3, v3, v5

    aput v3, v2, v6

    sget-object v3, Landroid/widget/MagnifierView;->BD_RECT:[[F

    aget-object v3, v3, v4

    aget v3, v3, v4

    aput v3, v2, v8

    aput-object v2, v1, v5

    new-array v2, v7, [F

    sget-object v3, Landroid/widget/MagnifierView;->BD_RECT:[[F

    aget-object v3, v3, v4

    aget v3, v3, v4

    neg-float v3, v3

    aput v3, v2, v4

    sget-object v3, Landroid/widget/MagnifierView;->BD_RECT:[[F

    aget-object v3, v3, v4

    aget v3, v3, v5

    neg-float v3, v3

    aput v3, v2, v5

    sget-object v3, Landroid/widget/MagnifierView;->BD_RECT:[[F

    aget-object v3, v3, v4

    aget v3, v3, v5

    aput v3, v2, v6

    sget-object v3, Landroid/widget/MagnifierView;->BD_RECT:[[F

    aget-object v3, v3, v4

    aget v3, v3, v4

    aput v3, v2, v8

    aput-object v2, v1, v6

    new-array v2, v7, [F

    fill-array-data v2, :array_6

    aput-object v2, v1, v8

    aput-object v1, v0, v5

    sput-object v0, Landroid/widget/MagnifierView;->BARREL_DISTORTION_X:[[[F

    .line 159
    new-array v0, v6, [[[F

    new-array v1, v7, [[F

    new-array v2, v7, [F

    const/4 v3, 0x0

    aput v3, v2, v4

    sget-object v3, Landroid/widget/MagnifierView;->BD_RND:[F

    aget v3, v3, v4

    neg-float v3, v3

    aput v3, v2, v5

    sget-object v3, Landroid/widget/MagnifierView;->BD_RND:[F

    aget v3, v3, v4

    neg-float v3, v3

    aput v3, v2, v6

    const/4 v3, 0x0

    aput v3, v2, v8

    aput-object v2, v1, v4

    new-array v2, v7, [F

    const/4 v3, 0x0

    aput v3, v2, v4

    sget-object v3, Landroid/widget/MagnifierView;->BD_RND:[F

    aget v3, v3, v5

    neg-float v3, v3

    aput v3, v2, v5

    sget-object v3, Landroid/widget/MagnifierView;->BD_RND:[F

    aget v3, v3, v5

    neg-float v3, v3

    aput v3, v2, v6

    const/4 v3, 0x0

    aput v3, v2, v8

    aput-object v2, v1, v5

    new-array v2, v7, [F

    const/4 v3, 0x0

    aput v3, v2, v4

    sget-object v3, Landroid/widget/MagnifierView;->BD_RND:[F

    aget v3, v3, v5

    aput v3, v2, v5

    sget-object v3, Landroid/widget/MagnifierView;->BD_RND:[F

    aget v3, v3, v5

    aput v3, v2, v6

    const/4 v3, 0x0

    aput v3, v2, v8

    aput-object v2, v1, v6

    new-array v2, v7, [F

    const/4 v3, 0x0

    aput v3, v2, v4

    sget-object v3, Landroid/widget/MagnifierView;->BD_RND:[F

    aget v3, v3, v4

    aput v3, v2, v5

    sget-object v3, Landroid/widget/MagnifierView;->BD_RND:[F

    aget v3, v3, v4

    aput v3, v2, v6

    const/4 v3, 0x0

    aput v3, v2, v8

    aput-object v2, v1, v8

    aput-object v1, v0, v4

    new-array v1, v7, [[F

    new-array v2, v7, [F

    const/4 v3, 0x0

    aput v3, v2, v4

    sget-object v3, Landroid/widget/MagnifierView;->BD_RECT:[[F

    aget-object v3, v3, v5

    aget v3, v3, v4

    neg-float v3, v3

    aput v3, v2, v5

    sget-object v3, Landroid/widget/MagnifierView;->BD_RECT:[[F

    aget-object v3, v3, v5

    aget v3, v3, v4

    neg-float v3, v3

    aput v3, v2, v6

    const/4 v3, 0x0

    aput v3, v2, v8

    aput-object v2, v1, v4

    new-array v2, v7, [F

    const/4 v3, 0x0

    aput v3, v2, v4

    sget-object v3, Landroid/widget/MagnifierView;->BD_RECT:[[F

    aget-object v3, v3, v5

    aget v3, v3, v5

    neg-float v3, v3

    aput v3, v2, v5

    sget-object v3, Landroid/widget/MagnifierView;->BD_RECT:[[F

    aget-object v3, v3, v5

    aget v3, v3, v5

    neg-float v3, v3

    aput v3, v2, v6

    const/4 v3, 0x0

    aput v3, v2, v8

    aput-object v2, v1, v5

    new-array v2, v7, [F

    const/4 v3, 0x0

    aput v3, v2, v4

    sget-object v3, Landroid/widget/MagnifierView;->BD_RECT:[[F

    aget-object v3, v3, v5

    aget v3, v3, v5

    aput v3, v2, v5

    sget-object v3, Landroid/widget/MagnifierView;->BD_RECT:[[F

    aget-object v3, v3, v5

    aget v3, v3, v5

    aput v3, v2, v6

    const/4 v3, 0x0

    aput v3, v2, v8

    aput-object v2, v1, v6

    new-array v2, v7, [F

    const/4 v3, 0x0

    aput v3, v2, v4

    sget-object v3, Landroid/widget/MagnifierView;->BD_RECT:[[F

    aget-object v3, v3, v5

    aget v3, v3, v4

    aput v3, v2, v5

    sget-object v3, Landroid/widget/MagnifierView;->BD_RECT:[[F

    aget-object v3, v3, v5

    aget v3, v3, v4

    aput v3, v2, v6

    const/4 v3, 0x0

    aput v3, v2, v8

    aput-object v2, v1, v8

    aput-object v1, v0, v5

    sput-object v0, Landroid/widget/MagnifierView;->BARREL_DISTORTION_Y:[[[F

    .line 192
    new-array v0, v8, [[F

    new-array v1, v6, [F

    fill-array-data v1, :array_7

    aput-object v1, v0, v4

    new-array v1, v6, [F

    fill-array-data v1, :array_8

    aput-object v1, v0, v5

    new-array v1, v6, [F

    fill-array-data v1, :array_9

    aput-object v1, v0, v6

    sput-object v0, Landroid/widget/MagnifierView;->OFFSET_FACTOR_TARGET_DEFAULT_SET:[[F

    .line 206
    new-array v0, v8, [[F

    new-array v1, v6, [F

    fill-array-data v1, :array_a

    aput-object v1, v0, v4

    new-array v1, v6, [F

    fill-array-data v1, :array_b

    aput-object v1, v0, v5

    new-array v1, v6, [F

    fill-array-data v1, :array_c

    aput-object v1, v0, v6

    sput-object v0, Landroid/widget/MagnifierView;->OFFSET_FACTOR_TARGET_DISTANT_SET:[[F

    .line 219
    new-array v0, v6, [F

    fill-array-data v0, :array_d

    sput-object v0, Landroid/widget/MagnifierView;->INITIAL_OFFSET_FACTOR:[F

    return-void

    .line 120
    :array_0
    .array-data 0x4
        0x42t 0x60t 0xe5t 0x3ct
        0x8ft 0xc2t 0x75t 0x3ct
    .end array-data

    .line 125
    :array_1
    .array-data 0x4
        0xat 0xd7t 0x23t 0x3ct
        0xa6t 0x9bt 0xc4t 0x3bt
    .end array-data

    :array_2
    .array-data 0x4
        0xat 0xd7t 0xa3t 0x3ct
        0xa6t 0x9bt 0x44t 0x3ct
    .end array-data

    .line 134
    :array_3
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_4
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_5
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_6
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 192
    :array_7
    .array-data 0x4
        0x0t 0x0t 0x0t 0xbft
        0x9at 0x99t 0x99t 0xbft
    .end array-data

    :array_8
    .array-data 0x4
        0x9at 0x99t 0x99t 0xbft
        0x0t 0x0t 0x0t 0xbft
    .end array-data

    :array_9
    .array-data 0x4
        0xcdt 0xcct 0x4ct 0x3et
        0x0t 0x0t 0x0t 0xbft
    .end array-data

    .line 206
    :array_a
    .array-data 0x4
        0x0t 0x0t 0x0t 0xbft
        0x0t 0x0t 0xc0t 0xbft
    .end array-data

    :array_b
    .array-data 0x4
        0x9at 0x99t 0x99t 0xbft
        0x0t 0x0t 0x0t 0xbft
    .end array-data

    :array_c
    .array-data 0x4
        0xcdt 0xcct 0x4ct 0x3et
        0x0t 0x0t 0x0t 0xbft
    .end array-data

    .line 219
    :array_d
    .array-data 0x4
        0x0t 0x0t 0x0t 0xbft
        0x0t 0x0t 0x0t 0xbft
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 18
    .parameter "context"
    .parameter "view"

    .prologue
    .line 379
    invoke-direct/range {p0 .. p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 227
    const/4 v3, 0x2

    new-array v3, v3, [Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/widget/MagnifierView;->mFrames:[Landroid/graphics/drawable/Drawable;

    .line 230
    const/4 v3, 0x2

    new-array v3, v3, [I

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/widget/MagnifierView;->mLocationInWindow:[I

    .line 239
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/widget/MagnifierView;->mCenter:Landroid/graphics/Point;

    .line 245
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/MagnifierView;->mAbstractOffset:I

    .line 248
    new-instance v3, Landroid/widget/SpringDynamics;

    invoke-direct {v3}, Landroid/widget/SpringDynamics;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/widget/MagnifierView;->mOffsetDynX:Landroid/widget/SpringDynamics;

    .line 251
    new-instance v3, Landroid/widget/SpringDynamics;

    invoke-direct {v3}, Landroid/widget/SpringDynamics;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/widget/MagnifierView;->mOffsetDynY:Landroid/widget/SpringDynamics;

    .line 254
    new-instance v3, Landroid/widget/SpringDynamics;

    invoke-direct {v3}, Landroid/widget/SpringDynamics;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/widget/MagnifierView;->mAlphaDyn:Landroid/widget/SpringDynamics;

    .line 260
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/widget/MagnifierView;->mIsWindowVisible:Z

    .line 278
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/widget/MagnifierView;->mViewMaskPaint:Landroid/graphics/Paint;

    .line 281
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/widget/MagnifierView;->mPaintBackground:Landroid/graphics/Paint;

    .line 284
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/widget/MagnifierView;->mPaintBackplate:Landroid/graphics/Paint;

    .line 287
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/widget/MagnifierView;->mBarrelDistortionPaint:Landroid/graphics/Paint;

    .line 293
    const/4 v3, 0x2

    new-array v3, v3, [I

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/widget/MagnifierView;->mMagnificationWidth:[I

    .line 296
    const/4 v3, 0x2

    new-array v3, v3, [I

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/widget/MagnifierView;->mMagnificationHeight:[I

    .line 302
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/MagnifierView;->mNextShape:I

    .line 305
    const/4 v3, 0x2

    new-array v3, v3, [Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/widget/MagnifierView;->mMaskBitmaps:[Landroid/graphics/Bitmap;

    .line 308
    const/4 v3, 0x3

    new-array v3, v3, [Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/widget/MagnifierView;->mArrowDrawables:[Landroid/graphics/drawable/Drawable;

    .line 311
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/widget/MagnifierView;->mOffscreenCanvas:Landroid/graphics/Canvas;

    .line 314
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/widget/MagnifierView;->mOffscreenBitmap:Landroid/graphics/Bitmap;

    .line 317
    new-instance v3, Landroid/widget/MagnifierView$1;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Landroid/widget/MagnifierView$1;-><init>(Landroid/widget/MagnifierView;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/widget/MagnifierView;->mOffsetXRunnable:Ljava/lang/Runnable;

    .line 337
    new-instance v3, Landroid/widget/MagnifierView$2;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Landroid/widget/MagnifierView$2;-><init>(Landroid/widget/MagnifierView;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/widget/MagnifierView;->mOffsetYRunnable:Ljava/lang/Runnable;

    .line 357
    new-instance v3, Landroid/widget/MagnifierView$3;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Landroid/widget/MagnifierView$3;-><init>(Landroid/widget/MagnifierView;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/widget/MagnifierView;->mAlphaRunnable:Ljava/lang/Runnable;

    .line 380
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/MagnifierView;->mView:Landroid/view/View;

    .line 382
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    .line 384
    .local v12, resources:Landroid/content/res/Resources;
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/MagnifierView;->mOffsetDynX:Landroid/widget/SpringDynamics;

    const/high16 v4, 0x4316

    const v5, 0x3f19999a

    invoke-virtual {v3, v4, v5}, Landroid/widget/SpringDynamics;->setSpring(FF)V

    .line 385
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/MagnifierView;->mOffsetDynY:Landroid/widget/SpringDynamics;

    const/high16 v4, 0x4316

    const v5, 0x3f19999a

    invoke-virtual {v3, v4, v5}, Landroid/widget/SpringDynamics;->setSpring(FF)V

    .line 386
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/MagnifierView;->mAlphaDyn:Landroid/widget/SpringDynamics;

    const/high16 v4, 0x42a0

    const/high16 v5, 0x3f80

    invoke-virtual {v3, v4, v5}, Landroid/widget/SpringDynamics;->setSpring(FF)V

    .line 389
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/MagnifierView;->mViewMaskPaint:Landroid/graphics/Paint;

    new-instance v4, Landroid/graphics/PorterDuffXfermode;

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v5}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 392
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/MagnifierView;->mPaintBackground:Landroid/graphics/Paint;

    const v4, -0x333334

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 395
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/MagnifierView;->mView:Landroid/view/View;

    instance-of v3, v3, Landroid/widget/TextView;

    if-eqz v3, :cond_1

    .line 396
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/MagnifierView;->mView:Landroid/view/View;

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v14

    .line 397
    .local v14, textColor:I
    invoke-static {v14}, Landroid/graphics/Color;->red(I)I

    move-result v3

    invoke-static {v14}, Landroid/graphics/Color;->green(I)I

    move-result v4

    add-int/2addr v3, v4

    invoke-static {v14}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    add-int v8, v3, v4

    .line 400
    .local v8, colSum:I
    const/16 v3, 0x180

    if-ge v8, v3, :cond_0

    .line 401
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/MagnifierView;->mPaintBackplate:Landroid/graphics/Paint;

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 410
    .end local v8           #colSum:I
    .end local v14           #textColor:I
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/MagnifierView;->mBarrelDistortionPaint:Landroid/graphics/Paint;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 413
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/MagnifierView;->mFrames:[Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x0

    const v5, 0x10806a1

    invoke-virtual {v12, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    aput-object v5, v3, v4

    .line 414
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/MagnifierView;->mFrames:[Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x1

    const v5, 0x10806a0

    invoke-virtual {v12, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    aput-object v5, v3, v4

    .line 417
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/MagnifierView;->mFrames:[Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/widget/MagnifierView;->mFrames:[Landroid/graphics/drawable/Drawable;

    const/16 v16, 0x0

    aget-object v6, v6, v16

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/MagnifierView;->mFrames:[Landroid/graphics/drawable/Drawable;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aget-object v16, v16, v17

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v3, v4, v5, v6, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 419
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/MagnifierView;->mFrames:[Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/widget/MagnifierView;->mFrames:[Landroid/graphics/drawable/Drawable;

    const/16 v16, 0x1

    aget-object v6, v6, v16

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/MagnifierView;->mFrames:[Landroid/graphics/drawable/Drawable;

    move-object/from16 v16, v0

    const/16 v17, 0x1

    aget-object v16, v16, v17

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v3, v4, v5, v6, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 422
    const v3, 0x105004e

    invoke-virtual {v12, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    .line 424
    .local v13, roundMagnificationRadius:I
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/MagnifierView;->mMagnificationWidth:[I

    const/4 v4, 0x0

    mul-int/lit8 v5, v13, 0x2

    aput v5, v3, v4

    .line 425
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/MagnifierView;->mMagnificationHeight:[I

    const/4 v4, 0x0

    mul-int/lit8 v5, v13, 0x2

    aput v5, v3, v4

    .line 426
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/MagnifierView;->mMagnificationWidth:[I

    const/4 v4, 0x1

    const v5, 0x105004f

    invoke-virtual {v12, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    aput v5, v3, v4

    .line 428
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/MagnifierView;->mMagnificationHeight:[I

    const/4 v4, 0x1

    const v5, 0x1050050

    invoke-virtual {v12, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    aput v5, v3, v4

    .line 431
    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    .line 432
    .local v7, maskPaint:Landroid/graphics/Paint;
    const/4 v3, -0x1

    invoke-virtual {v7, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 434
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/MagnifierView;->mFrames:[Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v10

    .line 435
    .local v10, frameWidth:I
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/MagnifierView;->mFrames:[Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v9

    .line 436
    .local v9, frameHeight:I
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/MagnifierView;->mMaskBitmaps:[Landroid/graphics/Bitmap;

    const/4 v4, 0x0

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v10, v9, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    aput-object v5, v3, v4

    .line 438
    new-instance v2, Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/MagnifierView;->mMaskBitmaps:[Landroid/graphics/Bitmap;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-direct {v2, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 439
    .local v2, maskCanvas:Landroid/graphics/Canvas;
    int-to-float v3, v10

    const/high16 v4, 0x4000

    div-float/2addr v3, v4

    int-to-float v4, v9

    const/high16 v5, 0x4000

    div-float/2addr v4, v5

    int-to-float v5, v13

    invoke-virtual {v2, v3, v4, v5, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 442
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/MagnifierView;->mFrames:[Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v10

    .line 443
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/MagnifierView;->mFrames:[Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v9

    .line 444
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/MagnifierView;->mMaskBitmaps:[Landroid/graphics/Bitmap;

    const/4 v4, 0x1

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v10, v9, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    aput-object v5, v3, v4

    .line 446
    new-instance v2, Landroid/graphics/Canvas;

    .end local v2           #maskCanvas:Landroid/graphics/Canvas;
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/MagnifierView;->mMaskBitmaps:[Landroid/graphics/Bitmap;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    invoke-direct {v2, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 447
    .restart local v2       #maskCanvas:Landroid/graphics/Canvas;
    div-int/lit8 v3, v10, 0x2

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/MagnifierView;->mMagnificationWidth:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    int-to-float v3, v3

    div-int/lit8 v4, v9, 0x2

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/MagnifierView;->mMagnificationHeight:[I

    const/4 v6, 0x1

    aget v5, v5, v6

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    int-to-float v4, v4

    div-int/lit8 v5, v10, 0x2

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/widget/MagnifierView;->mMagnificationWidth:[I

    const/16 v16, 0x1

    aget v6, v6, v16

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    int-to-float v5, v5

    div-int/lit8 v6, v9, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/MagnifierView;->mMagnificationHeight:[I

    move-object/from16 v16, v0

    const/16 v17, 0x1

    aget v16, v16, v17

    div-int/lit8 v16, v16, 0x2

    add-int v6, v6, v16

    int-to-float v6, v6

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 452
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/MagnifierView;->mArrowDrawables:[Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x0

    const v5, 0x108069d

    invoke-virtual {v12, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    aput-object v5, v3, v4

    .line 454
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/MagnifierView;->mArrowDrawables:[Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x1

    const v5, 0x108069e

    invoke-virtual {v12, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    aput-object v5, v3, v4

    .line 456
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/MagnifierView;->mArrowDrawables:[Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x2

    const v5, 0x108069f

    invoke-virtual {v12, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    aput-object v5, v3, v4

    .line 458
    const/4 v11, 0x0

    .local v11, i:I
    :goto_1
    const/4 v3, 0x3

    if-ge v11, v3, :cond_2

    .line 459
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/MagnifierView;->mArrowDrawables:[Landroid/graphics/drawable/Drawable;

    aget-object v3, v3, v11

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/widget/MagnifierView;->mArrowDrawables:[Landroid/graphics/drawable/Drawable;

    aget-object v6, v6, v11

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/MagnifierView;->mArrowDrawables:[Landroid/graphics/drawable/Drawable;

    move-object/from16 v16, v0

    aget-object v16, v16, v11

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v3, v4, v5, v6, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 458
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 403
    .end local v2           #maskCanvas:Landroid/graphics/Canvas;
    .end local v7           #maskPaint:Landroid/graphics/Paint;
    .end local v9           #frameHeight:I
    .end local v10           #frameWidth:I
    .end local v11           #i:I
    .end local v13           #roundMagnificationRadius:I
    .restart local v8       #colSum:I
    .restart local v14       #textColor:I
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/MagnifierView;->mPaintBackplate:Landroid/graphics/Paint;

    const/high16 v4, -0x100

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_0

    .line 406
    .end local v8           #colSum:I
    .end local v14           #textColor:I
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/MagnifierView;->mPaintBackplate:Landroid/graphics/Paint;

    const/high16 v4, -0x100

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_0

    .line 463
    .restart local v2       #maskCanvas:Landroid/graphics/Canvas;
    .restart local v7       #maskPaint:Landroid/graphics/Paint;
    .restart local v9       #frameHeight:I
    .restart local v10       #frameWidth:I
    .restart local v11       #i:I
    .restart local v13       #roundMagnificationRadius:I
    :cond_2
    new-instance v15, Landroid/widget/FrameLayout;

    move-object/from16 v0, p1

    invoke-direct {v15, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 464
    .local v15, wrapper:Landroid/view/ViewGroup;
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x1

    invoke-direct {v3, v4, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v15, v3}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 467
    new-instance v3, Landroid/widget/PopupWindow;

    const/4 v4, 0x0

    const v5, 0x10102c8

    move-object/from16 v0, p1

    invoke-direct {v3, v0, v4, v5}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/widget/MagnifierView;->mMagnifierPopup:Landroid/widget/PopupWindow;

    .line 469
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/MagnifierView;->mMagnifierPopup:Landroid/widget/PopupWindow;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 470
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/MagnifierView;->mMagnifierPopup:Landroid/widget/PopupWindow;

    const/16 v4, 0x3ea

    invoke-virtual {v3, v4}, Landroid/widget/PopupWindow;->setWindowLayoutType(I)V

    .line 471
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/MagnifierView;->mMagnifierPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v3, v15}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 472
    return-void
.end method

.method static synthetic access$000(Landroid/widget/MagnifierView;)Landroid/widget/SpringDynamics;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Landroid/widget/MagnifierView;->mOffsetDynX:Landroid/widget/SpringDynamics;

    return-object v0
.end method

.method static synthetic access$100(Landroid/widget/MagnifierView;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Landroid/widget/MagnifierView;->mLocationInWindow:[I

    return-object v0
.end method

.method static synthetic access$200(Landroid/widget/MagnifierView;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Landroid/widget/MagnifierView;->mView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$300(Landroid/widget/MagnifierView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget v0, p0, Landroid/widget/MagnifierView;->mWidth:I

    return v0
.end method

.method static synthetic access$400(Landroid/widget/MagnifierView;)Landroid/graphics/Point;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Landroid/widget/MagnifierView;->mCenter:Landroid/graphics/Point;

    return-object v0
.end method

.method static synthetic access$500(Landroid/widget/MagnifierView;)Landroid/widget/SpringDynamics;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Landroid/widget/MagnifierView;->mOffsetDynY:Landroid/widget/SpringDynamics;

    return-object v0
.end method

.method static synthetic access$600(Landroid/widget/MagnifierView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget v0, p0, Landroid/widget/MagnifierView;->mHeight:I

    return v0
.end method

.method static synthetic access$700(Landroid/widget/MagnifierView;)Landroid/widget/SpringDynamics;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Landroid/widget/MagnifierView;->mAlphaDyn:Landroid/widget/SpringDynamics;

    return-object v0
.end method

.method private ensureOffsetBitmapAndCanvas()V
    .locals 4

    .prologue
    const v3, 0x3fb9999a

    .line 681
    iget-object v0, p0, Landroid/widget/MagnifierView;->mOffscreenCanvas:Landroid/graphics/Canvas;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/MagnifierView;->mOffscreenBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v1, p0, Landroid/widget/MagnifierView;->mMagnificationWidth:[I

    iget v2, p0, Landroid/widget/MagnifierView;->mShape:I

    aget v1, v1, v2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/widget/MagnifierView;->mOffscreenBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iget-object v1, p0, Landroid/widget/MagnifierView;->mMagnificationHeight:[I

    iget v2, p0, Landroid/widget/MagnifierView;->mShape:I

    aget v1, v1, v2

    if-eq v0, v1, :cond_2

    .line 684
    :cond_0
    iget-object v0, p0, Landroid/widget/MagnifierView;->mOffscreenBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 685
    iget-object v0, p0, Landroid/widget/MagnifierView;->mOffscreenBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 687
    :cond_1
    iget-object v0, p0, Landroid/widget/MagnifierView;->mMagnificationWidth:[I

    iget v1, p0, Landroid/widget/MagnifierView;->mShape:I

    aget v0, v0, v1

    iget-object v1, p0, Landroid/widget/MagnifierView;->mMagnificationHeight:[I

    iget v2, p0, Landroid/widget/MagnifierView;->mShape:I

    aget v1, v1, v2

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/MagnifierView;->mOffscreenBitmap:Landroid/graphics/Bitmap;

    .line 690
    iget-object v0, p0, Landroid/widget/MagnifierView;->mOffscreenCanvas:Landroid/graphics/Canvas;

    if-nez v0, :cond_3

    .line 691
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Landroid/widget/MagnifierView;->mOffscreenBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Landroid/widget/MagnifierView;->mOffscreenCanvas:Landroid/graphics/Canvas;

    .line 692
    iget-object v0, p0, Landroid/widget/MagnifierView;->mOffscreenCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, v3, v3}, Landroid/graphics/Canvas;->scale(FF)V

    .line 697
    :cond_2
    :goto_0
    return-void

    .line 694
    :cond_3
    iget-object v0, p0, Landroid/widget/MagnifierView;->mOffscreenCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Landroid/widget/MagnifierView;->mOffscreenBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method


# virtual methods
.method public hide()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 488
    iput-object v1, p0, Landroid/widget/MagnifierView;->mOffscreenCanvas:Landroid/graphics/Canvas;

    .line 489
    iget-object v0, p0, Landroid/widget/MagnifierView;->mOffscreenBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 490
    iget-object v0, p0, Landroid/widget/MagnifierView;->mOffscreenBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 491
    iput-object v1, p0, Landroid/widget/MagnifierView;->mOffscreenBitmap:Landroid/graphics/Bitmap;

    .line 494
    :cond_0
    iget-object v0, p0, Landroid/widget/MagnifierView;->mMagnifierPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 495
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/MagnifierView;->mIsWindowVisible:Z

    .line 496
    iget-object v0, p0, Landroid/widget/MagnifierView;->mMagnifierPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 497
    return-void
.end method

.method public onDetached()V
    .locals 1

    .prologue
    .line 774
    invoke-virtual {p0}, Landroid/widget/MagnifierView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 775
    .local v0, observer:Landroid/view/ViewTreeObserver;
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 776
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 22
    .parameter "canvas"

    .prologue
    .line 701
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/MagnifierView;->mMagnificationWidth:[I

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/MagnifierView;->mShape:I

    aget v2, v2, v3

    int-to-float v2, v2

    const v3, 0x3fb9999a

    div-float/2addr v2, v3

    float-to-int v0, v2

    move/from16 v20, v0

    .line 702
    .local v20, sourceWidth:I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/MagnifierView;->mMagnificationHeight:[I

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/MagnifierView;->mShape:I

    aget v2, v2, v3

    int-to-float v2, v2

    const v3, 0x3fb9999a

    div-float/2addr v2, v3

    float-to-int v0, v2

    move/from16 v19, v0

    .line 703
    .local v19, sourceHeight:I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/MagnifierView;->mCenter:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    div-int/lit8 v3, v20, 0x2

    sub-int/2addr v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/MagnifierView;->mView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getScrollX()I

    move-result v3

    add-int v18, v2, v3

    .line 704
    .local v18, left:I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/MagnifierView;->mCenter:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    div-int/lit8 v3, v19, 0x2

    sub-int/2addr v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/MagnifierView;->mView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getScrollY()I

    move-result v3

    add-int v21, v2, v3

    .line 708
    .local v21, top:I
    const/4 v2, 0x0

    const/16 v3, 0xff

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/MagnifierView;->mAlphaDyn:Landroid/widget/SpringDynamics;

    invoke-virtual {v4}, Landroid/widget/SpringDynamics;->getPosition()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 709
    .local v7, alpha:I
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/MagnifierView;->mWidth:I

    int-to-float v5, v2

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/MagnifierView;->mHeight:I

    int-to-float v6, v2

    const/16 v8, 0x1f

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    .line 723
    invoke-direct/range {p0 .. p0}, Landroid/widget/MagnifierView;->ensureOffsetBitmapAndCanvas()V

    .line 724
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/MagnifierView;->mOffscreenCanvas:Landroid/graphics/Canvas;

    move/from16 v0, v18

    neg-int v3, v0

    int-to-float v3, v3

    move/from16 v0, v21

    neg-int v4, v0

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 725
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/MagnifierView;->mOffscreenCanvas:Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/MagnifierView;->mPaintBackground:Landroid/graphics/Paint;

    invoke-virtual {v2, v3}, Landroid/graphics/Canvas;->drawPaint(Landroid/graphics/Paint;)V

    .line 726
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/MagnifierView;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-nez v2, :cond_0

    .line 727
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/widget/MagnifierView;->mOffscreenCanvas:Landroid/graphics/Canvas;

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/MagnifierView;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v11, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/MagnifierView;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v12, v2

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/MagnifierView;->mPaintBackplate:Landroid/graphics/Paint;

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 730
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/MagnifierView;->mView:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/MagnifierView;->mOffscreenCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v2, v3}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 731
    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/widget/MagnifierView;->mOffscreenBitmap:Landroid/graphics/Bitmap;

    const/4 v10, 0x3

    const/4 v11, 0x3

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/MagnifierView;->mBarrelDistortionVerts:[F

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/MagnifierView;->mBarrelDistortionPaint:Landroid/graphics/Paint;

    move-object/from16 v16, v0

    move-object/from16 v8, p1

    invoke-virtual/range {v8 .. v16}, Landroid/graphics/Canvas;->drawBitmapMesh(Landroid/graphics/Bitmap;II[FI[IILandroid/graphics/Paint;)V

    .line 733
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/MagnifierView;->mOffscreenCanvas:Landroid/graphics/Canvas;

    move/from16 v0, v18

    int-to-float v3, v0

    move/from16 v0, v21

    int-to-float v4, v0

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 738
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/MagnifierView;->mMaskBitmaps:[Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/MagnifierView;->mShape:I

    aget-object v2, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/MagnifierView;->mViewMaskPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 741
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/MagnifierView;->mFrames:[Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/MagnifierView;->mShape:I

    aget-object v2, v2, v3

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 744
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/MagnifierView;->mShape:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 745
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 746
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/MagnifierView;->mArrowDrawables:[Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/MagnifierView;->mAbstractOffset:I

    aget-object v17, v2, v3

    .line 747
    .local v17, arrowDrawable:Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/MagnifierView;->mAbstractOffset:I

    packed-switch v2, :pswitch_data_0

    .line 765
    :goto_0
    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 766
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 770
    .end local v17           #arrowDrawable:Landroid/graphics/drawable/Drawable;
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 771
    return-void

    .line 749
    .restart local v17       #arrowDrawable:Landroid/graphics/drawable/Drawable;
    :pswitch_0
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/MagnifierView;->mWidth:I

    div-int/lit8 v2, v2, 0x2

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/MagnifierView;->mHeight:I

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_0

    .line 754
    :pswitch_1
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/MagnifierView;->mWidth:I

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/MagnifierView;->mHeight:I

    div-int/lit8 v3, v3, 0x2

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    int-to-float v3, v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_0

    .line 760
    :pswitch_2
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/MagnifierView;->mHeight:I

    div-int/lit8 v3, v3, 0x2

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    int-to-float v3, v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_0

    .line 747
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onTouchModeChanged(Z)V
    .locals 0
    .parameter "isInTouchMode"

    .prologue
    .line 780
    if-nez p1, :cond_0

    .line 781
    invoke-virtual {p0}, Landroid/widget/MagnifierView;->hide()V

    .line 783
    :cond_0
    return-void
.end method

.method public setShape(I)V
    .locals 0
    .parameter "shape"

    .prologue
    .line 481
    iput p1, p0, Landroid/widget/MagnifierView;->mNextShape:I

    .line 482
    return-void
.end method

.method public showAt(II)V
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 508
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/widget/MagnifierView;->showAt(III)V

    .line 509
    return-void
.end method

.method public showAt(III)V
    .locals 28
    .parameter "x"
    .parameter "y"
    .parameter "offsetFactorTargetIndicator"

    .prologue
    .line 521
    sget-object v10, Landroid/widget/MagnifierView;->OFFSET_FACTOR_TARGET_DEFAULT_SET:[[F

    .line 522
    .local v10, offsetFactorTarget:[[F
    const/16 v22, 0x1

    move/from16 v0, p3

    move/from16 v1, v22

    if-ne v0, v1, :cond_0

    .line 523
    sget-object v10, Landroid/widget/MagnifierView;->OFFSET_FACTOR_TARGET_DISTANT_SET:[[F

    .line 526
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/MagnifierView;->mIsWindowVisible:Z

    move/from16 v22, v0

    if-nez v22, :cond_3

    .line 527
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/MagnifierView;->mNextShape:I

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/MagnifierView;->mShape:I

    .line 529
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/MagnifierView;->mFrames:[Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/MagnifierView;->mShape:I

    move/from16 v23, v0

    aget-object v22, v22, v23

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/MagnifierView;->mWidth:I

    .line 530
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/MagnifierView;->mFrames:[Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/MagnifierView;->mShape:I

    move/from16 v23, v0

    aget-object v22, v22, v23

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/MagnifierView;->mHeight:I

    .line 533
    const/16 v9, 0x10

    .line 534
    .local v9, nbrOfVerts:I
    const/16 v22, 0x20

    move/from16 v0, v22

    new-array v0, v0, [F

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/MagnifierView;->mBarrelDistortionVerts:[F

    .line 535
    const/4 v12, 0x0

    .local v12, row:I
    :goto_0
    const/16 v22, 0x3

    move/from16 v0, v22

    if-gt v12, v0, :cond_2

    .line 536
    const/4 v3, 0x0

    .local v3, col:I
    :goto_1
    const/16 v22, 0x3

    move/from16 v0, v22

    if-gt v3, v0, :cond_1

    .line 537
    mul-int/lit8 v22, v12, 0x4

    add-int v4, v3, v22

    .line 538
    .local v4, index:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/MagnifierView;->mBarrelDistortionVerts:[F

    move-object/from16 v22, v0

    mul-int/lit8 v23, v4, 0x2

    add-int/lit8 v23, v23, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/MagnifierView;->mWidth:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/MagnifierView;->mMagnificationWidth:[I

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/MagnifierView;->mShape:I

    move/from16 v26, v0

    aget v25, v25, v26

    sub-int v24, v24, v25

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    const/high16 v25, 0x4000

    div-float v24, v24, v25

    int-to-float v0, v3

    move/from16 v25, v0

    const/high16 v26, 0x4040

    div-float v25, v25, v26

    sget-object v26, Landroid/widget/MagnifierView;->BARREL_DISTORTION_X:[[[F

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/MagnifierView;->mShape:I

    move/from16 v27, v0

    aget-object v26, v26, v27

    aget-object v26, v26, v12

    aget v26, v26, v3

    add-float v25, v25, v26

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/MagnifierView;->mMagnificationWidth:[I

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/MagnifierView;->mShape:I

    move/from16 v27, v0

    aget v26, v26, v27

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    mul-float v25, v25, v26

    add-float v24, v24, v25

    aput v24, v22, v23

    .line 541
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/MagnifierView;->mBarrelDistortionVerts:[F

    move-object/from16 v22, v0

    mul-int/lit8 v23, v4, 0x2

    add-int/lit8 v23, v23, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/MagnifierView;->mHeight:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/MagnifierView;->mMagnificationHeight:[I

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/MagnifierView;->mShape:I

    move/from16 v26, v0

    aget v25, v25, v26

    sub-int v24, v24, v25

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    const/high16 v25, 0x4000

    div-float v24, v24, v25

    int-to-float v0, v12

    move/from16 v25, v0

    const/high16 v26, 0x4040

    div-float v25, v25, v26

    sget-object v26, Landroid/widget/MagnifierView;->BARREL_DISTORTION_Y:[[[F

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/MagnifierView;->mShape:I

    move/from16 v27, v0

    aget-object v26, v26, v27

    aget-object v26, v26, v12

    aget v26, v26, v3

    add-float v25, v25, v26

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/MagnifierView;->mMagnificationHeight:[I

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/MagnifierView;->mShape:I

    move/from16 v27, v0

    aget v26, v26, v27

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    mul-float v25, v25, v26

    add-float v24, v24, v25

    aput v24, v22, v23

    .line 536
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    .line 535
    .end local v4           #index:I
    :cond_1
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_0

    .line 547
    .end local v3           #col:I
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/MagnifierView;->mView:Landroid/view/View;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v16

    .line 548
    .local v16, viewRoot:Landroid/view/View;
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getWidth()I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/MagnifierView;->mWindowWidth:I

    .line 549
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getHeight()I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/MagnifierView;->mWindowHeight:I

    .line 551
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/MagnifierView;->mMagnifierPopup:Landroid/widget/PopupWindow;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/MagnifierView;->mWindowWidth:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 552
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/MagnifierView;->mMagnifierPopup:Landroid/widget/PopupWindow;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/MagnifierView;->mWindowHeight:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 554
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/MagnifierView;->mAbstractOffset:I

    .line 555
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/MagnifierView;->mMagnifierPopup:Landroid/widget/PopupWindow;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/MagnifierView;->mView:Landroid/view/View;

    move-object/from16 v23, v0

    const/16 v24, 0x33

    const/16 v25, 0x0

    const/16 v26, 0x0

    invoke-virtual/range {v22 .. v26}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 558
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/MagnifierView;->mAlphaDyn:Landroid/widget/SpringDynamics;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const/16 v24, 0x0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v25

    invoke-virtual/range {v22 .. v26}, Landroid/widget/SpringDynamics;->setState(FFJ)V

    .line 559
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/MagnifierView;->mAlphaDyn:Landroid/widget/SpringDynamics;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Landroid/widget/SpringDynamics;->setMinMaxPosition(F)V

    .line 560
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/MagnifierView;->mOffsetDynX:Landroid/widget/SpringDynamics;

    move-object/from16 v22, v0

    sget-object v23, Landroid/widget/MagnifierView;->INITIAL_OFFSET_FACTOR:[F

    const/16 v24, 0x0

    aget v23, v23, v24

    const/16 v24, 0x0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v25

    invoke-virtual/range {v22 .. v26}, Landroid/widget/SpringDynamics;->setState(FFJ)V

    .line 561
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/MagnifierView;->mOffsetDynY:Landroid/widget/SpringDynamics;

    move-object/from16 v22, v0

    sget-object v23, Landroid/widget/MagnifierView;->INITIAL_OFFSET_FACTOR:[F

    const/16 v24, 0x1

    aget v23, v23, v24

    const/16 v24, 0x0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v25

    invoke-virtual/range {v22 .. v26}, Landroid/widget/SpringDynamics;->setState(FFJ)V

    .line 562
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/MagnifierView;->mOffsetDynX:Landroid/widget/SpringDynamics;

    move-object/from16 v22, v0

    sget-object v23, Landroid/widget/MagnifierView;->INITIAL_OFFSET_FACTOR:[F

    const/16 v24, 0x0

    aget v23, v23, v24

    invoke-virtual/range {v22 .. v23}, Landroid/widget/SpringDynamics;->setMinMaxPosition(F)V

    .line 563
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/MagnifierView;->mOffsetDynY:Landroid/widget/SpringDynamics;

    move-object/from16 v22, v0

    sget-object v23, Landroid/widget/MagnifierView;->INITIAL_OFFSET_FACTOR:[F

    const/16 v24, 0x1

    aget v23, v23, v24

    invoke-virtual/range {v22 .. v23}, Landroid/widget/SpringDynamics;->setMinMaxPosition(F)V

    .line 568
    .end local v9           #nbrOfVerts:I
    .end local v12           #row:I
    .end local v16           #viewRoot:Landroid/view/View;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/MagnifierView;->mCenter:Landroid/graphics/Point;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->set(II)V

    .line 569
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/MagnifierView;->mView:Landroid/view/View;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/MagnifierView;->mLocationInWindow:[I

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->getLocationInWindow([I)V

    .line 570
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/MagnifierView;->mLocationInWindow:[I

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aget v22, v22, v23

    add-int v20, p1, v22

    .line 571
    .local v20, windowX:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/MagnifierView;->mLocationInWindow:[I

    move-object/from16 v22, v0

    const/16 v23, 0x1

    aget v22, v22, v23

    add-int v21, p2, v22

    .line 575
    .local v21, windowY:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/MagnifierView;->mOffsetDynX:Landroid/widget/SpringDynamics;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/SpringDynamics;->getPosition()F

    move-result v22

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/MagnifierView;->mWidth:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    mul-float v22, v22, v23

    invoke-static/range {v22 .. v22}, Ljava/lang/Math;->round(F)I

    move-result v8

    .line 576
    .local v8, leftAndRightOffset:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/MagnifierView;->mOffsetDynY:Landroid/widget/SpringDynamics;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/SpringDynamics;->getPosition()F

    move-result v22

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/MagnifierView;->mHeight:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    mul-float v22, v22, v23

    invoke-static/range {v22 .. v22}, Ljava/lang/Math;->round(F)I

    move-result v15

    .line 577
    .local v15, topAndBottomOffset:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/MagnifierView;->mIsWindowVisible:Z

    move/from16 v22, v0

    if-nez v22, :cond_4

    .line 578
    new-instance v11, Landroid/widget/FrameLayout$LayoutParams;

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/MagnifierView;->mWidth:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/MagnifierView;->mHeight:I

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-direct {v11, v0, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 579
    .local v11, params:Landroid/widget/FrameLayout$LayoutParams;
    add-int v22, v8, v20

    move/from16 v0, v22

    iput v0, v11, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 580
    add-int v22, v15, v21

    move/from16 v0, v22

    iput v0, v11, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 581
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/MagnifierView;->mMagnifierPopup:Landroid/widget/PopupWindow;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/view/ViewGroup;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-virtual {v0, v1, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 588
    .end local v11           #params:Landroid/widget/FrameLayout$LayoutParams;
    :goto_2
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/MagnifierView;->mIsWindowVisible:Z

    .line 593
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/MagnifierView;->mAbstractOffset:I

    move/from16 v22, v0

    packed-switch v22, :pswitch_data_0

    .line 629
    new-instance v22, Ljava/lang/IllegalStateException;

    invoke-direct/range {v22 .. v22}, Ljava/lang/IllegalStateException;-><init>()V

    throw v22

    .line 583
    :cond_4
    add-int v22, v8, v20

    invoke-virtual/range {p0 .. p0}, Landroid/widget/MagnifierView;->getLeft()I

    move-result v23

    sub-int v22, v22, v23

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/MagnifierView;->offsetLeftAndRight(I)V

    .line 584
    add-int v22, v15, v21

    invoke-virtual/range {p0 .. p0}, Landroid/widget/MagnifierView;->getTop()I

    move-result v23

    sub-int v22, v22, v23

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/MagnifierView;->offsetTopAndBottom(I)V

    goto :goto_2

    .line 595
    :pswitch_0
    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/MagnifierView;->mAbstractOffset:I

    move/from16 v23, v0

    aget-object v23, v10, v23

    const/16 v24, 0x1

    aget v23, v23, v24

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/MagnifierView;->mHeight:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    mul-float v23, v23, v24

    add-float v22, v22, v23

    const/16 v23, 0x0

    cmpg-float v22, v22, v23

    if-gez v22, :cond_5

    .line 596
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/MagnifierView;->mWindowWidth:I

    move/from16 v22, v0

    div-int/lit8 v22, v22, 0x2

    move/from16 v0, v20

    move/from16 v1, v22

    if-ge v0, v1, :cond_9

    .line 597
    const/16 v22, 0x2

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/MagnifierView;->mAbstractOffset:I

    .line 632
    :cond_5
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/MagnifierView;->mOffsetDynX:Landroid/widget/SpringDynamics;

    move-object/from16 v22, v0

    const v23, 0x3c23d70a

    const v24, 0x3a83126f

    invoke-virtual/range {v22 .. v24}, Landroid/widget/SpringDynamics;->isAtRest(FF)Z

    move-result v18

    .line 633
    .local v18, wasXAtRest:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/MagnifierView;->mOffsetDynY:Landroid/widget/SpringDynamics;

    move-object/from16 v22, v0

    const v23, 0x3c23d70a

    const v24, 0x3a83126f

    invoke-virtual/range {v22 .. v24}, Landroid/widget/SpringDynamics;->isAtRest(FF)Z

    move-result v19

    .line 636
    .local v19, wasYAtRest:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/MagnifierView;->mOffsetDynX:Landroid/widget/SpringDynamics;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/MagnifierView;->mAbstractOffset:I

    move/from16 v23, v0

    aget-object v23, v10, v23

    const/16 v24, 0x0

    aget v23, v23, v24

    invoke-virtual/range {v22 .. v23}, Landroid/widget/SpringDynamics;->setMinMaxPosition(F)V

    .line 637
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/MagnifierView;->mOffsetDynY:Landroid/widget/SpringDynamics;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/MagnifierView;->mAbstractOffset:I

    move/from16 v23, v0

    aget-object v23, v10, v23

    const/16 v24, 0x1

    aget v23, v23, v24

    invoke-virtual/range {v22 .. v23}, Landroid/widget/SpringDynamics;->setMinMaxPosition(F)V

    .line 639
    if-eqz v18, :cond_6

    .line 640
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/MagnifierView;->mOffsetDynX:Landroid/widget/SpringDynamics;

    move-object/from16 v22, v0

    const v23, 0x3c23d70a

    const v24, 0x3a83126f

    invoke-virtual/range {v22 .. v24}, Landroid/widget/SpringDynamics;->isAtRest(FF)Z

    move-result v6

    .line 641
    .local v6, isXAtRest:Z
    if-nez v6, :cond_6

    .line 642
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/MagnifierView;->mOffsetDynX:Landroid/widget/SpringDynamics;

    move-object/from16 v22, v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v23

    invoke-virtual/range {v22 .. v24}, Landroid/widget/SpringDynamics;->setLastTime(J)V

    .line 643
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/MagnifierView;->mOffsetXRunnable:Ljava/lang/Runnable;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/MagnifierView;->post(Ljava/lang/Runnable;)Z

    .line 647
    .end local v6           #isXAtRest:Z
    :cond_6
    if-eqz v19, :cond_7

    .line 648
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/MagnifierView;->mOffsetDynY:Landroid/widget/SpringDynamics;

    move-object/from16 v22, v0

    const v23, 0x3c23d70a

    const v24, 0x3a83126f

    invoke-virtual/range {v22 .. v24}, Landroid/widget/SpringDynamics;->isAtRest(FF)Z

    move-result v7

    .line 649
    .local v7, isYAtRest:Z
    if-nez v7, :cond_7

    .line 650
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/MagnifierView;->mOffsetDynY:Landroid/widget/SpringDynamics;

    move-object/from16 v22, v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v23

    invoke-virtual/range {v22 .. v24}, Landroid/widget/SpringDynamics;->setLastTime(J)V

    .line 651
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/MagnifierView;->mOffsetYRunnable:Ljava/lang/Runnable;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/MagnifierView;->post(Ljava/lang/Runnable;)Z

    .line 655
    .end local v7           #isYAtRest:Z
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/MagnifierView;->mAlphaDyn:Landroid/widget/SpringDynamics;

    move-object/from16 v22, v0

    const/high16 v23, 0x3f80

    const v24, 0x3dcccccd

    invoke-virtual/range {v22 .. v24}, Landroid/widget/SpringDynamics;->isAtRest(FF)Z

    move-result v17

    .line 658
    .local v17, wasAlphaAtRest:Z
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/MagnifierView;->mWidth:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    const v23, 0x3fb9999a

    div-float v22, v22, v23

    move/from16 v0, v22

    float-to-int v14, v0

    .line 659
    .local v14, sourceWidth:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/MagnifierView;->mHeight:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    const v23, 0x3fb9999a

    div-float v22, v22, v23

    move/from16 v0, v22

    float-to-int v13, v0

    .line 660
    .local v13, sourceHeight:I
    neg-int v0, v14

    move/from16 v22, v0

    div-int/lit8 v22, v22, 0x4

    move/from16 v0, p1

    move/from16 v1, v22

    if-le v0, v1, :cond_e

    neg-int v0, v13

    move/from16 v22, v0

    div-int/lit8 v22, v22, 0x4

    move/from16 v0, p2

    move/from16 v1, v22

    if-le v0, v1, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/MagnifierView;->mView:Landroid/view/View;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getWidth()I

    move-result v22

    div-int/lit8 v23, v14, 0x4

    add-int v22, v22, v23

    move/from16 v0, p1

    move/from16 v1, v22

    if-ge v0, v1, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/MagnifierView;->mView:Landroid/view/View;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getHeight()I

    move-result v22

    div-int/lit8 v23, v13, 0x4

    add-int v22, v22, v23

    move/from16 v0, p2

    move/from16 v1, v22

    if-ge v0, v1, :cond_e

    .line 663
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/MagnifierView;->mAlphaDyn:Landroid/widget/SpringDynamics;

    move-object/from16 v22, v0

    const/high16 v23, 0x437f

    invoke-virtual/range {v22 .. v23}, Landroid/widget/SpringDynamics;->setMinMaxPosition(F)V

    .line 668
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/MagnifierView;->mAlphaDyn:Landroid/widget/SpringDynamics;

    move-object/from16 v22, v0

    const/high16 v23, 0x3f80

    const v24, 0x3dcccccd

    invoke-virtual/range {v22 .. v24}, Landroid/widget/SpringDynamics;->isAtRest(FF)Z

    move-result v5

    .line 671
    .local v5, isAlphaAtRest:Z
    if-eqz v17, :cond_8

    if-nez v5, :cond_8

    .line 672
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/MagnifierView;->mAlphaDyn:Landroid/widget/SpringDynamics;

    move-object/from16 v22, v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v23

    invoke-virtual/range {v22 .. v24}, Landroid/widget/SpringDynamics;->setLastTime(J)V

    .line 673
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/MagnifierView;->mAlphaRunnable:Ljava/lang/Runnable;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/MagnifierView;->post(Ljava/lang/Runnable;)Z

    .line 676
    :cond_8
    invoke-virtual/range {p0 .. p0}, Landroid/widget/MagnifierView;->invalidate()V

    .line 677
    return-void

    .line 599
    .end local v5           #isAlphaAtRest:Z
    .end local v13           #sourceHeight:I
    .end local v14           #sourceWidth:I
    .end local v17           #wasAlphaAtRest:Z
    .end local v18           #wasXAtRest:Z
    .end local v19           #wasYAtRest:Z
    :cond_9
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/MagnifierView;->mAbstractOffset:I

    goto/16 :goto_3

    .line 605
    :pswitch_1
    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/MagnifierView;->mHeight:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    const/high16 v24, 0x4000

    mul-float v23, v23, v24

    cmpl-float v22, v22, v23

    if-lez v22, :cond_a

    .line 606
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/MagnifierView;->mAbstractOffset:I

    goto/16 :goto_3

    .line 607
    :cond_a
    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/MagnifierView;->mAbstractOffset:I

    move/from16 v23, v0

    aget-object v23, v10, v23

    const/16 v24, 0x0

    aget v23, v23, v24

    const/high16 v24, 0x3f00

    add-float v23, v23, v24

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/MagnifierView;->mWidth:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    mul-float v23, v23, v24

    add-float v22, v22, v23

    const/16 v23, 0x0

    cmpg-float v22, v22, v23

    if-gez v22, :cond_5

    .line 608
    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/MagnifierView;->mAbstractOffset:I

    move/from16 v23, v0

    aget-object v23, v10, v23

    const/16 v24, 0x1

    aget v23, v23, v24

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/MagnifierView;->mHeight:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    mul-float v23, v23, v24

    add-float v22, v22, v23

    const/16 v23, 0x0

    cmpl-float v22, v22, v23

    if-lez v22, :cond_b

    .line 609
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/MagnifierView;->mAbstractOffset:I

    goto/16 :goto_3

    .line 611
    :cond_b
    const/16 v22, 0x2

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/MagnifierView;->mAbstractOffset:I

    goto/16 :goto_3

    .line 617
    :pswitch_2
    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/MagnifierView;->mHeight:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    const/high16 v24, 0x4000

    mul-float v23, v23, v24

    cmpl-float v22, v22, v23

    if-lez v22, :cond_c

    .line 618
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/MagnifierView;->mAbstractOffset:I

    goto/16 :goto_3

    .line 619
    :cond_c
    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/MagnifierView;->mAbstractOffset:I

    move/from16 v23, v0

    aget-object v23, v10, v23

    const/16 v24, 0x0

    aget v23, v23, v24

    const/high16 v24, 0x3f00

    add-float v23, v23, v24

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/MagnifierView;->mWidth:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    mul-float v23, v23, v24

    add-float v22, v22, v23

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/MagnifierView;->mWindowWidth:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    cmpl-float v22, v22, v23

    if-lez v22, :cond_5

    .line 620
    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/MagnifierView;->mAbstractOffset:I

    move/from16 v23, v0

    aget-object v23, v10, v23

    const/16 v24, 0x1

    aget v23, v23, v24

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/MagnifierView;->mHeight:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    mul-float v23, v23, v24

    add-float v22, v22, v23

    const/16 v23, 0x0

    cmpl-float v22, v22, v23

    if-lez v22, :cond_d

    .line 621
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/MagnifierView;->mAbstractOffset:I

    goto/16 :goto_3

    .line 623
    :cond_d
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/MagnifierView;->mAbstractOffset:I

    goto/16 :goto_3

    .line 665
    .restart local v13       #sourceHeight:I
    .restart local v14       #sourceWidth:I
    .restart local v17       #wasAlphaAtRest:Z
    .restart local v18       #wasXAtRest:Z
    .restart local v19       #wasYAtRest:Z
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/MagnifierView;->mAlphaDyn:Landroid/widget/SpringDynamics;

    move-object/from16 v22, v0

    const/high16 v23, 0x4200

    invoke-virtual/range {v22 .. v23}, Landroid/widget/SpringDynamics;->setMinMaxPosition(F)V

    goto/16 :goto_4

    .line 593
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

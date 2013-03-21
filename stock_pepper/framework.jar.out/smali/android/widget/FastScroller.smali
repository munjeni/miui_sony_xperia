.class Landroid/widget/FastScroller;
.super Ljava/lang/Object;
.source "FastScroller.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/FastScroller$ScrollFade;
    }
.end annotation


# static fields
.field private static final ATTRS:[I = null

.field private static final DEFAULT_STATES:[I = null

.field private static final FADE_TIMEOUT:I = 0x5dc

.field private static MIN_PAGES:I = 0x0

.field private static final OVERLAY_AT_THUMB:I = 0x1

.field private static final OVERLAY_FLOATING:I = 0x0

.field private static final OVERLAY_POSITION:I = 0x5

.field private static final PENDING_DRAG_DELAY:I = 0xb4

.field private static final PRESSED_STATES:[I = null

.field private static final PREVIEW_BACKGROUND_LEFT:I = 0x3

.field private static final PREVIEW_BACKGROUND_RIGHT:I = 0x4

.field private static final STATE_DRAGGING:I = 0x3

.field private static final STATE_ENTER:I = 0x1

.field private static final STATE_EXIT:I = 0x4

.field private static final STATE_NONE:I = 0x0

.field private static final STATE_VISIBLE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "FastScroller"

.field private static final TEXT_COLOR:I = 0x0

.field private static final THUMB_DRAWABLE:I = 0x1

.field private static final TRACK_DRAWABLE:I = 0x2


# instance fields
.field private mAlwaysShow:Z

.field private mChangedBounds:Z

.field private final mDeferStartDrag:Ljava/lang/Runnable;

.field private mDrawOverlay:Z

.field private mHandler:Landroid/os/Handler;

.field mInitialTouchY:F

.field private mItemCount:I

.field mList:Landroid/widget/AbsListView;

.field mListAdapter:Landroid/widget/BaseAdapter;

.field private mListOffset:I

.field private mLongList:Z

.field private mMatchDragPosition:Z

.field private mMultiPointerUsed:Z

.field private mOverlayDrawable:Landroid/graphics/drawable/Drawable;

.field private mOverlayDrawableLeft:Landroid/graphics/drawable/Drawable;

.field private mOverlayDrawableRight:Landroid/graphics/drawable/Drawable;

.field private mOverlayPos:Landroid/graphics/RectF;

.field private mOverlayPosition:I

.field private mOverlaySize:I

.field private mPaint:Landroid/graphics/Paint;

.field mPendingDrag:Z

.field private mPosition:I

.field private mScaledTouchSlop:I

.field mScrollCompleted:Z

.field private mScrollFade:Landroid/widget/FastScroller$ScrollFade;

.field private mSectionIndexer:Landroid/widget/SectionIndexer;

.field private mSectionText:Ljava/lang/String;

.field private mSections:[Ljava/lang/Object;

.field private mState:I

.field private mThumbDrawable:Landroid/graphics/drawable/Drawable;

.field mThumbH:I

.field mThumbW:I

.field mThumbY:I

.field private final mTmpRect:Landroid/graphics/Rect;

.field private mTrackDrawable:Landroid/graphics/drawable/Drawable;

.field private mVisibleItem:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 47
    const/4 v0, 0x4

    sput v0, Landroid/widget/FastScroller;->MIN_PAGES:I

    .line 59
    const/4 v0, 0x1

    new-array v0, v0, [I

    const v1, 0x10100a7

    aput v1, v0, v2

    sput-object v0, Landroid/widget/FastScroller;->PRESSED_STATES:[I

    .line 63
    new-array v0, v2, [I

    sput-object v0, Landroid/widget/FastScroller;->DEFAULT_STATES:[I

    .line 65
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/widget/FastScroller;->ATTRS:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0x59t 0x3t 0x1t 0x1t
        0x36t 0x3t 0x1t 0x1t
        0x39t 0x3t 0x1t 0x1t
        0x37t 0x3t 0x1t 0x1t
        0x38t 0x3t 0x1t 0x1t
        0x3at 0x3t 0x1t 0x1t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/widget/AbsListView;)V
    .locals 1
    .parameter "context"
    .parameter "listView"

    .prologue
    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/FastScroller;->mMultiPointerUsed:Z

    .line 107
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/FastScroller;->mItemCount:I

    .line 117
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Landroid/widget/FastScroller;->mHandler:Landroid/os/Handler;

    .line 139
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/FastScroller;->mTmpRect:Landroid/graphics/Rect;

    .line 141
    new-instance v0, Landroid/widget/FastScroller$1;

    invoke-direct {v0, p0}, Landroid/widget/FastScroller$1;-><init>(Landroid/widget/FastScroller;)V

    iput-object v0, p0, Landroid/widget/FastScroller;->mDeferStartDrag:Ljava/lang/Runnable;

    .line 163
    iput-object p2, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    .line 164
    invoke-direct {p0, p1}, Landroid/widget/FastScroller;->init(Landroid/content/Context;)V

    .line 165
    return-void
.end method

.method private cancelFling()V
    .locals 9

    .prologue
    const-wide/16 v0, 0x0

    const/4 v5, 0x0

    .line 692
    const/4 v4, 0x3

    const/4 v7, 0x0

    move-wide v2, v0

    move v6, v5

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v8

    .line 693
    .local v8, cancelFling:Landroid/view/MotionEvent;
    iget-object v0, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v0, v8}, Landroid/widget/AbsListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 694
    invoke-virtual {v8}, Landroid/view/MotionEvent;->recycle()V

    .line 695
    return-void
.end method

.method private getThumbPositionForListPosition(III)I
    .locals 16
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"
    .parameter "totalItemCount"

    .prologue
    .line 649
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/FastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    if-eqz v13, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/FastScroller;->mListAdapter:Landroid/widget/BaseAdapter;

    if-nez v13, :cond_1

    .line 650
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FastScroller;->getSectionsFromIndexer()V

    .line 652
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/FastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    if-eqz v13, :cond_2

    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/widget/FastScroller;->mMatchDragPosition:Z

    if-nez v13, :cond_4

    .line 653
    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v13}, Landroid/widget/AbsListView;->getHeight()I

    move-result v13

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/FastScroller;->mThumbH:I

    sub-int/2addr v13, v14

    mul-int v13, v13, p1

    sub-int v14, p3, p2

    div-int v8, v13, v14

    .line 687
    :cond_3
    :goto_0
    return v8

    .line 657
    :cond_4
    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/FastScroller;->mListOffset:I

    sub-int p1, p1, v13

    .line 658
    if-gez p1, :cond_5

    .line 659
    const/4 v8, 0x0

    goto :goto_0

    .line 661
    :cond_5
    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/FastScroller;->mListOffset:I

    sub-int p3, p3, v13

    .line 663
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v13}, Landroid/widget/AbsListView;->getHeight()I

    move-result v13

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/FastScroller;->mThumbH:I

    sub-int v12, v13, v14

    .line 665
    .local v12, trackHeight:I
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/FastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    move/from16 v0, p1

    invoke-interface {v13, v0}, Landroid/widget/SectionIndexer;->getSectionForPosition(I)I

    move-result v9

    .line 666
    .local v9, section:I
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/FastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    invoke-interface {v13, v9}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v11

    .line 667
    .local v11, sectionPos:I
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/FastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    add-int/lit8 v14, v9, 0x1

    invoke-interface {v13, v14}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v5

    .line 668
    .local v5, nextSectionPos:I
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/FastScroller;->mSections:[Ljava/lang/Object;

    array-length v10, v13

    .line 669
    .local v10, sectionCount:I
    sub-int v7, v5, v11

    .line 671
    .local v7, positionsInSection:I
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 672
    .local v1, child:Landroid/view/View;
    if-nez v1, :cond_6

    const/4 v2, 0x0

    .line 674
    .local v2, incrementalPos:F
    :goto_1
    int-to-float v13, v11

    sub-float v13, v2, v13

    int-to-float v14, v7

    div-float v6, v13, v14

    .line 675
    .local v6, posWithinSection:F
    int-to-float v13, v9

    add-float/2addr v13, v6

    int-to-float v14, v10

    div-float/2addr v13, v14

    int-to-float v14, v12

    mul-float/2addr v13, v14

    float-to-int v8, v13

    .line 680
    .local v8, result:I
    if-lez p1, :cond_3

    add-int v13, p1, p2

    move/from16 v0, p3

    if-ne v13, v0, :cond_3

    .line 681
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    add-int/lit8 v14, p2, -0x1

    invoke-virtual {v13, v14}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 682
    .local v3, lastChild:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v13}, Landroid/widget/AbsListView;->getHeight()I

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v14}, Landroid/widget/AbsListView;->getPaddingBottom()I

    move-result v14

    sub-int/2addr v13, v14

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v14

    sub-int/2addr v13, v14

    int-to-float v13, v13

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v14

    int-to-float v14, v14

    div-float v4, v13, v14

    .line 684
    .local v4, lastItemVisible:F
    int-to-float v13, v8

    sub-int v14, v12, v8

    int-to-float v14, v14

    mul-float/2addr v14, v4

    add-float/2addr v13, v14

    float-to-int v8, v13

    goto/16 :goto_0

    .line 672
    .end local v2           #incrementalPos:F
    .end local v3           #lastChild:Landroid/view/View;
    .end local v4           #lastItemVisible:F
    .end local v6           #posWithinSection:F
    .end local v8           #result:I
    :cond_6
    move/from16 v0, p1

    int-to-float v13, v0

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v14}, Landroid/widget/AbsListView;->getPaddingTop()I

    move-result v14

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v15

    sub-int/2addr v14, v15

    int-to-float v14, v14

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v15

    int-to-float v15, v15

    div-float/2addr v14, v15

    add-float v2, v13, v14

    goto :goto_1
.end method

.method private init(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 268
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    sget-object v6, Landroid/widget/FastScroller;->ATTRS:[I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 269
    .local v0, ta:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-direct {p0, p1, v5}, Landroid/widget/FastScroller;->useThumbDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V

    .line 270
    const/4 v5, 0x2

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Landroid/widget/FastScroller;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    .line 272
    const/4 v5, 0x3

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Landroid/widget/FastScroller;->mOverlayDrawableLeft:Landroid/graphics/drawable/Drawable;

    .line 273
    const/4 v5, 0x4

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Landroid/widget/FastScroller;->mOverlayDrawableRight:Landroid/graphics/drawable/Drawable;

    .line 274
    const/4 v5, 0x5

    invoke-virtual {v0, v5, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, p0, Landroid/widget/FastScroller;->mOverlayPosition:I

    .line 275
    iput-boolean v3, p0, Landroid/widget/FastScroller;->mScrollCompleted:Z

    .line 277
    invoke-virtual {p0}, Landroid/widget/FastScroller;->getSectionsFromIndexer()V

    .line 279
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1050012

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, Landroid/widget/FastScroller;->mOverlaySize:I

    .line 281
    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5}, Landroid/graphics/RectF;-><init>()V

    iput-object v5, p0, Landroid/widget/FastScroller;->mOverlayPos:Landroid/graphics/RectF;

    .line 282
    new-instance v5, Landroid/widget/FastScroller$ScrollFade;

    invoke-direct {v5, p0}, Landroid/widget/FastScroller$ScrollFade;-><init>(Landroid/widget/FastScroller;)V

    iput-object v5, p0, Landroid/widget/FastScroller;->mScrollFade:Landroid/widget/FastScroller$ScrollFade;

    .line 283
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    iput-object v5, p0, Landroid/widget/FastScroller;->mPaint:Landroid/graphics/Paint;

    .line 284
    iget-object v5, p0, Landroid/widget/FastScroller;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 285
    iget-object v5, p0, Landroid/widget/FastScroller;->mPaint:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 286
    iget-object v5, p0, Landroid/widget/FastScroller;->mPaint:Landroid/graphics/Paint;

    iget v6, p0, Landroid/widget/FastScroller;->mOverlaySize:I

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 288
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 289
    .local v1, textColor:Landroid/content/res/ColorStateList;
    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v2

    .line 290
    .local v2, textColorNormal:I
    iget-object v5, p0, Landroid/widget/FastScroller;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 291
    iget-object v5, p0, Landroid/widget/FastScroller;->mPaint:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 294
    iget-object v5, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v5}, Landroid/widget/AbsListView;->getWidth()I

    move-result v5

    if-lez v5, :cond_0

    iget-object v5, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v5}, Landroid/widget/AbsListView;->getHeight()I

    move-result v5

    if-lez v5, :cond_0

    .line 295
    iget-object v5, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v5}, Landroid/widget/AbsListView;->getWidth()I

    move-result v5

    iget-object v6, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v6}, Landroid/widget/AbsListView;->getHeight()I

    move-result v6

    invoke-virtual {p0, v5, v6, v4, v4}, Landroid/widget/FastScroller;->onSizeChanged(IIII)V

    .line 298
    :cond_0
    iput v4, p0, Landroid/widget/FastScroller;->mState:I

    .line 299
    invoke-direct {p0}, Landroid/widget/FastScroller;->refreshDrawableState()V

    .line 301
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 303
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v5

    iput v5, p0, Landroid/widget/FastScroller;->mScaledTouchSlop:I

    .line 305
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v6, 0xb

    if-lt v5, v6, :cond_1

    :goto_0
    iput-boolean v3, p0, Landroid/widget/FastScroller;->mMatchDragPosition:Z

    .line 308
    iget-object v3, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v3}, Landroid/widget/AbsListView;->getVerticalScrollbarPosition()I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/widget/FastScroller;->setScrollbarPosition(I)V

    .line 309
    return-void

    :cond_1
    move v3, v4

    .line 305
    goto :goto_0
.end method

.method private refreshDrawableState()V
    .locals 3

    .prologue
    .line 182
    iget v1, p0, Landroid/widget/FastScroller;->mState:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    sget-object v0, Landroid/widget/FastScroller;->PRESSED_STATES:[I

    .line 184
    .local v0, state:[I
    :goto_0
    iget-object v1, p0, Landroid/widget/FastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/FastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 185
    iget-object v1, p0, Landroid/widget/FastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 187
    :cond_0
    iget-object v1, p0, Landroid/widget/FastScroller;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/FastScroller;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 188
    iget-object v1, p0, Landroid/widget/FastScroller;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 190
    :cond_1
    return-void

    .line 182
    .end local v0           #state:[I
    :cond_2
    sget-object v0, Landroid/widget/FastScroller;->DEFAULT_STATES:[I

    goto :goto_0
.end method

.method private resetThumbPos()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 238
    iget-object v1, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v1}, Landroid/widget/AbsListView;->getWidth()I

    move-result v0

    .line 240
    .local v0, viewWidth:I
    iget v1, p0, Landroid/widget/FastScroller;->mPosition:I

    packed-switch v1, :pswitch_data_0

    .line 249
    :goto_0
    iget-object v1, p0, Landroid/widget/FastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    const/16 v2, 0xd0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 250
    return-void

    .line 243
    :pswitch_0
    iget-object v1, p0, Landroid/widget/FastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Landroid/widget/FastScroller;->mThumbW:I

    sub-int v2, v0, v2

    iget v3, p0, Landroid/widget/FastScroller;->mThumbH:I

    invoke-virtual {v1, v2, v4, v0, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_0

    .line 246
    :pswitch_1
    iget-object v1, p0, Landroid/widget/FastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Landroid/widget/FastScroller;->mThumbW:I

    iget v3, p0, Landroid/widget/FastScroller;->mThumbH:I

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_0

    .line 240
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private useThumbDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .parameter "context"
    .parameter "drawable"

    .prologue
    .line 253
    iput-object p2, p0, Landroid/widget/FastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    .line 254
    instance-of v0, p2, Landroid/graphics/drawable/NinePatchDrawable;

    if-eqz v0, :cond_0

    .line 255
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050013

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroid/widget/FastScroller;->mThumbW:I

    .line 257
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050014

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroid/widget/FastScroller;->mThumbH:I

    .line 263
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/FastScroller;->mChangedBounds:Z

    .line 264
    return-void

    .line 260
    :cond_0
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Landroid/widget/FastScroller;->mThumbW:I

    .line 261
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Landroid/widget/FastScroller;->mThumbH:I

    goto :goto_0
.end method


# virtual methods
.method beginDrag()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 708
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Landroid/widget/FastScroller;->setState(I)V

    .line 709
    iget-object v0, p0, Landroid/widget/FastScroller;->mListAdapter:Landroid/widget/BaseAdapter;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    if-eqz v0, :cond_0

    .line 710
    invoke-virtual {p0}, Landroid/widget/FastScroller;->getSectionsFromIndexer()V

    .line 712
    :cond_0
    iget-object v0, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    if-eqz v0, :cond_1

    .line 713
    iget-object v0, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->requestDisallowInterceptTouchEvent(Z)V

    .line 714
    iget-object v0, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    .line 717
    :cond_1
    invoke-direct {p0}, Landroid/widget/FastScroller;->cancelFling()V

    .line 718
    return-void
.end method

.method cancelPendingDrag()V
    .locals 2

    .prologue
    .line 698
    iget-object v0, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    iget-object v1, p0, Landroid/widget/FastScroller;->mDeferStartDrag:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 699
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/FastScroller;->mPendingDrag:Z

    .line 700
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 26
    .parameter "canvas"

    .prologue
    .line 321
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FastScroller;->mState:I

    move/from16 v21, v0

    if-nez v21, :cond_1

    .line 424
    :cond_0
    :goto_0
    return-void

    .line 326
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FastScroller;->mThumbY:I

    move/from16 v20, v0

    .line 327
    .local v20, y:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/AbsListView;->getWidth()I

    move-result v19

    .line 328
    .local v19, viewWidth:I
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/FastScroller;->mScrollFade:Landroid/widget/FastScroller$ScrollFade;

    .line 330
    .local v12, scrollFade:Landroid/widget/FastScroller$ScrollFade;
    const/4 v4, -0x1

    .line 331
    .local v4, alpha:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FastScroller;->mState:I

    move/from16 v21, v0

    const/16 v22, 0x4

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_3

    .line 332
    invoke-virtual {v12}, Landroid/widget/FastScroller$ScrollFade;->getAlpha()I

    move-result v4

    .line 333
    const/16 v21, 0x68

    move/from16 v0, v21

    if-ge v4, v0, :cond_2

    .line 334
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v21, v0

    mul-int/lit8 v22, v4, 0x2

    invoke-virtual/range {v21 .. v22}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 336
    :cond_2
    const/4 v8, 0x0

    .line 337
    .local v8, left:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FastScroller;->mPosition:I

    move/from16 v21, v0

    packed-switch v21, :pswitch_data_0

    .line 346
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FastScroller;->mThumbW:I

    move/from16 v23, v0

    add-int v23, v23, v8

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FastScroller;->mThumbH:I

    move/from16 v24, v0

    move-object/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-virtual {v0, v8, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 347
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/FastScroller;->mChangedBounds:Z

    .line 350
    .end local v8           #left:I
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FastScroller;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v21, v0

    if-eqz v21, :cond_4

    .line 351
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v13

    .line 352
    .local v13, thumbBounds:Landroid/graphics/Rect;
    iget v8, v13, Landroid/graphics/Rect;->left:I

    .line 353
    .restart local v8       #left:I
    iget v0, v13, Landroid/graphics/Rect;->bottom:I

    move/from16 v21, v0

    iget v0, v13, Landroid/graphics/Rect;->top:I

    move/from16 v22, v0

    sub-int v21, v21, v22

    div-int/lit8 v7, v21, 0x2

    .line 354
    .local v7, halfThumbHeight:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FastScroller;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v17

    .line 355
    .local v17, trackWidth:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FastScroller;->mThumbW:I

    move/from16 v21, v0

    div-int/lit8 v21, v21, 0x2

    add-int v21, v21, v8

    div-int/lit8 v22, v17, 0x2

    sub-int v16, v21, v22

    .line 356
    .local v16, trackLeft:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FastScroller;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v21, v0

    add-int v22, v16, v17

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/widget/AbsListView;->getHeight()I

    move-result v23

    sub-int v23, v23, v7

    move-object/from16 v0, v21

    move/from16 v1, v16

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-virtual {v0, v1, v7, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 358
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FastScroller;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 361
    .end local v7           #halfThumbHeight:I
    .end local v8           #left:I
    .end local v13           #thumbBounds:Landroid/graphics/Rect;
    .end local v16           #trackLeft:I
    .end local v17           #trackWidth:I
    :cond_4
    const/16 v21, 0x0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p1

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 362
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 363
    const/16 v21, 0x0

    move/from16 v0, v20

    neg-int v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p1

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 366
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FastScroller;->mState:I

    move/from16 v21, v0

    const/16 v22, 0x3

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_6

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/FastScroller;->mDrawOverlay:Z

    move/from16 v21, v0

    if-eqz v21, :cond_6

    .line 367
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FastScroller;->mOverlayPosition:I

    move/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_5

    .line 368
    const/4 v8, 0x0

    .line 369
    .restart local v8       #left:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FastScroller;->mPosition:I

    move/from16 v21, v0

    packed-switch v21, :pswitch_data_1

    .line 373
    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v22

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FastScroller;->mThumbW:I

    move/from16 v23, v0

    sub-int v22, v22, v23

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FastScroller;->mOverlaySize:I

    move/from16 v23, v0

    sub-int v22, v22, v23

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 382
    :goto_2
    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FastScroller;->mThumbH:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FastScroller;->mOverlaySize:I

    move/from16 v23, v0

    sub-int v22, v22, v23

    div-int/lit8 v22, v22, 0x2

    add-int v22, v22, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/widget/AbsListView;->getHeight()I

    move-result v23

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FastScroller;->mOverlaySize:I

    move/from16 v24, v0

    sub-int v23, v23, v24

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->min(II)I

    move-result v22

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->max(II)I

    move-result v15

    .line 385
    .local v15, top:I
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/widget/FastScroller;->mOverlayPos:Landroid/graphics/RectF;

    .line 386
    .local v10, pos:Landroid/graphics/RectF;
    int-to-float v0, v8

    move/from16 v21, v0

    move/from16 v0, v21

    iput v0, v10, Landroid/graphics/RectF;->left:F

    .line 387
    iget v0, v10, Landroid/graphics/RectF;->left:F

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FastScroller;->mOverlaySize:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    add-float v21, v21, v22

    move/from16 v0, v21

    iput v0, v10, Landroid/graphics/RectF;->right:F

    .line 388
    int-to-float v0, v15

    move/from16 v21, v0

    move/from16 v0, v21

    iput v0, v10, Landroid/graphics/RectF;->top:F

    .line 389
    iget v0, v10, Landroid/graphics/RectF;->top:F

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FastScroller;->mOverlaySize:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    add-float v21, v21, v22

    move/from16 v0, v21

    iput v0, v10, Landroid/graphics/RectF;->bottom:F

    .line 390
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FastScroller;->mOverlayDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v21, v0

    if-eqz v21, :cond_5

    .line 391
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FastScroller;->mOverlayDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v21, v0

    iget v0, v10, Landroid/graphics/RectF;->left:F

    move/from16 v22, v0

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v22, v0

    iget v0, v10, Landroid/graphics/RectF;->top:F

    move/from16 v23, v0

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v23, v0

    iget v0, v10, Landroid/graphics/RectF;->right:F

    move/from16 v24, v0

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v24, v0

    iget v0, v10, Landroid/graphics/RectF;->bottom:F

    move/from16 v25, v0

    move/from16 v0, v25

    float-to-int v0, v0

    move/from16 v25, v0

    invoke-virtual/range {v21 .. v25}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 395
    .end local v8           #left:I
    .end local v10           #pos:Landroid/graphics/RectF;
    .end local v15           #top:I
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FastScroller;->mOverlayDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 396
    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/widget/FastScroller;->mPaint:Landroid/graphics/Paint;

    .line 397
    .local v9, paint:Landroid/graphics/Paint;
    invoke-virtual {v9}, Landroid/graphics/Paint;->descent()F

    move-result v5

    .line 398
    .local v5, descent:F
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/widget/FastScroller;->mOverlayPos:Landroid/graphics/RectF;

    .line 399
    .local v11, rectF:Landroid/graphics/RectF;
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/FastScroller;->mTmpRect:Landroid/graphics/Rect;

    .line 400
    .local v14, tmpRect:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FastScroller;->mOverlayDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 401
    iget v0, v14, Landroid/graphics/Rect;->right:I

    move/from16 v21, v0

    iget v0, v14, Landroid/graphics/Rect;->left:I

    move/from16 v22, v0

    sub-int v21, v21, v22

    div-int/lit8 v6, v21, 0x2

    .line 402
    .local v6, hOff:I
    iget v0, v14, Landroid/graphics/Rect;->bottom:I

    move/from16 v21, v0

    iget v0, v14, Landroid/graphics/Rect;->top:I

    move/from16 v22, v0

    sub-int v21, v21, v22

    div-int/lit8 v18, v21, 0x2

    .line 403
    .local v18, vOff:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FastScroller;->mSectionText:Ljava/lang/String;

    move-object/from16 v21, v0

    iget v0, v11, Landroid/graphics/RectF;->left:F

    move/from16 v22, v0

    iget v0, v11, Landroid/graphics/RectF;->right:F

    move/from16 v23, v0

    add-float v22, v22, v23

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v22, v0

    div-int/lit8 v22, v22, 0x2

    sub-int v22, v22, v6

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    iget v0, v11, Landroid/graphics/RectF;->bottom:F

    move/from16 v23, v0

    iget v0, v11, Landroid/graphics/RectF;->top:F

    move/from16 v24, v0

    add-float v23, v23, v24

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v23, v0

    div-int/lit8 v23, v23, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FastScroller;->mOverlaySize:I

    move/from16 v24, v0

    div-int/lit8 v24, v24, 0x4

    add-int v23, v23, v24

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    sub-float v23, v23, v5

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v24, v0

    sub-float v23, v23, v24

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 340
    .end local v5           #descent:F
    .end local v6           #hOff:I
    .end local v9           #paint:Landroid/graphics/Paint;
    .end local v11           #rectF:Landroid/graphics/RectF;
    .end local v14           #tmpRect:Landroid/graphics/Rect;
    .end local v18           #vOff:I
    .restart local v8       #left:I
    :pswitch_0
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FastScroller;->mThumbW:I

    move/from16 v21, v0

    mul-int v21, v21, v4

    move/from16 v0, v21

    div-int/lit16 v0, v0, 0xd0

    move/from16 v21, v0

    sub-int v8, v19, v21

    .line 341
    goto/16 :goto_1

    .line 343
    :pswitch_1
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FastScroller;->mThumbW:I

    move/from16 v21, v0

    move/from16 v0, v21

    neg-int v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FastScroller;->mThumbW:I

    move/from16 v22, v0

    mul-int v22, v22, v4

    move/from16 v0, v22

    div-int/lit16 v0, v0, 0xd0

    move/from16 v22, v0

    add-int v8, v21, v22

    goto/16 :goto_1

    .line 377
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v21

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FastScroller;->mThumbW:I

    move/from16 v22, v0

    add-int v21, v21, v22

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/AbsListView;->getWidth()I

    move-result v22

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FastScroller;->mOverlaySize:I

    move/from16 v23, v0

    sub-int v22, v22, v23

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->min(II)I

    move-result v8

    goto/16 :goto_2

    .line 406
    .end local v8           #left:I
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FastScroller;->mState:I

    move/from16 v21, v0

    const/16 v22, 0x4

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_0

    .line 407
    if-nez v4, :cond_7

    .line 408
    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/FastScroller;->setState(I)V

    goto/16 :goto_0

    .line 412
    :cond_7
    const/4 v8, 0x0

    .line 413
    .restart local v8       #left:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FastScroller;->mPosition:I

    move/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_8

    .line 414
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FastScroller;->mThumbW:I

    move/from16 v21, v0

    sub-int v8, v19, v21

    .line 417
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FastScroller;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v21, v0

    if-eqz v21, :cond_9

    .line 418
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FastScroller;->mThumbW:I

    move/from16 v23, v0

    add-int v23, v23, v8

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/widget/AbsListView;->getHeight()I

    move-result v24

    move-object/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-virtual {v0, v8, v1, v2, v3}, Landroid/widget/AbsListView;->invalidate(IIII)V

    goto/16 :goto_0

    .line 420
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FastScroller;->mThumbW:I

    move/from16 v22, v0

    add-int v22, v22, v8

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FastScroller;->mThumbH:I

    move/from16 v23, v0

    add-int v23, v23, v20

    move-object/from16 v0, v21

    move/from16 v1, v20

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-virtual {v0, v8, v1, v2, v3}, Landroid/widget/AbsListView;->invalidate(IIII)V

    goto/16 :goto_0

    .line 337
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 369
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
    .end packed-switch
.end method

.method getSectionIndexer()Landroid/widget/SectionIndexer;
    .locals 1

    .prologue
    .line 496
    iget-object v0, p0, Landroid/widget/FastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    return-object v0
.end method

.method getSections()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 500
    iget-object v0, p0, Landroid/widget/FastScroller;->mListAdapter:Landroid/widget/BaseAdapter;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    if-eqz v0, :cond_0

    .line 501
    invoke-virtual {p0}, Landroid/widget/FastScroller;->getSectionsFromIndexer()V

    .line 503
    :cond_0
    iget-object v0, p0, Landroid/widget/FastScroller;->mSections:[Ljava/lang/Object;

    return-object v0
.end method

.method getSectionsFromIndexer()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 507
    iget-object v2, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v2}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 508
    .local v0, adapter:Landroid/widget/Adapter;
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/widget/FastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    .line 509
    instance-of v2, v0, Landroid/widget/HeaderViewListAdapter;

    if-eqz v2, :cond_0

    move-object v2, v0

    .line 510
    check-cast v2, Landroid/widget/HeaderViewListAdapter;

    invoke-virtual {v2}, Landroid/widget/HeaderViewListAdapter;->getHeadersCount()I

    move-result v2

    iput v2, p0, Landroid/widget/FastScroller;->mListOffset:I

    .line 511
    check-cast v0, Landroid/widget/HeaderViewListAdapter;

    .end local v0           #adapter:Landroid/widget/Adapter;
    invoke-virtual {v0}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 513
    .restart local v0       #adapter:Landroid/widget/Adapter;
    :cond_0
    instance-of v2, v0, Landroid/widget/ExpandableListConnector;

    if-eqz v2, :cond_2

    move-object v2, v0

    .line 514
    check-cast v2, Landroid/widget/ExpandableListConnector;

    invoke-virtual {v2}, Landroid/widget/ExpandableListConnector;->getAdapter()Landroid/widget/ExpandableListAdapter;

    move-result-object v1

    .line 515
    .local v1, expAdapter:Landroid/widget/ExpandableListAdapter;
    instance-of v2, v1, Landroid/widget/SectionIndexer;

    if-eqz v2, :cond_1

    .line 516
    check-cast v1, Landroid/widget/SectionIndexer;

    .end local v1           #expAdapter:Landroid/widget/ExpandableListAdapter;
    iput-object v1, p0, Landroid/widget/FastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    .line 517
    check-cast v0, Landroid/widget/BaseAdapter;

    .end local v0           #adapter:Landroid/widget/Adapter;
    iput-object v0, p0, Landroid/widget/FastScroller;->mListAdapter:Landroid/widget/BaseAdapter;

    .line 518
    iget-object v2, p0, Landroid/widget/FastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    invoke-interface {v2}, Landroid/widget/SectionIndexer;->getSections()[Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Landroid/widget/FastScroller;->mSections:[Ljava/lang/Object;

    .line 533
    :cond_1
    :goto_0
    return-void

    .line 521
    .restart local v0       #adapter:Landroid/widget/Adapter;
    :cond_2
    instance-of v2, v0, Landroid/widget/SectionIndexer;

    if-eqz v2, :cond_3

    move-object v2, v0

    .line 522
    check-cast v2, Landroid/widget/BaseAdapter;

    iput-object v2, p0, Landroid/widget/FastScroller;->mListAdapter:Landroid/widget/BaseAdapter;

    .line 523
    check-cast v0, Landroid/widget/SectionIndexer;

    .end local v0           #adapter:Landroid/widget/Adapter;
    iput-object v0, p0, Landroid/widget/FastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    .line 524
    iget-object v2, p0, Landroid/widget/FastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    invoke-interface {v2}, Landroid/widget/SectionIndexer;->getSections()[Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Landroid/widget/FastScroller;->mSections:[Ljava/lang/Object;

    .line 525
    iget-object v2, p0, Landroid/widget/FastScroller;->mSections:[Ljava/lang/Object;

    if-nez v2, :cond_1

    .line 526
    new-array v2, v3, [Ljava/lang/String;

    const-string v3, " "

    aput-object v3, v2, v4

    iput-object v2, p0, Landroid/widget/FastScroller;->mSections:[Ljava/lang/Object;

    goto :goto_0

    .line 529
    .restart local v0       #adapter:Landroid/widget/Adapter;
    :cond_3
    check-cast v0, Landroid/widget/BaseAdapter;

    .end local v0           #adapter:Landroid/widget/Adapter;
    iput-object v0, p0, Landroid/widget/FastScroller;->mListAdapter:Landroid/widget/BaseAdapter;

    .line 530
    new-array v2, v3, [Ljava/lang/String;

    const-string v3, " "

    aput-object v3, v2, v4

    iput-object v2, p0, Landroid/widget/FastScroller;->mSections:[Ljava/lang/Object;

    goto :goto_0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 234
    iget v0, p0, Landroid/widget/FastScroller;->mState:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 207
    iget v0, p0, Landroid/widget/FastScroller;->mThumbW:I

    return v0
.end method

.method public isAlwaysShowEnabled()Z
    .locals 1

    .prologue
    .line 178
    iget-boolean v0, p0, Landroid/widget/FastScroller;->mAlwaysShow:Z

    return v0
.end method

.method isPointInside(FF)Z
    .locals 5
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 878
    const/4 v0, 0x0

    .line 879
    .local v0, inTrack:Z
    iget v3, p0, Landroid/widget/FastScroller;->mPosition:I

    packed-switch v3, :pswitch_data_0

    .line 883
    iget-object v3, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v3}, Landroid/widget/AbsListView;->getWidth()I

    move-result v3

    iget v4, p0, Landroid/widget/FastScroller;->mThumbW:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    cmpl-float v3, p1, v3

    if-lez v3, :cond_1

    move v0, v1

    .line 891
    :goto_0
    if-eqz v0, :cond_3

    iget-object v3, p0, Landroid/widget/FastScroller;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_0

    iget v3, p0, Landroid/widget/FastScroller;->mThumbY:I

    int-to-float v3, v3

    cmpl-float v3, p2, v3

    if-ltz v3, :cond_3

    iget v3, p0, Landroid/widget/FastScroller;->mThumbY:I

    iget v4, p0, Landroid/widget/FastScroller;->mThumbH:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    cmpg-float v3, p2, v3

    if-gtz v3, :cond_3

    :cond_0
    :goto_1
    return v1

    :cond_1
    move v0, v2

    .line 883
    goto :goto_0

    .line 886
    :pswitch_0
    iget v3, p0, Landroid/widget/FastScroller;->mThumbW:I

    int-to-float v3, v3

    cmpg-float v3, p1, v3

    if-gez v3, :cond_2

    move v0, v1

    :goto_2
    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_2

    :cond_3
    move v1, v2

    .line 891
    goto :goto_1

    .line 879
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method isVisible()Z
    .locals 1

    .prologue
    .line 316
    iget v0, p0, Landroid/widget/FastScroller;->mState:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "ev"

    .prologue
    .line 721
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 737
    :cond_0
    :goto_0
    :pswitch_0
    const/4 v0, 0x0

    :goto_1
    return v0

    .line 723
    :pswitch_1
    iget v0, p0, Landroid/widget/FastScroller;->mState:I

    if-lez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/FastScroller;->isPointInside(FF)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 724
    iget-object v0, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->isInScrollingContainer()Z

    move-result v0

    if-nez v0, :cond_1

    .line 725
    invoke-virtual {p0}, Landroid/widget/FastScroller;->beginDrag()V

    .line 726
    const/4 v0, 0x1

    goto :goto_1

    .line 728
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Landroid/widget/FastScroller;->mInitialTouchY:F

    .line 729
    invoke-virtual {p0}, Landroid/widget/FastScroller;->startPendingDrag()V

    goto :goto_0

    .line 734
    :pswitch_2
    invoke-virtual {p0}, Landroid/widget/FastScroller;->cancelPendingDrag()V

    goto :goto_0

    .line 721
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method onItemCountChanged(II)V
    .locals 1
    .parameter "oldCount"
    .parameter "newCount"

    .prologue
    .line 453
    iget-boolean v0, p0, Landroid/widget/FastScroller;->mAlwaysShow:Z

    if-eqz v0, :cond_0

    .line 454
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/FastScroller;->mLongList:Z

    .line 456
    :cond_0
    return-void
.end method

.method onScroll(Landroid/widget/AbsListView;III)V
    .locals 5
    .parameter "view"
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"
    .parameter "totalItemCount"

    .prologue
    const/4 v4, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 461
    iget v0, p0, Landroid/widget/FastScroller;->mItemCount:I

    if-eq v0, p4, :cond_0

    if-lez p3, :cond_0

    .line 462
    iput p4, p0, Landroid/widget/FastScroller;->mItemCount:I

    .line 463
    iget v0, p0, Landroid/widget/FastScroller;->mItemCount:I

    div-int/2addr v0, p3

    sget v3, Landroid/widget/FastScroller;->MIN_PAGES:I

    if-lt v0, v3, :cond_3

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Landroid/widget/FastScroller;->mLongList:Z

    .line 465
    :cond_0
    iget-boolean v0, p0, Landroid/widget/FastScroller;->mAlwaysShow:Z

    if-eqz v0, :cond_1

    .line 466
    iput-boolean v1, p0, Landroid/widget/FastScroller;->mLongList:Z

    .line 468
    :cond_1
    iget-boolean v0, p0, Landroid/widget/FastScroller;->mLongList:Z

    if-nez v0, :cond_4

    .line 469
    iget v0, p0, Landroid/widget/FastScroller;->mState:I

    if-eqz v0, :cond_2

    .line 470
    invoke-virtual {p0, v2}, Landroid/widget/FastScroller;->setState(I)V

    .line 493
    :cond_2
    :goto_1
    return-void

    :cond_3
    move v0, v2

    .line 463
    goto :goto_0

    .line 474
    :cond_4
    sub-int v0, p4, p3

    if-lez v0, :cond_5

    iget v0, p0, Landroid/widget/FastScroller;->mState:I

    if-eq v0, v4, :cond_5

    .line 475
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/FastScroller;->getThumbPositionForListPosition(III)I

    move-result v0

    iput v0, p0, Landroid/widget/FastScroller;->mThumbY:I

    .line 477
    iget-boolean v0, p0, Landroid/widget/FastScroller;->mChangedBounds:Z

    if-eqz v0, :cond_5

    .line 478
    invoke-direct {p0}, Landroid/widget/FastScroller;->resetThumbPos()V

    .line 479
    iput-boolean v2, p0, Landroid/widget/FastScroller;->mChangedBounds:Z

    .line 482
    :cond_5
    iput-boolean v1, p0, Landroid/widget/FastScroller;->mScrollCompleted:Z

    .line 483
    iget v0, p0, Landroid/widget/FastScroller;->mVisibleItem:I

    if-eq p2, v0, :cond_2

    .line 486
    iput p2, p0, Landroid/widget/FastScroller;->mVisibleItem:I

    .line 487
    iget v0, p0, Landroid/widget/FastScroller;->mState:I

    if-eq v0, v4, :cond_2

    .line 488
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/widget/FastScroller;->setState(I)V

    .line 489
    iget-boolean v0, p0, Landroid/widget/FastScroller;->mAlwaysShow:Z

    if-nez v0, :cond_2

    .line 490
    iget-object v0, p0, Landroid/widget/FastScroller;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/widget/FastScroller;->mScrollFade:Landroid/widget/FastScroller$ScrollFade;

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1
.end method

.method public onSectionsChanged()V
    .locals 1

    .prologue
    .line 536
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/FastScroller;->mListAdapter:Landroid/widget/BaseAdapter;

    .line 537
    return-void
.end method

.method onSizeChanged(IIII)V
    .locals 6
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    const/4 v4, 0x0

    .line 427
    iget-object v1, p0, Landroid/widget/FastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 428
    iget v1, p0, Landroid/widget/FastScroller;->mPosition:I

    packed-switch v1, :pswitch_data_0

    .line 432
    iget-object v1, p0, Landroid/widget/FastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Landroid/widget/FastScroller;->mThumbW:I

    sub-int v2, p1, v2

    iget v3, p0, Landroid/widget/FastScroller;->mThumbH:I

    invoke-virtual {v1, v2, v4, p1, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 439
    :cond_0
    :goto_0
    iget v1, p0, Landroid/widget/FastScroller;->mOverlayPosition:I

    if-nez v1, :cond_1

    .line 440
    iget-object v0, p0, Landroid/widget/FastScroller;->mOverlayPos:Landroid/graphics/RectF;

    .line 441
    .local v0, pos:Landroid/graphics/RectF;
    iget v1, p0, Landroid/widget/FastScroller;->mOverlaySize:I

    sub-int v1, p1, v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 442
    iget v1, v0, Landroid/graphics/RectF;->left:F

    iget v2, p0, Landroid/widget/FastScroller;->mOverlaySize:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 443
    div-int/lit8 v1, p2, 0xa

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 444
    iget v1, v0, Landroid/graphics/RectF;->top:F

    iget v2, p0, Landroid/widget/FastScroller;->mOverlaySize:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 445
    iget-object v1, p0, Landroid/widget/FastScroller;->mOverlayDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 446
    iget-object v1, p0, Landroid/widget/FastScroller;->mOverlayDrawable:Landroid/graphics/drawable/Drawable;

    iget v2, v0, Landroid/graphics/RectF;->left:F

    float-to-int v2, v2

    iget v3, v0, Landroid/graphics/RectF;->top:F

    float-to-int v3, v3

    iget v4, v0, Landroid/graphics/RectF;->right:F

    float-to-int v4, v4

    iget v5, v0, Landroid/graphics/RectF;->bottom:F

    float-to-int v5, v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 450
    .end local v0           #pos:Landroid/graphics/RectF;
    :cond_1
    return-void

    .line 435
    :pswitch_0
    iget-object v1, p0, Landroid/widget/FastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Landroid/widget/FastScroller;->mThumbW:I

    iget v3, p0, Landroid/widget/FastScroller;->mThumbH:I

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_0

    .line 428
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12
    .parameter "me"

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x3

    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 741
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v3

    .line 743
    .local v3, pointerCount:I
    iget v8, p0, Landroid/widget/FastScroller;->mState:I

    if-nez v8, :cond_0

    .line 746
    if-le v3, v7, :cond_3

    .line 747
    invoke-direct {p0}, Landroid/widget/FastScroller;->resetThumbPos()V

    .line 748
    invoke-virtual {p0, v10}, Landroid/widget/FastScroller;->setState(I)V

    .line 755
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    and-int/lit16 v0, v8, 0xff

    .line 757
    .local v0, action:I
    if-eqz v0, :cond_1

    const/4 v8, 0x5

    if-ne v0, v8, :cond_7

    .line 758
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    invoke-virtual {p0, v8, v9}, Landroid/widget/FastScroller;->isPointInside(FF)Z

    move-result v8

    if-nez v8, :cond_2

    if-le v3, v7, :cond_3

    .line 759
    :cond_2
    iget-object v8, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v8}, Landroid/widget/AbsListView;->isInScrollingContainer()Z

    move-result v8

    if-nez v8, :cond_6

    .line 760
    if-nez v0, :cond_4

    .line 761
    invoke-virtual {p0}, Landroid/widget/FastScroller;->beginDrag()V

    move v6, v7

    .line 874
    .end local v0           #action:I
    :cond_3
    :goto_0
    return v6

    .line 765
    .restart local v0       #action:I
    :cond_4
    invoke-virtual {p0, v10}, Landroid/widget/FastScroller;->setState(I)V

    .line 766
    iget-object v8, p0, Landroid/widget/FastScroller;->mListAdapter:Landroid/widget/BaseAdapter;

    if-nez v8, :cond_5

    iget-object v8, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    if-eqz v8, :cond_5

    .line 767
    invoke-virtual {p0}, Landroid/widget/FastScroller;->getSectionsFromIndexer()V

    .line 769
    :cond_5
    iget-object v8, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    if-eqz v8, :cond_3

    .line 770
    iget-object v8, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v8, v7}, Landroid/widget/AbsListView;->requestDisallowInterceptTouchEvent(Z)V

    .line 771
    iget-object v8, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v8, v7}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    goto :goto_0

    .line 776
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    iput v7, p0, Landroid/widget/FastScroller;->mInitialTouchY:F

    .line 777
    invoke-virtual {p0}, Landroid/widget/FastScroller;->startPendingDrag()V

    goto :goto_0

    .line 779
    :cond_7
    const/4 v8, 0x6

    if-ne v0, v8, :cond_8

    .line 782
    if-ne v3, v11, :cond_3

    .line 783
    invoke-virtual {p0, v11}, Landroid/widget/FastScroller;->setState(I)V

    goto :goto_0

    .line 787
    :cond_8
    if-ne v0, v7, :cond_f

    .line 788
    iget-boolean v8, p0, Landroid/widget/FastScroller;->mPendingDrag:Z

    if-eqz v8, :cond_a

    .line 790
    invoke-virtual {p0}, Landroid/widget/FastScroller;->beginDrag()V

    .line 792
    iget-object v8, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v8}, Landroid/widget/AbsListView;->getHeight()I

    move-result v4

    .line 794
    .local v4, viewHeight:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    float-to-int v8, v8

    iget v9, p0, Landroid/widget/FastScroller;->mThumbH:I

    sub-int/2addr v8, v9

    add-int/lit8 v2, v8, 0xa

    .line 795
    .local v2, newThumbY:I
    if-gez v2, :cond_e

    .line 796
    const/4 v2, 0x0

    .line 800
    :cond_9
    :goto_1
    iput v2, p0, Landroid/widget/FastScroller;->mThumbY:I

    .line 801
    iget v8, p0, Landroid/widget/FastScroller;->mThumbY:I

    int-to-float v8, v8

    iget v9, p0, Landroid/widget/FastScroller;->mThumbH:I

    sub-int v9, v4, v9

    int-to-float v9, v9

    div-float/2addr v8, v9

    invoke-virtual {p0, v8}, Landroid/widget/FastScroller;->scrollTo(F)V

    .line 803
    invoke-virtual {p0}, Landroid/widget/FastScroller;->cancelPendingDrag()V

    .line 807
    .end local v2           #newThumbY:I
    .end local v4           #viewHeight:I
    :cond_a
    iget v8, p0, Landroid/widget/FastScroller;->mState:I

    if-eq v8, v10, :cond_b

    iget-boolean v8, p0, Landroid/widget/FastScroller;->mMultiPointerUsed:Z

    if-eqz v8, :cond_3

    .line 808
    :cond_b
    iget-object v8, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    if-eqz v8, :cond_c

    .line 812
    iget-object v8, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v8, v6}, Landroid/widget/AbsListView;->requestDisallowInterceptTouchEvent(Z)V

    .line 813
    iget-object v8, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v8, v6}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    .line 815
    :cond_c
    invoke-virtual {p0, v11}, Landroid/widget/FastScroller;->setState(I)V

    .line 816
    iget-object v1, p0, Landroid/widget/FastScroller;->mHandler:Landroid/os/Handler;

    .line 817
    .local v1, handler:Landroid/os/Handler;
    iget-object v8, p0, Landroid/widget/FastScroller;->mScrollFade:Landroid/widget/FastScroller$ScrollFade;

    invoke-virtual {v1, v8}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 818
    iget-boolean v8, p0, Landroid/widget/FastScroller;->mAlwaysShow:Z

    if-nez v8, :cond_d

    .line 819
    iget-object v8, p0, Landroid/widget/FastScroller;->mScrollFade:Landroid/widget/FastScroller$ScrollFade;

    const-wide/16 v9, 0x3e8

    invoke-virtual {v1, v8, v9, v10}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 822
    :cond_d
    iget-object v8, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v8}, Landroid/widget/AbsListView;->invalidate()V

    .line 823
    iput-boolean v6, p0, Landroid/widget/FastScroller;->mMultiPointerUsed:Z

    move v6, v7

    .line 824
    goto/16 :goto_0

    .line 797
    .end local v1           #handler:Landroid/os/Handler;
    .restart local v2       #newThumbY:I
    .restart local v4       #viewHeight:I
    :cond_e
    iget v8, p0, Landroid/widget/FastScroller;->mThumbH:I

    add-int/2addr v8, v2

    if-le v8, v4, :cond_9

    .line 798
    iget v8, p0, Landroid/widget/FastScroller;->mThumbH:I

    sub-int v2, v4, v8

    goto :goto_1

    .line 826
    .end local v2           #newThumbY:I
    .end local v4           #viewHeight:I
    :cond_f
    if-ne v0, v11, :cond_18

    .line 827
    iget-boolean v8, p0, Landroid/widget/FastScroller;->mPendingDrag:Z

    if-eqz v8, :cond_12

    .line 828
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    .line 829
    .local v5, y:F
    iget v8, p0, Landroid/widget/FastScroller;->mInitialTouchY:F

    sub-float v8, v5, v8

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    iget v9, p0, Landroid/widget/FastScroller;->mScaledTouchSlop:I

    int-to-float v9, v9

    cmpl-float v8, v8, v9

    if-lez v8, :cond_12

    .line 830
    invoke-virtual {p0, v10}, Landroid/widget/FastScroller;->setState(I)V

    .line 831
    iget-object v8, p0, Landroid/widget/FastScroller;->mListAdapter:Landroid/widget/BaseAdapter;

    if-nez v8, :cond_10

    iget-object v8, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    if-eqz v8, :cond_10

    .line 832
    invoke-virtual {p0}, Landroid/widget/FastScroller;->getSectionsFromIndexer()V

    .line 834
    :cond_10
    iget-object v8, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    if-eqz v8, :cond_11

    .line 835
    iget-object v8, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v8, v7}, Landroid/widget/AbsListView;->requestDisallowInterceptTouchEvent(Z)V

    .line 836
    iget-object v8, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v8, v7}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    .line 839
    :cond_11
    invoke-direct {p0}, Landroid/widget/FastScroller;->cancelFling()V

    .line 840
    invoke-virtual {p0}, Landroid/widget/FastScroller;->cancelPendingDrag()V

    .line 844
    .end local v5           #y:F
    :cond_12
    iget v8, p0, Landroid/widget/FastScroller;->mState:I

    if-ne v8, v10, :cond_3

    .line 845
    iget-object v8, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v8}, Landroid/widget/AbsListView;->getHeight()I

    move-result v4

    .line 849
    .restart local v4       #viewHeight:I
    if-le v3, v7, :cond_14

    .line 850
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    add-float/2addr v6, v8

    float-to-int v6, v6

    div-int/lit8 v6, v6, 0x2

    iget v8, p0, Landroid/widget/FastScroller;->mThumbH:I

    sub-int/2addr v6, v8

    add-int/lit8 v2, v6, 0xa

    .line 851
    .restart local v2       #newThumbY:I
    iput-boolean v7, p0, Landroid/widget/FastScroller;->mMultiPointerUsed:Z

    .line 856
    :goto_2
    if-gez v2, :cond_15

    .line 857
    const/4 v2, 0x0

    .line 861
    :cond_13
    :goto_3
    iget v6, p0, Landroid/widget/FastScroller;->mThumbY:I

    sub-int/2addr v6, v2

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    if-ge v6, v11, :cond_16

    move v6, v7

    .line 862
    goto/16 :goto_0

    .line 854
    .end local v2           #newThumbY:I
    :cond_14
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v6, v6

    iget v8, p0, Landroid/widget/FastScroller;->mThumbH:I

    sub-int/2addr v6, v8

    add-int/lit8 v2, v6, 0xa

    .restart local v2       #newThumbY:I
    goto :goto_2

    .line 858
    :cond_15
    iget v6, p0, Landroid/widget/FastScroller;->mThumbH:I

    add-int/2addr v6, v2

    if-le v6, v4, :cond_13

    .line 859
    iget v6, p0, Landroid/widget/FastScroller;->mThumbH:I

    sub-int v2, v4, v6

    goto :goto_3

    .line 864
    :cond_16
    iput v2, p0, Landroid/widget/FastScroller;->mThumbY:I

    .line 866
    iget-boolean v6, p0, Landroid/widget/FastScroller;->mScrollCompleted:Z

    if-eqz v6, :cond_17

    .line 867
    iget v6, p0, Landroid/widget/FastScroller;->mThumbY:I

    int-to-float v6, v6

    iget v8, p0, Landroid/widget/FastScroller;->mThumbH:I

    sub-int v8, v4, v8

    int-to-float v8, v8

    div-float/2addr v6, v8

    invoke-virtual {p0, v6}, Landroid/widget/FastScroller;->scrollTo(F)V

    :cond_17
    move v6, v7

    .line 869
    goto/16 :goto_0

    .line 871
    .end local v2           #newThumbY:I
    .end local v4           #viewHeight:I
    :cond_18
    if-ne v0, v10, :cond_3

    .line 872
    invoke-virtual {p0}, Landroid/widget/FastScroller;->cancelPendingDrag()V

    goto/16 :goto_0
.end method

.method scrollTo(F)V
    .locals 22
    .parameter "position"

    .prologue
    .line 540
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/AbsListView;->getCount()I

    move-result v2

    .line 541
    .local v2, count:I
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/FastScroller;->mScrollCompleted:Z

    .line 542
    const/high16 v19, 0x3f80

    int-to-float v0, v2

    move/from16 v20, v0

    div-float v19, v19, v20

    const/high16 v20, 0x4100

    div-float v7, v19, v20

    .line 543
    .local v7, fThreshold:F
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FastScroller;->mSections:[Ljava/lang/Object;

    move-object/from16 v17, v0

    .line 545
    .local v17, sections:[Ljava/lang/Object;
    if-eqz v17, :cond_b

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_b

    .line 546
    move-object/from16 v0, v17

    array-length v9, v0

    .line 547
    .local v9, nSections:I
    int-to-float v0, v9

    move/from16 v19, v0

    mul-float v19, v19, p1

    move/from16 v0, v19

    float-to-int v15, v0

    .line 548
    .local v15, section:I
    if-lt v15, v9, :cond_0

    .line 549
    add-int/lit8 v15, v9, -0x1

    .line 551
    :cond_0
    move v3, v15

    .line 552
    .local v3, exactSection:I
    move/from16 v16, v15

    .line 553
    .local v16, sectionIndex:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v15}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v8

    .line 560
    .local v8, index:I
    move v10, v2

    .line 561
    .local v10, nextIndex:I
    move v13, v8

    .line 562
    .local v13, prevIndex:I
    move v14, v15

    .line 563
    .local v14, prevSection:I
    add-int/lit8 v12, v15, 0x1

    .line 565
    .local v12, nextSection:I
    add-int/lit8 v19, v9, -0x1

    move/from16 v0, v19

    if-ge v15, v0, :cond_1

    .line 566
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    move-object/from16 v19, v0

    add-int/lit8 v20, v15, 0x1

    invoke-interface/range {v19 .. v20}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v10

    .line 570
    :cond_1
    if-ne v10, v8, :cond_3

    .line 572
    :cond_2
    if-lez v15, :cond_3

    .line 573
    add-int/lit8 v15, v15, -0x1

    .line 574
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v15}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v13

    .line 575
    if-eq v13, v8, :cond_4

    .line 576
    move v14, v15

    .line 577
    move/from16 v16, v15

    .line 592
    :cond_3
    :goto_0
    add-int/lit8 v11, v12, 0x1

    .line 594
    .local v11, nextNextSection:I
    :goto_1
    if-ge v11, v9, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v11}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v19

    move/from16 v0, v19

    if-ne v0, v10, :cond_5

    .line 595
    add-int/lit8 v11, v11, 0x1

    .line 596
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 579
    .end local v11           #nextNextSection:I
    :cond_4
    if-nez v15, :cond_2

    .line 582
    const/16 v16, 0x0

    .line 583
    goto :goto_0

    .line 601
    .restart local v11       #nextNextSection:I
    :cond_5
    int-to-float v0, v14

    move/from16 v19, v0

    int-to-float v0, v9

    move/from16 v20, v0

    div-float v6, v19, v20

    .line 602
    .local v6, fPrev:F
    int-to-float v0, v12

    move/from16 v19, v0

    int-to-float v0, v9

    move/from16 v20, v0

    div-float v5, v19, v20

    .line 603
    .local v5, fNext:F
    if-ne v14, v3, :cond_8

    sub-float v19, p1, v6

    cmpg-float v19, v19, v7

    if-gez v19, :cond_8

    .line 604
    move v8, v13

    .line 610
    :goto_2
    add-int/lit8 v19, v2, -0x1

    move/from16 v0, v19

    if-le v8, v0, :cond_6

    add-int/lit8 v8, v2, -0x1

    .line 612
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    instance-of v0, v0, Landroid/widget/ExpandableListView;

    move/from16 v19, v0

    if-eqz v19, :cond_9

    .line 613
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    check-cast v4, Landroid/widget/ExpandableListView;

    .line 614
    .local v4, expList:Landroid/widget/ExpandableListView;
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FastScroller;->mListOffset:I

    move/from16 v19, v0

    add-int v19, v19, v8

    invoke-static/range {v19 .. v19}, Landroid/widget/ExpandableListView;->getPackedPositionForGroup(I)J

    move-result-wide v19

    move-wide/from16 v0, v19

    invoke-virtual {v4, v0, v1}, Landroid/widget/ExpandableListView;->getFlatListPosition(J)I

    move-result v19

    const/16 v20, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v4, v0, v1}, Landroid/widget/ExpandableListView;->setSelectionFromTop(II)V

    .line 638
    .end local v3           #exactSection:I
    .end local v4           #expList:Landroid/widget/ExpandableListView;
    .end local v5           #fNext:F
    .end local v6           #fPrev:F
    .end local v9           #nSections:I
    .end local v10           #nextIndex:I
    .end local v11           #nextNextSection:I
    .end local v12           #nextSection:I
    .end local v13           #prevIndex:I
    .end local v14           #prevSection:I
    .end local v15           #section:I
    :goto_3
    if-ltz v16, :cond_10

    .line 639
    aget-object v19, v17, v16

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/FastScroller;->mSectionText:Ljava/lang/String;

    .line 640
    .local v18, text:Ljava/lang/String;
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_7

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->charAt(I)C

    move-result v19

    const/16 v20, 0x20

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_f

    :cond_7
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v16

    move/from16 v1, v19

    if-ge v0, v1, :cond_f

    const/16 v19, 0x1

    :goto_4
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/FastScroller;->mDrawOverlay:Z

    .line 645
    .end local v18           #text:Ljava/lang/String;
    :goto_5
    return-void

    .line 606
    .restart local v3       #exactSection:I
    .restart local v5       #fNext:F
    .restart local v6       #fPrev:F
    .restart local v9       #nSections:I
    .restart local v10       #nextIndex:I
    .restart local v11       #nextNextSection:I
    .restart local v12       #nextSection:I
    .restart local v13       #prevIndex:I
    .restart local v14       #prevSection:I
    .restart local v15       #section:I
    :cond_8
    sub-int v19, v10, v13

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    sub-float v20, p1, v6

    mul-float v19, v19, v20

    sub-float v20, v5, v6

    div-float v19, v19, v20

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    add-int v8, v13, v19

    goto/16 :goto_2

    .line 616
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    instance-of v0, v0, Landroid/widget/ListView;

    move/from16 v19, v0

    if-eqz v19, :cond_a

    .line 617
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    move-object/from16 v19, v0

    check-cast v19, Landroid/widget/ListView;

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FastScroller;->mListOffset:I

    move/from16 v20, v0

    add-int v20, v20, v8

    const/16 v21, 0x0

    invoke-virtual/range {v19 .. v21}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    goto :goto_3

    .line 619
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FastScroller;->mListOffset:I

    move/from16 v20, v0

    add-int v20, v20, v8

    invoke-virtual/range {v19 .. v20}, Landroid/widget/AbsListView;->setSelection(I)V

    goto/16 :goto_3

    .line 622
    .end local v3           #exactSection:I
    .end local v5           #fNext:F
    .end local v6           #fPrev:F
    .end local v8           #index:I
    .end local v9           #nSections:I
    .end local v10           #nextIndex:I
    .end local v11           #nextNextSection:I
    .end local v12           #nextSection:I
    .end local v13           #prevIndex:I
    .end local v14           #prevSection:I
    .end local v15           #section:I
    .end local v16           #sectionIndex:I
    :cond_b
    int-to-float v0, v2

    move/from16 v19, v0

    mul-float v19, v19, p1

    move/from16 v0, v19

    float-to-int v8, v0

    .line 624
    .restart local v8       #index:I
    add-int/lit8 v19, v2, -0x1

    move/from16 v0, v19

    if-le v8, v0, :cond_c

    add-int/lit8 v8, v2, -0x1

    .line 626
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    instance-of v0, v0, Landroid/widget/ExpandableListView;

    move/from16 v19, v0

    if-eqz v19, :cond_d

    .line 627
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    check-cast v4, Landroid/widget/ExpandableListView;

    .line 628
    .restart local v4       #expList:Landroid/widget/ExpandableListView;
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FastScroller;->mListOffset:I

    move/from16 v19, v0

    add-int v19, v19, v8

    invoke-static/range {v19 .. v19}, Landroid/widget/ExpandableListView;->getPackedPositionForGroup(I)J

    move-result-wide v19

    move-wide/from16 v0, v19

    invoke-virtual {v4, v0, v1}, Landroid/widget/ExpandableListView;->getFlatListPosition(J)I

    move-result v19

    const/16 v20, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v4, v0, v1}, Landroid/widget/ExpandableListView;->setSelectionFromTop(II)V

    .line 635
    .end local v4           #expList:Landroid/widget/ExpandableListView;
    :goto_6
    const/16 v16, -0x1

    .restart local v16       #sectionIndex:I
    goto/16 :goto_3

    .line 630
    .end local v16           #sectionIndex:I
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    instance-of v0, v0, Landroid/widget/ListView;

    move/from16 v19, v0

    if-eqz v19, :cond_e

    .line 631
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    move-object/from16 v19, v0

    check-cast v19, Landroid/widget/ListView;

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FastScroller;->mListOffset:I

    move/from16 v20, v0

    add-int v20, v20, v8

    const/16 v21, 0x0

    invoke-virtual/range {v19 .. v21}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    goto :goto_6

    .line 633
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FastScroller;->mListOffset:I

    move/from16 v20, v0

    add-int v20, v20, v8

    invoke-virtual/range {v19 .. v20}, Landroid/widget/AbsListView;->setSelection(I)V

    goto :goto_6

    .line 640
    .restart local v16       #sectionIndex:I
    .restart local v18       #text:Ljava/lang/String;
    :cond_f
    const/16 v19, 0x0

    goto/16 :goto_4

    .line 643
    .end local v18           #text:Ljava/lang/String;
    :cond_10
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/FastScroller;->mDrawOverlay:Z

    goto/16 :goto_5
.end method

.method public setAlwaysShow(Z)V
    .locals 4
    .parameter "alwaysShow"

    .prologue
    const/4 v2, 0x2

    .line 168
    iput-boolean p1, p0, Landroid/widget/FastScroller;->mAlwaysShow:Z

    .line 169
    if-eqz p1, :cond_1

    .line 170
    iget-object v0, p0, Landroid/widget/FastScroller;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/widget/FastScroller;->mScrollFade:Landroid/widget/FastScroller$ScrollFade;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 171
    invoke-virtual {p0, v2}, Landroid/widget/FastScroller;->setState(I)V

    .line 175
    :cond_0
    :goto_0
    return-void

    .line 172
    :cond_1
    iget v0, p0, Landroid/widget/FastScroller;->mState:I

    if-ne v0, v2, :cond_0

    .line 173
    iget-object v0, p0, Landroid/widget/FastScroller;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/widget/FastScroller;->mScrollFade:Landroid/widget/FastScroller$ScrollFade;

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public setScrollbarPosition(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 193
    iput p1, p0, Landroid/widget/FastScroller;->mPosition:I

    .line 194
    packed-switch p1, :pswitch_data_0

    .line 198
    iget-object v0, p0, Landroid/widget/FastScroller;->mOverlayDrawableRight:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Landroid/widget/FastScroller;->mOverlayDrawable:Landroid/graphics/drawable/Drawable;

    .line 204
    :goto_0
    return-void

    .line 201
    :pswitch_0
    iget-object v0, p0, Landroid/widget/FastScroller;->mOverlayDrawableLeft:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Landroid/widget/FastScroller;->mOverlayDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 194
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public setState(I)V
    .locals 6
    .parameter "state"

    .prologue
    .line 211
    packed-switch p1, :pswitch_data_0

    .line 229
    :goto_0
    :pswitch_0
    iput p1, p0, Landroid/widget/FastScroller;->mState:I

    .line 230
    invoke-direct {p0}, Landroid/widget/FastScroller;->refreshDrawableState()V

    .line 231
    return-void

    .line 213
    :pswitch_1
    iget-object v1, p0, Landroid/widget/FastScroller;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Landroid/widget/FastScroller;->mScrollFade:Landroid/widget/FastScroller$ScrollFade;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 214
    iget-object v1, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v1}, Landroid/widget/AbsListView;->invalidate()V

    goto :goto_0

    .line 217
    :pswitch_2
    iget v1, p0, Landroid/widget/FastScroller;->mState:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 218
    invoke-direct {p0}, Landroid/widget/FastScroller;->resetThumbPos()V

    .line 222
    :cond_0
    :pswitch_3
    iget-object v1, p0, Landroid/widget/FastScroller;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Landroid/widget/FastScroller;->mScrollFade:Landroid/widget/FastScroller$ScrollFade;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 225
    :pswitch_4
    iget-object v1, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v1}, Landroid/widget/AbsListView;->getWidth()I

    move-result v0

    .line 226
    .local v0, viewWidth:I
    iget-object v1, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    iget v2, p0, Landroid/widget/FastScroller;->mThumbW:I

    sub-int v2, v0, v2

    iget v3, p0, Landroid/widget/FastScroller;->mThumbY:I

    iget v4, p0, Landroid/widget/FastScroller;->mThumbY:I

    iget v5, p0, Landroid/widget/FastScroller;->mThumbH:I

    add-int/2addr v4, v5

    invoke-virtual {v1, v2, v3, v0, v4}, Landroid/widget/AbsListView;->invalidate(IIII)V

    goto :goto_0

    .line 211
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method startPendingDrag()V
    .locals 4

    .prologue
    .line 703
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/FastScroller;->mPendingDrag:Z

    .line 704
    iget-object v0, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    iget-object v1, p0, Landroid/widget/FastScroller;->mDeferStartDrag:Ljava/lang/Runnable;

    const-wide/16 v2, 0xb4

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/AbsListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 705
    return-void
.end method

.method stop()V
    .locals 1

    .prologue
    .line 312
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/FastScroller;->setState(I)V

    .line 313
    return-void
.end method

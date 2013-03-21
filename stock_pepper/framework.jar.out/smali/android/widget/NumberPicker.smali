.class public Landroid/widget/NumberPicker;
.super Landroid/widget/LinearLayout;
.source "NumberPicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/NumberPicker$CustomEditText;,
        Landroid/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;,
        Landroid/widget/NumberPicker$AdjustScrollerCommand;,
        Landroid/widget/NumberPicker$SetSelectionCommand;,
        Landroid/widget/NumberPicker$InputTextFilter;,
        Landroid/widget/NumberPicker$Formatter;,
        Landroid/widget/NumberPicker$OnScrollListener;,
        Landroid/widget/NumberPicker$OnValueChangeListener;
    }
.end annotation


# static fields
.field private static final BUTTON_ALPHA_OPAQUE:I = 0x1

.field private static final BUTTON_ALPHA_TRANSPARENT:I = 0x0

.field private static final CHANGE_CURRENT_BY_ONE_SCROLL_DURATION:I = 0x12c

.field private static final DEFAULT_LONG_PRESS_UPDATE_INTERVAL:J = 0x12cL

.field private static final DIGIT_CHARACTERS:[C = null

.field private static final PROPERTY_BUTTON_ALPHA:Ljava/lang/String; = "alpha"

.field private static final PROPERTY_SELECTOR_PAINT_ALPHA:Ljava/lang/String; = "selectorPaintAlpha"

.field private static final SELECTOR_ADJUSTMENT_DURATION_MILLIS:I = 0x320

.field private static final SELECTOR_MAX_FLING_VELOCITY_ADJUSTMENT:I = 0x8

.field private static final SELECTOR_MIDDLE_ITEM_INDEX:I = 0x2

.field private static final SELECTOR_WHEEL_BRIGHT_ALPHA:I = 0xff

.field private static final SELECTOR_WHEEL_DIM_ALPHA:I = 0x3c

.field private static final SELECTOR_WHEEL_STATE_LARGE:I = 0x2

.field private static final SELECTOR_WHEEL_STATE_NONE:I = 0x0

.field private static final SELECTOR_WHEEL_STATE_SMALL:I = 0x1

#the value of this static final field might be set in the static constructor
.field private static final SHOW_INPUT_CONTROLS_DELAY_MILLIS:I = 0x0

.field private static final SIZE_UNSPECIFIED:I = -0x1

.field private static final TOP_AND_BOTTOM_FADING_EDGE_STRENGTH:F = 0.9f

.field public static final TWO_DIGIT_FORMATTER:Landroid/widget/NumberPicker$Formatter; = null

.field private static final UNSCALED_DEFAULT_SELECTION_DIVIDER_HEIGHT:I = 0x2


# instance fields
.field private final mAdjustScroller:Landroid/widget/Scroller;

.field private mAdjustScrollerCommand:Landroid/widget/NumberPicker$AdjustScrollerCommand;

.field private mAdjustScrollerOnUpEvent:Z

.field private mChangeCurrentByOneFromLongPressCommand:Landroid/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

.field private mCheckBeginEditOnUpEvent:Z

.field private final mComputeMaxWidth:Z

.field private mCurrentScrollOffset:I

.field private final mDecrementButton:Landroid/widget/ImageButton;

.field private final mDimSelectorWheelAnimator:Landroid/animation/Animator;

.field private mDisplayedValues:[Ljava/lang/String;

.field private final mFlingScroller:Landroid/widget/Scroller;

.field private final mFlingable:Z

.field private mFormatter:Landroid/widget/NumberPicker$Formatter;

.field private final mIncrementButton:Landroid/widget/ImageButton;

.field private mInitialScrollOffset:I

.field private final mInputText:Landroid/widget/EditText;

.field private mLastDownEventY:F

.field private mLastMotionEventY:F

.field private mLastUpEventTimeMillis:J

.field private mLongPressUpdateInterval:J

.field private final mMaxHeight:I

.field private mMaxValue:I

.field private mMaxWidth:I

.field private mMaximumFlingVelocity:I

.field private final mMinHeight:I

.field private mMinValue:I

.field private final mMinWidth:I

.field private mMinimumFlingVelocity:I

.field private mOnScrollListener:Landroid/widget/NumberPicker$OnScrollListener;

.field private mOnValueChangeListener:Landroid/widget/NumberPicker$OnValueChangeListener;

.field private mPreviousScrollerY:I

.field private mScrollState:I

.field private mScrollWheelAndFadingEdgesInitialized:Z

.field private final mSelectionDivider:Landroid/graphics/drawable/Drawable;

.field private final mSelectionDividerHeight:I

.field private mSelectorElementHeight:I

.field private final mSelectorIndexToStringCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mSelectorIndices:[I

.field private mSelectorTextGapHeight:I

.field private final mSelectorWheelPaint:Landroid/graphics/Paint;

.field private mSelectorWheelState:I

.field private mSetSelectionCommand:Landroid/widget/NumberPicker$SetSelectionCommand;

.field private final mShowInputControlsAnimator:Landroid/animation/AnimatorSet;

.field private final mShowInputControlsAnimimationDuration:J

.field private final mSolidColor:I

.field private final mTempRect:Landroid/graphics/Rect;

.field private final mTextSize:I

.field private mTouchSlop:I

.field private mValue:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mWrapSelectorWheel:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 107
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v0

    sput v0, Landroid/widget/NumberPicker;->SHOW_INPUT_CONTROLS_DELAY_MILLIS:I

    .line 168
    const/16 v0, 0xa

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Landroid/widget/NumberPicker;->DIGIT_CHARACTERS:[C

    .line 185
    new-instance v0, Landroid/widget/NumberPicker$1;

    invoke-direct {v0}, Landroid/widget/NumberPicker$1;-><init>()V

    sput-object v0, Landroid/widget/NumberPicker;->TWO_DIGIT_FORMATTER:Landroid/widget/NumberPicker$Formatter;

    return-void

    .line 168
    nop

    :array_0
    .array-data 0x2
        0x30t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x39t 0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 526
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/NumberPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 527
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 536
    const v0, 0x10103bc

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/NumberPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 537
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 18
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 547
    invoke-direct/range {p0 .. p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 288
    const-wide/16 v14, 0x12c

    move-object/from16 v0, p0

    iput-wide v14, v0, Landroid/widget/NumberPicker;->mLongPressUpdateInterval:J

    .line 293
    new-instance v14, Landroid/util/SparseArray;

    invoke-direct {v14}, Landroid/util/SparseArray;-><init>()V

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/NumberPicker;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    .line 298
    const/4 v14, 0x5

    new-array v14, v14, [I

    fill-array-data v14, :array_0

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/NumberPicker;->mSelectorIndices:[I

    .line 316
    const/high16 v14, -0x8000

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/NumberPicker;->mInitialScrollOffset:I

    .line 437
    new-instance v14, Landroid/graphics/Rect;

    invoke-direct {v14}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/NumberPicker;->mTempRect:Landroid/graphics/Rect;

    .line 442
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/NumberPicker;->mScrollState:I

    .line 550
    sget-object v14, Lcom/android/internal/R$styleable;->NumberPicker:[I

    const/4 v15, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v0, v1, v14, v2, v15}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 552
    .local v3, attributesArray:Landroid/content/res/TypedArray;
    const/4 v14, 0x4

    const/4 v15, 0x0

    invoke-virtual {v3, v14, v15}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/NumberPicker;->mSolidColor:I

    .line 553
    const/4 v14, 0x5

    const/4 v15, 0x1

    invoke-virtual {v3, v14, v15}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v14

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/NumberPicker;->mFlingable:Z

    .line 554
    const/4 v14, 0x6

    invoke-virtual {v3, v14}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/NumberPicker;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    .line 555
    const/4 v14, 0x1

    const/high16 v15, 0x4000

    invoke-virtual/range {p0 .. p0}, Landroid/widget/NumberPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v16

    invoke-static/range {v14 .. v16}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v14

    float-to-int v7, v14

    .line 558
    .local v7, defSelectionDividerHeight:I
    const/4 v14, 0x7

    invoke-virtual {v3, v14, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/NumberPicker;->mSelectionDividerHeight:I

    .line 560
    const/4 v14, 0x3

    const/4 v15, -0x1

    invoke-virtual {v3, v14, v15}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/NumberPicker;->mMinHeight:I

    .line 562
    const/4 v14, 0x1

    const/4 v15, -0x1

    invoke-virtual {v3, v14, v15}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/NumberPicker;->mMaxHeight:I

    .line 564
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/NumberPicker;->mMinHeight:I

    const/4 v15, -0x1

    if-eq v14, v15, :cond_0

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/NumberPicker;->mMaxHeight:I

    const/4 v15, -0x1

    if-eq v14, v15, :cond_0

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/NumberPicker;->mMinHeight:I

    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/NumberPicker;->mMaxHeight:I

    if-le v14, v15, :cond_0

    .line 566
    new-instance v14, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v15, "minHeight > maxHeight"

    invoke-direct {v14, v15}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 568
    :cond_0
    const/4 v14, 0x2

    const/4 v15, -0x1

    invoke-virtual {v3, v14, v15}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/NumberPicker;->mMinWidth:I

    .line 570
    const/4 v14, 0x0

    const/4 v15, -0x1

    invoke-virtual {v3, v14, v15}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/NumberPicker;->mMaxWidth:I

    .line 572
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/NumberPicker;->mMinWidth:I

    const/4 v15, -0x1

    if-eq v14, v15, :cond_1

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/NumberPicker;->mMaxWidth:I

    const/4 v15, -0x1

    if-eq v14, v15, :cond_1

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/NumberPicker;->mMinWidth:I

    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/NumberPicker;->mMaxWidth:I

    if-le v14, v15, :cond_1

    .line 574
    new-instance v14, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v15, "minWidth > maxWidth"

    invoke-direct {v14, v15}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 576
    :cond_1
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/NumberPicker;->mMaxWidth:I

    const v15, 0x7fffffff

    if-ne v14, v15, :cond_3

    const/4 v14, 0x1

    :goto_0
    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/NumberPicker;->mComputeMaxWidth:Z

    .line 577
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 579
    invoke-virtual/range {p0 .. p0}, Landroid/widget/NumberPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x10e0002

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v14

    int-to-long v14, v14

    move-object/from16 v0, p0

    iput-wide v14, v0, Landroid/widget/NumberPicker;->mShowInputControlsAnimimationDuration:J

    .line 587
    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/widget/NumberPicker;->setWillNotDraw(Z)V

    .line 588
    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Landroid/widget/NumberPicker;->setSelectorWheelState(I)V

    .line 590
    invoke-virtual/range {p0 .. p0}, Landroid/widget/NumberPicker;->getContext()Landroid/content/Context;

    move-result-object v14

    const-string v15, "layout_inflater"

    invoke-virtual {v14, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/LayoutInflater;

    .line 592
    .local v8, inflater:Landroid/view/LayoutInflater;
    const v14, 0x109006c

    const/4 v15, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v8, v14, v0, v15}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 594
    new-instance v9, Landroid/widget/NumberPicker$2;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Landroid/widget/NumberPicker$2;-><init>(Landroid/widget/NumberPicker;)V

    .line 609
    .local v9, onClickListener:Landroid/view/View$OnClickListener;
    new-instance v10, Landroid/widget/NumberPicker$3;

    move-object/from16 v0, p0

    invoke-direct {v10, v0}, Landroid/widget/NumberPicker$3;-><init>(Landroid/widget/NumberPicker;)V

    .line 622
    .local v10, onLongClickListener:Landroid/view/View$OnLongClickListener;
    const v14, 0x10202dc

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/widget/NumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/NumberPicker;->mIncrementButton:Landroid/widget/ImageButton;

    .line 623
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/NumberPicker;->mIncrementButton:Landroid/widget/ImageButton;

    invoke-virtual {v14, v9}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 624
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/NumberPicker;->mIncrementButton:Landroid/widget/ImageButton;

    invoke-virtual {v14, v10}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 627
    const v14, 0x10202de

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/widget/NumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/NumberPicker;->mDecrementButton:Landroid/widget/ImageButton;

    .line 628
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/NumberPicker;->mDecrementButton:Landroid/widget/ImageButton;

    invoke-virtual {v14, v9}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 629
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/NumberPicker;->mDecrementButton:Landroid/widget/ImageButton;

    invoke-virtual {v14, v10}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 632
    const v14, 0x10202dd

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/widget/NumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/EditText;

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    .line 633
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    new-instance v15, Landroid/widget/NumberPicker$4;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Landroid/widget/NumberPicker$4;-><init>(Landroid/widget/NumberPicker;)V

    invoke-virtual {v14, v15}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 643
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    const/4 v15, 0x1

    new-array v15, v15, [Landroid/text/InputFilter;

    const/16 v16, 0x0

    new-instance v17, Landroid/widget/NumberPicker$InputTextFilter;

    invoke-direct/range {v17 .. v18}, Landroid/widget/NumberPicker$InputTextFilter;-><init>(Landroid/widget/NumberPicker;)V

    aput-object v17, v15, v16

    invoke-virtual {v14, v15}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 647
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    const/4 v15, 0x2

    invoke-virtual {v14, v15}, Landroid/widget/EditText;->setRawInputType(I)V

    .line 648
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    const/4 v15, 0x6

    invoke-virtual {v14, v15}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 651
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/NumberPicker;->mTouchSlop:I

    .line 652
    invoke-static/range {p1 .. p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v6

    .line 653
    .local v6, configuration:Landroid/view/ViewConfiguration;
    invoke-virtual {v6}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/NumberPicker;->mTouchSlop:I

    .line 654
    invoke-virtual {v6}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/NumberPicker;->mMinimumFlingVelocity:I

    .line 655
    invoke-virtual {v6}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v14

    div-int/lit8 v14, v14, 0x8

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/NumberPicker;->mMaximumFlingVelocity:I

    .line 657
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v14}, Landroid/widget/EditText;->getTextSize()F

    move-result v14

    float-to-int v14, v14

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/NumberPicker;->mTextSize:I

    .line 660
    new-instance v11, Landroid/graphics/Paint;

    invoke-direct {v11}, Landroid/graphics/Paint;-><init>()V

    .line 661
    .local v11, paint:Landroid/graphics/Paint;
    const/4 v14, 0x1

    invoke-virtual {v11, v14}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 662
    sget-object v14, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v11, v14}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 663
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/NumberPicker;->mTextSize:I

    int-to-float v14, v14

    invoke-virtual {v11, v14}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 664
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v14}, Landroid/widget/EditText;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v14

    invoke-virtual {v11, v14}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 665
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v14}, Landroid/widget/EditText;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v5

    .line 666
    .local v5, colors:Landroid/content/res/ColorStateList;
    sget-object v14, Landroid/widget/NumberPicker;->ENABLED_STATE_SET:[I

    const/4 v15, -0x1

    invoke-virtual {v5, v14, v15}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v4

    .line 667
    .local v4, color:I
    invoke-virtual {v11, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 668
    move-object/from16 v0, p0

    iput-object v11, v0, Landroid/widget/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    .line 671
    const-string/jumbo v14, "selectorPaintAlpha"

    const/4 v15, 0x2

    new-array v15, v15, [I

    fill-array-data v15, :array_1

    move-object/from16 v0, p0

    invoke-static {v0, v14, v15}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/NumberPicker;->mDimSelectorWheelAnimator:Landroid/animation/Animator;

    .line 673
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/NumberPicker;->mIncrementButton:Landroid/widget/ImageButton;

    const-string v15, "alpha"

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [F

    move-object/from16 v16, v0

    fill-array-data v16, :array_2

    invoke-static/range {v14 .. v16}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v13

    .line 675
    .local v13, showIncrementButton:Landroid/animation/ObjectAnimator;
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/NumberPicker;->mDecrementButton:Landroid/widget/ImageButton;

    const-string v15, "alpha"

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [F

    move-object/from16 v16, v0

    fill-array-data v16, :array_3

    invoke-static/range {v14 .. v16}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v12

    .line 677
    .local v12, showDecrementButton:Landroid/animation/ObjectAnimator;
    new-instance v14, Landroid/animation/AnimatorSet;

    invoke-direct {v14}, Landroid/animation/AnimatorSet;-><init>()V

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/NumberPicker;->mShowInputControlsAnimator:Landroid/animation/AnimatorSet;

    .line 678
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/NumberPicker;->mShowInputControlsAnimator:Landroid/animation/AnimatorSet;

    const/4 v15, 0x3

    new-array v15, v15, [Landroid/animation/Animator;

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/NumberPicker;->mDimSelectorWheelAnimator:Landroid/animation/Animator;

    move-object/from16 v17, v0

    aput-object v17, v15, v16

    const/16 v16, 0x1

    aput-object v13, v15, v16

    const/16 v16, 0x2

    aput-object v12, v15, v16

    invoke-virtual {v14, v15}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 680
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/NumberPicker;->mShowInputControlsAnimator:Landroid/animation/AnimatorSet;

    new-instance v15, Landroid/widget/NumberPicker$5;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Landroid/widget/NumberPicker$5;-><init>(Landroid/widget/NumberPicker;)V

    invoke-virtual {v14, v15}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 701
    new-instance v14, Landroid/widget/Scroller;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/NumberPicker;->getContext()Landroid/content/Context;

    move-result-object v15

    const/16 v16, 0x0

    const/16 v17, 0x1

    invoke-direct/range {v14 .. v17}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    .line 702
    new-instance v14, Landroid/widget/Scroller;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/NumberPicker;->getContext()Landroid/content/Context;

    move-result-object v15

    new-instance v16, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v17, 0x4020

    invoke-direct/range {v16 .. v17}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-direct/range {v14 .. v16}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/NumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    .line 704
    invoke-direct/range {p0 .. p0}, Landroid/widget/NumberPicker;->updateInputTextView()V

    .line 705
    invoke-direct/range {p0 .. p0}, Landroid/widget/NumberPicker;->updateIncrementAndDecrementButtonsVisibilityState()V

    .line 707
    move-object/from16 v0, p0

    iget-boolean v14, v0, Landroid/widget/NumberPicker;->mFlingable:Z

    if-eqz v14, :cond_2

    .line 708
    invoke-virtual/range {p0 .. p0}, Landroid/widget/NumberPicker;->isInEditMode()Z

    move-result v14

    if-eqz v14, :cond_4

    .line 709
    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Landroid/widget/NumberPicker;->setSelectorWheelState(I)V

    .line 718
    :cond_2
    :goto_1
    return-void

    .line 576
    .end local v4           #color:I
    .end local v5           #colors:Landroid/content/res/ColorStateList;
    .end local v6           #configuration:Landroid/view/ViewConfiguration;
    .end local v8           #inflater:Landroid/view/LayoutInflater;
    .end local v9           #onClickListener:Landroid/view/View$OnClickListener;
    .end local v10           #onLongClickListener:Landroid/view/View$OnLongClickListener;
    .end local v11           #paint:Landroid/graphics/Paint;
    .end local v12           #showDecrementButton:Landroid/animation/ObjectAnimator;
    .end local v13           #showIncrementButton:Landroid/animation/ObjectAnimator;
    :cond_3
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 714
    .restart local v4       #color:I
    .restart local v5       #colors:Landroid/content/res/ColorStateList;
    .restart local v6       #configuration:Landroid/view/ViewConfiguration;
    .restart local v8       #inflater:Landroid/view/LayoutInflater;
    .restart local v9       #onClickListener:Landroid/view/View$OnClickListener;
    .restart local v10       #onLongClickListener:Landroid/view/View$OnLongClickListener;
    .restart local v11       #paint:Landroid/graphics/Paint;
    .restart local v12       #showDecrementButton:Landroid/animation/ObjectAnimator;
    .restart local v13       #showIncrementButton:Landroid/animation/ObjectAnimator;
    :cond_4
    const/4 v14, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Landroid/widget/NumberPicker;->setSelectorWheelState(I)V

    .line 715
    invoke-direct/range {p0 .. p0}, Landroid/widget/NumberPicker;->hideInputControls()V

    goto :goto_1

    .line 298
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x80t
        0x0t 0x0t 0x0t 0x80t
        0x0t 0x0t 0x0t 0x80t
        0x0t 0x0t 0x0t 0x80t
        0x0t 0x0t 0x0t 0x80t
    .end array-data

    .line 671
    :array_1
    .array-data 0x4
        0xfft 0x0t 0x0t 0x0t
        0x3ct 0x0t 0x0t 0x0t
    .end array-data

    .line 673
    :array_2
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 675
    :array_3
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method static synthetic access$000(Landroid/widget/NumberPicker;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$100(Landroid/widget/NumberPicker;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    invoke-direct {p0, p1}, Landroid/widget/NumberPicker;->changeCurrentByOne(Z)V

    return-void
.end method

.method static synthetic access$1000(Landroid/widget/NumberPicker;)[Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Landroid/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100(Landroid/widget/NumberPicker;Ljava/lang/String;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    invoke-direct {p0, p1}, Landroid/widget/NumberPicker;->getSelectedPos(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Landroid/widget/NumberPicker;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget v0, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    return v0
.end method

.method static synthetic access$1300(Landroid/widget/NumberPicker;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 75
    invoke-direct {p0, p1, p2}, Landroid/widget/NumberPicker;->postSetSelectionCommand(II)V

    return-void
.end method

.method static synthetic access$1402(Landroid/widget/NumberPicker;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    iput p1, p0, Landroid/widget/NumberPicker;->mPreviousScrollerY:I

    return p1
.end method

.method static synthetic access$1500(Landroid/widget/NumberPicker;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget v0, p0, Landroid/widget/NumberPicker;->mInitialScrollOffset:I

    return v0
.end method

.method static synthetic access$1600(Landroid/widget/NumberPicker;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget v0, p0, Landroid/widget/NumberPicker;->mCurrentScrollOffset:I

    return v0
.end method

.method static synthetic access$1700(Landroid/widget/NumberPicker;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 75
    invoke-direct {p0}, Landroid/widget/NumberPicker;->updateInputTextView()V

    return-void
.end method

.method static synthetic access$1800(Landroid/widget/NumberPicker;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 75
    iget-wide v0, p0, Landroid/widget/NumberPicker;->mShowInputControlsAnimimationDuration:J

    return-wide v0
.end method

.method static synthetic access$1900(Landroid/widget/NumberPicker;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    invoke-direct {p0, p1, p2}, Landroid/widget/NumberPicker;->showInputControls(J)V

    return-void
.end method

.method static synthetic access$200(Landroid/widget/NumberPicker;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    invoke-direct {p0, p1}, Landroid/widget/NumberPicker;->postChangeCurrentByOneFromLongPress(Z)V

    return-void
.end method

.method static synthetic access$2000(Landroid/widget/NumberPicker;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget v0, p0, Landroid/widget/NumberPicker;->mSelectorElementHeight:I

    return v0
.end method

.method static synthetic access$2100(Landroid/widget/NumberPicker;)Landroid/widget/Scroller;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Landroid/widget/NumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    return-object v0
.end method

.method static synthetic access$2200(Landroid/widget/NumberPicker;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 75
    iget-wide v0, p0, Landroid/widget/NumberPicker;->mLongPressUpdateInterval:J

    return-wide v0
.end method

.method static synthetic access$300(Landroid/widget/NumberPicker;Landroid/view/View;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    invoke-direct {p0, p1}, Landroid/widget/NumberPicker;->validateInputTextView(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$400(Landroid/widget/NumberPicker;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    invoke-direct {p0, p1}, Landroid/widget/NumberPicker;->setSelectorWheelState(I)V

    return-void
.end method

.method static synthetic access$500(Landroid/widget/NumberPicker;)Landroid/animation/AnimatorSet;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Landroid/widget/NumberPicker;->mShowInputControlsAnimator:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method static synthetic access$900()[C
    .locals 1

    .prologue
    .line 75
    sget-object v0, Landroid/widget/NumberPicker;->DIGIT_CHARACTERS:[C

    return-object v0
.end method

.method private changeCurrent(I)V
    .locals 2
    .parameter "current"

    .prologue
    .line 1464
    iget v1, p0, Landroid/widget/NumberPicker;->mValue:I

    if-ne v1, p1, :cond_0

    .line 1474
    :goto_0
    return-void

    .line 1468
    :cond_0
    iget-boolean v1, p0, Landroid/widget/NumberPicker;->mWrapSelectorWheel:Z

    if-eqz v1, :cond_1

    .line 1469
    invoke-direct {p0, p1}, Landroid/widget/NumberPicker;->getWrappedSelectorIndex(I)I

    move-result p1

    .line 1471
    :cond_1
    iget v0, p0, Landroid/widget/NumberPicker;->mValue:I

    .line 1472
    .local v0, previous:I
    invoke-virtual {p0, p1}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 1473
    invoke-direct {p0, v0, p1}, Landroid/widget/NumberPicker;->notifyChange(II)V

    goto :goto_0
.end method

.method private changeCurrentByOne(Z)V
    .locals 6
    .parameter "increment"

    .prologue
    const/16 v5, 0x12c

    const/4 v1, 0x0

    .line 1483
    iget-boolean v0, p0, Landroid/widget/NumberPicker;->mFlingable:Z

    if-eqz v0, :cond_1

    .line 1484
    iget-object v0, p0, Landroid/widget/NumberPicker;->mDimSelectorWheelAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 1485
    iget-object v0, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 1486
    iget-object v0, p0, Landroid/widget/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    const/16 v2, 0xff

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1487
    iput v1, p0, Landroid/widget/NumberPicker;->mPreviousScrollerY:I

    .line 1488
    invoke-direct {p0}, Landroid/widget/NumberPicker;->forceCompleteChangeCurrentByOneViaScroll()V

    .line 1489
    if-eqz p1, :cond_0

    .line 1490
    iget-object v0, p0, Landroid/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    iget v2, p0, Landroid/widget/NumberPicker;->mSelectorElementHeight:I

    neg-int v4, v2

    move v2, v1

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 1496
    :goto_0
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->invalidate()V

    .line 1504
    :goto_1
    return-void

    .line 1493
    :cond_0
    iget-object v0, p0, Landroid/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    iget v4, p0, Landroid/widget/NumberPicker;->mSelectorElementHeight:I

    move v2, v1

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    goto :goto_0

    .line 1498
    :cond_1
    if-eqz p1, :cond_2

    .line 1499
    iget v0, p0, Landroid/widget/NumberPicker;->mValue:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Landroid/widget/NumberPicker;->changeCurrent(I)V

    goto :goto_1

    .line 1501
    :cond_2
    iget v0, p0, Landroid/widget/NumberPicker;->mValue:I

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0}, Landroid/widget/NumberPicker;->changeCurrent(I)V

    goto :goto_1
.end method

.method private decrementSelectorIndices([I)V
    .locals 3
    .parameter "selectorIndices"

    .prologue
    .line 1712
    array-length v2, p1

    add-int/lit8 v0, v2, -0x1

    .local v0, i:I
    :goto_0
    if-lez v0, :cond_0

    .line 1713
    add-int/lit8 v2, v0, -0x1

    aget v2, p1, v2

    aput v2, p1, v0

    .line 1712
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1715
    :cond_0
    const/4 v2, 0x1

    aget v2, p1, v2

    add-int/lit8 v1, v2, -0x1

    .line 1716
    .local v1, nextScrollSelectorIndex:I
    iget-boolean v2, p0, Landroid/widget/NumberPicker;->mWrapSelectorWheel:Z

    if-eqz v2, :cond_1

    iget v2, p0, Landroid/widget/NumberPicker;->mMinValue:I

    if-ge v1, v2, :cond_1

    .line 1717
    iget v1, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    .line 1719
    :cond_1
    const/4 v2, 0x0

    aput v1, p1, v2

    .line 1720
    invoke-direct {p0, v1}, Landroid/widget/NumberPicker;->ensureCachedScrollSelectorValue(I)V

    .line 1721
    return-void
.end method

.method private ensureCachedScrollSelectorValue(I)V
    .locals 4
    .parameter "selectorIndex"

    .prologue
    .line 1729
    iget-object v0, p0, Landroid/widget/NumberPicker;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    .line 1730
    .local v0, cache:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Ljava/lang/String;>;"
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1731
    .local v2, scrollSelectorValue:Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 1745
    :goto_0
    return-void

    .line 1734
    :cond_0
    iget v3, p0, Landroid/widget/NumberPicker;->mMinValue:I

    if-lt p1, v3, :cond_1

    iget v3, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    if-le p1, v3, :cond_2

    .line 1735
    :cond_1
    const-string v2, ""

    .line 1744
    :goto_1
    invoke-virtual {v0, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 1737
    :cond_2
    iget-object v3, p0, Landroid/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 1738
    iget v3, p0, Landroid/widget/NumberPicker;->mMinValue:I

    sub-int v1, p1, v3

    .line 1739
    .local v1, displayedValueIndex:I
    iget-object v3, p0, Landroid/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    aget-object v2, v3, v1

    .line 1740
    goto :goto_1

    .line 1741
    .end local v1           #displayedValueIndex:I
    :cond_3
    invoke-direct {p0, p1}, Landroid/widget/NumberPicker;->formatNumber(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method private fadeSelectorWheel(J)V
    .locals 2
    .parameter "animationDuration"

    .prologue
    .line 1658
    iget-object v0, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 1659
    iget-object v0, p0, Landroid/widget/NumberPicker;->mDimSelectorWheelAnimator:Landroid/animation/Animator;

    invoke-virtual {v0, p1, p2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 1660
    iget-object v0, p0, Landroid/widget/NumberPicker;->mDimSelectorWheelAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 1661
    return-void
.end method

.method private fling(I)V
    .locals 9
    .parameter "velocityY"

    .prologue
    const v8, 0x7fffffff

    const/4 v1, 0x0

    .line 1618
    iput v1, p0, Landroid/widget/NumberPicker;->mPreviousScrollerY:I

    .line 1620
    if-lez p1, :cond_0

    .line 1621
    iget-object v0, p0, Landroid/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    move v2, v1

    move v3, v1

    move v4, p1

    move v5, v1

    move v6, v1

    move v7, v1

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 1626
    :goto_0
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->invalidate()V

    .line 1627
    return-void

    .line 1623
    :cond_0
    iget-object v0, p0, Landroid/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    move v2, v8

    move v3, v1

    move v4, p1

    move v5, v1

    move v6, v1

    move v7, v1

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    goto :goto_0
.end method

.method private forceCompleteChangeCurrentByOneViaScroll()V
    .locals 4

    .prologue
    .line 1512
    iget-object v0, p0, Landroid/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    .line 1513
    .local v0, scroller:Landroid/widget/Scroller;
    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1514
    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    .line 1515
    .local v1, yBeforeAbort:I
    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1516
    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    move-result v3

    sub-int v2, v3, v1

    .line 1517
    .local v2, yDelta:I
    const/4 v3, 0x0

    invoke-virtual {p0, v3, v2}, Landroid/widget/NumberPicker;->scrollBy(II)V

    .line 1519
    .end local v1           #yBeforeAbort:I
    .end local v2           #yDelta:I
    :cond_0
    return-void
.end method

.method private formatNumber(I)Ljava/lang/String;
    .locals 1
    .parameter "value"

    .prologue
    .line 1748
    iget-object v0, p0, Landroid/widget/NumberPicker;->mFormatter:Landroid/widget/NumberPicker$Formatter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/NumberPicker;->mFormatter:Landroid/widget/NumberPicker$Formatter;

    invoke-interface {v0, p1}, Landroid/widget/NumberPicker$Formatter;->format(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getSelectedPos(Ljava/lang/String;)I
    .locals 2
    .parameter "value"

    .prologue
    .line 1833
    iget-object v1, p0, Landroid/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-nez v1, :cond_0

    .line 1835
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1859
    :goto_0
    return v1

    .line 1840
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v1, p0, Landroid/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 1842
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 1843
    iget-object v1, p0, Landroid/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1844
    iget v1, p0, Landroid/widget/NumberPicker;->mMinValue:I

    add-int/2addr v1, v0

    goto :goto_0

    .line 1840
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1853
    :cond_2
    :try_start_1
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    goto :goto_0

    .line 1836
    .end local v0           #i:I
    :catch_0
    move-exception v1

    .line 1859
    :goto_2
    iget v1, p0, Landroid/widget/NumberPicker;->mMinValue:I

    goto :goto_0

    .line 1854
    .restart local v0       #i:I
    :catch_1
    move-exception v1

    goto :goto_2
.end method

.method private getWrappedSelectorIndex(I)I
    .locals 4
    .parameter "selectorIndex"

    .prologue
    .line 1683
    iget v0, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    if-le p1, v0, :cond_1

    .line 1684
    iget v0, p0, Landroid/widget/NumberPicker;->mMinValue:I

    iget v1, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    sub-int v1, p1, v1

    iget v2, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    iget v3, p0, Landroid/widget/NumberPicker;->mMinValue:I

    sub-int/2addr v2, v3

    rem-int/2addr v1, v2

    add-int/2addr v0, v1

    add-int/lit8 p1, v0, -0x1

    .line 1688
    .end local p1
    :cond_0
    :goto_0
    return p1

    .line 1685
    .restart local p1
    :cond_1
    iget v0, p0, Landroid/widget/NumberPicker;->mMinValue:I

    if-ge p1, v0, :cond_0

    .line 1686
    iget v0, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    iget v1, p0, Landroid/widget/NumberPicker;->mMinValue:I

    sub-int/2addr v1, p1

    iget v2, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    iget v3, p0, Landroid/widget/NumberPicker;->mMinValue:I

    sub-int/2addr v2, v3

    rem-int/2addr v1, v2

    sub-int/2addr v0, v1

    add-int/lit8 p1, v0, 0x1

    goto :goto_0
.end method

.method private hideInputControls()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 1633
    iget-object v0, p0, Landroid/widget/NumberPicker;->mShowInputControlsAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 1634
    iget-object v0, p0, Landroid/widget/NumberPicker;->mIncrementButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1635
    iget-object v0, p0, Landroid/widget/NumberPicker;->mDecrementButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1636
    iget-object v0, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 1637
    return-void
.end method

.method private incrementSelectorIndices([I)V
    .locals 3
    .parameter "selectorIndices"

    .prologue
    .line 1696
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_0

    .line 1697
    add-int/lit8 v2, v0, 0x1

    aget v2, p1, v2

    aput v2, p1, v0

    .line 1696
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1699
    :cond_0
    array-length v2, p1

    add-int/lit8 v2, v2, -0x2

    aget v2, p1, v2

    add-int/lit8 v1, v2, 0x1

    .line 1700
    .local v1, nextScrollSelectorIndex:I
    iget-boolean v2, p0, Landroid/widget/NumberPicker;->mWrapSelectorWheel:Z

    if-eqz v2, :cond_1

    iget v2, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    if-le v1, v2, :cond_1

    .line 1701
    iget v1, p0, Landroid/widget/NumberPicker;->mMinValue:I

    .line 1703
    :cond_1
    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    aput v1, p1, v2

    .line 1704
    invoke-direct {p0, v1}, Landroid/widget/NumberPicker;->ensureCachedScrollSelectorValue(I)V

    .line 1705
    return-void
.end method

.method private initializeFadingEdges()V
    .locals 2

    .prologue
    .line 1579
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/NumberPicker;->setVerticalFadingEdgeEnabled(Z)V

    .line 1580
    iget v0, p0, Landroid/widget/NumberPicker;->mBottom:I

    iget v1, p0, Landroid/widget/NumberPicker;->mTop:I

    sub-int/2addr v0, v1

    iget v1, p0, Landroid/widget/NumberPicker;->mTextSize:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, v0}, Landroid/widget/NumberPicker;->setFadingEdgeLength(I)V

    .line 1581
    return-void
.end method

.method private initializeSelectorWheel()V
    .locals 7

    .prologue
    .line 1563
    invoke-direct {p0}, Landroid/widget/NumberPicker;->initializeSelectorWheelIndices()V

    .line 1564
    iget-object v1, p0, Landroid/widget/NumberPicker;->mSelectorIndices:[I

    .line 1565
    .local v1, selectorIndices:[I
    array-length v5, v1

    iget v6, p0, Landroid/widget/NumberPicker;->mTextSize:I

    mul-int v4, v5, v6

    .line 1566
    .local v4, totalTextHeight:I
    iget v5, p0, Landroid/widget/NumberPicker;->mBottom:I

    iget v6, p0, Landroid/widget/NumberPicker;->mTop:I

    sub-int/2addr v5, v6

    sub-int/2addr v5, v4

    int-to-float v3, v5

    .line 1567
    .local v3, totalTextGapHeight:F
    array-length v5, v1

    add-int/lit8 v5, v5, -0x1

    int-to-float v2, v5

    .line 1568
    .local v2, textGapCount:F
    div-float v5, v3, v2

    const/high16 v6, 0x3f00

    add-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, p0, Landroid/widget/NumberPicker;->mSelectorTextGapHeight:I

    .line 1569
    iget v5, p0, Landroid/widget/NumberPicker;->mTextSize:I

    iget v6, p0, Landroid/widget/NumberPicker;->mSelectorTextGapHeight:I

    add-int/2addr v5, v6

    iput v5, p0, Landroid/widget/NumberPicker;->mSelectorElementHeight:I

    .line 1571
    iget-object v5, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getBaseline()I

    move-result v5

    iget-object v6, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getTop()I

    move-result v6

    add-int v0, v5, v6

    .line 1572
    .local v0, editTextTextPosition:I
    iget v5, p0, Landroid/widget/NumberPicker;->mSelectorElementHeight:I

    mul-int/lit8 v5, v5, 0x2

    sub-int v5, v0, v5

    iput v5, p0, Landroid/widget/NumberPicker;->mInitialScrollOffset:I

    .line 1574
    iget v5, p0, Landroid/widget/NumberPicker;->mInitialScrollOffset:I

    iput v5, p0, Landroid/widget/NumberPicker;->mCurrentScrollOffset:I

    .line 1575
    invoke-direct {p0}, Landroid/widget/NumberPicker;->updateInputTextView()V

    .line 1576
    return-void
.end method

.method private initializeSelectorWheelIndices()V
    .locals 5

    .prologue
    .line 1442
    iget-object v4, p0, Landroid/widget/NumberPicker;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->clear()V

    .line 1443
    iget-object v2, p0, Landroid/widget/NumberPicker;->mSelectorIndices:[I

    .line 1444
    .local v2, selectorIdices:[I
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->getValue()I

    move-result v0

    .line 1445
    .local v0, current:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v4, p0, Landroid/widget/NumberPicker;->mSelectorIndices:[I

    array-length v4, v4

    if-ge v1, v4, :cond_1

    .line 1446
    add-int/lit8 v4, v1, -0x2

    add-int v3, v0, v4

    .line 1447
    .local v3, selectorIndex:I
    iget-boolean v4, p0, Landroid/widget/NumberPicker;->mWrapSelectorWheel:Z

    if-eqz v4, :cond_0

    .line 1448
    invoke-direct {p0, v3}, Landroid/widget/NumberPicker;->getWrappedSelectorIndex(I)I

    move-result v3

    .line 1450
    :cond_0
    iget-object v4, p0, Landroid/widget/NumberPicker;->mSelectorIndices:[I

    aput v3, v4, v1

    .line 1451
    iget-object v4, p0, Landroid/widget/NumberPicker;->mSelectorIndices:[I

    aget v4, v4, v1

    invoke-direct {p0, v4}, Landroid/widget/NumberPicker;->ensureCachedScrollSelectorValue(I)V

    .line 1445
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1453
    .end local v3           #selectorIndex:I
    :cond_1
    return-void
.end method

.method private isEventInVisibleViewHitRect(Landroid/view/MotionEvent;Landroid/view/View;)Z
    .locals 3
    .parameter "event"
    .parameter "view"

    .prologue
    .line 1536
    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 1537
    iget-object v0, p0, Landroid/widget/NumberPicker;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p2, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 1538
    iget-object v0, p0, Landroid/widget/NumberPicker;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    .line 1540
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private makeMeasureSpec(II)I
    .locals 5
    .parameter "measureSpec"
    .parameter "maxSize"

    .prologue
    const/high16 v3, 0x4000

    .line 1400
    const/4 v2, -0x1

    if-ne p2, v2, :cond_0

    .line 1411
    .end local p1
    :goto_0
    :sswitch_0
    return p1

    .line 1403
    .restart local p1
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 1404
    .local v1, size:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 1405
    .local v0, mode:I
    sparse-switch v0, :sswitch_data_0

    .line 1413
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown measure mode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1409
    :sswitch_1
    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    goto :goto_0

    .line 1411
    :sswitch_2
    invoke-static {p2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    goto :goto_0

    .line 1405
    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x0 -> :sswitch_2
        0x40000000 -> :sswitch_0
    .end sparse-switch
.end method

.method private notifyChange(II)V
    .locals 2
    .parameter "previous"
    .parameter "current"

    .prologue
    .line 1794
    iget-object v0, p0, Landroid/widget/NumberPicker;->mOnValueChangeListener:Landroid/widget/NumberPicker$OnValueChangeListener;

    if-eqz v0, :cond_0

    .line 1795
    iget-object v0, p0, Landroid/widget/NumberPicker;->mOnValueChangeListener:Landroid/widget/NumberPicker$OnValueChangeListener;

    iget v1, p0, Landroid/widget/NumberPicker;->mValue:I

    invoke-interface {v0, p0, p1, v1}, Landroid/widget/NumberPicker$OnValueChangeListener;->onValueChange(Landroid/widget/NumberPicker;II)V

    .line 1797
    :cond_0
    return-void
.end method

.method private onScrollStateChange(I)V
    .locals 1
    .parameter "scrollState"

    .prologue
    .line 1605
    iget v0, p0, Landroid/widget/NumberPicker;->mScrollState:I

    if-ne v0, p1, :cond_1

    .line 1612
    :cond_0
    :goto_0
    return-void

    .line 1608
    :cond_1
    iput p1, p0, Landroid/widget/NumberPicker;->mScrollState:I

    .line 1609
    iget-object v0, p0, Landroid/widget/NumberPicker;->mOnScrollListener:Landroid/widget/NumberPicker$OnScrollListener;

    if-eqz v0, :cond_0

    .line 1610
    iget-object v0, p0, Landroid/widget/NumberPicker;->mOnScrollListener:Landroid/widget/NumberPicker$OnScrollListener;

    invoke-interface {v0, p0, p1}, Landroid/widget/NumberPicker$OnScrollListener;->onScrollStateChange(Landroid/widget/NumberPicker;I)V

    goto :goto_0
.end method

.method private onScrollerFinished(Landroid/widget/Scroller;)V
    .locals 3
    .parameter "scroller"

    .prologue
    const/4 v2, 0x0

    .line 1587
    iget-object v0, p0, Landroid/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    if-ne p1, v0, :cond_1

    .line 1588
    iget v0, p0, Landroid/widget/NumberPicker;->mSelectorWheelState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1589
    invoke-direct {p0, v2}, Landroid/widget/NumberPicker;->postAdjustScrollerCommand(I)V

    .line 1590
    invoke-direct {p0, v2}, Landroid/widget/NumberPicker;->onScrollStateChange(I)V

    .line 1599
    :goto_0
    return-void

    .line 1592
    :cond_0
    invoke-direct {p0}, Landroid/widget/NumberPicker;->updateInputTextView()V

    .line 1593
    iget-wide v0, p0, Landroid/widget/NumberPicker;->mShowInputControlsAnimimationDuration:J

    invoke-direct {p0, v0, v1}, Landroid/widget/NumberPicker;->fadeSelectorWheel(J)V

    goto :goto_0

    .line 1596
    :cond_1
    invoke-direct {p0}, Landroid/widget/NumberPicker;->updateInputTextView()V

    .line 1597
    iget-wide v0, p0, Landroid/widget/NumberPicker;->mShowInputControlsAnimimationDuration:J

    invoke-direct {p0, v0, v1}, Landroid/widget/NumberPicker;->showInputControls(J)V

    goto :goto_0
.end method

.method private postAdjustScrollerCommand(I)V
    .locals 3
    .parameter "delayMillis"

    .prologue
    .line 1884
    iget-object v0, p0, Landroid/widget/NumberPicker;->mAdjustScrollerCommand:Landroid/widget/NumberPicker$AdjustScrollerCommand;

    if-nez v0, :cond_0

    .line 1885
    new-instance v0, Landroid/widget/NumberPicker$AdjustScrollerCommand;

    invoke-direct {v0, p0}, Landroid/widget/NumberPicker$AdjustScrollerCommand;-><init>(Landroid/widget/NumberPicker;)V

    iput-object v0, p0, Landroid/widget/NumberPicker;->mAdjustScrollerCommand:Landroid/widget/NumberPicker$AdjustScrollerCommand;

    .line 1889
    :goto_0
    iget-object v0, p0, Landroid/widget/NumberPicker;->mAdjustScrollerCommand:Landroid/widget/NumberPicker$AdjustScrollerCommand;

    int-to-long v1, p1

    invoke-virtual {p0, v0, v1, v2}, Landroid/widget/NumberPicker;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1890
    return-void

    .line 1887
    :cond_0
    iget-object v0, p0, Landroid/widget/NumberPicker;->mAdjustScrollerCommand:Landroid/widget/NumberPicker$AdjustScrollerCommand;

    invoke-virtual {p0, v0}, Landroid/widget/NumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private postChangeCurrentByOneFromLongPress(Z)V
    .locals 1
    .parameter "increment"

    .prologue
    .line 1805
    iget-object v0, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 1806
    invoke-direct {p0}, Landroid/widget/NumberPicker;->removeAllCallbacks()V

    .line 1807
    iget-object v0, p0, Landroid/widget/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Landroid/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    if-nez v0, :cond_0

    .line 1808
    new-instance v0, Landroid/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    invoke-direct {v0, p0}, Landroid/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;-><init>(Landroid/widget/NumberPicker;)V

    iput-object v0, p0, Landroid/widget/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Landroid/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    .line 1810
    :cond_0
    iget-object v0, p0, Landroid/widget/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Landroid/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    #calls: Landroid/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;->setIncrement(Z)V
    invoke-static {v0, p1}, Landroid/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;->access$600(Landroid/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;Z)V

    .line 1811
    iget-object v0, p0, Landroid/widget/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Landroid/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    invoke-virtual {p0, v0}, Landroid/widget/NumberPicker;->post(Ljava/lang/Runnable;)Z

    .line 1812
    return-void
.end method

.method private postSetSelectionCommand(II)V
    .locals 1
    .parameter "selectionStart"
    .parameter "selectionEnd"

    .prologue
    .line 1868
    iget-object v0, p0, Landroid/widget/NumberPicker;->mSetSelectionCommand:Landroid/widget/NumberPicker$SetSelectionCommand;

    if-nez v0, :cond_0

    .line 1869
    new-instance v0, Landroid/widget/NumberPicker$SetSelectionCommand;

    invoke-direct {v0, p0}, Landroid/widget/NumberPicker$SetSelectionCommand;-><init>(Landroid/widget/NumberPicker;)V

    iput-object v0, p0, Landroid/widget/NumberPicker;->mSetSelectionCommand:Landroid/widget/NumberPicker$SetSelectionCommand;

    .line 1873
    :goto_0
    iget-object v0, p0, Landroid/widget/NumberPicker;->mSetSelectionCommand:Landroid/widget/NumberPicker$SetSelectionCommand;

    #setter for: Landroid/widget/NumberPicker$SetSelectionCommand;->mSelectionStart:I
    invoke-static {v0, p1}, Landroid/widget/NumberPicker$SetSelectionCommand;->access$702(Landroid/widget/NumberPicker$SetSelectionCommand;I)I

    .line 1874
    iget-object v0, p0, Landroid/widget/NumberPicker;->mSetSelectionCommand:Landroid/widget/NumberPicker$SetSelectionCommand;

    #setter for: Landroid/widget/NumberPicker$SetSelectionCommand;->mSelectionEnd:I
    invoke-static {v0, p2}, Landroid/widget/NumberPicker$SetSelectionCommand;->access$802(Landroid/widget/NumberPicker$SetSelectionCommand;I)I

    .line 1875
    iget-object v0, p0, Landroid/widget/NumberPicker;->mSetSelectionCommand:Landroid/widget/NumberPicker$SetSelectionCommand;

    invoke-virtual {p0, v0}, Landroid/widget/NumberPicker;->post(Ljava/lang/Runnable;)Z

    .line 1876
    return-void

    .line 1871
    :cond_0
    iget-object v0, p0, Landroid/widget/NumberPicker;->mSetSelectionCommand:Landroid/widget/NumberPicker$SetSelectionCommand;

    invoke-virtual {p0, v0}, Landroid/widget/NumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private removeAllCallbacks()V
    .locals 1

    .prologue
    .line 1818
    iget-object v0, p0, Landroid/widget/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Landroid/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    if-eqz v0, :cond_0

    .line 1819
    iget-object v0, p0, Landroid/widget/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Landroid/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    invoke-virtual {p0, v0}, Landroid/widget/NumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1821
    :cond_0
    iget-object v0, p0, Landroid/widget/NumberPicker;->mAdjustScrollerCommand:Landroid/widget/NumberPicker$AdjustScrollerCommand;

    if-eqz v0, :cond_1

    .line 1822
    iget-object v0, p0, Landroid/widget/NumberPicker;->mAdjustScrollerCommand:Landroid/widget/NumberPicker$AdjustScrollerCommand;

    invoke-virtual {p0, v0}, Landroid/widget/NumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1824
    :cond_1
    iget-object v0, p0, Landroid/widget/NumberPicker;->mSetSelectionCommand:Landroid/widget/NumberPicker$SetSelectionCommand;

    if-eqz v0, :cond_2

    .line 1825
    iget-object v0, p0, Landroid/widget/NumberPicker;->mSetSelectionCommand:Landroid/widget/NumberPicker$SetSelectionCommand;

    invoke-virtual {p0, v0}, Landroid/widget/NumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1827
    :cond_2
    return-void
.end method

.method private resolveSizeAndStateRespectingMinSize(III)I
    .locals 2
    .parameter "minSize"
    .parameter "measuredSize"
    .parameter "measureSpec"

    .prologue
    .line 1429
    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    .line 1430
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1431
    .local v0, desiredWidth:I
    const/4 v1, 0x0

    invoke-static {v0, p3, v1}, Landroid/widget/NumberPicker;->resolveSizeAndState(III)I

    move-result p2

    .line 1433
    .end local v0           #desiredWidth:I
    .end local p2
    :cond_0
    return p2
.end method

.method private setSelectorPaintAlpha(I)V
    .locals 1
    .parameter "alpha"

    .prologue
    .line 1528
    iget-object v0, p0, Landroid/widget/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1529
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->invalidate()V

    .line 1530
    return-void
.end method

.method private setSelectorWheelState(I)V
    .locals 4
    .parameter "selectorWheelState"

    .prologue
    const/4 v3, 0x2

    .line 1547
    iput p1, p0, Landroid/widget/NumberPicker;->mSelectorWheelState:I

    .line 1548
    if-ne p1, v3, :cond_0

    .line 1549
    iget-object v1, p0, Landroid/widget/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    const/16 v2, 0xff

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1552
    :cond_0
    iget-boolean v1, p0, Landroid/widget/NumberPicker;->mFlingable:Z

    if-eqz v1, :cond_1

    if-ne p1, v3, :cond_1

    iget-object v1, p0, Landroid/widget/NumberPicker;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1554
    iget-object v1, p0, Landroid/widget/NumberPicker;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->interrupt()V

    .line 1555
    iget-object v1, p0, Landroid/widget/NumberPicker;->mContext:Landroid/content/Context;

    const v2, 0x10404cf

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1556
    .local v0, text:Ljava/lang/String;
    iget-object v1, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1557
    iget-object v1, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->sendAccessibilityEvent(I)V

    .line 1558
    iget-object v1, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1560
    .end local v0           #text:Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private showInputControls(J)V
    .locals 2
    .parameter "animationDuration"

    .prologue
    .line 1646
    invoke-direct {p0}, Landroid/widget/NumberPicker;->updateIncrementAndDecrementButtonsVisibilityState()V

    .line 1647
    iget-object v0, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 1648
    iget-object v0, p0, Landroid/widget/NumberPicker;->mShowInputControlsAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0, p1, p2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1649
    iget-object v0, p0, Landroid/widget/NumberPicker;->mShowInputControlsAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 1650
    return-void
.end method

.method private tryComputeMaxWidth()V
    .locals 10

    .prologue
    .line 1086
    iget-boolean v8, p0, Landroid/widget/NumberPicker;->mComputeMaxWidth:Z

    if-nez v8, :cond_1

    .line 1123
    :cond_0
    :goto_0
    return-void

    .line 1089
    :cond_1
    const/4 v4, 0x0

    .line 1090
    .local v4, maxTextWidth:I
    iget-object v8, p0, Landroid/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-nez v8, :cond_6

    .line 1091
    const/4 v3, 0x0

    .line 1092
    .local v3, maxDigitWidth:F
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    const/16 v8, 0x9

    if-gt v2, v8, :cond_3

    .line 1093
    iget-object v8, p0, Landroid/widget/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    .line 1094
    .local v1, digitWidth:F
    cmpl-float v8, v1, v3

    if-lez v8, :cond_2

    .line 1095
    move v3, v1

    .line 1092
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1098
    .end local v1           #digitWidth:F
    :cond_3
    const/4 v5, 0x0

    .line 1099
    .local v5, numberOfDigits:I
    iget v0, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    .line 1100
    .local v0, current:I
    :goto_2
    if-lez v0, :cond_4

    .line 1101
    add-int/lit8 v5, v5, 0x1

    .line 1102
    div-int/lit8 v0, v0, 0xa

    goto :goto_2

    .line 1104
    :cond_4
    int-to-float v8, v5

    mul-float/2addr v8, v3

    float-to-int v4, v8

    .line 1114
    .end local v0           #current:I
    .end local v3           #maxDigitWidth:F
    .end local v5           #numberOfDigits:I
    :cond_5
    iget-object v8, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getPaddingLeft()I

    move-result v8

    iget-object v9, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v9}, Landroid/widget/EditText;->getPaddingRight()I

    move-result v9

    add-int/2addr v8, v9

    add-int/2addr v4, v8

    .line 1115
    iget v8, p0, Landroid/widget/NumberPicker;->mMaxWidth:I

    if-eq v8, v4, :cond_0

    .line 1116
    iget v8, p0, Landroid/widget/NumberPicker;->mMinWidth:I

    if-le v4, v8, :cond_8

    .line 1117
    iput v4, p0, Landroid/widget/NumberPicker;->mMaxWidth:I

    .line 1121
    :goto_3
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->invalidate()V

    goto :goto_0

    .line 1106
    .end local v2           #i:I
    :cond_6
    iget-object v8, p0, Landroid/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    array-length v7, v8

    .line 1107
    .local v7, valueCount:I
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_4
    if-ge v2, v7, :cond_5

    .line 1108
    iget-object v8, p0, Landroid/widget/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    iget-object v9, p0, Landroid/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    aget-object v9, v9, v2

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v6

    .line 1109
    .local v6, textWidth:F
    int-to-float v8, v4

    cmpl-float v8, v6, v8

    if-lez v8, :cond_7

    .line 1110
    float-to-int v4, v6

    .line 1107
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 1119
    .end local v6           #textWidth:F
    .end local v7           #valueCount:I
    :cond_8
    iget v8, p0, Landroid/widget/NumberPicker;->mMinWidth:I

    iput v8, p0, Landroid/widget/NumberPicker;->mMaxWidth:I

    goto :goto_3
.end method

.method private updateIncrementAndDecrementButtonsVisibilityState()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 1667
    iget-boolean v0, p0, Landroid/widget/NumberPicker;->mWrapSelectorWheel:Z

    if-nez v0, :cond_0

    iget v0, p0, Landroid/widget/NumberPicker;->mValue:I

    iget v1, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    if-ge v0, v1, :cond_2

    .line 1668
    :cond_0
    iget-object v0, p0, Landroid/widget/NumberPicker;->mIncrementButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1672
    :goto_0
    iget-boolean v0, p0, Landroid/widget/NumberPicker;->mWrapSelectorWheel:Z

    if-nez v0, :cond_1

    iget v0, p0, Landroid/widget/NumberPicker;->mValue:I

    iget v1, p0, Landroid/widget/NumberPicker;->mMinValue:I

    if-le v0, v1, :cond_3

    .line 1673
    :cond_1
    iget-object v0, p0, Landroid/widget/NumberPicker;->mDecrementButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1677
    :goto_1
    return-void

    .line 1670
    :cond_2
    iget-object v0, p0, Landroid/widget/NumberPicker;->mIncrementButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0

    .line 1675
    :cond_3
    iget-object v0, p0, Landroid/widget/NumberPicker;->mDecrementButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_1
.end method

.method private updateInputTextView()V
    .locals 6

    .prologue
    .line 1775
    iget-object v1, p0, Landroid/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-nez v1, :cond_1

    .line 1776
    iget-object v1, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    iget v2, p0, Landroid/widget/NumberPicker;->mValue:I

    invoke-direct {p0, v2}, Landroid/widget/NumberPicker;->formatNumber(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1780
    :goto_0
    iget-object v1, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    iget-object v2, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 1782
    iget-boolean v1, p0, Landroid/widget/NumberPicker;->mFlingable:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/NumberPicker;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1783
    iget-object v1, p0, Landroid/widget/NumberPicker;->mContext:Landroid/content/Context;

    const v2, 0x10404ce

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1785
    .local v0, text:Ljava/lang/String;
    iget-object v1, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1787
    .end local v0           #text:Ljava/lang/String;
    :cond_0
    return-void

    .line 1778
    :cond_1
    iget-object v1, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    iget-object v2, p0, Landroid/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    iget v3, p0, Landroid/widget/NumberPicker;->mValue:I

    iget v4, p0, Landroid/widget/NumberPicker;->mMinValue:I

    sub-int/2addr v3, v4

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private validateInputTextView(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 1752
    check-cast p1, Landroid/widget/TextView;

    .end local p1
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1753
    .local v1, str:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1755
    invoke-direct {p0}, Landroid/widget/NumberPicker;->updateInputTextView()V

    .line 1761
    :goto_0
    return-void

    .line 1758
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/widget/NumberPicker;->getSelectedPos(Ljava/lang/String;)I

    move-result v0

    .line 1759
    .local v0, current:I
    invoke-direct {p0, v0}, Landroid/widget/NumberPicker;->changeCurrent(I)V

    goto :goto_0
.end method


# virtual methods
.method public computeScroll()V
    .locals 4

    .prologue
    .line 926
    iget v2, p0, Landroid/widget/NumberPicker;->mSelectorWheelState:I

    if-nez v2, :cond_1

    .line 948
    :cond_0
    :goto_0
    return-void

    .line 929
    :cond_1
    iget-object v1, p0, Landroid/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    .line 930
    .local v1, scroller:Landroid/widget/Scroller;
    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 931
    iget-object v1, p0, Landroid/widget/NumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    .line 932
    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v2

    if-nez v2, :cond_0

    .line 936
    :cond_2
    invoke-virtual {v1}, Landroid/widget/Scroller;->computeScrollOffset()Z

    .line 937
    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v0

    .line 938
    .local v0, currentScrollerY:I
    iget v2, p0, Landroid/widget/NumberPicker;->mPreviousScrollerY:I

    if-nez v2, :cond_3

    .line 939
    invoke-virtual {v1}, Landroid/widget/Scroller;->getStartY()I

    move-result v2

    iput v2, p0, Landroid/widget/NumberPicker;->mPreviousScrollerY:I

    .line 941
    :cond_3
    const/4 v2, 0x0

    iget v3, p0, Landroid/widget/NumberPicker;->mPreviousScrollerY:I

    sub-int v3, v0, v3

    invoke-virtual {p0, v2, v3}, Landroid/widget/NumberPicker;->scrollBy(II)V

    .line 942
    iput v0, p0, Landroid/widget/NumberPicker;->mPreviousScrollerY:I

    .line 943
    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 944
    invoke-direct {p0, v1}, Landroid/widget/NumberPicker;->onScrollerFinished(Landroid/widget/Scroller;)V

    goto :goto_0

    .line 946
    :cond_4
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->invalidate()V

    goto :goto_0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .parameter "canvas"

    .prologue
    .line 1306
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 908
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 909
    .local v0, keyCode:I
    const/16 v1, 0x17

    if-eq v0, v1, :cond_0

    const/16 v1, 0x42

    if-ne v0, v1, :cond_1

    .line 910
    :cond_0
    invoke-direct {p0}, Landroid/widget/NumberPicker;->removeAllCallbacks()V

    .line 912
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    return v1
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    .line 890
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 891
    .local v0, action:I
    packed-switch v0, :pswitch_data_0

    .line 903
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 893
    :pswitch_0
    iget v1, p0, Landroid/widget/NumberPicker;->mSelectorWheelState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 894
    invoke-direct {p0}, Landroid/widget/NumberPicker;->removeAllCallbacks()V

    .line 895
    invoke-direct {p0}, Landroid/widget/NumberPicker;->forceCompleteChangeCurrentByOneViaScroll()V

    goto :goto_0

    .line 900
    :pswitch_1
    invoke-direct {p0}, Landroid/widget/NumberPicker;->removeAllCallbacks()V

    goto :goto_0

    .line 891
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 917
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 918
    .local v0, action:I
    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 919
    :cond_0
    invoke-direct {p0}, Landroid/widget/NumberPicker;->removeAllCallbacks()V

    .line 921
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 7
    .parameter "canvas"

    .prologue
    .line 1318
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->draw(Landroid/graphics/Canvas;)V

    .line 1322
    iget-object v5, p0, Landroid/widget/NumberPicker;->mShowInputControlsAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v5

    if-nez v5, :cond_0

    iget v5, p0, Landroid/widget/NumberPicker;->mSelectorWheelState:I

    const/4 v6, 0x2

    if-eq v5, v6, :cond_2

    .line 1324
    :cond_0
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->getDrawingTime()J

    move-result-wide v2

    .line 1325
    .local v2, drawTime:J
    const/4 v4, 0x0

    .local v4, i:I
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->getChildCount()I

    move-result v1

    .local v1, count:I
    :goto_0
    if-ge v4, v1, :cond_2

    .line 1326
    invoke-virtual {p0, v4}, Landroid/widget/NumberPicker;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1327
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v5

    if-nez v5, :cond_1

    .line 1325
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1330
    :cond_1
    invoke-virtual {p0, v4}, Landroid/widget/NumberPicker;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {p0, p1, v5, v2, v3}, Landroid/widget/NumberPicker;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    goto :goto_1

    .line 1333
    .end local v0           #child:Landroid/view/View;
    .end local v1           #count:I
    .end local v2           #drawTime:J
    .end local v4           #i:I
    :cond_2
    return-void
.end method

.method protected getBottomFadingEdgeStrength()F
    .locals 1

    .prologue
    .line 1284
    const v0, 0x3f666666

    return v0
.end method

.method public getDisplayedValues()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 1252
    iget-object v0, p0, Landroid/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    return-object v0
.end method

.method public getMaxValue()I
    .locals 1

    .prologue
    .line 1220
    iget v0, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    return v0
.end method

.method public getMinValue()I
    .locals 1

    .prologue
    .line 1188
    iget v0, p0, Landroid/widget/NumberPicker;->mMinValue:I

    return v0
.end method

.method public getSolidColor()I
    .locals 1

    .prologue
    .line 995
    iget v0, p0, Landroid/widget/NumberPicker;->mSolidColor:I

    return v0
.end method

.method protected getTopFadingEdgeStrength()F
    .locals 1

    .prologue
    .line 1279
    const v0, 0x3f666666

    return v0
.end method

.method public getValue()I
    .locals 1

    .prologue
    .line 1179
    iget v0, p0, Landroid/widget/NumberPicker;->mValue:I

    return v0
.end method

.method public getWrapSelectorWheel()Z
    .locals 1

    .prologue
    .line 1134
    iget-boolean v0, p0, Landroid/widget/NumberPicker;->mWrapSelectorWheel:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 4

    .prologue
    .line 1289
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 1292
    iget-boolean v0, p0, Landroid/widget/NumberPicker;->mFlingable:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/NumberPicker;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1294
    iget-wide v0, p0, Landroid/widget/NumberPicker;->mShowInputControlsAnimimationDuration:J

    const-wide/16 v2, 0x2

    mul-long/2addr v0, v2

    invoke-direct {p0, v0, v1}, Landroid/widget/NumberPicker;->showInputControls(J)V

    .line 1296
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 1300
    invoke-direct {p0}, Landroid/widget/NumberPicker;->removeAllCallbacks()V

    .line 1301
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 16
    .parameter "canvas"

    .prologue
    .line 1337
    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/NumberPicker;->mSelectorWheelState:I

    if-nez v13, :cond_0

    .line 1384
    :goto_0
    return-void

    .line 1341
    :cond_0
    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/NumberPicker;->mRight:I

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/NumberPicker;->mLeft:I

    sub-int/2addr v13, v14

    div-int/lit8 v13, v13, 0x2

    int-to-float v11, v13

    .line 1342
    .local v11, x:F
    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/NumberPicker;->mCurrentScrollOffset:I

    int-to-float v12, v13

    .line 1344
    .local v12, y:F
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v5

    .line 1346
    .local v5, restoreCount:I
    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/NumberPicker;->mSelectorWheelState:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_1

    .line 1347
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v3

    .line 1348
    .local v3, clipBounds:Landroid/graphics/Rect;
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/NumberPicker;->mSelectorElementHeight:I

    invoke-virtual {v3, v13, v14}, Landroid/graphics/Rect;->inset(II)V

    .line 1349
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 1353
    .end local v3           #clipBounds:Landroid/graphics/Rect;
    :cond_1
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/widget/NumberPicker;->mSelectorIndices:[I

    .line 1354
    .local v8, selectorIndices:[I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    array-length v13, v8

    if-ge v4, v13, :cond_4

    .line 1355
    aget v7, v8, v4

    .line 1356
    .local v7, selectorIndex:I
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/NumberPicker;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    invoke-virtual {v13, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1361
    .local v6, scrollSelectorValue:Ljava/lang/String;
    const/4 v13, 0x2

    if-ne v4, v13, :cond_2

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v13}, Landroid/widget/EditText;->getVisibility()I

    move-result v13

    if-eqz v13, :cond_3

    .line 1362
    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v11, v12, v13}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1364
    :cond_3
    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/NumberPicker;->mSelectorElementHeight:I

    int-to-float v13, v13

    add-float/2addr v12, v13

    .line 1354
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1368
    .end local v6           #scrollSelectorValue:Ljava/lang/String;
    .end local v7           #selectorIndex:I
    :cond_4
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/NumberPicker;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v13, :cond_5

    .line 1370
    invoke-virtual/range {p0 .. p0}, Landroid/widget/NumberPicker;->getHeight()I

    move-result v13

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/NumberPicker;->mSelectorElementHeight:I

    sub-int/2addr v13, v14

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/NumberPicker;->mSelectionDividerHeight:I

    sub-int/2addr v13, v14

    div-int/lit8 v10, v13, 0x2

    .line 1372
    .local v10, topOfTopDivider:I
    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/NumberPicker;->mSelectionDividerHeight:I

    add-int v2, v10, v13

    .line 1373
    .local v2, bottomOfTopDivider:I
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/NumberPicker;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/NumberPicker;->mRight:I

    invoke-virtual {v13, v14, v10, v15, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1374
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/NumberPicker;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1377
    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/NumberPicker;->mSelectorElementHeight:I

    add-int v9, v10, v13

    .line 1378
    .local v9, topOfBottomDivider:I
    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/NumberPicker;->mSelectorElementHeight:I

    add-int v1, v2, v13

    .line 1379
    .local v1, bottomOfBottomDivider:I
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/NumberPicker;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/NumberPicker;->mRight:I

    invoke-virtual {v13, v14, v9, v15, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1380
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/NumberPicker;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1383
    .end local v1           #bottomOfBottomDivider:I
    .end local v2           #bottomOfTopDivider:I
    .end local v9           #topOfBottomDivider:I
    .end local v10           #topOfTopDivider:I
    :cond_5
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto/16 :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .parameter "event"

    .prologue
    const/4 v6, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 775
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-boolean v5, p0, Landroid/widget/NumberPicker;->mFlingable:Z

    if-nez v5, :cond_1

    :cond_0
    move v3, v4

    .line 820
    :goto_0
    return v3

    .line 778
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    :cond_2
    :pswitch_0
    move v3, v4

    .line 820
    goto :goto_0

    .line 780
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    iput v5, p0, Landroid/widget/NumberPicker;->mLastDownEventY:F

    iput v5, p0, Landroid/widget/NumberPicker;->mLastMotionEventY:F

    .line 781
    invoke-direct {p0}, Landroid/widget/NumberPicker;->removeAllCallbacks()V

    .line 782
    iget-object v5, p0, Landroid/widget/NumberPicker;->mShowInputControlsAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->cancel()V

    .line 783
    iget-object v5, p0, Landroid/widget/NumberPicker;->mDimSelectorWheelAnimator:Landroid/animation/Animator;

    invoke-virtual {v5}, Landroid/animation/Animator;->cancel()V

    .line 784
    iput-boolean v4, p0, Landroid/widget/NumberPicker;->mCheckBeginEditOnUpEvent:Z

    .line 785
    iput-boolean v3, p0, Landroid/widget/NumberPicker;->mAdjustScrollerOnUpEvent:Z

    .line 786
    iget v5, p0, Landroid/widget/NumberPicker;->mSelectorWheelState:I

    if-ne v5, v6, :cond_5

    .line 787
    iget-object v5, p0, Landroid/widget/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    const/16 v6, 0xff

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 788
    iget-object v5, p0, Landroid/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->isFinished()Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Landroid/widget/NumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->isFinished()Z

    move-result v5

    if-eqz v5, :cond_4

    move v2, v3

    .line 790
    .local v2, scrollersFinished:Z
    :goto_1
    if-nez v2, :cond_3

    .line 791
    iget-object v5, p0, Landroid/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {v5, v3}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 792
    iget-object v5, p0, Landroid/widget/NumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-virtual {v5, v3}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 793
    invoke-direct {p0, v4}, Landroid/widget/NumberPicker;->onScrollStateChange(I)V

    .line 795
    :cond_3
    iput-boolean v2, p0, Landroid/widget/NumberPicker;->mCheckBeginEditOnUpEvent:Z

    .line 796
    iput-boolean v3, p0, Landroid/widget/NumberPicker;->mAdjustScrollerOnUpEvent:Z

    .line 797
    invoke-direct {p0}, Landroid/widget/NumberPicker;->hideInputControls()V

    goto :goto_0

    .end local v2           #scrollersFinished:Z
    :cond_4
    move v2, v4

    .line 788
    goto :goto_1

    .line 800
    :cond_5
    iget-object v5, p0, Landroid/widget/NumberPicker;->mIncrementButton:Landroid/widget/ImageButton;

    invoke-direct {p0, p1, v5}, Landroid/widget/NumberPicker;->isEventInVisibleViewHitRect(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v5

    if-nez v5, :cond_6

    iget-object v5, p0, Landroid/widget/NumberPicker;->mDecrementButton:Landroid/widget/ImageButton;

    invoke-direct {p0, p1, v5}, Landroid/widget/NumberPicker;->isEventInVisibleViewHitRect(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_7

    :cond_6
    move v3, v4

    .line 802
    goto :goto_0

    .line 804
    :cond_7
    iput-boolean v4, p0, Landroid/widget/NumberPicker;->mAdjustScrollerOnUpEvent:Z

    .line 805
    invoke-direct {p0, v6}, Landroid/widget/NumberPicker;->setSelectorWheelState(I)V

    .line 806
    invoke-direct {p0}, Landroid/widget/NumberPicker;->hideInputControls()V

    goto :goto_0

    .line 809
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    .line 810
    .local v0, currentMoveY:F
    iget v5, p0, Landroid/widget/NumberPicker;->mLastDownEventY:F

    sub-float v5, v0, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    float-to-int v1, v5

    .line 811
    .local v1, deltaDownY:I
    iget v5, p0, Landroid/widget/NumberPicker;->mTouchSlop:I

    if-le v1, v5, :cond_2

    .line 812
    iput-boolean v4, p0, Landroid/widget/NumberPicker;->mCheckBeginEditOnUpEvent:Z

    .line 813
    invoke-direct {p0, v3}, Landroid/widget/NumberPicker;->onScrollStateChange(I)V

    .line 814
    invoke-direct {p0, v6}, Landroid/widget/NumberPicker;->setSelectorWheelState(I)V

    .line 815
    invoke-direct {p0}, Landroid/widget/NumberPicker;->hideInputControls()V

    goto/16 :goto_0

    .line 778
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 23
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 722
    invoke-virtual/range {p0 .. p0}, Landroid/widget/NumberPicker;->getMeasuredWidth()I

    move-result v20

    .line 723
    .local v20, msrdWdth:I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/NumberPicker;->getMeasuredHeight()I

    move-result v19

    .line 726
    .local v19, msrdHght:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/NumberPicker;->mIncrementButton:Landroid/widget/ImageButton;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/ImageButton;->getMeasuredWidth()I

    move-result v12

    .line 727
    .local v12, inctBtnMsrdWdth:I
    sub-int v21, v20, v12

    div-int/lit8 v9, v21, 0x2

    .line 728
    .local v9, incrBtnLeft:I
    const/4 v11, 0x0

    .line 729
    .local v11, incrBtnTop:I
    add-int v10, v9, v12

    .line 730
    .local v10, incrBtnRight:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/NumberPicker;->mIncrementButton:Landroid/widget/ImageButton;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/ImageButton;->getMeasuredHeight()I

    move-result v21

    add-int/lit8 v8, v21, 0x0

    .line 731
    .local v8, incrBtnBottom:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/NumberPicker;->mIncrementButton:Landroid/widget/ImageButton;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v0, v9, v1, v10, v8}, Landroid/widget/ImageButton;->layout(IIII)V

    .line 734
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/EditText;->getMeasuredWidth()I

    move-result v16

    .line 735
    .local v16, inptTxtMsrdWdth:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/EditText;->getMeasuredHeight()I

    move-result v15

    .line 736
    .local v15, inptTxtMsrdHght:I
    sub-int v21, v20, v16

    div-int/lit8 v14, v21, 0x2

    .line 737
    .local v14, inptTxtLeft:I
    sub-int v21, v19, v15

    div-int/lit8 v18, v21, 0x2

    .line 738
    .local v18, inptTxtTop:I
    add-int v17, v14, v16

    .line 739
    .local v17, inptTxtRight:I
    add-int v13, v18, v15

    .line 740
    .local v13, inptTxtBottom:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move/from16 v1, v18

    move/from16 v2, v17

    invoke-virtual {v0, v14, v1, v2, v13}, Landroid/widget/EditText;->layout(IIII)V

    .line 743
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/NumberPicker;->mIncrementButton:Landroid/widget/ImageButton;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/ImageButton;->getMeasuredWidth()I

    move-result v5

    .line 744
    .local v5, decrBtnMsrdWdth:I
    sub-int v21, v20, v5

    div-int/lit8 v4, v21, 0x2

    .line 745
    .local v4, decrBtnLeft:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/NumberPicker;->mDecrementButton:Landroid/widget/ImageButton;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/ImageButton;->getMeasuredHeight()I

    move-result v21

    sub-int v7, v19, v21

    .line 746
    .local v7, decrBtnTop:I
    add-int v6, v4, v5

    .line 747
    .local v6, decrBtnRight:I
    move/from16 v3, v19

    .line 748
    .local v3, decrBtnBottom:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/NumberPicker;->mDecrementButton:Landroid/widget/ImageButton;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v7, v6, v3}, Landroid/widget/ImageButton;->layout(IIII)V

    .line 751
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/NumberPicker;->mScrollWheelAndFadingEdgesInitialized:Z

    move/from16 v21, v0

    if-eqz v21, :cond_0

    if-eqz p1, :cond_1

    .line 752
    :cond_0
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/NumberPicker;->mScrollWheelAndFadingEdgesInitialized:Z

    .line 754
    invoke-direct/range {p0 .. p0}, Landroid/widget/NumberPicker;->initializeSelectorWheel()V

    .line 755
    invoke-direct/range {p0 .. p0}, Landroid/widget/NumberPicker;->initializeFadingEdges()V

    .line 757
    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 6
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 762
    iget v4, p0, Landroid/widget/NumberPicker;->mMaxWidth:I

    invoke-direct {p0, p1, v4}, Landroid/widget/NumberPicker;->makeMeasureSpec(II)I

    move-result v2

    .line 763
    .local v2, newWidthMeasureSpec:I
    iget v4, p0, Landroid/widget/NumberPicker;->mMaxHeight:I

    invoke-direct {p0, p2, v4}, Landroid/widget/NumberPicker;->makeMeasureSpec(II)I

    move-result v1

    .line 764
    .local v1, newHeightMeasureSpec:I
    invoke-super {p0, v2, v1}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 766
    iget v4, p0, Landroid/widget/NumberPicker;->mMinWidth:I

    invoke-virtual {p0}, Landroid/widget/NumberPicker;->getMeasuredWidth()I

    move-result v5

    invoke-direct {p0, v4, v5, p1}, Landroid/widget/NumberPicker;->resolveSizeAndStateRespectingMinSize(III)I

    move-result v3

    .line 768
    .local v3, widthSize:I
    iget v4, p0, Landroid/widget/NumberPicker;->mMinHeight:I

    invoke-virtual {p0}, Landroid/widget/NumberPicker;->getMeasuredHeight()I

    move-result v5

    invoke-direct {p0, v4, v5, p2}, Landroid/widget/NumberPicker;->resolveSizeAndStateRespectingMinSize(III)I

    move-result v0

    .line 770
    .local v0, heightSize:I
    invoke-virtual {p0, v3, v0}, Landroid/widget/NumberPicker;->setMeasuredDimension(II)V

    .line 771
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .parameter "ev"

    .prologue
    .line 825
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->isEnabled()Z

    move-result v9

    if-nez v9, :cond_0

    .line 826
    const/4 v9, 0x0

    .line 885
    :goto_0
    return v9

    .line 828
    :cond_0
    iget-object v9, p0, Landroid/widget/NumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v9, :cond_1

    .line 829
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v9

    iput-object v9, p0, Landroid/widget/NumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 831
    :cond_1
    iget-object v9, p0, Landroid/widget/NumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v9, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 832
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 833
    .local v0, action:I
    packed-switch v0, :pswitch_data_0

    .line 885
    :goto_1
    const/4 v9, 0x1

    goto :goto_0

    .line 835
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 836
    .local v1, currentMoveY:F
    iget-boolean v9, p0, Landroid/widget/NumberPicker;->mCheckBeginEditOnUpEvent:Z

    if-nez v9, :cond_2

    iget v9, p0, Landroid/widget/NumberPicker;->mScrollState:I

    const/4 v10, 0x1

    if-eq v9, v10, :cond_3

    .line 838
    :cond_2
    iget v9, p0, Landroid/widget/NumberPicker;->mLastDownEventY:F

    sub-float v9, v1, v9

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    float-to-int v2, v9

    .line 839
    .local v2, deltaDownY:I
    iget v9, p0, Landroid/widget/NumberPicker;->mTouchSlop:I

    if-le v2, v9, :cond_3

    .line 840
    const/4 v9, 0x0

    iput-boolean v9, p0, Landroid/widget/NumberPicker;->mCheckBeginEditOnUpEvent:Z

    .line 841
    const/4 v9, 0x1

    invoke-direct {p0, v9}, Landroid/widget/NumberPicker;->onScrollStateChange(I)V

    .line 844
    .end local v2           #deltaDownY:I
    :cond_3
    iget v9, p0, Landroid/widget/NumberPicker;->mLastMotionEventY:F

    sub-float v9, v1, v9

    float-to-int v3, v9

    .line 845
    .local v3, deltaMoveY:I
    const/4 v9, 0x0

    invoke-virtual {p0, v9, v3}, Landroid/widget/NumberPicker;->scrollBy(II)V

    .line 846
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->invalidate()V

    .line 847
    iput v1, p0, Landroid/widget/NumberPicker;->mLastMotionEventY:F

    goto :goto_1

    .line 850
    .end local v1           #currentMoveY:F
    .end local v3           #deltaMoveY:I
    :pswitch_1
    iget-boolean v9, p0, Landroid/widget/NumberPicker;->mCheckBeginEditOnUpEvent:Z

    if-eqz v9, :cond_5

    .line 851
    const/4 v9, 0x0

    iput-boolean v9, p0, Landroid/widget/NumberPicker;->mCheckBeginEditOnUpEvent:Z

    .line 852
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v9

    iget-wide v11, p0, Landroid/widget/NumberPicker;->mLastUpEventTimeMillis:J

    sub-long v4, v9, v11

    .line 853
    .local v4, deltaTapTimeMillis:J
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v9

    int-to-long v9, v9

    cmp-long v9, v4, v9

    if-gez v9, :cond_5

    .line 854
    const/4 v9, 0x1

    invoke-direct {p0, v9}, Landroid/widget/NumberPicker;->setSelectorWheelState(I)V

    .line 855
    iget-wide v9, p0, Landroid/widget/NumberPicker;->mShowInputControlsAnimimationDuration:J

    invoke-direct {p0, v9, v10}, Landroid/widget/NumberPicker;->showInputControls(J)V

    .line 856
    iget-object v9, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v9}, Landroid/widget/EditText;->requestFocus()Z

    .line 857
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v7

    .line 858
    .local v7, inputMethodManager:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v7, :cond_4

    .line 859
    iget-object v9, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    const/4 v10, 0x0

    invoke-virtual {v7, v9, v10}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 861
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v9

    iput-wide v9, p0, Landroid/widget/NumberPicker;->mLastUpEventTimeMillis:J

    .line 862
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 865
    .end local v4           #deltaTapTimeMillis:J
    .end local v7           #inputMethodManager:Landroid/view/inputmethod/InputMethodManager;
    :cond_5
    iget-object v8, p0, Landroid/widget/NumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 866
    .local v8, velocityTracker:Landroid/view/VelocityTracker;
    const/16 v9, 0x3e8

    iget v10, p0, Landroid/widget/NumberPicker;->mMaximumFlingVelocity:I

    int-to-float v10, v10

    invoke-virtual {v8, v9, v10}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 867
    invoke-virtual {v8}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v9

    float-to-int v6, v9

    .line 868
    .local v6, initialVelocity:I
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v9

    iget v10, p0, Landroid/widget/NumberPicker;->mMinimumFlingVelocity:I

    if-le v9, v10, :cond_7

    .line 869
    invoke-direct {p0, v6}, Landroid/widget/NumberPicker;->fling(I)V

    .line 870
    const/4 v9, 0x2

    invoke-direct {p0, v9}, Landroid/widget/NumberPicker;->onScrollStateChange(I)V

    .line 880
    :cond_6
    :goto_2
    iget-object v9, p0, Landroid/widget/NumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v9}, Landroid/view/VelocityTracker;->recycle()V

    .line 881
    const/4 v9, 0x0

    iput-object v9, p0, Landroid/widget/NumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 882
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v9

    iput-wide v9, p0, Landroid/widget/NumberPicker;->mLastUpEventTimeMillis:J

    goto/16 :goto_1

    .line 872
    :cond_7
    iget-boolean v9, p0, Landroid/widget/NumberPicker;->mAdjustScrollerOnUpEvent:Z

    if-eqz v9, :cond_8

    .line 873
    iget-object v9, p0, Landroid/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {v9}, Landroid/widget/Scroller;->isFinished()Z

    move-result v9

    if-eqz v9, :cond_6

    iget-object v9, p0, Landroid/widget/NumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-virtual {v9}, Landroid/widget/Scroller;->isFinished()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 874
    const/4 v9, 0x0

    invoke-direct {p0, v9}, Landroid/widget/NumberPicker;->postAdjustScrollerCommand(I)V

    goto :goto_2

    .line 877
    :cond_8
    sget v9, Landroid/widget/NumberPicker;->SHOW_INPUT_CONTROLS_DELAY_MILLIS:I

    invoke-direct {p0, v9}, Landroid/widget/NumberPicker;->postAdjustScrollerCommand(I)V

    goto :goto_2

    .line 833
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public scrollBy(II)V
    .locals 4
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v3, 0x2

    .line 960
    iget v1, p0, Landroid/widget/NumberPicker;->mSelectorWheelState:I

    if-nez v1, :cond_1

    .line 991
    :cond_0
    :goto_0
    return-void

    .line 963
    :cond_1
    iget-object v0, p0, Landroid/widget/NumberPicker;->mSelectorIndices:[I

    .line 964
    .local v0, selectorIndices:[I
    iget-boolean v1, p0, Landroid/widget/NumberPicker;->mWrapSelectorWheel:Z

    if-nez v1, :cond_2

    if-lez p2, :cond_2

    aget v1, v0, v3

    iget v2, p0, Landroid/widget/NumberPicker;->mMinValue:I

    if-gt v1, v2, :cond_2

    .line 966
    iget v1, p0, Landroid/widget/NumberPicker;->mInitialScrollOffset:I

    iput v1, p0, Landroid/widget/NumberPicker;->mCurrentScrollOffset:I

    goto :goto_0

    .line 969
    :cond_2
    iget-boolean v1, p0, Landroid/widget/NumberPicker;->mWrapSelectorWheel:Z

    if-nez v1, :cond_3

    if-gez p2, :cond_3

    aget v1, v0, v3

    iget v2, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    if-lt v1, v2, :cond_3

    .line 971
    iget v1, p0, Landroid/widget/NumberPicker;->mInitialScrollOffset:I

    iput v1, p0, Landroid/widget/NumberPicker;->mCurrentScrollOffset:I

    goto :goto_0

    .line 974
    :cond_3
    iget v1, p0, Landroid/widget/NumberPicker;->mCurrentScrollOffset:I

    add-int/2addr v1, p2

    iput v1, p0, Landroid/widget/NumberPicker;->mCurrentScrollOffset:I

    .line 975
    :cond_4
    :goto_1
    iget v1, p0, Landroid/widget/NumberPicker;->mCurrentScrollOffset:I

    iget v2, p0, Landroid/widget/NumberPicker;->mInitialScrollOffset:I

    sub-int/2addr v1, v2

    iget v2, p0, Landroid/widget/NumberPicker;->mSelectorTextGapHeight:I

    if-le v1, v2, :cond_5

    .line 976
    iget v1, p0, Landroid/widget/NumberPicker;->mCurrentScrollOffset:I

    iget v2, p0, Landroid/widget/NumberPicker;->mSelectorElementHeight:I

    sub-int/2addr v1, v2

    iput v1, p0, Landroid/widget/NumberPicker;->mCurrentScrollOffset:I

    .line 977
    invoke-direct {p0, v0}, Landroid/widget/NumberPicker;->decrementSelectorIndices([I)V

    .line 978
    aget v1, v0, v3

    invoke-direct {p0, v1}, Landroid/widget/NumberPicker;->changeCurrent(I)V

    .line 979
    iget-boolean v1, p0, Landroid/widget/NumberPicker;->mWrapSelectorWheel:Z

    if-nez v1, :cond_4

    aget v1, v0, v3

    iget v2, p0, Landroid/widget/NumberPicker;->mMinValue:I

    if-gt v1, v2, :cond_4

    .line 980
    iget v1, p0, Landroid/widget/NumberPicker;->mInitialScrollOffset:I

    iput v1, p0, Landroid/widget/NumberPicker;->mCurrentScrollOffset:I

    goto :goto_1

    .line 983
    :cond_5
    :goto_2
    iget v1, p0, Landroid/widget/NumberPicker;->mCurrentScrollOffset:I

    iget v2, p0, Landroid/widget/NumberPicker;->mInitialScrollOffset:I

    sub-int/2addr v1, v2

    iget v2, p0, Landroid/widget/NumberPicker;->mSelectorTextGapHeight:I

    neg-int v2, v2

    if-ge v1, v2, :cond_0

    .line 984
    iget v1, p0, Landroid/widget/NumberPicker;->mCurrentScrollOffset:I

    iget v2, p0, Landroid/widget/NumberPicker;->mSelectorElementHeight:I

    add-int/2addr v1, v2

    iput v1, p0, Landroid/widget/NumberPicker;->mCurrentScrollOffset:I

    .line 985
    invoke-direct {p0, v0}, Landroid/widget/NumberPicker;->incrementSelectorIndices([I)V

    .line 986
    aget v1, v0, v3

    invoke-direct {p0, v1}, Landroid/widget/NumberPicker;->changeCurrent(I)V

    .line 987
    iget-boolean v1, p0, Landroid/widget/NumberPicker;->mWrapSelectorWheel:Z

    if-nez v1, :cond_5

    aget v1, v0, v3

    iget v2, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    if-lt v1, v2, :cond_5

    .line 988
    iget v1, p0, Landroid/widget/NumberPicker;->mInitialScrollOffset:I

    iput v1, p0, Landroid/widget/NumberPicker;->mCurrentScrollOffset:I

    goto :goto_2
.end method

.method public sendAccessibilityEvent(I)V
    .locals 0
    .parameter "eventType"

    .prologue
    .line 1390
    return-void
.end method

.method public setDisplayedValues([Ljava/lang/String;)V
    .locals 2
    .parameter "displayedValues"

    .prologue
    .line 1261
    iget-object v0, p0, Landroid/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-ne v0, p1, :cond_0

    .line 1275
    :goto_0
    return-void

    .line 1264
    :cond_0
    iput-object p1, p0, Landroid/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    .line 1265
    iget-object v0, p0, Landroid/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 1267
    iget-object v0, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    const v1, 0x80001

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setRawInputType(I)V

    .line 1272
    :goto_1
    invoke-direct {p0}, Landroid/widget/NumberPicker;->updateInputTextView()V

    .line 1273
    invoke-direct {p0}, Landroid/widget/NumberPicker;->initializeSelectorWheelIndices()V

    .line 1274
    invoke-direct {p0}, Landroid/widget/NumberPicker;->tryComputeMaxWidth()V

    goto :goto_0

    .line 1270
    :cond_1
    iget-object v0, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setRawInputType(I)V

    goto :goto_1
.end method

.method public setEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 952
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 953
    iget-object v0, p0, Landroid/widget/NumberPicker;->mIncrementButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 954
    iget-object v0, p0, Landroid/widget/NumberPicker;->mDecrementButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 955
    iget-object v0, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 956
    return-void
.end method

.method public setFormatter(Landroid/widget/NumberPicker$Formatter;)V
    .locals 1
    .parameter "formatter"

    .prologue
    .line 1029
    iget-object v0, p0, Landroid/widget/NumberPicker;->mFormatter:Landroid/widget/NumberPicker$Formatter;

    if-ne p1, v0, :cond_0

    .line 1035
    :goto_0
    return-void

    .line 1032
    :cond_0
    iput-object p1, p0, Landroid/widget/NumberPicker;->mFormatter:Landroid/widget/NumberPicker$Formatter;

    .line 1033
    invoke-direct {p0}, Landroid/widget/NumberPicker;->initializeSelectorWheelIndices()V

    .line 1034
    invoke-direct {p0}, Landroid/widget/NumberPicker;->updateInputTextView()V

    goto :goto_0
.end method

.method public setMaxValue(I)V
    .locals 3
    .parameter "maxValue"

    .prologue
    .line 1229
    iget v1, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    if-ne v1, p1, :cond_0

    .line 1244
    :goto_0
    return-void

    .line 1232
    :cond_0
    if-gez p1, :cond_1

    .line 1233
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "maxValue must be >= 0"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1235
    :cond_1
    iput p1, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    .line 1236
    iget v1, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    iget v2, p0, Landroid/widget/NumberPicker;->mValue:I

    if-ge v1, v2, :cond_2

    .line 1237
    iget v1, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    iput v1, p0, Landroid/widget/NumberPicker;->mValue:I

    .line 1239
    :cond_2
    iget v1, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    iget v2, p0, Landroid/widget/NumberPicker;->mMinValue:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Landroid/widget/NumberPicker;->mSelectorIndices:[I

    array-length v2, v2

    if-le v1, v2, :cond_3

    const/4 v0, 0x1

    .line 1240
    .local v0, wrapSelectorWheel:Z
    :goto_1
    invoke-virtual {p0, v0}, Landroid/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 1241
    invoke-direct {p0}, Landroid/widget/NumberPicker;->initializeSelectorWheelIndices()V

    .line 1242
    invoke-direct {p0}, Landroid/widget/NumberPicker;->updateInputTextView()V

    .line 1243
    invoke-direct {p0}, Landroid/widget/NumberPicker;->tryComputeMaxWidth()V

    goto :goto_0

    .line 1239
    .end local v0           #wrapSelectorWheel:Z
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public setMinValue(I)V
    .locals 3
    .parameter "minValue"

    .prologue
    .line 1197
    iget v1, p0, Landroid/widget/NumberPicker;->mMinValue:I

    if-ne v1, p1, :cond_0

    .line 1212
    :goto_0
    return-void

    .line 1200
    :cond_0
    if-gez p1, :cond_1

    .line 1201
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "minValue must be >= 0"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1203
    :cond_1
    iput p1, p0, Landroid/widget/NumberPicker;->mMinValue:I

    .line 1204
    iget v1, p0, Landroid/widget/NumberPicker;->mMinValue:I

    iget v2, p0, Landroid/widget/NumberPicker;->mValue:I

    if-le v1, v2, :cond_2

    .line 1205
    iget v1, p0, Landroid/widget/NumberPicker;->mMinValue:I

    iput v1, p0, Landroid/widget/NumberPicker;->mValue:I

    .line 1207
    :cond_2
    iget v1, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    iget v2, p0, Landroid/widget/NumberPicker;->mMinValue:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Landroid/widget/NumberPicker;->mSelectorIndices:[I

    array-length v2, v2

    if-le v1, v2, :cond_3

    const/4 v0, 0x1

    .line 1208
    .local v0, wrapSelectorWheel:Z
    :goto_1
    invoke-virtual {p0, v0}, Landroid/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 1209
    invoke-direct {p0}, Landroid/widget/NumberPicker;->initializeSelectorWheelIndices()V

    .line 1210
    invoke-direct {p0}, Landroid/widget/NumberPicker;->updateInputTextView()V

    .line 1211
    invoke-direct {p0}, Landroid/widget/NumberPicker;->tryComputeMaxWidth()V

    goto :goto_0

    .line 1207
    .end local v0           #wrapSelectorWheel:Z
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public setOnLongPressUpdateInterval(J)V
    .locals 0
    .parameter "intervalMillis"

    .prologue
    .line 1170
    iput-wide p1, p0, Landroid/widget/NumberPicker;->mLongPressUpdateInterval:J

    .line 1171
    return-void
.end method

.method public setOnScrollListener(Landroid/widget/NumberPicker$OnScrollListener;)V
    .locals 0
    .parameter "onScrollListener"

    .prologue
    .line 1013
    iput-object p1, p0, Landroid/widget/NumberPicker;->mOnScrollListener:Landroid/widget/NumberPicker$OnScrollListener;

    .line 1014
    return-void
.end method

.method public setOnValueChangedListener(Landroid/widget/NumberPicker$OnValueChangeListener;)V
    .locals 0
    .parameter "onValueChangedListener"

    .prologue
    .line 1004
    iput-object p1, p0, Landroid/widget/NumberPicker;->mOnValueChangeListener:Landroid/widget/NumberPicker$OnValueChangeListener;

    .line 1005
    return-void
.end method

.method public setValue(I)V
    .locals 1
    .parameter "value"

    .prologue
    .line 1066
    iget v0, p0, Landroid/widget/NumberPicker;->mValue:I

    if-ne v0, p1, :cond_0

    .line 1080
    :goto_0
    return-void

    .line 1069
    :cond_0
    iget v0, p0, Landroid/widget/NumberPicker;->mMinValue:I

    if-ge p1, v0, :cond_1

    .line 1070
    iget-boolean v0, p0, Landroid/widget/NumberPicker;->mWrapSelectorWheel:Z

    if-eqz v0, :cond_3

    iget p1, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    .line 1072
    :cond_1
    :goto_1
    iget v0, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    if-le p1, v0, :cond_2

    .line 1073
    iget-boolean v0, p0, Landroid/widget/NumberPicker;->mWrapSelectorWheel:Z

    if-eqz v0, :cond_4

    iget p1, p0, Landroid/widget/NumberPicker;->mMinValue:I

    .line 1075
    :cond_2
    :goto_2
    iput p1, p0, Landroid/widget/NumberPicker;->mValue:I

    .line 1076
    invoke-direct {p0}, Landroid/widget/NumberPicker;->initializeSelectorWheelIndices()V

    .line 1077
    invoke-direct {p0}, Landroid/widget/NumberPicker;->updateInputTextView()V

    .line 1078
    invoke-direct {p0}, Landroid/widget/NumberPicker;->updateIncrementAndDecrementButtonsVisibilityState()V

    .line 1079
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->invalidate()V

    goto :goto_0

    .line 1070
    :cond_3
    iget p1, p0, Landroid/widget/NumberPicker;->mMinValue:I

    goto :goto_1

    .line 1073
    :cond_4
    iget p1, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    goto :goto_2
.end method

.method public setWrapSelectorWheel(Z)V
    .locals 2
    .parameter "wrapSelectorWheel"

    .prologue
    .line 1150
    if-eqz p1, :cond_0

    iget v0, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    iget v1, p0, Landroid/widget/NumberPicker;->mMinValue:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Landroid/widget/NumberPicker;->mSelectorIndices:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 1151
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Range less than selector items count."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1153
    :cond_0
    iget-boolean v0, p0, Landroid/widget/NumberPicker;->mWrapSelectorWheel:Z

    if-eq p1, v0, :cond_1

    .line 1154
    iput-boolean p1, p0, Landroid/widget/NumberPicker;->mWrapSelectorWheel:Z

    .line 1155
    invoke-direct {p0}, Landroid/widget/NumberPicker;->updateIncrementAndDecrementButtonsVisibilityState()V

    .line 1157
    :cond_1
    return-void
.end method

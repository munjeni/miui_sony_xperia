.class public Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;
.super Lcom/android/internal/widget/multiwaveview/MultiWaveView;
.source "MiuiInCallAnswerWidgetHorizontal.java"


# static fields
.field private static final HIDE_TARGET_LIGHT_DELAY:I = 0x14

.field private static final RETURN_TO_HOME_DELAY:I = 0x4b0

.field private static final RETURN_TO_HOME_DURATION:I = 0x12c

.field private static final SHOW_ANIMATION_DELAY:I = 0x0

.field private static final SHOW_ANIMATION_DURATION:I = 0xc8

.field private static final SHOW_HINT_ANIMATION_DELAY:I = 0xc8

.field private static final SHOW_HINT_ANIMATION_DURATION:I = 0x5dc

.field private static final SHOW_HINT_DELAY:I = 0x190

.field private static final SHOW_HINT_DURATION:I = 0x12c

.field private static final SHOW_OUTERRING_DELAY:I = 0xc8

.field private static final SHOW_OUTERRING_DURATION:I = 0x190

.field private static final SHOW_TARGET_LIGHT_DELAY:I = 0x14

.field private static final STATE_ANSWER:I = 0x6

.field public static final STATE_ANSWER_HANDLE:[I = null

.field private static final STATE_DECLINE:I = 0x5

.field public static final STATE_DECLINE_HANDLE:[I = null

.field private static final STATE_FINISH:I = 0x4

.field private static final STATE_FIRST_TOUCH:I = 0x1

.field public static final STATE_HINT_ANIM:[[I = null

.field private static final STATE_IDLE:I = 0x0

.field private static final STATE_SNAP:I = 0x3

.field private static final STATE_TRACKING:I = 0x2


# instance fields
.field private mCurrentTargetLight:Lcom/android/internal/widget/multiwaveview/TargetDrawable;

.field private mHintAnimation:Landroid/animation/ValueAnimator;

.field private mOuterRingListener:Landroid/animation/Animator$AnimatorListener;

.field private mRightHintAnimTargetDrawable:Lcom/android/internal/widget/multiwaveview/TargetDrawable;

.field private mShowingOuterRing:Z

.field private mTargetLightAnimations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/widget/multiwaveview/Tweener;",
            ">;"
        }
    .end annotation
.end field

.field private mTargetLightDrawables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/widget/multiwaveview/TargetDrawable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x3

    .line 53
    new-array v0, v3, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->STATE_DECLINE_HANDLE:[I

    .line 55
    new-array v0, v3, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->STATE_ANSWER_HANDLE:[I

    .line 58
    const/4 v0, 0x7

    new-array v0, v0, [[I

    const/4 v1, 0x0

    new-array v2, v3, [I

    fill-array-data v2, :array_2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-array v2, v3, [I

    fill-array-data v2, :array_3

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-array v2, v3, [I

    fill-array-data v2, :array_4

    aput-object v2, v0, v1

    new-array v1, v3, [I

    fill-array-data v1, :array_5

    aput-object v1, v0, v3

    const/4 v1, 0x4

    new-array v2, v3, [I

    fill-array-data v2, :array_6

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-array v2, v3, [I

    fill-array-data v2, :array_7

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v3, [I

    fill-array-data v2, :array_8

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->STATE_HINT_ANIM:[[I

    return-void

    .line 53
    :array_0
    .array-data 0x4
        0x9et 0x0t 0x1t 0x1t
        0x5et 0xfft 0xfet 0xfet
        0x9ct 0x0t 0x1t 0x1t
    .end array-data

    .line 55
    :array_1
    .array-data 0x4
        0x9et 0x0t 0x1t 0x1t
        0xa2t 0x0t 0x1t 0x1t
        0x9ct 0x0t 0x1t 0x1t
    .end array-data

    .line 58
    :array_2
    .array-data 0x4
        0x9et 0x0t 0x1t 0x1t
        0x5et 0xfft 0xfet 0xfet
        0x64t 0xfft 0xfet 0xfet
    .end array-data

    :array_3
    .array-data 0x4
        0x62t 0xfft 0xfet 0xfet
        0xa2t 0x0t 0x1t 0x1t
        0x64t 0xfft 0xfet 0xfet
    .end array-data

    :array_4
    .array-data 0x4
        0x62t 0xfft 0xfet 0xfet
        0x5et 0xfft 0xfet 0xfet
        0x9ct 0x0t 0x1t 0x1t
    .end array-data

    :array_5
    .array-data 0x4
        0x9et 0x0t 0x1t 0x1t
        0xa2t 0x0t 0x1t 0x1t
        0x64t 0xfft 0xfet 0xfet
    .end array-data

    :array_6
    .array-data 0x4
        0x62t 0xfft 0xfet 0xfet
        0xa2t 0x0t 0x1t 0x1t
        0x9ct 0x0t 0x1t 0x1t
    .end array-data

    :array_7
    .array-data 0x4
        0x9et 0x0t 0x1t 0x1t
        0xa2t 0x0t 0x1t 0x1t
        0x9ct 0x0t 0x1t 0x1t
    .end array-data

    :array_8
    .array-data 0x4
        0x62t 0xfft 0xfet 0xfet
        0x5et 0xfft 0xfet 0xfet
        0x64t 0xfft 0xfet 0xfet
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 97
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 98
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v4, 0x0

    .line 101
    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/multiwaveview/MultiWaveView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 81
    iput-boolean v4, p0, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->mShowingOuterRing:Z

    .line 83
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->mTargetLightDrawables:Ljava/util/ArrayList;

    .line 84
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->mTargetLightAnimations:Ljava/util/ArrayList;

    .line 89
    new-instance v3, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal$1;

    invoke-direct {v3, p0}, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal$1;-><init>(Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;)V

    iput-object v3, p0, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->mOuterRingListener:Landroid/animation/Animator$AnimatorListener;

    .line 103
    sget-object v3, Lmiui/R$styleable;->MiuiInCallAnswerWidgetHorizontal:[I

    invoke-virtual {p1, p2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 104
    .local v0, a:Landroid/content/res/TypedArray;
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 106
    .local v1, outValue:Landroid/util/TypedValue;
    invoke-virtual {v0, v4, v1}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 107
    iget v3, v1, Landroid/util/TypedValue;->resourceId:I

    invoke-direct {p0, v3}, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->internalSetTargetLightResources(I)V

    .line 110
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 111
    .local v2, res:Landroid/content/res/Resources;
    new-instance v3, Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;)V

    iput-object v3, p0, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->mRightHintAnimTargetDrawable:Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    .line 113
    return-void
.end method

.method static synthetic access$002(Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput-boolean p1, p0, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->mShowingOuterRing:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;)Landroid/animation/ValueAnimator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->mHintAnimation:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput-object p1, p0, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->mHintAnimation:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->showRightHintAnim(I)V

    return-void
.end method

.method private hideRightHintAnim()V
    .locals 2

    .prologue
    .line 442
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->mRightHintAnimTargetDrawable:Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->setAlpha(F)V

    .line 443
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->mHintAnimation:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 444
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->mHintAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    .line 446
    :cond_0
    return-void
.end method

.method private hideTargetLight()V
    .locals 3

    .prologue
    .line 197
    iget-object v2, p0, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->mTargetLightDrawables:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    .line 198
    .local v1, target:Lcom/android/internal/widget/multiwaveview/TargetDrawable;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->setAlpha(F)V

    goto :goto_0

    .line 200
    .end local v1           #target:Lcom/android/internal/widget/multiwaveview/TargetDrawable;
    :cond_0
    return-void
.end method

.method private internalSetTargetLightResources(I)V
    .locals 7
    .parameter "resourceId"

    .prologue
    .line 203
    invoke-virtual {p0}, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 204
    .local v4, res:Landroid/content/res/Resources;
    invoke-virtual {v4, p1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 205
    .local v0, array:Landroid/content/res/TypedArray;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->length()I

    move-result v1

    .line 206
    .local v1, count:I
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 207
    .local v5, targetDrawables:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/widget/multiwaveview/TargetDrawable;>;"
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 208
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 209
    .local v2, drawable:Landroid/graphics/drawable/Drawable;
    new-instance v6, Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    invoke-direct {v6, v4, v2}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 207
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 211
    .end local v2           #drawable:Landroid/graphics/drawable/Drawable;
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 212
    iput-object v5, p0, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->mTargetLightDrawables:Ljava/util/ArrayList;

    .line 213
    invoke-direct {p0}, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->updateTargetLightPositions()V

    .line 214
    return-void
.end method

.method private showOuterRing()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    .line 362
    iget-object v4, p0, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->mOuterRing:Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    const-string/jumbo v5, "scaleX"

    new-array v6, v7, [F

    fill-array-data v6, :array_0

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 363
    .local v2, outerRingAnimationScaleX:Landroid/animation/ObjectAnimator;
    iget-object v4, p0, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->mOuterRing:Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    const-string/jumbo v5, "scaleY"

    new-array v6, v7, [F

    fill-array-data v6, :array_1

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 364
    .local v3, outerRingAnimationScaleY:Landroid/animation/ObjectAnimator;
    iget-object v4, p0, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->mOuterRing:Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    const-string v5, "alpha"

    new-array v6, v7, [F

    fill-array-data v6, :array_2

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 367
    .local v0, outerRingAnimationAlpha:Landroid/animation/ObjectAnimator;
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 368
    .local v1, outerRingAnimationScaleSet:Landroid/animation/AnimatorSet;
    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 371
    const-wide/16 v4, 0x190

    invoke-virtual {v1, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 372
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 373
    iget-object v4, p0, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->mOuterRingListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v1, v4}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 374
    const-wide/16 v4, 0xc8

    invoke-virtual {v1, v4, v5}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 375
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->mShowingOuterRing:Z

    .line 376
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 377
    return-void

    .line 362
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 363
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 364
    :array_2
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method private showRightHintAnim(I)V
    .locals 2
    .parameter "i"

    .prologue
    .line 435
    sget-object v0, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->STATE_HINT_ANIM:[[I

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 436
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->mRightHintAnimTargetDrawable:Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    sget-object v1, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->STATE_HINT_ANIM:[[I

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->setState([I)V

    .line 437
    invoke-virtual {p0}, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->invalidate()V

    .line 439
    :cond_0
    return-void
.end method

.method private startRightHintAnim()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x2

    .line 449
    iget-object v1, p0, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->mRightHintAnimTargetDrawable:Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    const-string v2, "alpha"

    new-array v3, v4, [F

    fill-array-data v3, :array_0

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 450
    .local v0, showHintAnimationAlpha:Landroid/animation/ObjectAnimator;
    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 451
    const-wide/16 v1, 0x190

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 452
    invoke-virtual {v0, v5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 453
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 455
    new-array v1, v4, [F

    fill-array-data v1, :array_1

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->mHintAnimation:Landroid/animation/ValueAnimator;

    .line 456
    iget-object v1, p0, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->mHintAnimation:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x5dc

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 457
    iget-object v1, p0, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->mHintAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 458
    iget-object v1, p0, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->mHintAnimation:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 459
    iget-object v1, p0, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->mHintAnimation:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal$2;

    invoke-direct {v2, p0}, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal$2;-><init>(Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 476
    iget-object v1, p0, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->mHintAnimation:Landroid/animation/ValueAnimator;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 477
    iget-object v1, p0, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->mHintAnimation:Landroid/animation/ValueAnimator;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 478
    iget-object v1, p0, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->mHintAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 479
    return-void

    .line 449
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 455
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method private stopTargetLightAnimation()V
    .locals 3

    .prologue
    .line 182
    iget-object v2, p0, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->mTargetLightAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/multiwaveview/Tweener;

    .line 183
    .local v0, anim:Lcom/android/internal/widget/multiwaveview/Tweener;
    iget-object v2, v0, Lcom/android/internal/widget/multiwaveview/Tweener;->animator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->end()V

    goto :goto_0

    .line 185
    .end local v0           #anim:Lcom/android/internal/widget/multiwaveview/Tweener;
    :cond_0
    iget-object v2, p0, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->mTargetLightAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 186
    return-void
.end method

.method private updateRightHintAnimPositions()V
    .locals 4

    .prologue
    .line 348
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->mRightHintAnimTargetDrawable:Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    iget v1, p0, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->mWaveCenterX:F

    iget v2, p0, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->mOuterRadius:F

    const v3, 0x3f266666

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->setX(F)V

    .line 349
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->mRightHintAnimTargetDrawable:Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    iget v1, p0, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->mWaveCenterY:F

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->setY(F)V

    .line 350
    return-void
.end method

.method private updateTargetLightPositions()V
    .locals 4

    .prologue
    .line 341
    iget-object v2, p0, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->mTargetLightDrawables:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    .line 342
    .local v1, targetLight:Lcom/android/internal/widget/multiwaveview/TargetDrawable;
    iget v2, p0, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->mWaveCenterX:F

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->setX(F)V

    .line 343
    iget v2, p0, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->mWaveCenterX:F

    iget v3, p0, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->mWaveCenterY:F

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->setY(F)V

    goto :goto_0

    .line 345
    .end local v1           #targetLight:Lcom/android/internal/widget/multiwaveview/TargetDrawable;
    :cond_0
    return-void
.end method


# virtual methods
.method protected doFinish()V
    .locals 12

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    const/high16 v9, 0x3f80

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 381
    iget v0, p0, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->mActiveTarget:I

    .line 382
    .local v0, activeTarget:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v3

    .line 384
    .local v1, targetHit:Z
    :goto_0
    if-eqz v1, :cond_1

    .line 385
    iget-object v2, p0, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    sget-object v5, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->STATE_ACTIVE:[I

    invoke-virtual {v2, v5}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->setState([I)V

    .line 387
    invoke-virtual {p0, v4}, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->hideTargets(Z)V

    .line 388
    invoke-direct {p0}, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->hideRightHintAnim()V

    .line 391
    iget v2, p0, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->mActiveTarget:I

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->dispatchTriggerEvent(I)V

    .line 392
    iget-object v2, p0, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->mHandleDrawable:Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    const-wide/16 v5, 0x0

    const/16 v7, 0xe

    new-array v7, v7, [Ljava/lang/Object;

    const-string v8, "ease"

    aput-object v8, v7, v4

    sget-object v8, Lcom/android/internal/widget/multiwaveview/Ease$Quart;->easeOut:Landroid/animation/TimeInterpolator;

    aput-object v8, v7, v3

    const-string v3, "delay"

    aput-object v3, v7, v10

    const/16 v3, 0x4b0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v7, v11

    const/4 v3, 0x4

    const-string v8, "alpha"

    aput-object v8, v7, v3

    const/4 v3, 0x5

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v7, v3

    const/4 v3, 0x6

    const-string/jumbo v8, "x"

    aput-object v8, v7, v3

    const/4 v3, 0x7

    iget v8, p0, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->mWaveCenterX:F

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v7, v3

    const/16 v3, 0x8

    const-string/jumbo v8, "y"

    aput-object v8, v7, v3

    const/16 v3, 0x9

    iget v8, p0, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->mWaveCenterY:F

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v7, v3

    const/16 v3, 0xa

    const-string/jumbo v8, "onUpdate"

    aput-object v8, v7, v3

    const/16 v3, 0xb

    iget-object v8, p0, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    aput-object v8, v7, v3

    const/16 v3, 0xc

    const-string/jumbo v8, "onComplete"

    aput-object v8, v7, v3

    const/16 v3, 0xd

    iget-object v8, p0, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->mResetListener:Landroid/animation/Animator$AnimatorListener;

    aput-object v8, v7, v3

    invoke-static {v2, v5, v6, v7}, Lcom/android/internal/widget/multiwaveview/Tweener;->to(Ljava/lang/Object;J[Ljava/lang/Object;)Lcom/android/internal/widget/multiwaveview/Tweener;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->mHandleAnimation:Lcom/android/internal/widget/multiwaveview/Tweener;

    .line 412
    :goto_1
    iput-boolean v4, p0, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->mDragging:Z

    .line 413
    invoke-virtual {p0, v4}, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->setGrabbedState(I)V

    .line 414
    return-void

    .end local v1           #targetHit:Z
    :cond_0
    move v1, v4

    .line 382
    goto/16 :goto_0

    .line 402
    .restart local v1       #targetHit:Z
    :cond_1
    iget-object v5, p0, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->mHandleDrawable:Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    const-wide/16 v6, 0x12c

    const/16 v2, 0xe

    new-array v8, v2, [Ljava/lang/Object;

    const-string v2, "ease"

    aput-object v2, v8, v4

    sget-object v2, Lcom/android/internal/widget/multiwaveview/Ease$Quart;->easeOut:Landroid/animation/TimeInterpolator;

    aput-object v2, v8, v3

    const-string v2, "delay"

    aput-object v2, v8, v10

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v8, v11

    const/4 v2, 0x4

    const-string v3, "alpha"

    aput-object v3, v8, v2

    const/4 v2, 0x5

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v8, v2

    const/4 v2, 0x6

    const-string/jumbo v3, "x"

    aput-object v3, v8, v2

    const/4 v2, 0x7

    iget v3, p0, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->mWaveCenterX:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v8, v2

    const/16 v2, 0x8

    const-string/jumbo v3, "y"

    aput-object v3, v8, v2

    const/16 v2, 0x9

    iget v3, p0, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->mWaveCenterY:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v8, v2

    const/16 v2, 0xa

    const-string/jumbo v3, "onUpdate"

    aput-object v3, v8, v2

    const/16 v2, 0xb

    iget-object v3, p0, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    aput-object v3, v8, v2

    const/16 v2, 0xc

    const-string/jumbo v3, "onComplete"

    aput-object v3, v8, v2

    const/16 v3, 0xd

    iget-boolean v2, p0, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->mDragging:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->mResetListenerWithPing:Landroid/animation/Animator$AnimatorListener;

    :goto_2
    aput-object v2, v8, v3

    invoke-static {v5, v6, v7, v8}, Lcom/android/internal/widget/multiwaveview/Tweener;->to(Ljava/lang/Object;J[Ljava/lang/Object;)Lcom/android/internal/widget/multiwaveview/Tweener;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->mHandleAnimation:Lcom/android/internal/widget/multiwaveview/Tweener;

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->mResetListener:Landroid/animation/Animator$AnimatorListener;

    goto :goto_2
.end method

.method protected handleMove(Landroid/view/MotionEvent;)V
    .locals 33
    .parameter "event"

    .prologue
    .line 218
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->mDragging:Z

    move/from16 v26, v0

    if-nez v26, :cond_0

    .line 314
    :goto_0
    return-void

    .line 223
    :cond_0
    const/4 v4, -0x1

    .line 224
    .local v4, activeTarget:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v10

    .line 225
    .local v10, historySize:I
    const/4 v13, 0x0

    .local v13, k:I
    :goto_1
    add-int/lit8 v26, v10, 0x1

    move/from16 v0, v26

    if-ge v13, v0, :cond_11

    .line 226
    if-ge v13, v10, :cond_4

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/MotionEvent;->getHistoricalX(I)F

    move-result v24

    .line 227
    .local v24, x:F
    :goto_2
    if-ge v13, v10, :cond_5

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/MotionEvent;->getHistoricalY(I)F

    move-result v25

    .line 228
    .local v25, y:F
    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->mWaveCenterX:F

    move/from16 v26, v0

    sub-float v22, v24, v26

    .line 229
    .local v22, tx:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->mWaveCenterY:F

    move/from16 v26, v0

    sub-float v23, v25, v26

    .line 230
    .local v23, ty:F
    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->dist2(FF)F

    move-result v26

    move/from16 v0, v26

    float-to-double v0, v0

    move-wide/from16 v26, v0

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v26

    move-wide/from16 v0, v26

    double-to-float v0, v0

    move/from16 v21, v0

    .line 231
    .local v21, touchRadius:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->mOuterRadius:F

    move/from16 v26, v0

    cmpl-float v26, v21, v26

    if-lez v26, :cond_6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->mOuterRadius:F

    move/from16 v26, v0

    div-float v16, v26, v21

    .line 232
    .local v16, scale:F
    :goto_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->mWaveCenterX:F

    move/from16 v26, v0

    mul-float v27, v22, v16

    add-float v14, v26, v27

    .line 233
    .local v14, limitX:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->mWaveCenterY:F

    move/from16 v26, v0

    mul-float v27, v23, v16

    add-float v15, v26, v27

    .line 235
    .local v15, limitY:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->mTargetDrawables:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v26

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_7

    const/16 v17, 0x1

    .line 236
    .local v17, singleTarget:Z
    :goto_5
    if-eqz v17, :cond_8

    .line 238
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->mOuterRadius:F

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->mSnapMargin:F

    move/from16 v27, v0

    sub-float v18, v26, v27

    .line 239
    .local v18, snapRadius:F
    cmpl-float v26, v21, v18

    if-lez v26, :cond_1

    .line 240
    const/4 v4, 0x0

    .line 241
    move/from16 v24, v14

    .line 242
    move/from16 v25, v15

    .line 264
    .end local v18           #snapRadius:F
    :cond_1
    :goto_6
    const/16 v26, -0x1

    move/from16 v0, v26

    if-eq v4, v0, :cond_e

    .line 265
    const/16 v26, 0x2

    move/from16 v0, v26

    if-ne v4, v0, :cond_b

    .line 266
    const/16 v26, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v26

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->switchToState(IFF)V

    .line 273
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->mTargetLightDrawables:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    .line 274
    .local v6, currentTargetLight:Lcom/android/internal/widget/multiwaveview/TargetDrawable;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->mCurrentTargetLight:Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    move-object/from16 v26, v0

    if-nez v26, :cond_d

    .line 275
    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->mCurrentTargetLight:Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    .line 282
    :cond_2
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->mTargetLightAnimations:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v26

    if-lez v26, :cond_3

    .line 283
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->stopTargetLightAnimation()V

    .line 285
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->mTargetLightAnimations:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->mCurrentTargetLight:Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    move-object/from16 v27, v0

    const-wide/16 v28, 0x14

    const/16 v30, 0x4

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    const-string v32, "delay"

    aput-object v32, v30, v31

    const/16 v31, 0x1

    const/16 v32, 0x0

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    aput-object v32, v30, v31

    const/16 v31, 0x2

    const-string v32, "alpha"

    aput-object v32, v30, v31

    const/16 v31, 0x3

    const/high16 v32, 0x3f80

    invoke-static/range {v32 .. v32}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v32

    aput-object v32, v30, v31

    invoke-static/range {v27 .. v30}, Lcom/android/internal/widget/multiwaveview/Tweener;->to(Ljava/lang/Object;J[Ljava/lang/Object;)Lcom/android/internal/widget/multiwaveview/Tweener;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 300
    .end local v6           #currentTargetLight:Lcom/android/internal/widget/multiwaveview/TargetDrawable;
    :goto_9
    const/16 v26, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->moveHandleTo(FFZ)V

    .line 225
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_1

    .line 226
    .end local v14           #limitX:F
    .end local v15           #limitY:F
    .end local v16           #scale:F
    .end local v17           #singleTarget:Z
    .end local v21           #touchRadius:F
    .end local v22           #tx:F
    .end local v23           #ty:F
    .end local v24           #x:F
    .end local v25           #y:F
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v24

    goto/16 :goto_2

    .line 227
    .restart local v24       #x:F
    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v25

    goto/16 :goto_3

    .line 231
    .restart local v21       #touchRadius:F
    .restart local v22       #tx:F
    .restart local v23       #ty:F
    .restart local v25       #y:F
    :cond_6
    const/high16 v16, 0x3f80

    goto/16 :goto_4

    .line 235
    .restart local v14       #limitX:F
    .restart local v15       #limitY:F
    .restart local v16       #scale:F
    :cond_7
    const/16 v17, 0x0

    goto/16 :goto_5

    .line 246
    .restart local v17       #singleTarget:Z
    :cond_8
    const v5, 0x7f7fffff

    .line 247
    .local v5, best:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->mHitRadius:F

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->mHitRadius:F

    move/from16 v27, v0

    mul-float v11, v26, v27

    .line 248
    .local v11, hitRadius2:F
    const/4 v12, 0x0

    .local v12, i:I
    :goto_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->mTargetDrawables:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v26

    move/from16 v0, v26

    if-ge v12, v0, :cond_a

    .line 250
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->mTargetDrawables:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    .line 251
    .local v19, target:Lcom/android/internal/widget/multiwaveview/TargetDrawable;
    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->getX()F

    move-result v26

    sub-float v8, v14, v26

    .line 252
    .local v8, dx:F
    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->getY()F

    move-result v26

    sub-float v9, v15, v26

    .line 253
    .local v9, dy:F
    mul-float v26, v8, v8

    mul-float v27, v9, v9

    add-float v7, v26, v27

    .line 254
    .local v7, dist2:F
    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->isValid()Z

    move-result v26

    if-eqz v26, :cond_9

    cmpg-float v26, v7, v11

    if-gez v26, :cond_9

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->mOuterRadius:F

    move/from16 v26, v0

    const v27, 0x3f333333

    mul-float v26, v26, v27

    cmpl-float v26, v21, v26

    if-ltz v26, :cond_9

    cmpg-float v26, v7, v5

    if-gez v26, :cond_9

    .line 257
    move v4, v12

    .line 258
    move v5, v7

    .line 248
    :cond_9
    add-int/lit8 v12, v12, 0x1

    goto :goto_a

    .line 261
    .end local v7           #dist2:F
    .end local v8           #dx:F
    .end local v9           #dy:F
    .end local v19           #target:Lcom/android/internal/widget/multiwaveview/TargetDrawable;
    :cond_a
    move/from16 v24, v14

    .line 262
    move/from16 v25, v15

    goto/16 :goto_6

    .line 267
    .end local v5           #best:F
    .end local v11           #hitRadius2:F
    .end local v12           #i:I
    :cond_b
    if-nez v4, :cond_c

    .line 268
    const/16 v26, 0x6

    move-object/from16 v0, p0

    move/from16 v1, v26

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->switchToState(IFF)V

    goto/16 :goto_7

    .line 270
    :cond_c
    const/16 v26, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v26

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->switchToState(IFF)V

    goto/16 :goto_7

    .line 276
    .restart local v6       #currentTargetLight:Lcom/android/internal/widget/multiwaveview/TargetDrawable;
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->mCurrentTargetLight:Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    if-eq v0, v6, :cond_2

    .line 277
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->mTargetLightAnimations:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->mCurrentTargetLight:Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    move-object/from16 v27, v0

    const-wide/16 v28, 0x14

    const/16 v30, 0x4

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    const-string v32, "delay"

    aput-object v32, v30, v31

    const/16 v31, 0x1

    const/16 v32, 0x0

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    aput-object v32, v30, v31

    const/16 v31, 0x2

    const-string v32, "alpha"

    aput-object v32, v30, v31

    const/16 v31, 0x3

    const/16 v32, 0x0

    invoke-static/range {v32 .. v32}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v32

    aput-object v32, v30, v31

    invoke-static/range {v27 .. v30}, Lcom/android/internal/widget/multiwaveview/Tweener;->to(Ljava/lang/Object;J[Ljava/lang/Object;)Lcom/android/internal/widget/multiwaveview/Tweener;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 280
    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->mCurrentTargetLight:Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    goto/16 :goto_8

    .line 289
    .end local v6           #currentTargetLight:Lcom/android/internal/widget/multiwaveview/TargetDrawable;
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->mTargetLightAnimations:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v26

    if-lez v26, :cond_f

    .line 290
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->stopTargetLightAnimation()V

    .line 292
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->mCurrentTargetLight:Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    move-object/from16 v26, v0

    if-eqz v26, :cond_10

    .line 293
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->mTargetLightAnimations:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->mCurrentTargetLight:Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    move-object/from16 v27, v0

    const-wide/16 v28, 0x14

    const/16 v30, 0x4

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    const-string v32, "delay"

    aput-object v32, v30, v31

    const/16 v31, 0x1

    const/16 v32, 0x0

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    aput-object v32, v30, v31

    const/16 v31, 0x2

    const-string v32, "alpha"

    aput-object v32, v30, v31

    const/16 v31, 0x3

    const/16 v32, 0x0

    invoke-static/range {v32 .. v32}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v32

    aput-object v32, v30, v31

    invoke-static/range {v27 .. v30}, Lcom/android/internal/widget/multiwaveview/Tweener;->to(Ljava/lang/Object;J[Ljava/lang/Object;)Lcom/android/internal/widget/multiwaveview/Tweener;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 297
    :cond_10
    const/16 v26, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v26

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->switchToState(IFF)V

    .line 298
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->mHandleDrawable:Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    move-object/from16 v26, v0

    const/high16 v27, 0x3f80

    invoke-virtual/range {v26 .. v27}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->setAlpha(F)V

    goto/16 :goto_9

    .line 304
    .end local v14           #limitX:F
    .end local v15           #limitY:F
    .end local v16           #scale:F
    .end local v17           #singleTarget:Z
    .end local v21           #touchRadius:F
    .end local v22           #tx:F
    .end local v23           #ty:F
    .end local v24           #x:F
    .end local v25           #y:F
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->mHandleDrawable:Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->invalidateGlobalRegion(Lcom/android/internal/widget/multiwaveview/TargetDrawable;)V

    .line 306
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->mActiveTarget:I

    move/from16 v26, v0

    move/from16 v0, v26

    if-eq v0, v4, :cond_12

    const/16 v26, -0x1

    move/from16 v0, v26

    if-eq v4, v0, :cond_12

    .line 307
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->dispatchGrabbedEvent(I)V

    .line 308
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v26

    if-eqz v26, :cond_12

    .line 309
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->getTargetDescription(I)Ljava/lang/String;

    move-result-object v20

    .line 310
    .local v20, targetContentDescription:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->announceText(Ljava/lang/String;)V

    .line 313
    .end local v20           #targetContentDescription:Ljava/lang/String;
    :cond_12
    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->mActiveTarget:I

    goto/16 :goto_0
.end method

.method protected hideTargets(Z)V
    .locals 1
    .parameter "animate"

    .prologue
    .line 189
    invoke-super {p0, p1}, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->hideTargets(Z)V

    .line 190
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->mTargetLightAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 191
    invoke-direct {p0}, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->stopTargetLightAnimation()V

    .line 193
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->hideTargetLight()V

    .line 194
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .parameter "canvas"

    .prologue
    .line 325
    iget-object v2, p0, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->mOuterRing:Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    invoke-virtual {v2, p1}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 326
    iget-object v2, p0, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->mTargetLightDrawables:Ljava/util/ArrayList;

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

    check-cast v1, Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    .line 327
    .local v1, target:Lcom/android/internal/widget/multiwaveview/TargetDrawable;
    if-eqz v1, :cond_0

    .line 328
    invoke-virtual {v1, p1}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 331
    .end local v1           #target:Lcom/android/internal/widget/multiwaveview/TargetDrawable;
    :cond_1
    iget-object v2, p0, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    .line 332
    .restart local v1       #target:Lcom/android/internal/widget/multiwaveview/TargetDrawable;
    if-eqz v1, :cond_2

    .line 333
    invoke-virtual {v1, p1}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_1

    .line 336
    .end local v1           #target:Lcom/android/internal/widget/multiwaveview/TargetDrawable;
    :cond_3
    iget-object v2, p0, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->mRightHintAnimTargetDrawable:Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    invoke-virtual {v2, p1}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 337
    iget-object v2, p0, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->mHandleDrawable:Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    invoke-virtual {v2, p1}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 338
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 318
    invoke-super/range {p0 .. p5}, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->onLayout(ZIIII)V

    .line 319
    invoke-direct {p0}, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->updateTargetLightPositions()V

    .line 320
    invoke-direct {p0}, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->updateRightHintAnimPositions()V

    .line 321
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 419
    iget-boolean v1, p0, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->mShowingOuterRing:Z

    if-eqz v1, :cond_1

    .line 431
    :cond_0
    :goto_0
    return v0

    .line 423
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    if-le v1, v0, :cond_2

    .line 424
    iget-boolean v1, p0, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->mDragging:Z

    if-eqz v1, :cond_0

    .line 425
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->mActiveTarget:I

    .line 426
    const/4 v1, 0x4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->switchToState(IFF)V

    goto :goto_0

    .line 431
    :cond_2
    invoke-super {p0, p1}, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public reset(Z)V
    .locals 0
    .parameter "animate"

    .prologue
    .line 354
    invoke-super {p0, p1}, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->reset(Z)V

    .line 355
    invoke-direct {p0}, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->hideRightHintAnim()V

    .line 356
    invoke-direct {p0}, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->showOuterRing()V

    .line 357
    invoke-direct {p0}, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->startRightHintAnim()V

    .line 358
    return-void
.end method

.method protected showTargets(Z)V
    .locals 10
    .parameter "animate"

    .prologue
    const/4 v9, 0x0

    const/high16 v8, 0x3f80

    .line 157
    iget-object v2, p0, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->mTargetAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 158
    invoke-virtual {p0}, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->stopTargetAnimation()V

    .line 160
    :cond_0
    iget-object v2, p0, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->mTargetLightAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 161
    invoke-direct {p0}, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->stopTargetLightAnimation()V

    .line 163
    :cond_1
    iput-boolean p1, p0, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->mAnimatingTargets:Z

    .line 164
    if-eqz p1, :cond_2

    .line 165
    iget-object v2, p0, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    .line 166
    .local v1, target:Lcom/android/internal/widget/multiwaveview/TargetDrawable;
    sget-object v2, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->STATE_INACTIVE:[I

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->setState([I)V

    .line 167
    iget-object v2, p0, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->mTargetAnimations:Ljava/util/ArrayList;

    const-wide/16 v3, 0xc8

    const/4 v5, 0x6

    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "alpha"

    aput-object v6, v5, v9

    const/4 v6, 0x1

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-string v7, "delay"

    aput-object v7, v5, v6

    const/4 v6, 0x3

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x4

    const-string/jumbo v7, "onUpdate"

    aput-object v7, v5, v6

    const/4 v6, 0x5

    iget-object v7, p0, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    aput-object v7, v5, v6

    invoke-static {v1, v3, v4, v5}, Lcom/android/internal/widget/multiwaveview/Tweener;->to(Ljava/lang/Object;J[Ljava/lang/Object;)Lcom/android/internal/widget/multiwaveview/Tweener;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 173
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #target:Lcom/android/internal/widget/multiwaveview/TargetDrawable;
    :cond_2
    iget-object v2, p0, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0       #i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    .line 174
    .restart local v1       #target:Lcom/android/internal/widget/multiwaveview/TargetDrawable;
    sget-object v2, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->STATE_INACTIVE:[I

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->setState([I)V

    .line 175
    invoke-virtual {v1, v8}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->setAlpha(F)V

    goto :goto_1

    .line 178
    .end local v1           #target:Lcom/android/internal/widget/multiwaveview/TargetDrawable;
    :cond_3
    invoke-direct {p0}, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->hideTargetLight()V

    .line 179
    return-void
.end method

.method protected switchToState(IFF)V
    .locals 2
    .parameter "state"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 117
    packed-switch p1, :pswitch_data_0

    .line 153
    :cond_0
    :goto_0
    return-void

    .line 119
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->deactivateTargets()V

    .line 120
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->mHandleDrawable:Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    sget-object v1, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->STATE_INACTIVE:[I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->setState([I)V

    goto :goto_0

    .line 124
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->stopHandleAnimation()V

    .line 125
    invoke-virtual {p0}, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->deactivateTargets()V

    .line 126
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->mHandleDrawable:Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    sget-object v1, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->STATE_ACTIVE:[I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->setState([I)V

    .line 127
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->setGrabbedState(I)V

    .line 128
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    invoke-virtual {p0}, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->announceTargets()V

    goto :goto_0

    .line 134
    :pswitch_2
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->mHandleDrawable:Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    sget-object v1, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->STATE_ACTIVE:[I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->setState([I)V

    goto :goto_0

    .line 138
    :pswitch_3
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->mHandleDrawable:Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    sget-object v1, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->STATE_DECLINE_HANDLE:[I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->setState([I)V

    goto :goto_0

    .line 142
    :pswitch_4
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->mHandleDrawable:Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    sget-object v1, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->STATE_ANSWER_HANDLE:[I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->setState([I)V

    goto :goto_0

    .line 146
    :pswitch_5
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->mHandleDrawable:Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    sget-object v1, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->STATE_ACTIVE:[I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->setState([I)V

    goto :goto_0

    .line 150
    :pswitch_6
    invoke-virtual {p0}, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->doFinish()V

    goto :goto_0

    .line 117
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_5
        :pswitch_6
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

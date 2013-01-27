.class public Landroid/animation/ValueAnimator;
.super Landroid/animation/Animator;
.source "ValueAnimator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/animation/ValueAnimator$AnimatorUpdateListener;,
        Landroid/animation/ValueAnimator$AnimationHandler;
    }
.end annotation


# static fields
.field static final ANIMATION_FRAME:I = 0x1

.field static final ANIMATION_START:I = 0x0

.field private static final DEFAULT_FRAME_DELAY:J = 0xaL

.field public static final INFINITE:I = -0x1

.field public static final RESTART:I = 0x1

.field public static final REVERSE:I = 0x2

.field static final RUNNING:I = 0x1

.field static final SEEKED:I = 0x2

.field static final STOPPED:I

.field private static sAnimationHandler:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Landroid/animation/ValueAnimator$AnimationHandler;",
            ">;"
        }
    .end annotation
.end field

.field private static final sAnimations:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/ValueAnimator;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final sDefaultInterpolator:Landroid/animation/TimeInterpolator;

.field private static final sDelayedAnims:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/ValueAnimator;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final sEndingAnims:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/ValueAnimator;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final sFloatEvaluator:Landroid/animation/TypeEvaluator;

.field private static sFrameDelay:J

.field private static final sIntEvaluator:Landroid/animation/TypeEvaluator;

.field private static final sPendingAnimations:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/ValueAnimator;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final sReadyAnims:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/ValueAnimator;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private mCurrentFraction:F

.field private mCurrentIteration:I

.field private mDelayStartTime:J

.field private mDuration:J

.field mInitialized:Z

.field private mInterpolator:Landroid/animation/TimeInterpolator;

.field private mPlayingBackwards:Z

.field mPlayingState:I

.field private mRepeatCount:I

.field private mRepeatMode:I

.field private mRunning:Z

.field mSeekTime:J

.field private mStartDelay:J

.field mStartTime:J

.field private mStarted:Z

.field private mStartedDelay:Z

.field private mUpdateListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/ValueAnimator$AnimatorUpdateListener;",
            ">;"
        }
    .end annotation
.end field

.field mValues:[Landroid/animation/PropertyValuesHolder;

.field mValuesMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/animation/PropertyValuesHolder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 100
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Landroid/animation/ValueAnimator;->sAnimationHandler:Ljava/lang/ThreadLocal;

    .line 104
    new-instance v0, Landroid/animation/ValueAnimator$1;

    invoke-direct {v0}, Landroid/animation/ValueAnimator$1;-><init>()V

    sput-object v0, Landroid/animation/ValueAnimator;->sAnimations:Ljava/lang/ThreadLocal;

    .line 113
    new-instance v0, Landroid/animation/ValueAnimator$2;

    invoke-direct {v0}, Landroid/animation/ValueAnimator$2;-><init>()V

    sput-object v0, Landroid/animation/ValueAnimator;->sPendingAnimations:Ljava/lang/ThreadLocal;

    .line 125
    new-instance v0, Landroid/animation/ValueAnimator$3;

    invoke-direct {v0}, Landroid/animation/ValueAnimator$3;-><init>()V

    sput-object v0, Landroid/animation/ValueAnimator;->sDelayedAnims:Ljava/lang/ThreadLocal;

    .line 133
    new-instance v0, Landroid/animation/ValueAnimator$4;

    invoke-direct {v0}, Landroid/animation/ValueAnimator$4;-><init>()V

    sput-object v0, Landroid/animation/ValueAnimator;->sEndingAnims:Ljava/lang/ThreadLocal;

    .line 141
    new-instance v0, Landroid/animation/ValueAnimator$5;

    invoke-direct {v0}, Landroid/animation/ValueAnimator$5;-><init>()V

    sput-object v0, Landroid/animation/ValueAnimator;->sReadyAnims:Ljava/lang/ThreadLocal;

    .line 150
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    sput-object v0, Landroid/animation/ValueAnimator;->sDefaultInterpolator:Landroid/animation/TimeInterpolator;

    .line 154
    new-instance v0, Landroid/animation/IntEvaluator;

    invoke-direct {v0}, Landroid/animation/IntEvaluator;-><init>()V

    sput-object v0, Landroid/animation/ValueAnimator;->sIntEvaluator:Landroid/animation/TypeEvaluator;

    .line 155
    new-instance v0, Landroid/animation/FloatEvaluator;

    invoke-direct {v0}, Landroid/animation/FloatEvaluator;-><init>()V

    sput-object v0, Landroid/animation/ValueAnimator;->sFloatEvaluator:Landroid/animation/TypeEvaluator;

    .line 228
    const-wide/16 v0, 0xa

    sput-wide v0, Landroid/animation/ValueAnimator;->sFrameDelay:J

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 289
    invoke-direct {p0}, Landroid/animation/Animator;-><init>()V

    .line 91
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/animation/ValueAnimator;->mSeekTime:J

    .line 161
    iput-boolean v2, p0, Landroid/animation/ValueAnimator;->mPlayingBackwards:Z

    .line 167
    iput v2, p0, Landroid/animation/ValueAnimator;->mCurrentIteration:I

    .line 172
    const/4 v0, 0x0

    iput v0, p0, Landroid/animation/ValueAnimator;->mCurrentFraction:F

    .line 177
    iput-boolean v2, p0, Landroid/animation/ValueAnimator;->mStartedDelay:Z

    .line 193
    iput v2, p0, Landroid/animation/ValueAnimator;->mPlayingState:I

    .line 203
    iput-boolean v2, p0, Landroid/animation/ValueAnimator;->mRunning:Z

    .line 209
    iput-boolean v2, p0, Landroid/animation/ValueAnimator;->mStarted:Z

    .line 215
    iput-boolean v2, p0, Landroid/animation/ValueAnimator;->mInitialized:Z

    .line 222
    const-wide/16 v0, 0x12c

    iput-wide v0, p0, Landroid/animation/ValueAnimator;->mDuration:J

    .line 225
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/animation/ValueAnimator;->mStartDelay:J

    .line 232
    iput v2, p0, Landroid/animation/ValueAnimator;->mRepeatCount:I

    .line 239
    const/4 v0, 0x1

    iput v0, p0, Landroid/animation/ValueAnimator;->mRepeatMode:I

    .line 246
    sget-object v0, Landroid/animation/ValueAnimator;->sDefaultInterpolator:Landroid/animation/TimeInterpolator;

    iput-object v0, p0, Landroid/animation/ValueAnimator;->mInterpolator:Landroid/animation/TimeInterpolator;

    .line 251
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    .line 290
    return-void
.end method

.method static synthetic access$000()Ljava/lang/ThreadLocal;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Landroid/animation/ValueAnimator;->sAnimations:Ljava/lang/ThreadLocal;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/ThreadLocal;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Landroid/animation/ValueAnimator;->sDelayedAnims:Ljava/lang/ThreadLocal;

    return-object v0
.end method

.method static synthetic access$1000()J
    .locals 2

    .prologue
    .line 49
    sget-wide v0, Landroid/animation/ValueAnimator;->sFrameDelay:J

    return-wide v0
.end method

.method static synthetic access$200()Ljava/lang/ThreadLocal;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Landroid/animation/ValueAnimator;->sPendingAnimations:Ljava/lang/ThreadLocal;

    return-object v0
.end method

.method static synthetic access$300(Landroid/animation/ValueAnimator;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 49
    iget-wide v0, p0, Landroid/animation/ValueAnimator;->mStartDelay:J

    return-wide v0
.end method

.method static synthetic access$400(Landroid/animation/ValueAnimator;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 49
    invoke-direct {p0}, Landroid/animation/ValueAnimator;->startAnimation()V

    return-void
.end method

.method static synthetic access$500()Ljava/lang/ThreadLocal;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Landroid/animation/ValueAnimator;->sReadyAnims:Ljava/lang/ThreadLocal;

    return-object v0
.end method

.method static synthetic access$600()Ljava/lang/ThreadLocal;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Landroid/animation/ValueAnimator;->sEndingAnims:Ljava/lang/ThreadLocal;

    return-object v0
.end method

.method static synthetic access$700(Landroid/animation/ValueAnimator;J)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Landroid/animation/ValueAnimator;->delayedAnimationFrame(J)Z

    move-result v0

    return v0
.end method

.method static synthetic access$802(Landroid/animation/ValueAnimator;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    iput-boolean p1, p0, Landroid/animation/ValueAnimator;->mRunning:Z

    return p1
.end method

.method static synthetic access$900(Landroid/animation/ValueAnimator;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 49
    invoke-direct {p0}, Landroid/animation/ValueAnimator;->endAnimation()V

    return-void
.end method

.method public static clearAllAnimations()V
    .locals 1

    .prologue
    .line 1255
    sget-object v0, Landroid/animation/ValueAnimator;->sAnimations:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1256
    sget-object v0, Landroid/animation/ValueAnimator;->sPendingAnimations:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1257
    sget-object v0, Landroid/animation/ValueAnimator;->sDelayedAnims:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1258
    return-void
.end method

.method private delayedAnimationFrame(J)Z
    .locals 5
    .parameter "currentTime"

    .prologue
    const/4 v2, 0x1

    .line 1077
    iget-boolean v3, p0, Landroid/animation/ValueAnimator;->mStartedDelay:Z

    if-nez v3, :cond_1

    .line 1078
    iput-boolean v2, p0, Landroid/animation/ValueAnimator;->mStartedDelay:Z

    .line 1079
    iput-wide p1, p0, Landroid/animation/ValueAnimator;->mDelayStartTime:J

    .line 1090
    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2

    .line 1081
    :cond_1
    iget-wide v3, p0, Landroid/animation/ValueAnimator;->mDelayStartTime:J

    sub-long v0, p1, v3

    .line 1082
    .local v0, deltaTime:J
    iget-wide v3, p0, Landroid/animation/ValueAnimator;->mStartDelay:J

    cmp-long v3, v0, v3

    if-lez v3, :cond_0

    .line 1085
    iget-wide v3, p0, Landroid/animation/ValueAnimator;->mStartDelay:J

    sub-long v3, v0, v3

    sub-long v3, p1, v3

    iput-wide v3, p0, Landroid/animation/ValueAnimator;->mStartTime:J

    .line 1086
    iput v2, p0, Landroid/animation/ValueAnimator;->mPlayingState:I

    goto :goto_0
.end method

.method private endAnimation()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1031
    sget-object v3, Landroid/animation/ValueAnimator;->sAnimations:Ljava/lang/ThreadLocal;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1032
    sget-object v3, Landroid/animation/ValueAnimator;->sPendingAnimations:Ljava/lang/ThreadLocal;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1033
    sget-object v3, Landroid/animation/ValueAnimator;->sDelayedAnims:Ljava/lang/ThreadLocal;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1034
    iput v4, p0, Landroid/animation/ValueAnimator;->mPlayingState:I

    .line 1035
    iget-boolean v3, p0, Landroid/animation/ValueAnimator;->mRunning:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/animation/ValueAnimator;->mListeners:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    .line 1036
    iget-object v3, p0, Landroid/animation/ValueAnimator;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 1038
    .local v2, tmpListeners:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/animation/Animator$AnimatorListener;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1039
    .local v1, numListeners:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 1040
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/Animator$AnimatorListener;

    invoke-interface {v3, p0}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 1039
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1043
    .end local v0           #i:I
    .end local v1           #numListeners:I
    .end local v2           #tmpListeners:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/animation/Animator$AnimatorListener;>;"
    :cond_0
    iput-boolean v4, p0, Landroid/animation/ValueAnimator;->mRunning:Z

    .line 1044
    iput-boolean v4, p0, Landroid/animation/ValueAnimator;->mStarted:Z

    .line 1045
    return-void
.end method

.method public static getCurrentAnimationsCount()I
    .locals 1

    .prologue
    .line 1245
    sget-object v0, Landroid/animation/ValueAnimator;->sAnimations:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public static getFrameDelay()J
    .locals 2

    .prologue
    .line 721
    sget-wide v0, Landroid/animation/ValueAnimator;->sFrameDelay:J

    return-wide v0
.end method

.method public static varargs ofFloat([F)Landroid/animation/ValueAnimator;
    .locals 1
    .parameter "values"

    .prologue
    .line 321
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    .line 322
    .local v0, anim:Landroid/animation/ValueAnimator;
    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 323
    return-object v0
.end method

.method public static varargs ofInt([I)Landroid/animation/ValueAnimator;
    .locals 1
    .parameter "values"

    .prologue
    .line 304
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    .line 305
    .local v0, anim:Landroid/animation/ValueAnimator;
    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 306
    return-object v0
.end method

.method public static varargs ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;
    .locals 1
    .parameter "evaluator"
    .parameter "values"

    .prologue
    .line 358
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    .line 359
    .local v0, anim:Landroid/animation/ValueAnimator;
    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->setObjectValues([Ljava/lang/Object;)V

    .line 360
    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    .line 361
    return-object v0
.end method

.method public static varargs ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;
    .locals 1
    .parameter "values"

    .prologue
    .line 335
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    .line 336
    .local v0, anim:Landroid/animation/ValueAnimator;
    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    .line 337
    return-object v0
.end method

.method public static setFrameDelay(J)V
    .locals 0
    .parameter "frameDelay"

    .prologue
    .line 734
    sput-wide p0, Landroid/animation/ValueAnimator;->sFrameDelay:J

    .line 735
    return-void
.end method

.method private start(Z)V
    .locals 10
    .parameter "playBackwards"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 923
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v4

    if-nez v4, :cond_0

    .line 924
    new-instance v4, Landroid/util/AndroidRuntimeException;

    const-string v5, "Animators may only be run on Looper threads"

    invoke-direct {v4, v5}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 926
    :cond_0
    iput-boolean p1, p0, Landroid/animation/ValueAnimator;->mPlayingBackwards:Z

    .line 927
    iput v8, p0, Landroid/animation/ValueAnimator;->mCurrentIteration:I

    .line 928
    iput v8, p0, Landroid/animation/ValueAnimator;->mPlayingState:I

    .line 929
    iput-boolean v9, p0, Landroid/animation/ValueAnimator;->mStarted:Z

    .line 930
    iput-boolean v8, p0, Landroid/animation/ValueAnimator;->mStartedDelay:Z

    .line 931
    sget-object v4, Landroid/animation/ValueAnimator;->sPendingAnimations:Ljava/lang/ThreadLocal;

    invoke-virtual {v4}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 932
    iget-wide v4, p0, Landroid/animation/ValueAnimator;->mStartDelay:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_1

    .line 934
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getCurrentPlayTime()J

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Landroid/animation/ValueAnimator;->setCurrentPlayTime(J)V

    .line 935
    iput v8, p0, Landroid/animation/ValueAnimator;->mPlayingState:I

    .line 936
    iput-boolean v9, p0, Landroid/animation/ValueAnimator;->mRunning:Z

    .line 938
    iget-object v4, p0, Landroid/animation/ValueAnimator;->mListeners:Ljava/util/ArrayList;

    if-eqz v4, :cond_1

    .line 939
    iget-object v4, p0, Landroid/animation/ValueAnimator;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 941
    .local v3, tmpListeners:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/animation/Animator$AnimatorListener;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 942
    .local v2, numListeners:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 943
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/animation/Animator$AnimatorListener;

    invoke-interface {v4, p0}, Landroid/animation/Animator$AnimatorListener;->onAnimationStart(Landroid/animation/Animator;)V

    .line 942
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 947
    .end local v1           #i:I
    .end local v2           #numListeners:I
    .end local v3           #tmpListeners:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/animation/Animator$AnimatorListener;>;"
    :cond_1
    sget-object v4, Landroid/animation/ValueAnimator;->sAnimationHandler:Ljava/lang/ThreadLocal;

    invoke-virtual {v4}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/ValueAnimator$AnimationHandler;

    .line 948
    .local v0, animationHandler:Landroid/animation/ValueAnimator$AnimationHandler;
    if-nez v0, :cond_2

    .line 949
    new-instance v0, Landroid/animation/ValueAnimator$AnimationHandler;

    .end local v0           #animationHandler:Landroid/animation/ValueAnimator$AnimationHandler;
    const/4 v4, 0x0

    invoke-direct {v0, v4}, Landroid/animation/ValueAnimator$AnimationHandler;-><init>(Landroid/animation/ValueAnimator$1;)V

    .line 950
    .restart local v0       #animationHandler:Landroid/animation/ValueAnimator$AnimationHandler;
    sget-object v4, Landroid/animation/ValueAnimator;->sAnimationHandler:Ljava/lang/ThreadLocal;

    invoke-virtual {v4, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 952
    :cond_2
    invoke-virtual {v0, v8}, Landroid/animation/ValueAnimator$AnimationHandler;->sendEmptyMessage(I)Z

    .line 953
    return-void
.end method

.method private startAnimation()V
    .locals 7

    .prologue
    .line 1052
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->initAnimation()V

    .line 1053
    sget-object v3, Landroid/animation/ValueAnimator;->sAnimations:Ljava/lang/ThreadLocal;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1054
    iget-wide v3, p0, Landroid/animation/ValueAnimator;->mStartDelay:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_0

    iget-object v3, p0, Landroid/animation/ValueAnimator;->mListeners:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    .line 1057
    iget-object v3, p0, Landroid/animation/ValueAnimator;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 1059
    .local v2, tmpListeners:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/animation/Animator$AnimatorListener;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1060
    .local v1, numListeners:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 1061
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/Animator$AnimatorListener;

    invoke-interface {v3, p0}, Landroid/animation/Animator$AnimatorListener;->onAnimationStart(Landroid/animation/Animator;)V

    .line 1060
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1064
    .end local v0           #i:I
    .end local v1           #numListeners:I
    .end local v2           #tmpListeners:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/animation/Animator$AnimatorListener;>;"
    :cond_0
    return-void
.end method


# virtual methods
.method public addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 826
    iget-object v0, p0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 827
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    .line 829
    :cond_0
    iget-object v0, p0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 830
    return-void
.end method

.method animateValue(F)V
    .locals 4
    .parameter "fraction"

    .prologue
    .line 1175
    iget-object v3, p0, Landroid/animation/ValueAnimator;->mInterpolator:Landroid/animation/TimeInterpolator;

    invoke-interface {v3, p1}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result p1

    .line 1176
    iput p1, p0, Landroid/animation/ValueAnimator;->mCurrentFraction:F

    .line 1177
    iget-object v3, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    array-length v2, v3

    .line 1178
    .local v2, numValues:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 1179
    iget-object v3, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    aget-object v3, v3, v0

    invoke-virtual {v3, p1}, Landroid/animation/PropertyValuesHolder;->calculateValue(F)V

    .line 1178
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1181
    :cond_0
    iget-object v3, p0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    if-eqz v3, :cond_1

    .line 1182
    iget-object v3, p0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1183
    .local v1, numListeners:I
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_1

    .line 1184
    iget-object v3, p0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-interface {v3, p0}, Landroid/animation/ValueAnimator$AnimatorUpdateListener;->onAnimationUpdate(Landroid/animation/ValueAnimator;)V

    .line 1183
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1187
    .end local v1           #numListeners:I
    :cond_1
    return-void
.end method

.method animationFrame(J)Z
    .locals 11
    .parameter "currentTime"

    .prologue
    const-wide/16 v9, 0x0

    const/4 v5, 0x1

    const/high16 v6, 0x3f80

    .line 1106
    const/4 v0, 0x0

    .line 1108
    .local v0, done:Z
    iget v4, p0, Landroid/animation/ValueAnimator;->mPlayingState:I

    if-nez v4, :cond_0

    .line 1109
    iput v5, p0, Landroid/animation/ValueAnimator;->mPlayingState:I

    .line 1110
    iget-wide v7, p0, Landroid/animation/ValueAnimator;->mSeekTime:J

    cmp-long v4, v7, v9

    if-gez v4, :cond_1

    .line 1111
    iput-wide p1, p0, Landroid/animation/ValueAnimator;->mStartTime:J

    .line 1118
    :cond_0
    :goto_0
    iget v4, p0, Landroid/animation/ValueAnimator;->mPlayingState:I

    packed-switch v4, :pswitch_data_0

    .line 1149
    :goto_1
    return v0

    .line 1113
    :cond_1
    iget-wide v7, p0, Landroid/animation/ValueAnimator;->mSeekTime:J

    sub-long v7, p1, v7

    iput-wide v7, p0, Landroid/animation/ValueAnimator;->mStartTime:J

    .line 1115
    const-wide/16 v7, -0x1

    iput-wide v7, p0, Landroid/animation/ValueAnimator;->mSeekTime:J

    goto :goto_0

    .line 1121
    :pswitch_0
    iget-wide v7, p0, Landroid/animation/ValueAnimator;->mDuration:J

    cmp-long v4, v7, v9

    if-lez v4, :cond_3

    iget-wide v7, p0, Landroid/animation/ValueAnimator;->mStartTime:J

    sub-long v7, p1, v7

    long-to-float v4, v7

    iget-wide v7, p0, Landroid/animation/ValueAnimator;->mDuration:J

    long-to-float v7, v7

    div-float v1, v4, v7

    .line 1122
    .local v1, fraction:F
    :goto_2
    cmpl-float v4, v1, v6

    if-ltz v4, :cond_6

    .line 1123
    iget v4, p0, Landroid/animation/ValueAnimator;->mCurrentIteration:I

    iget v7, p0, Landroid/animation/ValueAnimator;->mRepeatCount:I

    if-lt v4, v7, :cond_2

    iget v4, p0, Landroid/animation/ValueAnimator;->mRepeatCount:I

    const/4 v7, -0x1

    if-ne v4, v7, :cond_9

    .line 1125
    :cond_2
    iget-object v4, p0, Landroid/animation/ValueAnimator;->mListeners:Ljava/util/ArrayList;

    if-eqz v4, :cond_4

    .line 1126
    iget-object v4, p0, Landroid/animation/ValueAnimator;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1127
    .local v3, numListeners:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_3
    if-ge v2, v3, :cond_4

    .line 1128
    iget-object v4, p0, Landroid/animation/ValueAnimator;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/animation/Animator$AnimatorListener;

    invoke-interface {v4, p0}, Landroid/animation/Animator$AnimatorListener;->onAnimationRepeat(Landroid/animation/Animator;)V

    .line 1127
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .end local v1           #fraction:F
    .end local v2           #i:I
    .end local v3           #numListeners:I
    :cond_3
    move v1, v6

    .line 1121
    goto :goto_2

    .line 1131
    .restart local v1       #fraction:F
    :cond_4
    iget v4, p0, Landroid/animation/ValueAnimator;->mRepeatMode:I

    const/4 v7, 0x2

    if-ne v4, v7, :cond_5

    .line 1132
    iget-boolean v4, p0, Landroid/animation/ValueAnimator;->mPlayingBackwards:Z

    if-eqz v4, :cond_8

    const/4 v4, 0x0

    :goto_4
    iput-boolean v4, p0, Landroid/animation/ValueAnimator;->mPlayingBackwards:Z

    .line 1134
    :cond_5
    iget v4, p0, Landroid/animation/ValueAnimator;->mCurrentIteration:I

    float-to-int v5, v1

    add-int/2addr v4, v5

    iput v4, p0, Landroid/animation/ValueAnimator;->mCurrentIteration:I

    .line 1135
    rem-float/2addr v1, v6

    .line 1136
    iget-wide v4, p0, Landroid/animation/ValueAnimator;->mStartTime:J

    iget-wide v7, p0, Landroid/animation/ValueAnimator;->mDuration:J

    add-long/2addr v4, v7

    iput-wide v4, p0, Landroid/animation/ValueAnimator;->mStartTime:J

    .line 1142
    :cond_6
    :goto_5
    iget-boolean v4, p0, Landroid/animation/ValueAnimator;->mPlayingBackwards:Z

    if-eqz v4, :cond_7

    .line 1143
    sub-float v1, v6, v1

    .line 1145
    :cond_7
    invoke-virtual {p0, v1}, Landroid/animation/ValueAnimator;->animateValue(F)V

    goto :goto_1

    :cond_8
    move v4, v5

    .line 1132
    goto :goto_4

    .line 1138
    :cond_9
    const/4 v0, 0x1

    .line 1139
    invoke-static {v1, v6}, Ljava/lang/Math;->min(FF)F

    move-result v1

    goto :goto_5

    .line 1118
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public cancel()V
    .locals 4

    .prologue
    .line 964
    iget v3, p0, Landroid/animation/ValueAnimator;->mPlayingState:I

    if-nez v3, :cond_0

    sget-object v3, Landroid/animation/ValueAnimator;->sPendingAnimations:Ljava/lang/ThreadLocal;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Landroid/animation/ValueAnimator;->sDelayedAnims:Ljava/lang/ThreadLocal;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 967
    :cond_0
    iget-boolean v3, p0, Landroid/animation/ValueAnimator;->mRunning:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/animation/ValueAnimator;->mListeners:Ljava/util/ArrayList;

    if-eqz v3, :cond_1

    .line 968
    iget-object v3, p0, Landroid/animation/ValueAnimator;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 970
    .local v2, tmpListeners:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/animation/Animator$AnimatorListener;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/Animator$AnimatorListener;

    .line 971
    .local v1, listener:Landroid/animation/Animator$AnimatorListener;
    invoke-interface {v1, p0}, Landroid/animation/Animator$AnimatorListener;->onAnimationCancel(Landroid/animation/Animator;)V

    goto :goto_0

    .line 974
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #listener:Landroid/animation/Animator$AnimatorListener;
    .end local v2           #tmpListeners:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/animation/Animator$AnimatorListener;>;"
    :cond_1
    invoke-direct {p0}, Landroid/animation/ValueAnimator;->endAnimation()V

    .line 976
    :cond_2
    return-void
.end method

.method public bridge synthetic clone()Landroid/animation/Animator;
    .locals 1

    .prologue
    .line 49
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->clone()Landroid/animation/ValueAnimator;

    move-result-object v0

    return-object v0
.end method

.method public clone()Landroid/animation/ValueAnimator;
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 1191
    invoke-super {p0}, Landroid/animation/Animator;->clone()Landroid/animation/Animator;

    move-result-object v0

    check-cast v0, Landroid/animation/ValueAnimator;

    .line 1192
    .local v0, anim:Landroid/animation/ValueAnimator;
    iget-object v7, p0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    if-eqz v7, :cond_0

    .line 1193
    iget-object v5, p0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    .line 1194
    .local v5, oldListeners:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/animation/ValueAnimator$AnimatorUpdateListener;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, v0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    .line 1195
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1196
    .local v3, numListeners:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 1197
    iget-object v7, v0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1196
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1200
    .end local v1           #i:I
    .end local v3           #numListeners:I
    .end local v5           #oldListeners:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/animation/ValueAnimator$AnimatorUpdateListener;>;"
    :cond_0
    const-wide/16 v7, -0x1

    iput-wide v7, v0, Landroid/animation/ValueAnimator;->mSeekTime:J

    .line 1201
    iput-boolean v9, v0, Landroid/animation/ValueAnimator;->mPlayingBackwards:Z

    .line 1202
    iput v9, v0, Landroid/animation/ValueAnimator;->mCurrentIteration:I

    .line 1203
    iput-boolean v9, v0, Landroid/animation/ValueAnimator;->mInitialized:Z

    .line 1204
    iput v9, v0, Landroid/animation/ValueAnimator;->mPlayingState:I

    .line 1205
    iput-boolean v9, v0, Landroid/animation/ValueAnimator;->mStartedDelay:Z

    .line 1206
    iget-object v6, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    .line 1207
    .local v6, oldValues:[Landroid/animation/PropertyValuesHolder;
    if-eqz v6, :cond_1

    .line 1208
    array-length v4, v6

    .line 1209
    .local v4, numValues:I
    new-array v7, v4, [Landroid/animation/PropertyValuesHolder;

    iput-object v7, v0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    .line 1210
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7, v4}, Ljava/util/HashMap;-><init>(I)V

    iput-object v7, v0, Landroid/animation/ValueAnimator;->mValuesMap:Ljava/util/HashMap;

    .line 1211
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_1
    if-ge v1, v4, :cond_1

    .line 1212
    aget-object v7, v6, v1

    invoke-virtual {v7}, Landroid/animation/PropertyValuesHolder;->clone()Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .line 1213
    .local v2, newValuesHolder:Landroid/animation/PropertyValuesHolder;
    iget-object v7, v0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    aput-object v2, v7, v1

    .line 1214
    iget-object v7, v0, Landroid/animation/ValueAnimator;->mValuesMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Landroid/animation/PropertyValuesHolder;->getPropertyName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1211
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1217
    .end local v1           #i:I
    .end local v2           #newValuesHolder:Landroid/animation/PropertyValuesHolder;
    .end local v4           #numValues:I
    :cond_1
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 49
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->clone()Landroid/animation/ValueAnimator;

    move-result-object v0

    return-object v0
.end method

.method public end()V
    .locals 2

    .prologue
    .line 980
    sget-object v0, Landroid/animation/ValueAnimator;->sAnimations:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Landroid/animation/ValueAnimator;->sPendingAnimations:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 982
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/animation/ValueAnimator;->mStartedDelay:Z

    .line 983
    invoke-direct {p0}, Landroid/animation/ValueAnimator;->startAnimation()V

    .line 989
    :cond_0
    :goto_0
    iget v0, p0, Landroid/animation/ValueAnimator;->mRepeatCount:I

    if-lez v0, :cond_2

    iget v0, p0, Landroid/animation/ValueAnimator;->mRepeatCount:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 990
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/animation/ValueAnimator;->animateValue(F)V

    .line 994
    :goto_1
    invoke-direct {p0}, Landroid/animation/ValueAnimator;->endAnimation()V

    .line 995
    return-void

    .line 984
    :cond_1
    iget-boolean v0, p0, Landroid/animation/ValueAnimator;->mInitialized:Z

    if-nez v0, :cond_0

    .line 985
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->initAnimation()V

    goto :goto_0

    .line 992
    :cond_2
    const/high16 v0, 0x3f80

    invoke-virtual {p0, v0}, Landroid/animation/ValueAnimator;->animateValue(F)V

    goto :goto_1
.end method

.method public getAnimatedFraction()F
    .locals 1

    .prologue
    .line 1159
    iget v0, p0, Landroid/animation/ValueAnimator;->mCurrentFraction:F

    return v0
.end method

.method public getAnimatedValue()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 750
    iget-object v0, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    array-length v0, v0

    if-lez v0, :cond_0

    .line 751
    iget-object v0, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/animation/PropertyValuesHolder;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    .line 754
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .parameter "propertyName"

    .prologue
    .line 768
    iget-object v1, p0, Landroid/animation/ValueAnimator;->mValuesMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/PropertyValuesHolder;

    .line 769
    .local v0, valuesHolder:Landroid/animation/PropertyValuesHolder;
    if-eqz v0, :cond_0

    .line 770
    invoke-virtual {v0}, Landroid/animation/PropertyValuesHolder;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    .line 773
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getCurrentPlayTime()J
    .locals 4

    .prologue
    .line 562
    iget-boolean v0, p0, Landroid/animation/ValueAnimator;->mInitialized:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/animation/ValueAnimator;->mPlayingState:I

    if-nez v0, :cond_1

    .line 563
    :cond_0
    const-wide/16 v0, 0x0

    .line 565
    :goto_0
    return-wide v0

    :cond_1
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Landroid/animation/ValueAnimator;->mStartTime:J

    sub-long/2addr v0, v2

    goto :goto_0
.end method

.method public getDuration()J
    .locals 2

    .prologue
    .line 530
    iget-wide v0, p0, Landroid/animation/ValueAnimator;->mDuration:J

    return-wide v0
.end method

.method public getInterpolator()Landroid/animation/TimeInterpolator;
    .locals 1

    .prologue
    .line 884
    iget-object v0, p0, Landroid/animation/ValueAnimator;->mInterpolator:Landroid/animation/TimeInterpolator;

    return-object v0
.end method

.method public getRepeatCount()I
    .locals 1

    .prologue
    .line 795
    iget v0, p0, Landroid/animation/ValueAnimator;->mRepeatCount:I

    return v0
.end method

.method public getRepeatMode()I
    .locals 1

    .prologue
    .line 815
    iget v0, p0, Landroid/animation/ValueAnimator;->mRepeatMode:I

    return v0
.end method

.method public getStartDelay()J
    .locals 2

    .prologue
    .line 698
    iget-wide v0, p0, Landroid/animation/ValueAnimator;->mStartDelay:J

    return-wide v0
.end method

.method public getValues()[Landroid/animation/PropertyValuesHolder;
    .locals 1

    .prologue
    .line 482
    iget-object v0, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    return-object v0
.end method

.method initAnimation()V
    .locals 3

    .prologue
    .line 496
    iget-boolean v2, p0, Landroid/animation/ValueAnimator;->mInitialized:Z

    if-nez v2, :cond_1

    .line 497
    iget-object v2, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    array-length v1, v2

    .line 498
    .local v1, numValues:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 499
    iget-object v2, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroid/animation/PropertyValuesHolder;->init()V

    .line 498
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 501
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/animation/ValueAnimator;->mInitialized:Z

    .line 503
    .end local v0           #i:I
    .end local v1           #numValues:I
    :cond_1
    return-void
.end method

.method public isRunning()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 999
    iget v1, p0, Landroid/animation/ValueAnimator;->mPlayingState:I

    if-eq v1, v0, :cond_0

    iget-boolean v1, p0, Landroid/animation/ValueAnimator;->mRunning:Z

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isStarted()Z
    .locals 1

    .prologue
    .line 1004
    iget-boolean v0, p0, Landroid/animation/ValueAnimator;->mStarted:Z

    return v0
.end method

.method public removeAllUpdateListeners()V
    .locals 1

    .prologue
    .line 836
    iget-object v0, p0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 841
    :goto_0
    return-void

    .line 839
    :cond_0
    iget-object v0, p0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 840
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public removeUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 850
    iget-object v0, p0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 857
    :cond_0
    :goto_0
    return-void

    .line 853
    :cond_1
    iget-object v0, p0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 854
    iget-object v0, p0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 855
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public reverse()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 1015
    iget-boolean v6, p0, Landroid/animation/ValueAnimator;->mPlayingBackwards:Z

    if-nez v6, :cond_0

    move v6, v7

    :goto_0
    iput-boolean v6, p0, Landroid/animation/ValueAnimator;->mPlayingBackwards:Z

    .line 1016
    iget v6, p0, Landroid/animation/ValueAnimator;->mPlayingState:I

    if-ne v6, v7, :cond_1

    .line 1017
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    .line 1018
    .local v2, currentTime:J
    iget-wide v6, p0, Landroid/animation/ValueAnimator;->mStartTime:J

    sub-long v0, v2, v6

    .line 1019
    .local v0, currentPlayTime:J
    iget-wide v6, p0, Landroid/animation/ValueAnimator;->mDuration:J

    sub-long v4, v6, v0

    .line 1020
    .local v4, timeLeft:J
    sub-long v6, v2, v4

    iput-wide v6, p0, Landroid/animation/ValueAnimator;->mStartTime:J

    .line 1024
    .end local v0           #currentPlayTime:J
    .end local v2           #currentTime:J
    .end local v4           #timeLeft:J
    :goto_1
    return-void

    .line 1015
    :cond_0
    const/4 v6, 0x0

    goto :goto_0

    .line 1022
    :cond_1
    invoke-direct {p0, v7}, Landroid/animation/ValueAnimator;->start(Z)V

    goto :goto_1
.end method

.method public setCurrentPlayTime(J)V
    .locals 4
    .parameter "playTime"

    .prologue
    .line 544
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->initAnimation()V

    .line 545
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    .line 546
    .local v0, currentTime:J
    iget v2, p0, Landroid/animation/ValueAnimator;->mPlayingState:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    .line 547
    iput-wide p1, p0, Landroid/animation/ValueAnimator;->mSeekTime:J

    .line 548
    const/4 v2, 0x2

    iput v2, p0, Landroid/animation/ValueAnimator;->mPlayingState:I

    .line 550
    :cond_0
    sub-long v2, v0, p1

    iput-wide v2, p0, Landroid/animation/ValueAnimator;->mStartTime:J

    .line 551
    invoke-virtual {p0, v0, v1}, Landroid/animation/ValueAnimator;->animationFrame(J)Z

    .line 552
    return-void
.end method

.method public bridge synthetic setDuration(J)Landroid/animation/Animator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    invoke-virtual {p0, p1, p2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    return-object v0
.end method

.method public setDuration(J)Landroid/animation/ValueAnimator;
    .locals 3
    .parameter "duration"

    .prologue
    .line 516
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 517
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Animators cannot have negative duration: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 520
    :cond_0
    iput-wide p1, p0, Landroid/animation/ValueAnimator;->mDuration:J

    .line 521
    return-object p0
.end method

.method public setEvaluator(Landroid/animation/TypeEvaluator;)V
    .locals 2
    .parameter "value"

    .prologue
    .line 904
    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    array-length v0, v0

    if-lez v0, :cond_0

    .line 905
    iget-object v0, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Landroid/animation/PropertyValuesHolder;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    .line 907
    :cond_0
    return-void
.end method

.method public varargs setFloatValues([F)V
    .locals 4
    .parameter "values"

    .prologue
    const/4 v3, 0x0

    .line 407
    if-eqz p1, :cond_0

    array-length v1, p1

    if-nez v1, :cond_1

    .line 418
    :cond_0
    :goto_0
    return-void

    .line 410
    :cond_1
    iget-object v1, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    array-length v1, v1

    if-nez v1, :cond_3

    .line 411
    :cond_2
    const/4 v1, 0x1

    new-array v1, v1, [Landroid/animation/PropertyValuesHolder;

    const-string v2, ""

    invoke-static {v2, p1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0, v1}, Landroid/animation/ValueAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    .line 417
    :goto_1
    iput-boolean v3, p0, Landroid/animation/ValueAnimator;->mInitialized:Z

    goto :goto_0

    .line 413
    :cond_3
    iget-object v1, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    aget-object v0, v1, v3

    .line 414
    .local v0, valuesHolder:Landroid/animation/PropertyValuesHolder;
    invoke-virtual {v0, p1}, Landroid/animation/PropertyValuesHolder;->setFloatValues([F)V

    goto :goto_1
.end method

.method public varargs setIntValues([I)V
    .locals 4
    .parameter "values"

    .prologue
    const/4 v3, 0x0

    .line 379
    if-eqz p1, :cond_0

    array-length v1, p1

    if-nez v1, :cond_1

    .line 390
    :cond_0
    :goto_0
    return-void

    .line 382
    :cond_1
    iget-object v1, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    array-length v1, v1

    if-nez v1, :cond_3

    .line 383
    :cond_2
    const/4 v1, 0x1

    new-array v1, v1, [Landroid/animation/PropertyValuesHolder;

    const-string v2, ""

    invoke-static {v2, p1}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0, v1}, Landroid/animation/ValueAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    .line 389
    :goto_1
    iput-boolean v3, p0, Landroid/animation/ValueAnimator;->mInitialized:Z

    goto :goto_0

    .line 385
    :cond_3
    iget-object v1, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    aget-object v0, v1, v3

    .line 386
    .local v0, valuesHolder:Landroid/animation/PropertyValuesHolder;
    invoke-virtual {v0, p1}, Landroid/animation/PropertyValuesHolder;->setIntValues([I)V

    goto :goto_1
.end method

.method public setInterpolator(Landroid/animation/TimeInterpolator;)V
    .locals 1
    .parameter "value"

    .prologue
    .line 871
    if-eqz p1, :cond_0

    .line 872
    iput-object p1, p0, Landroid/animation/ValueAnimator;->mInterpolator:Landroid/animation/TimeInterpolator;

    .line 876
    :goto_0
    return-void

    .line 874
    :cond_0
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v0, p0, Landroid/animation/ValueAnimator;->mInterpolator:Landroid/animation/TimeInterpolator;

    goto :goto_0
.end method

.method public varargs setObjectValues([Ljava/lang/Object;)V
    .locals 5
    .parameter "values"

    .prologue
    const/4 v4, 0x0

    .line 439
    if-eqz p1, :cond_0

    array-length v1, p1

    if-nez v1, :cond_1

    .line 451
    :cond_0
    :goto_0
    return-void

    .line 442
    :cond_1
    iget-object v1, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    array-length v1, v1

    if-nez v1, :cond_3

    .line 443
    :cond_2
    const/4 v1, 0x1

    new-array v2, v1, [Landroid/animation/PropertyValuesHolder;

    const-string v3, ""

    const/4 v1, 0x0

    check-cast v1, Landroid/animation/TypeEvaluator;

    invoke-static {v3, v1, p1}, Landroid/animation/PropertyValuesHolder;->ofObject(Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    aput-object v1, v2, v4

    invoke-virtual {p0, v2}, Landroid/animation/ValueAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    .line 450
    :goto_1
    iput-boolean v4, p0, Landroid/animation/ValueAnimator;->mInitialized:Z

    goto :goto_0

    .line 446
    :cond_3
    iget-object v1, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    aget-object v0, v1, v4

    .line 447
    .local v0, valuesHolder:Landroid/animation/PropertyValuesHolder;
    invoke-virtual {v0, p1}, Landroid/animation/PropertyValuesHolder;->setObjectValues([Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public setRepeatCount(I)V
    .locals 0
    .parameter "value"

    .prologue
    .line 786
    iput p1, p0, Landroid/animation/ValueAnimator;->mRepeatCount:I

    .line 787
    return-void
.end method

.method public setRepeatMode(I)V
    .locals 0
    .parameter "value"

    .prologue
    .line 806
    iput p1, p0, Landroid/animation/ValueAnimator;->mRepeatMode:I

    .line 807
    return-void
.end method

.method public setStartDelay(J)V
    .locals 0
    .parameter "startDelay"

    .prologue
    .line 708
    iput-wide p1, p0, Landroid/animation/ValueAnimator;->mStartDelay:J

    .line 709
    return-void
.end method

.method public varargs setValues([Landroid/animation/PropertyValuesHolder;)V
    .locals 5
    .parameter "values"

    .prologue
    .line 462
    array-length v1, p1

    .line 463
    .local v1, numValues:I
    iput-object p1, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    .line 464
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v3, p0, Landroid/animation/ValueAnimator;->mValuesMap:Ljava/util/HashMap;

    .line 465
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 466
    aget-object v2, p1, v0

    .line 467
    .local v2, valuesHolder:Landroid/animation/PropertyValuesHolder;
    iget-object v3, p0, Landroid/animation/ValueAnimator;->mValuesMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Landroid/animation/PropertyValuesHolder;->getPropertyName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 465
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 470
    .end local v2           #valuesHolder:Landroid/animation/PropertyValuesHolder;
    :cond_0
    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/animation/ValueAnimator;->mInitialized:Z

    .line 471
    return-void
.end method

.method public start()V
    .locals 1

    .prologue
    .line 957
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/animation/ValueAnimator;->start(Z)V

    .line 958
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1262
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ValueAnimator@"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1263
    .local v1, returnVal:Ljava/lang/String;
    iget-object v2, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    if-eqz v2, :cond_0

    .line 1264
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 1265
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n    "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Landroid/animation/PropertyValuesHolder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1264
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1268
    .end local v0           #i:I
    :cond_0
    return-object v1
.end method

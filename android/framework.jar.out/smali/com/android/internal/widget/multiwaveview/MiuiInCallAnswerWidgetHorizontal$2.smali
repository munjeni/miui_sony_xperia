.class Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal$2;
.super Ljava/lang/Object;
.source "MiuiInCallAnswerWidgetHorizontal.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->startRightHintAnim()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;


# direct methods
.method constructor <init>(Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;)V
    .locals 0
    .parameter

    .prologue
    .line 459
    iput-object p1, p0, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal$2;->this$0:Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 5
    .parameter "animation"

    .prologue
    .line 463
    iget-object v3, p0, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal$2;->this$0:Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;

    invoke-virtual {v3}, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_1

    .line 464
    iget-object v3, p0, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal$2;->this$0:Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;

    #getter for: Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->mHintAnimation:Landroid/animation/ValueAnimator;
    invoke-static {v3}, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->access$100(Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;)Landroid/animation/ValueAnimator;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 465
    iget-object v3, p0, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal$2;->this$0:Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;

    #getter for: Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->mHintAnimation:Landroid/animation/ValueAnimator;
    invoke-static {v3}, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->access$100(Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 466
    .local v0, a:Landroid/animation/Animator;
    iget-object v3, p0, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal$2;->this$0:Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;

    const/4 v4, 0x0

    #setter for: Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->mHintAnimation:Landroid/animation/ValueAnimator;
    invoke-static {v3, v4}, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->access$102(Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    .line 467
    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    .line 474
    .end local v0           #a:Landroid/animation/Animator;
    :cond_0
    :goto_0
    return-void

    .line 471
    :cond_1
    iget-object v3, p0, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal$2;->this$0:Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;

    #getter for: Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->mHintAnimation:Landroid/animation/ValueAnimator;
    invoke-static {v3}, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->access$100(Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;)Landroid/animation/ValueAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v2

    .line 472
    .local v2, value:F
    const/high16 v3, 0x42c8

    mul-float/2addr v3, v2

    const/high16 v4, 0x4160

    div-float/2addr v3, v4

    float-to-int v1, v3

    .line 473
    .local v1, i:I
    iget-object v3, p0, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal$2;->this$0:Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;

    #calls: Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->showRightHintAnim(I)V
    invoke-static {v3, v1}, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->access$200(Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;I)V

    goto :goto_0
.end method

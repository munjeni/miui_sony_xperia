.class Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "MiuiInCallAnswerWidgetHorizontal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;
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
    .line 89
    iput-object p1, p0, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal$1;->this$0:Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal$1;->this$0:Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;

    const/4 v1, 0x0

    #setter for: Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->mShowingOuterRing:Z
    invoke-static {v0, v1}, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->access$002(Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;Z)Z

    .line 92
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal$1;->this$0:Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->showTargets(Z)V

    .line 93
    return-void
.end method

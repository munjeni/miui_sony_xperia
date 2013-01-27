.class Lcom/android/internal/widget/multiwaveview/MultiWaveView$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "MultiWaveView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/multiwaveview/MultiWaveView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/widget/multiwaveview/MultiWaveView;


# direct methods
.method constructor <init>(Lcom/android/internal/widget/multiwaveview/MultiWaveView;)V
    .locals 0
    .parameter

    .prologue
    .line 158
    iput-object p1, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView$4;->this$0:Lcom/android/internal/widget/multiwaveview/MultiWaveView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .parameter "animator"

    .prologue
    const/4 v2, 0x0

    .line 160
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView$4;->this$0:Lcom/android/internal/widget/multiwaveview/MultiWaveView;

    iget v0, v0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mNewTargetResources:I

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView$4;->this$0:Lcom/android/internal/widget/multiwaveview/MultiWaveView;

    iget-object v1, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView$4;->this$0:Lcom/android/internal/widget/multiwaveview/MultiWaveView;

    iget v1, v1, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mNewTargetResources:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->internalSetTargetResources(I)V

    .line 162
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView$4;->this$0:Lcom/android/internal/widget/multiwaveview/MultiWaveView;

    iput v2, v0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mNewTargetResources:I

    .line 163
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView$4;->this$0:Lcom/android/internal/widget/multiwaveview/MultiWaveView;

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->hideTargets(Z)V

    .line 165
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView$4;->this$0:Lcom/android/internal/widget/multiwaveview/MultiWaveView;

    iput-boolean v2, v0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mAnimatingTargets:Z

    .line 166
    return-void
.end method

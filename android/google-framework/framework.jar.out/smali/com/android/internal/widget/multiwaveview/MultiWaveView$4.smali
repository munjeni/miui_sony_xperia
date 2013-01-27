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
    .line 173
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

    .line 175
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView$4;->this$0:Lcom/android/internal/widget/multiwaveview/MultiWaveView;

    #getter for: Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mNewTargetResources:I
    invoke-static {v0}, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->access$400(Lcom/android/internal/widget/multiwaveview/MultiWaveView;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 176
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView$4;->this$0:Lcom/android/internal/widget/multiwaveview/MultiWaveView;

    iget-object v1, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView$4;->this$0:Lcom/android/internal/widget/multiwaveview/MultiWaveView;

    #getter for: Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mNewTargetResources:I
    invoke-static {v1}, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->access$400(Lcom/android/internal/widget/multiwaveview/MultiWaveView;)I

    move-result v1

    #calls: Lcom/android/internal/widget/multiwaveview/MultiWaveView;->internalSetTargetResources(I)V
    invoke-static {v0, v1}, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->access$500(Lcom/android/internal/widget/multiwaveview/MultiWaveView;I)V

    .line 177
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView$4;->this$0:Lcom/android/internal/widget/multiwaveview/MultiWaveView;

    #setter for: Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mNewTargetResources:I
    invoke-static {v0, v2}, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->access$402(Lcom/android/internal/widget/multiwaveview/MultiWaveView;I)I

    .line 178
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView$4;->this$0:Lcom/android/internal/widget/multiwaveview/MultiWaveView;

    #calls: Lcom/android/internal/widget/multiwaveview/MultiWaveView;->hideTargets(Z)V
    invoke-static {v0, v2}, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->access$600(Lcom/android/internal/widget/multiwaveview/MultiWaveView;Z)V

    .line 184
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView$4;->this$0:Lcom/android/internal/widget/multiwaveview/MultiWaveView;

    #setter for: Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mAnimatingTargets:Z
    invoke-static {v0, v2}, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->access$902(Lcom/android/internal/widget/multiwaveview/MultiWaveView;Z)Z

    .line 185
    return-void

    .line 179
    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView$4;->this$0:Lcom/android/internal/widget/multiwaveview/MultiWaveView;

    #getter for: Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mNewTargetDrawables:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->access$700(Lcom/android/internal/widget/multiwaveview/MultiWaveView;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView$4;->this$0:Lcom/android/internal/widget/multiwaveview/MultiWaveView;

    iget-object v1, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView$4;->this$0:Lcom/android/internal/widget/multiwaveview/MultiWaveView;

    #getter for: Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mNewTargetDrawables:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->access$700(Lcom/android/internal/widget/multiwaveview/MultiWaveView;)Ljava/util/ArrayList;

    move-result-object v1

    #calls: Lcom/android/internal/widget/multiwaveview/MultiWaveView;->internalSetTargetResources(Ljava/util/ArrayList;)V
    invoke-static {v0, v1}, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->access$800(Lcom/android/internal/widget/multiwaveview/MultiWaveView;Ljava/util/ArrayList;)V

    .line 181
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView$4;->this$0:Lcom/android/internal/widget/multiwaveview/MultiWaveView;

    const/4 v1, 0x0

    #setter for: Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mNewTargetDrawables:Ljava/util/ArrayList;
    invoke-static {v0, v1}, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->access$702(Lcom/android/internal/widget/multiwaveview/MultiWaveView;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 182
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView$4;->this$0:Lcom/android/internal/widget/multiwaveview/MultiWaveView;

    #calls: Lcom/android/internal/widget/multiwaveview/MultiWaveView;->hideTargets(Z)V
    invoke-static {v0, v2}, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->access$600(Lcom/android/internal/widget/multiwaveview/MultiWaveView;Z)V

    goto :goto_0
.end method

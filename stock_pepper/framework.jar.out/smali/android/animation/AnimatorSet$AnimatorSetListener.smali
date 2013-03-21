.class Landroid/animation/AnimatorSet$AnimatorSetListener;
.super Ljava/lang/Object;
.source "AnimatorSet.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/animation/AnimatorSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AnimatorSetListener"
.end annotation


# instance fields
.field private mAnimatorSet:Landroid/animation/AnimatorSet;

.field final synthetic this$0:Landroid/animation/AnimatorSet;


# direct methods
.method constructor <init>(Landroid/animation/AnimatorSet;Landroid/animation/AnimatorSet;)V
    .locals 0
    .parameter
    .parameter "animatorSet"

    .prologue
    .line 716
    iput-object p1, p0, Landroid/animation/AnimatorSet$AnimatorSetListener;->this$0:Landroid/animation/AnimatorSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 717
    iput-object p2, p0, Landroid/animation/AnimatorSet$AnimatorSetListener;->mAnimatorSet:Landroid/animation/AnimatorSet;

    .line 718
    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 4
    .parameter "animation"

    .prologue
    .line 721
    iget-object v2, p0, Landroid/animation/AnimatorSet$AnimatorSetListener;->this$0:Landroid/animation/AnimatorSet;

    iget-boolean v2, v2, Landroid/animation/AnimatorSet;->mTerminated:Z

    if-nez v2, :cond_0

    .line 724
    iget-object v2, p0, Landroid/animation/AnimatorSet$AnimatorSetListener;->this$0:Landroid/animation/AnimatorSet;

    #getter for: Landroid/animation/AnimatorSet;->mPlayingSet:Ljava/util/ArrayList;
    invoke-static {v2}, Landroid/animation/AnimatorSet;->access$000(Landroid/animation/AnimatorSet;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 725
    iget-object v2, p0, Landroid/animation/AnimatorSet$AnimatorSetListener;->this$0:Landroid/animation/AnimatorSet;

    iget-object v2, v2, Landroid/animation/AnimatorSet;->mListeners:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 726
    iget-object v2, p0, Landroid/animation/AnimatorSet$AnimatorSetListener;->this$0:Landroid/animation/AnimatorSet;

    iget-object v2, v2, Landroid/animation/AnimatorSet;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 727
    .local v1, numListeners:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 728
    iget-object v2, p0, Landroid/animation/AnimatorSet$AnimatorSetListener;->this$0:Landroid/animation/AnimatorSet;

    iget-object v2, v2, Landroid/animation/AnimatorSet;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/Animator$AnimatorListener;

    iget-object v3, p0, Landroid/animation/AnimatorSet$AnimatorSetListener;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-interface {v2, v3}, Landroid/animation/Animator$AnimatorListener;->onAnimationCancel(Landroid/animation/Animator;)V

    .line 727
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 733
    .end local v0           #i:I
    .end local v1           #numListeners:I
    :cond_0
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 9
    .parameter "animation"

    .prologue
    .line 737
    invoke-virtual {p1, p0}, Landroid/animation/Animator;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 738
    iget-object v7, p0, Landroid/animation/AnimatorSet$AnimatorSetListener;->this$0:Landroid/animation/AnimatorSet;

    #getter for: Landroid/animation/AnimatorSet;->mPlayingSet:Ljava/util/ArrayList;
    invoke-static {v7}, Landroid/animation/AnimatorSet;->access$000(Landroid/animation/AnimatorSet;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 739
    iget-object v7, p0, Landroid/animation/AnimatorSet$AnimatorSetListener;->mAnimatorSet:Landroid/animation/AnimatorSet;

    #getter for: Landroid/animation/AnimatorSet;->mNodeMap:Ljava/util/HashMap;
    invoke-static {v7}, Landroid/animation/AnimatorSet;->access$100(Landroid/animation/AnimatorSet;)Ljava/util/HashMap;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/AnimatorSet$Node;

    .line 740
    .local v1, animNode:Landroid/animation/AnimatorSet$Node;
    const/4 v7, 0x1

    iput-boolean v7, v1, Landroid/animation/AnimatorSet$Node;->done:Z

    .line 741
    iget-object v7, p0, Landroid/animation/AnimatorSet$AnimatorSetListener;->this$0:Landroid/animation/AnimatorSet;

    iget-boolean v7, v7, Landroid/animation/AnimatorSet;->mTerminated:Z

    if-nez v7, :cond_3

    .line 744
    iget-object v7, p0, Landroid/animation/AnimatorSet$AnimatorSetListener;->mAnimatorSet:Landroid/animation/AnimatorSet;

    #getter for: Landroid/animation/AnimatorSet;->mSortedNodes:Ljava/util/ArrayList;
    invoke-static {v7}, Landroid/animation/AnimatorSet;->access$200(Landroid/animation/AnimatorSet;)Ljava/util/ArrayList;

    move-result-object v5

    .line 745
    .local v5, sortedNodes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/animation/AnimatorSet$Node;>;"
    const/4 v0, 0x1

    .line 746
    .local v0, allDone:Z
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 747
    .local v4, numSortedNodes:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v4, :cond_0

    .line 748
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/animation/AnimatorSet$Node;

    iget-boolean v7, v7, Landroid/animation/AnimatorSet$Node;->done:Z

    if-nez v7, :cond_1

    .line 749
    const/4 v0, 0x0

    .line 753
    :cond_0
    if-eqz v0, :cond_3

    .line 756
    iget-object v7, p0, Landroid/animation/AnimatorSet$AnimatorSetListener;->this$0:Landroid/animation/AnimatorSet;

    iget-object v7, v7, Landroid/animation/AnimatorSet;->mListeners:Ljava/util/ArrayList;

    if-eqz v7, :cond_2

    .line 757
    iget-object v7, p0, Landroid/animation/AnimatorSet$AnimatorSetListener;->this$0:Landroid/animation/AnimatorSet;

    iget-object v7, v7, Landroid/animation/AnimatorSet;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    .line 759
    .local v6, tmpListeners:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/animation/Animator$AnimatorListener;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 760
    .local v3, numListeners:I
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v3, :cond_2

    .line 761
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/animation/Animator$AnimatorListener;

    iget-object v8, p0, Landroid/animation/AnimatorSet$AnimatorSetListener;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-interface {v7, v8}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 760
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 747
    .end local v3           #numListeners:I
    .end local v6           #tmpListeners:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/animation/Animator$AnimatorListener;>;"
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 764
    :cond_2
    iget-object v7, p0, Landroid/animation/AnimatorSet$AnimatorSetListener;->mAnimatorSet:Landroid/animation/AnimatorSet;

    const/4 v8, 0x0

    #setter for: Landroid/animation/AnimatorSet;->mStarted:Z
    invoke-static {v7, v8}, Landroid/animation/AnimatorSet;->access$302(Landroid/animation/AnimatorSet;Z)Z

    .line 767
    .end local v0           #allDone:Z
    .end local v2           #i:I
    .end local v4           #numSortedNodes:I
    .end local v5           #sortedNodes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/animation/AnimatorSet$Node;>;"
    :cond_3
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 771
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 775
    return-void
.end method

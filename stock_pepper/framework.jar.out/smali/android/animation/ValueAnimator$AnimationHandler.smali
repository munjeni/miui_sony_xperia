.class Landroid/animation/ValueAnimator$AnimationHandler;
.super Landroid/os/Handler;
.source "ValueAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AnimationHandler"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 549
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/animation/ValueAnimator$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 549
    invoke-direct {p0}, Landroid/animation/ValueAnimator$AnimationHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 27
    .parameter "msg"

    .prologue
    .line 564
    const/4 v6, 0x1

    .line 565
    .local v6, callAgain:Z
    invoke-static {}, Landroid/animation/ValueAnimator;->access$100()Ljava/lang/ThreadLocal;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/animation/ValueAnimator$AnimationHolder;

    .line 566
    .local v12, holder:Landroid/animation/ValueAnimator$AnimationHolder;
    iget-object v5, v12, Landroid/animation/ValueAnimator$AnimationHolder;->mAnimations:Ljava/util/ArrayList;

    .line 567
    .local v5, animations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/animation/ValueAnimator;>;"
    iget-object v10, v12, Landroid/animation/ValueAnimator$AnimationHolder;->mDelayedAnims:Ljava/util/ArrayList;

    .line 568
    .local v10, delayedAnims:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/animation/ValueAnimator;>;"
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v20, v0

    packed-switch v20, :pswitch_data_0

    .line 662
    :cond_0
    :goto_0
    return-void

    .line 572
    :pswitch_0
    iget-object v0, v12, Landroid/animation/ValueAnimator$AnimationHolder;->mPendingAnimations:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    .line 573
    .local v17, pendingAnimations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/animation/ValueAnimator;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v20

    if-gtz v20, :cond_1

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v20

    if-lez v20, :cond_2

    .line 574
    :cond_1
    const/4 v6, 0x0

    .line 581
    :cond_2
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v20

    if-lez v20, :cond_4

    .line 582
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/ArrayList;

    .line 584
    .local v18, pendingCopy:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/animation/ValueAnimator;>;"
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->clear()V

    .line 585
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 586
    .local v7, count:I
    const/4 v13, 0x0

    .local v13, i:I
    :goto_1
    if-ge v13, v7, :cond_2

    .line 587
    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/animation/ValueAnimator;

    .line 589
    .local v4, anim:Landroid/animation/ValueAnimator;
    #getter for: Landroid/animation/ValueAnimator;->mStartDelay:J
    invoke-static {v4}, Landroid/animation/ValueAnimator;->access$200(Landroid/animation/ValueAnimator;)J

    move-result-wide v20

    const-wide/16 v22, 0x0

    cmp-long v20, v20, v22

    if-nez v20, :cond_3

    .line 590
    #calls: Landroid/animation/ValueAnimator;->startAnimation()V
    invoke-static {v4}, Landroid/animation/ValueAnimator;->access$300(Landroid/animation/ValueAnimator;)V

    .line 586
    :goto_2
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 592
    :cond_3
    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 600
    .end local v4           #anim:Landroid/animation/ValueAnimator;
    .end local v7           #count:I
    .end local v13           #i:I
    .end local v17           #pendingAnimations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/animation/ValueAnimator;>;"
    .end local v18           #pendingCopy:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/animation/ValueAnimator;>;"
    :cond_4
    :pswitch_1
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v8

    .line 601
    .local v8, currentTime:J
    iget-object v0, v12, Landroid/animation/ValueAnimator$AnimationHolder;->mReadyAnims:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    .line 602
    .local v19, readyAnims:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/animation/ValueAnimator;>;"
    iget-object v11, v12, Landroid/animation/ValueAnimator$AnimationHolder;->mEndingAnims:Ljava/util/ArrayList;

    .line 606
    .local v11, endingAnims:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/animation/ValueAnimator;>;"
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v15

    .line 607
    .local v15, numDelayedAnims:I
    const/4 v13, 0x0

    .restart local v13       #i:I
    :goto_3
    if-ge v13, v15, :cond_6

    .line 608
    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/animation/ValueAnimator;

    .line 609
    .restart local v4       #anim:Landroid/animation/ValueAnimator;
    #calls: Landroid/animation/ValueAnimator;->delayedAnimationFrame(J)Z
    invoke-static {v4, v8, v9}, Landroid/animation/ValueAnimator;->access$400(Landroid/animation/ValueAnimator;J)Z

    move-result v20

    if-eqz v20, :cond_5

    .line 610
    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 607
    :cond_5
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    .line 613
    .end local v4           #anim:Landroid/animation/ValueAnimator;
    :cond_6
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v16

    .line 614
    .local v16, numReadyAnims:I
    if-lez v16, :cond_8

    .line 615
    const/4 v13, 0x0

    :goto_4
    move/from16 v0, v16

    if-ge v13, v0, :cond_7

    .line 616
    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/animation/ValueAnimator;

    .line 617
    .restart local v4       #anim:Landroid/animation/ValueAnimator;
    #calls: Landroid/animation/ValueAnimator;->startAnimation()V
    invoke-static {v4}, Landroid/animation/ValueAnimator;->access$300(Landroid/animation/ValueAnimator;)V

    .line 618
    const/16 v20, 0x1

    move/from16 v0, v20

    #setter for: Landroid/animation/ValueAnimator;->mRunning:Z
    invoke-static {v4, v0}, Landroid/animation/ValueAnimator;->access$502(Landroid/animation/ValueAnimator;Z)Z

    .line 619
    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 615
    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    .line 621
    .end local v4           #anim:Landroid/animation/ValueAnimator;
    :cond_7
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->clear()V

    .line 626
    :cond_8
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v14

    .line 627
    .local v14, numAnims:I
    const/4 v13, 0x0

    .line 628
    :goto_5
    if-ge v13, v14, :cond_b

    .line 629
    invoke-virtual {v5, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/animation/ValueAnimator;

    .line 630
    .restart local v4       #anim:Landroid/animation/ValueAnimator;
    invoke-virtual {v4, v8, v9}, Landroid/animation/ValueAnimator;->animationFrame(J)Z

    move-result v20

    if-eqz v20, :cond_9

    .line 631
    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 633
    :cond_9
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v20

    move/from16 v0, v20

    if-ne v0, v14, :cond_a

    .line 634
    add-int/lit8 v13, v13, 0x1

    goto :goto_5

    .line 643
    :cond_a
    add-int/lit8 v14, v14, -0x1

    .line 644
    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_5

    .line 647
    .end local v4           #anim:Landroid/animation/ValueAnimator;
    :cond_b
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v20

    if-lez v20, :cond_d

    .line 648
    const/4 v13, 0x0

    :goto_6
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v20

    move/from16 v0, v20

    if-ge v13, v0, :cond_c

    .line 649
    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/animation/ValueAnimator;

    #calls: Landroid/animation/ValueAnimator;->endAnimation()V
    invoke-static/range {v20 .. v20}, Landroid/animation/ValueAnimator;->access$600(Landroid/animation/ValueAnimator;)V

    .line 648
    add-int/lit8 v13, v13, 0x1

    goto :goto_6

    .line 651
    :cond_c
    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 656
    :cond_d
    if-eqz v6, :cond_0

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v20

    if-eqz v20, :cond_e

    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v20

    if-nez v20, :cond_0

    .line 657
    :cond_e
    const/16 v20, 0x1

    const-wide/16 v21, 0x0

    invoke-static {}, Landroid/animation/ValueAnimator;->access$700()J

    move-result-wide v23

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v25

    sub-long v25, v25, v8

    sub-long v23, v23, v25

    invoke-static/range {v21 .. v24}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v21

    move-object/from16 v0, p0

    move/from16 v1, v20

    move-wide/from16 v2, v21

    invoke-virtual {v0, v1, v2, v3}, Landroid/animation/ValueAnimator$AnimationHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 568
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

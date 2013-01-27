.class Lcom/miui/internal/policy/impl/SlidingPanel$BatteryInfo;
.super Ljava/lang/Object;
.source "SlidingPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/policy/impl/SlidingPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BatteryInfo"
.end annotation


# instance fields
.field private MAX_BATTERY_LEVEL:I

.field private mBatteryAnimationArrow:Landroid/widget/ImageView;

.field private mBatteryAnimationLight:Landroid/widget/ImageView;

.field private mBatteryAnimationProgress:Landroid/widget/ImageView;

.field private mBatteryAnimationRunnable:Ljava/lang/Runnable;

.field private mBatteryArea:Landroid/widget/FrameLayout;

.field private mBatteryLevel:I

.field final synthetic this$0:Lcom/miui/internal/policy/impl/SlidingPanel;


# direct methods
.method private constructor <init>(Lcom/miui/internal/policy/impl/SlidingPanel;)V
    .locals 1
    .parameter

    .prologue
    .line 612
    iput-object p1, p0, Lcom/miui/internal/policy/impl/SlidingPanel$BatteryInfo;->this$0:Lcom/miui/internal/policy/impl/SlidingPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 613
    const/16 v0, 0x64

    iput v0, p0, Lcom/miui/internal/policy/impl/SlidingPanel$BatteryInfo;->MAX_BATTERY_LEVEL:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/internal/policy/impl/SlidingPanel;Lcom/miui/internal/policy/impl/SlidingPanel$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 612
    invoke-direct {p0, p1}, Lcom/miui/internal/policy/impl/SlidingPanel$BatteryInfo;-><init>(Lcom/miui/internal/policy/impl/SlidingPanel;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/miui/internal/policy/impl/SlidingPanel$BatteryInfo;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 612
    iget-object v0, p0, Lcom/miui/internal/policy/impl/SlidingPanel$BatteryInfo;->mBatteryAnimationRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/miui/internal/policy/impl/SlidingPanel$BatteryInfo;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 612
    iget-object v0, p0, Lcom/miui/internal/policy/impl/SlidingPanel$BatteryInfo;->mBatteryAnimationArrow:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/miui/internal/policy/impl/SlidingPanel$BatteryInfo;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 612
    iget-object v0, p0, Lcom/miui/internal/policy/impl/SlidingPanel$BatteryInfo;->mBatteryAnimationLight:Landroid/widget/ImageView;

    return-object v0
.end method


# virtual methods
.method public clearBatteryAnimations()V
    .locals 2

    .prologue
    .line 691
    iget-object v0, p0, Lcom/miui/internal/policy/impl/SlidingPanel$BatteryInfo;->mBatteryArea:Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    .line 697
    :goto_0
    return-void

    .line 694
    :cond_0
    iget-object v0, p0, Lcom/miui/internal/policy/impl/SlidingPanel$BatteryInfo;->this$0:Lcom/miui/internal/policy/impl/SlidingPanel;

    iget-object v1, p0, Lcom/miui/internal/policy/impl/SlidingPanel$BatteryInfo;->mBatteryAnimationRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/miui/internal/policy/impl/SlidingPanel;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 695
    iget-object v0, p0, Lcom/miui/internal/policy/impl/SlidingPanel$BatteryInfo;->mBatteryAnimationArrow:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 696
    iget-object v0, p0, Lcom/miui/internal/policy/impl/SlidingPanel$BatteryInfo;->mBatteryAnimationLight:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    goto :goto_0
.end method

.method public needLayoutBattery()Z
    .locals 1

    .prologue
    .line 807
    iget-object v0, p0, Lcom/miui/internal/policy/impl/SlidingPanel$BatteryInfo;->mBatteryAnimationArrow:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/internal/policy/impl/SlidingPanel$BatteryInfo;->mBatteryAnimationArrow:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/internal/policy/impl/SlidingPanel$BatteryInfo;->mBatteryAnimationArrow:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPasue()V
    .locals 2

    .prologue
    .line 817
    iget-object v0, p0, Lcom/miui/internal/policy/impl/SlidingPanel$BatteryInfo;->mBatteryArea:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    .line 818
    iget-object v0, p0, Lcom/miui/internal/policy/impl/SlidingPanel$BatteryInfo;->mBatteryArea:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 819
    invoke-virtual {p0}, Lcom/miui/internal/policy/impl/SlidingPanel$BatteryInfo;->clearBatteryAnimations()V

    .line 821
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 824
    iget-object v0, p0, Lcom/miui/internal/policy/impl/SlidingPanel$BatteryInfo;->mBatteryArea:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/internal/policy/impl/SlidingPanel$BatteryInfo;->this$0:Lcom/miui/internal/policy/impl/SlidingPanel;

    #getter for: Lcom/miui/internal/policy/impl/SlidingPanel;->mBattery:Lcom/miui/internal/policy/impl/SlidingPanel$BatteryInfo;
    invoke-static {v0}, Lcom/miui/internal/policy/impl/SlidingPanel;->access$1200(Lcom/miui/internal/policy/impl/SlidingPanel;)Lcom/miui/internal/policy/impl/SlidingPanel$BatteryInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/policy/impl/SlidingPanel$BatteryInfo;->needLayoutBattery()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 825
    invoke-virtual {p0}, Lcom/miui/internal/policy/impl/SlidingPanel$BatteryInfo;->clearBatteryAnimations()V

    .line 826
    invoke-virtual {p0}, Lcom/miui/internal/policy/impl/SlidingPanel$BatteryInfo;->setBatteryAnimations()V

    .line 828
    :cond_0
    return-void
.end method

.method public setBackgroundFor(I)V
    .locals 12
    .parameter "mode"

    .prologue
    const/16 v9, 0x8

    const/4 v8, 0x0

    .line 621
    iget-object v10, p0, Lcom/miui/internal/policy/impl/SlidingPanel$BatteryInfo;->this$0:Lcom/miui/internal/policy/impl/SlidingPanel;

    #setter for: Lcom/miui/internal/policy/impl/SlidingPanel;->mBackgroundMode:I
    invoke-static {v10, p1}, Lcom/miui/internal/policy/impl/SlidingPanel;->access$902(Lcom/miui/internal/policy/impl/SlidingPanel;I)I

    .line 622
    iget-object v10, p0, Lcom/miui/internal/policy/impl/SlidingPanel$BatteryInfo;->this$0:Lcom/miui/internal/policy/impl/SlidingPanel;

    #getter for: Lcom/miui/internal/policy/impl/SlidingPanel;->mIsPaused:Z
    invoke-static {v10}, Lcom/miui/internal/policy/impl/SlidingPanel;->access$1000(Lcom/miui/internal/policy/impl/SlidingPanel;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 688
    :cond_0
    :goto_0
    return-void

    .line 625
    :cond_1
    if-nez p1, :cond_2

    iget-object v10, p0, Lcom/miui/internal/policy/impl/SlidingPanel$BatteryInfo;->this$0:Lcom/miui/internal/policy/impl/SlidingPanel;

    #getter for: Lcom/miui/internal/policy/impl/SlidingPanel;->mIsShowBatteryLevel:Z
    invoke-static {v10}, Lcom/miui/internal/policy/impl/SlidingPanel;->access$1100(Lcom/miui/internal/policy/impl/SlidingPanel;)Z

    move-result v10

    if-eqz v10, :cond_3

    :cond_2
    iget-object v10, p0, Lcom/miui/internal/policy/impl/SlidingPanel$BatteryInfo;->mBatteryArea:Landroid/widget/FrameLayout;

    if-nez v10, :cond_3

    .line 627
    iget-object v10, p0, Lcom/miui/internal/policy/impl/SlidingPanel$BatteryInfo;->this$0:Lcom/miui/internal/policy/impl/SlidingPanel;

    #getter for: Lcom/miui/internal/policy/impl/SlidingPanel;->mBattery:Lcom/miui/internal/policy/impl/SlidingPanel$BatteryInfo;
    invoke-static {v10}, Lcom/miui/internal/policy/impl/SlidingPanel;->access$1200(Lcom/miui/internal/policy/impl/SlidingPanel;)Lcom/miui/internal/policy/impl/SlidingPanel$BatteryInfo;

    move-result-object v10

    invoke-virtual {v10}, Lcom/miui/internal/policy/impl/SlidingPanel$BatteryInfo;->setupBatteryArea()V

    .line 629
    :cond_3
    const v7, 0x60200ba

    .line 630
    .local v7, resId:I
    const/4 v4, 0x0

    .line 631
    .local v4, batteryAnimationProgressId:I
    const/4 v2, 0x0

    .line 632
    .local v2, batteryAnimationArrowId:I
    const/4 v3, 0x0

    .line 633
    .local v3, batteryAnimationLightId:I
    const/4 v6, -0x1

    .line 634
    .local v6, progressMarginLeft:I
    packed-switch p1, :pswitch_data_0

    .line 658
    :cond_4
    :goto_1
    :pswitch_0
    iget-object v10, p0, Lcom/miui/internal/policy/impl/SlidingPanel$BatteryInfo;->this$0:Lcom/miui/internal/policy/impl/SlidingPanel;

    #getter for: Lcom/miui/internal/policy/impl/SlidingPanel;->mIsPressing:Z
    invoke-static {v10}, Lcom/miui/internal/policy/impl/SlidingPanel;->access$300(Lcom/miui/internal/policy/impl/SlidingPanel;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 659
    const v7, 0x60200bb

    .line 662
    :cond_5
    iget-object v10, p0, Lcom/miui/internal/policy/impl/SlidingPanel$BatteryInfo;->this$0:Lcom/miui/internal/policy/impl/SlidingPanel;

    #getter for: Lcom/miui/internal/policy/impl/SlidingPanel;->mButtonRegion:Landroid/widget/FrameLayout;
    invoke-static {v10}, Lcom/miui/internal/policy/impl/SlidingPanel;->access$1400(Lcom/miui/internal/policy/impl/SlidingPanel;)Landroid/widget/FrameLayout;

    move-result-object v10

    invoke-virtual {v10, v7}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 663
    iget-object v10, p0, Lcom/miui/internal/policy/impl/SlidingPanel$BatteryInfo;->mBatteryArea:Landroid/widget/FrameLayout;

    if-eqz v10, :cond_0

    .line 666
    if-eqz v4, :cond_7

    move v0, v8

    .line 667
    .local v0, BatteryVisibility:I
    :goto_2
    iget-object v10, p0, Lcom/miui/internal/policy/impl/SlidingPanel$BatteryInfo;->mBatteryArea:Landroid/widget/FrameLayout;

    invoke-virtual {v10, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 668
    iget-object v10, p0, Lcom/miui/internal/policy/impl/SlidingPanel$BatteryInfo;->mBatteryAnimationProgress:Landroid/widget/ImageView;

    invoke-virtual {v10, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 669
    iget-object v10, p0, Lcom/miui/internal/policy/impl/SlidingPanel$BatteryInfo;->mBatteryAnimationProgress:Landroid/widget/ImageView;

    invoke-virtual {v10, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 670
    const/4 v10, -0x1

    if-eq v6, v10, :cond_6

    .line 671
    iget-object v10, p0, Lcom/miui/internal/policy/impl/SlidingPanel$BatteryInfo;->mBatteryAnimationProgress:Landroid/widget/ImageView;

    invoke-virtual {v10}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout$LayoutParams;

    .line 672
    .local v5, progressLayout:Landroid/widget/FrameLayout$LayoutParams;
    iput v6, v5, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 673
    iget-object v10, p0, Lcom/miui/internal/policy/impl/SlidingPanel$BatteryInfo;->mBatteryAnimationProgress:Landroid/widget/ImageView;

    invoke-virtual {v10, v5}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 677
    .end local v5           #progressLayout:Landroid/widget/FrameLayout$LayoutParams;
    :cond_6
    if-eqz v2, :cond_8

    move v1, v8

    .line 678
    .local v1, animVisibility:I
    :goto_3
    iget-object v8, p0, Lcom/miui/internal/policy/impl/SlidingPanel$BatteryInfo;->mBatteryAnimationArrow:Landroid/widget/ImageView;

    invoke-virtual {v8, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 679
    iget-object v8, p0, Lcom/miui/internal/policy/impl/SlidingPanel$BatteryInfo;->mBatteryAnimationLight:Landroid/widget/ImageView;

    invoke-virtual {v8, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 680
    iget-object v8, p0, Lcom/miui/internal/policy/impl/SlidingPanel$BatteryInfo;->mBatteryAnimationArrow:Landroid/widget/ImageView;

    invoke-virtual {v8, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 681
    iget-object v8, p0, Lcom/miui/internal/policy/impl/SlidingPanel$BatteryInfo;->mBatteryAnimationLight:Landroid/widget/ImageView;

    invoke-virtual {v8, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 682
    invoke-virtual {p0}, Lcom/miui/internal/policy/impl/SlidingPanel$BatteryInfo;->clearBatteryAnimations()V

    .line 683
    if-eqz v3, :cond_0

    if-eqz v2, :cond_0

    if-eqz v4, :cond_0

    .line 686
    invoke-virtual {p0}, Lcom/miui/internal/policy/impl/SlidingPanel$BatteryInfo;->setBatteryAnimations()V

    goto/16 :goto_0

    .line 636
    .end local v0           #BatteryVisibility:I
    .end local v1           #animVisibility:I
    :pswitch_1
    const v3, 0x602008c

    .line 637
    const v4, 0x6020089

    .line 638
    const v2, 0x602008b

    goto :goto_1

    .line 645
    :pswitch_2
    const v4, 0x602008f

    .line 647
    const/4 v6, 0x0

    .line 648
    goto :goto_1

    .line 650
    :pswitch_3
    iget-object v10, p0, Lcom/miui/internal/policy/impl/SlidingPanel$BatteryInfo;->this$0:Lcom/miui/internal/policy/impl/SlidingPanel;

    #getter for: Lcom/miui/internal/policy/impl/SlidingPanel;->mIsShowBatteryLevel:Z
    invoke-static {v10}, Lcom/miui/internal/policy/impl/SlidingPanel;->access$1100(Lcom/miui/internal/policy/impl/SlidingPanel;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 651
    const v4, 0x6020089

    .line 652
    iget-object v10, p0, Lcom/miui/internal/policy/impl/SlidingPanel$BatteryInfo;->this$0:Lcom/miui/internal/policy/impl/SlidingPanel;

    #getter for: Lcom/miui/internal/policy/impl/SlidingPanel;->mDisplayWidth:I
    invoke-static {v10}, Lcom/miui/internal/policy/impl/SlidingPanel;->access$1300(Lcom/miui/internal/policy/impl/SlidingPanel;)I

    move-result v10

    int-to-float v10, v10

    iget v11, p0, Lcom/miui/internal/policy/impl/SlidingPanel$BatteryInfo;->mBatteryLevel:I

    int-to-float v11, v11

    mul-float/2addr v10, v11

    iget v11, p0, Lcom/miui/internal/policy/impl/SlidingPanel$BatteryInfo;->MAX_BATTERY_LEVEL:I

    int-to-float v11, v11

    div-float/2addr v10, v11

    const/high16 v11, 0x3f00

    add-float/2addr v10, v11

    float-to-int v10, v10

    iget-object v11, p0, Lcom/miui/internal/policy/impl/SlidingPanel$BatteryInfo;->this$0:Lcom/miui/internal/policy/impl/SlidingPanel;

    #getter for: Lcom/miui/internal/policy/impl/SlidingPanel;->mDisplayWidth:I
    invoke-static {v11}, Lcom/miui/internal/policy/impl/SlidingPanel;->access$1300(Lcom/miui/internal/policy/impl/SlidingPanel;)I

    move-result v11

    sub-int v6, v10, v11

    goto/16 :goto_1

    :cond_7
    move v0, v9

    .line 666
    goto :goto_2

    .restart local v0       #BatteryVisibility:I
    :cond_8
    move v1, v9

    .line 677
    goto :goto_3

    .line 634
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setBatteryAnimations()V
    .locals 27

    .prologue
    .line 701
    const/16 v12, 0x3e8

    .line 702
    .local v12, duration1:I
    const/16 v13, 0x3e8

    .line 703
    .local v13, duration2:I
    const/16 v11, 0xdac

    .line 705
    .local v11, delayDuration:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/internal/policy/impl/SlidingPanel$BatteryInfo;->this$0:Lcom/miui/internal/policy/impl/SlidingPanel;

    move-object/from16 v23, v0

    #getter for: Lcom/miui/internal/policy/impl/SlidingPanel;->mDisplayWidth:I
    invoke-static/range {v23 .. v23}, Lcom/miui/internal/policy/impl/SlidingPanel;->access$1300(Lcom/miui/internal/policy/impl/SlidingPanel;)I

    move-result v23

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/internal/policy/impl/SlidingPanel$BatteryInfo;->mBatteryLevel:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    mul-float v23, v23, v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/internal/policy/impl/SlidingPanel$BatteryInfo;->MAX_BATTERY_LEVEL:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    div-float v23, v23, v24

    const/high16 v24, 0x3f00

    add-float v23, v23, v24

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v17, v0

    .line 706
    .local v17, lightOffset:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/internal/policy/impl/SlidingPanel$BatteryInfo;->this$0:Lcom/miui/internal/policy/impl/SlidingPanel;

    move-object/from16 v23, v0

    #getter for: Lcom/miui/internal/policy/impl/SlidingPanel;->mDisplayWidth:I
    invoke-static/range {v23 .. v23}, Lcom/miui/internal/policy/impl/SlidingPanel;->access$1300(Lcom/miui/internal/policy/impl/SlidingPanel;)I

    move-result v23

    sub-int v22, v23, v17

    .line 707
    .local v22, progressMarginLeft:I
    move/from16 v5, v22

    .line 709
    .local v5, arrowOffset:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/internal/policy/impl/SlidingPanel$BatteryInfo;->mBatteryAnimationProgress:Landroid/widget/ImageView;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v20

    check-cast v20, Landroid/graphics/drawable/NinePatchDrawable;

    .line 710
    .local v20, progressDrawable:Landroid/graphics/drawable/NinePatchDrawable;
    if-eqz v20, :cond_0

    .line 711
    new-instance v19, Landroid/graphics/Rect;

    invoke-direct/range {v19 .. v19}, Landroid/graphics/Rect;-><init>()V

    .line 712
    .local v19, padding:Landroid/graphics/Rect;
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/NinePatchDrawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 713
    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v23, v0

    sub-int v17, v17, v23

    .line 714
    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v23, v0

    add-int v5, v5, v23

    .line 717
    .end local v19           #padding:Landroid/graphics/Rect;
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/internal/policy/impl/SlidingPanel$BatteryInfo;->mBatteryAnimationProgress:Landroid/widget/ImageView;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v21

    check-cast v21, Landroid/widget/FrameLayout$LayoutParams;

    .line 718
    .local v21, progressLayout:Landroid/widget/FrameLayout$LayoutParams;
    move/from16 v0, v22

    neg-int v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    move-object/from16 v1, v21

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 719
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/internal/policy/impl/SlidingPanel$BatteryInfo;->mBatteryAnimationProgress:Landroid/widget/ImageView;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 721
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/internal/policy/impl/SlidingPanel$BatteryInfo;->mBatteryAnimationLight:Landroid/widget/ImageView;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v16

    check-cast v16, Landroid/widget/FrameLayout$LayoutParams;

    .line 722
    .local v16, lightLayout:Landroid/widget/FrameLayout$LayoutParams;
    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 723
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/internal/policy/impl/SlidingPanel$BatteryInfo;->mBatteryAnimationLight:Landroid/widget/ImageView;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 725
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/internal/policy/impl/SlidingPanel$BatteryInfo;->mBatteryAnimationArrow:Landroid/widget/ImageView;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 726
    .local v4, arrowDrawable:Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/internal/policy/impl/SlidingPanel$BatteryInfo;->mBatteryAnimationArrow:Landroid/widget/ImageView;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/FrameLayout$LayoutParams;

    .line 727
    .local v7, barLayout:Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v23

    move/from16 v0, v23

    neg-int v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    iput v0, v7, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 728
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/internal/policy/impl/SlidingPanel$BatteryInfo;->mBatteryAnimationArrow:Landroid/widget/ImageView;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 731
    new-instance v9, Landroid/view/animation/TranslateAnimation;

    const/16 v23, 0x0

    neg-int v0, v5

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    const/16 v25, 0x0

    const/16 v26, 0x0

    move/from16 v0, v23

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    invoke-direct {v9, v0, v1, v2, v3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 732
    .local v9, barTranslate1:Landroid/view/animation/TranslateAnimation;
    int-to-long v0, v12

    move-wide/from16 v23, v0

    move-wide/from16 v0, v23

    invoke-virtual {v9, v0, v1}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 733
    new-instance v23, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct/range {v23 .. v23}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    move-object/from16 v0, v23

    invoke-virtual {v9, v0}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 736
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v23

    mul-int/lit8 v23, v23, 0x2

    add-int v18, v5, v23

    .line 737
    .local v18, offsetX:I
    new-instance v10, Landroid/view/animation/TranslateAnimation;

    neg-int v0, v5

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    move/from16 v0, v18

    neg-int v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    const/16 v25, 0x0

    const/16 v26, 0x0

    move/from16 v0, v23

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    invoke-direct {v10, v0, v1, v2, v3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 739
    .local v10, barTranslate2:Landroid/view/animation/TranslateAnimation;
    new-instance v6, Landroid/view/animation/AlphaAnimation;

    const/high16 v23, 0x3f80

    const/16 v24, 0x0

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-direct {v6, v0, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 741
    .local v6, barAlpha2:Landroid/view/animation/AlphaAnimation;
    new-instance v8, Landroid/view/animation/AnimationSet;

    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-direct {v8, v0}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 742
    .local v8, barSet2:Landroid/view/animation/AnimationSet;
    invoke-virtual {v8, v10}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 743
    invoke-virtual {v8, v6}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 744
    int-to-long v0, v13

    move-wide/from16 v23, v0

    move-wide/from16 v0, v23

    invoke-virtual {v8, v0, v1}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 746
    new-instance v23, Lcom/miui/internal/policy/impl/SlidingPanel$AnimationSequenceListener;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/internal/policy/impl/SlidingPanel$BatteryInfo;->this$0:Lcom/miui/internal/policy/impl/SlidingPanel;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/internal/policy/impl/SlidingPanel$BatteryInfo;->mBatteryAnimationArrow:Landroid/widget/ImageView;

    move-object/from16 v25, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2, v8}, Lcom/miui/internal/policy/impl/SlidingPanel$AnimationSequenceListener;-><init>(Lcom/miui/internal/policy/impl/SlidingPanel;Landroid/view/View;Landroid/view/animation/Animation;)V

    move-object/from16 v0, v23

    invoke-virtual {v9, v0}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 747
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/internal/policy/impl/SlidingPanel$BatteryInfo;->mBatteryAnimationArrow:Landroid/widget/ImageView;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 750
    new-instance v14, Landroid/view/animation/AlphaAnimation;

    const/16 v23, 0x0

    const/16 v24, 0x0

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-direct {v14, v0, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 751
    .local v14, lightAlpha1:Landroid/view/animation/AlphaAnimation;
    const/16 v23, 0x1

    move/from16 v0, v23

    invoke-virtual {v14, v0}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 752
    int-to-long v0, v12

    move-wide/from16 v23, v0

    move-wide/from16 v0, v23

    invoke-virtual {v14, v0, v1}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 755
    new-instance v15, Landroid/view/animation/AlphaAnimation;

    const/high16 v23, 0x3f80

    const/16 v24, 0x0

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-direct {v15, v0, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 756
    .local v15, lightAlpha2:Landroid/view/animation/AlphaAnimation;
    const/16 v23, 0x1

    move/from16 v0, v23

    invoke-virtual {v15, v0}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 757
    int-to-long v0, v13

    move-wide/from16 v23, v0

    move-wide/from16 v0, v23

    invoke-virtual {v15, v0, v1}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 759
    new-instance v23, Lcom/miui/internal/policy/impl/SlidingPanel$AnimationSequenceListener;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/internal/policy/impl/SlidingPanel$BatteryInfo;->this$0:Lcom/miui/internal/policy/impl/SlidingPanel;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/internal/policy/impl/SlidingPanel$BatteryInfo;->mBatteryAnimationLight:Landroid/widget/ImageView;

    move-object/from16 v25, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2, v15}, Lcom/miui/internal/policy/impl/SlidingPanel$AnimationSequenceListener;-><init>(Lcom/miui/internal/policy/impl/SlidingPanel;Landroid/view/View;Landroid/view/animation/Animation;)V

    move-object/from16 v0, v23

    invoke-virtual {v14, v0}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 760
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/internal/policy/impl/SlidingPanel$BatteryInfo;->mBatteryAnimationLight:Landroid/widget/ImageView;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v14}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 761
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/internal/policy/impl/SlidingPanel$BatteryInfo;->mBatteryAnimationRunnable:Ljava/lang/Runnable;

    move-object/from16 v23, v0

    if-nez v23, :cond_1

    .line 762
    new-instance v23, Lcom/miui/internal/policy/impl/SlidingPanel$BatteryInfo$1;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v9, v14}, Lcom/miui/internal/policy/impl/SlidingPanel$BatteryInfo$1;-><init>(Lcom/miui/internal/policy/impl/SlidingPanel$BatteryInfo;Landroid/view/animation/TranslateAnimation;Landroid/view/animation/AlphaAnimation;)V

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/miui/internal/policy/impl/SlidingPanel$BatteryInfo;->mBatteryAnimationRunnable:Ljava/lang/Runnable;

    .line 772
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/internal/policy/impl/SlidingPanel$BatteryInfo;->this$0:Lcom/miui/internal/policy/impl/SlidingPanel;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/internal/policy/impl/SlidingPanel$BatteryInfo;->mBatteryAnimationRunnable:Ljava/lang/Runnable;

    move-object/from16 v24, v0

    const-wide/16 v25, 0xdac

    invoke-virtual/range {v23 .. v26}, Lcom/miui/internal/policy/impl/SlidingPanel;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 773
    return-void
.end method

.method public setBatteryLevel(I)V
    .locals 1
    .parameter "level"

    .prologue
    .line 813
    iget v0, p0, Lcom/miui/internal/policy/impl/SlidingPanel$BatteryInfo;->MAX_BATTERY_LEVEL:I

    if-le p1, v0, :cond_0

    iget p1, p0, Lcom/miui/internal/policy/impl/SlidingPanel$BatteryInfo;->MAX_BATTERY_LEVEL:I

    .end local p1
    :cond_0
    iput p1, p0, Lcom/miui/internal/policy/impl/SlidingPanel$BatteryInfo;->mBatteryLevel:I

    .line 814
    return-void
.end method

.method public setupBatteryArea()V
    .locals 7

    .prologue
    const/16 v6, 0x13

    const/16 v4, 0x8

    const/4 v5, -0x2

    .line 776
    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/miui/internal/policy/impl/SlidingPanel$BatteryInfo;->this$0:Lcom/miui/internal/policy/impl/SlidingPanel;

    #getter for: Lcom/miui/internal/policy/impl/SlidingPanel;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/miui/internal/policy/impl/SlidingPanel;->access$1800(Lcom/miui/internal/policy/impl/SlidingPanel;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/internal/policy/impl/SlidingPanel$BatteryInfo;->mBatteryArea:Landroid/widget/FrameLayout;

    .line 777
    iget-object v0, p0, Lcom/miui/internal/policy/impl/SlidingPanel$BatteryInfo;->mBatteryArea:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 778
    iget-object v0, p0, Lcom/miui/internal/policy/impl/SlidingPanel$BatteryInfo;->mBatteryArea:Landroid/widget/FrameLayout;

    const v1, 0x6020088

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 779
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/miui/internal/policy/impl/SlidingPanel$BatteryInfo;->this$0:Lcom/miui/internal/policy/impl/SlidingPanel;

    #getter for: Lcom/miui/internal/policy/impl/SlidingPanel;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/miui/internal/policy/impl/SlidingPanel;->access$1900(Lcom/miui/internal/policy/impl/SlidingPanel;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/internal/policy/impl/SlidingPanel$BatteryInfo;->mBatteryAnimationProgress:Landroid/widget/ImageView;

    .line 780
    iget-object v0, p0, Lcom/miui/internal/policy/impl/SlidingPanel$BatteryInfo;->mBatteryAnimationProgress:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 781
    iget-object v0, p0, Lcom/miui/internal/policy/impl/SlidingPanel$BatteryInfo;->mBatteryArea:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/miui/internal/policy/impl/SlidingPanel$BatteryInfo;->mBatteryAnimationProgress:Landroid/widget/ImageView;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v5, v5, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 786
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/miui/internal/policy/impl/SlidingPanel$BatteryInfo;->this$0:Lcom/miui/internal/policy/impl/SlidingPanel;

    #getter for: Lcom/miui/internal/policy/impl/SlidingPanel;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/miui/internal/policy/impl/SlidingPanel;->access$2000(Lcom/miui/internal/policy/impl/SlidingPanel;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/internal/policy/impl/SlidingPanel$BatteryInfo;->mBatteryAnimationArrow:Landroid/widget/ImageView;

    .line 787
    iget-object v0, p0, Lcom/miui/internal/policy/impl/SlidingPanel$BatteryInfo;->mBatteryAnimationArrow:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 788
    iget-object v0, p0, Lcom/miui/internal/policy/impl/SlidingPanel$BatteryInfo;->mBatteryArea:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/miui/internal/policy/impl/SlidingPanel$BatteryInfo;->mBatteryAnimationArrow:Landroid/widget/ImageView;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v3, 0x15

    invoke-direct {v2, v5, v5, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 793
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/miui/internal/policy/impl/SlidingPanel$BatteryInfo;->this$0:Lcom/miui/internal/policy/impl/SlidingPanel;

    #getter for: Lcom/miui/internal/policy/impl/SlidingPanel;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/miui/internal/policy/impl/SlidingPanel;->access$2100(Lcom/miui/internal/policy/impl/SlidingPanel;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/internal/policy/impl/SlidingPanel$BatteryInfo;->mBatteryAnimationLight:Landroid/widget/ImageView;

    .line 794
    iget-object v0, p0, Lcom/miui/internal/policy/impl/SlidingPanel$BatteryInfo;->mBatteryAnimationLight:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 795
    iget-object v0, p0, Lcom/miui/internal/policy/impl/SlidingPanel$BatteryInfo;->mBatteryArea:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/miui/internal/policy/impl/SlidingPanel$BatteryInfo;->mBatteryAnimationLight:Landroid/widget/ImageView;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v5, v5, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 800
    iget-object v0, p0, Lcom/miui/internal/policy/impl/SlidingPanel$BatteryInfo;->this$0:Lcom/miui/internal/policy/impl/SlidingPanel;

    #getter for: Lcom/miui/internal/policy/impl/SlidingPanel;->mContentArea:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/miui/internal/policy/impl/SlidingPanel;->access$2200(Lcom/miui/internal/policy/impl/SlidingPanel;)Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/internal/policy/impl/SlidingPanel$BatteryInfo;->mBatteryArea:Landroid/widget/FrameLayout;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    const/16 v4, 0x31

    invoke-direct {v2, v3, v5, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 804
    return-void
.end method

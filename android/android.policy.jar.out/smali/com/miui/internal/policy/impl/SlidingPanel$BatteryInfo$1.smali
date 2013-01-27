.class Lcom/miui/internal/policy/impl/SlidingPanel$BatteryInfo$1;
.super Ljava/lang/Object;
.source "SlidingPanel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/internal/policy/impl/SlidingPanel$BatteryInfo;->setBatteryAnimations()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/internal/policy/impl/SlidingPanel$BatteryInfo;

.field final synthetic val$barTranslate1:Landroid/view/animation/TranslateAnimation;

.field final synthetic val$lightAlpha1:Landroid/view/animation/AlphaAnimation;


# direct methods
.method constructor <init>(Lcom/miui/internal/policy/impl/SlidingPanel$BatteryInfo;Landroid/view/animation/TranslateAnimation;Landroid/view/animation/AlphaAnimation;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 762
    iput-object p1, p0, Lcom/miui/internal/policy/impl/SlidingPanel$BatteryInfo$1;->this$1:Lcom/miui/internal/policy/impl/SlidingPanel$BatteryInfo;

    iput-object p2, p0, Lcom/miui/internal/policy/impl/SlidingPanel$BatteryInfo$1;->val$barTranslate1:Landroid/view/animation/TranslateAnimation;

    iput-object p3, p0, Lcom/miui/internal/policy/impl/SlidingPanel$BatteryInfo$1;->val$lightAlpha1:Landroid/view/animation/AlphaAnimation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 765
    iget-object v0, p0, Lcom/miui/internal/policy/impl/SlidingPanel$BatteryInfo$1;->this$1:Lcom/miui/internal/policy/impl/SlidingPanel$BatteryInfo;

    iget-object v0, v0, Lcom/miui/internal/policy/impl/SlidingPanel$BatteryInfo;->this$0:Lcom/miui/internal/policy/impl/SlidingPanel;

    iget-object v1, p0, Lcom/miui/internal/policy/impl/SlidingPanel$BatteryInfo$1;->this$1:Lcom/miui/internal/policy/impl/SlidingPanel$BatteryInfo;

    #getter for: Lcom/miui/internal/policy/impl/SlidingPanel$BatteryInfo;->mBatteryAnimationRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/miui/internal/policy/impl/SlidingPanel$BatteryInfo;->access$1500(Lcom/miui/internal/policy/impl/SlidingPanel$BatteryInfo;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/internal/policy/impl/SlidingPanel;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 766
    iget-object v0, p0, Lcom/miui/internal/policy/impl/SlidingPanel$BatteryInfo$1;->this$1:Lcom/miui/internal/policy/impl/SlidingPanel$BatteryInfo;

    #getter for: Lcom/miui/internal/policy/impl/SlidingPanel$BatteryInfo;->mBatteryAnimationArrow:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/miui/internal/policy/impl/SlidingPanel$BatteryInfo;->access$1600(Lcom/miui/internal/policy/impl/SlidingPanel$BatteryInfo;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/internal/policy/impl/SlidingPanel$BatteryInfo$1;->val$barTranslate1:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 767
    iget-object v0, p0, Lcom/miui/internal/policy/impl/SlidingPanel$BatteryInfo$1;->this$1:Lcom/miui/internal/policy/impl/SlidingPanel$BatteryInfo;

    #getter for: Lcom/miui/internal/policy/impl/SlidingPanel$BatteryInfo;->mBatteryAnimationLight:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/miui/internal/policy/impl/SlidingPanel$BatteryInfo;->access$1700(Lcom/miui/internal/policy/impl/SlidingPanel$BatteryInfo;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/internal/policy/impl/SlidingPanel$BatteryInfo$1;->val$lightAlpha1:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 768
    iget-object v0, p0, Lcom/miui/internal/policy/impl/SlidingPanel$BatteryInfo$1;->this$1:Lcom/miui/internal/policy/impl/SlidingPanel$BatteryInfo;

    iget-object v0, v0, Lcom/miui/internal/policy/impl/SlidingPanel$BatteryInfo;->this$0:Lcom/miui/internal/policy/impl/SlidingPanel;

    iget-object v1, p0, Lcom/miui/internal/policy/impl/SlidingPanel$BatteryInfo$1;->this$1:Lcom/miui/internal/policy/impl/SlidingPanel$BatteryInfo;

    #getter for: Lcom/miui/internal/policy/impl/SlidingPanel$BatteryInfo;->mBatteryAnimationRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/miui/internal/policy/impl/SlidingPanel$BatteryInfo;->access$1500(Lcom/miui/internal/policy/impl/SlidingPanel$BatteryInfo;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0xdac

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/internal/policy/impl/SlidingPanel;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 769
    return-void
.end method

.class Lcom/miui/internal/policy/impl/SlidingPanel$1;
.super Ljava/lang/Object;
.source "SlidingPanel.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/internal/policy/impl/SlidingPanel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/internal/policy/impl/SlidingPanel;


# direct methods
.method constructor <init>(Lcom/miui/internal/policy/impl/SlidingPanel;)V
    .locals 0
    .parameter

    .prologue
    .line 211
    iput-object p1, p0, Lcom/miui/internal/policy/impl/SlidingPanel$1;->this$0:Lcom/miui/internal/policy/impl/SlidingPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1
    .parameter "animation"

    .prologue
    .line 217
    iget-object v0, p0, Lcom/miui/internal/policy/impl/SlidingPanel$1;->this$0:Lcom/miui/internal/policy/impl/SlidingPanel;

    #getter for: Lcom/miui/internal/policy/impl/SlidingPanel;->mIsPressing:Z
    invoke-static {v0}, Lcom/miui/internal/policy/impl/SlidingPanel;->access$300(Lcom/miui/internal/policy/impl/SlidingPanel;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/miui/internal/policy/impl/SlidingPanel$1;->this$0:Lcom/miui/internal/policy/impl/SlidingPanel;

    #calls: Lcom/miui/internal/policy/impl/SlidingPanel;->resetSlidingPanel()V
    invoke-static {v0}, Lcom/miui/internal/policy/impl/SlidingPanel;->access$400(Lcom/miui/internal/policy/impl/SlidingPanel;)V

    .line 220
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 214
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 212
    return-void
.end method

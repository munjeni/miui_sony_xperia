.class Lcom/miui/internal/policy/impl/SlidingPanel$AnimationSequenceListener;
.super Ljava/lang/Object;
.source "SlidingPanel.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/policy/impl/SlidingPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AnimationSequenceListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/internal/policy/impl/SlidingPanel;

.field private zNext:Landroid/view/animation/Animation;

.field private zTarget:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/miui/internal/policy/impl/SlidingPanel;Landroid/view/View;Landroid/view/animation/Animation;)V
    .locals 0
    .parameter
    .parameter "target"
    .parameter "next"

    .prologue
    .line 835
    iput-object p1, p0, Lcom/miui/internal/policy/impl/SlidingPanel$AnimationSequenceListener;->this$0:Lcom/miui/internal/policy/impl/SlidingPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 836
    iput-object p2, p0, Lcom/miui/internal/policy/impl/SlidingPanel$AnimationSequenceListener;->zTarget:Landroid/view/View;

    .line 837
    iput-object p3, p0, Lcom/miui/internal/policy/impl/SlidingPanel$AnimationSequenceListener;->zNext:Landroid/view/animation/Animation;

    .line 838
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 842
    iget-object v0, p0, Lcom/miui/internal/policy/impl/SlidingPanel$AnimationSequenceListener;->zTarget:Landroid/view/View;

    iget-object v1, p0, Lcom/miui/internal/policy/impl/SlidingPanel$AnimationSequenceListener;->zNext:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 843
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 847
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 851
    return-void
.end method

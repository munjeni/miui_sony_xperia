.class Lcom/android/calculator2/Calculator$2;
.super Ljava/lang/Object;
.source "Calculator.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calculator2/Calculator;->specialAnimation(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calculator2/Calculator;

.field final synthetic val$fromSpecialView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/calculator2/Calculator;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 226
    iput-object p1, p0, Lcom/android/calculator2/Calculator$2;->this$0:Lcom/android/calculator2/Calculator;

    iput-object p2, p0, Lcom/android/calculator2/Calculator$2;->val$fromSpecialView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1
    .parameter "animation"

    .prologue
    .line 237
    iget-object v0, p0, Lcom/android/calculator2/Calculator$2;->val$fromSpecialView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 238
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 233
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 229
    return-void
.end method

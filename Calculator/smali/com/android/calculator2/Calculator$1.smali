.class Lcom/android/calculator2/Calculator$1;
.super Ljava/lang/Object;
.source "Calculator.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calculator2/Calculator;->changeAnimation(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calculator2/Calculator;

.field final synthetic val$fromView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/calculator2/Calculator;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 172
    iput-object p1, p0, Lcom/android/calculator2/Calculator$1;->this$0:Lcom/android/calculator2/Calculator;

    iput-object p2, p0, Lcom/android/calculator2/Calculator$1;->val$fromView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 184
    iget-object v0, p0, Lcom/android/calculator2/Calculator$1;->this$0:Lcom/android/calculator2/Calculator;

    #getter for: Lcom/android/calculator2/Calculator;->mNeedChangePad:Z
    invoke-static {v0}, Lcom/android/calculator2/Calculator;->access$000(Lcom/android/calculator2/Calculator;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/android/calculator2/Calculator$1;->this$0:Lcom/android/calculator2/Calculator;

    #calls: Lcom/android/calculator2/Calculator;->changePad()V
    invoke-static {v0}, Lcom/android/calculator2/Calculator;->access$100(Lcom/android/calculator2/Calculator;)V

    .line 186
    iget-object v0, p0, Lcom/android/calculator2/Calculator$1;->this$0:Lcom/android/calculator2/Calculator;

    const/4 v1, 0x0

    #setter for: Lcom/android/calculator2/Calculator;->mNeedChangePad:Z
    invoke-static {v0, v1}, Lcom/android/calculator2/Calculator;->access$002(Lcom/android/calculator2/Calculator;Z)Z

    .line 188
    :cond_0
    iget-object v0, p0, Lcom/android/calculator2/Calculator$1;->val$fromView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 189
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 180
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 176
    return-void
.end method

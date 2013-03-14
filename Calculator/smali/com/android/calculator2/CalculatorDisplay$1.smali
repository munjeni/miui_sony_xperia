.class Lcom/android/calculator2/CalculatorDisplay$1;
.super Ljava/lang/Object;
.source "CalculatorDisplay.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calculator2/CalculatorDisplay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calculator2/CalculatorDisplay;


# direct methods
.method constructor <init>(Lcom/android/calculator2/CalculatorDisplay;)V
    .locals 0
    .parameter

    .prologue
    .line 70
    iput-object p1, p0, Lcom/android/calculator2/CalculatorDisplay$1;->this$0:Lcom/android/calculator2/CalculatorDisplay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/calculator2/CalculatorDisplay$1;->this$0:Lcom/android/calculator2/CalculatorDisplay;

    #getter for: Lcom/android/calculator2/CalculatorDisplay;->mIsDisplayViewHasText:Z
    invoke-static {v0}, Lcom/android/calculator2/CalculatorDisplay;->access$100(Lcom/android/calculator2/CalculatorDisplay;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "0"

    iget-object v1, p0, Lcom/android/calculator2/CalculatorDisplay$1;->this$0:Lcom/android/calculator2/CalculatorDisplay;

    invoke-virtual {v1}, Lcom/android/calculator2/CalculatorDisplay;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/android/calculator2/CalculatorDisplay$1;->this$0:Lcom/android/calculator2/CalculatorDisplay;

    #getter for: Lcom/android/calculator2/CalculatorDisplay;->mEqualText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/calculator2/CalculatorDisplay;->access$200(Lcom/android/calculator2/CalculatorDisplay;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/android/calculator2/CalculatorDisplay$1;->this$0:Lcom/android/calculator2/CalculatorDisplay;

    #getter for: Lcom/android/calculator2/CalculatorDisplay;->mDisplayText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/calculator2/CalculatorDisplay;->access$000(Lcom/android/calculator2/CalculatorDisplay;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 82
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 86
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/calculator2/CalculatorDisplay$1;->this$0:Lcom/android/calculator2/CalculatorDisplay;

    #getter for: Lcom/android/calculator2/CalculatorDisplay;->mDisplayText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/calculator2/CalculatorDisplay;->access$000(Lcom/android/calculator2/CalculatorDisplay;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 74
    return-void
.end method

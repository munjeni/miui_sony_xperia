.class Lcom/android/internal/policy/impl/MagnifierPopupWindow$1;
.super Ljava/lang/Object;
.source "MagnifierPopupWindow.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/MagnifierPopupWindow;-><init>(Landroid/content/Context;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/MagnifierPopupWindow;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/MagnifierPopupWindow;)V
    .locals 0
    .parameter

    .prologue
    .line 221
    iput-object p1, p0, Lcom/android/internal/policy/impl/MagnifierPopupWindow$1;->this$0:Lcom/android/internal/policy/impl/MagnifierPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 224
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .parameter "animation"

    .prologue
    .line 228
    iget-object v0, p0, Lcom/android/internal/policy/impl/MagnifierPopupWindow$1;->this$0:Lcom/android/internal/policy/impl/MagnifierPopupWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/MagnifierPopupWindow;->dismiss()V

    .line 229
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 233
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 237
    return-void
.end method

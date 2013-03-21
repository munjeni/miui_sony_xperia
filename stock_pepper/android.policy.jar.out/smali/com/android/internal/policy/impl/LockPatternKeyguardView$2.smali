.class Lcom/android/internal/policy/impl/LockPatternKeyguardView$2;
.super Ljava/lang/Object;
.source "LockPatternKeyguardView.java"

# interfaces
.implements Lcom/android/internal/widget/LockScreenWidgetCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/LockPatternKeyguardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)V
    .locals 0
    .parameter

    .prologue
    .line 266
    iput-object p1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$2;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isVisible(Landroid/view/View;)Z
    .locals 1
    .parameter "self"

    .prologue
    .line 308
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public requestHide(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 289
    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 292
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$2;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #getter for: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;
    invoke-static {v1}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$300(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->reportClockVisible(Z)V

    .line 294
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$2;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #getter for: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUnlockScreen:Landroid/view/View;
    invoke-static {v1}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$400(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 295
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$2;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #getter for: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUnlockScreen:Landroid/view/View;
    invoke-static {v1}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$400(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Landroid/view/View;

    move-result-object v1

    const-string v2, "music_switcher"

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ViewSwitcher;

    .line 297
    .local v0, musicSwitcher:Landroid/widget/ViewSwitcher;
    if-eqz v0, :cond_0

    .line 298
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ViewSwitcher;->setDisplayedChild(I)V

    .line 301
    .end local v0           #musicSwitcher:Landroid/widget/ViewSwitcher;
    :cond_0
    return-void
.end method

.method public requestShow(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    const/4 v2, 0x0

    .line 273
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 276
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$2;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #getter for: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;
    invoke-static {v1}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$300(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->reportClockVisible(Z)V

    .line 278
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$2;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #getter for: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUnlockScreen:Landroid/view/View;
    invoke-static {v1}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$400(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 279
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$2;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #getter for: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUnlockScreen:Landroid/view/View;
    invoke-static {v1}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$400(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Landroid/view/View;

    move-result-object v1

    const-string v2, "music_switcher"

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ViewSwitcher;

    .line 281
    .local v0, musicSwitcher:Landroid/widget/ViewSwitcher;
    if-eqz v0, :cond_0

    .line 282
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ViewSwitcher;->setDisplayedChild(I)V

    .line 285
    .end local v0           #musicSwitcher:Landroid/widget/ViewSwitcher;
    :cond_0
    return-void
.end method

.method public userActivity(Landroid/view/View;)V
    .locals 2
    .parameter "self"

    .prologue
    .line 268
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$2;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    iget-object v0, v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mKeyguardScreenCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    const/16 v1, 0x2710

    invoke-interface {v0, v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock(I)V

    .line 269
    return-void
.end method

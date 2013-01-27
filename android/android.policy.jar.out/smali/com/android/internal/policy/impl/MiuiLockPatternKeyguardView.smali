.class public Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView;
.super Lcom/android/internal/policy/impl/LockPatternKeyguardView;
.source "MiuiLockPatternKeyguardView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView$KeyguardScreenCallbackImpl;
    }
.end annotation


# instance fields
.field private mBackDown:Z

.field private mKeyguardScreenCallback:Lcom/miui/internal/policy/impl/KeyguardScreenCallback;

.field private mTorchCover:Landroid/widget/ImageView;

.field private mTorchStateReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardWindowController;)V
    .locals 1
    .parameter "context"
    .parameter "updateMonitor"
    .parameter "lockPatternUtils"
    .parameter "controller"

    .prologue
    .line 30
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardWindowController;)V

    .line 154
    new-instance v0, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView$1;-><init>(Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView;->mTorchStateReceiver:Landroid/content/BroadcastReceiver;

    .line 31
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView;->updateTorchCover(Z)V

    return-void
.end method

.method private updateShowLockBeforeUnlock()V
    .locals 3

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "show_lock_before_unlock"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lmiui/provider/ExtraSettings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView;->mShowLockBeforeUnlock:Z

    .line 38
    return-void
.end method

.method private updateTorchCover(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    const/4 v2, -0x1

    .line 170
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView;->mTorchCover:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 171
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView;->mTorchCover:Landroid/widget/ImageView;

    .line 172
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView;->mTorchCover:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 173
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView;->mTorchCover:Landroid/widget/ImageView;

    const v1, 0x60200be

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 174
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView;->mTorchCover:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 175
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView;->mTorchCover:Landroid/widget/ImageView;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 180
    :cond_0
    if-eqz p1, :cond_1

    .line 181
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView;->mTorchCover:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView;->addView(Landroid/view/View;)V

    .line 186
    :goto_0
    return-void

    .line 184
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView;->mTorchCover:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView;->removeView(Landroid/view/View;)V

    goto :goto_0
.end method


# virtual methods
.method protected bridge synthetic createKeyguardScreenCallback()Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    .locals 1

    .prologue
    .line 25
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView;->createKeyguardScreenCallback()Lcom/miui/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v0

    return-object v0
.end method

.method protected createKeyguardScreenCallback()Lcom/miui/internal/policy/impl/KeyguardScreenCallback;
    .locals 2

    .prologue
    .line 54
    new-instance v0, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView$KeyguardScreenCallbackImpl;

    invoke-super {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->createKeyguardScreenCallback()Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView$KeyguardScreenCallbackImpl;-><init>(Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView;->mKeyguardScreenCallback:Lcom/miui/internal/policy/impl/KeyguardScreenCallback;

    .line 55
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView;->mKeyguardScreenCallback:Lcom/miui/internal/policy/impl/KeyguardScreenCallback;

    return-object v0
.end method

.method protected createLockScreen()Landroid/view/View;
    .locals 7

    .prologue
    .line 111
    invoke-static {}, Lmiui/content/res/ThemeResources;->getSystem()Lmiui/content/res/ThemeResourcesSystem;

    move-result-object v1

    invoke-virtual {v1}, Lmiui/content/res/ThemeResourcesSystem;->hasAwesomeLockscreen()Z

    move-result v6

    .line 112
    .local v6, isAwesomeLockScreen:Z
    const/4 v0, 0x0

    .line 113
    .local v0, lockView:Landroid/view/View;
    if-eqz v6, :cond_0

    .line 114
    new-instance v0, Lcom/android/internal/policy/impl/AwesomeLockScreen;

    .end local v0           #lockView:Landroid/view/View;
    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView;->getLockPatternUtils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView;->getUpdateMonitor()Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView;->mKeyguardScreenCallback:Lcom/miui/internal/policy/impl/KeyguardScreenCallback;

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/policy/impl/AwesomeLockScreen;-><init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/miui/internal/policy/impl/KeyguardScreenCallback;)V

    .line 129
    .restart local v0       #lockView:Landroid/view/View;
    :goto_0
    return-object v0

    .line 121
    :cond_0
    new-instance v0, Lcom/android/internal/policy/impl/MiuiLockScreen;

    .end local v0           #lockView:Landroid/view/View;
    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView;->getLockPatternUtils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView;->getUpdateMonitor()Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView;->mKeyguardScreenCallback:Lcom/miui/internal/policy/impl/KeyguardScreenCallback;

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/policy/impl/MiuiLockScreen;-><init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/miui/internal/policy/impl/KeyguardScreenCallback;)V

    .line 127
    .restart local v0       #lockView:Landroid/view/View;
    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lmiui/content/res/ThemeResources;->getLockWallpaperCache(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method createUnlockScreenFor(Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;)Landroid/view/View;
    .locals 4
    .parameter "unlockMode"

    .prologue
    const/4 v3, 0x0

    .line 134
    invoke-super {p0, p1}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->createUnlockScreenFor(Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;)Landroid/view/View;

    move-result-object v0

    .line 135
    .local v0, view:Landroid/view/View;
    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x60a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v3, v1, v3, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 136
    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lmiui/content/res/ThemeResources;->getLockWallpaperCache(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 137
    return-object v0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 5
    .parameter "event"

    .prologue
    const/16 v4, 0x18

    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 192
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 193
    .local v0, keyCode:I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_2

    .line 194
    const/4 v2, 0x4

    if-ne v0, v2, :cond_1

    .line 195
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView;->mBackDown:Z

    .line 211
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    :goto_1
    return v1

    .line 197
    :cond_1
    if-eq v0, v4, :cond_0

    .line 198
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView;->mBackDown:Z

    goto :goto_0

    .line 200
    :cond_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-ne v2, v1, :cond_0

    .line 201
    if-ne v0, v4, :cond_3

    .line 202
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView;->mBackDown:Z

    if-eqz v2, :cond_3

    .line 203
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView;->mBackDown:Z

    .line 204
    iget-object v2, p0, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView;->mKeyguardScreenCallback:Lcom/miui/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v2}, Lcom/miui/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    .line 205
    const-string v2, "MiuiLockPatternKeyguardView"

    const-string v3, "Unlock Screen by pressing back + volume_up"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 209
    :cond_3
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView;->mBackDown:Z

    goto :goto_0
.end method

.method getInitialMode()Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView;->updateShowLockBeforeUnlock()V

    .line 43
    invoke-super {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->getInitialMode()Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;

    move-result-object v0

    return-object v0
.end method

.method public isDisplayDesktop()Z
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView;->mLockScreen:Landroid/view/View;

    instance-of v0, v0, Lcom/android/internal/policy/impl/AwesomeLockScreen;

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView;->mLockScreen:Landroid/view/View;

    check-cast v0, Lcom/android/internal/policy/impl/AwesomeLockScreen;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/AwesomeLockScreen;->isDisplayDesktop()Z

    move-result v0

    .line 228
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .prologue
    .line 142
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "miui.intent.action.TOGGLE_TORCH"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 143
    .local v0, filter:Landroid/content/IntentFilter;
    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 144
    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView;->mTorchStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 145
    invoke-super {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->onAttachedToWindow()V

    .line 146
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 48
    invoke-super {p0, p1}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 49
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView;->updateShowLockBeforeUnlock()V

    .line 50
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 150
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView;->mTorchStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 151
    invoke-super {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->onDetachedFromWindow()V

    .line 152
    return-void
.end method

.method public onScreenTurnedOff()V
    .locals 1

    .prologue
    .line 105
    invoke-super {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->onScreenTurnedOff()V

    .line 106
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView;->getInitialMode()Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView;->mMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;

    .line 107
    return-void
.end method

.method protected recreateLockScreen()V
    .locals 2

    .prologue
    .line 216
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView;->mMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;

    sget-object v1, Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;->LockScreen:Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView;->mLockScreen:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView;->mLockScreen:Landroid/view/View;

    instance-of v0, v0, Lcom/android/internal/policy/impl/AwesomeLockScreen;

    if-eqz v0, :cond_0

    .line 220
    :goto_0
    return-void

    .line 219
    :cond_0
    invoke-super {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->recreateLockScreen()V

    goto :goto_0
.end method

.method public show()V
    .locals 1

    .prologue
    .line 98
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView;->mScreenOn:Z

    .line 99
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView;->updateTorchCover(Z)V

    .line 100
    invoke-super {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->show()V

    .line 101
    return-void
.end method

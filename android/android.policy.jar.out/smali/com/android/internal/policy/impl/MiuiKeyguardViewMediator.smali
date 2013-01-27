.class public Lcom/android/internal/policy/impl/MiuiKeyguardViewMediator;
.super Lcom/android/internal/policy/impl/KeyguardViewMediator;
.source "MiuiKeyguardViewMediator.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/os/LocalPowerManager;)V
    .locals 0
    .parameter "context"
    .parameter "callback"
    .parameter "powerManager"

    .prologue
    .line 13
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/policy/impl/KeyguardViewMediator;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/os/LocalPowerManager;)V

    .line 14
    return-void
.end method


# virtual methods
.method adjustStatusBarLocked()V
    .locals 2

    .prologue
    .line 27
    invoke-super {p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->adjustStatusBarLocked()V

    .line 29
    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiKeyguardViewMediator;->mStatusBarManager:Landroid/app/StatusBarManager;

    if-eqz v1, :cond_2

    .line 32
    const/4 v0, 0x0

    .line 33
    .local v0, flags:I
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MiuiKeyguardViewMediator;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 35
    const/high16 v1, 0x100

    or-int/2addr v0, v1

    .line 36
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MiuiKeyguardViewMediator;->isShowingAndNotHidden()Z

    move-result v1

    if-eqz v1, :cond_3

    const/high16 v1, -0x8000

    :goto_0
    or-int/2addr v0, v1

    .line 37
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MiuiKeyguardViewMediator;->isSecure()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiKeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lmiui/app/ExtraStatusBarManager;->isExpandableUnderKeyguard(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 39
    :cond_0
    const/high16 v1, 0x9

    or-int/2addr v0, v1

    .line 43
    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiKeyguardViewMediator;->mStatusBarManager:Landroid/app/StatusBarManager;

    invoke-virtual {v1, v0}, Landroid/app/StatusBarManager;->disable(I)V

    .line 45
    .end local v0           #flags:I
    :cond_2
    return-void

    .line 36
    .restart local v0       #flags:I
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onScreenTurnedOff(I)V
    .locals 2
    .parameter "why"

    .prologue
    .line 18
    monitor-enter p0

    .line 19
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MiuiKeyguardViewMediator;->notifyScreenOffLocked()V

    .line 20
    invoke-static {}, Lmiui/net/FirewallManager;->getInstance()Lmiui/net/FirewallManager;

    move-result-object v0

    const-string v1, "*"

    invoke-virtual {v0, v1}, Lmiui/net/FirewallManager;->removeAccessControlPass(Ljava/lang/String;)V

    .line 21
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    invoke-super {p0, p1}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->onScreenTurnedOff(I)V

    .line 23
    return-void

    .line 21
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

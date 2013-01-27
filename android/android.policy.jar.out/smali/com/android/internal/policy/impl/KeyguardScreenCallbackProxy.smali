.class public Lcom/android/internal/policy/impl/KeyguardScreenCallbackProxy;
.super Ljava/lang/Object;
.source "KeyguardScreenCallbackProxy.java"

# interfaces
.implements Lcom/android/internal/policy/impl/KeyguardScreenCallback;


# instance fields
.field private mClient:Lcom/android/internal/policy/impl/KeyguardScreenCallback;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V
    .locals 0
    .parameter "client"

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/android/internal/policy/impl/KeyguardScreenCallbackProxy;->mClient:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    .line 10
    return-void
.end method


# virtual methods
.method public doesFallbackUnlockScreenExist()Z
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardScreenCallbackProxy;->mClient:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->doesFallbackUnlockScreenExist()Z

    move-result v0

    return v0
.end method

.method public forgotPattern(Z)V
    .locals 1
    .parameter "isForgotten"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardScreenCallbackProxy;->mClient:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0, p1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->forgotPattern(Z)V

    .line 20
    return-void
.end method

.method public goToLockScreen()V
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardScreenCallbackProxy;->mClient:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToLockScreen()V

    .line 25
    return-void
.end method

.method public goToUnlockScreen()V
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardScreenCallbackProxy;->mClient:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    .line 30
    return-void
.end method

.method public isSecure()Z
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardScreenCallbackProxy;->mClient:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->isSecure()Z

    move-result v0

    return v0
.end method

.method public isVerifyUnlockOnly()Z
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardScreenCallbackProxy;->mClient:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->isVerifyUnlockOnly()Z

    move-result v0

    return v0
.end method

.method public keyguardDone(Z)V
    .locals 1
    .parameter "authenticated"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardScreenCallbackProxy;->mClient:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0, p1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->keyguardDone(Z)V

    .line 65
    return-void
.end method

.method public keyguardDoneDrawing()V
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardScreenCallbackProxy;->mClient:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->keyguardDoneDrawing()V

    .line 70
    return-void
.end method

.method public pokeWakelock()V
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardScreenCallbackProxy;->mClient:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    .line 75
    return-void
.end method

.method public pokeWakelock(I)V
    .locals 1
    .parameter "millis"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardScreenCallbackProxy;->mClient:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0, p1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock(I)V

    .line 80
    return-void
.end method

.method public recreateMe(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter "config"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardScreenCallbackProxy;->mClient:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0, p1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->recreateMe(Landroid/content/res/Configuration;)V

    .line 45
    return-void
.end method

.method public reportFailedUnlockAttempt()V
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardScreenCallbackProxy;->mClient:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->reportFailedUnlockAttempt()V

    .line 50
    return-void
.end method

.method public reportSuccessfulUnlockAttempt()V
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardScreenCallbackProxy;->mClient:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->reportSuccessfulUnlockAttempt()V

    .line 55
    return-void
.end method

.method public takeEmergencyCallAction()V
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardScreenCallbackProxy;->mClient:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->takeEmergencyCallAction()V

    .line 60
    return-void
.end method

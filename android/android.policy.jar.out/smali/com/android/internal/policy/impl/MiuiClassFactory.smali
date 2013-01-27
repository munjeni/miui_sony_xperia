.class public Lcom/android/internal/policy/impl/MiuiClassFactory;
.super Ljava/lang/Object;
.source "MiuiClassFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createKeyguardView(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardWindowController;)Lcom/android/internal/policy/impl/KeyguardViewBase;
    .locals 1
    .parameter "context"
    .parameter "updateMonitor"
    .parameter "lockPatternUtils"
    .parameter "controller"

    .prologue
    .line 18
    new-instance v0, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardWindowController;)V

    return-object v0
.end method

.method public static createKeyguardViewMediator(Landroid/content/Context;Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/os/LocalPowerManager;)Lcom/android/internal/policy/impl/KeyguardViewMediator;
    .locals 1
    .parameter "context"
    .parameter "callback"
    .parameter "powerManager"

    .prologue
    .line 12
    new-instance v0, Lcom/android/internal/policy/impl/MiuiKeyguardViewMediator;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/internal/policy/impl/MiuiKeyguardViewMediator;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/os/LocalPowerManager;)V

    return-object v0
.end method

.method public static createKeyguardViewProperties(Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Lcom/android/internal/policy/impl/KeyguardViewProperties;
    .locals 1
    .parameter "lockPatternUtils"
    .parameter "updateMonitor"

    .prologue
    .line 24
    new-instance v0, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardViewProperties;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardViewProperties;-><init>(Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V

    return-object v0
.end method

.method public static createPhoneFallbackEventHandler(Landroid/content/Context;)Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;
    .locals 1
    .parameter "context"

    .prologue
    .line 32
    new-instance v0, Lcom/android/internal/policy/impl/MiuiPhoneFallbackEventHandler;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/MiuiPhoneFallbackEventHandler;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static createPhoneWindowManager()Lcom/android/internal/policy/impl/PhoneWindowManager;
    .locals 1

    .prologue
    .line 28
    new-instance v0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;

    invoke-direct {v0}, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;-><init>()V

    return-object v0
.end method

.class public Lcom/android/internal/policy/impl/LockPatternKeyguardViewProperties;
.super Ljava/lang/Object;
.source "LockPatternKeyguardViewProperties.java"

# interfaces
.implements Lcom/android/internal/policy/impl/KeyguardViewProperties;


# instance fields
.field private final mBackupQuestionUtils:Lcom/android/internal/widget/BackupQuestionUtils;

.field private mIsEmergencyMasterReset:Z

.field private final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private final mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;


# direct methods
.method public constructor <init>(Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/widget/BackupQuestionUtils;)V
    .locals 1
    .parameter "lockPatternUtils"
    .parameter "updateMonitor"
    .parameter "backupQuestionUtils"

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardViewProperties;->mIsEmergencyMasterReset:Z

    .line 52
    iput-object p3, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardViewProperties;->mBackupQuestionUtils:Lcom/android/internal/widget/BackupQuestionUtils;

    .line 53
    iput-object p1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardViewProperties;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 54
    iput-object p2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardViewProperties;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    .line 55
    return-void
.end method

.method private isSimPinSecure()Z
    .locals 2

    .prologue
    .line 69
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardViewProperties;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getSimState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v0

    .line 70
    .local v0, simState:Lcom/android/internal/telephony/IccCard$State;
    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->PERM_DISABLED:Lcom/android/internal/telephony/IccCard$State;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public createKeyguardView(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardWindowController;)Lcom/android/internal/policy/impl/KeyguardViewBase;
    .locals 7
    .parameter "context"
    .parameter "updateMonitor"
    .parameter "controller"

    .prologue
    .line 60
    new-instance v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    iget-object v3, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardViewProperties;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v5, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardViewProperties;->mBackupQuestionUtils:Lcom/android/internal/widget/BackupQuestionUtils;

    iget-boolean v6, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardViewProperties;->mIsEmergencyMasterReset:Z

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardWindowController;Lcom/android/internal/widget/BackupQuestionUtils;Z)V

    return-object v0
.end method

.method public isSecure()Z
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardViewProperties;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardViewProperties;->isSimPinSecure()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setEmergencyMasterReset(Z)V
    .locals 0
    .parameter "isEmergencyMasterReset"

    .prologue
    .line 77
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardViewProperties;->mIsEmergencyMasterReset:Z

    .line 78
    return-void
.end method

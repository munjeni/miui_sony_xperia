.class public Lcom/android/internal/policy/impl/CommonBackupUtil;
.super Ljava/lang/Object;
.source "CommonBackupUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/CommonBackupUtil$1;,
        Lcom/android/internal/policy/impl/CommonBackupUtil$PopupListener;
    }
.end annotation


# static fields
.field private static final LOCK_PATTERN_CLASS:Ljava/lang/String; = "com.android.settings.ChooseLockPattern"

.field private static final LOCK_PATTERN_PACKAGE:Ljava/lang/String; = "com.android.settings"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDialog:Landroid/app/AlertDialog;

.field private mKeyguardScreenCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V
    .locals 0
    .parameter "context"
    .parameter "lockPatternUtils"
    .parameter "keyguardCallback"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/policy/impl/CommonBackupUtil;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/internal/policy/impl/CommonBackupUtil;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iput-object p3, p0, Lcom/android/internal/policy/impl/CommonBackupUtil;->mKeyguardScreenCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/CommonBackupUtil;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/CommonBackupUtil;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/CommonBackupUtil;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/CommonBackupUtil;->mKeyguardScreenCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    return-object v0
.end method

.method private showSelectionDialog()V
    .locals 7

    .prologue
    iget-object v5, p0, Lcom/android/internal/policy/impl/CommonBackupUtil;->mContext:Landroid/content/Context;

    const v6, 0x10400da

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .local v4, title:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/internal/policy/impl/CommonBackupUtil;->mContext:Landroid/content/Context;

    const v6, 0x10400db

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .local v3, message:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/internal/policy/impl/CommonBackupUtil;->mContext:Landroid/content/Context;

    const v6, 0x10400dc

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .local v1, answerYes:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/internal/policy/impl/CommonBackupUtil;->mContext:Landroid/content/Context;

    const v6, 0x10400dd

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .local v0, answerNo:Ljava/lang/String;
    new-instance v2, Lcom/android/internal/policy/impl/CommonBackupUtil$PopupListener;

    const/4 v5, 0x0

    invoke-direct {v2, p0, v5}, Lcom/android/internal/policy/impl/CommonBackupUtil$PopupListener;-><init>(Lcom/android/internal/policy/impl/CommonBackupUtil;Lcom/android/internal/policy/impl/CommonBackupUtil$1;)V

    .local v2, listener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v5, Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Lcom/android/internal/policy/impl/CommonBackupUtil;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v0, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/policy/impl/CommonBackupUtil;->mDialog:Landroid/app/AlertDialog;

    iget-object v5, p0, Lcom/android/internal/policy/impl/CommonBackupUtil;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/16 v6, 0x7d9

    invoke-virtual {v5, v6}, Landroid/view/Window;->setType(I)V

    iget-object v5, p0, Lcom/android/internal/policy/impl/CommonBackupUtil;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->show()V

    return-void
.end method


# virtual methods
.method public cleanUp()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/CommonBackupUtil;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/CommonBackupUtil;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/CommonBackupUtil;->mDialog:Landroid/app/AlertDialog;

    :cond_0
    return-void
.end method

.method unlockAndFinishKeyguard()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/internal/policy/impl/CommonBackupUtil;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/LockPatternUtils;->setPermanentlyLocked(Z)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/CommonBackupUtil;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/LockPatternUtils;->setLockPatternEnabled(Z)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/CommonBackupUtil;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPattern(Ljava/util/List;)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/CommonBackupUtil;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/LockPatternUtils;->setTemporarilyLocked(Z)V

    invoke-direct {p0}, Lcom/android/internal/policy/impl/CommonBackupUtil;->showSelectionDialog()V

    return-void
.end method

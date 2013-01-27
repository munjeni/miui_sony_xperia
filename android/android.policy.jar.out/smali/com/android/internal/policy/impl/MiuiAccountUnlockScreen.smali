.class public Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;
.super Landroid/widget/RelativeLayout;
.source "MiuiAccountUnlockScreen.java"

# interfaces
.implements Lcom/android/internal/policy/impl/KeyguardScreen;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen$ViewHolder;
    }
.end annotation


# static fields
.field private static final AWAKE_POKE_MILLIS:I = 0x7530

.field private static final CLOSE_FIND_DEVICE_ACTION:Ljava/lang/String; = "com.xiaomi.action.DISABLE_FIND_DEVICE"

.field private static final LOCK_PATTERN_CLASS:Ljava/lang/String; = "com.android.settings.ChooseLockGeneric"

.field private static final LOCK_PATTERN_PACKAGE:Ljava/lang/String; = "com.android.settings"


# instance fields
.field private mAccounts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/accounts/Account;",
            ">;"
        }
    .end annotation
.end field

.field private mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

.field private mCheckingDialog:Landroid/app/ProgressDialog;

.field private mCurAccount:Landroid/accounts/Account;

.field private mGoogleAccountSize:I

.field private mGoogleIcon:Landroid/graphics/drawable/Drawable;

.field private mInstructions:Landroid/widget/TextView;

.field private mIsLockedBySimChange:Z

.field private mKeyguardStatusViewManager:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mLogin:Landroid/widget/Spinner;

.field private mOk:Landroid/widget/Button;

.field private mPassword:Landroid/widget/EditText;

.field private mTopHeader:Landroid/widget/TextView;

.field private mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

.field private mXiaomiIcon:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;Lcom/android/internal/widget/LockPatternUtils;)V
    .locals 7
    .parameter "context"
    .parameter "configuration"
    .parameter "updateMonitor"
    .parameter "callback"
    .parameter "lockPatternUtils"

    .prologue
    const/4 v5, 0x1

    .line 115
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->mAccounts:Ljava/util/ArrayList;

    .line 116
    iput-object p4, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    .line 117
    iput-object p5, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 119
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x6030038

    invoke-virtual {v0, v1, p0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 122
    const v0, 0x60b003b

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->mTopHeader:Landroid/widget/TextView;

    .line 123
    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->mTopHeader:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isPermanentlyLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x60c01d7

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 127
    const v0, 0x60b003d

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->mInstructions:Landroid/widget/TextView;

    .line 129
    const v0, 0x60b003e

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->mLogin:Landroid/widget/Spinner;

    .line 131
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->isLockedBySimChange()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->mIsLockedBySimChange:Z

    .line 132
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->findAccounts()V

    .line 134
    new-instance v6, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen$1;

    invoke-direct {v6, p0}, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen$1;-><init>(Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;)V

    .line 174
    .local v6, ba:Landroid/widget/BaseAdapter;
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->mLogin:Landroid/widget/Spinner;

    invoke-virtual {v0, v6}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 176
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->mLogin:Landroid/widget/Spinner;

    new-instance v1, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen$2;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen$2;-><init>(Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 190
    const v0, 0x60b003f

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->mPassword:Landroid/widget/EditText;

    .line 191
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 193
    const v0, 0x60b0041

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->mOk:Landroid/widget/Button;

    .line 194
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->mOk:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 196
    iput-object p3, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    .line 198
    new-instance v0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    move-object v1, p0

    move-object v2, p3

    move-object v3, p5

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;-><init>(Landroid/view/View;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardScreenCallback;Z)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->mKeyguardStatusViewManager:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    .line 200
    return-void

    .line 123
    .end local v6           #ba:Landroid/widget/BaseAdapter;
    :cond_0
    const v0, 0x60c01d8

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->mAccounts:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->mInstructions:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->mPassword:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->postOnCheckPasswordResult(Z)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;)Landroid/app/Dialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->getProgressDialog()Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;)Landroid/widget/Spinner;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->mLogin:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget v0, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->mGoogleAccountSize:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->mGoogleIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->mXiaomiIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;Landroid/accounts/Account;)Landroid/accounts/Account;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    iput-object p1, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->mCurAccount:Landroid/accounts/Account;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->mIsLockedBySimChange:Z

    return v0
.end method

.method static synthetic access$800(Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private asyncCheckPassword()V
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 350
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    const/16 v1, 0x7530

    invoke-interface {v0, v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock(I)V

    .line 351
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 352
    .local v6, password:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->mCurAccount:Landroid/accounts/Account;

    if-nez v0, :cond_0

    .line 353
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->postOnCheckPasswordResult(Z)V

    .line 382
    :goto_0
    return-void

    .line 356
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->getProgressDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 357
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 358
    .local v2, options:Landroid/os/Bundle;
    const-string v0, "password"

    invoke-virtual {v2, v0, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->mCurAccount:Landroid/accounts/Account;

    new-instance v4, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen$4;

    invoke-direct {v4, p0}, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen$4;-><init>(Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;)V

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/accounts/AccountManager;->confirmCredentials(Landroid/accounts/Account;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    goto :goto_0
.end method

.method private findAccounts()V
    .locals 11

    .prologue
    .line 315
    iget-object v8, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->mContext:Landroid/content/Context;

    invoke-static {v8}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/accounts/AccountManager;->getAuthenticatorTypes()[Landroid/accounts/AuthenticatorDescription;

    move-result-object v4

    .line 316
    .local v4, authens:[Landroid/accounts/AuthenticatorDescription;
    move-object v2, v4

    .local v2, arr$:[Landroid/accounts/AuthenticatorDescription;
    array-length v7, v2

    .local v7, len$:I
    const/4 v6, 0x0

    .local v6, i$:I
    :goto_0
    if-ge v6, v7, :cond_2

    aget-object v5, v2, v6

    .line 318
    .local v5, desp:Landroid/accounts/AuthenticatorDescription;
    :try_start_0
    iget-object v8, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->mContext:Landroid/content/Context;

    iget-object v9, v5, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v3

    .line 319
    .local v3, authContext:Landroid/content/Context;
    iget-object v8, v5, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    const-string v9, "com.google"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 320
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    iget v9, v5, Landroid/accounts/AuthenticatorDescription;->iconId:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    iput-object v8, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->mGoogleIcon:Landroid/graphics/drawable/Drawable;

    .line 316
    .end local v3           #authContext:Landroid/content/Context;
    :cond_0
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 321
    .restart local v3       #authContext:Landroid/content/Context;
    :cond_1
    iget-object v8, v5, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    const-string v9, "com.xiaomi"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 322
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    iget v9, v5, Landroid/accounts/AuthenticatorDescription;->iconId:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    iput-object v8, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->mXiaomiIcon:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 324
    .end local v3           #authContext:Landroid/content/Context;
    :catch_0
    move-exception v8

    goto :goto_1

    .line 329
    .end local v5           #desp:Landroid/accounts/AuthenticatorDescription;
    :cond_2
    const/4 v1, 0x0

    .line 330
    .local v1, accounts:[Landroid/accounts/Account;
    iget-boolean v8, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->mIsLockedBySimChange:Z

    if-eqz v8, :cond_4

    .line 331
    iget-object v8, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->mInstructions:Landroid/widget/TextView;

    const v9, 0x60c01e5

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(I)V

    .line 332
    iget-object v8, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->mTopHeader:Landroid/widget/TextView;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 342
    .end local v2           #arr$:[Landroid/accounts/AuthenticatorDescription;
    :cond_3
    iget-object v8, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->mContext:Landroid/content/Context;

    invoke-static {v8}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v8

    const-string v9, "com.xiaomi"

    invoke-virtual {v8, v9}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    .line 343
    move-object v2, v1

    .local v2, arr$:[Landroid/accounts/Account;
    array-length v7, v2

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v7, :cond_5

    aget-object v0, v2, v6

    .line 344
    .local v0, a:Landroid/accounts/Account;
    iget-object v8, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->mAccounts:Ljava/util/ArrayList;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 343
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 334
    .end local v0           #a:Landroid/accounts/Account;
    .local v2, arr$:[Landroid/accounts/AuthenticatorDescription;
    :cond_4
    iget-object v8, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->mContext:Landroid/content/Context;

    invoke-static {v8}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v8

    const-string v9, "com.google"

    invoke-virtual {v8, v9}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    .line 335
    array-length v8, v1

    iput v8, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->mGoogleAccountSize:I

    .line 337
    move-object v2, v1

    .local v2, arr$:[Landroid/accounts/Account;
    array-length v7, v2

    const/4 v6, 0x0

    :goto_3
    if-ge v6, v7, :cond_3

    aget-object v0, v2, v6

    .line 338
    .restart local v0       #a:Landroid/accounts/Account;
    iget-object v8, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->mAccounts:Ljava/util/ArrayList;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 337
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 347
    .end local v0           #a:Landroid/accounts/Account;
    :cond_5
    return-void

    .line 325
    .end local v1           #accounts:[Landroid/accounts/Account;
    .local v2, arr$:[Landroid/accounts/AuthenticatorDescription;
    .restart local v5       #desp:Landroid/accounts/AuthenticatorDescription;
    :catch_1
    move-exception v8

    goto :goto_1
.end method

.method private getProgressDialog()Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 385
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->mCheckingDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    .line 386
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->mCheckingDialog:Landroid/app/ProgressDialog;

    .line 387
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->mCheckingDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->mContext:Landroid/content/Context;

    const v2, 0x60c01da

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 389
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->mCheckingDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 390
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->mCheckingDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 391
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->mCheckingDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d9

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 394
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->mCheckingDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method private isLockedBySimChange()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 213
    iget-object v3, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lmiui/provider/ExtraSettings$Secure;->PERMANENTLY_LOCK_SIM_CHANGE:Ljava/lang/String;

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 217
    .local v0, permanentlyLockBySimChange:I
    if-ne v0, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method private postOnCheckPasswordResult(Z)V
    .locals 2
    .parameter "success"

    .prologue
    .line 266
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->mLogin:Landroid/widget/Spinner;

    new-instance v1, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen$3;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen$3;-><init>(Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;Z)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->post(Ljava/lang/Runnable;)Z

    .line 298
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 203
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 206
    return-void
.end method

.method public cleanUp()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 247
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->mCheckingDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->mCheckingDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->hide()V

    .line 250
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->removeCallback(Ljava/lang/Object;)V

    .line 251
    iput-object v1, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    .line 252
    iput-object v1, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 253
    iput-object v1, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    .line 254
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 302
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 304
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isPermanentlyLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 305
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToLockScreen()V

    .line 309
    :goto_0
    const/4 v0, 0x1

    .line 311
    :goto_1
    return v0

    .line 307
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->forgotPattern(Z)V

    goto :goto_0

    .line 311
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_1
.end method

.method public needsInput()Z
    .locals 1

    .prologue
    .line 229
    const/4 v0, 0x1

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 258
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    .line 259
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->mOk:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    .line 260
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->asyncCheckPassword()V

    .line 262
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->mKeyguardStatusViewManager:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->onPause()V

    .line 235
    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 1
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 224
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v0, p1, p2}, Landroid/widget/EditText;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 240
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->mPassword:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 241
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 242
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->mKeyguardStatusViewManager:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->onResume()V

    .line 243
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 209
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    const/16 v1, 0x7530

    invoke-interface {v0, v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock(I)V

    .line 210
    return-void
.end method

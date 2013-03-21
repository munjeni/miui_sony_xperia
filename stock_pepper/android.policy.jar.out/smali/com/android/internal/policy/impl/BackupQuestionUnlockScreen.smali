.class public final Lcom/android/internal/policy/impl/BackupQuestionUnlockScreen;
.super Landroid/widget/RelativeLayout;
.source "BackupQuestionUnlockScreen.java"

# interfaces
.implements Lcom/android/internal/policy/impl/KeyguardScreen;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/text/TextWatcher;


# static fields
.field private static final AWAKE_POKE_MILLIS:I = 0x3a98

.field private static final DEBUG:Z = false

.field private static final LOCK_PATTERN_CLASS:Ljava/lang/String; = "com.android.settings.ChooseLockPattern"

.field private static final LOCK_PATTERN_PACKAGE:Ljava/lang/String; = "com.android.settings"

.field private static final LOCK_SCREEN_TAG:Ljava/lang/String; = "BackupQuestionUnlockScreen"


# instance fields
.field private final mAnswer:Landroid/widget/EditText;

.field private final mBackupQuestionUtils:Lcom/android/internal/widget/BackupQuestionUtils;

.field private final mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

.field private final mCommonBackupQuestionUtil:Lcom/android/internal/policy/impl/CommonBackupUtil;

.field private mDialog:Landroid/app/AlertDialog;

.field private final mEmergencyCall:Landroid/widget/Button;

.field private final mKeyboardOpen:Z

.field private final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private final mOk:Landroid/widget/Button;

.field private final mQuestion:Landroid/widget/TextView;

.field private mShownDialog:Z

.field private final mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/widget/BackupQuestionUtils;)V
    .locals 6
    .parameter "context"
    .parameter "updateMonitor"
    .parameter "callback"
    .parameter "lockPatternUtils"
    .parameter "backupQuestionUtils"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 94
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 95
    iput-object p2, p0, Lcom/android/internal/policy/impl/BackupQuestionUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    .line 96
    iput-object p3, p0, Lcom/android/internal/policy/impl/BackupQuestionUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    .line 97
    iput-object p4, p0, Lcom/android/internal/policy/impl/BackupQuestionUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 98
    iput-object p5, p0, Lcom/android/internal/policy/impl/BackupQuestionUnlockScreen;->mBackupQuestionUtils:Lcom/android/internal/widget/BackupQuestionUtils;

    .line 100
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/BackupQuestionUnlockScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/BackupQuestionUnlockScreen;->isKeyboardOpen(Landroid/content/res/Configuration;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/BackupQuestionUnlockScreen;->mKeyboardOpen:Z

    .line 103
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x109004e

    invoke-virtual {v2, v3, p0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 106
    const v2, 0x102028d

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/BackupQuestionUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/BackupQuestionUnlockScreen;->mQuestion:Landroid/widget/TextView;

    .line 111
    iget-object v2, p0, Lcom/android/internal/policy/impl/BackupQuestionUnlockScreen;->mBackupQuestionUtils:Lcom/android/internal/widget/BackupQuestionUtils;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/BackupQuestionUtils;->getSelectedQuestion(I)I

    move-result v1

    .line 113
    .local v1, questionId:I
    const/4 v0, 0x0

    .line 114
    .local v0, question:Ljava/lang/String;
    packed-switch v1, :pswitch_data_0

    .line 134
    :goto_0
    :pswitch_0
    if-eqz v0, :cond_0

    .line 135
    iget-object v2, p0, Lcom/android/internal/policy/impl/BackupQuestionUnlockScreen;->mQuestion:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    :goto_1
    const v2, 0x102028e

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/BackupQuestionUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/android/internal/policy/impl/BackupQuestionUnlockScreen;->mAnswer:Landroid/widget/EditText;

    .line 148
    iget-object v2, p0, Lcom/android/internal/policy/impl/BackupQuestionUnlockScreen;->mAnswer:Landroid/widget/EditText;

    invoke-virtual {v2, p0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 150
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/BackupQuestionUnlockScreen;->mKeyboardOpen:Z

    if-eqz v2, :cond_1

    .line 151
    iget-object v2, p0, Lcom/android/internal/policy/impl/BackupQuestionUnlockScreen;->mAnswer:Landroid/widget/EditText;

    invoke-virtual {v2, v5}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 152
    iget-object v2, p0, Lcom/android/internal/policy/impl/BackupQuestionUnlockScreen;->mAnswer:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/TextKeyListener;->getInstance()Landroid/text/method/TextKeyListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 173
    :goto_2
    iget-object v2, p0, Lcom/android/internal/policy/impl/BackupQuestionUnlockScreen;->mAnswer:Landroid/widget/EditText;

    new-instance v3, Lcom/android/internal/policy/impl/BackupQuestionUnlockScreen$3;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/BackupQuestionUnlockScreen$3;-><init>(Lcom/android/internal/policy/impl/BackupQuestionUnlockScreen;)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 181
    iget-object v2, p0, Lcom/android/internal/policy/impl/BackupQuestionUnlockScreen;->mAnswer:Landroid/widget/EditText;

    invoke-virtual {v2, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 183
    const v2, 0x102028f

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/BackupQuestionUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/internal/policy/impl/BackupQuestionUnlockScreen;->mOk:Landroid/widget/Button;

    .line 184
    iget-object v2, p0, Lcom/android/internal/policy/impl/BackupQuestionUnlockScreen;->mOk:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 185
    iget-object v2, p0, Lcom/android/internal/policy/impl/BackupQuestionUnlockScreen;->mOk:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 187
    const v2, 0x1020290

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/BackupQuestionUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/internal/policy/impl/BackupQuestionUnlockScreen;->mEmergencyCall:Landroid/widget/Button;

    .line 188
    iget-object v2, p0, Lcom/android/internal/policy/impl/BackupQuestionUnlockScreen;->mEmergencyCall:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 190
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/BackupQuestionUnlockScreen;->mShownDialog:Z

    .line 192
    new-instance v2, Lcom/android/internal/policy/impl/CommonBackupUtil;

    invoke-direct {v2, p1, p4, p3}, Lcom/android/internal/policy/impl/CommonBackupUtil;-><init>(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/BackupQuestionUnlockScreen;->mCommonBackupQuestionUtil:Lcom/android/internal/policy/impl/CommonBackupUtil;

    .line 193
    return-void

    .line 120
    :pswitch_1
    const v2, 0x10400d3

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 121
    goto :goto_0

    .line 123
    :pswitch_2
    const v2, 0x10400d4

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 124
    goto :goto_0

    .line 126
    :pswitch_3
    const v2, 0x10400d5

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 127
    goto :goto_0

    .line 129
    :pswitch_4
    const v2, 0x10400d6

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 130
    goto/16 :goto_0

    .line 132
    :pswitch_5
    const-string v2, "BackupQuestionUnlockScreen"

    const-string v3, "[constructor]: no selected question is set!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 137
    :cond_0
    const-string v2, "BackupQuestionUnlockScreen"

    const-string v3, "[constructor]: question is null  aborting unlock attempt!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    new-instance v3, Lcom/android/internal/policy/impl/BackupQuestionUnlockScreen$1;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/BackupQuestionUnlockScreen$1;-><init>(Lcom/android/internal/policy/impl/BackupQuestionUnlockScreen;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_1

    .line 154
    :cond_1
    iget-object v2, p0, Lcom/android/internal/policy/impl/BackupQuestionUnlockScreen;->mAnswer:Landroid/widget/EditText;

    invoke-virtual {v2, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 156
    iget-object v2, p0, Lcom/android/internal/policy/impl/BackupQuestionUnlockScreen;->mAnswer:Landroid/widget/EditText;

    new-instance v3, Lcom/android/internal/policy/impl/BackupQuestionUnlockScreen$2;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/BackupQuestionUnlockScreen$2;-><init>(Lcom/android/internal/policy/impl/BackupQuestionUnlockScreen;)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    goto/16 :goto_2

    .line 114
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_5
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/BackupQuestionUnlockScreen;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/internal/policy/impl/BackupQuestionUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/BackupQuestionUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/internal/policy/impl/BackupQuestionUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/BackupQuestionUnlockScreen;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/internal/policy/impl/BackupQuestionUnlockScreen;->mOk:Landroid/widget/Button;

    return-object v0
.end method

.method private checkAnswer()Z
    .locals 2

    .prologue
    .line 300
    iget-object v0, p0, Lcom/android/internal/policy/impl/BackupQuestionUnlockScreen;->mBackupQuestionUtils:Lcom/android/internal/widget/BackupQuestionUtils;

    iget-object v1, p0, Lcom/android/internal/policy/impl/BackupQuestionUnlockScreen;->mAnswer:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/BackupQuestionUtils;->checkAnswer(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private isKeyboardOpen(Landroid/content/res/Configuration;)Z
    .locals 2
    .parameter "configuration"

    .prologue
    const/4 v0, 0x1

    .line 314
    iget v1, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private showAlertDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "title"
    .parameter "message"

    .prologue
    .line 304
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/BackupQuestionUnlockScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/BackupQuestionUnlockScreen;->mDialog:Landroid/app/AlertDialog;

    .line 309
    iget-object v0, p0, Lcom/android/internal/policy/impl/BackupQuestionUnlockScreen;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d9

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 310
    iget-object v0, p0, Lcom/android/internal/policy/impl/BackupQuestionUnlockScreen;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 311
    return-void
.end method

.method private unlockAndFinishKeyguard()V
    .locals 1

    .prologue
    .line 281
    iget-object v0, p0, Lcom/android/internal/policy/impl/BackupQuestionUnlockScreen;->mCommonBackupQuestionUtil:Lcom/android/internal/policy/impl/CommonBackupUtil;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/CommonBackupUtil;->unlockAndFinishKeyguard()V

    .line 282
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
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lcom/android/internal/policy/impl/BackupQuestionUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->removeCallback(Ljava/lang/Object;)V

    .line 252
    iget-object v0, p0, Lcom/android/internal/policy/impl/BackupQuestionUnlockScreen;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 253
    iget-object v0, p0, Lcom/android/internal/policy/impl/BackupQuestionUnlockScreen;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 254
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/BackupQuestionUnlockScreen;->mDialog:Landroid/app/AlertDialog;

    .line 256
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/BackupQuestionUnlockScreen;->mCommonBackupQuestionUtil:Lcom/android/internal/policy/impl/CommonBackupUtil;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/CommonBackupUtil;->cleanUp()V

    .line 257
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 286
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 288
    iget-object v0, p0, Lcom/android/internal/policy/impl/BackupQuestionUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isPermanentlyLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 289
    iget-object v0, p0, Lcom/android/internal/policy/impl/BackupQuestionUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToLockScreen()V

    .line 294
    :goto_0
    const/4 v0, 0x1

    .line 296
    :goto_1
    return v0

    .line 291
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/BackupQuestionUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->setTemporarilyLocked(Z)V

    .line 292
    iget-object v0, p0, Lcom/android/internal/policy/impl/BackupQuestionUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    goto :goto_0

    .line 296
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_1
.end method

.method public needsInput()Z
    .locals 1

    .prologue
    .line 222
    const/4 v0, 0x1

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 261
    iget-object v2, p0, Lcom/android/internal/policy/impl/BackupQuestionUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    const/16 v3, 0x3a98

    invoke-interface {v2, v3}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock(I)V

    .line 262
    iget-object v2, p0, Lcom/android/internal/policy/impl/BackupQuestionUnlockScreen;->mOk:Landroid/widget/Button;

    if-ne p1, v2, :cond_2

    .line 263
    invoke-direct {p0}, Lcom/android/internal/policy/impl/BackupQuestionUnlockScreen;->checkAnswer()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 265
    invoke-direct {p0}, Lcom/android/internal/policy/impl/BackupQuestionUnlockScreen;->unlockAndFinishKeyguard()V

    .line 278
    :cond_0
    :goto_0
    return-void

    .line 267
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/BackupQuestionUnlockScreen;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x10400d0

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 269
    .local v1, title:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/BackupQuestionUnlockScreen;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x10400d1

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 271
    .local v0, message:Ljava/lang/String;
    invoke-direct {p0, v1, v0}, Lcom/android/internal/policy/impl/BackupQuestionUnlockScreen;->showAlertDialog(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    iget-object v2, p0, Lcom/android/internal/policy/impl/BackupQuestionUnlockScreen;->mAnswer:Landroid/widget/EditText;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 273
    iget-object v2, p0, Lcom/android/internal/policy/impl/BackupQuestionUnlockScreen;->mOk:Landroid/widget/Button;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 275
    .end local v0           #message:Ljava/lang/String;
    .end local v1           #title:Ljava/lang/String;
    :cond_2
    iget-object v2, p0, Lcom/android/internal/policy/impl/BackupQuestionUnlockScreen;->mEmergencyCall:Landroid/widget/Button;

    if-ne p1, v2, :cond_0

    .line 276
    iget-object v2, p0, Lcom/android/internal/policy/impl/BackupQuestionUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v2}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->takeEmergencyCallAction()V

    goto :goto_0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 198
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 199
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/BackupQuestionUnlockScreen;->updateConfiguration()V

    .line 200
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 228
    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 1
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 217
    iget-object v0, p0, Lcom/android/internal/policy/impl/BackupQuestionUnlockScreen;->mAnswer:Landroid/widget/EditText;

    invoke-virtual {v0, p1, p2}, Landroid/widget/EditText;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 233
    iget-object v0, p0, Lcom/android/internal/policy/impl/BackupQuestionUnlockScreen;->mAnswer:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 234
    iget-object v0, p0, Lcom/android/internal/policy/impl/BackupQuestionUnlockScreen;->mAnswer:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 236
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/BackupQuestionUnlockScreen;->mOk:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 238
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/BackupQuestionUnlockScreen;->mShownDialog:Z

    if-nez v0, :cond_1

    .line 239
    iget-object v0, p0, Lcom/android/internal/policy/impl/BackupQuestionUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isPermanentlyLocked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 240
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/BackupQuestionUnlockScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x10400ce

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/BackupQuestionUnlockScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x10400cf

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/policy/impl/BackupQuestionUnlockScreen;->showAlertDialog(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/BackupQuestionUnlockScreen;->mShownDialog:Z

    .line 247
    :cond_1
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
    iget-object v1, p0, Lcom/android/internal/policy/impl/BackupQuestionUnlockScreen;->mOk:Landroid/widget/Button;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 210
    iget-object v0, p0, Lcom/android/internal/policy/impl/BackupQuestionUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    const/16 v1, 0x3a98

    invoke-interface {v0, v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock(I)V

    .line 211
    return-void

    .line 209
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateConfiguration()V
    .locals 3

    .prologue
    .line 318
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/BackupQuestionUnlockScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 319
    .local v0, newConfiguration:Landroid/content/res/Configuration;
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/BackupQuestionUnlockScreen;->mKeyboardOpen:Z

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/BackupQuestionUnlockScreen;->isKeyboardOpen(Landroid/content/res/Configuration;)Z

    move-result v2

    if-eq v1, v2, :cond_0

    .line 320
    iget-object v1, p0, Lcom/android/internal/policy/impl/BackupQuestionUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v1, v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->recreateMe(Landroid/content/res/Configuration;)V

    .line 322
    :cond_0
    return-void
.end method

.class public Lcom/android/internal/policy/impl/EmergencyMasterResetScreen;
.super Landroid/widget/LinearLayout;
.source "EmergencyMasterResetScreen.java"

# interfaces
.implements Lcom/android/internal/policy/impl/KeyguardScreen;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/EmergencyMasterResetScreen$InfoDialog;,
        Lcom/android/internal/policy/impl/EmergencyMasterResetScreen$Mode;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final MASTER_CLEAR_EXECUTE_LEVEL:I = 0x1e

.field private static final TAG:Ljava/lang/String; = "EmergencyMasterResetScreen"


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

.field private mContext:Landroid/content/Context;

.field private mDefaultOnClick:Landroid/content/DialogInterface$OnClickListener;

.field private mFinalConfirmationDialog:Landroid/app/AlertDialog;

.field private mLowBatteryDialog:Landroid/app/AlertDialog;

.field private mMode:Lcom/android/internal/policy/impl/EmergencyMasterResetScreen$Mode;

.field private mScreenOffTime:I

.field private mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V
    .locals 7
    .parameter "context"
    .parameter "updateMonitor"
    .parameter "callback"

    .prologue
    const/4 v5, 0x1

    .line 103
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 68
    sget-object v4, Lcom/android/internal/policy/impl/EmergencyMasterResetScreen$Mode;->None:Lcom/android/internal/policy/impl/EmergencyMasterResetScreen$Mode;

    iput-object v4, p0, Lcom/android/internal/policy/impl/EmergencyMasterResetScreen;->mMode:Lcom/android/internal/policy/impl/EmergencyMasterResetScreen$Mode;

    .line 85
    new-instance v4, Lcom/android/internal/policy/impl/EmergencyMasterResetScreen$1;

    invoke-direct {v4, p0}, Lcom/android/internal/policy/impl/EmergencyMasterResetScreen$1;-><init>(Lcom/android/internal/policy/impl/EmergencyMasterResetScreen;)V

    iput-object v4, p0, Lcom/android/internal/policy/impl/EmergencyMasterResetScreen;->mDefaultOnClick:Landroid/content/DialogInterface$OnClickListener;

    .line 105
    iput-object p1, p0, Lcom/android/internal/policy/impl/EmergencyMasterResetScreen;->mContext:Landroid/content/Context;

    .line 106
    iput-object p2, p0, Lcom/android/internal/policy/impl/EmergencyMasterResetScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    .line 107
    iput-object p3, p0, Lcom/android/internal/policy/impl/EmergencyMasterResetScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    .line 108
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 110
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v4, 0x10900a5

    invoke-virtual {v1, v4, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 112
    .local v3, view:Landroid/view/View;
    invoke-virtual {v3, v5}, Landroid/view/View;->setFocusable(Z)V

    .line 113
    invoke-virtual {v3, v5}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 114
    const v4, 0x1020315

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 116
    .local v2, resetBtn:Landroid/widget/Button;
    const v4, 0x1020316

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 119
    .local v0, exitBtn:Landroid/widget/Button;
    new-instance v4, Lcom/android/internal/policy/impl/EmergencyMasterResetScreen$2;

    invoke-direct {v4, p0}, Lcom/android/internal/policy/impl/EmergencyMasterResetScreen$2;-><init>(Lcom/android/internal/policy/impl/EmergencyMasterResetScreen;)V

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    new-instance v4, Lcom/android/internal/policy/impl/EmergencyMasterResetScreen$3;

    invoke-direct {v4, p0}, Lcom/android/internal/policy/impl/EmergencyMasterResetScreen$3;-><init>(Lcom/android/internal/policy/impl/EmergencyMasterResetScreen;)V

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    iget-object v4, p0, Lcom/android/internal/policy/impl/EmergencyMasterResetScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "screen_off_timeout"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/internal/policy/impl/EmergencyMasterResetScreen;->mScreenOffTime:I

    .line 137
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/EmergencyMasterResetScreen;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget v0, p0, Lcom/android/internal/policy/impl/EmergencyMasterResetScreen;->mScreenOffTime:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/EmergencyMasterResetScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/internal/policy/impl/EmergencyMasterResetScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/EmergencyMasterResetScreen;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/internal/policy/impl/EmergencyMasterResetScreen;->getFinalConfirmationDialog()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/EmergencyMasterResetScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/internal/policy/impl/EmergencyMasterResetScreen;->emergencyMasterResetExit()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/EmergencyMasterResetScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/internal/policy/impl/EmergencyMasterResetScreen;->executeMasterReset()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/EmergencyMasterResetScreen;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/internal/policy/impl/EmergencyMasterResetScreen;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/EmergencyMasterResetScreen;)Landroid/media/AudioManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/internal/policy/impl/EmergencyMasterResetScreen;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/internal/policy/impl/EmergencyMasterResetScreen;Landroid/media/AudioManager;)Landroid/media/AudioManager;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput-object p1, p0, Lcom/android/internal/policy/impl/EmergencyMasterResetScreen;->mAudioManager:Landroid/media/AudioManager;

    return-object p1
.end method

.method private emergencyMasterResetExit()V
    .locals 1

    .prologue
    .line 309
    iget-object v0, p0, Lcom/android/internal/policy/impl/EmergencyMasterResetScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->emergencyMasterResetDone()V

    .line 310
    iget-object v0, p0, Lcom/android/internal/policy/impl/EmergencyMasterResetScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    .line 312
    iget-object v0, p0, Lcom/android/internal/policy/impl/EmergencyMasterResetScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToLockScreen()V

    .line 313
    return-void
.end method

.method private executeMasterReset()V
    .locals 5

    .prologue
    .line 278
    const-string v2, "ro.monkey"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 300
    :goto_0
    return-void

    .line 282
    :cond_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/EmergencyMasterResetScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getBatteryLevel()I

    move-result v1

    .line 286
    .local v1, level:I
    const/16 v2, 0x1e

    if-gt v2, v1, :cond_1

    .line 290
    iget-object v2, p0, Lcom/android/internal/policy/impl/EmergencyMasterResetScreen;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.MASTER_CLEAR"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 295
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/policy/impl/EmergencyMasterResetScreen;->getLowBatteryDialog()Landroid/app/AlertDialog;

    move-result-object v0

    .line 296
    .local v0, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 297
    iget-object v2, p0, Lcom/android/internal/policy/impl/EmergencyMasterResetScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    iget v3, p0, Lcom/android/internal/policy/impl/EmergencyMasterResetScreen;->mScreenOffTime:I

    invoke-interface {v2, v3}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock(I)V

    goto :goto_0
.end method

.method private getFinalConfirmationDialog()Landroid/app/AlertDialog;
    .locals 4

    .prologue
    .line 227
    iget-object v0, p0, Lcom/android/internal/policy/impl/EmergencyMasterResetScreen;->mFinalConfirmationDialog:Landroid/app/AlertDialog;

    if-nez v0, :cond_0

    .line 228
    new-instance v0, Lcom/android/internal/policy/impl/EmergencyMasterResetScreen$InfoDialog;

    const v1, 0x1080027

    const v2, 0x104052c

    const v3, 0x104052d

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/internal/policy/impl/EmergencyMasterResetScreen$InfoDialog;-><init>(Lcom/android/internal/policy/impl/EmergencyMasterResetScreen;III)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/EmergencyMasterResetScreen;->mFinalConfirmationDialog:Landroid/app/AlertDialog;

    .line 232
    iget-object v0, p0, Lcom/android/internal/policy/impl/EmergencyMasterResetScreen;->mFinalConfirmationDialog:Landroid/app/AlertDialog;

    const/4 v1, -0x1

    iget-object v2, p0, Lcom/android/internal/policy/impl/EmergencyMasterResetScreen;->mContext:Landroid/content/Context;

    const v3, 0x104000a

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    new-instance v3, Lcom/android/internal/policy/impl/EmergencyMasterResetScreen$4;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/EmergencyMasterResetScreen$4;-><init>(Lcom/android/internal/policy/impl/EmergencyMasterResetScreen;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 244
    iget-object v0, p0, Lcom/android/internal/policy/impl/EmergencyMasterResetScreen;->mFinalConfirmationDialog:Landroid/app/AlertDialog;

    const/4 v1, -0x2

    iget-object v2, p0, Lcom/android/internal/policy/impl/EmergencyMasterResetScreen;->mContext:Landroid/content/Context;

    const/high16 v3, 0x104

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/EmergencyMasterResetScreen;->mDefaultOnClick:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 248
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/EmergencyMasterResetScreen;->mFinalConfirmationDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method private getLowBatteryDialog()Landroid/app/AlertDialog;
    .locals 4

    .prologue
    .line 257
    iget-object v0, p0, Lcom/android/internal/policy/impl/EmergencyMasterResetScreen;->mLowBatteryDialog:Landroid/app/AlertDialog;

    if-nez v0, :cond_0

    .line 258
    new-instance v0, Lcom/android/internal/policy/impl/EmergencyMasterResetScreen$InfoDialog;

    const v1, 0x1080027

    const v2, 0x104052e

    const v3, 0x104052f

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/internal/policy/impl/EmergencyMasterResetScreen$InfoDialog;-><init>(Lcom/android/internal/policy/impl/EmergencyMasterResetScreen;III)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/EmergencyMasterResetScreen;->mLowBatteryDialog:Landroid/app/AlertDialog;

    .line 262
    iget-object v0, p0, Lcom/android/internal/policy/impl/EmergencyMasterResetScreen;->mLowBatteryDialog:Landroid/app/AlertDialog;

    const/4 v1, -0x1

    iget-object v2, p0, Lcom/android/internal/policy/impl/EmergencyMasterResetScreen;->mContext:Landroid/content/Context;

    const v3, 0x104000a

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/EmergencyMasterResetScreen;->mDefaultOnClick:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 266
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/EmergencyMasterResetScreen;->mLowBatteryDialog:Landroid/app/AlertDialog;

    return-object v0
.end method


# virtual methods
.method public final cleanUp()V
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/internal/policy/impl/EmergencyMasterResetScreen;->mFinalConfirmationDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/EmergencyMasterResetScreen;->mFinalConfirmationDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/android/internal/policy/impl/EmergencyMasterResetScreen;->mFinalConfirmationDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/EmergencyMasterResetScreen;->mLowBatteryDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/impl/EmergencyMasterResetScreen;->mLowBatteryDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 183
    iget-object v0, p0, Lcom/android/internal/policy/impl/EmergencyMasterResetScreen;->mLowBatteryDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 185
    :cond_1
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 204
    iget-object v0, p0, Lcom/android/internal/policy/impl/EmergencyMasterResetScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    iget v1, p0, Lcom/android/internal/policy/impl/EmergencyMasterResetScreen;->mScreenOffTime:I

    invoke-interface {v0, v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock(I)V

    .line 205
    const/4 v0, 0x0

    return v0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "ev"

    .prologue
    .line 212
    iget-object v0, p0, Lcom/android/internal/policy/impl/EmergencyMasterResetScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    iget v1, p0, Lcom/android/internal/policy/impl/EmergencyMasterResetScreen;->mScreenOffTime:I

    invoke-interface {v0, v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock(I)V

    .line 215
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/EmergencyMasterResetScreen;->requestLayout()V

    .line 216
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/EmergencyMasterResetScreen;->invalidate()V

    .line 218
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public final needsInput()Z
    .locals 1

    .prologue
    .line 189
    const/4 v0, 0x0

    return v0
.end method

.method protected final onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 196
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/EmergencyMasterResetScreen;->cleanUp()V

    .line 197
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 198
    return-void
.end method

.method public final onPause()V
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/internal/policy/impl/EmergencyMasterResetScreen;->mFinalConfirmationDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/impl/EmergencyMasterResetScreen;->mFinalConfirmationDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 146
    sget-object v0, Lcom/android/internal/policy/impl/EmergencyMasterResetScreen$Mode;->FinalConfirmation:Lcom/android/internal/policy/impl/EmergencyMasterResetScreen$Mode;

    iput-object v0, p0, Lcom/android/internal/policy/impl/EmergencyMasterResetScreen;->mMode:Lcom/android/internal/policy/impl/EmergencyMasterResetScreen$Mode;

    .line 147
    iget-object v0, p0, Lcom/android/internal/policy/impl/EmergencyMasterResetScreen;->mFinalConfirmationDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 157
    :cond_0
    :goto_0
    return-void

    .line 150
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/EmergencyMasterResetScreen;->mLowBatteryDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/EmergencyMasterResetScreen;->mLowBatteryDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    sget-object v0, Lcom/android/internal/policy/impl/EmergencyMasterResetScreen$Mode;->LowBattery:Lcom/android/internal/policy/impl/EmergencyMasterResetScreen$Mode;

    iput-object v0, p0, Lcom/android/internal/policy/impl/EmergencyMasterResetScreen;->mMode:Lcom/android/internal/policy/impl/EmergencyMasterResetScreen$Mode;

    .line 154
    iget-object v0, p0, Lcom/android/internal/policy/impl/EmergencyMasterResetScreen;->mLowBatteryDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    goto :goto_0
.end method

.method public final onResume()V
    .locals 2

    .prologue
    .line 164
    iget-object v0, p0, Lcom/android/internal/policy/impl/EmergencyMasterResetScreen;->mMode:Lcom/android/internal/policy/impl/EmergencyMasterResetScreen$Mode;

    sget-object v1, Lcom/android/internal/policy/impl/EmergencyMasterResetScreen$Mode;->FinalConfirmation:Lcom/android/internal/policy/impl/EmergencyMasterResetScreen$Mode;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/impl/EmergencyMasterResetScreen;->mFinalConfirmationDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 166
    iget-object v0, p0, Lcom/android/internal/policy/impl/EmergencyMasterResetScreen;->mFinalConfirmationDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 171
    :cond_0
    :goto_0
    sget-object v0, Lcom/android/internal/policy/impl/EmergencyMasterResetScreen$Mode;->None:Lcom/android/internal/policy/impl/EmergencyMasterResetScreen$Mode;

    iput-object v0, p0, Lcom/android/internal/policy/impl/EmergencyMasterResetScreen;->mMode:Lcom/android/internal/policy/impl/EmergencyMasterResetScreen$Mode;

    .line 172
    return-void

    .line 167
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/EmergencyMasterResetScreen;->mMode:Lcom/android/internal/policy/impl/EmergencyMasterResetScreen$Mode;

    sget-object v1, Lcom/android/internal/policy/impl/EmergencyMasterResetScreen$Mode;->LowBattery:Lcom/android/internal/policy/impl/EmergencyMasterResetScreen$Mode;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/EmergencyMasterResetScreen;->mLowBatteryDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/android/internal/policy/impl/EmergencyMasterResetScreen;->mLowBatteryDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method

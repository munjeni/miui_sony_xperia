.class Lcom/android/internal/policy/impl/MiuiGlobalActions;
.super Ljava/lang/Object;
.source "MiuiGlobalActions.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/MiuiGlobalActions$SilentModeAction;,
        Lcom/android/internal/policy/impl/MiuiGlobalActions$ToggleAction;,
        Lcom/android/internal/policy/impl/MiuiGlobalActions$SinglePressAction;,
        Lcom/android/internal/policy/impl/MiuiGlobalActions$Action;,
        Lcom/android/internal/policy/impl/MiuiGlobalActions$MyAdapter;
    }
.end annotation


# static fields
.field private static final DIALOG_DISMISS_DELAY:I = 0x12c

.field private static final MESSAGE_DISMISS:I = 0x0

.field private static final MESSAGE_REFRESH:I = 0x1

.field private static final SHOW_SILENT_TOGGLE:Z = true

.field private static final TAG:Ljava/lang/String; = "GlobalActions"


# instance fields
.field private mAdapter:Lcom/android/internal/policy/impl/MiuiGlobalActions$MyAdapter;

.field private mAirplaneModeOn:Lcom/android/internal/policy/impl/MiuiGlobalActions$ToggleAction;

.field private mAirplaneState:Lcom/android/internal/policy/impl/MiuiGlobalActions$ToggleAction$State;

.field private final mAudioManager:Landroid/media/AudioManager;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mContext:Landroid/content/Context;

.field private mDeviceProvisioned:Z

.field private mDialog:Landroid/app/AlertDialog;

.field private mHandler:Landroid/os/Handler;

.field private mIsWaitingForEcmExit:Z

.field private mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/policy/impl/MiuiGlobalActions$Action;",
            ">;"
        }
    .end annotation
.end field

.field private mKeyguardShowing:Z

.field private mMuteToggle:Lcom/android/internal/policy/impl/MiuiGlobalActions$SinglePressAction;

.field mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mRingerModeReceiver:Landroid/content/BroadcastReceiver;

.field private mSecurityHelper:Lmiui/security/ChooseLockSettingsHelper;

.field private mSilentModeAction:Lcom/android/internal/policy/impl/MiuiGlobalActions$SilentModeAction;

.field private mThemeChanged:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mThemeChanged:I

    .line 78
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mKeyguardShowing:Z

    .line 79
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mDeviceProvisioned:Z

    .line 80
    sget-object v2, Lcom/android/internal/policy/impl/MiuiGlobalActions$ToggleAction$State;->Off:Lcom/android/internal/policy/impl/MiuiGlobalActions$ToggleAction$State;

    iput-object v2, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mAirplaneState:Lcom/android/internal/policy/impl/MiuiGlobalActions$ToggleAction$State;

    .line 81
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mIsWaitingForEcmExit:Z

    .line 82
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mSecurityHelper:Lmiui/security/ChooseLockSettingsHelper;

    .line 646
    new-instance v2, Lcom/android/internal/policy/impl/MiuiGlobalActions$5;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/MiuiGlobalActions$5;-><init>(Lcom/android/internal/policy/impl/MiuiGlobalActions;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 667
    new-instance v2, Lcom/android/internal/policy/impl/MiuiGlobalActions$6;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/MiuiGlobalActions$6;-><init>(Lcom/android/internal/policy/impl/MiuiGlobalActions;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 677
    new-instance v2, Lcom/android/internal/policy/impl/MiuiGlobalActions$7;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/MiuiGlobalActions$7;-><init>(Lcom/android/internal/policy/impl/MiuiGlobalActions;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mRingerModeReceiver:Landroid/content/BroadcastReceiver;

    .line 690
    new-instance v2, Lcom/android/internal/policy/impl/MiuiGlobalActions$8;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/MiuiGlobalActions$8;-><init>(Lcom/android/internal/policy/impl/MiuiGlobalActions;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mHandler:Landroid/os/Handler;

    .line 88
    new-instance v2, Landroid/view/ContextThemeWrapper;

    const v3, 0x1030073

    invoke-direct {v2, p1, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mContext:Landroid/content/Context;

    .line 89
    iget-object v2, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mContext:Landroid/content/Context;

    const-string v3, "audio"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    iput-object v2, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mAudioManager:Landroid/media/AudioManager;

    .line 90
    new-instance v2, Lmiui/security/ChooseLockSettingsHelper;

    invoke-direct {v2, p1}, Lmiui/security/ChooseLockSettingsHelper;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mSecurityHelper:Lmiui/security/ChooseLockSettingsHelper;

    .line 93
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 94
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 95
    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 96
    const-string v2, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 97
    iget-object v2, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 100
    const-string v2, "phone"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 102
    .local v1, telephonyManager:Landroid/telephony/TelephonyManager;
    iget-object v2, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 103
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/MiuiGlobalActions;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mIsWaitingForEcmExit:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/internal/policy/impl/MiuiGlobalActions;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mIsWaitingForEcmExit:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/MiuiGlobalActions;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/internal/policy/impl/MiuiGlobalActions;)Lcom/android/internal/policy/impl/MiuiGlobalActions$MyAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mAdapter:Lcom/android/internal/policy/impl/MiuiGlobalActions$MyAdapter;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/internal/policy/impl/MiuiGlobalActions;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/MiuiGlobalActions;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/MiuiGlobalActions;->changeAirplaneModeSystemSetting(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/MiuiGlobalActions;)Lcom/android/internal/policy/impl/MiuiGlobalActions$ToggleAction$State;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mAirplaneState:Lcom/android/internal/policy/impl/MiuiGlobalActions$ToggleAction$State;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/internal/policy/impl/MiuiGlobalActions;Lcom/android/internal/policy/impl/MiuiGlobalActions$ToggleAction$State;)Lcom/android/internal/policy/impl/MiuiGlobalActions$ToggleAction$State;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput-object p1, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mAirplaneState:Lcom/android/internal/policy/impl/MiuiGlobalActions$ToggleAction$State;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/MiuiGlobalActions;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/MiuiGlobalActions;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mKeyguardShowing:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/MiuiGlobalActions;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mDeviceProvisioned:Z

    return v0
.end method

.method static synthetic access$800(Lcom/android/internal/policy/impl/MiuiGlobalActions;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/internal/policy/impl/MiuiGlobalActions;)Lcom/android/internal/policy/impl/MiuiGlobalActions$ToggleAction;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mAirplaneModeOn:Lcom/android/internal/policy/impl/MiuiGlobalActions$ToggleAction;

    return-object v0
.end method

.method private changeAirplaneModeSystemSetting(Z)V
    .locals 4
    .parameter "on"

    .prologue
    .line 706
    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 710
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 711
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 712
    const-string v1, "state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 713
    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 714
    return-void

    .line 706
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private createDialog()Landroid/app/AlertDialog;
    .locals 10

    .prologue
    const/4 v9, 0x1

    .line 130
    new-instance v0, Lcom/android/internal/policy/impl/MiuiGlobalActions$SilentModeAction;

    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mAudioManager:Landroid/media/AudioManager;

    iget-object v2, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, v2}, Lcom/android/internal/policy/impl/MiuiGlobalActions$SilentModeAction;-><init>(Landroid/media/AudioManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mSilentModeAction:Lcom/android/internal/policy/impl/MiuiGlobalActions$SilentModeAction;

    .line 132
    new-instance v0, Lcom/android/internal/policy/impl/MiuiGlobalActions$1;

    const v2, 0x602011a

    const v3, 0x602011b

    const v4, 0x60c0188

    const v5, 0x60c0189

    const v6, 0x60c018a

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/policy/impl/MiuiGlobalActions$1;-><init>(Lcom/android/internal/policy/impl/MiuiGlobalActions;IIIII)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mAirplaneModeOn:Lcom/android/internal/policy/impl/MiuiGlobalActions$ToggleAction;

    .line 172
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mItems:Ljava/util/ArrayList;

    .line 175
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mItems:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mAirplaneModeOn:Lcom/android/internal/policy/impl/MiuiGlobalActions$ToggleAction;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 179
    new-instance v0, Lcom/android/internal/policy/impl/MiuiGlobalActions$2;

    invoke-direct {p0}, Lcom/android/internal/policy/impl/MiuiGlobalActions;->getMuteIconResId()I

    move-result v1

    const v2, 0x60c0195

    invoke-direct {v0, p0, v1, v2}, Lcom/android/internal/policy/impl/MiuiGlobalActions$2;-><init>(Lcom/android/internal/policy/impl/MiuiGlobalActions;II)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mMuteToggle:Lcom/android/internal/policy/impl/MiuiGlobalActions$SinglePressAction;

    .line 195
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mItems:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mMuteToggle:Lcom/android/internal/policy/impl/MiuiGlobalActions$SinglePressAction;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 198
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mItems:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/policy/impl/MiuiGlobalActions$222;

    const v2, 0x602011d

    const v3, 0x60c018c

    invoke-direct {v1, p0, v2, v3}, Lcom/android/internal/policy/impl/MiuiGlobalActions$222;-><init>(Lcom/android/internal/policy/impl/MiuiGlobalActions;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 217
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mItems:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/policy/impl/MiuiGlobalActions$4;

    const v2, 0x602011c

    const v3, 0x60c018b

    invoke-direct {v1, p0, v2, v3}, Lcom/android/internal/policy/impl/MiuiGlobalActions$4;-><init>(Lcom/android/internal/policy/impl/MiuiGlobalActions;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 244
    new-instance v0, Lcom/android/internal/policy/impl/MiuiGlobalActions$MyAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/internal/policy/impl/MiuiGlobalActions$MyAdapter;-><init>(Lcom/android/internal/policy/impl/MiuiGlobalActions;Lcom/android/internal/policy/impl/MiuiGlobalActions$1;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mAdapter:Lcom/android/internal/policy/impl/MiuiGlobalActions$MyAdapter;

    .line 246
    new-instance v7, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mContext:Landroid/content/Context;

    const/4 v1, 0x3

    invoke-direct {v7, v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 248
    .local v7, ab:Landroid/app/AlertDialog$Builder;
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mAdapter:Lcom/android/internal/policy/impl/MiuiGlobalActions$MyAdapter;

    invoke-virtual {v7, v0, p0}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/app/AlertDialog$Builder;->setInverseBackgroundForced(Z)Landroid/app/AlertDialog$Builder;

    .line 251
    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v8

    .line 252
    .local v8, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v8}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 253
    invoke-virtual {v8}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d8

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 255
    invoke-virtual {v8, p0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 257
    return-object v8
.end method

.method private getMuteIconResId()I
    .locals 3

    .prologue
    .line 261
    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    const/4 v0, 0x1

    .line 262
    .local v0, silentModeOn:Z
    :goto_0
    if-eqz v0, :cond_1

    const v1, 0x6020024

    :goto_1
    return v1

    .line 261
    .end local v0           #silentModeOn:Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 262
    .restart local v0       #silentModeOn:Z
    :cond_1
    const v1, 0x6020023

    goto :goto_1
.end method

.method private prepareDialog()V
    .locals 3

    .prologue
    .line 269
    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mAirplaneModeOn:Lcom/android/internal/policy/impl/MiuiGlobalActions$ToggleAction;

    iget-object v2, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mAirplaneState:Lcom/android/internal/policy/impl/MiuiGlobalActions$ToggleAction$State;

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/MiuiGlobalActions$ToggleAction;->updateState(Lcom/android/internal/policy/impl/MiuiGlobalActions$ToggleAction$State;)V

    .line 270
    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mMuteToggle:Lcom/android/internal/policy/impl/MiuiGlobalActions$SinglePressAction;

    invoke-direct {p0}, Lcom/android/internal/policy/impl/MiuiGlobalActions;->getMuteIconResId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/MiuiGlobalActions$SinglePressAction;->setIcon(I)V

    .line 271
    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mAdapter:Lcom/android/internal/policy/impl/MiuiGlobalActions$MyAdapter;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/MiuiGlobalActions$MyAdapter;->notifyDataSetChanged()V

    .line 272
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mKeyguardShowing:Z

    if-eqz v1, :cond_0

    .line 273
    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d9

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 278
    :goto_0
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.media.RINGER_MODE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 279
    .local v0, filter:Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mRingerModeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 281
    return-void

    .line 275
    .end local v0           #filter:Landroid/content/IntentFilter;
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d8

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 293
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mAdapter:Lcom/android/internal/policy/impl/MiuiGlobalActions$MyAdapter;

    invoke-virtual {v0, p2}, Lcom/android/internal/policy/impl/MiuiGlobalActions$MyAdapter;->getItem(I)Lcom/android/internal/policy/impl/MiuiGlobalActions$Action;

    move-result-object v0

    instance-of v0, v0, Lcom/android/internal/policy/impl/MiuiGlobalActions$SilentModeAction;

    if-nez v0, :cond_0

    .line 294
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 296
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mAdapter:Lcom/android/internal/policy/impl/MiuiGlobalActions$MyAdapter;

    invoke-virtual {v0, p2}, Lcom/android/internal/policy/impl/MiuiGlobalActions$MyAdapter;->getItem(I)Lcom/android/internal/policy/impl/MiuiGlobalActions$Action;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/policy/impl/MiuiGlobalActions$Action;->onPress()V

    .line 297
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 287
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mRingerModeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 289
    return-void
.end method

.method public showDialog(ZZ)V
    .locals 4
    .parameter "keyguardShowing"
    .parameter "isDeviceProvisioned"

    .prologue
    .line 110
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mKeyguardShowing:Z

    .line 111
    iput-boolean p2, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mDeviceProvisioned:Z

    .line 113
    iget-object v2, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 114
    .local v0, config:Landroid/content/res/Configuration;
    if-eqz v0, :cond_2

    iget-object v2, v0, Landroid/content/res/Configuration;->extraConfig:Lmiui/content/res/ExtraConfiguration;

    iget v1, v2, Lmiui/content/res/ExtraConfiguration;->themeChanged:I

    .line 115
    .local v1, themeChanged:I
    :goto_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mDialog:Landroid/app/AlertDialog;

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mThemeChanged:I

    if-eq v1, v2, :cond_1

    .line 116
    :cond_0
    iput v1, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mThemeChanged:I

    .line 117
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MiuiGlobalActions;->createDialog()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mDialog:Landroid/app/AlertDialog;

    .line 119
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MiuiGlobalActions;->prepareDialog()V

    .line 121
    iget-object v2, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 122
    iget-object v2, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    const/high16 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 123
    return-void

    .line 114
    .end local v1           #themeChanged:I
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

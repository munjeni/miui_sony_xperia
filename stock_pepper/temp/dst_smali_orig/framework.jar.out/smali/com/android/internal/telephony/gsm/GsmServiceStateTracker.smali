.class final Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;
.super Lcom/android/internal/telephony/ServiceStateTracker;
.source "GsmServiceStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$4;
    }
.end annotation


# static fields
.field static final CS_DISABLED:I = 0x3ec

.field static final CS_EMERGENCY_ENABLED:I = 0x3ee

.field static final CS_ENABLED:I = 0x3eb

.field static final CS_NORMAL_ENABLED:I = 0x3ed

.field static final CS_NOTIFICATION:I = 0x3e7

.field static final DBG:Z = true

.field static final DEFAULT_GPRS_CHECK_PERIOD_MILLIS:I = 0xea60

.field private static final INACTIVE_SIM_EMERGENCY_STRING_PROPERTY:Ljava/lang/String; = "ro.telephony.inactivesim"

.field private static final INVALID_MCC_OF_ACTING_HPLMN:Ljava/lang/String; = "FFF"

.field private static final LENGTH_OF_MCC:I = 0x3

.field static final LOG_TAG:Ljava/lang/String; = "GSM"

.field static final MM_CAUSE_CODE_NOTIFICATION:I = 0x6f

.field private static final NO_EMG_CALLS_ONLY_PROPERTY:Ljava/lang/String; = "ro.telephony.no_emg_calls_only"

.field static final PS_DISABLED:I = 0x3ea

.field static final PS_ENABLED:I = 0x3e9

.field static final PS_NOTIFICATION:I = 0x378

.field static final ROAMING_EXTENDED_RULE_DISABLE:I = 0x2

.field static final ROAMING_EXTENDED_RULE_MCCLIST:I = 0x0

.field static final ROAMING_EXTENDED_RULE_SIMMCC:I = 0x1

.field private static final SHOW_OPNAME_IF_PS_AVAILABLE:Ljava/lang/String; = "show_opname_ps_available"

.field private static final WAKELOCK_TAG:Ljava/lang/String; = "ServiceStateTracker"


# instance fields
.field cellLoc:Landroid/telephony/gsm/GsmCellLocation;

.field private cr:Landroid/content/ContentResolver;

.field private curPlmn:Ljava/lang/String;

.field private curSpn:Ljava/lang/String;

.field private curSpnRule:I

.field private gprsState:I

.field private mAutoTimeObserver:Landroid/database/ContentObserver;

.field private mAutoTimeZoneObserver:Landroid/database/ContentObserver;

.field private mDataRoaming:Z

.field private mEmergencyOnly:Z

.field private mGotCountryCode:Z

.field private mGsmRoaming:Z

.field private mInactiveSim:Z

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mLastRejectCode:I

.field private mMaxDataCalls:I

.field private mNeedFixZone:Z

.field private mNeedToRegForSimLoaded:Z

.field private mNewMaxDataCalls:I

.field private mNewReasonDataDenied:I

.field private mNotification:Landroid/app/Notification;

.field mPreferredNetworkType:I

.field private mReasonDataDenied:I

.field private mReportedGprsNoReg:Z

.field mSavedAtTime:J

.field mSavedTime:J

.field mSavedTimeZone:Ljava/lang/String;

.field private mStartedGprsRegCheck:Z

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mZoneDst:Z

.field private mZoneOffset:I

.field private mZoneTime:J

.field newCellLoc:Landroid/telephony/gsm/GsmCellLocation;

.field private newGPRSState:I

.field private newPSCid:I

.field private newPSLac:I

.field newRegPlmn:Ljava/lang/String;

.field phone:Lcom/android/internal/telephony/gsm/GSMPhone;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/gsm/GSMPhone;)V
    .locals 8
    .parameter "phone"

    .prologue
    const/4 v5, -0x1

    const/4 v7, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/android/internal/telephony/ServiceStateTracker;-><init>()V

    iput v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->gprsState:I

    iput v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newGPRSState:I

    iput v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mMaxDataCalls:I

    iput v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewMaxDataCalls:I

    iput v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mReasonDataDenied:I

    iput v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewReasonDataDenied:I

    iput v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mLastRejectCode:I

    iput v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newPSLac:I

    iput v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newPSCid:I

    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mGsmRoaming:Z

    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mDataRoaming:Z

    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mEmergencyOnly:Z

    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNeedFixZone:Z

    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mGotCountryCode:Z

    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mStartedGprsRegCheck:Z

    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mReportedGprsNoReg:Z

    iput-object v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->curSpn:Ljava/lang/String;

    iput-object v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->curPlmn:Ljava/lang/String;

    iput v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->curSpnRule:I

    iput-object v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newRegPlmn:Ljava/lang/String;

    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mInactiveSim:Z

    new-instance v5, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;

    invoke-direct {v5, p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;-><init>(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)V

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    new-instance v5, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$2;

    new-instance v6, Landroid/os/Handler;

    invoke-direct {v6}, Landroid/os/Handler;-><init>()V

    invoke-direct {v5, p0, v6}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$2;-><init>(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;Landroid/os/Handler;)V

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mAutoTimeObserver:Landroid/database/ContentObserver;

    new-instance v5, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$3;

    new-instance v6, Landroid/os/Handler;

    invoke-direct {v6}, Landroid/os/Handler;-><init>()V

    invoke-direct {v5, p0, v6}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$3;-><init>(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;Landroid/os/Handler;)V

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mAutoTimeZoneObserver:Landroid/database/ContentObserver;

    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v5, p1, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    new-instance v5, Landroid/telephony/ServiceState;

    invoke-direct {v5}, Landroid/telephony/ServiceState;-><init>()V

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    new-instance v5, Landroid/telephony/ServiceState;

    invoke-direct {v5}, Landroid/telephony/ServiceState;-><init>()V

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    new-instance v5, Landroid/telephony/gsm/GsmCellLocation;

    invoke-direct {v5}, Landroid/telephony/gsm/GsmCellLocation;-><init>()V

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cellLoc:Landroid/telephony/gsm/GsmCellLocation;

    new-instance v5, Landroid/telephony/gsm/GsmCellLocation;

    invoke-direct {v5}, Landroid/telephony/gsm/GsmCellLocation;-><init>()V

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    new-instance v5, Landroid/telephony/SignalStrength;

    invoke-direct {v5}, Landroid/telephony/SignalStrength;-><init>()V

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "power"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    .local v2, powerManager:Landroid/os/PowerManager;
    const-string v5, "ServiceStateTracker"

    invoke-virtual {v2, v4, v5}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v6, 0xd

    invoke-interface {v5, p0, v6, v7}, Lcom/android/internal/telephony/CommandsInterface;->registerForAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v5, p0, v4, v7}, Lcom/android/internal/telephony/CommandsInterface;->registerForRadioStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v6, 0x2

    invoke-interface {v5, p0, v6, v7}, Lcom/android/internal/telephony/CommandsInterface;->registerForVoiceNetworkStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v6, 0xb

    invoke-interface {v5, p0, v6, v7}, Lcom/android/internal/telephony/CommandsInterface;->setOnNITZTime(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v6, 0xc

    invoke-interface {v5, p0, v6, v7}, Lcom/android/internal/telephony/CommandsInterface;->setOnSignalStrengthUpdate(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v6, 0x17

    invoke-interface {v5, p0, v6, v7}, Lcom/android/internal/telephony/CommandsInterface;->setOnRestrictedStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v6, 0x11

    invoke-interface {v5, p0, v6, v7}, Lcom/android/internal/telephony/CommandsInterface;->registerForSIMReady(Landroid/os/Handler;ILjava/lang/Object;)V

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "airplane_mode_on"

    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .local v0, airplaneMode:I
    if-gtz v0, :cond_0

    move v3, v4

    :cond_0
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mDesiredPowerState:Z

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cr:Landroid/content/ContentResolver;

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cr:Landroid/content/ContentResolver;

    const-string v5, "auto_time"

    invoke-static {v5}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mAutoTimeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v3, v5, v4, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cr:Landroid/content/ContentResolver;

    const-string v5, "auto_time_zone"

    invoke-static {v5}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mAutoTimeZoneObserver:Landroid/database/ContentObserver;

    invoke-virtual {v3, v5, v4, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setSignalStrengthDefaultValues()V

    iput-boolean v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNeedToRegForSimLoaded:Z

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .local v1, filter:Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v3, 0x3

    invoke-virtual {p1, v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyOtaspChanged(I)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->revertToNitzTime()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->revertToNitzTimeZone()V

    return-void
.end method

.method private checkRoaming()Z
    .locals 13

    .prologue
    const/4 v9, 0x1

    const/4 v12, 0x3

    const/4 v8, 0x0

    iget-boolean v10, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mGsmRoaming:Z

    if-nez v10, :cond_0

    iget-boolean v10, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mDataRoaming:Z

    if-eqz v10, :cond_3

    :cond_0
    move v6, v9

    .local v6, roaming:Z
    :goto_0
    iget-boolean v10, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mGsmRoaming:Z

    if-eqz v10, :cond_1

    iget-boolean v10, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mGsmRoaming:Z

    iget-object v11, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    invoke-direct {p0, v10, v11}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->isRoamingBetweenOperators(ZLandroid/telephony/ServiceState;)Z

    move-result v10

    if-nez v10, :cond_1

    const/4 v6, 0x0

    :cond_1
    if-eqz v6, :cond_2

    const-string v10, "ro.roaming.extended"

    invoke-static {v10, v8}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    if-eqz v10, :cond_2

    const-string v10, "ro.roaming.extended_rule"

    invoke-static {v10, v8}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v7

    .local v7, roamingRule:I
    packed-switch v7, :pswitch_data_0

    const-string v8, "GSM"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unhandled extended roaming checking with rule: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v7           #roamingRule:I
    :cond_2
    :goto_1
    return v6

    .end local v6           #roaming:Z
    :cond_3
    move v6, v8

    goto :goto_0

    .restart local v6       #roaming:Z
    .restart local v7       #roamingRule:I
    :pswitch_0
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newRegPlmn:Ljava/lang/String;

    if-eqz v10, :cond_2

    iget-object v10, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newRegPlmn:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-lt v10, v12, :cond_2

    iget-object v10, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newRegPlmn:Ljava/lang/String;

    invoke-virtual {v10, v8, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .local v5, mccOfRegPlmn:Ljava/lang/String;
    const-string v10, "ro.roaming.mcc_list"

    const-string v11, ""

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .local v2, hostMccList:Ljava/lang/String;
    const-string v10, "ro.roaming.excluded_plmn_list"

    const-string v11, ""

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .local v1, hostExcludedPlmn:Ljava/lang/String;
    const-string v10, "ro.roaming.no_acting_hplmn"

    invoke-static {v10, v8}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    if-ltz v10, :cond_4

    iget-object v10, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newRegPlmn:Ljava/lang/String;

    invoke-virtual {v1, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    if-ltz v10, :cond_5

    :cond_4
    move v6, v9

    :goto_2
    goto :goto_1

    :cond_5
    move v6, v8

    goto :goto_2

    :cond_6
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v10, v10, Lcom/android/internal/telephony/gsm/GSMPhone;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    iget-object v0, v10, Lcom/android/internal/telephony/IccRecords;->actingHplmn:Ljava/lang/String;

    .local v0, actingHplmn:Ljava/lang/String;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v10

    if-lt v10, v12, :cond_2

    invoke-virtual {v0, v8, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .local v4, mccOfActingHplmn:Ljava/lang/String;
    const-string v10, "FFF"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_7

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_7

    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    if-ltz v10, :cond_8

    :cond_7
    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    if-ltz v10, :cond_8

    iget-object v10, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newRegPlmn:Ljava/lang/String;

    invoke-virtual {v1, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    if-ltz v10, :cond_9

    :cond_8
    move v6, v9

    :goto_3
    goto :goto_1

    :cond_9
    move v6, v8

    goto :goto_3

    .end local v0           #actingHplmn:Ljava/lang/String;
    .end local v1           #hostExcludedPlmn:Ljava/lang/String;
    .end local v2           #hostMccList:Ljava/lang/String;
    .end local v4           #mccOfActingHplmn:Ljava/lang/String;
    .end local v5           #mccOfRegPlmn:Ljava/lang/String;
    :pswitch_1
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v10, v10, Lcom/android/internal/telephony/gsm/GSMPhone;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    invoke-virtual {v10}, Lcom/android/internal/telephony/IccRecords;->getIMSI()Ljava/lang/String;

    move-result-object v3

    .local v3, imsi:Ljava/lang/String;
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newRegPlmn:Ljava/lang/String;

    if-eqz v10, :cond_2

    if-eqz v3, :cond_2

    iget-object v10, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newRegPlmn:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-lt v10, v12, :cond_2

    iget-object v10, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newRegPlmn:Ljava/lang/String;

    invoke-virtual {v3, v8, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_a

    move v6, v9

    :goto_4
    goto/16 :goto_1

    :cond_a
    move v6, v8

    goto :goto_4

    .end local v3           #imsi:Ljava/lang/String;
    :pswitch_2
    const/4 v6, 0x0

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static displayNameFor(I)Ljava/lang/String;
    .locals 6
    .parameter "off"

    .prologue
    const/4 v5, 0x3

    div-int/lit16 v3, p0, 0x3e8

    div-int/lit8 p0, v3, 0x3c

    const/16 v3, 0x9

    new-array v0, v3, [C

    .local v0, buf:[C
    const/4 v3, 0x0

    const/16 v4, 0x47

    aput-char v4, v0, v3

    const/4 v3, 0x1

    const/16 v4, 0x4d

    aput-char v4, v0, v3

    const/4 v3, 0x2

    const/16 v4, 0x54

    aput-char v4, v0, v3

    if-gez p0, :cond_0

    const/16 v3, 0x2d

    aput-char v3, v0, v5

    neg-int p0, p0

    :goto_0
    div-int/lit8 v1, p0, 0x3c

    .local v1, hours:I
    rem-int/lit8 v2, p0, 0x3c

    .local v2, minutes:I
    const/4 v3, 0x4

    div-int/lit8 v4, v1, 0xa

    add-int/lit8 v4, v4, 0x30

    int-to-char v4, v4

    aput-char v4, v0, v3

    const/4 v3, 0x5

    rem-int/lit8 v4, v1, 0xa

    add-int/lit8 v4, v4, 0x30

    int-to-char v4, v4

    aput-char v4, v0, v3

    const/4 v3, 0x6

    const/16 v4, 0x3a

    aput-char v4, v0, v3

    const/4 v3, 0x7

    div-int/lit8 v4, v2, 0xa

    add-int/lit8 v4, v4, 0x30

    int-to-char v4, v4

    aput-char v4, v0, v3

    const/16 v3, 0x8

    rem-int/lit8 v4, v2, 0xa

    add-int/lit8 v4, v4, 0x30

    int-to-char v4, v4

    aput-char v4, v0, v3

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([C)V

    return-object v3

    .end local v1           #hours:I
    .end local v2           #minutes:I
    :cond_0
    const/16 v3, 0x2b

    aput-char v3, v0, v5

    goto :goto_0
.end method

.method private findTimeZone(IZJ)Ljava/util/TimeZone;
    .locals 10
    .parameter "offset"
    .parameter "dst"
    .parameter "when"

    .prologue
    move v5, p1

    .local v5, rawOffset:I
    if-eqz p2, :cond_0

    const v9, 0x36ee80

    sub-int/2addr v5, v9

    :cond_0
    invoke-static {v5}, Ljava/util/TimeZone;->getAvailableIDs(I)[Ljava/lang/String;

    move-result-object v8

    .local v8, zones:[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, guess:Ljava/util/TimeZone;
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p3, p4}, Ljava/util/Date;-><init>(J)V

    .local v1, d:Ljava/util/Date;
    move-object v0, v8

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v7, v0, v3

    .local v7, zone:Ljava/lang/String;
    invoke-static {v7}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v6

    .local v6, tz:Ljava/util/TimeZone;
    invoke-virtual {v6, p3, p4}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v9

    if-ne v9, p1, :cond_2

    invoke-virtual {v6, v1}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v9

    if-ne v9, p2, :cond_2

    move-object v2, v6

    .end local v6           #tz:Ljava/util/TimeZone;
    .end local v7           #zone:Ljava/lang/String;
    :cond_1
    return-object v2

    .restart local v6       #tz:Ljava/util/TimeZone;
    .restart local v7       #zone:Ljava/lang/String;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private getAutoTime()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "auto_time"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-lez v2, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, snfe:Landroid/provider/Settings$SettingNotFoundException;
    goto :goto_0
.end method

.method private getAutoTimeZone()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "auto_time_zone"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-lez v2, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, snfe:Landroid/provider/Settings$SettingNotFoundException;
    goto :goto_0
.end method

.method private getCustomizedStringfromSystemResource(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "stringProperty"
    .parameter "defaultValue"

    .prologue
    const/4 v3, 0x0

    invoke-static {p1, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, customizedString:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, displayString:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCustomizedStringfromSystemResource():customizedString="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    if-eqz v0, :cond_2

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "string"

    const-string v5, "android"

    invoke-virtual {v3, v0, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .local v2, labelID:I
    if-lez v2, :cond_0

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "labelID="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " displayString="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .end local v2           #labelID:I
    :cond_0
    :goto_0
    if-nez v1, :cond_1

    move-object v1, p2

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCustomizedStringfromSystemResource()-displayString="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    return-object v1

    :cond_2
    const-string v3, "customizedString is null"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getNitzTimeZone(IZJ)Ljava/util/TimeZone;
    .locals 3
    .parameter "offset"
    .parameter "dst"
    .parameter "when"

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->findTimeZone(IZJ)Ljava/util/TimeZone;

    move-result-object v0

    .local v0, guess:Ljava/util/TimeZone;
    if-nez v0, :cond_0

    if-nez p2, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-direct {p0, p1, v1, p3, p4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->findTimeZone(IZJ)Ljava/util/TimeZone;

    move-result-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getNitzTimeZone returning "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez v0, :cond_2

    move-object v1, v0

    :goto_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    return-object v0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method private handleNetworkRejection(I)V
    .locals 12
    .parameter "rejCode"

    .prologue
    const-string v9, "GSM"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "GsmServiceStateTracker::handleNetworkRejection Code: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v5

    .local v5, r:Landroid/content/res/Resources;
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v9, v9, Lcom/android/internal/telephony/gsm/GSMPhone;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    invoke-virtual {v9}, Lcom/android/internal/telephony/IccRecords;->getServiceProviderName()Ljava/lang/String;

    move-result-object v7

    .local v7, spn:Ljava/lang/String;
    const v9, 0x104034c

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .local v4, plmn:Ljava/lang/String;
    const/4 v8, 0x0

    .local v8, stBody:Ljava/lang/String;
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v9}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    .local v0, context:Landroid/content/Context;
    const-string v9, "notification"

    invoke-virtual {v0, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .local v1, notificationManager:Landroid/app/NotificationManager;
    const/4 v2, 0x0

    .local v2, notify:Z
    packed-switch p1, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    const/4 v2, 0x1

    const v9, 0x10400bd

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mInactiveSim:Z

    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mEmergencyOnly:Z

    :goto_1
    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-direct {p0, v4, v7, v9, v10}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->updateNetworkStatusDisplay(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;)Z

    if-eqz v2, :cond_0

    const/4 v9, 0x0

    new-instance v10, Landroid/content/Intent;

    invoke-direct {v10}, Landroid/content/Intent;-><init>()V

    const/high16 v11, 0x1000

    invoke-static {v0, v9, v10, v11}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .local v3, pendingIntent:Landroid/app/PendingIntent;
    new-instance v6, Landroid/app/Notification;

    invoke-direct {v6}, Landroid/app/Notification;-><init>()V

    .local v6, rejectNotification:Landroid/app/Notification;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    iput-wide v9, v6, Landroid/app/Notification;->when:J

    const/16 v9, 0x10

    iput v9, v6, Landroid/app/Notification;->flags:I

    const v9, 0x108080c

    iput v9, v6, Landroid/app/Notification;->icon:I

    iput-object v8, v6, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    const/4 v9, 0x0

    invoke-virtual {v6, v0, v8, v9, v3}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    const/16 v9, 0x6f

    invoke-virtual {v1, v9, v6}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0

    .end local v3           #pendingIntent:Landroid/app/PendingIntent;
    .end local v6           #rejectNotification:Landroid/app/Notification;
    :pswitch_2
    const/4 v2, 0x1

    const v9, 0x10400ba

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "ro.telephony.inactivesim"

    invoke-direct {p0, v9, v4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getCustomizedStringfromSystemResource(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mInactiveSim:Z

    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mEmergencyOnly:Z

    goto :goto_1

    :pswitch_3
    const/4 v2, 0x1

    const v9, 0x10400bb

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "ro.telephony.inactivesim"

    invoke-direct {p0, v9, v4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getCustomizedStringfromSystemResource(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mInactiveSim:Z

    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mEmergencyOnly:Z

    goto :goto_1

    :pswitch_4
    const/4 v2, 0x1

    const v9, 0x10400bc

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "ro.telephony.inactivesim"

    invoke-direct {p0, v9, v4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getCustomizedStringfromSystemResource(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mInactiveSim:Z

    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mEmergencyOnly:Z

    goto :goto_1

    :pswitch_5
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mInactiveSim:Z

    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mEmergencyOnly:Z

    goto/16 :goto_1

    :pswitch_6
    const-string v4, ""

    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mInactiveSim:Z

    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mEmergencyOnly:Z

    goto/16 :goto_1

    :cond_0
    const/16 v9, 0x6f

    invoke-virtual {v1, v9}, Landroid/app/NotificationManager;->cancel(I)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method

.method private isGprsConsistent(II)Z
    .locals 1
    .parameter "gprsState"
    .parameter "serviceState"

    .prologue
    if-nez p2, :cond_0

    if-nez p1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isRoamingBetweenOperators(ZLandroid/telephony/ServiceState;)Z
    .locals 13
    .parameter "gsmRoaming"
    .parameter "s"

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    const-string v10, "gsm.sim.operator.alpha"

    const-string v11, "empty"

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .local v7, spn:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v3

    .local v3, onsl:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/telephony/ServiceState;->getOperatorAlphaShort()Ljava/lang/String;

    move-result-object v4

    .local v4, onss:Ljava/lang/String;
    if-eqz v3, :cond_1

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    move v1, v8

    .local v1, equalsOnsl:Z
    :goto_0
    if-eqz v4, :cond_2

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    move v2, v8

    .local v2, equalsOnss:Z
    :goto_1
    const-string v10, "gsm.sim.operator.numeric"

    const-string v11, ""

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .local v6, simNumeric:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v5

    .local v5, operatorNumeric:Ljava/lang/String;
    const/4 v0, 0x1

    .local v0, equalsMcc:Z
    const/4 v10, 0x0

    const/4 v11, 0x3

    :try_start_0
    invoke-virtual {v6, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x3

    invoke-virtual {v5, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_2
    if-eqz p1, :cond_3

    if-eqz v0, :cond_0

    if-nez v1, :cond_3

    if-nez v2, :cond_3

    :cond_0
    :goto_3
    return v8

    .end local v0           #equalsMcc:Z
    .end local v1           #equalsOnsl:Z
    .end local v2           #equalsOnss:Z
    .end local v5           #operatorNumeric:Ljava/lang/String;
    .end local v6           #simNumeric:Ljava/lang/String;
    :cond_1
    move v1, v9

    goto :goto_0

    .restart local v1       #equalsOnsl:Z
    :cond_2
    move v2, v9

    goto :goto_1

    .restart local v0       #equalsMcc:Z
    .restart local v2       #equalsOnss:Z
    .restart local v5       #operatorNumeric:Ljava/lang/String;
    .restart local v6       #simNumeric:Ljava/lang/String;
    :cond_3
    move v8, v9

    goto :goto_3

    :catch_0
    move-exception v10

    goto :goto_2
.end method

.method private onRestrictedStateChanged(Landroid/os/AsyncResult;)V
    .locals 10
    .parameter "ar"

    .prologue
    const/16 v9, 0x3ed

    const/16 v8, 0x3ec

    const/16 v7, 0x3eb

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v1, Lcom/android/internal/telephony/RestrictedState;

    invoke-direct {v1}, Lcom/android/internal/telephony/RestrictedState;-><init>()V

    .local v1, newRs:Lcom/android/internal/telephony/RestrictedState;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onRestrictedStateChanged: E rs "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    iget-object v3, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_9

    iget-object v3, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [I

    move-object v0, v3

    check-cast v0, [I

    .local v0, ints:[I
    aget v2, v0, v4

    .local v2, state:I
    and-int/lit8 v3, v2, 0x1

    if-nez v3, :cond_0

    and-int/lit8 v3, v2, 0x4

    if-eqz v3, :cond_3

    :cond_0
    move v3, v5

    :goto_0
    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/RestrictedState;->setCsEmergencyRestricted(Z)V

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/IccCard;->getState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v3

    sget-object v6, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    if-ne v3, v6, :cond_2

    and-int/lit8 v3, v2, 0x2

    if-nez v3, :cond_1

    and-int/lit8 v3, v2, 0x4

    if-eqz v3, :cond_4

    :cond_1
    move v3, v5

    :goto_1
    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/RestrictedState;->setCsNormalRestricted(Z)V

    and-int/lit8 v3, v2, 0x10

    if-eqz v3, :cond_5

    :goto_2
    invoke-virtual {v1, v5}, Lcom/android/internal/telephony/RestrictedState;->setPsRestricted(Z)V

    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onRestrictedStateChanged: new rs "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/RestrictedState;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .end local v0           #ints:[I
    .end local v2           #state:I
    :goto_3
    return-void

    .restart local v0       #ints:[I
    .restart local v2       #state:I
    :cond_3
    move v3, v4

    goto :goto_0

    :cond_4
    move v3, v4

    goto :goto_1

    :cond_5
    move v5, v4

    goto :goto_2

    :cond_6
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

    invoke-virtual {v3}, Lcom/android/internal/telephony/RestrictedState;->isPsRestricted()Z

    move-result v3

    if-nez v3, :cond_a

    invoke-virtual {v1}, Lcom/android/internal/telephony/RestrictedState;->isPsRestricted()Z

    move-result v3

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPsRestrictEnabledRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v3}, Landroid/os/RegistrantList;->notifyRegistrants()V

    const/16 v3, 0x3e9

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setNotification(I)V

    :cond_7
    :goto_4
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

    invoke-virtual {v3}, Lcom/android/internal/telephony/RestrictedState;->isCsRestricted()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-virtual {v1}, Lcom/android/internal/telephony/RestrictedState;->isCsNotRestricted()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setNotification(I)V

    :cond_8
    :goto_5
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

    .end local v0           #ints:[I
    .end local v2           #state:I
    :cond_9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onRestrictedStateChanged: X rs "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    goto :goto_3

    .restart local v0       #ints:[I
    .restart local v2       #state:I
    :cond_a
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

    invoke-virtual {v3}, Lcom/android/internal/telephony/RestrictedState;->isPsRestricted()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual {v1}, Lcom/android/internal/telephony/RestrictedState;->isPsRestricted()Z

    move-result v3

    if-nez v3, :cond_7

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPsRestrictDisabledRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v3}, Landroid/os/RegistrantList;->notifyRegistrants()V

    const/16 v3, 0x3ea

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setNotification(I)V

    goto :goto_4

    :cond_b
    invoke-virtual {v1}, Lcom/android/internal/telephony/RestrictedState;->isOnlyCsEmergencyRestricted()Z

    move-result v3

    if-eqz v3, :cond_c

    const/16 v3, 0x3ee

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setNotification(I)V

    goto :goto_5

    :cond_c
    invoke-virtual {v1}, Lcom/android/internal/telephony/RestrictedState;->isOnlyCsNormalRestricted()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setNotification(I)V

    goto :goto_5

    :cond_d
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

    invoke-virtual {v3}, Lcom/android/internal/telephony/RestrictedState;->isOnlyCsEmergencyRestricted()Z

    move-result v3

    if-eqz v3, :cond_10

    invoke-virtual {v1}, Lcom/android/internal/telephony/RestrictedState;->isCsNotRestricted()Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setNotification(I)V

    goto :goto_5

    :cond_e
    invoke-virtual {v1}, Lcom/android/internal/telephony/RestrictedState;->isCsRestricted()Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setNotification(I)V

    goto :goto_5

    :cond_f
    invoke-virtual {v1}, Lcom/android/internal/telephony/RestrictedState;->isOnlyCsNormalRestricted()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setNotification(I)V

    goto :goto_5

    :cond_10
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

    invoke-virtual {v3}, Lcom/android/internal/telephony/RestrictedState;->isOnlyCsNormalRestricted()Z

    move-result v3

    if-eqz v3, :cond_13

    invoke-virtual {v1}, Lcom/android/internal/telephony/RestrictedState;->isCsNotRestricted()Z

    move-result v3

    if-eqz v3, :cond_11

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setNotification(I)V

    goto/16 :goto_5

    :cond_11
    invoke-virtual {v1}, Lcom/android/internal/telephony/RestrictedState;->isCsRestricted()Z

    move-result v3

    if-eqz v3, :cond_12

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setNotification(I)V

    goto/16 :goto_5

    :cond_12
    invoke-virtual {v1}, Lcom/android/internal/telephony/RestrictedState;->isOnlyCsEmergencyRestricted()Z

    move-result v3

    if-eqz v3, :cond_8

    const/16 v3, 0x3ee

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setNotification(I)V

    goto/16 :goto_5

    :cond_13
    invoke-virtual {v1}, Lcom/android/internal/telephony/RestrictedState;->isCsRestricted()Z

    move-result v3

    if-eqz v3, :cond_14

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setNotification(I)V

    goto/16 :goto_5

    :cond_14
    invoke-virtual {v1}, Lcom/android/internal/telephony/RestrictedState;->isCsEmergencyRestricted()Z

    move-result v3

    if-eqz v3, :cond_15

    const/16 v3, 0x3ee

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setNotification(I)V

    goto/16 :goto_5

    :cond_15
    invoke-virtual {v1}, Lcom/android/internal/telephony/RestrictedState;->isCsNormalRestricted()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setNotification(I)V

    goto/16 :goto_5
.end method

.method private onSignalStrengthResult(Landroid/os/AsyncResult;)V
    .locals 20
    .parameter "ar"

    .prologue
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    move-object/from16 v19, v0

    .local v19, oldSignalStrength:Landroid/telephony/SignalStrength;
    const/16 v2, 0x63

    .local v2, rssi:I
    const/4 v9, -0x1

    .local v9, lteSignalStrength:I
    const/4 v10, -0x1

    .local v10, lteRsrp:I
    const/4 v11, -0x1

    .local v11, lteRsrq:I
    const v12, 0x7fffffff

    .local v12, lteRssnr:I
    const/4 v13, -0x1

    .local v13, lteCqi:I
    const/4 v15, -0x1

    .local v15, rscp:I
    const/16 v16, -0x1

    .local v16, ecio:I
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_2

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setSignalStrengthDefaultValues()V

    :cond_0
    :goto_0
    new-instance v1, Landroid/telephony/SignalStrength;

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/4 v14, 0x1

    invoke-direct/range {v1 .. v16}, Landroid/telephony/SignalStrength;-><init>(IIIIIIIIIIIIZII)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    move-object/from16 v0, v19

    invoke-virtual {v1, v0}, Landroid/telephony/SignalStrength;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifySignalStrength()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    return-void

    :cond_2
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [I

    move-object/from16 v18, v1

    check-cast v18, [I

    .local v18, ints:[I
    move-object/from16 v0, v18

    array-length v1, v0

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    aget v2, v18, v1

    const/4 v1, 0x7

    aget v9, v18, v1

    const/16 v1, 0x8

    aget v10, v18, v1

    const/16 v1, 0x9

    aget v11, v18, v1

    const/16 v1, 0xa

    aget v12, v18, v1

    const/16 v1, 0xb

    aget v13, v18, v1

    move-object/from16 v0, v18

    array-length v1, v0

    const/16 v3, 0xe

    if-lt v1, v3, :cond_0

    const/16 v1, 0xc

    aget v15, v18, v1

    const/16 v1, 0xd

    aget v16, v18, v1

    goto :goto_0

    :cond_3
    const-string v1, "Bogus signal strength response"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->loge(Ljava/lang/String;)V

    const/16 v2, 0x63

    goto :goto_0

    .end local v18           #ints:[I
    :catch_0
    move-exception v17

    .local v17, ex:Ljava/lang/NullPointerException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSignalStrengthResult() Phone already destroyed: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, v17

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "SignalStrength not notified"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private pollState()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->pollingContext:[I

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->pollingContext:[I

    aput v3, v0, v3

    sget-object v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$4;->$SwitchMap$com$android$internal$telephony$CommandsInterface$RadioState:[I

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->pollingContext:[I

    aget v1, v0, v3

    add-int/lit8 v1, v1, 0x1

    aput v1, v0, v3

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->pollingContext:[I

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getOperator(Landroid/os/Message;)V

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->pollingContext:[I

    aget v1, v0, v3

    add-int/lit8 v1, v1, 0x1

    aput v1, v0, v3

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->pollingContext:[I

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getDataRegistrationState(Landroid/os/Message;)V

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->pollingContext:[I

    aget v1, v0, v3

    add-int/lit8 v1, v1, 0x1

    aput v1, v0, v3

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->pollingContext:[I

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getVoiceRegistrationState(Landroid/os/Message;)V

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->pollingContext:[I

    aget v1, v0, v3

    add-int/lit8 v1, v1, 0x1

    aput v1, v0, v3

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0xe

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->pollingContext:[I

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getNetworkSelectionMode(Landroid/os/Message;)V

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->setStateOutOfService()V

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    invoke-virtual {v0}, Landroid/telephony/gsm/GsmCellLocation;->setStateInvalid()V

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setSignalStrengthDefaultValues()V

    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mGotCountryCode:Z

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->pollStateDone()V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->setStateOff()V

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    invoke-virtual {v0}, Landroid/telephony/gsm/GsmCellLocation;->setStateInvalid()V

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setSignalStrengthDefaultValues()V

    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mGotCountryCode:Z

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->pollStateDone()V

    goto :goto_0

    :pswitch_2
    const-string v0, "Radio Technology Change ongoing, setting SS to off"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->setStateOff()V

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    invoke-virtual {v0}, Landroid/telephony/gsm/GsmCellLocation;->setStateInvalid()V

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setSignalStrengthDefaultValues()V

    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mGotCountryCode:Z

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private pollStateDone()V
    .locals 31

    .prologue
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Poll ServiceState done:  oldSS=["

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "] newSS=["

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "] oldGprs="

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->gprsState:I

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " newData="

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newGPRSState:I

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " oldMaxDataCalls="

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mMaxDataCalls:I

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " mNewMaxDataCalls="

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewMaxDataCalls:I

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " oldReasonDataDenied="

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mReasonDataDenied:I

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " mNewReasonDataDenied="

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewReasonDataDenied:I

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " oldType="

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRadioTechnology:I

    move/from16 v28, v0

    invoke-static/range {v28 .. v28}, Landroid/telephony/ServiceState;->radioTechnologyToString(I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " newType="

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewRadioTechnology:I

    move/from16 v28, v0

    invoke-static/range {v28 .. v28}, Landroid/telephony/ServiceState;->radioTechnologyToString(I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/telephony/ServiceState;->getState()I

    move-result v27

    if-eqz v27, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/telephony/ServiceState;->getState()I

    move-result v27

    if-nez v27, :cond_10

    const/4 v14, 0x1

    .local v14, hasRegistered:Z
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/telephony/ServiceState;->getState()I

    move-result v27

    if-nez v27, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/telephony/ServiceState;->getState()I

    move-result v27

    if-eqz v27, :cond_11

    const/4 v9, 0x1

    .local v9, hasDeregistered:Z
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->gprsState:I

    move/from16 v27, v0

    if-eqz v27, :cond_12

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newGPRSState:I

    move/from16 v27, v0

    if-nez v27, :cond_12

    const/4 v10, 0x1

    .local v10, hasGprsAttached:Z
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->gprsState:I

    move/from16 v27, v0

    if-nez v27, :cond_13

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newGPRSState:I

    move/from16 v27, v0

    if-eqz v27, :cond_13

    const/4 v11, 0x1

    .local v11, hasGprsDetached:Z
    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRadioTechnology:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewRadioTechnology:I

    move/from16 v28, v0

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_14

    const/4 v13, 0x1

    .local v13, hasRadioTechnologyChanged:Z
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Landroid/telephony/ServiceState;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-nez v27, :cond_15

    const/4 v8, 0x1

    .local v8, hasChanged:Z
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v27

    if-nez v27, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v27

    if-eqz v27, :cond_16

    const/16 v16, 0x1

    .local v16, hasRoamingOn:Z
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v27

    if-eqz v27, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v27

    if-nez v27, :cond_17

    const/4 v15, 0x1

    .local v15, hasRoamingOff:Z
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cellLoc:Landroid/telephony/gsm/GsmCellLocation;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Landroid/telephony/gsm/GsmCellLocation;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-nez v27, :cond_18

    const/4 v12, 0x1

    .local v12, hasLocationChanged:Z
    :goto_8
    const/16 v17, 0x0

    .local v17, hasSpnUpdated:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/telephony/ServiceState;->getState()I

    move-result v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/telephony/ServiceState;->getState()I

    move-result v28

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->gprsState:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newGPRSState:I

    move/from16 v28, v0

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_1

    :cond_0
    const v27, 0xc3c2

    const/16 v28, 0x4

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/telephony/ServiceState;->getState()I

    move-result v30

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    aput-object v30, v28, v29

    const/16 v29, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->gprsState:I

    move/from16 v30, v0

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    aput-object v30, v28, v29

    const/16 v29, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/telephony/ServiceState;->getState()I

    move-result v30

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    aput-object v30, v28, v29

    const/16 v29, 0x3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newGPRSState:I

    move/from16 v30, v0

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    aput-object v30, v28, v29

    invoke-static/range {v27 .. v28}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    move-object/from16 v22, v0

    .local v22, tss:Landroid/telephony/ServiceState;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/telephony/ServiceState;->setStateOutOfService()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cellLoc:Landroid/telephony/gsm/GsmCellLocation;

    move-object/from16 v21, v0

    .local v21, tcl:Landroid/telephony/gsm/GsmCellLocation;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cellLoc:Landroid/telephony/gsm/GsmCellLocation;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    if-eqz v13, :cond_3

    const/4 v6, -0x1

    .local v6, cid:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/internal/telephony/gsm/GSMPhone;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v19

    check-cast v19, Landroid/telephony/gsm/GsmCellLocation;

    .local v19, loc:Landroid/telephony/gsm/GsmCellLocation;
    if-eqz v19, :cond_2

    invoke-virtual/range {v19 .. v19}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v6

    :cond_2
    const v27, 0xc3c0

    const/16 v28, 0x3

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    aput-object v30, v28, v29

    const/16 v29, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRadioTechnology:I

    move/from16 v30, v0

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    aput-object v30, v28, v29

    const/16 v29, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewRadioTechnology:I

    move/from16 v30, v0

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    aput-object v30, v28, v29

    invoke-static/range {v27 .. v28}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "RAT switched "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRadioTechnology:I

    move/from16 v28, v0

    invoke-static/range {v28 .. v28}, Landroid/telephony/ServiceState;->radioTechnologyToString(I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " -> "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewRadioTechnology:I

    move/from16 v28, v0

    invoke-static/range {v28 .. v28}, Landroid/telephony/ServiceState;->radioTechnologyToString(I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " at cell "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .end local v6           #cid:I
    .end local v19           #loc:Landroid/telephony/gsm/GsmCellLocation;
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newGPRSState:I

    move/from16 v27, v0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->gprsState:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewReasonDataDenied:I

    move/from16 v27, v0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mReasonDataDenied:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewMaxDataCalls:I

    move/from16 v27, v0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mMaxDataCalls:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewRadioTechnology:I

    move/from16 v27, v0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRadioTechnology:I

    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewRadioTechnology:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/telephony/ServiceState;->setStateOutOfService()V

    if-eqz v13, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v27, v0

    const-string v28, "gsm.network.type"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRadioTechnology:I

    move/from16 v29, v0

    invoke-static/range {v29 .. v29}, Landroid/telephony/ServiceState;->radioTechnologyToString(I)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v27 .. v29}, Lcom/android/internal/telephony/gsm/GSMPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    if-eqz v14, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNetworkAttachedRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/os/RegistrantList;->notifyRegistrants()V

    :cond_5
    if-eqz v12, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyLocationChanged()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->checkEonsAndUpdateSpnDisplay()V

    const/16 v17, 0x1

    :cond_6
    if-eqz v8, :cond_9

    if-nez v17, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->checkEonsAndUpdateSpnDisplay()V

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v27, v0

    const-string v28, "gsm.operator.alpha"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v27 .. v29}, Lcom/android/internal/telephony/gsm/GSMPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v20

    .local v20, operatorNumeric:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v27, v0

    const-string v28, "gsm.operator.numeric"

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v20, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v27, v0

    const-string v28, "gsm.operator.iso-country"

    const-string v29, ""

    invoke-virtual/range {v27 .. v29}, Lcom/android/internal/telephony/gsm/GSMPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mGotCountryCode:Z

    :cond_8
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v28, v0

    const-string v29, "gsm.operator.isroaming"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v27

    if-eqz v27, :cond_1e

    const-string v27, "true"

    :goto_a
    move-object/from16 v0, v28

    move-object/from16 v1, v29

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyServiceStateChanged(Landroid/telephony/ServiceState;)V

    .end local v20           #operatorNumeric:Ljava/lang/String;
    :cond_9
    if-eqz v10, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mAttachedRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/os/RegistrantList;->notifyRegistrants()V

    :cond_a
    if-eqz v11, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mDetachedRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/os/RegistrantList;->notifyRegistrants()V

    :cond_b
    if-eqz v13, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v27, v0

    const-string v28, "nwTypeChanged"

    invoke-virtual/range {v27 .. v28}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyDataConnection(Ljava/lang/String;)V

    :cond_c
    if-eqz v16, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRoamingOnRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/os/RegistrantList;->notifyRegistrants()V

    :cond_d
    if-eqz v15, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRoamingOffRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/os/RegistrantList;->notifyRegistrants()V

    :cond_e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->gprsState:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/telephony/ServiceState;->getState()I

    move-result v28

    move-object/from16 v0, p0

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->isGprsConsistent(II)Z

    move-result v27

    if-nez v27, :cond_1f

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mStartedGprsRegCheck:Z

    move/from16 v27, v0

    if-nez v27, :cond_f

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mReportedGprsNoReg:Z

    move/from16 v27, v0

    if-nez v27, :cond_f

    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mStartedGprsRegCheck:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v27

    const-string v28, "gprs_register_check_period_ms"

    const v29, 0xea60

    invoke-static/range {v27 .. v29}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .local v5, check_period:I
    const/16 v27, 0x16

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v27

    int-to-long v0, v5

    move-wide/from16 v28, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-wide/from16 v2, v28

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->sendMessageDelayed(Landroid/os/Message;J)Z

    .end local v5           #check_period:I
    :cond_f
    :goto_b
    return-void

    .end local v8           #hasChanged:Z
    .end local v9           #hasDeregistered:Z
    .end local v10           #hasGprsAttached:Z
    .end local v11           #hasGprsDetached:Z
    .end local v12           #hasLocationChanged:Z
    .end local v13           #hasRadioTechnologyChanged:Z
    .end local v14           #hasRegistered:Z
    .end local v15           #hasRoamingOff:Z
    .end local v16           #hasRoamingOn:Z
    .end local v17           #hasSpnUpdated:Z
    .end local v21           #tcl:Landroid/telephony/gsm/GsmCellLocation;
    .end local v22           #tss:Landroid/telephony/ServiceState;
    :cond_10
    const/4 v14, 0x0

    goto/16 :goto_0

    .restart local v14       #hasRegistered:Z
    :cond_11
    const/4 v9, 0x0

    goto/16 :goto_1

    .restart local v9       #hasDeregistered:Z
    :cond_12
    const/4 v10, 0x0

    goto/16 :goto_2

    .restart local v10       #hasGprsAttached:Z
    :cond_13
    const/4 v11, 0x0

    goto/16 :goto_3

    .restart local v11       #hasGprsDetached:Z
    :cond_14
    const/4 v13, 0x0

    goto/16 :goto_4

    .restart local v13       #hasRadioTechnologyChanged:Z
    :cond_15
    const/4 v8, 0x0

    goto/16 :goto_5

    .restart local v8       #hasChanged:Z
    :cond_16
    const/16 v16, 0x0

    goto/16 :goto_6

    .restart local v16       #hasRoamingOn:Z
    :cond_17
    const/4 v15, 0x0

    goto/16 :goto_7

    .restart local v15       #hasRoamingOff:Z
    :cond_18
    const/4 v12, 0x0

    goto/16 :goto_8

    .restart local v12       #hasLocationChanged:Z
    .restart local v17       #hasSpnUpdated:Z
    .restart local v20       #operatorNumeric:Ljava/lang/String;
    .restart local v21       #tcl:Landroid/telephony/gsm/GsmCellLocation;
    .restart local v22       #tss:Landroid/telephony/ServiceState;
    :cond_19
    const-string v18, ""

    .local v18, iso:Ljava/lang/String;
    const/16 v27, 0x0

    const/16 v28, 0x3

    :try_start_0
    move-object/from16 v0, v20

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v27

    invoke-static/range {v27 .. v27}, Lcom/android/internal/telephony/MccTable;->countryCodeForMcc(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v18

    :goto_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v27, v0

    const-string v28, "gsm.operator.iso-country"

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mGotCountryCode:Z

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNeedFixZone:Z

    move/from16 v27, v0

    if-eqz v27, :cond_8

    const/16 v25, 0x0

    .local v25, zone:Ljava/util/TimeZone;
    const-string v27, "persist.sys.timezone"

    invoke-static/range {v27 .. v27}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .local v26, zoneName:Ljava/lang/String;
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v27

    if-eqz v27, :cond_1c

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mZoneOffset:I

    move/from16 v27, v0

    if-nez v27, :cond_1c

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mZoneDst:Z

    move/from16 v27, v0

    if-nez v27, :cond_1c

    if-eqz v26, :cond_1c

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->length()I

    move-result v27

    if-lez v27, :cond_1c

    sget-object v27, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->GMT_COUNTRY_CODES:[Ljava/lang/String;

    move-object/from16 v0, v27

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v27

    if-gez v27, :cond_1c

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v25

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v27

    move-object/from16 v0, v25

    move-wide/from16 v1, v27

    invoke-virtual {v0, v1, v2}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v27

    move/from16 v0, v27

    int-to-long v0, v0

    move-wide/from16 v23, v0

    .local v23, tzOffset:J
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getAutoTime()Z

    move-result v27

    if-eqz v27, :cond_1b

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v27

    sub-long v27, v27, v23

    move-object/from16 v0, p0

    move-wide/from16 v1, v27

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setAndBroadcastNetworkSetTime(J)V

    .end local v23           #tzOffset:J
    :goto_d
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNeedFixZone:Z

    if-eqz v25, :cond_8

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getAutoTimeZone()Z

    move-result v27

    if-eqz v27, :cond_1a

    invoke-virtual/range {v25 .. v25}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setAndBroadcastNetworkSetTimeZone(Ljava/lang/String;)V

    :cond_1a
    invoke-virtual/range {v25 .. v25}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->saveNitzTimeZone(Ljava/lang/String;)V

    goto/16 :goto_9

    .end local v25           #zone:Ljava/util/TimeZone;
    .end local v26           #zoneName:Ljava/lang/String;
    :catch_0
    move-exception v7

    .local v7, ex:Ljava/lang/NumberFormatException;
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "countryCodeForMcc error"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->loge(Ljava/lang/String;)V

    goto/16 :goto_c

    .end local v7           #ex:Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v7

    .local v7, ex:Ljava/lang/StringIndexOutOfBoundsException;
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "countryCodeForMcc error"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->loge(Ljava/lang/String;)V

    goto/16 :goto_c

    .end local v7           #ex:Ljava/lang/StringIndexOutOfBoundsException;
    .restart local v23       #tzOffset:J
    .restart local v25       #zone:Ljava/util/TimeZone;
    .restart local v26       #zoneName:Ljava/lang/String;
    :cond_1b
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSavedTime:J

    move-wide/from16 v27, v0

    sub-long v27, v27, v23

    move-wide/from16 v0, v27

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSavedTime:J

    goto :goto_d

    .end local v23           #tzOffset:J
    :cond_1c
    const-string v27, ""

    move-object/from16 v0, v18

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_1d

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mZoneOffset:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mZoneDst:Z

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mZoneTime:J

    move-wide/from16 v29, v0

    move-object/from16 v0, p0

    move/from16 v1, v27

    move/from16 v2, v28

    move-wide/from16 v3, v29

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getNitzTimeZone(IZJ)Ljava/util/TimeZone;

    move-result-object v25

    goto/16 :goto_d

    :cond_1d
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mZoneOffset:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mZoneDst:Z

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mZoneTime:J

    move-wide/from16 v29, v0

    move/from16 v0, v27

    move/from16 v1, v28

    move-wide/from16 v2, v29

    move-object/from16 v4, v18

    invoke-static {v0, v1, v2, v3, v4}, Landroid/util/TimeUtils;->getTimeZone(IZJLjava/lang/String;)Ljava/util/TimeZone;

    move-result-object v25

    goto/16 :goto_d

    .end local v18           #iso:Ljava/lang/String;
    .end local v25           #zone:Ljava/util/TimeZone;
    .end local v26           #zoneName:Ljava/lang/String;
    :cond_1e
    const-string v27, "false"

    goto/16 :goto_a

    .end local v20           #operatorNumeric:Ljava/lang/String;
    :cond_1f
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mReportedGprsNoReg:Z

    goto/16 :goto_b
.end method

.method private processIccRecordEvents(I)V
    .locals 0
    .parameter "eventCode"

    .prologue
    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->updateSpnDisplay()V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->checkEonsAndUpdateSpnDisplay()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private queueNextSignalStrengthPoll()V
    .locals 3

    .prologue
    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->dontPollSignalStrength:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isCdma()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .local v0, msg:Landroid/os/Message;
    const/16 v1, 0xa

    iput v1, v0, Landroid/os/Message;->what:I

    const-wide/16 v1, 0x4e20

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method private regCodeIsRoaming(I)Z
    .locals 1
    .parameter "code"

    .prologue
    const/4 v0, 0x5

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private regCodeToServiceState(I)I
    .locals 3
    .parameter "code"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "regCodeToServiceState: unexpected service state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->loge(Ljava/lang/String;)V

    :goto_0
    :pswitch_1
    return v0

    :pswitch_2
    move v0, v1

    goto :goto_0

    :pswitch_3
    move v0, v1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private revertToNitzTime()V
    .locals 6

    .prologue
    const-wide/16 v3, 0x0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "auto_time"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Reverting to NITZ Time: mSavedTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSavedTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mSavedAtTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSavedAtTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSavedTime:J

    cmp-long v0, v0, v3

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSavedAtTime:J

    cmp-long v0, v0, v3

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSavedTime:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSavedAtTime:J

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setAndBroadcastNetworkSetTime(J)V

    goto :goto_0
.end method

.method private revertToNitzTimeZone()V
    .locals 3

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "auto_time_zone"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Reverting to NITZ TimeZone: tz=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSavedTimeZone:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSavedTimeZone:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSavedTimeZone:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setAndBroadcastNetworkSetTimeZone(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private saveNitzTime(J)V
    .locals 2
    .parameter "time"

    .prologue
    iput-wide p1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSavedTime:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSavedAtTime:J

    return-void
.end method

.method private saveNitzTimeZone(Ljava/lang/String;)V
    .locals 0
    .parameter "zoneId"

    .prologue
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSavedTimeZone:Ljava/lang/String;

    return-void
.end method

.method private setAndBroadcastNetworkSetTime(J)V
    .locals 2
    .parameter "time"

    .prologue
    invoke-static {p1, p2}, Landroid/os/SystemClock;->setCurrentTimeMillis(J)Z

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.NETWORK_SET_TIME"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "time"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private setAndBroadcastNetworkSetTimeZone(Ljava/lang/String;)V
    .locals 4
    .parameter "zoneId"

    .prologue
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "alarm"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .local v0, alarm:Landroid/app/AlarmManager;
    invoke-virtual {v0, p1}, Landroid/app/AlarmManager;->setTimeZone(Ljava/lang/String;)V

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.NETWORK_SET_TIMEZONE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v1, intent:Landroid/content/Intent;
    const/high16 v2, 0x2000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v2, "time-zone"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private setNotification(I)V
    .locals 9
    .parameter "notifyType"

    .prologue
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setNotification: create notification "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    .local v0, context:Landroid/content/Context;
    new-instance v6, Landroid/app/Notification;

    invoke-direct {v6}, Landroid/app/Notification;-><init>()V

    iput-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNotification:Landroid/app/Notification;

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNotification:Landroid/app/Notification;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iput-wide v7, v6, Landroid/app/Notification;->when:J

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNotification:Landroid/app/Notification;

    const/16 v7, 0x10

    iput v7, v6, Landroid/app/Notification;->flags:I

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNotification:Landroid/app/Notification;

    const v7, 0x108008a

    iput v7, v6, Landroid/app/Notification;->icon:I

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .local v2, intent:Landroid/content/Intent;
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNotification:Landroid/app/Notification;

    const/4 v7, 0x0

    const/high16 v8, 0x1000

    invoke-static {v0, v7, v2, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    iput-object v7, v6, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    const-string v1, ""

    .local v1, details:Ljava/lang/CharSequence;
    const v6, 0x1040135

    invoke-virtual {v0, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    .local v5, title:Ljava/lang/CharSequence;
    const/16 v3, 0x3e7

    .local v3, notificationId:I
    packed-switch p1, :pswitch_data_0

    :goto_0
    :pswitch_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setNotification: put notification "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " / "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNotification:Landroid/app/Notification;

    iput-object v5, v6, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNotification:Landroid/app/Notification;

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNotification:Landroid/app/Notification;

    iget-object v7, v7, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    invoke-virtual {v6, v0, v5, v1, v7}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    const-string v6, "notification"

    invoke-virtual {v0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationManager;

    .local v4, notificationManager:Landroid/app/NotificationManager;
    const/16 v6, 0x3ea

    if-eq p1, v6, :cond_0

    const/16 v6, 0x3ec

    if-ne p1, v6, :cond_1

    :cond_0
    invoke-virtual {v4, v3}, Landroid/app/NotificationManager;->cancel(I)V

    :goto_1
    return-void

    .end local v4           #notificationManager:Landroid/app/NotificationManager;
    :pswitch_1
    const/16 v3, 0x378

    const v6, 0x1040136

    invoke-virtual {v0, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_0

    :pswitch_2
    const/16 v3, 0x378

    goto :goto_0

    :pswitch_3
    const v6, 0x1040139

    invoke-virtual {v0, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_0

    :pswitch_4
    const v6, 0x1040138

    invoke-virtual {v0, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_0

    :pswitch_5
    const v6, 0x1040137

    invoke-virtual {v0, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_0

    .restart local v4       #notificationManager:Landroid/app/NotificationManager;
    :cond_1
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNotification:Landroid/app/Notification;

    invoke-virtual {v4, v3, v6}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private setSignalStrengthDefaultValues()V
    .locals 17

    .prologue
    new-instance v1, Landroid/telephony/SignalStrength;

    const/16 v2, 0x63

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/4 v9, -0x1

    const/4 v10, -0x1

    const/4 v11, -0x1

    const v12, 0x7fffffff

    const/4 v13, -0x1

    const/4 v14, 0x1

    const/4 v15, -0x1

    const/16 v16, -0x1

    invoke-direct/range {v1 .. v16}, Landroid/telephony/SignalStrength;-><init>(IIIIIIIIIIIIZII)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    return-void
.end method

.method private setTimeFromNITZString(Ljava/lang/String;J)V
    .locals 30
    .parameter "nitz"
    .parameter "nitzReceiveTime"

    .prologue
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v19

    .local v19, start:J
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "NITZ: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ","

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-wide/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " start="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-wide/from16 v1, v19

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " delay="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    sub-long v26, v19, p2

    invoke-virtual/range {v25 .. v27}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    :try_start_0
    const-string v25, "GMT"

    invoke-static/range {v25 .. v25}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v5

    .local v5, c:Ljava/util/Calendar;
    invoke-virtual {v5}, Ljava/util/Calendar;->clear()V

    const/16 v25, 0x10

    const/16 v26, 0x0

    move/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v5, v0, v1}, Ljava/util/Calendar;->set(II)V

    const-string v25, "[/:,+-]"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    .local v16, nitzSubs:[Ljava/lang/String;
    const/16 v25, 0x0

    aget-object v25, v16, v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v25

    move/from16 v0, v25

    add-int/lit16 v0, v0, 0x7d0

    move/from16 v23, v0

    .local v23, year:I
    const/16 v25, 0x1

    move/from16 v0, v25

    move/from16 v1, v23

    invoke-virtual {v5, v0, v1}, Ljava/util/Calendar;->set(II)V

    const/16 v25, 0x1

    aget-object v25, v16, v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v25

    add-int/lit8 v15, v25, -0x1

    .local v15, month:I
    const/16 v25, 0x2

    move/from16 v0, v25

    invoke-virtual {v5, v0, v15}, Ljava/util/Calendar;->set(II)V

    const/16 v25, 0x2

    aget-object v25, v16, v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .local v6, date:I
    const/16 v25, 0x5

    move/from16 v0, v25

    invoke-virtual {v5, v0, v6}, Ljava/util/Calendar;->set(II)V

    const/16 v25, 0x3

    aget-object v25, v16, v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .local v9, hour:I
    const/16 v25, 0xa

    move/from16 v0, v25

    invoke-virtual {v5, v0, v9}, Ljava/util/Calendar;->set(II)V

    const/16 v25, 0x4

    aget-object v25, v16, v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    .local v14, minute:I
    const/16 v25, 0xc

    move/from16 v0, v25

    invoke-virtual {v5, v0, v14}, Ljava/util/Calendar;->set(II)V

    const/16 v25, 0x5

    aget-object v25, v16, v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    .local v17, second:I
    const/16 v25, 0xd

    move/from16 v0, v25

    move/from16 v1, v17

    invoke-virtual {v5, v0, v1}, Ljava/util/Calendar;->set(II)V

    const/16 v25, 0x2d

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v25

    const/16 v26, -0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_5

    const/16 v18, 0x1

    .local v18, sign:Z
    :goto_0
    const/16 v25, 0x6

    aget-object v25, v16, v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    .local v21, tzOffset:I
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v25, v0

    const/16 v26, 0x8

    move/from16 v0, v25

    move/from16 v1, v26

    if-lt v0, v1, :cond_6

    const/16 v25, 0x7

    aget-object v25, v16, v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .local v7, dst:I
    :goto_1
    if-eqz v18, :cond_7

    const/16 v25, 0x1

    :goto_2
    mul-int v25, v25, v21

    mul-int/lit8 v25, v25, 0xf

    mul-int/lit8 v25, v25, 0x3c

    move/from16 v0, v25

    mul-int/lit16 v0, v0, 0x3e8

    move/from16 v21, v0

    const/16 v24, 0x0

    .local v24, zone:Ljava/util/TimeZone;
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v25, v0

    const/16 v26, 0x9

    move/from16 v0, v25

    move/from16 v1, v26

    if-lt v0, v1, :cond_0

    const/16 v25, 0x8

    aget-object v25, v16, v25

    const/16 v26, 0x21

    const/16 v27, 0x2f

    invoke-virtual/range {v25 .. v27}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v22

    .local v22, tzname:Ljava/lang/String;
    invoke-static/range {v22 .. v22}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v24

    .end local v22           #tzname:Ljava/lang/String;
    :cond_0
    const-string v25, "gsm.operator.iso-country"

    invoke-static/range {v25 .. v25}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .local v11, iso:Ljava/lang/String;
    if-nez v24, :cond_1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mGotCountryCode:Z

    move/from16 v25, v0

    if-eqz v25, :cond_1

    if-eqz v11, :cond_9

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v25

    if-lez v25, :cond_9

    if-eqz v7, :cond_8

    const/16 v25, 0x1

    :goto_3
    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v26

    move/from16 v0, v21

    move/from16 v1, v25

    move-wide/from16 v2, v26

    invoke-static {v0, v1, v2, v3, v11}, Landroid/util/TimeUtils;->getTimeZone(IZJLjava/lang/String;)Ljava/util/TimeZone;

    move-result-object v24

    :cond_1
    :goto_4
    if-nez v24, :cond_2

    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNeedFixZone:Z

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mZoneOffset:I

    if-eqz v7, :cond_b

    const/16 v25, 0x1

    :goto_5
    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mZoneDst:Z

    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v25

    move-wide/from16 v0, v25

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mZoneTime:J

    :cond_2
    if-eqz v24, :cond_4

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getAutoTimeZone()Z

    move-result v25

    if-eqz v25, :cond_3

    invoke-virtual/range {v24 .. v24}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setAndBroadcastNetworkSetTimeZone(Ljava/lang/String;)V

    :cond_3
    invoke-virtual/range {v24 .. v24}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->saveNitzTimeZone(Ljava/lang/String;)V

    :cond_4
    const-string v25, "gsm.ignore-nitz"

    invoke-static/range {v25 .. v25}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .local v10, ignore:Ljava/lang/String;
    if-eqz v10, :cond_c

    const-string v25, "yes"

    move-object/from16 v0, v25

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_c

    const-string v25, "NITZ: Not setting clock because gsm.ignore-nitz is set"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .end local v5           #c:Ljava/util/Calendar;
    .end local v6           #date:I
    .end local v7           #dst:I
    .end local v9           #hour:I
    .end local v10           #ignore:Ljava/lang/String;
    .end local v11           #iso:Ljava/lang/String;
    .end local v14           #minute:I
    .end local v15           #month:I
    .end local v16           #nitzSubs:[Ljava/lang/String;
    .end local v17           #second:I
    .end local v18           #sign:Z
    .end local v21           #tzOffset:I
    .end local v23           #year:I
    .end local v24           #zone:Ljava/util/TimeZone;
    :goto_6
    return-void

    .restart local v5       #c:Ljava/util/Calendar;
    .restart local v6       #date:I
    .restart local v9       #hour:I
    .restart local v14       #minute:I
    .restart local v15       #month:I
    .restart local v16       #nitzSubs:[Ljava/lang/String;
    .restart local v17       #second:I
    .restart local v23       #year:I
    :cond_5
    const/16 v18, 0x0

    goto/16 :goto_0

    .restart local v18       #sign:Z
    .restart local v21       #tzOffset:I
    :cond_6
    const/4 v7, 0x0

    goto/16 :goto_1

    .restart local v7       #dst:I
    :cond_7
    const/16 v25, -0x1

    goto/16 :goto_2

    .restart local v11       #iso:Ljava/lang/String;
    .restart local v24       #zone:Ljava/util/TimeZone;
    :cond_8
    const/16 v25, 0x0

    goto :goto_3

    :cond_9
    if-eqz v7, :cond_a

    const/16 v25, 0x1

    :goto_7
    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v26

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v25

    move-wide/from16 v3, v26

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getNitzTimeZone(IZJ)Ljava/util/TimeZone;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v24

    goto/16 :goto_4

    :cond_a
    const/16 v25, 0x0

    goto :goto_7

    :cond_b
    const/16 v25, 0x0

    goto :goto_5

    .restart local v10       #ignore:Ljava/lang/String;
    :cond_c
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/os/PowerManager$WakeLock;->acquire()V

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getAutoTime()Z

    move-result v25

    if-eqz v25, :cond_f

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v25

    sub-long v12, v25, p2

    .local v12, millisSinceNitzReceived:J
    const-wide/16 v25, 0x0

    cmp-long v25, v12, v25

    if-gez v25, :cond_d

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "NITZ: not setting time, clock has rolled backwards since NITZ time was received, "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_6

    .end local v5           #c:Ljava/util/Calendar;
    .end local v6           #date:I
    .end local v7           #dst:I
    .end local v9           #hour:I
    .end local v10           #ignore:Ljava/lang/String;
    .end local v11           #iso:Ljava/lang/String;
    .end local v12           #millisSinceNitzReceived:J
    .end local v14           #minute:I
    .end local v15           #month:I
    .end local v16           #nitzSubs:[Ljava/lang/String;
    .end local v17           #second:I
    .end local v18           #sign:Z
    .end local v21           #tzOffset:I
    .end local v23           #year:I
    .end local v24           #zone:Ljava/util/TimeZone;
    :catch_0
    move-exception v8

    .local v8, ex:Ljava/lang/RuntimeException;
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "NITZ: Parsing NITZ time "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " ex="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->loge(Ljava/lang/String;)V

    goto/16 :goto_6

    .end local v8           #ex:Ljava/lang/RuntimeException;
    .restart local v5       #c:Ljava/util/Calendar;
    .restart local v6       #date:I
    .restart local v7       #dst:I
    .restart local v9       #hour:I
    .restart local v10       #ignore:Ljava/lang/String;
    .restart local v11       #iso:Ljava/lang/String;
    .restart local v12       #millisSinceNitzReceived:J
    .restart local v14       #minute:I
    .restart local v15       #month:I
    .restart local v16       #nitzSubs:[Ljava/lang/String;
    .restart local v17       #second:I
    .restart local v18       #sign:Z
    .restart local v21       #tzOffset:I
    .restart local v23       #year:I
    .restart local v24       #zone:Ljava/util/TimeZone;
    :cond_d
    const-wide/32 v25, 0x7fffffff

    cmp-long v25, v12, v25

    if-lez v25, :cond_e

    :try_start_3
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "NITZ: not setting time, processing has taken "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-wide/32 v26, 0x5265c00

    div-long v26, v12, v26

    invoke-virtual/range {v25 .. v27}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " days"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_6

    :cond_e
    const/16 v25, 0xe

    long-to-int v0, v12

    move/from16 v26, v0

    :try_start_5
    move/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v5, v0, v1}, Ljava/util/Calendar;->add(II)V

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "NITZ: Setting time of day to "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual {v5}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " NITZ receive delay(ms): "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " gained(ms): "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v26

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v28

    sub-long v26, v26, v28

    invoke-virtual/range {v25 .. v27}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " from "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v25

    move-object/from16 v0, p0

    move-wide/from16 v1, v25

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setAndBroadcastNetworkSetTime(J)V

    const-string v25, "GSM"

    const-string v26, "NITZ: after Setting time of day"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .end local v12           #millisSinceNitzReceived:J
    :cond_f
    const-string v25, "gsm.nitz.time"

    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v26

    invoke-static/range {v26 .. v27}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v25

    move-object/from16 v0, p0

    move-wide/from16 v1, v25

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->saveNitzTime(J)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_6

    :catchall_0
    move-exception v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v25
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_0
.end method

.method private static sloge(Ljava/lang/String;)V
    .locals 3
    .parameter "s"

    .prologue
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[GsmSST] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static twoDigitsAt(Ljava/lang/String;I)I
    .locals 4
    .parameter "s"
    .parameter "offset"

    .prologue
    const/16 v3, 0xa

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2, v3}, Ljava/lang/Character;->digit(CI)I

    move-result v0

    .local v0, a:I
    add-int/lit8 v2, p1, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2, v3}, Ljava/lang/Character;->digit(CI)I

    move-result v1

    .local v1, b:I
    if-ltz v0, :cond_0

    if-gez v1, :cond_1

    :cond_0
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "invalid format"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    mul-int/lit8 v2, v0, 0xa

    add-int/2addr v2, v1

    return v2
.end method

.method private updateNetworkStatusDisplay(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;)Z
    .locals 5
    .parameter "plmn"
    .parameter "spn"
    .parameter "showPlmn"
    .parameter "showSpn"

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    .local v1, isEmergencyOnly:Z
    if-eqz p1, :cond_0

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p4

    :cond_0
    const-string v2, "ro.telephony.no_emg_calls_only"

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mEmergencyOnly:Z

    if-eqz v2, :cond_1

    if-eqz p1, :cond_1

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x104034c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 p1, 0x0

    iput-boolean v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mEmergencyOnly:Z

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    iget-boolean v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mEmergencyOnly:Z

    invoke-virtual {v2, v3}, Landroid/telephony/ServiceState;->setEmergencyOnly(Z)V

    const/4 v1, 0x1

    const-string v2, "GSM"

    const-string v3, "Operator requirement: Change \'Emergency Calls Only\' to \'No Service\'."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const-string v2, "GSM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UpdateNetworkStatusDisplay send Broadcast intent SPN_STRINGS_UPDATED_ACTION: plmn = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " showPlmn = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " spn = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " showSpn = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.provider.Telephony.SPN_STRINGS_UPDATED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, intent:Landroid/content/Intent;
    const/high16 v2, 0x2000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v2, "showSpn"

    invoke-virtual {v0, v2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v2, "spn"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "showPlmn"

    invoke-virtual {v0, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v2, "plmn"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    return v1
.end method


# virtual methods
.method public checkEonsAndUpdateSpnDisplay()V
    .locals 1

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->updateEons()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->updateSpnDisplay()V

    :cond_0
    return-void
.end method

.method public dispose()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForAvailable(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForRadioStateChanged(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForVoiceNetworkStateChanged(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForSIMReady(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/IccRecords;->unregisterForRecordsLoaded(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnSignalStrengthUpdate(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnRestrictedStateChanged(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnNITZTime(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cr:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mAutoTimeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cr:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mAutoTimeZoneObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method protected finalize()V
    .locals 1

    .prologue
    const-string v0, "finalize"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    return-void
.end method

.method public getCurrentDataConnectionState()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->gprsState:I

    return v0
.end method

.method getCurrentGprsState()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->gprsState:I

    return v0
.end method

.method protected getPhone()Lcom/android/internal/telephony/Phone;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 17
    .parameter "msg"

    .prologue
    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->what:I

    packed-switch v13, :pswitch_data_0

    :pswitch_0
    invoke-super/range {p0 .. p1}, Lcom/android/internal/telephony/ServiceStateTracker;->handleMessage(Landroid/os/Message;)V

    :cond_0
    :goto_0
    :pswitch_1
    return-void

    :pswitch_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v13}, Lcom/android/internal/telephony/CommandsInterface;->setCurrentPreferredNetworkType()V

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNeedToRegForSimLoaded:Z

    if-eqz v13, :cond_1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v13, v13, Lcom/android/internal/telephony/gsm/GSMPhone;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    const/16 v14, 0x10

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v13, v0, v14, v15}, Lcom/android/internal/telephony/IccRecords;->registerForRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v13, v13, Lcom/android/internal/telephony/gsm/GSMPhone;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    const/16 v14, 0x27

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v13, v0, v14, v15}, Lcom/android/internal/telephony/IccRecords;->registerForRecordsEvents(Landroid/os/Handler;ILjava/lang/Object;)V

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNeedToRegForSimLoaded:Z

    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v13}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x111002a

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v10

    .local v10, skipRestoringSelection:Z
    if-nez v10, :cond_2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/android/internal/telephony/gsm/GSMPhone;->restoreSavedNetworkSelection(Landroid/os/Message;)V

    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->pollState()V

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->queueNextSignalStrengthPoll()V

    goto :goto_0

    .end local v10           #skipRestoringSelection:Z
    :pswitch_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setPowerStateToDesired()V

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->pollState()V

    goto :goto_0

    :pswitch_4
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->pollState()V

    goto :goto_0

    :pswitch_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v13}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v13

    if-eqz v13, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v13}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isCdma()Z

    move-result v13

    if-nez v13, :cond_0

    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .local v1, ar:Landroid/os/AsyncResult;
    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->onSignalStrengthResult(Landroid/os/AsyncResult;)V

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->queueNextSignalStrengthPoll()V

    goto/16 :goto_0

    .end local v1           #ar:Landroid/os/AsyncResult;
    :pswitch_6
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .restart local v1       #ar:Landroid/os/AsyncResult;
    iget-object v13, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v13, :cond_5

    iget-object v13, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v13, [Ljava/lang/String;

    move-object v11, v13

    check-cast v11, [Ljava/lang/String;

    .local v11, states:[Ljava/lang/String;
    const/4 v4, -0x1

    .local v4, lac:I
    const/4 v2, -0x1

    .local v2, cid:I
    array-length v13, v11

    const/4 v14, 0x3

    if-lt v13, v14, :cond_4

    const/4 v13, 0x1

    :try_start_0
    aget-object v13, v11, v13

    if-eqz v13, :cond_3

    const/4 v13, 0x1

    aget-object v13, v11, v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    if-lez v13, :cond_3

    const/4 v13, 0x1

    aget-object v13, v11, v13

    const/16 v14, 0x10

    invoke-static {v13, v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    :cond_3
    const/4 v13, 0x2

    aget-object v13, v11, v13

    if-eqz v13, :cond_4

    const/4 v13, 0x2

    aget-object v13, v11, v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    if-lez v13, :cond_4

    const/4 v13, 0x2

    aget-object v13, v11, v13

    const/16 v14, 0x10

    invoke-static {v13, v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :cond_4
    :goto_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cellLoc:Landroid/telephony/gsm/GsmCellLocation;

    invoke-virtual {v13, v4, v2}, Landroid/telephony/gsm/GsmCellLocation;->setLacAndCid(II)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v13}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyLocationChanged()V

    .end local v2           #cid:I
    .end local v4           #lac:I
    .end local v11           #states:[Ljava/lang/String;
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->disableSingleLocationUpdate()V

    goto/16 :goto_0

    .restart local v2       #cid:I
    .restart local v4       #lac:I
    .restart local v11       #states:[Ljava/lang/String;
    :catch_0
    move-exception v3

    .local v3, ex:Ljava/lang/NumberFormatException;
    const-string v13, "GSM"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "error parsing location: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .end local v1           #ar:Landroid/os/AsyncResult;
    .end local v2           #cid:I
    .end local v3           #ex:Ljava/lang/NumberFormatException;
    .end local v4           #lac:I
    .end local v11           #states:[Ljava/lang/String;
    :pswitch_7
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .restart local v1       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->what:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->handlePollStateResult(ILandroid/os/AsyncResult;)V

    goto/16 :goto_0

    .end local v1           #ar:Landroid/os/AsyncResult;
    :pswitch_8
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v14, 0x3

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v14

    invoke-interface {v13, v14}, Lcom/android/internal/telephony/CommandsInterface;->getSignalStrength(Landroid/os/Message;)V

    goto/16 :goto_0

    :pswitch_9
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .restart local v1       #ar:Landroid/os/AsyncResult;
    iget-object v13, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v13, [Ljava/lang/Object;

    check-cast v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aget-object v9, v13, v14

    check-cast v9, Ljava/lang/String;

    .local v9, nitzString:Ljava/lang/String;
    iget-object v13, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v13, [Ljava/lang/Object;

    check-cast v13, [Ljava/lang/Object;

    const/4 v14, 0x1

    aget-object v13, v13, v14

    check-cast v13, Ljava/lang/Long;

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    .local v7, nitzReceiveTime:J
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v7, v8}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setTimeFromNITZString(Ljava/lang/String;J)V

    goto/16 :goto_0

    .end local v1           #ar:Landroid/os/AsyncResult;
    .end local v7           #nitzReceiveTime:J
    .end local v9           #nitzString:Ljava/lang/String;
    :pswitch_a
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .restart local v1       #ar:Landroid/os/AsyncResult;
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->dontPollSignalStrength:Z

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->onSignalStrengthResult(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .end local v1           #ar:Landroid/os/AsyncResult;
    :pswitch_b
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .restart local v1       #ar:Landroid/os/AsyncResult;
    iget-object v13, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->processIccRecordEvents(I)V

    goto/16 :goto_0

    .end local v1           #ar:Landroid/os/AsyncResult;
    :pswitch_c
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->checkEonsAndUpdateSpnDisplay()V

    goto/16 :goto_0

    :pswitch_d
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .restart local v1       #ar:Landroid/os/AsyncResult;
    iget-object v13, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v13, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v14, 0xf

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v14

    invoke-interface {v13, v14}, Lcom/android/internal/telephony/CommandsInterface;->getVoiceRegistrationState(Landroid/os/Message;)V

    goto/16 :goto_0

    .end local v1           #ar:Landroid/os/AsyncResult;
    :pswitch_e
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .restart local v1       #ar:Landroid/os/AsyncResult;
    const/16 v13, 0x15

    iget-object v14, v1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    .local v6, message:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPreferredNetworkType:I

    invoke-interface {v13, v14, v6}, Lcom/android/internal/telephony/CommandsInterface;->setPreferredNetworkType(ILandroid/os/Message;)V

    goto/16 :goto_0

    .end local v1           #ar:Landroid/os/AsyncResult;
    .end local v6           #message:Landroid/os/Message;
    :pswitch_f
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .restart local v1       #ar:Landroid/os/AsyncResult;
    iget-object v13, v1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v13, :cond_0

    iget-object v13, v1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v13, Landroid/os/Message;

    invoke-static {v13}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v13

    iget-object v14, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    iput-object v14, v13, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    iget-object v13, v1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v13, Landroid/os/Message;

    invoke-virtual {v13}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .end local v1           #ar:Landroid/os/AsyncResult;
    :pswitch_10
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .restart local v1       #ar:Landroid/os/AsyncResult;
    iget-object v13, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v13, :cond_6

    iget-object v13, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v13, [I

    check-cast v13, [I

    const/4 v14, 0x0

    aget v13, v13, v14

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPreferredNetworkType:I

    :goto_2
    const/16 v13, 0x14

    iget-object v14, v1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    .restart local v6       #message:Landroid/os/Message;
    const/4 v12, 0x7

    .local v12, toggledNetworkType:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v13, v12, v6}, Lcom/android/internal/telephony/CommandsInterface;->setPreferredNetworkType(ILandroid/os/Message;)V

    goto/16 :goto_0

    .end local v6           #message:Landroid/os/Message;
    .end local v12           #toggledNetworkType:I
    :cond_6
    const/4 v13, 0x7

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPreferredNetworkType:I

    goto :goto_2

    .end local v1           #ar:Landroid/os/AsyncResult;
    :pswitch_11
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    if-eqz v13, :cond_7

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->gprsState:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    invoke-virtual {v14}, Landroid/telephony/ServiceState;->getState()I

    move-result v14

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->isGprsConsistent(II)Z

    move-result v13

    if-nez v13, :cond_7

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v13}, Lcom/android/internal/telephony/gsm/GSMPhone;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v5

    check-cast v5, Landroid/telephony/gsm/GsmCellLocation;

    .local v5, loc:Landroid/telephony/gsm/GsmCellLocation;
    const v14, 0xc3bb

    const/4 v13, 0x2

    new-array v15, v13, [Ljava/lang/Object;

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v15, v13

    const/16 v16, 0x1

    if-eqz v5, :cond_8

    invoke-virtual {v5}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v13

    :goto_3
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v15, v16

    invoke-static {v14, v15}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mReportedGprsNoReg:Z

    .end local v5           #loc:Landroid/telephony/gsm/GsmCellLocation;
    :cond_7
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mStartedGprsRegCheck:Z

    goto/16 :goto_0

    .restart local v5       #loc:Landroid/telephony/gsm/GsmCellLocation;
    :cond_8
    const/4 v13, -0x1

    goto :goto_3

    .end local v5           #loc:Landroid/telephony/gsm/GsmCellLocation;
    :pswitch_12
    const-string v13, "EVENT_RESTRICTED_STATE_CHANGED"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .restart local v1       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->onRestrictedStateChanged(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_1
        :pswitch_7
        :pswitch_6
        :pswitch_c
        :pswitch_2
        :pswitch_d
        :pswitch_10
        :pswitch_e
        :pswitch_f
        :pswitch_11
        :pswitch_12
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_b
    .end packed-switch
.end method

.method protected handlePollStateResult(ILandroid/os/AsyncResult;)V
    .locals 23
    .parameter "what"
    .parameter "ar"

    .prologue
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->pollingContext:[I

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-eq v0, v1, :cond_2

    const/16 v19, 0x4

    move/from16 v0, p1

    move/from16 v1, v19

    if-ne v0, v1, :cond_1

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, [Ljava/lang/String;

    move-object/from16 v17, v19

    check-cast v17, [Ljava/lang/String;

    .local v17, tempStates:[Ljava/lang/String;
    :try_start_0
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v19, v0

    const/16 v20, 0xd

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_1

    const/16 v19, 0x0

    aget-object v19, v17, v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    .local v15, tempRegState:I
    const/16 v19, 0x3

    move/from16 v0, v19

    if-eq v15, v0, :cond_0

    const/16 v19, 0xd

    move/from16 v0, v19

    if-ne v15, v0, :cond_1

    :cond_0
    const/16 v19, 0xd

    aget-object v19, v17, v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    .local v16, tempRejectCode:I
    if-eqz v16, :cond_1

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->handleNetworkRejection(I)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v15           #tempRegState:I
    .end local v16           #tempRejectCode:I
    .end local v17           #tempStates:[Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .restart local v17       #tempStates:[Ljava/lang/String;
    :catch_0
    move-exception v4

    .local v4, ex:Ljava/lang/RuntimeException;
    const-string v19, "GSM"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Exception while handling reject cause: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v4           #ex:Ljava/lang/RuntimeException;
    .end local v17           #tempStates:[Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v19, v0

    if-eqz v19, :cond_8

    const/4 v3, 0x0

    .local v3, err:Lcom/android/internal/telephony/CommandException$Error;
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    instance-of v0, v0, Lcom/android/internal/telephony/CommandException;

    move/from16 v19, v0

    if-eqz v19, :cond_3

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v19, v0

    check-cast v19, Lcom/android/internal/telephony/CommandException;

    check-cast v19, Lcom/android/internal/telephony/CommandException;

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v3

    :cond_3
    sget-object v19, Lcom/android/internal/telephony/CommandException$Error;->RADIO_NOT_AVAILABLE:Lcom/android/internal/telephony/CommandException$Error;

    move-object/from16 v0, v19

    if-ne v3, v0, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cancelPollState()V

    goto :goto_0

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v19

    if-nez v19, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cancelPollState()V

    goto :goto_0

    :cond_5
    sget-object v19, Lcom/android/internal/telephony/CommandException$Error;->OP_NOT_ALLOWED_BEFORE_REG_NW:Lcom/android/internal/telephony/CommandException$Error;

    move-object/from16 v0, v19

    if-eq v3, v0, :cond_6

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "RIL implementation has returned an error where it must succeed"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->loge(Ljava/lang/String;)V

    .end local v3           #err:Lcom/android/internal/telephony/CommandException$Error;
    :cond_6
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->pollingContext:[I

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aget v21, v19, v20

    add-int/lit8 v21, v21, -0x1

    aput v21, v19, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->pollingContext:[I

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aget v19, v19, v20

    if-nez v19, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/telephony/ServiceState;->getRadioTechnology()I

    move-result v19

    const/16 v20, 0xe

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newPSLac:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newPSCid:I

    move/from16 v21, v0

    invoke-virtual/range {v19 .. v21}, Landroid/telephony/gsm/GsmCellLocation;->setLacAndCid(II)V

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object/from16 v19, v0

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->checkRoaming()Z

    move-result v20

    invoke-virtual/range {v19 .. v20}, Landroid/telephony/ServiceState;->setRoaming(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mEmergencyOnly:Z

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/telephony/ServiceState;->setEmergencyOnly(Z)V

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->pollStateDone()V

    goto/16 :goto_0

    :cond_8
    sparse-switch p1, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    :try_start_1
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, [Ljava/lang/String;

    move-object/from16 v0, v19

    check-cast v0, [Ljava/lang/String;

    move-object v14, v0

    .local v14, states:[Ljava/lang/String;
    const/4 v7, -0x1

    .local v7, lac:I
    const/4 v2, -0x1

    .local v2, cid:I
    const/4 v12, -0x1

    .local v12, regState:I
    const/4 v11, -0x1

    .local v11, reasonRegStateDenied:I
    const/4 v10, -0x1

    .local v10, psc:I
    array-length v0, v14

    move/from16 v19, v0
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    if-lez v19, :cond_b

    const/16 v19, 0x0

    :try_start_2
    aget-object v19, v14, v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    array-length v0, v14

    move/from16 v19, v0

    const/16 v20, 0x3

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_a

    const/16 v19, 0x1

    aget-object v19, v14, v19

    if-eqz v19, :cond_9

    const/16 v19, 0x1

    aget-object v19, v14, v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v19

    if-lez v19, :cond_9

    const/16 v19, 0x1

    aget-object v19, v14, v19

    const/16 v20, 0x10

    invoke-static/range {v19 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v7

    :cond_9
    const/16 v19, 0x2

    aget-object v19, v14, v19

    if-eqz v19, :cond_a

    const/16 v19, 0x2

    aget-object v19, v14, v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v19

    if-lez v19, :cond_a

    const/16 v19, 0x2

    aget-object v19, v14, v19

    const/16 v20, 0x10

    invoke-static/range {v19 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    :cond_a
    array-length v0, v14

    move/from16 v19, v0

    const/16 v20, 0xe

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_b

    const/16 v19, 0xe

    aget-object v19, v14, v19

    if-eqz v19, :cond_b

    const/16 v19, 0xe

    aget-object v19, v14, v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v19

    if-lez v19, :cond_b

    const/16 v19, 0xe

    aget-object v19, v14, v19

    const/16 v20, 0x10

    invoke-static/range {v19 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v10

    :cond_b
    :goto_2
    :try_start_3
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->regCodeIsRoaming(I)Z

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mGsmRoaming:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->regCodeToServiceState(I)I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Landroid/telephony/ServiceState;->setState(I)V

    sparse-switch v12, :sswitch_data_1

    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mEmergencyOnly:Z

    :goto_3
    const/4 v5, 0x1

    .local v5, handleCsRejectionCode:Z
    const-string v19, "show_opname_ps_available"

    const/16 v20, 0x0

    invoke-static/range {v19 .. v20}, Landroid/customization/CustomizedValues;->getBoolean(Ljava/lang/String;Z)Z

    move-result v19

    if-eqz v19, :cond_c

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newGPRSState:I

    move/from16 v19, v0

    if-eqz v19, :cond_f

    const/4 v5, 0x1

    :cond_c
    :goto_4
    if-eqz v5, :cond_10

    const/16 v19, 0x3

    move/from16 v0, v19

    if-eq v12, v0, :cond_d

    const/16 v19, 0xd

    move/from16 v0, v19

    if-ne v12, v0, :cond_10

    :cond_d
    array-length v0, v14

    move/from16 v19, v0

    const/16 v20, 0xd

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_10

    const/16 v19, 0xd

    aget-object v19, v14, v19

    if-eqz v19, :cond_10

    const/16 v19, 0xd

    aget-object v19, v14, v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    .local v13, rejectCode:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mLastRejectCode:I

    move/from16 v19, v0

    move/from16 v0, v19

    if-eq v13, v0, :cond_e

    if-eqz v13, :cond_e

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mLastRejectCode:I

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->handleNetworkRejection(I)V

    .end local v13           #rejectCode:I
    :cond_e
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v7, v2}, Landroid/telephony/gsm/GsmCellLocation;->setLacAndCid(II)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Landroid/telephony/gsm/GsmCellLocation;->setPsc(I)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_1

    .end local v2           #cid:I
    .end local v5           #handleCsRejectionCode:Z
    .end local v7           #lac:I
    .end local v10           #psc:I
    .end local v11           #reasonRegStateDenied:I
    .end local v12           #regState:I
    .end local v14           #states:[Ljava/lang/String;
    :catch_1
    move-exception v4

    .restart local v4       #ex:Ljava/lang/RuntimeException;
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Exception while polling service state. Probably malformed RIL response."

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->loge(Ljava/lang/String;)V

    goto/16 :goto_1

    .end local v4           #ex:Ljava/lang/RuntimeException;
    .restart local v2       #cid:I
    .restart local v7       #lac:I
    .restart local v10       #psc:I
    .restart local v11       #reasonRegStateDenied:I
    .restart local v12       #regState:I
    .restart local v14       #states:[Ljava/lang/String;
    :catch_2
    move-exception v4

    .local v4, ex:Ljava/lang/NumberFormatException;
    :try_start_4
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "error parsing RegistrationState: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->loge(Ljava/lang/String;)V

    goto/16 :goto_2

    .end local v4           #ex:Ljava/lang/NumberFormatException;
    :sswitch_1
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mEmergencyOnly:Z

    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mInactiveSim:Z

    goto/16 :goto_3

    .restart local v5       #handleCsRejectionCode:Z
    :cond_f
    const/4 v5, 0x0

    goto/16 :goto_4

    :cond_10
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mLastRejectCode:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v19

    const-string v20, "notification"

    invoke-virtual/range {v19 .. v20}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/NotificationManager;

    .local v8, notificationManager:Landroid/app/NotificationManager;
    const/16 v19, 0x6f

    move/from16 v0, v19

    invoke-virtual {v8, v0}, Landroid/app/NotificationManager;->cancel(I)V

    goto/16 :goto_5

    .end local v2           #cid:I
    .end local v5           #handleCsRejectionCode:Z
    .end local v7           #lac:I
    .end local v8           #notificationManager:Landroid/app/NotificationManager;
    .end local v10           #psc:I
    .end local v11           #reasonRegStateDenied:I
    .end local v12           #regState:I
    .end local v14           #states:[Ljava/lang/String;
    :sswitch_2
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, [Ljava/lang/String;

    move-object/from16 v0, v19

    check-cast v0, [Ljava/lang/String;

    move-object v14, v0

    .restart local v14       #states:[Ljava/lang/String;
    const/16 v18, 0x0

    .local v18, type:I
    const/16 v19, -0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newPSCid:I

    const/16 v19, -0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newPSLac:I

    const/4 v12, -0x1

    .restart local v12       #regState:I
    const/16 v19, -0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewReasonDataDenied:I

    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewMaxDataCalls:I

    array-length v0, v14

    move/from16 v19, v0
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_1

    if-lez v19, :cond_15

    const/16 v19, 0x0

    :try_start_5
    aget-object v19, v14, v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    array-length v0, v14

    move/from16 v19, v0

    const/16 v20, 0x3

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_12

    const/16 v19, 0x1

    aget-object v19, v14, v19

    if-eqz v19, :cond_11

    const/16 v19, 0x1

    aget-object v19, v14, v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v19

    if-lez v19, :cond_11

    const/16 v19, 0x1

    aget-object v19, v14, v19

    const/16 v20, 0x10

    invoke-static/range {v19 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newPSLac:I

    :cond_11
    const/16 v19, 0x2

    aget-object v19, v14, v19

    if-eqz v19, :cond_12

    const/16 v19, 0x2

    aget-object v19, v14, v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v19

    if-lez v19, :cond_12

    const/16 v19, 0x2

    aget-object v19, v14, v19

    const/16 v20, 0x10

    invoke-static/range {v19 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newPSCid:I

    :cond_12
    array-length v0, v14

    move/from16 v19, v0

    const/16 v20, 0x4

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_13

    const/16 v19, 0x3

    aget-object v19, v14, v19

    if-eqz v19, :cond_13

    const/16 v19, 0x3

    aget-object v19, v14, v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    :cond_13
    array-length v0, v14

    move/from16 v19, v0

    const/16 v20, 0x5

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_14

    const/16 v19, 0x3

    move/from16 v0, v19

    if-ne v12, v0, :cond_14

    const/16 v19, 0x4

    aget-object v19, v14, v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewReasonDataDenied:I

    :cond_14
    array-length v0, v14

    move/from16 v19, v0

    const/16 v20, 0x6

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_15

    const/16 v19, 0x5

    aget-object v19, v14, v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewMaxDataCalls:I
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_1

    :cond_15
    :goto_6
    :try_start_6
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->regCodeToServiceState(I)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newGPRSState:I

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->regCodeIsRoaming(I)Z

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mDataRoaming:Z

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewRadioTechnology:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/telephony/ServiceState;->setRadioTechnology(I)V

    goto/16 :goto_1

    :catch_3
    move-exception v4

    .restart local v4       #ex:Ljava/lang/NumberFormatException;
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "error parsing GprsRegistrationState: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->loge(Ljava/lang/String;)V

    goto :goto_6

    .end local v4           #ex:Ljava/lang/NumberFormatException;
    .end local v12           #regState:I
    .end local v14           #states:[Ljava/lang/String;
    .end local v18           #type:I
    :sswitch_3
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, [Ljava/lang/String;

    move-object/from16 v0, v19

    check-cast v0, [Ljava/lang/String;

    move-object v9, v0

    .local v9, opNames:[Ljava/lang/String;
    if-eqz v9, :cond_6

    array-length v0, v9

    move/from16 v19, v0

    const/16 v20, 0x3

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_6

    const/16 v19, 0x0

    aget-object v19, v9, v19

    if-eqz v19, :cond_16

    const/16 v19, 0x0

    aget-object v19, v9, v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v19

    if-lez v19, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aget-object v20, v9, v20

    const/16 v21, 0x1

    aget-object v21, v9, v21

    const/16 v22, 0x2

    aget-object v22, v9, v22

    invoke-virtual/range {v19 .. v22}, Landroid/telephony/ServiceState;->setOperatorName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newRegPlmn:Ljava/lang/String;

    goto/16 :goto_1

    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const/16 v21, 0x1

    aget-object v21, v9, v21

    const/16 v22, 0x2

    aget-object v22, v9, v22

    invoke-virtual/range {v19 .. v22}, Landroid/telephony/ServiceState;->setOperatorName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    .end local v9           #opNames:[Ljava/lang/String;
    :sswitch_4
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, [I

    move-object/from16 v0, v19

    check-cast v0, [I

    move-object v6, v0

    .local v6, ints:[I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object/from16 v20, v0

    const/16 v19, 0x0

    aget v19, v6, v19

    const/16 v21, 0x1

    move/from16 v0, v19

    move/from16 v1, v21

    if-ne v0, v1, :cond_17

    const/16 v19, 0x1

    :goto_8
    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/telephony/ServiceState;->setIsManualSelection(Z)V
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_1

    :cond_17
    const/16 v19, 0x0

    goto :goto_8

    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x5 -> :sswitch_2
        0x6 -> :sswitch_3
        0xe -> :sswitch_4
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x3 -> :sswitch_1
        0xa -> :sswitch_1
        0xc -> :sswitch_1
        0xd -> :sswitch_1
        0xe -> :sswitch_1
    .end sparse-switch
.end method

.method protected hangupAndPowerOff()V
    .locals 3

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->isInCall()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->ringingCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCall;->hangupIfAlive()V

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->backgroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCall;->hangupIfAlive()V

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->foregroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCall;->hangupIfAlive()V

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setRadioPower(ZLandroid/os/Message;)V

    return-void
.end method

.method public isConcurrentVoiceAndDataAllowed()Z
    .locals 2

    .prologue
    iget v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRadioTechnology:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected log(Ljava/lang/String;)V
    .locals 3
    .parameter "s"

    .prologue
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[GsmSST] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .locals 3
    .parameter "s"

    .prologue
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[GsmSST] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public powerOffRadioSafely(Lcom/android/internal/telephony/DataConnectionTracker;)V
    .locals 1
    .parameter "dcTracker"

    .prologue
    monitor-enter p0

    :try_start_0
    const-string v0, "Turn off radio right away."

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->hangupAndPowerOff()V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected setPowerStateToDesired()V
    .locals 4

    .prologue
    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mDesiredPowerState:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_OFF:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->setRadioPower(ZLandroid/os/Message;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mDesiredPowerState:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v0, v1, Lcom/android/internal/telephony/gsm/GSMPhone;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    .local v0, dcTracker:Lcom/android/internal/telephony/DataConnectionTracker;
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->powerOffRadioSafely(Lcom/android/internal/telephony/DataConnectionTracker;)V

    goto :goto_0
.end method

.method protected updateEons()Z
    .locals 6

    .prologue
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cellLoc:Landroid/telephony/gsm/GsmCellLocation;

    if-nez v3, :cond_0

    const/4 v1, -0x1

    .local v1, lac:I
    :goto_0
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/GSMPhone;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Lcom/android/internal/telephony/IccRecords;->updateEons(Ljava/lang/String;I)Z

    move-result v2

    .local v2, needsUpdate:Z
    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/GSMPhone;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    invoke-virtual {v3}, Lcom/android/internal/telephony/IccRecords;->getEons()Ljava/lang/String;

    move-result-object v0

    .local v0, eonsLong:Ljava/lang/String;
    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getOperatorAlphaShort()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v0, v4, v5}, Landroid/telephony/ServiceState;->setOperatorName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "GSM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[EONS] updateEons() eonsLong = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->updateSpnDisplay()V

    const/4 v3, 0x1

    .end local v0           #eonsLong:Ljava/lang/String;
    :goto_1
    return v3

    .end local v1           #lac:I
    .end local v2           #needsUpdate:Z
    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cellLoc:Landroid/telephony/gsm/GsmCellLocation;

    invoke-virtual {v3}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v1

    goto :goto_0

    .restart local v1       #lac:I
    .restart local v2       #needsUpdate:Z
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method protected updateSpnDisplay()V
    .locals 12

    .prologue
    const/4 v11, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v8, v8, Lcom/android/internal/telephony/gsm/GSMPhone;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    invoke-virtual {v9}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/internal/telephony/IccRecords;->getDisplayRule(Ljava/lang/String;)I

    move-result v1

    .local v1, rule:I
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v8, v8, Lcom/android/internal/telephony/gsm/GSMPhone;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    invoke-virtual {v8}, Lcom/android/internal/telephony/IccRecords;->getServiceProviderName()Ljava/lang/String;

    move-result-object v5

    .local v5, spn:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    invoke-virtual {v8}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v0

    .local v0, plmn:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_1

    :cond_0
    const-string v8, "GSM"

    const-string v9, "OperaterAlphaLong is null, try to getOperatorAlphaShort"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    invoke-virtual {v8}, Landroid/telephony/ServiceState;->getOperatorAlphaShort()Ljava/lang/String;

    move-result-object v0

    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_6

    const-string v8, "show_opname_ps_available"

    invoke-static {v8, v7}, Landroid/customization/CustomizedValues;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_6

    move v3, v6

    .local v3, showPlmnNameIfPsAvailable:Z
    :goto_0
    if-nez v3, :cond_3

    iget-boolean v8, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mEmergencyOnly:Z

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v8}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x104034c

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-boolean v8, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mInactiveSim:Z

    if-eqz v8, :cond_2

    const-string v8, "ro.telephony.inactivesim"

    invoke-direct {p0, v8, v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getCustomizedStringfromSystemResource(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "updateSpnDisplay: emergency only and radio is on plmn=\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    :cond_3
    iget v8, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->curSpnRule:I

    if-ne v1, v8, :cond_4

    iget-object v8, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->curSpn:Ljava/lang/String;

    invoke-static {v5, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->curPlmn:Ljava/lang/String;

    invoke-static {v0, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_5

    :cond_4
    const/4 v4, 0x0

    .local v4, showSpn:Z
    const/4 v2, 0x0

    .local v2, showPlmn:Z
    const-string v8, "ro.operator.displayUnicodeName"

    invoke-static {v8, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_7

    const/4 v4, 0x0

    const/4 v2, 0x1

    const-string v8, "GSM"

    const-string v9, "updateSpnDisplay: displaying unicode name"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "updateSpnDisplay: changed sending intent rule="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " showPlmn=\'%b\' plmn=\'%s\' showSpn=\'%b\' spn=\'%s\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x4

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    aput-object v10, v9, v7

    aput-object v0, v9, v6

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v9, v11

    const/4 v6, 0x3

    aput-object v5, v9, v6

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-direct {p0, v0, v5, v6, v7}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->updateNetworkStatusDisplay(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;)Z

    move-result v6

    if-eqz v6, :cond_5

    const/4 v0, 0x0

    .end local v2           #showPlmn:Z
    .end local v4           #showSpn:Z
    :cond_5
    iput v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->curSpnRule:I

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->curSpn:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->curPlmn:Ljava/lang/String;

    return-void

    .end local v3           #showPlmnNameIfPsAvailable:Z
    :cond_6
    move v3, v7

    goto/16 :goto_0

    .restart local v2       #showPlmn:Z
    .restart local v3       #showPlmnNameIfPsAvailable:Z
    .restart local v4       #showSpn:Z
    :cond_7
    iget-boolean v8, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mEmergencyOnly:Z

    if-nez v8, :cond_8

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_8

    if-eqz v0, :cond_8

    and-int/lit8 v8, v1, 0x1

    if-ne v8, v6, :cond_8

    iget-object v8, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    invoke-virtual {v8}, Landroid/telephony/ServiceState;->getState()I

    move-result v8

    if-nez v8, :cond_8

    move v4, v6

    :goto_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_9

    and-int/lit8 v8, v1, 0x2

    if-ne v8, v11, :cond_9

    move v2, v6

    :goto_3
    goto :goto_1

    :cond_8
    move v4, v7

    goto :goto_2

    :cond_9
    move v2, v7

    goto :goto_3
.end method

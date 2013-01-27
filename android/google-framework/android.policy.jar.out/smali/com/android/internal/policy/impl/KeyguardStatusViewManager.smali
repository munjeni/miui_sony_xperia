.class Lcom/android/internal/policy/impl/KeyguardStatusViewManager;
.super Ljava/lang/Object;
.source "KeyguardStatusViewManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/KeyguardStatusViewManager$4;,
        Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;,
        Lcom/android/internal/policy/impl/KeyguardStatusViewManager$TransientTextManager;
    }
.end annotation


# static fields
.field public static final ALARM_ICON:I = 0x108002e

.field private static final BATTERY_INFO:I = 0xf

.field public static final BATTERY_LOW_ICON:I = 0x0

.field private static final CARRIER_HELP_TEXT:I = 0xc

.field private static final CARRIER_TEXT:I = 0xb

.field public static final CHARGING_ICON:I = 0x0

.field private static final DEBUG:Z = false

.field private static final HELP_MESSAGE_TEXT:I = 0xd

.field private static final INSTRUCTION_RESET_DELAY:J = 0x7d0L

.field private static final INSTRUCTION_TEXT:I = 0xa

.field public static final LOCK_ICON:I = 0x0

.field private static final OWNER_INFO:I = 0xe

.field private static final QUERY_WEATHER:I = 0x0

.field private static final TAG:Ljava/lang/String; = "KeyguardStatusView"

.field private static final UPDATE_WEATHER:I = 0x1

.field private static final URL_YAHOO_API_WEATHER:Ljava/lang/String; = "http://weather.yahooapis.com/forecastrss?w=%s&u="

.field private static mWeatherInfo:Lcom/android/internal/util/weather/WeatherInfo;


# instance fields
.field private mAlarmStatusView:Landroid/widget/TextView;

.field private mBatteryLevel:I

.field private mCalendarEventDetails:Landroid/widget/TextView;

.field private mCalendarEventTitle:Landroid/widget/TextView;

.field private mCalendarPanel:Landroid/widget/LinearLayout;

.field private mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

.field private mCarrierHelpText:Ljava/lang/CharSequence;

.field private mCarrierText:Ljava/lang/CharSequence;

.field private mCarrierView:Landroid/widget/TextView;

.field private mContainer:Landroid/view/View;

.field private mDateFormatString:Ljava/lang/String;

.field private mDateView:Landroid/widget/TextView;

.field private mEmergencyButtonEnabledBecauseSimLocked:Z

.field private mEmergencyCallButton:Landroid/widget/Button;

.field private final mEmergencyCallButtonEnabledInScreen:Z

.field private mHandler:Landroid/os/Handler;

.field private mHelpMessageText:Ljava/lang/String;

.field private mInfoCallback:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;

.field private mInstructionText:Ljava/lang/String;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mOwnerInfoText:Ljava/lang/CharSequence;

.field private mOwnerInfoView:Landroid/widget/TextView;

.field protected mPhoneState:I

.field private mPlmn:Ljava/lang/CharSequence;

.field private mPluggedIn:Z

.field private mShowingBatteryInfo:Z

.field private mShowingStatus:Z

.field protected mSimState:Lcom/android/internal/telephony/IccCard$State;

.field private mSimStateCallback:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimStateCallback;

.field private mSpn:Ljava/lang/CharSequence;

.field private mStatus:Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;

.field private mStatus1View:Landroid/widget/TextView;

.field private mTransientTextManager:Lcom/android/internal/policy/impl/KeyguardStatusViewManager$TransientTextManager;

.field private mTransportView:Lcom/android/internal/widget/TransportControlView;

.field private mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

.field private mWeatherCity:Landroid/widget/TextView;

.field private mWeatherCondition:Landroid/widget/TextView;

.field private mWeatherImage:Landroid/widget/ImageView;

.field private mWeatherLowHigh:Landroid/widget/TextView;

.field private mWeatherPanel:Landroid/widget/RelativeLayout;

.field private mWeatherTemp:Landroid/widget/TextView;

.field private mWeatherTempsPanel:Landroid/widget/RelativeLayout;

.field private mWeatherUpdateTime:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 269
    new-instance v0, Lcom/android/internal/util/weather/WeatherInfo;

    invoke-direct {v0}, Lcom/android/internal/util/weather/WeatherInfo;-><init>()V

    sput-object v0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mWeatherInfo:Lcom/android/internal/util/weather/WeatherInfo;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardScreenCallback;Z)V
    .locals 10
    .parameter "view"
    .parameter "updateMonitor"
    .parameter "lockPatternUtils"
    .parameter "callback"
    .parameter "emergencyButtonEnabledInScreen"

    .prologue
    const/4 v9, 0x1

    const/16 v8, 0x8

    const/4 v7, 0x0

    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    iput-boolean v7, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mShowingBatteryInfo:Z

    .line 105
    iput-boolean v7, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mPluggedIn:Z

    .line 108
    const/16 v5, 0x64

    iput v5, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mBatteryLevel:I

    .line 273
    new-instance v5, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$1;

    invoke-direct {v5, p0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$1;-><init>(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;)V

    iput-object v5, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mHandler:Landroid/os/Handler;

    .line 962
    new-instance v5, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$2;

    invoke-direct {v5, p0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$2;-><init>(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;)V

    iput-object v5, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mInfoCallback:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;

    .line 1003
    new-instance v5, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$3;

    invoke-direct {v5, p0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$3;-><init>(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;)V

    iput-object v5, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mSimStateCallback:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimStateCallback;

    .line 192
    iput-object p1, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mContainer:Landroid/view/View;

    .line 193
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x10400b3

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mDateFormatString:Ljava/lang/String;

    .line 194
    iput-object p3, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 195
    iput-object p2, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    .line 196
    iput-object p4, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    .line 198
    const v5, 0x10202ad

    invoke-direct {p0, v5}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mCarrierView:Landroid/widget/TextView;

    .line 199
    const v5, 0x1020063

    invoke-direct {p0, v5}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mDateView:Landroid/widget/TextView;

    .line 200
    const v5, 0x10202ac

    invoke-direct {p0, v5}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mStatus1View:Landroid/widget/TextView;

    .line 201
    const v5, 0x10202ab

    invoke-direct {p0, v5}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mAlarmStatusView:Landroid/widget/TextView;

    .line 202
    const v5, 0x10202c8

    invoke-direct {p0, v5}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mOwnerInfoView:Landroid/widget/TextView;

    .line 203
    const v5, 0x10202b1

    invoke-direct {p0, v5}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/internal/widget/TransportControlView;

    iput-object v5, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mTransportView:Lcom/android/internal/widget/TransportControlView;

    .line 204
    const v5, 0x1020294

    invoke-direct {p0, v5}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mEmergencyCallButton:Landroid/widget/Button;

    .line 205
    iput-boolean p5, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mEmergencyCallButtonEnabledInScreen:Z

    .line 208
    const v5, 0x10202bf

    invoke-direct {p0, v5}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout;

    iput-object v5, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mWeatherPanel:Landroid/widget/RelativeLayout;

    .line 209
    const v5, 0x10202c1

    invoke-direct {p0, v5}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mWeatherCity:Landroid/widget/TextView;

    .line 210
    const v5, 0x10202c2

    invoke-direct {p0, v5}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mWeatherCondition:Landroid/widget/TextView;

    .line 211
    const v5, 0x10202c0

    invoke-direct {p0, v5}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mWeatherImage:Landroid/widget/ImageView;

    .line 212
    const v5, 0x10202c5

    invoke-direct {p0, v5}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mWeatherTemp:Landroid/widget/TextView;

    .line 213
    const v5, 0x10202c7

    invoke-direct {p0, v5}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mWeatherLowHigh:Landroid/widget/TextView;

    .line 214
    const v5, 0x10202c3

    invoke-direct {p0, v5}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mWeatherUpdateTime:Landroid/widget/TextView;

    .line 215
    const v5, 0x10202c4

    invoke-direct {p0, v5}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout;

    iput-object v5, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mWeatherTempsPanel:Landroid/widget/RelativeLayout;

    .line 218
    iget-object v5, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mWeatherPanel:Landroid/widget/RelativeLayout;

    if-eqz v5, :cond_0

    .line 219
    iget-object v5, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mWeatherPanel:Landroid/widget/RelativeLayout;

    invoke-virtual {v5, v8}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 220
    iget-object v5, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mWeatherPanel:Landroid/widget/RelativeLayout;

    invoke-virtual {v5, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 224
    :cond_0
    const v5, 0x10202c9

    invoke-direct {p0, v5}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mCalendarPanel:Landroid/widget/LinearLayout;

    .line 225
    const v5, 0x10202ca

    invoke-direct {p0, v5}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mCalendarEventTitle:Landroid/widget/TextView;

    .line 226
    const v5, 0x10202cb

    invoke-direct {p0, v5}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mCalendarEventDetails:Landroid/widget/TextView;

    .line 229
    iget-object v5, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mCalendarPanel:Landroid/widget/LinearLayout;

    if-eqz v5, :cond_1

    .line 230
    iget-object v5, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mCalendarPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 234
    :cond_1
    iget-object v5, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mTransportView:Lcom/android/internal/widget/TransportControlView;

    if-eqz v5, :cond_2

    .line 235
    iget-object v5, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mTransportView:Lcom/android/internal/widget/TransportControlView;

    invoke-virtual {v5, v8}, Lcom/android/internal/widget/TransportControlView;->setVisibility(I)V

    .line 238
    :cond_2
    iget-object v5, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mEmergencyCallButton:Landroid/widget/Button;

    if-eqz v5, :cond_3

    .line 239
    iget-object v5, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mEmergencyCallButton:Landroid/widget/Button;

    const v6, 0x10402fe

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(I)V

    .line 240
    iget-object v5, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mEmergencyCallButton:Landroid/widget/Button;

    invoke-virtual {v5, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 241
    iget-object v5, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mEmergencyCallButton:Landroid/widget/Button;

    invoke-virtual {v5, v7}, Landroid/widget/Button;->setFocusable(Z)V

    .line 244
    :cond_3
    new-instance v5, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$TransientTextManager;

    iget-object v6, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mCarrierView:Landroid/widget/TextView;

    invoke-direct {v5, p0, v6}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$TransientTextManager;-><init>(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;Landroid/widget/TextView;)V

    iput-object v5, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mTransientTextManager:Lcom/android/internal/policy/impl/KeyguardStatusViewManager$TransientTextManager;

    .line 246
    iget-object v5, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iget-object v6, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mInfoCallback:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;

    invoke-virtual {v5, v6}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->registerInfoCallback(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;)V

    .line 247
    iget-object v5, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iget-object v6, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mSimStateCallback:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimStateCallback;

    invoke-virtual {v5, v6}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->registerSimStateCallback(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimStateCallback;)V

    .line 249
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->resetStatusInfo()V

    .line 250
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->refreshDate()V

    .line 251
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->updateOwnerInfo()V

    .line 252
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->refreshWeather()V

    .line 253
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->refreshCalendar()V

    .line 256
    new-array v3, v8, [Landroid/view/View;

    iget-object v5, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mCarrierView:Landroid/widget/TextView;

    aput-object v5, v3, v7

    iget-object v5, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mDateView:Landroid/widget/TextView;

    aput-object v5, v3, v9

    const/4 v5, 0x2

    iget-object v6, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mStatus1View:Landroid/widget/TextView;

    aput-object v6, v3, v5

    const/4 v5, 0x3

    iget-object v6, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mOwnerInfoView:Landroid/widget/TextView;

    aput-object v6, v3, v5

    const/4 v5, 0x4

    iget-object v6, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mAlarmStatusView:Landroid/widget/TextView;

    aput-object v6, v3, v5

    const/4 v5, 0x5

    iget-object v6, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mCalendarEventDetails:Landroid/widget/TextView;

    aput-object v6, v3, v5

    const/4 v5, 0x6

    iget-object v6, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mWeatherCity:Landroid/widget/TextView;

    aput-object v6, v3, v5

    const/4 v5, 0x7

    iget-object v6, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mWeatherCondition:Landroid/widget/TextView;

    aput-object v6, v3, v5

    .line 258
    .local v3, scrollableViews:[Landroid/view/View;
    move-object v0, v3

    .local v0, arr$:[Landroid/view/View;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_5

    aget-object v4, v0, v1

    .line 259
    .local v4, v:Landroid/view/View;
    if-eqz v4, :cond_4

    .line 260
    invoke-virtual {v4, v9}, Landroid/view/View;->setSelected(Z)V

    .line 258
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 263
    .end local v4           #v:Landroid/view/View;
    :cond_5
    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;Llibcore/util/MutableInt;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->getAltTextMessage(Llibcore/util/MutableInt;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000()Lcom/android/internal/util/weather/WeatherInfo;
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mWeatherInfo:Lcom/android/internal/util/weather/WeatherInfo;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/internal/util/weather/WeatherInfo;)Lcom/android/internal/util/weather/WeatherInfo;
    .locals 0
    .parameter "x0"

    .prologue
    .line 63
    sput-object p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mWeatherInfo:Lcom/android/internal/util/weather/WeatherInfo;

    return-object p0
.end method

.method static synthetic access$1102(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mShowingBatteryInfo:Z

    return p1
.end method

.method static synthetic access$1202(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mPluggedIn:Z

    return p1
.end method

.method static synthetic access$1302(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    iput p1, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mBatteryLevel:I

    return p1
.end method

.method static synthetic access$1400(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;ILjava/lang/CharSequence;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 63
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->update(ILjava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$1502(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    iput-object p1, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mPlmn:Ljava/lang/CharSequence;

    return-object p1
.end method

.method static synthetic access$1602(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    iput-object p1, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mSpn:Ljava/lang/CharSequence;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;Lcom/android/internal/telephony/IccCard$State;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->updateCarrierStateWithSimStatus(Lcom/android/internal/telephony/IccCard$State;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->updateEmergencyCallButtonState(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mContainer:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;Ljava/lang/String;)Lorg/w3c/dom/Document;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->getDocument(Ljava/lang/String;)Lorg/w3c/dom/Document;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;Lorg/w3c/dom/Document;)Lcom/android/internal/util/weather/WeatherInfo;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->parseXml(Lorg/w3c/dom/Document;)Lcom/android/internal/util/weather/WeatherInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->setNoWeatherData()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;Lcom/android/internal/util/weather/WeatherInfo;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->setWeatherData(Lcom/android/internal/util/weather/WeatherInfo;)V

    return-void
.end method

.method private findViewById(I)Landroid/view/View;
    .locals 1
    .parameter "id"

    .prologue
    .line 892
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mContainer:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private getAltTextMessage(Llibcore/util/MutableInt;)Ljava/lang/CharSequence;
    .locals 6
    .parameter "icon"

    .prologue
    const/4 v5, 0x0

    .line 710
    const/4 v0, 0x0

    .line 711
    .local v0, string:Ljava/lang/CharSequence;
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mShowingBatteryInfo:Z

    if-eqz v1, :cond_3

    .line 713
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mPluggedIn:Z

    if-eqz v1, :cond_2

    .line 715
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isDeviceCharged()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 716
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x1040304

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 720
    :goto_0
    iput v5, p1, Llibcore/util/MutableInt;->value:I

    .line 729
    :cond_0
    :goto_1
    return-object v0

    .line 718
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x1040303

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mBatteryLevel:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 721
    :cond_2
    iget v1, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mBatteryLevel:I

    const/16 v2, 0x14

    if-ge v1, v2, :cond_0

    .line 723
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x1040306

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 724
    iput v5, p1, Llibcore/util/MutableInt;->value:I

    goto :goto_1

    .line 727
    :cond_3
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mCarrierText:Ljava/lang/CharSequence;

    goto :goto_1
.end method

.method private getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 802
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method private getDocument(Ljava/lang/String;)Lorg/w3c/dom/Document;
    .locals 7
    .parameter "woeid"

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x1

    .line 477
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "weather_use_metric"

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v0, :cond_0

    .line 481
    .local v0, celcius:Z
    :goto_0
    if-eqz v0, :cond_1

    .line 482
    const-string v2, "http://weather.yahooapis.com/forecastrss?w=%s&u=c"

    .line 487
    .local v2, urlWithDegreeUnit:Ljava/lang/String;
    :goto_1
    new-instance v3, Lcom/android/internal/util/weather/HttpRetriever;

    invoke-direct {v3}, Lcom/android/internal/util/weather/HttpRetriever;-><init>()V

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/util/weather/HttpRetriever;->getDocumentFromURL(Ljava/lang/String;)Lorg/w3c/dom/Document;

    move-result-object v3

    .line 492
    .end local v0           #celcius:Z
    .end local v2           #urlWithDegreeUnit:Ljava/lang/String;
    :goto_2
    return-object v3

    :cond_0
    move v0, v3

    .line 477
    goto :goto_0

    .line 484
    .restart local v0       #celcius:Z
    :cond_1
    const-string v2, "http://weather.yahooapis.com/forecastrss?w=%s&u=f"
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .restart local v2       #urlWithDegreeUnit:Ljava/lang/String;
    goto :goto_1

    .line 488
    .end local v0           #celcius:Z
    .end local v2           #urlWithDegreeUnit:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 489
    .local v1, e:Ljava/io/IOException;
    const-string v3, "KeyguardStatusView"

    const-string v4, "Error querying Yahoo weather"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    const/4 v3, 0x0

    goto :goto_2
.end method

.method private getPriorityTextMessage(Llibcore/util/MutableInt;)Ljava/lang/CharSequence;
    .locals 6
    .parameter "icon"

    .prologue
    const/4 v5, 0x0

    .line 733
    const/4 v0, 0x0

    .line 734
    .local v0, string:Ljava/lang/CharSequence;
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mInstructionText:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 736
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mInstructionText:Ljava/lang/String;

    .line 737
    iput v5, p1, Llibcore/util/MutableInt;->value:I

    .line 757
    :cond_0
    :goto_0
    return-object v0

    .line 738
    :cond_1
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mShowingBatteryInfo:Z

    if-eqz v1, :cond_4

    .line 740
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mPluggedIn:Z

    if-eqz v1, :cond_3

    .line 742
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isDeviceCharged()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 743
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x1040304

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 747
    :goto_1
    iput v5, p1, Llibcore/util/MutableInt;->value:I

    goto :goto_0

    .line 745
    :cond_2
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x1040303

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mBatteryLevel:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 748
    :cond_3
    iget v1, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mBatteryLevel:I

    const/16 v2, 0x14

    if-ge v1, v2, :cond_0

    .line 750
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x1040306

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 751
    iput v5, p1, Llibcore/util/MutableInt;->value:I

    goto :goto_0

    .line 753
    :cond_4
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->inWidgetMode()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mOwnerInfoView:Landroid/widget/TextView;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mOwnerInfoText:Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    .line 755
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mOwnerInfoText:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method private getText(I)Ljava/lang/CharSequence;
    .locals 1
    .parameter "resId"

    .prologue
    .line 593
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method

.method private inWidgetMode()Z
    .locals 1

    .prologue
    .line 563
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mTransportView:Lcom/android/internal/widget/TransportControlView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mTransportView:Lcom/android/internal/widget/TransportControlView;

    invoke-virtual {v0}, Lcom/android/internal/widget/TransportControlView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static makeCarierString(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 5
    .parameter "plmn"
    .parameter "spn"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1033
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    move v0, v2

    .line 1034
    .local v0, plmnValid:Z
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    move v1, v2

    .line 1035
    .local v1, spnValid:Z
    :goto_1
    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    .line 1036
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1042
    .end local p0
    :cond_0
    :goto_2
    return-object p0

    .end local v0           #plmnValid:Z
    .end local v1           #spnValid:Z
    .restart local p0
    :cond_1
    move v0, v3

    .line 1033
    goto :goto_0

    .restart local v0       #plmnValid:Z
    :cond_2
    move v1, v3

    .line 1034
    goto :goto_1

    .line 1037
    .restart local v1       #spnValid:Z
    :cond_3
    if-nez v0, :cond_0

    .line 1039
    if-eqz v1, :cond_4

    move-object p0, p1

    .line 1040
    goto :goto_2

    .line 1042
    :cond_4
    const-string p0, ""

    goto :goto_2
.end method

.method private makeCarrierStringOnEmergencyCapable(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "simMessage"
    .parameter "emergencyCallMessage"

    .prologue
    .line 885
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isEmergencyCallCapable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 886
    invoke-static {p1, p2}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->makeCarierString(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    .line 888
    .end local p1
    :cond_0
    return-object p1
.end method

.method private static parseStoredValue(Ljava/lang/String;)[Ljava/lang/String;
    .locals 2
    .parameter "val"

    .prologue
    .line 553
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 554
    :cond_0
    const/4 v0, 0x0

    .line 558
    :goto_0
    return-object v0

    .line 557
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 558
    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private parseXml(Lorg/w3c/dom/Document;)Lcom/android/internal/util/weather/WeatherInfo;
    .locals 3
    .parameter "wDoc"

    .prologue
    .line 502
    :try_start_0
    new-instance v1, Lcom/android/internal/util/weather/WeatherXmlParser;

    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/util/weather/WeatherXmlParser;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p1}, Lcom/android/internal/util/weather/WeatherXmlParser;->parseWeatherResponse(Lorg/w3c/dom/Document;)Lcom/android/internal/util/weather/WeatherInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 507
    :goto_0
    return-object v1

    .line 503
    :catch_0
    move-exception v0

    .line 504
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "KeyguardStatusView"

    const-string v2, "Error parsing Yahoo weather XML document"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 507
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private refreshCalendar()V
    .locals 13

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 515
    iget-object v10, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mCalendarPanel:Landroid/widget/LinearLayout;

    if-eqz v10, :cond_2

    .line 516
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 517
    .local v6, resolver:Landroid/content/ContentResolver;
    const/4 v5, 0x0

    .line 518
    .local v5, nextCalendar:[Ljava/lang/String;
    const/4 v7, 0x0

    .line 521
    .local v7, visible:Z
    const-string v10, "lockscreen_calendar"

    invoke-static {v6, v10, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-ne v10, v8, :cond_3

    move v1, v8

    .line 523
    .local v1, lockCalendar:Z
    :goto_0
    const-string v10, "lockscreen_calendars"

    invoke-static {v6, v10}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->parseStoredValue(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 525
    .local v0, calendars:[Ljava/lang/String;
    const-string v10, "lockscreen_calendar_reminders_only"

    invoke-static {v6, v10, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-ne v10, v8, :cond_4

    move v4, v8

    .line 527
    .local v4, lockCalendarRemindersOnly:Z
    :goto_1
    const-string v10, "lockscreen_calendar_lookahead"

    const-wide/32 v11, 0xa4cb80

    invoke-static {v6, v10, v11, v12}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v2

    .line 530
    .local v2, lockCalendarLookahead:J
    if-eqz v1, :cond_1

    .line 531
    iget-object v10, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v10, v2, v3, v0, v4}, Lcom/android/internal/widget/LockPatternUtils;->getNextCalendarAlarm(J[Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v5

    .line 533
    aget-object v10, v5, v9

    if-eqz v10, :cond_1

    iget-object v10, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mCalendarEventTitle:Landroid/widget/TextView;

    if-eqz v10, :cond_1

    .line 534
    iget-object v10, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mCalendarEventTitle:Landroid/widget/TextView;

    aget-object v11, v5, v9

    invoke-virtual {v11}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 535
    aget-object v10, v5, v8

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mCalendarEventDetails:Landroid/widget/TextView;

    if-eqz v10, :cond_0

    .line 536
    iget-object v10, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mCalendarEventDetails:Landroid/widget/TextView;

    aget-object v8, v5, v8

    invoke-virtual {v10, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 538
    :cond_0
    const/4 v7, 0x1

    .line 542
    :cond_1
    iget-object v8, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mCalendarPanel:Landroid/widget/LinearLayout;

    if-eqz v7, :cond_5

    :goto_2
    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 544
    .end local v0           #calendars:[Ljava/lang/String;
    .end local v1           #lockCalendar:Z
    .end local v2           #lockCalendarLookahead:J
    .end local v4           #lockCalendarRemindersOnly:Z
    .end local v5           #nextCalendar:[Ljava/lang/String;
    .end local v6           #resolver:Landroid/content/ContentResolver;
    .end local v7           #visible:Z
    :cond_2
    return-void

    .restart local v5       #nextCalendar:[Ljava/lang/String;
    .restart local v6       #resolver:Landroid/content/ContentResolver;
    .restart local v7       #visible:Z
    :cond_3
    move v1, v9

    .line 521
    goto :goto_0

    .restart local v0       #calendars:[Ljava/lang/String;
    .restart local v1       #lockCalendar:Z
    :cond_4
    move v4, v9

    .line 525
    goto :goto_1

    .line 542
    .restart local v2       #lockCalendarLookahead:J
    .restart local v4       #lockCalendarRemindersOnly:Z
    :cond_5
    const/16 v9, 0x8

    goto :goto_2
.end method

.method private refreshWeather()V
    .locals 12

    .prologue
    const-wide/16 v10, 0x0

    const/4 v2, 0x1

    const/4 v5, 0x0

    .line 363
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 364
    .local v3, resolver:Landroid/content/ContentResolver;
    const-string v6, "lockscreen_weather"

    invoke-static {v3, v6, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v2, :cond_1

    move v4, v2

    .line 366
    .local v4, showWeather:Z
    :goto_0
    if-eqz v4, :cond_5

    .line 367
    const-string v6, "weather_update_interval"

    const-wide/16 v7, 0x3c

    invoke-static {v3, v6, v7, v8}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    .line 369
    .local v0, interval:J
    cmp-long v6, v0, v10

    if-nez v6, :cond_2

    .line 370
    .local v2, manualSync:Z
    :goto_1
    if-nez v2, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sget-object v8, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mWeatherInfo:Lcom/android/internal/util/weather/WeatherInfo;

    iget-wide v8, v8, Lcom/android/internal/util/weather/WeatherInfo;->last_sync:J

    sub-long/2addr v6, v8

    const-wide/32 v8, 0xea60

    div-long/2addr v6, v8

    cmp-long v6, v6, v0

    if-ltz v6, :cond_3

    .line 371
    iget-object v6, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 383
    .end local v0           #interval:J
    .end local v2           #manualSync:Z
    :cond_0
    :goto_2
    return-void

    .end local v4           #showWeather:Z
    :cond_1
    move v4, v5

    .line 364
    goto :goto_0

    .restart local v0       #interval:J
    .restart local v4       #showWeather:Z
    :cond_2
    move v2, v5

    .line 369
    goto :goto_1

    .line 372
    .restart local v2       #manualSync:Z
    :cond_3
    if-eqz v2, :cond_4

    sget-object v5, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mWeatherInfo:Lcom/android/internal/util/weather/WeatherInfo;

    iget-wide v5, v5, Lcom/android/internal/util/weather/WeatherInfo;->last_sync:J

    cmp-long v5, v5, v10

    if-nez v5, :cond_4

    .line 373
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->setNoWeatherData()V

    goto :goto_2

    .line 375
    :cond_4
    sget-object v5, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mWeatherInfo:Lcom/android/internal/util/weather/WeatherInfo;

    invoke-direct {p0, v5}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->setWeatherData(Lcom/android/internal/util/weather/WeatherInfo;)V

    goto :goto_2

    .line 379
    .end local v0           #interval:J
    .end local v2           #manualSync:Z
    :cond_5
    iget-object v5, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mWeatherPanel:Landroid/widget/RelativeLayout;

    if-eqz v5, :cond_0

    .line 380
    iget-object v5, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mWeatherPanel:Landroid/widget/RelativeLayout;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_2
.end method

.method private setNoWeatherData()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 447
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mWeatherPanel:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_5

    .line 448
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mWeatherImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 449
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mWeatherImage:Landroid/widget/ImageView;

    const v1, 0x1080632

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 451
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mWeatherCity:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 452
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mWeatherCity:Landroid/widget/TextView;

    const v1, 0x1040524

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 453
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mWeatherCity:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 455
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mWeatherCondition:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 456
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mWeatherCondition:Landroid/widget/TextView;

    const v1, 0x1040525

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 458
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mWeatherUpdateTime:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 459
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mWeatherUpdateTime:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 461
    :cond_3
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mWeatherTempsPanel:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_4

    .line 462
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mWeatherTempsPanel:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 466
    :cond_4
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mWeatherPanel:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 468
    :cond_5
    return-void
.end method

.method private setWeatherData(Lcom/android/internal/util/weather/WeatherInfo;)V
    .locals 14
    .parameter "w"

    .prologue
    .line 390
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 391
    .local v7, resolver:Landroid/content/ContentResolver;
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 392
    .local v5, res:Landroid/content/res/Resources;
    const-string v11, "weather_show_location"

    const/4 v12, 0x1

    invoke-static {v7, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_6

    const/4 v8, 0x1

    .line 394
    .local v8, showLocation:Z
    :goto_0
    const-string v11, "weather_show_timestamp"

    const/4 v12, 0x1

    invoke-static {v7, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_7

    const/4 v9, 0x1

    .line 396
    .local v9, showTimestamp:Z
    :goto_1
    const-string v11, "weather_invert_lowhigh"

    const/4 v12, 0x0

    invoke-static {v7, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_8

    const/4 v3, 0x1

    .line 399
    .local v3, invertLowhigh:Z
    :goto_2
    iget-object v11, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mWeatherPanel:Landroid/widget/RelativeLayout;

    if-eqz v11, :cond_5

    .line 400
    iget-object v11, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mWeatherImage:Landroid/widget/ImageView;

    if-eqz v11, :cond_0

    .line 401
    iget-object v0, p1, Lcom/android/internal/util/weather/WeatherInfo;->condition_code:Ljava/lang/String;

    .line 402
    .local v0, conditionCode:Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "weather_"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 403
    .local v1, condition_filename:Ljava/lang/String;
    const-string v11, "drawable"

    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v1, v11, v12}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 409
    .local v6, resID:I
    if-eqz v6, :cond_9

    .line 410
    iget-object v11, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mWeatherImage:Landroid/widget/ImageView;

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 415
    .end local v0           #conditionCode:Ljava/lang/String;
    .end local v1           #condition_filename:Ljava/lang/String;
    .end local v6           #resID:I
    :cond_0
    :goto_3
    iget-object v11, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mWeatherCity:Landroid/widget/TextView;

    if-eqz v11, :cond_1

    .line 416
    iget-object v11, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mWeatherCity:Landroid/widget/TextView;

    iget-object v12, p1, Lcom/android/internal/util/weather/WeatherInfo;->city:Ljava/lang/String;

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 417
    iget-object v12, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mWeatherCity:Landroid/widget/TextView;

    if-eqz v8, :cond_a

    const/4 v11, 0x0

    :goto_4
    invoke-virtual {v12, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 419
    :cond_1
    iget-object v11, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mWeatherCondition:Landroid/widget/TextView;

    if-eqz v11, :cond_2

    .line 420
    iget-object v11, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mWeatherCondition:Landroid/widget/TextView;

    iget-object v12, p1, Lcom/android/internal/util/weather/WeatherInfo;->condition:Ljava/lang/String;

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 421
    iget-object v11, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mWeatherCondition:Landroid/widget/TextView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 423
    :cond_2
    iget-object v11, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mWeatherUpdateTime:Landroid/widget/TextView;

    if-eqz v11, :cond_3

    .line 424
    new-instance v4, Ljava/util/Date;

    sget-object v11, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mWeatherInfo:Lcom/android/internal/util/weather/WeatherInfo;

    iget-wide v11, v11, Lcom/android/internal/util/weather/WeatherInfo;->last_sync:J

    invoke-direct {v4, v11, v12}, Ljava/util/Date;-><init>(J)V

    .line 425
    .local v4, lastTime:Ljava/util/Date;
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 426
    .local v2, date:Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v10

    .line 427
    .local v10, time:Ljava/lang/String;
    iget-object v11, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mWeatherUpdateTime:Landroid/widget/TextView;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 428
    iget-object v12, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mWeatherUpdateTime:Landroid/widget/TextView;

    if-eqz v9, :cond_b

    const/4 v11, 0x0

    :goto_5
    invoke-virtual {v12, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 430
    .end local v2           #date:Ljava/lang/String;
    .end local v4           #lastTime:Ljava/util/Date;
    .end local v10           #time:Ljava/lang/String;
    :cond_3
    iget-object v11, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mWeatherTempsPanel:Landroid/widget/RelativeLayout;

    if-eqz v11, :cond_4

    iget-object v11, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mWeatherTemp:Landroid/widget/TextView;

    if-eqz v11, :cond_4

    iget-object v11, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mWeatherLowHigh:Landroid/widget/TextView;

    if-eqz v11, :cond_4

    .line 431
    iget-object v11, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mWeatherTemp:Landroid/widget/TextView;

    iget-object v12, p1, Lcom/android/internal/util/weather/WeatherInfo;->temp:Ljava/lang/String;

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 432
    iget-object v12, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mWeatherLowHigh:Landroid/widget/TextView;

    if-eqz v3, :cond_c

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, p1, Lcom/android/internal/util/weather/WeatherInfo;->high:Ljava/lang/String;

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, " | "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v13, p1, Lcom/android/internal/util/weather/WeatherInfo;->low:Ljava/lang/String;

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    :goto_6
    invoke-virtual {v12, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 433
    iget-object v11, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mWeatherTempsPanel:Landroid/widget/RelativeLayout;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 437
    :cond_4
    iget-object v11, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mWeatherPanel:Landroid/widget/RelativeLayout;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 439
    :cond_5
    return-void

    .line 392
    .end local v3           #invertLowhigh:Z
    .end local v8           #showLocation:Z
    .end local v9           #showTimestamp:Z
    :cond_6
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 394
    .restart local v8       #showLocation:Z
    :cond_7
    const/4 v9, 0x0

    goto/16 :goto_1

    .line 396
    .restart local v9       #showTimestamp:Z
    :cond_8
    const/4 v3, 0x0

    goto/16 :goto_2

    .line 412
    .restart local v0       #conditionCode:Ljava/lang/String;
    .restart local v1       #condition_filename:Ljava/lang/String;
    .restart local v3       #invertLowhigh:Z
    .restart local v6       #resID:I
    :cond_9
    iget-object v11, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mWeatherImage:Landroid/widget/ImageView;

    const v12, 0x1080632

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_3

    .line 417
    .end local v0           #conditionCode:Ljava/lang/String;
    .end local v1           #condition_filename:Ljava/lang/String;
    .end local v6           #resID:I
    :cond_a
    const/16 v11, 0x8

    goto/16 :goto_4

    .line 428
    .restart local v2       #date:Ljava/lang/String;
    .restart local v4       #lastTime:Ljava/util/Date;
    .restart local v10       #time:Ljava/lang/String;
    :cond_b
    const/16 v11, 0x8

    goto :goto_5

    .line 432
    .end local v2           #date:Ljava/lang/String;
    .end local v4           #lastTime:Ljava/util/Date;
    .end local v10           #time:Ljava/lang/String;
    :cond_c
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, p1, Lcom/android/internal/util/weather/WeatherInfo;->low:Ljava/lang/String;

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, " | "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v13, p1, Lcom/android/internal/util/weather/WeatherInfo;->high:Ljava/lang/String;

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    goto :goto_6
.end method

.method private update(ILjava/lang/CharSequence;)V
    .locals 4
    .parameter "what"
    .parameter "string"

    .prologue
    .line 610
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->inWidgetMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 613
    packed-switch p1, :pswitch_data_0

    .line 629
    :goto_0
    :pswitch_0
    return-void

    .line 618
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mTransientTextManager:Lcom/android/internal/policy/impl/KeyguardStatusViewManager$TransientTextManager;

    const/4 v1, 0x0

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, p2, v1, v2, v3}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$TransientTextManager;->post(Ljava/lang/CharSequence;IJ)V

    goto :goto_0

    .line 627
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mShowingStatus:Z

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->updateStatusLines(Z)V

    goto :goto_0

    .line 613
    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateAlarmInfo()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 670
    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mAlarmStatusView:Landroid/widget/TextView;

    if-eqz v3, :cond_0

    .line 671
    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->getNextAlarm()Ljava/lang/String;

    move-result-object v0

    .line 672
    .local v0, nextAlarm:Ljava/lang/String;
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mShowingStatus:Z

    if-eqz v3, :cond_1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v1, 0x1

    .line 673
    .local v1, showAlarm:Z
    :goto_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mAlarmStatusView:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 674
    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mAlarmStatusView:Landroid/widget/TextView;

    const v4, 0x108002e

    invoke-virtual {v3, v4, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 675
    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mAlarmStatusView:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    :goto_1
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 677
    .end local v0           #nextAlarm:Ljava/lang/String;
    .end local v1           #showAlarm:Z
    :cond_0
    return-void

    .restart local v0       #nextAlarm:Ljava/lang/String;
    :cond_1
    move v1, v2

    .line 672
    goto :goto_0

    .line 675
    .restart local v1       #showAlarm:Z
    :cond_2
    const/16 v2, 0x8

    goto :goto_1
.end method

.method private updateCarrierStateWithSimStatus(Lcom/android/internal/telephony/IccCard$State;)V
    .locals 6
    .parameter "simState"

    .prologue
    const v5, 0x1040307

    const/4 v4, 0x1

    .line 814
    const/4 v1, 0x0

    .line 815
    .local v1, carrierText:Ljava/lang/CharSequence;
    const/4 v0, 0x0

    .line 816
    .local v0, carrierHelpTextId:I
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mEmergencyButtonEnabledBecauseSimLocked:Z

    .line 817
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->getStatusForIccState(Lcom/android/internal/telephony/IccCard$State;)Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mStatus:Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;

    .line 818
    iput-object p1, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    .line 819
    sget-object v2, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$4;->$SwitchMap$com$android$internal$policy$impl$KeyguardStatusViewManager$StatusMode:[I

    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mStatus:Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 874
    :cond_0
    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->setCarrierText(Ljava/lang/CharSequence;)V

    .line 875
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->setCarrierHelpText(I)V

    .line 876
    iget v2, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mPhoneState:I

    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->updateEmergencyCallButtonState(I)V

    .line 877
    return-void

    .line 821
    :pswitch_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mPlmn:Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mSpn:Ljava/lang/CharSequence;

    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->makeCarierString(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 822
    goto :goto_0

    .line 825
    :pswitch_1
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x1040312

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mPlmn:Ljava/lang/CharSequence;

    invoke-direct {p0, v2, v3}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->makeCarrierStringOnEmergencyCapable(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 828
    const v0, 0x10402fc

    .line 829
    goto :goto_0

    .line 836
    :pswitch_2
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mPlmn:Ljava/lang/CharSequence;

    invoke-direct {p0, v2, v3}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->makeCarrierStringOnEmergencyCapable(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 839
    const v0, 0x104030a

    .line 840
    goto :goto_0

    .line 843
    :pswitch_3
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 844
    const v0, 0x104030b

    .line 845
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mEmergencyButtonEnabledBecauseSimLocked:Z

    goto :goto_0

    .line 849
    :pswitch_4
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mPlmn:Ljava/lang/CharSequence;

    invoke-direct {p0, v2, v3}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->makeCarrierStringOnEmergencyCapable(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 852
    const v0, 0x1040309

    .line 853
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mEmergencyButtonEnabledBecauseSimLocked:Z

    goto :goto_0

    .line 857
    :pswitch_5
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x1040315

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mPlmn:Ljava/lang/CharSequence;

    invoke-direct {p0, v2, v3}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->makeCarrierStringOnEmergencyCapable(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 860
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mEmergencyButtonEnabledBecauseSimLocked:Z

    goto :goto_0

    .line 864
    :pswitch_6
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x1040313

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mPlmn:Ljava/lang/CharSequence;

    invoke-direct {p0, v2, v3}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->makeCarrierStringOnEmergencyCapable(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 867
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->isPukUnlockScreenEnable()Z

    move-result v2

    if-nez v2, :cond_0

    .line 869
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mEmergencyButtonEnabledBecauseSimLocked:Z

    goto/16 :goto_0

    .line 819
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private updateCarrierText()V
    .locals 2

    .prologue
    .line 702
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->inWidgetMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mCarrierView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 703
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mCarrierView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mCarrierText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 705
    :cond_0
    return-void
.end method

.method private updateEmergencyCallButtonState(I)V
    .locals 5
    .parameter "phoneState"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 952
    iget-object v4, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mEmergencyCallButton:Landroid/widget/Button;

    if-eqz v4, :cond_1

    .line 953
    iget-object v4, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4}, Lcom/android/internal/widget/LockPatternUtils;->isEmergencyCallEnabledWhileSimLocked()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-boolean v4, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mEmergencyButtonEnabledBecauseSimLocked:Z

    if-eqz v4, :cond_2

    move v0, v2

    .line 956
    .local v0, enabledBecauseSimLocked:Z
    :goto_0
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mEmergencyCallButtonEnabledInScreen:Z

    if-nez v4, :cond_0

    if-eqz v0, :cond_3

    :cond_0
    move v1, v2

    .line 957
    .local v1, shown:Z
    :goto_1
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mEmergencyCallButton:Landroid/widget/Button;

    invoke-virtual {v2, v3, p1, v1}, Lcom/android/internal/widget/LockPatternUtils;->updateEmergencyCallButtonState(Landroid/widget/Button;IZ)V

    .line 960
    .end local v0           #enabledBecauseSimLocked:Z
    .end local v1           #shown:Z
    :cond_1
    return-void

    :cond_2
    move v0, v3

    .line 953
    goto :goto_0

    .restart local v0       #enabledBecauseSimLocked:Z
    :cond_3
    move v1, v3

    .line 956
    goto :goto_1
.end method

.method private updateOwnerInfo()V
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v3, 0x0

    .line 680
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 681
    .local v1, res:Landroid/content/ContentResolver;
    const-string v2, "lock_screen_owner_info_enabled"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_1

    .line 683
    .local v0, ownerInfoEnabled:Z
    :goto_0
    if-eqz v0, :cond_2

    const-string v2, "lock_screen_owner_info"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_1
    iput-object v2, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mOwnerInfoText:Ljava/lang/CharSequence;

    .line 685
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mOwnerInfoView:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 686
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mOwnerInfoView:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mOwnerInfoText:Ljava/lang/CharSequence;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 687
    iget-object v4, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mOwnerInfoView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mOwnerInfoText:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/16 v2, 0x8

    :goto_2
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 689
    :cond_0
    return-void

    .end local v0           #ownerInfoEnabled:Z
    :cond_1
    move v0, v3

    .line 681
    goto :goto_0

    .line 683
    .restart local v0       #ownerInfoEnabled:Z
    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    :cond_3
    move v2, v3

    .line 687
    goto :goto_2
.end method

.method private updateStatus1()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 692
    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mStatus1View:Landroid/widget/TextView;

    if-eqz v3, :cond_0

    .line 693
    new-instance v0, Llibcore/util/MutableInt;

    invoke-direct {v0, v2}, Llibcore/util/MutableInt;-><init>(I)V

    .line 694
    .local v0, icon:Llibcore/util/MutableInt;
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->getPriorityTextMessage(Llibcore/util/MutableInt;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 695
    .local v1, string:Ljava/lang/CharSequence;
    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mStatus1View:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 696
    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mStatus1View:Landroid/widget/TextView;

    iget v4, v0, Llibcore/util/MutableInt;->value:I

    invoke-virtual {v3, v4, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 697
    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mStatus1View:Landroid/widget/TextView;

    iget-boolean v4, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mShowingStatus:Z

    if-eqz v4, :cond_1

    :goto_0
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 699
    .end local v0           #icon:Llibcore/util/MutableInt;
    .end local v1           #string:Ljava/lang/CharSequence;
    :cond_0
    return-void

    .line 697
    .restart local v0       #icon:Llibcore/util/MutableInt;
    .restart local v1       #string:Ljava/lang/CharSequence;
    :cond_1
    const/4 v2, 0x4

    goto :goto_0
.end method


# virtual methods
.method public getStatusForIccState(Lcom/android/internal/telephony/IccCard$State;)Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;
    .locals 3
    .parameter "simState"

    .prologue
    .line 771
    if-nez p1, :cond_0

    .line 772
    sget-object v1, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;->Normal:Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;

    .line 798
    :goto_0
    return-object v1

    .line 775
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isDeviceProvisioned()Z

    move-result v1

    if-nez v1, :cond_3

    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    if-eq p1, v1, :cond_1

    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->PERM_DISABLED:Lcom/android/internal/telephony/IccCard$State;

    if-ne p1, v1, :cond_3

    :cond_1
    const/4 v0, 0x1

    .line 779
    .local v0, missingAndNotProvisioned:Z
    :goto_1
    if-eqz v0, :cond_2

    sget-object p1, Lcom/android/internal/telephony/IccCard$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    .line 780
    :cond_2
    sget-object v1, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$4;->$SwitchMap$com$android$internal$telephony$IccCard$State:[I

    invoke-virtual {p1}, Lcom/android/internal/telephony/IccCard$State;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 798
    sget-object v1, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;->SimMissing:Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;

    goto :goto_0

    .line 775
    .end local v0           #missingAndNotProvisioned:Z
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    .line 782
    .restart local v0       #missingAndNotProvisioned:Z
    :pswitch_0
    sget-object v1, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;->SimMissing:Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;

    goto :goto_0

    .line 784
    :pswitch_1
    sget-object v1, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;->SimMissingLocked:Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;

    goto :goto_0

    .line 786
    :pswitch_2
    sget-object v1, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;->SimMissing:Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;

    goto :goto_0

    .line 788
    :pswitch_3
    sget-object v1, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;->SimLocked:Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;

    goto :goto_0

    .line 790
    :pswitch_4
    sget-object v1, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;->SimPukLocked:Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;

    goto :goto_0

    .line 792
    :pswitch_5
    sget-object v1, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;->Normal:Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;

    goto :goto_0

    .line 794
    :pswitch_6
    sget-object v1, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;->SimPermDisabled:Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;

    goto :goto_0

    .line 796
    :pswitch_7
    sget-object v1, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;->SimMissing:Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;

    goto :goto_0

    .line 780
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    const/4 v2, 0x0

    .line 1011
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mEmergencyCallButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_1

    .line 1012
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->takeEmergencyCallAction()V

    .line 1024
    :cond_0
    :goto_0
    return-void

    .line 1013
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mWeatherPanel:Landroid/widget/RelativeLayout;

    if-ne p1, v0, :cond_0

    .line 1015
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mWeatherCondition:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 1016
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mWeatherCondition:Landroid/widget/TextView;

    const v1, 0x1040526

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1019
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    .line 1020
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1021
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 633
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mInfoCallback:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->removeCallback(Ljava/lang/Object;)V

    .line 634
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mSimStateCallback:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimStateCallback;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->removeCallback(Ljava/lang/Object;)V

    .line 635
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 640
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mInfoCallback:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->registerInfoCallback(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;)V

    .line 641
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mSimStateCallback:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimStateCallback;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->registerSimStateCallback(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimStateCallback;)V

    .line 642
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->resetStatusInfo()V

    .line 643
    return-void
.end method

.method refreshDate()V
    .locals 3

    .prologue
    .line 761
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mDateView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 762
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mDateView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mDateFormatString:Ljava/lang/String;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-static {v1, v2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 764
    :cond_0
    return-void
.end method

.method resetStatusInfo()V
    .locals 1

    .prologue
    .line 646
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mInstructionText:Ljava/lang/String;

    .line 647
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->shouldShowBatteryInfo()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mShowingBatteryInfo:Z

    .line 648
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isDevicePluggedIn()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mPluggedIn:Z

    .line 649
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getBatteryLevel()I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mBatteryLevel:I

    .line 650
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->updateStatusLines(Z)V

    .line 651
    return-void
.end method

.method public setCarrierHelpText(I)V
    .locals 2
    .parameter "resId"

    .prologue
    .line 588
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mCarrierHelpText:Ljava/lang/CharSequence;

    .line 589
    const/16 v0, 0xc

    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mCarrierHelpText:Ljava/lang/CharSequence;

    invoke-direct {p0, v0, v1}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->update(ILjava/lang/CharSequence;)V

    .line 590
    return-void
.end method

.method setCarrierText(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "string"

    .prologue
    .line 572
    iput-object p1, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mCarrierText:Ljava/lang/CharSequence;

    .line 573
    const/16 v0, 0xb

    invoke-direct {p0, v0, p1}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->update(ILjava/lang/CharSequence;)V

    .line 574
    return-void
.end method

.method public setHelpMessage(II)V
    .locals 3
    .parameter "textResId"
    .parameter "lockIcon"

    .prologue
    .line 604
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 605
    .local v0, tmp:Ljava/lang/CharSequence;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    iput-object v1, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mHelpMessageText:Ljava/lang/String;

    .line 606
    const/16 v1, 0xd

    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mHelpMessageText:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->update(ILjava/lang/CharSequence;)V

    .line 607
    return-void

    .line 605
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method setInstructionText(Ljava/lang/String;)V
    .locals 1
    .parameter "string"

    .prologue
    .line 567
    iput-object p1, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mInstructionText:Ljava/lang/String;

    .line 568
    const/16 v0, 0xa

    invoke-direct {p0, v0, p1}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->update(ILjava/lang/CharSequence;)V

    .line 569
    return-void
.end method

.method setOwnerInfo(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "string"

    .prologue
    .line 577
    iput-object p1, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mOwnerInfoText:Ljava/lang/CharSequence;

    .line 578
    const/16 v0, 0xe

    invoke-direct {p0, v0, p1}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->update(ILjava/lang/CharSequence;)V

    .line 579
    return-void
.end method

.method updateStatusLines(Z)V
    .locals 0
    .parameter "showStatusLines"

    .prologue
    .line 662
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mShowingStatus:Z

    .line 663
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->updateAlarmInfo()V

    .line 664
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->updateOwnerInfo()V

    .line 665
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->updateStatus1()V

    .line 666
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->updateCarrierText()V

    .line 667
    return-void
.end method

.class public Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;
.super Lmiui/app/screenelement/ScreenElementRoot;
.source "LockScreenRoot.java"

# interfaces
.implements Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot$UnlockerCallback;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "LockScreenRoot"

.field public static final SMS_BODY_PREVIEW:Ljava/lang/String; = "sms_body_preview"

.field private static final TAG_NAME_BATTERYFULL:Ljava/lang/String; = "BatteryFull"

.field private static final TAG_NAME_CHARGING:Ljava/lang/String; = "Charging"

.field private static final TAG_NAME_LOWBATTERY:Ljava/lang/String; = "BatteryLow"

.field private static final TAG_NAME_NORMAL:Ljava/lang/String; = "Normal"


# instance fields
.field private curCategory:Ljava/lang/String;

.field private mBatteryLevel:Lmiui/app/screenelement/util/IndexedNumberVariable;

.field private mBatteryState:Lmiui/app/screenelement/util/IndexedNumberVariable;

.field private mDisplayDesktop:Z

.field private mFrameRateBatteryFull:F

.field private mFrameRateBatteryLow:F

.field private mFrameRateCharging:F

.field private final mUnlockerCallback:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot$UnlockerCallback;


# direct methods
.method public constructor <init>(Lmiui/app/screenelement/ScreenContext;Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot$UnlockerCallback;)V
    .locals 3
    .parameter "c"
    .parameter "unlockerCallback"

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lmiui/app/screenelement/ScreenElementRoot;-><init>(Lmiui/app/screenelement/ScreenContext;)V

    .line 76
    iput-object p2, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mUnlockerCallback:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot$UnlockerCallback;

    .line 77
    new-instance v0, Lmiui/app/screenelement/util/IndexedNumberVariable;

    const-string v1, "battery_state"

    iget-object v2, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mContext:Lmiui/app/screenelement/ScreenContext;

    iget-object v2, v2, Lmiui/app/screenelement/ScreenContext;->mVariables:Lmiui/app/screenelement/data/Variables;

    invoke-direct {v0, v1, v2}, Lmiui/app/screenelement/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Lmiui/app/screenelement/data/Variables;)V

    iput-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mBatteryState:Lmiui/app/screenelement/util/IndexedNumberVariable;

    .line 78
    new-instance v0, Lmiui/app/screenelement/util/IndexedNumberVariable;

    const-string v1, "battery_level"

    iget-object v2, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mContext:Lmiui/app/screenelement/ScreenContext;

    iget-object v2, v2, Lmiui/app/screenelement/ScreenContext;->mVariables:Lmiui/app/screenelement/data/Variables;

    invoke-direct {v0, v1, v2}, Lmiui/app/screenelement/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Lmiui/app/screenelement/data/Variables;)V

    iput-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mBatteryLevel:Lmiui/app/screenelement/util/IndexedNumberVariable;

    .line 79
    return-void
.end method


# virtual methods
.method protected createElementGroup(Lorg/w3c/dom/Element;Lmiui/app/screenelement/ScreenContext;)Lmiui/app/screenelement/elements/ElementGroup;
    .locals 2
    .parameter "root"
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/app/screenelement/ScreenElementLoadException;
        }
    .end annotation

    .prologue
    .line 192
    new-instance v0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenElementGroup;

    iget-object v1, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mContext:Lmiui/app/screenelement/ScreenContext;

    invoke-direct {v0, p1, v1, p0}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenElementGroup;-><init>(Lorg/w3c/dom/Element;Lmiui/app/screenelement/ScreenContext;Lmiui/app/screenelement/ScreenElementRoot;)V

    return-object v0
.end method

.method public endUnlockMoving(Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;)V
    .locals 1
    .parameter "ele"

    .prologue
    .line 197
    iget-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mElementGroup:Lmiui/app/screenelement/elements/ElementGroup;

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mElementGroup:Lmiui/app/screenelement/elements/ElementGroup;

    check-cast v0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenElementGroup;

    invoke-virtual {v0, p1}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenElementGroup;->endUnlockMoving(Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;)V

    .line 199
    :cond_0
    return-void
.end method

.method public findTask(Ljava/lang/String;)Lmiui/app/screenelement/util/Task;
    .locals 1
    .parameter "id"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mUnlockerCallback:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot$UnlockerCallback;

    invoke-interface {v0, p1}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot$UnlockerCallback;->findTask(Ljava/lang/String;)Lmiui/app/screenelement/util/Task;

    move-result-object v0

    return-object v0
.end method

.method public haptic(I)V
    .locals 1
    .parameter "effectId"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mUnlockerCallback:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot$UnlockerCallback;

    invoke-interface {v0, p1}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot$UnlockerCallback;->haptic(I)V

    .line 103
    return-void
.end method

.method public init()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 162
    invoke-super {p0}, Lmiui/app/screenelement/ScreenElementRoot;->init()V

    .line 165
    new-instance v0, Lmiui/security/ChooseLockSettingsHelper;

    iget-object v3, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mContext:Lmiui/app/screenelement/ScreenContext;

    iget-object v3, v3, Lmiui/app/screenelement/ScreenContext;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Lmiui/security/ChooseLockSettingsHelper;-><init>(Landroid/content/Context;)V

    .line 166
    .local v0, helper:Lmiui/security/ChooseLockSettingsHelper;
    iget-object v3, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mContext:Lmiui/app/screenelement/ScreenContext;

    iget-object v3, v3, Lmiui/app/screenelement/ScreenContext;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "pref_key_enable_notification_body"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v2, :cond_1

    iget-object v3, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mContext:Lmiui/app/screenelement/ScreenContext;

    iget-object v3, v3, Lmiui/app/screenelement/ScreenContext;->mContext:Landroid/content/Context;

    const-string v4, "com.android.mms"

    invoke-static {v3, v4}, Lmiui/net/FirewallManager;->isAccessControlProtected(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lmiui/security/ChooseLockSettingsHelper;->isACLockEnabled()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    invoke-virtual {v0}, Lmiui/security/ChooseLockSettingsHelper;->isPrivacyModeEnabled()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mUnlockerCallback:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot$UnlockerCallback;

    invoke-interface {v3}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot$UnlockerCallback;->isSecure()Z

    move-result v3

    if-nez v3, :cond_1

    .line 174
    .local v2, showSmsBodySetting:Z
    :goto_0
    new-instance v1, Lmiui/app/screenelement/util/IndexedNumberVariable;

    const-string v3, "sms_body_preview"

    iget-object v4, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mContext:Lmiui/app/screenelement/ScreenContext;

    iget-object v4, v4, Lmiui/app/screenelement/ScreenContext;->mVariables:Lmiui/app/screenelement/data/Variables;

    invoke-direct {v1, v3, v4}, Lmiui/app/screenelement/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Lmiui/app/screenelement/data/Variables;)V

    .line 175
    .local v1, showSms:Lmiui/app/screenelement/util/IndexedNumberVariable;
    if-eqz v2, :cond_2

    const-wide/high16 v3, 0x3ff0

    :goto_1
    invoke-virtual {v1, v3, v4}, Lmiui/app/screenelement/util/IndexedNumberVariable;->set(D)V

    .line 176
    return-void

    .line 166
    .end local v1           #showSms:Lmiui/app/screenelement/util/IndexedNumberVariable;
    .end local v2           #showSmsBodySetting:Z
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 175
    .restart local v1       #showSms:Lmiui/app/screenelement/util/IndexedNumberVariable;
    .restart local v2       #showSmsBodySetting:Z
    :cond_2
    const-wide/16 v3, 0x0

    goto :goto_1
.end method

.method public isDisplayDesktop()Z
    .locals 1

    .prologue
    .line 208
    iget-boolean v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mDisplayDesktop:Z

    return v0
.end method

.method protected onAddVariableUpdater(Lmiui/app/screenelement/data/VariableUpdaterManager;)V
    .locals 1
    .parameter "m"

    .prologue
    .line 111
    invoke-super {p0, p1}, Lmiui/app/screenelement/ScreenElementRoot;->onAddVariableUpdater(Lmiui/app/screenelement/data/VariableUpdaterManager;)V

    .line 112
    new-instance v0, Lmiui/app/screenelement/data/BatteryVariableUpdater;

    invoke-direct {v0, p1}, Lmiui/app/screenelement/data/BatteryVariableUpdater;-><init>(Lmiui/app/screenelement/data/VariableUpdaterManager;)V

    invoke-virtual {p1, v0}, Lmiui/app/screenelement/data/VariableUpdaterManager;->add(Lmiui/app/screenelement/data/VariableUpdater;)V

    .line 113
    new-instance v0, Lmiui/app/screenelement/data/VolumeVariableUpdater;

    invoke-direct {v0, p1}, Lmiui/app/screenelement/data/VolumeVariableUpdater;-><init>(Lmiui/app/screenelement/data/VariableUpdaterManager;)V

    invoke-virtual {p1, v0}, Lmiui/app/screenelement/data/VariableUpdaterManager;->add(Lmiui/app/screenelement/data/VariableUpdater;)V

    .line 114
    return-void
.end method

.method public onButtonInteractive(Lmiui/app/screenelement/elements/ButtonScreenElement;Lmiui/app/screenelement/elements/ButtonScreenElement$ButtonAction;)V
    .locals 1
    .parameter "e"
    .parameter "a"

    .prologue
    .line 213
    iget-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mUnlockerCallback:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot$UnlockerCallback;

    invoke-interface {v0}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot$UnlockerCallback;->pokeWakelock()V

    .line 214
    return-void
.end method

.method protected onLoad(Lorg/w3c/dom/Element;)Z
    .locals 2
    .parameter "root"

    .prologue
    .line 179
    invoke-super {p0, p1}, Lmiui/app/screenelement/ScreenElementRoot;->onLoad(Lorg/w3c/dom/Element;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 180
    const/4 v0, 0x0

    .line 188
    :goto_0
    return v0

    .line 182
    :cond_0
    const-string v0, "displayDesktop"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mDisplayDesktop:Z

    .line 183
    const-string v0, "frameRateCharging"

    iget v1, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mNormalFrameRate:F

    invoke-static {p1, v0, v1}, Lmiui/app/screenelement/util/Utils;->getAttrAsFloat(Lorg/w3c/dom/Element;Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mFrameRateCharging:F

    .line 184
    const-string v0, "frameRateBatteryLow"

    iget v1, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mNormalFrameRate:F

    invoke-static {p1, v0, v1}, Lmiui/app/screenelement/util/Utils;->getAttrAsFloat(Lorg/w3c/dom/Element;Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mFrameRateBatteryLow:F

    .line 185
    const-string v0, "frameRateBatteryFull"

    iget v1, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mNormalFrameRate:F

    invoke-static {p1, v0, v1}, Lmiui/app/screenelement/util/Utils;->getAttrAsFloat(Lorg/w3c/dom/Element;Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mFrameRateBatteryFull:F

    .line 187
    iget-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mVariableBinderManager:Lmiui/app/screenelement/data/VariableBinderManager;

    invoke-static {v0}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/BuiltinVariableBinders;->fill(Lmiui/app/screenelement/data/VariableBinderManager;)V

    .line 188
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onRefreshBatteryInfo(ZZI)V
    .locals 6
    .parameter "showBatteryInfo"
    .parameter "pluggedIn"
    .parameter "batteryLevel"

    .prologue
    const/4 v5, 0x0

    .line 117
    iget-object v2, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mBatteryLevel:Lmiui/app/screenelement/util/IndexedNumberVariable;

    int-to-double v3, p3

    invoke-virtual {v2, v3, v4}, Lmiui/app/screenelement/util/IndexedNumberVariable;->set(D)V

    .line 118
    iget-object v2, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mElementGroup:Lmiui/app/screenelement/elements/ElementGroup;

    if-nez v2, :cond_1

    .line 158
    :cond_0
    :goto_0
    return-void

    .line 122
    :cond_1
    iget-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->curCategory:Ljava/lang/String;

    .line 123
    .local v0, newCategory:Ljava/lang/String;
    const/4 v1, 0x0

    .line 124
    .local v1, state:I
    if-eqz p1, :cond_4

    .line 125
    if-eqz p2, :cond_3

    .line 126
    const/16 v2, 0x64

    if-lt p3, v2, :cond_2

    .line 127
    const-string v0, "BatteryFull"

    .line 128
    const/4 v1, 0x3

    .line 129
    iget v2, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mFrameRateBatteryFull:F

    iput v2, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mFrameRate:F

    .line 147
    :goto_1
    iget-object v2, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->curCategory:Ljava/lang/String;

    if-eq v0, v2, :cond_0

    .line 149
    iget v2, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mFrameRate:F

    invoke-virtual {p0, v2}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->requestFramerate(F)V

    .line 150
    invoke-virtual {p0}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->requestUpdate()V

    .line 151
    iget-object v2, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mBatteryState:Lmiui/app/screenelement/util/IndexedNumberVariable;

    int-to-double v3, v1

    invoke-virtual {v2, v3, v4}, Lmiui/app/screenelement/util/IndexedNumberVariable;->set(D)V

    .line 152
    iget-object v2, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mElementGroup:Lmiui/app/screenelement/elements/ElementGroup;

    const-string v3, "BatteryFull"

    invoke-virtual {v2, v3, v5}, Lmiui/app/screenelement/elements/ElementGroup;->showCategory(Ljava/lang/String;Z)V

    .line 153
    iget-object v2, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mElementGroup:Lmiui/app/screenelement/elements/ElementGroup;

    const-string v3, "Charging"

    invoke-virtual {v2, v3, v5}, Lmiui/app/screenelement/elements/ElementGroup;->showCategory(Ljava/lang/String;Z)V

    .line 154
    iget-object v2, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mElementGroup:Lmiui/app/screenelement/elements/ElementGroup;

    const-string v3, "BatteryLow"

    invoke-virtual {v2, v3, v5}, Lmiui/app/screenelement/elements/ElementGroup;->showCategory(Ljava/lang/String;Z)V

    .line 155
    iget-object v2, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mElementGroup:Lmiui/app/screenelement/elements/ElementGroup;

    const-string v3, "Normal"

    invoke-virtual {v2, v3, v5}, Lmiui/app/screenelement/elements/ElementGroup;->showCategory(Ljava/lang/String;Z)V

    .line 156
    iget-object v2, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mElementGroup:Lmiui/app/screenelement/elements/ElementGroup;

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v3}, Lmiui/app/screenelement/elements/ElementGroup;->showCategory(Ljava/lang/String;Z)V

    .line 157
    iput-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->curCategory:Ljava/lang/String;

    goto :goto_0

    .line 131
    :cond_2
    const-string v0, "Charging"

    .line 132
    const/4 v1, 0x1

    .line 133
    iget v2, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mFrameRateCharging:F

    iput v2, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mFrameRate:F

    goto :goto_1

    .line 136
    :cond_3
    const-string v0, "BatteryLow"

    .line 137
    const/4 v1, 0x2

    .line 138
    iget v2, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mFrameRateBatteryLow:F

    iput v2, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mFrameRate:F

    goto :goto_1

    .line 141
    :cond_4
    const-string v0, "Normal"

    .line 142
    const/4 v1, 0x0

    .line 143
    iget v2, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mNormalFrameRate:F

    iput v2, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mFrameRate:F

    goto :goto_1
.end method

.method public onTouch(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mElementGroup:Lmiui/app/screenelement/elements/ElementGroup;

    if-nez v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mUnlockerCallback:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot$UnlockerCallback;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot$UnlockerCallback;->unlocked(Landroid/content/Intent;)V

    .line 85
    const/4 v0, 0x0

    .line 88
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lmiui/app/screenelement/ScreenElementRoot;->onTouch(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public pokeWakelock()V
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mUnlockerCallback:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot$UnlockerCallback;

    invoke-interface {v0}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot$UnlockerCallback;->pokeWakelock()V

    .line 93
    return-void
.end method

.method protected shouldPlaySound()Z
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mUnlockerCallback:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot$UnlockerCallback;

    invoke-interface {v0}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot$UnlockerCallback;->isSoundEnable()Z

    move-result v0

    return v0
.end method

.method public startUnlockMoving(Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;)V
    .locals 1
    .parameter "ele"

    .prologue
    .line 203
    iget-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mElementGroup:Lmiui/app/screenelement/elements/ElementGroup;

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mElementGroup:Lmiui/app/screenelement/elements/ElementGroup;

    check-cast v0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenElementGroup;

    invoke-virtual {v0, p1}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenElementGroup;->startUnlockMoving(Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;)V

    .line 205
    :cond_0
    return-void
.end method

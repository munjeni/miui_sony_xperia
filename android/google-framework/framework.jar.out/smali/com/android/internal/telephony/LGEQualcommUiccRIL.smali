.class public Lcom/android/internal/telephony/LGEQualcommUiccRIL;
.super Lcom/android/internal/telephony/QualcommSharedRIL;
.source "LGEQualcommUiccRIL.java"

# interfaces
.implements Lcom/android/internal/telephony/CommandsInterface;


# instance fields
.field RILJ_LOGD:Z

.field RILJ_LOGV:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 1
    .parameter "context"
    .parameter "networkMode"
    .parameter "cdmaSubscription"

    .prologue
    const/4 v0, 0x1

    .line 40
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/QualcommSharedRIL;-><init>(Landroid/content/Context;II)V

    .line 36
    iput-boolean v0, p0, Lcom/android/internal/telephony/LGEQualcommUiccRIL;->RILJ_LOGV:Z

    .line 37
    iput-boolean v0, p0, Lcom/android/internal/telephony/LGEQualcommUiccRIL;->RILJ_LOGD:Z

    .line 41
    return-void
.end method


# virtual methods
.method protected responseIccCardStatus(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 9
    .parameter "p"

    .prologue
    .line 103
    new-instance v5, Lcom/android/internal/telephony/IccCardStatus;

    invoke-direct {v5}, Lcom/android/internal/telephony/IccCardStatus;-><init>()V

    .line 104
    .local v5, status:Lcom/android/internal/telephony/IccCardStatus;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/IccCardStatus;->setCardState(I)V

    .line 105
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/IccCardStatus;->setUniversalPinState(I)V

    .line 106
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/IccCardStatus;->setGsmUmtsSubscriptionAppIndex(I)V

    .line 107
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/IccCardStatus;->setCdmaSubscriptionAppIndex(I)V

    .line 109
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/IccCardStatus;->setImsSubscriptionAppIndex(I)V

    .line 111
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 114
    .local v4, numApplications:I
    const/16 v6, 0x8

    if-le v4, v6, :cond_0

    .line 115
    const/16 v4, 0x8

    .line 117
    :cond_0
    invoke-virtual {v5, v4}, Lcom/android/internal/telephony/IccCardStatus;->setNumApplications(I)V

    .line 119
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v4, :cond_1

    .line 120
    new-instance v2, Lcom/android/internal/telephony/IccCardApplication;

    invoke-direct {v2}, Lcom/android/internal/telephony/IccCardApplication;-><init>()V

    .line 121
    .local v2, ca:Lcom/android/internal/telephony/IccCardApplication;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual {v2, v6}, Lcom/android/internal/telephony/IccCardApplication;->AppTypeFromRILInt(I)Lcom/android/internal/telephony/IccCardApplication$AppType;

    move-result-object v6

    iput-object v6, v2, Lcom/android/internal/telephony/IccCardApplication;->app_type:Lcom/android/internal/telephony/IccCardApplication$AppType;

    .line 122
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual {v2, v6}, Lcom/android/internal/telephony/IccCardApplication;->AppStateFromRILInt(I)Lcom/android/internal/telephony/IccCardApplication$AppState;

    move-result-object v6

    iput-object v6, v2, Lcom/android/internal/telephony/IccCardApplication;->app_state:Lcom/android/internal/telephony/IccCardApplication$AppState;

    .line 123
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual {v2, v6}, Lcom/android/internal/telephony/IccCardApplication;->PersoSubstateFromRILInt(I)Lcom/android/internal/telephony/IccCardApplication$PersoSubState;

    move-result-object v6

    iput-object v6, v2, Lcom/android/internal/telephony/IccCardApplication;->perso_substate:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;

    .line 124
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Lcom/android/internal/telephony/IccCardApplication;->aid:Ljava/lang/String;

    .line 125
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Lcom/android/internal/telephony/IccCardApplication;->app_label:Ljava/lang/String;

    .line 126
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    iput v6, v2, Lcom/android/internal/telephony/IccCardApplication;->pin1_replaced:I

    .line 127
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual {v2, v6}, Lcom/android/internal/telephony/IccCardApplication;->PinStateFromRILInt(I)Lcom/android/internal/telephony/IccCardStatus$PinState;

    move-result-object v6

    iput-object v6, v2, Lcom/android/internal/telephony/IccCardApplication;->pin1:Lcom/android/internal/telephony/IccCardStatus$PinState;

    .line 128
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual {v2, v6}, Lcom/android/internal/telephony/IccCardApplication;->PinStateFromRILInt(I)Lcom/android/internal/telephony/IccCardStatus$PinState;

    move-result-object v6

    iput-object v6, v2, Lcom/android/internal/telephony/IccCardApplication;->pin2:Lcom/android/internal/telephony/IccCardStatus$PinState;

    .line 129
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 130
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 131
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 132
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 133
    invoke-virtual {v5, v2}, Lcom/android/internal/telephony/IccCardStatus;->addApplication(Lcom/android/internal/telephony/IccCardApplication;)V

    .line 119
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 135
    .end local v2           #ca:Lcom/android/internal/telephony/IccCardApplication;
    :cond_1
    const/4 v0, -0x1

    .line 136
    .local v0, appIndex:I
    iget v6, p0, Lcom/android/internal/telephony/LGEQualcommUiccRIL;->mPhoneType:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_4

    .line 137
    invoke-virtual {v5}, Lcom/android/internal/telephony/IccCardStatus;->getCdmaSubscriptionAppIndex()I

    move-result v0

    .line 138
    const-string v6, "RILJ"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "This is a CDMA PHONE "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    :goto_1
    if-lez v4, :cond_3

    .line 145
    invoke-virtual {v5, v0}, Lcom/android/internal/telephony/IccCardStatus;->getApplication(I)Lcom/android/internal/telephony/IccCardApplication;

    move-result-object v1

    .line 146
    .local v1, application:Lcom/android/internal/telephony/IccCardApplication;
    iget-object v6, v1, Lcom/android/internal/telephony/IccCardApplication;->aid:Ljava/lang/String;

    iput-object v6, p0, Lcom/android/internal/telephony/LGEQualcommUiccRIL;->mAid:Ljava/lang/String;

    .line 147
    iget-object v6, v1, Lcom/android/internal/telephony/IccCardApplication;->app_type:Lcom/android/internal/telephony/IccCardApplication$AppType;

    sget-object v7, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/IccCardApplication$AppType;

    if-ne v6, v7, :cond_5

    const/4 v6, 0x1

    :goto_2
    iput-boolean v6, p0, Lcom/android/internal/telephony/LGEQualcommUiccRIL;->mUSIM:Z

    .line 149
    iget v6, p0, Lcom/android/internal/telephony/LGEQualcommUiccRIL;->mPreferredNetworkType:I

    iput v6, p0, Lcom/android/internal/telephony/LGEQualcommUiccRIL;->mSetPreferredNetworkType:I

    .line 151
    iget-object v6, p0, Lcom/android/internal/telephony/LGEQualcommUiccRIL;->mAid:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 152
    const-string v6, ""

    iput-object v6, p0, Lcom/android/internal/telephony/LGEQualcommUiccRIL;->mAid:Ljava/lang/String;

    .line 153
    :cond_2
    const-string v6, "RILJ"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mAid "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/LGEQualcommUiccRIL;->mAid:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    .end local v1           #application:Lcom/android/internal/telephony/IccCardApplication;
    :cond_3
    return-object v5

    .line 140
    :cond_4
    invoke-virtual {v5}, Lcom/android/internal/telephony/IccCardStatus;->getGsmUmtsSubscriptionAppIndex()I

    move-result v0

    .line 141
    const-string v6, "RILJ"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "This is a GSM PHONE "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 147
    .restart local v1       #application:Lcom/android/internal/telephony/IccCardApplication;
    :cond_5
    const/4 v6, 0x0

    goto :goto_2
.end method

.method protected responseSetupDataCall(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 2
    .parameter "p"

    .prologue
    .line 89
    const-string v1, "datacall"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/LGEQualcommUiccRIL;->needsOldRilFeature(Ljava/lang/String;)Z

    move-result v0

    .line 91
    .local v0, oldRil:Z
    if-nez v0, :cond_0

    .line 92
    invoke-super {p0, p1}, Lcom/android/internal/telephony/QualcommSharedRIL;->responseSetupDataCall(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    .line 95
    :goto_0
    return-object v1

    .line 94
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 95
    invoke-super {p0, p1}, Lcom/android/internal/telephony/QualcommSharedRIL;->responseSetupDataCall(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method protected responseSignalStrength(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 8
    .parameter "p"

    .prologue
    const/4 v7, -0x1

    .line 162
    const/16 v2, 0xc

    .line 165
    .local v2, numInts:I
    const-string/jumbo v5, "signalstrength"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/LGEQualcommUiccRIL;->needsOldRilFeature(Ljava/lang/String;)Z

    move-result v3

    .line 166
    .local v3, oldRil:Z
    const/4 v1, 0x0

    .line 169
    .local v1, noLte:Z
    new-array v4, v2, [I

    .line 170
    .local v4, response:[I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_4

    .line 171
    if-nez v3, :cond_0

    if-eqz v1, :cond_3

    :cond_0
    const/4 v5, 0x6

    if-le v0, v5, :cond_3

    const/16 v5, 0xc

    if-ge v0, v5, :cond_3

    .line 172
    aput v7, v4, v0

    .line 176
    :goto_1
    const/4 v5, 0x7

    if-ne v0, v5, :cond_1

    aget v5, v4, v0

    const/16 v6, 0x63

    if-ne v5, v6, :cond_1

    .line 177
    aput v7, v4, v0

    .line 178
    const/4 v1, 0x1

    .line 180
    :cond_1
    const/16 v5, 0x8

    if-ne v0, v5, :cond_2

    if-nez v1, :cond_2

    if-nez v3, :cond_2

    .line 181
    aget v5, v4, v0

    mul-int/lit8 v5, v5, -0x1

    aput v5, v4, v0

    .line 170
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 174
    :cond_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    aput v5, v4, v0

    goto :goto_1

    .line 185
    :cond_4
    return-object v4
.end method

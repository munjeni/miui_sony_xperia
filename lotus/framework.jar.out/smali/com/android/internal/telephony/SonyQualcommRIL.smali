.class public Lcom/android/internal/telephony/SonyQualcommRIL;
.super Lcom/android/internal/telephony/QualcommSharedRIL;
.source "SonyQualcommRIL.java"

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

    .line 43
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/QualcommSharedRIL;-><init>(Landroid/content/Context;II)V

    .line 39
    iput-boolean v0, p0, Lcom/android/internal/telephony/SonyQualcommRIL;->RILJ_LOGV:Z

    .line 40
    iput-boolean v0, p0, Lcom/android/internal/telephony/SonyQualcommRIL;->RILJ_LOGD:Z

    .line 44
    return-void
.end method

.method private updateIccType(Lcom/android/internal/telephony/IccCardStatus;)V
    .locals 5
    .parameter "status"

    .prologue
    .line 84
    invoke-virtual {p1}, Lcom/android/internal/telephony/IccCardStatus;->getNumApplications()I

    move-result v2

    if-lez v2, :cond_1

    .line 85
    iget v2, p0, Lcom/android/internal/telephony/SonyQualcommRIL;->mPhoneType:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 86
    invoke-virtual {p1}, Lcom/android/internal/telephony/IccCardStatus;->getCdmaSubscriptionAppIndex()I

    move-result v0

    .line 90
    .local v0, appType:I
    :goto_0
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/IccCardStatus;->getApplication(I)Lcom/android/internal/telephony/IccCardApplication;

    move-result-object v1

    .line 91
    .local v1, application:Lcom/android/internal/telephony/IccCardApplication;
    iget-object v2, v1, Lcom/android/internal/telephony/IccCardApplication;->app_type:Lcom/android/internal/telephony/IccCardApplication$AppType;

    sget-object v3, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/IccCardApplication$AppType;

    if-ne v2, v3, :cond_3

    const/4 v2, 0x1

    :goto_1
    iput-boolean v2, p0, Lcom/android/internal/telephony/SonyQualcommRIL;->mUSIM:Z

    .line 93
    iget v2, p0, Lcom/android/internal/telephony/SonyQualcommRIL;->mPreferredNetworkType:I

    iput v2, p0, Lcom/android/internal/telephony/SonyQualcommRIL;->mSetPreferredNetworkType:I

    .line 94
    iget-object v2, v1, Lcom/android/internal/telephony/IccCardApplication;->aid:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/internal/telephony/SonyQualcommRIL;->mAid:Ljava/lang/String;

    .line 95
    iget-object v2, p0, Lcom/android/internal/telephony/SonyQualcommRIL;->mAid:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 96
    const-string v2, ""

    iput-object v2, p0, Lcom/android/internal/telephony/SonyQualcommRIL;->mAid:Ljava/lang/String;

    .line 97
    :cond_0
    const-string v2, "RILJ"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Picked default AID: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/SonyQualcommRIL;->mAid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    .end local v0           #appType:I
    .end local v1           #application:Lcom/android/internal/telephony/IccCardApplication;
    :cond_1
    return-void

    .line 88
    :cond_2
    invoke-virtual {p1}, Lcom/android/internal/telephony/IccCardStatus;->getGsmUmtsSubscriptionAppIndex()I

    move-result v0

    .restart local v0       #appType:I
    goto :goto_0

    .line 91
    .restart local v1       #application:Lcom/android/internal/telephony/IccCardApplication;
    :cond_3
    const/4 v2, 0x0

    goto :goto_1
.end method


# virtual methods
.method public dial(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;Landroid/os/Message;)V
    .locals 3
    .parameter "address"
    .parameter "clirMode"
    .parameter "uusInfo"
    .parameter "result"

    .prologue
    .line 104
    const/16 v1, 0xa

    invoke-static {v1, p4}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 106
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 107
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 109
    if-nez p3, :cond_1

    .line 110
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 117
    :goto_0
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    const/16 v2, 0xff

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 119
    iget-boolean v1, p0, Lcom/android/internal/telephony/SonyQualcommRIL;->RILJ_LOGD:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/SonyQualcommRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SonyQualcommRIL;->riljLog(Ljava/lang/String;)V

    .line 121
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SonyQualcommRIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 122
    return-void

    .line 112
    :cond_1
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 113
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {p3}, Lcom/android/internal/telephony/UUSInfo;->getType()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 114
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {p3}, Lcom/android/internal/telephony/UUSInfo;->getDcs()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 115
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {p3}, Lcom/android/internal/telephony/UUSInfo;->getUserData()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_0
.end method

.method protected responseIccCardStatus(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 5
    .parameter "p"

    .prologue
    .line 51
    new-instance v3, Lcom/android/internal/telephony/IccCardStatus;

    invoke-direct {v3}, Lcom/android/internal/telephony/IccCardStatus;-><init>()V

    .line 52
    .local v3, status:Lcom/android/internal/telephony/IccCardStatus;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/IccCardStatus;->setCardState(I)V

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/IccCardStatus;->setUniversalPinState(I)V

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/IccCardStatus;->setGsmUmtsSubscriptionAppIndex(I)V

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/IccCardStatus;->setCdmaSubscriptionAppIndex(I)V

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/IccCardStatus;->setImsSubscriptionAppIndex(I)V

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 60
    .local v2, numApplications:I
    const/16 v4, 0x8

    if-le v2, v4, :cond_0

    .line 61
    const/16 v2, 0x8

    .line 63
    :cond_0
    invoke-virtual {v3, v2}, Lcom/android/internal/telephony/IccCardStatus;->setNumApplications(I)V

    .line 65
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 66
    new-instance v0, Lcom/android/internal/telephony/IccCardApplication;

    invoke-direct {v0}, Lcom/android/internal/telephony/IccCardApplication;-><init>()V

    .line 67
    .local v0, ca:Lcom/android/internal/telephony/IccCardApplication;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/IccCardApplication;->AppTypeFromRILInt(I)Lcom/android/internal/telephony/IccCardApplication$AppType;

    move-result-object v4

    iput-object v4, v0, Lcom/android/internal/telephony/IccCardApplication;->app_type:Lcom/android/internal/telephony/IccCardApplication$AppType;

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/IccCardApplication;->AppStateFromRILInt(I)Lcom/android/internal/telephony/IccCardApplication$AppState;

    move-result-object v4

    iput-object v4, v0, Lcom/android/internal/telephony/IccCardApplication;->app_state:Lcom/android/internal/telephony/IccCardApplication$AppState;

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/IccCardApplication;->PersoSubstateFromRILInt(I)Lcom/android/internal/telephony/IccCardApplication$PersoSubState;

    move-result-object v4

    iput-object v4, v0, Lcom/android/internal/telephony/IccCardApplication;->perso_substate:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/android/internal/telephony/IccCardApplication;->aid:Ljava/lang/String;

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/android/internal/telephony/IccCardApplication;->app_label:Ljava/lang/String;

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, v0, Lcom/android/internal/telephony/IccCardApplication;->pin1_replaced:I

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/IccCardApplication;->PinStateFromRILInt(I)Lcom/android/internal/telephony/IccCardStatus$PinState;

    move-result-object v4

    iput-object v4, v0, Lcom/android/internal/telephony/IccCardApplication;->pin1:Lcom/android/internal/telephony/IccCardStatus$PinState;

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/IccCardApplication;->PinStateFromRILInt(I)Lcom/android/internal/telephony/IccCardStatus$PinState;

    move-result-object v4

    iput-object v4, v0, Lcom/android/internal/telephony/IccCardApplication;->pin2:Lcom/android/internal/telephony/IccCardStatus$PinState;

    .line 75
    invoke-virtual {v3, v0}, Lcom/android/internal/telephony/IccCardStatus;->addApplication(Lcom/android/internal/telephony/IccCardApplication;)V

    .line 65
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 78
    .end local v0           #ca:Lcom/android/internal/telephony/IccCardApplication;
    :cond_1
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/SonyQualcommRIL;->updateIccType(Lcom/android/internal/telephony/IccCardStatus;)V

    .line 79
    return-object v3
.end method

.method public setNetworkSelectionMode(Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .parameter "operatorNumeric"
    .parameter "response"

    .prologue
    .line 128
    if-nez p1, :cond_0

    .line 129
    const/16 v1, 0x2e

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 133
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    :goto_0
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 134
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 136
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SonyQualcommRIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 137
    return-void

    .line 131
    .end local v0           #rr:Lcom/android/internal/telephony/RILRequest;
    :cond_0
    const/16 v1, 0x2f

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .restart local v0       #rr:Lcom/android/internal/telephony/RILRequest;
    goto :goto_0
.end method

.method public setNetworkSelectionModeAutomatic(Landroid/os/Message;)V
    .locals 1
    .parameter "response"

    .prologue
    .line 142
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/SonyQualcommRIL;->setNetworkSelectionMode(Ljava/lang/String;Landroid/os/Message;)V

    .line 143
    return-void
.end method

.method public setNetworkSelectionModeManual(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "operatorNumeric"
    .parameter "response"

    .prologue
    .line 148
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/SonyQualcommRIL;->setNetworkSelectionMode(Ljava/lang/String;Landroid/os/Message;)V

    .line 149
    return-void
.end method

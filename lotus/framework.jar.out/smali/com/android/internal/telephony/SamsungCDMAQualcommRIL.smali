.class public Lcom/android/internal/telephony/SamsungCDMAQualcommRIL;
.super Lcom/android/internal/telephony/QualcommSharedRIL;
.source "SamsungCDMAQualcommRIL.java"

# interfaces
.implements Lcom/android/internal/telephony/CommandsInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/SamsungCDMAQualcommRIL$1;,
        Lcom/android/internal/telephony/SamsungCDMAQualcommRIL$IccHandler;
    }
.end annotation


# instance fields
.field private final RIL_INT_RADIO_OFF:I

.field private final RIL_INT_RADIO_ON:I

.field private final RIL_INT_RADIO_ON_HTC:I

.field private final RIL_INT_RADIO_ON_NG:I

.field private final RIL_INT_RADIO_UNAVALIABLE:I

.field protected mIccHandler:Lcom/android/internal/telephony/SamsungCDMAQualcommRIL$IccHandler;


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 1
    .parameter "context"
    .parameter "networkMode"
    .parameter "cdmaSubscription"

    .prologue
    .line 60
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/QualcommSharedRIL;-><init>(Landroid/content/Context;II)V

    .line 53
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/SamsungCDMAQualcommRIL;->RIL_INT_RADIO_OFF:I

    .line 54
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/SamsungCDMAQualcommRIL;->RIL_INT_RADIO_UNAVALIABLE:I

    .line 55
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/internal/telephony/SamsungCDMAQualcommRIL;->RIL_INT_RADIO_ON:I

    .line 56
    const/16 v0, 0xa

    iput v0, p0, Lcom/android/internal/telephony/SamsungCDMAQualcommRIL;->RIL_INT_RADIO_ON_NG:I

    .line 57
    const/16 v0, 0xd

    iput v0, p0, Lcom/android/internal/telephony/SamsungCDMAQualcommRIL;->RIL_INT_RADIO_ON_HTC:I

    .line 61
    return-void
.end method


# virtual methods
.method protected notifyRegistrantsCdmaInfoRec(Lcom/android/internal/telephony/cdma/CdmaInformationRecords;)V
    .locals 6
    .parameter "infoRec"

    .prologue
    const/16 v5, 0x403

    .line 309
    const/16 v0, 0x403

    .line 311
    .local v0, response:I
    iget-object v2, p1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    instance-of v2, v2, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaSignalInfoRec;

    if-eqz v2, :cond_0

    .line 312
    iget-object v1, p1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaSignalInfoRec;

    .line 313
    .local v1, sir:Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaSignalInfoRec;
    if-eqz v1, :cond_0

    iget-boolean v2, v1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaSignalInfoRec;->isPresent:Z

    if-eqz v2, :cond_0

    iget v2, v1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaSignalInfoRec;->signalType:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    iget v2, v1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaSignalInfoRec;->alertPitch:I

    if-nez v2, :cond_0

    iget v2, v1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaSignalInfoRec;->signal:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 318
    const-string v2, "RILJ"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Dropping \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v5}, Lcom/android/internal/telephony/SamsungCDMAQualcommRIL;->responseToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, v5, v1}, Lcom/android/internal/telephony/SamsungCDMAQualcommRIL;->retToString(ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\" to prevent \"ring of death\" bug."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    .end local v1           #sir:Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaSignalInfoRec;
    :goto_0
    return-void

    .line 324
    :cond_0
    invoke-super {p0, p1}, Lcom/android/internal/telephony/QualcommSharedRIL;->notifyRegistrantsCdmaInfoRec(Lcom/android/internal/telephony/cdma/CdmaInformationRecords;)V

    goto :goto_0
.end method

.method protected responseCallList(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 14
    .parameter "p"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 209
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 210
    .local v3, num:I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 212
    .local v4, response:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/DriverCall;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v3, :cond_6

    .line 213
    new-instance v0, Lcom/android/internal/telephony/DriverCall;

    invoke-direct {v0}, Lcom/android/internal/telephony/DriverCall;-><init>()V

    .line 215
    .local v0, dc:Lcom/android/internal/telephony/DriverCall;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    invoke-static {v8}, Lcom/android/internal/telephony/DriverCall;->stateFromCLCC(I)Lcom/android/internal/telephony/DriverCall$State;

    move-result-object v8

    iput-object v8, v0, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    .line 216
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    iput v8, v0, Lcom/android/internal/telephony/DriverCall;->index:I

    .line 217
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    iput v8, v0, Lcom/android/internal/telephony/DriverCall;->TOA:I

    .line 218
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_0

    move v8, v9

    :goto_1
    iput-boolean v8, v0, Lcom/android/internal/telephony/DriverCall;->isMpty:Z

    .line 219
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_1

    move v8, v9

    :goto_2
    iput-boolean v8, v0, Lcom/android/internal/telephony/DriverCall;->isMT:Z

    .line 220
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    iput v8, v0, Lcom/android/internal/telephony/DriverCall;->als:I

    .line 221
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 222
    .local v7, voiceSettings:I
    if-nez v7, :cond_2

    move v8, v10

    :goto_3
    iput-boolean v8, v0, Lcom/android/internal/telephony/DriverCall;->isVoice:Z

    .line 223
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_3

    move v8, v9

    :goto_4
    iput-boolean v8, v0, Lcom/android/internal/telephony/DriverCall;->isVoicePrivacy:Z

    .line 226
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 228
    const-string v8, "RILJ"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Samsung magic = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v0, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    .line 230
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 231
    .local v2, np:I
    invoke-static {v2}, Lcom/android/internal/telephony/DriverCall;->presentationFromCLIP(I)I

    move-result v8

    iput v8, v0, Lcom/android/internal/telephony/DriverCall;->numberPresentation:I

    .line 232
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v0, Lcom/android/internal/telephony/DriverCall;->name:Ljava/lang/String;

    .line 233
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    iput v8, v0, Lcom/android/internal/telephony/DriverCall;->namePresentation:I

    .line 234
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 235
    .local v6, uusInfoPresent:I
    if-ne v6, v9, :cond_4

    .line 236
    new-instance v8, Lcom/android/internal/telephony/UUSInfo;

    invoke-direct {v8}, Lcom/android/internal/telephony/UUSInfo;-><init>()V

    iput-object v8, v0, Lcom/android/internal/telephony/DriverCall;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    .line 237
    iget-object v8, v0, Lcom/android/internal/telephony/DriverCall;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    invoke-virtual {v8, v11}, Lcom/android/internal/telephony/UUSInfo;->setType(I)V

    .line 238
    iget-object v8, v0, Lcom/android/internal/telephony/DriverCall;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    invoke-virtual {v8, v11}, Lcom/android/internal/telephony/UUSInfo;->setDcs(I)V

    .line 239
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    .line 240
    .local v5, userData:[B
    iget-object v8, v0, Lcom/android/internal/telephony/DriverCall;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    invoke-virtual {v8, v5}, Lcom/android/internal/telephony/UUSInfo;->setUserData([B)V

    .line 241
    const-string v8, "Incoming UUS : type=%d, dcs=%d, length=%d"

    const/4 v11, 0x3

    new-array v11, v11, [Ljava/lang/Object;

    iget-object v12, v0, Lcom/android/internal/telephony/DriverCall;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    invoke-virtual {v12}, Lcom/android/internal/telephony/UUSInfo;->getType()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v10

    iget-object v12, v0, Lcom/android/internal/telephony/DriverCall;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    invoke-virtual {v12}, Lcom/android/internal/telephony/UUSInfo;->getDcs()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v9

    const/4 v12, 0x2

    iget-object v13, v0, Lcom/android/internal/telephony/DriverCall;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    invoke-virtual {v13}, Lcom/android/internal/telephony/UUSInfo;->getUserData()[B

    move-result-object v13

    array-length v13, v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v8, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/SamsungCDMAQualcommRIL;->riljLogv(Ljava/lang/String;)V

    .line 244
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Incoming UUS : data (string)="

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    new-instance v11, Ljava/lang/String;

    iget-object v12, v0, Lcom/android/internal/telephony/DriverCall;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    invoke-virtual {v12}, Lcom/android/internal/telephony/UUSInfo;->getUserData()[B

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/SamsungCDMAQualcommRIL;->riljLogv(Ljava/lang/String;)V

    .line 246
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Incoming UUS : data (hex): "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v11, v0, Lcom/android/internal/telephony/DriverCall;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    invoke-virtual {v11}, Lcom/android/internal/telephony/UUSInfo;->getUserData()[B

    move-result-object v11

    invoke-static {v11}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/SamsungCDMAQualcommRIL;->riljLogv(Ljava/lang/String;)V

    .line 253
    .end local v5           #userData:[B
    :goto_5
    iget-object v8, v0, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    iget v11, v0, Lcom/android/internal/telephony/DriverCall;->TOA:I

    invoke-static {v8, v11}, Landroid/telephony/PhoneNumberUtils;->stringFromStringAndTOA(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v0, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    .line 255
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 257
    iget-boolean v8, v0, Lcom/android/internal/telephony/DriverCall;->isVoicePrivacy:Z

    if-eqz v8, :cond_5

    .line 258
    iget-object v8, p0, Lcom/android/internal/telephony/SamsungCDMAQualcommRIL;->mVoicePrivacyOnRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v8}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 259
    const-string v8, "InCall VoicePrivacy is enabled"

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/SamsungCDMAQualcommRIL;->riljLog(Ljava/lang/String;)V

    .line 212
    :goto_6
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .end local v2           #np:I
    .end local v6           #uusInfoPresent:I
    .end local v7           #voiceSettings:I
    :cond_0
    move v8, v10

    .line 218
    goto/16 :goto_1

    :cond_1
    move v8, v10

    .line 219
    goto/16 :goto_2

    .restart local v7       #voiceSettings:I
    :cond_2
    move v8, v9

    .line 222
    goto/16 :goto_3

    :cond_3
    move v8, v10

    .line 223
    goto/16 :goto_4

    .line 249
    .restart local v2       #np:I
    .restart local v6       #uusInfoPresent:I
    :cond_4
    const-string v8, "Incoming UUS : NOT present!"

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/SamsungCDMAQualcommRIL;->riljLogv(Ljava/lang/String;)V

    goto :goto_5

    .line 261
    :cond_5
    iget-object v8, p0, Lcom/android/internal/telephony/SamsungCDMAQualcommRIL;->mVoicePrivacyOffRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v8}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 262
    const-string v8, "InCall VoicePrivacy is disabled"

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/SamsungCDMAQualcommRIL;->riljLog(Ljava/lang/String;)V

    goto :goto_6

    .line 266
    .end local v0           #dc:Lcom/android/internal/telephony/DriverCall;
    .end local v2           #np:I
    .end local v6           #uusInfoPresent:I
    .end local v7           #voiceSettings:I
    :cond_6
    invoke-static {v4}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 268
    return-object v4
.end method

.method protected responseIccCardStatus(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 9
    .parameter "p"

    .prologue
    .line 68
    new-instance v5, Lcom/android/internal/telephony/IccCardStatus;

    invoke-direct {v5}, Lcom/android/internal/telephony/IccCardStatus;-><init>()V

    .line 69
    .local v5, status:Lcom/android/internal/telephony/IccCardStatus;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/IccCardStatus;->setCardState(I)V

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/IccCardStatus;->setUniversalPinState(I)V

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/IccCardStatus;->setGsmUmtsSubscriptionAppIndex(I)V

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/IccCardStatus;->setCdmaSubscriptionAppIndex(I)V

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/IccCardStatus;->setImsSubscriptionAppIndex(I)V

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 79
    .local v4, numApplications:I
    const/16 v6, 0x8

    if-le v4, v6, :cond_0

    .line 80
    const/16 v4, 0x8

    .line 82
    :cond_0
    invoke-virtual {v5, v4}, Lcom/android/internal/telephony/IccCardStatus;->setNumApplications(I)V

    .line 84
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v4, :cond_1

    .line 85
    new-instance v2, Lcom/android/internal/telephony/IccCardApplication;

    invoke-direct {v2}, Lcom/android/internal/telephony/IccCardApplication;-><init>()V

    .line 86
    .local v2, ca:Lcom/android/internal/telephony/IccCardApplication;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual {v2, v6}, Lcom/android/internal/telephony/IccCardApplication;->AppTypeFromRILInt(I)Lcom/android/internal/telephony/IccCardApplication$AppType;

    move-result-object v6

    iput-object v6, v2, Lcom/android/internal/telephony/IccCardApplication;->app_type:Lcom/android/internal/telephony/IccCardApplication$AppType;

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual {v2, v6}, Lcom/android/internal/telephony/IccCardApplication;->AppStateFromRILInt(I)Lcom/android/internal/telephony/IccCardApplication$AppState;

    move-result-object v6

    iput-object v6, v2, Lcom/android/internal/telephony/IccCardApplication;->app_state:Lcom/android/internal/telephony/IccCardApplication$AppState;

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual {v2, v6}, Lcom/android/internal/telephony/IccCardApplication;->PersoSubstateFromRILInt(I)Lcom/android/internal/telephony/IccCardApplication$PersoSubState;

    move-result-object v6

    iput-object v6, v2, Lcom/android/internal/telephony/IccCardApplication;->perso_substate:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Lcom/android/internal/telephony/IccCardApplication;->aid:Ljava/lang/String;

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Lcom/android/internal/telephony/IccCardApplication;->app_label:Ljava/lang/String;

    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    iput v6, v2, Lcom/android/internal/telephony/IccCardApplication;->pin1_replaced:I

    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual {v2, v6}, Lcom/android/internal/telephony/IccCardApplication;->PinStateFromRILInt(I)Lcom/android/internal/telephony/IccCardStatus$PinState;

    move-result-object v6

    iput-object v6, v2, Lcom/android/internal/telephony/IccCardApplication;->pin1:Lcom/android/internal/telephony/IccCardStatus$PinState;

    .line 93
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual {v2, v6}, Lcom/android/internal/telephony/IccCardApplication;->PinStateFromRILInt(I)Lcom/android/internal/telephony/IccCardStatus$PinState;

    move-result-object v6

    iput-object v6, v2, Lcom/android/internal/telephony/IccCardApplication;->pin2:Lcom/android/internal/telephony/IccCardStatus$PinState;

    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 95
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 98
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 99
    invoke-virtual {v5, v2}, Lcom/android/internal/telephony/IccCardStatus;->addApplication(Lcom/android/internal/telephony/IccCardApplication;)V

    .line 84
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 101
    .end local v2           #ca:Lcom/android/internal/telephony/IccCardApplication;
    :cond_1
    const/4 v0, -0x1

    .line 102
    .local v0, appIndex:I
    invoke-virtual {v5}, Lcom/android/internal/telephony/IccCardStatus;->getGsmUmtsSubscriptionAppIndex()I

    move-result v0

    .line 103
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

    .line 105
    if-lez v4, :cond_3

    .line 106
    invoke-virtual {v5, v0}, Lcom/android/internal/telephony/IccCardStatus;->getApplication(I)Lcom/android/internal/telephony/IccCardApplication;

    move-result-object v1

    .line 107
    .local v1, application:Lcom/android/internal/telephony/IccCardApplication;
    iget-object v6, v1, Lcom/android/internal/telephony/IccCardApplication;->aid:Ljava/lang/String;

    iput-object v6, p0, Lcom/android/internal/telephony/SamsungCDMAQualcommRIL;->mAid:Ljava/lang/String;

    .line 108
    iget-object v6, v1, Lcom/android/internal/telephony/IccCardApplication;->app_type:Lcom/android/internal/telephony/IccCardApplication$AppType;

    sget-object v7, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/IccCardApplication$AppType;

    if-ne v6, v7, :cond_4

    const/4 v6, 0x1

    :goto_1
    iput-boolean v6, p0, Lcom/android/internal/telephony/SamsungCDMAQualcommRIL;->mUSIM:Z

    .line 110
    iget v6, p0, Lcom/android/internal/telephony/SamsungCDMAQualcommRIL;->mPreferredNetworkType:I

    iput v6, p0, Lcom/android/internal/telephony/SamsungCDMAQualcommRIL;->mSetPreferredNetworkType:I

    .line 112
    iget-object v6, p0, Lcom/android/internal/telephony/SamsungCDMAQualcommRIL;->mAid:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 113
    const-string v6, ""

    iput-object v6, p0, Lcom/android/internal/telephony/SamsungCDMAQualcommRIL;->mAid:Ljava/lang/String;

    .line 114
    :cond_2
    const-string v6, "RILJ"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mAid "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/SamsungCDMAQualcommRIL;->mAid:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    .end local v1           #application:Lcom/android/internal/telephony/IccCardApplication;
    :cond_3
    return-object v5

    .line 108
    .restart local v1       #application:Lcom/android/internal/telephony/IccCardApplication;
    :cond_4
    const/4 v6, 0x0

    goto :goto_1
.end method

.method protected responseSignalStrength(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 8
    .parameter "p"

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x7

    const/4 v5, -0x1

    .line 169
    const/16 v1, 0xc

    .line 176
    .local v1, numInts:I
    new-array v2, v1, [I

    .line 177
    .local v2, response:[I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 178
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    aput v3, v2, v0

    .line 177
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 182
    :cond_0
    const/4 v3, 0x2

    const/4 v4, 0x3

    aget v4, v2, v4

    mul-int/lit8 v4, v4, 0x4

    aput v4, v2, v3

    .line 183
    const/4 v3, 0x4

    const/4 v4, 0x5

    aget v4, v2, v4

    mul-int/lit8 v4, v4, 0x4

    aput v4, v2, v3

    .line 185
    aget v3, v2, v6

    const/16 v4, 0x63

    if-ne v3, v4, :cond_1

    .line 188
    aput v5, v2, v6

    .line 189
    aput v5, v2, v7

    .line 190
    const/16 v3, 0x9

    aput v5, v2, v3

    .line 191
    const/16 v3, 0xa

    aput v5, v2, v3

    .line 192
    const/16 v3, 0xb

    aput v5, v2, v3

    .line 197
    :goto_1
    return-object v2

    .line 194
    :cond_1
    aget v3, v2, v7

    mul-int/lit8 v3, v3, -0x1

    aput v3, v2, v7

    goto :goto_1
.end method

.method protected setRadioStateFromRILInt(I)V
    .locals 6
    .parameter "stateCode"

    .prologue
    const/4 v4, 0x0

    .line 127
    sparse-switch p1, :sswitch_data_0

    .line 160
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unrecognized RIL_RadioState: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 129
    :sswitch_0
    sget-object v2, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_OFF:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    .line 130
    .local v2, radioState:Lcom/android/internal/telephony/CommandsInterface$RadioState;
    iget-object v3, p0, Lcom/android/internal/telephony/SamsungCDMAQualcommRIL;->mIccHandler:Lcom/android/internal/telephony/SamsungCDMAQualcommRIL$IccHandler;

    if-eqz v3, :cond_0

    .line 131
    iput-object v4, p0, Lcom/android/internal/telephony/SamsungCDMAQualcommRIL;->mIccThread:Landroid/os/HandlerThread;

    .line 132
    iput-object v4, p0, Lcom/android/internal/telephony/SamsungCDMAQualcommRIL;->mIccHandler:Lcom/android/internal/telephony/SamsungCDMAQualcommRIL$IccHandler;

    .line 163
    :cond_0
    :goto_0
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/SamsungCDMAQualcommRIL;->setRadioState(Lcom/android/internal/telephony/CommandsInterface$RadioState;)V

    .line 164
    return-void

    .line 136
    .end local v2           #radioState:Lcom/android/internal/telephony/CommandsInterface$RadioState;
    :sswitch_1
    sget-object v2, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_UNAVAILABLE:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    .line 137
    .restart local v2       #radioState:Lcom/android/internal/telephony/CommandsInterface$RadioState;
    goto :goto_0

    .line 141
    .end local v2           #radioState:Lcom/android/internal/telephony/CommandsInterface$RadioState;
    :sswitch_2
    iget-object v3, p0, Lcom/android/internal/telephony/SamsungCDMAQualcommRIL;->mIccHandler:Lcom/android/internal/telephony/SamsungCDMAQualcommRIL$IccHandler;

    if-nez v3, :cond_1

    .line 142
    new-instance v0, Landroid/os/HandlerThread;

    const-string v3, "IccHandler"

    invoke-direct {v0, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 143
    .local v0, handlerThread:Landroid/os/HandlerThread;
    iput-object v0, p0, Lcom/android/internal/telephony/SamsungCDMAQualcommRIL;->mIccThread:Landroid/os/HandlerThread;

    .line 145
    iget-object v3, p0, Lcom/android/internal/telephony/SamsungCDMAQualcommRIL;->mIccThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->start()V

    .line 147
    iget-object v3, p0, Lcom/android/internal/telephony/SamsungCDMAQualcommRIL;->mIccThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    .line 148
    .local v1, looper:Landroid/os/Looper;
    new-instance v3, Lcom/android/internal/telephony/SamsungCDMAQualcommRIL$IccHandler;

    invoke-direct {v3, p0, p0, v1}, Lcom/android/internal/telephony/SamsungCDMAQualcommRIL$IccHandler;-><init>(Lcom/android/internal/telephony/SamsungCDMAQualcommRIL;Lcom/android/internal/telephony/RIL;Landroid/os/Looper;)V

    iput-object v3, p0, Lcom/android/internal/telephony/SamsungCDMAQualcommRIL;->mIccHandler:Lcom/android/internal/telephony/SamsungCDMAQualcommRIL$IccHandler;

    .line 149
    iget-object v3, p0, Lcom/android/internal/telephony/SamsungCDMAQualcommRIL;->mIccHandler:Lcom/android/internal/telephony/SamsungCDMAQualcommRIL$IccHandler;

    invoke-virtual {v3}, Lcom/android/internal/telephony/SamsungCDMAQualcommRIL$IccHandler;->run()V

    .line 152
    .end local v0           #handlerThread:Landroid/os/HandlerThread;
    .end local v1           #looper:Landroid/os/Looper;
    :cond_1
    iget v3, p0, Lcom/android/internal/telephony/SamsungCDMAQualcommRIL;->mPhoneType:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    .line 153
    sget-object v2, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RUIM_NOT_READY:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    .line 157
    .restart local v2       #radioState:Lcom/android/internal/telephony/CommandsInterface$RadioState;
    :goto_1
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/SamsungCDMAQualcommRIL;->setRadioState(Lcom/android/internal/telephony/CommandsInterface$RadioState;)V

    goto :goto_0

    .line 155
    .end local v2           #radioState:Lcom/android/internal/telephony/CommandsInterface$RadioState;
    :cond_2
    sget-object v2, Lcom/android/internal/telephony/CommandsInterface$RadioState;->SIM_NOT_READY:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    .restart local v2       #radioState:Lcom/android/internal/telephony/CommandsInterface$RadioState;
    goto :goto_1

    .line 127
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0xa -> :sswitch_2
        0xd -> :sswitch_2
    .end sparse-switch
.end method

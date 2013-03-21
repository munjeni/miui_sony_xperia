.class public Lcom/android/internal/telephony/cat/CatResponseMessage;
.super Ljava/lang/Object;
.source "CatResponseMessage.java"


# instance fields
.field addedInfo:I

.field additionalInfo:I

.field cmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

.field envelopeCmd:Ljava/lang/String;

.field eventValue:I

.field includeAdditionalInfo:Z

.field languageCode:Ljava/lang/String;

.field resCode:Lcom/android/internal/telephony/cat/ResultCode;

.field usersConfirm:Z

.field usersInput:Ljava/lang/String;

.field usersMenuSelection:I

.field usersYesNoSelection:Z


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/cat/CatCmdMessage;)V
    .locals 3
    .parameter "cmdMsg"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object v2, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->cmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    .line 26
    sget-object v0, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    iput-object v0, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->resCode:Lcom/android/internal/telephony/cat/ResultCode;

    .line 27
    iput v1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->usersMenuSelection:I

    .line 28
    iput-object v2, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->usersInput:Ljava/lang/String;

    .line 29
    iput-object v2, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->languageCode:Ljava/lang/String;

    .line 30
    iput-boolean v1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->usersYesNoSelection:Z

    .line 31
    iput-boolean v1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->usersConfirm:Z

    .line 34
    iput-boolean v1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->includeAdditionalInfo:Z

    .line 35
    iput v1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->additionalInfo:I

    .line 36
    iput-object v2, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->envelopeCmd:Ljava/lang/String;

    .line 43
    iget-object v0, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    iput-object v0, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->cmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    .line 44
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .parameter "envCmd"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object v2, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->cmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    .line 26
    sget-object v0, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    iput-object v0, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->resCode:Lcom/android/internal/telephony/cat/ResultCode;

    .line 27
    iput v1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->usersMenuSelection:I

    .line 28
    iput-object v2, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->usersInput:Ljava/lang/String;

    .line 29
    iput-object v2, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->languageCode:Ljava/lang/String;

    .line 30
    iput-boolean v1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->usersYesNoSelection:Z

    .line 31
    iput-boolean v1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->usersConfirm:Z

    .line 34
    iput-boolean v1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->includeAdditionalInfo:Z

    .line 35
    iput v1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->additionalInfo:I

    .line 36
    iput-object v2, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->envelopeCmd:Ljava/lang/String;

    .line 39
    iput-object p1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->envelopeCmd:Ljava/lang/String;

    .line 40
    return-void
.end method


# virtual methods
.method getCmdDetails()Lcom/android/internal/telephony/cat/CommandDetails;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->cmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    return-object v0
.end method

.method public setAdditionalInfo(ZI)V
    .locals 0
    .parameter "addInfoReq"
    .parameter "addInfoCode"

    .prologue
    .line 84
    iput-boolean p1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->includeAdditionalInfo:Z

    .line 85
    iput p2, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->additionalInfo:I

    .line 86
    return-void
.end method

.method public setConfirmation(Z)V
    .locals 0
    .parameter "confirm"

    .prologue
    .line 75
    iput-boolean p1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->usersConfirm:Z

    .line 76
    return-void
.end method

.method public setEvent(II)V
    .locals 0
    .parameter "event"
    .parameter "info"

    .prologue
    .line 66
    iput p1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->eventValue:I

    .line 67
    iput p2, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->addedInfo:I

    .line 68
    return-void
.end method

.method public setInput(Ljava/lang/String;)V
    .locals 0
    .parameter "input"

    .prologue
    .line 55
    iput-object p1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->usersInput:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public setLanguageCode(Ljava/lang/String;)V
    .locals 0
    .parameter "language"

    .prologue
    .line 59
    iput-object p1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->languageCode:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public setMenuSelection(I)V
    .locals 0
    .parameter "selection"

    .prologue
    .line 51
    iput p1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->usersMenuSelection:I

    .line 52
    return-void
.end method

.method public setResultCode(Lcom/android/internal/telephony/cat/ResultCode;)V
    .locals 0
    .parameter "resCode"

    .prologue
    .line 47
    iput-object p1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->resCode:Lcom/android/internal/telephony/cat/ResultCode;

    .line 48
    return-void
.end method

.method public setYesNo(Z)V
    .locals 0
    .parameter "yesNo"

    .prologue
    .line 71
    iput-boolean p1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->usersYesNoSelection:Z

    .line 72
    return-void
.end method

.class public final Lcom/android/internal/telephony/gsm/SIMFileHandler;
.super Lcom/android/internal/telephony/IccFileHandler;
.source "SIMFileHandler.java"

# interfaces
.implements Lcom/android/internal/telephony/IccConstants;


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "GSM"


# instance fields
.field private mPhone:Lcom/android/internal/telephony/Phone;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/gsm/GSMPhone;)V
    .locals 0
    .parameter "phone"

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/IccFileHandler;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    .line 41
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/SIMFileHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 42
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 0

    .prologue
    .line 45
    invoke-super {p0}, Lcom/android/internal/telephony/IccFileHandler;->dispose()V

    .line 46
    return-void
.end method

.method protected finalize()V
    .locals 2

    .prologue
    .line 49
    const-string v0, "GSM"

    const-string v1, "SIMFileHandler finalized"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    return-void
.end method

.method protected getEFPath(I)Ljava/lang/String;
    .locals 5
    .parameter "efid"

    .prologue
    .line 60
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SIMFileHandler;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v3, v3, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const-string/jumbo v4, "qcomuiccstack"

    invoke-interface {v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->needsOldRilFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 61
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SIMFileHandler;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    .line 62
    .local v1, icccard:Lcom/android/internal/telephony/IccCard;
    if-eqz v1, :cond_1

    sget-object v3, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/IccCardApplication$AppType;

    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/IccCard;->isApplicationOnIcc(Lcom/android/internal/telephony/IccCardApplication$AppType;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 63
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gsm/SIMFileHandler;->getEFPathForUICC(I)Ljava/lang/String;

    move-result-object v2

    .line 108
    .end local v1           #icccard:Lcom/android/internal/telephony/IccCard;
    :cond_0
    :goto_0
    return-object v2

    .line 68
    :cond_1
    sparse-switch p1, :sswitch_data_0

    .line 97
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gsm/SIMFileHandler;->getCommonIccEFPath(I)Ljava/lang/String;

    move-result-object v2

    .line 98
    .local v2, path:Ljava/lang/String;
    if-nez v2, :cond_0

    .line 102
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SIMFileHandler;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    .line 103
    .local v0, card:Lcom/android/internal/telephony/IccCard;
    if-eqz v0, :cond_2

    sget-object v3, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/IccCardApplication$AppType;

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/IccCard;->isApplicationOnIcc(Lcom/android/internal/telephony/IccCardApplication$AppType;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 104
    const-string v2, "3F007F105F3A"

    goto :goto_0

    .line 70
    .end local v0           #card:Lcom/android/internal/telephony/IccCard;
    .end local v2           #path:Ljava/lang/String;
    :sswitch_0
    const-string v2, "3F007F10"

    goto :goto_0

    .line 82
    :sswitch_1
    const-string v2, "3F007F20"

    goto :goto_0

    .line 91
    :sswitch_2
    const-string v2, "3F007F20"

    goto :goto_0

    .line 95
    :sswitch_3
    const-string v2, "3F007F105F3A"

    goto :goto_0

    .line 106
    .restart local v0       #card:Lcom/android/internal/telephony/IccCard;
    .restart local v2       #path:Ljava/lang/String;
    :cond_2
    const-string v3, "GSM"

    const-string v4, "Error: EF Path being returned in null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 68
    :sswitch_data_0
    .sparse-switch
        0x4f30 -> :sswitch_3
        0x6f11 -> :sswitch_2
        0x6f13 -> :sswitch_2
        0x6f14 -> :sswitch_2
        0x6f15 -> :sswitch_2
        0x6f16 -> :sswitch_2
        0x6f17 -> :sswitch_2
        0x6f18 -> :sswitch_2
        0x6f38 -> :sswitch_1
        0x6f3c -> :sswitch_0
        0x6f46 -> :sswitch_1
        0x6fad -> :sswitch_1
        0x6fc5 -> :sswitch_1
        0x6fc7 -> :sswitch_1
        0x6fc8 -> :sswitch_1
        0x6fc9 -> :sswitch_1
        0x6fca -> :sswitch_1
        0x6fcb -> :sswitch_1
        0x6fcd -> :sswitch_1
    .end sparse-switch
.end method

.method protected getEFPathForUICC(I)Ljava/lang/String;
    .locals 3
    .parameter "efid"

    .prologue
    .line 112
    sparse-switch p1, :sswitch_data_0

    .line 140
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gsm/SIMFileHandler;->getCommonIccEFPath(I)Ljava/lang/String;

    move-result-object v0

    .line 141
    .local v0, path:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 142
    const-string v1, "GSM"

    const-string v2, "Error: EF Path being returned in null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    .end local v0           #path:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v0

    .line 133
    :sswitch_0
    const-string v0, "3F007FFF"

    goto :goto_0

    .line 137
    :sswitch_1
    const-string v0, "3F007F105F3A"

    goto :goto_0

    .line 112
    nop

    :sswitch_data_0
    .sparse-switch
        0x4f30 -> :sswitch_0
        0x6f11 -> :sswitch_0
        0x6f13 -> :sswitch_0
        0x6f14 -> :sswitch_0
        0x6f15 -> :sswitch_1
        0x6f16 -> :sswitch_0
        0x6f17 -> :sswitch_0
        0x6f18 -> :sswitch_0
        0x6f38 -> :sswitch_0
        0x6f3b -> :sswitch_0
        0x6f3c -> :sswitch_0
        0x6f40 -> :sswitch_0
        0x6f46 -> :sswitch_0
        0x6fad -> :sswitch_0
        0x6fc5 -> :sswitch_0
        0x6fc7 -> :sswitch_0
        0x6fc8 -> :sswitch_0
        0x6fc9 -> :sswitch_0
        0x6fca -> :sswitch_0
        0x6fcb -> :sswitch_0
        0x6fcd -> :sswitch_0
    .end sparse-switch
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 0
    .parameter "msg"

    .prologue
    .line 56
    invoke-super {p0, p1}, Lcom/android/internal/telephony/IccFileHandler;->handleMessage(Landroid/os/Message;)V

    .line 57
    return-void
.end method

.method protected logd(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 147
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SIMFileHandler] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 151
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SIMFileHandler] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    return-void
.end method

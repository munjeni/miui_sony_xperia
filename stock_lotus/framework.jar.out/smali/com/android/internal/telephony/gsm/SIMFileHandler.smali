.class public final Lcom/android/internal/telephony/gsm/SIMFileHandler;
.super Lcom/android/internal/telephony/IccFileHandler;
.source "SIMFileHandler.java"

# interfaces
.implements Lcom/android/internal/telephony/IccConstants;


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "GSM"


# instance fields
.field private volatile mLocalPhoneBookExist:Z

.field private mPhone:Lcom/android/internal/telephony/Phone;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/gsm/GSMPhone;)V
    .locals 1
    .parameter "phone"

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/IccFileHandler;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/SIMFileHandler;->mLocalPhoneBookExist:Z

    .line 47
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/SIMFileHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 48
    return-void
.end method

.method private getEFPathForPhoneBook()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/SIMFileHandler;->mLocalPhoneBookExist:Z

    if-eqz v0, :cond_0

    .line 121
    const-string v0, "3F007FFF5F3A"

    .line 124
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "3F007F105F3A"

    goto :goto_0
.end method


# virtual methods
.method public dispose()V
    .locals 0

    .prologue
    .line 51
    invoke-super {p0}, Lcom/android/internal/telephony/IccFileHandler;->dispose()V

    .line 52
    return-void
.end method

.method protected finalize()V
    .locals 2

    .prologue
    .line 55
    const-string v0, "GSM"

    const-string v1, "SIMFileHandler finalized"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    return-void
.end method

.method protected getEFPath(I)Ljava/lang/String;
    .locals 4
    .parameter "efid"

    .prologue
    .line 68
    sparse-switch p1, :sswitch_data_0

    .line 101
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gsm/SIMFileHandler;->getCommonIccEFPath(I)Ljava/lang/String;

    move-result-object v1

    .line 102
    .local v1, path:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 106
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMFileHandler;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    .line 107
    .local v0, card:Lcom/android/internal/telephony/IccCard;
    if-eqz v0, :cond_1

    sget-object v2, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/IccCardApplication$AppType;

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/IccCard;->isApplicationOnIcc(Lcom/android/internal/telephony/IccCardApplication$AppType;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 108
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/SIMFileHandler;->getEFPathForPhoneBook()Ljava/lang/String;

    move-result-object v1

    .line 112
    .end local v0           #card:Lcom/android/internal/telephony/IccCard;
    .end local v1           #path:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v1

    .line 70
    :sswitch_0
    const-string v1, "3F007F10"

    goto :goto_0

    .line 83
    :sswitch_1
    const-string v1, "3F007F20"

    goto :goto_0

    .line 92
    :sswitch_2
    const-string v1, "3F007F20"

    goto :goto_0

    .line 95
    :sswitch_3
    const-string v1, "3F007F665F30"

    goto :goto_0

    .line 99
    :sswitch_4
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/SIMFileHandler;->getEFPathForPhoneBook()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 110
    .restart local v0       #card:Lcom/android/internal/telephony/IccCard;
    .restart local v1       #path:Ljava/lang/String;
    :cond_1
    const-string v2, "GSM"

    const-string v3, "Error: EF Path being returned in null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 68
    nop

    :sswitch_data_0
    .sparse-switch
        0x4f30 -> :sswitch_4
        0x4f34 -> :sswitch_3
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
        0x6fc6 -> :sswitch_1
        0x6fc7 -> :sswitch_1
        0x6fc8 -> :sswitch_1
        0x6fc9 -> :sswitch_1
        0x6fca -> :sswitch_1
        0x6fcb -> :sswitch_1
        0x6fcd -> :sswitch_1
    .end sparse-switch
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 0
    .parameter "msg"

    .prologue
    .line 62
    invoke-super {p0, p1}, Lcom/android/internal/telephony/IccFileHandler;->handleMessage(Landroid/os/Message;)V

    .line 63
    return-void
.end method

.method protected logd(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 128
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

    .line 129
    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 132
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

    .line 133
    return-void
.end method

.method setLocalPhoneBookExist(Z)V
    .locals 0
    .parameter "exist"

    .prologue
    .line 116
    iput-boolean p1, p0, Lcom/android/internal/telephony/gsm/SIMFileHandler;->mLocalPhoneBookExist:Z

    .line 117
    return-void
.end method

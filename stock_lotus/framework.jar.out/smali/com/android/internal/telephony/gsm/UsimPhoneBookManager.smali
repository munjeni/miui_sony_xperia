.class public Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;
.super Landroid/os/Handler;
.source "UsimPhoneBookManager.java"

# interfaces
.implements Lcom/android/internal/telephony/IccConstants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;,
        Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;,
        Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;,
        Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$MsgParam;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final EVENT_ANR_LOAD_DONE:I = 0x5

.field private static final EVENT_EF_FILE_GET_SIZE_DONE:I = 0x68

.field private static final EVENT_EF_FILE_LOAD_DONE:I = 0x8

.field private static final EVENT_EMAIL_LOAD_DONE:I = 0x4

.field private static final EVENT_EXT_RECORD_LOAD_DONE:I = 0x6

.field private static final EVENT_GET_GLOBALPB_PATH_DONE:I = 0x69

.field private static final EVENT_GET_LOCALPB_PATH_DONE:I = 0x6a

.field private static final EVENT_IAP_LOAD_DONE:I = 0x3

.field private static final EVENT_PBR_LOAD_DONE:I = 0x1

.field private static final EVENT_UPDATE_ADN_RECORD_DONE:I = 0x64

.field private static final EVENT_UPDATE_ANR_RECORD_DONE:I = 0x65

.field private static final EVENT_UPDATE_EMAIL_RECORD_DONE:I = 0x66

.field private static final EVENT_UPDATE_IAP_RECORD_DONE:I = 0x67

.field private static final EVENT_UPDATE_RECORD_DONE:I = 0x7

.field private static final EVENT_USIM_ADN_LOAD_DONE:I = 0x2

.field private static final LOG_TAG:Ljava/lang/String; = "GSM"

.field private static final USIM_EFAAS_TAG:I = 0xc7

.field private static final USIM_EFADN_TAG:I = 0xc0

.field private static final USIM_EFANR_TAG:I = 0xc4

.field private static final USIM_EFCCP1_TAG:I = 0xcb

.field private static final USIM_EFEMAIL_TAG:I = 0xca

.field private static final USIM_EFEXT1_TAG:I = 0xc2

.field private static final USIM_EFGRP_TAG:I = 0xc6

.field private static final USIM_EFGSD_TAG:I = 0xc8

.field private static final USIM_EFIAP_TAG:I = 0xc1

.field private static final USIM_EFPBC_TAG:I = 0xc5

.field private static final USIM_EFSNE_TAG:I = 0xc3

.field private static final USIM_EFUID_TAG:I = 0xc9

.field private static final USIM_TYPE1_TAG:I = 0xa8

.field private static final USIM_TYPE2_TAG:I = 0xa9

.field private static final USIM_TYPE3_TAG:I = 0xaa


# instance fields
.field private mAdnCache:Lcom/android/internal/telephony/AdnRecordCache;

.field private mAnrFileRecord:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[B>;"
        }
    .end annotation
.end field

.field private mCheckPhoneBookPathDone:Z

.field private mEfFileRecord:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[B>;"
        }
    .end annotation
.end field

.field private mEmailFileRecord:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[B>;"
        }
    .end annotation
.end field

.field private mEmailPresentInIap:Z

.field private mEmailTagNumberInIap:I

.field private mEmailsForAdnRec:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mIapFileRecords:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<[B>;>;"
        }
    .end annotation
.end field

.field private mIsPbrPresent:Ljava/lang/Boolean;

.field private mLock:Ljava/lang/Object;

.field private mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

.field private mPhone:Lcom/android/internal/telephony/PhoneBase;

.field private mPhoneBookRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/AdnRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mRefreshCache:Z

.field private mTotalPhoneBookRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/AdnRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/AdnRecordCache;)V
    .locals 2
    .parameter "phone"
    .parameter "cache"

    .prologue
    const/4 v1, 0x0

    .line 117
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 66
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    .line 74
    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mCheckPhoneBookPathDone:Z

    .line 75
    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailPresentInIap:Z

    .line 76
    iput v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailTagNumberInIap:I

    .line 80
    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mRefreshCache:Z

    .line 118
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    .line 119
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mTotalPhoneBookRecords:Ljava/util/ArrayList;

    .line 120
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    .line 123
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIsPbrPresent:Ljava/lang/Boolean;

    .line 124
    iput-object p2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnCache:Lcom/android/internal/telephony/AdnRecordCache;

    .line 125
    return-void
.end method

.method static synthetic access$202(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput-boolean p1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailPresentInIap:Z

    return p1
.end method

.method static synthetic access$302(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput p1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailTagNumberInIap:I

    return p1
.end method

.method static synthetic access$500(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mTotalPhoneBookRecords:Ljava/util/ArrayList;

    return-object v0
.end method

.method private addAnrToAdnRecord(Ljava/util/ArrayList;ILjava/util/ArrayList;II)V
    .locals 5
    .parameter
    .parameter "anrIndex"
    .parameter
    .parameter "adnIndex"
    .parameter "ext1EfId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<[B>;I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/AdnRecord;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 905
    .local p1, anrFileRecord:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[B>;"
    .local p3, adnContacts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/AdnRecord;>;"
    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/AdnRecord;

    .line 906
    .local v0, adnContact:Lcom/android/internal/telephony/AdnRecord;
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 908
    .local v2, anrRecord:[B
    if-eqz v0, :cond_0

    if-nez v2, :cond_1

    .line 919
    :cond_0
    :goto_0
    return-void

    .line 910
    :cond_1
    const/4 v4, 0x0

    aget-byte v4, v2, v4

    and-int/lit16 v3, v4, 0xff

    .line 911
    .local v3, anrUsed:I
    const/16 v4, 0xff

    if-eq v3, v4, :cond_0

    .line 913
    new-instance v1, Lcom/android/internal/telephony/AnrRecord;

    add-int/lit8 v4, p4, 0x1

    invoke-direct {v1, v2, v4, p5}, Lcom/android/internal/telephony/AnrRecord;-><init>([BII)V

    .line 914
    .local v1, anr:Lcom/android/internal/telephony/AnrRecord;
    invoke-virtual {v1}, Lcom/android/internal/telephony/AnrRecord;->hasExtendedRecord()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 916
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readExt1RecordAndWait(Lcom/android/internal/telephony/AnrRecord;)V

    .line 918
    :cond_2
    invoke-virtual {v1}, Lcom/android/internal/telephony/AnrRecord;->getNumber()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/AdnRecord;->addAnr(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private addEmailToAdnRecord(Ljava/util/ArrayList;ILjava/util/ArrayList;II)V
    .locals 4
    .parameter
    .parameter "emailIndex"
    .parameter
    .parameter "adnIndex"
    .parameter "fileType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<[B>;I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/AdnRecord;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 934
    .local p1, emailFileRecord:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[B>;"
    .local p3, adnContacts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/AdnRecord;>;"
    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/AdnRecord;

    .line 935
    .local v0, adnContact:Lcom/android/internal/telephony/AdnRecord;
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 937
    .local v2, emailRecord:[B
    if-eqz v0, :cond_0

    if-nez v2, :cond_1

    .line 943
    :cond_0
    :goto_0
    return-void

    .line 939
    :cond_1
    invoke-static {v2, p5}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readEmailRecord([BI)Ljava/lang/String;

    move-result-object v1

    .line 940
    .local v1, email:Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 941
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/AdnRecord;->addEmail(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private addUsimRecord(Lcom/android/internal/telephony/AdnRecord;)I
    .locals 7
    .parameter "newAdn"

    .prologue
    const/4 v5, 0x0

    .line 1533
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getPbrRecord(Lcom/android/internal/telephony/AdnRecord;)Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;

    move-result-object v4

    .line 1535
    .local v4, pbrRecord:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;
    if-nez v4, :cond_0

    move v3, v5

    .line 1548
    :goto_0
    return v3

    .line 1537
    :cond_0
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getEmptyAdnRecord(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;)Lcom/android/internal/telephony/AdnRecord;

    move-result-object v1

    .line 1538
    .local v1, emptyAdn:Lcom/android/internal/telephony/AdnRecord;
    invoke-direct {p0, v4, v1, p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->writeUsimRecord(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;Lcom/android/internal/telephony/AdnRecord;Lcom/android/internal/telephony/AdnRecord;)V

    .line 1540
    const/4 v3, 0x0

    .line 1541
    .local v3, index:I
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mTotalPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/AdnRecord;

    .line 1542
    .local v0, adnRecord:Lcom/android/internal/telephony/AdnRecord;
    add-int/lit8 v3, v3, 0x1

    .line 1543
    if-ne v0, v1, :cond_1

    goto :goto_0

    .end local v0           #adnRecord:Lcom/android/internal/telephony/AdnRecord;
    :cond_2
    move v3, v5

    .line 1548
    goto :goto_0
.end method

.method private checkPhoneBookPath()V
    .locals 5

    .prologue
    .line 246
    new-instance v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$MsgParam;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$MsgParam;-><init>(Ljava/lang/Object;)V

    .line 247
    .local v0, msgParam:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$MsgParam;
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v1

    const-string v2, "3F007F105F3A"

    const/16 v3, 0x4f30

    const/16 v4, 0x69

    invoke-virtual {p0, v4, v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/internal/telephony/IccFileHandler;->getEFLinearRecordSize(Ljava/lang/String;ILandroid/os/Message;)V

    .line 249
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$MsgParam;->waitForResult()V

    .line 250
    return-void
.end method

.method private createPbrFile(Ljava/util/ArrayList;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<[B>;)V"
        }
    .end annotation

    .prologue
    .line 411
    .local p1, records:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[B>;"
    if-nez p1, :cond_0

    .line 412
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    .line 413
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIsPbrPresent:Ljava/lang/Boolean;

    .line 417
    :goto_0
    return-void

    .line 416
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;-><init>(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    goto :goto_0
.end method

.method private deleteAllRecordsInEfFiles(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;I)V
    .locals 15
    .parameter "pbrRecord"
    .parameter "efType"

    .prologue
    .line 1192
    invoke-virtual/range {p1 .. p2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;->getAllFilesOfEfType(I)Ljava/util/ArrayList;

    move-result-object v8

    .line 1194
    .local v8, efFiles:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;>;"
    const/4 v4, 0x0

    .line 1195
    .local v4, pin2:Ljava/lang/String;
    const/4 v9, 0x0

    .line 1197
    .local v9, fileRecords:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[B>;"
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;

    .line 1198
    .local v6, currentEfFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Deleting in file: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    #getter for: Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;->mEfId:I
    invoke-static {v6}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;->access$400(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1201
    invoke-direct {p0, v6}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getRawFile(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;)Ljava/util/ArrayList;

    move-result-object v9

    .line 1203
    if-eqz v9, :cond_1

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_2

    .line 1204
    :cond_1
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: Could not read EF file for delete:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;->getEfId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1208
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    array-length v14, v0

    .line 1209
    .local v14, recordLength:I
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v12

    .line 1210
    .local v12, numberOfRecords:I
    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;->getEfType()I

    move-result v0

    invoke-static {v14, v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;->getRawEmptyRecord(II)[B

    move-result-object v3

    .line 1212
    .local v3, emptyRecord:[B
    if-eqz v3, :cond_0

    .line 1214
    const/4 v7, 0x0

    .line 1215
    .local v7, currentRecord:[B
    const/4 v13, 0x0

    .local v13, recordIndex:I
    :goto_1
    if-ge v13, v12, :cond_0

    .line 1216
    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    .end local v7           #currentRecord:[B
    check-cast v7, [B

    .line 1217
    .restart local v7       #currentRecord:[B
    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;->isRecordEmpty([B)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1215
    :goto_2
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 1219
    :cond_3
    new-instance v11, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$MsgParam;

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-direct {v11, v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$MsgParam;-><init>(Ljava/lang/Object;)V

    .line 1220
    .local v11, msgParam:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$MsgParam;
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v0

    #getter for: Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;->mEfId:I
    invoke-static {v6}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;->access$400(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;)I

    move-result v1

    add-int/lit8 v2, v13, 0x1

    const/4 v5, 0x7

    invoke-virtual {p0, v5, v11}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/IccFileHandler;->updateEFLinearFixed(II[BLjava/lang/String;Landroid/os/Message;)V

    .line 1223
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Deleted record: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    #getter for: Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;->mEfId:I
    invoke-static {v6}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;->access$400(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit8 v1, v13, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1225
    invoke-virtual {v11}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$MsgParam;->waitForResult()V

    goto :goto_2

    .line 1228
    .end local v3           #emptyRecord:[B
    .end local v6           #currentEfFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;
    .end local v7           #currentRecord:[B
    .end local v11           #msgParam:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$MsgParam;
    .end local v12           #numberOfRecords:I
    .end local v13           #recordIndex:I
    .end local v14           #recordLength:I
    :cond_4
    return-void
.end method

.method private getEmptyAdnRecord(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;)Lcom/android/internal/telephony/AdnRecord;
    .locals 5
    .parameter "pbrRecord"

    .prologue
    .line 147
    const/16 v3, 0xa8

    const/16 v4, 0xc0

    invoke-virtual {p1, v3, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;->getFiles(II)Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;->getEfId()I

    move-result v1

    .line 148
    .local v1, efId:I
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mTotalPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/AdnRecord;

    .line 149
    .local v0, adnRecord:Lcom/android/internal/telephony/AdnRecord;
    invoke-virtual {v0}, Lcom/android/internal/telephony/AdnRecord;->getEfId()I

    move-result v3

    if-ne v3, v1, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/AdnRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 155
    .end local v0           #adnRecord:Lcom/android/internal/telephony/AdnRecord;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getFieldIndexForType2(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;[BLjava/lang/String;)B
    .locals 5
    .parameter "pbrRecord"
    .parameter "efFile"
    .parameter "iapData"
    .parameter "fieldData"

    .prologue
    const/4 v4, -0x1

    .line 1618
    invoke-virtual {p1, p2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;->getIAPIndex(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;)I

    move-result v2

    .line 1619
    .local v2, iapIndex:I
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1621
    aget-byte v0, p3, v2

    .line 1622
    .local v0, fieldIndex:B
    aput-byte v4, p3, v2

    move v1, v0

    .line 1634
    .end local v0           #fieldIndex:B
    .local v1, fieldIndex:B
    :goto_0
    return v1

    .line 1626
    .end local v1           #fieldIndex:B
    :cond_0
    aget-byte v3, p3, v2

    if-eq v3, v4, :cond_1

    .line 1627
    aget-byte v0, p3, v2

    .line 1632
    .restart local v0       #fieldIndex:B
    :goto_1
    aput-byte v0, p3, v2

    move v1, v0

    .line 1634
    .end local v0           #fieldIndex:B
    .restart local v1       #fieldIndex:B
    goto :goto_0

    .line 1630
    .end local v1           #fieldIndex:B
    :cond_1
    #getter for: Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;->mRecordStateInfo:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile$RecordStateInfo;
    invoke-static {p2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;->access$600(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;)Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile$RecordStateInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile$RecordStateInfo;->getEmptyRecordIndex()I

    move-result v3

    and-int/lit16 v3, v3, 0xff

    int-to-byte v0, v3

    .restart local v0       #fieldIndex:B
    goto :goto_1
.end method

.method private getIapDataFromCache(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;I)[B
    .locals 5
    .parameter "pbrRecord"
    .parameter "index"

    .prologue
    const/4 v2, 0x0

    .line 1488
    const/16 v3, 0xa9

    invoke-virtual {p1, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;->filesExist(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1494
    :cond_0
    :goto_0
    return-object v2

    .line 1490
    :cond_1
    const/16 v3, 0xa8

    const/16 v4, 0xc1

    invoke-virtual {p1, v3, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;->getFiles(II)Ljava/util/List;

    move-result-object v1

    .line 1491
    .local v1, iapEfiles:Ljava/util/List;
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 1493
    check-cast v1, Ljava/util/ArrayList;

    .end local v1           #iapEfiles:Ljava/util/List;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;

    .line 1494
    .local v0, iapEfFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileRecords:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;->getEfId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    add-int/lit8 v3, p2, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    goto :goto_0
.end method

.method private getPbrRecord(Lcom/android/internal/telephony/AdnRecord;)Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;
    .locals 6
    .parameter "newAdn"

    .prologue
    const/4 v3, 0x0

    .line 165
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    if-nez v4, :cond_0

    move-object v1, v3

    .line 176
    :goto_0
    return-object v1

    .line 167
    :cond_0
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    #getter for: Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mPbrRecords:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->access$000(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;

    .line 168
    .local v1, pbrRecord:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;
    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;->getUsimPBCapacityInfo()Lcom/android/internal/telephony/IccPBCapacityInfo;

    move-result-object v2

    .line 169
    .local v2, usimPBCapacityInfo:Lcom/android/internal/telephony/IccPBCapacityInfo;
    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lcom/android/internal/telephony/AdnRecord;->isEmptyAnrs()Z

    move-result v4

    invoke-virtual {p1}, Lcom/android/internal/telephony/AdnRecord;->isEmptyEmails()Z

    move-result v5

    invoke-virtual {v2, v4, v5}, Lcom/android/internal/telephony/IccPBCapacityInfo;->hasEmptyRecord(ZZ)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    .end local v1           #pbrRecord:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;
    .end local v2           #usimPBCapacityInfo:Lcom/android/internal/telephony/IccPBCapacityInfo;
    :cond_2
    move-object v1, v3

    .line 176
    goto :goto_0
.end method

.method private getPbrRecordOfEfId(I)Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;
    .locals 6
    .parameter "adnEfId"

    .prologue
    .line 1468
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v4, v4, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v2

    .line 1469
    .local v2, numRecs:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 1470
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    invoke-virtual {v4, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->getRecord(I)Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;

    move-result-object v3

    .line 1471
    .local v3, pbrRecord:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;
    const/16 v4, 0xa8

    const/16 v5, 0xc0

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;->getFiles(II)Ljava/util/List;

    move-result-object v0

    .line 1472
    .local v0, adnEfFiles:Ljava/util/List;
    check-cast v0, Ljava/util/ArrayList;

    .end local v0           #adnEfFiles:Ljava/util/List;
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;->getEfId()I

    move-result v4

    if-ne p1, v4, :cond_0

    .line 1477
    .end local v3           #pbrRecord:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;
    :goto_1
    return-object v3

    .line 1469
    .restart local v3       #pbrRecord:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1477
    .end local v3           #pbrRecord:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private getRawFile(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;)Ljava/util/ArrayList;
    .locals 4
    .parameter "efFile"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;",
            ")",
            "Ljava/util/ArrayList",
            "<[B>;"
        }
    .end annotation

    .prologue
    .line 1239
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEfFileRecord:Ljava/util/ArrayList;

    .line 1240
    new-instance v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$MsgParam;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$MsgParam;-><init>(Ljava/lang/Object;)V

    .line 1241
    .local v0, msgParam:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$MsgParam;
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;->getEfId()I

    move-result v2

    const/16 v3, 0x8

    invoke-virtual {p0, v3, v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/IccFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;)V

    .line 1243
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$MsgParam;->waitForResult()V

    .line 1245
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEfFileRecord:Ljava/util/ArrayList;

    return-object v1
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 703
    const-string v0, "GSM"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    return-void
.end method

.method private processType1AnrFile(Ljava/util/ArrayList;I)V
    .locals 7
    .parameter
    .parameter "ext1EfId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<[B>;I)V"
        }
    .end annotation

    .prologue
    .line 884
    .local p1, anrFileRecord:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[B>;"
    if-nez p1, :cond_1

    .line 890
    :cond_0
    return-void

    .line 886
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 887
    .local v6, numAdnRecs:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v6, :cond_0

    .line 888
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    move-object v0, p0

    move-object v1, p1

    move v4, v2

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->addAnrToAdnRecord(Ljava/util/ArrayList;ILjava/util/ArrayList;II)V

    .line 887
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private processType2AnrFile(Ljava/util/ArrayList;Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;ILcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;)V
    .locals 13
    .parameter
    .parameter "anrEfFile"
    .parameter "ext1EfId"
    .parameter "pbrRecord"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<[B>;",
            "Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;",
            "I",
            "Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;",
            ")V"
        }
    .end annotation

    .prologue
    .line 849
    .local p1, anrFileRecord:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[B>;"
    move-object/from16 v0, p4

    invoke-virtual {v0, p2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;->getIAPIndex(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;)I

    move-result v10

    .line 851
    .local v10, iapIndex:I
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileRecords:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    const/16 v1, 0xff

    if-ne v10, v1, :cond_1

    .line 872
    :cond_0
    return-void

    .line 853
    :cond_1
    const/16 v1, 0xc1

    move-object/from16 v0, p4

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;->getAllFilesOfEfType(I)Ljava/util/ArrayList;

    move-result-object v8

    .line 854
    .local v8, iapFileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;>;"
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileRecords:Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;->getEfId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/ArrayList;

    .line 855
    .local v9, iapFileRecord:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[B>;"
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v12

    .line 856
    .local v12, numIapRecs:I
    const/4 v11, 0x0

    .line 859
    .local v11, iapRecord:[B
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    if-ge v5, v12, :cond_0

    .line 860
    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    .end local v11           #iapRecord:[B
    check-cast v11, [B

    .line 863
    .restart local v11       #iapRecord:[B
    array-length v1, v11

    if-lt v10, v1, :cond_3

    .line 859
    :cond_2
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 864
    :cond_3
    aget-byte v1, v11, v10

    and-int/lit16 v7, v1, 0xff

    .line 867
    .local v7, anrIndex:I
    const/16 v1, 0xff

    if-eq v7, v1, :cond_2

    if-eqz v7, :cond_2

    .line 868
    add-int/lit8 v3, v7, -0x1

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    move-object v1, p0

    move-object v2, p1

    move/from16 v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->addAnrToAdnRecord(Ljava/util/ArrayList;ILjava/util/ArrayList;II)V

    goto :goto_1
.end method

.method private processType2EmailFile(Ljava/util/ArrayList;Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;)V
    .locals 12
    .parameter
    .parameter "emailEfFile"
    .parameter "pbrRecord"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<[B>;",
            "Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;",
            "Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;",
            ")V"
        }
    .end annotation

    .prologue
    .line 766
    .local p1, emailFileRecord:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[B>;"
    invoke-virtual {p3, p2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;->getIAPIndex(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;)I

    move-result v9

    .line 768
    .local v9, iapIndex:I
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileRecords:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    const/16 v0, 0xff

    if-ne v9, v0, :cond_1

    .line 790
    :cond_0
    return-void

    .line 770
    :cond_1
    const/16 v0, 0xc1

    invoke-virtual {p3, v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;->getAllFilesOfEfType(I)Ljava/util/ArrayList;

    move-result-object v7

    .line 771
    .local v7, iapFileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;>;"
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileRecords:Ljava/util/HashMap;

    const/4 v0, 0x0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;->getEfId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    .line 772
    .local v8, iapFileRecord:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[B>;"
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 773
    .local v11, numIapRecs:I
    const/4 v10, 0x0

    .line 776
    .local v10, iapRecord:[B
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v11, :cond_0

    .line 777
    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    .end local v10           #iapRecord:[B
    check-cast v10, [B

    .line 780
    .restart local v10       #iapRecord:[B
    array-length v0, v10

    if-ge v9, v0, :cond_2

    .line 781
    aget-byte v0, v10, v9

    and-int/lit16 v6, v0, 0xff

    .line 784
    .local v6, emailIndex:I
    const/16 v0, 0xff

    if-eq v6, v0, :cond_2

    if-eqz v6, :cond_2

    .line 785
    add-int/lit8 v2, v6, -0x1

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    const/16 v5, 0xa9

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->addEmailToAdnRecord(Ljava/util/ArrayList;ILjava/util/ArrayList;II)V

    .line 776
    .end local v6           #emailIndex:I
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method private readAdnFileAndWait(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;)V
    .locals 8
    .parameter "pbrRecord"

    .prologue
    const/4 v7, 0x0

    .line 388
    const/16 v5, 0xa8

    const/16 v6, 0xc0

    invoke-virtual {p1, v5, v6}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;->getFiles(II)Ljava/util/List;

    move-result-object v1

    .line 391
    .local v1, adnFiles:Ljava/util/List;
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_1

    .line 392
    check-cast v1, Ljava/util/ArrayList;

    .end local v1           #adnFiles:Ljava/util/List;
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;

    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;->getEfId()I

    move-result v0

    .line 393
    .local v0, adnEfId:I
    const/4 v2, 0x0

    .line 394
    .local v2, ext1EfId:I
    const/16 v5, 0xaa

    const/16 v6, 0xc2

    invoke-virtual {p1, v5, v6}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;->getFiles(II)Ljava/util/List;

    move-result-object v3

    .line 397
    .local v3, ext1Files:Ljava/util/List;
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 398
    check-cast v3, Ljava/util/ArrayList;

    .end local v3           #ext1Files:Ljava/util/List;
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;

    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;->getEfId()I

    move-result v2

    .line 401
    :cond_0
    new-instance v4, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$MsgParam;

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-direct {v4, v5}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$MsgParam;-><init>(Ljava/lang/Object;)V

    .line 402
    .local v4, msgParam:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$MsgParam;
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnCache:Lcom/android/internal/telephony/AdnRecordCache;

    const/4 v6, 0x2

    invoke-virtual {p0, v6, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v5, v0, v2, v6}, Lcom/android/internal/telephony/AdnRecordCache;->requestLoadAllAdnLike(IILandroid/os/Message;)V

    .line 404
    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$MsgParam;->waitForResult()V

    .line 408
    .end local v0           #adnEfId:I
    .end local v2           #ext1EfId:I
    .end local v4           #msgParam:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$MsgParam;
    :goto_0
    return-void

    .line 406
    .restart local v1       #adnFiles:Ljava/util/List;
    :cond_1
    const-string v5, "GSM"

    const-string v6, "ADN file not found on usim."

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private readAnrFilesAndWait(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;)V
    .locals 10
    .parameter "pbrRecord"

    .prologue
    const/4 v9, 0x0

    .line 800
    const/16 v6, 0xc4

    invoke-virtual {p1, v6}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;->getAllFilesOfEfType(I)Ljava/util/ArrayList;

    move-result-object v1

    .line 801
    .local v1, anrFiles:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;>;"
    const/16 v6, 0xaa

    const/16 v7, 0xc2

    invoke-virtual {p1, v6, v7}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;->getFiles(II)Ljava/util/List;

    move-result-object v3

    .line 802
    .local v3, ext1Files:Ljava/util/List;
    const/4 v2, 0x0

    .line 804
    .local v2, ext1EfId:I
    iput-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrFileRecord:Ljava/util/ArrayList;

    .line 806
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_0

    .line 807
    check-cast v3, Ljava/util/ArrayList;

    .end local v3           #ext1Files:Ljava/util/List;
    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;

    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;->getEfId()I

    move-result v2

    .line 812
    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;

    .line 815
    .local v0, anrEfFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;
    iput-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrFileRecord:Ljava/util/ArrayList;

    .line 816
    new-instance v5, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$MsgParam;

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-direct {v5, v6}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$MsgParam;-><init>(Ljava/lang/Object;)V

    .line 817
    .local v5, msgParam:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$MsgParam;
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v6}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v6

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;->getEfId()I

    move-result v7

    const/4 v8, 0x5

    invoke-virtual {p0, v8, v5}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/internal/telephony/IccFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;)V

    .line 819
    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$MsgParam;->waitForResult()V

    .line 821
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrFileRecord:Ljava/util/ArrayList;

    if-eqz v6, :cond_3

    .line 823
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;->getFileType()I

    move-result v6

    const/16 v7, 0xa8

    if-ne v6, v7, :cond_2

    .line 824
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrFileRecord:Ljava/util/ArrayList;

    invoke-direct {p0, v6, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->processType1AnrFile(Ljava/util/ArrayList;I)V

    goto :goto_0

    .line 825
    :cond_2
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;->getFileType()I

    move-result v6

    const/16 v7, 0xa9

    if-ne v6, v7, :cond_1

    .line 826
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrFileRecord:Ljava/util/ArrayList;

    invoke-direct {p0, v6, v0, v2, p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->processType2AnrFile(Ljava/util/ArrayList;Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;ILcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;)V

    goto :goto_0

    .line 829
    :cond_3
    const-string v6, "GSM"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error: Could not read ANR file:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;->getEfId()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 832
    .end local v0           #anrEfFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;
    .end local v5           #msgParam:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$MsgParam;
    :cond_4
    return-void
.end method

.method private readEmailFilesAndWait(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;)V
    .locals 8
    .parameter "pbrRecord"

    .prologue
    const/4 v7, 0x0

    .line 735
    const/16 v4, 0xca

    invoke-virtual {p1, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;->getAllFilesOfEfType(I)Ljava/util/ArrayList;

    move-result-object v1

    .line 736
    .local v1, emailFiles:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;>;"
    iput-object v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileRecord:Ljava/util/ArrayList;

    .line 740
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;

    .line 743
    .local v0, emailEfFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;
    iput-object v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileRecord:Ljava/util/ArrayList;

    .line 744
    new-instance v3, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$MsgParam;

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-direct {v3, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$MsgParam;-><init>(Ljava/lang/Object;)V

    .line 745
    .local v3, msgParam:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$MsgParam;
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;->getEfId()I

    move-result v5

    const/4 v6, 0x4

    invoke-virtual {p0, v6, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/telephony/IccFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;)V

    .line 747
    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$MsgParam;->waitForResult()V

    .line 749
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileRecord:Ljava/util/ArrayList;

    if-eqz v4, :cond_2

    .line 751
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;->getFileType()I

    move-result v4

    const/16 v5, 0xa8

    if-ne v4, v5, :cond_1

    .line 752
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileRecord:Ljava/util/ArrayList;

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->processType1EmailFile(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 753
    :cond_1
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;->getFileType()I

    move-result v4

    const/16 v5, 0xa9

    if-ne v4, v5, :cond_0

    .line 754
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileRecord:Ljava/util/ArrayList;

    invoke-direct {p0, v4, v0, p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->processType2EmailFile(Ljava/util/ArrayList;Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;)V

    goto :goto_0

    .line 757
    :cond_2
    const-string v4, "GSM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error: Could not read EMAIL file:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;->getEfId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 760
    .end local v0           #emailEfFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;
    .end local v3           #msgParam:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$MsgParam;
    :cond_3
    return-void
.end method

.method private readEmailRecord(II)Ljava/lang/String;
    .locals 4
    .parameter "recNum"
    .parameter "fileType"

    .prologue
    .line 365
    const/4 v2, 0x0

    .line 367
    .local v2, emailRec:[B
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileRecord:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, [B

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 372
    invoke-static {v2, p2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readEmailRecord([BI)Ljava/lang/String;

    move-result-object v3

    :goto_0
    return-object v3

    .line 368
    :catch_0
    move-exception v1

    .line 369
    .local v1, e:Ljava/lang/IndexOutOfBoundsException;
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private static readEmailRecord([BI)Ljava/lang/String;
    .locals 2
    .parameter "record"
    .parameter "fileType"

    .prologue
    const/4 v1, 0x0

    .line 376
    const/16 v0, 0xa9

    if-ne p1, v0, :cond_0

    .line 380
    array-length v0, p0

    add-int/lit8 v0, v0, -0x2

    invoke-static {p0, v1, v0}, Lcom/android/internal/telephony/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;

    move-result-object v0

    .line 382
    :goto_0
    return-object v0

    :cond_0
    array-length v0, p0

    invoke-static {p0, v1, v0}, Lcom/android/internal/telephony/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private readExt1RecordAndWait(Lcom/android/internal/telephony/AnrRecord;)V
    .locals 5
    .parameter "anr"

    .prologue
    .line 952
    new-instance v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$MsgParam;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-direct {v0, p1, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$MsgParam;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 953
    .local v0, msgParam:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$MsgParam;
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/internal/telephony/AnrRecord;->getExt1EfId()I

    move-result v2

    invoke-virtual {p1}, Lcom/android/internal/telephony/AnrRecord;->getExt1RecordIndex()I

    move-result v3

    const/4 v4, 0x6

    invoke-virtual {p0, v4, v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/internal/telephony/IccFileHandler;->loadEFLinearFixed(IILandroid/os/Message;)V

    .line 955
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$MsgParam;->waitForResult()V

    .line 956
    return-void
.end method

.method private readFilesForPbrRecord(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;)V
    .locals 1
    .parameter "pbrRecord"

    .prologue
    .line 713
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    .line 716
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readAdnFileAndWait(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;)V

    .line 720
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 721
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readIapFileAndWait(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;)V

    .line 727
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readAnrFilesAndWait(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;)V

    .line 730
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readEmailFilesAndWait(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;)V

    .line 732
    :cond_0
    return-void
.end method

.method private readIapFileAndWait(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;)V
    .locals 6
    .parameter "pbrRecord"

    .prologue
    const/4 v5, 0x0

    .line 335
    const/16 v3, 0xa9

    invoke-virtual {p1, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;->filesExist(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 336
    const/16 v3, 0xa8

    const/16 v4, 0xc1

    invoke-virtual {p1, v3, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;->getFiles(II)Ljava/util/List;

    move-result-object v1

    .line 338
    .local v1, iapFiles:Ljava/util/List;
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 339
    check-cast v1, Ljava/util/ArrayList;

    .end local v1           #iapFiles:Ljava/util/List;
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;->getEfId()I

    move-result v0

    .line 341
    .local v0, iapEfId:I
    new-instance v2, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$MsgParam;

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$MsgParam;-><init>(Ljava/lang/Object;)V

    .line 342
    .local v2, msgParam:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$MsgParam;
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {p0, v4, v0, v5, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lcom/android/internal/telephony/IccFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;)V

    .line 344
    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$MsgParam;->waitForResult()V

    .line 349
    .end local v0           #iapEfId:I
    .end local v2           #msgParam:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$MsgParam;
    :cond_0
    :goto_0
    return-void

    .line 346
    .restart local v1       #iapFiles:Ljava/util/List;
    :cond_1
    const-string v3, "GSM"

    const-string v4, "Type2 files exist but IAP not found on usim."

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private readPbrFileAndWait()V
    .locals 4

    .prologue
    .line 289
    new-instance v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$MsgParam;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$MsgParam;-><init>(Ljava/lang/Object;)V

    .line 290
    .local v0, msgParam:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$MsgParam;
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v1

    const/16 v2, 0x4f30

    const/4 v3, 0x1

    invoke-virtual {p0, v3, v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/IccFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;)V

    .line 292
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$MsgParam;->waitForResult()V

    .line 293
    return-void
.end method

.method private updateEfFileInfo(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;)Z
    .locals 12
    .parameter "pbrRecord"

    .prologue
    .line 259
    const/4 v9, 0x4

    new-array v4, v9, [I

    fill-array-data v4, :array_0

    .line 260
    .local v4, efTypes:[I
    move-object v0, v4

    .local v0, arr$:[I
    array-length v7, v0

    .local v7, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    move v6, v5

    .end local v5           #i$:I
    .local v6, i$:I
    :goto_0
    if-ge v6, v7, :cond_3

    aget v3, v0, v6

    .line 261
    .local v3, efType:I
    invoke-virtual {p1, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;->getAllFilesOfEfType(I)Ljava/util/ArrayList;

    move-result-object v2

    .line 262
    .local v2, efFiles:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .end local v6           #i$:I
    .local v5, i$:Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;

    .line 263
    .local v1, efFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;
    new-instance v8, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$MsgParam;

    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-direct {v8, v1, v9}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$MsgParam;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 264
    .local v8, msgParam:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$MsgParam;
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v9}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v9

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;->getEfId()I

    move-result v10

    const/16 v11, 0x68

    invoke-virtual {p0, v11, v8}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lcom/android/internal/telephony/IccFileHandler;->getEFLinearRecordSize(ILandroid/os/Message;)V

    .line 266
    invoke-virtual {v8}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$MsgParam;->waitForResult()V

    .line 271
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mTotalPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 272
    const-string v9, "GSM"

    const-string v10, "Update the file extend info fail in updateEfFileInfo"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    const/4 v9, 0x0

    .line 281
    .end local v1           #efFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;
    .end local v2           #efFiles:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;>;"
    .end local v3           #efType:I
    .end local v5           #i$:Ljava/util/Iterator;
    .end local v8           #msgParam:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$MsgParam;
    :goto_2
    return v9

    .line 276
    .restart local v1       #efFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;
    .restart local v2       #efFiles:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;>;"
    .restart local v3       #efType:I
    .restart local v5       #i$:Ljava/util/Iterator;
    .restart local v8       #msgParam:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$MsgParam;
    :cond_1
    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;->getFileType()I

    move-result v9

    const/16 v10, 0xa9

    if-ne v9, v10, :cond_0

    .line 277
    invoke-direct {p0, p1, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->updateEfRecordState(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;)V

    goto :goto_1

    .line 260
    .end local v1           #efFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;
    .end local v8           #msgParam:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$MsgParam;
    :cond_2
    add-int/lit8 v5, v6, 0x1

    .local v5, i$:I
    move v6, v5

    .end local v5           #i$:I
    .restart local v6       #i$:I
    goto :goto_0

    .line 281
    .end local v2           #efFiles:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;>;"
    .end local v3           #efType:I
    :cond_3
    const/4 v9, 0x1

    goto :goto_2

    .line 259
    :array_0
    .array-data 0x4
        0xc0t 0x0t 0x0t 0x0t
        0xc4t 0x0t 0x0t 0x0t
        0xc1t 0x0t 0x0t 0x0t
        0xcat 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private updateEfRecordState(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;)V
    .locals 11
    .parameter "pbrRecord"
    .parameter "efFile"

    .prologue
    const/16 v10, 0xff

    const/4 v9, 0x0

    .line 304
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 325
    :cond_0
    return-void

    .line 306
    :cond_1
    const/16 v7, 0xa8

    const/16 v8, 0xc1

    invoke-virtual {p1, v7, v8}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;->getFiles(II)Ljava/util/List;

    move-result-object v2

    .line 307
    .local v2, iapEfFiles:Ljava/util/List;
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_0

    .line 309
    check-cast v2, Ljava/util/ArrayList;

    .end local v2           #iapEfFiles:Ljava/util/List;
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;

    .line 310
    .local v1, iapEfFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;
    invoke-virtual {p1, p2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;->getIAPIndex(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;)I

    move-result v3

    .line 311
    .local v3, iapIndex:I
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileRecords:Ljava/util/HashMap;

    if-eqz v7, :cond_0

    if-eq v3, v10, :cond_0

    .line 314
    #calls: Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;->initEfRecordState()V
    invoke-static {p2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;->access$100(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;)V

    .line 317
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileRecords:Ljava/util/HashMap;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;->getEfId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 318
    .local v5, iapRecords:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[B>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    .line 319
    .local v4, iapRecord:[B
    aget-byte v7, v4, v3

    and-int/lit16 v6, v7, 0xff

    .line 320
    .local v6, stateIndex:I
    if-eq v6, v10, :cond_2

    if-eqz v6, :cond_2

    .line 321
    add-int/lit8 v7, v6, -0x1

    invoke-virtual {p2, v7, v9}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;->setRecordState(IZ)V

    goto :goto_0
.end method

.method private updateUsimAdnRecord(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;Lcom/android/internal/telephony/AdnRecord;Lcom/android/internal/telephony/AdnRecord;)V
    .locals 10
    .parameter "pbrRecord"
    .parameter "oldAdn"
    .parameter "newAdn"

    .prologue
    .line 1582
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v9

    .line 1583
    :try_start_0
    invoke-virtual {p3}, Lcom/android/internal/telephony/AdnRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p3}, Lcom/android/internal/telephony/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    monitor-exit v9

    .line 1603
    :goto_0
    return-void

    .line 1585
    :cond_0
    new-instance v8, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$MsgParam;

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-direct {v8, v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$MsgParam;-><init>(Ljava/lang/Object;)V

    .line 1586
    .local v8, msgParam:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$MsgParam;
    const/16 v0, 0xa8

    const/16 v1, 0xc0

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;->getFiles(II)Ljava/util/List;

    move-result-object v7

    .line 1588
    .local v7, efFiles:Ljava/util/List;
    check-cast v7, Ljava/util/ArrayList;

    .end local v7           #efFiles:Ljava/util/List;
    const/4 v0, 0x0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;

    .line 1590
    .local v6, adnEfFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;
    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;->getRecordSize()I

    move-result v0

    invoke-virtual {p3, v0}, Lcom/android/internal/telephony/AdnRecord;->buildAdnString(I)[B

    move-result-object v3

    .line 1591
    .local v3, data:[B
    if-nez v3, :cond_1

    .line 1592
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "update adn record of USIM failed data == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1602
    .end local v3           #data:[B
    .end local v6           #adnEfFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;
    .end local v8           #msgParam:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$MsgParam;
    :catchall_0
    move-exception v0

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1595
    .restart local v3       #data:[B
    .restart local v6       #adnEfFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;
    .restart local v8       #msgParam:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$MsgParam;
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/internal/telephony/AdnRecord;->getEfId()I

    move-result v1

    invoke-virtual {p2}, Lcom/android/internal/telephony/AdnRecord;->getRecordNumber()I

    move-result v2

    const/4 v4, 0x0

    const/16 v5, 0x64

    invoke-virtual {p0, v5, v8}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/IccFileHandler;->updateEFLinearFixed(II[BLjava/lang/String;Landroid/os/Message;)V

    .line 1598
    invoke-virtual {v8}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$MsgParam;->waitForResult()V

    .line 1600
    invoke-virtual {p3}, Lcom/android/internal/telephony/AdnRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/android/internal/telephony/AdnRecord;->setAlphaTag(Ljava/lang/String;)V

    .line 1601
    invoke-virtual {p3}, Lcom/android/internal/telephony/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/android/internal/telephony/AdnRecord;->setNumber(Ljava/lang/String;)V

    .line 1602
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private updateUsimAnrRecord(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;Lcom/android/internal/telephony/AdnRecord;Lcom/android/internal/telephony/AdnRecord;[B)V
    .locals 17
    .parameter "pbrRecord"
    .parameter "oldAdn"
    .parameter "newAdn"
    .parameter "iapData"

    .prologue
    .line 1646
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    move-object/from16 v16, v0

    monitor-enter v16

    .line 1647
    :try_start_0
    new-instance v14, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$MsgParam;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-direct {v14, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$MsgParam;-><init>(Ljava/lang/Object;)V

    .line 1648
    .local v14, msgParam:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$MsgParam;
    const/16 v3, 0xc4

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;->getAllFilesOfEfType(I)Ljava/util/ArrayList;

    move-result-object v11

    .line 1650
    .local v11, efFiles:Ljava/util/List;
    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/telephony/AdnRecord;->getAllAnr()[Ljava/lang/String;

    move-result-object v9

    .line 1651
    .local v9, anrNumbers:[Ljava/lang/String;
    if-eqz v9, :cond_0

    if-nez v11, :cond_1

    :cond_0
    monitor-exit v16

    .line 1690
    :goto_0
    return-void

    .line 1653
    :cond_1
    const/4 v10, 0x0

    .line 1654
    .local v10, efFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v12

    .line 1655
    .local v12, efSize:I
    const/4 v13, 0x0

    .local v13, i:I
    :goto_1
    if-ge v13, v12, :cond_4

    array-length v3, v9

    if-ge v13, v3, :cond_4

    .line 1656
    aget-object v3, v9, v13

    if-nez v3, :cond_3

    .line 1655
    :cond_2
    :goto_2
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 1658
    :cond_3
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/AdnRecord;->getRecordNumber()I

    move-result v5

    .line 1659
    .local v5, anrIndex:I
    move-object v0, v11

    check-cast v0, Ljava/util/ArrayList;

    move-object v3, v0

    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    .end local v10           #efFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;
    check-cast v10, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;

    .line 1660
    .restart local v10       #efFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;
    if-nez v10, :cond_5

    .line 1689
    .end local v5           #anrIndex:I
    :cond_4
    monitor-exit v16

    goto :goto_0

    .end local v9           #anrNumbers:[Ljava/lang/String;
    .end local v10           #efFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;
    .end local v11           #efFiles:Ljava/util/List;
    .end local v12           #efSize:I
    .end local v13           #i:I
    .end local v14           #msgParam:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$MsgParam;
    :catchall_0
    move-exception v3

    monitor-exit v16
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 1662
    .restart local v5       #anrIndex:I
    .restart local v9       #anrNumbers:[Ljava/lang/String;
    .restart local v10       #efFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;
    .restart local v11       #efFiles:Ljava/util/List;
    .restart local v12       #efSize:I
    .restart local v13       #i:I
    .restart local v14       #msgParam:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$MsgParam;
    :cond_5
    :try_start_1
    invoke-virtual {v10}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;->getFileType()I

    move-result v3

    const/16 v4, 0xa9

    if-ne v3, v4, :cond_6

    .line 1664
    aget-object v3, v9, v13

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    invoke-direct {v0, v1, v10, v2, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getFieldIndexForType2(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;[BLjava/lang/String;)B

    move-result v3

    and-int/lit16 v5, v3, 0xff

    .line 1668
    :cond_6
    const/16 v3, 0xff

    if-ge v5, v3, :cond_2

    if-lez v5, :cond_2

    .line 1670
    invoke-virtual {v10}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;->getRecordSize()I

    move-result v15

    .line 1671
    .local v15, recordSize:I
    aget-object v3, v9, v13

    move-object/from16 v0, p3

    invoke-virtual {v0, v15, v3}, Lcom/android/internal/telephony/AdnRecord;->buildAnrString(ILjava/lang/String;)[B

    move-result-object v6

    .line 1672
    .local v6, data:[B
    if-nez v6, :cond_7

    .line 1673
    new-instance v3, Ljava/lang/NullPointerException;

    const-string/jumbo v4, "update anr record of USIM failed data == null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1677
    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v3

    #getter for: Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;->mEfId:I
    invoke-static {v10}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;->access$400(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;)I

    move-result v4

    const/4 v7, 0x0

    const/16 v8, 0x65

    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v14}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    invoke-virtual/range {v3 .. v8}, Lcom/android/internal/telephony/IccFileHandler;->updateEFLinearFixed(II[BLjava/lang/String;Landroid/os/Message;)V

    .line 1680
    invoke-virtual {v14}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$MsgParam;->waitForResult()V

    .line 1682
    aget-object v3, v9, v13

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v3}, Lcom/android/internal/telephony/AdnRecord;->updateAnrNumber(ILjava/lang/String;)V

    .line 1684
    invoke-virtual {v10}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;->getFileType()I

    move-result v3

    const/16 v4, 0xa9

    if-ne v3, v4, :cond_2

    .line 1685
    #getter for: Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;->mRecordStateInfo:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile$RecordStateInfo;
    invoke-static {v10}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;->access$600(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;)Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile$RecordStateInfo;

    move-result-object v3

    add-int/lit8 v4, v5, -0x1

    aget-object v7, v9, v13

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    invoke-virtual {v3, v4, v7}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile$RecordStateInfo;->setRecordState(IZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_2
.end method

.method private updateUsimEmailRecord(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;Lcom/android/internal/telephony/AdnRecord;Lcom/android/internal/telephony/AdnRecord;[B)V
    .locals 18
    .parameter "pbrRecord"
    .parameter "oldAdn"
    .parameter "newAdn"
    .parameter "iapData"

    .prologue
    .line 1702
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    move-object/from16 v17, v0

    monitor-enter v17

    .line 1703
    :try_start_0
    new-instance v15, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$MsgParam;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-direct {v15, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$MsgParam;-><init>(Ljava/lang/Object;)V

    .line 1704
    .local v15, msgParam:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$MsgParam;
    const/16 v3, 0xca

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;->getAllFilesOfEfType(I)Ljava/util/ArrayList;

    move-result-object v10

    .line 1706
    .local v10, efFiles:Ljava/util/List;
    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/telephony/AdnRecord;->getEmails()[Ljava/lang/String;

    move-result-object v12

    .line 1707
    .local v12, emails:[Ljava/lang/String;
    if-eqz v12, :cond_0

    if-nez v10, :cond_1

    :cond_0
    monitor-exit v17

    .line 1749
    :goto_0
    return-void

    .line 1709
    :cond_1
    const/4 v9, 0x0

    .line 1710
    .local v9, efFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v11

    .line 1711
    .local v11, efSize:I
    const/4 v13, 0x0

    .local v13, i:I
    :goto_1
    if-ge v13, v11, :cond_4

    array-length v3, v12

    if-ge v13, v3, :cond_4

    .line 1712
    aget-object v3, v12, v13

    if-nez v3, :cond_3

    .line 1711
    :cond_2
    :goto_2
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 1714
    :cond_3
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/AdnRecord;->getRecordNumber()I

    move-result v5

    .line 1715
    .local v5, emailIndex:I
    const/4 v14, 0x0

    .line 1716
    .local v14, isEmailType2:Z
    move-object v0, v10

    check-cast v0, Ljava/util/ArrayList;

    move-object v3, v0

    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    .end local v9           #efFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;
    check-cast v9, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;

    .line 1717
    .restart local v9       #efFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;
    if-nez v9, :cond_5

    .line 1748
    .end local v5           #emailIndex:I
    .end local v14           #isEmailType2:Z
    :cond_4
    monitor-exit v17

    goto :goto_0

    .end local v9           #efFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;
    .end local v10           #efFiles:Ljava/util/List;
    .end local v11           #efSize:I
    .end local v12           #emails:[Ljava/lang/String;
    .end local v13           #i:I
    .end local v15           #msgParam:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$MsgParam;
    :catchall_0
    move-exception v3

    monitor-exit v17
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 1719
    .restart local v5       #emailIndex:I
    .restart local v9       #efFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;
    .restart local v10       #efFiles:Ljava/util/List;
    .restart local v11       #efSize:I
    .restart local v12       #emails:[Ljava/lang/String;
    .restart local v13       #i:I
    .restart local v14       #isEmailType2:Z
    .restart local v15       #msgParam:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$MsgParam;
    :cond_5
    :try_start_1
    invoke-virtual {v9}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;->getFileType()I

    move-result v3

    const/16 v4, 0xa9

    if-ne v3, v4, :cond_6

    .line 1720
    const/4 v14, 0x1

    .line 1722
    aget-object v3, v12, v13

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    invoke-direct {v0, v1, v9, v2, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getFieldIndexForType2(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;[BLjava/lang/String;)B

    move-result v3

    and-int/lit16 v5, v3, 0xff

    .line 1726
    :cond_6
    const/16 v3, 0xff

    if-ge v5, v3, :cond_2

    if-lez v5, :cond_2

    .line 1728
    invoke-virtual {v9}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;->getRecordSize()I

    move-result v16

    .line 1730
    .local v16, recordSize:I
    aget-object v3, v12, v13

    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1, v3, v14}, Lcom/android/internal/telephony/AdnRecord;->buildEmailString(ILjava/lang/String;Z)[B

    move-result-object v6

    .line 1731
    .local v6, data:[B
    if-nez v6, :cond_7

    .line 1732
    new-instance v3, Ljava/lang/NullPointerException;

    const-string/jumbo v4, "update email record of USIM failed data == null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1737
    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v3

    #getter for: Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;->mEfId:I
    invoke-static {v9}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;->access$400(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;)I

    move-result v4

    const/4 v7, 0x0

    const/16 v8, 0x66

    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v15}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    invoke-virtual/range {v3 .. v8}, Lcom/android/internal/telephony/IccFileHandler;->updateEFLinearFixed(II[BLjava/lang/String;Landroid/os/Message;)V

    .line 1740
    invoke-virtual {v15}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$MsgParam;->waitForResult()V

    .line 1742
    aget-object v3, v12, v13

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v3}, Lcom/android/internal/telephony/AdnRecord;->updateEmail(ILjava/lang/String;)V

    .line 1743
    invoke-virtual {v9}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;->getFileType()I

    move-result v3

    const/16 v4, 0xa9

    if-ne v3, v4, :cond_2

    .line 1744
    #getter for: Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;->mRecordStateInfo:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile$RecordStateInfo;
    invoke-static {v9}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;->access$600(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;)Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile$RecordStateInfo;

    move-result-object v3

    add-int/lit8 v4, v5, -0x1

    aget-object v7, v12, v13

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    invoke-virtual {v3, v4, v7}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile$RecordStateInfo;->setRecordState(IZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_2
.end method

.method private updateUsimIapRecord(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;Lcom/android/internal/telephony/AdnRecord;[B)V
    .locals 10
    .parameter "pbrRecord"
    .parameter "oldAdn"
    .parameter "iapData"

    .prologue
    .line 1759
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v9

    .line 1760
    :try_start_0
    new-instance v8, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$MsgParam;

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-direct {v8, v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$MsgParam;-><init>(Ljava/lang/Object;)V

    .line 1762
    .local v8, msgParam:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$MsgParam;
    const/16 v0, 0xa8

    const/16 v3, 0xc1

    invoke-virtual {p1, v0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;->getFiles(II)Ljava/util/List;

    move-result-object v7

    .line 1763
    .local v7, iapEfFiles:Ljava/util/List;
    if-eqz v7, :cond_0

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    monitor-exit v9

    .line 1776
    .end local v7           #iapEfFiles:Ljava/util/List;
    :goto_0
    return-void

    .line 1765
    .restart local v7       #iapEfFiles:Ljava/util/List;
    :cond_1
    check-cast v7, Ljava/util/ArrayList;

    .end local v7           #iapEfFiles:Ljava/util/List;
    const/4 v0, 0x0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;

    .line 1766
    .local v6, iapEfFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;
    if-nez v6, :cond_2

    monitor-exit v9

    goto :goto_0

    .line 1775
    .end local v6           #iapEfFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;
    .end local v8           #msgParam:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$MsgParam;
    :catchall_0
    move-exception v0

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1768
    .restart local v6       #iapEfFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;
    .restart local v8       #msgParam:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$MsgParam;
    :cond_2
    :try_start_1
    invoke-virtual {p2}, Lcom/android/internal/telephony/AdnRecord;->getRecordNumber()I

    move-result v2

    .line 1769
    .local v2, index:I
    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;->getEfId()I

    move-result v1

    .line 1770
    .local v1, efid:I
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v0

    const/4 v4, 0x0

    const/16 v3, 0x67

    invoke-virtual {p0, v3, v8}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/IccFileHandler;->updateEFLinearFixed(II[BLjava/lang/String;Landroid/os/Message;)V

    .line 1772
    invoke-virtual {v8}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$MsgParam;->waitForResult()V

    .line 1774
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileRecords:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    add-int/lit8 v3, v2, -0x1

    invoke-virtual {v0, v3, p3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1775
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private writeUsimRecord(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;Lcom/android/internal/telephony/AdnRecord;Lcom/android/internal/telephony/AdnRecord;)V
    .locals 6
    .parameter "pbrRecord"
    .parameter "oldAdn"
    .parameter "newAdn"

    .prologue
    .line 1505
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1506
    :try_start_0
    invoke-virtual {p2}, Lcom/android/internal/telephony/AdnRecord;->getRecordNumber()I

    move-result v2

    invoke-direct {p0, p1, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getIapDataFromCache(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;I)[B

    move-result-object v0

    .line 1508
    .local v0, iapData:[B
    const/4 v1, 0x0

    .line 1509
    .local v1, iapDataTemp:[B
    if-eqz v0, :cond_0

    .line 1510
    array-length v2, v0

    new-array v1, v2, [B

    .line 1511
    const/4 v2, 0x0

    const/4 v4, 0x0

    array-length v5, v1

    invoke-static {v0, v2, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1514
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->updateUsimAdnRecord(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;Lcom/android/internal/telephony/AdnRecord;Lcom/android/internal/telephony/AdnRecord;)V

    .line 1516
    invoke-direct {p0, p1, p2, p3, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->updateUsimAnrRecord(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;Lcom/android/internal/telephony/AdnRecord;Lcom/android/internal/telephony/AdnRecord;[B)V

    .line 1518
    invoke-direct {p0, p1, p2, p3, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->updateUsimEmailRecord(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;Lcom/android/internal/telephony/AdnRecord;Lcom/android/internal/telephony/AdnRecord;[B)V

    .line 1520
    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1521
    invoke-direct {p0, p1, p2, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->updateUsimIapRecord(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;Lcom/android/internal/telephony/AdnRecord;[B)V

    .line 1523
    :cond_1
    monitor-exit v3

    .line 1524
    return-void

    .line 1523
    .end local v0           #iapData:[B
    .end local v1           #iapDataTemp:[B
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method


# virtual methods
.method public deleteSimPhonebook()V
    .locals 8

    .prologue
    .line 1252
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    if-nez v5, :cond_0

    .line 1281
    :goto_0
    return-void

    .line 1253
    :cond_0
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 1255
    :try_start_0
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v5, v5, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v2

    .line 1256
    .local v2, numRecs:I
    const/4 v3, 0x0

    .local v3, pbrIndex:I
    :goto_1
    if-ge v3, v2, :cond_1

    .line 1257
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Start delete PBR#"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1258
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    invoke-virtual {v5, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->getRecord(I)Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;

    move-result-object v4

    .line 1260
    .local v4, pbrRecord:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;
    const-string v5, "Start delete ANR"

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1261
    const/16 v5, 0xc4

    invoke-direct {p0, v4, v5}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->deleteAllRecordsInEfFiles(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;I)V

    .line 1263
    const-string v5, "Start delete EMAIL"

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1264
    const/16 v5, 0xca

    invoke-direct {p0, v4, v5}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->deleteAllRecordsInEfFiles(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;I)V

    .line 1266
    const-string v5, "Start delete EXT1"

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1267
    const/16 v5, 0xc2

    invoke-direct {p0, v4, v5}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->deleteAllRecordsInEfFiles(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;I)V

    .line 1269
    const-string v5, "Start delete IAP"

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1270
    const/16 v5, 0xc1

    invoke-direct {p0, v4, v5}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->deleteAllRecordsInEfFiles(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;I)V

    .line 1256
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1273
    .end local v4           #pbrRecord:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;
    :cond_1
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mTotalPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1274
    .local v1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/internal/telephony/AdnRecord;>;"
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1275
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/AdnRecord;

    .line 1276
    .local v0, adn:Lcom/android/internal/telephony/AdnRecord;
    invoke-virtual {v0}, Lcom/android/internal/telephony/AdnRecord;->deleteAllAnr()V

    .line 1277
    invoke-virtual {v0}, Lcom/android/internal/telephony/AdnRecord;->deleteAllEmail()V

    .line 1278
    invoke-virtual {v0}, Lcom/android/internal/telephony/AdnRecord;->deleteExt1()V

    goto :goto_2

    .line 1280
    .end local v0           #adn:Lcom/android/internal/telephony/AdnRecord;
    .end local v1           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/internal/telephony/AdnRecord;>;"
    .end local v2           #numRecs:I
    .end local v3           #pbrIndex:I
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .restart local v1       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/internal/telephony/AdnRecord;>;"
    .restart local v2       #numRecs:I
    .restart local v3       #pbrIndex:I
    :cond_2
    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public getExt1EfId(I)I
    .locals 10
    .parameter "efId"

    .prologue
    const/4 v9, 0x0

    const/4 v7, -0x1

    .line 1162
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    if-nez v6, :cond_0

    move v6, v7

    .line 1181
    :goto_0
    return v6

    .line 1164
    :cond_0
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v6, v6, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    move-result v4

    .line 1166
    .local v4, numRecs:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v4, :cond_4

    .line 1167
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    invoke-virtual {v6, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->getRecord(I)Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;

    move-result-object v5

    .line 1169
    .local v5, pbrRecord:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;
    const/16 v6, 0xa8

    const/16 v8, 0xc0

    invoke-virtual {v5, v6, v8}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;->getFiles(II)Ljava/util/List;

    move-result-object v1

    .line 1170
    .local v1, adnFiles:Ljava/util/List;
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    if-gtz v6, :cond_2

    .line 1166
    .end local v1           #adnFiles:Ljava/util/List;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1171
    .restart local v1       #adnFiles:Ljava/util/List;
    :cond_2
    check-cast v1, Ljava/util/ArrayList;

    .end local v1           #adnFiles:Ljava/util/List;
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;

    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;->getEfId()I

    move-result v0

    .line 1173
    .local v0, adnEfId:I
    if-ne v0, p1, :cond_1

    .line 1175
    const/16 v6, 0xaa

    const/16 v7, 0xc2

    invoke-virtual {v5, v6, v7}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;->getFiles(II)Ljava/util/List;

    move-result-object v2

    .line 1176
    .local v2, ext1Files:Ljava/util/List;
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_3

    .line 1177
    check-cast v2, Ljava/util/ArrayList;

    .end local v2           #ext1Files:Ljava/util/List;
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;

    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;->getEfId()I

    move-result v6

    goto :goto_0

    .line 1179
    .restart local v2       #ext1Files:Ljava/util/List;
    :cond_3
    const v6, 0xffff

    goto :goto_0

    .end local v0           #adnEfId:I
    .end local v2           #ext1Files:Ljava/util/List;
    .end local v5           #pbrRecord:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;
    :cond_4
    move v6, v7

    .line 1181
    goto :goto_0
.end method

.method public getRecordAt(I)Lcom/android/internal/telephony/AdnRecord;
    .locals 1
    .parameter "i"

    .prologue
    .line 1146
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mTotalPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/AdnRecord;

    return-object v0
.end method

.method public getUsimPBCapacity()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/IccPBCapacityInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 187
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    if-nez v4, :cond_1

    const/4 v1, 0x0

    .line 188
    .local v1, numRecs:I
    :goto_0
    if-nez v1, :cond_2

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    .line 195
    :cond_0
    return-object v3

    .line 187
    .end local v1           #numRecs:I
    :cond_1
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v4, v4, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v1

    goto :goto_0

    .line 190
    .restart local v1       #numRecs:I
    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 191
    .local v3, usimPBCapacityList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/IccPBCapacityInfo;>;"
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    #getter for: Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mPbrRecords:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->access$000(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;

    .line 192
    .local v2, pbrRecord:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;
    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;->getUsimPBCapacityInfo()Lcom/android/internal/telephony/IccPBCapacityInfo;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 11
    .parameter "msg"

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 424
    iget v7, p1, Landroid/os/Message;->what:I

    sparse-switch v7, :sswitch_data_0

    .line 571
    :goto_0
    return-void

    .line 426
    :sswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 427
    .local v1, ar:Landroid/os/AsyncResult;
    iget-object v7, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v7, :cond_0

    const-string v7, "Local phone book exists!"

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 428
    :cond_0
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v7}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v7

    check-cast v7, Lcom/android/internal/telephony/gsm/SIMFileHandler;

    iget-object v10, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v10, :cond_1

    move v8, v9

    :cond_1
    invoke-virtual {v7, v8}, Lcom/android/internal/telephony/gsm/SIMFileHandler;->setLocalPhoneBookExist(Z)V

    .line 431
    iput-boolean v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mCheckPhoneBookPathDone:Z

    .line 432
    iget-object v7, v1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v7, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$MsgParam;

    check-cast v7, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$MsgParam;

    invoke-virtual {v7}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$MsgParam;->notifyPending()V

    goto :goto_0

    .line 435
    .end local v1           #ar:Landroid/os/AsyncResult;
    :sswitch_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 436
    .restart local v1       #ar:Landroid/os/AsyncResult;
    iget-object v5, v1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v5, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$MsgParam;

    .line 437
    .local v5, msgParam:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$MsgParam;
    iget-object v7, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v7, :cond_2

    .line 438
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v7}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v7

    const-string v8, "3F007FFF5F3A"

    const/16 v9, 0x4f30

    const/16 v10, 0x6a

    invoke-virtual {p0, v10, v5}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    invoke-virtual {v7, v8, v9, v10}, Lcom/android/internal/telephony/IccFileHandler;->getEFLinearRecordSize(Ljava/lang/String;ILandroid/os/Message;)V

    goto :goto_0

    .line 443
    :cond_2
    const-string v7, "Global phone book exists!"

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 444
    iput-boolean v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mCheckPhoneBookPathDone:Z

    .line 445
    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$MsgParam;->notifyPending()V

    goto :goto_0

    .line 448
    .end local v1           #ar:Landroid/os/AsyncResult;
    .end local v5           #msgParam:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$MsgParam;
    :sswitch_2
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 449
    .restart local v1       #ar:Landroid/os/AsyncResult;
    iget-object v7, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v7, :cond_3

    .line 450
    iget-object v7, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v7, Ljava/util/ArrayList;

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->createPbrFile(Ljava/util/ArrayList;)V

    .line 453
    :cond_3
    iget-object v7, v1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v7, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$MsgParam;

    check-cast v7, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$MsgParam;

    invoke-virtual {v7}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$MsgParam;->notifyPending()V

    goto :goto_0

    .line 456
    .end local v1           #ar:Landroid/os/AsyncResult;
    :sswitch_3
    const-string v7, "Loading USIM ADN records done"

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 457
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 458
    .restart local v1       #ar:Landroid/os/AsyncResult;
    iget-object v7, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v7, :cond_4

    .line 459
    iget-object v7, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v7, Ljava/util/ArrayList;

    iput-object v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    .line 462
    :cond_4
    iget-object v7, v1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v7, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$MsgParam;

    check-cast v7, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$MsgParam;

    invoke-virtual {v7}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$MsgParam;->notifyPending()V

    goto/16 :goto_0

    .line 465
    .end local v1           #ar:Landroid/os/AsyncResult;
    :sswitch_4
    const-string v7, "Loading USIM IAP records done"

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 466
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 467
    .restart local v1       #ar:Landroid/os/AsyncResult;
    iget v3, p1, Landroid/os/Message;->arg1:I

    .line 468
    .local v3, efid:I
    iget-object v7, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v7, :cond_6

    .line 469
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileRecords:Ljava/util/HashMap;

    if-nez v7, :cond_5

    .line 470
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    iput-object v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileRecords:Ljava/util/HashMap;

    .line 473
    :cond_5
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileRecords:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iget-object v7, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v7, Ljava/util/ArrayList;

    invoke-virtual {v8, v9, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 476
    :cond_6
    iget-object v7, v1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v7, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$MsgParam;

    check-cast v7, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$MsgParam;

    invoke-virtual {v7}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$MsgParam;->notifyPending()V

    goto/16 :goto_0

    .line 479
    .end local v1           #ar:Landroid/os/AsyncResult;
    .end local v3           #efid:I
    :sswitch_5
    const-string v7, "Loading USIM Email records done"

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 480
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 481
    .restart local v1       #ar:Landroid/os/AsyncResult;
    iget-object v7, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v7, :cond_7

    .line 482
    iget-object v7, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v7, Ljava/util/ArrayList;

    iput-object v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileRecord:Ljava/util/ArrayList;

    .line 485
    :cond_7
    iget-object v7, v1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v7, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$MsgParam;

    check-cast v7, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$MsgParam;

    invoke-virtual {v7}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$MsgParam;->notifyPending()V

    goto/16 :goto_0

    .line 488
    .end local v1           #ar:Landroid/os/AsyncResult;
    :sswitch_6
    const-string v7, "Loading USIM ANR records done"

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 489
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 490
    .restart local v1       #ar:Landroid/os/AsyncResult;
    iget-object v7, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v7, :cond_8

    .line 491
    iget-object v7, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v7, Ljava/util/ArrayList;

    iput-object v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrFileRecord:Ljava/util/ArrayList;

    .line 494
    :cond_8
    iget-object v7, v1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v7, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$MsgParam;

    check-cast v7, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$MsgParam;

    invoke-virtual {v7}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$MsgParam;->notifyPending()V

    goto/16 :goto_0

    .line 497
    .end local v1           #ar:Landroid/os/AsyncResult;
    :sswitch_7
    const-string v7, "Loading USIM EXT1 record done"

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 498
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 499
    .restart local v1       #ar:Landroid/os/AsyncResult;
    iget-object v7, v1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v7, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$MsgParam;

    iget-object v7, v7, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$MsgParam;->obj:Ljava/lang/Object;

    check-cast v7, Lcom/android/internal/telephony/AnrRecord;

    move-object v0, v7

    check-cast v0, Lcom/android/internal/telephony/AnrRecord;

    .line 500
    .local v0, anr:Lcom/android/internal/telephony/AnrRecord;
    iget-object v7, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v7, :cond_9

    .line 501
    iget-object v7, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v7, [B

    check-cast v7, [B

    invoke-virtual {v0, v7}, Lcom/android/internal/telephony/AnrRecord;->appendExtRecord([B)V

    .line 504
    :cond_9
    iget-object v7, v1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v7, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$MsgParam;

    check-cast v7, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$MsgParam;

    invoke-virtual {v7}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$MsgParam;->notifyPending()V

    goto/16 :goto_0

    .line 507
    .end local v0           #anr:Lcom/android/internal/telephony/AnrRecord;
    .end local v1           #ar:Landroid/os/AsyncResult;
    :sswitch_8
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 508
    .restart local v1       #ar:Landroid/os/AsyncResult;
    iget-object v7, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v7, :cond_a

    .line 509
    iget-object v7, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v7, Ljava/util/ArrayList;

    iput-object v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEfFileRecord:Ljava/util/ArrayList;

    .line 512
    :cond_a
    iget-object v7, v1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v7, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$MsgParam;

    check-cast v7, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$MsgParam;

    invoke-virtual {v7}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$MsgParam;->notifyPending()V

    goto/16 :goto_0

    .line 515
    .end local v1           #ar:Landroid/os/AsyncResult;
    :sswitch_9
    const-string v7, "Get ef file size done"

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 516
    const/4 v4, 0x3

    .line 517
    .local v4, maxRecordSize:I
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 518
    .restart local v1       #ar:Landroid/os/AsyncResult;
    iget-object v7, v1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v7, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$MsgParam;

    iget-object v7, v7, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$MsgParam;->obj:Ljava/lang/Object;

    check-cast v7, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;

    move-object v2, v7

    check-cast v2, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;

    .line 519
    .local v2, efFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;
    iget-object v7, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v7, [I

    move-object v6, v7

    check-cast v6, [I

    .line 521
    .local v6, recordSize:[I
    iget-object v7, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v7, :cond_b

    array-length v7, v6

    const/4 v9, 0x3

    if-ne v7, v9, :cond_b

    if-eqz v2, :cond_b

    .line 522
    aget v7, v6, v10

    aget v9, v6, v8

    invoke-virtual {v2, v7, v9}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;->updateRecSizeInfo(II)V

    .line 523
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "efRecordNumbers = "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget v9, v6, v10

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "efRecordSize = "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget v8, v6, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 528
    :goto_1
    iget-object v7, v1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v7, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$MsgParam;

    check-cast v7, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$MsgParam;

    invoke-virtual {v7}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$MsgParam;->notifyPending()V

    goto/16 :goto_0

    .line 525
    :cond_b
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mTotalPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    goto :goto_1

    .line 531
    .end local v1           #ar:Landroid/os/AsyncResult;
    .end local v2           #efFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;
    .end local v4           #maxRecordSize:I
    .end local v6           #recordSize:[I
    :sswitch_a
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 532
    .restart local v1       #ar:Landroid/os/AsyncResult;
    iget-object v7, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v7, :cond_c

    .line 533
    const-string v7, "UsimPhonebookManager: FAILED to update record"

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 536
    :cond_c
    iget-object v7, v1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v7, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$MsgParam;

    check-cast v7, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$MsgParam;

    invoke-virtual {v7}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$MsgParam;->notifyPending()V

    goto/16 :goto_0

    .line 539
    .end local v1           #ar:Landroid/os/AsyncResult;
    :sswitch_b
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 540
    .restart local v1       #ar:Landroid/os/AsyncResult;
    iget-object v7, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v7, :cond_d

    .line 541
    const-string v7, "GSM"

    const-string v8, "UsimPhonebookManager: FAILED to update adn record"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    :cond_d
    iget-object v7, v1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v7, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$MsgParam;

    check-cast v7, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$MsgParam;

    invoke-virtual {v7}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$MsgParam;->notifyPending()V

    goto/16 :goto_0

    .line 547
    .end local v1           #ar:Landroid/os/AsyncResult;
    :sswitch_c
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 548
    .restart local v1       #ar:Landroid/os/AsyncResult;
    iget-object v7, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v7, :cond_e

    .line 549
    const-string v7, "GSM"

    const-string v8, "UsimPhonebookManager: FAILED to update anr record"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    :cond_e
    iget-object v7, v1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v7, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$MsgParam;

    check-cast v7, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$MsgParam;

    invoke-virtual {v7}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$MsgParam;->notifyPending()V

    goto/16 :goto_0

    .line 555
    .end local v1           #ar:Landroid/os/AsyncResult;
    :sswitch_d
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 556
    .restart local v1       #ar:Landroid/os/AsyncResult;
    iget-object v7, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v7, :cond_f

    .line 557
    const-string v7, "GSM"

    const-string v8, "UsimPhonebookManager: FAILED to update email record"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    :cond_f
    iget-object v7, v1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v7, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$MsgParam;

    check-cast v7, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$MsgParam;

    invoke-virtual {v7}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$MsgParam;->notifyPending()V

    goto/16 :goto_0

    .line 563
    .end local v1           #ar:Landroid/os/AsyncResult;
    :sswitch_e
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 564
    .restart local v1       #ar:Landroid/os/AsyncResult;
    iget-object v7, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v7, :cond_10

    .line 565
    const-string v7, "GSM"

    const-string v8, "UsimPhonebookManager: FAILED to update iap record"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    :cond_10
    iget-object v7, v1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v7, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$MsgParam;

    check-cast v7, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$MsgParam;

    invoke-virtual {v7}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$MsgParam;->notifyPending()V

    goto/16 :goto_0

    .line 424
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0x2 -> :sswitch_3
        0x3 -> :sswitch_4
        0x4 -> :sswitch_5
        0x5 -> :sswitch_6
        0x6 -> :sswitch_7
        0x7 -> :sswitch_a
        0x8 -> :sswitch_8
        0x64 -> :sswitch_b
        0x65 -> :sswitch_c
        0x66 -> :sswitch_d
        0x67 -> :sswitch_e
        0x68 -> :sswitch_9
        0x69 -> :sswitch_1
        0x6a -> :sswitch_0
    .end sparse-switch
.end method

.method public invalidateCache()V
    .locals 1

    .prologue
    .line 285
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mRefreshCache:Z

    .line 286
    return-void
.end method

.method public loadEfFilesFromUsim()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/AdnRecord;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 199
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 200
    :try_start_0
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mTotalPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mTotalPhoneBookRecords:Ljava/util/ArrayList;

    monitor-exit v4

    .line 238
    :goto_0
    return-object v3

    .line 201
    :cond_0
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIsPbrPresent:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_1

    monitor-exit v4

    goto :goto_0

    .line 237
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 203
    :cond_1
    :try_start_1
    iget-boolean v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mCheckPhoneBookPathDone:Z

    if-nez v5, :cond_2

    .line 204
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->checkPhoneBookPath()V

    .line 209
    :cond_2
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    if-nez v5, :cond_3

    .line 210
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readPbrFileAndWait()V

    .line 213
    :cond_3
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    if-nez v5, :cond_4

    monitor-exit v4

    goto :goto_0

    .line 215
    :cond_4
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v1

    .line 216
    .local v1, numRecs:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_5

    .line 217
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    invoke-virtual {v3, v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->getRecord(I)Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;

    move-result-object v2

    .line 219
    .local v2, pbrRecord:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readFilesForPbrRecord(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;)V

    .line 224
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    if-eqz v3, :cond_6

    .line 226
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mTotalPhoneBookRecords:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 230
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->updateEfFileInfo(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 231
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->reset()V

    .line 237
    .end local v2           #pbrRecord:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;
    :cond_5
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 238
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mTotalPhoneBookRecords:Ljava/util/ArrayList;

    goto :goto_0

    .line 216
    .restart local v2       #pbrRecord:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method processType1EmailFile(Ljava/util/ArrayList;)V
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<[B>;)V"
        }
    .end annotation

    .prologue
    .line 355
    .local p1, emailFileRecord:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[B>;"
    if-nez p1, :cond_1

    .line 362
    :cond_0
    return-void

    .line 357
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 359
    .local v6, numAdnRecs:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v6, :cond_0

    .line 360
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    const/16 v5, 0xa8

    move-object v0, p0

    move-object v1, p1

    move v4, v2

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->addEmailToAdnRecord(Ljava/util/ArrayList;ILjava/util/ArrayList;II)V

    .line 359
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public reset()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 128
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mTotalPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 129
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    .line 130
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileRecords:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileRecords:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 133
    :cond_0
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileRecord:Ljava/util/ArrayList;

    .line 134
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    .line 135
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIsPbrPresent:Ljava/lang/Boolean;

    .line 136
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mCheckPhoneBookPathDone:Z

    .line 137
    return-void
.end method

.method public setRecordAt(ILcom/android/internal/telephony/AdnRecord;)V
    .locals 1
    .parameter "i"
    .parameter "adn"

    .prologue
    .line 1134
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mTotalPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1135
    return-void
.end method

.method public writeUsimRecordByIndex(ILcom/android/internal/telephony/AdnRecord;)I
    .locals 4
    .parameter "recordIndex"
    .parameter "newAdn"

    .prologue
    .line 1561
    if-nez p1, :cond_0

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->addUsimRecord(Lcom/android/internal/telephony/AdnRecord;)I

    move-result p1

    .line 1572
    .end local p1
    :goto_0
    return p1

    .line 1563
    .restart local p1
    :cond_0
    if-lez p1, :cond_1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mTotalPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gt p1, v2, :cond_1

    .line 1564
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mTotalPhoneBookRecords:Ljava/util/ArrayList;

    add-int/lit8 v3, p1, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/AdnRecord;

    .line 1565
    .local v0, oldAdn:Lcom/android/internal/telephony/AdnRecord;
    invoke-virtual {v0}, Lcom/android/internal/telephony/AdnRecord;->getEfId()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getPbrRecordOfEfId(I)Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;

    move-result-object v1

    .line 1568
    .local v1, pbrRecord:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;
    invoke-direct {p0, v1, v0, p2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->writeUsimRecord(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;Lcom/android/internal/telephony/AdnRecord;Lcom/android/internal/telephony/AdnRecord;)V

    goto :goto_0

    .line 1572
    .end local v0           #oldAdn:Lcom/android/internal/telephony/AdnRecord;
    .end local v1           #pbrRecord:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;
    :cond_1
    const/4 p1, 0x0

    goto :goto_0
.end method

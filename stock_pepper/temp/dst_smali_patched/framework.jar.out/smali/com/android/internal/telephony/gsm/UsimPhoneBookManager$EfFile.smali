.class Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;
.super Ljava/lang/Object;
.source "UsimPhoneBookManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EfFile"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile$RecordStateInfo;
    }
.end annotation


# instance fields
.field private mEfId:I

.field private mEfType:I

.field private mFileType:I

.field private mNumberOfRecords:I

.field private mRecordSize:I

.field private mRecordStateInfo:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile$RecordStateInfo;


# direct methods
.method public constructor <init>(III)V
    .locals 1
    .parameter "fileType"
    .parameter "efType"
    .parameter "efId"

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;->mNumberOfRecords:I

    iput v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;->mRecordSize:I

    iput p1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;->mFileType:I

    iput p2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;->mEfType:I

    iput p3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;->mEfId:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;->mRecordStateInfo:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile$RecordStateInfo;

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;->initEfRecordState()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;)I
    .locals 1
    .parameter "x0"

    .prologue
    iget v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;->mEfId:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;)Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile$RecordStateInfo;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;->mRecordStateInfo:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile$RecordStateInfo;

    return-object v0
.end method

.method public static getRawEmptyRecord(II)[B
    .locals 3
    .parameter "recordLength"
    .parameter "efType"

    .prologue
    const/4 v2, 0x0

    new-array v0, p0, [B

    .local v0, emptyRecord:[B
    const/4 v1, -0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    const/16 v1, 0xc2

    if-ne p1, v1, :cond_0

    aput-byte v2, v0, v2

    :cond_0
    return-object v0
.end method

.method private initEfRecordState()V
    .locals 2

    .prologue
    iget v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;->mNumberOfRecords:I

    if-lez v0, :cond_0

    new-instance v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile$RecordStateInfo;

    iget v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;->mNumberOfRecords:I

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile$RecordStateInfo;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;->mRecordStateInfo:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile$RecordStateInfo;

    :goto_0
    return-void

    :cond_0
    const-string v0, "GSM"

    const-string v1, "the mNumberOfRecords is 0"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public getEfId()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;->mEfId:I

    return v0
.end method

.method public getEfType()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;->mEfType:I

    return v0
.end method

.method public getFileType()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;->mFileType:I

    return v0
.end method

.method public getNumberOfRecords()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;->mNumberOfRecords:I

    return v0
.end method

.method public getRecordSize()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;->mRecordSize:I

    return v0
.end method

.method public isRecordEmpty([B)Z
    .locals 7
    .parameter "record"

    .prologue
    const/4 v6, -0x1

    const/4 v3, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    array-length v4, p1

    if-gtz v4, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    iget v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;->mEfType:I

    const/16 v5, 0xc1

    if-ne v4, v5, :cond_3

    array-length v1, p1

    .local v1, recordLength:I
    const/4 v0, 0x0

    .local v0, index:I
    :goto_1
    if-ge v0, v1, :cond_0

    aget-byte v4, p1, v0

    if-eq v4, v6, :cond_2

    move v3, v2

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v0           #index:I
    .end local v1           #recordLength:I
    :cond_3
    iget v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;->mEfType:I

    const/16 v5, 0xc2

    if-ne v4, v5, :cond_6

    aget-byte v4, p1, v2

    if-eq v4, v6, :cond_4

    aget-byte v4, p1, v2

    if-nez v4, :cond_5

    :cond_4
    move v2, v3

    :cond_5
    move v3, v2

    goto :goto_0

    :cond_6
    aget-byte v4, p1, v2

    if-eq v4, v6, :cond_0

    move v3, v2

    goto :goto_0
.end method

.method public setRecordState(IZ)V
    .locals 1
    .parameter "recordIndex"
    .parameter "state"

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;->mRecordStateInfo:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile$RecordStateInfo;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile$RecordStateInfo;->setRecordState(IZ)V

    return-void
.end method

.method public updateRecSizeInfo(II)V
    .locals 0
    .parameter "numberOfRecords"
    .parameter "recordSize"

    .prologue
    iput p1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;->mNumberOfRecords:I

    iput p2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;->mRecordSize:I

    return-void
.end method

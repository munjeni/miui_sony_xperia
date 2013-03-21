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

    .line 973
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 966
    iput v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;->mNumberOfRecords:I

    .line 969
    iput v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;->mRecordSize:I

    .line 974
    iput p1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;->mFileType:I

    .line 975
    iput p2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;->mEfType:I

    .line 976
    iput p3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;->mEfId:I

    .line 977
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;->mRecordStateInfo:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile$RecordStateInfo;

    .line 978
    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 958
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;->initEfRecordState()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 958
    iget v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;->mEfId:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;)Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile$RecordStateInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 958
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;->mRecordStateInfo:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile$RecordStateInfo;

    return-object v0
.end method

.method public static getRawEmptyRecord(II)[B
    .locals 3
    .parameter "recordLength"
    .parameter "efType"

    .prologue
    const/4 v2, 0x0

    .line 1022
    new-array v0, p0, [B

    .line 1024
    .local v0, emptyRecord:[B
    const/4 v1, -0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    .line 1026
    const/16 v1, 0xc2

    if-ne p1, v1, :cond_0

    .line 1029
    aput-byte v2, v0, v2

    .line 1031
    :cond_0
    return-object v0
.end method

.method private initEfRecordState()V
    .locals 2

    .prologue
    .line 1062
    iget v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;->mNumberOfRecords:I

    if-lez v0, :cond_0

    .line 1063
    new-instance v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile$RecordStateInfo;

    iget v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;->mNumberOfRecords:I

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile$RecordStateInfo;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;->mRecordStateInfo:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile$RecordStateInfo;

    .line 1067
    :goto_0
    return-void

    .line 1065
    :cond_0
    const-string v0, "GSM"

    const-string/jumbo v1, "the mNumberOfRecords is 0"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public getEfId()I
    .locals 1

    .prologue
    .line 985
    iget v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;->mEfId:I

    return v0
.end method

.method public getEfType()I
    .locals 1

    .prologue
    .line 989
    iget v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;->mEfType:I

    return v0
.end method

.method public getFileType()I
    .locals 1

    .prologue
    .line 981
    iget v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;->mFileType:I

    return v0
.end method

.method public getNumberOfRecords()I
    .locals 1

    .prologue
    .line 1004
    iget v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;->mNumberOfRecords:I

    return v0
.end method

.method public getRecordSize()I
    .locals 1

    .prologue
    .line 1011
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

    .line 1041
    if-eqz p1, :cond_0

    array-length v4, p1

    if-gtz v4, :cond_1

    .line 1058
    :cond_0
    :goto_0
    return v3

    .line 1043
    :cond_1
    iget v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;->mEfType:I

    const/16 v5, 0xc1

    if-ne v4, v5, :cond_3

    .line 1045
    array-length v1, p1

    .line 1046
    .local v1, recordLength:I
    const/4 v0, 0x0

    .local v0, index:I
    :goto_1
    if-ge v0, v1, :cond_0

    .line 1047
    aget-byte v4, p1, v0

    if-eq v4, v6, :cond_2

    move v3, v2

    .line 1048
    goto :goto_0

    .line 1046
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1051
    .end local v0           #index:I
    .end local v1           #recordLength:I
    :cond_3
    iget v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;->mEfType:I

    const/16 v5, 0xc2

    if-ne v4, v5, :cond_6

    .line 1053
    aget-byte v4, p1, v2

    if-eq v4, v6, :cond_4

    aget-byte v4, p1, v2

    if-nez v4, :cond_5

    :cond_4
    move v2, v3

    :cond_5
    move v3, v2

    goto :goto_0

    .line 1056
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
    .line 1078
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;->mRecordStateInfo:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile$RecordStateInfo;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile$RecordStateInfo;->setRecordState(IZ)V

    .line 1079
    return-void
.end method

.method public updateRecSizeInfo(II)V
    .locals 0
    .parameter "numberOfRecords"
    .parameter "recordSize"

    .prologue
    .line 996
    iput p1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;->mNumberOfRecords:I

    .line 997
    iput p2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;->mRecordSize:I

    .line 998
    return-void
.end method

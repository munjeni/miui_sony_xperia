.class public Lcom/android/internal/telephony/gsm/OplRecords$OplRecord;
.super Ljava/lang/Object;
.source "OplRecords.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/OplRecords;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OplRecord"
.end annotation


# instance fields
.field private mLac1:I

.field private mLac2:I

.field private mPlmn:[I

.field private mPnnRecordNumber:I


# direct methods
.method constructor <init>([B)V
    .locals 1
    .parameter "record"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/OplRecords$OplRecord;->mPlmn:[I

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/OplRecords$OplRecord;->getPlmn([B)V

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/OplRecords$OplRecord;->getLac([B)V

    const/4 v0, 0x7

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Lcom/android/internal/telephony/gsm/OplRecords$OplRecord;->mPnnRecordNumber:I

    return-void

    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/gsm/OplRecords$OplRecord;)[I
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/OplRecords$OplRecord;->mPlmn:[I

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/gsm/OplRecords$OplRecord;)I
    .locals 1
    .parameter "x0"

    .prologue
    iget v0, p0, Lcom/android/internal/telephony/gsm/OplRecords$OplRecord;->mLac1:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/gsm/OplRecords$OplRecord;)I
    .locals 1
    .parameter "x0"

    .prologue
    iget v0, p0, Lcom/android/internal/telephony/gsm/OplRecords$OplRecord;->mLac2:I

    return v0
.end method

.method private getLac([B)V
    .locals 2
    .parameter "record"

    .prologue
    const/4 v0, 0x3

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    const/4 v1, 0x4

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/telephony/gsm/OplRecords$OplRecord;->mLac1:I

    const/4 v0, 0x5

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    const/4 v1, 0x6

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/telephony/gsm/OplRecords$OplRecord;->mLac2:I

    return-void
.end method

.method private getPlmn([B)V
    .locals 7
    .parameter "record"

    .prologue
    const/4 v6, 0x5

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/OplRecords$OplRecord;->mPlmn:[I

    aget-byte v1, p1, v3

    and-int/lit8 v1, v1, 0xf

    aput v1, v0, v3

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/OplRecords$OplRecord;->mPlmn:[I

    aget-byte v1, p1, v3

    shr-int/lit8 v1, v1, 0x4

    and-int/lit8 v1, v1, 0xf

    aput v1, v0, v4

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/OplRecords$OplRecord;->mPlmn:[I

    aget-byte v1, p1, v4

    and-int/lit8 v1, v1, 0xf

    aput v1, v0, v5

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/OplRecords$OplRecord;->mPlmn:[I

    const/4 v1, 0x3

    aget-byte v2, p1, v5

    and-int/lit8 v2, v2, 0xf

    aput v2, v0, v1

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/OplRecords$OplRecord;->mPlmn:[I

    const/4 v1, 0x4

    aget-byte v2, p1, v5

    shr-int/lit8 v2, v2, 0x4

    and-int/lit8 v2, v2, 0xf

    aput v2, v0, v1

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/OplRecords$OplRecord;->mPlmn:[I

    aget-byte v1, p1, v4

    shr-int/lit8 v1, v1, 0x4

    and-int/lit8 v1, v1, 0xf

    aput v1, v0, v6

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/OplRecords$OplRecord;->mPlmn:[I

    aget v0, v0, v6

    const/16 v1, 0xf

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/OplRecords$OplRecord;->mPlmn:[I

    aput v3, v0, v6

    :cond_0
    return-void
.end method


# virtual methods
.method public getPnnRecordNumber()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/internal/telephony/gsm/OplRecords$OplRecord;->mPnnRecordNumber:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PLMN="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/OplRecords$OplRecord;->mPlmn:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/OplRecords$OplRecord;->mPlmn:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/OplRecords$OplRecord;->mPlmn:[I

    const/4 v2, 0x2

    aget v1, v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/OplRecords$OplRecord;->mPlmn:[I

    const/4 v2, 0x3

    aget v1, v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/OplRecords$OplRecord;->mPlmn:[I

    const/4 v2, 0x4

    aget v1, v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/OplRecords$OplRecord;->mPlmn:[I

    const/4 v2, 0x5

    aget v1, v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", LAC1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gsm/OplRecords$OplRecord;->mLac1:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", LAC2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gsm/OplRecords$OplRecord;->mLac2:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", PNN Record="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gsm/OplRecords$OplRecord;->mPnnRecordNumber:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

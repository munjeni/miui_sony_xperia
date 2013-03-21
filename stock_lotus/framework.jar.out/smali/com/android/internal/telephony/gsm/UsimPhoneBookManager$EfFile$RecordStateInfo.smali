.class final Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile$RecordStateInfo;
.super Ljava/lang/Object;
.source "UsimPhoneBookManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RecordStateInfo"
.end annotation


# static fields
.field private static final USIM_RECORD_EMPTY_STATE:Z = true


# instance fields
.field private final mRecordState:[Z


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .parameter "numberOfRecords"

    .prologue
    .line 1089
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1090
    new-array v0, p1, [Z

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile$RecordStateInfo;->mRecordState:[Z

    .line 1091
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile$RecordStateInfo;->mRecordState:[Z

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([ZZ)V

    .line 1092
    return-void
.end method


# virtual methods
.method public getEmptyRecordIndex()I
    .locals 3

    .prologue
    .line 1114
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile$RecordStateInfo;->mRecordState:[Z

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 1115
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile$RecordStateInfo;->mRecordState:[Z

    aget-boolean v1, v1, v0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 1116
    add-int/lit8 v1, v0, 0x1

    .line 1119
    :goto_1
    return v1

    .line 1114
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1119
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method public setRecordState(IZ)V
    .locals 1
    .parameter "recordIndex"
    .parameter "state"

    .prologue
    .line 1103
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile$RecordStateInfo;->mRecordState:[Z

    aput-boolean p2, v0, p1

    .line 1104
    return-void
.end method

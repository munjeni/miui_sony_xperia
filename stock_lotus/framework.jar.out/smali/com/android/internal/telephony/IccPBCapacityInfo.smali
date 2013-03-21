.class public Lcom/android/internal/telephony/IccPBCapacityInfo;
.super Ljava/lang/Object;
.source "IccPBCapacityInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/IccPBCapacityInfo$EfCapacity;
    }
.end annotation


# static fields
.field public static final CAPACITY_COUNT:I = 0x4

.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/internal/telephony/IccPBCapacityInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final ICC_PB_FIELD_ANR_TAG:I = 0x4

.field public static final ICC_PB_FIELD_EMAIL_TAG:I = 0x3

.field public static final ICC_PB_FIELD_NAME_TAG:I = 0x1

.field public static final ICC_PB_FIELD_NUMBER_TAG:I = 0x2


# instance fields
.field private final mCapacityList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/IccPBCapacityInfo$EfCapacity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    new-instance v0, Lcom/android/internal/telephony/IccPBCapacityInfo$1;

    invoke-direct {v0}, Lcom/android/internal/telephony/IccPBCapacityInfo$1;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/IccPBCapacityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/IccPBCapacityInfo;->mCapacityList:Ljava/util/ArrayList;

    .line 76
    iget-object v0, p0, Lcom/android/internal/telephony/IccPBCapacityInfo;->mCapacityList:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/IccPBCapacityInfo$EfCapacity;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/IccPBCapacityInfo$EfCapacity;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    iget-object v0, p0, Lcom/android/internal/telephony/IccPBCapacityInfo;->mCapacityList:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/IccPBCapacityInfo$EfCapacity;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/IccPBCapacityInfo$EfCapacity;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    iget-object v0, p0, Lcom/android/internal/telephony/IccPBCapacityInfo;->mCapacityList:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/IccPBCapacityInfo$EfCapacity;

    invoke-direct {v1, v3}, Lcom/android/internal/telephony/IccPBCapacityInfo$EfCapacity;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    iget-object v0, p0, Lcom/android/internal/telephony/IccPBCapacityInfo;->mCapacityList:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/IccPBCapacityInfo$EfCapacity;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/IccPBCapacityInfo$EfCapacity;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x0

    return v0
.end method

.method public getIccPBCapacity(I)Lcom/android/internal/telephony/IccPBCapacityInfo$EfCapacity;
    .locals 3
    .parameter "tag"

    .prologue
    .line 83
    iget-object v2, p0, Lcom/android/internal/telephony/IccPBCapacityInfo;->mCapacityList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/IccPBCapacityInfo$EfCapacity;

    .line 84
    .local v0, efCapacity:Lcom/android/internal/telephony/IccPBCapacityInfo$EfCapacity;
    iget v2, v0, Lcom/android/internal/telephony/IccPBCapacityInfo$EfCapacity;->tag:I

    if-ne v2, p1, :cond_0

    .line 88
    .end local v0           #efCapacity:Lcom/android/internal/telephony/IccPBCapacityInfo$EfCapacity;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getIccPBCapacityInfo(I)Ljava/lang/String;
    .locals 2
    .parameter "tag"

    .prologue
    .line 92
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/IccPBCapacityInfo;->getIccPBCapacity(I)Lcom/android/internal/telephony/IccPBCapacityInfo$EfCapacity;

    move-result-object v0

    .line 93
    .local v0, efCapacity:Lcom/android/internal/telephony/IccPBCapacityInfo$EfCapacity;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/IccPBCapacityInfo$EfCapacity;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public hasEmptyRecord(ZZ)Z
    .locals 6
    .parameter "isEmptyAnrs"
    .parameter "isEmptyEmails"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 97
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/IccPBCapacityInfo;->getIccPBCapacity(I)Lcom/android/internal/telephony/IccPBCapacityInfo$EfCapacity;

    move-result-object v2

    .line 98
    .local v2, nameCapacity:Lcom/android/internal/telephony/IccPBCapacityInfo$EfCapacity;
    if-eqz v2, :cond_0

    iget v5, v2, Lcom/android/internal/telephony/IccPBCapacityInfo$EfCapacity;->emptyNumber:I

    if-gtz v5, :cond_1

    .line 110
    :cond_0
    :goto_0
    return v3

    .line 100
    :cond_1
    if-nez p1, :cond_2

    .line 101
    const/4 v5, 0x4

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/IccPBCapacityInfo;->getIccPBCapacity(I)Lcom/android/internal/telephony/IccPBCapacityInfo$EfCapacity;

    move-result-object v0

    .line 102
    .local v0, anrCapacity:Lcom/android/internal/telephony/IccPBCapacityInfo$EfCapacity;
    if-eqz v0, :cond_0

    iget v5, v0, Lcom/android/internal/telephony/IccPBCapacityInfo$EfCapacity;->emptyNumber:I

    if-lez v5, :cond_0

    .line 105
    .end local v0           #anrCapacity:Lcom/android/internal/telephony/IccPBCapacityInfo$EfCapacity;
    :cond_2
    if-nez p2, :cond_3

    .line 106
    const/4 v5, 0x3

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/IccPBCapacityInfo;->getIccPBCapacity(I)Lcom/android/internal/telephony/IccPBCapacityInfo$EfCapacity;

    move-result-object v1

    .line 107
    .local v1, emailCapacity:Lcom/android/internal/telephony/IccPBCapacityInfo$EfCapacity;
    if-eqz v1, :cond_0

    iget v5, v1, Lcom/android/internal/telephony/IccPBCapacityInfo$EfCapacity;->emptyNumber:I

    if-lez v5, :cond_0

    .end local v1           #emailCapacity:Lcom/android/internal/telephony/IccPBCapacityInfo$EfCapacity;
    :cond_3
    move v3, v4

    .line 110
    goto :goto_0
.end method

.method public setAdnLikeCapacities(III)V
    .locals 3
    .parameter "emptyAdnCount"
    .parameter "recordSize"
    .parameter "recordTotal"

    .prologue
    .line 123
    const/4 v1, 0x1

    add-int/lit8 v2, p2, -0xe

    invoke-virtual {p0, v1, v2, p1, p3}, Lcom/android/internal/telephony/IccPBCapacityInfo;->setIccPBCapacity(IIII)V

    .line 127
    const/16 v0, 0x14

    .line 128
    .local v0, numberMaxLength:I
    const/4 v1, 0x2

    invoke-virtual {p0, v1, v0, p1, p3}, Lcom/android/internal/telephony/IccPBCapacityInfo;->setIccPBCapacity(IIII)V

    .line 129
    return-void
.end method

.method public setAnrCapacity(II)V
    .locals 2
    .parameter "emptyAnrCount"
    .parameter "recordTotal"

    .prologue
    .line 133
    const/16 v0, 0x14

    .line 134
    .local v0, numberMaxLength:I
    const/4 v1, 0x4

    invoke-virtual {p0, v1, v0, p1, p2}, Lcom/android/internal/telephony/IccPBCapacityInfo;->setIccPBCapacity(IIII)V

    .line 135
    return-void
.end method

.method public setEmailCapacity(III)V
    .locals 1
    .parameter "emptyEmailCount"
    .parameter "recordSize"
    .parameter "recordTotal"

    .prologue
    .line 138
    const/4 v0, 0x3

    invoke-virtual {p0, v0, p2, p1, p3}, Lcom/android/internal/telephony/IccPBCapacityInfo;->setIccPBCapacity(IIII)V

    .line 139
    return-void
.end method

.method public setIccPBCapacity(IIII)V
    .locals 1
    .parameter "tag"
    .parameter "length"
    .parameter "emptyNumber"
    .parameter "totalNumber"

    .prologue
    .line 114
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/IccPBCapacityInfo;->getIccPBCapacity(I)Lcom/android/internal/telephony/IccPBCapacityInfo$EfCapacity;

    move-result-object v0

    .line 115
    .local v0, efCapacity:Lcom/android/internal/telephony/IccPBCapacityInfo$EfCapacity;
    iput p4, v0, Lcom/android/internal/telephony/IccPBCapacityInfo$EfCapacity;->totalNumber:I

    .line 116
    iput p2, v0, Lcom/android/internal/telephony/IccPBCapacityInfo$EfCapacity;->length:I

    .line 117
    iput p3, v0, Lcom/android/internal/telephony/IccPBCapacityInfo$EfCapacity;->emptyNumber:I

    .line 118
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 65
    iget-object v2, p0, Lcom/android/internal/telephony/IccPBCapacityInfo;->mCapacityList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/IccPBCapacityInfo$EfCapacity;

    .line 66
    .local v0, efCapacity:Lcom/android/internal/telephony/IccPBCapacityInfo$EfCapacity;
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/IccPBCapacityInfo$EfCapacity;->writeToParcel(Landroid/os/Parcel;)V

    goto :goto_0

    .line 68
    .end local v0           #efCapacity:Lcom/android/internal/telephony/IccPBCapacityInfo$EfCapacity;
    :cond_0
    return-void
.end method

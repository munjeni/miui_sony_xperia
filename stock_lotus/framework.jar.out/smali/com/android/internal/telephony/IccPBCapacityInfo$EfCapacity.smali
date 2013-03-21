.class public final Lcom/android/internal/telephony/IccPBCapacityInfo$EfCapacity;
.super Ljava/lang/Object;
.source "IccPBCapacityInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/IccPBCapacityInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EfCapacity"
.end annotation


# instance fields
.field emptyNumber:I

.field length:I

.field final tag:I

.field totalNumber:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .parameter "tag"

    .prologue
    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 148
    iput p1, p0, Lcom/android/internal/telephony/IccPBCapacityInfo$EfCapacity;->tag:I

    .line 149
    return-void
.end method


# virtual methods
.method public readParcel(Landroid/os/Parcel;)V
    .locals 1
    .parameter "source"

    .prologue
    .line 169
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/IccPBCapacityInfo$EfCapacity;->length:I

    .line 170
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/IccPBCapacityInfo$EfCapacity;->emptyNumber:I

    .line 171
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/IccPBCapacityInfo$EfCapacity;->totalNumber:I

    .line 172
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x3a

    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 157
    .local v0, strBuilder:Ljava/lang/StringBuilder;
    iget v1, p0, Lcom/android/internal/telephony/IccPBCapacityInfo$EfCapacity;->tag:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 158
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 159
    iget v1, p0, Lcom/android/internal/telephony/IccPBCapacityInfo$EfCapacity;->length:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 160
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 161
    iget v1, p0, Lcom/android/internal/telephony/IccPBCapacityInfo$EfCapacity;->emptyNumber:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 162
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 163
    iget v1, p0, Lcom/android/internal/telephony/IccPBCapacityInfo$EfCapacity;->totalNumber:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 165
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;)V
    .locals 1
    .parameter "dest"

    .prologue
    .line 175
    iget v0, p0, Lcom/android/internal/telephony/IccPBCapacityInfo$EfCapacity;->tag:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 176
    iget v0, p0, Lcom/android/internal/telephony/IccPBCapacityInfo$EfCapacity;->length:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 177
    iget v0, p0, Lcom/android/internal/telephony/IccPBCapacityInfo$EfCapacity;->emptyNumber:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 178
    iget v0, p0, Lcom/android/internal/telephony/IccPBCapacityInfo$EfCapacity;->totalNumber:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 179
    return-void
.end method

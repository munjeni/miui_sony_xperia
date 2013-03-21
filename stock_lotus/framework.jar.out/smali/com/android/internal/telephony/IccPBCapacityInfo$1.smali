.class final Lcom/android/internal/telephony/IccPBCapacityInfo$1;
.super Ljava/lang/Object;
.source "IccPBCapacityInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/IccPBCapacityInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/android/internal/telephony/IccPBCapacityInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/internal/telephony/IccPBCapacityInfo;
    .locals 3
    .parameter "source"

    .prologue
    .line 52
    new-instance v1, Lcom/android/internal/telephony/IccPBCapacityInfo;

    invoke-direct {v1}, Lcom/android/internal/telephony/IccPBCapacityInfo;-><init>()V

    .line 53
    .local v1, iccPBCapacityInfo:Lcom/android/internal/telephony/IccPBCapacityInfo;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v2, 0x4

    if-ge v0, v2, :cond_0

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/IccPBCapacityInfo;->getIccPBCapacity(I)Lcom/android/internal/telephony/IccPBCapacityInfo$EfCapacity;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/internal/telephony/IccPBCapacityInfo$EfCapacity;->readParcel(Landroid/os/Parcel;)V

    .line 53
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 56
    :cond_0
    return-object v1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/IccPBCapacityInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/internal/telephony/IccPBCapacityInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/android/internal/telephony/IccPBCapacityInfo;
    .locals 1
    .parameter "size"

    .prologue
    .line 60
    new-array v0, p1, [Lcom/android/internal/telephony/IccPBCapacityInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/IccPBCapacityInfo$1;->newArray(I)[Lcom/android/internal/telephony/IccPBCapacityInfo;

    move-result-object v0

    return-object v0
.end method

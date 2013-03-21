.class public final Lcom/android/internal/telephony/cat/BearerDescription;
.super Ljava/lang/Object;
.source "BearerDescription.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/cat/BearerDescription$BearerType;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/internal/telephony/cat/BearerDescription;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final parameters:[B

.field public final type:Lcom/android/internal/telephony/cat/BearerDescription$BearerType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 96
    new-instance v0, Lcom/android/internal/telephony/cat/BearerDescription$1;

    invoke-direct {v0}, Lcom/android/internal/telephony/cat/BearerDescription$1;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/cat/BearerDescription;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .parameter "in"

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    invoke-static {}, Lcom/android/internal/telephony/cat/BearerDescription$BearerType;->values()[Lcom/android/internal/telephony/cat/BearerDescription$BearerType;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/android/internal/telephony/cat/BearerDescription;->type:Lcom/android/internal/telephony/cat/BearerDescription$BearerType;

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 72
    .local v0, len:I
    if-lez v0, :cond_0

    .line 73
    new-array v1, v0, [B

    iput-object v1, p0, Lcom/android/internal/telephony/cat/BearerDescription;->parameters:[B

    .line 74
    iget-object v1, p0, Lcom/android/internal/telephony/cat/BearerDescription;->parameters:[B

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readByteArray([B)V

    .line 78
    :goto_0
    return-void

    .line 76
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/telephony/cat/BearerDescription;->parameters:[B

    goto :goto_0
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/android/internal/telephony/cat/BearerDescription$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/BearerDescription;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/cat/BearerDescription$BearerType;[B)V
    .locals 1
    .parameter "type"
    .parameter "parameters"

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/android/internal/telephony/cat/BearerDescription;->type:Lcom/android/internal/telephony/cat/BearerDescription$BearerType;

    .line 62
    if-eqz p2, :cond_0

    array-length v0, p2

    if-lez v0, :cond_0

    .line 63
    array-length v0, p2

    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/cat/BearerDescription;->parameters:[B

    .line 67
    :goto_0
    return-void

    .line 65
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/cat/BearerDescription;->parameters:[B

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 93
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BearerDescription;->type:Lcom/android/internal/telephony/cat/BearerDescription$BearerType;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/BearerDescription$BearerType;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 82
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BearerDescription;->parameters:[B

    if-eqz v0, :cond_1

    .line 83
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BearerDescription;->parameters:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 84
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BearerDescription;->parameters:[B

    array-length v0, v0

    if-lez v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BearerDescription;->parameters:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 90
    :cond_0
    :goto_0
    return-void

    .line 88
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0
.end method

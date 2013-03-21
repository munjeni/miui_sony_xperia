.class public Lcom/stericsson/hardware/fm/FmBand;
.super Ljava/lang/Object;
.source "FmBand.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final BAND_CHINA:I = 0x3

.field public static final BAND_EU:I = 0x1

.field public static final BAND_EU_50K_OFFSET:I = 0x4

.field public static final BAND_JAPAN:I = 0x2

.field public static final BAND_US:I = 0x0

.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/stericsson/hardware/fm/FmBand;",
            ">;"
        }
    .end annotation
.end field

.field public static final FM_FREQUENCY_UNKNOWN:I = -0x1


# instance fields
.field private mChannelOffset:I

.field private mDefaultFrequency:I

.field private mMaxFrequency:I

.field private mMinFrequency:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Lcom/stericsson/hardware/fm/FmBand$1;

    invoke-direct {v0}, Lcom/stericsson/hardware/fm/FmBand$1;-><init>()V

    sput-object v0, Lcom/stericsson/hardware/fm/FmBand;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 5
    .parameter "band"

    .prologue
    const v4, 0x11170

    const/16 v3, 0x64

    const/16 v2, 0x32

    const v1, 0x1a5e0

    const v0, 0x155cc

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    packed-switch p1, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Wrong band identifier"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const v0, 0x1575c

    iput v0, p0, Lcom/stericsson/hardware/fm/FmBand;->mMinFrequency:I

    const v0, 0x1a57c

    iput v0, p0, Lcom/stericsson/hardware/fm/FmBand;->mMaxFrequency:I

    const v0, 0x1575c

    iput v0, p0, Lcom/stericsson/hardware/fm/FmBand;->mDefaultFrequency:I

    const/16 v0, 0xc8

    iput v0, p0, Lcom/stericsson/hardware/fm/FmBand;->mChannelOffset:I

    :goto_0
    return-void

    :pswitch_1
    iput v0, p0, Lcom/stericsson/hardware/fm/FmBand;->mMinFrequency:I

    iput v1, p0, Lcom/stericsson/hardware/fm/FmBand;->mMaxFrequency:I

    iput v0, p0, Lcom/stericsson/hardware/fm/FmBand;->mDefaultFrequency:I

    iput v3, p0, Lcom/stericsson/hardware/fm/FmBand;->mChannelOffset:I

    goto :goto_0

    :pswitch_2
    const v0, 0x128e0

    iput v0, p0, Lcom/stericsson/hardware/fm/FmBand;->mMinFrequency:I

    const v0, 0x15f90

    iput v0, p0, Lcom/stericsson/hardware/fm/FmBand;->mMaxFrequency:I

    const v0, 0x128e0

    iput v0, p0, Lcom/stericsson/hardware/fm/FmBand;->mDefaultFrequency:I

    iput v3, p0, Lcom/stericsson/hardware/fm/FmBand;->mChannelOffset:I

    goto :goto_0

    :pswitch_3
    iput v4, p0, Lcom/stericsson/hardware/fm/FmBand;->mMinFrequency:I

    iput v1, p0, Lcom/stericsson/hardware/fm/FmBand;->mMaxFrequency:I

    iput v4, p0, Lcom/stericsson/hardware/fm/FmBand;->mDefaultFrequency:I

    iput v2, p0, Lcom/stericsson/hardware/fm/FmBand;->mChannelOffset:I

    goto :goto_0

    :pswitch_4
    iput v0, p0, Lcom/stericsson/hardware/fm/FmBand;->mMinFrequency:I

    iput v1, p0, Lcom/stericsson/hardware/fm/FmBand;->mMaxFrequency:I

    iput v0, p0, Lcom/stericsson/hardware/fm/FmBand;->mDefaultFrequency:I

    iput v2, p0, Lcom/stericsson/hardware/fm/FmBand;->mChannelOffset:I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public constructor <init>(IIII)V
    .locals 2
    .parameter "minFrequency"
    .parameter "maxFrequency"
    .parameter "channelOffset"
    .parameter "defaultFrequency"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-lt p1, p2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Minimum frequency can not be equal or higher than maximum frequency"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-ge p4, p1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Default frequency can not be less than minFrequency"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-le p4, p2, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Default frequency can not be higher than maxFrequency"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    sub-int v0, p2, p1

    rem-int/2addr v0, p3

    if-nez v0, :cond_3

    sub-int v0, p4, p1

    rem-int/2addr v0, p3

    if-eqz v0, :cond_4

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Frequency has invalid offset"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    iput p1, p0, Lcom/stericsson/hardware/fm/FmBand;->mMinFrequency:I

    iput p2, p0, Lcom/stericsson/hardware/fm/FmBand;->mMaxFrequency:I

    iput p4, p0, Lcom/stericsson/hardware/fm/FmBand;->mDefaultFrequency:I

    iput p3, p0, Lcom/stericsson/hardware/fm/FmBand;->mChannelOffset:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public getChannelOffset()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/stericsson/hardware/fm/FmBand;->mChannelOffset:I

    return v0
.end method

.method public getDefaultFrequency()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/stericsson/hardware/fm/FmBand;->mDefaultFrequency:I

    return v0
.end method

.method public getMaxFrequency()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/stericsson/hardware/fm/FmBand;->mMaxFrequency:I

    return v0
.end method

.method public getMinFrequency()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/stericsson/hardware/fm/FmBand;->mMinFrequency:I

    return v0
.end method

.method public isFrequencyValid(I)Z
    .locals 3
    .parameter "frequency"

    .prologue
    const/4 v0, 0x0

    iget v1, p0, Lcom/stericsson/hardware/fm/FmBand;->mMinFrequency:I

    if-lt p1, v1, :cond_0

    iget v1, p0, Lcom/stericsson/hardware/fm/FmBand;->mMaxFrequency:I

    if-le p1, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lcom/stericsson/hardware/fm/FmBand;->mMinFrequency:I

    sub-int v1, p1, v1

    iget v2, p0, Lcom/stericsson/hardware/fm/FmBand;->mChannelOffset:I

    rem-int/2addr v1, v2

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    iget v0, p0, Lcom/stericsson/hardware/fm/FmBand;->mMinFrequency:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/stericsson/hardware/fm/FmBand;->mMaxFrequency:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/stericsson/hardware/fm/FmBand;->mChannelOffset:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/stericsson/hardware/fm/FmBand;->mDefaultFrequency:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method

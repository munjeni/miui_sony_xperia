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
    .line 245
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

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    packed-switch p1, :pswitch_data_0

    .line 172
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Wrong band identifier"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 142
    :pswitch_0
    const v0, 0x1575c

    iput v0, p0, Lcom/stericsson/hardware/fm/FmBand;->mMinFrequency:I

    .line 143
    const v0, 0x1a57c

    iput v0, p0, Lcom/stericsson/hardware/fm/FmBand;->mMaxFrequency:I

    .line 144
    const v0, 0x1575c

    iput v0, p0, Lcom/stericsson/hardware/fm/FmBand;->mDefaultFrequency:I

    .line 145
    const/16 v0, 0xc8

    iput v0, p0, Lcom/stericsson/hardware/fm/FmBand;->mChannelOffset:I

    .line 174
    :goto_0
    return-void

    .line 148
    :pswitch_1
    iput v0, p0, Lcom/stericsson/hardware/fm/FmBand;->mMinFrequency:I

    .line 149
    iput v1, p0, Lcom/stericsson/hardware/fm/FmBand;->mMaxFrequency:I

    .line 150
    iput v0, p0, Lcom/stericsson/hardware/fm/FmBand;->mDefaultFrequency:I

    .line 151
    iput v3, p0, Lcom/stericsson/hardware/fm/FmBand;->mChannelOffset:I

    goto :goto_0

    .line 154
    :pswitch_2
    const v0, 0x128e0

    iput v0, p0, Lcom/stericsson/hardware/fm/FmBand;->mMinFrequency:I

    .line 155
    const v0, 0x15f90

    iput v0, p0, Lcom/stericsson/hardware/fm/FmBand;->mMaxFrequency:I

    .line 156
    const v0, 0x128e0

    iput v0, p0, Lcom/stericsson/hardware/fm/FmBand;->mDefaultFrequency:I

    .line 157
    iput v3, p0, Lcom/stericsson/hardware/fm/FmBand;->mChannelOffset:I

    goto :goto_0

    .line 160
    :pswitch_3
    iput v4, p0, Lcom/stericsson/hardware/fm/FmBand;->mMinFrequency:I

    .line 161
    iput v1, p0, Lcom/stericsson/hardware/fm/FmBand;->mMaxFrequency:I

    .line 162
    iput v4, p0, Lcom/stericsson/hardware/fm/FmBand;->mDefaultFrequency:I

    .line 163
    iput v2, p0, Lcom/stericsson/hardware/fm/FmBand;->mChannelOffset:I

    goto :goto_0

    .line 166
    :pswitch_4
    iput v0, p0, Lcom/stericsson/hardware/fm/FmBand;->mMinFrequency:I

    .line 167
    iput v1, p0, Lcom/stericsson/hardware/fm/FmBand;->mMaxFrequency:I

    .line 168
    iput v0, p0, Lcom/stericsson/hardware/fm/FmBand;->mDefaultFrequency:I

    .line 169
    iput v2, p0, Lcom/stericsson/hardware/fm/FmBand;->mChannelOffset:I

    goto :goto_0

    .line 140
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
    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    if-lt p1, p2, :cond_0

    .line 106
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Minimum frequency can not be equal or higher than maximum frequency"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 109
    :cond_0
    if-ge p4, p1, :cond_1

    .line 110
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Default frequency can not be less than minFrequency"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 113
    :cond_1
    if-le p4, p2, :cond_2

    .line 114
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Default frequency can not be higher than maxFrequency"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 117
    :cond_2
    sub-int v0, p2, p1

    rem-int/2addr v0, p3

    if-nez v0, :cond_3

    sub-int v0, p4, p1

    rem-int/2addr v0, p3

    if-eqz v0, :cond_4

    .line 119
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Frequency has invalid offset"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 122
    :cond_4
    iput p1, p0, Lcom/stericsson/hardware/fm/FmBand;->mMinFrequency:I

    .line 123
    iput p2, p0, Lcom/stericsson/hardware/fm/FmBand;->mMaxFrequency:I

    .line 124
    iput p4, p0, Lcom/stericsson/hardware/fm/FmBand;->mDefaultFrequency:I

    .line 125
    iput p3, p0, Lcom/stericsson/hardware/fm/FmBand;->mChannelOffset:I

    .line 126
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 233
    const/4 v0, 0x0

    return v0
.end method

.method public getChannelOffset()I
    .locals 1

    .prologue
    .line 228
    iget v0, p0, Lcom/stericsson/hardware/fm/FmBand;->mChannelOffset:I

    return v0
.end method

.method public getDefaultFrequency()I
    .locals 1

    .prologue
    .line 219
    iget v0, p0, Lcom/stericsson/hardware/fm/FmBand;->mDefaultFrequency:I

    return v0
.end method

.method public getMaxFrequency()I
    .locals 1

    .prologue
    .line 209
    iget v0, p0, Lcom/stericsson/hardware/fm/FmBand;->mMaxFrequency:I

    return v0
.end method

.method public getMinFrequency()I
    .locals 1

    .prologue
    .line 200
    iget v0, p0, Lcom/stericsson/hardware/fm/FmBand;->mMinFrequency:I

    return v0
.end method

.method public isFrequencyValid(I)Z
    .locals 3
    .parameter "frequency"

    .prologue
    const/4 v0, 0x0

    .line 185
    iget v1, p0, Lcom/stericsson/hardware/fm/FmBand;->mMinFrequency:I

    if-lt p1, v1, :cond_0

    iget v1, p0, Lcom/stericsson/hardware/fm/FmBand;->mMaxFrequency:I

    if-le p1, v1, :cond_1

    .line 191
    :cond_0
    :goto_0
    return v0

    .line 188
    :cond_1
    iget v1, p0, Lcom/stericsson/hardware/fm/FmBand;->mMinFrequency:I

    sub-int v1, p1, v1

    iget v2, p0, Lcom/stericsson/hardware/fm/FmBand;->mChannelOffset:I

    rem-int/2addr v1, v2

    if-nez v1, :cond_0

    .line 191
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 238
    iget v0, p0, Lcom/stericsson/hardware/fm/FmBand;->mMinFrequency:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 239
    iget v0, p0, Lcom/stericsson/hardware/fm/FmBand;->mMaxFrequency:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 240
    iget v0, p0, Lcom/stericsson/hardware/fm/FmBand;->mChannelOffset:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 241
    iget v0, p0, Lcom/stericsson/hardware/fm/FmBand;->mDefaultFrequency:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 242
    return-void
.end method

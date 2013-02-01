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
    .line 244
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

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    packed-switch p1, :pswitch_data_0

    .line 171
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Wrong band identifier"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 141
    :pswitch_0
    const v0, 0x1575c

    iput v0, p0, Lcom/stericsson/hardware/fm/FmBand;->mMinFrequency:I

    .line 142
    const v0, 0x1a57c

    iput v0, p0, Lcom/stericsson/hardware/fm/FmBand;->mMaxFrequency:I

    .line 143
    const v0, 0x1575c

    iput v0, p0, Lcom/stericsson/hardware/fm/FmBand;->mDefaultFrequency:I

    .line 144
    const/16 v0, 0xc8

    iput v0, p0, Lcom/stericsson/hardware/fm/FmBand;->mChannelOffset:I

    .line 173
    :goto_0
    return-void

    .line 147
    :pswitch_1
    iput v0, p0, Lcom/stericsson/hardware/fm/FmBand;->mMinFrequency:I

    .line 148
    iput v1, p0, Lcom/stericsson/hardware/fm/FmBand;->mMaxFrequency:I

    .line 149
    iput v0, p0, Lcom/stericsson/hardware/fm/FmBand;->mDefaultFrequency:I

    .line 150
    iput v3, p0, Lcom/stericsson/hardware/fm/FmBand;->mChannelOffset:I

    goto :goto_0

    .line 153
    :pswitch_2
    const v0, 0x128e0

    iput v0, p0, Lcom/stericsson/hardware/fm/FmBand;->mMinFrequency:I

    .line 154
    const v0, 0x15f90

    iput v0, p0, Lcom/stericsson/hardware/fm/FmBand;->mMaxFrequency:I

    .line 155
    const v0, 0x128e0

    iput v0, p0, Lcom/stericsson/hardware/fm/FmBand;->mDefaultFrequency:I

    .line 156
    iput v3, p0, Lcom/stericsson/hardware/fm/FmBand;->mChannelOffset:I

    goto :goto_0

    .line 159
    :pswitch_3
    iput v4, p0, Lcom/stericsson/hardware/fm/FmBand;->mMinFrequency:I

    .line 160
    iput v1, p0, Lcom/stericsson/hardware/fm/FmBand;->mMaxFrequency:I

    .line 161
    iput v4, p0, Lcom/stericsson/hardware/fm/FmBand;->mDefaultFrequency:I

    .line 162
    iput v2, p0, Lcom/stericsson/hardware/fm/FmBand;->mChannelOffset:I

    goto :goto_0

    .line 165
    :pswitch_4
    iput v0, p0, Lcom/stericsson/hardware/fm/FmBand;->mMinFrequency:I

    .line 166
    iput v1, p0, Lcom/stericsson/hardware/fm/FmBand;->mMaxFrequency:I

    .line 167
    iput v0, p0, Lcom/stericsson/hardware/fm/FmBand;->mDefaultFrequency:I

    .line 168
    iput v2, p0, Lcom/stericsson/hardware/fm/FmBand;->mChannelOffset:I

    goto :goto_0

    .line 139
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
    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    if-lt p1, p2, :cond_0

    .line 105
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Minimum frequency can not be equal or higher than maximum frequency"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 108
    :cond_0
    if-ge p4, p1, :cond_1

    .line 109
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Default frequency can not be less than minFrequency"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 112
    :cond_1
    if-le p4, p2, :cond_2

    .line 113
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Default frequency can not be higher than maxFrequency"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 116
    :cond_2
    sub-int v0, p2, p1

    rem-int/2addr v0, p3

    if-nez v0, :cond_3

    sub-int v0, p4, p1

    rem-int/2addr v0, p3

    if-eqz v0, :cond_4

    .line 118
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Frequency has invalid offset"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 121
    :cond_4
    iput p1, p0, Lcom/stericsson/hardware/fm/FmBand;->mMinFrequency:I

    .line 122
    iput p2, p0, Lcom/stericsson/hardware/fm/FmBand;->mMaxFrequency:I

    .line 123
    iput p4, p0, Lcom/stericsson/hardware/fm/FmBand;->mDefaultFrequency:I

    .line 124
    iput p3, p0, Lcom/stericsson/hardware/fm/FmBand;->mChannelOffset:I

    .line 125
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 232
    const/4 v0, 0x0

    return v0
.end method

.method public getChannelOffset()I
    .locals 1

    .prologue
    .line 227
    iget v0, p0, Lcom/stericsson/hardware/fm/FmBand;->mChannelOffset:I

    return v0
.end method

.method public getDefaultFrequency()I
    .locals 1

    .prologue
    .line 218
    iget v0, p0, Lcom/stericsson/hardware/fm/FmBand;->mDefaultFrequency:I

    return v0
.end method

.method public getMaxFrequency()I
    .locals 1

    .prologue
    .line 208
    iget v0, p0, Lcom/stericsson/hardware/fm/FmBand;->mMaxFrequency:I

    return v0
.end method

.method public getMinFrequency()I
    .locals 1

    .prologue
    .line 199
    iget v0, p0, Lcom/stericsson/hardware/fm/FmBand;->mMinFrequency:I

    return v0
.end method

.method public isFrequencyValid(I)Z
    .locals 3
    .parameter "frequency"

    .prologue
    const/4 v0, 0x0

    .line 184
    iget v1, p0, Lcom/stericsson/hardware/fm/FmBand;->mMinFrequency:I

    if-lt p1, v1, :cond_0

    iget v1, p0, Lcom/stericsson/hardware/fm/FmBand;->mMaxFrequency:I

    if-le p1, v1, :cond_1

    .line 190
    :cond_0
    :goto_0
    return v0

    .line 187
    :cond_1
    iget v1, p0, Lcom/stericsson/hardware/fm/FmBand;->mMinFrequency:I

    sub-int v1, p1, v1

    iget v2, p0, Lcom/stericsson/hardware/fm/FmBand;->mChannelOffset:I

    rem-int/2addr v1, v2

    if-nez v1, :cond_0

    .line 190
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 237
    iget v0, p0, Lcom/stericsson/hardware/fm/FmBand;->mMinFrequency:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 238
    iget v0, p0, Lcom/stericsson/hardware/fm/FmBand;->mMaxFrequency:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 239
    iget v0, p0, Lcom/stericsson/hardware/fm/FmBand;->mChannelOffset:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 240
    iget v0, p0, Lcom/stericsson/hardware/fm/FmBand;->mDefaultFrequency:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 241
    return-void
.end method

.class Lcom/android/internal/telephony/cat/ChannelStatusResponseData;
.super Lcom/android/internal/telephony/cat/ResponseData;
.source "ResponseData.java"


# instance fields
.field private final mChannelStatus:[I


# direct methods
.method public constructor <init>([I)V
    .locals 0
    .parameter "channelStatus"

    .prologue
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/ResponseData;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/cat/ChannelStatusResponseData;->mChannelStatus:[I

    return-void
.end method


# virtual methods
.method public format(Ljava/io/ByteArrayOutputStream;)V
    .locals 6
    .parameter "buf"

    .prologue
    iget-object v5, p0, Lcom/android/internal/telephony/cat/ChannelStatusResponseData;->mChannelStatus:[I

    if-nez v5, :cond_1

    :cond_0
    return-void

    :cond_1
    sget-object v5, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->CHANNEL_STATUS:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v5}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v4

    .local v4, tag:I
    iget-object v0, p0, Lcom/android/internal/telephony/cat/ChannelStatusResponseData;->mChannelStatus:[I

    .local v0, arr$:[I
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget v3, v0, v1

    .local v3, status:I
    if-gtz v3, :cond_2

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p1, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/4 v5, 0x2

    invoke-virtual {p1, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    shr-int/lit8 v5, v3, 0x8

    and-int/lit16 v5, v5, 0xff

    invoke-virtual {p1, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    and-int/lit16 v5, v3, 0xff

    invoke-virtual {p1, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_1
.end method

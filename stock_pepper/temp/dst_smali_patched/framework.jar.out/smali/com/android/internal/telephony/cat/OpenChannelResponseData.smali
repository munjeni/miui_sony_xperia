.class Lcom/android/internal/telephony/cat/OpenChannelResponseData;
.super Lcom/android/internal/telephony/cat/ResponseData;
.source "ResponseData.java"


# instance fields
.field private final mBearer:Lcom/android/internal/telephony/cat/BearerDescription;

.field private final mBufSize:I

.field private final mChannelStatus:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(ILjava/lang/Integer;Lcom/android/internal/telephony/cat/BearerDescription;)V
    .locals 0
    .parameter "bufSize"
    .parameter "channelStatus"
    .parameter "bearer"

    .prologue
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/ResponseData;-><init>()V

    iput p1, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseData;->mBufSize:I

    iput-object p2, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseData;->mChannelStatus:Ljava/lang/Integer;

    iput-object p3, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseData;->mBearer:Lcom/android/internal/telephony/cat/BearerDescription;

    return-void
.end method


# virtual methods
.method public format(Ljava/io/ByteArrayOutputStream;)V
    .locals 6
    .parameter "buf"

    .prologue
    const/4 v5, 0x2

    iget-object v2, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseData;->mChannelStatus:Ljava/lang/Integer;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->CHANNEL_STATUS:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v1

    .local v1, tag:I
    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-virtual {p1, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    iget-object v2, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseData;->mChannelStatus:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    shr-int/lit8 v2, v2, 0x8

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {p1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    iget-object v2, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseData;->mChannelStatus:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {p1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .end local v1           #tag:I
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseData;->mBearer:Lcom/android/internal/telephony/cat/BearerDescription;

    if-eqz v2, :cond_1

    sget-object v2, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->BEARER_DESC:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v1

    .restart local v1       #tag:I
    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/4 v0, 0x1

    .local v0, len:I
    iget-object v2, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseData;->mBearer:Lcom/android/internal/telephony/cat/BearerDescription;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/BearerDescription;->parameters:[B

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseData;->mBearer:Lcom/android/internal/telephony/cat/BearerDescription;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/BearerDescription;->parameters:[B

    array-length v2, v2

    add-int/2addr v0, v2

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    iget-object v2, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseData;->mBearer:Lcom/android/internal/telephony/cat/BearerDescription;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/BearerDescription;->type:Lcom/android/internal/telephony/cat/BearerDescription$BearerType;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/BearerDescription$BearerType;->value()I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {p1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    iget-object v2, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseData;->mBearer:Lcom/android/internal/telephony/cat/BearerDescription;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/BearerDescription;->parameters:[B

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseData;->mBearer:Lcom/android/internal/telephony/cat/BearerDescription;

    iget-object v4, v4, Lcom/android/internal/telephony/cat/BearerDescription;->parameters:[B

    array-length v4, v4

    invoke-virtual {p1, v2, v3, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .end local v0           #len:I
    .end local v1           #tag:I
    :cond_1
    :goto_0
    sget-object v2, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->BUFFER_SIZE:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v1

    .restart local v1       #tag:I
    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-virtual {p1, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    iget v2, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseData;->mBufSize:I

    shr-int/lit8 v2, v2, 0x8

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {p1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    iget v2, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseData;->mBufSize:I

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {p1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    return-void

    .restart local v0       #len:I
    :cond_2
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    iget-object v2, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseData;->mBearer:Lcom/android/internal/telephony/cat/BearerDescription;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/BearerDescription;->type:Lcom/android/internal/telephony/cat/BearerDescription$BearerType;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/BearerDescription$BearerType;->value()I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {p1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_0
.end method

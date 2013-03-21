.class Lcom/android/internal/telephony/cat/SendDataParams;
.super Lcom/android/internal/telephony/cat/CommandParams;
.source "CommandParams.java"


# instance fields
.field channel:I

.field data:[B


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cat/CommandDetails;I[B)V
    .locals 1
    .parameter "cmdDet"
    .parameter "channel"
    .parameter "data"

    .prologue
    .line 249
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/CommandParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;)V

    .line 245
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/cat/SendDataParams;->data:[B

    .line 246
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/cat/SendDataParams;->channel:I

    .line 250
    iput p2, p0, Lcom/android/internal/telephony/cat/SendDataParams;->channel:I

    .line 251
    iput-object p3, p0, Lcom/android/internal/telephony/cat/SendDataParams;->data:[B

    .line 252
    return-void
.end method

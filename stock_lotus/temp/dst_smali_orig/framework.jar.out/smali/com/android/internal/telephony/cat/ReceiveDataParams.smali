.class Lcom/android/internal/telephony/cat/ReceiveDataParams;
.super Lcom/android/internal/telephony/cat/CommandParams;
.source "CommandParams.java"


# instance fields
.field channel:I

.field datLen:I


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cat/CommandDetails;II)V
    .locals 1
    .parameter "cmdDet"
    .parameter "channel"
    .parameter "datLen"

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/CommandParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;)V

    iput v0, p0, Lcom/android/internal/telephony/cat/ReceiveDataParams;->datLen:I

    iput v0, p0, Lcom/android/internal/telephony/cat/ReceiveDataParams;->channel:I

    iput p2, p0, Lcom/android/internal/telephony/cat/ReceiveDataParams;->channel:I

    iput p3, p0, Lcom/android/internal/telephony/cat/ReceiveDataParams;->datLen:I

    return-void
.end method

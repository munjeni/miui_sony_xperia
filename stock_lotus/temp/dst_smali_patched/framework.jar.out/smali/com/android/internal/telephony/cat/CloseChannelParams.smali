.class Lcom/android/internal/telephony/cat/CloseChannelParams;
.super Lcom/android/internal/telephony/cat/CommandParams;
.source "CommandParams.java"


# instance fields
.field channel:I


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cat/CommandDetails;I)V
    .locals 1
    .parameter "cmdDet"
    .parameter "channel"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/CommandParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/cat/CloseChannelParams;->channel:I

    iput p2, p0, Lcom/android/internal/telephony/cat/CloseChannelParams;->channel:I

    return-void
.end method

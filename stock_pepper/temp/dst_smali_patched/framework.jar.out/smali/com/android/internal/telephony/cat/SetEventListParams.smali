.class Lcom/android/internal/telephony/cat/SetEventListParams;
.super Lcom/android/internal/telephony/cat/CommandParams;
.source "CommandParams.java"


# instance fields
.field eventInfo:Lcom/android/internal/telephony/cat/SetEventList;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/SetEventList;)V
    .locals 0
    .parameter "cmdDet"
    .parameter "eventInfo"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/CommandParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;)V

    iput-object p2, p0, Lcom/android/internal/telephony/cat/SetEventListParams;->eventInfo:Lcom/android/internal/telephony/cat/SetEventList;

    return-void
.end method

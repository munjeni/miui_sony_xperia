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
    .line 92
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/CommandParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;)V

    .line 93
    iput-object p2, p0, Lcom/android/internal/telephony/cat/SetEventListParams;->eventInfo:Lcom/android/internal/telephony/cat/SetEventList;

    .line 94
    return-void
.end method

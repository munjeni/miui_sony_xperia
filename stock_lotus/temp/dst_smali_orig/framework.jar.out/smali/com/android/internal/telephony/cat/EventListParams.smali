.class Lcom/android/internal/telephony/cat/EventListParams;
.super Lcom/android/internal/telephony/cat/CommandParams;
.source "CommandParams.java"


# instance fields
.field eventInfo:Lcom/android/internal/telephony/cat/SetEventList;

.field eventList:[B


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cat/CommandDetails;[BLcom/android/internal/telephony/cat/SetEventList;)V
    .locals 1
    .parameter "cmdDet"
    .parameter "eventList"
    .parameter "eventInfo"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/CommandParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/cat/EventListParams;->eventList:[B

    iput-object p2, p0, Lcom/android/internal/telephony/cat/EventListParams;->eventList:[B

    iput-object p3, p0, Lcom/android/internal/telephony/cat/EventListParams;->eventInfo:Lcom/android/internal/telephony/cat/SetEventList;

    return-void
.end method

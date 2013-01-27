.class public Lcom/android/server/location/NMEAParser$GPRMCParser;
.super Ljava/lang/Object;
.source "NMEAParser.java"

# interfaces
.implements Lcom/android/server/location/NMEAParser$ParseInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/NMEAParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GPRMCParser"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/NMEAParser;


# direct methods
.method public constructor <init>(Lcom/android/server/location/NMEAParser;)V
    .locals 0
    .parameter

    .prologue
    .line 241
    iput-object p1, p0, Lcom/android/server/location/NMEAParser$GPRMCParser;->this$0:Lcom/android/server/location/NMEAParser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public parse(Ljava/lang/String;)V
    .locals 5
    .parameter "sentence"

    .prologue
    const/4 v4, 0x3

    .line 260
    const-string v1, ","

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 261
    .local v0, tmp:[Ljava/lang/String;
    array-length v1, v0

    if-le v1, v4, :cond_0

    .line 262
    iget-object v1, p0, Lcom/android/server/location/NMEAParser$GPRMCParser;->this$0:Lcom/android/server/location/NMEAParser;

    iget-object v2, p0, Lcom/android/server/location/NMEAParser$GPRMCParser;->this$0:Lcom/android/server/location/NMEAParser;

    const/4 v3, 0x1

    aget-object v3, v0, v3

    #calls: Lcom/android/server/location/NMEAParser;->parseTimeToDate(Ljava/lang/String;)J
    invoke-static {v2, v3}, Lcom/android/server/location/NMEAParser;->access$000(Lcom/android/server/location/NMEAParser;Ljava/lang/String;)J

    move-result-wide v2

    #calls: Lcom/android/server/location/NMEAParser;->updateTimeStamp(J)V
    invoke-static {v1, v2, v3}, Lcom/android/server/location/NMEAParser;->access$100(Lcom/android/server/location/NMEAParser;J)V

    .line 263
    const-string v1, "A"

    const/4 v2, 0x2

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 271
    :cond_0
    :goto_0
    return-void

    .line 266
    :cond_1
    iget-object v1, p0, Lcom/android/server/location/NMEAParser$GPRMCParser;->this$0:Lcom/android/server/location/NMEAParser;

    iget-object v2, p0, Lcom/android/server/location/NMEAParser$GPRMCParser;->this$0:Lcom/android/server/location/NMEAParser;

    aget-object v3, v0, v4

    const/4 v4, 0x4

    aget-object v4, v0, v4

    #calls: Lcom/android/server/location/NMEAParser;->parseCoordinate(Ljava/lang/String;Ljava/lang/String;)D
    invoke-static {v2, v3, v4}, Lcom/android/server/location/NMEAParser;->access$300(Lcom/android/server/location/NMEAParser;Ljava/lang/String;Ljava/lang/String;)D

    move-result-wide v2

    #setter for: Lcom/android/server/location/NMEAParser;->mFixLatitude:D
    invoke-static {v1, v2, v3}, Lcom/android/server/location/NMEAParser;->access$202(Lcom/android/server/location/NMEAParser;D)D

    .line 267
    iget-object v1, p0, Lcom/android/server/location/NMEAParser$GPRMCParser;->this$0:Lcom/android/server/location/NMEAParser;

    iget-object v2, p0, Lcom/android/server/location/NMEAParser$GPRMCParser;->this$0:Lcom/android/server/location/NMEAParser;

    const/4 v3, 0x5

    aget-object v3, v0, v3

    const/4 v4, 0x6

    aget-object v4, v0, v4

    #calls: Lcom/android/server/location/NMEAParser;->parseCoordinate(Ljava/lang/String;Ljava/lang/String;)D
    invoke-static {v2, v3, v4}, Lcom/android/server/location/NMEAParser;->access$300(Lcom/android/server/location/NMEAParser;Ljava/lang/String;Ljava/lang/String;)D

    move-result-wide v2

    #setter for: Lcom/android/server/location/NMEAParser;->mFixLongitude:D
    invoke-static {v1, v2, v3}, Lcom/android/server/location/NMEAParser;->access$402(Lcom/android/server/location/NMEAParser;D)D

    .line 268
    iget-object v1, p0, Lcom/android/server/location/NMEAParser$GPRMCParser;->this$0:Lcom/android/server/location/NMEAParser;

    iget-object v2, p0, Lcom/android/server/location/NMEAParser$GPRMCParser;->this$0:Lcom/android/server/location/NMEAParser;

    const/4 v3, 0x7

    aget-object v3, v0, v3

    #calls: Lcom/android/server/location/NMEAParser;->parseSpeedInKnots(Ljava/lang/String;)F
    invoke-static {v2, v3}, Lcom/android/server/location/NMEAParser;->access$600(Lcom/android/server/location/NMEAParser;Ljava/lang/String;)F

    move-result v2

    #setter for: Lcom/android/server/location/NMEAParser;->mFixSpeed:F
    invoke-static {v1, v2}, Lcom/android/server/location/NMEAParser;->access$502(Lcom/android/server/location/NMEAParser;F)F

    .line 269
    iget-object v1, p0, Lcom/android/server/location/NMEAParser$GPRMCParser;->this$0:Lcom/android/server/location/NMEAParser;

    iget-object v2, p0, Lcom/android/server/location/NMEAParser$GPRMCParser;->this$0:Lcom/android/server/location/NMEAParser;

    const/16 v3, 0x8

    aget-object v3, v0, v3

    #calls: Lcom/android/server/location/NMEAParser;->parseStringToFloat(Ljava/lang/String;)F
    invoke-static {v2, v3}, Lcom/android/server/location/NMEAParser;->access$800(Lcom/android/server/location/NMEAParser;Ljava/lang/String;)F

    move-result v2

    #setter for: Lcom/android/server/location/NMEAParser;->mFixBearing:F
    invoke-static {v1, v2}, Lcom/android/server/location/NMEAParser;->access$702(Lcom/android/server/location/NMEAParser;F)F

    goto :goto_0
.end method

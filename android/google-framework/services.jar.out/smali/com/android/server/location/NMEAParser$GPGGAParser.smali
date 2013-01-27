.class public Lcom/android/server/location/NMEAParser$GPGGAParser;
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
    name = "GPGGAParser"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/NMEAParser;


# direct methods
.method public constructor <init>(Lcom/android/server/location/NMEAParser;)V
    .locals 0
    .parameter

    .prologue
    .line 274
    iput-object p1, p0, Lcom/android/server/location/NMEAParser$GPGGAParser;->this$0:Lcom/android/server/location/NMEAParser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public parse(Ljava/lang/String;)V
    .locals 7
    .parameter "sentence"

    .prologue
    const/4 v6, 0x7

    const/4 v5, 0x1

    .line 301
    const-string v1, ","

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 302
    .local v0, tmp:[Ljava/lang/String;
    array-length v1, v0

    if-le v1, v6, :cond_0

    .line 304
    iget-object v1, p0, Lcom/android/server/location/NMEAParser$GPGGAParser;->this$0:Lcom/android/server/location/NMEAParser;

    iget-object v2, p0, Lcom/android/server/location/NMEAParser$GPGGAParser;->this$0:Lcom/android/server/location/NMEAParser;

    aget-object v3, v0, v5

    #calls: Lcom/android/server/location/NMEAParser;->parseTimeToDate(Ljava/lang/String;)J
    invoke-static {v2, v3}, Lcom/android/server/location/NMEAParser;->access$000(Lcom/android/server/location/NMEAParser;Ljava/lang/String;)J

    move-result-wide v2

    #calls: Lcom/android/server/location/NMEAParser;->updateTimeStamp(J)V
    invoke-static {v1, v2, v3}, Lcom/android/server/location/NMEAParser;->access$100(Lcom/android/server/location/NMEAParser;J)V

    .line 305
    iget-object v1, p0, Lcom/android/server/location/NMEAParser$GPGGAParser;->this$0:Lcom/android/server/location/NMEAParser;

    const/4 v2, 0x6

    aget-object v2, v0, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    #setter for: Lcom/android/server/location/NMEAParser;->mFixQuality:I
    invoke-static {v1, v2}, Lcom/android/server/location/NMEAParser;->access$902(Lcom/android/server/location/NMEAParser;I)I

    .line 306
    iget-object v1, p0, Lcom/android/server/location/NMEAParser$GPGGAParser;->this$0:Lcom/android/server/location/NMEAParser;

    #getter for: Lcom/android/server/location/NMEAParser;->mFixQuality:I
    invoke-static {v1}, Lcom/android/server/location/NMEAParser;->access$900(Lcom/android/server/location/NMEAParser;)I

    move-result v1

    if-nez v1, :cond_1

    .line 308
    iget-object v1, p0, Lcom/android/server/location/NMEAParser$GPGGAParser;->this$0:Lcom/android/server/location/NMEAParser;

    const/4 v2, 0x0

    #setter for: Lcom/android/server/location/NMEAParser;->isValid:Z
    invoke-static {v1, v2}, Lcom/android/server/location/NMEAParser;->access$1002(Lcom/android/server/location/NMEAParser;Z)Z

    .line 318
    :cond_0
    :goto_0
    return-void

    .line 311
    :cond_1
    iget-object v1, p0, Lcom/android/server/location/NMEAParser$GPGGAParser;->this$0:Lcom/android/server/location/NMEAParser;

    iget-object v2, p0, Lcom/android/server/location/NMEAParser$GPGGAParser;->this$0:Lcom/android/server/location/NMEAParser;

    const/4 v3, 0x2

    aget-object v3, v0, v3

    const/4 v4, 0x3

    aget-object v4, v0, v4

    #calls: Lcom/android/server/location/NMEAParser;->parseCoordinate(Ljava/lang/String;Ljava/lang/String;)D
    invoke-static {v2, v3, v4}, Lcom/android/server/location/NMEAParser;->access$300(Lcom/android/server/location/NMEAParser;Ljava/lang/String;Ljava/lang/String;)D

    move-result-wide v2

    #setter for: Lcom/android/server/location/NMEAParser;->mFixLatitude:D
    invoke-static {v1, v2, v3}, Lcom/android/server/location/NMEAParser;->access$202(Lcom/android/server/location/NMEAParser;D)D

    .line 312
    iget-object v1, p0, Lcom/android/server/location/NMEAParser$GPGGAParser;->this$0:Lcom/android/server/location/NMEAParser;

    iget-object v2, p0, Lcom/android/server/location/NMEAParser$GPGGAParser;->this$0:Lcom/android/server/location/NMEAParser;

    const/4 v3, 0x4

    aget-object v3, v0, v3

    const/4 v4, 0x5

    aget-object v4, v0, v4

    #calls: Lcom/android/server/location/NMEAParser;->parseCoordinate(Ljava/lang/String;Ljava/lang/String;)D
    invoke-static {v2, v3, v4}, Lcom/android/server/location/NMEAParser;->access$300(Lcom/android/server/location/NMEAParser;Ljava/lang/String;Ljava/lang/String;)D

    move-result-wide v2

    #setter for: Lcom/android/server/location/NMEAParser;->mFixLongitude:D
    invoke-static {v1, v2, v3}, Lcom/android/server/location/NMEAParser;->access$402(Lcom/android/server/location/NMEAParser;D)D

    .line 313
    iget-object v1, p0, Lcom/android/server/location/NMEAParser$GPGGAParser;->this$0:Lcom/android/server/location/NMEAParser;

    iget-object v2, p0, Lcom/android/server/location/NMEAParser$GPGGAParser;->this$0:Lcom/android/server/location/NMEAParser;

    aget-object v3, v0, v6

    #calls: Lcom/android/server/location/NMEAParser;->parseStringToInt(Ljava/lang/String;)I
    invoke-static {v2, v3}, Lcom/android/server/location/NMEAParser;->access$1200(Lcom/android/server/location/NMEAParser;Ljava/lang/String;)I

    move-result v2

    #setter for: Lcom/android/server/location/NMEAParser;->mFixSatsTracked:I
    invoke-static {v1, v2}, Lcom/android/server/location/NMEAParser;->access$1102(Lcom/android/server/location/NMEAParser;I)I

    .line 314
    iget-object v1, p0, Lcom/android/server/location/NMEAParser$GPGGAParser;->this$0:Lcom/android/server/location/NMEAParser;

    iget-object v2, p0, Lcom/android/server/location/NMEAParser$GPGGAParser;->this$0:Lcom/android/server/location/NMEAParser;

    const/16 v3, 0x8

    aget-object v3, v0, v3

    #calls: Lcom/android/server/location/NMEAParser;->parseStringToFloat(Ljava/lang/String;)F
    invoke-static {v2, v3}, Lcom/android/server/location/NMEAParser;->access$800(Lcom/android/server/location/NMEAParser;Ljava/lang/String;)F

    move-result v2

    iget-object v3, p0, Lcom/android/server/location/NMEAParser$GPGGAParser;->this$0:Lcom/android/server/location/NMEAParser;

    #getter for: Lcom/android/server/location/NMEAParser;->HEPE_FACTOR:F
    invoke-static {v3}, Lcom/android/server/location/NMEAParser;->access$1400(Lcom/android/server/location/NMEAParser;)F

    move-result v3

    mul-float/2addr v2, v3

    #setter for: Lcom/android/server/location/NMEAParser;->mFixAccuracy:F
    invoke-static {v1, v2}, Lcom/android/server/location/NMEAParser;->access$1302(Lcom/android/server/location/NMEAParser;F)F

    .line 315
    iget-object v1, p0, Lcom/android/server/location/NMEAParser$GPGGAParser;->this$0:Lcom/android/server/location/NMEAParser;

    iget-object v2, p0, Lcom/android/server/location/NMEAParser$GPGGAParser;->this$0:Lcom/android/server/location/NMEAParser;

    const/16 v3, 0x9

    aget-object v3, v0, v3

    #calls: Lcom/android/server/location/NMEAParser;->parseStringToFloat(Ljava/lang/String;)F
    invoke-static {v2, v3}, Lcom/android/server/location/NMEAParser;->access$800(Lcom/android/server/location/NMEAParser;Ljava/lang/String;)F

    move-result v2

    #setter for: Lcom/android/server/location/NMEAParser;->mFixAltitude:F
    invoke-static {v1, v2}, Lcom/android/server/location/NMEAParser;->access$1502(Lcom/android/server/location/NMEAParser;F)F

    .line 316
    iget-object v1, p0, Lcom/android/server/location/NMEAParser$GPGGAParser;->this$0:Lcom/android/server/location/NMEAParser;

    #setter for: Lcom/android/server/location/NMEAParser;->isValid:Z
    invoke-static {v1, v5}, Lcom/android/server/location/NMEAParser;->access$1002(Lcom/android/server/location/NMEAParser;Z)Z

    goto :goto_0
.end method

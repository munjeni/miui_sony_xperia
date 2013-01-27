.class public Lcom/android/server/location/NMEAParser$GPGSVParser;
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
    name = "GPGSVParser"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/NMEAParser;


# direct methods
.method public constructor <init>(Lcom/android/server/location/NMEAParser;)V
    .locals 0
    .parameter

    .prologue
    .line 364
    iput-object p1, p0, Lcom/android/server/location/NMEAParser$GPGSVParser;->this$0:Lcom/android/server/location/NMEAParser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public parse(Ljava/lang/String;)V
    .locals 11
    .parameter "sentence"

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x1

    .line 383
    const-string v6, ","

    invoke-virtual {p1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 384
    .local v4, tmp:[Ljava/lang/String;
    array-length v6, v4

    if-le v6, v10, :cond_0

    .line 385
    iget-object v6, p0, Lcom/android/server/location/NMEAParser$GPGSVParser;->this$0:Lcom/android/server/location/NMEAParser;

    iget-object v7, p0, Lcom/android/server/location/NMEAParser$GPGSVParser;->this$0:Lcom/android/server/location/NMEAParser;

    const/4 v8, 0x3

    aget-object v8, v4, v8

    #calls: Lcom/android/server/location/NMEAParser;->parseStringToInt(Ljava/lang/String;)I
    invoke-static {v7, v8}, Lcom/android/server/location/NMEAParser;->access$1200(Lcom/android/server/location/NMEAParser;Ljava/lang/String;)I

    move-result v7

    #setter for: Lcom/android/server/location/NMEAParser;->mSvCount:I
    invoke-static {v6, v7}, Lcom/android/server/location/NMEAParser;->access$2002(Lcom/android/server/location/NMEAParser;I)I

    .line 386
    iget-object v6, p0, Lcom/android/server/location/NMEAParser$GPGSVParser;->this$0:Lcom/android/server/location/NMEAParser;

    #getter for: Lcom/android/server/location/NMEAParser;->mSvCount:I
    invoke-static {v6}, Lcom/android/server/location/NMEAParser;->access$2000(Lcom/android/server/location/NMEAParser;)I

    move-result v6

    if-nez v6, :cond_1

    .line 414
    :cond_0
    return-void

    .line 389
    :cond_1
    iget-object v6, p0, Lcom/android/server/location/NMEAParser$GPGSVParser;->this$0:Lcom/android/server/location/NMEAParser;

    aget-object v7, v4, v9

    #calls: Lcom/android/server/location/NMEAParser;->parseStringToInt(Ljava/lang/String;)I
    invoke-static {v6, v7}, Lcom/android/server/location/NMEAParser;->access$1200(Lcom/android/server/location/NMEAParser;Ljava/lang/String;)I

    move-result v5

    .line 390
    .local v5, totalSentences:I
    iget-object v6, p0, Lcom/android/server/location/NMEAParser$GPGSVParser;->this$0:Lcom/android/server/location/NMEAParser;

    const/4 v7, 0x2

    aget-object v7, v4, v7

    #calls: Lcom/android/server/location/NMEAParser;->parseStringToInt(Ljava/lang/String;)I
    invoke-static {v6, v7}, Lcom/android/server/location/NMEAParser;->access$1200(Lcom/android/server/location/NMEAParser;Ljava/lang/String;)I

    move-result v1

    .line 392
    .local v1, currSentence:I
    iget-object v6, p0, Lcom/android/server/location/NMEAParser$GPGSVParser;->this$0:Lcom/android/server/location/NMEAParser;

    #getter for: Lcom/android/server/location/NMEAParser;->mSatsReady:Z
    invoke-static {v6}, Lcom/android/server/location/NMEAParser;->access$2100(Lcom/android/server/location/NMEAParser;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 393
    iget-object v6, p0, Lcom/android/server/location/NMEAParser$GPGSVParser;->this$0:Lcom/android/server/location/NMEAParser;

    #calls: Lcom/android/server/location/NMEAParser;->resetSats()V
    invoke-static {v6}, Lcom/android/server/location/NMEAParser;->access$2200(Lcom/android/server/location/NMEAParser;)V

    .line 394
    iget-object v6, p0, Lcom/android/server/location/NMEAParser$GPGSVParser;->this$0:Lcom/android/server/location/NMEAParser;

    const/4 v7, 0x0

    #setter for: Lcom/android/server/location/NMEAParser;->mSatsReady:Z
    invoke-static {v6, v7}, Lcom/android/server/location/NMEAParser;->access$2102(Lcom/android/server/location/NMEAParser;Z)Z

    .line 399
    :cond_2
    :goto_0
    const/4 v2, 0x0

    .line 400
    .local v2, idx:I
    :goto_1
    if-gt v1, v5, :cond_0

    if-ge v2, v10, :cond_0

    .line 401
    shl-int/lit8 v3, v2, 0x2

    .line 402
    .local v3, offset:I
    add-int/lit8 v6, v1, -0x1

    shl-int/lit8 v0, v6, 0x2

    .line 403
    .local v0, base_offset:I
    add-int/lit8 v6, v3, 0x4

    array-length v7, v4

    if-ge v6, v7, :cond_3

    .line 404
    iget-object v6, p0, Lcom/android/server/location/NMEAParser$GPGSVParser;->this$0:Lcom/android/server/location/NMEAParser;

    #getter for: Lcom/android/server/location/NMEAParser;->mSvs:[I
    invoke-static {v6}, Lcom/android/server/location/NMEAParser;->access$2300(Lcom/android/server/location/NMEAParser;)[I

    move-result-object v6

    add-int v7, v0, v2

    iget-object v8, p0, Lcom/android/server/location/NMEAParser$GPGSVParser;->this$0:Lcom/android/server/location/NMEAParser;

    add-int/lit8 v9, v3, 0x4

    aget-object v9, v4, v9

    #calls: Lcom/android/server/location/NMEAParser;->parseStringToInt(Ljava/lang/String;)I
    invoke-static {v8, v9}, Lcom/android/server/location/NMEAParser;->access$1200(Lcom/android/server/location/NMEAParser;Ljava/lang/String;)I

    move-result v8

    aput v8, v6, v7

    .line 405
    :cond_3
    add-int/lit8 v6, v3, 0x5

    array-length v7, v4

    if-ge v6, v7, :cond_4

    .line 406
    iget-object v6, p0, Lcom/android/server/location/NMEAParser$GPGSVParser;->this$0:Lcom/android/server/location/NMEAParser;

    #getter for: Lcom/android/server/location/NMEAParser;->mSvElevations:[F
    invoke-static {v6}, Lcom/android/server/location/NMEAParser;->access$2400(Lcom/android/server/location/NMEAParser;)[F

    move-result-object v6

    add-int v7, v0, v2

    iget-object v8, p0, Lcom/android/server/location/NMEAParser$GPGSVParser;->this$0:Lcom/android/server/location/NMEAParser;

    add-int/lit8 v9, v3, 0x5

    aget-object v9, v4, v9

    #calls: Lcom/android/server/location/NMEAParser;->parseStringToInt(Ljava/lang/String;)I
    invoke-static {v8, v9}, Lcom/android/server/location/NMEAParser;->access$1200(Lcom/android/server/location/NMEAParser;Ljava/lang/String;)I

    move-result v8

    int-to-float v8, v8

    aput v8, v6, v7

    .line 407
    :cond_4
    add-int/lit8 v6, v3, 0x6

    array-length v7, v4

    if-ge v6, v7, :cond_5

    .line 408
    iget-object v6, p0, Lcom/android/server/location/NMEAParser$GPGSVParser;->this$0:Lcom/android/server/location/NMEAParser;

    #getter for: Lcom/android/server/location/NMEAParser;->mSvAzimuths:[F
    invoke-static {v6}, Lcom/android/server/location/NMEAParser;->access$2500(Lcom/android/server/location/NMEAParser;)[F

    move-result-object v6

    add-int v7, v0, v2

    iget-object v8, p0, Lcom/android/server/location/NMEAParser$GPGSVParser;->this$0:Lcom/android/server/location/NMEAParser;

    add-int/lit8 v9, v3, 0x6

    aget-object v9, v4, v9

    #calls: Lcom/android/server/location/NMEAParser;->parseStringToInt(Ljava/lang/String;)I
    invoke-static {v8, v9}, Lcom/android/server/location/NMEAParser;->access$1200(Lcom/android/server/location/NMEAParser;Ljava/lang/String;)I

    move-result v8

    int-to-float v8, v8

    aput v8, v6, v7

    .line 409
    :cond_5
    add-int/lit8 v6, v3, 0x7

    array-length v7, v4

    if-ge v6, v7, :cond_6

    .line 410
    iget-object v6, p0, Lcom/android/server/location/NMEAParser$GPGSVParser;->this$0:Lcom/android/server/location/NMEAParser;

    #getter for: Lcom/android/server/location/NMEAParser;->mSnrs:[F
    invoke-static {v6}, Lcom/android/server/location/NMEAParser;->access$2600(Lcom/android/server/location/NMEAParser;)[F

    move-result-object v6

    add-int v7, v0, v2

    iget-object v8, p0, Lcom/android/server/location/NMEAParser$GPGSVParser;->this$0:Lcom/android/server/location/NMEAParser;

    add-int/lit8 v9, v3, 0x7

    aget-object v9, v4, v9

    #calls: Lcom/android/server/location/NMEAParser;->parseStringToInt(Ljava/lang/String;)I
    invoke-static {v8, v9}, Lcom/android/server/location/NMEAParser;->access$1200(Lcom/android/server/location/NMEAParser;Ljava/lang/String;)I

    move-result v8

    int-to-float v8, v8

    aput v8, v6, v7

    .line 411
    :cond_6
    add-int/lit8 v2, v2, 0x1

    .line 412
    goto :goto_1

    .line 395
    .end local v0           #base_offset:I
    .end local v2           #idx:I
    .end local v3           #offset:I
    :cond_7
    if-ne v1, v5, :cond_2

    iget-object v6, p0, Lcom/android/server/location/NMEAParser$GPGSVParser;->this$0:Lcom/android/server/location/NMEAParser;

    #getter for: Lcom/android/server/location/NMEAParser;->mSatsReady:Z
    invoke-static {v6}, Lcom/android/server/location/NMEAParser;->access$2100(Lcom/android/server/location/NMEAParser;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 397
    iget-object v6, p0, Lcom/android/server/location/NMEAParser$GPGSVParser;->this$0:Lcom/android/server/location/NMEAParser;

    #setter for: Lcom/android/server/location/NMEAParser;->mSatsReady:Z
    invoke-static {v6, v9}, Lcom/android/server/location/NMEAParser;->access$2102(Lcom/android/server/location/NMEAParser;Z)Z

    goto/16 :goto_0
.end method

.class public Lcom/android/server/location/NMEAParser$GPGSAParser;
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
    name = "GPGSAParser"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/NMEAParser;


# direct methods
.method public constructor <init>(Lcom/android/server/location/NMEAParser;)V
    .locals 0
    .parameter

    .prologue
    .line 321
    iput-object p1, p0, Lcom/android/server/location/NMEAParser$GPGSAParser;->this$0:Lcom/android/server/location/NMEAParser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public parse(Ljava/lang/String;)V
    .locals 11
    .parameter "sentence"

    .prologue
    const/16 v10, 0x11

    const/4 v9, 0x2

    const/16 v8, 0x10

    const/16 v7, 0xf

    .line 339
    const-string v3, ","

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 340
    .local v2, tmp:[Ljava/lang/String;
    array-length v3, v2

    if-lt v3, v8, :cond_0

    .line 341
    const-string v3, "1"

    aget-object v4, v2, v9

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 357
    :cond_0
    :goto_0
    return-void

    .line 345
    :cond_1
    const/4 v0, 0x3

    .local v0, i:I
    :goto_1
    if-ge v0, v7, :cond_3

    .line 347
    iget-object v3, p0, Lcom/android/server/location/NMEAParser$GPGSAParser;->this$0:Lcom/android/server/location/NMEAParser;

    aget-object v4, v2, v0

    #calls: Lcom/android/server/location/NMEAParser;->parseStringToInt(Ljava/lang/String;)I
    invoke-static {v3, v4}, Lcom/android/server/location/NMEAParser;->access$1200(Lcom/android/server/location/NMEAParser;Ljava/lang/String;)I

    move-result v1

    .line 348
    .local v1, sat:I
    if-lez v1, :cond_2

    iget-object v3, p0, Lcom/android/server/location/NMEAParser$GPGSAParser;->this$0:Lcom/android/server/location/NMEAParser;

    #getter for: Lcom/android/server/location/NMEAParser;->mSvMasks:[I
    invoke-static {v3}, Lcom/android/server/location/NMEAParser;->access$1600(Lcom/android/server/location/NMEAParser;)[I

    move-result-object v3

    aget v4, v3, v9

    const/4 v5, 0x1

    add-int/lit8 v6, v1, -0x1

    shl-int/2addr v5, v6

    or-int/2addr v4, v5

    aput v4, v3, v9

    .line 345
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 350
    .end local v1           #sat:I
    :cond_3
    array-length v3, v2

    if-le v3, v7, :cond_4

    .line 351
    iget-object v3, p0, Lcom/android/server/location/NMEAParser$GPGSAParser;->this$0:Lcom/android/server/location/NMEAParser;

    iget-object v4, p0, Lcom/android/server/location/NMEAParser$GPGSAParser;->this$0:Lcom/android/server/location/NMEAParser;

    aget-object v5, v2, v7

    #calls: Lcom/android/server/location/NMEAParser;->parseStringToFloat(Ljava/lang/String;)F
    invoke-static {v4, v5}, Lcom/android/server/location/NMEAParser;->access$800(Lcom/android/server/location/NMEAParser;Ljava/lang/String;)F

    move-result v4

    #setter for: Lcom/android/server/location/NMEAParser;->PDOP:F
    invoke-static {v3, v4}, Lcom/android/server/location/NMEAParser;->access$1702(Lcom/android/server/location/NMEAParser;F)F

    .line 352
    :cond_4
    array-length v3, v2

    if-le v3, v8, :cond_5

    .line 353
    iget-object v3, p0, Lcom/android/server/location/NMEAParser$GPGSAParser;->this$0:Lcom/android/server/location/NMEAParser;

    iget-object v4, p0, Lcom/android/server/location/NMEAParser$GPGSAParser;->this$0:Lcom/android/server/location/NMEAParser;

    aget-object v5, v2, v8

    #calls: Lcom/android/server/location/NMEAParser;->parseStringToFloat(Ljava/lang/String;)F
    invoke-static {v4, v5}, Lcom/android/server/location/NMEAParser;->access$800(Lcom/android/server/location/NMEAParser;Ljava/lang/String;)F

    move-result v4

    #setter for: Lcom/android/server/location/NMEAParser;->HDOP:F
    invoke-static {v3, v4}, Lcom/android/server/location/NMEAParser;->access$1802(Lcom/android/server/location/NMEAParser;F)F

    .line 354
    :cond_5
    array-length v3, v2

    if-le v3, v10, :cond_0

    .line 355
    iget-object v3, p0, Lcom/android/server/location/NMEAParser$GPGSAParser;->this$0:Lcom/android/server/location/NMEAParser;

    iget-object v4, p0, Lcom/android/server/location/NMEAParser$GPGSAParser;->this$0:Lcom/android/server/location/NMEAParser;

    aget-object v5, v2, v10

    #calls: Lcom/android/server/location/NMEAParser;->parseStringToFloat(Ljava/lang/String;)F
    invoke-static {v4, v5}, Lcom/android/server/location/NMEAParser;->access$800(Lcom/android/server/location/NMEAParser;Ljava/lang/String;)F

    move-result v4

    #setter for: Lcom/android/server/location/NMEAParser;->VDOP:F
    invoke-static {v3, v4}, Lcom/android/server/location/NMEAParser;->access$1902(Lcom/android/server/location/NMEAParser;F)F

    goto :goto_0
.end method

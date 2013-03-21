.class public Lmiui/telephony/phonenumber/Prefix;
.super Ljava/lang/Object;
.source "Prefix.java"


# static fields
.field public static final EMPTY:Ljava/lang/String; = ""

.field public static final PREFIX_10193:Ljava/lang/String; = "10193"

.field public static final PREFIX_10650:Ljava/lang/String; = "10650"

.field public static final PREFIX_10651:Ljava/lang/String; = "10651"

.field public static final PREFIX_10656:Ljava/lang/String; = "10656"

.field public static final PREFIX_10657:Ljava/lang/String; = "10657"

.field public static final PREFIX_10659:Ljava/lang/String; = "10659"

.field public static final PREFIX_12520:Ljava/lang/String; = "12520"

.field public static final PREFIX_12593:Ljava/lang/String; = "12593"

.field public static final PREFIX_17901:Ljava/lang/String; = "17901"

.field public static final PREFIX_17909:Ljava/lang/String; = "17909"

.field public static final PREFIX_17911:Ljava/lang/String; = "17911"

.field public static final PREFIX_17951:Ljava/lang/String; = "17951"

.field public static final PREFIX_17961:Ljava/lang/String; = "17961"

.field public static final PREFIX_600:Ljava/lang/String; = "600"

.field public static final SMS_PREFIXES:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 23
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "12520"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "10657"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "10656"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "10650"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "10651"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "10659"

    aput-object v2, v0, v1

    sput-object v0, Lmiui/telephony/phonenumber/Prefix;->SMS_PREFIXES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isSmsPrefix(Ljava/lang/String;)Z
    .locals 5
    .parameter "prefix"

    .prologue
    .line 84
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 85
    sget-object v0, Lmiui/telephony/phonenumber/Prefix;->SMS_PREFIXES:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 86
    .local v3, sms:Ljava/lang/String;
    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 87
    const/4 v4, 0x1

    .line 91
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v3           #sms:Ljava/lang/String;
    :goto_1
    return v4

    .line 85
    .restart local v0       #arr$:[Ljava/lang/String;
    .restart local v1       #i$:I
    .restart local v2       #len$:I
    .restart local v3       #sms:Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 91
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v3           #sms:Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public static parse(Ljava/lang/StringBuffer;II)Ljava/lang/String;
    .locals 7
    .parameter "buffer"
    .parameter "start"
    .parameter "length"

    .prologue
    const/16 v6, 0x33

    const/16 v5, 0x35

    const/16 v4, 0x39

    const/16 v3, 0x30

    const/16 v2, 0x31

    .line 28
    invoke-static {}, Lmiui/telephony/phonenumber/CountryCode;->isChinaEnvironment()Z

    move-result v0

    if-nez v0, :cond_0

    .line 29
    const-string v0, ""

    .line 80
    :goto_0
    return-object v0

    .line 32
    :cond_0
    if-gtz p2, :cond_1

    .line 33
    const-string v0, ""

    goto :goto_0

    .line 36
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 80
    :cond_2
    :goto_1
    const-string v0, ""

    goto :goto_0

    .line 38
    :sswitch_0
    const/4 v0, 0x4

    if-le p2, v0, :cond_2

    .line 39
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v0

    sparse-switch v0, :sswitch_data_1

    goto :goto_1

    .line 41
    :sswitch_1
    add-int/lit8 v0, p1, 0x2

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v0

    const/16 v1, 0x36

    if-ne v0, v1, :cond_3

    add-int/lit8 v0, p1, 0x3

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v0

    if-ne v0, v5, :cond_3

    .line 42
    add-int/lit8 v0, p1, 0x4

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_1

    .line 43
    :pswitch_1
    const-string v0, "10650"

    goto :goto_0

    .line 44
    :pswitch_2
    const-string v0, "10651"

    goto :goto_0

    .line 45
    :pswitch_3
    const-string v0, "10656"

    goto :goto_0

    .line 46
    :pswitch_4
    const-string v0, "10657"

    goto :goto_0

    .line 47
    :pswitch_5
    const-string v0, "10659"

    goto :goto_0

    .line 49
    :cond_3
    add-int/lit8 v0, p1, 0x2

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v0

    if-ne v0, v2, :cond_2

    .line 50
    add-int/lit8 v0, p1, 0x3

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v0

    if-ne v0, v4, :cond_2

    add-int/lit8 v0, p1, 0x4

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v0

    if-ne v0, v6, :cond_2

    const-string v0, "10193"

    goto :goto_0

    .line 54
    :sswitch_2
    add-int/lit8 v0, p1, 0x2

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v0

    if-ne v0, v5, :cond_2

    .line 55
    add-int/lit8 v0, p1, 0x3

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v0

    if-ne v0, v4, :cond_4

    add-int/lit8 v0, p1, 0x4

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v0

    if-ne v0, v6, :cond_4

    const-string v0, "12593"

    goto :goto_0

    .line 56
    :cond_4
    add-int/lit8 v0, p1, 0x3

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v0

    const/16 v1, 0x32

    if-ne v0, v1, :cond_2

    add-int/lit8 v0, p1, 0x4

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v0

    if-ne v0, v3, :cond_2

    const-string v0, "12520"

    goto/16 :goto_0

    .line 60
    :sswitch_3
    add-int/lit8 v0, p1, 0x2

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v0

    if-ne v0, v4, :cond_2

    .line 61
    add-int/lit8 v0, p1, 0x3

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v0

    if-ne v0, v3, :cond_5

    add-int/lit8 v0, p1, 0x4

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v0

    if-ne v0, v2, :cond_5

    const-string v0, "17901"

    goto/16 :goto_0

    .line 62
    :cond_5
    add-int/lit8 v0, p1, 0x3

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v0

    if-ne v0, v3, :cond_6

    add-int/lit8 v0, p1, 0x4

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v0

    if-ne v0, v4, :cond_6

    const-string v0, "17909"

    goto/16 :goto_0

    .line 63
    :cond_6
    add-int/lit8 v0, p1, 0x3

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v0

    if-ne v0, v2, :cond_7

    add-int/lit8 v0, p1, 0x4

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v0

    if-ne v0, v2, :cond_7

    const-string v0, "17911"

    goto/16 :goto_0

    .line 64
    :cond_7
    add-int/lit8 v0, p1, 0x3

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v0

    if-ne v0, v5, :cond_8

    add-int/lit8 v0, p1, 0x4

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v0

    if-ne v0, v2, :cond_8

    const-string v0, "17951"

    goto/16 :goto_0

    .line 65
    :cond_8
    add-int/lit8 v0, p1, 0x3

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v0

    const/16 v1, 0x36

    if-ne v0, v1, :cond_2

    add-int/lit8 v0, p1, 0x4

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v0

    if-ne v0, v2, :cond_2

    const-string v0, "17961"

    goto/16 :goto_0

    .line 72
    :sswitch_4
    const/16 v0, 0xd

    if-le p2, v0, :cond_2

    .line 73
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v0

    if-ne v0, v3, :cond_2

    add-int/lit8 v0, p1, 0x2

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v0

    if-ne v0, v3, :cond_2

    .line 75
    const-string v0, "600"

    goto/16 :goto_0

    .line 36
    :sswitch_data_0
    .sparse-switch
        0x31 -> :sswitch_0
        0x36 -> :sswitch_4
    .end sparse-switch

    .line 39
    :sswitch_data_1
    .sparse-switch
        0x30 -> :sswitch_1
        0x32 -> :sswitch_2
        0x37 -> :sswitch_3
    .end sparse-switch

    .line 42
    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.class public Lmiui/telephony/PhoneNumberUtils$PhoneNumber;
.super Ljava/lang/Object;
.source "PhoneNumberUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/telephony/PhoneNumberUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PhoneNumber"
.end annotation


# static fields
.field private static final EMPTY:Ljava/lang/String; = ""

.field private static final HASH_STRING_INDICATOR:C = '\u0001'

.field private static final MAX_NUMBER_LENGTH:I = 0x100

.field private static final MISSING_AREA_CODE_INDICATOR:C = '\u0002'

.field private static final POOL_SIZE:I = 0xa

.field private static final sPool:[Lmiui/telephony/PhoneNumberUtils$PhoneNumber;

.field private static sPoolIndex:I


# instance fields
.field private mAreaCode:Ljava/lang/String;

.field private mBuffer:Ljava/lang/StringBuffer;

.field private mCountryCode:Ljava/lang/String;

.field private mEffectiveNumber:Ljava/lang/String;

.field private mEffectiveNumberStart:I

.field private mOriginal:Ljava/lang/CharSequence;

.field private mPostDialString:Ljava/lang/String;

.field private mPostDialStringStart:I

.field private mPrefix:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 182
    const/16 v0, 0xa

    new-array v0, v0, [Lmiui/telephony/PhoneNumberUtils$PhoneNumber;

    sput-object v0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->sPool:[Lmiui/telephony/PhoneNumberUtils$PhoneNumber;

    .line 183
    const/4 v0, -0x1

    sput v0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->sPoolIndex:I

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 196
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    iput-object v0, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mBuffer:Ljava/lang/StringBuffer;

    .line 197
    invoke-direct {p0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->clear()V

    .line 198
    return-void
.end method

.method public static addCountryCode(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "number"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 503
    invoke-static {p0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->parse(Ljava/lang/CharSequence;)Lmiui/telephony/PhoneNumberUtils$PhoneNumber;

    move-result-object v2

    .line 504
    .local v2, pn:Lmiui/telephony/PhoneNumberUtils$PhoneNumber;
    invoke-virtual {v2}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getCountryCode()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 505
    .local v0, addCountryCode:Z
    invoke-virtual {v2}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->isChineseNumber()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 506
    invoke-virtual {v2}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getPrefix()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 507
    const/4 v0, 0x0

    .line 515
    :cond_0
    :goto_0
    move-object v3, p0

    .line 516
    .local v3, result:Ljava/lang/String;
    if-eqz v0, :cond_3

    .line 517
    invoke-static {}, Lmiui/telephony/phonenumber/CountryCode;->getUserDefinedCountryCode()Ljava/lang/String;

    move-result-object v1

    .line 518
    .local v1, countryCode:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 519
    invoke-static {}, Lmiui/telephony/phonenumber/CountryCode;->getIccCountryCode()Ljava/lang/String;

    move-result-object v1

    .line 521
    :cond_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 523
    const-string v6, "39"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x30

    if-eq v5, v6, :cond_7

    .line 524
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "+"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 530
    .end local v1           #countryCode:Ljava/lang/String;
    :cond_3
    :goto_1
    invoke-virtual {v2}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->recycle()V

    .line 531
    return-object v3

    .line 508
    .end local v3           #result:Ljava/lang/String;
    :cond_4
    invoke-virtual {v2}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->isServiceNumber()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 509
    const/4 v0, 0x0

    goto :goto_0

    .line 510
    :cond_5
    invoke-virtual {v2}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->isNormalMobileNumber()Z

    move-result v6

    if-nez v6, :cond_0

    .line 511
    invoke-virtual {v2}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getAreaCode()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_6

    move v0, v4

    :goto_2
    goto :goto_0

    :cond_6
    move v0, v5

    goto :goto_2

    .line 526
    .restart local v1       #countryCode:Ljava/lang/String;
    .restart local v3       #result:Ljava/lang/String;
    :cond_7
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "+"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1
.end method

.method private static areEqual(Ljava/lang/CharSequence;ILjava/lang/CharSequence;II)Z
    .locals 4
    .parameter "s1"
    .parameter "b1"
    .parameter "s2"
    .parameter "b2"
    .parameter "length"

    .prologue
    const/4 v1, 0x0

    .line 622
    if-eqz p0, :cond_0

    if-eqz p2, :cond_0

    if-ltz p1, :cond_0

    if-ltz p3, :cond_0

    if-gez p4, :cond_1

    .line 634
    :cond_0
    :goto_0
    return v1

    .line 625
    :cond_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    add-int v3, p1, p4

    if-lt v2, v3, :cond_0

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    add-int v3, p3, p4

    if-lt v2, v3, :cond_0

    .line 629
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, p4, :cond_2

    .line 630
    add-int v2, p1, v0

    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    add-int v3, p3, v0

    invoke-interface {p2, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    if-ne v2, v3, :cond_0

    .line 629
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 634
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private attach(Ljava/lang/CharSequence;)V
    .locals 5
    .parameter "number"

    .prologue
    .line 212
    if-nez p1, :cond_0

    .line 213
    const-string p1, ""

    .line 215
    :cond_0
    iput-object p1, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mOriginal:Ljava/lang/CharSequence;

    .line 216
    const/4 v3, 0x0

    .line 217
    .local v3, postDialString:Z
    const/4 v1, 0x0

    .local v1, i:I
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .local v2, len:I
    :goto_0
    if-ge v1, v2, :cond_5

    .line 218
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 219
    .local v0, c:C
    if-eqz v3, :cond_2

    invoke-static {v0}, Lmiui/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 220
    iget-object v4, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 217
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 221
    :cond_2
    if-nez v1, :cond_3

    const/16 v4, 0x2b

    if-ne v0, v4, :cond_3

    .line 222
    iget-object v4, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 223
    :cond_3
    const/16 v4, 0x30

    if-lt v0, v4, :cond_4

    const/16 v4, 0x39

    if-gt v0, v4, :cond_4

    .line 224
    iget-object v4, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 225
    :cond_4
    if-nez v3, :cond_1

    invoke-static {v0}, Lmiui/telephony/PhoneNumberUtils;->isStartsPostDial(C)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 226
    iget-object v4, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    iput v4, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mPostDialStringStart:I

    .line 227
    const/4 v3, 0x1

    .line 228
    iget-object v4, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 231
    .end local v0           #c:C
    :cond_5
    if-nez v3, :cond_6

    .line 232
    iget-object v4, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    iput v4, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mPostDialStringStart:I

    .line 234
    :cond_6
    return-void
.end method

.method private clear()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 201
    iget-object v0, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 202
    iput-object v1, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mPrefix:Ljava/lang/String;

    .line 203
    iput-object v1, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mCountryCode:Ljava/lang/String;

    .line 204
    iput-object v1, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mAreaCode:Ljava/lang/String;

    .line 205
    iput v2, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumberStart:I

    .line 206
    iput-object v1, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumber:Ljava/lang/String;

    .line 207
    iput v2, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mPostDialStringStart:I

    .line 208
    iput-object v1, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mPostDialString:Ljava/lang/String;

    .line 209
    return-void
.end method

.method public static getDefaultCountryCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 614
    invoke-static {}, Lmiui/telephony/phonenumber/CountryCode;->getIccCountryCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDialableNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "hash"

    .prologue
    .line 559
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 560
    const-string p0, ""

    .line 570
    .end local p0
    .local v0, index:I
    :cond_0
    :goto_0
    return-object p0

    .line 563
    .end local v0           #index:I
    .restart local p0
    :cond_1
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 564
    .restart local v0       #index:I
    if-gez v0, :cond_2

    .line 565
    const/4 v0, 0x1

    .line 570
    :goto_1
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 567
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static getHashString(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter "dialable"

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x0

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 537
    invoke-static {p0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->parse(Ljava/lang/CharSequence;)Lmiui/telephony/PhoneNumberUtils$PhoneNumber;

    move-result-object v0

    .line 538
    .local v0, pn:Lmiui/telephony/PhoneNumberUtils$PhoneNumber;
    move-object v1, p0

    .line 539
    .local v1, result:Ljava/lang/String;
    invoke-virtual {v0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->isChineseNumber()Z

    move-result v2

    if-nez v2, :cond_0

    .line 540
    const-string v2, "%c(00%s)%s%s"

    new-array v3, v9, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-virtual {v0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getCountryCode()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getEffectiveNumber()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getPostDialString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 554
    :goto_0
    invoke-virtual {v0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->recycle()V

    .line 555
    return-object v1

    .line 541
    :cond_0
    invoke-virtual {v0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->isNormalMobileNumber()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 542
    const-string v2, "%c(00%s)%s%s"

    new-array v3, v9, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    aput-object v4, v3, v7

    const-string v4, "86"

    aput-object v4, v3, v5

    invoke-virtual {v0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getEffectiveNumber()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getPostDialString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 543
    :cond_1
    invoke-virtual {v0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getCountryCode()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 544
    invoke-virtual {v0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getAreaCode()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 545
    const-string v2, "%c(00%s)%s-%s%s"

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    aput-object v4, v3, v7

    const-string v4, "86"

    aput-object v4, v3, v5

    invoke-virtual {v0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getAreaCode()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getEffectiveNumber()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-virtual {v0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getPostDialString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v9

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 547
    :cond_2
    const-string v2, "%c(00%s)%s%s"

    new-array v3, v9, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    aput-object v4, v3, v7

    const-string v4, "86"

    aput-object v4, v3, v5

    invoke-virtual {v0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getEffectiveNumber()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getPostDialString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 549
    :cond_3
    invoke-virtual {v0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getAreaCode()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 550
    const-string v2, "%c(00%s)%s-%s%s"

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    aput-object v4, v3, v7

    const-string v4, "86"

    aput-object v4, v3, v5

    invoke-virtual {v0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getAreaCode()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getEffectiveNumber()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-virtual {v0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getPostDialString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v9

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 552
    :cond_4
    const-string v2, "%c(00%s)%c%s%s"

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    aput-object v4, v3, v7

    const-string v4, "86"

    aput-object v4, v3, v5

    invoke-static {v6}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getEffectiveNumber()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-virtual {v0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getPostDialString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v9

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0
.end method

.method public static getLocation(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 2
    .parameter "context"
    .parameter "number"

    .prologue
    .line 596
    invoke-static {p1}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->parse(Ljava/lang/CharSequence;)Lmiui/telephony/PhoneNumberUtils$PhoneNumber;

    move-result-object v1

    .line 597
    .local v1, pn:Lmiui/telephony/PhoneNumberUtils$PhoneNumber;
    invoke-virtual {v1, p0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getLocation(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 598
    .local v0, location:Ljava/lang/String;
    invoke-virtual {v1}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->recycle()V

    .line 599
    return-object v0
.end method

.method public static getLocationAreaCode(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "context"
    .parameter "number"

    .prologue
    .line 603
    invoke-static {p1}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->parse(Ljava/lang/CharSequence;)Lmiui/telephony/PhoneNumberUtils$PhoneNumber;

    move-result-object v1

    .line 604
    .local v1, pn:Lmiui/telephony/PhoneNumberUtils$PhoneNumber;
    invoke-virtual {v1, p0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getLocationAreaCode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 605
    .local v0, location:Ljava/lang/String;
    invoke-virtual {v1}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->recycle()V

    .line 606
    return-object v0
.end method

.method public static isChineseOperator()Z
    .locals 1

    .prologue
    .line 618
    invoke-static {}, Lmiui/telephony/phonenumber/CountryCode;->isChinaEnvironment()Z

    move-result v0

    return v0
.end method

.method public static isValidCountryCode(Ljava/lang/String;)Z
    .locals 1
    .parameter "countryCode"

    .prologue
    .line 610
    invoke-static {p0}, Lmiui/telephony/phonenumber/CountryCode;->isValidCountryCode(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static parse(Ljava/lang/CharSequence;)Lmiui/telephony/PhoneNumberUtils$PhoneNumber;
    .locals 6
    .parameter "number"

    .prologue
    .line 237
    const/4 v0, 0x0

    .line 238
    .local v0, pn:Lmiui/telephony/PhoneNumberUtils$PhoneNumber;
    sget-object v3, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->sPool:[Lmiui/telephony/PhoneNumberUtils$PhoneNumber;

    monitor-enter v3

    .line 239
    :try_start_0
    sget v2, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->sPoolIndex:I

    const/4 v4, -0x1

    if-ne v2, v4, :cond_0

    .line 240
    new-instance v1, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;

    invoke-direct {v1}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;-><init>()V

    .end local v0           #pn:Lmiui/telephony/PhoneNumberUtils$PhoneNumber;
    .local v1, pn:Lmiui/telephony/PhoneNumberUtils$PhoneNumber;
    move-object v0, v1

    .line 245
    .end local v1           #pn:Lmiui/telephony/PhoneNumberUtils$PhoneNumber;
    .restart local v0       #pn:Lmiui/telephony/PhoneNumberUtils$PhoneNumber;
    :goto_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 247
    invoke-direct {v0, p0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->attach(Ljava/lang/CharSequence;)V

    .line 248
    return-object v0

    .line 242
    :cond_0
    :try_start_1
    sget-object v2, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->sPool:[Lmiui/telephony/PhoneNumberUtils$PhoneNumber;

    sget v4, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->sPoolIndex:I

    aget-object v0, v2, v4

    .line 243
    sget-object v2, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->sPool:[Lmiui/telephony/PhoneNumberUtils$PhoneNumber;

    sget v4, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->sPoolIndex:I

    add-int/lit8 v5, v4, -0x1

    sput v5, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->sPoolIndex:I

    const/4 v5, 0x0

    aput-object v5, v2, v4

    goto :goto_0

    .line 245
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public static replaceCdmaInternationalAccessCode(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "number"

    .prologue
    const/16 v5, 0x30

    const/4 v4, 0x0

    .line 575
    const-string v2, "+86"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "86"

    invoke-static {}, Lmiui/telephony/phonenumber/CountryCode;->getNetworkCountryCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 577
    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 578
    .local v1, leftNumber:Ljava/lang/String;
    invoke-static {v1}, Lmiui/telephony/PhoneNumberUtils;->isChinaMobileNumber(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 592
    .end local v1           #leftNumber:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v1

    .line 582
    .restart local v1       #leftNumber:Ljava/lang/String;
    :cond_1
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v2, v5, :cond_0

    .line 585
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 588
    .end local v1           #leftNumber:Ljava/lang/String;
    :cond_2
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2b

    if-ne v2, v3, :cond_3

    .line 589
    invoke-static {}, Lmiui/telephony/phonenumber/CountryCode;->getIddCode()Ljava/lang/String;

    move-result-object v0

    .line 590
    .local v0, idd:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .end local v0           #idd:Ljava/lang/String;
    :cond_3
    move-object v1, p0

    .line 592
    goto :goto_0
.end method


# virtual methods
.method public getAreaCode()Ljava/lang/String;
    .locals 5

    .prologue
    .line 299
    iget-object v1, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mAreaCode:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 300
    const-string v1, ""

    iput-object v1, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mAreaCode:Ljava/lang/String;

    .line 301
    invoke-virtual {p0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->isChineseNumber()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lmiui/telephony/phonenumber/Prefix;->isSmsPrefix(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 302
    const/4 v0, 0x1

    .line 303
    .local v0, areacodeExists:Z
    invoke-virtual {p0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getCountryCode()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 304
    const/4 v0, 0x0

    .line 305
    iget-object v1, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    iget v2, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumberStart:I

    if-le v1, v2, :cond_0

    iget-object v1, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mBuffer:Ljava/lang/StringBuffer;

    iget v2, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumberStart:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v1

    const/16 v2, 0x30

    if-ne v1, v2, :cond_0

    .line 307
    const/4 v0, 0x1

    .line 308
    iget v1, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumberStart:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumberStart:I

    .line 312
    :cond_0
    if-eqz v0, :cond_1

    .line 313
    iget-object v1, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mBuffer:Ljava/lang/StringBuffer;

    iget v2, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumberStart:I

    iget v3, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mPostDialStringStart:I

    iget v4, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumberStart:I

    sub-int/2addr v3, v4

    invoke-static {v1, v2, v3}, Lmiui/telephony/phonenumber/ChineseAreaCode;->parse(Ljava/lang/StringBuffer;II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mAreaCode:Ljava/lang/String;

    .line 314
    iget v1, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumberStart:I

    iget-object v2, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mAreaCode:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumberStart:I

    .line 318
    .end local v0           #areacodeExists:Z
    :cond_1
    iget-object v1, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mAreaCode:Ljava/lang/String;

    return-object v1
.end method

.method public getCountryCode()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 269
    iget-object v1, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mCountryCode:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 270
    invoke-virtual {p0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getPrefix()Ljava/lang/String;

    .line 272
    const-string v0, "+"

    .line 273
    .local v0, idd:Ljava/lang/String;
    iget-object v1, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mBuffer:Ljava/lang/StringBuffer;

    iget v2, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumberStart:I

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v1, v2, v0, v4, v3}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->areEqual(Ljava/lang/CharSequence;ILjava/lang/CharSequence;II)Z

    move-result v1

    if-nez v1, :cond_0

    .line 274
    invoke-static {}, Lmiui/telephony/phonenumber/CountryCode;->getIddCode()Ljava/lang/String;

    move-result-object v0

    .line 275
    iget-object v1, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mBuffer:Ljava/lang/StringBuffer;

    iget v2, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumberStart:I

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v1, v2, v0, v4, v3}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->areEqual(Ljava/lang/CharSequence;ILjava/lang/CharSequence;II)Z

    move-result v1

    if-nez v1, :cond_0

    .line 276
    const/4 v0, 0x0

    .line 280
    :cond_0
    if-eqz v0, :cond_2

    .line 281
    iget v1, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumberStart:I

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumberStart:I

    .line 283
    iget-object v1, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mBuffer:Ljava/lang/StringBuffer;

    iget v2, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumberStart:I

    iget v3, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mPostDialStringStart:I

    iget v4, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumberStart:I

    sub-int/2addr v3, v4

    invoke-static {v1, v2, v3}, Lmiui/telephony/phonenumber/CountryCode;->parse(Ljava/lang/StringBuffer;II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mCountryCode:Ljava/lang/String;

    .line 284
    iget v1, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumberStart:I

    iget-object v2, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mCountryCode:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumberStart:I

    .line 289
    .end local v0           #idd:Ljava/lang/String;
    :cond_1
    :goto_0
    iget-object v1, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mCountryCode:Ljava/lang/String;

    return-object v1

    .line 286
    .restart local v0       #idd:Ljava/lang/String;
    :cond_2
    const-string v1, ""

    iput-object v1, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mCountryCode:Ljava/lang/String;

    goto :goto_0
.end method

.method public getEffectiveNumber()Ljava/lang/String;
    .locals 3

    .prologue
    .line 322
    iget-object v0, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumber:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 323
    invoke-virtual {p0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getAreaCode()Ljava/lang/String;

    .line 324
    iget-object v0, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    iget v1, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumberStart:I

    if-le v0, v1, :cond_1

    .line 325
    iget-object v0, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mBuffer:Ljava/lang/StringBuffer;

    iget v1, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumberStart:I

    iget v2, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mPostDialStringStart:I

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumber:Ljava/lang/String;

    .line 330
    :cond_0
    :goto_0
    iget-object v0, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumber:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mOriginal:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mOriginal:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    .line 327
    :cond_1
    const-string v0, ""

    iput-object v0, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumber:Ljava/lang/String;

    goto :goto_0

    .line 330
    :cond_2
    iget-object v0, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumber:Ljava/lang/String;

    goto :goto_1
.end method

.method public getLocation(Landroid/content/Context;)Ljava/lang/String;
    .locals 8
    .parameter "context"

    .prologue
    .line 472
    const-string v7, ""

    .line 473
    .local v7, location:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v6, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 474
    .local v6, locale:Ljava/util/Locale;
    invoke-virtual {v6}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->isChineseNumber()Z

    move-result v0

    if-nez v0, :cond_1

    .line 476
    :cond_0
    invoke-static {}, Lmiui/telephony/phonenumber/ChineseTelocation;->getInstance()Lmiui/telephony/phonenumber/ChineseTelocation;

    move-result-object v0

    invoke-virtual {p0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getCountryCode()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mOriginal:Ljava/lang/CharSequence;

    invoke-virtual {v0, p1, v1, v2, v6}, Lmiui/telephony/phonenumber/ChineseTelocation;->getExternalLocation(Landroid/content/Context;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    .line 482
    :goto_0
    return-object v7

    .line 478
    :cond_1
    invoke-static {}, Lmiui/telephony/phonenumber/ChineseTelocation;->getInstance()Lmiui/telephony/phonenumber/ChineseTelocation;

    move-result-object v0

    iget-object v2, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mBuffer:Ljava/lang/StringBuffer;

    iget v3, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumberStart:I

    iget v1, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mPostDialStringStart:I

    iget v4, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumberStart:I

    sub-int v4, v1, v4

    invoke-virtual {p0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->isNormalMobileNumber()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getAreaCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_3

    :cond_2
    const/4 v5, 0x1

    :goto_1
    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lmiui/telephony/phonenumber/ChineseTelocation;->getLocation(Landroid/content/Context;Ljava/lang/CharSequence;IIZ)Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    :cond_3
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public getLocationAreaCode(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .parameter "context"

    .prologue
    .line 486
    const-string v0, ""

    .line 487
    .local v0, areaCode:Ljava/lang/String;
    invoke-virtual {p0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->isChineseNumber()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 488
    invoke-virtual {p0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->isNormalMobileNumber()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 489
    invoke-static {}, Lmiui/telephony/phonenumber/ChineseTelocation;->getInstance()Lmiui/telephony/phonenumber/ChineseTelocation;

    move-result-object v1

    iget-object v2, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mBuffer:Ljava/lang/StringBuffer;

    iget v3, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumberStart:I

    iget v4, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mPostDialStringStart:I

    iget v5, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumberStart:I

    sub-int/2addr v4, v5

    invoke-virtual {v1, p1, v2, v3, v4}, Lmiui/telephony/phonenumber/ChineseTelocation;->getAreaCode(Landroid/content/Context;Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v0

    .line 495
    :cond_0
    :goto_0
    return-object v0

    .line 492
    :cond_1
    invoke-virtual {p0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getAreaCode()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getNormalizedNumber(ZZ)Ljava/lang/String;
    .locals 6
    .parameter "withCountryCode"
    .parameter "withPostDialString"

    .prologue
    .line 439
    const/4 v1, 0x0

    .line 440
    .local v1, number:Ljava/lang/String;
    invoke-virtual {p0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->isChineseNumber()Z

    move-result v3

    if-nez v3, :cond_3

    .line 441
    if-eqz p1, :cond_1

    iget v3, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumberStart:I

    invoke-virtual {p0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getCountryCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    sub-int v2, v3, v4

    .line 442
    .local v2, start:I
    :goto_0
    if-eqz p2, :cond_2

    iget-object v3, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    .line 443
    .local v0, end:I
    :goto_1
    iget-object v3, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v3, v2, v0}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 444
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getCountryCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 445
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "+"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 468
    .end local v2           #start:I
    :cond_0
    :goto_2
    return-object v1

    .line 441
    .end local v0           #end:I
    :cond_1
    iget v2, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumberStart:I

    goto :goto_0

    .line 442
    .restart local v2       #start:I
    :cond_2
    iget v0, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mPostDialStringStart:I

    goto :goto_1

    .line 447
    .end local v2           #start:I
    :cond_3
    invoke-virtual {p0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->isNormalMobileNumber()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 449
    if-eqz p2, :cond_4

    iget-object v3, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    .line 450
    .restart local v0       #end:I
    :goto_3
    iget-object v3, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mBuffer:Ljava/lang/StringBuffer;

    iget v4, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumberStart:I

    invoke-virtual {v3, v4, v0}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 451
    if-eqz p1, :cond_0

    .line 452
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "+86"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 449
    .end local v0           #end:I
    :cond_4
    iget v0, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mPostDialStringStart:I

    goto :goto_3

    .line 456
    :cond_5
    if-eqz p2, :cond_6

    iget-object v3, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    .line 457
    .restart local v0       #end:I
    :goto_4
    invoke-virtual {p0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getAreaCode()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_8

    invoke-virtual {p0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->isServiceNumber()Z

    move-result v3

    if-nez v3, :cond_8

    .line 458
    iget-object v3, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mBuffer:Ljava/lang/StringBuffer;

    iget v4, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumberStart:I

    invoke-virtual {p0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getAreaCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v3, v4, v0}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 459
    if-eqz p1, :cond_7

    .line 460
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "+86"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 456
    .end local v0           #end:I
    :cond_6
    iget v0, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mPostDialStringStart:I

    goto :goto_4

    .line 462
    .restart local v0       #end:I
    :cond_7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_2

    .line 465
    :cond_8
    iget-object v3, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mBuffer:Ljava/lang/StringBuffer;

    iget v4, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumberStart:I

    invoke-virtual {v3, v4, v0}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_2
.end method

.method public getNumberWithoutPrefix(Z)Ljava/lang/String;
    .locals 3
    .parameter "withPostDialString"

    .prologue
    .line 421
    const/4 v0, 0x0

    .line 422
    .local v0, start:I
    invoke-virtual {p0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 423
    invoke-virtual {p0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    .line 425
    :cond_0
    if-eqz p1, :cond_1

    iget-object v1, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->substring(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_1
    iget-object v1, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mBuffer:Ljava/lang/StringBuffer;

    iget v2, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mPostDialStringStart:I

    invoke-virtual {v1, v0, v2}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getPostDialString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 334
    iget-object v0, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mPostDialString:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 335
    iget-object v0, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    iget v1, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mPostDialStringStart:I

    if-le v0, v1, :cond_1

    .line 336
    iget-object v0, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mBuffer:Ljava/lang/StringBuffer;

    iget v1, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mPostDialStringStart:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mPostDialString:Ljava/lang/String;

    .line 341
    :cond_0
    :goto_0
    iget-object v0, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mPostDialString:Ljava/lang/String;

    return-object v0

    .line 338
    :cond_1
    const-string v0, ""

    iput-object v0, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mPostDialString:Ljava/lang/String;

    goto :goto_0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 4

    .prologue
    .line 261
    iget-object v0, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mPrefix:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 262
    iget-object v0, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mBuffer:Ljava/lang/StringBuffer;

    iget v1, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumberStart:I

    iget v2, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mPostDialStringStart:I

    iget v3, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumberStart:I

    sub-int/2addr v2, v3

    invoke-static {v0, v1, v2}, Lmiui/telephony/phonenumber/Prefix;->parse(Ljava/lang/StringBuffer;II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mPrefix:Ljava/lang/String;

    .line 263
    iget v0, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumberStart:I

    iget-object v1, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mPrefix:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumberStart:I

    .line 265
    :cond_0
    iget-object v0, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mPrefix:Ljava/lang/String;

    return-object v0
.end method

.method public isChineseNumber()Z
    .locals 2

    .prologue
    .line 293
    invoke-virtual {p0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getCountryCode()Ljava/lang/String;

    move-result-object v0

    .line 294
    .local v0, countryCode:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "86"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    invoke-static {}, Lmiui/telephony/phonenumber/CountryCode;->isChinaEnvironment()Z

    move-result v1

    goto :goto_0
.end method

.method public isNormalMobileNumber()Z
    .locals 8

    .prologue
    const/16 v7, 0x38

    const/16 v6, 0x31

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/16 v5, 0x30

    .line 345
    invoke-virtual {p0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getAreaCode()Ljava/lang/String;

    .line 346
    invoke-virtual {p0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->isChineseNumber()Z

    move-result v3

    if-eqz v3, :cond_0

    iget v3, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mPostDialStringStart:I

    iget v4, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumberStart:I

    sub-int/2addr v3, v4

    const/16 v4, 0xb

    if-lt v3, v4, :cond_0

    .line 347
    iget-object v3, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mBuffer:Ljava/lang/StringBuffer;

    iget v4, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumberStart:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v0

    .line 348
    .local v0, c:C
    if-ne v0, v6, :cond_0

    .line 349
    iget-object v3, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mBuffer:Ljava/lang/StringBuffer;

    iget v4, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumberStart:I

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v0

    .line 350
    packed-switch v0, :pswitch_data_0

    .line 375
    .end local v0           #c:C
    :cond_0
    :goto_0
    :pswitch_0
    return v1

    .line 353
    .restart local v0       #c:C
    :pswitch_1
    iget-object v3, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mBuffer:Ljava/lang/StringBuffer;

    iget v4, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumberStart:I

    add-int/lit8 v4, v4, 0x2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v3

    if-ne v3, v7, :cond_1

    iget-object v3, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mBuffer:Ljava/lang/StringBuffer;

    iget v4, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumberStart:I

    add-int/lit8 v4, v4, 0x3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v3

    if-ne v3, v5, :cond_1

    iget-object v3, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mBuffer:Ljava/lang/StringBuffer;

    iget v4, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumberStart:I

    add-int/lit8 v4, v4, 0x4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v3

    if-ne v3, v5, :cond_1

    iget-object v3, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mBuffer:Ljava/lang/StringBuffer;

    iget v4, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumberStart:I

    add-int/lit8 v4, v4, 0x5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v3

    if-ne v3, v6, :cond_1

    iget-object v3, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mBuffer:Ljava/lang/StringBuffer;

    iget v4, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumberStart:I

    add-int/lit8 v4, v4, 0x6

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v3

    const/16 v4, 0x33

    if-ne v3, v4, :cond_1

    iget-object v3, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mBuffer:Ljava/lang/StringBuffer;

    iget v4, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumberStart:I

    add-int/lit8 v4, v4, 0x7

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v3

    if-ne v3, v7, :cond_1

    iget-object v3, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mBuffer:Ljava/lang/StringBuffer;

    iget v4, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumberStart:I

    add-int/lit8 v4, v4, 0x8

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v3

    if-ne v3, v5, :cond_1

    iget-object v3, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mBuffer:Ljava/lang/StringBuffer;

    iget v4, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumberStart:I

    add-int/lit8 v4, v4, 0x9

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v3

    if-ne v3, v5, :cond_1

    iget-object v3, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mBuffer:Ljava/lang/StringBuffer;

    iget v4, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumberStart:I

    add-int/lit8 v4, v4, 0xa

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v3

    if-eq v3, v5, :cond_0

    :cond_1
    move v1, v2

    goto :goto_0

    .line 364
    :pswitch_2
    iget-object v3, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mBuffer:Ljava/lang/StringBuffer;

    iget v4, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumberStart:I

    add-int/lit8 v4, v4, 0x2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v3

    const/16 v4, 0x39

    if-eq v3, v4, :cond_2

    :goto_1
    move v1, v2

    goto :goto_0

    :cond_2
    move v2, v1

    goto :goto_1

    :pswitch_3
    move v1, v2

    .line 368
    goto/16 :goto_0

    .line 350
    nop

    :pswitch_data_0
    .packed-switch 0x33
        :pswitch_1
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public isServiceNumber()Z
    .locals 8

    .prologue
    const/16 v7, 0x31

    const/16 v6, 0x38

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v5, 0x30

    .line 379
    invoke-virtual {p0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getAreaCode()Ljava/lang/String;

    .line 380
    invoke-virtual {p0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->isChineseNumber()Z

    move-result v3

    if-eqz v3, :cond_4

    iget v3, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mPostDialStringStart:I

    iget v4, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumberStart:I

    sub-int/2addr v3, v4

    const/4 v4, 0x2

    if-le v3, v4, :cond_4

    .line 381
    iget-object v3, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mBuffer:Ljava/lang/StringBuffer;

    iget v4, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumberStart:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v0

    .line 382
    .local v0, c:C
    if-ne v0, v7, :cond_2

    .line 383
    iget-object v3, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mBuffer:Ljava/lang/StringBuffer;

    iget v4, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumberStart:I

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v0

    .line 384
    packed-switch v0, :pswitch_data_0

    :pswitch_0
    move v1, v2

    .line 417
    .end local v0           #c:C
    :cond_0
    :goto_0
    :pswitch_1
    return v1

    .line 393
    .restart local v0       #c:C
    :pswitch_2
    iget v3, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mPostDialStringStart:I

    iget v4, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumberStart:I

    sub-int/2addr v3, v4

    const/16 v4, 0xb

    if-lt v3, v4, :cond_1

    iget-object v3, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mBuffer:Ljava/lang/StringBuffer;

    iget v4, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumberStart:I

    add-int/lit8 v4, v4, 0x2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v3

    if-ne v3, v6, :cond_1

    iget-object v3, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mBuffer:Ljava/lang/StringBuffer;

    iget v4, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumberStart:I

    add-int/lit8 v4, v4, 0x3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v3

    if-ne v3, v5, :cond_1

    iget-object v3, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mBuffer:Ljava/lang/StringBuffer;

    iget v4, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumberStart:I

    add-int/lit8 v4, v4, 0x4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v3

    if-ne v3, v5, :cond_1

    iget-object v3, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mBuffer:Ljava/lang/StringBuffer;

    iget v4, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumberStart:I

    add-int/lit8 v4, v4, 0x5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v3

    if-ne v3, v7, :cond_1

    iget-object v3, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mBuffer:Ljava/lang/StringBuffer;

    iget v4, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumberStart:I

    add-int/lit8 v4, v4, 0x6

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v3

    const/16 v4, 0x33

    if-ne v3, v4, :cond_1

    iget-object v3, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mBuffer:Ljava/lang/StringBuffer;

    iget v4, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumberStart:I

    add-int/lit8 v4, v4, 0x7

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v3

    if-ne v3, v6, :cond_1

    iget-object v3, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mBuffer:Ljava/lang/StringBuffer;

    iget v4, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumberStart:I

    add-int/lit8 v4, v4, 0x8

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v3

    if-ne v3, v5, :cond_1

    iget-object v3, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mBuffer:Ljava/lang/StringBuffer;

    iget v4, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumberStart:I

    add-int/lit8 v4, v4, 0x9

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v3

    if-ne v3, v5, :cond_1

    iget-object v3, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mBuffer:Ljava/lang/StringBuffer;

    iget v4, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumberStart:I

    add-int/lit8 v4, v4, 0xa

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v3

    if-eq v3, v5, :cond_0

    :cond_1
    move v1, v2

    goto :goto_0

    .line 405
    :pswitch_3
    iget-object v3, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mBuffer:Ljava/lang/StringBuffer;

    iget v4, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumberStart:I

    add-int/lit8 v4, v4, 0x2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v3

    const/16 v4, 0x39

    if-eq v3, v4, :cond_0

    move v1, v2

    goto/16 :goto_0

    .line 409
    :cond_2
    const/16 v3, 0x39

    if-eq v0, v3, :cond_0

    .line 412
    const/16 v3, 0x32

    if-lt v0, v3, :cond_4

    if-gt v0, v6, :cond_4

    .line 414
    iget-object v3, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mBuffer:Ljava/lang/StringBuffer;

    iget v4, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumberStart:I

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v3

    if-ne v3, v5, :cond_3

    iget-object v3, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mBuffer:Ljava/lang/StringBuffer;

    iget v4, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumberStart:I

    add-int/lit8 v4, v4, 0x2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v3

    if-eq v3, v5, :cond_0

    :cond_3
    move v1, v2

    goto/16 :goto_0

    .end local v0           #c:C
    :cond_4
    move v1, v2

    .line 417
    goto/16 :goto_0

    .line 384
    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public isSmsPrefix()Z
    .locals 1

    .prologue
    .line 499
    invoke-virtual {p0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getPrefix()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmiui/telephony/phonenumber/Prefix;->isSmsPrefix(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public recycle()V
    .locals 3

    .prologue
    .line 252
    invoke-direct {p0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->clear()V

    .line 253
    sget-object v1, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->sPool:[Lmiui/telephony/PhoneNumberUtils$PhoneNumber;

    monitor-enter v1

    .line 254
    :try_start_0
    sget v0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->sPoolIndex:I

    sget-object v2, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->sPool:[Lmiui/telephony/PhoneNumberUtils$PhoneNumber;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 255
    sget-object v0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->sPool:[Lmiui/telephony/PhoneNumberUtils$PhoneNumber;

    sget v2, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->sPoolIndex:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->sPoolIndex:I

    aput-object p0, v0, v2

    .line 257
    :cond_0
    monitor-exit v1

    .line 258
    return-void

    .line 257
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.class public Lcom/android/internal/telephony/AdnRecord;
.super Ljava/lang/Object;
.source "AdnRecord.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field static final ADN_BCD_NUMBER_LENGTH:I = 0x0

.field static final ADN_CAPABILITY_ID:I = 0xc

.field static final ADN_DIALING_NUMBER_END:I = 0xb

.field static final ADN_DIALING_NUMBER_START:I = 0x2

.field static final ADN_EXTENSION_ID:I = 0xd

.field static final ADN_TON_AND_NPI:I = 0x1

.field static final ANR_ADDITIONAL_NUMBER_ID:I = 0x0

.field static final ANR_BCD_NUMBER_LENGTH:I = 0x1

.field static final ANR_CAPABILITY_ID:I = 0xd

.field static final ANR_DIALING_NUMBER_END:I = 0xc

.field static final ANR_DIALING_NUMBER_START:I = 0x3

.field static final ANR_EXTENSION_ID:I = 0xe

.field static final ANR_TON_AND_NPI:I = 0x2

.field static final BCD_NUMBER_MAX_LENGTH:I = 0xa

.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/internal/telephony/AdnRecord;",
            ">;"
        }
    .end annotation
.end field

.field static final EXT_RECORD_LENGTH_BYTES:I = 0xd

.field static final EXT_RECORD_TYPE_ADDITIONAL_DATA:I = 0x2

.field static final EXT_RECORD_TYPE_MASK:I = 0x3

.field static final FOOTER_SIZE_BYTES:I = 0xe

.field static final LOG_TAG:Ljava/lang/String; = "GSM"

.field static final MAX_EXT_CALLED_PARTY_LENGTH:I = 0xa

.field static final MAX_NUMBER_SIZE_BYTES:I = 0xb

.field static final TON_AND_NPI_LENGTH:I = 0x1


# instance fields
.field alphaTag:Ljava/lang/String;

.field efid:I

.field emails:[Ljava/lang/String;

.field extRecord:I

.field private mAnrNumbers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field number:Ljava/lang/String;

.field recordNumber:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 92
    new-instance v0, Lcom/android/internal/telephony/AdnRecord$1;

    invoke-direct {v0}, Lcom/android/internal/telephony/AdnRecord$1;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/AdnRecord;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "efid"
    .parameter "recordNumber"
    .parameter "alphaTag"
    .parameter "number"

    .prologue
    const/4 v1, 0x0

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object v1, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    .line 48
    iput-object v1, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    .line 50
    const/16 v0, 0xff

    iput v0, p0, Lcom/android/internal/telephony/AdnRecord;->extRecord:I

    .line 159
    iput p1, p0, Lcom/android/internal/telephony/AdnRecord;->efid:I

    .line 160
    iput p2, p0, Lcom/android/internal/telephony/AdnRecord;->recordNumber:I

    .line 161
    iput-object p3, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    .line 162
    iput-object p4, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    .line 163
    iput-object v1, p0, Lcom/android/internal/telephony/AdnRecord;->emails:[Ljava/lang/String;

    .line 164
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1
    .parameter "efid"
    .parameter "recordNumber"
    .parameter "alphaTag"
    .parameter "number"
    .parameter "emails"

    .prologue
    const/4 v0, 0x0

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    .line 48
    iput-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    .line 50
    const/16 v0, 0xff

    iput v0, p0, Lcom/android/internal/telephony/AdnRecord;->extRecord:I

    .line 142
    iput p1, p0, Lcom/android/internal/telephony/AdnRecord;->efid:I

    .line 143
    iput p2, p0, Lcom/android/internal/telephony/AdnRecord;->recordNumber:I

    .line 144
    iput-object p3, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    .line 145
    iput-object p4, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    .line 146
    iput-object p5, p0, Lcom/android/internal/telephony/AdnRecord;->emails:[Ljava/lang/String;

    .line 147
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2
    .parameter "efid"
    .parameter "recordNumber"
    .parameter "alphaTag"
    .parameter "number"
    .parameter "emails"
    .parameter "anrNumbers"

    .prologue
    .line 151
    invoke-direct/range {p0 .. p5}, Lcom/android/internal/telephony/AdnRecord;-><init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 153
    if-eqz p6, :cond_0

    .line 154
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->mAnrNumbers:Ljava/util/ArrayList;

    .line 156
    :cond_0
    return-void
.end method

.method public constructor <init>(II[B)V
    .locals 1
    .parameter "efid"
    .parameter "recordNumber"
    .parameter "record"

    .prologue
    const/4 v0, 0x0

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    .line 48
    iput-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    .line 50
    const/16 v0, 0xff

    iput v0, p0, Lcom/android/internal/telephony/AdnRecord;->extRecord:I

    .line 124
    iput p1, p0, Lcom/android/internal/telephony/AdnRecord;->efid:I

    .line 125
    iput p2, p0, Lcom/android/internal/telephony/AdnRecord;->recordNumber:I

    .line 126
    invoke-direct {p0, p3}, Lcom/android/internal/telephony/AdnRecord;->parseRecord([B)V

    .line 127
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "alphaTag"
    .parameter "number"

    .prologue
    const/4 v0, 0x0

    .line 130
    invoke-direct {p0, v0, v0, p1, p2}, Lcom/android/internal/telephony/AdnRecord;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 131
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 6
    .parameter "alphaTag"
    .parameter "number"
    .parameter "emails"

    .prologue
    const/4 v1, 0x0

    .line 134
    move-object v0, p0

    move v2, v1

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/AdnRecord;-><init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 135
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 7
    .parameter "alphaTag"
    .parameter "number"
    .parameter "emails"
    .parameter "anrNumbers"

    .prologue
    const/4 v1, 0x0

    .line 138
    move-object v0, p0

    move v2, v1

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/AdnRecord;-><init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 139
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .parameter "record"

    .prologue
    const/4 v0, 0x0

    .line 120
    invoke-direct {p0, v0, v0, p1}, Lcom/android/internal/telephony/AdnRecord;-><init>(II[B)V

    .line 121
    return-void
.end method

.method private static canBeGsmEncoded(Ljava/lang/String;)Z
    .locals 7
    .parameter "s"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 435
    if-nez p0, :cond_0

    move v2, v3

    .line 437
    .local v2, str_len:I
    :goto_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v2, :cond_1

    .line 438
    :try_start_0
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/4 v6, 0x1

    invoke-static {v5, v6}, Lcom/android/internal/telephony/GsmAlphabet;->countGsmSeptets(CZ)I
    :try_end_0
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 437
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 435
    .end local v1           #i:I
    .end local v2           #str_len:I
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    goto :goto_0

    .restart local v1       #i:I
    .restart local v2       #str_len:I
    :cond_1
    move v3, v4

    .line 442
    :goto_2
    return v3

    .line 441
    :catch_0
    move-exception v0

    .line 442
    .local v0, ee:Lcom/android/internal/telephony/EncodeException;
    goto :goto_2
.end method

.method private static encode(Ljava/lang/String;)[B
    .locals 1
    .parameter "s"

    .prologue
    .line 406
    invoke-static {p0}, Lcom/android/internal/telephony/AdnRecord;->canBeGsmEncoded(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 407
    invoke-static {p0}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm8BitPacked(Ljava/lang/String;)[B

    move-result-object v0

    .line 410
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/android/internal/telephony/AdnRecord;->encodeUnicode0x80(Ljava/lang/String;)[B

    move-result-object v0

    goto :goto_0
.end method

.method private static encodeUnicode0x80(Ljava/lang/String;)[B
    .locals 5
    .parameter "s"

    .prologue
    .line 417
    const/4 v1, 0x0

    .line 419
    .local v1, result:[B
    :try_start_0
    const-string/jumbo v3, "utf16-be"

    invoke-virtual {p0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 420
    .local v2, stringBytes:[B
    array-length v0, v2

    .line 421
    .local v0, length:I
    add-int/lit8 v3, v0, 0x1

    new-array v1, v3, [B

    .line 422
    const/4 v3, 0x0

    const/16 v4, -0x80

    aput-byte v4, v1, v3

    .line 423
    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v2, v3, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 428
    .end local v0           #length:I
    .end local v2           #stringBytes:[B
    :goto_0
    return-object v1

    .line 424
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public static getEmptyAdnRecordCount(Ljava/util/ArrayList;)I
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/AdnRecord;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 616
    .local p0, adnLikeRecordList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/AdnRecord;>;"
    const/4 v1, 0x0

    .line 617
    .local v1, emptyNum:I
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/AdnRecord;

    .line 618
    .local v0, adnRecord:Lcom/android/internal/telephony/AdnRecord;
    iget-object v3, v0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 619
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 622
    .end local v0           #adnRecord:Lcom/android/internal/telephony/AdnRecord;
    :cond_1
    return v1
.end method

.method public static getUsedCount(ILjava/util/ArrayList;)[I
    .locals 7
    .parameter "efid"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/AdnRecord;",
            ">;)[I"
        }
    .end annotation

    .prologue
    .line 635
    .local p1, phoneBookRecordList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/AdnRecord;>;"
    const/4 v2, 0x0

    .line 636
    .local v2, usedAdnCount:I
    const/4 v3, 0x0

    .line 637
    .local v3, usedAnrCount:I
    const/4 v4, 0x0

    .line 638
    .local v4, usedEmailCount:I
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/AdnRecord;

    .line 639
    .local v0, adnRecord:Lcom/android/internal/telephony/AdnRecord;
    invoke-virtual {v0}, Lcom/android/internal/telephony/AdnRecord;->getEfId()I

    move-result v5

    if-ne p0, v5, :cond_0

    .line 641
    iget-object v5, v0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, v0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 642
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 645
    :cond_2
    invoke-virtual {v0}, Lcom/android/internal/telephony/AdnRecord;->isEmptyAnrs()Z

    move-result v5

    if-nez v5, :cond_3

    .line 646
    add-int/lit8 v3, v3, 0x1

    .line 649
    :cond_3
    invoke-virtual {v0}, Lcom/android/internal/telephony/AdnRecord;->isEmptyEmails()Z

    move-result v5

    if-nez v5, :cond_0

    .line 650
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 653
    .end local v0           #adnRecord:Lcom/android/internal/telephony/AdnRecord;
    :cond_4
    const/4 v5, 0x3

    new-array v5, v5, [I

    const/4 v6, 0x0

    aput v2, v5, v6

    const/4 v6, 0x1

    aput v3, v5, v6

    const/4 v6, 0x2

    aput v4, v5, v6

    return-object v5
.end method

.method private isEmptyContent([Ljava/lang/String;)Z
    .locals 6
    .parameter "strs"

    .prologue
    const/4 v4, 0x1

    .line 597
    if-eqz p1, :cond_0

    array-length v5, p1

    if-gtz v5, :cond_1

    .line 604
    :cond_0
    :goto_0
    return v4

    .line 599
    :cond_1
    move-object v0, p1

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 600
    .local v3, str:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 601
    const/4 v4, 0x0

    goto :goto_0

    .line 599
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private parseRecord([B)V
    .locals 6
    .parameter "record"

    .prologue
    const/4 v5, 0x0

    .line 484
    const/4 v3, 0x0

    :try_start_0
    array-length v4, p1

    add-int/lit8 v4, v4, -0xe

    invoke-static {p1, v3, v4}, Lcom/android/internal/telephony/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    array-length v3, p1

    add-int/lit8 v1, v3, -0xe

    .local v1, footerOffset:I
    aget-byte v3, p1, v1

    and-int/lit16 v2, v3, 0xff

    .local v2, numberLength:I
    goto :cond_0

    const/16 v3, 0xb

    if-le v2, v3, :cond_0

    const-string v3, ""

    iput-object v3, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    .end local v1           #footerOffset:I
    .end local v2           #numberLength:I
    :goto_0
    return-void

    .restart local v1       #footerOffset:I
    .restart local v2       #numberLength:I
    :cond_0
    add-int/lit8 v3, v1, 0x1

    invoke-static {p1, v3, v2}, Landroid/telephony/PhoneNumberUtils;->calledPartyBCDToString([BII)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    .line 508
    array-length v3, p1

    add-int/lit8 v3, v3, -0x1

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    iput v3, p0, Lcom/android/internal/telephony/AdnRecord;->extRecord:I

    .line 510
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/internal/telephony/AdnRecord;->emails:[Ljava/lang/String;

    .line 511
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/internal/telephony/AdnRecord;->mAnrNumbers:Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 513
    .end local v1           #footerOffset:I
    .end local v2           #numberLength:I
    :catch_0
    move-exception v0

    .line 514
    .local v0, ex:Ljava/lang/RuntimeException;
    const-string v3, "GSM"

    const-string v4, "Error parsing AdnRecord"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 515
    const-string v3, ""

    iput-object v3, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    .line 516
    const-string v3, ""

    iput-object v3, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    .line 517
    iput-object v5, p0, Lcom/android/internal/telephony/AdnRecord;->emails:[Ljava/lang/String;

    .line 518
    iput-object v5, p0, Lcom/android/internal/telephony/AdnRecord;->mAnrNumbers:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method private static stringArrayToString([Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "array"

    .prologue
    const/4 v6, 0x1

    .line 201
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "["

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 203
    .local v4, sb:Ljava/lang/StringBuilder;
    if-eqz p0, :cond_1

    .line 204
    move-object v0, p0

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 205
    .local v3, s:Ljava/lang/String;
    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 208
    .end local v3           #s:Ljava/lang/String;
    :cond_0
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-le v5, v6, :cond_1

    .line 209
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 212
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #i$:I
    .end local v2           #len$:I
    :cond_1
    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method private static stringCompareNullEqualsEmpty(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "s1"
    .parameter "s2"

    .prologue
    .line 234
    if-ne p0, p1, :cond_0

    .line 235
    const/4 v0, 0x1

    .line 243
    :goto_0
    return v0

    .line 237
    :cond_0
    if-nez p0, :cond_1

    .line 238
    const-string p0, ""

    .line 240
    :cond_1
    if-nez p1, :cond_2

    .line 241
    const-string p1, ""

    .line 243
    :cond_2
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public addAnr(Ljava/lang/String;)V
    .locals 1
    .parameter "anrNumber"

    .prologue
    .line 538
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    .line 544
    :cond_0
    :goto_0
    return-void

    .line 540
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->mAnrNumbers:Ljava/util/ArrayList;

    if-nez v0, :cond_2

    .line 541
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->mAnrNumbers:Ljava/util/ArrayList;

    .line 543
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->mAnrNumbers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public addEmail(Ljava/lang/String;)V
    .locals 5
    .parameter "email"

    .prologue
    const/4 v3, 0x0

    .line 547
    iget-object v2, p0, Lcom/android/internal/telephony/AdnRecord;->emails:[Ljava/lang/String;

    if-nez v2, :cond_1

    move v2, v3

    :goto_0
    add-int/lit8 v0, v2, 0x1

    .line 549
    .local v0, newLen:I
    iget-object v1, p0, Lcom/android/internal/telephony/AdnRecord;->emails:[Ljava/lang/String;

    .line 550
    .local v1, oldEmails:[Ljava/lang/String;
    new-array v2, v0, [Ljava/lang/String;

    iput-object v2, p0, Lcom/android/internal/telephony/AdnRecord;->emails:[Ljava/lang/String;

    .line 551
    iget-object v2, p0, Lcom/android/internal/telephony/AdnRecord;->emails:[Ljava/lang/String;

    add-int/lit8 v4, v0, -0x1

    aput-object p1, v2, v4

    .line 552
    const/4 v2, 0x1

    if-le v0, v2, :cond_0

    .line 553
    iget-object v2, p0, Lcom/android/internal/telephony/AdnRecord;->emails:[Ljava/lang/String;

    array-length v4, v1

    invoke-static {v1, v3, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 555
    :cond_0
    return-void

    .line 547
    .end local v0           #newLen:I
    .end local v1           #oldEmails:[Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/AdnRecord;->emails:[Ljava/lang/String;

    array-length v2, v2

    goto :goto_0
.end method

.method public appendExtRecord([B)V
    .locals 4
    .parameter "extRecord"

    .prologue
    const/4 v3, 0x2

    .line 452
    :try_start_0
    array-length v1, p1

    const/16 v2, 0xd

    if-eq v1, v2, :cond_1

    .line 474
    :cond_0
    :goto_0
    return-void

    .line 456
    :cond_1
    const/4 v1, 0x0

    aget-byte v1, p1, v1

    and-int/lit8 v1, v1, 0x3

    if-ne v1, v3, :cond_0

    .line 461
    const/4 v1, 0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    const/16 v2, 0xa

    if-gt v1, v2, :cond_0

    .line 466
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    invoke-static {p1, v2, v3}, Landroid/telephony/PhoneNumberUtils;->calledPartyBCDFragmentToString([BII)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 471
    :catch_0
    move-exception v0

    .line 472
    .local v0, ex:Ljava/lang/RuntimeException;
    const-string v1, "GSM"

    const-string v2, "Error parsing AdnRecord ext record"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public buildAdnString(I)[B
    .locals 10
    .parameter "recordSize"

    .prologue
    const/4 v5, 0x0

    const/4 v9, 0x0

    const/4 v8, -0x1

    .line 278
    add-int/lit8 v3, p1, -0xe

    .line 281
    .local v3, footerOffset:I
    new-array v0, p1, [B

    .line 282
    .local v0, adnString:[B
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, p1, :cond_0

    .line 283
    aput-byte v8, v0, v4

    .line 282
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 286
    :cond_0
    iget-object v6, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 287
    const-string v5, "GSM"

    const-string v6, "[buildAdnString] Empty dialing number"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    .end local v0           #adnString:[B
    :cond_1
    :goto_1
    return-object v0

    .line 289
    .restart local v0       #adnString:[B
    :cond_2
    iget-object v6, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-le v6, v3, :cond_3

    .line 290
    const-string v6, "GSM"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[buildAdnString] Max length of tag is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v5

    .line 292
    goto :goto_1

    .line 294
    :cond_3
    iget-object v6, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 295
    iget-object v6, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    invoke-static {v6}, Landroid/telephony/PhoneNumberUtils;->numberToCalledPartyBCD(Ljava/lang/String;)[B

    move-result-object v1

    .line 296
    .local v1, bcdNumber:[B
    array-length v6, v1

    const/16 v7, 0xb

    if-le v6, v7, :cond_4

    .line 297
    const-string v6, "GSM"

    const-string v7, "[buildAnrString] Max length of BCD number is 11"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v5

    .line 298
    goto :goto_1

    .line 300
    :cond_4
    add-int/lit8 v6, v3, 0x1

    array-length v7, v1

    invoke-static {v1, v9, v0, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 303
    add-int/lit8 v6, v3, 0x0

    array-length v7, v1

    int-to-byte v7, v7

    aput-byte v7, v0, v6

    .line 306
    .end local v1           #bcdNumber:[B
    :cond_5
    add-int/lit8 v6, v3, 0xc

    aput-byte v8, v0, v6

    .line 308
    add-int/lit8 v6, v3, 0xd

    aput-byte v8, v0, v6

    .line 311
    iget-object v6, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 312
    iget-object v6, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    invoke-static {v6}, Lcom/android/internal/telephony/AdnRecord;->encode(Ljava/lang/String;)[B

    move-result-object v2

    .line 313
    .local v2, byteTag:[B
    array-length v6, v2

    if-le v6, v3, :cond_6

    .line 314
    const-string v6, "GSM"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[buildAdnString] Max byte length of tag is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v5

    .line 315
    goto/16 :goto_1

    .line 318
    :cond_6
    array-length v5, v2

    invoke-static {v2, v9, v0, v9, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_1
.end method

.method public buildAnrString(ILjava/lang/String;)[B
    .locals 6
    .parameter "recordSize"
    .parameter "anrNumber"

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 335
    new-array v0, p1, [B

    .line 336
    .local v0, anrNumberData:[B
    invoke-static {v0, v4}, Ljava/util/Arrays;->fill([BB)V

    .line 338
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 339
    const-string v2, "GSM"

    const-string v3, "[buildAnrString] Empty dialing anr number"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    .end local v0           #anrNumberData:[B
    :goto_0
    return-object v0

    .line 343
    .restart local v0       #anrNumberData:[B
    :cond_0
    invoke-static {p2}, Landroid/telephony/PhoneNumberUtils;->numberToCalledPartyBCD(Ljava/lang/String;)[B

    move-result-object v1

    .line 344
    .local v1, bcdNumber:[B
    array-length v2, v1

    const/16 v3, 0xb

    if-le v2, v3, :cond_1

    .line 345
    const-string v2, "GSM"

    const-string v3, "[buildAnrString] Max length of BCD number is 11"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    const/4 v0, 0x0

    goto :goto_0

    .line 348
    :cond_1
    const/4 v2, 0x2

    array-length v3, v1

    invoke-static {v1, v5, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 351
    aput-byte v5, v0, v5

    .line 352
    const/4 v2, 0x1

    array-length v3, v1

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 355
    const/16 v2, 0xd

    aput-byte v4, v0, v2

    .line 356
    const/16 v2, 0xe

    aput-byte v4, v0, v2

    goto :goto_0
.end method

.method public buildEmailString(ILjava/lang/String;Z)[B
    .locals 6
    .parameter "recordSize"
    .parameter "email"
    .parameter "isEmailType2"

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 372
    new-array v1, p1, [B

    .line 373
    .local v1, emailData:[B
    invoke-static {v1, v4}, Ljava/util/Arrays;->fill([BB)V

    .line 375
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 376
    const-string v3, "GSM"

    const-string v4, "[buildEmailString] Empty email"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    .end local v1           #emailData:[B
    :cond_0
    :goto_0
    return-object v1

    .line 379
    .restart local v1       #emailData:[B
    :cond_1
    invoke-static {p2}, Lcom/android/internal/telephony/AdnRecord;->encode(Ljava/lang/String;)[B

    move-result-object v0

    .line 383
    .local v0, byteData:[B
    if-eqz p3, :cond_2

    add-int/lit8 v2, p1, -0x2

    .line 385
    .local v2, maxEmailLength:I
    :goto_1
    array-length v3, v0

    if-le v3, v2, :cond_3

    .line 386
    const-string v3, "GSM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[buildEmailString] Max byte length of email is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    const/4 v1, 0x0

    goto :goto_0

    .end local v2           #maxEmailLength:I
    :cond_2
    move v2, p1

    .line 383
    goto :goto_1

    .line 389
    .restart local v2       #maxEmailLength:I
    :cond_3
    array-length v3, v0

    invoke-static {v0, v5, v1, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 392
    if-eqz p3, :cond_0

    .line 393
    aput-byte v4, v1, v2

    .line 395
    add-int/lit8 v3, v2, 0x1

    aput-byte v4, v1, v3

    goto :goto_0
.end method

.method public deleteAllAnr()V
    .locals 1

    .prologue
    .line 657
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->mAnrNumbers:Ljava/util/ArrayList;

    .line 658
    return-void
.end method

.method public deleteAllEmail()V
    .locals 1

    .prologue
    .line 661
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->emails:[Ljava/lang/String;

    .line 662
    return-void
.end method

.method public deleteExt1()V
    .locals 1

    .prologue
    .line 665
    const/16 v0, 0xff

    iput v0, p0, Lcom/android/internal/telephony/AdnRecord;->extRecord:I

    .line 666
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 254
    const/4 v0, 0x0

    return v0
.end method

.method public getAllAnr()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 529
    iget-object v2, p0, Lcom/android/internal/telephony/AdnRecord;->mAnrNumbers:Ljava/util/ArrayList;

    if-nez v2, :cond_0

    const/4 v1, 0x0

    .line 530
    .local v1, count:I
    :goto_0
    if-gtz v1, :cond_1

    const/4 v0, 0x0

    .line 534
    :goto_1
    return-object v0

    .line 529
    .end local v1           #count:I
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/AdnRecord;->mAnrNumbers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    goto :goto_0

    .line 532
    .restart local v1       #count:I
    :cond_1
    new-array v0, v1, [Ljava/lang/String;

    .line 533
    .local v0, anrs:[Ljava/lang/String;
    iget-object v2, p0, Lcom/android/internal/telephony/AdnRecord;->mAnrNumbers:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    goto :goto_1
.end method

.method public getAllAnrAsOneString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 562
    iget-object v3, p0, Lcom/android/internal/telephony/AdnRecord;->mAnrNumbers:Ljava/util/ArrayList;

    if-nez v3, :cond_0

    const/4 v3, 0x0

    .line 569
    :goto_0
    return-object v3

    .line 564
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 565
    .local v2, strBuilder:Ljava/lang/StringBuilder;
    iget-object v3, p0, Lcom/android/internal/telephony/AdnRecord;->mAnrNumbers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 566
    .local v1, singleAnr:Ljava/lang/String;
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 567
    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 569
    .end local v1           #singleAnr:Ljava/lang/String;
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public getAlphaTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    return-object v0
.end method

.method public getEfId()I
    .locals 1

    .prologue
    .line 181
    iget v0, p0, Lcom/android/internal/telephony/AdnRecord;->efid:I

    return v0
.end method

.method public getEmails()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->emails:[Ljava/lang/String;

    return-object v0
.end method

.method public getNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    return-object v0
.end method

.method public getRecordNumber()I
    .locals 1

    .prologue
    .line 185
    iget v0, p0, Lcom/android/internal/telephony/AdnRecord;->recordNumber:I

    return v0
.end method

.method public hasExtendedRecord()Z
    .locals 2

    .prologue
    .line 229
    iget v0, p0, Lcom/android/internal/telephony/AdnRecord;->extRecord:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/internal/telephony/AdnRecord;->extRecord:I

    const/16 v1, 0xff

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/telephony/AdnRecord;->isEmptyEmails()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/telephony/AdnRecord;->isEmptyAnrs()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEmptyAnrs()Z
    .locals 1

    .prologue
    .line 612
    invoke-virtual {p0}, Lcom/android/internal/telephony/AdnRecord;->getAllAnr()[Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/AdnRecord;->isEmptyContent([Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isEmptyEmails()Z
    .locals 1

    .prologue
    .line 608
    invoke-virtual {p0}, Lcom/android/internal/telephony/AdnRecord;->getEmails()[Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/AdnRecord;->isEmptyContent([Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isEqual(Lcom/android/internal/telephony/AdnRecord;)Z
    .locals 2
    .parameter "adn"

    .prologue
    .line 247
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/internal/telephony/AdnRecord;->stringCompareNullEqualsEmpty(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/internal/telephony/AdnRecord;->stringCompareNullEqualsEmpty(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->emails:[Ljava/lang/String;

    iget-object v1, p1, Lcom/android/internal/telephony/AdnRecord;->emails:[Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAlphaTag(Ljava/lang/String;)V
    .locals 0
    .parameter "alphatag"

    .prologue
    .line 173
    iput-object p1, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    .line 174
    return-void
.end method

.method public setEmails([Ljava/lang/String;)V
    .locals 0
    .parameter "emails"

    .prologue
    .line 197
    iput-object p1, p0, Lcom/android/internal/telephony/AdnRecord;->emails:[Ljava/lang/String;

    .line 198
    return-void
.end method

.method public setNumber(Ljava/lang/String;)V
    .locals 0
    .parameter "number"

    .prologue
    .line 189
    iput-object p1, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    .line 190
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 217
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ADN Record \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", emails: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/AdnRecord;->emails:[Ljava/lang/String;

    invoke-static {v1}, Lcom/android/internal/telephony/AdnRecord;->stringArrayToString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", All ANRs: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/telephony/AdnRecord;->getAllAnr()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/AdnRecord;->stringArrayToString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateAnrNumber(ILjava/lang/String;)V
    .locals 1
    .parameter "i"
    .parameter "anrNumber"

    .prologue
    .line 585
    if-gez p1, :cond_0

    .line 594
    :goto_0
    return-void

    .line 589
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->mAnrNumbers:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->mAnrNumbers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 590
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->mAnrNumbers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 592
    :cond_1
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/AdnRecord;->addAnr(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public updateEmail(ILjava/lang/String;)V
    .locals 1
    .parameter "i"
    .parameter "email"

    .prologue
    .line 573
    if-gez p1, :cond_0

    .line 582
    :goto_0
    return-void

    .line 577
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->emails:[Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->emails:[Ljava/lang/String;

    array-length v0, v0

    if-ge p1, v0, :cond_1

    .line 578
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->emails:[Ljava/lang/String;

    aput-object p2, v0, p1

    goto :goto_0

    .line 580
    :cond_1
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/AdnRecord;->addEmail(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 258
    iget v0, p0, Lcom/android/internal/telephony/AdnRecord;->efid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 259
    iget v0, p0, Lcom/android/internal/telephony/AdnRecord;->recordNumber:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 260
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 261
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 262
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->emails:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 263
    invoke-virtual {p0}, Lcom/android/internal/telephony/AdnRecord;->getAllAnr()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 264
    return-void
.end method

.class Landroid/telephony/KoreanPhoneNumberFormatter;
.super Ljava/lang/Object;
.source "KoreanPhoneNumberFormatter.java"


# static fields
.field private static final FORMAT_MIN_LENGTH:I = 0x3

.field private static final KOREA_COMMON_NUMBER:I = 0x1

.field static final KOREA_COUNTRY_CODE:Ljava/lang/String; = "+82"

.field private static final KOREA_SEOUL_LANDLINE:I = 0x3

.field private static final KOREA_SPECIAL_NUMBER:I = 0x2


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static deleteChar(Landroid/text/Editable;C)V
    .locals 2
    .parameter "text"
    .parameter "theChar"

    .prologue
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-interface {p0, v0}, Landroid/text/Editable;->charAt(I)C

    move-result v1

    if-ne v1, p1, :cond_0

    add-int/lit8 v1, v0, 0x1

    invoke-interface {p0, v0, v1}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static format(Landroid/text/Editable;)V
    .locals 20
    .parameter "text"

    .prologue
    invoke-interface/range {p0 .. p0}, Landroid/text/Editable;->length()I

    move-result v16

    .local v16, textLen:I
    const/16 v17, 0x3

    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v17, "+82"

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v13

    .local v13, prefixLen:I
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    .local v15, saved:Ljava/lang/String;
    const/4 v14, 0x0

    .local v14, rootIndex:I
    move/from16 v0, v16

    if-le v0, v13, :cond_2

    const-string v17, "+82"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_2

    move v14, v13

    :cond_2
    const/16 v17, 0x2d

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-static {v0, v1}, Landroid/telephony/KoreanPhoneNumberFormatter;->deleteChar(Landroid/text/Editable;C)V

    invoke-interface/range {p0 .. p0}, Landroid/text/Editable;->length()I

    move-result v16

    sub-int v6, v16, v14

    .local v6, digiLength:I
    const/16 v17, 0x3

    move/from16 v0, v17

    new-array v5, v0, [I

    .local v5, dashPositions:[I
    const/4 v8, 0x0

    .local v8, numDashes:I
    const/4 v10, 0x0

    .local v10, numDigits:I
    const/4 v11, 0x1

    .local v11, numType:I
    if-lez v14, :cond_3

    add-int/lit8 v9, v8, 0x1

    .end local v8           #numDashes:I
    .local v9, numDashes:I
    aput v14, v5, v8

    move v8, v9

    .end local v9           #numDashes:I
    .restart local v8       #numDashes:I
    :cond_3
    move v7, v14

    .local v7, i:I
    move v9, v8

    .end local v8           #numDashes:I
    .restart local v9       #numDashes:I
    :goto_1
    move/from16 v0, v16

    if-ge v7, v0, :cond_11

    move-object/from16 v0, p0

    invoke-interface {v0, v7}, Landroid/text/Editable;->charAt(I)C

    move-result v4

    .local v4, c:C
    packed-switch v4, :pswitch_data_0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v16

    invoke-interface {v0, v1, v2, v15}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_0

    :pswitch_0
    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v10, v0, :cond_4

    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v11, v0, :cond_4

    const/4 v11, 0x3

    add-int/lit8 v8, v9, 0x1

    .end local v9           #numDashes:I
    .restart local v8       #numDashes:I
    add-int/lit8 v17, v7, 0x1

    aput v17, v5, v9

    add-int/lit8 v10, v10, 0x1

    :goto_2
    add-int/lit8 v7, v7, 0x1

    move v9, v8

    .end local v8           #numDashes:I
    .restart local v9       #numDashes:I
    goto :goto_1

    :cond_4
    if-nez v10, :cond_5

    const/4 v11, 0x2

    add-int/lit8 v10, v10, 0x1

    move v8, v9

    .end local v9           #numDashes:I
    .restart local v8       #numDashes:I
    goto :goto_2

    .end local v8           #numDashes:I
    .restart local v9       #numDashes:I
    :cond_5
    :pswitch_1
    if-nez v10, :cond_6

    const/4 v11, 0x1

    add-int/lit8 v10, v10, 0x1

    move v8, v9

    .end local v9           #numDashes:I
    .restart local v8       #numDashes:I
    goto :goto_2

    .end local v8           #numDashes:I
    .restart local v9       #numDashes:I
    :cond_6
    :pswitch_2
    if-nez v10, :cond_7

    const/4 v11, 0x2

    add-int/lit8 v10, v10, 0x1

    move v8, v9

    .end local v9           #numDashes:I
    .restart local v8       #numDashes:I
    goto :goto_2

    .end local v8           #numDashes:I
    .restart local v9       #numDashes:I
    :cond_7
    const/16 v17, 0x3

    move/from16 v0, v17

    if-ne v11, v0, :cond_a

    const/16 v17, 0x5

    move/from16 v0, v17

    if-ne v10, v0, :cond_8

    const/16 v17, 0xa

    move/from16 v0, v17

    if-lt v6, v0, :cond_9

    :cond_8
    const/16 v17, 0x6

    move/from16 v0, v17

    if-ne v10, v0, :cond_12

    const/16 v17, 0xa

    move/from16 v0, v17

    if-lt v6, v0, :cond_12

    :cond_9
    add-int/lit8 v8, v9, 0x1

    .end local v9           #numDashes:I
    .restart local v8       #numDashes:I
    aput v7, v5, v9

    :goto_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .end local v8           #numDashes:I
    .restart local v9       #numDashes:I
    :cond_a
    const/16 v17, 0x2

    move/from16 v0, v17

    if-ne v11, v0, :cond_e

    const/16 v17, 0x3

    move/from16 v0, v17

    if-ne v10, v0, :cond_b

    const/16 v17, 0x8

    move/from16 v0, v17

    if-lt v6, v0, :cond_d

    :cond_b
    const/16 v17, 0x4

    move/from16 v0, v17

    if-eq v10, v0, :cond_c

    const/16 v17, 0x8

    move/from16 v0, v17

    if-ne v10, v0, :cond_12

    :cond_c
    const/16 v17, 0x8

    move/from16 v0, v17

    if-lt v6, v0, :cond_12

    :cond_d
    add-int/lit8 v8, v9, 0x1

    .end local v9           #numDashes:I
    .restart local v8       #numDashes:I
    aput v7, v5, v9

    goto :goto_3

    .end local v8           #numDashes:I
    .restart local v9       #numDashes:I
    :cond_e
    const/16 v17, 0x3

    move/from16 v0, v17

    if-eq v10, v0, :cond_10

    const/16 v17, 0x6

    move/from16 v0, v17

    if-ne v10, v0, :cond_f

    const/16 v17, 0xb

    move/from16 v0, v17

    if-lt v6, v0, :cond_10

    :cond_f
    const/16 v17, 0x7

    move/from16 v0, v17

    if-ne v10, v0, :cond_12

    const/16 v17, 0xb

    move/from16 v0, v17

    if-lt v6, v0, :cond_12

    :cond_10
    add-int/lit8 v8, v9, 0x1

    .end local v9           #numDashes:I
    .restart local v8       #numDashes:I
    aput v7, v5, v9

    goto :goto_3

    .end local v4           #c:C
    .end local v8           #numDashes:I
    .restart local v9       #numDashes:I
    :cond_11
    const/4 v7, 0x0

    :goto_4
    if-ge v7, v9, :cond_0

    aget v12, v5, v7

    .local v12, pos:I
    add-int v17, v12, v7

    add-int v18, v12, v7

    const-string v19, "-"

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    move-object/from16 v3, v19

    invoke-interface {v0, v1, v2, v3}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .end local v12           #pos:I
    .restart local v4       #c:C
    :cond_12
    move v8, v9

    .end local v9           #numDashes:I
    .restart local v8       #numDashes:I
    goto :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

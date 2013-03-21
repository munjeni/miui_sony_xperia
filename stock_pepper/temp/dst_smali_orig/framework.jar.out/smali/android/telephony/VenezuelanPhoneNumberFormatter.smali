.class Landroid/telephony/VenezuelanPhoneNumberFormatter;
.super Ljava/lang/Object;
.source "VenezuelanPhoneNumberFormatter.java"


# static fields
.field private static final DASH_INTERVAL:I = 0x4

.field private static final FORMAT_MAX_DASH:I = 0x2

.field private static final FORMAT_MIN_LENGTH:I = 0x5


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static deleteAll(Landroid/text/Editable;C)V
    .locals 2
    .parameter "text"
    .parameter "c"

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
    .locals 2
    .parameter "text"

    .prologue
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    const/16 v0, 0x2d

    invoke-static {p0, v0}, Landroid/telephony/VenezuelanPhoneNumberFormatter;->deleteAll(Landroid/text/Editable;C)V

    invoke-static {p0}, Landroid/telephony/VenezuelanPhoneNumberFormatter;->formatProcess(Landroid/text/Editable;)V

    goto :goto_0
.end method

.method private static formatProcess(Landroid/text/Editable;)V
    .locals 6
    .parameter "text"

    .prologue
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v4

    .local v4, textLength:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v4, :cond_2

    invoke-interface {p0, v0}, Landroid/text/Editable;->charAt(I)C

    move-result v5

    invoke-static {v5}, Landroid/telephony/VenezuelanPhoneNumberFormatter;->isSpecialCharacter(C)Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    return-void

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .local v1, numDashes:I
    const/4 v2, 0x4

    .local v2, place:I
    :goto_1
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v5

    if-ge v2, v5, :cond_0

    const/4 v5, 0x2

    if-ge v1, v5, :cond_0

    add-int/lit8 v3, v2, 0x1

    .end local v2           #place:I
    .local v3, place:I
    const-string v5, "-"

    invoke-interface {p0, v2, v5}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v3, 0x4

    .end local v3           #place:I
    .restart local v2       #place:I
    goto :goto_1
.end method

.method private static isSpecialCharacter(C)Z
    .locals 1
    .parameter "c"

    .prologue
    const/16 v0, 0x23

    if-eq p0, v0, :cond_0

    const/16 v0, 0x2a

    if-eq p0, v0, :cond_0

    const/16 v0, 0x2b

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

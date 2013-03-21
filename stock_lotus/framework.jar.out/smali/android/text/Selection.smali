.class public Landroid/text/Selection;
.super Ljava/lang/Object;
.source "Selection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/Selection$1;,
        Landroid/text/Selection$LEADING_START;,
        Landroid/text/Selection$END;,
        Landroid/text/Selection$START;,
        Landroid/text/Selection$PositionIterator;
    }
.end annotation


# static fields
.field public static final SELECTION_END:Ljava/lang/Object;

.field public static final SELECTION_LEADING_START:Ljava/lang/Object;

.field public static final SELECTION_START:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 486
    new-instance v0, Landroid/text/Selection$START;

    invoke-direct {v0, v1}, Landroid/text/Selection$START;-><init>(Landroid/text/Selection$1;)V

    sput-object v0, Landroid/text/Selection;->SELECTION_START:Ljava/lang/Object;

    .line 487
    new-instance v0, Landroid/text/Selection$END;

    invoke-direct {v0, v1}, Landroid/text/Selection$END;-><init>(Landroid/text/Selection$1;)V

    sput-object v0, Landroid/text/Selection;->SELECTION_END:Ljava/lang/Object;

    .line 503
    new-instance v0, Landroid/text/Selection$LEADING_START;

    invoke-direct {v0, v1}, Landroid/text/Selection$LEADING_START;-><init>(Landroid/text/Selection$1;)V

    sput-object v0, Landroid/text/Selection;->SELECTION_LEADING_START:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static chooseHorizontal(Landroid/text/Layout;III)I
    .locals 7
    .parameter "layout"
    .parameter "direction"
    .parameter "off1"
    .parameter "off2"

    .prologue
    .line 437
    invoke-virtual {p0, p2}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v3

    .line 438
    .local v3, line1:I
    invoke-virtual {p0, p3}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v4

    .line 440
    .local v4, line2:I
    if-ne v3, v4, :cond_3

    .line 443
    invoke-virtual {p0, p2}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v0

    .line 444
    .local v0, h1:F
    invoke-virtual {p0, p3}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v1

    .line 446
    .local v1, h2:F
    if-gez p1, :cond_2

    .line 449
    cmpg-float v6, v0, v1

    if-gez v6, :cond_1

    .line 474
    .end local v0           #h1:F
    .end local v1           #h2:F
    .end local p2
    :cond_0
    :goto_0
    return p2

    .restart local v0       #h1:F
    .restart local v1       #h2:F
    .restart local p2
    :cond_1
    move p2, p3

    .line 452
    goto :goto_0

    .line 456
    :cond_2
    cmpl-float v6, v0, v1

    if-gtz v6, :cond_0

    move p2, p3

    .line 459
    goto :goto_0

    .line 468
    .end local v0           #h1:F
    .end local v1           #h2:F
    :cond_3
    invoke-virtual {p0, p2}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v2

    .line 469
    .local v2, line:I
    invoke-virtual {p0, v2}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v5

    .line 471
    .local v5, textdir:I
    if-ne v5, p1, :cond_4

    .line 472
    invoke-static {p2, p3}, Ljava/lang/Math;->max(II)I

    move-result p2

    goto :goto_0

    .line 474
    :cond_4
    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result p2

    goto :goto_0
.end method

.method public static extendDown(Landroid/text/Spannable;Landroid/text/Layout;)Z
    .locals 7
    .parameter "text"
    .parameter "layout"

    .prologue
    const/4 v6, 0x1

    .line 302
    invoke-static {p0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    .line 303
    .local v0, end:I
    invoke-virtual {p1, v0}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v2

    .line 305
    .local v2, line:I
    invoke-virtual {p1}, Landroid/text/Layout;->getLineCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ge v2, v4, :cond_2

    .line 308
    invoke-virtual {p1, v2}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v4

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {p1, v5}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v5

    if-ne v4, v5, :cond_1

    .line 310
    invoke-virtual {p1, v0}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v1

    .line 311
    .local v1, h:F
    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p1, v4, v1}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v3

    .line 316
    .end local v1           #h:F
    .local v3, move:I
    :goto_0
    invoke-static {p0, v3}, Landroid/text/Selection;->extendSelection(Landroid/text/Spannable;I)V

    .line 323
    .end local v3           #move:I
    :cond_0
    :goto_1
    return v6

    .line 313
    :cond_1
    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p1, v4}, Landroid/text/Layout;->getLineStart(I)I

    move-result v3

    .restart local v3       #move:I
    goto :goto_0

    .line 318
    .end local v3           #move:I
    :cond_2
    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v4

    if-eq v0, v4, :cond_0

    .line 319
    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v4

    invoke-static {p0, v4}, Landroid/text/Selection;->extendSelection(Landroid/text/Spannable;I)V

    goto :goto_1
.end method

.method public static extendLeft(Landroid/text/Spannable;Landroid/text/Layout;)Z
    .locals 3
    .parameter "text"
    .parameter "layout"

    .prologue
    const/4 v2, 0x1

    .line 331
    invoke-static {p0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    .line 332
    .local v0, end:I
    invoke-virtual {p1, v0}, Landroid/text/Layout;->getOffsetToLeftOf(I)I

    move-result v1

    .line 334
    .local v1, to:I
    if-eq v1, v0, :cond_0

    .line 335
    invoke-static {p0, v1}, Landroid/text/Selection;->extendSelection(Landroid/text/Spannable;I)V

    .line 339
    :cond_0
    return v2
.end method

.method public static extendRight(Landroid/text/Spannable;Landroid/text/Layout;)Z
    .locals 3
    .parameter "text"
    .parameter "layout"

    .prologue
    const/4 v2, 0x1

    .line 347
    invoke-static {p0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    .line 348
    .local v0, end:I
    invoke-virtual {p1, v0}, Landroid/text/Layout;->getOffsetToRightOf(I)I

    move-result v1

    .line 350
    .local v1, to:I
    if-eq v1, v0, :cond_0

    .line 351
    invoke-static {p0, v1}, Landroid/text/Selection;->extendSelection(Landroid/text/Spannable;I)V

    .line 355
    :cond_0
    return v2
.end method

.method public static final extendSelection(Landroid/text/Spannable;I)V
    .locals 2
    .parameter "text"
    .parameter "index"

    .prologue
    .line 118
    sget-object v0, Landroid/text/Selection;->SELECTION_END:Ljava/lang/Object;

    invoke-interface {p0, v0}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 119
    sget-object v0, Landroid/text/Selection;->SELECTION_END:Ljava/lang/Object;

    const/16 v1, 0x22

    invoke-interface {p0, v0, p1, p1, v1}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 120
    :cond_0
    return-void
.end method

.method public static extendToLeftEdge(Landroid/text/Spannable;Landroid/text/Layout;)Z
    .locals 2
    .parameter "text"
    .parameter "layout"

    .prologue
    .line 359
    const/4 v1, -0x1

    invoke-static {p0, p1, v1}, Landroid/text/Selection;->findEdge(Landroid/text/Spannable;Landroid/text/Layout;I)I

    move-result v0

    .line 360
    .local v0, where:I
    invoke-static {p0, v0}, Landroid/text/Selection;->extendSelection(Landroid/text/Spannable;I)V

    .line 361
    const/4 v1, 0x1

    return v1
.end method

.method public static extendToRightEdge(Landroid/text/Spannable;Landroid/text/Layout;)Z
    .locals 2
    .parameter "text"
    .parameter "layout"

    .prologue
    const/4 v1, 0x1

    .line 365
    invoke-static {p0, p1, v1}, Landroid/text/Selection;->findEdge(Landroid/text/Spannable;Landroid/text/Layout;I)I

    move-result v0

    .line 366
    .local v0, where:I
    invoke-static {p0, v0}, Landroid/text/Selection;->extendSelection(Landroid/text/Spannable;I)V

    .line 367
    return v1
.end method

.method public static extendUp(Landroid/text/Spannable;Landroid/text/Layout;)Z
    .locals 7
    .parameter "text"
    .parameter "layout"

    .prologue
    const/4 v6, 0x1

    .line 273
    invoke-static {p0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    .line 274
    .local v0, end:I
    invoke-virtual {p1, v0}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v2

    .line 276
    .local v2, line:I
    if-lez v2, :cond_2

    .line 279
    invoke-virtual {p1, v2}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v4

    add-int/lit8 v5, v2, -0x1

    invoke-virtual {p1, v5}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v5

    if-ne v4, v5, :cond_1

    .line 281
    invoke-virtual {p1, v0}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v1

    .line 282
    .local v1, h:F
    add-int/lit8 v4, v2, -0x1

    invoke-virtual {p1, v4, v1}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v3

    .line 287
    .end local v1           #h:F
    .local v3, move:I
    :goto_0
    invoke-static {p0, v3}, Landroid/text/Selection;->extendSelection(Landroid/text/Spannable;I)V

    .line 294
    .end local v3           #move:I
    :cond_0
    :goto_1
    return v6

    .line 284
    :cond_1
    add-int/lit8 v4, v2, -0x1

    invoke-virtual {p1, v4}, Landroid/text/Layout;->getLineStart(I)I

    move-result v3

    .restart local v3       #move:I
    goto :goto_0

    .line 289
    .end local v3           #move:I
    :cond_2
    if-eqz v0, :cond_0

    .line 290
    const/4 v4, 0x0

    invoke-static {p0, v4}, Landroid/text/Selection;->extendSelection(Landroid/text/Spannable;I)V

    goto :goto_1
.end method

.method private static findEdge(Landroid/text/Spannable;Landroid/text/Layout;I)I
    .locals 5
    .parameter "text"
    .parameter "layout"
    .parameter "dir"

    .prologue
    .line 419
    invoke-static {p0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v3

    .line 420
    .local v3, pt:I
    invoke-virtual {p1, v3}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v1

    .line 421
    .local v1, line:I
    invoke-virtual {p1, v1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v2

    .line 423
    .local v2, pdir:I
    mul-int v4, p2, v2

    if-gez v4, :cond_1

    .line 424
    invoke-virtual {p1, v1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v0

    .line 431
    :cond_0
    :goto_0
    return v0

    .line 426
    :cond_1
    invoke-virtual {p1, v1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v0

    .line 428
    .local v0, end:I
    invoke-virtual {p1}, Landroid/text/Layout;->getLineCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-eq v1, v4, :cond_0

    .line 431
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public static getCursorPosition(Ljava/lang/CharSequence;Landroid/text/Layout$CursorPosition;)Landroid/text/Layout$CursorPosition;
    .locals 3
    .parameter "text"
    .parameter "pos"

    .prologue
    .line 514
    if-nez p1, :cond_0

    .line 515
    new-instance p1, Landroid/text/Layout$CursorPosition;

    .end local p1
    invoke-direct {p1}, Landroid/text/Layout$CursorPosition;-><init>()V

    .line 517
    .restart local p1
    :cond_0
    invoke-static {p0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v1

    .line 519
    .local v1, trailing:I
    instance-of v2, p0, Landroid/text/Spanned;

    if-eqz v2, :cond_1

    .line 520
    check-cast p0, Landroid/text/Spanned;

    .end local p0
    sget-object v2, Landroid/text/Selection;->SELECTION_LEADING_START:Ljava/lang/Object;

    invoke-interface {p0, v2}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    .line 525
    .local v0, lead:I
    :goto_0
    invoke-virtual {p1, v0, v1}, Landroid/text/Layout$CursorPosition;->setAbsPositions(II)V

    .line 527
    return-object p1

    .line 522
    .end local v0           #lead:I
    .restart local p0
    :cond_1
    move v0, v1

    .restart local v0       #lead:I
    goto :goto_0
.end method

.method public static final getSelectionEnd(Ljava/lang/CharSequence;)I
    .locals 1
    .parameter "text"

    .prologue
    .line 54
    instance-of v0, p0, Landroid/text/Spanned;

    if-eqz v0, :cond_0

    .line 55
    check-cast p0, Landroid/text/Spanned;

    .end local p0
    sget-object v0, Landroid/text/Selection;->SELECTION_END:Ljava/lang/Object;

    invoke-interface {p0, v0}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    .line 57
    :goto_0
    return v0

    .restart local p0
    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static final getSelectionStart(Ljava/lang/CharSequence;)I
    .locals 1
    .parameter "text"

    .prologue
    .line 43
    instance-of v0, p0, Landroid/text/Spanned;

    if-eqz v0, :cond_0

    .line 44
    check-cast p0, Landroid/text/Spanned;

    .end local p0
    sget-object v0, Landroid/text/Selection;->SELECTION_START:Ljava/lang/Object;

    invoke-interface {p0, v0}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    .line 46
    :goto_0
    return v0

    .restart local p0
    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static moveDown(Landroid/text/Spannable;Landroid/text/Layout;)Z
    .locals 10
    .parameter "text"
    .parameter "layout"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 181
    invoke-static {p0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v6

    .line 182
    .local v6, start:I
    invoke-static {p0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    .line 184
    .local v0, end:I
    if-eq v6, v0, :cond_2

    .line 185
    invoke-static {v6, v0}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 186
    .local v4, min:I
    invoke-static {v6, v0}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 188
    .local v3, max:I
    invoke-static {p0, v3}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 190
    if-nez v4, :cond_1

    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v9

    if-ne v3, v9, :cond_1

    .line 214
    .end local v3           #max:I
    .end local v4           #min:I
    :cond_0
    :goto_0
    return v7

    .restart local v3       #max:I
    .restart local v4       #min:I
    :cond_1
    move v7, v8

    .line 194
    goto :goto_0

    .line 196
    .end local v3           #max:I
    .end local v4           #min:I
    :cond_2
    invoke-virtual {p1, v0}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v2

    .line 198
    .local v2, line:I
    invoke-virtual {p1}, Landroid/text/Layout;->getLineCount()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    if-ge v2, v9, :cond_0

    .line 201
    invoke-virtual {p1, v2}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v7

    add-int/lit8 v9, v2, 0x1

    invoke-virtual {p1, v9}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v9

    if-ne v7, v9, :cond_3

    .line 203
    invoke-virtual {p1, v0}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v1

    .line 204
    .local v1, h:F
    add-int/lit8 v7, v2, 0x1

    invoke-virtual {p1, v7, v1}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v5

    .line 209
    .end local v1           #h:F
    .local v5, move:I
    :goto_1
    invoke-static {p0, v5}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    move v7, v8

    .line 210
    goto :goto_0

    .line 206
    .end local v5           #move:I
    :cond_3
    add-int/lit8 v7, v2, 0x1

    invoke-virtual {p1, v7}, Landroid/text/Layout;->getLineStart(I)I

    move-result v5

    .restart local v5       #move:I
    goto :goto_1
.end method

.method public static moveLeft(Landroid/text/Spannable;Landroid/text/Layout;)Z
    .locals 5
    .parameter "text"
    .parameter "layout"

    .prologue
    const/4 v3, 0x1

    .line 223
    invoke-static {p0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v2

    .line 224
    .local v2, start:I
    invoke-static {p0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    .line 226
    .local v0, end:I
    if-eq v2, v0, :cond_1

    .line 227
    const/4 v4, -0x1

    invoke-static {p1, v4, v2, v0}, Landroid/text/Selection;->chooseHorizontal(Landroid/text/Layout;III)I

    move-result v4

    invoke-static {p0, v4}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 239
    :cond_0
    :goto_0
    return v3

    .line 230
    :cond_1
    const/4 v4, 0x0

    invoke-static {p0, v4}, Landroid/text/Selection;->getCursorPosition(Ljava/lang/CharSequence;Landroid/text/Layout$CursorPosition;)Landroid/text/Layout$CursorPosition;

    move-result-object v1

    .line 231
    .local v1, pos:Landroid/text/Layout$CursorPosition;
    invoke-virtual {p1, v1}, Landroid/text/Layout;->getOffsetToLeftOf(Landroid/text/Layout$CursorPosition;)V

    .line 233
    invoke-static {p0, v1}, Landroid/text/Selection;->setCursorPosition(Landroid/text/Spannable;Landroid/text/Layout$CursorPosition;)V

    .line 234
    invoke-virtual {v1}, Landroid/text/Layout$CursorPosition;->getLogicalIndex()I

    move-result v4

    if-ne v2, v4, :cond_0

    .line 239
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static moveRight(Landroid/text/Spannable;Landroid/text/Layout;)Z
    .locals 5
    .parameter "text"
    .parameter "layout"

    .prologue
    const/4 v3, 0x1

    .line 249
    invoke-static {p0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v2

    .line 250
    .local v2, start:I
    invoke-static {p0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    .line 252
    .local v0, end:I
    if-eq v2, v0, :cond_1

    .line 253
    invoke-static {p1, v3, v2, v0}, Landroid/text/Selection;->chooseHorizontal(Landroid/text/Layout;III)I

    move-result v4

    invoke-static {p0, v4}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 265
    :cond_0
    :goto_0
    return v3

    .line 256
    :cond_1
    const/4 v4, 0x0

    invoke-static {p0, v4}, Landroid/text/Selection;->getCursorPosition(Ljava/lang/CharSequence;Landroid/text/Layout$CursorPosition;)Landroid/text/Layout$CursorPosition;

    move-result-object v1

    .line 257
    .local v1, pos:Landroid/text/Layout$CursorPosition;
    invoke-virtual {p1, v1}, Landroid/text/Layout;->getOffsetToRightOf(Landroid/text/Layout$CursorPosition;)V

    .line 259
    invoke-static {p0, v1}, Landroid/text/Selection;->setCursorPosition(Landroid/text/Spannable;Landroid/text/Layout$CursorPosition;)V

    .line 260
    invoke-virtual {v1}, Landroid/text/Layout$CursorPosition;->getLogicalIndex()I

    move-result v4

    if-ne v2, v4, :cond_0

    .line 265
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static moveToFollowing(Landroid/text/Spannable;Landroid/text/Selection$PositionIterator;Z)Z
    .locals 2
    .parameter "text"
    .parameter "iter"
    .parameter "extendSelection"

    .prologue
    .line 407
    invoke-static {p0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/text/Selection$PositionIterator;->following(I)I

    move-result v0

    .line 408
    .local v0, offset:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 409
    if-eqz p2, :cond_1

    .line 410
    invoke-static {p0, v0}, Landroid/text/Selection;->extendSelection(Landroid/text/Spannable;I)V

    .line 415
    :cond_0
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 412
    :cond_1
    invoke-static {p0, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    goto :goto_0
.end method

.method public static moveToLeftEdge(Landroid/text/Spannable;Landroid/text/Layout;)Z
    .locals 2
    .parameter "text"
    .parameter "layout"

    .prologue
    .line 371
    const/4 v1, -0x1

    invoke-static {p0, p1, v1}, Landroid/text/Selection;->findEdge(Landroid/text/Spannable;Landroid/text/Layout;I)I

    move-result v0

    .line 372
    .local v0, where:I
    invoke-static {p0, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 373
    const/4 v1, 0x1

    return v1
.end method

.method public static moveToPreceding(Landroid/text/Spannable;Landroid/text/Selection$PositionIterator;Z)Z
    .locals 2
    .parameter "text"
    .parameter "iter"
    .parameter "extendSelection"

    .prologue
    .line 393
    invoke-static {p0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/text/Selection$PositionIterator;->preceding(I)I

    move-result v0

    .line 394
    .local v0, offset:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 395
    if-eqz p2, :cond_1

    .line 396
    invoke-static {p0, v0}, Landroid/text/Selection;->extendSelection(Landroid/text/Spannable;I)V

    .line 401
    :cond_0
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 398
    :cond_1
    invoke-static {p0, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    goto :goto_0
.end method

.method public static moveToRightEdge(Landroid/text/Spannable;Landroid/text/Layout;)Z
    .locals 2
    .parameter "text"
    .parameter "layout"

    .prologue
    const/4 v1, 0x1

    .line 377
    invoke-static {p0, p1, v1}, Landroid/text/Selection;->findEdge(Landroid/text/Spannable;Landroid/text/Layout;I)I

    move-result v0

    .line 378
    .local v0, where:I
    invoke-static {p0, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 379
    return v1
.end method

.method public static moveUp(Landroid/text/Spannable;Landroid/text/Layout;)Z
    .locals 10
    .parameter "text"
    .parameter "layout"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 140
    invoke-static {p0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v6

    .line 141
    .local v6, start:I
    invoke-static {p0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    .line 143
    .local v0, end:I
    if-eq v6, v0, :cond_2

    .line 144
    invoke-static {v6, v0}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 145
    .local v4, min:I
    invoke-static {v6, v0}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 147
    .local v3, max:I
    invoke-static {p0, v4}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 149
    if-nez v4, :cond_1

    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v9

    if-ne v3, v9, :cond_1

    .line 173
    .end local v3           #max:I
    .end local v4           #min:I
    :cond_0
    :goto_0
    return v7

    .restart local v3       #max:I
    .restart local v4       #min:I
    :cond_1
    move v7, v8

    .line 153
    goto :goto_0

    .line 155
    .end local v3           #max:I
    .end local v4           #min:I
    :cond_2
    invoke-virtual {p1, v0}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v2

    .line 157
    .local v2, line:I
    if-lez v2, :cond_0

    .line 160
    invoke-virtual {p1, v2}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v7

    add-int/lit8 v9, v2, -0x1

    invoke-virtual {p1, v9}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v9

    if-ne v7, v9, :cond_3

    .line 162
    invoke-virtual {p1, v0}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v1

    .line 163
    .local v1, h:F
    add-int/lit8 v7, v2, -0x1

    invoke-virtual {p1, v7, v1}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v5

    .line 168
    .end local v1           #h:F
    .local v5, move:I
    :goto_1
    invoke-static {p0, v5}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    move v7, v8

    .line 169
    goto :goto_0

    .line 165
    .end local v5           #move:I
    :cond_3
    add-int/lit8 v7, v2, -0x1

    invoke-virtual {p1, v7}, Landroid/text/Layout;->getLineStart(I)I

    move-result v5

    .restart local v5       #move:I
    goto :goto_1
.end method

.method public static final removeSelection(Landroid/text/Spannable;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 126
    sget-object v0, Landroid/text/Selection;->SELECTION_LEADING_START:Ljava/lang/Object;

    invoke-interface {p0, v0}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 127
    sget-object v0, Landroid/text/Selection;->SELECTION_START:Ljava/lang/Object;

    invoke-interface {p0, v0}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 128
    sget-object v0, Landroid/text/Selection;->SELECTION_END:Ljava/lang/Object;

    invoke-interface {p0, v0}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 129
    return-void
.end method

.method public static final selectAll(Landroid/text/Spannable;)V
    .locals 2
    .parameter "text"

    .prologue
    const/4 v1, 0x0

    .line 111
    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v0

    invoke-static {p0, v1, v1, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;III)V

    .line 112
    return-void
.end method

.method public static setCursorPosition(Landroid/text/Spannable;Landroid/text/Layout$CursorPosition;)V
    .locals 2
    .parameter "text"
    .parameter "pos"

    .prologue
    .line 538
    invoke-virtual {p1}, Landroid/text/Layout$CursorPosition;->getTrailingAbsPos()I

    move-result v0

    .line 539
    .local v0, trail:I
    invoke-virtual {p1}, Landroid/text/Layout$CursorPosition;->getLeadingAbsPos()I

    move-result v1

    invoke-static {p0, v1, v0, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;III)V

    .line 540
    return-void
.end method

.method public static final setSelection(Landroid/text/Spannable;I)V
    .locals 0
    .parameter "text"
    .parameter "index"

    .prologue
    .line 104
    invoke-static {p0, p1, p1, p1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;III)V

    .line 105
    return-void
.end method

.method public static setSelection(Landroid/text/Spannable;II)V
    .locals 0
    .parameter "text"
    .parameter "start"
    .parameter "stop"

    .prologue
    .line 73
    invoke-static {p0, p1, p1, p2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;III)V

    .line 74
    return-void
.end method

.method public static setSelection(Landroid/text/Spannable;III)V
    .locals 5
    .parameter "text"
    .parameter "leading"
    .parameter "start"
    .parameter "stop"

    .prologue
    const/16 v4, 0x222

    .line 86
    invoke-static {p0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v2

    .line 87
    .local v2, ostart:I
    invoke-static {p0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    .line 88
    .local v0, oend:I
    sget-object v3, Landroid/text/Selection;->SELECTION_LEADING_START:Ljava/lang/Object;

    invoke-interface {p0, v3}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v1

    .line 90
    .local v1, olead:I
    if-ne v1, p1, :cond_0

    if-ne v2, p2, :cond_0

    if-eq v0, p3, :cond_1

    .line 91
    :cond_0
    sget-object v3, Landroid/text/Selection;->SELECTION_LEADING_START:Ljava/lang/Object;

    invoke-interface {p0, v3, p1, p1, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 93
    sget-object v3, Landroid/text/Selection;->SELECTION_START:Ljava/lang/Object;

    invoke-interface {p0, v3, p2, p2, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 95
    sget-object v3, Landroid/text/Selection;->SELECTION_END:Ljava/lang/Object;

    const/16 v4, 0x22

    invoke-interface {p0, v3, p3, p3, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 98
    :cond_1
    return-void
.end method

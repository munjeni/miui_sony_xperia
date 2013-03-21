.class public Landroid/text/DynamicLayout;
.super Landroid/text/Layout;
.source "DynamicLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/DynamicLayout$ChangeWatcher;
    }
.end annotation


# static fields
.field private static final ELLIPSIS_UNDEFINED:I = -0x80000000

.field private static final PRIORITY:I = 0x80


# instance fields
.field private final mBase:Ljava/lang/CharSequence;

.field private final mDisplay:Ljava/lang/CharSequence;

.field private mWatcher:Landroid/text/DynamicLayout$ChangeWatcher;


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V
    .locals 9
    .parameter "base"
    .parameter "paint"
    .parameter "width"
    .parameter "align"
    .parameter "spacingmult"
    .parameter "spacingadd"
    .parameter "includepad"

    .prologue
    .line 48
    move-object v0, p0

    move-object v1, p1

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    move v7, p6

    move/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Landroid/text/DynamicLayout;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 50
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V
    .locals 11
    .parameter "base"
    .parameter "display"
    .parameter "paint"
    .parameter "width"
    .parameter "align"
    .parameter "spacingmult"
    .parameter "spacingadd"
    .parameter "includepad"

    .prologue
    .line 62
    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-direct/range {v0 .. v10}, Landroid/text/DynamicLayout;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;I)V

    .line 64
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;I)V
    .locals 12
    .parameter "base"
    .parameter "display"
    .parameter "paint"
    .parameter "width"
    .parameter "align"
    .parameter "spacingmult"
    .parameter "spacingadd"
    .parameter "includepad"
    .parameter "ellipsize"
    .parameter "ellipsizedWidth"

    .prologue
    .line 79
    sget-object v6, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    move/from16 v11, p10

    invoke-direct/range {v0 .. v11}, Landroid/text/DynamicLayout;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZLandroid/text/TextUtils$TruncateAt;I)V

    .line 81
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZLandroid/text/TextUtils$TruncateAt;I)V
    .locals 15
    .parameter "base"
    .parameter "display"
    .parameter "paint"
    .parameter "width"
    .parameter "align"
    .parameter "textDir"
    .parameter "spacingmult"
    .parameter "spacingadd"
    .parameter "includepad"
    .parameter "ellipsize"
    .parameter "ellipsizedWidth"

    .prologue
    .line 98
    if-nez p10, :cond_2

    move-object/from16 v2, p2

    :goto_0
    move-object v1, p0

    move-object/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    move-object/from16 v9, p10

    move/from16 v10, p11

    invoke-direct/range {v1 .. v10}, Landroid/text/Layout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;I)V

    .line 102
    move-object/from16 v0, p1

    iput-object v0, p0, Landroid/text/DynamicLayout;->mBase:Ljava/lang/CharSequence;

    .line 103
    move-object/from16 v0, p2

    iput-object v0, p0, Landroid/text/DynamicLayout;->mDisplay:Ljava/lang/CharSequence;

    .line 113
    if-eqz p10, :cond_0

    .line 114
    invoke-virtual {p0}, Landroid/text/DynamicLayout;->getText()Ljava/lang/CharSequence;

    move-result-object v11

    check-cast v11, Landroid/text/Layout$Ellipsizer;

    .line 116
    .local v11, e:Landroid/text/Layout$Ellipsizer;
    iput-object p0, v11, Landroid/text/Layout$Ellipsizer;->mLayout:Landroid/text/Layout;

    .line 117
    move/from16 v0, p11

    iput v0, v11, Landroid/text/Layout$Ellipsizer;->mWidth:I

    .line 118
    move-object/from16 v0, p10

    iput-object v0, v11, Landroid/text/Layout$Ellipsizer;->mMethod:Landroid/text/TextUtils$TruncateAt;

    .line 121
    .end local v11           #e:Landroid/text/Layout$Ellipsizer;
    :cond_0
    invoke-virtual {p0}, Landroid/text/DynamicLayout;->initLayout()V

    .line 123
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface/range {p2 .. p2}, Ljava/lang/CharSequence;->length()I

    move-result v5

    const/4 v6, 0x0

    move-object v1, p0

    move-object/from16 v2, p2

    invoke-virtual/range {v1 .. v6}, Landroid/text/DynamicLayout;->updateText(Ljava/lang/CharSequence;IIIZ)V

    .line 125
    invoke-virtual/range {p0 .. p1}, Landroid/text/DynamicLayout;->reflowFull(Ljava/lang/CharSequence;)V

    .line 127
    move-object/from16 v0, p1

    instance-of v1, v0, Landroid/text/Spannable;

    if-eqz v1, :cond_5

    .line 128
    iget-object v1, p0, Landroid/text/DynamicLayout;->mWatcher:Landroid/text/DynamicLayout$ChangeWatcher;

    if-nez v1, :cond_1

    .line 129
    new-instance v1, Landroid/text/DynamicLayout$ChangeWatcher;

    invoke-direct {v1, p0}, Landroid/text/DynamicLayout$ChangeWatcher;-><init>(Landroid/text/DynamicLayout;)V

    iput-object v1, p0, Landroid/text/DynamicLayout;->mWatcher:Landroid/text/DynamicLayout$ChangeWatcher;

    :cond_1
    move-object/from16 v13, p1

    .line 132
    check-cast v13, Landroid/text/Spannable;

    .line 133
    .local v13, sp:Landroid/text/Spannable;
    const/4 v1, 0x0

    invoke-interface {v13}, Landroid/text/Spannable;->length()I

    move-result v2

    const-class v3, Landroid/text/DynamicLayout$ChangeWatcher;

    invoke-interface {v13, v1, v2, v3}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [Landroid/text/DynamicLayout$ChangeWatcher;

    .line 134
    .local v14, spans:[Landroid/text/DynamicLayout$ChangeWatcher;
    const/4 v12, 0x0

    .local v12, i:I
    :goto_1
    array-length v1, v14

    if-ge v12, v1, :cond_4

    .line 135
    aget-object v1, v14, v12

    invoke-interface {v13, v1}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 134
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 98
    .end local v12           #i:I
    .end local v13           #sp:Landroid/text/Spannable;
    .end local v14           #spans:[Landroid/text/DynamicLayout$ChangeWatcher;
    :cond_2
    move-object/from16 v0, p2

    instance-of v1, v0, Landroid/text/Spanned;

    if-eqz v1, :cond_3

    new-instance v2, Landroid/text/Layout$SpannedEllipsizer;

    move-object/from16 v0, p2

    invoke-direct {v2, v0}, Landroid/text/Layout$SpannedEllipsizer;-><init>(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_3
    new-instance v2, Landroid/text/Layout$Ellipsizer;

    move-object/from16 v0, p2

    invoke-direct {v2, v0}, Landroid/text/Layout$Ellipsizer;-><init>(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 137
    .restart local v12       #i:I
    .restart local v13       #sp:Landroid/text/Spannable;
    .restart local v14       #spans:[Landroid/text/DynamicLayout$ChangeWatcher;
    :cond_4
    iget-object v1, p0, Landroid/text/DynamicLayout;->mWatcher:Landroid/text/DynamicLayout$ChangeWatcher;

    const/4 v2, 0x0

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    const v4, 0x800012

    invoke-interface {v13, v1, v2, v3, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 140
    .end local v12           #i:I
    .end local v13           #sp:Landroid/text/Spannable;
    .end local v14           #spans:[Landroid/text/DynamicLayout$ChangeWatcher;
    :cond_5
    return-void
.end method

.method private static findEnd(Ljava/lang/CharSequence;IIII)I
    .locals 2
    .parameter "s"
    .parameter "where"
    .parameter "before"
    .parameter "after"
    .parameter "len"

    .prologue
    .line 334
    invoke-static {p2, p3}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int v0, p1, v1

    .line 337
    .local v0, end:I
    if-lez p2, :cond_0

    if-nez p3, :cond_0

    .line 346
    add-int/lit8 v0, v0, 0x1

    .line 349
    :cond_0
    if-lt v0, p4, :cond_2

    .line 350
    move v0, p4

    .line 355
    :cond_1
    :goto_0
    return v0

    .line 351
    :cond_2
    invoke-static {p0, v0, p4}, Landroid/text/DynamicLayout;->isInBetweenSurrogatePair(Ljava/lang/CharSequence;II)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 352
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static findStart(Ljava/lang/CharSequence;IIII)I
    .locals 2
    .parameter "s"
    .parameter "where"
    .parameter "before"
    .parameter "after"
    .parameter "len"

    .prologue
    .line 309
    move v0, p1

    .line 312
    .local v0, start:I
    if-lez p2, :cond_0

    if-nez p3, :cond_0

    .line 321
    add-int/lit8 v0, v0, -0x1

    .line 324
    :cond_0
    if-gtz v0, :cond_2

    .line 325
    const/4 v0, 0x0

    .line 330
    :cond_1
    :goto_0
    return v0

    .line 326
    :cond_2
    invoke-static {p0, v0, p4}, Landroid/text/DynamicLayout;->isInBetweenSurrogatePair(Ljava/lang/CharSequence;II)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 327
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method


# virtual methods
.method public getBottomPadding()I
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Landroid/text/DynamicLayout;->mBlockLayout:Landroid/graphics/BlockLayout;

    invoke-virtual {v0}, Landroid/graphics/BlockLayout;->getBottomPadding()I

    move-result v0

    return v0
.end method

.method public getEllipsisCount(I)I
    .locals 1
    .parameter "line"

    .prologue
    .line 262
    if-ltz p1, :cond_0

    iget-object v0, p0, Landroid/text/DynamicLayout;->mBlockLayout:Landroid/graphics/BlockLayout;

    invoke-virtual {v0}, Landroid/graphics/BlockLayout;->getLineCount()I

    move-result v0

    if-le p1, v0, :cond_1

    .line 263
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 265
    :cond_1
    iget-object v0, p0, Landroid/text/DynamicLayout;->mBlockLayout:Landroid/graphics/BlockLayout;

    invoke-virtual {v0, p1}, Landroid/graphics/BlockLayout;->getEllipsisCount(I)I

    move-result v0

    return v0
.end method

.method public getEllipsisStart(I)I
    .locals 2
    .parameter "line"

    .prologue
    const/high16 v0, -0x8000

    .line 246
    if-ltz p1, :cond_0

    iget-object v1, p0, Landroid/text/DynamicLayout;->mBlockLayout:Landroid/graphics/BlockLayout;

    invoke-virtual {v1}, Landroid/graphics/BlockLayout;->getLineCount()I

    move-result v1

    if-le p1, v1, :cond_1

    .line 247
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 249
    :cond_1
    iget-object v1, p0, Landroid/text/DynamicLayout;->mEllipsizeAt:Landroid/text/TextUtils$TruncateAt;

    if-nez v1, :cond_3

    .line 256
    :cond_2
    :goto_0
    return v0

    .line 252
    :cond_3
    invoke-virtual {p0, p1}, Landroid/text/DynamicLayout;->getEllipsisCount(I)I

    move-result v1

    if-lez v1, :cond_2

    .line 253
    iget-object v0, p0, Landroid/text/DynamicLayout;->mBlockLayout:Landroid/graphics/BlockLayout;

    invoke-virtual {v0, p1}, Landroid/graphics/BlockLayout;->getEllipsisStart(I)I

    move-result v0

    goto :goto_0
.end method

.method public getEllipsizedWidth()I
    .locals 1

    .prologue
    .line 189
    iget v0, p0, Landroid/text/DynamicLayout;->mEllipsizedWidth:I

    return v0
.end method

.method public getLineContainsTab(I)Z
    .locals 1
    .parameter "line"

    .prologue
    .line 164
    invoke-virtual {p0, p1}, Landroid/text/DynamicLayout;->getLineContainsTabDefault(I)Z

    move-result v0

    return v0
.end method

.method public getLineCount()I
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Landroid/text/DynamicLayout;->mBlockLayout:Landroid/graphics/BlockLayout;

    invoke-virtual {v0}, Landroid/graphics/BlockLayout;->getLineCount()I

    move-result v0

    return v0
.end method

.method public getLineDescent(I)I
    .locals 1
    .parameter "line"

    .prologue
    .line 154
    iget-object v0, p0, Landroid/text/DynamicLayout;->mBlockLayout:Landroid/graphics/BlockLayout;

    invoke-virtual {v0, p1}, Landroid/graphics/BlockLayout;->getLineDescent(I)I

    move-result v0

    return v0
.end method

.method public final getLineDirections(I)Landroid/text/Layout$Directions;
    .locals 1
    .parameter "line"

    .prologue
    .line 174
    invoke-virtual {p0, p1}, Landroid/text/DynamicLayout;->getLineDirectionsDefault(I)Landroid/text/Layout$Directions;

    move-result-object v0

    return-object v0
.end method

.method public getLineStart(I)I
    .locals 1
    .parameter "line"

    .prologue
    .line 159
    iget-object v0, p0, Landroid/text/DynamicLayout;->mBlockLayout:Landroid/graphics/BlockLayout;

    invoke-virtual {v0, p1}, Landroid/graphics/BlockLayout;->getLineStart(I)I

    move-result v0

    return v0
.end method

.method public getLineTop(I)I
    .locals 1
    .parameter "line"

    .prologue
    .line 149
    iget-object v0, p0, Landroid/text/DynamicLayout;->mBlockLayout:Landroid/graphics/BlockLayout;

    invoke-virtual {v0, p1}, Landroid/graphics/BlockLayout;->getLineTop(I)I

    move-result v0

    return v0
.end method

.method public getParagraphDirection(I)I
    .locals 1
    .parameter "line"

    .prologue
    .line 169
    iget-object v0, p0, Landroid/text/DynamicLayout;->mBlockLayout:Landroid/graphics/BlockLayout;

    invoke-virtual {v0, p1}, Landroid/graphics/BlockLayout;->getParagraphDirection(I)I

    move-result v0

    return v0
.end method

.method public getTopPadding()I
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Landroid/text/DynamicLayout;->mBlockLayout:Landroid/graphics/BlockLayout;

    invoke-virtual {v0}, Landroid/graphics/BlockLayout;->getTopPadding()I

    move-result v0

    return v0
.end method

.method isValidLine(III)Z
    .locals 1
    .parameter "line"
    .parameter "min"
    .parameter "max"

    .prologue
    .line 271
    if-lt p1, p2, :cond_0

    if-le p1, p3, :cond_1

    .line 272
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 275
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method reflow(Ljava/lang/CharSequence;IIIZ)V
    .locals 10
    .parameter "s"
    .parameter "where"
    .parameter "before"
    .parameter "after"
    .parameter "textHasChanged"

    .prologue
    .line 279
    iget-object v0, p0, Landroid/text/DynamicLayout;->mBase:Ljava/lang/CharSequence;

    if-ne p1, v0, :cond_0

    if-ltz p3, :cond_0

    if-gez p4, :cond_1

    .line 306
    :cond_0
    :goto_0
    return-void

    .line 282
    :cond_1
    iget-object v1, p0, Landroid/text/DynamicLayout;->mDisplay:Ljava/lang/CharSequence;

    .line 283
    .local v1, text:Ljava/lang/CharSequence;
    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v8

    .line 285
    .local v8, len:I
    :goto_1
    invoke-static {v1, p2, p3, p4, v8}, Landroid/text/DynamicLayout;->findStart(Ljava/lang/CharSequence;IIII)I

    move-result v9

    .line 286
    .local v9, start:I
    invoke-static {v1, p2, p3, p4, v8}, Landroid/text/DynamicLayout;->findEnd(Ljava/lang/CharSequence;IIII)I

    move-result v7

    .line 288
    .local v7, end:I
    if-eqz p5, :cond_2

    .line 290
    const/4 v5, 0x1

    move-object v0, p0

    move v2, p2

    move v3, p3

    move v4, p4

    :try_start_0
    invoke-virtual/range {v0 .. v5}, Landroid/text/DynamicLayout;->updateText(Ljava/lang/CharSequence;IIIZ)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 305
    :cond_2
    :goto_2
    invoke-super {p0, v1, v9, v7}, Landroid/text/Layout;->reflow(Ljava/lang/CharSequence;II)V

    goto :goto_0

    .line 283
    .end local v7           #end:I
    .end local v8           #len:I
    .end local v9           #start:I
    :cond_3
    const/4 v8, 0x0

    goto :goto_1

    .line 291
    .restart local v7       #end:I
    .restart local v8       #len:I
    .restart local v9       #start:I
    :catch_0
    move-exception v6

    .line 293
    .local v6, e:Ljava/lang/IndexOutOfBoundsException;
    iget-object v0, p0, Landroid/text/DynamicLayout;->mBlockText:Landroid/graphics/Text;

    const/4 v2, 0x0

    iget-object v3, p0, Landroid/text/DynamicLayout;->mBlockText:Landroid/graphics/Text;

    invoke-virtual {v3}, Landroid/graphics/Text;->getLength()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Text;->removeText(II)V

    .line 294
    iget-object v0, p0, Landroid/text/DynamicLayout;->mBlockText:Landroid/graphics/Text;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Text;->insertText(Ljava/lang/String;I)V

    .line 296
    const/4 p2, 0x0

    .line 297
    const/4 p3, 0x0

    .line 298
    iget-object v0, p0, Landroid/text/DynamicLayout;->mBlockText:Landroid/graphics/Text;

    invoke-virtual {v0}, Landroid/graphics/Text;->getLength()I

    move-result p4

    .line 300
    move v9, p2

    .line 301
    move v7, p4

    goto :goto_2
.end method

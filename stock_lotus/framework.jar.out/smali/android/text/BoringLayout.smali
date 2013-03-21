.class public Landroid/text/BoringLayout;
.super Landroid/text/Layout;
.source "BoringLayout.java"

# interfaces
.implements Landroid/text/TextUtils$EllipsizeCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/BoringLayout$Metrics;
    }
.end annotation


# static fields
.field private static final FIRST_RIGHT_TO_LEFT:C = '\u0590'

.field private static final sTemp:Landroid/text/TextPaint;


# instance fields
.field mBottom:I

.field private mBottomPadding:I

.field mDesc:I

.field private mDirect:Ljava/lang/String;

.field private mEllipsizedCount:I

.field private mEllipsizedStart:I

.field private mEllipsizedWidth:I

.field private mHasEmoji:Z

.field private mMax:F

.field private mTopPadding:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1043
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    sput-object v0, Landroid/text/BoringLayout;->sTemp:Landroid/text/TextPaint;

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;Z)V
    .locals 10
    .parameter "source"
    .parameter "paint"
    .parameter "outerwidth"
    .parameter "align"
    .parameter "spacingmult"
    .parameter "spacingadd"
    .parameter "metrics"
    .parameter "includepad"

    .prologue
    .line 139
    invoke-direct/range {p0 .. p6}, Landroid/text/Layout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FF)V

    .line 141
    iput p3, p0, Landroid/text/BoringLayout;->mEllipsizedWidth:I

    .line 142
    const/4 v0, 0x0

    iput v0, p0, Landroid/text/BoringLayout;->mEllipsizedStart:I

    .line 143
    const/4 v0, 0x0

    iput v0, p0, Landroid/text/BoringLayout;->mEllipsizedCount:I

    .line 145
    const/4 v9, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    invoke-virtual/range {v0 .. v9}, Landroid/text/BoringLayout;->init(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;ZZ)V

    .line 147
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;ZLandroid/text/TextUtils$TruncateAt;I)V
    .locals 11
    .parameter "source"
    .parameter "paint"
    .parameter "outerwidth"
    .parameter "align"
    .parameter "spacingmult"
    .parameter "spacingadd"
    .parameter "metrics"
    .parameter "includepad"
    .parameter "ellipsize"
    .parameter "ellipsizedWidth"

    .prologue
    .line 160
    invoke-direct/range {p0 .. p6}, Landroid/text/Layout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FF)V

    .line 164
    if-eqz p9, :cond_0

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p9

    if-ne v0, v1, :cond_1

    .line 165
    :cond_0
    iput p3, p0, Landroid/text/BoringLayout;->mEllipsizedWidth:I

    .line 166
    const/4 v1, 0x0

    iput v1, p0, Landroid/text/BoringLayout;->mEllipsizedStart:I

    .line 167
    const/4 v1, 0x0

    iput v1, p0, Landroid/text/BoringLayout;->mEllipsizedCount:I

    .line 168
    const/4 v10, 0x1

    .line 180
    .local v10, trust:Z
    :goto_0
    invoke-virtual {p0}, Landroid/text/BoringLayout;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    move-object v1, p0

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    invoke-virtual/range {v1 .. v10}, Landroid/text/BoringLayout;->init(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;ZZ)V

    .line 182
    return-void

    .line 170
    .end local v10           #trust:Z
    :cond_1
    move/from16 v0, p10

    int-to-float v3, v0

    const/4 v5, 0x1

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v4, p9

    move-object v6, p0

    invoke-static/range {v1 .. v6}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;ZLandroid/text/TextUtils$EllipsizeCallback;)Ljava/lang/CharSequence;

    move-result-object v2

    move-object v1, p0

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    invoke-virtual/range {v1 .. v7}, Landroid/text/BoringLayout;->replaceWith(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FF)V

    .line 176
    move/from16 v0, p10

    iput v0, p0, Landroid/text/BoringLayout;->mEllipsizedWidth:I

    .line 177
    const/4 v10, 0x0

    .restart local v10       #trust:Z
    goto :goto_0
.end method

.method private addSelection(IIIIILandroid/graphics/Path;)V
    .locals 19
    .parameter "line"
    .parameter "start"
    .parameter "end"
    .parameter "top"
    .parameter "bottom"
    .parameter "dest"

    .prologue
    .line 778
    invoke-virtual/range {p0 .. p1}, Landroid/text/BoringLayout;->getLineStart(I)I

    move-result v16

    .line 779
    .local v16, linestart:I
    invoke-virtual/range {p0 .. p1}, Landroid/text/BoringLayout;->getLineEnd(I)I

    move-result v15

    .line 780
    .local v15, lineend:I
    invoke-virtual/range {p0 .. p1}, Landroid/text/BoringLayout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v9

    .line 782
    .local v9, dirs:Landroid/text/Layout$Directions;
    move/from16 v0, v16

    if-le v15, v0, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/BoringLayout;->mText:Ljava/lang/CharSequence;

    add-int/lit8 v5, v15, -0x1

    invoke-interface {v3, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const/16 v5, 0xa

    if-ne v3, v5, :cond_0

    .line 783
    add-int/lit8 v15, v15, -0x1

    .line 785
    :cond_0
    const/4 v14, 0x0

    .local v14, i:I
    :goto_0
    iget-object v3, v9, Landroid/text/Layout$Directions;->mDirections:[I

    array-length v3, v3

    if-ge v14, v3, :cond_3

    .line 786
    iget-object v3, v9, Landroid/text/Layout$Directions;->mDirections:[I

    aget v3, v3, v14

    add-int v13, v16, v3

    .line 787
    .local v13, here:I
    iget-object v3, v9, Landroid/text/Layout$Directions;->mDirections:[I

    add-int/lit8 v5, v14, 0x1

    aget v3, v3, v5

    const v5, 0x3ffffff

    and-int/2addr v3, v5

    add-int v18, v13, v3

    .line 789
    .local v18, there:I
    move/from16 v0, v18

    if-le v0, v15, :cond_1

    .line 790
    move/from16 v18, v15

    .line 792
    :cond_1
    move/from16 v0, p2

    move/from16 v1, v18

    if-gt v0, v1, :cond_2

    move/from16 v0, p3

    if-lt v0, v13, :cond_2

    .line 793
    move/from16 v0, p2

    invoke-static {v0, v13}, Ljava/lang/Math;->max(II)I

    move-result v17

    .line 794
    .local v17, st:I
    move/from16 v0, p3

    move/from16 v1, v18

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 796
    .local v10, en:I
    move/from16 v0, v17

    if-eq v0, v10, :cond_2

    .line 797
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, p1

    invoke-direct {v0, v1, v3, v2}, Landroid/text/BoringLayout;->getHorizontal(IZI)F

    move-result v11

    .line 798
    .local v11, h1:F
    const/4 v3, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v10, v3, v1}, Landroid/text/BoringLayout;->getHorizontal(IZI)F

    move-result v12

    .line 800
    .local v12, h2:F
    invoke-static {v11, v12}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 801
    .local v4, left:F
    invoke-static {v11, v12}, Ljava/lang/Math;->max(FF)F

    move-result v6

    .line 803
    .local v6, right:F
    move/from16 v0, p4

    int-to-float v5, v0

    move/from16 v0, p5

    int-to-float v7, v0

    sget-object v8, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object/from16 v3, p6

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    .line 785
    .end local v4           #left:F
    .end local v6           #right:F
    .end local v10           #en:I
    .end local v11           #h1:F
    .end local v12           #h2:F
    .end local v17           #st:I
    :cond_2
    add-int/lit8 v14, v14, 0x2

    goto :goto_0

    .line 807
    .end local v13           #here:I
    .end local v18           #there:I
    :cond_3
    return-void
.end method

.method private drawInternal(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Paint;I)V
    .locals 23
    .parameter "c"
    .parameter "highlight"
    .parameter "highlightpaint"
    .parameter "cursorOffsetVertical"

    .prologue
    .line 961
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/BoringLayout;->mText:Ljava/lang/CharSequence;

    .line 965
    .local v2, buf:Ljava/lang/CharSequence;
    if-eqz p2, :cond_1

    .line 966
    if-eqz p4, :cond_0

    .line 967
    const/4 v1, 0x0

    move/from16 v0, p4

    int-to-float v6, v0

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 970
    :cond_0
    invoke-virtual/range {p1 .. p3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 972
    if-eqz p4, :cond_1

    .line 973
    const/4 v1, 0x0

    move/from16 v0, p4

    neg-int v6, v0

    int-to-float v6, v6

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 977
    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/text/BoringLayout;->mAlignment:Landroid/text/Layout$Alignment;

    .line 979
    .local v14, align:Landroid/text/Layout$Alignment;
    const/4 v3, 0x0

    .line 980
    .local v3, start:I
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v4

    .line 982
    .local v4, end:I
    const/16 v19, 0x0

    .line 983
    .local v19, ltop:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/BoringLayout;->mBottom:I

    move/from16 v17, v0

    .line 984
    .local v17, lbottom:I
    move-object/from16 v0, p0

    iget v1, v0, Landroid/text/BoringLayout;->mDesc:I

    sub-int v16, v17, v1

    .line 986
    .local v16, lbaseline:I
    const/16 v18, 0x0

    .line 987
    .local v18, left:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/BoringLayout;->mWidth:I

    move/from16 v21, v0

    .line 990
    .local v21, right:I
    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    if-ne v14, v1, :cond_3

    .line 991
    sget-object v14, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .line 997
    :cond_2
    :goto_0
    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    if-ne v14, v1, :cond_4

    .line 998
    move/from16 v22, v18

    .line 1014
    .local v22, x:I
    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroid/text/BoringLayout;->isSpanned()Z

    move-result v1

    if-nez v1, :cond_6

    move-object/from16 v0, p0

    iget-boolean v1, v0, Landroid/text/BoringLayout;->mHasEmoji:Z

    if-nez v1, :cond_6

    .line 1015
    move/from16 v0, v22

    int-to-float v5, v0

    move/from16 v0, v16

    int-to-float v6, v0

    invoke-virtual/range {p0 .. p0}, Landroid/text/BoringLayout;->getPaint()Landroid/text/TextPaint;

    move-result-object v7

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    .line 1023
    :goto_2
    return-void

    .line 992
    .end local v22           #x:I
    :cond_3
    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    if-ne v14, v1, :cond_2

    .line 993
    sget-object v14, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    goto :goto_0

    .line 1001
    :cond_4
    move-object/from16 v0, p0

    iget v1, v0, Landroid/text/BoringLayout;->mMax:F

    float-to-int v0, v1

    move/from16 v20, v0

    .line 1002
    .local v20, max:I
    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    if-ne v14, v1, :cond_5

    .line 1003
    sub-int v22, v21, v20

    .restart local v22       #x:I
    goto :goto_1

    .line 1007
    .end local v22           #x:I
    :cond_5
    and-int/lit8 v20, v20, -0x2

    .line 1008
    sub-int v1, v21, v18

    sub-int v1, v1, v20

    shr-int/lit8 v15, v1, 0x1

    .line 1009
    .local v15, half:I
    add-int v22, v18, v15

    .restart local v22       #x:I
    goto :goto_1

    .line 1017
    .end local v15           #half:I
    .end local v20           #max:I
    :cond_6
    invoke-static {}, Landroid/text/TextLine;->obtain()Landroid/text/TextLine;

    move-result-object v5

    .line 1018
    .local v5, tl:Landroid/text/TextLine;
    invoke-virtual/range {p0 .. p0}, Landroid/text/BoringLayout;->getPaint()Landroid/text/TextPaint;

    move-result-object v6

    const/4 v10, 0x1

    sget-object v11, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    move-object/from16 v0, p0

    iget-boolean v12, v0, Landroid/text/BoringLayout;->mHasEmoji:Z

    const/4 v13, 0x0

    move-object v7, v2

    move v8, v3

    move v9, v4

    invoke-virtual/range {v5 .. v13}, Landroid/text/TextLine;->set(Landroid/text/TextPaint;Ljava/lang/CharSequence;IIILandroid/text/Layout$Directions;ZLandroid/text/Layout$TabStops;)V

    .line 1019
    move/from16 v0, v22

    int-to-float v7, v0

    move-object/from16 v6, p1

    move/from16 v8, v19

    move/from16 v9, v16

    move/from16 v10, v17

    invoke-virtual/range {v5 .. v10}, Landroid/text/TextLine;->draw(Landroid/graphics/Canvas;FIII)V

    .line 1020
    invoke-static {v5}, Landroid/text/TextLine;->recycle(Landroid/text/TextLine;)Landroid/text/TextLine;

    goto :goto_2
.end method

.method private getHorizontal(IZ)F
    .locals 2
    .parameter "offset"
    .parameter "trailing"

    .prologue
    .line 626
    invoke-virtual {p0, p1}, Landroid/text/BoringLayout;->getLineForOffset(I)I

    move-result v0

    .line 628
    .local v0, line:I
    invoke-direct {p0, p1, p2, v0}, Landroid/text/BoringLayout;->getHorizontal(IZI)F

    move-result v1

    return v1
.end method

.method private getHorizontal(IZI)F
    .locals 12
    .parameter "offset"
    .parameter "trailing"
    .parameter "line"

    .prologue
    .line 632
    invoke-virtual {p0, p3}, Landroid/text/BoringLayout;->getLineStart(I)I

    move-result v3

    .line 633
    .local v3, start:I
    invoke-virtual {p0, p3}, Landroid/text/BoringLayout;->getLineEnd(I)I

    move-result v4

    .line 634
    .local v4, end:I
    invoke-virtual {p0, p3}, Landroid/text/BoringLayout;->getParagraphDirection(I)I

    move-result v5

    .line 635
    .local v5, dir:I
    const/4 v7, 0x0

    .line 636
    .local v7, hasTabOrEmoji:Z
    invoke-virtual {p0, p3}, Landroid/text/BoringLayout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v6

    .line 638
    .local v6, directions:Landroid/text/Layout$Directions;
    const/4 v8, 0x0

    .line 640
    .local v8, tabStops:Landroid/text/Layout$TabStops;
    invoke-static {}, Landroid/text/TextLine;->obtain()Landroid/text/TextLine;

    move-result-object v0

    .line 641
    .local v0, tl:Landroid/text/TextLine;
    iget-object v1, p0, Landroid/text/BoringLayout;->mPaint:Landroid/text/TextPaint;

    iget-object v2, p0, Landroid/text/BoringLayout;->mText:Ljava/lang/CharSequence;

    invoke-virtual/range {v0 .. v8}, Landroid/text/TextLine;->set(Landroid/text/TextPaint;Ljava/lang/CharSequence;IIILandroid/text/Layout$Directions;ZLandroid/text/Layout$TabStops;)V

    .line 642
    sub-int v1, p1, v3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2}, Landroid/text/TextLine;->measure(IZLandroid/graphics/Paint$FontMetricsInt;)F

    move-result v11

    .line 643
    .local v11, wid:F
    invoke-static {v0}, Landroid/text/TextLine;->recycle(Landroid/text/TextLine;)Landroid/text/TextLine;

    .line 645
    invoke-virtual {p0, p3}, Landroid/text/BoringLayout;->getParagraphLeft(I)I

    move-result v9

    .line 646
    .local v9, left:I
    invoke-virtual {p0, p3}, Landroid/text/BoringLayout;->getParagraphRight(I)I

    move-result v10

    .line 648
    .local v10, right:I
    invoke-direct {p0, p3, v9, v10}, Landroid/text/BoringLayout;->getLineStartPos(III)I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v1, v11

    return v1
.end method

.method private getLineStartPos(III)I
    .locals 6
    .parameter "line"
    .parameter "left"
    .parameter "right"

    .prologue
    const/4 v5, 0x1

    .line 663
    invoke-virtual {p0, p1}, Landroid/text/BoringLayout;->getParagraphAlignment(I)Landroid/text/Layout$Alignment;

    move-result-object v0

    .line 664
    .local v0, align:Landroid/text/Layout$Alignment;
    invoke-virtual {p0, p1}, Landroid/text/BoringLayout;->getParagraphDirection(I)I

    move-result v1

    .line 667
    .local v1, dir:I
    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    if-ne v0, v4, :cond_0

    .line 668
    move v3, p2

    .line 690
    .local v3, x:I
    :goto_0
    return v3

    .line 669
    .end local v3           #x:I
    :cond_0
    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    if-ne v0, v4, :cond_2

    .line 670
    if-ne v1, v5, :cond_1

    .line 671
    move v3, p2

    .restart local v3       #x:I
    goto :goto_0

    .line 673
    .end local v3           #x:I
    :cond_1
    move v3, p3

    .restart local v3       #x:I
    goto :goto_0

    .line 676
    .end local v3           #x:I
    :cond_2
    invoke-virtual {p0, p1}, Landroid/text/BoringLayout;->getLineMax(I)F

    move-result v4

    float-to-int v2, v4

    .line 677
    .local v2, max:I
    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    if-ne v0, v4, :cond_3

    .line 678
    sub-int v3, p3, v2

    .restart local v3       #x:I
    goto :goto_0

    .line 679
    .end local v3           #x:I
    :cond_3
    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    if-ne v0, v4, :cond_5

    .line 680
    if-ne v1, v5, :cond_4

    .line 681
    sub-int v3, p3, v2

    .restart local v3       #x:I
    goto :goto_0

    .line 683
    .end local v3           #x:I
    :cond_4
    sub-int v3, p2, v2

    .restart local v3       #x:I
    goto :goto_0

    .line 686
    .end local v3           #x:I
    :cond_5
    and-int/lit8 v2, v2, -0x2

    .line 687
    add-int v4, p2, p3

    sub-int/2addr v4, v2

    shr-int/lit8 v3, v4, 0x1

    .restart local v3       #x:I
    goto :goto_0
.end method

.method private getOffsetAtStartOf(I)I
    .locals 9
    .parameter "offset"

    .prologue
    .line 534
    if-nez p1, :cond_0

    .line 535
    const/4 v7, 0x0

    .line 560
    :goto_0
    return v7

    .line 537
    :cond_0
    iget-object v6, p0, Landroid/text/BoringLayout;->mText:Ljava/lang/CharSequence;

    .line 538
    .local v6, text:Ljava/lang/CharSequence;
    invoke-interface {v6, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 540
    .local v0, c:C
    const v7, 0xdc00

    if-lt v0, v7, :cond_1

    const v7, 0xdfff

    if-gt v0, v7, :cond_1

    .line 541
    add-int/lit8 v7, p1, -0x1

    invoke-interface {v6, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 543
    .local v1, c1:C
    const v7, 0xd800

    if-lt v1, v7, :cond_1

    const v7, 0xdbff

    if-gt v1, v7, :cond_1

    .line 544
    add-int/lit8 p1, p1, -0x1

    .line 547
    .end local v1           #c1:C
    :cond_1
    invoke-virtual {p0}, Landroid/text/BoringLayout;->isSpanned()Z

    move-result v7

    if-eqz v7, :cond_3

    move-object v7, v6

    .line 548
    check-cast v7, Landroid/text/Spanned;

    const-class v8, Landroid/text/style/ReplacementSpan;

    invoke-interface {v7, p1, p1, v8}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/text/style/ReplacementSpan;

    .line 551
    .local v4, spans:[Landroid/text/style/ReplacementSpan;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    array-length v7, v4

    if-ge v3, v7, :cond_3

    move-object v7, v6

    .line 552
    check-cast v7, Landroid/text/Spanned;

    aget-object v8, v4, v3

    invoke-interface {v7, v8}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    .local v5, start:I
    move-object v7, v6

    .line 553
    check-cast v7, Landroid/text/Spanned;

    aget-object v8, v4, v3

    invoke-interface {v7, v8}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v2

    .line 555
    .local v2, end:I
    if-ge v5, p1, :cond_2

    if-le v2, p1, :cond_2

    .line 556
    move p1, v5

    .line 551
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .end local v2           #end:I
    .end local v3           #i:I
    .end local v4           #spans:[Landroid/text/style/ReplacementSpan;
    .end local v5           #start:I
    :cond_3
    move v7, p1

    .line 560
    goto :goto_0
.end method

.method public static isBoring(Ljava/lang/CharSequence;Landroid/text/TextPaint;)Landroid/text/BoringLayout$Metrics;
    .locals 2
    .parameter "text"
    .parameter "paint"

    .prologue
    .line 256
    sget-object v0, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Landroid/text/BoringLayout;->isBoring(Ljava/lang/CharSequence;Landroid/text/TextPaint;Landroid/text/TextDirectionHeuristic;Landroid/text/BoringLayout$Metrics;)Landroid/text/BoringLayout$Metrics;

    move-result-object v0

    return-object v0
.end method

.method public static isBoring(Ljava/lang/CharSequence;Landroid/text/TextPaint;Landroid/text/BoringLayout$Metrics;)Landroid/text/BoringLayout$Metrics;
    .locals 1
    .parameter "text"
    .parameter "paint"
    .parameter "metrics"

    .prologue
    .line 275
    sget-object v0, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    invoke-static {p0, p1, v0, p2}, Landroid/text/BoringLayout;->isBoring(Ljava/lang/CharSequence;Landroid/text/TextPaint;Landroid/text/TextDirectionHeuristic;Landroid/text/BoringLayout$Metrics;)Landroid/text/BoringLayout$Metrics;

    move-result-object v0

    return-object v0
.end method

.method public static isBoring(Ljava/lang/CharSequence;Landroid/text/TextPaint;Landroid/text/TextDirectionHeuristic;)Landroid/text/BoringLayout$Metrics;
    .locals 1
    .parameter "text"
    .parameter "paint"
    .parameter "textDir"

    .prologue
    .line 266
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Landroid/text/BoringLayout;->isBoring(Ljava/lang/CharSequence;Landroid/text/TextPaint;Landroid/text/TextDirectionHeuristic;Landroid/text/BoringLayout$Metrics;)Landroid/text/BoringLayout$Metrics;

    move-result-object v0

    return-object v0
.end method

.method public static isBoring(Ljava/lang/CharSequence;Landroid/text/TextPaint;Landroid/text/TextDirectionHeuristic;Landroid/text/BoringLayout$Metrics;)Landroid/text/BoringLayout$Metrics;
    .locals 23
    .parameter "text"
    .parameter "paint"
    .parameter "textDir"
    .parameter "metrics"

    .prologue
    .line 286
    const/16 v5, 0x1f4

    invoke-static {v5}, Landroid/text/TextUtils;->obtain(I)[C

    move-result-object v22

    .line 287
    .local v22, temp:[C
    invoke-interface/range {p0 .. p0}, Ljava/lang/CharSequence;->length()I

    move-result v8

    .line 288
    .local v8, length:I
    const/4 v14, 0x1

    .line 289
    .local v14, boring:Z
    const/4 v11, 0x0

    .line 292
    .local v11, hasEmoji:Z
    const/16 v17, 0x0

    .local v17, i:I
    :goto_0
    move/from16 v0, v17

    if-ge v0, v8, :cond_3

    .line 293
    move/from16 v0, v17

    add-int/lit16 v0, v0, 0x1f4

    move/from16 v18, v0

    .line 295
    .local v18, j:I
    move/from16 v0, v18

    if-le v0, v8, :cond_0

    .line 296
    move/from16 v18, v8

    .line 298
    :cond_0
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    move-object/from16 v3, v22

    invoke-static {v0, v1, v2, v3, v5}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 300
    sub-int v19, v18, v17

    .line 302
    .local v19, n:I
    const/4 v13, 0x0

    .local v13, a:I
    :goto_1
    move/from16 v0, v19

    if-ge v13, v0, :cond_8

    .line 303
    aget-char v15, v22, v13

    .line 305
    .local v15, c:C
    const/16 v5, 0xa

    if-eq v15, v5, :cond_2

    const/16 v5, 0x9

    if-eq v15, v5, :cond_2

    const/16 v5, 0x590

    if-lt v15, v5, :cond_1

    const/16 v5, 0x1c7f

    if-le v15, v5, :cond_2

    :cond_1
    const/16 v5, 0x2d30

    if-lt v15, v5, :cond_6

    const/16 v5, 0x2ddf

    if-gt v15, v5, :cond_6

    .line 307
    :cond_2
    const/4 v14, 0x0

    .line 323
    .end local v13           #a:I
    .end local v15           #c:C
    .end local v18           #j:I
    .end local v19           #n:I
    :cond_3
    :goto_2
    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->recycle([C)V

    .line 325
    if-eqz v14, :cond_4

    move-object/from16 v0, p0

    instance-of v5, v0, Landroid/text/Spanned;

    if-eqz v5, :cond_4

    move-object/from16 v20, p0

    .line 326
    check-cast v20, Landroid/text/Spanned;

    .line 327
    .local v20, sp:Landroid/text/Spanned;
    const/4 v5, 0x0

    const-class v6, Landroid/text/style/ParagraphStyle;

    move-object/from16 v0, v20

    invoke-interface {v0, v5, v8, v6}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v21

    .line 328
    .local v21, styles:[Ljava/lang/Object;
    move-object/from16 v0, v21

    array-length v5, v0

    if-lez v5, :cond_4

    .line 329
    const/4 v14, 0x0

    .line 333
    .end local v20           #sp:Landroid/text/Spanned;
    .end local v21           #styles:[Ljava/lang/Object;
    :cond_4
    if-eqz v14, :cond_a

    .line 334
    move-object/from16 v16, p3

    .line 335
    .local v16, fm:Landroid/text/BoringLayout$Metrics;
    if-nez v16, :cond_5

    .line 336
    new-instance v16, Landroid/text/BoringLayout$Metrics;

    .end local v16           #fm:Landroid/text/BoringLayout$Metrics;
    invoke-direct/range {v16 .. v16}, Landroid/text/BoringLayout$Metrics;-><init>()V

    .line 339
    .restart local v16       #fm:Landroid/text/BoringLayout$Metrics;
    :cond_5
    invoke-static {}, Landroid/text/TextLine;->obtain()Landroid/text/TextLine;

    move-result-object v4

    .line 340
    .local v4, line:Landroid/text/TextLine;
    const/4 v7, 0x0

    const/4 v9, 0x1

    sget-object v10, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    const/4 v12, 0x0

    move-object/from16 v5, p1

    move-object/from16 v6, p0

    invoke-virtual/range {v4 .. v12}, Landroid/text/TextLine;->set(Landroid/text/TextPaint;Ljava/lang/CharSequence;IIILandroid/text/Layout$Directions;ZLandroid/text/Layout$TabStops;)V

    .line 342
    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Landroid/text/TextLine;->metrics(Landroid/graphics/Paint$FontMetricsInt;)F

    move-result v5

    invoke-static {v5}, Landroid/util/FloatMath;->ceil(F)F

    move-result v5

    float-to-int v5, v5

    move-object/from16 v0, v16

    iput v5, v0, Landroid/text/BoringLayout$Metrics;->width:I

    .line 343
    invoke-static {v4}, Landroid/text/TextLine;->recycle(Landroid/text/TextLine;)Landroid/text/TextLine;

    .line 345
    move-object/from16 v0, v16

    #setter for: Landroid/text/BoringLayout$Metrics;->hasEmoji:Z
    invoke-static {v0, v11}, Landroid/text/BoringLayout$Metrics;->access$002(Landroid/text/BoringLayout$Metrics;Z)Z

    .line 349
    .end local v4           #line:Landroid/text/TextLine;
    .end local v16           #fm:Landroid/text/BoringLayout$Metrics;
    :goto_3
    return-object v16

    .line 312
    .restart local v13       #a:I
    .restart local v15       #c:C
    .restart local v18       #j:I
    .restart local v19       #n:I
    :cond_6
    const v5, 0xd800

    if-lt v15, v5, :cond_7

    const v5, 0xdc00

    if-ge v15, v5, :cond_7

    .line 313
    const/4 v11, 0x1

    .line 302
    :cond_7
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 317
    .end local v15           #c:C
    :cond_8
    if-eqz p2, :cond_9

    const/4 v5, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    move/from16 v2, v19

    invoke-interface {v0, v1, v5, v2}, Landroid/text/TextDirectionHeuristic;->isRtl([CII)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 318
    const/4 v14, 0x0

    .line 319
    goto :goto_2

    .line 292
    :cond_9
    move/from16 v0, v17

    add-int/lit16 v0, v0, 0x1f4

    move/from16 v17, v0

    goto/16 :goto_0

    .line 349
    .end local v13           #a:I
    .end local v18           #j:I
    .end local v19           #n:I
    :cond_a
    const/16 v16, 0x0

    goto :goto_3
.end method

.method public static make(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;Z)Landroid/text/BoringLayout;
    .locals 9
    .parameter "source"
    .parameter "paint"
    .parameter "outerwidth"
    .parameter "align"
    .parameter "spacingmult"
    .parameter "spacingadd"
    .parameter "metrics"
    .parameter "includepad"

    .prologue
    .line 59
    new-instance v0, Landroid/text/BoringLayout;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    move/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Landroid/text/BoringLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;Z)V

    return-object v0
.end method

.method public static make(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;ZLandroid/text/TextUtils$TruncateAt;I)Landroid/text/BoringLayout;
    .locals 11
    .parameter "source"
    .parameter "paint"
    .parameter "outerwidth"
    .parameter "align"
    .parameter "spacingmult"
    .parameter "spacingadd"
    .parameter "metrics"
    .parameter "includepad"
    .parameter "ellipsize"
    .parameter "ellipsizedWidth"

    .prologue
    .line 70
    new-instance v0, Landroid/text/BoringLayout;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v10, p9

    invoke-direct/range {v0 .. v10}, Landroid/text/BoringLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;ZLandroid/text/TextUtils$TruncateAt;I)V

    return-object v0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Paint;I)V
    .locals 4
    .parameter "c"
    .parameter "highlight"
    .parameter "highlightpaint"
    .parameter "cursorOffset"

    .prologue
    .line 946
    iget-object v0, p0, Landroid/text/BoringLayout;->mDirect:Ljava/lang/String;

    if-eqz v0, :cond_0

    if-nez p2, :cond_0

    iget-boolean v0, p0, Landroid/text/BoringLayout;->mHasEmoji:Z

    if-nez v0, :cond_0

    .line 947
    iget-object v0, p0, Landroid/text/BoringLayout;->mDirect:Ljava/lang/String;

    const/4 v1, 0x0

    iget v2, p0, Landroid/text/BoringLayout;->mBottom:I

    iget v3, p0, Landroid/text/BoringLayout;->mDesc:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Landroid/text/BoringLayout;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 952
    :goto_0
    return-void

    .line 950
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/text/BoringLayout;->drawInternal(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Paint;I)V

    goto :goto_0
.end method

.method public ellipsized(II)V
    .locals 1
    .parameter "start"
    .parameter "end"

    .prologue
    .line 1029
    iput p1, p0, Landroid/text/BoringLayout;->mEllipsizedStart:I

    .line 1030
    sub-int v0, p2, p1

    iput v0, p0, Landroid/text/BoringLayout;->mEllipsizedCount:I

    .line 1031
    return-void
.end method

.method public getBottomPadding()I
    .locals 1

    .prologue
    .line 416
    iget v0, p0, Landroid/text/BoringLayout;->mBottomPadding:I

    return v0
.end method

.method getCurrentText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 870
    iget-object v0, p0, Landroid/text/BoringLayout;->mText:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCursorPath(ILandroid/graphics/Path;Ljava/lang/CharSequence;)V
    .locals 11
    .parameter "point"
    .parameter "dest"
    .parameter "editingBuffer"

    .prologue
    .line 702
    invoke-virtual {p2}, Landroid/graphics/Path;->reset()V

    .line 704
    iget-object v8, p0, Landroid/text/BoringLayout;->mText:Ljava/lang/CharSequence;

    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    move-result v8

    if-ge p1, v8, :cond_7

    .line 705
    :goto_0
    if-ltz p1, :cond_8

    .line 706
    :goto_1
    invoke-virtual {p0, p1}, Landroid/text/BoringLayout;->getLineForOffset(I)I

    move-result v6

    .line 707
    .local v6, line:I
    invoke-virtual {p0, v6}, Landroid/text/BoringLayout;->getLineTop(I)I

    move-result v7

    .line 708
    .local v7, top:I
    add-int/lit8 v8, v6, 0x1

    invoke-virtual {p0, v8}, Landroid/text/BoringLayout;->getLineTop(I)I

    move-result v0

    .line 710
    .local v0, bottom:I
    invoke-virtual {p0, p1}, Landroid/text/BoringLayout;->getPrimaryHorizontal(I)F

    move-result v8

    const/high16 v9, 0x3f00

    sub-float v4, v8, v9

    .line 711
    .local v4, h1:F
    invoke-virtual {p0, p1}, Landroid/text/BoringLayout;->getSecondaryHorizontal(I)F

    move-result v8

    const/high16 v9, 0x3f00

    sub-float v5, v8, v9

    .line 713
    .local v5, h2:F
    const/4 v8, 0x1

    invoke-static {p3, v8}, Landroid/text/method/TextKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v8

    const/16 v9, 0x800

    invoke-static {p3, v9}, Landroid/text/method/TextKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v9

    or-int v1, v8, v9

    .line 715
    .local v1, caps:I
    const/4 v8, 0x2

    invoke-static {p3, v8}, Landroid/text/method/TextKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v3

    .line 716
    .local v3, fn:I
    const/4 v2, 0x0

    .line 718
    .local v2, dist:I
    if-nez v1, :cond_0

    if-eqz v3, :cond_2

    .line 719
    :cond_0
    sub-int v8, v0, v7

    shr-int/lit8 v2, v8, 0x2

    .line 721
    if-eqz v3, :cond_1

    .line 722
    add-int/2addr v7, v2

    .line 723
    :cond_1
    if-eqz v1, :cond_2

    .line 724
    sub-int/2addr v0, v2

    .line 727
    :cond_2
    const/high16 v8, 0x3f00

    cmpg-float v8, v4, v8

    if-gez v8, :cond_3

    .line 728
    const/high16 v4, 0x3f00

    .line 729
    :cond_3
    const/high16 v8, 0x3f00

    cmpg-float v8, v5, v8

    if-gez v8, :cond_4

    .line 730
    const/high16 v5, 0x3f00

    .line 732
    :cond_4
    invoke-static {v4, v5}, Ljava/lang/Float;->compare(FF)I

    move-result v8

    if-nez v8, :cond_9

    .line 733
    int-to-float v8, v7

    invoke-virtual {p2, v4, v8}, Landroid/graphics/Path;->moveTo(FF)V

    .line 734
    int-to-float v8, v0

    invoke-virtual {p2, v4, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 743
    :goto_2
    const/4 v8, 0x2

    if-ne v1, v8, :cond_a

    .line 744
    int-to-float v8, v0

    invoke-virtual {p2, v5, v8}, Landroid/graphics/Path;->moveTo(FF)V

    .line 745
    int-to-float v8, v2

    sub-float v8, v5, v8

    add-int v9, v0, v2

    int-to-float v9, v9

    invoke-virtual {p2, v8, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 746
    int-to-float v8, v0

    invoke-virtual {p2, v5, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 747
    int-to-float v8, v2

    add-float/2addr v8, v5

    add-int v9, v0, v2

    int-to-float v9, v9

    invoke-virtual {p2, v8, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 759
    :cond_5
    :goto_3
    const/4 v8, 0x2

    if-ne v3, v8, :cond_b

    .line 760
    int-to-float v8, v7

    invoke-virtual {p2, v4, v8}, Landroid/graphics/Path;->moveTo(FF)V

    .line 761
    int-to-float v8, v2

    sub-float v8, v4, v8

    sub-int v9, v7, v2

    int-to-float v9, v9

    invoke-virtual {p2, v8, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 762
    int-to-float v8, v7

    invoke-virtual {p2, v4, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 763
    int-to-float v8, v2

    add-float/2addr v8, v4

    sub-int v9, v7, v2

    int-to-float v9, v9

    invoke-virtual {p2, v8, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 774
    :cond_6
    :goto_4
    return-void

    .line 704
    .end local v0           #bottom:I
    .end local v1           #caps:I
    .end local v2           #dist:I
    .end local v3           #fn:I
    .end local v4           #h1:F
    .end local v5           #h2:F
    .end local v6           #line:I
    .end local v7           #top:I
    :cond_7
    iget-object v8, p0, Landroid/text/BoringLayout;->mText:Ljava/lang/CharSequence;

    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    move-result p1

    goto/16 :goto_0

    .line 705
    :cond_8
    const/4 p1, 0x0

    goto/16 :goto_1

    .line 736
    .restart local v0       #bottom:I
    .restart local v1       #caps:I
    .restart local v2       #dist:I
    .restart local v3       #fn:I
    .restart local v4       #h1:F
    .restart local v5       #h2:F
    .restart local v6       #line:I
    .restart local v7       #top:I
    :cond_9
    int-to-float v8, v7

    invoke-virtual {p2, v4, v8}, Landroid/graphics/Path;->moveTo(FF)V

    .line 737
    add-int v8, v7, v0

    shr-int/lit8 v8, v8, 0x1

    int-to-float v8, v8

    invoke-virtual {p2, v4, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 739
    add-int v8, v7, v0

    shr-int/lit8 v8, v8, 0x1

    int-to-float v8, v8

    invoke-virtual {p2, v5, v8}, Landroid/graphics/Path;->moveTo(FF)V

    .line 740
    int-to-float v8, v0

    invoke-virtual {p2, v5, v8}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_2

    .line 748
    :cond_a
    const/4 v8, 0x1

    if-ne v1, v8, :cond_5

    .line 749
    int-to-float v8, v0

    invoke-virtual {p2, v5, v8}, Landroid/graphics/Path;->moveTo(FF)V

    .line 750
    int-to-float v8, v2

    sub-float v8, v5, v8

    add-int v9, v0, v2

    int-to-float v9, v9

    invoke-virtual {p2, v8, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 752
    int-to-float v8, v2

    sub-float v8, v5, v8

    add-int v9, v0, v2

    int-to-float v9, v9

    const/high16 v10, 0x3f00

    sub-float/2addr v9, v10

    invoke-virtual {p2, v8, v9}, Landroid/graphics/Path;->moveTo(FF)V

    .line 753
    int-to-float v8, v2

    add-float/2addr v8, v5

    add-int v9, v0, v2

    int-to-float v9, v9

    const/high16 v10, 0x3f00

    sub-float/2addr v9, v10

    invoke-virtual {p2, v8, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 755
    int-to-float v8, v2

    add-float/2addr v8, v5

    add-int v9, v0, v2

    int-to-float v9, v9

    invoke-virtual {p2, v8, v9}, Landroid/graphics/Path;->moveTo(FF)V

    .line 756
    int-to-float v8, v0

    invoke-virtual {p2, v5, v8}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_3

    .line 764
    :cond_b
    const/4 v8, 0x1

    if-ne v3, v8, :cond_6

    .line 765
    int-to-float v8, v7

    invoke-virtual {p2, v4, v8}, Landroid/graphics/Path;->moveTo(FF)V

    .line 766
    int-to-float v8, v2

    sub-float v8, v4, v8

    sub-int v9, v7, v2

    int-to-float v9, v9

    invoke-virtual {p2, v8, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 768
    int-to-float v8, v2

    sub-float v8, v4, v8

    sub-int v9, v7, v2

    int-to-float v9, v9

    const/high16 v10, 0x3f00

    add-float/2addr v9, v10

    invoke-virtual {p2, v8, v9}, Landroid/graphics/Path;->moveTo(FF)V

    .line 769
    int-to-float v8, v2

    add-float/2addr v8, v4

    sub-int v9, v7, v2

    int-to-float v9, v9

    const/high16 v10, 0x3f00

    add-float/2addr v9, v10

    invoke-virtual {p2, v8, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 771
    int-to-float v8, v2

    add-float/2addr v8, v4

    sub-int v9, v7, v2

    int-to-float v9, v9

    invoke-virtual {p2, v8, v9}, Landroid/graphics/Path;->moveTo(FF)V

    .line 772
    int-to-float v8, v7

    invoke-virtual {p2, v4, v8}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_4
.end method

.method public getEllipsisCount(I)I
    .locals 1
    .parameter "line"

    .prologue
    .line 421
    iget v0, p0, Landroid/text/BoringLayout;->mEllipsizedCount:I

    return v0
.end method

.method public getEllipsisStart(I)I
    .locals 1
    .parameter "line"

    .prologue
    .line 426
    iget v0, p0, Landroid/text/BoringLayout;->mEllipsizedStart:I

    return v0
.end method

.method public getEllipsizedWidth()I
    .locals 1

    .prologue
    .line 431
    iget v0, p0, Landroid/text/BoringLayout;->mEllipsizedWidth:I

    return v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 355
    iget v0, p0, Landroid/text/BoringLayout;->mBottom:I

    return v0
.end method

.method public getLineContainsTab(I)Z
    .locals 1
    .parameter "line"

    .prologue
    .line 391
    const/4 v0, 0x0

    return v0
.end method

.method public getLineCount()I
    .locals 1

    .prologue
    .line 360
    const/4 v0, 0x1

    return v0
.end method

.method public getLineDescent(I)I
    .locals 1
    .parameter "line"

    .prologue
    .line 373
    iget v0, p0, Landroid/text/BoringLayout;->mDesc:I

    return v0
.end method

.method public final getLineDirections(I)Landroid/text/Layout$Directions;
    .locals 1
    .parameter "line"

    .prologue
    .line 406
    sget-object v0, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    return-object v0
.end method

.method public getLineForOffset(I)I
    .locals 1
    .parameter "offset"

    .prologue
    .line 442
    const/4 v0, 0x0

    return v0
.end method

.method public getLineForVertical(I)I
    .locals 1
    .parameter "vertical"

    .prologue
    .line 448
    const/4 v0, 0x0

    return v0
.end method

.method public getLineLeft(I)F
    .locals 8
    .parameter "line"

    .prologue
    const/4 v7, -0x1

    const/4 v5, 0x0

    .line 884
    invoke-virtual {p0, p1}, Landroid/text/BoringLayout;->getParagraphDirection(I)I

    move-result v1

    .line 885
    .local v1, dir:I
    invoke-virtual {p0, p1}, Landroid/text/BoringLayout;->getParagraphAlignment(I)Landroid/text/Layout$Alignment;

    move-result-object v0

    .line 887
    .local v0, align:Landroid/text/Layout$Alignment;
    sget-object v6, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    if-ne v0, v6, :cond_1

    .line 906
    :cond_0
    :goto_0
    return v5

    .line 889
    :cond_1
    sget-object v6, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    if-ne v0, v6, :cond_2

    .line 890
    if-ne v1, v7, :cond_0

    .line 891
    invoke-virtual {p0, p1}, Landroid/text/BoringLayout;->getParagraphRight(I)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p0, p1}, Landroid/text/BoringLayout;->getLineMax(I)F

    move-result v6

    sub-float/2addr v5, v6

    goto :goto_0

    .line 894
    :cond_2
    sget-object v6, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    if-ne v0, v6, :cond_3

    .line 895
    iget v5, p0, Landroid/text/BoringLayout;->mWidth:I

    int-to-float v5, v5

    invoke-virtual {p0, p1}, Landroid/text/BoringLayout;->getLineMax(I)F

    move-result v6

    sub-float/2addr v5, v6

    goto :goto_0

    .line 896
    :cond_3
    sget-object v6, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    if-ne v0, v6, :cond_4

    .line 897
    if-eq v1, v7, :cond_0

    .line 900
    iget v5, p0, Landroid/text/BoringLayout;->mWidth:I

    int-to-float v5, v5

    invoke-virtual {p0, p1}, Landroid/text/BoringLayout;->getLineMax(I)F

    move-result v6

    sub-float/2addr v5, v6

    goto :goto_0

    .line 902
    :cond_4
    invoke-virtual {p0, p1}, Landroid/text/BoringLayout;->getParagraphLeft(I)I

    move-result v2

    .line 903
    .local v2, left:I
    invoke-virtual {p0, p1}, Landroid/text/BoringLayout;->getParagraphRight(I)I

    move-result v4

    .line 904
    .local v4, right:I
    invoke-virtual {p0, p1}, Landroid/text/BoringLayout;->getLineMax(I)F

    move-result v5

    float-to-int v5, v5

    and-int/lit8 v3, v5, -0x2

    .line 906
    .local v3, max:I
    sub-int v5, v4, v2

    sub-int/2addr v5, v3

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v2

    int-to-float v5, v5

    goto :goto_0
.end method

.method public getLineMax(I)F
    .locals 1
    .parameter "line"

    .prologue
    .line 396
    iget v0, p0, Landroid/text/BoringLayout;->mMax:F

    return v0
.end method

.method public getLineRight(I)F
    .locals 7
    .parameter "line"

    .prologue
    const/4 v6, -0x1

    .line 916
    invoke-virtual {p0, p1}, Landroid/text/BoringLayout;->getParagraphDirection(I)I

    move-result v1

    .line 917
    .local v1, dir:I
    invoke-virtual {p0, p1}, Landroid/text/BoringLayout;->getParagraphAlignment(I)Landroid/text/Layout$Alignment;

    move-result-object v0

    .line 919
    .local v0, align:Landroid/text/Layout$Alignment;
    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    if-ne v0, v5, :cond_0

    .line 920
    invoke-virtual {p0, p1}, Landroid/text/BoringLayout;->getParagraphLeft(I)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p0, p1}, Landroid/text/BoringLayout;->getLineMax(I)F

    move-result v6

    add-float/2addr v5, v6

    .line 938
    :goto_0
    return v5

    .line 921
    :cond_0
    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    if-ne v0, v5, :cond_2

    .line 922
    if-ne v1, v6, :cond_1

    .line 923
    iget v5, p0, Landroid/text/BoringLayout;->mWidth:I

    int-to-float v5, v5

    goto :goto_0

    .line 925
    :cond_1
    invoke-virtual {p0, p1}, Landroid/text/BoringLayout;->getParagraphLeft(I)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p0, p1}, Landroid/text/BoringLayout;->getLineMax(I)F

    move-result v6

    add-float/2addr v5, v6

    goto :goto_0

    .line 926
    :cond_2
    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    if-ne v0, v5, :cond_3

    .line 927
    iget v5, p0, Landroid/text/BoringLayout;->mWidth:I

    int-to-float v5, v5

    goto :goto_0

    .line 928
    :cond_3
    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    if-ne v0, v5, :cond_5

    .line 929
    if-ne v1, v6, :cond_4

    .line 930
    invoke-virtual {p0, p1}, Landroid/text/BoringLayout;->getLineMax(I)F

    move-result v5

    goto :goto_0

    .line 932
    :cond_4
    iget v5, p0, Landroid/text/BoringLayout;->mWidth:I

    int-to-float v5, v5

    goto :goto_0

    .line 934
    :cond_5
    invoke-virtual {p0, p1}, Landroid/text/BoringLayout;->getParagraphLeft(I)I

    move-result v2

    .line 935
    .local v2, left:I
    invoke-virtual {p0, p1}, Landroid/text/BoringLayout;->getParagraphRight(I)I

    move-result v4

    .line 936
    .local v4, right:I
    invoke-virtual {p0, p1}, Landroid/text/BoringLayout;->getLineMax(I)F

    move-result v5

    float-to-int v5, v5

    and-int/lit8 v3, v5, -0x2

    .line 938
    .local v3, max:I
    sub-int v5, v4, v2

    sub-int/2addr v5, v3

    div-int/lit8 v5, v5, 0x2

    sub-int v5, v4, v5

    int-to-float v5, v5

    goto :goto_0
.end method

.method public getLineStart(I)I
    .locals 1
    .parameter "line"

    .prologue
    .line 378
    if-gtz p1, :cond_0

    .line 379
    const/4 v0, 0x0

    .line 381
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/text/BoringLayout;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    goto :goto_0
.end method

.method public getLineTop(I)I
    .locals 1
    .parameter "line"

    .prologue
    .line 365
    if-gtz p1, :cond_0

    .line 366
    const/4 v0, 0x0

    .line 368
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/text/BoringLayout;->mBottom:I

    goto :goto_0
.end method

.method public getLineWidth(I)F
    .locals 1
    .parameter "line"

    .prologue
    .line 401
    iget v0, p0, Landroid/text/BoringLayout;->mMax:F

    return v0
.end method

.method public getOffsetForHorizontal(IF)I
    .locals 20
    .parameter "line"
    .parameter "horiz"

    .prologue
    .line 457
    if-eqz p1, :cond_0

    .line 458
    const/16 p1, 0x0

    .line 460
    :cond_0
    invoke-virtual/range {p0 .. p1}, Landroid/text/BoringLayout;->getLineEnd(I)I

    move-result v18

    add-int/lit8 v13, v18, -0x1

    .line 461
    .local v13, max:I
    invoke-virtual/range {p0 .. p1}, Landroid/text/BoringLayout;->getLineStart(I)I

    move-result v14

    .line 462
    .local v14, min:I
    invoke-virtual/range {p0 .. p1}, Landroid/text/BoringLayout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v6

    .line 464
    .local v6, dirs:Landroid/text/Layout$Directions;
    invoke-virtual/range {p0 .. p0}, Landroid/text/BoringLayout;->getLineCount()I

    move-result v18

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, p1

    move/from16 v1, v18

    if-ne v0, v1, :cond_1

    .line 465
    add-int/lit8 v13, v13, 0x1

    .line 467
    :cond_1
    move v4, v14

    .line 468
    .local v4, best:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/text/BoringLayout;->getPrimaryHorizontal(I)F

    move-result v18

    sub-float v18, v18, p2

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(F)F

    move-result v5

    .line 470
    .local v5, bestdist:F
    const/4 v11, 0x0

    .local v11, i:I
    :goto_0
    iget-object v0, v6, Landroid/text/Layout$Directions;->mDirections:[I

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v11, v0, :cond_a

    .line 471
    iget-object v0, v6, Landroid/text/Layout$Directions;->mDirections:[I

    move-object/from16 v18, v0

    aget v18, v18, v11

    add-int v9, v14, v18

    .line 472
    .local v9, here:I
    iget-object v0, v6, Landroid/text/Layout$Directions;->mDirections:[I

    move-object/from16 v18, v0

    add-int/lit8 v19, v11, 0x1

    aget v18, v18, v19

    const v19, 0x3ffffff

    and-int v18, v18, v19

    add-int v17, v9, v18

    .line 473
    .local v17, there:I
    iget-object v0, v6, Landroid/text/Layout$Directions;->mDirections:[I

    move-object/from16 v18, v0

    add-int/lit8 v19, v11, 0x1

    aget v18, v18, v19

    const/high16 v19, 0x400

    and-int v18, v18, v19

    if-eqz v18, :cond_3

    const/16 v16, -0x1

    .line 475
    .local v16, swap:I
    :goto_1
    move/from16 v0, v17

    if-le v0, v13, :cond_2

    .line 476
    move/from16 v17, v13

    .line 477
    :cond_2
    add-int/lit8 v18, v17, -0x1

    add-int/lit8 v10, v18, 0x1

    .local v10, high:I
    add-int/lit8 v18, v9, 0x1

    add-int/lit8 v12, v18, -0x1

    .line 479
    .local v12, low:I
    :goto_2
    sub-int v18, v10, v12

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_5

    .line 480
    add-int v18, v10, v12

    div-int/lit8 v8, v18, 0x2

    .line 481
    .local v8, guess:I
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Landroid/text/BoringLayout;->getOffsetAtStartOf(I)I

    move-result v2

    .line 483
    .local v2, adguess:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/text/BoringLayout;->getPrimaryHorizontal(I)F

    move-result v18

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v19, v0

    mul-float v18, v18, v19

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v19, v0

    mul-float v19, v19, p2

    cmpl-float v18, v18, v19

    if-ltz v18, :cond_4

    .line 484
    move v10, v8

    goto :goto_2

    .line 473
    .end local v2           #adguess:I
    .end local v8           #guess:I
    .end local v10           #high:I
    .end local v12           #low:I
    .end local v16           #swap:I
    :cond_3
    const/16 v16, 0x1

    goto :goto_1

    .line 486
    .restart local v2       #adguess:I
    .restart local v8       #guess:I
    .restart local v10       #high:I
    .restart local v12       #low:I
    .restart local v16       #swap:I
    :cond_4
    move v12, v8

    goto :goto_2

    .line 489
    .end local v2           #adguess:I
    .end local v8           #guess:I
    :cond_5
    add-int/lit8 v18, v9, 0x1

    move/from16 v0, v18

    if-ge v12, v0, :cond_6

    .line 490
    add-int/lit8 v12, v9, 0x1

    .line 492
    :cond_6
    move/from16 v0, v17

    if-ge v12, v0, :cond_8

    .line 493
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Landroid/text/BoringLayout;->getOffsetAtStartOf(I)I

    move-result v12

    .line 495
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/text/BoringLayout;->getPrimaryHorizontal(I)F

    move-result v18

    sub-float v18, v18, p2

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(F)F

    move-result v7

    .line 497
    .local v7, dist:F
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/BoringLayout;->mText:Ljava/lang/CharSequence;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-static {v0, v12}, Landroid/text/TextUtils;->getOffsetAfter(Ljava/lang/CharSequence;I)I

    move-result v3

    .line 498
    .local v3, aft:I
    move/from16 v0, v17

    if-ge v3, v0, :cond_7

    .line 499
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/text/BoringLayout;->getPrimaryHorizontal(I)F

    move-result v18

    sub-float v18, v18, p2

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(F)F

    move-result v15

    .line 501
    .local v15, other:F
    cmpg-float v18, v15, v7

    if-gez v18, :cond_7

    .line 502
    move v7, v15

    .line 503
    move v12, v3

    .line 507
    .end local v15           #other:F
    :cond_7
    cmpg-float v18, v7, v5

    if-gez v18, :cond_8

    .line 508
    move v5, v7

    .line 509
    move v4, v12

    .line 513
    .end local v3           #aft:I
    .end local v7           #dist:F
    :cond_8
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Landroid/text/BoringLayout;->getPrimaryHorizontal(I)F

    move-result v18

    sub-float v18, v18, p2

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(F)F

    move-result v7

    .line 515
    .restart local v7       #dist:F
    cmpg-float v18, v7, v5

    if-gez v18, :cond_9

    .line 516
    move v5, v7

    .line 517
    move v4, v9

    .line 470
    :cond_9
    add-int/lit8 v11, v11, 0x2

    goto/16 :goto_0

    .line 521
    .end local v7           #dist:F
    .end local v9           #here:I
    .end local v10           #high:I
    .end local v12           #low:I
    .end local v16           #swap:I
    .end local v17           #there:I
    :cond_a
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/text/BoringLayout;->getPrimaryHorizontal(I)F

    move-result v18

    sub-float v18, v18, p2

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(F)F

    move-result v7

    .line 523
    .restart local v7       #dist:F
    cmpg-float v18, v7, v5

    if-gez v18, :cond_b

    .line 524
    move v5, v7

    .line 525
    move v4, v13

    .line 528
    :cond_b
    return v4
.end method

.method public getOffsetToLeftOf(I)I
    .locals 2
    .parameter "offset"

    .prologue
    .line 565
    iget-object v1, p0, Landroid/text/BoringLayout;->mText:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 566
    .local v0, len:I
    if-gez p1, :cond_0

    .line 567
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1

    .line 568
    :cond_0
    if-le p1, v0, :cond_1

    .line 569
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1

    .line 573
    :cond_1
    add-int/lit8 p1, p1, -0x1

    .line 575
    if-gez p1, :cond_3

    .line 576
    const/4 v0, 0x0

    .line 580
    .end local v0           #len:I
    :cond_2
    :goto_0
    return v0

    .line 577
    .restart local v0       #len:I
    :cond_3
    if-gt p1, v0, :cond_2

    move v0, p1

    .line 580
    goto :goto_0
.end method

.method public getOffsetToRightOf(I)I
    .locals 2
    .parameter "offset"

    .prologue
    .line 586
    iget-object v1, p0, Landroid/text/BoringLayout;->mText:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 587
    .local v0, len:I
    if-gez p1, :cond_0

    .line 588
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1

    .line 589
    :cond_0
    if-le p1, v0, :cond_1

    .line 590
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1

    .line 594
    :cond_1
    add-int/lit8 p1, p1, 0x1

    .line 596
    if-gez p1, :cond_3

    .line 597
    const/4 v0, 0x0

    .line 601
    .end local v0           #len:I
    :cond_2
    :goto_0
    return v0

    .line 598
    .restart local v0       #len:I
    :cond_3
    if-gt p1, v0, :cond_2

    move v0, p1

    .line 601
    goto :goto_0
.end method

.method public getParagraphDirection(I)I
    .locals 1
    .parameter "line"

    .prologue
    .line 386
    const/4 v0, 0x1

    return v0
.end method

.method public getPrimaryHorizontal(I)F
    .locals 1
    .parameter "offset"

    .prologue
    .line 612
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/text/BoringLayout;->getHorizontal(IZ)F

    move-result v0

    return v0
.end method

.method public getSecondaryHorizontal(I)F
    .locals 1
    .parameter "offset"

    .prologue
    .line 622
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/text/BoringLayout;->getHorizontal(IZ)F

    move-result v0

    return v0
.end method

.method public getSelectionPath(IILandroid/graphics/Path;)V
    .locals 19
    .parameter "start"
    .parameter "end"
    .parameter "dest"

    .prologue
    .line 817
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Path;->reset()V

    .line 819
    move/from16 v0, p1

    move/from16 v1, p2

    if-ne v0, v1, :cond_0

    .line 866
    :goto_0
    return-void

    .line 822
    :cond_0
    move/from16 v0, p2

    move/from16 v1, p1

    if-ge v0, v1, :cond_1

    .line 823
    move/from16 v17, p2

    .line 824
    .local v17, temp:I
    move/from16 p2, p1

    .line 825
    move/from16 p1, v17

    .line 828
    .end local v17           #temp:I
    :cond_1
    invoke-virtual/range {p0 .. p1}, Landroid/text/BoringLayout;->getLineForOffset(I)I

    move-result v3

    .line 829
    .local v3, startline:I
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/text/BoringLayout;->getLineForOffset(I)I

    move-result v15

    .line 831
    .local v15, endline:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/text/BoringLayout;->getLineTop(I)I

    move-result v6

    .line 832
    .local v6, top:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/text/BoringLayout;->getLineBottom(I)I

    move-result v7

    .line 834
    .local v7, bottom:I
    if-ne v3, v15, :cond_2

    move-object/from16 v2, p0

    move/from16 v4, p1

    move/from16 v5, p2

    move-object/from16 v8, p3

    .line 835
    invoke-direct/range {v2 .. v8}, Landroid/text/BoringLayout;->addSelection(IIIIILandroid/graphics/Path;)V

    goto :goto_0

    .line 837
    :cond_2
    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/BoringLayout;->mWidth:I

    int-to-float v0, v2

    move/from16 v18, v0

    .line 839
    .local v18, width:F
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/text/BoringLayout;->getLineEnd(I)I

    move-result v11

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/text/BoringLayout;->getLineBottom(I)I

    move-result v13

    move-object/from16 v8, p0

    move v9, v3

    move/from16 v10, p1

    move v12, v6

    move-object/from16 v14, p3

    invoke-direct/range {v8 .. v14}, Landroid/text/BoringLayout;->addSelection(IIIIILandroid/graphics/Path;)V

    .line 842
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/text/BoringLayout;->getParagraphDirection(I)I

    move-result v2

    const/4 v4, -0x1

    if-ne v2, v4, :cond_3

    .line 843
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/text/BoringLayout;->getLineLeft(I)F

    move-result v9

    int-to-float v10, v6

    const/4 v11, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/text/BoringLayout;->getLineBottom(I)I

    move-result v2

    int-to-float v12, v2

    sget-object v13, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object/from16 v8, p3

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    .line 849
    :goto_1
    add-int/lit8 v16, v3, 0x1

    .local v16, i:I
    :goto_2
    move/from16 v0, v16

    if-ge v0, v15, :cond_4

    .line 850
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/text/BoringLayout;->getLineTop(I)I

    move-result v6

    .line 851
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/text/BoringLayout;->getLineBottom(I)I

    move-result v7

    .line 852
    const/4 v9, 0x0

    int-to-float v10, v6

    int-to-float v12, v7

    sget-object v13, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object/from16 v8, p3

    move/from16 v11, v18

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    .line 849
    add-int/lit8 v16, v16, 0x1

    goto :goto_2

    .line 846
    .end local v16           #i:I
    :cond_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/text/BoringLayout;->getLineRight(I)F

    move-result v9

    int-to-float v10, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/text/BoringLayout;->getLineBottom(I)I

    move-result v2

    int-to-float v12, v2

    sget-object v13, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object/from16 v8, p3

    move/from16 v11, v18

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    goto :goto_1

    .line 855
    .restart local v16       #i:I
    :cond_4
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/text/BoringLayout;->getLineTop(I)I

    move-result v6

    .line 856
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/text/BoringLayout;->getLineBottom(I)I

    move-result v7

    .line 858
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/text/BoringLayout;->getLineStart(I)I

    move-result v10

    move-object/from16 v8, p0

    move v9, v15

    move/from16 v11, p2

    move v12, v6

    move v13, v7

    move-object/from16 v14, p3

    invoke-direct/range {v8 .. v14}, Landroid/text/BoringLayout;->addSelection(IIIIILandroid/graphics/Path;)V

    .line 861
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/text/BoringLayout;->getParagraphDirection(I)I

    move-result v2

    const/4 v4, -0x1

    if-ne v2, v4, :cond_5

    .line 862
    int-to-float v10, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/text/BoringLayout;->getLineRight(I)F

    move-result v11

    int-to-float v12, v7

    sget-object v13, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object/from16 v8, p3

    move/from16 v9, v18

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    goto/16 :goto_0

    .line 864
    :cond_5
    const/4 v9, 0x0

    int-to-float v10, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/text/BoringLayout;->getLineLeft(I)F

    move-result v11

    int-to-float v12, v7

    sget-object v13, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object/from16 v8, p3

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    goto/16 :goto_0
.end method

.method public getTopPadding()I
    .locals 1

    .prologue
    .line 411
    iget v0, p0, Landroid/text/BoringLayout;->mTopPadding:I

    return v0
.end method

.method init(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;ZZ)V
    .locals 11
    .parameter "source"
    .parameter "paint"
    .parameter "outerwidth"
    .parameter "align"
    .parameter "spacingmult"
    .parameter "spacingadd"
    .parameter "metrics"
    .parameter "includepad"
    .parameter "trustWidth"

    .prologue
    .line 203
    instance-of v2, p1, Ljava/lang/String;

    if-eqz v2, :cond_3

    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    if-ne p4, v2, :cond_3

    .line 204
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/text/BoringLayout;->mDirect:Ljava/lang/String;

    .line 210
    :goto_0
    if-eqz p8, :cond_4

    .line 211
    move-object/from16 v0, p7

    iget v2, v0, Landroid/text/BoringLayout$Metrics;->bottom:I

    move-object/from16 v0, p7

    iget v3, v0, Landroid/text/BoringLayout$Metrics;->top:I

    sub-int v10, v2, v3

    .line 216
    .local v10, spacing:I
    :goto_1
    const/high16 v2, 0x3f80

    cmpl-float v2, p5, v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    cmpl-float v2, p6, v2

    if-eqz v2, :cond_1

    .line 217
    :cond_0
    int-to-float v2, v10

    mul-float v2, v2, p5

    add-float v2, v2, p6

    const/high16 v3, 0x3f00

    add-float/2addr v2, v3

    float-to-int v10, v2

    .line 220
    :cond_1
    iput v10, p0, Landroid/text/BoringLayout;->mBottom:I

    .line 222
    if-eqz p8, :cond_5

    .line 223
    move-object/from16 v0, p7

    iget v2, v0, Landroid/text/BoringLayout$Metrics;->top:I

    add-int/2addr v2, v10

    iput v2, p0, Landroid/text/BoringLayout;->mDesc:I

    .line 228
    :goto_2
    if-eqz p9, :cond_6

    .line 229
    move-object/from16 v0, p7

    iget v2, v0, Landroid/text/BoringLayout$Metrics;->width:I

    int-to-float v2, v2

    iput v2, p0, Landroid/text/BoringLayout;->mMax:F

    .line 243
    :goto_3
    if-eqz p8, :cond_2

    .line 244
    move-object/from16 v0, p7

    iget v2, v0, Landroid/text/BoringLayout$Metrics;->top:I

    move-object/from16 v0, p7

    iget v3, v0, Landroid/text/BoringLayout$Metrics;->ascent:I

    sub-int/2addr v2, v3

    iput v2, p0, Landroid/text/BoringLayout;->mTopPadding:I

    .line 245
    move-object/from16 v0, p7

    iget v2, v0, Landroid/text/BoringLayout$Metrics;->bottom:I

    move-object/from16 v0, p7

    iget v3, v0, Landroid/text/BoringLayout$Metrics;->descent:I

    sub-int/2addr v2, v3

    iput v2, p0, Landroid/text/BoringLayout;->mBottomPadding:I

    .line 248
    :cond_2
    #getter for: Landroid/text/BoringLayout$Metrics;->hasEmoji:Z
    invoke-static/range {p7 .. p7}, Landroid/text/BoringLayout$Metrics;->access$000(Landroid/text/BoringLayout$Metrics;)Z

    move-result v2

    iput-boolean v2, p0, Landroid/text/BoringLayout;->mHasEmoji:Z

    .line 249
    return-void

    .line 206
    .end local v10           #spacing:I
    :cond_3
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/text/BoringLayout;->mDirect:Ljava/lang/String;

    goto :goto_0

    .line 213
    :cond_4
    move-object/from16 v0, p7

    iget v2, v0, Landroid/text/BoringLayout$Metrics;->descent:I

    move-object/from16 v0, p7

    iget v3, v0, Landroid/text/BoringLayout$Metrics;->ascent:I

    sub-int v10, v2, v3

    .restart local v10       #spacing:I
    goto :goto_1

    .line 225
    :cond_5
    move-object/from16 v0, p7

    iget v2, v0, Landroid/text/BoringLayout$Metrics;->ascent:I

    add-int/2addr v2, v10

    iput v2, p0, Landroid/text/BoringLayout;->mDesc:I

    goto :goto_2

    .line 236
    :cond_6
    invoke-static {}, Landroid/text/TextLine;->obtain()Landroid/text/TextLine;

    move-result-object v1

    .line 237
    .local v1, line:Landroid/text/TextLine;
    const/4 v4, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    const/4 v6, 0x1

    sget-object v7, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    #getter for: Landroid/text/BoringLayout$Metrics;->hasEmoji:Z
    invoke-static/range {p7 .. p7}, Landroid/text/BoringLayout$Metrics;->access$000(Landroid/text/BoringLayout$Metrics;)Z

    move-result v8

    const/4 v9, 0x0

    move-object v2, p2

    move-object v3, p1

    invoke-virtual/range {v1 .. v9}, Landroid/text/TextLine;->set(Landroid/text/TextPaint;Ljava/lang/CharSequence;IIILandroid/text/Layout$Directions;ZLandroid/text/Layout$TabStops;)V

    .line 239
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/text/TextLine;->metrics(Landroid/graphics/Paint$FontMetricsInt;)F

    move-result v2

    invoke-static {v2}, Landroid/util/FloatMath;->ceil(F)F

    move-result v2

    float-to-int v2, v2

    int-to-float v2, v2

    iput v2, p0, Landroid/text/BoringLayout;->mMax:F

    .line 240
    invoke-static {v1}, Landroid/text/TextLine;->recycle(Landroid/text/TextLine;)Landroid/text/TextLine;

    goto :goto_3
.end method

.method initLayout()V
    .locals 0

    .prologue
    .line 193
    return-void
.end method

.method isValidLine(I)Z
    .locals 1
    .parameter "line"

    .prologue
    const/4 v0, 0x0

    .line 875
    invoke-virtual {p0, p1, v0, v0}, Landroid/text/BoringLayout;->isValidLine(III)Z

    move-result v0

    return v0
.end method

.method reflowFull(Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 186
    return-void
.end method

.method public replaceOrMake(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;Z)Landroid/text/BoringLayout;
    .locals 10
    .parameter "source"
    .parameter "paint"
    .parameter "outerwidth"
    .parameter "align"
    .parameter "spacingmult"
    .parameter "spacingadd"
    .parameter "metrics"
    .parameter "includepad"

    .prologue
    .line 85
    invoke-virtual/range {p0 .. p6}, Landroid/text/BoringLayout;->replaceWith(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FF)V

    .line 88
    iput p3, p0, Landroid/text/BoringLayout;->mEllipsizedWidth:I

    .line 89
    const/4 v0, 0x0

    iput v0, p0, Landroid/text/BoringLayout;->mEllipsizedStart:I

    .line 90
    const/4 v0, 0x0

    iput v0, p0, Landroid/text/BoringLayout;->mEllipsizedCount:I

    .line 92
    const/4 v9, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    invoke-virtual/range {v0 .. v9}, Landroid/text/BoringLayout;->init(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;ZZ)V

    .line 94
    return-object p0
.end method

.method public replaceOrMake(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;ZLandroid/text/TextUtils$TruncateAt;I)Landroid/text/BoringLayout;
    .locals 11
    .parameter "source"
    .parameter "paint"
    .parameter "outerwidth"
    .parameter "align"
    .parameter "spacingmult"
    .parameter "spacingadd"
    .parameter "metrics"
    .parameter "includepad"
    .parameter "ellipsize"
    .parameter "ellipsizedWidth"

    .prologue
    .line 111
    if-eqz p9, :cond_0

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p9

    if-ne v0, v1, :cond_1

    .line 112
    :cond_0
    invoke-virtual/range {p0 .. p6}, Landroid/text/BoringLayout;->replaceWith(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FF)V

    .line 115
    iput p3, p0, Landroid/text/BoringLayout;->mEllipsizedWidth:I

    .line 116
    const/4 v1, 0x0

    iput v1, p0, Landroid/text/BoringLayout;->mEllipsizedStart:I

    .line 117
    const/4 v1, 0x0

    iput v1, p0, Landroid/text/BoringLayout;->mEllipsizedCount:I

    .line 118
    const/4 v10, 0x1

    .line 129
    .local v10, trust:Z
    :goto_0
    invoke-virtual {p0}, Landroid/text/BoringLayout;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    move-object v1, p0

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    invoke-virtual/range {v1 .. v10}, Landroid/text/BoringLayout;->init(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;ZZ)V

    .line 131
    return-object p0

    .line 120
    .end local v10           #trust:Z
    :cond_1
    move/from16 v0, p10

    int-to-float v3, v0

    const/4 v5, 0x1

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v4, p9

    move-object v6, p0

    invoke-static/range {v1 .. v6}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;ZLandroid/text/TextUtils$EllipsizeCallback;)Ljava/lang/CharSequence;

    move-result-object v2

    move-object v1, p0

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    invoke-virtual/range {v1 .. v7}, Landroid/text/BoringLayout;->replaceWith(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FF)V

    .line 125
    move/from16 v0, p10

    iput v0, p0, Landroid/text/BoringLayout;->mEllipsizedWidth:I

    .line 126
    const/4 v10, 0x0

    .restart local v10       #trust:Z
    goto :goto_0
.end method

.class public final Landroid/graphics/BlockLayout;
.super Ljava/lang/Object;
.source "BlockLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/BlockLayout$CaretPosition;
    }
.end annotation


# static fields
.field public static final AUTO_DIRECTION:I = 0x3

.field public static final BOTH_POSITIONS:I = 0x6

.field public static final DEFAULT_FLAGS:I = 0x0

.field private static final EMOJI_BASELINE_PERCENT_DROP:F = 0.2f

.field private static final EMOJI_FACTORY:Landroid/emoji/EmojiFactory; = null

.field public static final EMOJI_GLYPH_BASE:I = 0xfa00

.field public static final FLAGS_ELLIPSIZE_MARQUEE:I = 0x20

.field public static final FLAGS_ELLIPSIZE_TRUNCATE_AT_END:I = 0x8

.field public static final FLAGS_ELLIPSIZE_TRUNCATE_AT_MIDDLE:I = 0x10

.field public static final FLAGS_ELLIPSIZE_TRUNCATE_AT_START:I = 0x4

.field public static final FLAGS_INCLUDE_PADDING:I = 0x2

.field public static final FLAGS_USE_THAI_DICTIONARY:I = 0x1

.field public static final HIDE_DIRECTION:I = 0x2

#the value of this static final field might be set in the static constructor
.field private static final MAX_EMOJI:I = 0x0

.field public static final MAX_LINE_WIDTH:I = 0x7fff

#the value of this static final field might be set in the static constructor
.field private static final MIN_EMOJI:I = 0x0

.field public static final PRIMARY_POSITION:I = 0x4

.field public static final SECONDARY_POSITION:I = 0x5

.field public static final SHOW_DIRECTION:I = 0x1

.field static sGarbage:[I

.field static sGarbageTop:I


# instance fields
.field private mCaretPosition:Landroid/graphics/BlockLayout$CaretPosition;

.field private mNativeBlockLayout:I

.field private mTempRect:Landroid/graphics/RectF;

.field private mText:Landroid/graphics/Text;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/16 v6, 0x64

    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 23
    invoke-static {}, Landroid/emoji/EmojiFactory;->newAvailableInstance()Landroid/emoji/EmojiFactory;

    move-result-object v3

    sput-object v3, Landroid/graphics/BlockLayout;->EMOJI_FACTORY:Landroid/emoji/EmojiFactory;

    .line 34
    sget-object v3, Landroid/graphics/BlockLayout;->EMOJI_FACTORY:Landroid/emoji/EmojiFactory;

    if-eqz v3, :cond_0

    .line 35
    sget-object v3, Landroid/graphics/BlockLayout;->EMOJI_FACTORY:Landroid/emoji/EmojiFactory;

    invoke-virtual {v3}, Landroid/emoji/EmojiFactory;->getMinimumAndroidPua()I

    move-result v3

    sput v3, Landroid/graphics/BlockLayout;->MIN_EMOJI:I

    .line 36
    sget-object v3, Landroid/graphics/BlockLayout;->EMOJI_FACTORY:Landroid/emoji/EmojiFactory;

    invoke-virtual {v3}, Landroid/emoji/EmojiFactory;->getMaximumAndroidPua()I

    move-result v3

    sput v3, Landroid/graphics/BlockLayout;->MAX_EMOJI:I

    .line 117
    :goto_0
    const-string/jumbo v3, "textrendering"

    invoke-static {v3}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 119
    new-instance v1, Landroid/graphics/Text;

    const-string/jumbo v3, "pre-cache"

    invoke-direct {v1, v3}, Landroid/graphics/Text;-><init>(Ljava/lang/String;)V

    .line 120
    .local v1, text:Landroid/graphics/Text;
    new-instance v2, Landroid/text/TextPaint;

    invoke-direct {v2}, Landroid/text/TextPaint;-><init>()V

    .line 121
    .local v2, textPaint:Landroid/text/TextPaint;
    invoke-virtual {v1}, Landroid/graphics/Text;->getLength()I

    move-result v3

    invoke-virtual {v1, v4, v3, v2}, Landroid/graphics/Text;->setPaint(IILandroid/text/TextPaint;)V

    .line 122
    new-instance v0, Landroid/graphics/BlockLayout;

    invoke-direct {v0, v1}, Landroid/graphics/BlockLayout;-><init>(Landroid/graphics/Text;)V

    .line 123
    .local v0, layout:Landroid/graphics/BlockLayout;
    invoke-virtual {v0, v2, v6}, Landroid/graphics/BlockLayout;->doLayout(Landroid/graphics/Paint;I)I

    .line 124
    const-string/jumbo v3, "vendor"

    invoke-static {v3, v4}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 125
    invoke-virtual {v1}, Landroid/graphics/Text;->getLength()I

    move-result v3

    invoke-virtual {v1, v4, v3, v2}, Landroid/graphics/Text;->setPaint(IILandroid/text/TextPaint;)V

    .line 126
    invoke-virtual {v0, v2, v6}, Landroid/graphics/BlockLayout;->doLayout(Landroid/graphics/Paint;I)I

    .line 705
    sput v4, Landroid/graphics/BlockLayout;->sGarbageTop:I

    .line 707
    const/4 v3, 0x6

    new-array v3, v3, [I

    fill-array-data v3, :array_0

    sput-object v3, Landroid/graphics/BlockLayout;->sGarbage:[I

    return-void

    .line 38
    .end local v0           #layout:Landroid/graphics/BlockLayout;
    .end local v1           #text:Landroid/graphics/Text;
    .end local v2           #textPaint:Landroid/text/TextPaint;
    :cond_0
    sput v5, Landroid/graphics/BlockLayout;->MIN_EMOJI:I

    .line 39
    sput v5, Landroid/graphics/BlockLayout;->MAX_EMOJI:I

    goto :goto_0

    .line 707
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/graphics/Text;)V
    .locals 2
    .parameter "text"

    .prologue
    const/4 v1, 0x0

    .line 135
    const/4 v0, 0x3

    invoke-direct {p0, p1, v0, v1, v1}, Landroid/graphics/BlockLayout;-><init>(Landroid/graphics/Text;III)V

    .line 136
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Text;III)V
    .locals 1
    .parameter "text"
    .parameter "baseAlignment"
    .parameter "defaultTabStopPosition"
    .parameter "flags"

    .prologue
    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    iget v0, p1, Landroid/graphics/Text;->mNativeText:I

    invoke-static {v0, p2, p3, p4}, Landroid/graphics/BlockLayout;->initBlockLayout(IIII)I

    move-result v0

    iput v0, p0, Landroid/graphics/BlockLayout;->mNativeBlockLayout:I

    .line 142
    iget v0, p0, Landroid/graphics/BlockLayout;->mNativeBlockLayout:I

    if-nez v0, :cond_0

    .line 143
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 145
    :cond_0
    iput-object p1, p0, Landroid/graphics/BlockLayout;->mText:Landroid/graphics/Text;

    .line 147
    return-void
.end method

.method private constructor <init>(Landroid/graphics/Text;IIII)V
    .locals 1
    .parameter "text"
    .parameter "nativeBlockLayout"
    .parameter "baseAlignment"
    .parameter "defaultTabStopPosition"
    .parameter "flags"

    .prologue
    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    iget v0, p1, Landroid/graphics/Text;->mNativeText:I

    invoke-static {v0, p2, p3, p4, p5}, Landroid/graphics/BlockLayout;->reinitBlockLayout(IIIII)V

    .line 153
    iput p2, p0, Landroid/graphics/BlockLayout;->mNativeBlockLayout:I

    .line 155
    iget v0, p0, Landroid/graphics/BlockLayout;->mNativeBlockLayout:I

    if-nez v0, :cond_0

    .line 156
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 158
    :cond_0
    iput-object p1, p0, Landroid/graphics/BlockLayout;->mText:Landroid/graphics/Text;

    .line 160
    return-void
.end method

.method private static native doLayout(IIII)I
.end method

.method private static native finalizer(I)V
.end method

.method private static native getBottomPadding(I)I
.end method

.method private static native getCharSubstitutionPosition(IILandroid/graphics/Text$CharSubstitution;)V
.end method

.method private static native getCursorPath(IIIIII)V
.end method

.method private static native getEllipsisCount(II)I
.end method

.method private static native getEllipsisStart(II)I
.end method

.method private static native getGlyphRun(I[III[C[FLandroid/text/TextPaint;)I
.end method

.method private static native getHorizontal(IIZZ)F
.end method

.method private static native getLineCount(I)I
.end method

.method private static native getLineDescent(II)I
.end method

.method private static native getLineDirections(II)[I
.end method

.method private static native getLineForOffset(II)I
.end method

.method private static native getLineForVertical(II)I
.end method

.method private static native getLineLeft(II)F
.end method

.method private static native getLineMax(II)F
.end method

.method private static native getLineRight(II)F
.end method

.method private static native getLineStart(II)I
.end method

.method private static native getLineTop(II)I
.end method

.method private static native getLineWidth(II)F
.end method

.method private static native getOffsetForHorizontal(IIILandroid/graphics/BlockLayout$CaretPosition;)Z
.end method

.method private static native getOffsetToLeftOf(IIILandroid/graphics/BlockLayout$CaretPosition;)V
.end method

.method private static native getOffsetToRightOf(IIILandroid/graphics/BlockLayout$CaretPosition;)V
.end method

.method private static native getParagraphAlignment(II)I
.end method

.method private static native getParagraphDirection(II)I
.end method

.method private static native getParagraphLeft(II)I
.end method

.method private static native getParagraphRight(II)I
.end method

.method private static native getSelectionPath(IIII)V
.end method

.method private static native getTopPadding(I)I
.end method

.method private static native getWidth(I)I
.end method

.method public static native hasEmoji(Ljava/lang/String;)Z
.end method

.method public static native hasThaiDict()Z
.end method

.method private static native initBlockLayout(IIII)I
.end method

.method public static obtain(Landroid/graphics/Text;III)Landroid/graphics/BlockLayout;
    .locals 7
    .parameter "text"
    .parameter "baseAlignment"
    .parameter "defaultTabStopPosition"
    .parameter "flags"

    .prologue
    .line 163
    sget-object v6, Landroid/graphics/BlockLayout;->sGarbage:[I

    monitor-enter v6

    .line 164
    :try_start_0
    sget v0, Landroid/graphics/BlockLayout;->sGarbageTop:I

    if-lez v0, :cond_0

    .line 165
    sget-object v0, Landroid/graphics/BlockLayout;->sGarbage:[I

    sget v1, Landroid/graphics/BlockLayout;->sGarbageTop:I

    add-int/lit8 v1, v1, -0x1

    sput v1, Landroid/graphics/BlockLayout;->sGarbageTop:I

    aget v2, v0, v1

    .line 168
    .local v2, nativeBlockLayout:I
    new-instance v0, Landroid/graphics/BlockLayout;

    move-object v1, p0

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/graphics/BlockLayout;-><init>(Landroid/graphics/Text;IIII)V

    monitor-exit v6

    .line 172
    .end local v2           #nativeBlockLayout:I
    :goto_0
    return-object v0

    .line 171
    :cond_0
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 172
    new-instance v0, Landroid/graphics/BlockLayout;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/graphics/BlockLayout;-><init>(Landroid/graphics/Text;III)V

    goto :goto_0

    .line 171
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private recycle()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 176
    iget v1, p0, Landroid/graphics/BlockLayout;->mNativeBlockLayout:I

    if-eqz v1, :cond_0

    .line 177
    sget-object v1, Landroid/graphics/BlockLayout;->sGarbage:[I

    monitor-enter v1

    .line 178
    :try_start_0
    sget v2, Landroid/graphics/BlockLayout;->sGarbageTop:I

    sget-object v3, Landroid/graphics/BlockLayout;->sGarbage:[I

    array-length v3, v3

    if-ge v2, v3, :cond_1

    .line 179
    sget-object v0, Landroid/graphics/BlockLayout;->sGarbage:[I

    sget v2, Landroid/graphics/BlockLayout;->sGarbageTop:I

    add-int/lit8 v3, v2, 0x1

    sput v3, Landroid/graphics/BlockLayout;->sGarbageTop:I

    iget v3, p0, Landroid/graphics/BlockLayout;->mNativeBlockLayout:I

    aput v3, v0, v2

    .line 180
    const/4 v0, 0x0

    iput v0, p0, Landroid/graphics/BlockLayout;->mNativeBlockLayout:I

    .line 181
    const/4 v0, 0x1

    monitor-exit v1

    .line 185
    :cond_0
    :goto_0
    return v0

    .line 183
    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static native reinitBlockLayout(IIIII)V
.end method

.method private static native setMaximumVisibleLineCount(II)V
.end method

.method private static native setTabStop(II)V
.end method


# virtual methods
.method public dispose()V
    .locals 2

    .prologue
    .line 192
    invoke-direct {p0}, Landroid/graphics/BlockLayout;->recycle()Z

    move-result v1

    if-nez v1, :cond_0

    .line 193
    iget v0, p0, Landroid/graphics/BlockLayout;->mNativeBlockLayout:I

    .line 194
    .local v0, blockLayout:I
    const/4 v1, 0x0

    iput v1, p0, Landroid/graphics/BlockLayout;->mNativeBlockLayout:I

    .line 195
    invoke-static {v0}, Landroid/graphics/BlockLayout;->finalizer(I)V

    .line 197
    .end local v0           #blockLayout:I
    :cond_0
    return-void
.end method

.method public doLayout(Landroid/graphics/Paint;I)I
    .locals 1
    .parameter "basePaint"
    .parameter "width"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 402
    invoke-virtual {p0, p1, p2, p2}, Landroid/graphics/BlockLayout;->doLayout(Landroid/graphics/Paint;II)I

    move-result v0

    return v0
.end method

.method public doLayout(Landroid/graphics/Paint;II)I
    .locals 2
    .parameter "basePaint"
    .parameter "width"
    .parameter "ellipsizedWidth"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 411
    iget v1, p0, Landroid/graphics/BlockLayout;->mNativeBlockLayout:I

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-static {v1, v0, p2, p3}, Landroid/graphics/BlockLayout;->doLayout(IIII)I

    move-result v0

    return v0

    :cond_0
    iget v0, p1, Landroid/graphics/Paint;->mNativePaint:I

    goto :goto_0
.end method

.method public drawGlyphs(Landroid/graphics/Canvas;IILandroid/text/TextPaint;[C[F[I)V
    .locals 38
    .parameter "canvas"
    .parameter "start"
    .parameter "end"
    .parameter "paint"
    .parameter "glyphs"
    .parameter "pos"
    .parameter "n"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 447
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/graphics/BlockLayout;->getLineForOffset(I)I

    move-result v5

    aput v5, p7, v4

    .line 448
    const/4 v4, 0x1

    const/4 v5, 0x0

    aput v5, p7, v4

    .line 449
    const/4 v4, 0x0

    aget v29, p7, v4

    .line 450
    .local v29, line:I
    invoke-virtual/range {p4 .. p4}, Landroid/text/TextPaint;->getFlags()I

    move-result v25

    .line 454
    .local v25, flags:I
    and-int/lit8 v4, v25, 0x18

    if-gtz v4, :cond_0

    move-object/from16 v0, p4

    iget v4, v0, Landroid/text/TextPaint;->underlineColor:I

    if-nez v4, :cond_0

    move-object/from16 v0, p4

    iget v4, v0, Landroid/text/TextPaint;->bgColor:I

    if-nez v4, :cond_0

    move-object/from16 v0, p4

    iget-boolean v4, v0, Landroid/text/TextPaint;->hasShadow:Z

    if-eqz v4, :cond_5

    :cond_0
    const/16 v30, 0x1

    .line 457
    .local v30, lineBased:Z
    :goto_0
    move/from16 v7, p2

    .line 459
    .local v7, next:I
    :goto_1
    move/from16 v0, p2

    move/from16 v1, p3

    if-ge v0, v1, :cond_e

    .line 460
    if-eqz v30, :cond_6

    .line 461
    add-int/lit8 v4, v29, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/graphics/BlockLayout;->getLineStart(I)I

    move-result v4

    move/from16 v0, p3

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v7

    :cond_1
    :goto_2
    move-object/from16 v4, p0

    move-object/from16 v5, p7

    move/from16 v6, p2

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p4

    .line 466
    invoke-virtual/range {v4 .. v10}, Landroid/graphics/BlockLayout;->getGlyphRun([III[C[FLandroid/text/TextPaint;)I

    move-result v15

    .local v15, glyphCount:I
    if-lez v15, :cond_d

    .line 467
    ushr-int/lit8 v15, v15, 0x10

    .line 469
    if-eqz v15, :cond_1

    .line 473
    move-object/from16 v0, p4

    iget v4, v0, Landroid/text/TextPaint;->bgColor:I

    if-eqz v4, :cond_2

    .line 474
    const/4 v4, 0x2

    aget v4, p7, v4

    int-to-float v9, v4

    .line 475
    .local v9, x0:F
    const/4 v4, 0x3

    aget v4, p7, v4

    int-to-float v11, v4

    .line 476
    .local v11, x1:F
    invoke-virtual/range {p4 .. p4}, Landroid/text/TextPaint;->getColor()I

    move-result v32

    .line 477
    .local v32, previousColor:I
    invoke-virtual/range {p4 .. p4}, Landroid/text/TextPaint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object v33

    .line 479
    .local v33, previousStyle:Landroid/graphics/Paint$Style;
    move-object/from16 v0, p4

    iget v4, v0, Landroid/text/TextPaint;->bgColor:I

    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Landroid/text/TextPaint;->setColor(I)V

    .line 480
    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 481
    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/graphics/BlockLayout;->getLineTop(I)I

    move-result v4

    int-to-float v10, v4

    add-int/lit8 v4, v29, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/graphics/BlockLayout;->getLineTop(I)I

    move-result v4

    int-to-float v12, v4

    move-object/from16 v8, p1

    move-object/from16 v13, p4

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 483
    move-object/from16 v0, p4

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 484
    move-object/from16 v0, p4

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 490
    .end local v9           #x0:F
    .end local v11           #x1:F
    .end local v32           #previousColor:I
    .end local v33           #previousStyle:Landroid/graphics/Paint$Style;
    :cond_2
    const/4 v4, 0x0

    aget-char v4, p5, v4

    const v5, 0xfa00

    if-lt v4, v5, :cond_7

    sget-object v4, Landroid/graphics/BlockLayout;->EMOJI_FACTORY:Landroid/emoji/EmojiFactory;

    if-eqz v4, :cond_7

    .line 493
    invoke-virtual/range {p4 .. p4}, Landroid/text/TextPaint;->getTextSize()F

    move-result v34

    .line 494
    .local v34, size:F
    const v4, 0x3e4ccccd

    mul-float v37, v34, v4

    .line 495
    .local v37, yOffset:F
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/graphics/BlockLayout;->mTempRect:Landroid/graphics/RectF;

    if-nez v4, :cond_3

    .line 496
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/graphics/BlockLayout;->mTempRect:Landroid/graphics/RectF;

    .line 498
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/graphics/BlockLayout;->mTempRect:Landroid/graphics/RectF;

    move-object/from16 v24, v0

    .line 499
    .local v24, dst:Landroid/graphics/RectF;
    const/16 v27, 0x0

    .local v27, i:I
    const/16 v28, 0x0

    .local v28, j:I
    :goto_3
    move/from16 v0, v27

    if-ge v0, v15, :cond_8

    .line 500
    sget-object v4, Landroid/graphics/BlockLayout;->EMOJI_FACTORY:Landroid/emoji/EmojiFactory;

    aget-char v5, p5, v27

    move-object/from16 v0, p1

    invoke-virtual {v4, v5, v0}, Landroid/emoji/EmojiFactory;->getBitmapFromGlyphID(ILandroid/graphics/Canvas;)Landroid/graphics/Bitmap;

    move-result-object v23

    .line 501
    .local v23, bitmap:Landroid/graphics/Bitmap;
    if-eqz v23, :cond_4

    .line 502
    aget v36, p6, v28

    .local v36, x:F
    add-int/lit8 v4, v28, 0x1

    aget v4, p6, v4

    add-float v18, v4, v37

    .line 503
    .local v18, y:F
    sub-float v4, v18, v34

    add-float v5, v36, v34

    move-object/from16 v0, v24

    move/from16 v1, v36

    move/from16 v2, v18

    invoke-virtual {v0, v1, v4, v5, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 504
    const/4 v4, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    move-object/from16 v3, p4

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 499
    .end local v18           #y:F
    .end local v36           #x:F
    :cond_4
    add-int/lit8 v27, v27, 0x1

    add-int/lit8 v28, v28, 0x2

    goto :goto_3

    .line 454
    .end local v7           #next:I
    .end local v15           #glyphCount:I
    .end local v23           #bitmap:Landroid/graphics/Bitmap;
    .end local v24           #dst:Landroid/graphics/RectF;
    .end local v27           #i:I
    .end local v28           #j:I
    .end local v30           #lineBased:Z
    .end local v34           #size:F
    .end local v37           #yOffset:F
    :cond_5
    const/16 v30, 0x0

    goto/16 :goto_0

    .line 463
    .restart local v7       #next:I
    .restart local v30       #lineBased:Z
    :cond_6
    move/from16 v7, p3

    goto/16 :goto_2

    .line 508
    .restart local v15       #glyphCount:I
    :cond_7
    const/4 v14, 0x0

    move-object/from16 v12, p1

    move-object/from16 v13, p5

    move-object/from16 v16, p6

    move-object/from16 v17, p4

    invoke-virtual/range {v12 .. v17}, Landroid/graphics/Canvas;->drawPosText([CII[FLandroid/graphics/Paint;)V

    .line 511
    :cond_8
    move-object/from16 v0, p4

    iget v4, v0, Landroid/text/TextPaint;->underlineColor:I

    if-eqz v4, :cond_9

    .line 512
    add-int/lit8 v4, v29, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/graphics/BlockLayout;->getLineTop(I)I

    move-result v4

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/graphics/BlockLayout;->getLineDescent(I)I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v0, v4

    move/from16 v22, v0

    .line 513
    .local v22, baseline:F
    const/4 v4, 0x2

    aget v4, p7, v4

    int-to-float v9, v4

    .line 514
    .restart local v9       #x0:F
    const/4 v4, 0x3

    aget v4, p7, v4

    int-to-float v11, v4

    .line 517
    .restart local v11       #x1:F
    const v4, 0x3de38e39

    invoke-virtual/range {p4 .. p4}, Landroid/text/TextPaint;->getTextSize()F

    move-result v5

    mul-float/2addr v4, v5

    add-float v10, v22, v4

    .line 519
    .local v10, underlineTop:F
    invoke-virtual/range {p4 .. p4}, Landroid/text/TextPaint;->getColor()I

    move-result v32

    .line 520
    .restart local v32       #previousColor:I
    invoke-virtual/range {p4 .. p4}, Landroid/text/TextPaint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object v33

    .line 521
    .restart local v33       #previousStyle:Landroid/graphics/Paint$Style;
    invoke-virtual/range {p4 .. p4}, Landroid/text/TextPaint;->isAntiAlias()Z

    move-result v31

    .line 523
    .local v31, previousAntiAlias:Z
    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 524
    const/4 v4, 0x1

    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 526
    move-object/from16 v0, p4

    iget v4, v0, Landroid/text/TextPaint;->underlineColor:I

    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Landroid/text/TextPaint;->setColor(I)V

    .line 527
    move-object/from16 v0, p4

    iget v4, v0, Landroid/text/TextPaint;->underlineThickness:F

    add-float v12, v10, v4

    move-object/from16 v8, p1

    move-object/from16 v13, p4

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 530
    move-object/from16 v0, p4

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 531
    move-object/from16 v0, p4

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 532
    move-object/from16 v0, p4

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 535
    .end local v9           #x0:F
    .end local v10           #underlineTop:F
    .end local v11           #x1:F
    .end local v22           #baseline:F
    .end local v31           #previousAntiAlias:Z
    .end local v32           #previousColor:I
    .end local v33           #previousStyle:Landroid/graphics/Paint$Style;
    :cond_9
    and-int/lit8 v4, v25, 0x18

    if-lez v4, :cond_c

    .line 540
    add-int/lit8 v4, v29, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/graphics/BlockLayout;->getLineTop(I)I

    move-result v4

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/graphics/BlockLayout;->getLineDescent(I)I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v0, v4

    move/from16 v22, v0

    .line 541
    .restart local v22       #baseline:F
    const/4 v4, 0x2

    aget v4, p7, v4

    int-to-float v9, v4

    .line 542
    .restart local v9       #x0:F
    const/4 v4, 0x3

    aget v4, p7, v4

    int-to-float v11, v4

    .line 543
    .restart local v11       #x1:F
    invoke-virtual/range {p4 .. p4}, Landroid/text/TextPaint;->getTextSize()F

    move-result v35

    .line 545
    .local v35, textSize:F
    const v4, 0x3d638e39

    mul-float v4, v4, v35

    const/high16 v5, 0x3f80

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v26

    .line 547
    .local v26, height:F
    invoke-virtual/range {p4 .. p4}, Landroid/text/TextPaint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object v4

    sget-object v5, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    if-eq v4, v5, :cond_a

    .line 548
    invoke-virtual/range {p4 .. p4}, Landroid/text/TextPaint;->getStrokeWidth()F

    move-result v4

    mul-float v4, v4, v35

    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Landroid/text/TextPaint;->setStrokeWidth(F)V

    .line 551
    :cond_a
    and-int/lit8 v4, v25, 0x8

    if-lez v4, :cond_b

    .line 552
    const v4, 0x3de38e39

    mul-float v4, v4, v35

    add-float v18, v22, v4

    .line 553
    .restart local v18       #y:F
    add-float v20, v18, v26

    move-object/from16 v16, p1

    move/from16 v17, v9

    move/from16 v19, v11

    move-object/from16 v21, p4

    invoke-virtual/range {v16 .. v21}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 556
    .end local v18           #y:F
    :cond_b
    and-int/lit8 v4, v25, 0x10

    if-lez v4, :cond_c

    .line 557
    const v4, -0x416db6db

    mul-float v4, v4, v35

    add-float v18, v22, v4

    .line 558
    .restart local v18       #y:F
    add-float v20, v18, v26

    move-object/from16 v16, p1

    move/from16 v17, v9

    move/from16 v19, v11

    move-object/from16 v21, p4

    invoke-virtual/range {v16 .. v21}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 562
    .end local v9           #x0:F
    .end local v11           #x1:F
    .end local v18           #y:F
    .end local v22           #baseline:F
    .end local v26           #height:F
    .end local v35           #textSize:F
    :cond_c
    const/4 v4, 0x0

    aget v29, p7, v4

    goto/16 :goto_2

    .line 565
    :cond_d
    const/4 v4, 0x0

    aget v29, p7, v4

    .line 459
    move/from16 p2, v7

    goto/16 :goto_1

    .line 567
    .end local v15           #glyphCount:I
    :cond_e
    return-void
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 202
    :try_start_0
    invoke-direct {p0}, Landroid/graphics/BlockLayout;->recycle()Z

    move-result v1

    if-nez v1, :cond_0

    .line 203
    iget v0, p0, Landroid/graphics/BlockLayout;->mNativeBlockLayout:I

    .line 204
    .local v0, blockLayout:I
    const/4 v1, 0x0

    iput v1, p0, Landroid/graphics/BlockLayout;->mNativeBlockLayout:I

    .line 205
    invoke-static {v0}, Landroid/graphics/BlockLayout;->finalizer(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 208
    .end local v0           #blockLayout:I
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 211
    return-void

    .line 208
    :catchall_0
    move-exception v1

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v1
.end method

.method public getBottomPadding()I
    .locals 1

    .prologue
    .line 646
    iget v0, p0, Landroid/graphics/BlockLayout;->mNativeBlockLayout:I

    invoke-static {v0}, Landroid/graphics/BlockLayout;->getBottomPadding(I)I

    move-result v0

    return v0
.end method

.method public getCharSubstitutionPosition(ILandroid/graphics/Text$CharSubstitution;)V
    .locals 1
    .parameter "offset"
    .parameter "charSubstitution"

    .prologue
    .line 617
    iget v0, p0, Landroid/graphics/BlockLayout;->mNativeBlockLayout:I

    invoke-static {v0, p1, p2}, Landroid/graphics/BlockLayout;->getCharSubstitutionPosition(IILandroid/graphics/Text$CharSubstitution;)V

    .line 618
    return-void
.end method

.method public getCursorPath(IILandroid/graphics/Path;II)V
    .locals 6
    .parameter "leadingIndex"
    .parameter "trailingOffset"
    .parameter "dest"
    .parameter "cursorDirection"
    .parameter "cursorPosition"

    .prologue
    .line 429
    iget v0, p0, Landroid/graphics/BlockLayout;->mNativeBlockLayout:I

    invoke-virtual {p3}, Landroid/graphics/Path;->ni()I

    move-result v3

    move v1, p1

    move v2, p2

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v5}, Landroid/graphics/BlockLayout;->getCursorPath(IIIIII)V

    .line 431
    return-void
.end method

.method public getEllipsisCount(I)I
    .locals 1
    .parameter "line"

    .prologue
    .line 218
    iget v0, p0, Landroid/graphics/BlockLayout;->mNativeBlockLayout:I

    invoke-static {v0, p1}, Landroid/graphics/BlockLayout;->getEllipsisCount(II)I

    move-result v0

    return v0
.end method

.method public getEllipsisStart(I)I
    .locals 1
    .parameter "line"

    .prologue
    .line 227
    iget v0, p0, Landroid/graphics/BlockLayout;->mNativeBlockLayout:I

    invoke-static {v0, p1}, Landroid/graphics/BlockLayout;->getEllipsisStart(II)I

    move-result v0

    return v0
.end method

.method public getGlyphRun([III[C[FLandroid/text/TextPaint;)I
    .locals 7
    .parameter "next"
    .parameter "start"
    .parameter "end"
    .parameter "glyphs"
    .parameter "positions"
    .parameter "paint"

    .prologue
    .line 570
    array-length v0, p1

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 571
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "array next is required to have at least a size of 4"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 573
    :cond_0
    iget v0, p0, Landroid/graphics/BlockLayout;->mNativeBlockLayout:I

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-static/range {v0 .. v6}, Landroid/graphics/BlockLayout;->getGlyphRun(I[III[C[FLandroid/text/TextPaint;)I

    move-result v0

    return v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 353
    invoke-virtual {p0}, Landroid/graphics/BlockLayout;->getLineCount()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/graphics/BlockLayout;->getLineTop(I)I

    move-result v0

    return v0
.end method

.method public getHorizontal(IZ)F
    .locals 2
    .parameter "offset"
    .parameter "primary"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 283
    iget v0, p0, Landroid/graphics/BlockLayout;->mNativeBlockLayout:I

    const/4 v1, 0x0

    invoke-static {v0, p1, p2, v1}, Landroid/graphics/BlockLayout;->getHorizontal(IIZZ)F

    move-result v0

    return v0
.end method

.method public getHorizontal(IZZ)F
    .locals 1
    .parameter "offset"
    .parameter "primary"
    .parameter "trailingEdge"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 299
    iget v0, p0, Landroid/graphics/BlockLayout;->mNativeBlockLayout:I

    invoke-static {v0, p1, p2, p3}, Landroid/graphics/BlockLayout;->getHorizontal(IIZZ)F

    move-result v0

    return v0
.end method

.method public getLineCount()I
    .locals 1

    .prologue
    .line 419
    iget v0, p0, Landroid/graphics/BlockLayout;->mNativeBlockLayout:I

    invoke-static {v0}, Landroid/graphics/BlockLayout;->getLineCount(I)I

    move-result v0

    return v0
.end method

.method public getLineDescent(I)I
    .locals 1
    .parameter "line"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 360
    iget v0, p0, Landroid/graphics/BlockLayout;->mNativeBlockLayout:I

    invoke-static {v0, p1}, Landroid/graphics/BlockLayout;->getLineDescent(II)I

    move-result v0

    return v0
.end method

.method public getLineDirections(I)[I
    .locals 1
    .parameter "line"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 658
    iget v0, p0, Landroid/graphics/BlockLayout;->mNativeBlockLayout:I

    invoke-static {v0, p1}, Landroid/graphics/BlockLayout;->getLineDirections(II)[I

    move-result-object v0

    return-object v0
.end method

.method public getLineForOffset(I)I
    .locals 1
    .parameter "offset"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 243
    iget v0, p0, Landroid/graphics/BlockLayout;->mNativeBlockLayout:I

    invoke-static {v0, p1}, Landroid/graphics/BlockLayout;->getLineForOffset(II)I

    move-result v0

    return v0
.end method

.method public getLineForVertical(I)I
    .locals 1
    .parameter "vertical"

    .prologue
    .line 252
    iget v0, p0, Landroid/graphics/BlockLayout;->mNativeBlockLayout:I

    invoke-static {v0, p1}, Landroid/graphics/BlockLayout;->getLineForVertical(II)I

    move-result v0

    return v0
.end method

.method public getLineLeft(I)F
    .locals 1
    .parameter "line"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 315
    iget v0, p0, Landroid/graphics/BlockLayout;->mNativeBlockLayout:I

    invoke-static {v0, p1}, Landroid/graphics/BlockLayout;->getLineLeft(II)F

    move-result v0

    return v0
.end method

.method public getLineMax(I)F
    .locals 1
    .parameter "line"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 376
    iget v0, p0, Landroid/graphics/BlockLayout;->mNativeBlockLayout:I

    invoke-static {v0, p1}, Landroid/graphics/BlockLayout;->getLineMax(II)F

    move-result v0

    return v0
.end method

.method public getLineRight(I)F
    .locals 1
    .parameter "line"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 307
    iget v0, p0, Landroid/graphics/BlockLayout;->mNativeBlockLayout:I

    invoke-static {v0, p1}, Landroid/graphics/BlockLayout;->getLineRight(II)F

    move-result v0

    return v0
.end method

.method public getLineStart(I)I
    .locals 1
    .parameter "line"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 261
    iget v0, p0, Landroid/graphics/BlockLayout;->mNativeBlockLayout:I

    invoke-static {v0, p1}, Landroid/graphics/BlockLayout;->getLineStart(II)I

    move-result v0

    return v0
.end method

.method public getLineTop(I)I
    .locals 1
    .parameter "line"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 339
    iget v0, p0, Landroid/graphics/BlockLayout;->mNativeBlockLayout:I

    invoke-static {v0, p1}, Landroid/graphics/BlockLayout;->getLineTop(II)I

    move-result v0

    return v0
.end method

.method public getLineVisibleEnd(I)I
    .locals 4
    .parameter "line"

    .prologue
    .line 384
    iget-object v0, p0, Landroid/graphics/BlockLayout;->mCaretPosition:Landroid/graphics/BlockLayout$CaretPosition;

    .line 385
    .local v0, caretPosition:Landroid/graphics/BlockLayout$CaretPosition;
    const/4 v1, 0x0

    .line 386
    .local v1, offset:I
    if-nez v0, :cond_0

    .line 387
    new-instance v0, Landroid/graphics/BlockLayout$CaretPosition;

    .end local v0           #caretPosition:Landroid/graphics/BlockLayout$CaretPosition;
    invoke-direct {v0}, Landroid/graphics/BlockLayout$CaretPosition;-><init>()V

    iput-object v0, p0, Landroid/graphics/BlockLayout;->mCaretPosition:Landroid/graphics/BlockLayout$CaretPosition;

    .line 389
    .restart local v0       #caretPosition:Landroid/graphics/BlockLayout$CaretPosition;
    :cond_0
    iget v2, p0, Landroid/graphics/BlockLayout;->mNativeBlockLayout:I

    iget v3, p0, Landroid/graphics/BlockLayout;->mNativeBlockLayout:I

    invoke-static {v3, p1}, Landroid/graphics/BlockLayout;->getLineRight(II)F

    move-result v3

    float-to-int v3, v3

    invoke-static {v2, p1, v3, v0}, Landroid/graphics/BlockLayout;->getOffsetForHorizontal(IIILandroid/graphics/BlockLayout$CaretPosition;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 391
    invoke-virtual {v0}, Landroid/graphics/BlockLayout$CaretPosition;->getCharacterIndex()I

    move-result v1

    .line 393
    :cond_1
    return v1
.end method

.method public getLineWidth(I)F
    .locals 1
    .parameter "line"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 368
    iget v0, p0, Landroid/graphics/BlockLayout;->mNativeBlockLayout:I

    invoke-static {v0, p1}, Landroid/graphics/BlockLayout;->getLineWidth(II)F

    move-result v0

    return v0
.end method

.method public getOffsetForHorizontal(IILandroid/graphics/BlockLayout$CaretPosition;)Z
    .locals 1
    .parameter "line"
    .parameter "horiz"
    .parameter "caretPosition"

    .prologue
    .line 581
    iget v0, p0, Landroid/graphics/BlockLayout;->mNativeBlockLayout:I

    invoke-static {v0, p1, p2, p3}, Landroid/graphics/BlockLayout;->getOffsetForHorizontal(IIILandroid/graphics/BlockLayout$CaretPosition;)Z

    move-result v0

    return v0
.end method

.method public getOffsetToLeftOf(Landroid/graphics/BlockLayout$CaretPosition;)Z
    .locals 3
    .parameter "caretPosition"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IndexOutOfBoundsException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 590
    iget v0, p1, Landroid/graphics/BlockLayout$CaretPosition;->leadingIndex:I

    .line 591
    .local v0, leadingIndex:I
    iget v1, p1, Landroid/graphics/BlockLayout$CaretPosition;->trailingOffset:I

    .line 592
    .local v1, trailingOffset:I
    iget v2, p0, Landroid/graphics/BlockLayout;->mNativeBlockLayout:I

    invoke-static {v2, v0, v1, p1}, Landroid/graphics/BlockLayout;->getOffsetToLeftOf(IIILandroid/graphics/BlockLayout$CaretPosition;)V

    .line 593
    iget v2, p1, Landroid/graphics/BlockLayout$CaretPosition;->leadingIndex:I

    if-ne v0, v2, :cond_0

    iget v2, p1, Landroid/graphics/BlockLayout$CaretPosition;->trailingOffset:I

    if-eq v1, v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getOffsetToRightOf(Landroid/graphics/BlockLayout$CaretPosition;)Z
    .locals 3
    .parameter "caretPosition"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IndexOutOfBoundsException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 602
    iget v0, p1, Landroid/graphics/BlockLayout$CaretPosition;->leadingIndex:I

    .line 603
    .local v0, leadingIndex:I
    iget v1, p1, Landroid/graphics/BlockLayout$CaretPosition;->trailingOffset:I

    .line 604
    .local v1, trailingOffset:I
    iget v2, p0, Landroid/graphics/BlockLayout;->mNativeBlockLayout:I

    invoke-static {v2, v0, v1, p1}, Landroid/graphics/BlockLayout;->getOffsetToRightOf(IIILandroid/graphics/BlockLayout$CaretPosition;)V

    .line 605
    iget v2, p1, Landroid/graphics/BlockLayout$CaretPosition;->leadingIndex:I

    if-ne v0, v2, :cond_0

    iget v2, p1, Landroid/graphics/BlockLayout$CaretPosition;->trailingOffset:I

    if-eq v1, v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getParagraphAlignment(I)I
    .locals 1
    .parameter "line"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 234
    iget v0, p0, Landroid/graphics/BlockLayout;->mNativeBlockLayout:I

    invoke-static {v0, p1}, Landroid/graphics/BlockLayout;->getParagraphAlignment(II)I

    move-result v0

    return v0
.end method

.method public getParagraphDirection(I)I
    .locals 1
    .parameter "line"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 269
    iget v0, p0, Landroid/graphics/BlockLayout;->mNativeBlockLayout:I

    invoke-static {v0, p1}, Landroid/graphics/BlockLayout;->getParagraphDirection(II)I

    move-result v0

    return v0
.end method

.method public getParagraphLeft(I)I
    .locals 1
    .parameter "line"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 329
    iget v0, p0, Landroid/graphics/BlockLayout;->mNativeBlockLayout:I

    invoke-static {v0, p1}, Landroid/graphics/BlockLayout;->getParagraphLeft(II)I

    move-result v0

    return v0
.end method

.method public getParagraphRight(I)I
    .locals 1
    .parameter "line"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 322
    iget v0, p0, Landroid/graphics/BlockLayout;->mNativeBlockLayout:I

    invoke-static {v0, p1}, Landroid/graphics/BlockLayout;->getParagraphRight(II)I

    move-result v0

    return v0
.end method

.method public getSelectionPath(IILandroid/graphics/Path;)V
    .locals 2
    .parameter "start"
    .parameter "end"
    .parameter "dest"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 440
    iget v0, p0, Landroid/graphics/BlockLayout;->mNativeBlockLayout:I

    invoke-virtual {p3}, Landroid/graphics/Path;->ni()I

    move-result v1

    invoke-static {v0, p1, p2, v1}, Landroid/graphics/BlockLayout;->getSelectionPath(IIII)V

    .line 441
    return-void
.end method

.method public getTopPadding()I
    .locals 1

    .prologue
    .line 638
    iget v0, p0, Landroid/graphics/BlockLayout;->mNativeBlockLayout:I

    invoke-static {v0}, Landroid/graphics/BlockLayout;->getTopPadding(I)I

    move-result v0

    return v0
.end method

.method public final getWidth()I
    .locals 1

    .prologue
    .line 346
    iget v0, p0, Landroid/graphics/BlockLayout;->mNativeBlockLayout:I

    invoke-static {v0}, Landroid/graphics/BlockLayout;->getWidth(I)I

    move-result v0

    return v0
.end method

.method public setMaximumVisibleLineCount(I)V
    .locals 1
    .parameter "maximumVisibleLineCount"

    .prologue
    .line 630
    iget v0, p0, Landroid/graphics/BlockLayout;->mNativeBlockLayout:I

    invoke-static {v0, p1}, Landroid/graphics/BlockLayout;->setMaximumVisibleLineCount(II)V

    .line 631
    return-void
.end method

.method public setTabStop(I)V
    .locals 1
    .parameter "tabStopPosition"

    .prologue
    .line 626
    iget v0, p0, Landroid/graphics/BlockLayout;->mNativeBlockLayout:I

    invoke-static {v0, p1}, Landroid/graphics/BlockLayout;->setTabStop(II)V

    .line 627
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    .prologue
    const/16 v8, 0xa

    .line 667
    iget-object v7, p0, Landroid/graphics/BlockLayout;->mText:Landroid/graphics/Text;

    if-eqz v7, :cond_3

    .line 668
    iget-object v7, p0, Landroid/graphics/BlockLayout;->mText:Landroid/graphics/Text;

    invoke-virtual {v7}, Landroid/graphics/Text;->toString()Ljava/lang/String;

    move-result-object v6

    .line 669
    .local v6, text:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 671
    .local v4, sb:Ljava/lang/StringBuilder;
    iget-object v7, p0, Landroid/graphics/BlockLayout;->mText:Landroid/graphics/Text;

    invoke-virtual {v7}, Landroid/graphics/Text;->getLength()I

    move-result v7

    if-lez v7, :cond_1

    .line 672
    invoke-virtual {p0}, Landroid/graphics/BlockLayout;->getLineCount()I

    move-result v3

    .line 673
    .local v3, lineCount:I
    const/4 v2, 0x0

    .local v2, line:I
    :goto_0
    if-ge v2, v3, :cond_2

    .line 674
    invoke-virtual {p0, v2}, Landroid/graphics/BlockLayout;->getLineStart(I)I

    move-result v5

    .line 675
    .local v5, start:I
    add-int/lit8 v7, v2, 0x1

    invoke-virtual {p0, v7}, Landroid/graphics/BlockLayout;->getLineStart(I)I

    move-result v0

    .line 677
    .local v0, end:I
    invoke-virtual {v6, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 679
    .local v1, l:Ljava/lang/String;
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 681
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v7

    if-eq v7, v8, :cond_0

    .line 682
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 673
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 686
    .end local v0           #end:I
    .end local v1           #l:Ljava/lang/String;
    .end local v2           #line:I
    .end local v3           #lineCount:I
    .end local v5           #start:I
    :cond_1
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 689
    :cond_2
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 691
    .end local v4           #sb:Ljava/lang/StringBuilder;
    .end local v6           #text:Ljava/lang/String;
    :goto_1
    return-object v7

    :cond_3
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_1
.end method

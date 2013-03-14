.class Lcom/android/calculator2/ColorButton;
.super Landroid/widget/Button;
.source "ColorButton.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field CLICK_FEEDBACK_COLOR:I

.field mAnimStart:J

.field mFeedbackPaint:Landroid/graphics/Paint;

.field mListener:Landroid/view/View$OnClickListener;

.field mNeedToDrawBtnText:Z

.field mTextX:F

.field mTextY:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    move-object v0, p1

    .line 48
    check-cast v0, Lcom/android/calculator2/Calculator;

    .line 49
    .local v0, calc:Lcom/android/calculator2/Calculator;
    invoke-direct {p0, v0}, Lcom/android/calculator2/ColorButton;->init(Lcom/android/calculator2/Calculator;)V

    .line 50
    iget-object v1, v0, Lcom/android/calculator2/Calculator;->mListener:Lcom/android/calculator2/EventListener;

    iput-object v1, p0, Lcom/android/calculator2/ColorButton;->mListener:Landroid/view/View$OnClickListener;

    .line 51
    invoke-virtual {p0, p0}, Lcom/android/calculator2/ColorButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    return-void
.end method

.method private init(Lcom/android/calculator2/Calculator;)V
    .locals 5
    .parameter "calc"

    .prologue
    const/4 v4, 0x1

    .line 59
    invoke-virtual {p0}, Lcom/android/calculator2/ColorButton;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 61
    .local v1, res:Landroid/content/res/Resources;
    const/high16 v2, 0x7f06

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, p0, Lcom/android/calculator2/ColorButton;->CLICK_FEEDBACK_COLOR:I

    .line 62
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/android/calculator2/ColorButton;->mFeedbackPaint:Landroid/graphics/Paint;

    .line 63
    iget-object v2, p0, Lcom/android/calculator2/ColorButton;->mFeedbackPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 64
    iget-object v2, p0, Lcom/android/calculator2/ColorButton;->mFeedbackPaint:Landroid/graphics/Paint;

    const/high16 v3, 0x4000

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 65
    invoke-virtual {p0}, Lcom/android/calculator2/ColorButton;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    const v3, 0x7f060001

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setColor(I)V

    .line 66
    invoke-virtual {p0}, Lcom/android/calculator2/ColorButton;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    sget-object v3, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 68
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/android/calculator2/ColorButton;->mAnimStart:J

    .line 69
    invoke-virtual {p0}, Lcom/android/calculator2/ColorButton;->getId()I

    move-result v0

    .line 70
    .local v0, btnId:I
    const v2, 0x7f0c000d

    if-ne v0, v2, :cond_0

    .line 71
    invoke-virtual {p0}, Lcom/android/calculator2/ColorButton;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    const v3, 0x7f060003

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setColor(I)V

    .line 72
    iput-boolean v4, p0, Lcom/android/calculator2/ColorButton;->mNeedToDrawBtnText:Z

    .line 78
    :goto_0
    return-void

    .line 73
    :cond_0
    const v2, 0x7f0c0026

    if-eq v0, v2, :cond_1

    const v2, 0x7f0c0023

    if-ne v0, v2, :cond_2

    .line 74
    :cond_1
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/calculator2/ColorButton;->mNeedToDrawBtnText:Z

    goto :goto_0

    .line 76
    :cond_2
    iput-boolean v4, p0, Lcom/android/calculator2/ColorButton;->mNeedToDrawBtnText:Z

    goto :goto_0
.end method

.method private measureText()V
    .locals 3

    .prologue
    .line 87
    invoke-virtual {p0}, Lcom/android/calculator2/ColorButton;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    .line 88
    .local v0, paint:Landroid/graphics/Paint;
    invoke-virtual {p0}, Lcom/android/calculator2/ColorButton;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/android/calculator2/ColorButton;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    sub-float/2addr v1, v2

    const/high16 v2, 0x41f0

    div-float/2addr v1, v2

    const/high16 v2, 0x4198

    mul-float/2addr v1, v2

    iput v1, p0, Lcom/android/calculator2/ColorButton;->mTextX:F

    .line 89
    invoke-virtual {p0}, Lcom/android/calculator2/ColorButton;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/graphics/Paint;->ascent()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-virtual {v0}, Landroid/graphics/Paint;->descent()F

    move-result v2

    sub-float/2addr v1, v2

    const/high16 v2, 0x4110

    div-float/2addr v1, v2

    const/high16 v2, 0x40a0

    mul-float/2addr v1, v2

    iput v1, p0, Lcom/android/calculator2/ColorButton;->mTextY:F

    .line 90
    return-void
.end method


# virtual methods
.method public animateClickFeedback()V
    .locals 2

    .prologue
    .line 115
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/calculator2/ColorButton;->mAnimStart:J

    .line 116
    invoke-virtual {p0}, Lcom/android/calculator2/ColorButton;->invalidate()V

    .line 117
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/calculator2/ColorButton;->mListener:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 56
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 10
    .parameter "canvas"

    .prologue
    const-wide/16 v8, -0x1

    .line 99
    iget-wide v2, p0, Lcom/android/calculator2/ColorButton;->mAnimStart:J

    cmp-long v0, v2, v8

    if-eqz v0, :cond_0

    .line 100
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/calculator2/ColorButton;->mAnimStart:J

    sub-long/2addr v2, v4

    long-to-int v7, v2

    .line 101
    .local v7, animDuration:I
    const/16 v0, 0x15e

    if-lt v7, v0, :cond_2

    .line 102
    iput-wide v8, p0, Lcom/android/calculator2/ColorButton;->mAnimStart:J

    .line 108
    .end local v7           #animDuration:I
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/calculator2/ColorButton;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 109
    .local v1, text:Ljava/lang/CharSequence;
    iget-boolean v0, p0, Lcom/android/calculator2/ColorButton;->mNeedToDrawBtnText:Z

    if-eqz v0, :cond_1

    .line 110
    const/4 v2, 0x0

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    iget v4, p0, Lcom/android/calculator2/ColorButton;->mTextX:F

    iget v5, p0, Lcom/android/calculator2/ColorButton;->mTextY:F

    invoke-virtual {p0}, Lcom/android/calculator2/ColorButton;->getPaint()Landroid/text/TextPaint;

    move-result-object v6

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    .line 112
    :cond_1
    return-void

    .line 104
    .end local v1           #text:Ljava/lang/CharSequence;
    .restart local v7       #animDuration:I
    :cond_2
    const-wide/16 v2, 0xa

    invoke-virtual {p0, v2, v3}, Lcom/android/calculator2/ColorButton;->postInvalidateDelayed(J)V

    goto :goto_0
.end method

.method public onSizeChanged(IIII)V
    .locals 0
    .parameter "w"
    .parameter "h"
    .parameter "oldW"
    .parameter "oldH"

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/android/calculator2/ColorButton;->measureText()V

    .line 84
    return-void
.end method

.method protected onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "text"
    .parameter "start"
    .parameter "before"
    .parameter "after"

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/android/calculator2/ColorButton;->measureText()V

    .line 95
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    .line 121
    invoke-super {p0, p1}, Landroid/widget/Button;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 123
    .local v0, result:Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 138
    :goto_0
    :pswitch_0
    return v0

    .line 125
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/calculator2/ColorButton;->isPressed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 126
    invoke-virtual {p0}, Lcom/android/calculator2/ColorButton;->animateClickFeedback()V

    goto :goto_0

    .line 128
    :cond_0
    invoke-virtual {p0}, Lcom/android/calculator2/ColorButton;->invalidate()V

    goto :goto_0

    .line 133
    :pswitch_2
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/android/calculator2/ColorButton;->mAnimStart:J

    .line 134
    invoke-virtual {p0}, Lcom/android/calculator2/ColorButton;->invalidate()V

    goto :goto_0

    .line 123
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

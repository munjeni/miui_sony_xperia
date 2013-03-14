.class Lcom/android/calculator2/CalculatorDisplay;
.super Landroid/widget/ViewSwitcher;
.source "CalculatorDisplay.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calculator2/CalculatorDisplay$Scroll;
    }
.end annotation


# static fields
.field private static final ACCEPTED_CHARS:[C


# instance fields
.field animationSet:Landroid/view/animation/AnimationSet;

.field inAnimDown:Landroid/view/animation/TranslateAnimation;

.field inAnimUp:Landroid/view/animation/TranslateAnimation;

.field mAnimListener:Landroid/view/animation/Animation$AnimationListener;

.field private mDisplayText:Landroid/widget/TextView;

.field private mEqualText:Landroid/widget/TextView;

.field private mHistoryDisplay:Landroid/widget/TextView;

.field private mIsDisplayViewHasText:Z

.field private mMaxDigits:I

.field outAnimDown:Landroid/view/animation/TranslateAnimation;

.field outAnimUp:Landroid/view/animation/TranslateAnimation;

.field private previousText:Landroid/text/Editable;

.field zoomOutAnimation:Landroid/view/animation/ScaleAnimation;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    const-string v0, "0123456789.+-*/\u2212\u00d7\u00f7()!%^"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/android/calculator2/CalculatorDisplay;->ACCEPTED_CHARS:[C

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/16 v2, 0xa

    .line 93
    invoke-direct {p0, p1, p2}, Landroid/widget/ViewSwitcher;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 70
    new-instance v0, Lcom/android/calculator2/CalculatorDisplay$1;

    invoke-direct {v0, p0}, Lcom/android/calculator2/CalculatorDisplay$1;-><init>(Lcom/android/calculator2/CalculatorDisplay;)V

    iput-object v0, p0, Lcom/android/calculator2/CalculatorDisplay;->mAnimListener:Landroid/view/animation/Animation$AnimationListener;

    .line 89
    iput v2, p0, Lcom/android/calculator2/CalculatorDisplay;->mMaxDigits:I

    .line 94
    const/4 v0, 0x0

    const-string v1, "maxDigits"

    invoke-interface {p2, v0, v1, v2}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/calculator2/CalculatorDisplay;->mMaxDigits:I

    .line 95
    return-void
.end method

.method static synthetic access$000(Lcom/android/calculator2/CalculatorDisplay;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/calculator2/CalculatorDisplay;->mDisplayText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/calculator2/CalculatorDisplay;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/android/calculator2/CalculatorDisplay;->mIsDisplayViewHasText:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/calculator2/CalculatorDisplay;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/calculator2/CalculatorDisplay;->mEqualText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300()[C
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/android/calculator2/CalculatorDisplay;->ACCEPTED_CHARS:[C

    return-object v0
.end method


# virtual methods
.method getEditText()Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 178
    invoke-virtual {p0}, Lcom/android/calculator2/CalculatorDisplay;->getCurrentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    return-object v0
.end method

.method public getMaxDigits()I
    .locals 1

    .prologue
    .line 110
    iget v0, p0, Lcom/android/calculator2/CalculatorDisplay;->mMaxDigits:I

    return v0
.end method

.method getSelectionStart()I
    .locals 2

    .prologue
    .line 242
    invoke-virtual {p0}, Lcom/android/calculator2/CalculatorDisplay;->getCurrentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 243
    .local v0, text:Landroid/widget/EditText;
    invoke-virtual {v0}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v1

    return v1
.end method

.method getText()Landroid/text/Editable;
    .locals 2

    .prologue
    .line 182
    invoke-virtual {p0}, Lcom/android/calculator2/CalculatorDisplay;->getCurrentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 183
    .local v0, text:Landroid/widget/EditText;
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    return-object v1
.end method

.method insert(Ljava/lang/String;)V
    .locals 3
    .parameter "delta"

    .prologue
    .line 172
    invoke-virtual {p0}, Lcom/android/calculator2/CalculatorDisplay;->getCurrentView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 173
    .local v1, editor:Landroid/widget/EditText;
    invoke-virtual {p0}, Lcom/android/calculator2/CalculatorDisplay;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v0

    .line 174
    .local v0, cursor:I
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2, v0, p1}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 175
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 0
    .parameter "gain"
    .parameter "direction"
    .parameter "prev"

    .prologue
    .line 249
    if-nez p1, :cond_0

    .line 250
    invoke-virtual {p0}, Lcom/android/calculator2/CalculatorDisplay;->requestFocus()Z

    .line 252
    :cond_0
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 10
    .parameter "w"
    .parameter "h"
    .parameter "oldW"
    .parameter "oldH"

    .prologue
    .line 152
    invoke-virtual {p0}, Lcom/android/calculator2/CalculatorDisplay;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08000a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-virtual {p0}, Lcom/android/calculator2/CalculatorDisplay;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f08000b

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    div-float v2, v0, v1

    .line 154
    .local v2, scale:F
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x0

    const/4 v3, 0x0

    int-to-float v4, p2

    const/4 v5, 0x0

    invoke-direct {v0, v1, v3, v4, v5}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/calculator2/CalculatorDisplay;->inAnimUp:Landroid/view/animation/TranslateAnimation;

    .line 155
    iget-object v0, p0, Lcom/android/calculator2/CalculatorDisplay;->inAnimUp:Landroid/view/animation/TranslateAnimation;

    const-wide/16 v3, 0xfa

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 156
    invoke-virtual {p0}, Lcom/android/calculator2/CalculatorDisplay;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080011

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-virtual {p0}, Lcom/android/calculator2/CalculatorDisplay;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f08000e

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    add-float v9, v0, v1

    .line 158
    .local v9, toX:F
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x0

    neg-float v3, v9

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/android/calculator2/CalculatorDisplay;->getHeight()I

    move-result v5

    neg-int v5, v5

    int-to-float v5, v5

    invoke-virtual {p0}, Lcom/android/calculator2/CalculatorDisplay;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f08000d

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    sub-float/2addr v5, v6

    invoke-direct {v0, v1, v3, v4, v5}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/calculator2/CalculatorDisplay;->outAnimUp:Landroid/view/animation/TranslateAnimation;

    .line 160
    iget-object v0, p0, Lcom/android/calculator2/CalculatorDisplay;->outAnimUp:Landroid/view/animation/TranslateAnimation;

    const-wide/16 v3, 0xfa

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 161
    iget-object v0, p0, Lcom/android/calculator2/CalculatorDisplay;->outAnimUp:Landroid/view/animation/TranslateAnimation;

    iget-object v1, p0, Lcom/android/calculator2/CalculatorDisplay;->mAnimListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 162
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const/high16 v1, 0x3f80

    const/high16 v3, 0x3f80

    const/4 v5, 0x1

    const/high16 v6, 0x3f80

    const/4 v7, 0x1

    const/4 v8, 0x0

    move v4, v2

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    iput-object v0, p0, Lcom/android/calculator2/CalculatorDisplay;->zoomOutAnimation:Landroid/view/animation/ScaleAnimation;

    .line 164
    iget-object v0, p0, Lcom/android/calculator2/CalculatorDisplay;->zoomOutAnimation:Landroid/view/animation/ScaleAnimation;

    const-wide/16 v3, 0xfa

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 165
    new-instance v0, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v0, p0, Lcom/android/calculator2/CalculatorDisplay;->animationSet:Landroid/view/animation/AnimationSet;

    .line 166
    iget-object v0, p0, Lcom/android/calculator2/CalculatorDisplay;->animationSet:Landroid/view/animation/AnimationSet;

    iget-object v1, p0, Lcom/android/calculator2/CalculatorDisplay;->outAnimUp:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 167
    iget-object v0, p0, Lcom/android/calculator2/CalculatorDisplay;->animationSet:Landroid/view/animation/AnimationSet;

    iget-object v1, p0, Lcom/android/calculator2/CalculatorDisplay;->zoomOutAnimation:Landroid/view/animation/ScaleAnimation;

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 168
    iget-object v0, p0, Lcom/android/calculator2/CalculatorDisplay;->animationSet:Landroid/view/animation/AnimationSet;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 169
    return-void
.end method

.method public setDisplayText(Landroid/widget/TextView;)V
    .locals 0
    .parameter "text"

    .prologue
    .line 106
    iput-object p1, p0, Lcom/android/calculator2/CalculatorDisplay;->mDisplayText:Landroid/widget/TextView;

    .line 107
    return-void
.end method

.method public setEqualText(Landroid/widget/TextView;)V
    .locals 0
    .parameter "text"

    .prologue
    .line 102
    iput-object p1, p0, Lcom/android/calculator2/CalculatorDisplay;->mEqualText:Landroid/widget/TextView;

    .line 103
    return-void
.end method

.method public setHistory(Landroid/widget/TextView;)V
    .locals 0
    .parameter "text"

    .prologue
    .line 98
    iput-object p1, p0, Lcom/android/calculator2/CalculatorDisplay;->mHistoryDisplay:Landroid/widget/TextView;

    .line 99
    return-void
.end method

.method protected setLogic(Lcom/android/calculator2/Logic;)V
    .locals 5
    .parameter "logic"

    .prologue
    .line 114
    new-instance v0, Lcom/android/calculator2/CalculatorDisplay$2;

    invoke-direct {v0, p0}, Lcom/android/calculator2/CalculatorDisplay$2;-><init>(Lcom/android/calculator2/CalculatorDisplay;)V

    .line 135
    .local v0, calculatorKeyListener:Landroid/text/method/NumberKeyListener;
    new-instance v1, Lcom/android/calculator2/CalculatorEditable$Factory;

    invoke-direct {v1, p1}, Lcom/android/calculator2/CalculatorEditable$Factory;-><init>(Lcom/android/calculator2/Logic;)V

    .line 136
    .local v1, factory:Landroid/text/Editable$Factory;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    const/4 v4, 0x2

    if-ge v2, v4, :cond_0

    .line 137
    invoke-virtual {p0, v2}, Lcom/android/calculator2/CalculatorDisplay;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    .line 138
    .local v3, text:Landroid/widget/EditText;
    invoke-virtual {v3, v1}, Landroid/widget/EditText;->setEditableFactory(Landroid/text/Editable$Factory;)V

    .line 139
    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 140
    invoke-virtual {v3}, Landroid/widget/EditText;->setSingleLine()V

    .line 136
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 142
    .end local v3           #text:Landroid/widget/EditText;
    :cond_0
    return-void
.end method

.method public setOnKeyListener(Landroid/view/View$OnKeyListener;)V
    .locals 1
    .parameter "l"

    .prologue
    .line 146
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/calculator2/CalculatorDisplay;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 147
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/calculator2/CalculatorDisplay;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 148
    return-void
.end method

.method setText(Ljava/lang/CharSequence;Lcom/android/calculator2/CalculatorDisplay$Scroll;)V
    .locals 1
    .parameter "text"
    .parameter "dir"

    .prologue
    .line 187
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/calculator2/CalculatorDisplay;->setText(Ljava/lang/CharSequence;Lcom/android/calculator2/CalculatorDisplay$Scroll;Z)V

    .line 188
    return-void
.end method

.method setText(Ljava/lang/CharSequence;Lcom/android/calculator2/CalculatorDisplay$Scroll;Z)V
    .locals 9
    .parameter "text"
    .parameter "dir"
    .parameter "deleteModeClear"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v8, 0x0

    .line 191
    invoke-virtual {p0}, Lcom/android/calculator2/CalculatorDisplay;->getText()Landroid/text/Editable;

    move-result-object v3

    iput-object v3, p0, Lcom/android/calculator2/CalculatorDisplay;->previousText:Landroid/text/Editable;

    .line 192
    invoke-virtual {p0}, Lcom/android/calculator2/CalculatorDisplay;->getNextView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 193
    .local v0, editText:Landroid/widget/EditText;
    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 194
    iget-object v3, p0, Lcom/android/calculator2/CalculatorDisplay;->mEqualText:Landroid/widget/TextView;

    const/4 v6, 0x4

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 195
    iget-object v3, p0, Lcom/android/calculator2/CalculatorDisplay;->previousText:Landroid/text/Editable;

    if-eqz v3, :cond_5

    const-string v3, "0"

    iget-object v6, p0, Lcom/android/calculator2/CalculatorDisplay;->previousText:Landroid/text/Editable;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    move v3, v4

    :goto_0
    iput-boolean v3, p0, Lcom/android/calculator2/CalculatorDisplay;->mIsDisplayViewHasText:Z

    .line 197
    iget-boolean v3, p0, Lcom/android/calculator2/CalculatorDisplay;->mIsDisplayViewHasText:Z

    if-eqz v3, :cond_7

    if-nez p3, :cond_7

    .line 198
    iget-object v3, p0, Lcom/android/calculator2/CalculatorDisplay;->previousText:Landroid/text/Editable;

    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v2

    .line 199
    .local v2, position:I
    iget-object v3, p0, Lcom/android/calculator2/CalculatorDisplay;->previousText:Landroid/text/Editable;

    invoke-static {v3, v2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 200
    iget-object v3, p0, Lcom/android/calculator2/CalculatorDisplay;->previousText:Landroid/text/Editable;

    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v3

    const/16 v6, 0x14

    if-le v3, v6, :cond_6

    .line 201
    iget-object v3, p0, Lcom/android/calculator2/CalculatorDisplay;->previousText:Landroid/text/Editable;

    iget-object v6, p0, Lcom/android/calculator2/CalculatorDisplay;->previousText:Landroid/text/Editable;

    invoke-interface {v6}, Landroid/text/Editable;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x14

    iget-object v7, p0, Lcom/android/calculator2/CalculatorDisplay;->previousText:Landroid/text/Editable;

    invoke-interface {v7}, Landroid/text/Editable;->length()I

    move-result v7

    invoke-interface {v3, v6, v7}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Landroid/text/Editable;

    check-cast v3, Landroid/text/Editable;

    iput-object v3, p0, Lcom/android/calculator2/CalculatorDisplay;->previousText:Landroid/text/Editable;

    .line 203
    iget-object v3, p0, Lcom/android/calculator2/CalculatorDisplay;->mDisplayText:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "..."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/calculator2/CalculatorDisplay;->previousText:Landroid/text/Editable;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 210
    .end local v2           #position:I
    :goto_1
    iget-object v3, p0, Lcom/android/calculator2/CalculatorDisplay;->previousText:Landroid/text/Editable;

    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v3

    if-nez v3, :cond_0

    .line 211
    sget-object p2, Lcom/android/calculator2/CalculatorDisplay$Scroll;->NONE:Lcom/android/calculator2/CalculatorDisplay$Scroll;

    .line 213
    :cond_0
    const-string v3, "0"

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    move v1, v4

    .line 214
    .local v1, needAnimation:Z
    :goto_2
    sget-object v3, Lcom/android/calculator2/CalculatorDisplay$Scroll;->NONE:Lcom/android/calculator2/CalculatorDisplay$Scroll;

    if-eq p2, v3, :cond_1

    if-eqz p3, :cond_a

    .line 215
    :cond_1
    if-nez v1, :cond_2

    if-eqz p3, :cond_9

    .line 216
    :cond_2
    invoke-virtual {p0, v8}, Lcom/android/calculator2/CalculatorDisplay;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 217
    invoke-virtual {p0, v8}, Lcom/android/calculator2/CalculatorDisplay;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 232
    :goto_3
    iget-object v3, p0, Lcom/android/calculator2/CalculatorDisplay;->mHistoryDisplay:Landroid/widget/TextView;

    if-eqz v3, :cond_4

    .line 233
    if-eqz p1, :cond_3

    const-string v3, "0"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 234
    :cond_3
    iget-object v3, p0, Lcom/android/calculator2/CalculatorDisplay;->mHistoryDisplay:Landroid/widget/TextView;

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 237
    :cond_4
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setSelection(I)V

    .line 238
    invoke-virtual {p0}, Lcom/android/calculator2/CalculatorDisplay;->showNext()V

    .line 239
    return-void

    .end local v1           #needAnimation:Z
    :cond_5
    move v3, v5

    .line 195
    goto/16 :goto_0

    .line 205
    .restart local v2       #position:I
    :cond_6
    iget-object v3, p0, Lcom/android/calculator2/CalculatorDisplay;->mDisplayText:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/android/calculator2/CalculatorDisplay;->previousText:Landroid/text/Editable;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 208
    .end local v2           #position:I
    :cond_7
    iget-object v3, p0, Lcom/android/calculator2/CalculatorDisplay;->mDisplayText:Landroid/widget/TextView;

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_8
    move v1, v5

    .line 213
    goto :goto_2

    .line 219
    .restart local v1       #needAnimation:Z
    :cond_9
    iget-object v3, p0, Lcom/android/calculator2/CalculatorDisplay;->mDisplayText:Landroid/widget/TextView;

    const-string v4, "0"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 221
    :cond_a
    sget-object v3, Lcom/android/calculator2/CalculatorDisplay$Scroll;->UP:Lcom/android/calculator2/CalculatorDisplay$Scroll;

    if-ne p2, v3, :cond_c

    .line 222
    if-eqz v1, :cond_b

    .line 223
    iget-object v3, p0, Lcom/android/calculator2/CalculatorDisplay;->inAnimUp:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p0, v3}, Lcom/android/calculator2/CalculatorDisplay;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 224
    iget-object v3, p0, Lcom/android/calculator2/CalculatorDisplay;->mDisplayText:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/calculator2/CalculatorDisplay;->animationSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_3

    .line 226
    :cond_b
    iget-object v3, p0, Lcom/android/calculator2/CalculatorDisplay;->mDisplayText:Landroid/widget/TextView;

    const-string v4, "0"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 229
    :cond_c
    iget-object v3, p0, Lcom/android/calculator2/CalculatorDisplay;->inAnimDown:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p0, v3}, Lcom/android/calculator2/CalculatorDisplay;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 230
    iget-object v3, p0, Lcom/android/calculator2/CalculatorDisplay;->outAnimDown:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p0, v3}, Lcom/android/calculator2/CalculatorDisplay;->setOutAnimation(Landroid/view/animation/Animation;)V

    goto :goto_3
.end method

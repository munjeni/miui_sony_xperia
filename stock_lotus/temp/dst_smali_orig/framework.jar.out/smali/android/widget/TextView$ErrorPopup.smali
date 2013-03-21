.class Landroid/widget/TextView$ErrorPopup;
.super Landroid/widget/PopupWindow;
.source "TextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ErrorPopup"
.end annotation


# instance fields
.field private mAbove:Z

.field private mPopupInlineErrorAboveBackgroundId:I

.field private mPopupInlineErrorBackgroundId:I

.field private final mTextView:Landroid/widget/TextView;

.field private final mViewGroup:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Landroid/view/ViewGroup;II)V
    .locals 3
    .parameter "viewGroup"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-boolean v2, p0, Landroid/widget/TextView$ErrorPopup;->mAbove:Z

    iput v2, p0, Landroid/widget/TextView$ErrorPopup;->mPopupInlineErrorBackgroundId:I

    iput v2, p0, Landroid/widget/TextView$ErrorPopup;->mPopupInlineErrorAboveBackgroundId:I

    iput-object p1, p0, Landroid/widget/TextView$ErrorPopup;->mViewGroup:Landroid/view/ViewGroup;

    iget v0, p0, Landroid/widget/TextView$ErrorPopup;->mPopupInlineErrorBackgroundId:I

    const/16 v1, 0xd9

    invoke-direct {p0, v0, v1}, Landroid/widget/TextView$ErrorPopup;->getResourceId(II)I

    move-result v0

    iput v0, p0, Landroid/widget/TextView$ErrorPopup;->mPopupInlineErrorBackgroundId:I

    iget-object v0, p0, Landroid/widget/TextView$ErrorPopup;->mViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Landroid/widget/TextView$ErrorPopup;->mTextView:Landroid/widget/TextView;

    iget-object v0, p0, Landroid/widget/TextView$ErrorPopup;->mTextView:Landroid/widget/TextView;

    iget v1, p0, Landroid/widget/TextView$ErrorPopup;->mPopupInlineErrorBackgroundId:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    return-void
.end method

.method private getResourceId(II)I
    .locals 3
    .parameter "currentId"
    .parameter "index"

    .prologue
    if-nez p1, :cond_0

    iget-object v1, p0, Landroid/widget/TextView$ErrorPopup;->mViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/R$styleable;->Theme:[I

    invoke-virtual {v1, v2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .local v0, styledAttributes:Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .end local v0           #styledAttributes:Landroid/content/res/TypedArray;
    :cond_0
    return p1
.end method


# virtual methods
.method fixDirection(Z)V
    .locals 2
    .parameter "above"

    .prologue
    iput-boolean p1, p0, Landroid/widget/TextView$ErrorPopup;->mAbove:Z

    if-eqz p1, :cond_0

    iget v0, p0, Landroid/widget/TextView$ErrorPopup;->mPopupInlineErrorAboveBackgroundId:I

    const/16 v1, 0xda

    invoke-direct {p0, v0, v1}, Landroid/widget/TextView$ErrorPopup;->getResourceId(II)I

    move-result v0

    iput v0, p0, Landroid/widget/TextView$ErrorPopup;->mPopupInlineErrorAboveBackgroundId:I

    :goto_0
    iget-object v1, p0, Landroid/widget/TextView$ErrorPopup;->mTextView:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    iget v0, p0, Landroid/widget/TextView$ErrorPopup;->mPopupInlineErrorAboveBackgroundId:I

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    return-void

    :cond_0
    iget v0, p0, Landroid/widget/TextView$ErrorPopup;->mPopupInlineErrorBackgroundId:I

    const/16 v1, 0xd9

    invoke-direct {p0, v0, v1}, Landroid/widget/TextView$ErrorPopup;->getResourceId(II)I

    move-result v0

    iput v0, p0, Landroid/widget/TextView$ErrorPopup;->mPopupInlineErrorBackgroundId:I

    goto :goto_0

    :cond_1
    iget v0, p0, Landroid/widget/TextView$ErrorPopup;->mPopupInlineErrorBackgroundId:I

    goto :goto_1
.end method

.method public getTextView()Landroid/widget/TextView;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/TextView$ErrorPopup;->mTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method public update(IIIIZ)V
    .locals 2
    .parameter "x"
    .parameter "y"
    .parameter "w"
    .parameter "h"
    .parameter "force"

    .prologue
    invoke-super/range {p0 .. p5}, Landroid/widget/PopupWindow;->update(IIIIZ)V

    invoke-virtual {p0}, Landroid/widget/TextView$ErrorPopup;->isAboveAnchor()Z

    move-result v0

    .local v0, above:Z
    iget-boolean v1, p0, Landroid/widget/TextView$ErrorPopup;->mAbove:Z

    if-eq v0, v1, :cond_0

    invoke-virtual {p0, v0}, Landroid/widget/TextView$ErrorPopup;->fixDirection(Z)V

    :cond_0
    return-void
.end method

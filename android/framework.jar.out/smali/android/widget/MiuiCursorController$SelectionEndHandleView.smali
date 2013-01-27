.class Landroid/widget/MiuiCursorController$SelectionEndHandleView;
.super Landroid/widget/MiuiCursorController$MiuiHandleView;
.source "MiuiCursorController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/MiuiCursorController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SelectionEndHandleView"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/MiuiCursorController;


# direct methods
.method public constructor <init>(Landroid/widget/MiuiCursorController;Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter
    .parameter "tv"
    .parameter "drawableLtr"
    .parameter "drawableRtl"

    .prologue
    .line 1243
    iput-object p1, p0, Landroid/widget/MiuiCursorController$SelectionEndHandleView;->this$0:Landroid/widget/MiuiCursorController;

    .line 1244
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/MiuiCursorController$MiuiHandleView;-><init>(Landroid/widget/MiuiCursorController;Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1245
    return-void
.end method


# virtual methods
.method public getCurrentCursorOffset()I
    .locals 1

    .prologue
    .line 1258
    iget-object v0, p0, Landroid/widget/MiuiCursorController$SelectionEndHandleView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    return v0
.end method

.method protected getHotspotX(Landroid/graphics/drawable/Drawable;Z)I
    .locals 1
    .parameter "drawable"
    .parameter "isRtlRun"

    .prologue
    .line 1249
    if-eqz p2, :cond_0

    .line 1250
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x4

    .line 1252
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    goto :goto_0
.end method

.method public updatePosition(FF)V
    .locals 4
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1269
    iget-object v2, p0, Landroid/widget/MiuiCursorController$SelectionEndHandleView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2, p1, p2}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v0

    .line 1272
    .local v0, offset:I
    iget-object v2, p0, Landroid/widget/MiuiCursorController$SelectionEndHandleView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    .line 1273
    .local v1, selectionStart:I
    if-gt v0, v1, :cond_0

    add-int/lit8 v2, v1, 0x1

    iget-object v3, p0, Landroid/widget/MiuiCursorController$SelectionEndHandleView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->length()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1275
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Landroid/widget/MiuiCursorController$SelectionEndHandleView;->positionAtCursorOffset(IZ)V

    .line 1276
    return-void
.end method

.method public updateSelection(I)V
    .locals 2
    .parameter "offset"

    .prologue
    .line 1263
    iget-object v0, p0, Landroid/widget/MiuiCursorController$SelectionEndHandleView;->mTextView:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/MiuiCursorController$SelectionEndHandleView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/widget/TextView;->setTextSelectionWrap(II)V

    .line 1264
    invoke-virtual {p0}, Landroid/widget/MiuiCursorController$SelectionEndHandleView;->updateDrawable()V

    .line 1265
    return-void
.end method

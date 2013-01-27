.class Landroid/widget/MiuiCursorController$SelectionStartHandleView;
.super Landroid/widget/MiuiCursorController$MiuiHandleView;
.source "MiuiCursorController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/MiuiCursorController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SelectionStartHandleView"
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
    .line 1205
    iput-object p1, p0, Landroid/widget/MiuiCursorController$SelectionStartHandleView;->this$0:Landroid/widget/MiuiCursorController;

    .line 1206
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/MiuiCursorController$MiuiHandleView;-><init>(Landroid/widget/MiuiCursorController;Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1207
    return-void
.end method


# virtual methods
.method public getCurrentCursorOffset()I
    .locals 1

    .prologue
    .line 1220
    iget-object v0, p0, Landroid/widget/MiuiCursorController$SelectionStartHandleView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    return v0
.end method

.method protected getHotspotX(Landroid/graphics/drawable/Drawable;Z)I
    .locals 1
    .parameter "drawable"
    .parameter "isRtlRun"

    .prologue
    .line 1211
    if-eqz p2, :cond_0

    .line 1212
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    .line 1214
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x4

    goto :goto_0
.end method

.method public updatePosition(FF)V
    .locals 4
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v3, 0x0

    .line 1231
    iget-object v2, p0, Landroid/widget/MiuiCursorController$SelectionStartHandleView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2, p1, p2}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v0

    .line 1234
    .local v0, offset:I
    iget-object v2, p0, Landroid/widget/MiuiCursorController$SelectionStartHandleView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v1

    .line 1235
    .local v1, selectionEnd:I
    if-lt v0, v1, :cond_0

    add-int/lit8 v2, v1, -0x1

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1237
    :cond_0
    invoke-virtual {p0, v0, v3}, Landroid/widget/MiuiCursorController$SelectionStartHandleView;->positionAtCursorOffset(IZ)V

    .line 1238
    return-void
.end method

.method public updateSelection(I)V
    .locals 2
    .parameter "offset"

    .prologue
    .line 1225
    iget-object v0, p0, Landroid/widget/MiuiCursorController$SelectionStartHandleView;->mTextView:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/MiuiCursorController$SelectionStartHandleView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/widget/TextView;->setTextSelectionWrap(II)V

    .line 1226
    invoke-virtual {p0}, Landroid/widget/MiuiCursorController$SelectionStartHandleView;->updateDrawable()V

    .line 1227
    return-void
.end method

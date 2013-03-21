.class Landroid/widget/TextView$SelectionEndHandleView;
.super Landroid/widget/TextView$HandleView;
.source "TextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SelectionEndHandleView"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter
    .parameter "drawableLtr"
    .parameter "drawableRtl"

    .prologue
    .line 11307
    iput-object p1, p0, Landroid/widget/TextView$SelectionEndHandleView;->this$0:Landroid/widget/TextView;

    .line 11308
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView$HandleView;-><init>(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 11309
    return-void
.end method


# virtual methods
.method public getCurrentCursorOffset()I
    .locals 1

    .prologue
    .line 11322
    iget-object v0, p0, Landroid/widget/TextView$SelectionEndHandleView;->this$0:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    return v0
.end method

.method protected getHotspotX(Landroid/graphics/drawable/Drawable;Z)I
    .locals 1
    .parameter "drawable"
    .parameter "isRtlRun"

    .prologue
    .line 11313
    if-eqz p2, :cond_0

    .line 11314
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x4

    .line 11316
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    goto :goto_0
.end method

.method public setActionPopupWindow(Landroid/widget/TextView$ActionPopupWindow;)V
    .locals 0
    .parameter "actionPopupWindow"

    .prologue
    .line 11349
    iput-object p1, p0, Landroid/widget/TextView$SelectionEndHandleView;->mActionPopupWindow:Landroid/widget/TextView$ActionPopupWindow;

    .line 11350
    return-void
.end method

.method public updatePosition(FF)V
    .locals 5
    .parameter "x"
    .parameter "y"

    .prologue
    .line 11333
    iget-object v2, p0, Landroid/widget/TextView$SelectionEndHandleView;->this$0:Landroid/widget/TextView;

    invoke-virtual {v2, p1, p2}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v0

    .line 11336
    .local v0, offset:I
    iget-object v2, p0, Landroid/widget/TextView$SelectionEndHandleView;->this$0:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    .line 11337
    .local v1, selectionStart:I
    if-gt v0, v1, :cond_0

    add-int/lit8 v2, v1, 0x1

    iget-object v3, p0, Landroid/widget/TextView$SelectionEndHandleView;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;
    invoke-static {v3}, Landroid/widget/TextView;->access$700(Landroid/widget/TextView;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 11339
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Landroid/widget/TextView$SelectionEndHandleView;->positionAtCursorOffset(IZ)V

    .line 11341
    invoke-virtual {p0}, Landroid/widget/TextView$SelectionEndHandleView;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 11342
    iget-object v2, p0, Landroid/widget/TextView$SelectionEndHandleView;->this$0:Landroid/widget/TextView;

    #calls: Landroid/widget/TextView;->ensureMagnifierView()V
    invoke-static {v2}, Landroid/widget/TextView;->access$7700(Landroid/widget/TextView;)V

    .line 11343
    iget-object v2, p0, Landroid/widget/TextView$SelectionEndHandleView;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mMagnifierView:Landroid/widget/MagnifierView;
    invoke-static {v2}, Landroid/widget/TextView;->access$7800(Landroid/widget/TextView;)Landroid/widget/MagnifierView;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/MagnifierView;->setShape(I)V

    .line 11344
    iget-object v2, p0, Landroid/widget/TextView$SelectionEndHandleView;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mMagnifierView:Landroid/widget/MagnifierView;
    invoke-static {v2}, Landroid/widget/TextView;->access$7800(Landroid/widget/TextView;)Landroid/widget/MagnifierView;

    move-result-object v2

    float-to-int v3, p1

    float-to-int v4, p2

    invoke-virtual {v2, v3, v4}, Landroid/widget/MagnifierView;->showAt(II)V

    .line 11346
    :cond_1
    return-void
.end method

.method public updateSelection(I)V
    .locals 2
    .parameter "offset"

    .prologue
    .line 11327
    iget-object v0, p0, Landroid/widget/TextView$SelectionEndHandleView;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/widget/TextView;->access$700(Landroid/widget/TextView;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Spannable;

    iget-object v1, p0, Landroid/widget/TextView$SelectionEndHandleView;->this$0:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    invoke-static {v0, v1, p1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 11328
    invoke-virtual {p0}, Landroid/widget/TextView$SelectionEndHandleView;->updateDrawable()V

    .line 11329
    return-void
.end method

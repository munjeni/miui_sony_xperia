.class Landroid/text/DynamicLayout$ChangeWatcher;
.super Ljava/lang/Object;
.source "DynamicLayout.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/text/SpanWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/DynamicLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ChangeWatcher"
.end annotation


# instance fields
.field private final mLayout:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/text/DynamicLayout;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/text/DynamicLayout;)V
    .locals 1
    .parameter "layout"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/text/DynamicLayout$ChangeWatcher;->mLayout:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private reflow(Ljava/lang/CharSequence;III)V
    .locals 6
    .parameter "s"
    .parameter "where"
    .parameter "before"
    .parameter "after"

    .prologue
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Landroid/text/DynamicLayout$ChangeWatcher;->reflow(Ljava/lang/CharSequence;IIIZ)V

    return-void
.end method

.method private reflow(Ljava/lang/CharSequence;IIIZ)V
    .locals 6
    .parameter "s"
    .parameter "where"
    .parameter "before"
    .parameter "after"
    .parameter "textHasChanged"

    .prologue
    iget-object v1, p0, Landroid/text/DynamicLayout$ChangeWatcher;->mLayout:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/DynamicLayout;

    .local v0, ml:Landroid/text/DynamicLayout;
    if-eqz v0, :cond_1

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/text/DynamicLayout;->reflow(Ljava/lang/CharSequence;IIIZ)V

    .end local p1
    :cond_0
    :goto_0
    return-void

    .restart local p1
    :cond_1
    instance-of v1, p1, Landroid/text/Spannable;

    if-eqz v1, :cond_0

    check-cast p1, Landroid/text/Spannable;

    .end local p1
    invoke-interface {p1, p0}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "s"

    .prologue
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "where"
    .parameter "before"
    .parameter "after"

    .prologue
    return-void
.end method

.method public onSpanAdded(Landroid/text/Spannable;Ljava/lang/Object;II)V
    .locals 6
    .parameter "s"
    .parameter "o"
    .parameter "start"
    .parameter "end"

    .prologue
    instance-of v0, p2, Landroid/text/style/UpdateLayout;

    if-nez v0, :cond_0

    instance-of v0, p2, Landroid/text/style/ParagraphStyle;

    if-eqz v0, :cond_1

    :cond_0
    sub-int v3, p4, p3

    sub-int v4, p4, p3

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p3

    invoke-direct/range {v0 .. v5}, Landroid/text/DynamicLayout$ChangeWatcher;->reflow(Ljava/lang/CharSequence;IIIZ)V

    :cond_1
    return-void
.end method

.method public onSpanChanged(Landroid/text/Spannable;Ljava/lang/Object;IIII)V
    .locals 2
    .parameter "s"
    .parameter "o"
    .parameter "start"
    .parameter "end"
    .parameter "nstart"
    .parameter "nend"

    .prologue
    instance-of v0, p2, Landroid/text/style/UpdateLayout;

    if-nez v0, :cond_0

    instance-of v0, p2, Landroid/text/style/ParagraphStyle;

    if-eqz v0, :cond_1

    :cond_0
    sub-int v0, p4, p3

    sub-int v1, p4, p3

    invoke-direct {p0, p1, p3, v0, v1}, Landroid/text/DynamicLayout$ChangeWatcher;->reflow(Ljava/lang/CharSequence;III)V

    sub-int v0, p6, p5

    sub-int v1, p6, p5

    invoke-direct {p0, p1, p5, v0, v1}, Landroid/text/DynamicLayout$ChangeWatcher;->reflow(Ljava/lang/CharSequence;III)V

    :cond_1
    return-void
.end method

.method public onSpanRemoved(Landroid/text/Spannable;Ljava/lang/Object;II)V
    .locals 6
    .parameter "s"
    .parameter "o"
    .parameter "start"
    .parameter "end"

    .prologue
    const/4 v3, 0x0

    instance-of v0, p2, Landroid/text/style/ReplacementSpan;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/text/DynamicLayout$ChangeWatcher;->mLayout:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/DynamicLayout;

    iget-object v0, v0, Landroid/text/DynamicLayout;->mBlockText:Landroid/graphics/Text;

    sub-int v2, p4, p3

    const/4 v4, 0x0

    move v1, p3

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Text;->setCharSubstitution(IICLandroid/graphics/Paint$FontMetricsInt;I)I

    :cond_0
    instance-of v0, p2, Landroid/text/style/UpdateLayout;

    if-nez v0, :cond_1

    instance-of v0, p2, Landroid/text/style/ParagraphStyle;

    if-eqz v0, :cond_2

    :cond_1
    sub-int v3, p4, p3

    sub-int v4, p4, p3

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p3

    invoke-direct/range {v0 .. v5}, Landroid/text/DynamicLayout$ChangeWatcher;->reflow(Ljava/lang/CharSequence;IIIZ)V

    :cond_2
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 6
    .parameter "s"
    .parameter "where"
    .parameter "before"
    .parameter "after"

    .prologue
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Landroid/text/DynamicLayout$ChangeWatcher;->reflow(Ljava/lang/CharSequence;IIIZ)V

    return-void
.end method

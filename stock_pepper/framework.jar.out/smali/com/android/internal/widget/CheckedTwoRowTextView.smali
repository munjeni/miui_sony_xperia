.class public Lcom/android/internal/widget/CheckedTwoRowTextView;
.super Landroid/widget/RelativeLayout;
.source "CheckedTwoRowTextView.java"

# interfaces
.implements Landroid/widget/Checkable;


# instance fields
.field private mCheckBox:Landroid/widget/Checkable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 34
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 35
    invoke-direct {p0, p1}, Lcom/android/internal/widget/CheckedTwoRowTextView;->initCheckBox(Landroid/content/Context;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attr"

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    invoke-direct {p0, p1}, Lcom/android/internal/widget/CheckedTwoRowTextView;->initCheckBox(Landroid/content/Context;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attr"
    .parameter "defaultStyle"

    .prologue
    .line 44
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    invoke-direct {p0, p1}, Lcom/android/internal/widget/CheckedTwoRowTextView;->initCheckBox(Landroid/content/Context;)V

    .line 46
    return-void
.end method

.method private initCheckBox(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 49
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x109002f

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 50
    const v0, 0x102025c

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/CheckedTwoRowTextView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Checkable;

    iput-object v0, p0, Lcom/android/internal/widget/CheckedTwoRowTextView;->mCheckBox:Landroid/widget/Checkable;

    .line 51
    return-void
.end method


# virtual methods
.method public isChecked()Z
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/internal/widget/CheckedTwoRowTextView;->mCheckBox:Landroid/widget/Checkable;

    invoke-interface {v0}, Landroid/widget/Checkable;->isChecked()Z

    move-result v0

    return v0
.end method

.method public setChecked(Z)V
    .locals 1
    .parameter "checked"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/internal/widget/CheckedTwoRowTextView;->mCheckBox:Landroid/widget/Checkable;

    invoke-interface {v0, p1}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 59
    return-void
.end method

.method public toggle()V
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/internal/widget/CheckedTwoRowTextView;->mCheckBox:Landroid/widget/Checkable;

    invoke-interface {v0}, Landroid/widget/Checkable;->toggle()V

    .line 63
    return-void
.end method

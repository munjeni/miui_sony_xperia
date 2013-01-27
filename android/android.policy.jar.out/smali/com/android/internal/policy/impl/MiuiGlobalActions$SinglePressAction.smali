.class abstract Lcom/android/internal/policy/impl/MiuiGlobalActions$SinglePressAction;
.super Ljava/lang/Object;
.source "MiuiGlobalActions.java"

# interfaces
.implements Lcom/android/internal/policy/impl/MiuiGlobalActions$Action;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/MiuiGlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "SinglePressAction"
.end annotation


# static fields
.field protected static rebootMode:I

.field protected static final rebootOptions:[Ljava/lang/String;


# instance fields
.field private mIconResId:I

.field private mIconView:Landroid/widget/ImageView;

.field private mMessageResId:I

.field private mTextview:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Normal"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "Recovery"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "Bootloader"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/policy/impl/MiuiGlobalActions$SinglePressAction;->rebootOptions:[Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(II)V
    .locals 0
    .parameter "iconResId"
    .parameter "messageResId"

    .prologue
    .line 409
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 410
    iput p1, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions$SinglePressAction;->mIconResId:I

    .line 411
    iput p2, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions$SinglePressAction;->mMessageResId:I

    .line 412
    return-void
.end method


# virtual methods
.method public create(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 3
    .parameter "context"
    .parameter "convertView"
    .parameter "parent"
    .parameter "inflater"

    .prologue
    .line 436
    const v1, 0x6030021

    const/4 v2, 0x0

    invoke-virtual {p4, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 438
    .local v0, v:Landroid/view/View;
    const v1, 0x60b0030

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions$SinglePressAction;->mIconView:Landroid/widget/ImageView;

    .line 439
    const v1, 0x60b0031

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions$SinglePressAction;->mTextview:Landroid/widget/TextView;

    .line 441
    const v1, 0x60b0032

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 443
    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions$SinglePressAction;->mIconView:Landroid/widget/ImageView;

    iget v2, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions$SinglePressAction;->mIconResId:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 444
    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions$SinglePressAction;->mTextview:Landroid/widget/TextView;

    iget v2, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions$SinglePressAction;->mMessageResId:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 446
    return-object v0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 415
    const/4 v0, 0x1

    return v0
.end method

.method public abstract onPress()V
.end method

.method public setIcon(I)V
    .locals 2
    .parameter "iconResId"

    .prologue
    .line 419
    iput p1, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions$SinglePressAction;->mIconResId:I

    .line 420
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions$SinglePressAction;->mIconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 421
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions$SinglePressAction;->mIconView:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions$SinglePressAction;->mIconResId:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 423
    :cond_0
    return-void
.end method

.method public setMessage(I)V
    .locals 2
    .parameter "messageResId"

    .prologue
    .line 426
    iput p1, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions$SinglePressAction;->mMessageResId:I

    .line 427
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions$SinglePressAction;->mTextview:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 428
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions$SinglePressAction;->mTextview:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions$SinglePressAction;->mMessageResId:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 430
    :cond_0
    return-void
.end method

.class Lcom/android/internal/policy/impl/MiuiGlobalActions$SilentModeAction;
.super Ljava/lang/Object;
.source "MiuiGlobalActions.java"

# interfaces
.implements Lcom/android/internal/policy/impl/MiuiGlobalActions$Action;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/MiuiGlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SilentModeAction"
.end annotation


# instance fields
.field private final ICON_IDS:[I

.field private final ITEM_IDS:[I

.field private final mAudioManager:Landroid/media/AudioManager;

.field private final mHandler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroid/media/AudioManager;Landroid/os/Handler;)V
    .locals 2
    .parameter "audioManager"
    .parameter "handler"

    .prologue
    const/4 v1, 0x3

    .line 588
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 577
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions$SilentModeAction;->ITEM_IDS:[I

    .line 579
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions$SilentModeAction;->ICON_IDS:[I

    .line 589
    iput-object p1, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions$SilentModeAction;->mAudioManager:Landroid/media/AudioManager;

    .line 590
    iput-object p2, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions$SilentModeAction;->mHandler:Landroid/os/Handler;

    .line 591
    return-void

    .line 577
    nop

    :array_0
    .array-data 0x4
        0x33t 0x0t 0xbt 0x6t
        0x34t 0x0t 0xbt 0x6t
        0x35t 0x0t 0xbt 0x6t
    .end array-data

    .line 579
    :array_1
    .array-data 0x4
        0x19t 0x1t 0x2t 0x6t
        0x17t 0x1t 0x2t 0x6t
        0x18t 0x1t 0x2t 0x6t
    .end array-data
.end method

.method private indexToRingerMode(I)I
    .locals 0
    .parameter "index"

    .prologue
    .line 600
    return p1
.end method

.method private ringerModeToIndex(I)I
    .locals 0
    .parameter "ringerMode"

    .prologue
    .line 595
    return p1
.end method


# virtual methods
.method public create(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 7
    .parameter "context"
    .parameter "convertView"
    .parameter "parent"
    .parameter "inflater"

    .prologue
    const/4 v5, 0x0

    .line 605
    const v4, 0x6030022

    invoke-virtual {p4, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 607
    .local v3, v:Landroid/view/View;
    iget-object v4, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions$SilentModeAction;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/internal/policy/impl/MiuiGlobalActions$SilentModeAction;->ringerModeToIndex(I)I

    move-result v2

    .line 608
    .local v2, selectedIndex:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v4, 0x3

    if-ge v0, v4, :cond_1

    .line 609
    iget-object v4, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions$SilentModeAction;->ITEM_IDS:[I

    aget v4, v4, v0

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 610
    .local v1, itemView:Landroid/widget/LinearLayout;
    if-ne v2, v0, :cond_0

    const/4 v4, 0x1

    :goto_1
    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 612
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 613
    invoke-virtual {v1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 614
    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions$SilentModeAction;->ICON_IDS:[I

    aget v6, v6, v0

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 608
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v4, v5

    .line 610
    goto :goto_1

    .line 616
    .end local v1           #itemView:Landroid/widget/LinearLayout;
    :cond_1
    return-object v3
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 631
    const/4 v0, 0x1

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    .line 638
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/Integer;

    if-nez v1, :cond_0

    .line 643
    :goto_0
    return-void

    .line 640
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 641
    .local v0, index:I
    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions$SilentModeAction;->mAudioManager:Landroid/media/AudioManager;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/MiuiGlobalActions$SilentModeAction;->indexToRingerMode(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 642
    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions$SilentModeAction;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    const-wide/16 v3, 0x12c

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method public onPress()V
    .locals 0

    .prologue
    .line 620
    return-void
.end method

.method public showBeforeProvisioning()Z
    .locals 1

    .prologue
    .line 627
    const/4 v0, 0x0

    return v0
.end method

.method public showDuringKeyguard()Z
    .locals 1

    .prologue
    .line 623
    const/4 v0, 0x1

    return v0
.end method

.method willCreate()V
    .locals 0

    .prologue
    .line 635
    return-void
.end method

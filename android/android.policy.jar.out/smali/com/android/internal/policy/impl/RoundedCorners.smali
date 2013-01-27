.class public Lcom/android/internal/policy/impl/RoundedCorners;
.super Ljava/lang/Object;
.source "RoundedCorners.java"


# static fields
.field private static final CORNER_IDS:[I = null

.field private static final NUM_CORNERS:I = 0x4


# instance fields
.field private final mCorners:[Landroid/graphics/drawable/Drawable;

.field private final mDisplayHeight:I

.field private final mDisplayWidth:I

.field private final mEnabled:Z

.field private final mHeight:[I

.field private mLastBottom:I

.field private mLastLeft:I

.field private mLastRight:I

.field private mLastTop:I

.field private final mStatusBarHeight:I

.field private final mWidth:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/internal/policy/impl/RoundedCorners;->CORNER_IDS:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0xe1t 0x0t 0x2t 0x6t
        0xe2t 0x0t 0x2t 0x6t
        0xdft 0x0t 0x2t 0x6t
        0xe0t 0x0t 0x2t 0x6t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    const/4 v5, 0x4

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-array v2, v5, [Landroid/graphics/drawable/Drawable;

    iput-object v2, p0, Lcom/android/internal/policy/impl/RoundedCorners;->mCorners:[Landroid/graphics/drawable/Drawable;

    .line 20
    new-array v2, v5, [I

    iput-object v2, p0, Lcom/android/internal/policy/impl/RoundedCorners;->mWidth:[I

    .line 21
    new-array v2, v5, [I

    iput-object v2, p0, Lcom/android/internal/policy/impl/RoundedCorners;->mHeight:[I

    .line 32
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 33
    .local v1, res:Landroid/content/res/Resources;
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v2, p0, Lcom/android/internal/policy/impl/RoundedCorners;->mDisplayWidth:I

    .line 34
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v2, p0, Lcom/android/internal/policy/impl/RoundedCorners;->mDisplayHeight:I

    .line 35
    const/high16 v2, 0x60a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/internal/policy/impl/RoundedCorners;->mStatusBarHeight:I

    .line 36
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "show_rounded_corners"

    const v4, 0x608000b

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    :goto_0
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/RoundedCorners;->mEnabled:Z

    .line 40
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/RoundedCorners;->mEnabled:Z

    if-nez v2, :cond_2

    .line 49
    :cond_0
    return-void

    .line 36
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 44
    :cond_2
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v5, :cond_0

    .line 45
    iget-object v2, p0, Lcom/android/internal/policy/impl/RoundedCorners;->mCorners:[Landroid/graphics/drawable/Drawable;

    sget-object v3, Lcom/android/internal/policy/impl/RoundedCorners;->CORNER_IDS:[I

    aget v3, v3, v0

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aput-object v3, v2, v0

    .line 46
    iget-object v2, p0, Lcom/android/internal/policy/impl/RoundedCorners;->mWidth:[I

    iget-object v3, p0, Lcom/android/internal/policy/impl/RoundedCorners;->mCorners:[Landroid/graphics/drawable/Drawable;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v3

    aput v3, v2, v0

    .line 47
    iget-object v2, p0, Lcom/android/internal/policy/impl/RoundedCorners;->mHeight:[I

    iget-object v3, p0, Lcom/android/internal/policy/impl/RoundedCorners;->mCorners:[Landroid/graphics/drawable/Drawable;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v3

    aput v3, v2, v0

    .line 44
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private matchLandscape(II)Z
    .locals 2
    .parameter "width"
    .parameter "height"

    .prologue
    .line 52
    iget v0, p0, Lcom/android/internal/policy/impl/RoundedCorners;->mDisplayWidth:I

    if-ne p1, v0, :cond_1

    iget v0, p0, Lcom/android/internal/policy/impl/RoundedCorners;->mDisplayHeight:I

    if-eq p2, v0, :cond_0

    iget v0, p0, Lcom/android/internal/policy/impl/RoundedCorners;->mDisplayHeight:I

    iget v1, p0, Lcom/android/internal/policy/impl/RoundedCorners;->mStatusBarHeight:I

    sub-int/2addr v0, v1

    if-ne p2, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private matchPortrait(II)Z
    .locals 2
    .parameter "width"
    .parameter "height"

    .prologue
    .line 56
    iget v0, p0, Lcom/android/internal/policy/impl/RoundedCorners;->mDisplayHeight:I

    if-ne p1, v0, :cond_1

    iget v0, p0, Lcom/android/internal/policy/impl/RoundedCorners;->mDisplayWidth:I

    if-eq p2, v0, :cond_0

    iget v0, p0, Lcom/android/internal/policy/impl/RoundedCorners;->mDisplayWidth:I

    iget v1, p0, Lcom/android/internal/policy/impl/RoundedCorners;->mStatusBarHeight:I

    sub-int/2addr v0, v1

    if-ne p2, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;IIII)V
    .locals 10
    .parameter "c"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 60
    sub-int v2, p4, p2

    .line 61
    .local v2, width:I
    sub-int v0, p5, p3

    .line 63
    .local v0, height:I
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/RoundedCorners;->mEnabled:Z

    if-eqz v3, :cond_0

    invoke-direct {p0, v2, v0}, Lcom/android/internal/policy/impl/RoundedCorners;->matchLandscape(II)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-direct {p0, v2, v0}, Lcom/android/internal/policy/impl/RoundedCorners;->matchPortrait(II)Z

    move-result v3

    if-nez v3, :cond_1

    .line 82
    :cond_0
    return-void

    .line 67
    :cond_1
    iget v3, p0, Lcom/android/internal/policy/impl/RoundedCorners;->mLastLeft:I

    if-ne p2, v3, :cond_2

    iget v3, p0, Lcom/android/internal/policy/impl/RoundedCorners;->mLastTop:I

    if-ne p3, v3, :cond_2

    iget v3, p0, Lcom/android/internal/policy/impl/RoundedCorners;->mLastRight:I

    if-ne p4, v3, :cond_2

    iget v3, p0, Lcom/android/internal/policy/impl/RoundedCorners;->mLastBottom:I

    if-eq p5, v3, :cond_3

    .line 68
    :cond_2
    iput p2, p0, Lcom/android/internal/policy/impl/RoundedCorners;->mLastLeft:I

    .line 69
    iput p3, p0, Lcom/android/internal/policy/impl/RoundedCorners;->mLastTop:I

    .line 70
    iput p4, p0, Lcom/android/internal/policy/impl/RoundedCorners;->mLastRight:I

    .line 71
    iput p5, p0, Lcom/android/internal/policy/impl/RoundedCorners;->mLastBottom:I

    .line 73
    iget-object v3, p0, Lcom/android/internal/policy/impl/RoundedCorners;->mCorners:[Landroid/graphics/drawable/Drawable;

    aget-object v3, v3, v6

    iget-object v4, p0, Lcom/android/internal/policy/impl/RoundedCorners;->mWidth:[I

    aget v4, v4, v6

    add-int/2addr v4, p2

    iget-object v5, p0, Lcom/android/internal/policy/impl/RoundedCorners;->mHeight:[I

    aget v5, v5, v6

    add-int/2addr v5, p3

    invoke-virtual {v3, p2, p3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 74
    iget-object v3, p0, Lcom/android/internal/policy/impl/RoundedCorners;->mCorners:[Landroid/graphics/drawable/Drawable;

    aget-object v3, v3, v7

    iget-object v4, p0, Lcom/android/internal/policy/impl/RoundedCorners;->mWidth:[I

    aget v4, v4, v7

    sub-int v4, p4, v4

    iget-object v5, p0, Lcom/android/internal/policy/impl/RoundedCorners;->mHeight:[I

    aget v5, v5, v7

    add-int/2addr v5, p3

    invoke-virtual {v3, v4, p3, p4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 75
    iget-object v3, p0, Lcom/android/internal/policy/impl/RoundedCorners;->mCorners:[Landroid/graphics/drawable/Drawable;

    aget-object v3, v3, v8

    iget-object v4, p0, Lcom/android/internal/policy/impl/RoundedCorners;->mHeight:[I

    aget v4, v4, v8

    sub-int v4, p5, v4

    iget-object v5, p0, Lcom/android/internal/policy/impl/RoundedCorners;->mWidth:[I

    aget v5, v5, v8

    add-int/2addr v5, p2

    invoke-virtual {v3, p2, v4, v5, p5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 76
    iget-object v3, p0, Lcom/android/internal/policy/impl/RoundedCorners;->mCorners:[Landroid/graphics/drawable/Drawable;

    aget-object v3, v3, v9

    iget-object v4, p0, Lcom/android/internal/policy/impl/RoundedCorners;->mWidth:[I

    aget v4, v4, v9

    sub-int v4, p4, v4

    iget-object v5, p0, Lcom/android/internal/policy/impl/RoundedCorners;->mHeight:[I

    aget v5, v5, v9

    sub-int v5, p5, v5

    invoke-virtual {v3, v4, v5, p4, p5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 79
    :cond_3
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    const/4 v3, 0x4

    if-ge v1, v3, :cond_0

    .line 80
    iget-object v3, p0, Lcom/android/internal/policy/impl/RoundedCorners;->mCorners:[Landroid/graphics/drawable/Drawable;

    aget-object v3, v3, v1

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 79
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

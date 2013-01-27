.class public final Landroid/graphics/drawable/AnimationDrawable$AnimationState;
.super Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;
.source "AnimationDrawable.java"


# annotations
.annotation build Landroid/annotation/MiuiHook;
    value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_ACCESS:Landroid/annotation/MiuiHook$MiuiHookType;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/drawable/AnimationDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "AnimationState"
.end annotation


# instance fields
.field mDurations:[I
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_ACCESS:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation
.end field

.field private mOneShot:Z


# direct methods
.method constructor <init>(Landroid/graphics/drawable/AnimationDrawable$AnimationState;Landroid/graphics/drawable/AnimationDrawable;Landroid/content/res/Resources;)V
    .locals 1
    .parameter "orig"
    .parameter "owner"
    .parameter "res"

    .prologue
    .line 328
    invoke-direct {p0, p1, p2, p3}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;-><init>(Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;Landroid/graphics/drawable/DrawableContainer;Landroid/content/res/Resources;)V

    .line 330
    if-eqz p1, :cond_0

    .line 331
    iget-object v0, p1, Landroid/graphics/drawable/AnimationDrawable$AnimationState;->mDurations:[I

    iput-object v0, p0, Landroid/graphics/drawable/AnimationDrawable$AnimationState;->mDurations:[I

    .line 332
    iget-boolean v0, p1, Landroid/graphics/drawable/AnimationDrawable$AnimationState;->mOneShot:Z

    iput-boolean v0, p0, Landroid/graphics/drawable/AnimationDrawable$AnimationState;->mOneShot:Z

    .line 337
    :goto_0
    return-void

    .line 334
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/AnimationDrawable$AnimationState;->getChildren()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/graphics/drawable/AnimationDrawable$AnimationState;->mDurations:[I

    .line 335
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/drawable/AnimationDrawable$AnimationState;->mOneShot:Z

    goto :goto_0
.end method

.method static synthetic access$000(Landroid/graphics/drawable/AnimationDrawable$AnimationState;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 320
    iget-boolean v0, p0, Landroid/graphics/drawable/AnimationDrawable$AnimationState;->mOneShot:Z

    return v0
.end method

.method static synthetic access$002(Landroid/graphics/drawable/AnimationDrawable$AnimationState;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 320
    iput-boolean p1, p0, Landroid/graphics/drawable/AnimationDrawable$AnimationState;->mOneShot:Z

    return p1
.end method


# virtual methods
.method public addFrame(Landroid/graphics/drawable/Drawable;I)V
    .locals 2
    .parameter "dr"
    .parameter "dur"

    .prologue
    .line 352
    invoke-super {p0, p1}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->addChild(Landroid/graphics/drawable/Drawable;)I

    move-result v0

    .line 353
    .local v0, pos:I
    iget-object v1, p0, Landroid/graphics/drawable/AnimationDrawable$AnimationState;->mDurations:[I

    aput p2, v1, v0

    .line 354
    return-void
.end method

.method public growArray(II)V
    .locals 3
    .parameter "oldSize"
    .parameter "newSize"

    .prologue
    const/4 v2, 0x0

    .line 358
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->growArray(II)V

    .line 359
    new-array v0, p2, [I

    .line 360
    .local v0, newDurations:[I
    iget-object v1, p0, Landroid/graphics/drawable/AnimationDrawable$AnimationState;->mDurations:[I

    invoke-static {v1, v2, v0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 361
    iput-object v0, p0, Landroid/graphics/drawable/AnimationDrawable$AnimationState;->mDurations:[I

    .line 362
    return-void
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 341
    new-instance v0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {v0, p0, v1, v1}, Landroid/graphics/drawable/AnimationDrawable;-><init>(Landroid/graphics/drawable/AnimationDrawable$AnimationState;Landroid/content/res/Resources;Landroid/graphics/drawable/AnimationDrawable$1;)V

    return-object v0
.end method

.method public newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .parameter "res"

    .prologue
    .line 346
    new-instance v0, Landroid/graphics/drawable/AnimationDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Landroid/graphics/drawable/AnimationDrawable;-><init>(Landroid/graphics/drawable/AnimationDrawable$AnimationState;Landroid/content/res/Resources;Landroid/graphics/drawable/AnimationDrawable$1;)V

    return-object v0
.end method

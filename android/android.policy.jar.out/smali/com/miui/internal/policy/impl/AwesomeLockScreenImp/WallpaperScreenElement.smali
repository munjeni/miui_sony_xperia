.class public Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/WallpaperScreenElement;
.super Lmiui/app/screenelement/elements/ImageScreenElement;
.source "WallpaperScreenElement.java"


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "Wallpaper"


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/app/screenelement/ScreenContext;Lmiui/app/screenelement/ScreenElementRoot;)V
    .locals 2
    .parameter "node"
    .parameter "c"
    .parameter "root"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/app/screenelement/ScreenElementLoadException;
        }
    .end annotation

    .prologue
    .line 18
    invoke-direct {p0, p1, p2, p3}, Lmiui/app/screenelement/elements/ImageScreenElement;-><init>(Lorg/w3c/dom/Element;Lmiui/app/screenelement/ScreenContext;Lmiui/app/screenelement/ScreenElementRoot;)V

    .line 19
    iget-object v1, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/WallpaperScreenElement;->mContext:Lmiui/app/screenelement/ScreenContext;

    iget-object v1, v1, Lmiui/app/screenelement/ScreenContext;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lmiui/content/res/ThemeResources;->getLockWallpaperCache(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 21
    .local v0, drawable:Landroid/graphics/drawable/BitmapDrawable;
    if-eqz v0, :cond_0

    .line 22
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/WallpaperScreenElement;->mBitmap:Landroid/graphics/Bitmap;

    .line 24
    :cond_0
    return-void
.end method


# virtual methods
.method public getHeight()F
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/WallpaperScreenElement;->mAni:Lmiui/app/screenelement/animation/AnimatedElement;

    invoke-virtual {v0}, Lmiui/app/screenelement/animation/AnimatedElement;->getHeight()F

    move-result v0

    return v0
.end method

.method public getMaxHeight()F
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/WallpaperScreenElement;->mAni:Lmiui/app/screenelement/animation/AnimatedElement;

    invoke-virtual {v0}, Lmiui/app/screenelement/animation/AnimatedElement;->getMaxHeight()F

    move-result v0

    return v0
.end method

.method public getMaxWidth()F
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/WallpaperScreenElement;->mAni:Lmiui/app/screenelement/animation/AnimatedElement;

    invoke-virtual {v0}, Lmiui/app/screenelement/animation/AnimatedElement;->getMaxWidth()F

    move-result v0

    return v0
.end method

.method public getWidth()F
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/WallpaperScreenElement;->mAni:Lmiui/app/screenelement/animation/AnimatedElement;

    invoke-virtual {v0}, Lmiui/app/screenelement/animation/AnimatedElement;->getWidth()F

    move-result v0

    return v0
.end method

.method protected shouldScaleBitmap()Z
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x0

    return v0
.end method

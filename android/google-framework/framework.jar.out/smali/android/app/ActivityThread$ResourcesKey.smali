.class Landroid/app/ActivityThread$ResourcesKey;
.super Ljava/lang/Object;
.source "ActivityThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ResourcesKey"
.end annotation


# instance fields
.field private final mHash:I

.field private final mIsThemeable:Z

.field private final mResDir:Ljava/lang/String;

.field private final mScale:F


# direct methods
.method constructor <init>(Ljava/lang/String;FZ)V
    .locals 4
    .parameter "resDir"
    .parameter "scale"
    .parameter "isThemeable"

    .prologue
    .line 1371
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1372
    iput-object p1, p0, Landroid/app/ActivityThread$ResourcesKey;->mResDir:Ljava/lang/String;

    .line 1373
    iput p2, p0, Landroid/app/ActivityThread$ResourcesKey;->mScale:F

    .line 1374
    iput-boolean p3, p0, Landroid/app/ActivityThread$ResourcesKey;->mIsThemeable:Z

    .line 1375
    iget-object v0, p0, Landroid/app/ActivityThread$ResourcesKey;->mResDir:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    iget-boolean v0, p0, Landroid/app/ActivityThread$ResourcesKey;->mIsThemeable:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    shl-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x3

    iget v2, p0, Landroid/app/ActivityThread$ResourcesKey;->mScale:F

    const/high16 v3, 0x4000

    mul-float/2addr v2, v3

    float-to-int v2, v2

    add-int/2addr v0, v2

    shl-int v0, v1, v0

    iput v0, p0, Landroid/app/ActivityThread$ResourcesKey;->mHash:I

    .line 1376
    return-void

    .line 1375
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "obj"

    .prologue
    const/4 v1, 0x0

    .line 1385
    instance-of v2, p1, Landroid/app/ActivityThread$ResourcesKey;

    if-nez v2, :cond_1

    .line 1389
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 1388
    check-cast v0, Landroid/app/ActivityThread$ResourcesKey;

    .line 1389
    .local v0, peer:Landroid/app/ActivityThread$ResourcesKey;
    iget-object v2, p0, Landroid/app/ActivityThread$ResourcesKey;->mResDir:Ljava/lang/String;

    iget-object v3, v0, Landroid/app/ActivityThread$ResourcesKey;->mResDir:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Landroid/app/ActivityThread$ResourcesKey;->mScale:F

    iget v3, v0, Landroid/app/ActivityThread$ResourcesKey;->mScale:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    iget-boolean v2, p0, Landroid/app/ActivityThread$ResourcesKey;->mIsThemeable:Z

    iget-boolean v3, v0, Landroid/app/ActivityThread$ResourcesKey;->mIsThemeable:Z

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 1380
    iget v0, p0, Landroid/app/ActivityThread$ResourcesKey;->mHash:I

    return v0
.end method

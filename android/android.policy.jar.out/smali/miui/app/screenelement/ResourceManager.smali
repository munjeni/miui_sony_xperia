.class public Lmiui/app/screenelement/ResourceManager;
.super Ljava/lang/Object;
.source "ResourceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/app/screenelement/ResourceManager$BitmapInfo;
    }
.end annotation


# static fields
.field private static final DEFAULT_DENSITY:I = 0xf0

.field private static final DEFAULT_SCREEN_WIDTH:I = 0x1e0

.field private static final LOG_TAG:Ljava/lang/String; = "ResourceManager"


# instance fields
.field protected final mBitmaps:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lmiui/app/screenelement/ResourceManager$BitmapInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mExtraResourceDensity:I

.field private mExtraResourceFolder:Ljava/lang/String;

.field private mExtraResourceScreenWidth:I

.field private final mFailedBitmaps:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMaskBitmap:Landroid/graphics/Bitmap;

.field private mMaskBitmaps:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final mNinePatches:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/NinePatch;",
            ">;"
        }
    .end annotation
.end field

.field private mResourceDensity:I

.field private final mResourceLoader:Lmiui/app/screenelement/ResourceLoader;

.field private mTargetDensity:I


# direct methods
.method public constructor <init>(Lmiui/app/screenelement/ResourceLoader;)V
    .locals 1
    .parameter "resourceLoader"

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmiui/app/screenelement/ResourceManager;->mBitmaps:Ljava/util/HashMap;

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmiui/app/screenelement/ResourceManager;->mNinePatches:Ljava/util/HashMap;

    .line 45
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lmiui/app/screenelement/ResourceManager;->mFailedBitmaps:Ljava/util/HashSet;

    .line 58
    iput-object p1, p0, Lmiui/app/screenelement/ResourceManager;->mResourceLoader:Lmiui/app/screenelement/ResourceLoader;

    .line 59
    return-void
.end method

.method private getBitmapInfo(Ljava/lang/String;)Lmiui/app/screenelement/ResourceManager$BitmapInfo;
    .locals 6
    .parameter "src"

    .prologue
    const/4 v3, 0x0

    .line 157
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v0, v3

    .line 203
    :goto_0
    return-object v0

    .line 161
    :cond_0
    iget-object v4, p0, Lmiui/app/screenelement/ResourceManager;->mBitmaps:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/app/screenelement/ResourceManager$BitmapInfo;

    .line 162
    .local v0, info:Lmiui/app/screenelement/ResourceManager$BitmapInfo;
    if-eqz v0, :cond_1

    .line 163
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v0, Lmiui/app/screenelement/ResourceManager$BitmapInfo;->mLastVisitTime:J

    goto :goto_0

    .line 167
    :cond_1
    iget-object v4, p0, Lmiui/app/screenelement/ResourceManager;->mFailedBitmaps:Ljava/util/HashSet;

    invoke-virtual {v4, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move-object v0, v3

    .line 168
    goto :goto_0

    .line 171
    :cond_2
    const-string v3, "ResourceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "load image "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    const/4 v2, 0x1

    .line 174
    .local v2, useDefaultResource:Z
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 175
    .local v1, opts:Landroid/graphics/BitmapFactory$Options;
    const/4 v3, 0x1

    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 176
    iget v3, p0, Lmiui/app/screenelement/ResourceManager;->mTargetDensity:I

    iput v3, v1, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    .line 177
    iget v3, p0, Lmiui/app/screenelement/ResourceManager;->mExtraResourceScreenWidth:I

    if-eqz v3, :cond_3

    .line 178
    iget v3, p0, Lmiui/app/screenelement/ResourceManager;->mExtraResourceDensity:I

    iput v3, v1, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    .line 179
    iget-object v3, p0, Lmiui/app/screenelement/ResourceManager;->mResourceLoader:Lmiui/app/screenelement/ResourceLoader;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lmiui/app/screenelement/ResourceManager;->mExtraResourceFolder:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Lmiui/app/screenelement/ResourceLoader;->getBitmapInfo(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Lmiui/app/screenelement/ResourceManager$BitmapInfo;

    move-result-object v0

    .line 180
    if-eqz v0, :cond_3

    .line 181
    const/4 v2, 0x0

    .line 185
    :cond_3
    if-nez v0, :cond_4

    .line 186
    iget v3, p0, Lmiui/app/screenelement/ResourceManager;->mResourceDensity:I

    iput v3, v1, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    .line 187
    iget-object v3, p0, Lmiui/app/screenelement/ResourceManager;->mResourceLoader:Lmiui/app/screenelement/ResourceLoader;

    invoke-virtual {v3, p1, v1}, Lmiui/app/screenelement/ResourceLoader;->getBitmapInfo(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Lmiui/app/screenelement/ResourceManager$BitmapInfo;

    move-result-object v0

    .line 190
    :cond_4
    if-eqz v0, :cond_6

    .line 191
    if-nez v2, :cond_5

    .line 192
    const-string v3, "ResourceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "load image from extra resource: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lmiui/app/screenelement/ResourceManager;->mExtraResourceFolder:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    :cond_5
    iget-object v3, v0, Lmiui/app/screenelement/ResourceManager$BitmapInfo;->mBitmap:Landroid/graphics/Bitmap;

    iget v4, p0, Lmiui/app/screenelement/ResourceManager;->mTargetDensity:I

    invoke-virtual {v3, v4}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 196
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v0, Lmiui/app/screenelement/ResourceManager$BitmapInfo;->mLastVisitTime:J

    .line 197
    iget-object v3, p0, Lmiui/app/screenelement/ResourceManager;->mBitmaps:Ljava/util/HashMap;

    invoke-virtual {v3, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 199
    :cond_6
    iget-object v3, p0, Lmiui/app/screenelement/ResourceManager;->mFailedBitmaps:Ljava/util/HashSet;

    invoke-virtual {v3, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 200
    const-string v3, "ResourceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fail to load image: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 3

    .prologue
    .line 136
    iget-object v2, p0, Lmiui/app/screenelement/ResourceManager;->mBitmaps:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/app/screenelement/ResourceManager$BitmapInfo;

    .line 137
    .local v0, bi:Lmiui/app/screenelement/ResourceManager$BitmapInfo;
    iget-object v2, v0, Lmiui/app/screenelement/ResourceManager$BitmapInfo;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    .line 138
    iget-object v2, v0, Lmiui/app/screenelement/ResourceManager$BitmapInfo;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    .line 141
    .end local v0           #bi:Lmiui/app/screenelement/ResourceManager$BitmapInfo;
    :cond_1
    iget-object v2, p0, Lmiui/app/screenelement/ResourceManager;->mMaskBitmaps:Ljava/util/HashMap;

    if-eqz v2, :cond_3

    .line 142
    iget-object v2, p0, Lmiui/app/screenelement/ResourceManager;->mMaskBitmaps:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 143
    .local v0, bi:Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_2

    .line 144
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_1

    .line 147
    .end local v0           #bi:Landroid/graphics/Bitmap;
    :cond_3
    iget-object v2, p0, Lmiui/app/screenelement/ResourceManager;->mMaskBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lmiui/app/screenelement/ResourceManager;->mMaskBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_4

    .line 148
    iget-object v2, p0, Lmiui/app/screenelement/ResourceManager;->mMaskBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 149
    const/4 v2, 0x0

    iput-object v2, p0, Lmiui/app/screenelement/ResourceManager;->mMaskBitmap:Landroid/graphics/Bitmap;

    .line 152
    :cond_4
    iget-object v2, p0, Lmiui/app/screenelement/ResourceManager;->mBitmaps:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 153
    iget-object v2, p0, Lmiui/app/screenelement/ResourceManager;->mNinePatches:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 154
    return-void
.end method

.method public getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "src"

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lmiui/app/screenelement/ResourceManager;->getBitmapInfo(Ljava/lang/String;)Lmiui/app/screenelement/ResourceManager$BitmapInfo;

    move-result-object v0

    .line 96
    .local v0, info:Lmiui/app/screenelement/ResourceManager$BitmapInfo;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lmiui/app/screenelement/ResourceManager$BitmapInfo;->mBitmap:Landroid/graphics/Bitmap;

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 6
    .parameter "src"

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lmiui/app/screenelement/ResourceManager;->getBitmapInfo(Ljava/lang/String;)Lmiui/app/screenelement/ResourceManager$BitmapInfo;

    move-result-object v2

    .line 101
    .local v2, info:Lmiui/app/screenelement/ResourceManager$BitmapInfo;
    if-eqz v2, :cond_0

    iget-object v4, v2, Lmiui/app/screenelement/ResourceManager$BitmapInfo;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v4, :cond_1

    .line 102
    :cond_0
    const/4 v3, 0x0

    .line 116
    :goto_0
    return-object v3

    .line 104
    :cond_1
    iget-object v0, v2, Lmiui/app/screenelement/ResourceManager$BitmapInfo;->mBitmap:Landroid/graphics/Bitmap;

    .line 105
    .local v0, bm:Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v4

    if-eqz v4, :cond_2

    .line 109
    new-instance v3, Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v4

    iget-object v5, v2, Lmiui/app/screenelement/ResourceManager$BitmapInfo;->mPadding:Landroid/graphics/Rect;

    invoke-direct {v3, v0, v4, v5, p1}, Landroid/graphics/drawable/NinePatchDrawable;-><init>(Landroid/graphics/Bitmap;[BLandroid/graphics/Rect;Ljava/lang/String;)V

    .line 110
    .local v3, ninePatchDrawable:Landroid/graphics/drawable/NinePatchDrawable;
    iget v4, p0, Lmiui/app/screenelement/ResourceManager;->mTargetDensity:I

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/NinePatchDrawable;->setTargetDensity(I)V

    goto :goto_0

    .line 114
    .end local v3           #ninePatchDrawable:Landroid/graphics/drawable/NinePatchDrawable;
    :cond_2
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 115
    .local v1, d:Landroid/graphics/drawable/BitmapDrawable;
    iget v4, p0, Lmiui/app/screenelement/ResourceManager;->mTargetDensity:I

    invoke-virtual {v1, v4}, Landroid/graphics/drawable/BitmapDrawable;->setTargetDensity(I)V

    move-object v3, v1

    .line 116
    goto :goto_0
.end method

.method public getFile(Ljava/lang/String;)Landroid/os/MemoryFile;
    .locals 1
    .parameter "src"

    .prologue
    .line 91
    iget-object v0, p0, Lmiui/app/screenelement/ResourceManager;->mResourceLoader:Lmiui/app/screenelement/ResourceLoader;

    invoke-virtual {v0, p1}, Lmiui/app/screenelement/ResourceLoader;->getFile(Ljava/lang/String;)Landroid/os/MemoryFile;

    move-result-object v0

    return-object v0
.end method

.method public getManifestRoot()Lorg/w3c/dom/Element;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lmiui/app/screenelement/ResourceManager;->mResourceLoader:Lmiui/app/screenelement/ResourceLoader;

    invoke-virtual {v0}, Lmiui/app/screenelement/ResourceLoader;->getManifestRoot()Lorg/w3c/dom/Element;

    move-result-object v0

    return-object v0
.end method

.method public getMaskBufferBitmap(IILjava/lang/String;Z)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "width"
    .parameter "height"
    .parameter "key"
    .parameter "hardwareAccelerated"

    .prologue
    .line 62
    if-eqz p4, :cond_0

    iget-object v3, p0, Lmiui/app/screenelement/ResourceManager;->mMaskBitmaps:Ljava/util/HashMap;

    if-nez v3, :cond_0

    .line 63
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lmiui/app/screenelement/ResourceManager;->mMaskBitmaps:Ljava/util/HashMap;

    .line 66
    :cond_0
    if-eqz p4, :cond_4

    iget-object v3, p0, Lmiui/app/screenelement/ResourceManager;->mMaskBitmaps:Ljava/util/HashMap;

    invoke-virtual {v3, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    move-object v1, v3

    .line 67
    .local v1, bm:Landroid/graphics/Bitmap;
    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    if-lt v3, p2, :cond_1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    if-ge v3, p1, :cond_3

    .line 68
    :cond_1
    if-eqz v1, :cond_2

    .line 69
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 70
    .local v2, bw:I
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 71
    .local v0, bh:I
    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 72
    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 74
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_2

    .line 75
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 78
    .end local v0           #bh:I
    .end local v2           #bw:I
    :cond_2
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 79
    iget v3, p0, Lmiui/app/screenelement/ResourceManager;->mResourceDensity:I

    invoke-virtual {v1, v3}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 80
    if-eqz p4, :cond_5

    .line 81
    iget-object v3, p0, Lmiui/app/screenelement/ResourceManager;->mMaskBitmaps:Ljava/util/HashMap;

    invoke-virtual {v3, p3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    :cond_3
    :goto_1
    return-object v1

    .line 66
    .end local v1           #bm:Landroid/graphics/Bitmap;
    :cond_4
    iget-object v1, p0, Lmiui/app/screenelement/ResourceManager;->mMaskBitmap:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 83
    .restart local v1       #bm:Landroid/graphics/Bitmap;
    :cond_5
    iput-object v1, p0, Lmiui/app/screenelement/ResourceManager;->mMaskBitmap:Landroid/graphics/Bitmap;

    goto :goto_1
.end method

.method public getNinePatch(Ljava/lang/String;)Landroid/graphics/NinePatch;
    .locals 4
    .parameter "src"

    .prologue
    .line 120
    iget-object v2, p0, Lmiui/app/screenelement/ResourceManager;->mNinePatches:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/NinePatch;

    .line 121
    .local v1, ret:Landroid/graphics/NinePatch;
    if-nez v1, :cond_0

    .line 122
    invoke-virtual {p0, p1}, Lmiui/app/screenelement/ResourceManager;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 123
    .local v0, bmp:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v2

    if-eqz v2, :cond_0

    .line 124
    new-instance v1, Landroid/graphics/NinePatch;

    .end local v1           #ret:Landroid/graphics/NinePatch;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v0, v2, v3}, Landroid/graphics/NinePatch;-><init>(Landroid/graphics/Bitmap;[BLjava/lang/String;)V

    .line 125
    .restart local v1       #ret:Landroid/graphics/NinePatch;
    iget-object v2, p0, Lmiui/app/screenelement/ResourceManager;->mNinePatches:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    .end local v0           #bmp:Landroid/graphics/Bitmap;
    :cond_0
    return-object v1
.end method

.method public setExtraResource(I)V
    .locals 2
    .parameter "sw"

    .prologue
    .line 215
    iput p1, p0, Lmiui/app/screenelement/ResourceManager;->mExtraResourceScreenWidth:I

    .line 216
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sw"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/app/screenelement/ResourceManager;->mExtraResourceFolder:Ljava/lang/String;

    .line 217
    mul-int/lit16 v0, p1, 0xf0

    div-int/lit16 v0, v0, 0x1e0

    iput v0, p0, Lmiui/app/screenelement/ResourceManager;->mExtraResourceDensity:I

    .line 218
    return-void
.end method

.method public setResourceDensity(I)V
    .locals 0
    .parameter "density"

    .prologue
    .line 207
    iput p1, p0, Lmiui/app/screenelement/ResourceManager;->mResourceDensity:I

    .line 208
    return-void
.end method

.method public setTargetDensity(I)V
    .locals 0
    .parameter "density"

    .prologue
    .line 211
    iput p1, p0, Lmiui/app/screenelement/ResourceManager;->mTargetDensity:I

    .line 212
    return-void
.end method

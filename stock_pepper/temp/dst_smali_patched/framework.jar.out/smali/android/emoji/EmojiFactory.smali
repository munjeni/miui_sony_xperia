.class public final Landroid/emoji/EmojiFactory;
.super Ljava/lang/Object;
.source "EmojiFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/emoji/EmojiFactory$CustomLinkedHashMap;
    }
.end annotation


# instance fields
.field private mAnimatedEmojiCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;>;"
        }
    .end annotation
.end field

.field private mCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;>;"
        }
    .end annotation
.end field

.field private mGlyphBase:I

.field private mIsAnimatedCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mName:Ljava/lang/String;

.field private mNativeEmojiFactory:I

.field private mTotalFrameCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private sCacheSize:I


# direct methods
.method private constructor <init>(ILjava/lang/String;)V
    .locals 1
    .parameter "nativeEmojiFactory"
    .parameter "name"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x64

    iput v0, p0, Landroid/emoji/EmojiFactory;->sCacheSize:I

    const v0, 0xfa00

    iput v0, p0, Landroid/emoji/EmojiFactory;->mGlyphBase:I

    iput p1, p0, Landroid/emoji/EmojiFactory;->mNativeEmojiFactory:I

    iput-object p2, p0, Landroid/emoji/EmojiFactory;->mName:Ljava/lang/String;

    new-instance v0, Landroid/emoji/EmojiFactory$CustomLinkedHashMap;

    invoke-direct {v0, p0}, Landroid/emoji/EmojiFactory$CustomLinkedHashMap;-><init>(Landroid/emoji/EmojiFactory;)V

    iput-object v0, p0, Landroid/emoji/EmojiFactory;->mCache:Ljava/util/Map;

    new-instance v0, Landroid/emoji/EmojiFactory$CustomLinkedHashMap;

    invoke-direct {v0, p0}, Landroid/emoji/EmojiFactory$CustomLinkedHashMap;-><init>(Landroid/emoji/EmojiFactory;)V

    iput-object v0, p0, Landroid/emoji/EmojiFactory;->mAnimatedEmojiCache:Ljava/util/Map;

    new-instance v0, Landroid/emoji/EmojiFactory$CustomLinkedHashMap;

    invoke-direct {v0, p0}, Landroid/emoji/EmojiFactory$CustomLinkedHashMap;-><init>(Landroid/emoji/EmojiFactory;)V

    iput-object v0, p0, Landroid/emoji/EmojiFactory;->mTotalFrameCache:Ljava/util/Map;

    new-instance v0, Landroid/emoji/EmojiFactory$CustomLinkedHashMap;

    invoke-direct {v0, p0}, Landroid/emoji/EmojiFactory$CustomLinkedHashMap;-><init>(Landroid/emoji/EmojiFactory;)V

    iput-object v0, p0, Landroid/emoji/EmojiFactory;->mIsAnimatedCache:Ljava/util/Map;

    return-void
.end method

.method static synthetic access$000(Landroid/emoji/EmojiFactory;)I
    .locals 1
    .parameter "x0"

    .prologue
    iget v0, p0, Landroid/emoji/EmojiFactory;->sCacheSize:I

    return v0
.end method

.method private native nativeDestructor(I)V
.end method

.method private native nativeGetAndroidPuaFromVendorSpecificPua(II)I
.end method

.method private native nativeGetAndroidPuaFromVendorSpecificSjis(IC)I
.end method

.method private native nativeGetAnimationDelayTime(I)I
.end method

.method private native nativeGetAnimationImageNumber(ILandroid/graphics/Canvas;)I
.end method

.method private native nativeGetBitmapFromAndroidPua(II)Landroid/graphics/Bitmap;
.end method

.method private native nativeGetBitmapFromAndroidPuaAndFramenumber(III)Landroid/graphics/Bitmap;
.end method

.method private native nativeGetMaximumAndroidPua(I)I
.end method

.method private native nativeGetMaximumVendorSpecificPua(I)I
.end method

.method private native nativeGetMinimumAndroidPua(I)I
.end method

.method private native nativeGetMinimumVendorSpecificPua(I)I
.end method

.method private native nativeGetTotalFrameOfPua(II)I
.end method

.method private native nativeGetVendorSpecificPuaFromAndroidPua(II)I
.end method

.method private native nativeGetVendorSpecificSjisFromAndroidPua(II)I
.end method

.method private native nativeIsAnimatedEmoji(II)Z
.end method

.method private native nativeIsSupportedAnimatedEmoji(I)Z
.end method

.method private native nativeSetAnimationImageNumber(IILandroid/graphics/Canvas;)V
.end method

.method public static native newAvailableInstance()Landroid/emoji/EmojiFactory;
.end method

.method public static native newInstance(Ljava/lang/String;)Landroid/emoji/EmojiFactory;
.end method


# virtual methods
.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    :try_start_0
    iget v0, p0, Landroid/emoji/EmojiFactory;->mNativeEmojiFactory:I

    invoke-direct {p0, v0}, Landroid/emoji/EmojiFactory;->nativeDestructor(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getAndroidPuaFromVendorSpecificPua(I)I
    .locals 1
    .parameter "vsp"

    .prologue
    iget v0, p0, Landroid/emoji/EmojiFactory;->mNativeEmojiFactory:I

    invoke-direct {p0, v0, p1}, Landroid/emoji/EmojiFactory;->nativeGetAndroidPuaFromVendorSpecificPua(II)I

    move-result v0

    return v0
.end method

.method public getAndroidPuaFromVendorSpecificPua(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter "vspString"

    .prologue
    const/4 v9, 0x0

    if-nez p1, :cond_0

    const/4 v8, 0x0

    :goto_0
    return-object v8

    :cond_0
    iget v8, p0, Landroid/emoji/EmojiFactory;->mNativeEmojiFactory:I

    invoke-direct {p0, v8}, Landroid/emoji/EmojiFactory;->nativeGetMinimumVendorSpecificPua(I)I

    move-result v5

    .local v5, minVsp:I
    iget v8, p0, Landroid/emoji/EmojiFactory;->mNativeEmojiFactory:I

    invoke-direct {p0, v8}, Landroid/emoji/EmojiFactory;->nativeGetMaximumVendorSpecificPua(I)I

    move-result v4

    .local v4, maxVsp:I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .local v3, len:I
    invoke-virtual {p1, v9, v3}, Ljava/lang/String;->codePointCount(II)I

    move-result v8

    new-array v1, v8, [I

    .local v1, codePoints:[I
    const/4 v7, 0x0

    .local v7, new_len:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v3, :cond_2

    invoke-virtual {p1, v2}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    .local v0, codePoint:I
    if-gt v5, v0, :cond_1

    if-gt v0, v4, :cond_1

    invoke-virtual {p0, v0}, Landroid/emoji/EmojiFactory;->getAndroidPuaFromVendorSpecificPua(I)I

    move-result v6

    .local v6, newCodePoint:I
    if-lez v6, :cond_1

    aput v6, v1, v7

    .end local v6           #newCodePoint:I
    :goto_2
    const/4 v8, 0x1

    invoke-virtual {p1, v2, v8}, Ljava/lang/String;->offsetByCodePoints(II)I

    move-result v2

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_1
    aput v0, v1, v7

    goto :goto_2

    .end local v0           #codePoint:I
    :cond_2
    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v1, v9, v7}, Ljava/lang/String;-><init>([III)V

    goto :goto_0
.end method

.method public getAndroidPuaFromVendorSpecificSjis(C)I
    .locals 1
    .parameter "sjis"

    .prologue
    iget v0, p0, Landroid/emoji/EmojiFactory;->mNativeEmojiFactory:I

    invoke-direct {p0, v0, p1}, Landroid/emoji/EmojiFactory;->nativeGetAndroidPuaFromVendorSpecificSjis(IC)I

    move-result v0

    return v0
.end method

.method public getAnimationDelayTime()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/emoji/EmojiFactory;->mNativeEmojiFactory:I

    invoke-direct {p0, v0}, Landroid/emoji/EmojiFactory;->nativeGetAnimationDelayTime(I)I

    move-result v0

    return v0
.end method

.method public getAnimationImageNumber(Landroid/graphics/Canvas;)I
    .locals 1
    .parameter "canvas"

    .prologue
    iget v0, p0, Landroid/emoji/EmojiFactory;->mNativeEmojiFactory:I

    invoke-direct {p0, v0, p1}, Landroid/emoji/EmojiFactory;->nativeGetAnimationImageNumber(ILandroid/graphics/Canvas;)I

    move-result v0

    return v0
.end method

.method public declared-synchronized getBitmapFromAndroidPua(I)Landroid/graphics/Bitmap;
    .locals 6
    .parameter "pua"

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Landroid/emoji/EmojiFactory;->mCache:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .local v0, cache:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/graphics/Bitmap;>;"
    if-nez v0, :cond_1

    iget v3, p0, Landroid/emoji/EmojiFactory;->mNativeEmojiFactory:I

    invoke-direct {p0, v3, p1}, Landroid/emoji/EmojiFactory;->nativeGetBitmapFromAndroidPua(II)Landroid/graphics/Bitmap;

    move-result-object v1

    .local v1, ret:Landroid/graphics/Bitmap;
    if-eqz v1, :cond_0

    iget-object v3, p0, Landroid/emoji/EmojiFactory;->mCache:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-instance v5, Ljava/lang/ref/WeakReference;

    invoke-direct {v5, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v1           #ret:Landroid/graphics/Bitmap;
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v1

    :cond_1
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    .local v2, tmp:Landroid/graphics/Bitmap;
    if-nez v2, :cond_2

    iget v3, p0, Landroid/emoji/EmojiFactory;->mNativeEmojiFactory:I

    invoke-direct {p0, v3, p1}, Landroid/emoji/EmojiFactory;->nativeGetBitmapFromAndroidPua(II)Landroid/graphics/Bitmap;

    move-result-object v1

    .restart local v1       #ret:Landroid/graphics/Bitmap;
    iget-object v3, p0, Landroid/emoji/EmojiFactory;->mCache:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-instance v5, Ljava/lang/ref/WeakReference;

    invoke-direct {v5, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .end local v0           #cache:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/graphics/Bitmap;>;"
    .end local v1           #ret:Landroid/graphics/Bitmap;
    .end local v2           #tmp:Landroid/graphics/Bitmap;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .restart local v0       #cache:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/graphics/Bitmap;>;"
    .restart local v2       #tmp:Landroid/graphics/Bitmap;
    :cond_2
    move-object v1, v2

    goto :goto_0
.end method

.method public declared-synchronized getBitmapFromGlyphID(ILandroid/graphics/Canvas;)Landroid/graphics/Bitmap;
    .locals 10
    .parameter "glyphID"
    .parameter "canvas"

    .prologue
    const/4 v5, 0x0

    monitor-enter p0

    :try_start_0
    iget v8, p0, Landroid/emoji/EmojiFactory;->mGlyphBase:I

    sub-int v2, p1, v8

    .local v2, offsetGlyh:I
    if-ltz v2, :cond_0

    sget v8, Landroid/emoji/EmojiPuaTable;->GMOJI_PUA_COUNT:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ge v2, v8, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-object v5

    :cond_1
    :try_start_1
    sget-object v8, Landroid/emoji/EmojiPuaTable;->EmojiPUA:[I

    aget v8, v8, v2

    const v9, 0xfe000

    add-int v3, v8, v9

    .local v3, pua:I
    invoke-virtual {p0, v3}, Landroid/emoji/EmojiFactory;->isAnimatedEmoji(I)Z

    move-result v8

    if-nez v8, :cond_2

    invoke-virtual {p0, v3}, Landroid/emoji/EmojiFactory;->getBitmapFromAndroidPua(I)Landroid/graphics/Bitmap;

    move-result-object v5

    goto :goto_0

    :cond_2
    iget-object v8, p0, Landroid/emoji/EmojiFactory;->mTotalFrameCache:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    .local v7, totalFrame:Ljava/lang/Integer;
    if-nez v7, :cond_3

    iget v8, p0, Landroid/emoji/EmojiFactory;->mNativeEmojiFactory:I

    invoke-direct {p0, v8, v3}, Landroid/emoji/EmojiFactory;->nativeGetTotalFrameOfPua(II)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_0

    iget-object v8, p0, Landroid/emoji/EmojiFactory;->mTotalFrameCache:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    invoke-virtual {p0, p2}, Landroid/emoji/EmojiFactory;->getAnimationImageNumber(Landroid/graphics/Canvas;)I

    move-result v8

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v9

    rem-int v1, v8, v9

    .local v1, frameNumber:I
    if-gez v1, :cond_4

    invoke-virtual {p0, v3}, Landroid/emoji/EmojiFactory;->getBitmapFromAndroidPua(I)Landroid/graphics/Bitmap;

    move-result-object v5

    goto :goto_0

    :cond_4
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .local v4, puaKey:Ljava/lang/String;
    iget-object v8, p0, Landroid/emoji/EmojiFactory;->mAnimatedEmojiCache:Ljava/util/Map;

    invoke-interface {v8, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .local v0, cache:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/graphics/Bitmap;>;"
    if-nez v0, :cond_5

    iget v8, p0, Landroid/emoji/EmojiFactory;->mNativeEmojiFactory:I

    invoke-direct {p0, v8, v3, v1}, Landroid/emoji/EmojiFactory;->nativeGetBitmapFromAndroidPuaAndFramenumber(III)Landroid/graphics/Bitmap;

    move-result-object v5

    .local v5, ret:Landroid/graphics/Bitmap;
    if-eqz v5, :cond_0

    iget-object v8, p0, Landroid/emoji/EmojiFactory;->mAnimatedEmojiCache:Ljava/util/Map;

    new-instance v9, Ljava/lang/ref/WeakReference;

    invoke-direct {v9, v5}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v8, v4, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .end local v0           #cache:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/graphics/Bitmap;>;"
    .end local v1           #frameNumber:I
    .end local v2           #offsetGlyh:I
    .end local v3           #pua:I
    .end local v4           #puaKey:Ljava/lang/String;
    .end local v5           #ret:Landroid/graphics/Bitmap;
    .end local v7           #totalFrame:Ljava/lang/Integer;
    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8

    .restart local v0       #cache:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/graphics/Bitmap;>;"
    .restart local v1       #frameNumber:I
    .restart local v2       #offsetGlyh:I
    .restart local v3       #pua:I
    .restart local v4       #puaKey:Ljava/lang/String;
    .restart local v7       #totalFrame:Ljava/lang/Integer;
    :cond_5
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Bitmap;

    .local v6, tmp:Landroid/graphics/Bitmap;
    if-nez v6, :cond_6

    iget v8, p0, Landroid/emoji/EmojiFactory;->mNativeEmojiFactory:I

    invoke-direct {p0, v8, v3, v1}, Landroid/emoji/EmojiFactory;->nativeGetBitmapFromAndroidPuaAndFramenumber(III)Landroid/graphics/Bitmap;

    move-result-object v5

    .restart local v5       #ret:Landroid/graphics/Bitmap;
    iget-object v8, p0, Landroid/emoji/EmojiFactory;->mAnimatedEmojiCache:Ljava/util/Map;

    new-instance v9, Ljava/lang/ref/WeakReference;

    invoke-direct {v9, v5}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v8, v4, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    .end local v5           #ret:Landroid/graphics/Bitmap;
    :cond_6
    move-object v5, v6

    goto/16 :goto_0
.end method

.method public declared-synchronized getBitmapFromVendorSpecificPua(I)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "vsp"

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Landroid/emoji/EmojiFactory;->getAndroidPuaFromVendorSpecificPua(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/emoji/EmojiFactory;->getBitmapFromAndroidPua(I)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getBitmapFromVendorSpecificSjis(C)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "sjis"

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Landroid/emoji/EmojiFactory;->getAndroidPuaFromVendorSpecificSjis(C)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/emoji/EmojiFactory;->getBitmapFromAndroidPua(I)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getMaximumAndroidPua()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/emoji/EmojiFactory;->mNativeEmojiFactory:I

    invoke-direct {p0, v0}, Landroid/emoji/EmojiFactory;->nativeGetMaximumAndroidPua(I)I

    move-result v0

    return v0
.end method

.method public getMinimumAndroidPua()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/emoji/EmojiFactory;->mNativeEmojiFactory:I

    invoke-direct {p0, v0}, Landroid/emoji/EmojiFactory;->nativeGetMinimumAndroidPua(I)I

    move-result v0

    return v0
.end method

.method public getVendorSpecificPuaFromAndroidPua(I)I
    .locals 1
    .parameter "pua"

    .prologue
    iget v0, p0, Landroid/emoji/EmojiFactory;->mNativeEmojiFactory:I

    invoke-direct {p0, v0, p1}, Landroid/emoji/EmojiFactory;->nativeGetVendorSpecificPuaFromAndroidPua(II)I

    move-result v0

    return v0
.end method

.method public getVendorSpecificPuaFromAndroidPua(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter "puaString"

    .prologue
    const/4 v9, 0x0

    if-nez p1, :cond_0

    const/4 v8, 0x0

    :goto_0
    return-object v8

    :cond_0
    iget v8, p0, Landroid/emoji/EmojiFactory;->mNativeEmojiFactory:I

    invoke-direct {p0, v8}, Landroid/emoji/EmojiFactory;->nativeGetMinimumAndroidPua(I)I

    move-result v5

    .local v5, minVsp:I
    iget v8, p0, Landroid/emoji/EmojiFactory;->mNativeEmojiFactory:I

    invoke-direct {p0, v8}, Landroid/emoji/EmojiFactory;->nativeGetMaximumAndroidPua(I)I

    move-result v4

    .local v4, maxVsp:I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .local v3, len:I
    invoke-virtual {p1, v9, v3}, Ljava/lang/String;->codePointCount(II)I

    move-result v8

    new-array v1, v8, [I

    .local v1, codePoints:[I
    const/4 v7, 0x0

    .local v7, new_len:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v3, :cond_2

    invoke-virtual {p1, v2}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    .local v0, codePoint:I
    if-gt v5, v0, :cond_1

    if-gt v0, v4, :cond_1

    invoke-virtual {p0, v0}, Landroid/emoji/EmojiFactory;->getVendorSpecificPuaFromAndroidPua(I)I

    move-result v6

    .local v6, newCodePoint:I
    if-lez v6, :cond_1

    aput v6, v1, v7

    .end local v6           #newCodePoint:I
    :goto_2
    const/4 v8, 0x1

    invoke-virtual {p1, v2, v8}, Ljava/lang/String;->offsetByCodePoints(II)I

    move-result v2

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_1
    aput v0, v1, v7

    goto :goto_2

    .end local v0           #codePoint:I
    :cond_2
    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v1, v9, v7}, Ljava/lang/String;-><init>([III)V

    goto :goto_0
.end method

.method public getVendorSpecificSjisFromAndroidPua(I)I
    .locals 1
    .parameter "pua"

    .prologue
    iget v0, p0, Landroid/emoji/EmojiFactory;->mNativeEmojiFactory:I

    invoke-direct {p0, v0, p1}, Landroid/emoji/EmojiFactory;->nativeGetVendorSpecificSjisFromAndroidPua(II)I

    move-result v0

    return v0
.end method

.method public isAnimatedEmoji(I)Z
    .locals 5
    .parameter "pua"

    .prologue
    iget-object v2, p0, Landroid/emoji/EmojiFactory;->mIsAnimatedCache:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .local v0, cache:Ljava/lang/Boolean;
    if-nez v0, :cond_0

    iget v2, p0, Landroid/emoji/EmojiFactory;->mNativeEmojiFactory:I

    invoke-direct {p0, v2, p1}, Landroid/emoji/EmojiFactory;->nativeIsAnimatedEmoji(II)Z

    move-result v1

    .local v1, result:Z
    iget-object v2, p0, Landroid/emoji/EmojiFactory;->mIsAnimatedCache:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return v1

    .end local v1           #result:Z
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .restart local v1       #result:Z
    goto :goto_0
.end method

.method public isSupportedAnimatedEmoji()Z
    .locals 1

    .prologue
    iget v0, p0, Landroid/emoji/EmojiFactory;->mNativeEmojiFactory:I

    invoke-direct {p0, v0}, Landroid/emoji/EmojiFactory;->nativeIsSupportedAnimatedEmoji(I)Z

    move-result v0

    return v0
.end method

.method public name()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/emoji/EmojiFactory;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public setAnimationImageNumber(ILandroid/graphics/Canvas;)V
    .locals 1
    .parameter "imageNumber"
    .parameter "canvas"

    .prologue
    iget v0, p0, Landroid/emoji/EmojiFactory;->mNativeEmojiFactory:I

    invoke-direct {p0, v0, p1, p2}, Landroid/emoji/EmojiFactory;->nativeSetAnimationImageNumber(IILandroid/graphics/Canvas;)V

    return-void
.end method

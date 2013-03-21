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
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/16 v0, 0x64

    iput v0, p0, Landroid/emoji/EmojiFactory;->sCacheSize:I

    .line 40
    const v0, 0xfa00

    iput v0, p0, Landroid/emoji/EmojiFactory;->mGlyphBase:I

    .line 81
    iput p1, p0, Landroid/emoji/EmojiFactory;->mNativeEmojiFactory:I

    .line 82
    iput-object p2, p0, Landroid/emoji/EmojiFactory;->mName:Ljava/lang/String;

    .line 83
    new-instance v0, Landroid/emoji/EmojiFactory$CustomLinkedHashMap;

    invoke-direct {v0, p0}, Landroid/emoji/EmojiFactory$CustomLinkedHashMap;-><init>(Landroid/emoji/EmojiFactory;)V

    iput-object v0, p0, Landroid/emoji/EmojiFactory;->mCache:Ljava/util/Map;

    .line 84
    new-instance v0, Landroid/emoji/EmojiFactory$CustomLinkedHashMap;

    invoke-direct {v0, p0}, Landroid/emoji/EmojiFactory$CustomLinkedHashMap;-><init>(Landroid/emoji/EmojiFactory;)V

    iput-object v0, p0, Landroid/emoji/EmojiFactory;->mAnimatedEmojiCache:Ljava/util/Map;

    .line 85
    new-instance v0, Landroid/emoji/EmojiFactory$CustomLinkedHashMap;

    invoke-direct {v0, p0}, Landroid/emoji/EmojiFactory$CustomLinkedHashMap;-><init>(Landroid/emoji/EmojiFactory;)V

    iput-object v0, p0, Landroid/emoji/EmojiFactory;->mTotalFrameCache:Ljava/util/Map;

    .line 86
    new-instance v0, Landroid/emoji/EmojiFactory$CustomLinkedHashMap;

    invoke-direct {v0, p0}, Landroid/emoji/EmojiFactory$CustomLinkedHashMap;-><init>(Landroid/emoji/EmojiFactory;)V

    iput-object v0, p0, Landroid/emoji/EmojiFactory;->mIsAnimatedCache:Ljava/util/Map;

    .line 87
    return-void
.end method

.method static synthetic access$000(Landroid/emoji/EmojiFactory;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
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
    .line 92
    :try_start_0
    iget v0, p0, Landroid/emoji/EmojiFactory;->mNativeEmojiFactory:I

    invoke-direct {p0, v0}, Landroid/emoji/EmojiFactory;->nativeDestructor(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 96
    return-void

    .line 94
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getAndroidPuaFromVendorSpecificPua(I)I
    .locals 1
    .parameter "vsp"

    .prologue
    .line 316
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

    .line 320
    if-nez p1, :cond_0

    .line 321
    const/4 v8, 0x0

    .line 340
    :goto_0
    return-object v8

    .line 323
    :cond_0
    iget v8, p0, Landroid/emoji/EmojiFactory;->mNativeEmojiFactory:I

    invoke-direct {p0, v8}, Landroid/emoji/EmojiFactory;->nativeGetMinimumVendorSpecificPua(I)I

    move-result v5

    .line 324
    .local v5, minVsp:I
    iget v8, p0, Landroid/emoji/EmojiFactory;->mNativeEmojiFactory:I

    invoke-direct {p0, v8}, Landroid/emoji/EmojiFactory;->nativeGetMaximumVendorSpecificPua(I)I

    move-result v4

    .line 325
    .local v4, maxVsp:I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 326
    .local v3, len:I
    invoke-virtual {p1, v9, v3}, Ljava/lang/String;->codePointCount(II)I

    move-result v8

    new-array v1, v8, [I

    .line 328
    .local v1, codePoints:[I
    const/4 v7, 0x0

    .line 329
    .local v7, new_len:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v3, :cond_2

    .line 330
    invoke-virtual {p1, v2}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    .line 331
    .local v0, codePoint:I
    if-gt v5, v0, :cond_1

    if-gt v0, v4, :cond_1

    .line 332
    invoke-virtual {p0, v0}, Landroid/emoji/EmojiFactory;->getAndroidPuaFromVendorSpecificPua(I)I

    move-result v6

    .line 333
    .local v6, newCodePoint:I
    if-lez v6, :cond_1

    .line 334
    aput v6, v1, v7

    .line 329
    .end local v6           #newCodePoint:I
    :goto_2
    const/4 v8, 0x1

    invoke-virtual {p1, v2, v8}, Ljava/lang/String;->offsetByCodePoints(II)I

    move-result v2

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 338
    :cond_1
    aput v0, v1, v7

    goto :goto_2

    .line 340
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
    .line 295
    iget v0, p0, Landroid/emoji/EmojiFactory;->mNativeEmojiFactory:I

    invoke-direct {p0, v0, p1}, Landroid/emoji/EmojiFactory;->nativeGetAndroidPuaFromVendorSpecificSjis(IC)I

    move-result v0

    return v0
.end method

.method public getAnimationDelayTime()I
    .locals 1

    .prologue
    .line 239
    iget v0, p0, Landroid/emoji/EmojiFactory;->mNativeEmojiFactory:I

    invoke-direct {p0, v0}, Landroid/emoji/EmojiFactory;->nativeGetAnimationDelayTime(I)I

    move-result v0

    return v0
.end method

.method public getAnimationImageNumber(Landroid/graphics/Canvas;)I
    .locals 1
    .parameter "canvas"

    .prologue
    .line 249
    iget v0, p0, Landroid/emoji/EmojiFactory;->mNativeEmojiFactory:I

    invoke-direct {p0, v0, p1}, Landroid/emoji/EmojiFactory;->nativeGetAnimationImageNumber(ILandroid/graphics/Canvas;)I

    move-result v0

    return v0
.end method

.method public declared-synchronized getBitmapFromAndroidPua(I)Landroid/graphics/Bitmap;
    .locals 6
    .parameter "pua"

    .prologue
    .line 114
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Landroid/emoji/EmojiFactory;->mCache:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 115
    .local v0, cache:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/graphics/Bitmap;>;"
    if-nez v0, :cond_1

    .line 116
    iget v3, p0, Landroid/emoji/EmojiFactory;->mNativeEmojiFactory:I

    invoke-direct {p0, v3, p1}, Landroid/emoji/EmojiFactory;->nativeGetBitmapFromAndroidPua(II)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 120
    .local v1, ret:Landroid/graphics/Bitmap;
    if-eqz v1, :cond_0

    .line 121
    iget-object v3, p0, Landroid/emoji/EmojiFactory;->mCache:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-instance v5, Ljava/lang/ref/WeakReference;

    invoke-direct {v5, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    .end local v1           #ret:Landroid/graphics/Bitmap;
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v1

    .line 125
    :cond_1
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    .line 126
    .local v2, tmp:Landroid/graphics/Bitmap;
    if-nez v2, :cond_2

    .line 127
    iget v3, p0, Landroid/emoji/EmojiFactory;->mNativeEmojiFactory:I

    invoke-direct {p0, v3, p1}, Landroid/emoji/EmojiFactory;->nativeGetBitmapFromAndroidPua(II)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 128
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

    .line 114
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

    .line 131
    goto :goto_0
.end method

.method public declared-synchronized getBitmapFromGlyphID(ILandroid/graphics/Canvas;)Landroid/graphics/Bitmap;
    .locals 10
    .parameter "glyphID"
    .parameter "canvas"

    .prologue
    const/4 v5, 0x0

    .line 149
    monitor-enter p0

    :try_start_0
    iget v8, p0, Landroid/emoji/EmojiFactory;->mGlyphBase:I

    sub-int v2, p1, v8

    .line 150
    .local v2, offsetGlyh:I
    if-ltz v2, :cond_0

    sget v8, Landroid/emoji/EmojiPuaTable;->GMOJI_PUA_COUNT:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ge v2, v8, :cond_0

    if-nez p2, :cond_1

    .line 199
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v5

    .line 156
    :cond_1
    :try_start_1
    sget-object v8, Landroid/emoji/EmojiPuaTable;->EmojiPUA:[I

    aget v8, v8, v2

    const v9, 0xfe000

    add-int v3, v8, v9

    .line 158
    .local v3, pua:I
    invoke-virtual {p0, v3}, Landroid/emoji/EmojiFactory;->isAnimatedEmoji(I)Z

    move-result v8

    if-nez v8, :cond_2

    .line 159
    invoke-virtual {p0, v3}, Landroid/emoji/EmojiFactory;->getBitmapFromAndroidPua(I)Landroid/graphics/Bitmap;

    move-result-object v5

    goto :goto_0

    .line 162
    :cond_2
    iget-object v8, p0, Landroid/emoji/EmojiFactory;->mTotalFrameCache:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    .line 163
    .local v7, totalFrame:Ljava/lang/Integer;
    if-nez v7, :cond_3

    .line 164
    iget v8, p0, Landroid/emoji/EmojiFactory;->mNativeEmojiFactory:I

    invoke-direct {p0, v8, v3}, Landroid/emoji/EmojiFactory;->nativeGetTotalFrameOfPua(II)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 165
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_0

    .line 168
    iget-object v8, p0, Landroid/emoji/EmojiFactory;->mTotalFrameCache:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    :cond_3
    invoke-virtual {p0, p2}, Landroid/emoji/EmojiFactory;->getAnimationImageNumber(Landroid/graphics/Canvas;)I

    move-result v8

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v9

    rem-int v1, v8, v9

    .line 173
    .local v1, frameNumber:I
    if-gez v1, :cond_4

    .line 174
    invoke-virtual {p0, v3}, Landroid/emoji/EmojiFactory;->getBitmapFromAndroidPua(I)Landroid/graphics/Bitmap;

    move-result-object v5

    goto :goto_0

    .line 177
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

    .line 179
    .local v4, puaKey:Ljava/lang/String;
    iget-object v8, p0, Landroid/emoji/EmojiFactory;->mAnimatedEmojiCache:Ljava/util/Map;

    invoke-interface {v8, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 180
    .local v0, cache:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/graphics/Bitmap;>;"
    if-nez v0, :cond_5

    .line 181
    iget v8, p0, Landroid/emoji/EmojiFactory;->mNativeEmojiFactory:I

    invoke-direct {p0, v8, v3, v1}, Landroid/emoji/EmojiFactory;->nativeGetBitmapFromAndroidPuaAndFramenumber(III)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 187
    .local v5, ret:Landroid/graphics/Bitmap;
    if-eqz v5, :cond_0

    .line 188
    iget-object v8, p0, Landroid/emoji/EmojiFactory;->mAnimatedEmojiCache:Ljava/util/Map;

    new-instance v9, Ljava/lang/ref/WeakReference;

    invoke-direct {v9, v5}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v8, v4, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 149
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

    .line 192
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

    .line 193
    .local v6, tmp:Landroid/graphics/Bitmap;
    if-nez v6, :cond_6

    .line 194
    iget v8, p0, Landroid/emoji/EmojiFactory;->mNativeEmojiFactory:I

    invoke-direct {p0, v8, v3, v1}, Landroid/emoji/EmojiFactory;->nativeGetBitmapFromAndroidPuaAndFramenumber(III)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 196
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

    .line 199
    goto/16 :goto_0
.end method

.method public declared-synchronized getBitmapFromVendorSpecificPua(I)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "vsp"

    .prologue
    .line 285
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
    .line 272
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
    .line 408
    iget v0, p0, Landroid/emoji/EmojiFactory;->mNativeEmojiFactory:I

    invoke-direct {p0, v0}, Landroid/emoji/EmojiFactory;->nativeGetMaximumAndroidPua(I)I

    move-result v0

    return v0
.end method

.method public getMinimumAndroidPua()I
    .locals 1

    .prologue
    .line 400
    iget v0, p0, Landroid/emoji/EmojiFactory;->mNativeEmojiFactory:I

    invoke-direct {p0, v0}, Landroid/emoji/EmojiFactory;->nativeGetMinimumAndroidPua(I)I

    move-result v0

    return v0
.end method

.method public getVendorSpecificPuaFromAndroidPua(I)I
    .locals 1
    .parameter "pua"

    .prologue
    .line 350
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

    .line 354
    if-nez p1, :cond_0

    .line 355
    const/4 v8, 0x0

    .line 374
    :goto_0
    return-object v8

    .line 357
    :cond_0
    iget v8, p0, Landroid/emoji/EmojiFactory;->mNativeEmojiFactory:I

    invoke-direct {p0, v8}, Landroid/emoji/EmojiFactory;->nativeGetMinimumAndroidPua(I)I

    move-result v5

    .line 358
    .local v5, minVsp:I
    iget v8, p0, Landroid/emoji/EmojiFactory;->mNativeEmojiFactory:I

    invoke-direct {p0, v8}, Landroid/emoji/EmojiFactory;->nativeGetMaximumAndroidPua(I)I

    move-result v4

    .line 359
    .local v4, maxVsp:I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 360
    .local v3, len:I
    invoke-virtual {p1, v9, v3}, Ljava/lang/String;->codePointCount(II)I

    move-result v8

    new-array v1, v8, [I

    .line 362
    .local v1, codePoints:[I
    const/4 v7, 0x0

    .line 363
    .local v7, new_len:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v3, :cond_2

    .line 364
    invoke-virtual {p1, v2}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    .line 365
    .local v0, codePoint:I
    if-gt v5, v0, :cond_1

    if-gt v0, v4, :cond_1

    .line 366
    invoke-virtual {p0, v0}, Landroid/emoji/EmojiFactory;->getVendorSpecificPuaFromAndroidPua(I)I

    move-result v6

    .line 367
    .local v6, newCodePoint:I
    if-lez v6, :cond_1

    .line 368
    aput v6, v1, v7

    .line 363
    .end local v6           #newCodePoint:I
    :goto_2
    const/4 v8, 0x1

    invoke-virtual {p1, v2, v8}, Ljava/lang/String;->offsetByCodePoints(II)I

    move-result v2

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 372
    :cond_1
    aput v0, v1, v7

    goto :goto_2

    .line 374
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
    .line 305
    iget v0, p0, Landroid/emoji/EmojiFactory;->mNativeEmojiFactory:I

    invoke-direct {p0, v0, p1}, Landroid/emoji/EmojiFactory;->nativeGetVendorSpecificSjisFromAndroidPua(II)I

    move-result v0

    return v0
.end method

.method public isAnimatedEmoji(I)Z
    .locals 5
    .parameter "pua"

    .prologue
    .line 222
    iget-object v2, p0, Landroid/emoji/EmojiFactory;->mIsAnimatedCache:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 223
    .local v0, cache:Ljava/lang/Boolean;
    if-nez v0, :cond_0

    .line 224
    iget v2, p0, Landroid/emoji/EmojiFactory;->mNativeEmojiFactory:I

    invoke-direct {p0, v2, p1}, Landroid/emoji/EmojiFactory;->nativeIsAnimatedEmoji(II)Z

    move-result v1

    .line 225
    .local v1, result:Z
    iget-object v2, p0, Landroid/emoji/EmojiFactory;->mIsAnimatedCache:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    :goto_0
    return v1

    .line 228
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
    .line 210
    iget v0, p0, Landroid/emoji/EmojiFactory;->mNativeEmojiFactory:I

    invoke-direct {p0, v0}, Landroid/emoji/EmojiFactory;->nativeIsSupportedAnimatedEmoji(I)Z

    move-result v0

    return v0
.end method

.method public name()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Landroid/emoji/EmojiFactory;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public setAnimationImageNumber(ILandroid/graphics/Canvas;)V
    .locals 1
    .parameter "imageNumber"
    .parameter "canvas"

    .prologue
    .line 259
    iget v0, p0, Landroid/emoji/EmojiFactory;->mNativeEmojiFactory:I

    invoke-direct {p0, v0, p1, p2}, Landroid/emoji/EmojiFactory;->nativeSetAnimationImageNumber(IILandroid/graphics/Canvas;)V

    .line 260
    return-void
.end method

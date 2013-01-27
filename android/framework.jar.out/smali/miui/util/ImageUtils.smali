.class public Lmiui/util/ImageUtils;
.super Ljava/lang/Object;
.source "ImageUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static computeSampleSize(Lmiui/util/InputStreamLoader;I)I
    .locals 8
    .parameter "streamLoader"
    .parameter "pixelSize"

    .prologue
    .line 30
    const/4 v1, 0x1

    .line 31
    .local v1, roundedSize:I
    if-lez p1, :cond_0

    .line 32
    invoke-static {p0}, Lmiui/util/ImageUtils;->getBitmapSize(Lmiui/util/InputStreamLoader;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v0

    .line 33
    .local v0, options:Landroid/graphics/BitmapFactory$Options;
    iget v4, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-double v4, v4

    iget v6, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-double v6, v6

    mul-double/2addr v4, v6

    int-to-double v6, p1

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    .line 34
    .local v2, size:D
    :goto_0
    mul-int/lit8 v4, v1, 0x2

    int-to-double v4, v4

    cmpg-double v4, v4, v2

    if-gtz v4, :cond_0

    .line 35
    shl-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 38
    .end local v0           #options:Landroid/graphics/BitmapFactory$Options;
    .end local v2           #size:D
    :cond_0
    return v1
.end method

.method public static cropBitmapToAnother(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Z)Z
    .locals 13
    .parameter "srcBmp"
    .parameter "destBmp"
    .parameter "recycleSrcBmp"

    .prologue
    const/high16 v12, 0x4000

    const/high16 v10, 0x3f80

    const/4 v11, 0x0

    const/4 v7, 0x1

    .line 162
    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    .line 163
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    .line 164
    .local v6, srcWidth:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    .line 165
    .local v5, srcHeight:I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 166
    .local v2, destWidth:I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 168
    .local v1, destHeight:I
    int-to-float v8, v2

    mul-float/2addr v8, v10

    int-to-float v9, v6

    div-float/2addr v8, v9

    int-to-float v9, v1

    mul-float/2addr v9, v10

    int-to-float v10, v5

    div-float/2addr v9, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 170
    .local v4, ratio:F
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 171
    .local v3, paint:Landroid/graphics/Paint;
    invoke-virtual {v3, v7}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 172
    invoke-virtual {v3, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 173
    invoke-virtual {v3, v7}, Landroid/graphics/Paint;->setDither(Z)V

    .line 175
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 176
    .local v0, canvas:Landroid/graphics/Canvas;
    int-to-float v8, v2

    int-to-float v9, v6

    mul-float/2addr v9, v4

    sub-float/2addr v8, v9

    div-float/2addr v8, v12

    int-to-float v9, v1

    int-to-float v10, v5

    mul-float/2addr v10, v4

    sub-float/2addr v9, v10

    div-float/2addr v9, v12

    invoke-virtual {v0, v8, v9}, Landroid/graphics/Canvas;->translate(FF)V

    .line 177
    invoke-virtual {v0, v4, v4}, Landroid/graphics/Canvas;->scale(FF)V

    .line 178
    invoke-virtual {v0, p0, v11, v11, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 180
    if-eqz p2, :cond_0

    .line 181
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 185
    .end local v0           #canvas:Landroid/graphics/Canvas;
    .end local v1           #destHeight:I
    .end local v2           #destWidth:I
    .end local v3           #paint:Landroid/graphics/Paint;
    .end local v4           #ratio:F
    .end local v5           #srcHeight:I
    .end local v6           #srcWidth:I
    :cond_0
    :goto_0
    return v7

    :cond_1
    const/4 v7, 0x0

    goto :goto_0
.end method

.method public static final getBitmap(Lmiui/util/InputStreamLoader;I)Landroid/graphics/Bitmap;
    .locals 7
    .parameter "streamLoader"
    .parameter "pixelSize"

    .prologue
    .line 62
    invoke-static {}, Lmiui/util/ImageUtils;->getDefaultOptions()Landroid/graphics/BitmapFactory$Options;

    move-result-object v2

    .line 63
    .local v2, options:Landroid/graphics/BitmapFactory$Options;
    invoke-static {p0, p1}, Lmiui/util/ImageUtils;->computeSampleSize(Lmiui/util/InputStreamLoader;I)I

    move-result v5

    iput v5, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 66
    const/4 v0, 0x0

    .line 67
    .local v0, bitmap:Landroid/graphics/Bitmap;
    const/4 v3, 0x0

    .local v3, retry:I
    move v4, v3

    .line 68
    .end local v3           #retry:I
    .local v4, retry:I
    :goto_0
    add-int/lit8 v3, v4, 0x1

    .end local v4           #retry:I
    .restart local v3       #retry:I
    const/4 v5, 0x3

    if-ge v4, v5, :cond_0

    .line 71
    :try_start_0
    invoke-virtual {p0}, Lmiui/util/InputStreamLoader;->get()Ljava/io/InputStream;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v5, v6, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 79
    invoke-virtual {p0}, Lmiui/util/InputStreamLoader;->close()V

    .line 83
    :cond_0
    :goto_1
    return-object v0

    .line 73
    :catch_0
    move-exception v1

    .line 74
    .local v1, ex:Ljava/lang/OutOfMemoryError;
    :try_start_1
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 75
    iget v5, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    mul-int/lit8 v5, v5, 0x2

    iput v5, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 79
    invoke-virtual {p0}, Lmiui/util/InputStreamLoader;->close()V

    move v4, v3

    .end local v3           #retry:I
    .restart local v4       #retry:I
    goto :goto_0

    .line 76
    .end local v1           #ex:Ljava/lang/OutOfMemoryError;
    .end local v4           #retry:I
    .restart local v3       #retry:I
    :catch_1
    move-exception v1

    .line 79
    .local v1, ex:Ljava/lang/Exception;
    invoke-virtual {p0}, Lmiui/util/InputStreamLoader;->close()V

    goto :goto_1

    .end local v1           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    invoke-virtual {p0}, Lmiui/util/InputStreamLoader;->close()V

    throw v5
.end method

.method public static getBitmap(Lmiui/util/InputStreamLoader;II)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "streamLoader"
    .parameter "destWidth"
    .parameter "destHeight"

    .prologue
    .line 87
    const/4 v0, 0x2

    .line 88
    .local v0, PIXEL_FACTOR_FOR_COMPUTING_SAMPLE_SIZE:I
    mul-int v3, p1, p2

    mul-int/lit8 v2, v3, 0x2

    .line 89
    .local v2, pixelSize:I
    if-lez p1, :cond_0

    if-gtz p2, :cond_1

    .line 90
    :cond_0
    const/4 v2, -0x1

    .line 92
    :cond_1
    invoke-static {p0, v2}, Lmiui/util/ImageUtils;->getBitmap(Lmiui/util/InputStreamLoader;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 93
    .local v1, destBmp:Landroid/graphics/Bitmap;
    if-lez v2, :cond_2

    .line 94
    const/4 v3, 0x1

    invoke-static {v1, p1, p2, v3}, Lmiui/util/ImageUtils;->scaleBitmapToDesire(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 96
    :cond_2
    return-object v1
.end method

.method public static getBitmap(Lmiui/util/InputStreamLoader;IILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 7
    .parameter "streamLoader"
    .parameter "destWidth"
    .parameter "destHeight"
    .parameter "reusedBitmap"

    .prologue
    const/4 v6, 0x1

    .line 104
    const/4 v3, 0x0

    .line 105
    .local v3, srcBitmap:Landroid/graphics/Bitmap;
    if-eqz p3, :cond_1

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v4

    if-nez v4, :cond_1

    .line 106
    invoke-static {p0}, Lmiui/util/ImageUtils;->getBitmapSize(Lmiui/util/InputStreamLoader;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v2

    .line 107
    .local v2, sizeOp:Landroid/graphics/BitmapFactory$Options;
    iget v4, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    if-ne v4, v5, :cond_0

    iget v4, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    if-ne v4, v5, :cond_0

    .line 109
    :try_start_0
    invoke-static {}, Lmiui/util/ImageUtils;->getDefaultOptions()Landroid/graphics/BitmapFactory$Options;

    move-result-object v1

    .line 110
    .local v1, op:Landroid/graphics/BitmapFactory$Options;
    iput-object p3, v1, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    .line 111
    const/4 v4, 0x1

    iput v4, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 112
    invoke-virtual {p0}, Lmiui/util/InputStreamLoader;->get()Ljava/io/InputStream;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 115
    invoke-virtual {p0}, Lmiui/util/InputStreamLoader;->close()V

    .line 118
    .end local v1           #op:Landroid/graphics/BitmapFactory$Options;
    :cond_0
    :goto_0
    if-nez v3, :cond_1

    .line 119
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->recycle()V

    .line 123
    .end local v2           #sizeOp:Landroid/graphics/BitmapFactory$Options;
    :cond_1
    move-object v0, v3

    .line 124
    .local v0, destBitmap:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_3

    .line 125
    if-lez p1, :cond_2

    if-lez p2, :cond_2

    .line 126
    invoke-static {v0, p1, p2, v6}, Lmiui/util/ImageUtils;->scaleBitmapToDesire(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 132
    :cond_2
    :goto_1
    return-object v0

    .line 113
    .end local v0           #destBitmap:Landroid/graphics/Bitmap;
    .restart local v2       #sizeOp:Landroid/graphics/BitmapFactory$Options;
    :catch_0
    move-exception v4

    .line 115
    invoke-virtual {p0}, Lmiui/util/InputStreamLoader;->close()V

    goto :goto_0

    :catchall_0
    move-exception v4

    invoke-virtual {p0}, Lmiui/util/InputStreamLoader;->close()V

    throw v4

    .line 129
    .end local v2           #sizeOp:Landroid/graphics/BitmapFactory$Options;
    .restart local v0       #destBitmap:Landroid/graphics/Bitmap;
    :cond_3
    invoke-static {p0, p1, p2}, Lmiui/util/ImageUtils;->getBitmap(Lmiui/util/InputStreamLoader;II)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_1
.end method

.method public static final getBitmapSize(Ljava/lang/String;)Landroid/graphics/BitmapFactory$Options;
    .locals 1
    .parameter "filePath"

    .prologue
    .line 55
    new-instance v0, Lmiui/util/InputStreamLoader;

    invoke-direct {v0, p0}, Lmiui/util/InputStreamLoader;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lmiui/util/ImageUtils;->getBitmapSize(Lmiui/util/InputStreamLoader;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v0

    return-object v0
.end method

.method public static final getBitmapSize(Lmiui/util/InputStreamLoader;)Landroid/graphics/BitmapFactory$Options;
    .locals 3
    .parameter "streamLoader"

    .prologue
    .line 42
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 44
    .local v0, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 45
    invoke-virtual {p0}, Lmiui/util/InputStreamLoader;->get()Ljava/io/InputStream;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    invoke-virtual {p0}, Lmiui/util/InputStreamLoader;->close()V

    .line 51
    :goto_0
    return-object v0

    .line 47
    :catch_0
    move-exception v1

    .line 49
    invoke-virtual {p0}, Lmiui/util/InputStreamLoader;->close()V

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-virtual {p0}, Lmiui/util/InputStreamLoader;->close()V

    throw v1
.end method

.method public static getDefaultOptions()Landroid/graphics/BitmapFactory$Options;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 21
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 22
    .local v0, opt:Landroid/graphics/BitmapFactory$Options;
    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 23
    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 24
    const/4 v1, 0x1

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 25
    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 26
    return-object v0
.end method

.method public static saveBitmapToLocal(Lmiui/util/InputStreamLoader;Ljava/lang/String;II)Z
    .locals 4
    .parameter "streamLoader"
    .parameter "path"
    .parameter "destWidth"
    .parameter "destHeight"

    .prologue
    const/4 v3, 0x1

    .line 189
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-lt p2, v3, :cond_0

    if-ge p3, v3, :cond_2

    .line 190
    :cond_0
    const/4 v2, 0x0

    .line 208
    :cond_1
    :goto_0
    return v2

    .line 193
    :cond_2
    const/4 v2, 0x0

    .line 194
    .local v2, result:Z
    invoke-static {p0}, Lmiui/util/ImageUtils;->getBitmapSize(Lmiui/util/InputStreamLoader;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v1

    .line 195
    .local v1, options:Landroid/graphics/BitmapFactory$Options;
    iget v3, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-lez v3, :cond_1

    iget v3, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-lez v3, :cond_1

    .line 199
    iget v3, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-ne v3, p2, :cond_3

    iget v3, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-ne v3, p3, :cond_3

    .line 200
    invoke-static {p0, p1}, Lmiui/util/ImageUtils;->saveToFile(Lmiui/util/InputStreamLoader;Ljava/lang/String;)Z

    move-result v2

    goto :goto_0

    .line 202
    :cond_3
    invoke-static {p0, p2, p3}, Lmiui/util/ImageUtils;->getBitmap(Lmiui/util/InputStreamLoader;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 203
    .local v0, destBmp:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_1

    .line 204
    invoke-static {v0, p1}, Lmiui/util/ImageUtils;->saveToFile(Landroid/graphics/Bitmap;Ljava/lang/String;)Z

    move-result v2

    .line 205
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0
.end method

.method public static saveToFile(Landroid/graphics/Bitmap;Ljava/lang/String;)Z
    .locals 3
    .parameter "bitmap"
    .parameter "path"

    .prologue
    .line 213
    if-eqz p0, :cond_1

    .line 214
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 215
    .local v0, outputStream:Ljava/io/FileOutputStream;
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->hasAlpha()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    :goto_0
    const/16 v2, 0x64

    invoke-virtual {p0, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 216
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 217
    const/4 v1, 0x1

    .line 221
    .end local v0           #outputStream:Ljava/io/FileOutputStream;
    :goto_1
    return v1

    .line 215
    .restart local v0       #outputStream:Ljava/io/FileOutputStream;
    :cond_0
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 219
    .end local v0           #outputStream:Ljava/io/FileOutputStream;
    :catch_0
    move-exception v1

    .line 221
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private static saveToFile(Lmiui/util/InputStreamLoader;Ljava/lang/String;)Z
    .locals 4
    .parameter "streamLoader"
    .parameter "path"

    .prologue
    .line 225
    const/4 v2, 0x0

    .line 227
    .local v2, result:Z
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 228
    .local v1, outputStream:Ljava/io/FileOutputStream;
    invoke-virtual {p0}, Lmiui/util/InputStreamLoader;->get()Ljava/io/InputStream;

    move-result-object v0

    .line 229
    .local v0, inputStream:Ljava/io/InputStream;
    invoke-static {v0, v1}, Llibcore/io/Streams;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    .line 230
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 231
    invoke-virtual {p0}, Lmiui/util/InputStreamLoader;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 232
    const/4 v2, 0x1

    .line 235
    .end local v0           #inputStream:Ljava/io/InputStream;
    .end local v1           #outputStream:Ljava/io/FileOutputStream;
    :goto_0
    return v2

    .line 233
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public static scaleBitmapToDesire(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    .locals 5
    .parameter "srcBmp"
    .parameter "destWidth"
    .parameter "destHeight"
    .parameter "recycleSrcBmp"

    .prologue
    .line 136
    const/4 v1, 0x0

    .line 138
    .local v1, destBmp:Landroid/graphics/Bitmap;
    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 139
    .local v3, srcWidth:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 141
    .local v2, srcHeight:I
    if-ne v3, p1, :cond_0

    if-ne v2, p2, :cond_0

    .line 142
    move-object v1, p0

    .line 155
    .end local v2           #srcHeight:I
    .end local v3           #srcWidth:I
    :goto_0
    return-object v1

    .line 144
    .restart local v2       #srcHeight:I
    .restart local v3       #srcWidth:I
    :cond_0
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 145
    .local v0, config:Landroid/graphics/Bitmap$Config;
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 146
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    .line 148
    :cond_1
    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 149
    invoke-static {p0, v1, p3}, Lmiui/util/ImageUtils;->cropBitmapToAnother(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 151
    .end local v0           #config:Landroid/graphics/Bitmap$Config;
    .end local v2           #srcHeight:I
    .end local v3           #srcWidth:I
    :catch_0
    move-exception v4

    goto :goto_0

    .line 152
    :catch_1
    move-exception v4

    goto :goto_0
.end method

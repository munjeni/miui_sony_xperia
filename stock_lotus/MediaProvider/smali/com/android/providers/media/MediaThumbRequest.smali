.class Lcom/android/providers/media/MediaThumbRequest;
.super Ljava/lang/Object;
.source "MediaThumbRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/media/MediaThumbRequest$State;
    }
.end annotation


# static fields
.field private static final THUMB_PROJECTION:[Ljava/lang/String;

.field private static final sRandom:Ljava/util/Random;


# instance fields
.field mCallingPid:I

.field mCr:Landroid/content/ContentResolver;

.field mGroupId:J

.field mIsVideo:Z

.field mMagic:J

.field mOrigColumnName:Ljava/lang/String;

.field mOrigId:J

.field mPath:Ljava/lang/String;

.field mPriority:I

.field mRequestTime:J

.field mState:Lcom/android/providers/media/MediaThumbRequest$State;

.field mThumbUri:Landroid/net/Uri;

.field mUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 58
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/providers/media/MediaThumbRequest;->THUMB_PROJECTION:[Ljava/lang/String;

    .line 76
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/android/providers/media/MediaThumbRequest;->sRandom:Ljava/util/Random;

    return-void
.end method

.method constructor <init>(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/net/Uri;IJ)V
    .locals 4
    .parameter "cr"
    .parameter "path"
    .parameter "uri"
    .parameter "priority"
    .parameter "magic"

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/providers/media/MediaThumbRequest;->mRequestTime:J

    .line 65
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    iput v1, p0, Lcom/android/providers/media/MediaThumbRequest;->mCallingPid:I

    .line 73
    sget-object v1, Lcom/android/providers/media/MediaThumbRequest$State;->WAIT:Lcom/android/providers/media/MediaThumbRequest$State;

    iput-object v1, p0, Lcom/android/providers/media/MediaThumbRequest;->mState:Lcom/android/providers/media/MediaThumbRequest$State;

    .line 91
    iput-object p1, p0, Lcom/android/providers/media/MediaThumbRequest;->mCr:Landroid/content/ContentResolver;

    .line 92
    iput-object p2, p0, Lcom/android/providers/media/MediaThumbRequest;->mPath:Ljava/lang/String;

    .line 93
    iput p4, p0, Lcom/android/providers/media/MediaThumbRequest;->mPriority:I

    .line 94
    iput-wide p5, p0, Lcom/android/providers/media/MediaThumbRequest;->mMagic:J

    .line 95
    iput-object p3, p0, Lcom/android/providers/media/MediaThumbRequest;->mUri:Landroid/net/Uri;

    .line 96
    const-string v1, "video"

    invoke-virtual {p3}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/providers/media/MediaThumbRequest;->mIsVideo:Z

    .line 97
    invoke-static {p3}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/providers/media/MediaThumbRequest;->mOrigId:J

    .line 98
    iget-boolean v1, p0, Lcom/android/providers/media/MediaThumbRequest;->mIsVideo:Z

    if-eqz v1, :cond_1

    sget-object v1, Landroid/provider/MediaStore$Video$Thumbnails;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    :goto_0
    iput-object v1, p0, Lcom/android/providers/media/MediaThumbRequest;->mThumbUri:Landroid/net/Uri;

    .line 101
    iget-boolean v1, p0, Lcom/android/providers/media/MediaThumbRequest;->mIsVideo:Z

    if-eqz v1, :cond_2

    const-string v1, "video_id"

    :goto_1
    iput-object v1, p0, Lcom/android/providers/media/MediaThumbRequest;->mOrigColumnName:Ljava/lang/String;

    .line 106
    const-string v1, "group_id"

    invoke-virtual {p3, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 107
    .local v0, groupIdParam:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 108
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/providers/media/MediaThumbRequest;->mGroupId:J

    .line 110
    :cond_0
    return-void

    .line 98
    .end local v0           #groupIdParam:Ljava/lang/String;
    :cond_1
    sget-object v1, Landroid/provider/MediaStore$Images$Thumbnails;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    goto :goto_0

    .line 101
    :cond_2
    const-string v1, "image_id"

    goto :goto_1
.end method

.method static getComparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/providers/media/MediaThumbRequest;",
            ">;"
        }
    .end annotation

    .prologue
    .line 79
    new-instance v0, Lcom/android/providers/media/MediaThumbRequest$1;

    invoke-direct {v0}, Lcom/android/providers/media/MediaThumbRequest$1;-><init>()V

    return-object v0
.end method


# virtual methods
.method execute()V
    .locals 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 147
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/media/MediaThumbRequest;->mUri:Landroid/net/Uri;

    invoke-static {v2}, Landroid/media/MiniThumbFile;->instance(Landroid/net/Uri;)Landroid/media/MiniThumbFile;

    move-result-object v16

    .line 148
    .local v16, miniThumbFile:Landroid/media/MiniThumbFile;
    move-object/from16 v0, p0

    iget-wide v13, v0, Lcom/android/providers/media/MediaThumbRequest;->mMagic:J

    .line 149
    .local v13, magic:J
    const-wide/16 v4, 0x0

    cmp-long v2, v13, v4

    if-eqz v2, :cond_5

    .line 150
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/providers/media/MediaThumbRequest;->mOrigId:J

    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v5}, Landroid/media/MiniThumbFile;->getMagic(J)J

    move-result-wide v11

    .line 151
    .local v11, fileMagic:J
    cmp-long v2, v11, v13

    if-nez v2, :cond_5

    .line 152
    const/4 v9, 0x0

    .line 153
    .local v9, c:Landroid/database/Cursor;
    const/16 v17, 0x0

    .line 155
    .local v17, pfd:Landroid/os/ParcelFileDescriptor;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/media/MediaThumbRequest;->mCr:Landroid/content/ContentResolver;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/media/MediaThumbRequest;->mThumbUri:Landroid/net/Uri;

    sget-object v4, Lcom/android/providers/media/MediaThumbRequest;->THUMB_PROJECTION:[Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/media/MediaThumbRequest;->mOrigColumnName:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v21, " = "

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/providers/media/MediaThumbRequest;->mOrigId:J

    move-wide/from16 v21, v0

    move-wide/from16 v0, v21

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 157
    if-eqz v9, :cond_0

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 158
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/media/MediaThumbRequest;->mCr:Landroid/content/ContentResolver;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/media/MediaThumbRequest;->mThumbUri:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v9, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    const-string v5, "r"

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v17

    .line 164
    :cond_0
    if-eqz v9, :cond_1

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 165
    :cond_1
    if-eqz v17, :cond_5

    .line 166
    invoke-virtual/range {v17 .. v17}, Landroid/os/ParcelFileDescriptor;->close()V

    move-wide v6, v13

    .line 241
    .end local v9           #c:Landroid/database/Cursor;
    .end local v11           #fileMagic:J
    .end local v13           #magic:J
    .end local v17           #pfd:Landroid/os/ParcelFileDescriptor;
    .local v6, magic:J
    :goto_0
    return-void

    .line 161
    .end local v6           #magic:J
    .restart local v9       #c:Landroid/database/Cursor;
    .restart local v11       #fileMagic:J
    .restart local v13       #magic:J
    .restart local v17       #pfd:Landroid/os/ParcelFileDescriptor;
    :catch_0
    move-exception v2

    .line 164
    if-eqz v9, :cond_2

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 165
    :cond_2
    if-eqz v17, :cond_5

    .line 166
    invoke-virtual/range {v17 .. v17}, Landroid/os/ParcelFileDescriptor;->close()V

    move-wide v6, v13

    .line 167
    .end local v13           #magic:J
    .restart local v6       #magic:J
    goto :goto_0

    .line 164
    .end local v6           #magic:J
    .restart local v13       #magic:J
    :catchall_0
    move-exception v2

    if-eqz v9, :cond_3

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 165
    :cond_3
    if-eqz v17, :cond_4

    .line 166
    invoke-virtual/range {v17 .. v17}, Landroid/os/ParcelFileDescriptor;->close()V

    move-wide v6, v13

    .line 167
    .end local v13           #magic:J
    .restart local v6       #magic:J
    goto :goto_0

    .end local v6           #magic:J
    .restart local v13       #magic:J
    :cond_4
    throw v2

    .line 176
    .end local v9           #c:Landroid/database/Cursor;
    .end local v11           #fileMagic:J
    .end local v17           #pfd:Landroid/os/ParcelFileDescriptor;
    :cond_5
    const/4 v8, 0x0

    .line 178
    .local v8, bitmap:Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/media/MediaThumbRequest;->mPath:Ljava/lang/String;

    if-eqz v2, :cond_8

    .line 179
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/providers/media/MediaThumbRequest;->mIsVideo:Z

    if-eqz v2, :cond_6

    .line 180
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/media/MediaThumbRequest;->mPath:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-static {v2, v4}, Landroid/media/ThumbnailUtils;->createVideoThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 186
    :goto_1
    if-nez v8, :cond_7

    .line 187
    const-string v2, "MediaThumbRequest"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t create mini thumbnail for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/providers/media/MediaThumbRequest;->mPath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-wide v6, v13

    .line 188
    .end local v13           #magic:J
    .restart local v6       #magic:J
    goto :goto_0

    .line 183
    .end local v6           #magic:J
    .restart local v13       #magic:J
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/media/MediaThumbRequest;->mPath:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-static {v2, v4}, Landroid/media/ThumbnailUtils;->createImageThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v8

    goto :goto_1

    .line 191
    :cond_7
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/providers/media/MediaThumbRequest;->updateDatabase(Landroid/graphics/Bitmap;)Landroid/net/Uri;

    move-result-object v19

    .line 192
    .local v19, uri:Landroid/net/Uri;
    if-eqz v19, :cond_8

    .line 193
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/media/MediaThumbRequest;->mCr:Landroid/content/ContentResolver;

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v18

    .line 194
    .local v18, thumbOut:Ljava/io/OutputStream;
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x55

    move-object/from16 v0, v18

    invoke-virtual {v8, v2, v4, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 195
    invoke-virtual/range {v18 .. v18}, Ljava/io/OutputStream;->close()V

    .line 199
    .end local v18           #thumbOut:Ljava/io/OutputStream;
    .end local v19           #uri:Landroid/net/Uri;
    :cond_8
    const/16 v2, 0x60

    const/16 v4, 0x60

    const/4 v5, 0x2

    invoke-static {v8, v2, v4, v5}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 204
    if-eqz v8, :cond_a

    .line 205
    new-instance v15, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v15}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 206
    .local v15, miniOutStream:Ljava/io/ByteArrayOutputStream;
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x4b

    invoke-virtual {v8, v2, v4, v15}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 207
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->recycle()V

    .line 208
    const/4 v3, 0x0

    .line 211
    .local v3, data:[B
    :try_start_1
    invoke-virtual {v15}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 212
    invoke-virtual {v15}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v3

    .line 221
    :goto_2
    if-eqz v3, :cond_b

    move-wide v6, v13

    .line 224
    .end local v13           #magic:J
    .restart local v6       #magic:J
    :cond_9
    sget-object v2, Lcom/android/providers/media/MediaThumbRequest;->sRandom:Ljava/util/Random;

    invoke-virtual {v2}, Ljava/util/Random;->nextLong()J

    move-result-wide v6

    .line 225
    const-wide/16 v4, 0x0

    cmp-long v2, v6, v4

    if-eqz v2, :cond_9

    .line 227
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/providers/media/MediaThumbRequest;->mOrigId:J

    move-object/from16 v2, v16

    invoke-virtual/range {v2 .. v7}, Landroid/media/MiniThumbFile;->saveMiniThumbToFile([BJJ)V

    .line 228
    new-instance v20, Landroid/content/ContentValues;

    invoke-direct/range {v20 .. v20}, Landroid/content/ContentValues;-><init>()V

    .line 230
    .local v20, values:Landroid/content/ContentValues;
    const-string v2, "mini_thumb_magic"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 232
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/media/MediaThumbRequest;->mCr:Landroid/content/ContentResolver;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/media/MediaThumbRequest;->mUri:Landroid/net/Uri;

    const/4 v5, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v2, v4, v0, v5, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 233
    move-object/from16 v0, p0

    iput-wide v6, v0, Lcom/android/providers/media/MediaThumbRequest;->mMagic:J
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 234
    :catch_1
    move-exception v10

    .line 235
    .local v10, ex:Ljava/lang/IllegalStateException;
    const-string v2, "MediaThumbRequest"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "got exception while updating database "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 213
    .end local v6           #magic:J
    .end local v10           #ex:Ljava/lang/IllegalStateException;
    .end local v20           #values:Landroid/content/ContentValues;
    .restart local v13       #magic:J
    :catch_2
    move-exception v10

    .line 214
    .local v10, ex:Ljava/io/IOException;
    const-string v2, "MediaThumbRequest"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "got exception ex "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 239
    .end local v3           #data:[B
    .end local v10           #ex:Ljava/io/IOException;
    .end local v15           #miniOutStream:Ljava/io/ByteArrayOutputStream;
    :cond_a
    const-string v2, "MediaThumbRequest"

    const-string v4, "can\'t create bitmap for thumbnail."

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    move-wide v6, v13

    .end local v13           #magic:J
    .restart local v6       #magic:J
    goto/16 :goto_0
.end method

.method updateDatabase(Landroid/graphics/Bitmap;)Landroid/net/Uri;
    .locals 11
    .parameter "thumbnail"

    .prologue
    const/4 v4, 0x0

    .line 113
    iget-object v0, p0, Lcom/android/providers/media/MediaThumbRequest;->mCr:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/providers/media/MediaThumbRequest;->mThumbUri:Landroid/net/Uri;

    sget-object v2, Lcom/android/providers/media/MediaThumbRequest;->THUMB_PROJECTION:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/providers/media/MediaThumbRequest;->mOrigColumnName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v9, p0, Lcom/android/providers/media/MediaThumbRequest;->mOrigId:J

    invoke-virtual {v3, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 115
    .local v6, c:Landroid/database/Cursor;
    if-nez v6, :cond_1

    .line 133
    :cond_0
    :goto_0
    return-object v4

    .line 117
    :cond_1
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 118
    iget-object v0, p0, Lcom/android/providers/media/MediaThumbRequest;->mThumbUri:Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    .line 121
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_2
    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 124
    :cond_3
    new-instance v8, Landroid/content/ContentValues;

    const/4 v0, 0x4

    invoke-direct {v8, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 125
    .local v8, values:Landroid/content/ContentValues;
    const-string v0, "kind"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 126
    iget-object v0, p0, Lcom/android/providers/media/MediaThumbRequest;->mOrigColumnName:Ljava/lang/String;

    iget-wide v1, p0, Lcom/android/providers/media/MediaThumbRequest;->mOrigId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 127
    const-string v0, "width"

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 128
    const-string v0, "height"

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 130
    :try_start_1
    iget-object v0, p0, Lcom/android/providers/media/MediaThumbRequest;->mCr:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/providers/media/MediaThumbRequest;->mThumbUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v8}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v4

    goto :goto_0

    .line 121
    .end local v8           #values:Landroid/content/ContentValues;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_4

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0

    .line 131
    .restart local v8       #values:Landroid/content/ContentValues;
    :catch_0
    move-exception v7

    .line 132
    .local v7, ex:Ljava/lang/Exception;
    const-string v0, "MediaThumbRequest"

    invoke-static {v0, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

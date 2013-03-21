.class Landroid/mtp/MtpPropertyGroup;
.super Ljava/lang/Object;
.source "MtpPropertyGroup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/mtp/MtpPropertyGroup$Property;
    }
.end annotation


# static fields
.field private static final FORMAT_WHERE:Ljava/lang/String; = "format=?"

.field private static final ID_FORMAT_WHERE:Ljava/lang/String; = "_id=? AND format=?"

.field private static final ID_WHERE:Ljava/lang/String; = "_id=?"

.field private static final PARENT_FORMAT_WHERE:Ljava/lang/String; = "parent=? AND format=?"

.field private static final PARENT_WHERE:Ljava/lang/String; = "parent=?"

.field private static final TAG:Ljava/lang/String; = "MtpPropertyGroup"


# instance fields
.field private mColumns:[Ljava/lang/String;

.field private final mDatabase:Landroid/mtp/MtpDatabase;

.field private final mProperties:[Landroid/mtp/MtpPropertyGroup$Property;

.field private final mProvider:Landroid/content/IContentProvider;

.field private final mUri:Landroid/net/Uri;

.field private final mVolumeName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/mtp/MtpDatabase;Landroid/content/IContentProvider;Ljava/lang/String;[I)V
    .locals 5
    .parameter "database"
    .parameter "provider"
    .parameter "volume"
    .parameter "properties"

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-object p1, p0, Landroid/mtp/MtpPropertyGroup;->mDatabase:Landroid/mtp/MtpDatabase;

    .line 78
    iput-object p2, p0, Landroid/mtp/MtpPropertyGroup;->mProvider:Landroid/content/IContentProvider;

    .line 79
    iput-object p3, p0, Landroid/mtp/MtpPropertyGroup;->mVolumeName:Ljava/lang/String;

    .line 80
    invoke-static {p3}, Lcom/sonyericsson/provider/SemcMediaStore$ExtendedFiles;->getMtpObjectsUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iput-object v3, p0, Landroid/mtp/MtpPropertyGroup;->mUri:Landroid/net/Uri;

    .line 82
    array-length v1, p4

    .line 83
    .local v1, count:I
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 84
    .local v0, columns:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v3, "_id"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    new-array v3, v1, [Landroid/mtp/MtpPropertyGroup$Property;

    iput-object v3, p0, Landroid/mtp/MtpPropertyGroup;->mProperties:[Landroid/mtp/MtpPropertyGroup$Property;

    .line 87
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 88
    iget-object v3, p0, Landroid/mtp/MtpPropertyGroup;->mProperties:[Landroid/mtp/MtpPropertyGroup$Property;

    aget v4, p4, v2

    invoke-direct {p0, v4, v0}, Landroid/mtp/MtpPropertyGroup;->createProperty(ILjava/util/ArrayList;)Landroid/mtp/MtpPropertyGroup$Property;

    move-result-object v4

    aput-object v4, v3, v2

    .line 87
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 90
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 91
    new-array v3, v1, [Ljava/lang/String;

    iput-object v3, p0, Landroid/mtp/MtpPropertyGroup;->mColumns:[Ljava/lang/String;

    .line 92
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_1

    .line 93
    iget-object v4, p0, Landroid/mtp/MtpPropertyGroup;->mColumns:[Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    aput-object v3, v4, v2

    .line 92
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 95
    :cond_1
    return-void
.end method

.method private createProperty(ILjava/util/ArrayList;)Landroid/mtp/MtpPropertyGroup$Property;
    .locals 5
    .parameter "code"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/mtp/MtpPropertyGroup$Property;"
        }
    .end annotation

    .prologue
    .line 98
    .local p2, columns:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 101
    .local v0, column:Ljava/lang/String;
    sparse-switch p1, :sswitch_data_0

    .line 235
    const/4 v1, 0x0

    .line 236
    .local v1, type:I
    const-string v2, "MtpPropertyGroup"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unsupported property "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    :goto_0
    if-eqz v0, :cond_0

    .line 241
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 242
    new-instance v2, Landroid/mtp/MtpPropertyGroup$Property;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-direct {v2, p0, p1, v1, v3}, Landroid/mtp/MtpPropertyGroup$Property;-><init>(Landroid/mtp/MtpPropertyGroup;III)V

    .line 244
    :goto_1
    return-object v2

    .line 103
    .end local v1           #type:I
    :sswitch_0
    const-string/jumbo v0, "storage_id"

    .line 104
    const/4 v1, 0x6

    .line 105
    .restart local v1       #type:I
    goto :goto_0

    .line 107
    .end local v1           #type:I
    :sswitch_1
    const-string v0, "format"

    .line 108
    const/4 v1, 0x4

    .line 109
    .restart local v1       #type:I
    goto :goto_0

    .line 112
    .end local v1           #type:I
    :sswitch_2
    const/4 v1, 0x4

    .line 113
    .restart local v1       #type:I
    goto :goto_0

    .line 115
    .end local v1           #type:I
    :sswitch_3
    const-string v0, "_size"

    .line 116
    const/16 v1, 0x8

    .line 117
    .restart local v1       #type:I
    goto :goto_0

    .line 119
    .end local v1           #type:I
    :sswitch_4
    const-string v0, "_data"

    .line 120
    const v1, 0xffff

    .line 121
    .restart local v1       #type:I
    goto :goto_0

    .line 123
    .end local v1           #type:I
    :sswitch_5
    const-string/jumbo v0, "title"

    .line 124
    const v1, 0xffff

    .line 125
    .restart local v1       #type:I
    goto :goto_0

    .line 127
    .end local v1           #type:I
    :sswitch_6
    const-string v0, "date_modified"

    .line 128
    const v1, 0xffff

    .line 129
    .restart local v1       #type:I
    goto :goto_0

    .line 131
    .end local v1           #type:I
    :sswitch_7
    const-string v0, "date_added"

    .line 132
    const v1, 0xffff

    .line 133
    .restart local v1       #type:I
    goto :goto_0

    .line 135
    .end local v1           #type:I
    :sswitch_8
    const-string/jumbo v0, "year"

    .line 136
    const v1, 0xffff

    .line 137
    .restart local v1       #type:I
    goto :goto_0

    .line 139
    .end local v1           #type:I
    :sswitch_9
    const-string/jumbo v0, "parent"

    .line 140
    const/4 v1, 0x6

    .line 141
    .restart local v1       #type:I
    goto :goto_0

    .line 144
    .end local v1           #type:I
    :sswitch_a
    const-string/jumbo v0, "storage_id"

    .line 145
    const/16 v1, 0xa

    .line 146
    .restart local v1       #type:I
    goto :goto_0

    .line 148
    .end local v1           #type:I
    :sswitch_b
    const-string v0, "duration"

    .line 149
    const/4 v1, 0x6

    .line 150
    .restart local v1       #type:I
    goto :goto_0

    .line 152
    .end local v1           #type:I
    :sswitch_c
    const-string/jumbo v0, "track"

    .line 153
    const/4 v1, 0x4

    .line 154
    .restart local v1       #type:I
    goto :goto_0

    .line 156
    .end local v1           #type:I
    :sswitch_d
    const-string v0, "_display_name"

    .line 157
    const v1, 0xffff

    .line 158
    .restart local v1       #type:I
    goto :goto_0

    .line 160
    .end local v1           #type:I
    :sswitch_e
    const v1, 0xffff

    .line 161
    .restart local v1       #type:I
    goto :goto_0

    .line 163
    .end local v1           #type:I
    :sswitch_f
    const v1, 0xffff

    .line 164
    .restart local v1       #type:I
    goto :goto_0

    .line 166
    .end local v1           #type:I
    :sswitch_10
    const-string v0, "album_artist"

    .line 167
    const v1, 0xffff

    .line 168
    .restart local v1       #type:I
    goto :goto_0

    .line 171
    .end local v1           #type:I
    :sswitch_11
    const v1, 0xffff

    .line 172
    .restart local v1       #type:I
    goto :goto_0

    .line 174
    .end local v1           #type:I
    :sswitch_12
    const-string v0, "composer"

    .line 175
    const v1, 0xffff

    .line 176
    .restart local v1       #type:I
    goto :goto_0

    .line 178
    .end local v1           #type:I
    :sswitch_13
    const-string v0, "description"

    .line 179
    const v1, 0xffff

    .line 180
    .restart local v1       #type:I
    goto :goto_0

    .line 183
    .end local v1           #type:I
    :sswitch_14
    const/4 v1, 0x2

    .line 184
    .restart local v1       #type:I
    goto :goto_0

    .line 186
    .end local v1           #type:I
    :sswitch_15
    const-string/jumbo v0, "width"

    .line 187
    const/4 v1, 0x6

    .line 188
    .restart local v1       #type:I
    goto :goto_0

    .line 190
    .end local v1           #type:I
    :sswitch_16
    const-string v0, "height"

    .line 191
    const/4 v1, 0x6

    .line 192
    .restart local v1       #type:I
    goto/16 :goto_0

    .line 194
    .end local v1           #type:I
    :sswitch_17
    const-string v0, "audiosamplerate"

    .line 195
    const/4 v1, 0x6

    .line 196
    .restart local v1       #type:I
    goto/16 :goto_0

    .line 198
    .end local v1           #type:I
    :sswitch_18
    const-string v0, "audionumchannels"

    .line 199
    const/4 v1, 0x4

    .line 200
    .restart local v1       #type:I
    goto/16 :goto_0

    .line 202
    .end local v1           #type:I
    :sswitch_19
    const-string v0, "audiowavecodec"

    .line 203
    const/4 v1, 0x6

    .line 204
    .restart local v1       #type:I
    goto/16 :goto_0

    .line 206
    .end local v1           #type:I
    :sswitch_1a
    const-string v0, "audiobitrate"

    .line 207
    const/4 v1, 0x6

    .line 208
    .restart local v1       #type:I
    goto/16 :goto_0

    .line 210
    .end local v1           #type:I
    :sswitch_1b
    const-string/jumbo v0, "videoscantype"

    .line 211
    const/4 v1, 0x4

    .line 212
    .restart local v1       #type:I
    goto/16 :goto_0

    .line 214
    .end local v1           #type:I
    :sswitch_1c
    const-string/jumbo v0, "videofourcccodec"

    .line 215
    const/4 v1, 0x6

    .line 216
    .restart local v1       #type:I
    goto/16 :goto_0

    .line 218
    .end local v1           #type:I
    :sswitch_1d
    const-string/jumbo v0, "videobitrate"

    .line 219
    const/4 v1, 0x6

    .line 220
    .restart local v1       #type:I
    goto/16 :goto_0

    .line 222
    .end local v1           #type:I
    :sswitch_1e
    const-string/jumbo v0, "videoframesperthousandseconds"

    .line 223
    const/4 v1, 0x6

    .line 224
    .restart local v1       #type:I
    goto/16 :goto_0

    .line 226
    .end local v1           #type:I
    :sswitch_1f
    const-string/jumbo v0, "videoencodingprofile"

    .line 227
    const v1, 0xffff

    .line 228
    .restart local v1       #type:I
    goto/16 :goto_0

    .line 232
    .end local v1           #type:I
    :sswitch_20
    const/16 v1, 0x4008

    .line 233
    .restart local v1       #type:I
    goto/16 :goto_0

    .line 244
    :cond_0
    new-instance v2, Landroid/mtp/MtpPropertyGroup$Property;

    const/4 v3, -0x1

    invoke-direct {v2, p0, p1, v1, v3}, Landroid/mtp/MtpPropertyGroup$Property;-><init>(Landroid/mtp/MtpPropertyGroup;III)V

    goto/16 :goto_1

    .line 101
    nop

    :sswitch_data_0
    .sparse-switch
        0xd920 -> :sswitch_20
        0xdc01 -> :sswitch_0
        0xdc02 -> :sswitch_1
        0xdc03 -> :sswitch_2
        0xdc04 -> :sswitch_3
        0xdc07 -> :sswitch_4
        0xdc09 -> :sswitch_6
        0xdc0b -> :sswitch_9
        0xdc41 -> :sswitch_a
        0xdc44 -> :sswitch_5
        0xdc46 -> :sswitch_e
        0xdc48 -> :sswitch_13
        0xdc4e -> :sswitch_7
        0xdc4f -> :sswitch_14
        0xdc87 -> :sswitch_15
        0xdc88 -> :sswitch_16
        0xdc89 -> :sswitch_b
        0xdc8b -> :sswitch_c
        0xdc8c -> :sswitch_11
        0xdc96 -> :sswitch_12
        0xdc99 -> :sswitch_8
        0xdc9a -> :sswitch_f
        0xdc9b -> :sswitch_10
        0xdce0 -> :sswitch_d
        0xde93 -> :sswitch_17
        0xde94 -> :sswitch_18
        0xde97 -> :sswitch_1b
        0xde99 -> :sswitch_19
        0xde9a -> :sswitch_1a
        0xde9b -> :sswitch_1c
        0xde9c -> :sswitch_1d
        0xde9d -> :sswitch_1e
        0xdea1 -> :sswitch_1f
    .end sparse-switch
.end method

.method private native format_date_time(J)Ljava/lang/String;
.end method

.method public static nameFromPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "path"

    .prologue
    .line 332
    const/4 v2, 0x0

    .line 333
    .local v2, start:I
    const/16 v3, 0x2f

    invoke-virtual {p0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 334
    .local v1, lastSlash:I
    if-ltz v1, :cond_0

    .line 335
    add-int/lit8 v2, v1, 0x1

    .line 337
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 338
    .local v0, end:I
    sub-int v3, v0, v2

    const/16 v4, 0xff

    if-le v3, v4, :cond_1

    .line 339
    add-int/lit16 v0, v2, 0xff

    .line 341
    :cond_1
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private queryAudio(ILjava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter "id"
    .parameter "column"

    .prologue
    const/4 v8, 0x0

    .line 270
    const/4 v6, 0x0

    .line 272
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Landroid/mtp/MtpPropertyGroup;->mProvider:Landroid/content/IContentProvider;

    iget-object v1, p0, Landroid/mtp/MtpPropertyGroup;->mVolumeName:Ljava/lang/String;

    invoke-static {v1}, Landroid/provider/MediaStore$Audio$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const-string v3, "_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v5

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Landroid/content/IContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 275
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 276
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 283
    if-eqz v6, :cond_0

    .line 284
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_0
    :goto_0
    return-object v0

    .line 278
    :cond_1
    :try_start_1
    const-string v0, ""
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 283
    if-eqz v6, :cond_0

    .line 284
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 280
    :catch_0
    move-exception v7

    .line 283
    .local v7, e:Ljava/lang/Exception;
    if-eqz v6, :cond_2

    .line 284
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    move-object v0, v8

    goto :goto_0

    .line 283
    .end local v7           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    .line 284
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method private queryGenre(I)Ljava/lang/String;
    .locals 9
    .parameter "id"

    .prologue
    const/4 v8, 0x0

    .line 290
    const/4 v6, 0x0

    .line 292
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Landroid/mtp/MtpPropertyGroup;->mVolumeName:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/provider/MediaStore$Audio$Genres;->getContentUriForAudioId(Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v1

    .line 293
    .local v1, uri:Landroid/net/Uri;
    iget-object v0, p0, Landroid/mtp/MtpPropertyGroup;->mProvider:Landroid/content/IContentProvider;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "name"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Landroid/content/IContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 296
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 297
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 305
    if-eqz v6, :cond_0

    .line 306
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .end local v1           #uri:Landroid/net/Uri;
    :cond_0
    :goto_0
    return-object v0

    .line 299
    .restart local v1       #uri:Landroid/net/Uri;
    :cond_1
    :try_start_1
    const-string v0, ""
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 305
    if-eqz v6, :cond_0

    .line 306
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 301
    .end local v1           #uri:Landroid/net/Uri;
    :catch_0
    move-exception v7

    .line 302
    .local v7, e:Ljava/lang/Exception;
    :try_start_2
    const-string v0, "MtpPropertyGroup"

    const-string/jumbo v2, "queryGenre exception"

    invoke-static {v0, v2, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 305
    if-eqz v6, :cond_2

    .line 306
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    move-object v0, v8

    goto :goto_0

    .line 305
    .end local v7           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    .line 306
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method private queryLong(ILjava/lang/String;)Ljava/lang/Long;
    .locals 9
    .parameter "id"
    .parameter "column"

    .prologue
    const/4 v7, 0x0

    .line 312
    const/4 v6, 0x0

    .line 315
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Landroid/mtp/MtpPropertyGroup;->mProvider:Landroid/content/IContentProvider;

    iget-object v1, p0, Landroid/mtp/MtpPropertyGroup;->mUri:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const-string v3, "_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v5

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Landroid/content/IContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 318
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 319
    new-instance v0, Ljava/lang/Long;

    const/4 v1, 0x1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/lang/Long;-><init>(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 323
    if-eqz v6, :cond_0

    .line 324
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 327
    :cond_0
    :goto_0
    return-object v0

    .line 323
    :cond_1
    if-eqz v6, :cond_2

    .line 324
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    :goto_1
    move-object v0, v7

    .line 327
    goto :goto_0

    .line 321
    :catch_0
    move-exception v0

    .line 323
    if-eqz v6, :cond_2

    .line 324
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 323
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    .line 324
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method private queryString(ILjava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter "id"
    .parameter "column"

    .prologue
    const/4 v8, 0x0

    .line 249
    const/4 v6, 0x0

    .line 252
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Landroid/mtp/MtpPropertyGroup;->mProvider:Landroid/content/IContentProvider;

    iget-object v1, p0, Landroid/mtp/MtpPropertyGroup;->mUri:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const-string v3, "_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v5

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Landroid/content/IContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 255
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 256
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 263
    if-eqz v6, :cond_0

    .line 264
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_0
    :goto_0
    return-object v0

    .line 258
    :cond_1
    :try_start_1
    const-string v0, ""
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 263
    if-eqz v6, :cond_0

    .line 264
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 260
    :catch_0
    move-exception v7

    .line 263
    .local v7, e:Ljava/lang/Exception;
    if-eqz v6, :cond_2

    .line 264
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    move-object v0, v8

    goto :goto_0

    .line 263
    .end local v7           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    .line 264
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method


# virtual methods
.method getPropertyList(III)Landroid/mtp/MtpPropertyList;
    .locals 32
    .parameter "handle"
    .parameter "format"
    .parameter "depth"

    .prologue
    .line 346
    const/4 v2, 0x1

    move/from16 v0, p3

    if-gt v0, v2, :cond_0

    const/4 v2, -0x1

    move/from16 v0, p3

    if-ne v0, v2, :cond_1

    .line 347
    :cond_0
    if-nez p1, :cond_4

    const/4 v2, -0x1

    move/from16 v0, p3

    if-ne v0, v2, :cond_4

    .line 349
    const/16 p1, -0x1

    .line 350
    const/16 p3, 0x0

    .line 360
    :cond_1
    if-nez p2, :cond_7

    .line 361
    const/4 v2, -0x1

    move/from16 v0, p1

    if-ne v0, v2, :cond_5

    .line 363
    const/4 v5, 0x0

    .line 364
    .local v5, where:Ljava/lang/String;
    const/4 v6, 0x0

    .line 388
    .local v6, whereArgs:[Ljava/lang/String;
    :goto_0
    const/16 v19, 0x0

    .line 391
    .local v19, c:Landroid/database/Cursor;
    if-gtz p3, :cond_2

    const/4 v2, -0x1

    move/from16 v0, p1

    if-eq v0, v2, :cond_2

    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/mtp/MtpPropertyGroup;->mColumns:[Ljava/lang/String;

    array-length v2, v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_a

    .line 392
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/mtp/MtpPropertyGroup;->mProvider:Landroid/content/IContentProvider;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/mtp/MtpPropertyGroup;->mUri:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/mtp/MtpPropertyGroup;->mColumns:[Ljava/lang/String;

    const/4 v7, 0x0

    invoke-interface/range {v2 .. v7}, Landroid/content/IContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v19

    .line 393
    if-nez v19, :cond_a

    .line 394
    new-instance v7, Landroid/mtp/MtpPropertyList;

    const/4 v2, 0x0

    const/16 v3, 0x2009

    invoke-direct {v7, v2, v3}, Landroid/mtp/MtpPropertyList;-><init>(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 539
    if-eqz v19, :cond_3

    .line 540
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    .end local v5           #where:Ljava/lang/String;
    .end local v6           #whereArgs:[Ljava/lang/String;
    .end local v19           #c:Landroid/database/Cursor;
    :cond_3
    :goto_1
    return-object v7

    .line 354
    :cond_4
    new-instance v7, Landroid/mtp/MtpPropertyList;

    const/4 v2, 0x0

    const v3, 0xa808

    invoke-direct {v7, v2, v3}, Landroid/mtp/MtpPropertyList;-><init>(II)V

    goto :goto_1

    .line 366
    :cond_5
    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v2

    .line 367
    .restart local v6       #whereArgs:[Ljava/lang/String;
    const/4 v2, 0x1

    move/from16 v0, p3

    if-ne v0, v2, :cond_6

    .line 368
    const-string/jumbo v5, "parent=?"

    .restart local v5       #where:Ljava/lang/String;
    goto :goto_0

    .line 370
    .end local v5           #where:Ljava/lang/String;
    :cond_6
    const-string v5, "_id=?"

    .restart local v5       #where:Ljava/lang/String;
    goto :goto_0

    .line 374
    .end local v5           #where:Ljava/lang/String;
    .end local v6           #whereArgs:[Ljava/lang/String;
    :cond_7
    const/4 v2, -0x1

    move/from16 v0, p1

    if-ne v0, v2, :cond_8

    .line 376
    const-string v5, "format=?"

    .line 377
    .restart local v5       #where:Ljava/lang/String;
    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v2

    .restart local v6       #whereArgs:[Ljava/lang/String;
    goto :goto_0

    .line 379
    .end local v5           #where:Ljava/lang/String;
    .end local v6           #whereArgs:[Ljava/lang/String;
    :cond_8
    const/4 v2, 0x2

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v2

    const/4 v2, 0x1

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v2

    .line 380
    .restart local v6       #whereArgs:[Ljava/lang/String;
    const/4 v2, 0x1

    move/from16 v0, p3

    if-ne v0, v2, :cond_9

    .line 381
    const-string/jumbo v5, "parent=? AND format=?"

    .restart local v5       #where:Ljava/lang/String;
    goto :goto_0

    .line 383
    .end local v5           #where:Ljava/lang/String;
    :cond_9
    const-string v5, "_id=? AND format=?"

    .restart local v5       #where:Ljava/lang/String;
    goto :goto_0

    .line 398
    .restart local v19       #c:Landroid/database/Cursor;
    :cond_a
    if-nez v19, :cond_c

    const/16 v21, 0x1

    .line 399
    .local v21, count:I
    :goto_2
    :try_start_1
    new-instance v7, Landroid/mtp/MtpPropertyList;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/mtp/MtpPropertyGroup;->mProperties:[Landroid/mtp/MtpPropertyGroup$Property;

    array-length v2, v2

    mul-int v2, v2, v21

    const/16 v3, 0x2001

    invoke-direct {v7, v2, v3}, Landroid/mtp/MtpPropertyList;-><init>(II)V

    .line 403
    .local v7, result:Landroid/mtp/MtpPropertyList;
    const/16 v28, 0x0

    .local v28, objectIndex:I
    :goto_3
    move/from16 v0, v28

    move/from16 v1, v21

    if-ge v0, v1, :cond_16

    .line 404
    if-eqz v19, :cond_b

    .line 405
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->moveToNext()Z

    .line 406
    const/4 v2, 0x0

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    long-to-int v0, v2

    move/from16 p1, v0

    .line 410
    :cond_b
    const/16 v30, 0x0

    .local v30, propertyIndex:I
    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/mtp/MtpPropertyGroup;->mProperties:[Landroid/mtp/MtpPropertyGroup$Property;

    array-length v2, v2

    move/from16 v0, v30

    if-ge v0, v2, :cond_15

    .line 411
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/mtp/MtpPropertyGroup;->mProperties:[Landroid/mtp/MtpPropertyGroup$Property;

    aget-object v29, v2, v30

    .line 412
    .local v29, property:Landroid/mtp/MtpPropertyGroup$Property;
    move-object/from16 v0, v29

    iget v9, v0, Landroid/mtp/MtpPropertyGroup$Property;->code:I

    .line 413
    .local v9, propertyCode:I
    move-object/from16 v0, v29

    iget v0, v0, Landroid/mtp/MtpPropertyGroup$Property;->column:I

    move/from16 v20, v0

    .line 416
    .local v20, column:I
    sparse-switch v9, :sswitch_data_0

    .line 522
    move-object/from16 v0, v29

    iget v2, v0, Landroid/mtp/MtpPropertyGroup$Property;->type:I

    const v3, 0xffff

    if-ne v2, v3, :cond_13

    .line 523
    invoke-interface/range {v19 .. v20}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move/from16 v0, p1

    invoke-virtual {v7, v0, v9, v2}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V

    .line 410
    :goto_5
    add-int/lit8 v30, v30, 0x1

    goto :goto_4

    .line 398
    .end local v7           #result:Landroid/mtp/MtpPropertyList;
    .end local v9           #propertyCode:I
    .end local v20           #column:I
    .end local v21           #count:I
    .end local v28           #objectIndex:I
    .end local v29           #property:Landroid/mtp/MtpPropertyGroup$Property;
    .end local v30           #propertyIndex:I
    :cond_c
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->getCount()I

    move-result v21

    goto :goto_2

    .line 419
    .restart local v7       #result:Landroid/mtp/MtpPropertyList;
    .restart local v9       #propertyCode:I
    .restart local v20       #column:I
    .restart local v21       #count:I
    .restart local v28       #objectIndex:I
    .restart local v29       #property:Landroid/mtp/MtpPropertyGroup$Property;
    .restart local v30       #propertyIndex:I
    :sswitch_0
    const/4 v10, 0x2

    const-wide/16 v11, 0x0

    move/from16 v8, p1

    invoke-virtual/range {v7 .. v12}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_5

    .line 536
    .end local v7           #result:Landroid/mtp/MtpPropertyList;
    .end local v9           #propertyCode:I
    .end local v20           #column:I
    .end local v21           #count:I
    .end local v28           #objectIndex:I
    .end local v29           #property:Landroid/mtp/MtpPropertyGroup$Property;
    .end local v30           #propertyIndex:I
    :catch_0
    move-exception v23

    .line 537
    .local v23, e:Landroid/os/RemoteException;
    :try_start_2
    new-instance v7, Landroid/mtp/MtpPropertyList;

    const/4 v2, 0x0

    const/16 v3, 0x2002

    invoke-direct {v7, v2, v3}, Landroid/mtp/MtpPropertyList;-><init>(II)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 539
    if-eqz v19, :cond_3

    .line 540
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    .line 424
    .end local v23           #e:Landroid/os/RemoteException;
    .restart local v7       #result:Landroid/mtp/MtpPropertyList;
    .restart local v9       #propertyCode:I
    .restart local v20       #column:I
    .restart local v21       #count:I
    .restart local v28       #objectIndex:I
    .restart local v29       #property:Landroid/mtp/MtpPropertyGroup$Property;
    .restart local v30       #propertyIndex:I
    :sswitch_1
    const/4 v10, 0x4

    :try_start_3
    invoke-interface/range {v19 .. v20}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    int-to-long v11, v2

    move/from16 v8, p1

    invoke-virtual/range {v7 .. v12}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_5

    .line 539
    .end local v7           #result:Landroid/mtp/MtpPropertyList;
    .end local v9           #propertyCode:I
    .end local v20           #column:I
    .end local v21           #count:I
    .end local v28           #objectIndex:I
    .end local v29           #property:Landroid/mtp/MtpPropertyGroup$Property;
    .end local v30           #propertyIndex:I
    :catchall_0
    move-exception v2

    if-eqz v19, :cond_d

    .line 540
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    :cond_d
    throw v2

    .line 436
    .restart local v7       #result:Landroid/mtp/MtpPropertyList;
    .restart local v9       #propertyCode:I
    .restart local v20       #column:I
    .restart local v21       #count:I
    .restart local v28       #objectIndex:I
    .restart local v29       #property:Landroid/mtp/MtpPropertyGroup$Property;
    .restart local v30       #propertyIndex:I
    :sswitch_2
    const/4 v10, 0x6

    :try_start_4
    invoke-interface/range {v19 .. v20}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    int-to-long v11, v2

    move/from16 v8, p1

    invoke-virtual/range {v7 .. v12}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V

    goto :goto_5

    .line 441
    :sswitch_3
    invoke-interface/range {v19 .. v20}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v24

    .line 442
    .local v24, encProfile:Ljava/lang/String;
    move/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v7, v0, v9, v1}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V

    goto :goto_5

    .line 446
    .end local v24           #encProfile:Ljava/lang/String;
    :sswitch_4
    const/4 v10, 0x4

    const-wide/16 v11, 0x0

    move/from16 v8, p1

    invoke-virtual/range {v7 .. v12}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V

    goto :goto_5

    .line 450
    :sswitch_5
    invoke-interface/range {v19 .. v20}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v31

    .line 451
    .local v31, value:Ljava/lang/String;
    if-eqz v31, :cond_e

    .line 452
    invoke-static/range {v31 .. v31}, Landroid/mtp/MtpPropertyGroup;->nameFromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move/from16 v0, p1

    invoke-virtual {v7, v0, v9, v2}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V

    goto :goto_5

    .line 454
    :cond_e
    const/16 v2, 0x2009

    invoke-virtual {v7, v2}, Landroid/mtp/MtpPropertyList;->setResult(I)V

    goto :goto_5

    .line 459
    .end local v31           #value:Ljava/lang/String;
    :sswitch_6
    invoke-interface/range {v19 .. v20}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v27

    .line 461
    .local v27, name:Ljava/lang/String;
    if-nez v27, :cond_f

    .line 462
    const-string/jumbo v2, "name"

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v2}, Landroid/mtp/MtpPropertyGroup;->queryString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 465
    :cond_f
    if-nez v27, :cond_10

    .line 466
    const-string v2, "_data"

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v2}, Landroid/mtp/MtpPropertyGroup;->queryString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 467
    if-eqz v27, :cond_10

    .line 468
    invoke-static/range {v27 .. v27}, Landroid/mtp/MtpPropertyGroup;->nameFromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 471
    :cond_10
    if-eqz v27, :cond_11

    .line 472
    move/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v7, v0, v9, v1}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V

    goto/16 :goto_5

    .line 474
    :cond_11
    const/16 v2, 0x2009

    invoke-virtual {v7, v2}, Landroid/mtp/MtpPropertyList;->setResult(I)V

    goto/16 :goto_5

    .line 480
    .end local v27           #name:Ljava/lang/String;
    :sswitch_7
    invoke-interface/range {v19 .. v20}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    int-to-long v2, v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Landroid/mtp/MtpPropertyGroup;->format_date_time(J)Ljava/lang/String;

    move-result-object v2

    move/from16 v0, p1

    invoke-virtual {v7, v0, v9, v2}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V

    goto/16 :goto_5

    .line 484
    :sswitch_8
    const-string v2, "%04d0101T000000"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-interface/range {v19 .. v20}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    .line 485
    .local v22, dateTime:Ljava/lang/String;
    move/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v7, v0, v9, v1}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V

    goto/16 :goto_5

    .line 489
    .end local v22           #dateTime:Ljava/lang/String;
    :sswitch_9
    invoke-interface/range {v19 .. v20}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 490
    .local v11, puid:J
    const/16 v2, 0x20

    shl-long/2addr v11, v2

    .line 491
    move/from16 v0, p1

    int-to-long v2, v0

    add-long/2addr v11, v2

    .line 492
    const/16 v10, 0xa

    move/from16 v8, p1

    invoke-virtual/range {v7 .. v12}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V

    goto/16 :goto_5

    .line 495
    .end local v11           #puid:J
    :sswitch_a
    const/16 v16, 0x4

    invoke-interface/range {v19 .. v20}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    rem-int/lit16 v2, v2, 0x3e8

    int-to-long v0, v2

    move-wide/from16 v17, v0

    move-object v13, v7

    move/from16 v14, p1

    move v15, v9

    invoke-virtual/range {v13 .. v18}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V

    goto/16 :goto_5

    .line 499
    :sswitch_b
    const-string v2, "artist"

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v2}, Landroid/mtp/MtpPropertyGroup;->queryAudio(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move/from16 v0, p1

    invoke-virtual {v7, v0, v9, v2}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V

    goto/16 :goto_5

    .line 503
    :sswitch_c
    const-string v2, "album"

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v2}, Landroid/mtp/MtpPropertyGroup;->queryAudio(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move/from16 v0, p1

    invoke-virtual {v7, v0, v9, v2}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V

    goto/16 :goto_5

    .line 507
    :sswitch_d
    invoke-direct/range {p0 .. p1}, Landroid/mtp/MtpPropertyGroup;->queryGenre(I)Ljava/lang/String;

    move-result-object v25

    .line 508
    .local v25, genre:Ljava/lang/String;
    if-eqz v25, :cond_12

    .line 509
    move/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v7, v0, v9, v1}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V

    goto/16 :goto_5

    .line 511
    :cond_12
    const/16 v2, 0x2009

    invoke-virtual {v7, v2}, Landroid/mtp/MtpPropertyList;->setResult(I)V

    goto/16 :goto_5

    .line 517
    .end local v25           #genre:Ljava/lang/String;
    :sswitch_e
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/mtp/MtpPropertyGroup;->mDatabase:Landroid/mtp/MtpDatabase;

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/mtp/MtpDatabase;->getHostIdsAsString(I)Ljava/lang/String;

    move-result-object v26

    .line 518
    .local v26, hostIds:Ljava/lang/String;
    const/16 v2, 0x4008

    move/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v7, v0, v9, v2, v1}, Landroid/mtp/MtpPropertyList;->append(IIILjava/lang/String;)V

    goto/16 :goto_5

    .line 524
    .end local v26           #hostIds:Ljava/lang/String;
    :cond_13
    move-object/from16 v0, v29

    iget v2, v0, Landroid/mtp/MtpPropertyGroup$Property;->type:I

    if-nez v2, :cond_14

    .line 525
    move-object/from16 v0, v29

    iget v0, v0, Landroid/mtp/MtpPropertyGroup$Property;->type:I

    move/from16 v16, v0

    const-wide/16 v17, 0x0

    move-object v13, v7

    move/from16 v14, p1

    move v15, v9

    invoke-virtual/range {v13 .. v18}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V

    goto/16 :goto_5

    .line 527
    :cond_14
    move-object/from16 v0, v29

    iget v0, v0, Landroid/mtp/MtpPropertyGroup$Property;->type:I

    move/from16 v16, v0

    invoke-interface/range {v19 .. v20}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v17

    move-object v13, v7

    move/from16 v14, p1

    move v15, v9

    invoke-virtual/range {v13 .. v18}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_5

    .line 403
    .end local v9           #propertyCode:I
    .end local v20           #column:I
    .end local v29           #property:Landroid/mtp/MtpPropertyGroup$Property;
    :cond_15
    add-int/lit8 v28, v28, 0x1

    goto/16 :goto_3

    .line 539
    .end local v30           #propertyIndex:I
    :cond_16
    if-eqz v19, :cond_3

    .line 540
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    .line 416
    nop

    :sswitch_data_0
    .sparse-switch
        0xd920 -> :sswitch_e
        0xdc03 -> :sswitch_4
        0xdc07 -> :sswitch_5
        0xdc09 -> :sswitch_7
        0xdc41 -> :sswitch_9
        0xdc44 -> :sswitch_6
        0xdc46 -> :sswitch_b
        0xdc4e -> :sswitch_7
        0xdc4f -> :sswitch_0
        0xdc87 -> :sswitch_2
        0xdc88 -> :sswitch_2
        0xdc8b -> :sswitch_a
        0xdc8c -> :sswitch_d
        0xdc99 -> :sswitch_8
        0xdc9a -> :sswitch_c
        0xde93 -> :sswitch_2
        0xde94 -> :sswitch_1
        0xde97 -> :sswitch_1
        0xde99 -> :sswitch_2
        0xde9a -> :sswitch_2
        0xde9b -> :sswitch_2
        0xde9c -> :sswitch_2
        0xde9d -> :sswitch_2
        0xdea1 -> :sswitch_3
    .end sparse-switch
.end method

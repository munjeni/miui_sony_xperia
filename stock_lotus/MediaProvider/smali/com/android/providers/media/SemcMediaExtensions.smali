.class public Lcom/android/providers/media/SemcMediaExtensions;
.super Ljava/lang/Object;
.source "SemcMediaExtensions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/media/SemcMediaExtensions$1;,
        Lcom/android/providers/media/SemcMediaExtensions$FieldType;
    }
.end annotation


# static fields
.field private static final URI_MATCHER:Landroid/content/UriMatcher;


# instance fields
.field private mCurrentExtVersion:I

.field private mExtFields:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/providers/media/SemcMediaExtensions$FieldType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 85
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/android/providers/media/SemcMediaExtensions;->URI_MATCHER:Landroid/content/UriMatcher;

    .line 93
    sget-object v0, Lcom/android/providers/media/SemcMediaExtensions;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v2, "*/extended_file"

    const/16 v3, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 94
    sget-object v0, Lcom/android/providers/media/SemcMediaExtensions;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v2, "*/extended_file/#"

    const/16 v3, 0x65

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 95
    sget-object v0, Lcom/android/providers/media/SemcMediaExtensions;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v2, "*/extended_object"

    const/16 v3, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 96
    sget-object v0, Lcom/android/providers/media/SemcMediaExtensions;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v2, "*/extended_object/#"

    const/16 v3, 0xc9

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 97
    sget-object v0, Lcom/android/providers/media/SemcMediaExtensions;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v2, "*/extended_version"

    const/16 v3, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 98
    sget-object v0, Lcom/android/providers/media/SemcMediaExtensions;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v2, "*/extended_audio/media"

    const/16 v3, 0x190

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 99
    sget-object v0, Lcom/android/providers/media/SemcMediaExtensions;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v2, "*/extended_audio/media/#"

    const/16 v3, 0x191

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 100
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/providers/media/SemcMediaExtensions;->mCurrentExtVersion:I

    .line 102
    return-void
.end method

.method private buildCreateQueryPart(Ljava/util/LinkedHashMap;)Ljava/lang/String;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/providers/media/SemcMediaExtensions$FieldType;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 214
    .local p1, extFields:Ljava/util/LinkedHashMap;,"Ljava/util/LinkedHashMap<Ljava/lang/String;Lcom/android/providers/media/SemcMediaExtensions$FieldType;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->size()I

    move-result v3

    mul-int/lit8 v3, v3, 0x4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 215
    .local v2, sb:Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 216
    .local v0, e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/providers/media/SemcMediaExtensions$FieldType;>;"
    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/providers/media/SemcMediaExtensions$FieldType;

    invoke-virtual {v3}, Lcom/android/providers/media/SemcMediaExtensions$FieldType;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 219
    .end local v0           #e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/providers/media/SemcMediaExtensions$FieldType;>;"
    :cond_0
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private buildUpdateQueryPart(Ljava/util/LinkedHashMap;)Ljava/lang/String;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/providers/media/SemcMediaExtensions$FieldType;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 223
    .local p1, extFields:Ljava/util/LinkedHashMap;,"Ljava/util/LinkedHashMap<Ljava/lang/String;Lcom/android/providers/media/SemcMediaExtensions$FieldType;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->size()I

    move-result v3

    mul-int/lit8 v3, v3, 0x4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 224
    .local v2, sb:Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 225
    .local v1, name:Ljava/lang/String;
    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "=NEW."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 228
    .end local v1           #name:Ljava/lang/String;
    :cond_0
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private createUpdateTrigger(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4
    .parameter "db"

    .prologue
    .line 193
    const-string v2, "files_ext"

    const-string v3, "files_id"

    invoke-static {p1, v2, v3}, Lcom/android/providers/media/SemcMediaExtensions;->getTableFields(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object v0

    .line 195
    .local v0, extFilesFields:Ljava/util/LinkedHashMap;,"Ljava/util/LinkedHashMap<Ljava/lang/String;Lcom/android/providers/media/SemcMediaExtensions$FieldType;>;"
    const-string v2, "files"

    const-string v3, "_id"

    invoke-static {p1, v2, v3}, Lcom/android/providers/media/SemcMediaExtensions;->getTableFields(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object v1

    .line 198
    .local v1, filesFields:Ljava/util/LinkedHashMap;,"Ljava/util/LinkedHashMap<Ljava/lang/String;Lcom/android/providers/media/SemcMediaExtensions$FieldType;>;"
    const-string v2, "DROP TRIGGER IF EXISTS files_ext_instead_of_update;"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 199
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CREATE TRIGGER IF NOT EXISTS files_ext_instead_of_update INSTEAD OF UPDATE ON files_with_ext BEGIN UPDATE files SET "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, v1}, Lcom/android/providers/media/SemcMediaExtensions;->buildUpdateQueryPart(Ljava/util/LinkedHashMap;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " WHERE "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_id=OLD._id;"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "UPDATE files_ext SET "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, v0}, Lcom/android/providers/media/SemcMediaExtensions;->buildUpdateQueryPart(Ljava/util/LinkedHashMap;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " WHERE "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "files_id=OLD._id;"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "END;"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 211
    return-void
.end method

.method static getAffectedCount(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)I
    .locals 10
    .parameter "table"
    .parameter "where"
    .parameter "whereArgs"
    .parameter "db"

    .prologue
    const/4 v5, 0x0

    const/4 v9, 0x0

    .line 590
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "count(_id)"

    aput-object v0, v2, v9

    move-object v0, p3

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 591
    .local v8, c:Landroid/database/Cursor;
    if-eqz v8, :cond_1

    .line 593
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 594
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 597
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 600
    :goto_0
    return v0

    .line 597
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_1
    move v0, v9

    .line 600
    goto :goto_0

    .line 597
    :catchall_0
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private getExtVersion(Landroid/database/sqlite/SQLiteDatabase;)I
    .locals 4
    .parameter "db"

    .prologue
    .line 155
    iget v2, p0, Lcom/android/providers/media/SemcMediaExtensions;->mCurrentExtVersion:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 157
    const/4 v0, 0x0

    .line 160
    .local v0, c:Landroid/database/Cursor;
    :try_start_0
    const-string v2, "SELECT version FROM semc_metadata"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 161
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 162
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, p0, Lcom/android/providers/media/SemcMediaExtensions;->mCurrentExtVersion:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 168
    :cond_0
    if-eqz v0, :cond_1

    .line 169
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 174
    .end local v0           #c:Landroid/database/Cursor;
    :cond_1
    :goto_0
    iget v2, p0, Lcom/android/providers/media/SemcMediaExtensions;->mCurrentExtVersion:I

    return v2

    .line 164
    .restart local v0       #c:Landroid/database/Cursor;
    :catch_0
    move-exception v1

    .line 166
    .local v1, se:Landroid/database/SQLException;
    const/4 v2, 0x0

    :try_start_1
    iput v2, p0, Lcom/android/providers/media/SemcMediaExtensions;->mCurrentExtVersion:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 168
    if-eqz v0, :cond_1

    .line 169
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 168
    .end local v1           #se:Landroid/database/SQLException;
    :catchall_0
    move-exception v2

    if-eqz v0, :cond_2

    .line 169
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v2
.end method

.method private static getExtendedUriFromOriginal(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 5
    .parameter "uri"

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x1

    .line 637
    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    .line 638
    .local v0, segments:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v3, 0x2

    if-ge v1, v3, :cond_1

    :cond_0
    move-object v1, v2

    .line 648
    :goto_0
    return-object v1

    .line 640
    :cond_1
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v3, "file"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 641
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "file"

    const-string v3, "extended_file"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_0

    .line 642
    :cond_2
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v3, "object"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 643
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "object"

    const-string v3, "extended_object"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_0

    .line 644
    :cond_3
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v3, "audio"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 645
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "audio"

    const-string v3, "extended_audio"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_0

    :cond_4
    move-object v1, v2

    .line 648
    goto :goto_0
.end method

.method static getOriginalUriFromExtended(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 3
    .parameter "uri"

    .prologue
    .line 610
    sget-object v0, Lcom/android/providers/media/SemcMediaExtensions;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v0, p0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 627
    :goto_0
    return-object p0

    .line 613
    :sswitch_0
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "extended_file"

    const-string v2, "file"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    .line 614
    goto :goto_0

    .line 618
    :sswitch_1
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "extended_object"

    const-string v2, "object"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    .line 619
    goto :goto_0

    .line 623
    :sswitch_2
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "extended_audio"

    const-string v2, "audio"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    goto :goto_0

    .line 610
    nop

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0x65 -> :sswitch_0
        0xc8 -> :sswitch_1
        0xc9 -> :sswitch_1
        0x190 -> :sswitch_2
        0x191 -> :sswitch_2
    .end sparse-switch
.end method

.method static getTableAndWhere(Landroid/net/Uri;Ljava/lang/String;Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;)Ljava/lang/String;
    .locals 4
    .parameter "uri"
    .parameter "userWhere"
    .parameter "out"

    .prologue
    .line 562
    const/4 v0, 0x0

    .line 563
    .local v0, where:Ljava/lang/String;
    invoke-static {p0}, Lcom/android/providers/media/SemcMediaExtensions;->getOriginalUriFromExtended(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p2, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;->originalUri:Landroid/net/Uri;

    .line 564
    sget-object v1, Lcom/android/providers/media/SemcMediaExtensions;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v1, p0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 579
    const/4 v1, 0x0

    iput-object v1, p2, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;->originalUri:Landroid/net/Uri;

    .line 583
    :goto_0
    return-object v0

    .line 568
    :sswitch_0
    const-string v1, "files_with_ext"

    iput-object v1, p2, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;->table:Ljava/lang/String;

    goto :goto_0

    .line 574
    :sswitch_1
    const-string v1, "files_with_ext"

    iput-object v1, p2, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;->table:Ljava/lang/String;

    .line 575
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    const/4 v3, 0x2

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 576
    goto :goto_0

    .line 564
    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0x65 -> :sswitch_1
        0xc8 -> :sswitch_0
        0xc9 -> :sswitch_1
        0x190 -> :sswitch_0
        0x191 -> :sswitch_1
    .end sparse-switch
.end method

.method private static getTableFields(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedHashMap;
    .locals 5
    .parameter "db"
    .parameter "table"
    .parameter "skipField"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/providers/media/SemcMediaExtensions$FieldType;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 679
    const/4 v0, 0x0

    .line 681
    .local v0, c:Landroid/database/Cursor;
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PRAGMA table_info("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 682
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_2

    .line 696
    :cond_0
    if-eqz v0, :cond_1

    .line 697
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1
    :goto_0
    return-object v2

    .line 685
    :cond_2
    :try_start_1
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 687
    .local v2, tableFields:Ljava/util/LinkedHashMap;,"Ljava/util/LinkedHashMap<Ljava/lang/String;Lcom/android/providers/media/SemcMediaExtensions$FieldType;>;"
    :cond_3
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 688
    const/4 v3, 0x1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 689
    .local v1, fieldName:Ljava/lang/String;
    if-eqz p2, :cond_4

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 690
    :cond_4
    const/4 v3, 0x2

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/providers/media/SemcMediaExtensions$FieldType;->valueOf(Ljava/lang/String;)Lcom/android/providers/media/SemcMediaExtensions$FieldType;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 696
    .end local v1           #fieldName:Ljava/lang/String;
    .end local v2           #tableFields:Ljava/util/LinkedHashMap;,"Ljava/util/LinkedHashMap<Ljava/lang/String;Lcom/android/providers/media/SemcMediaExtensions$FieldType;>;"
    :catchall_0
    move-exception v3

    if-eqz v0, :cond_5

    .line 697
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v3

    .line 696
    .restart local v2       #tableFields:Ljava/util/LinkedHashMap;,"Ljava/util/LinkedHashMap<Ljava/lang/String;Lcom/android/providers/media/SemcMediaExtensions$FieldType;>;"
    :cond_6
    if-eqz v0, :cond_1

    .line 697
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method private hasExtendedFields(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)Z
    .locals 3
    .parameter "db"
    .parameter "values"

    .prologue
    .line 431
    invoke-direct {p0, p1}, Lcom/android/providers/media/SemcMediaExtensions;->initExtFields(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 432
    invoke-virtual {p2}, Landroid/content/ContentValues;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 433
    .local v0, fieldName:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/providers/media/SemcMediaExtensions;->mExtFields:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v0}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 434
    const/4 v2, 0x1

    .line 438
    .end local v0           #fieldName:Ljava/lang/String;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private hasOriginalFields(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)Z
    .locals 3
    .parameter "db"
    .parameter "values"

    .prologue
    .line 442
    invoke-direct {p0, p1}, Lcom/android/providers/media/SemcMediaExtensions;->initExtFields(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 443
    invoke-virtual {p2}, Landroid/content/ContentValues;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 444
    .local v0, fieldName:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/providers/media/SemcMediaExtensions;->mExtFields:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v0}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 445
    const/4 v2, 0x1

    .line 449
    .end local v0           #fieldName:Ljava/lang/String;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private declared-synchronized initExtFields(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .parameter "db"

    .prologue
    .line 657
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/providers/media/SemcMediaExtensions;->mExtFields:Ljava/util/LinkedHashMap;

    if-nez v0, :cond_1

    .line 658
    const-string v0, "files_ext"

    const-string v1, "files_id"

    invoke-static {p1, v0, v1}, Lcom/android/providers/media/SemcMediaExtensions;->getTableFields(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/media/SemcMediaExtensions;->mExtFields:Ljava/util/LinkedHashMap;

    .line 659
    iget-object v0, p0, Lcom/android/providers/media/SemcMediaExtensions;->mExtFields:Ljava/util/LinkedHashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/providers/media/SemcMediaExtensions;->mExtFields:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 660
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Extensions missing"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 657
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 663
    :cond_1
    monitor-exit p0

    return-void
.end method

.method static notifyOnInsert(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 3
    .parameter "context"
    .parameter "originalUri"

    .prologue
    const/4 v2, 0x0

    .line 459
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, p1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 461
    invoke-static {p1}, Lcom/android/providers/media/SemcMediaExtensions;->getExtendedUriFromOriginal(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    .line 462
    .local v0, extendedUri:Landroid/net/Uri;
    if-eqz v0, :cond_0

    .line 464
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 466
    :cond_0
    return-void
.end method

.method static query(Landroid/net/Uri;Landroid/database/sqlite/SQLiteQueryBuilder;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/util/List;)Z
    .locals 5
    .parameter "uri"
    .parameter "qb"
    .parameter "projectionIn"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "keywords"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Landroid/database/sqlite/SQLiteQueryBuilder;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p6, prependArgs:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 499
    sget-object v3, Lcom/android/providers/media/SemcMediaExtensions;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v3, p0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 550
    :goto_0
    return v1

    .line 502
    :sswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    const/4 v4, 0x2

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 506
    :sswitch_1
    const-string v1, "files_with_ext"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 507
    const-string v1, "distinct"

    invoke-virtual {p0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 508
    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setDistinct(Z)V

    :cond_0
    :goto_1
    move v1, v2

    .line 550
    goto :goto_0

    .line 513
    :sswitch_2
    const-string v1, "semc_metadata_version"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto :goto_1

    .line 519
    :sswitch_3
    if-eqz p2, :cond_2

    array-length v3, p2

    if-ne v3, v2, :cond_2

    if-nez p4, :cond_2

    if-eqz p3, :cond_1

    const-string v3, "is_music=1"

    invoke-virtual {p3, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "is_podcast=1"

    invoke-virtual {p3, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    aget-object v1, p2, v1

    const-string v3, "count(*)"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz p5, :cond_2

    .line 525
    const-string v1, "audio_meta"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto :goto_1

    .line 527
    :cond_2
    const-string v1, "audio_ext"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 528
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    if-eqz p5, :cond_0

    array-length v1, p5

    if-ge v0, v1, :cond_0

    .line 529
    if-lez v0, :cond_3

    .line 530
    const-string v1, " AND "

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 532
    :cond_3
    const-string v1, "artist_key||album_key||title_key LIKE ? ESCAPE \'\\\'"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 535
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "%"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v3, p5, v0

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "%"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 528
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 541
    .end local v0           #i:I
    :sswitch_4
    const-string v1, "audio_ext"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 542
    const-string v1, "_id=?"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 543
    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    const/4 v3, 0x3

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 499
    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_1
        0x65 -> :sswitch_0
        0xc8 -> :sswitch_1
        0xc9 -> :sswitch_0
        0x12c -> :sswitch_2
        0x190 -> :sswitch_3
        0x191 -> :sswitch_4
    .end sparse-switch
.end method

.method private setSemcVersion(Landroid/database/sqlite/SQLiteDatabase;I)V
    .locals 3
    .parameter "db"
    .parameter "newVersion"

    .prologue
    .line 178
    invoke-direct {p0, p1}, Lcom/android/providers/media/SemcMediaExtensions;->getExtVersion(Landroid/database/sqlite/SQLiteDatabase;)I

    move-result v0

    .line 180
    .local v0, oldVersion:I
    if-nez v0, :cond_0

    .line 181
    const-string v1, "CREATE TABLE semc_metadata(version INT);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 183
    const-string v1, "CREATE VIEW semc_metadata_version AS SELECT version FROM semc_metadata;"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 185
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "INSERT INTO semc_metadata(version) VALUES("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ");"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 189
    :goto_0
    const/16 v1, 0x66

    iput v1, p0, Lcom/android/providers/media/SemcMediaExtensions;->mCurrentExtVersion:I

    .line 190
    return-void

    .line 187
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UPDATE semc_metadata SET version="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private upgradeExtensions(Landroid/database/sqlite/SQLiteDatabase;II)Z
    .locals 4
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    const/4 v3, 0x1

    .line 234
    if-le p2, p3, :cond_0

    .line 235
    const-string v1, "SemcMediaExtensions"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Illegal update request: can\'t downgrade from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". Did you forget to wipe data?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 241
    :cond_0
    if-ge p2, v3, :cond_1

    .line 245
    const-string v1, "DROP TABLE IF EXISTS files_ext"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 246
    const-string v1, "DROP VIEW IF EXISTS files_with_ext"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 247
    const-string v1, "DROP TRIGGER IF EXISTS files_after_insert"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 248
    const-string v1, "DROP TRIGGER IF EXISTS files_after_delete"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 249
    const-string v1, "DROP TRIGGER IF EXISTS files_with_ext_instead_of_delete"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 251
    const-string v1, "CREATE TABLE files_ext (files_id INTEGER PRIMARY KEY AUTOINCREMENT,audiosamplerate INTEGER,audionumchannels INTEGER,audiowavecodec INTEGER,audiobitrate INTEGER,videoscantype INTEGER,videofourcccodec INTEGER,videobitrate INTEGER,videoframesperthousandseconds INTEGER,videoencodingprofile TEXT,userrating INTEGER);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 265
    const-string v1, "CREATE VIEW files_with_ext AS SELECT * FROM files LEFT OUTER JOIN files_ext ON files._id=files_ext.files_id;"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 271
    const-string v1, "CREATE TRIGGER files_after_insert AFTER INSERT ON files BEGIN INSERT OR IGNORE INTO files_ext (files_id) VALUES ((SELECT last_insert_rowid()));END;"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 278
    const-string v1, "CREATE TRIGGER files_after_delete AFTER DELETE ON files BEGIN DELETE FROM files_ext WHERE files_id = old._id;END;"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 285
    invoke-direct {p0, p1}, Lcom/android/providers/media/SemcMediaExtensions;->createUpdateTrigger(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 288
    const-string v1, "CREATE TRIGGER files_with_ext_instead_of_delete INSTEAD OF DELETE ON files_with_ext BEGIN DELETE FROM files WHERE _id=OLD._id;END;"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 296
    :cond_1
    const/16 v1, 0x64

    if-ge p2, v1, :cond_2

    .line 299
    const-string v1, "ALTER TABLE files_ext ADD COLUMN title_yomi TEXT;"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 301
    const-string v1, "ALTER TABLE files_ext ADD COLUMN mpopath TEXT;"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 304
    invoke-direct {p0, p1}, Lcom/android/providers/media/SemcMediaExtensions;->createUpdateTrigger(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 312
    :cond_2
    const/16 v1, 0x65

    if-ge p2, v1, :cond_3

    .line 315
    const-string v1, "files_ext"

    const-string v2, "files_id"

    invoke-static {p1, v1, v2}, Lcom/android/providers/media/SemcMediaExtensions;->getTableFields(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object v0

    .line 317
    .local v0, extFilesFields:Ljava/util/LinkedHashMap;,"Ljava/util/LinkedHashMap<Ljava/lang/String;Lcom/android/providers/media/SemcMediaExtensions$FieldType;>;"
    const-string v1, "ALTER TABLE files_ext RENAME TO old_files_ext"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 318
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CREATE TABLE files_ext (files_id INTEGER PRIMARY KEY AUTOINCREMENT,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, v0}, Lcom/android/providers/media/SemcMediaExtensions;->buildCreateQueryPart(Ljava/util/LinkedHashMap;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ");"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 322
    const-string v1, "INSERT INTO files_ext SELECT * FROM old_files_ext"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 323
    const-string v1, "DROP TABLE old_files_ext"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 327
    .end local v0           #extFilesFields:Ljava/util/LinkedHashMap;,"Ljava/util/LinkedHashMap<Ljava/lang/String;Lcom/android/providers/media/SemcMediaExtensions$FieldType;>;"
    :cond_3
    const/16 v1, 0x66

    if-ge p2, v1, :cond_4

    .line 328
    const-string v1, "DROP VIEW IF EXISTS audio_ext"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 329
    const-string v1, "DROP TRIGGER IF EXISTS audio_ext_delete"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 330
    const-string v1, "CREATE VIEW audio_ext AS SELECT audio.*,audiosamplerate,audionumchannels,audiowavecodec,audiobitrate,userrating,title_yomi FROM audio LEFT OUTER JOIN files_ext ON audio._id = files_ext.files_id;"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 338
    const-string v1, "CREATE TRIGGER IF NOT EXISTS audio_ext_delete INSTEAD OF DELETE ON audio_ext BEGIN DELETE from audio where _id=old._id;END"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 347
    :cond_4
    return v3
.end method


# virtual methods
.method checkExtensions(Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 5
    .parameter "db"

    .prologue
    const/16 v4, 0x66

    .line 126
    const/4 v0, 0x0

    .line 127
    .local v0, createdOrUpdated:Z
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->isReadOnly()Z

    move-result v3

    if-nez v3, :cond_2

    .line 128
    invoke-direct {p0, p1}, Lcom/android/providers/media/SemcMediaExtensions;->getExtVersion(Landroid/database/sqlite/SQLiteDatabase;)I

    move-result v2

    .line 130
    .local v2, extVersion:I
    if-eq v2, v4, :cond_0

    .line 132
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 134
    const/16 v3, 0x66

    :try_start_0
    invoke-direct {p0, p1, v2, v3}, Lcom/android/providers/media/SemcMediaExtensions;->upgradeExtensions(Landroid/database/sqlite/SQLiteDatabase;II)Z

    move-result v0

    .line 135
    if-eqz v0, :cond_1

    .line 136
    const/16 v3, 0x66

    invoke-direct {p0, p1, v3}, Lcom/android/providers/media/SemcMediaExtensions;->setSemcVersion(Landroid/database/sqlite/SQLiteDatabase;I)V

    .line 137
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    :goto_0
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 151
    .end local v2           #extVersion:I
    :cond_0
    :goto_1
    return v0

    .line 139
    .restart local v2       #extVersion:I
    :cond_1
    :try_start_1
    const-string v3, "SemcMediaExtensions"

    const-string v4, "checkExtensions: Failed to create or update!"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 141
    :catch_0
    move-exception v1

    .line 142
    .local v1, e:Landroid/database/SQLException;
    :try_start_2
    const-string v3, "SemcMediaExtensions"

    const-string v4, "checkExtensions: Failed to check!"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 144
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_1

    .end local v1           #e:Landroid/database/SQLException;
    :catchall_0
    move-exception v3

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3

    .line 148
    .end local v2           #extVersion:I
    :cond_2
    const-string v3, "SemcMediaExtensions"

    const-string v4, "checkExtensions: db is read-only!"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method insert(Lcom/android/providers/media/MediaProvider;Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 14
    .parameter "originalProvider"
    .parameter "db"
    .parameter "uri"
    .parameter "initialValues"

    .prologue
    .line 361
    sget-object v9, Lcom/android/providers/media/SemcMediaExtensions;->URI_MATCHER:Landroid/content/UriMatcher;

    move-object/from16 v0, p3

    invoke-virtual {v9, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v3

    .line 362
    .local v3, match:I
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 363
    .local v8, values:Landroid/content/ContentValues;
    const/4 v4, 0x0

    .line 365
    .local v4, newExtendedUri:Landroid/net/Uri;
    move-object/from16 v0, p2

    invoke-direct {p0, v0}, Lcom/android/providers/media/SemcMediaExtensions;->initExtFields(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 368
    sparse-switch v3, :sswitch_data_0

    .line 399
    new-instance v9, Ljava/lang/UnsupportedOperationException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Invalid URI "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p3

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 372
    :sswitch_0
    invoke-virtual/range {p4 .. p4}, Landroid/content/ContentValues;->valueSet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 373
    .local v2, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;>;"
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 374
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 375
    .local v1, e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v9, p0, Lcom/android/providers/media/SemcMediaExtensions;->mExtFields:Ljava/util/LinkedHashMap;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/providers/media/SemcMediaExtensions$FieldType;

    .line 376
    .local v7, type:Lcom/android/providers/media/SemcMediaExtensions$FieldType;
    if-eqz v7, :cond_0

    .line 377
    sget-object v9, Lcom/android/providers/media/SemcMediaExtensions$1;->$SwitchMap$com$android$providers$media$SemcMediaExtensions$FieldType:[I

    invoke-virtual {v7}, Lcom/android/providers/media/SemcMediaExtensions$FieldType;->ordinal()I

    move-result v10

    aget v9, v9, v10

    packed-switch v9, :pswitch_data_0

    .line 387
    new-instance v10, Ljava/lang/UnsupportedOperationException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unsupported column type for "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v10, v9}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 379
    :pswitch_0
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 390
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 383
    :pswitch_1
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 402
    .end local v1           #e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v7           #type:Lcom/android/providers/media/SemcMediaExtensions$FieldType;
    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 404
    :try_start_0
    invoke-static/range {p3 .. p3}, Lcom/android/providers/media/SemcMediaExtensions;->getOriginalUriFromExtended(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v9

    move-object/from16 v0, p4

    invoke-virtual {p1, v9, v0}, Lcom/android/providers/media/MediaProvider;->insertInternal(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v5

    .line 406
    .local v5, newOriginalUri:Landroid/net/Uri;
    if-eqz v5, :cond_3

    .line 412
    invoke-virtual {v8}, Landroid/content/ContentValues;->size()I

    move-result v9

    if-lez v9, :cond_2

    .line 413
    const-string v9, "files_ext"

    const-string v10, "files_id=?"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    invoke-virtual {v5}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    move-object/from16 v0, p2

    invoke-virtual {v0, v9, v8, v10, v11}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    .line 415
    .local v6, rows:I
    const/4 v9, 0x1

    if-eq v6, v9, :cond_2

    .line 416
    const-string v9, "SemcMediaExtensions"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "insert: bad update, affected rows: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 417
    const/4 v9, 0x0

    .line 424
    invoke-virtual/range {p2 .. p2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 427
    .end local v6           #rows:I
    :goto_2
    return-object v9

    .line 420
    :cond_2
    :try_start_1
    invoke-static {v5}, Lcom/android/providers/media/SemcMediaExtensions;->getExtendedUriFromOriginal(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v4

    .line 421
    invoke-virtual/range {p2 .. p2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 424
    :cond_3
    invoke-virtual/range {p2 .. p2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    move-object v9, v4

    .line 427
    goto :goto_2

    .line 424
    .end local v5           #newOriginalUri:Landroid/net/Uri;
    :catchall_0
    move-exception v9

    invoke-virtual/range {p2 .. p2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v9

    .line 368
    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0xc8 -> :sswitch_0
        0x190 -> :sswitch_0
    .end sparse-switch

    .line 377
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method notifyOnUpdate(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;Landroid/content/ContentValues;)V
    .locals 3
    .parameter "context"
    .parameter "db"
    .parameter "originalUri"
    .parameter "values"

    .prologue
    const/4 v2, 0x0

    .line 478
    invoke-static {p3}, Lcom/android/providers/media/SemcMediaExtensions;->getExtendedUriFromOriginal(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    .line 479
    .local v0, extendedUri:Landroid/net/Uri;
    if-nez v0, :cond_1

    .line 480
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, p3, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 489
    :cond_0
    :goto_0
    return-void

    .line 482
    :cond_1
    invoke-direct {p0, p2, p4}, Lcom/android/providers/media/SemcMediaExtensions;->hasOriginalFields(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 483
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, p3, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 485
    :cond_2
    invoke-direct {p0, p2, p4}, Lcom/android/providers/media/SemcMediaExtensions;->hasExtendedFields(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 486
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto :goto_0
.end method

.method postUpdate(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0
    .parameter "db"
    .parameter "fromVersion"
    .parameter "toVersion"

    .prologue
    .line 116
    return-void
.end method

.method preUpdate(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0
    .parameter "db"
    .parameter "fromVersion"
    .parameter "toVersion"

    .prologue
    .line 112
    return-void
.end method

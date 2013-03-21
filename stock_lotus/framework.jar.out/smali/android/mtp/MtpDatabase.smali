.class public Landroid/mtp/MtpDatabase;
.super Ljava/lang/Object;
.source "MtpDatabase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/mtp/MtpDatabase$1;,
        Landroid/mtp/MtpDatabase$TrustedHostInfo;,
        Landroid/mtp/MtpDatabase$PropValueType;
    }
.end annotation


# static fields
.field static final ALL_PROPERTIES:[I = null

.field static final AUDIO_ALBUM_PROPERTIES:[I = null

.field static final AUDIO_PROPERTIES:[I = null

.field private static final CRYPTO_KEY_LEN:I = 0x18

.field private static final DEVICEUUID_PREFIX:Ljava/lang/String; = "00000000-0000-0000-FFFF-"

.field private static final DEVICE_PROPERTIES_DATABASE_VERSION:I = 0x1

.field private static final DEVICE_PROP_VALUE_SIZE_LIMIT:I = 0x20000

.field static final FILE_PROPERTIES:[I = null

.field private static final FORMAT_PARENT_WHERE:Ljava/lang/String; = "format=? AND parent=?"

.field private static final FORMAT_WHERE:Ljava/lang/String; = "format=?"

.field private static final HOST_PREFS:Ljava/lang/String; = "HostIds"

.field private static final ID_NAME_PATH_PROJECTION:[Ljava/lang/String; = null

.field private static final ID_PROJECTION:[Ljava/lang/String; = null

.field private static final ID_WHERE:Ljava/lang/String; = "_id=?"

.field static final IMAGE_PROPERTIES:[I = null

.field private static final MAC_ADDRESS_TOKEN_COUNT:I = 0x6

.field private static final NAME_PATH_PROJECTION:[Ljava/lang/String; = null

.field static final NETWORK_ASSOCIATION_PROPERTIES:[I = null

.field private static final OBJECT_INFO_PROJECTION:[Ljava/lang/String; = null

.field private static final PARENT_WHERE:Ljava/lang/String; = "parent=?"

.field private static final PATH_LIKE_FORMAT_NOT_WHERE:Ljava/lang/String; = "_data LIKE ? AND format <> ?"

.field private static final PATH_PROJECTION:[Ljava/lang/String; = null

.field private static final PATH_SIZE_FORMAT_PROJECTION:[Ljava/lang/String; = null

.field private static final PATH_WHERE:Ljava/lang/String; = "_data=?"

.field private static final STORAGE_FORMAT_PARENT_WHERE:Ljava/lang/String; = "storage_id=? AND format=? AND parent=?"

.field private static final STORAGE_FORMAT_WHERE:Ljava/lang/String; = "storage_id=? AND format=?"

.field private static final STORAGE_PARENT_WHERE:Ljava/lang/String; = "storage_id=? AND parent=?"

.field private static final STORAGE_WHERE:Ljava/lang/String; = "storage_id=?"

.field private static final TAG:Ljava/lang/String; = "MtpDatabase"

.field static final VIDEO_PROPERTIES:[I


# instance fields
.field private mBatteryLevel:I

.field private mBatteryScale:I

.field private final mContext:Landroid/content/Context;

.field private mDatabaseModified:Z

.field private mDeviceProperties:Landroid/content/SharedPreferences;

.field private final mMediaProvider:Landroid/content/IContentProvider;

.field private final mMediaScanner:Landroid/media/MediaScanner;

.field private final mMediaStoragePath:Ljava/lang/String;

.field private mNativeContext:I

.field private final mObjectsUri:Landroid/net/Uri;

.field private final mPropertyGroupsByFormat:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/mtp/MtpPropertyGroup;",
            ">;"
        }
    .end annotation
.end field

.field private final mPropertyGroupsByProperty:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/mtp/MtpPropertyGroup;",
            ">;"
        }
    .end annotation
.end field

.field private mReferencesTable:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mStorageMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/mtp/MtpStorage;",
            ">;"
        }
    .end annotation
.end field

.field private final mSubDirectories:[Ljava/lang/String;

.field private mSubDirectoriesWhere:Ljava/lang/String;

.field private mSubDirectoriesWhereArgs:[Ljava/lang/String;

.field private final mVolumeName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v2, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 121
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    sput-object v0, Landroid/mtp/MtpDatabase;->ID_PROJECTION:[Ljava/lang/String;

    .line 124
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "_data"

    aput-object v1, v0, v4

    sput-object v0, Landroid/mtp/MtpDatabase;->PATH_PROJECTION:[Ljava/lang/String;

    .line 128
    new-array v0, v2, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "_data"

    aput-object v1, v0, v4

    const-string v1, "_size"

    aput-object v1, v0, v5

    const-string v1, "format"

    aput-object v1, v0, v6

    sput-object v0, Landroid/mtp/MtpDatabase;->PATH_SIZE_FORMAT_PROJECTION:[Ljava/lang/String;

    .line 134
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string/jumbo v1, "storage_id"

    aput-object v1, v0, v4

    const-string v1, "format"

    aput-object v1, v0, v5

    const-string/jumbo v1, "parent"

    aput-object v1, v0, v6

    const-string v1, "_data"

    aput-object v1, v0, v2

    const/4 v1, 0x5

    const-string v2, "_size"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "date_modified"

    aput-object v2, v0, v1

    sput-object v0, Landroid/mtp/MtpDatabase;->OBJECT_INFO_PROJECTION:[Ljava/lang/String;

    .line 143
    new-array v0, v5, [Ljava/lang/String;

    const-string/jumbo v1, "title"

    aput-object v1, v0, v3

    const-string v1, "_data"

    aput-object v1, v0, v4

    sput-object v0, Landroid/mtp/MtpDatabase;->NAME_PATH_PROJECTION:[Ljava/lang/String;

    .line 147
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string/jumbo v1, "title"

    aput-object v1, v0, v4

    const-string v1, "_data"

    aput-object v1, v0, v5

    sput-object v0, Landroid/mtp/MtpDatabase;->ID_NAME_PATH_PROJECTION:[Ljava/lang/String;

    .line 174
    const-string/jumbo v0, "media_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 617
    const/16 v0, 0xb

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/mtp/MtpDatabase;->FILE_PROPERTIES:[I

    .line 633
    const/16 v0, 0x18

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Landroid/mtp/MtpDatabase;->AUDIO_PROPERTIES:[I

    .line 663
    const/16 v0, 0x1c

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Landroid/mtp/MtpDatabase;->VIDEO_PROPERTIES:[I

    .line 699
    const/16 v0, 0xf

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    sput-object v0, Landroid/mtp/MtpDatabase;->IMAGE_PROPERTIES:[I

    .line 720
    const/16 v0, 0x26

    new-array v0, v0, [I

    fill-array-data v0, :array_4

    sput-object v0, Landroid/mtp/MtpDatabase;->ALL_PROPERTIES:[I

    .line 772
    const/16 v0, 0xd

    new-array v0, v0, [I

    fill-array-data v0, :array_5

    sput-object v0, Landroid/mtp/MtpDatabase;->AUDIO_ALBUM_PROPERTIES:[I

    .line 791
    const/16 v0, 0xd

    new-array v0, v0, [I

    fill-array-data v0, :array_6

    sput-object v0, Landroid/mtp/MtpDatabase;->NETWORK_ASSOCIATION_PROPERTIES:[I

    return-void

    .line 617
    :array_0
    .array-data 0x4
        0x1t 0xdct 0x0t 0x0t
        0x2t 0xdct 0x0t 0x0t
        0x3t 0xdct 0x0t 0x0t
        0x4t 0xdct 0x0t 0x0t
        0x7t 0xdct 0x0t 0x0t
        0x9t 0xdct 0x0t 0x0t
        0xbt 0xdct 0x0t 0x0t
        0x41t 0xdct 0x0t 0x0t
        0x44t 0xdct 0x0t 0x0t
        0x4et 0xdct 0x0t 0x0t
        0x4ft 0xdct 0x0t 0x0t
    .end array-data

    .line 633
    :array_1
    .array-data 0x4
        0x1t 0xdct 0x0t 0x0t
        0x2t 0xdct 0x0t 0x0t
        0x3t 0xdct 0x0t 0x0t
        0x4t 0xdct 0x0t 0x0t
        0x7t 0xdct 0x0t 0x0t
        0x9t 0xdct 0x0t 0x0t
        0xbt 0xdct 0x0t 0x0t
        0x41t 0xdct 0x0t 0x0t
        0x44t 0xdct 0x0t 0x0t
        0xe0t 0xdct 0x0t 0x0t
        0x4et 0xdct 0x0t 0x0t
        0x4ft 0xdct 0x0t 0x0t
        0x46t 0xdct 0x0t 0x0t
        0x9at 0xdct 0x0t 0x0t
        0x9bt 0xdct 0x0t 0x0t
        0x8bt 0xdct 0x0t 0x0t
        0x99t 0xdct 0x0t 0x0t
        0x89t 0xdct 0x0t 0x0t
        0x8ct 0xdct 0x0t 0x0t
        0x96t 0xdct 0x0t 0x0t
        0x93t 0xdet 0x0t 0x0t
        0x94t 0xdet 0x0t 0x0t
        0x99t 0xdet 0x0t 0x0t
        0x9at 0xdet 0x0t 0x0t
    .end array-data

    .line 663
    :array_2
    .array-data 0x4
        0x1t 0xdct 0x0t 0x0t
        0x2t 0xdct 0x0t 0x0t
        0x3t 0xdct 0x0t 0x0t
        0x4t 0xdct 0x0t 0x0t
        0x7t 0xdct 0x0t 0x0t
        0x9t 0xdct 0x0t 0x0t
        0xbt 0xdct 0x0t 0x0t
        0x41t 0xdct 0x0t 0x0t
        0x44t 0xdct 0x0t 0x0t
        0xe0t 0xdct 0x0t 0x0t
        0x4et 0xdct 0x0t 0x0t
        0x4ft 0xdct 0x0t 0x0t
        0x46t 0xdct 0x0t 0x0t
        0x9at 0xdct 0x0t 0x0t
        0x8bt 0xdct 0x0t 0x0t
        0x89t 0xdct 0x0t 0x0t
        0x48t 0xdct 0x0t 0x0t
        0x97t 0xdet 0x0t 0x0t
        0x9bt 0xdet 0x0t 0x0t
        0x9ct 0xdet 0x0t 0x0t
        0x9dt 0xdet 0x0t 0x0t
        0xa1t 0xdet 0x0t 0x0t
        0x87t 0xdct 0x0t 0x0t
        0x88t 0xdct 0x0t 0x0t
        0x93t 0xdet 0x0t 0x0t
        0x94t 0xdet 0x0t 0x0t
        0x99t 0xdet 0x0t 0x0t
        0x9at 0xdet 0x0t 0x0t
    .end array-data

    .line 699
    :array_3
    .array-data 0x4
        0x1t 0xdct 0x0t 0x0t
        0x2t 0xdct 0x0t 0x0t
        0x3t 0xdct 0x0t 0x0t
        0x4t 0xdct 0x0t 0x0t
        0x7t 0xdct 0x0t 0x0t
        0x9t 0xdct 0x0t 0x0t
        0xbt 0xdct 0x0t 0x0t
        0x41t 0xdct 0x0t 0x0t
        0x44t 0xdct 0x0t 0x0t
        0xe0t 0xdct 0x0t 0x0t
        0x4et 0xdct 0x0t 0x0t
        0x4ft 0xdct 0x0t 0x0t
        0x48t 0xdct 0x0t 0x0t
        0x87t 0xdct 0x0t 0x0t
        0x88t 0xdct 0x0t 0x0t
    .end array-data

    .line 720
    :array_4
    .array-data 0x4
        0x1t 0xdct 0x0t 0x0t
        0x2t 0xdct 0x0t 0x0t
        0x3t 0xdct 0x0t 0x0t
        0x4t 0xdct 0x0t 0x0t
        0x7t 0xdct 0x0t 0x0t
        0x9t 0xdct 0x0t 0x0t
        0xbt 0xdct 0x0t 0x0t
        0x41t 0xdct 0x0t 0x0t
        0x44t 0xdct 0x0t 0x0t
        0xe0t 0xdct 0x0t 0x0t
        0x4et 0xdct 0x0t 0x0t
        0x4ft 0xdct 0x0t 0x0t
        0x48t 0xdct 0x0t 0x0t
        0x46t 0xdct 0x0t 0x0t
        0x9at 0xdct 0x0t 0x0t
        0x9bt 0xdct 0x0t 0x0t
        0x8bt 0xdct 0x0t 0x0t
        0x99t 0xdct 0x0t 0x0t
        0x89t 0xdct 0x0t 0x0t
        0x8ct 0xdct 0x0t 0x0t
        0x96t 0xdct 0x0t 0x0t
        0x93t 0xdet 0x0t 0x0t
        0x94t 0xdet 0x0t 0x0t
        0x99t 0xdet 0x0t 0x0t
        0x9at 0xdet 0x0t 0x0t
        0x46t 0xdct 0x0t 0x0t
        0x9at 0xdct 0x0t 0x0t
        0x89t 0xdct 0x0t 0x0t
        0x48t 0xdct 0x0t 0x0t
        0x97t 0xdet 0x0t 0x0t
        0x9bt 0xdet 0x0t 0x0t
        0x9ct 0xdet 0x0t 0x0t
        0x9dt 0xdet 0x0t 0x0t
        0xa1t 0xdet 0x0t 0x0t
        0x48t 0xdct 0x0t 0x0t
        0x87t 0xdct 0x0t 0x0t
        0x88t 0xdct 0x0t 0x0t
        0x20t 0xd9t 0x0t 0x0t
    .end array-data

    .line 772
    :array_5
    .array-data 0x4
        0x1t 0xdct 0x0t 0x0t
        0x2t 0xdct 0x0t 0x0t
        0x3t 0xdct 0x0t 0x0t
        0x4t 0xdct 0x0t 0x0t
        0x7t 0xdct 0x0t 0x0t
        0x9t 0xdct 0x0t 0x0t
        0xbt 0xdct 0x0t 0x0t
        0x41t 0xdct 0x0t 0x0t
        0x44t 0xdct 0x0t 0x0t
        0xe0t 0xdct 0x0t 0x0t
        0x4et 0xdct 0x0t 0x0t
        0x4ft 0xdct 0x0t 0x0t
        0x9bt 0xdct 0x0t 0x0t
    .end array-data

    .line 791
    :array_6
    .array-data 0x4
        0x1t 0xdct 0x0t 0x0t
        0x2t 0xdct 0x0t 0x0t
        0x3t 0xdct 0x0t 0x0t
        0x4t 0xdct 0x0t 0x0t
        0x7t 0xdct 0x0t 0x0t
        0x9t 0xdct 0x0t 0x0t
        0xbt 0xdct 0x0t 0x0t
        0x41t 0xdct 0x0t 0x0t
        0x44t 0xdct 0x0t 0x0t
        0xe0t 0xdct 0x0t 0x0t
        0x4et 0xdct 0x0t 0x0t
        0x4ft 0xdct 0x0t 0x0t
        0x20t 0xd9t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 13
    .parameter "context"
    .parameter "volumeName"
    .parameter "storagePath"
    .parameter "subDirectories"

    .prologue
    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    iput-object v10, p0, Landroid/mtp/MtpDatabase;->mStorageMap:Ljava/util/HashMap;

    .line 107
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    iput-object v10, p0, Landroid/mtp/MtpDatabase;->mPropertyGroupsByProperty:Ljava/util/HashMap;

    .line 111
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    iput-object v10, p0, Landroid/mtp/MtpDatabase;->mPropertyGroupsByFormat:Ljava/util/HashMap;

    .line 179
    invoke-direct {p0}, Landroid/mtp/MtpDatabase;->native_setup()V

    .line 181
    iput-object p1, p0, Landroid/mtp/MtpDatabase;->mContext:Landroid/content/Context;

    .line 182
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v11, "media"

    invoke-virtual {v10, v11}, Landroid/content/ContentResolver;->acquireProvider(Ljava/lang/String;)Landroid/content/IContentProvider;

    move-result-object v10

    iput-object v10, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    .line 183
    iput-object p2, p0, Landroid/mtp/MtpDatabase;->mVolumeName:Ljava/lang/String;

    .line 184
    move-object/from16 v0, p3

    iput-object v0, p0, Landroid/mtp/MtpDatabase;->mMediaStoragePath:Ljava/lang/String;

    .line 185
    invoke-static {p2}, Lcom/sonyericsson/provider/SemcMediaStore$ExtendedFiles;->getMtpObjectsUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    iput-object v10, p0, Landroid/mtp/MtpDatabase;->mObjectsUri:Landroid/net/Uri;

    .line 186
    new-instance v10, Landroid/media/MediaScanner;

    invoke-direct {v10, p1}, Landroid/media/MediaScanner;-><init>(Landroid/content/Context;)V

    iput-object v10, p0, Landroid/mtp/MtpDatabase;->mMediaScanner:Landroid/media/MediaScanner;

    .line 187
    new-instance v10, Ljava/util/Hashtable;

    invoke-direct {v10}, Ljava/util/Hashtable;-><init>()V

    iput-object v10, p0, Landroid/mtp/MtpDatabase;->mReferencesTable:Ljava/util/Hashtable;

    .line 188
    invoke-direct {p0, p1}, Landroid/mtp/MtpDatabase;->initDeviceSystemProperties(Landroid/content/Context;)V

    .line 189
    invoke-direct {p0, p1}, Landroid/mtp/MtpDatabase;->removeInvalidHostIds(Landroid/content/Context;)V

    .line 191
    move-object/from16 v0, p4

    iput-object v0, p0, Landroid/mtp/MtpDatabase;->mSubDirectories:[Ljava/lang/String;

    .line 192
    if-eqz p4, :cond_2

    .line 194
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 195
    .local v1, builder:Ljava/lang/StringBuilder;
    const-string v10, "("

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    move-object/from16 v0, p4

    array-length v2, v0

    .line 197
    .local v2, count:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v2, :cond_1

    .line 198
    const-string v10, "_data=? OR _data LIKE ?"

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    add-int/lit8 v10, v2, -0x1

    if-eq v4, v10, :cond_0

    .line 201
    const-string v10, " OR "

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 204
    :cond_1
    const-string v10, ")"

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Landroid/mtp/MtpDatabase;->mSubDirectoriesWhere:Ljava/lang/String;

    .line 208
    mul-int/lit8 v10, v2, 0x2

    new-array v10, v10, [Ljava/lang/String;

    iput-object v10, p0, Landroid/mtp/MtpDatabase;->mSubDirectoriesWhereArgs:[Ljava/lang/String;

    .line 209
    const/4 v4, 0x0

    const/4 v5, 0x0

    .local v5, j:I
    move v6, v5

    .end local v5           #j:I
    .local v6, j:I
    :goto_1
    if-ge v4, v2, :cond_2

    .line 210
    aget-object v9, p4, v4

    .line 211
    .local v9, path:Ljava/lang/String;
    iget-object v10, p0, Landroid/mtp/MtpDatabase;->mSubDirectoriesWhereArgs:[Ljava/lang/String;

    add-int/lit8 v5, v6, 0x1

    .end local v6           #j:I
    .restart local v5       #j:I
    aput-object v9, v10, v6

    .line 212
    iget-object v10, p0, Landroid/mtp/MtpDatabase;->mSubDirectoriesWhereArgs:[Ljava/lang/String;

    add-int/lit8 v6, v5, 0x1

    .end local v5           #j:I
    .restart local v6       #j:I
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "/%"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v5

    .line 209
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 217
    .end local v1           #builder:Ljava/lang/StringBuilder;
    .end local v2           #count:I
    .end local v4           #i:I
    .end local v6           #j:I
    .end local v9           #path:Ljava/lang/String;
    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v10

    iget-object v8, v10, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 218
    .local v8, locale:Ljava/util/Locale;
    if-eqz v8, :cond_3

    .line 219
    invoke-virtual {v8}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v7

    .line 220
    .local v7, language:Ljava/lang/String;
    invoke-virtual {v8}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    .line 221
    .local v3, country:Ljava/lang/String;
    if-eqz v7, :cond_3

    .line 222
    if-eqz v3, :cond_4

    .line 223
    iget-object v10, p0, Landroid/mtp/MtpDatabase;->mMediaScanner:Landroid/media/MediaScanner;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "_"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/media/MediaScanner;->setLocale(Ljava/lang/String;)V

    .line 229
    .end local v3           #country:Ljava/lang/String;
    .end local v7           #language:Ljava/lang/String;
    :cond_3
    :goto_2
    return-void

    .line 225
    .restart local v3       #country:Ljava/lang/String;
    .restart local v7       #language:Ljava/lang/String;
    :cond_4
    iget-object v10, p0, Landroid/mtp/MtpDatabase;->mMediaScanner:Landroid/media/MediaScanner;

    invoke-virtual {v10, v7}, Landroid/media/MediaScanner;->setLocale(Ljava/lang/String;)V

    goto :goto_2
.end method

.method private beginSendObject(Ljava/lang/String;IIIJJ)I
    .locals 12
    .parameter "path"
    .parameter "format"
    .parameter "parent"
    .parameter "storageId"
    .parameter "size"
    .parameter "modified"

    .prologue
    .line 341
    const v0, 0xb102

    if-ne p2, v0, :cond_1

    .line 342
    invoke-virtual {p0}, Landroid/mtp/MtpDatabase;->getDeviceUuid()Ljava/lang/String;

    move-result-object v10

    .line 344
    .local v10, uuid:Ljava/lang/String;
    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 345
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "3"

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Landroid/mtp/MtpDatabase;->notifyPairError([Ljava/lang/String;)V

    .line 346
    const/4 v8, -0x1

    .line 398
    .end local v10           #uuid:Ljava/lang/String;
    :cond_0
    :goto_0
    return v8

    .line 351
    :cond_1
    invoke-direct {p0, p1}, Landroid/mtp/MtpDatabase;->inStorageSubDirectory(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v8, -0x1

    goto :goto_0

    .line 354
    :cond_2
    if-eqz p1, :cond_5

    .line 355
    const/4 v6, 0x0

    .line 357
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mObjectsUri:Landroid/net/Uri;

    sget-object v2, Landroid/mtp/MtpDatabase;->ID_PROJECTION:[Ljava/lang/String;

    const-string v3, "_data=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Landroid/content/IContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 359
    if-eqz v6, :cond_4

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_4

    .line 360
    const v0, 0xb102

    if-ne p2, v0, :cond_3

    .line 361
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "9"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {p1}, Landroid/mtp/MtpPropertyGroup;->nameFromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Landroid/mtp/MtpDatabase;->notifyPairError([Ljava/lang/String;)V

    .line 364
    :cond_3
    const-string v0, "MtpDatabase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file already exists in beginSendObject: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 365
    const/4 v8, -0x1

    .line 370
    if-eqz v6, :cond_0

    .line 371
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 370
    :cond_4
    if-eqz v6, :cond_5

    .line 371
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 376
    .end local v6           #c:Landroid/database/Cursor;
    :cond_5
    :goto_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/mtp/MtpDatabase;->mDatabaseModified:Z

    .line 377
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 378
    .local v11, values:Landroid/content/ContentValues;
    const-string v0, "_data"

    invoke-virtual {v11, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    const-string v0, "format"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 380
    const-string/jumbo v0, "parent"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 381
    const-string/jumbo v0, "storage_id"

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 382
    const-string v0, "_size"

    invoke-static/range {p5 .. p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 383
    const-string v0, "date_modified"

    invoke-static/range {p7 .. p8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 386
    :try_start_1
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mObjectsUri:Landroid/net/Uri;

    invoke-interface {v0, v1, v11}, Landroid/content/IContentProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v9

    .line 387
    .local v9, uri:Landroid/net/Uri;
    if-eqz v9, :cond_7

    .line 388
    invoke-virtual {v9}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 389
    .local v8, handle:I
    const v0, 0xb102

    if-ne p2, v0, :cond_0

    .line 390
    invoke-static {p1}, Landroid/mtp/MtpPropertyGroup;->nameFromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v8, v0}, Landroid/mtp/MtpDatabase;->requestPairHost(ILjava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 396
    .end local v8           #handle:I
    .end local v9           #uri:Landroid/net/Uri;
    :catch_0
    move-exception v7

    .line 397
    .local v7, e:Landroid/os/RemoteException;
    const-string v0, "MtpDatabase"

    const-string v1, "RemoteException in beginSendObject"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 398
    const/4 v8, -0x1

    goto/16 :goto_0

    .line 367
    .end local v7           #e:Landroid/os/RemoteException;
    .end local v11           #values:Landroid/content/ContentValues;
    .restart local v6       #c:Landroid/database/Cursor;
    :catch_1
    move-exception v7

    .line 368
    .restart local v7       #e:Landroid/os/RemoteException;
    :try_start_2
    const-string v0, "MtpDatabase"

    const-string v1, "RemoteException in beginSendObject"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 370
    if-eqz v6, :cond_5

    .line 371
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 370
    .end local v7           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_6

    .line 371
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v0

    .line 394
    .end local v6           #c:Landroid/database/Cursor;
    .restart local v9       #uri:Landroid/net/Uri;
    .restart local v11       #values:Landroid/content/ContentValues;
    :cond_7
    const/4 v8, -0x1

    goto/16 :goto_0
.end method

.method private clearAllNetworkAssociationObjects()V
    .locals 11

    .prologue
    .line 1730
    const/4 v6, 0x0

    .line 1733
    .local v6, c:Landroid/database/Cursor;
    const/4 v9, 0x0

    .line 1734
    .local v9, path:Ljava/lang/String;
    :try_start_0
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mObjectsUri:Landroid/net/Uri;

    sget-object v2, Landroid/mtp/MtpDatabase;->NAME_PATH_PROJECTION:[Ljava/lang/String;

    const-string v3, "format=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const v10, 0xb102

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v4, v5

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Landroid/content/IContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v6

    .line 1736
    if-nez v6, :cond_1

    .line 1755
    if-eqz v6, :cond_0

    .line 1756
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1759
    :cond_0
    :goto_0
    return-void

    .line 1739
    :cond_1
    :goto_1
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1740
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1741
    if-eqz v9, :cond_1

    .line 1742
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1743
    .local v8, f:Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->delete()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    .line 1748
    .end local v8           #f:Ljava/io/File;
    :catch_0
    move-exception v7

    .line 1749
    .local v7, e:Ljava/lang/NullPointerException;
    :try_start_2
    const-string v0, "MtpDatabase"

    const-string v1, "Exception in clearAllNetworkAssociationObjects: "

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1755
    if-eqz v6, :cond_0

    .line 1756
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1746
    .end local v7           #e:Ljava/lang/NullPointerException;
    :cond_2
    :try_start_3
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mObjectsUri:Landroid/net/Uri;

    const-string v2, "format=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const v5, 0xb102

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-interface {v0, v1, v2, v3}, Landroid/content/IContentProvider;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_2

    .line 1755
    if-eqz v6, :cond_0

    .line 1756
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1750
    :catch_1
    move-exception v7

    .line 1751
    .local v7, e:Landroid/os/RemoteException;
    :try_start_4
    const-string v0, "MtpDatabase"

    const-string v1, "Exception in clearAllNetworkAssociationObjects: "

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1755
    if-eqz v6, :cond_0

    .line 1756
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1752
    .end local v7           #e:Landroid/os/RemoteException;
    :catch_2
    move-exception v7

    .line 1753
    .local v7, e:Ljava/lang/SecurityException;
    :try_start_5
    const-string v0, "MtpDatabase"

    const-string v1, "Exception in clearAllNetworkAssociationObjects: "

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1755
    if-eqz v6, :cond_0

    .line 1756
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1755
    .end local v7           #e:Ljava/lang/SecurityException;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    .line 1756
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method private createObjectQuery(III)Landroid/database/Cursor;
    .locals 9
    .parameter "storageID"
    .parameter "format"
    .parameter "parent"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x2

    const/4 v0, -0x1

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 443
    if-ne p1, v0, :cond_6

    .line 445
    if-nez p2, :cond_3

    .line 447
    if-nez p3, :cond_1

    .line 449
    const/4 v3, 0x0

    .line 450
    .local v3, where:Ljava/lang/String;
    const/4 v4, 0x0

    .line 514
    .local v4, whereArgs:[Ljava/lang/String;
    :goto_0
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mSubDirectoriesWhere:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 515
    if-nez v3, :cond_c

    .line 516
    iget-object v3, p0, Landroid/mtp/MtpDatabase;->mSubDirectoriesWhere:Ljava/lang/String;

    .line 517
    iget-object v4, p0, Landroid/mtp/MtpDatabase;->mSubDirectoriesWhereArgs:[Ljava/lang/String;

    .line 535
    :cond_0
    :goto_1
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mObjectsUri:Landroid/net/Uri;

    sget-object v2, Landroid/mtp/MtpDatabase;->ID_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Landroid/content/IContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    .line 452
    .end local v3           #where:Ljava/lang/String;
    .end local v4           #whereArgs:[Ljava/lang/String;
    :cond_1
    if-ne p3, v0, :cond_2

    .line 454
    const/4 p3, 0x0

    .line 456
    :cond_2
    const-string/jumbo v3, "parent=?"

    .line 457
    .restart local v3       #where:Ljava/lang/String;
    new-array v4, v2, [Ljava/lang/String;

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v1

    .restart local v4       #whereArgs:[Ljava/lang/String;
    goto :goto_0

    .line 461
    .end local v3           #where:Ljava/lang/String;
    .end local v4           #whereArgs:[Ljava/lang/String;
    :cond_3
    if-nez p3, :cond_4

    .line 463
    const-string v3, "format=?"

    .line 464
    .restart local v3       #where:Ljava/lang/String;
    new-array v4, v2, [Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v1

    .restart local v4       #whereArgs:[Ljava/lang/String;
    goto :goto_0

    .line 466
    .end local v3           #where:Ljava/lang/String;
    .end local v4           #whereArgs:[Ljava/lang/String;
    :cond_4
    if-ne p3, v0, :cond_5

    .line 468
    const/4 p3, 0x0

    .line 470
    :cond_5
    const-string v3, "format=? AND parent=?"

    .line 471
    .restart local v3       #where:Ljava/lang/String;
    new-array v4, v5, [Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v1

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v2

    .restart local v4       #whereArgs:[Ljava/lang/String;
    goto :goto_0

    .line 477
    .end local v3           #where:Ljava/lang/String;
    .end local v4           #whereArgs:[Ljava/lang/String;
    :cond_6
    if-nez p2, :cond_9

    .line 479
    if-nez p3, :cond_7

    .line 481
    const-string/jumbo v3, "storage_id=?"

    .line 482
    .restart local v3       #where:Ljava/lang/String;
    new-array v4, v2, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v1

    .restart local v4       #whereArgs:[Ljava/lang/String;
    goto :goto_0

    .line 484
    .end local v3           #where:Ljava/lang/String;
    .end local v4           #whereArgs:[Ljava/lang/String;
    :cond_7
    if-ne p3, v0, :cond_8

    .line 486
    const/4 p3, 0x0

    .line 488
    :cond_8
    const-string/jumbo v3, "storage_id=? AND parent=?"

    .line 489
    .restart local v3       #where:Ljava/lang/String;
    new-array v4, v5, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v1

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v2

    .restart local v4       #whereArgs:[Ljava/lang/String;
    goto :goto_0

    .line 494
    .end local v3           #where:Ljava/lang/String;
    .end local v4           #whereArgs:[Ljava/lang/String;
    :cond_9
    if-nez p3, :cond_a

    .line 496
    const-string/jumbo v3, "storage_id=? AND format=?"

    .line 497
    .restart local v3       #where:Ljava/lang/String;
    new-array v4, v5, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v1

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v2

    .restart local v4       #whereArgs:[Ljava/lang/String;
    goto :goto_0

    .line 500
    .end local v3           #where:Ljava/lang/String;
    .end local v4           #whereArgs:[Ljava/lang/String;
    :cond_a
    if-ne p3, v0, :cond_b

    .line 502
    const/4 p3, 0x0

    .line 504
    :cond_b
    const-string/jumbo v3, "storage_id=? AND format=? AND parent=?"

    .line 505
    .restart local v3       #where:Ljava/lang/String;
    const/4 v0, 0x3

    new-array v4, v0, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v1

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v2

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    .restart local v4       #whereArgs:[Ljava/lang/String;
    goto/16 :goto_0

    .line 519
    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mSubDirectoriesWhere:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 522
    array-length v0, v4

    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mSubDirectoriesWhereArgs:[Ljava/lang/String;

    array-length v1, v1

    add-int/2addr v0, v1

    new-array v8, v0, [Ljava/lang/String;

    .line 525
    .local v8, newWhereArgs:[Ljava/lang/String;
    const/4 v6, 0x0

    .local v6, i:I
    :goto_2
    array-length v0, v4

    if-ge v6, v0, :cond_d

    .line 526
    aget-object v0, v4, v6

    aput-object v0, v8, v6

    .line 525
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 528
    :cond_d
    const/4 v7, 0x0

    .local v7, j:I
    :goto_3
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mSubDirectoriesWhereArgs:[Ljava/lang/String;

    array-length v0, v0

    if-ge v7, v0, :cond_e

    .line 529
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mSubDirectoriesWhereArgs:[Ljava/lang/String;

    aget-object v0, v0, v7

    aput-object v0, v8, v6

    .line 528
    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 531
    :cond_e
    move-object v4, v8

    goto/16 :goto_1
.end method

.method private decrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "cipherText"

    .prologue
    .line 1629
    const/4 v1, 0x0

    .line 1630
    .local v1, clearBytes:[B
    const/4 v2, 0x0

    .line 1631
    .local v2, clearText:Ljava/lang/String;
    new-instance v5, Ljavax/crypto/spec/SecretKeySpec;

    invoke-direct {p0}, Landroid/mtp/MtpDatabase;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    const-string v7, "AES"

    invoke-direct {v5, v6, v7}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 1634
    .local v5, key:Ljavax/crypto/spec/SecretKeySpec;
    :try_start_0
    const-string v6, "AES/ECB/PKCS5Padding"

    const-string v7, "BC"

    invoke-static {v6, v7}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 1635
    .local v0, cipher:Ljavax/crypto/Cipher;
    const/4 v6, 0x2

    invoke-virtual {v0, v6, v5}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 1636
    const-string v6, "UTF-8"

    invoke-virtual {p1, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    invoke-static {v6}, Lorg/apache/commons/codec/binary/Base64;->decodeBase64([B)[B

    move-result-object v6

    invoke-virtual {v0, v6}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v1

    .line 1637
    new-instance v3, Ljava/lang/String;

    const-string v6, "UTF-8"

    invoke-direct {v3, v1, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/security/NoSuchProviderException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_7

    .end local v2           #clearText:Ljava/lang/String;
    .local v3, clearText:Ljava/lang/String;
    move-object v2, v3

    .line 1655
    .end local v0           #cipher:Ljavax/crypto/Cipher;
    .end local v3           #clearText:Ljava/lang/String;
    .restart local v2       #clearText:Ljava/lang/String;
    :goto_0
    return-object v2

    .line 1638
    :catch_0
    move-exception v4

    .line 1639
    .local v4, e:Ljavax/crypto/BadPaddingException;
    const-string v6, "MtpDatabase"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception in decrypt: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1640
    .end local v4           #e:Ljavax/crypto/BadPaddingException;
    :catch_1
    move-exception v4

    .line 1641
    .local v4, e:Ljavax/crypto/IllegalBlockSizeException;
    const-string v6, "MtpDatabase"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception in decrypt: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1642
    .end local v4           #e:Ljavax/crypto/IllegalBlockSizeException;
    :catch_2
    move-exception v4

    .line 1643
    .local v4, e:Ljava/lang/IllegalStateException;
    const-string v6, "MtpDatabase"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception in decrypt: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1644
    .end local v4           #e:Ljava/lang/IllegalStateException;
    :catch_3
    move-exception v4

    .line 1645
    .local v4, e:Ljava/security/InvalidKeyException;
    const-string v6, "MtpDatabase"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception in decrypt: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1646
    .end local v4           #e:Ljava/security/InvalidKeyException;
    :catch_4
    move-exception v4

    .line 1647
    .local v4, e:Ljava/security/NoSuchAlgorithmException;
    const-string v6, "MtpDatabase"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception in decrypt: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1648
    .end local v4           #e:Ljava/security/NoSuchAlgorithmException;
    :catch_5
    move-exception v4

    .line 1649
    .local v4, e:Ljavax/crypto/NoSuchPaddingException;
    const-string v6, "MtpDatabase"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception in decrypt: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1650
    .end local v4           #e:Ljavax/crypto/NoSuchPaddingException;
    :catch_6
    move-exception v4

    .line 1651
    .local v4, e:Ljava/security/NoSuchProviderException;
    const-string v6, "MtpDatabase"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception in decrypt: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1652
    .end local v4           #e:Ljava/security/NoSuchProviderException;
    :catch_7
    move-exception v4

    .line 1653
    .local v4, e:Ljava/io/UnsupportedEncodingException;
    const-string v6, "MtpDatabase"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception in decrypt: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private deleteFile(I)I
    .locals 13
    .parameter "handle"

    .prologue
    .line 1281
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/mtp/MtpDatabase;->mDatabaseModified:Z

    .line 1282
    const/4 v10, 0x0

    .line 1283
    .local v10, path:Ljava/lang/String;
    const/4 v9, 0x0

    .line 1285
    .local v9, format:I
    const/4 v6, 0x0

    .line 1287
    .local v6, c:Landroid/database/Cursor;
    if-nez p1, :cond_1

    .line 1288
    :try_start_0
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mObjectsUri:Landroid/net/Uri;

    const-string v2, "_data LIKE ? AND format <> ?"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, p0, Landroid/mtp/MtpDatabase;->mMediaStoragePath:Ljava/lang/String;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v12, "/%"

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const v5, 0xb102

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-interface {v0, v1, v2, v3}, Landroid/content/IContentProvider;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v7

    .line 1291
    .local v7, count:I
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mReferencesTable:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1292
    const/16 v0, 0x2001

    .line 1335
    if-eqz v6, :cond_0

    .line 1336
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .end local v7           #count:I
    :cond_0
    :goto_0
    return v0

    .line 1294
    :cond_1
    :try_start_1
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mObjectsUri:Landroid/net/Uri;

    sget-object v2, Landroid/mtp/MtpDatabase;->PATH_SIZE_FORMAT_PROJECTION:[Ljava/lang/String;

    const-string v3, "_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v4, v5

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Landroid/content/IContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1296
    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1299
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 1300
    const/4 v0, 0x3

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v9

    .line 1305
    if-eqz v10, :cond_2

    if-eqz v9, :cond_2

    const v0, 0xb102

    if-ne v9, v0, :cond_4

    .line 1306
    :cond_2
    const/16 v0, 0x2002

    .line 1335
    if-eqz v6, :cond_0

    .line 1336
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1302
    :cond_3
    const/16 v0, 0x2009

    .line 1335
    if-eqz v6, :cond_0

    .line 1336
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1310
    :cond_4
    :try_start_2
    invoke-direct {p0, v10}, Landroid/mtp/MtpDatabase;->isStorageSubDirectory(Ljava/lang/String;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    move-result v0

    if-eqz v0, :cond_5

    .line 1311
    const/16 v0, 0x200d

    .line 1335
    if-eqz v6, :cond_0

    .line 1336
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1314
    :cond_5
    const/16 v0, 0x3001

    if-ne v9, v0, :cond_7

    .line 1316
    :try_start_3
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mVolumeName:Ljava/lang/String;

    invoke-static {v0}, Landroid/provider/MediaStore$Files;->getMtpObjectsUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    .line 1317
    .local v11, uri:Landroid/net/Uri;
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    const-string v1, "_data LIKE ?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v11, v1, v2}, Landroid/content/IContentProvider;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v7

    .line 1319
    .restart local v7       #count:I
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mReferencesTable:Ljava/util/Hashtable;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1324
    .end local v7           #count:I
    .end local v11           #uri:Landroid/net/Uri;
    :cond_6
    :goto_1
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mVolumeName:Ljava/lang/String;

    int-to-long v1, p1

    invoke-static {v0, v1, v2}, Landroid/provider/MediaStore$Files;->getMtpObjectsUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v11

    .line 1325
    .restart local v11       #uri:Landroid/net/Uri;
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, v11, v1, v2}, Landroid/content/IContentProvider;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_8

    .line 1326
    invoke-direct {p0, p1}, Landroid/mtp/MtpDatabase;->removeReferenceFromTable(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    .line 1327
    const/16 v0, 0x2001

    .line 1335
    if-eqz v6, :cond_0

    .line 1336
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 1320
    .end local v11           #uri:Landroid/net/Uri;
    :cond_7
    const v0, 0xba03

    if-ne v9, v0, :cond_6

    .line 1321
    :try_start_4
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mReferencesTable:Ljava/util/Hashtable;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    .line 1331
    :catch_0
    move-exception v8

    .line 1332
    .local v8, e:Landroid/os/RemoteException;
    :try_start_5
    const-string v0, "MtpDatabase"

    const-string v1, "RemoteException in deleteFile"

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1333
    const/16 v0, 0x2002

    .line 1335
    if-eqz v6, :cond_0

    .line 1336
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 1329
    .end local v8           #e:Landroid/os/RemoteException;
    .restart local v11       #uri:Landroid/net/Uri;
    :cond_8
    const/16 v0, 0x2009

    .line 1335
    if-eqz v6, :cond_0

    .line 1336
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 1335
    .end local v11           #uri:Landroid/net/Uri;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_9

    .line 1336
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_9
    throw v0
.end method

.method private deleteHostFromDB(I)V
    .locals 11
    .parameter "hostId"

    .prologue
    .line 1797
    const/4 v6, 0x0

    .line 1799
    .local v6, c:Landroid/database/Cursor;
    const/4 v9, 0x0

    .line 1800
    .local v9, path:Ljava/lang/String;
    :try_start_0
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mObjectsUri:Landroid/net/Uri;

    sget-object v2, Landroid/mtp/MtpDatabase;->NAME_PATH_PROJECTION:[Ljava/lang/String;

    const-string v3, "_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v4, v5

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Landroid/content/IContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1802
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1803
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1805
    :cond_0
    if-eqz v9, :cond_1

    .line 1806
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1807
    .local v8, f:Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    .line 1809
    .end local v8           #f:Ljava/io/File;
    :cond_1
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mObjectsUri:Landroid/net/Uri;

    const-string v2, "_id=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-interface {v0, v1, v2, v3}, Landroid/content/IContentProvider;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_3

    .line 1820
    if-eqz v6, :cond_2

    .line 1821
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1824
    :cond_2
    :goto_0
    return-void

    .line 1811
    :catch_0
    move-exception v7

    .line 1812
    .local v7, e:Ljava/lang/NullPointerException;
    :try_start_1
    const-string v0, "MtpDatabase"

    const-string v1, "Exception in deleteHostFromDB: "

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1820
    if-eqz v6, :cond_2

    .line 1821
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1813
    .end local v7           #e:Ljava/lang/NullPointerException;
    :catch_1
    move-exception v7

    .line 1814
    .local v7, e:Landroid/os/RemoteException;
    :try_start_2
    const-string v0, "MtpDatabase"

    const-string v1, "Exception in deleteHostFromDB: "

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1820
    if-eqz v6, :cond_2

    .line 1821
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1815
    .end local v7           #e:Landroid/os/RemoteException;
    :catch_2
    move-exception v7

    .line 1816
    .local v7, e:Ljava/lang/SecurityException;
    :try_start_3
    const-string v0, "MtpDatabase"

    const-string v1, "Exception in deleteHostFromDB: "

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1820
    if-eqz v6, :cond_2

    .line 1821
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1817
    .end local v7           #e:Ljava/lang/SecurityException;
    :catch_3
    move-exception v7

    .line 1818
    .local v7, e:Ljava/lang/UnsupportedOperationException;
    :try_start_4
    const-string v0, "MtpDatabase"

    const-string v1, "Exception in deleteHostFromDB: "

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1820
    if-eqz v6, :cond_2

    .line 1821
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1820
    .end local v7           #e:Ljava/lang/UnsupportedOperationException;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    .line 1821
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method private encrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "clearText"

    .prologue
    .line 1597
    const/4 v1, 0x0

    .line 1598
    .local v1, cipherBytes:[B
    const/4 v2, 0x0

    .line 1599
    .local v2, cipherText:Ljava/lang/String;
    new-instance v5, Ljavax/crypto/spec/SecretKeySpec;

    invoke-direct {p0}, Landroid/mtp/MtpDatabase;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    const-string v7, "AES"

    invoke-direct {v5, v6, v7}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 1602
    .local v5, key:Ljavax/crypto/spec/SecretKeySpec;
    :try_start_0
    const-string v6, "AES/ECB/PKCS5Padding"

    const-string v7, "BC"

    invoke-static {v6, v7}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 1603
    .local v0, cipher:Ljavax/crypto/Cipher;
    const/4 v6, 0x1

    invoke-virtual {v0, v6, v5}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 1604
    const-string v6, "UTF-8"

    invoke-virtual {p1, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    invoke-virtual {v0, v6}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v1

    .line 1607
    new-instance v3, Ljava/lang/String;

    invoke-static {v1}, Lorg/apache/commons/codec/binary/Base64;->encodeBase64([B)[B

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/security/NoSuchProviderException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_7

    .end local v2           #cipherText:Ljava/lang/String;
    .local v3, cipherText:Ljava/lang/String;
    move-object v2, v3

    .line 1625
    .end local v0           #cipher:Ljavax/crypto/Cipher;
    .end local v3           #cipherText:Ljava/lang/String;
    .restart local v2       #cipherText:Ljava/lang/String;
    :goto_0
    return-object v2

    .line 1608
    :catch_0
    move-exception v4

    .line 1609
    .local v4, e:Ljavax/crypto/BadPaddingException;
    const-string v6, "MtpDatabase"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception in encrypt: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1610
    .end local v4           #e:Ljavax/crypto/BadPaddingException;
    :catch_1
    move-exception v4

    .line 1611
    .local v4, e:Ljavax/crypto/IllegalBlockSizeException;
    const-string v6, "MtpDatabase"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception in encrypt: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1612
    .end local v4           #e:Ljavax/crypto/IllegalBlockSizeException;
    :catch_2
    move-exception v4

    .line 1613
    .local v4, e:Ljava/lang/IllegalStateException;
    const-string v6, "MtpDatabase"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception in encrypt: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1614
    .end local v4           #e:Ljava/lang/IllegalStateException;
    :catch_3
    move-exception v4

    .line 1615
    .local v4, e:Ljava/security/InvalidKeyException;
    const-string v6, "MtpDatabase"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception in encrypt: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1616
    .end local v4           #e:Ljava/security/InvalidKeyException;
    :catch_4
    move-exception v4

    .line 1617
    .local v4, e:Ljava/security/NoSuchAlgorithmException;
    const-string v6, "MtpDatabase"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception in encrypt: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1618
    .end local v4           #e:Ljava/security/NoSuchAlgorithmException;
    :catch_5
    move-exception v4

    .line 1619
    .local v4, e:Ljavax/crypto/NoSuchPaddingException;
    const-string v6, "MtpDatabase"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception in encrypt: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1620
    .end local v4           #e:Ljavax/crypto/NoSuchPaddingException;
    :catch_6
    move-exception v4

    .line 1621
    .local v4, e:Ljava/security/NoSuchProviderException;
    const-string v6, "MtpDatabase"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception in encrypt: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1622
    .end local v4           #e:Ljava/security/NoSuchProviderException;
    :catch_7
    move-exception v4

    .line 1623
    .local v4, e:Ljava/io/UnsupportedEncodingException;
    const-string v6, "MtpDatabase"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception in encrypt: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private endSendObject(Ljava/lang/String;IIZ)V
    .locals 9
    .parameter "path"
    .parameter "handle"
    .parameter "format"
    .parameter "succeeded"

    .prologue
    .line 403
    if-eqz p4, :cond_4

    .line 406
    const v4, 0xba05

    if-ne p3, v4, :cond_2

    .line 408
    move-object v2, p1

    .line 409
    .local v2, name:Ljava/lang/String;
    const/16 v4, 0x2f

    invoke-virtual {v2, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 410
    .local v1, lastSlash:I
    if-ltz v1, :cond_0

    .line 411
    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 414
    :cond_0
    const-string v4, ".pla"

    invoke-virtual {v2, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 415
    const/4 v4, 0x0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x4

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 418
    :cond_1
    new-instance v3, Landroid/content/ContentValues;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Landroid/content/ContentValues;-><init>(I)V

    .line 419
    .local v3, values:Landroid/content/ContentValues;
    const-string v4, "_data"

    invoke-virtual {v3, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    const-string/jumbo v4, "name"

    invoke-virtual {v3, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    const-string v4, "format"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 422
    const-string v4, "date_modified"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 423
    const-string/jumbo v4, "media_scanner_new_object_id"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 425
    :try_start_0
    iget-object v4, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    sget-object v5, Landroid/provider/MediaStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-interface {v4, v5, v3}, Landroid/content/IContentProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 437
    .end local v1           #lastSlash:I
    .end local v2           #name:Ljava/lang/String;
    .end local v3           #values:Landroid/content/ContentValues;
    :goto_0
    return-void

    .line 426
    .restart local v1       #lastSlash:I
    .restart local v2       #name:Ljava/lang/String;
    .restart local v3       #values:Landroid/content/ContentValues;
    :catch_0
    move-exception v0

    .line 427
    .local v0, e:Landroid/os/RemoteException;
    const-string v4, "MtpDatabase"

    const-string v5, "RemoteException in endSendObject"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 429
    .end local v0           #e:Landroid/os/RemoteException;
    .end local v1           #lastSlash:I
    .end local v2           #name:Ljava/lang/String;
    .end local v3           #values:Landroid/content/ContentValues;
    :cond_2
    const v4, 0xba03

    if-ne p3, v4, :cond_3

    .line 430
    const-string v4, "MtpDatabase"

    const-string v5, "endSendObject for AbstractAudioAlbum"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 432
    :cond_3
    iget-object v4, p0, Landroid/mtp/MtpDatabase;->mMediaScanner:Landroid/media/MediaScanner;

    iget-object v5, p0, Landroid/mtp/MtpDatabase;->mVolumeName:Ljava/lang/String;

    invoke-virtual {v4, p1, v5, p2, p3}, Landroid/media/MediaScanner;->scanMtpFile(Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_0

    .line 435
    :cond_4
    invoke-direct {p0, p2}, Landroid/mtp/MtpDatabase;->deleteFile(I)I

    goto :goto_0
.end method

.method private getBondedHostInfo()Landroid/mtp/MtpDatabase$TrustedHostInfo;
    .locals 12

    .prologue
    const/4 v0, 0x0

    .line 1762
    const/4 v6, 0x0

    .line 1763
    .local v6, c:Landroid/database/Cursor;
    new-instance v9, Landroid/mtp/MtpDatabase$TrustedHostInfo;

    invoke-direct {v9, p0, v0}, Landroid/mtp/MtpDatabase$TrustedHostInfo;-><init>(Landroid/mtp/MtpDatabase;Landroid/mtp/MtpDatabase$1;)V

    .line 1764
    .local v9, hostInfo:Landroid/mtp/MtpDatabase$TrustedHostInfo;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v9, Landroid/mtp/MtpDatabase$TrustedHostInfo;->idList:Ljava/util/ArrayList;

    .line 1765
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v9, Landroid/mtp/MtpDatabase$TrustedHostInfo;->nameList:Ljava/util/ArrayList;

    .line 1768
    :try_start_0
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mObjectsUri:Landroid/net/Uri;

    sget-object v2, Landroid/mtp/MtpDatabase;->ID_NAME_PATH_PROJECTION:[Ljava/lang/String;

    const-string v3, "format=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const v11, 0xb102

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v4, v5

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Landroid/content/IContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 1771
    if-nez v6, :cond_1

    .line 1789
    if-eqz v6, :cond_0

    .line 1790
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1793
    :cond_0
    :goto_0
    return-object v9

    .line 1774
    :cond_1
    :goto_1
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1775
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 1776
    .local v8, hostId:I
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 1777
    .local v10, hostName:Ljava/lang/String;
    if-nez v10, :cond_2

    .line 1778
    const/4 v0, 0x2

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 1779
    if-eqz v10, :cond_2

    .line 1780
    invoke-static {v10}, Landroid/mtp/MtpPropertyGroup;->nameFromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1783
    :cond_2
    iget-object v0, v9, Landroid/mtp/MtpDatabase$TrustedHostInfo;->idList:Ljava/util/ArrayList;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1784
    iget-object v0, v9, Landroid/mtp/MtpDatabase$TrustedHostInfo;->nameList:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1786
    .end local v8           #hostId:I
    .end local v10           #hostName:Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 1787
    .local v7, e:Landroid/os/RemoteException;
    :try_start_2
    const-string v0, "MtpDatabase"

    const-string v1, "Exception in getBondedHostInfo: "

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1789
    if-eqz v6, :cond_0

    .line 1790
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1789
    .end local v7           #e:Landroid/os/RemoteException;
    :cond_3
    if-eqz v6, :cond_0

    .line 1790
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1789
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_4

    .line 1790
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
.end method

.method private getDeviceProperty(I[J[C)I
    .locals 25
    .parameter "property"
    .parameter "outIntValue"
    .parameter "outStringValue"

    .prologue
    .line 1046
    sparse-switch p1, :sswitch_data_0

    .line 1135
    const/16 v16, 0x200a

    :cond_0
    :goto_0
    return v16

    .line 1048
    :sswitch_0
    const/4 v11, 0x0

    .line 1049
    .local v11, iStream:Ljava/io/InputStream;
    const/16 v16, 0x2001

    .line 1051
    .local v16, result:I
    const/4 v13, 0x0

    .line 1052
    .local v13, index:I
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/mtp/MtpDatabase;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x108034d

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v11

    .line 1054
    const/16 v4, 0x400

    .line 1055
    .local v4, READCOUNT:I
    const/16 v22, 0x400

    move/from16 v0, v22

    new-array v6, v0, [B

    .line 1056
    .local v6, buffer:[B
    invoke-virtual {v11, v6}, Ljava/io/InputStream;->read([B)I

    move-result v5

    .line 1057
    .local v5, actualCount:I
    const/16 v18, 0x0

    .line 1058
    .local v18, total:I
    const/16 v17, 0x1

    .line 1059
    .local v17, success:Z
    :goto_1
    if-lez v5, :cond_1

    .line 1060
    add-int v18, v18, v5

    .line 1061
    const/high16 v22, 0x2

    move/from16 v0, v18

    move/from16 v1, v22

    if-le v0, v1, :cond_2

    .line 1062
    const-string v22, "MtpDatabase"

    const-string v23, "The device icon size too large!"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1063
    const/16 v17, 0x0

    .line 1076
    :cond_1
    :goto_2
    if-eqz v17, :cond_5

    if-lez v18, :cond_5

    .line 1077
    const/16 v22, 0x0

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v23, v0

    aput-wide v23, p2, v22
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1085
    :goto_3
    if-eqz v11, :cond_0

    .line 1087
    :try_start_1
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1088
    :catch_0
    move-exception v8

    .line 1089
    .local v8, e:Ljava/io/IOException;
    const-string v22, "MtpDatabase"

    const-string v23, "Exception when close the Stream!"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1066
    .end local v8           #e:Ljava/io/IOException;
    :cond_2
    const/4 v10, 0x0

    .local v10, i:I
    move v14, v13

    .end local v13           #index:I
    .local v14, index:I
    :goto_4
    if-ge v10, v5, :cond_3

    .line 1067
    add-int/lit8 v13, v14, 0x1

    .end local v14           #index:I
    .restart local v13       #index:I
    :try_start_2
    aget-byte v22, v6, v10

    move/from16 v0, v22

    int-to-char v0, v0

    move/from16 v22, v0

    aput-char v22, p3, v14
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 1066
    add-int/lit8 v10, v10, 0x1

    move v14, v13

    .end local v13           #index:I
    .restart local v14       #index:I
    goto :goto_4

    .line 1070
    :cond_3
    const/16 v22, 0x400

    move/from16 v0, v22

    if-ge v5, v0, :cond_4

    move v13, v14

    .line 1071
    .end local v14           #index:I
    .restart local v13       #index:I
    goto :goto_2

    .line 1073
    .end local v13           #index:I
    .restart local v14       #index:I
    :cond_4
    :try_start_3
    invoke-virtual {v11, v6}, Ljava/io/InputStream;->read([B)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    move-result v5

    move v13, v14

    .end local v14           #index:I
    .restart local v13       #index:I
    goto :goto_1

    .line 1079
    .end local v10           #i:I
    :cond_5
    const/16 v16, 0x201c

    goto :goto_3

    .line 1081
    .end local v4           #READCOUNT:I
    .end local v5           #actualCount:I
    .end local v6           #buffer:[B
    .end local v17           #success:Z
    .end local v18           #total:I
    :catch_1
    move-exception v8

    .line 1082
    .restart local v8       #e:Ljava/io/IOException;
    :goto_5
    :try_start_4
    const-string v22, "MtpDatabase"

    const-string v23, "Exception when reading mtp icon!"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1083
    const/16 v16, 0x201c

    .line 1085
    if-eqz v11, :cond_0

    .line 1087
    :try_start_5
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_0

    .line 1088
    :catch_2
    move-exception v8

    .line 1089
    const-string v22, "MtpDatabase"

    const-string v23, "Exception when close the Stream!"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 1085
    .end local v8           #e:Ljava/io/IOException;
    .end local v13           #index:I
    :catchall_0
    move-exception v22

    if-eqz v11, :cond_6

    .line 1087
    :try_start_6
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 1090
    :cond_6
    :goto_6
    throw v22

    .line 1088
    :catch_3
    move-exception v8

    .line 1089
    .restart local v8       #e:Ljava/io/IOException;
    const-string v23, "MtpDatabase"

    const-string v24, "Exception when close the Stream!"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    .line 1098
    .end local v8           #e:Ljava/io/IOException;
    .end local v11           #iStream:Ljava/io/InputStream;
    .end local v16           #result:I
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/mtp/MtpDatabase;->mDeviceProperties:Landroid/content/SharedPreferences;

    move-object/from16 v22, v0

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v23

    const-string v24, ""

    invoke-interface/range {v22 .. v24}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 1099
    .local v20, value:Ljava/lang/String;
    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v15

    .line 1100
    .local v15, length:I
    const/16 v22, 0xff

    move/from16 v0, v22

    if-le v15, v0, :cond_7

    .line 1101
    const/16 v15, 0xff

    .line 1103
    :cond_7
    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v22

    move-object/from16 v2, p3

    move/from16 v3, v23

    invoke-virtual {v0, v1, v15, v2, v3}, Ljava/lang/String;->getChars(II[CI)V

    .line 1104
    const/16 v22, 0x0

    aput-char v22, p3, v15

    .line 1105
    const/16 v16, 0x2001

    goto/16 :goto_0

    .line 1108
    .end local v15           #length:I
    .end local v20           #value:Ljava/lang/String;
    :sswitch_2
    invoke-virtual/range {p0 .. p0}, Landroid/mtp/MtpDatabase;->getDeviceUuid()Ljava/lang/String;

    move-result-object v19

    .line 1109
    .local v19, uuid:Ljava/lang/String;
    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->isEmpty()Z

    move-result v22

    if-eqz v22, :cond_8

    .line 1110
    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const-string v24, "3"

    aput-object v24, v22, v23

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Landroid/mtp/MtpDatabase;->notifyPairError([Ljava/lang/String;)V

    .line 1111
    const/16 v16, 0x2002

    goto/16 :goto_0

    .line 1113
    :cond_8
    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v22

    const/16 v23, 0xff

    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_9

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v15

    .line 1114
    .restart local v15       #length:I
    :goto_7
    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v22

    move-object/from16 v2, p3

    move/from16 v3, v23

    invoke-virtual {v0, v1, v15, v2, v3}, Ljava/lang/String;->getChars(II[CI)V

    .line 1115
    const/16 v22, 0x0

    aput-char v22, p3, v15

    .line 1116
    const/16 v16, 0x2001

    goto/16 :goto_0

    .line 1113
    .end local v15           #length:I
    :cond_9
    const/16 v15, 0xff

    goto :goto_7

    .line 1120
    .end local v19           #uuid:Ljava/lang/String;
    :sswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/mtp/MtpDatabase;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    const-string/jumbo v23, "window"

    invoke-virtual/range {v22 .. v23}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/view/WindowManager;

    invoke-interface/range {v22 .. v22}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v7

    .line 1122
    .local v7, display:Landroid/view/Display;
    invoke-virtual {v7}, Landroid/view/Display;->getMaximumSizeDimension()I

    move-result v21

    .line 1123
    .local v21, width:I
    invoke-virtual {v7}, Landroid/view/Display;->getMaximumSizeDimension()I

    move-result v9

    .line 1124
    .local v9, height:I
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, "x"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 1125
    .local v12, imageSize:Ljava/lang/String;
    const/16 v22, 0x0

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v23

    const/16 v24, 0x0

    move/from16 v0, v22

    move/from16 v1, v23

    move-object/from16 v2, p3

    move/from16 v3, v24

    invoke-virtual {v12, v0, v1, v2, v3}, Ljava/lang/String;->getChars(II[CI)V

    .line 1126
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v22

    const/16 v23, 0x0

    aput-char v23, p3, v22

    .line 1127
    const/16 v16, 0x2001

    goto/16 :goto_0

    .line 1130
    .end local v7           #display:Landroid/view/Display;
    .end local v9           #height:I
    .end local v12           #imageSize:Ljava/lang/String;
    .end local v21           #width:I
    :sswitch_4
    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/mtp/MtpDatabase;->mBatteryLevel:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v23, v0

    aput-wide v23, p2, v22

    .line 1131
    const/16 v22, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Landroid/mtp/MtpDatabase;->mBatteryScale:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v23, v0

    aput-wide v23, p2, v22

    .line 1132
    const/16 v16, 0x2001

    goto/16 :goto_0

    .line 1081
    .restart local v4       #READCOUNT:I
    .restart local v5       #actualCount:I
    .restart local v6       #buffer:[B
    .restart local v10       #i:I
    .restart local v11       #iStream:Ljava/io/InputStream;
    .restart local v14       #index:I
    .restart local v16       #result:I
    .restart local v17       #success:Z
    .restart local v18       #total:I
    :catch_4
    move-exception v8

    move v13, v14

    .end local v14           #index:I
    .restart local v13       #index:I
    goto/16 :goto_5

    .line 1046
    nop

    :sswitch_data_0
    .sparse-switch
        0x5001 -> :sswitch_4
        0x5003 -> :sswitch_3
        0xd120 -> :sswitch_2
        0xd401 -> :sswitch_1
        0xd402 -> :sswitch_1
        0xd405 -> :sswitch_0
    .end sparse-switch
.end method

.method private getKey()Ljava/lang/String;
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/16 v9, 0x18

    .line 1662
    const/4 v2, 0x0

    .line 1664
    .local v2, imei:Ljava/lang/String;
    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "1"

    aput-object v6, v5, v10

    const/4 v6, 0x1

    const-string v7, "6"

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-string v7, "3"

    aput-object v7, v5, v6

    const/4 v6, 0x3

    const-string v7, "5"

    aput-object v7, v5, v6

    const/4 v6, 0x4

    const-string v7, "2"

    aput-object v7, v5, v6

    const/4 v6, 0x5

    const-string v7, "7"

    aput-object v7, v5, v6

    const/4 v6, 0x6

    const-string v7, "4"

    aput-object v7, v5, v6

    const/4 v6, 0x7

    const-string v7, "4"

    aput-object v7, v5, v6

    const/16 v6, 0x8

    const-string v7, "6"

    aput-object v7, v5, v6

    const/16 v6, 0x9

    const-string v7, "5"

    aput-object v7, v5, v6

    const/16 v6, 0xa

    const-string v7, "0"

    aput-object v7, v5, v6

    const/16 v6, 0xb

    const-string v7, "5"

    aput-object v7, v5, v6

    const/16 v6, 0xc

    const-string v7, "9"

    aput-object v7, v5, v6

    const/16 v6, 0xd

    const-string v7, "2"

    aput-object v7, v5, v6

    const/16 v6, 0xe

    const-string v7, "6"

    aput-object v7, v5, v6

    const/16 v6, 0xf

    const-string v7, "3"

    aput-object v7, v5, v6

    const/16 v6, 0x10

    const-string v7, "8"

    aput-object v7, v5, v6

    const/16 v6, 0x11

    const-string v7, "8"

    aput-object v7, v5, v6

    const/16 v6, 0x12

    const-string v7, "7"

    aput-object v7, v5, v6

    const/16 v6, 0x13

    const-string v7, "0"

    aput-object v7, v5, v6

    const/16 v6, 0x14

    const-string v7, "9"

    aput-object v7, v5, v6

    const/16 v6, 0x15

    const-string v7, "1"

    aput-object v7, v5, v6

    const/16 v6, 0x16

    const-string v7, "3"

    aput-object v7, v5, v6

    const/16 v6, 0x17

    const-string v7, "3"

    aput-object v7, v5, v6

    .line 1669
    .local v5, pad:[Ljava/lang/String;
    :try_start_0
    iget-object v6, p0, Landroid/mtp/MtpDatabase;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "phone"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    .line 1671
    .local v4, man:Landroid/telephony/TelephonyManager;
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 1675
    .end local v4           #man:Landroid/telephony/TelephonyManager;
    :goto_0
    if-nez v2, :cond_1

    const-string v3, ""

    .line 1677
    .local v3, key:Ljava/lang/String;
    :goto_1
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-le v6, v9, :cond_0

    .line 1679
    invoke-virtual {v3, v10, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 1683
    :cond_0
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    .local v1, i:I
    :goto_2
    if-ge v1, v9, :cond_2

    .line 1684
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v5, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1683
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1672
    .end local v1           #i:I
    .end local v3           #key:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1673
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v6, "MtpDatabase"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception in getKey: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v0           #e:Ljava/lang/NullPointerException;
    :cond_1
    move-object v3, v2

    .line 1675
    goto :goto_1

    .line 1686
    .restart local v1       #i:I
    .restart local v3       #key:Ljava/lang/String;
    :cond_2
    return-object v3
.end method

.method private getNumObjects(III)I
    .locals 4
    .parameter "storageID"
    .parameter "format"
    .parameter "parent"

    .prologue
    .line 565
    const/4 v0, 0x0

    .line 567
    .local v0, c:Landroid/database/Cursor;
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Landroid/mtp/MtpDatabase;->createObjectQuery(III)Landroid/database/Cursor;

    move-result-object v0

    .line 568
    if-eqz v0, :cond_1

    .line 569
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 574
    if-eqz v0, :cond_0

    .line 575
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 578
    :cond_0
    :goto_0
    return v2

    .line 574
    :cond_1
    if-eqz v0, :cond_2

    .line 575
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 578
    :cond_2
    :goto_1
    const/4 v2, -0x1

    goto :goto_0

    .line 571
    :catch_0
    move-exception v1

    .line 572
    .local v1, e:Landroid/os/RemoteException;
    :try_start_1
    const-string v2, "MtpDatabase"

    const-string v3, "RemoteException in getNumObjects"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 574
    if-eqz v0, :cond_2

    .line 575
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 574
    .end local v1           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    if-eqz v0, :cond_3

    .line 575
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v2
.end method

.method private getObjectFilePath(I[I[J)[C
    .locals 12
    .parameter "handle"
    .parameter "result"
    .parameter "outFileLengthFormat"

    .prologue
    const/16 v4, 0x2001

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1228
    const/4 v8, 0x0

    .line 1229
    .local v8, outFilePath:[C
    if-nez p1, :cond_0

    .line 1231
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mMediaStoragePath:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    new-array v8, v0, [C

    .line 1232
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mMediaStoragePath:Ljava/lang/String;

    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mMediaStoragePath:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v2, v1, v8, v2}, Ljava/lang/String;->getChars(II[CI)V

    .line 1233
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mMediaStoragePath:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    aput-char v2, v8, v0

    .line 1234
    const-wide/16 v0, 0x0

    aput-wide v0, p3, v2

    .line 1235
    const-wide/16 v0, 0x3001

    aput-wide v0, p3, v3

    .line 1236
    aput v4, p2, v2

    move-object v9, v8

    .line 1262
    .end local v8           #outFilePath:[C
    .local v9, outFilePath:[C
    :goto_0
    return-object v9

    .line 1239
    .end local v9           #outFilePath:[C
    .restart local v8       #outFilePath:[C
    :cond_0
    const/4 v6, 0x0

    .line 1241
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mObjectsUri:Landroid/net/Uri;

    sget-object v2, Landroid/mtp/MtpDatabase;->PATH_SIZE_FORMAT_PROJECTION:[Ljava/lang/String;

    const-string v3, "_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v4, v5

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Landroid/content/IContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1243
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1244
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 1245
    .local v10, path:Ljava/lang/String;
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    new-array v8, v0, [C

    .line 1246
    const/4 v0, 0x0

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v10, v0, v1, v8, v2}, Ljava/lang/String;->getChars(II[CI)V

    .line 1247
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    aput-char v1, v8, v0

    .line 1248
    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    aput-wide v1, p3, v0

    .line 1249
    const/4 v0, 0x1

    const/4 v1, 0x3

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    aput-wide v1, p3, v0

    .line 1250
    const/4 v0, 0x0

    const/16 v1, 0x2001

    aput v1, p2, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1261
    if-eqz v6, :cond_1

    .line 1262
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    move-object v9, v8

    .end local v8           #outFilePath:[C
    .restart local v9       #outFilePath:[C
    goto :goto_0

    .line 1253
    .end local v9           #outFilePath:[C
    .end local v10           #path:Ljava/lang/String;
    .restart local v8       #outFilePath:[C
    :cond_2
    const/4 v0, 0x0

    const/16 v1, 0x2009

    :try_start_1
    aput v1, p2, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1261
    if-eqz v6, :cond_3

    .line 1262
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    move-object v9, v8

    .end local v8           #outFilePath:[C
    .restart local v9       #outFilePath:[C
    goto :goto_0

    .line 1256
    .end local v9           #outFilePath:[C
    .restart local v8       #outFilePath:[C
    :catch_0
    move-exception v7

    .line 1257
    .local v7, e:Landroid/os/RemoteException;
    :try_start_2
    const-string v0, "MtpDatabase"

    const-string v1, "RemoteException in getObjectFilePath"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1258
    const/4 v0, 0x0

    const/16 v1, 0x2002

    aput v1, p2, v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1261
    if-eqz v6, :cond_4

    .line 1262
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    move-object v9, v8

    .end local v8           #outFilePath:[C
    .restart local v9       #outFilePath:[C
    goto :goto_0

    .line 1261
    .end local v7           #e:Landroid/os/RemoteException;
    .end local v9           #outFilePath:[C
    .restart local v8       #outFilePath:[C
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_5

    .line 1262
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0
.end method

.method private getObjectInfo(I[I[C[J)Z
    .locals 14
    .parameter "handle"
    .parameter "outStorageFormatParent"
    .parameter "outName"
    .parameter "outSizeModified"

    .prologue
    .line 1193
    const/4 v7, 0x0

    .line 1195
    .local v7, c:Landroid/database/Cursor;
    :try_start_0
    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    iget-object v2, p0, Landroid/mtp/MtpDatabase;->mObjectsUri:Landroid/net/Uri;

    sget-object v3, Landroid/mtp/MtpDatabase;->OBJECT_INFO_PROJECTION:[Ljava/lang/String;

    const-string v4, "_id=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v5, v6

    const/4 v6, 0x0

    invoke-interface/range {v1 .. v6}, Landroid/content/IContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1197
    if-eqz v7, :cond_3

    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1198
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    aput v2, p2, v1

    .line 1199
    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    aput v2, p2, v1

    .line 1200
    const/4 v1, 0x2

    const/4 v2, 0x3

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    aput v2, p2, v1

    .line 1203
    const/4 v1, 0x4

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 1204
    .local v11, path:Ljava/lang/String;
    const/16 v1, 0x2f

    invoke-virtual {v11, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v10

    .line 1205
    .local v10, lastSlash:I
    if-ltz v10, :cond_2

    add-int/lit8 v12, v10, 0x1

    .line 1206
    .local v12, start:I
    :goto_0
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v9

    .line 1207
    .local v9, end:I
    sub-int v1, v9, v12

    const/16 v2, 0xff

    if-le v1, v2, :cond_0

    .line 1208
    add-int/lit16 v9, v12, 0xff

    .line 1210
    :cond_0
    const/4 v1, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v11, v12, v9, v0, v1}, Ljava/lang/String;->getChars(II[CI)V

    .line 1211
    sub-int v1, v9, v12

    const/4 v2, 0x0

    aput-char v2, p3, v1

    .line 1213
    const/4 v1, 0x0

    const/4 v2, 0x5

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    aput-wide v2, p4, v1

    .line 1214
    const/4 v1, 0x1

    const/4 v2, 0x6

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    aput-wide v2, p4, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1215
    const/4 v1, 0x1

    .line 1220
    if-eqz v7, :cond_1

    .line 1221
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1224
    .end local v9           #end:I
    .end local v10           #lastSlash:I
    .end local v11           #path:Ljava/lang/String;
    .end local v12           #start:I
    :cond_1
    :goto_1
    return v1

    .line 1205
    .restart local v10       #lastSlash:I
    .restart local v11       #path:Ljava/lang/String;
    :cond_2
    const/4 v12, 0x0

    goto :goto_0

    .line 1220
    .end local v10           #lastSlash:I
    .end local v11           #path:Ljava/lang/String;
    :cond_3
    if-eqz v7, :cond_4

    .line 1221
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1224
    :cond_4
    :goto_2
    const/4 v1, 0x0

    goto :goto_1

    .line 1217
    :catch_0
    move-exception v8

    .line 1218
    .local v8, e:Landroid/os/RemoteException;
    :try_start_1
    const-string v1, "MtpDatabase"

    const-string v2, "RemoteException in getObjectInfo"

    invoke-static {v1, v2, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1220
    if-eqz v7, :cond_4

    .line 1221
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 1220
    .end local v8           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    if-eqz v7, :cond_5

    .line 1221
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v1
.end method

.method private getObjectList(III)[I
    .locals 8
    .parameter "storageID"
    .parameter "format"
    .parameter "parent"

    .prologue
    const/4 v5, 0x0

    .line 539
    const/4 v0, 0x0

    .line 541
    .local v0, c:Landroid/database/Cursor;
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Landroid/mtp/MtpDatabase;->createObjectQuery(III)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 542
    if-nez v0, :cond_2

    .line 557
    if-eqz v0, :cond_0

    .line 558
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_0
    move-object v4, v5

    .line 561
    :cond_1
    :goto_0
    return-object v4

    .line 545
    :cond_2
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    .line 546
    .local v1, count:I
    if-lez v1, :cond_4

    .line 547
    new-array v4, v1, [I

    .line 548
    .local v4, result:[I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v1, :cond_3

    .line 549
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    .line 550
    const/4 v6, 0x0

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    aput v6, v4, v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 548
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 557
    :cond_3
    if-eqz v0, :cond_1

    .line 558
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 557
    .end local v3           #i:I
    .end local v4           #result:[I
    :cond_4
    if-eqz v0, :cond_5

    .line 558
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .end local v1           #count:I
    :cond_5
    :goto_2
    move-object v4, v5

    .line 561
    goto :goto_0

    .line 554
    :catch_0
    move-exception v2

    .line 555
    .local v2, e:Landroid/os/RemoteException;
    :try_start_2
    const-string v6, "MtpDatabase"

    const-string v7, "RemoteException in getObjectList"

    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 557
    if-eqz v0, :cond_5

    .line 558
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 557
    .end local v2           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v5

    if-eqz v0, :cond_6

    .line 558
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v5
.end method

.method private getObjectPropertyList(JIJII)Landroid/mtp/MtpPropertyList;
    .locals 5
    .parameter "handle"
    .parameter "format"
    .parameter "property"
    .parameter "groupCode"
    .parameter "depth"

    .prologue
    const/4 v4, 0x0

    .line 856
    if-eqz p6, :cond_0

    .line 857
    new-instance v2, Landroid/mtp/MtpPropertyList;

    const v3, 0xa807

    invoke-direct {v2, v4, v3}, Landroid/mtp/MtpPropertyList;-><init>(II)V

    .line 877
    :goto_0
    return-object v2

    .line 861
    :cond_0
    const-wide v2, 0xffffffffL

    cmp-long v2, p4, v2

    if-nez v2, :cond_2

    .line 862
    iget-object v2, p0, Landroid/mtp/MtpDatabase;->mPropertyGroupsByFormat:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/mtp/MtpPropertyGroup;

    .line 863
    .local v0, propertyGroup:Landroid/mtp/MtpPropertyGroup;
    if-nez v0, :cond_1

    .line 864
    invoke-direct {p0, p3}, Landroid/mtp/MtpDatabase;->getSupportedObjectProperties(I)[I

    move-result-object v1

    .line 865
    .local v1, propertyList:[I
    new-instance v0, Landroid/mtp/MtpPropertyGroup;

    .end local v0           #propertyGroup:Landroid/mtp/MtpPropertyGroup;
    iget-object v2, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    iget-object v3, p0, Landroid/mtp/MtpDatabase;->mVolumeName:Ljava/lang/String;

    invoke-direct {v0, p0, v2, v3, v1}, Landroid/mtp/MtpPropertyGroup;-><init>(Landroid/mtp/MtpDatabase;Landroid/content/IContentProvider;Ljava/lang/String;[I)V

    .line 866
    .restart local v0       #propertyGroup:Landroid/mtp/MtpPropertyGroup;
    iget-object v2, p0, Landroid/mtp/MtpDatabase;->mPropertyGroupsByFormat:Ljava/util/HashMap;

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 877
    .end local v1           #propertyList:[I
    :cond_1
    :goto_1
    long-to-int v2, p1

    invoke-virtual {v0, v2, p3, p7}, Landroid/mtp/MtpPropertyGroup;->getPropertyList(III)Landroid/mtp/MtpPropertyList;

    move-result-object v2

    goto :goto_0

    .line 869
    .end local v0           #propertyGroup:Landroid/mtp/MtpPropertyGroup;
    :cond_2
    iget-object v2, p0, Landroid/mtp/MtpDatabase;->mPropertyGroupsByProperty:Ljava/util/HashMap;

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/mtp/MtpPropertyGroup;

    .line 870
    .restart local v0       #propertyGroup:Landroid/mtp/MtpPropertyGroup;
    if-nez v0, :cond_1

    .line 871
    const/4 v2, 0x1

    new-array v1, v2, [I

    long-to-int v2, p4

    aput v2, v1, v4

    .line 872
    .restart local v1       #propertyList:[I
    new-instance v0, Landroid/mtp/MtpPropertyGroup;

    .end local v0           #propertyGroup:Landroid/mtp/MtpPropertyGroup;
    iget-object v2, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    iget-object v3, p0, Landroid/mtp/MtpDatabase;->mVolumeName:Ljava/lang/String;

    invoke-direct {v0, p0, v2, v3, v1}, Landroid/mtp/MtpPropertyGroup;-><init>(Landroid/mtp/MtpDatabase;Landroid/content/IContentProvider;Ljava/lang/String;[I)V

    .line 873
    .restart local v0       #propertyGroup:Landroid/mtp/MtpPropertyGroup;
    iget-object v2, p0, Landroid/mtp/MtpDatabase;->mPropertyGroupsByProperty:Ljava/util/HashMap;

    new-instance v3, Ljava/lang/Integer;

    long-to-int v4, p4

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method private getObjectReferences(I)[I
    .locals 14
    .parameter "handle"

    .prologue
    .line 1342
    const/4 v10, 0x0

    .line 1343
    .local v10, format:I
    const/4 v7, 0x0

    .line 1345
    .local v7, c:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mObjectsUri:Landroid/net/Uri;

    sget-object v2, Landroid/mtp/MtpDatabase;->PATH_SIZE_FORMAT_PROJECTION:[Ljava/lang/String;

    const-string v3, "_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v4, v5

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Landroid/content/IContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1347
    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1348
    const/4 v0, 0x3

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 1353
    if-nez v10, :cond_2

    .line 1354
    const-string v0, "MtpDatabase"

    const-string v2, "getObjectReferences -> Invalid Format Code: 0"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1355
    const/4 v12, 0x0

    .line 1361
    if-eqz v7, :cond_0

    .line 1362
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1405
    :cond_0
    :goto_0
    return-object v12

    .line 1350
    :cond_1
    :try_start_1
    const-string v0, "MtpDatabase"

    const-string v2, "getObjectReferences -> invalid object handle"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1351
    const/4 v12, 0x0

    .line 1361
    if-eqz v7, :cond_0

    .line 1362
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1361
    :cond_2
    if-eqz v7, :cond_3

    .line 1362
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1366
    :cond_3
    const/16 v0, 0x3001

    if-ne v10, v0, :cond_7

    .line 1368
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mReferencesTable:Ljava/util/Hashtable;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1369
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mReferencesTable:Ljava/util/Hashtable;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    .line 1370
    .local v6, arrList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 1371
    .local v8, count:I
    if-nez v8, :cond_5

    .line 1372
    const/4 v12, 0x0

    goto :goto_0

    .line 1357
    .end local v6           #arrList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v8           #count:I
    :catch_0
    move-exception v9

    .line 1358
    .local v9, e:Landroid/os/RemoteException;
    :try_start_2
    const-string v0, "MtpDatabase"

    const-string v2, "RemoteException in getObjectReferences - Hashtable section"

    invoke-static {v0, v2, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1359
    const/4 v12, 0x0

    .line 1361
    if-eqz v7, :cond_0

    .line 1362
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1361
    .end local v9           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_4

    .line 1362
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0

    .line 1374
    .restart local v6       #arrList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v8       #count:I
    :cond_5
    new-array v12, v8, [I

    .line 1375
    .local v12, result:[I
    const/4 v11, 0x0

    .local v11, i:I
    :goto_1
    if-ge v11, v8, :cond_0

    .line 1376
    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput v0, v12, v11

    .line 1375
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 1380
    .end local v6           #arrList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v8           #count:I
    .end local v11           #i:I
    .end local v12           #result:[I
    :cond_6
    const/4 v12, 0x0

    goto :goto_0

    .line 1382
    :cond_7
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mVolumeName:Ljava/lang/String;

    int-to-long v2, p1

    invoke-static {v0, v2, v3}, Landroid/provider/MediaStore$Files;->getMtpReferencesUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v1

    .line 1383
    .local v1, uri:Landroid/net/Uri;
    const/4 v7, 0x0

    .line 1385
    :try_start_3
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    sget-object v2, Landroid/mtp/MtpDatabase;->ID_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Landroid/content/IContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v7

    .line 1386
    if-nez v7, :cond_8

    .line 1387
    const/4 v12, 0x0

    .line 1401
    if-eqz v7, :cond_0

    .line 1402
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1389
    :cond_8
    :try_start_4
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v8

    .line 1390
    .restart local v8       #count:I
    if-lez v8, :cond_a

    .line 1391
    new-array v12, v8, [I

    .line 1392
    .restart local v12       #result:[I
    const/4 v11, 0x0

    .restart local v11       #i:I
    :goto_2
    if-ge v11, v8, :cond_9

    .line 1393
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    .line 1394
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    aput v0, v12, v11
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1

    .line 1392
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 1401
    :cond_9
    if-eqz v7, :cond_0

    .line 1402
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 1401
    .end local v11           #i:I
    .end local v12           #result:[I
    :cond_a
    if-eqz v7, :cond_b

    .line 1402
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1405
    .end local v8           #count:I
    :cond_b
    :goto_3
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 1398
    :catch_1
    move-exception v9

    .line 1399
    .restart local v9       #e:Landroid/os/RemoteException;
    :try_start_5
    const-string v0, "MtpDatabase"

    const-string v2, "RemoteException in getObjectList"

    invoke-static {v0, v2, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1401
    if-eqz v7, :cond_b

    .line 1402
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_3

    .line 1401
    .end local v9           #e:Landroid/os/RemoteException;
    :catchall_1
    move-exception v0

    if-eqz v7, :cond_c

    .line 1402
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_c
    throw v0
.end method

.method private getSupportedCaptureFormats()[I
    .locals 1

    .prologue
    .line 614
    const/4 v0, 0x0

    return-object v0
.end method

.method private getSupportedDeviceProperties()[I
    .locals 1

    .prologue
    .line 842
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 0x4
        0x1t 0xd4t 0x0t 0x0t
        0x2t 0xd4t 0x0t 0x0t
        0x5t 0xd4t 0x0t 0x0t
        0x3t 0x50t 0x0t 0x0t
        0x20t 0xd1t 0x0t 0x0t
        0x1t 0x50t 0x0t 0x0t
    .end array-data
.end method

.method private getSupportedObjectProperties(I)[I
    .locals 1
    .parameter "format"

    .prologue
    .line 812
    sparse-switch p1, :sswitch_data_0

    .line 837
    sget-object v0, Landroid/mtp/MtpDatabase;->FILE_PROPERTIES:[I

    :goto_0
    return-object v0

    .line 817
    :sswitch_0
    sget-object v0, Landroid/mtp/MtpDatabase;->AUDIO_PROPERTIES:[I

    goto :goto_0

    .line 821
    :sswitch_1
    sget-object v0, Landroid/mtp/MtpDatabase;->VIDEO_PROPERTIES:[I

    goto :goto_0

    .line 829
    :sswitch_2
    sget-object v0, Landroid/mtp/MtpDatabase;->IMAGE_PROPERTIES:[I

    goto :goto_0

    .line 831
    :sswitch_3
    sget-object v0, Landroid/mtp/MtpDatabase;->AUDIO_ALBUM_PROPERTIES:[I

    goto :goto_0

    .line 833
    :sswitch_4
    sget-object v0, Landroid/mtp/MtpDatabase;->NETWORK_ASSOCIATION_PROPERTIES:[I

    goto :goto_0

    .line 835
    :sswitch_5
    sget-object v0, Landroid/mtp/MtpDatabase;->ALL_PROPERTIES:[I

    goto :goto_0

    .line 812
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_5
        0x3008 -> :sswitch_0
        0x3009 -> :sswitch_0
        0x3801 -> :sswitch_2
        0x3802 -> :sswitch_2
        0x3804 -> :sswitch_2
        0x3807 -> :sswitch_2
        0x3808 -> :sswitch_2
        0x380b -> :sswitch_2
        0x380d -> :sswitch_2
        0xb102 -> :sswitch_4
        0xb902 -> :sswitch_1
        0xb903 -> :sswitch_0
        0xb906 -> :sswitch_0
        0xb982 -> :sswitch_1
        0xb984 -> :sswitch_1
        0xba03 -> :sswitch_3
    .end sparse-switch
.end method

.method private getSupportedPlaybackFormats()[I
    .locals 1

    .prologue
    .line 582
    const/16 v0, 0x18

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    return-object v0

    :array_0
    .array-data 0x4
        0x0t 0x30t 0x0t 0x0t
        0x1t 0x30t 0x0t 0x0t
        0x4t 0x30t 0x0t 0x0t
        0x5t 0x30t 0x0t 0x0t
        0x8t 0x30t 0x0t 0x0t
        0x9t 0x30t 0x0t 0x0t
        0x1t 0x38t 0x0t 0x0t
        0x2t 0x38t 0x0t 0x0t
        0x7t 0x38t 0x0t 0x0t
        0x8t 0x38t 0x0t 0x0t
        0xbt 0x38t 0x0t 0x0t
        0xdt 0x38t 0x0t 0x0t
        0x2t 0xb9t 0x0t 0x0t
        0x3t 0xb9t 0x0t 0x0t
        0x82t 0xb9t 0x0t 0x0t
        0x84t 0xb9t 0x0t 0x0t
        0x3t 0xbat 0x0t 0x0t
        0x5t 0xbat 0x0t 0x0t
        0x10t 0xbat 0x0t 0x0t
        0x11t 0xbat 0x0t 0x0t
        0x14t 0xbat 0x0t 0x0t
        0x82t 0xbat 0x0t 0x0t
        0x6t 0xb9t 0x0t 0x0t
        0x2t 0xb1t 0x0t 0x0t
    .end array-data
.end method

.method private inStorageSubDirectory(Ljava/lang/String;)Z
    .locals 7
    .parameter "path"

    .prologue
    .line 310
    iget-object v5, p0, Landroid/mtp/MtpDatabase;->mSubDirectories:[Ljava/lang/String;

    if-nez v5, :cond_1

    const/4 v0, 0x1

    .line 324
    :cond_0
    :goto_0
    return v0

    .line 311
    :cond_1
    if-nez p1, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    .line 313
    :cond_2
    const/4 v0, 0x0

    .line 314
    .local v0, allowed:Z
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 315
    .local v2, pathLength:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v5, p0, Landroid/mtp/MtpDatabase;->mSubDirectories:[Ljava/lang/String;

    array-length v5, v5

    if-ge v1, v5, :cond_0

    if-nez v0, :cond_0

    .line 316
    iget-object v5, p0, Landroid/mtp/MtpDatabase;->mSubDirectories:[Ljava/lang/String;

    aget-object v3, v5, v1

    .line 317
    .local v3, subdir:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    .line 318
    .local v4, subdirLength:I
    if-ge v4, v2, :cond_3

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x2f

    if-ne v5, v6, :cond_3

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 321
    const/4 v0, 0x1

    .line 315
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private initDeviceProperties(Landroid/content/Context;)V
    .locals 14
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 273
    const-string v10, "device-properties"

    .line 274
    .local v10, devicePropertiesName:Ljava/lang/String;
    const-string v1, "device-properties"

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Landroid/mtp/MtpDatabase;->mDeviceProperties:Landroid/content/SharedPreferences;

    .line 275
    const-string v1, "device-properties"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v9

    .line 277
    .local v9, databaseFile:Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 280
    const/4 v0, 0x0

    .line 281
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v8, 0x0

    .line 283
    .local v8, c:Landroid/database/Cursor;
    :try_start_0
    const-string v1, "device-properties"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v2, v3}, Landroid/content/Context;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 284
    if-eqz v0, :cond_4

    .line 285
    const-string/jumbo v1, "properties"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "code"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "value"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 287
    if-eqz v8, :cond_4

    .line 288
    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mDeviceProperties:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v11

    .line 289
    .local v11, e:Landroid/content/SharedPreferences$Editor;
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 290
    const/4 v1, 0x1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 291
    .local v12, name:Ljava/lang/String;
    const/4 v1, 0x2

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 292
    .local v13, value:Ljava/lang/String;
    invoke-interface {v11, v12, v13}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 297
    .end local v11           #e:Landroid/content/SharedPreferences$Editor;
    .end local v12           #name:Ljava/lang/String;
    .end local v13           #value:Ljava/lang/String;
    :catch_0
    move-exception v11

    .line 298
    .local v11, e:Ljava/lang/Exception;
    :try_start_1
    const-string v1, "MtpDatabase"

    const-string v2, "failed to migrate device properties"

    invoke-static {v1, v2, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 300
    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 301
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 303
    .end local v11           #e:Ljava/lang/Exception;
    :cond_1
    :goto_1
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    .line 305
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v8           #c:Landroid/database/Cursor;
    :cond_2
    return-void

    .line 294
    .restart local v0       #db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v8       #c:Landroid/database/Cursor;
    .local v11, e:Landroid/content/SharedPreferences$Editor;
    :cond_3
    :try_start_2
    invoke-interface {v11}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 300
    .end local v11           #e:Landroid/content/SharedPreferences$Editor;
    :cond_4
    if-eqz v8, :cond_5

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 301
    :cond_5
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_1

    .line 300
    :catchall_0
    move-exception v1

    if-eqz v8, :cond_6

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 301
    :cond_6
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_7
    throw v1
.end method

.method private initDeviceSystemProperties(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    .line 255
    const-string v0, "device-properties"

    .line 256
    .local v0, devicePropertiesName:Ljava/lang/String;
    const-string/jumbo v3, "ro.semc.product.name"

    .line 257
    .local v3, modelName:Ljava/lang/String;
    const-string v5, "device-properties"

    const/4 v6, 0x0

    invoke-virtual {p1, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    iput-object v5, p0, Landroid/mtp/MtpDatabase;->mDeviceProperties:Landroid/content/SharedPreferences;

    .line 258
    const v5, 0xd402

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 259
    .local v2, friendlyNameKey:Ljava/lang/String;
    const v5, 0xd401

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    .line 260
    .local v4, syncPartnerKey:Ljava/lang/String;
    iget-object v5, p0, Landroid/mtp/MtpDatabase;->mDeviceProperties:Landroid/content/SharedPreferences;

    invoke-interface {v5, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 261
    iget-object v5, p0, Landroid/mtp/MtpDatabase;->mDeviceProperties:Landroid/content/SharedPreferences;

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 262
    .local v1, e:Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v5, "ro.semc.product.name"

    const-string v6, ""

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 263
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 265
    .end local v1           #e:Landroid/content/SharedPreferences$Editor;
    :cond_0
    iget-object v5, p0, Landroid/mtp/MtpDatabase;->mDeviceProperties:Landroid/content/SharedPreferences;

    invoke-interface {v5, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 266
    iget-object v5, p0, Landroid/mtp/MtpDatabase;->mDeviceProperties:Landroid/content/SharedPreferences;

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 267
    .restart local v1       #e:Landroid/content/SharedPreferences$Editor;
    const-string v5, ""

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 268
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 270
    .end local v1           #e:Landroid/content/SharedPreferences$Editor;
    :cond_1
    return-void
.end method

.method private isStorageSubDirectory(Ljava/lang/String;)Z
    .locals 3
    .parameter "path"

    .prologue
    const/4 v1, 0x0

    .line 330
    iget-object v2, p0, Landroid/mtp/MtpDatabase;->mSubDirectories:[Ljava/lang/String;

    if-nez v2, :cond_1

    .line 336
    :cond_0
    :goto_0
    return v1

    .line 331
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v2, p0, Landroid/mtp/MtpDatabase;->mSubDirectories:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 332
    iget-object v2, p0, Landroid/mtp/MtpDatabase;->mSubDirectories:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 333
    const/4 v1, 0x1

    goto :goto_0

    .line 331
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private final native native_finalize()V
.end method

.method private final native native_setup()V
.end method

.method private notifyPairError([Ljava/lang/String;)V
    .locals 4
    .parameter "extras"

    .prologue
    .line 1581
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sonymobile.mtpwifi.PAIR_HOST_ERROR"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1582
    .local v1, response:Landroid/content/Intent;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    .line 1583
    packed-switch v0, :pswitch_data_0

    .line 1582
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1585
    :pswitch_0
    const-string/jumbo v2, "value_0"

    aget-object v3, p1, v0

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_1

    .line 1588
    :pswitch_1
    const-string/jumbo v2, "value_1"

    aget-object v3, p1, v0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 1592
    :cond_0
    iget-object v2, p0, Landroid/mtp/MtpDatabase;->mContext:Landroid/content/Context;

    const-string v3, "com.sonymobile.mtp.permission.CONTROL_MTP_STACK"

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1593
    return-void

    .line 1583
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private removeInvalidHostIds(Landroid/content/Context;)V
    .locals 10
    .parameter "context"

    .prologue
    .line 1690
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "mounted"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 1727
    :cond_0
    :goto_0
    return-void

    .line 1693
    :cond_1
    const-string v7, "HostIds"

    const/4 v8, 0x0

    invoke-virtual {p1, v7, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 1696
    .local v3, hostPrefs:Landroid/content/SharedPreferences;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Map;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1698
    invoke-direct {p0}, Landroid/mtp/MtpDatabase;->clearAllNetworkAssociationObjects()V

    goto :goto_0

    .line 1702
    :cond_2
    invoke-direct {p0}, Landroid/mtp/MtpDatabase;->getBondedHostInfo()Landroid/mtp/MtpDatabase$TrustedHostInfo;

    move-result-object v2

    .line 1704
    .local v2, hostInfo:Landroid/mtp/MtpDatabase$TrustedHostInfo;
    iget-object v7, v2, Landroid/mtp/MtpDatabase$TrustedHostInfo;->idList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 1705
    .local v4, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_3
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1706
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 1707
    .local v1, hostId:Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v7}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 1708
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-direct {p0, v7}, Landroid/mtp/MtpDatabase;->deleteHostFromDB(I)V

    .line 1709
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 1713
    .end local v1           #hostId:Ljava/lang/Integer;
    :cond_4
    invoke-interface {v3}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 1714
    .local v6, keyIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_5
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1715
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1717
    .local v5, key:Ljava/lang/String;
    :try_start_0
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 1718
    .local v1, hostId:I
    iget-object v7, v2, Landroid/mtp/MtpDatabase$TrustedHostInfo;->idList:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 1719
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1720
    .local v0, e:Landroid/content/SharedPreferences$Editor;
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v7}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1721
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 1723
    .end local v0           #e:Landroid/content/SharedPreferences$Editor;
    .end local v1           #hostId:I
    :catch_0
    move-exception v0

    .line 1724
    .local v0, e:Ljava/lang/NumberFormatException;
    const-string v7, "MtpDatabase"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception in removeInvalidHostIds: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private removeReferenceFromTable(I)V
    .locals 4
    .parameter "value"

    .prologue
    .line 1268
    iget-object v3, p0, Landroid/mtp/MtpDatabase;->mReferencesTable:Ljava/util/Hashtable;

    invoke-virtual {v3}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1270
    .local v1, keysList:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1271
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1273
    .local v0, key:Ljava/lang/Integer;
    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 1274
    .local v2, removeList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1276
    iget-object v3, p0, Landroid/mtp/MtpDatabase;->mReferencesTable:Ljava/util/Hashtable;

    invoke-virtual {v3, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 1278
    .end local v0           #key:Ljava/lang/Integer;
    .end local v2           #removeList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_0
    return-void
.end method

.method private renameFile(ILjava/lang/String;)I
    .locals 17
    .parameter "handle"
    .parameter "newName"

    .prologue
    .line 881
    const/4 v7, 0x0

    .line 884
    .local v7, c:Landroid/database/Cursor;
    const/4 v13, 0x0

    .line 885
    .local v13, path:Ljava/lang/String;
    const/4 v1, 0x1

    new-array v5, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v1

    .line 887
    .local v5, whereArgs:[Ljava/lang/String;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/mtp/MtpDatabase;->mObjectsUri:Landroid/net/Uri;

    sget-object v3, Landroid/mtp/MtpDatabase;->PATH_PROJECTION:[Ljava/lang/String;

    const-string v4, "_id=?"

    const/4 v6, 0x0

    invoke-interface/range {v1 .. v6}, Landroid/content/IContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 888
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 889
    const/4 v1, 0x1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v13

    .line 895
    :cond_0
    if-eqz v7, :cond_1

    .line 896
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 899
    :cond_1
    if-nez v13, :cond_4

    .line 900
    const/16 v1, 0x2009

    .line 940
    :cond_2
    :goto_0
    return v1

    .line 891
    :catch_0
    move-exception v8

    .line 892
    .local v8, e:Landroid/os/RemoteException;
    :try_start_1
    const-string v1, "MtpDatabase"

    const-string v2, "RemoteException in getObjectFilePath"

    invoke-static {v1, v2, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 893
    const/16 v1, 0x2002

    .line 895
    if-eqz v7, :cond_2

    .line 896
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 895
    .end local v8           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    if-eqz v7, :cond_3

    .line 896
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v1

    .line 904
    :cond_4
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Landroid/mtp/MtpDatabase;->isStorageSubDirectory(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 905
    const/16 v1, 0x200d

    goto :goto_0

    .line 909
    :cond_5
    new-instance v12, Ljava/io/File;

    invoke-direct {v12, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 910
    .local v12, oldFile:Ljava/io/File;
    const/16 v1, 0x2f

    invoke-virtual {v13, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v9

    .line 911
    .local v9, lastSlash:I
    const/4 v1, 0x1

    if-gt v9, v1, :cond_6

    .line 912
    const/16 v1, 0x2002

    goto :goto_0

    .line 914
    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    add-int/lit8 v3, v9, 0x1

    invoke-virtual {v13, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 915
    .local v11, newPath:Ljava/lang/String;
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 916
    .local v10, newFile:Ljava/io/File;
    invoke-virtual {v12, v10}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v14

    .line 917
    .local v14, success:Z
    if-nez v14, :cond_7

    .line 918
    const-string v1, "MtpDatabase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "renaming "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " failed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 919
    const/16 v1, 0x2002

    goto/16 :goto_0

    .line 923
    :cond_7
    new-instance v16, Landroid/content/ContentValues;

    invoke-direct/range {v16 .. v16}, Landroid/content/ContentValues;-><init>()V

    .line 924
    .local v16, values:Landroid/content/ContentValues;
    const-string v1, "_data"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 925
    const/4 v15, 0x0

    .line 929
    .local v15, updated:I
    :try_start_2
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/mtp/MtpDatabase;->mObjectsUri:Landroid/net/Uri;

    const-string v3, "_id=?"

    move-object/from16 v0, v16

    invoke-interface {v1, v2, v0, v3, v5}, Landroid/content/IContentProvider;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v15

    .line 933
    :goto_1
    if-nez v15, :cond_8

    .line 934
    const-string v1, "MtpDatabase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to update path for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 936
    invoke-virtual {v10, v12}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 937
    const/16 v1, 0x2002

    goto/16 :goto_0

    .line 930
    :catch_1
    move-exception v8

    .line 931
    .restart local v8       #e:Landroid/os/RemoteException;
    const-string v1, "MtpDatabase"

    const-string v2, "RemoteException in mMediaProvider.update"

    invoke-static {v1, v2, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 940
    .end local v8           #e:Landroid/os/RemoteException;
    :cond_8
    const/16 v1, 0x2001

    goto/16 :goto_0
.end method

.method private resetDeviceProperty(I)I
    .locals 8
    .parameter "property"

    .prologue
    const/16 v4, 0x2002

    const/16 v3, 0x2001

    .line 1154
    const-string/jumbo v1, "ro.semc.product.name"

    .line 1155
    .local v1, modelName:Ljava/lang/String;
    const/16 v2, 0x2001

    .line 1158
    .local v2, result:I
    sparse-switch p1, :sswitch_data_0

    .line 1184
    const/16 v2, 0x200a

    .line 1188
    :goto_0
    return v2

    .line 1161
    :sswitch_0
    iget-object v5, p0, Landroid/mtp/MtpDatabase;->mDeviceProperties:Landroid/content/SharedPreferences;

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1162
    .local v0, e:Landroid/content/SharedPreferences$Editor;
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1163
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v5

    if-eqz v5, :cond_0

    move v2, v3

    .line 1165
    :goto_1
    goto :goto_0

    :cond_0
    move v2, v4

    .line 1163
    goto :goto_1

    .line 1168
    .end local v0           #e:Landroid/content/SharedPreferences$Editor;
    :sswitch_1
    iget-object v5, p0, Landroid/mtp/MtpDatabase;->mDeviceProperties:Landroid/content/SharedPreferences;

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1169
    .restart local v0       #e:Landroid/content/SharedPreferences$Editor;
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "ro.semc.product.name"

    const-string v7, ""

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1170
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v5

    if-eqz v5, :cond_1

    move v2, v3

    .line 1172
    :goto_2
    goto :goto_0

    :cond_1
    move v2, v4

    .line 1170
    goto :goto_2

    .line 1175
    .end local v0           #e:Landroid/content/SharedPreferences$Editor;
    :sswitch_2
    iget-object v5, p0, Landroid/mtp/MtpDatabase;->mDeviceProperties:Landroid/content/SharedPreferences;

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1176
    .restart local v0       #e:Landroid/content/SharedPreferences$Editor;
    const v5, 0xd402

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "ro.semc.product.name"

    const-string v7, ""

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1178
    const v5, 0xd401

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1180
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v5

    if-eqz v5, :cond_2

    move v2, v3

    .line 1182
    :goto_3
    goto :goto_0

    :cond_2
    move v2, v4

    .line 1180
    goto :goto_3

    .line 1158
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_2
        0xd401 -> :sswitch_0
        0xd402 -> :sswitch_1
    .end sparse-switch
.end method

.method private sessionEnded()V
    .locals 3

    .prologue
    .line 1467
    iget-boolean v0, p0, Landroid/mtp/MtpDatabase;->mDatabaseModified:Z

    if-eqz v0, :cond_0

    .line 1468
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.provider.action.MTP_SESSION_END"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1469
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/mtp/MtpDatabase;->mDatabaseModified:Z

    .line 1471
    :cond_0
    return-void
.end method

.method private sessionStarted()V
    .locals 1

    .prologue
    .line 1463
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/mtp/MtpDatabase;->mDatabaseModified:Z

    .line 1464
    return-void
.end method

.method private setDeviceProperty(IJLjava/lang/String;)I
    .locals 2
    .parameter "property"
    .parameter "intValue"
    .parameter "stringValue"

    .prologue
    .line 1140
    packed-switch p1, :pswitch_data_0

    .line 1150
    const/16 v1, 0x200a

    :goto_0
    return v1

    .line 1144
    :pswitch_0
    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mDeviceProperties:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1145
    .local v0, e:Landroid/content/SharedPreferences$Editor;
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1146
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x2001

    goto :goto_0

    :cond_0
    const/16 v1, 0x2002

    goto :goto_0

    .line 1140
    nop

    :pswitch_data_0
    .packed-switch 0xd401
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private setExtendedObjectPropertyInDB(IJLjava/lang/String;Landroid/mtp/MtpDatabase$PropValueType;Ljava/lang/String;)I
    .locals 7
    .parameter "handle"
    .parameter "intValue"
    .parameter "strValue"
    .parameter "objType"
    .parameter "column"

    .prologue
    .line 958
    const/4 v4, 0x1

    new-array v3, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 959
    .local v3, whereArgs:[Ljava/lang/String;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 961
    .local v2, values:Landroid/content/ContentValues;
    sget-object v4, Landroid/mtp/MtpDatabase$PropValueType;->VALUE_INT:Landroid/mtp/MtpDatabase$PropValueType;

    if-ne p5, v4, :cond_0

    .line 962
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, p6, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 967
    :goto_0
    const/4 v1, 0x0

    .line 969
    .local v1, updated:I
    :try_start_0
    iget-object v4, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    iget-object v5, p0, Landroid/mtp/MtpDatabase;->mObjectsUri:Landroid/net/Uri;

    const-string v6, "_id=?"

    invoke-interface {v4, v5, v2, v6, v3}, Landroid/content/IContentProvider;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 973
    :goto_1
    if-nez v1, :cond_1

    .line 974
    const-string v4, "MtpDatabase"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to update the property in column:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 975
    const/16 v4, 0x2002

    .line 978
    :goto_2
    return v4

    .line 964
    .end local v1           #updated:I
    :cond_0
    invoke-virtual {v2, p6, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 970
    .restart local v1       #updated:I
    :catch_0
    move-exception v0

    .line 971
    .local v0, e:Landroid/os/RemoteException;
    const-string v4, "MtpDatabase"

    const-string v5, "RemoteException in mMediaProvider.update"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 978
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_1
    const/16 v4, 0x2001

    goto :goto_2
.end method

.method private setHostIds(I[Ljava/lang/String;)I
    .locals 8
    .parameter "objHandle"
    .parameter "hostIds"

    .prologue
    .line 1517
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 1518
    .local v3, key:Ljava/lang/String;
    iget-object v5, p0, Landroid/mtp/MtpDatabase;->mContext:Landroid/content/Context;

    const-string v6, "HostIds"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1520
    .local v1, hostPrefs:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1521
    .local v0, e:Landroid/content/SharedPreferences$Editor;
    const-string v4, ""

    .line 1522
    .local v4, strHostIds:Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v5, p2

    if-ge v2, v5, :cond_0

    .line 1523
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, p2, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1524
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "#"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1522
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1526
    :cond_0
    invoke-direct {p0, v4}, Landroid/mtp/MtpDatabase;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v3, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1527
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v5

    if-eqz v5, :cond_1

    const/16 v5, 0x2001

    :goto_1
    return v5

    :cond_1
    const/16 v5, 0x2002

    goto :goto_1
.end method

.method private setObjectProperty(IIJLjava/lang/String;)I
    .locals 7
    .parameter "handle"
    .parameter "property"
    .parameter "intValue"
    .parameter "stringValue"

    .prologue
    .line 987
    const/4 v6, 0x0

    .line 988
    .local v6, column:Ljava/lang/String;
    sparse-switch p2, :sswitch_data_0

    .line 1028
    const v0, 0xa80a

    :goto_0
    return v0

    .line 990
    :sswitch_0
    invoke-direct {p0, p1, p5}, Landroid/mtp/MtpDatabase;->renameFile(ILjava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 992
    :sswitch_1
    const-string v6, "audiobitrate"

    .line 993
    sget-object v5, Landroid/mtp/MtpDatabase$PropValueType;->VALUE_INT:Landroid/mtp/MtpDatabase$PropValueType;

    move-object v0, p0

    move v1, p1

    move-wide v2, p3

    move-object v4, p5

    invoke-direct/range {v0 .. v6}, Landroid/mtp/MtpDatabase;->setExtendedObjectPropertyInDB(IJLjava/lang/String;Landroid/mtp/MtpDatabase$PropValueType;Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 996
    :sswitch_2
    const-string/jumbo v6, "videobitrate"

    .line 997
    sget-object v5, Landroid/mtp/MtpDatabase$PropValueType;->VALUE_INT:Landroid/mtp/MtpDatabase$PropValueType;

    move-object v0, p0

    move v1, p1

    move-wide v2, p3

    move-object v4, p5

    invoke-direct/range {v0 .. v6}, Landroid/mtp/MtpDatabase;->setExtendedObjectPropertyInDB(IJLjava/lang/String;Landroid/mtp/MtpDatabase$PropValueType;Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 1000
    :sswitch_3
    const-string/jumbo v6, "videoframesperthousandseconds"

    .line 1001
    sget-object v5, Landroid/mtp/MtpDatabase$PropValueType;->VALUE_INT:Landroid/mtp/MtpDatabase$PropValueType;

    move-object v0, p0

    move v1, p1

    move-wide v2, p3

    move-object v4, p5

    invoke-direct/range {v0 .. v6}, Landroid/mtp/MtpDatabase;->setExtendedObjectPropertyInDB(IJLjava/lang/String;Landroid/mtp/MtpDatabase$PropValueType;Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 1004
    :sswitch_4
    const-string v6, "audiosamplerate"

    .line 1005
    sget-object v5, Landroid/mtp/MtpDatabase$PropValueType;->VALUE_INT:Landroid/mtp/MtpDatabase$PropValueType;

    move-object v0, p0

    move v1, p1

    move-wide v2, p3

    move-object v4, p5

    invoke-direct/range {v0 .. v6}, Landroid/mtp/MtpDatabase;->setExtendedObjectPropertyInDB(IJLjava/lang/String;Landroid/mtp/MtpDatabase$PropValueType;Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 1008
    :sswitch_5
    const-string v6, "audionumchannels"

    .line 1009
    sget-object v5, Landroid/mtp/MtpDatabase$PropValueType;->VALUE_INT:Landroid/mtp/MtpDatabase$PropValueType;

    move-object v0, p0

    move v1, p1

    move-wide v2, p3

    move-object v4, p5

    invoke-direct/range {v0 .. v6}, Landroid/mtp/MtpDatabase;->setExtendedObjectPropertyInDB(IJLjava/lang/String;Landroid/mtp/MtpDatabase$PropValueType;Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 1012
    :sswitch_6
    const-string/jumbo v6, "videoscantype"

    .line 1013
    sget-object v5, Landroid/mtp/MtpDatabase$PropValueType;->VALUE_INT:Landroid/mtp/MtpDatabase$PropValueType;

    move-object v0, p0

    move v1, p1

    move-wide v2, p3

    move-object v4, p5

    invoke-direct/range {v0 .. v6}, Landroid/mtp/MtpDatabase;->setExtendedObjectPropertyInDB(IJLjava/lang/String;Landroid/mtp/MtpDatabase$PropValueType;Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 1016
    :sswitch_7
    const-string v6, "audiowavecodec"

    .line 1017
    sget-object v5, Landroid/mtp/MtpDatabase$PropValueType;->VALUE_INT:Landroid/mtp/MtpDatabase$PropValueType;

    move-object v0, p0

    move v1, p1

    move-wide v2, p3

    move-object v4, p5

    invoke-direct/range {v0 .. v6}, Landroid/mtp/MtpDatabase;->setExtendedObjectPropertyInDB(IJLjava/lang/String;Landroid/mtp/MtpDatabase$PropValueType;Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 1020
    :sswitch_8
    const-string/jumbo v6, "videofourcccodec"

    .line 1021
    sget-object v5, Landroid/mtp/MtpDatabase$PropValueType;->VALUE_INT:Landroid/mtp/MtpDatabase$PropValueType;

    move-object v0, p0

    move v1, p1

    move-wide v2, p3

    move-object v4, p5

    invoke-direct/range {v0 .. v6}, Landroid/mtp/MtpDatabase;->setExtendedObjectPropertyInDB(IJLjava/lang/String;Landroid/mtp/MtpDatabase$PropValueType;Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 1024
    :sswitch_9
    const-string/jumbo v6, "videoencodingprofile"

    .line 1025
    sget-object v5, Landroid/mtp/MtpDatabase$PropValueType;->VALUE_STRING:Landroid/mtp/MtpDatabase$PropValueType;

    move-object v0, p0

    move v1, p1

    move-wide v2, p3

    move-object v4, p5

    invoke-direct/range {v0 .. v6}, Landroid/mtp/MtpDatabase;->setExtendedObjectPropertyInDB(IJLjava/lang/String;Landroid/mtp/MtpDatabase$PropValueType;Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 988
    nop

    :sswitch_data_0
    .sparse-switch
        0xdc07 -> :sswitch_0
        0xde93 -> :sswitch_4
        0xde94 -> :sswitch_5
        0xde97 -> :sswitch_6
        0xde99 -> :sswitch_7
        0xde9a -> :sswitch_1
        0xde9b -> :sswitch_8
        0xde9c -> :sswitch_2
        0xde9d -> :sswitch_3
        0xdea1 -> :sswitch_9
    .end sparse-switch
.end method

.method private setObjectProperty(II[J[Ljava/lang/String;)I
    .locals 1
    .parameter "handle"
    .parameter "property"
    .parameter "numArray"
    .parameter "strArray"

    .prologue
    .line 1034
    packed-switch p2, :pswitch_data_0

    .line 1041
    const v0, 0xa80a

    :goto_0
    return v0

    .line 1036
    :pswitch_0
    invoke-direct {p0, p1, p4}, Landroid/mtp/MtpDatabase;->setHostIds(I[Ljava/lang/String;)I

    .line 1037
    const/16 v0, 0x2001

    goto :goto_0

    .line 1034
    nop

    :pswitch_data_0
    .packed-switch 0xd920
        :pswitch_0
    .end packed-switch
.end method

.method private setObjectReferences(I[I)I
    .locals 17
    .parameter "handle"
    .parameter "references"

    .prologue
    .line 1410
    const/4 v11, 0x0

    .line 1411
    .local v11, format:I
    const/4 v8, 0x0

    .line 1413
    .local v8, c:Landroid/database/Cursor;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/mtp/MtpDatabase;->mObjectsUri:Landroid/net/Uri;

    sget-object v3, Landroid/mtp/MtpDatabase;->PATH_SIZE_FORMAT_PROJECTION:[Ljava/lang/String;

    const-string v4, "_id=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v5, v6

    const/4 v6, 0x0

    invoke-interface/range {v1 .. v6}, Landroid/content/IContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1415
    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1416
    const/4 v1, 0x3

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v11

    .line 1420
    if-nez v11, :cond_2

    .line 1421
    const/16 v1, 0x2002

    .line 1427
    if-eqz v8, :cond_0

    .line 1428
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1458
    :cond_0
    :goto_0
    return v1

    .line 1418
    :cond_1
    const/16 v1, 0x2009

    .line 1427
    if-eqz v8, :cond_0

    .line 1428
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1427
    :cond_2
    if-eqz v8, :cond_3

    .line 1428
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1432
    :cond_3
    const/16 v1, 0x3001

    if-ne v11, v1, :cond_6

    .line 1434
    move-object/from16 v0, p2

    array-length v9, v0

    .line 1435
    .local v9, count:I
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 1436
    .local v7, arrList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v12, 0x0

    .local v12, i:I
    :goto_1
    if-ge v12, v9, :cond_5

    .line 1437
    aget v1, p2, v12

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1436
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 1423
    .end local v7           #arrList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v9           #count:I
    .end local v12           #i:I
    :catch_0
    move-exception v10

    .line 1424
    .local v10, e:Landroid/os/RemoteException;
    :try_start_1
    const-string v1, "MtpDatabase"

    const-string v2, "RemoteException in setObjectReferences - Hashtable section"

    invoke-static {v1, v2, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1425
    const/16 v1, 0x2002

    .line 1427
    if-eqz v8, :cond_0

    .line 1428
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1427
    .end local v10           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    if-eqz v8, :cond_4

    .line 1428
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v1

    .line 1439
    .restart local v7       #arrList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v9       #count:I
    .restart local v12       #i:I
    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/mtp/MtpDatabase;->mReferencesTable:Ljava/util/Hashtable;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1440
    const/16 v1, 0x2001

    goto :goto_0

    .line 1442
    .end local v7           #arrList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v9           #count:I
    .end local v12           #i:I
    :cond_6
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Landroid/mtp/MtpDatabase;->mDatabaseModified:Z

    .line 1443
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/mtp/MtpDatabase;->mVolumeName:Ljava/lang/String;

    move/from16 v0, p1

    int-to-long v2, v0

    invoke-static {v1, v2, v3}, Landroid/provider/MediaStore$Files;->getMtpReferencesUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v13

    .line 1444
    .local v13, uri:Landroid/net/Uri;
    move-object/from16 v0, p2

    array-length v9, v0

    .line 1445
    .restart local v9       #count:I
    new-array v15, v9, [Landroid/content/ContentValues;

    .line 1446
    .local v15, valuesList:[Landroid/content/ContentValues;
    const/4 v12, 0x0

    .restart local v12       #i:I
    :goto_2
    if-ge v12, v9, :cond_7

    .line 1447
    new-instance v14, Landroid/content/ContentValues;

    invoke-direct {v14}, Landroid/content/ContentValues;-><init>()V

    .line 1448
    .local v14, values:Landroid/content/ContentValues;
    const-string v1, "_id"

    aget v2, p2, v12

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v14, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1449
    aput-object v14, v15, v12

    .line 1446
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 1452
    .end local v14           #values:Landroid/content/ContentValues;
    :cond_7
    :try_start_2
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    invoke-interface {v1, v13, v15}, Landroid/content/IContentProvider;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v1

    if-lez v1, :cond_8

    .line 1453
    const/16 v1, 0x2001

    goto/16 :goto_0

    .line 1455
    :catch_1
    move-exception v10

    .line 1456
    .restart local v10       #e:Landroid/os/RemoteException;
    const-string v1, "MtpDatabase"

    const-string v2, "RemoteException in setObjectReferences"

    invoke-static {v1, v2, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1458
    .end local v10           #e:Landroid/os/RemoteException;
    :cond_8
    const/16 v1, 0x2002

    goto/16 :goto_0
.end method


# virtual methods
.method public addStorage(Landroid/mtp/MtpStorage;)V
    .locals 2
    .parameter "storage"

    .prologue
    .line 241
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mStorageMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/mtp/MtpStorage;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    return-void
.end method

.method public cleanup()V
    .locals 0

    .prologue
    .line 232
    invoke-direct {p0}, Landroid/mtp/MtpDatabase;->native_finalize()V

    .line 233
    return-void
.end method

.method public getDeviceUuid()Ljava/lang/String;
    .locals 12

    .prologue
    .line 1474
    const-string v6, ""

    .line 1475
    .local v6, szDeviceUUID:Ljava/lang/String;
    const/4 v7, 0x0

    .line 1476
    .local v7, szMACAddress:Ljava/lang/String;
    const/4 v8, 0x0

    .line 1477
    .local v8, szMACToken:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v9, "00000000-0000-0000-FFFF-"

    invoke-direct {v2, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1478
    .local v2, hDeviceUUIDBuilder:Ljava/lang/StringBuilder;
    const/4 v0, 0x1

    .line 1482
    .local v0, bIsValid:Z
    :try_start_0
    iget-object v9, p0, Landroid/mtp/MtpDatabase;->mContext:Landroid/content/Context;

    const-string/jumbo v10, "wifi"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/WifiManager;

    .line 1483
    .local v5, hWiFiMan:Landroid/net/wifi/WifiManager;
    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v4

    .line 1484
    .local v4, hWiFiInfo:Landroid/net/wifi/WifiInfo;
    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v7

    .line 1486
    new-instance v3, Ljava/util/StringTokenizer;

    const-string v9, ":"

    invoke-direct {v3, v7, v9}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1487
    .local v3, hMACTokens:Ljava/util/StringTokenizer;
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v9

    const/4 v10, 0x6

    if-eq v9, v10, :cond_2

    .line 1489
    const-string v9, "MtpDatabase"

    const-string v10, "getDeviceUuid: Invalid MAC address format"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1512
    .end local v3           #hMACTokens:Ljava/util/StringTokenizer;
    .end local v4           #hWiFiInfo:Landroid/net/wifi/WifiInfo;
    .end local v5           #hWiFiMan:Landroid/net/wifi/WifiManager;
    :cond_0
    :goto_0
    return-object v6

    .line 1501
    .restart local v3       #hMACTokens:Ljava/util/StringTokenizer;
    .restart local v4       #hWiFiInfo:Landroid/net/wifi/WifiInfo;
    .restart local v5       #hWiFiMan:Landroid/net/wifi/WifiManager;
    :cond_1
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1493
    :cond_2
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_3

    .line 1494
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v8

    .line 1495
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v10, 0x2

    if-eq v9, v10, :cond_1

    .line 1497
    const-string v9, "MtpDatabase"

    const-string v10, "getDeviceUuid: Invalid MAC address token"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1498
    const/4 v0, 0x0

    .line 1504
    :cond_3
    if-eqz v0, :cond_0

    .line 1505
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    .line 1506
    const-string v9, "MtpDatabase"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getDeviceUuid: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1509
    .end local v3           #hMACTokens:Ljava/util/StringTokenizer;
    .end local v4           #hWiFiInfo:Landroid/net/wifi/WifiInfo;
    .end local v5           #hWiFiMan:Landroid/net/wifi/WifiManager;
    :catch_0
    move-exception v1

    .line 1510
    .local v1, e:Ljava/lang/NullPointerException;
    const-string v6, ""

    goto :goto_0
.end method

.method public getHostIdsAsArray(I)[Ljava/lang/String;
    .locals 8
    .parameter "objHandle"

    .prologue
    const/4 v5, 0x0

    .line 1542
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 1543
    .local v1, hostEui64Set:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p0, p1}, Landroid/mtp/MtpDatabase;->getHostIdsAsString(I)Ljava/lang/String;

    move-result-object v3

    .line 1544
    .local v3, strHostIds:Ljava/lang/String;
    if-nez v3, :cond_1

    .line 1569
    :cond_0
    :goto_0
    return-object v5

    .line 1550
    :cond_1
    :try_start_0
    new-instance v2, Ljava/util/StringTokenizer;

    const-string v6, "#"

    invoke-direct {v2, v3, v6}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1551
    .local v2, hostEui64Tokens:Ljava/util/StringTokenizer;
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v6

    if-lez v6, :cond_0

    .line 1555
    :cond_2
    :goto_1
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1556
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    .line 1557
    .local v4, token:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_2

    .line 1560
    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1562
    .end local v2           #hostEui64Tokens:Ljava/util/StringTokenizer;
    .end local v4           #token:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1563
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v6, "MtpDatabase"

    const-string v7, "Exception in getHostIdsAsArray"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1566
    .end local v0           #e:Ljava/lang/NullPointerException;
    :cond_3
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v6

    if-lez v6, :cond_0

    .line 1569
    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/String;

    invoke-interface {v1, v5}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    check-cast v5, [Ljava/lang/String;

    goto :goto_0
.end method

.method public getHostIdsAsString(I)Ljava/lang/String;
    .locals 6
    .parameter "objHandle"

    .prologue
    const/4 v2, 0x0

    .line 1532
    iget-object v3, p0, Landroid/mtp/MtpDatabase;->mContext:Landroid/content/Context;

    const-string v4, "HostIds"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1534
    .local v0, hostPrefs:Landroid/content/SharedPreferences;
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1535
    .local v1, strHostIds:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 1538
    :goto_0
    return-object v2

    :cond_0
    invoke-direct {p0, v1}, Landroid/mtp/MtpDatabase;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public removeStorage(Landroid/mtp/MtpStorage;)V
    .locals 2
    .parameter "storage"

    .prologue
    .line 245
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mStorageMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/mtp/MtpStorage;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    return-void
.end method

.method public requestPairHost(ILjava/lang/String;)V
    .locals 3
    .parameter "hostId"
    .parameter "hostName"

    .prologue
    .line 1573
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sonymobile.mtpwifi.REQUEST_PAIR_HOST"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1574
    .local v0, response:Landroid/content/Intent;
    const-string/jumbo v1, "value_0"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1575
    const-string/jumbo v1, "value_1"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1576
    const-string v1, "is_response_to"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1577
    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mContext:Landroid/content/Context;

    const-string v2, "com.sonymobile.mtp.permission.CONTROL_MTP_STACK"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1578
    return-void
.end method

.method public setBatteryLevel(II)V
    .locals 0
    .parameter "batterylevel"
    .parameter "batteryscale"

    .prologue
    .line 236
    iput p1, p0, Landroid/mtp/MtpDatabase;->mBatteryLevel:I

    .line 237
    iput p2, p0, Landroid/mtp/MtpDatabase;->mBatteryScale:I

    .line 238
    return-void
.end method

.class public final Landroid/content/res/AssetManager;
.super Ljava/lang/Object;
.source "AssetManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/res/AssetManager$1;,
        Landroid/content/res/AssetManager$AssetInputStream;
    }
.end annotation


# static fields
.field public static final ACCESS_BUFFER:I = 0x3

.field public static final ACCESS_RANDOM:I = 0x1

.field public static final ACCESS_STREAMING:I = 0x2

.field public static final ACCESS_UNKNOWN:I = 0x0

.field private static final DEBUG_REFS:Z = false

.field static final STYLE_ASSET_COOKIE:I = 0x2

.field static final STYLE_CHANGING_CONFIGURATIONS:I = 0x4

.field static final STYLE_DATA:I = 0x1

.field static final STYLE_DENSITY:I = 0x5

.field static final STYLE_NUM_ENTRIES:I = 0x6

.field static final STYLE_RESOURCE_ID:I = 0x3

.field static final STYLE_TYPE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "AssetManager"

.field private static final localLOGV:Z

.field private static final sSync:Ljava/lang/Object;

.field static sSystem:Landroid/content/res/AssetManager;


# instance fields
.field private mAppName:Ljava/lang/String;

.field private mAssetDir:Ljava/lang/String;

.field private mNObject:I

.field private mNumRefs:I

.field private mObject:I

.field private final mOffsets:[J

.field private mOpen:Z

.field private mRedirections:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/content/res/PackageRedirectionMap;",
            ">;"
        }
    .end annotation
.end field

.field private mRefStacks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/RuntimeException;",
            ">;"
        }
    .end annotation
.end field

.field private mStringBlocks:[Landroid/content/res/StringBlock;

.field private mThemeCookie:I

.field private mThemePackageName:Ljava/lang/String;

.field private mThemeSupport:Z

.field private final mValue:Landroid/util/TypedValue;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 66
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/content/res/AssetManager;->sSync:Ljava/lang/Object;

    .line 67
    const/4 v0, 0x0

    sput-object v0, Landroid/content/res/AssetManager;->sSystem:Landroid/content/res/AssetManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 2
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_CODE:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iput-object v0, p0, Landroid/content/res/AssetManager;->mValue:Landroid/util/TypedValue;

    .line 70
    const/4 v0, 0x2

    new-array v0, v0, [J

    iput-object v0, p0, Landroid/content/res/AssetManager;->mOffsets:[J

    .line 76
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/res/AssetManager;->mStringBlocks:[Landroid/content/res/StringBlock;

    .line 78
    iput v1, p0, Landroid/content/res/AssetManager;->mNumRefs:I

    .line 79
    iput-boolean v1, p0, Landroid/content/res/AssetManager;->mOpen:Z

    .line 91
    monitor-enter p0

    .line 96
    :try_start_0
    invoke-direct {p0}, Landroid/content/res/AssetManager;->init()V

    .line 98
    invoke-static {}, Landroid/content/res/AssetManager;->ensureSystemAssets()V

    .line 99
    invoke-static {p0}, Landroid/app/MiuiThemeHelper;->addExtraAssetPaths(Landroid/content/res/AssetManager;)V

    .line 100
    monitor-exit p0

    .line 101
    return-void

    .line 100
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private constructor <init>(Z)V
    .locals 2
    .parameter "isSystem"
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_CODE:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iput-object v0, p0, Landroid/content/res/AssetManager;->mValue:Landroid/util/TypedValue;

    .line 70
    const/4 v0, 0x2

    new-array v0, v0, [J

    iput-object v0, p0, Landroid/content/res/AssetManager;->mOffsets:[J

    .line 76
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/res/AssetManager;->mStringBlocks:[Landroid/content/res/StringBlock;

    .line 78
    iput v1, p0, Landroid/content/res/AssetManager;->mNumRefs:I

    .line 79
    iput-boolean v1, p0, Landroid/content/res/AssetManager;->mOpen:Z

    .line 121
    invoke-direct {p0}, Landroid/content/res/AssetManager;->init()V

    .line 123
    invoke-static {p0}, Landroid/app/MiuiThemeHelper;->addExtraAssetPaths(Landroid/content/res/AssetManager;)V

    .line 124
    return-void
.end method

.method static synthetic access$100(Landroid/content/res/AssetManager;I)J
    .locals 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    invoke-direct {p0, p1}, Landroid/content/res/AssetManager;->getAssetLength(I)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$200(Landroid/content/res/AssetManager;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    invoke-direct {p0, p1}, Landroid/content/res/AssetManager;->readAssetChar(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Landroid/content/res/AssetManager;I)J
    .locals 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    invoke-direct {p0, p1}, Landroid/content/res/AssetManager;->getAssetRemainingLength(I)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$400(Landroid/content/res/AssetManager;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    invoke-direct {p0, p1}, Landroid/content/res/AssetManager;->destroyAsset(I)V

    return-void
.end method

.method static synthetic access$500(Landroid/content/res/AssetManager;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    invoke-direct {p0, p1}, Landroid/content/res/AssetManager;->decRefsLocked(I)V

    return-void
.end method

.method static synthetic access$600(Landroid/content/res/AssetManager;IJI)J
    .locals 2
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/content/res/AssetManager;->seekAsset(IJI)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$700(Landroid/content/res/AssetManager;I[BII)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/content/res/AssetManager;->readAsset(I[BII)I

    move-result v0

    return v0
.end method

.method private final native addRedirectionsNative(I)V
.end method

.method static final native applyStyle(IIII[I[I[I)Z
.end method

.method static final native applyThemeStyle(IIZ)V
.end method

.method private final native clearRedirectionsNative()V
.end method

.method static final native copyTheme(II)V
.end method

.method private final decRefsLocked(I)V
    .locals 1
    .parameter "id"

    .prologue
    .line 769
    iget v0, p0, Landroid/content/res/AssetManager;->mNumRefs:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/content/res/AssetManager;->mNumRefs:I

    .line 772
    iget v0, p0, Landroid/content/res/AssetManager;->mNumRefs:I

    if-nez v0, :cond_0

    .line 773
    invoke-direct {p0}, Landroid/content/res/AssetManager;->destroy()V

    .line 775
    :cond_0
    return-void
.end method

.method private final native deleteTheme(I)V
.end method

.method private final native destroy()V
.end method

.method private final native destroyAsset(I)V
.end method

.method static final native dumpTheme(IILjava/lang/String;Ljava/lang/String;)V
.end method

.method private static ensureSystemAssets()V
    .locals 3

    .prologue
    .line 104
    sget-object v2, Landroid/content/res/AssetManager;->sSync:Ljava/lang/Object;

    monitor-enter v2

    .line 105
    :try_start_0
    sget-object v1, Landroid/content/res/AssetManager;->sSystem:Landroid/content/res/AssetManager;

    if-nez v1, :cond_0

    .line 106
    new-instance v0, Landroid/content/res/AssetManager;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/content/res/AssetManager;-><init>(Z)V

    .line 107
    .local v0, system:Landroid/content/res/AssetManager;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->makeStringBlocks(Z)V

    .line 108
    sput-object v0, Landroid/content/res/AssetManager;->sSystem:Landroid/content/res/AssetManager;

    .line 110
    :cond_0
    monitor-exit v2

    .line 111
    return-void

    .line 110
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private final native getArrayStringInfo(I)[I
.end method

.method private final native getArrayStringResource(I)[Ljava/lang/String;
.end method

.method public static final native getAssetAllocations()Ljava/lang/String;
.end method

.method private final native getAssetLength(I)J
.end method

.method private final native getAssetRemainingLength(I)J
.end method

.method public static final native getGlobalAssetCount()I
.end method

.method public static final native getGlobalAssetManagerCount()I
.end method

.method private final native getNativeStringBlock(I)I
.end method

.method private final native getStringBlockCount()I
.end method

.method public static getSystem()Landroid/content/res/AssetManager;
    .locals 1

    .prologue
    .line 132
    invoke-static {}, Landroid/content/res/AssetManager;->ensureSystemAssets()V

    .line 133
    sget-object v0, Landroid/content/res/AssetManager;->sSystem:Landroid/content/res/AssetManager;

    return-object v0
.end method

.method private final incRefsLocked(I)V
    .locals 1
    .parameter "id"

    .prologue
    .line 762
    iget v0, p0, Landroid/content/res/AssetManager;->mNumRefs:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/content/res/AssetManager;->mNumRefs:I

    .line 763
    return-void
.end method

.method private final native init()V
.end method

.method private final native loadResourceBagValue(IILandroid/util/TypedValue;Z)I
.end method

.method private final native loadResourceValue(ISLandroid/util/TypedValue;Z)I
.end method

.method static final native loadThemeAttributeValue(IILandroid/util/TypedValue;Z)I
.end method

.method private final native newTheme()I
.end method

.method private final native openAsset(Ljava/lang/String;I)I
.end method

.method private final native openAssetFd(Ljava/lang/String;[J)Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private native openNonAssetFdNative(ILjava/lang/String;[J)Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private final native openNonAssetNative(ILjava/lang/String;I)I
.end method

.method private final native openXmlAssetNative(ILjava/lang/String;)I
.end method

.method private final native readAsset(I[BII)I
.end method

.method private final native readAssetChar(I)I
.end method

.method private final native seekAsset(IJI)J
.end method

.method private final native splitThemePackage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
.end method


# virtual methods
.method public final native addAssetPath(Ljava/lang/String;)I
.end method

.method public final addAssetPaths([Ljava/lang/String;)[I
    .locals 3
    .parameter "paths"

    .prologue
    .line 621
    if-nez p1, :cond_1

    .line 622
    const/4 v0, 0x0

    .line 630
    :cond_0
    return-object v0

    .line 625
    :cond_1
    array-length v2, p1

    new-array v0, v2, [I

    .line 626
    .local v0, cookies:[I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 627
    aget-object v2, p1, v1

    invoke-virtual {p0, v2}, Landroid/content/res/AssetManager;->addAssetPath(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    .line 626
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public addRedirections(Landroid/content/res/PackageRedirectionMap;)V
    .locals 2
    .parameter "map"

    .prologue
    .line 747
    iget-object v0, p0, Landroid/content/res/AssetManager;->mRedirections:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    .line 748
    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Landroid/content/res/AssetManager;->mRedirections:Landroid/util/SparseArray;

    .line 750
    :cond_0
    iget-object v0, p0, Landroid/content/res/AssetManager;->mRedirections:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/content/res/PackageRedirectionMap;->getPackageId()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 751
    invoke-virtual {p1}, Landroid/content/res/PackageRedirectionMap;->getNativePointer()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/content/res/AssetManager;->addRedirectionsNative(I)V

    .line 752
    return-void
.end method

.method public final native attachThemePath(Ljava/lang/String;)I
.end method

.method public clearRedirections()V
    .locals 1

    .prologue
    .line 759
    iget-object v0, p0, Landroid/content/res/AssetManager;->mRedirections:Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    .line 760
    iget-object v0, p0, Landroid/content/res/AssetManager;->mRedirections:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 762
    :cond_0
    invoke-direct {p0}, Landroid/content/res/AssetManager;->clearRedirectionsNative()V

    .line 763
    return-void
.end method

.method public close()V
    .locals 1

    .prologue
    .line 140
    monitor-enter p0

    .line 143
    :try_start_0
    iget-boolean v0, p0, Landroid/content/res/AssetManager;->mOpen:Z

    if-eqz v0, :cond_0

    .line 144
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/content/res/AssetManager;->mOpen:Z

    .line 145
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/content/res/AssetManager;->decRefsLocked(I)V

    .line 147
    :cond_0
    monitor-exit p0

    .line 148
    return-void

    .line 147
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method final createTheme()I
    .locals 3

    .prologue
    .line 510
    monitor-enter p0

    .line 511
    :try_start_0
    iget-boolean v1, p0, Landroid/content/res/AssetManager;->mOpen:Z

    if-nez v1, :cond_0

    .line 512
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Assetmanager has been closed"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 517
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 514
    :cond_0
    :try_start_1
    invoke-direct {p0}, Landroid/content/res/AssetManager;->newTheme()I

    move-result v0

    .line 515
    .local v0, res:I
    invoke-direct {p0, v0}, Landroid/content/res/AssetManager;->incRefsLocked(I)V

    .line 516
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return v0
.end method

.method public final native detachThemePath(Ljava/lang/String;I)Z
.end method

.method final ensureStringBlocks()V
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Landroid/content/res/AssetManager;->mStringBlocks:[Landroid/content/res/StringBlock;

    if-nez v0, :cond_1

    .line 253
    monitor-enter p0

    .line 254
    :try_start_0
    iget-object v0, p0, Landroid/content/res/AssetManager;->mStringBlocks:[Landroid/content/res/StringBlock;

    if-nez v0, :cond_0

    .line 255
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/content/res/AssetManager;->makeStringBlocks(Z)V

    .line 257
    :cond_0
    monitor-exit p0

    .line 259
    :cond_1
    return-void

    .line 257
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 538
    :try_start_0
    invoke-direct {p0}, Landroid/content/res/AssetManager;->destroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 540
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 542
    return-void

    .line 540
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public final native generateStyleRedirections(III)Z
.end method

.method final native getArrayIntResource(I)[I
.end method

.method final native getArraySize(I)I
.end method

.method public final native getBasePackageCount()I
.end method

.method public final native getBasePackageId(I)I
.end method

.method public final native getBasePackageName(I)Ljava/lang/String;
.end method

.method public final native getCookieName(I)Ljava/lang/String;
.end method

.method public final native getLocales()[Ljava/lang/String;
.end method

.method final getPooledString(II)Ljava/lang/CharSequence;
    .locals 2
    .parameter "block"
    .parameter "id"

    .prologue
    .line 280
    iget-object v0, p0, Landroid/content/res/AssetManager;->mStringBlocks:[Landroid/content/res/StringBlock;

    add-int/lit8 v1, p1, -0x1

    aget-object v0, v0, v1

    invoke-virtual {v0, p2}, Landroid/content/res/StringBlock;->get(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method final getResourceBagText(II)Ljava/lang/CharSequence;
    .locals 4
    .parameter "ident"
    .parameter "bagEntryId"

    .prologue
    .line 173
    monitor-enter p0

    .line 174
    :try_start_0
    iget-object v1, p0, Landroid/content/res/AssetManager;->mValue:Landroid/util/TypedValue;

    .line 175
    .local v1, tmpValue:Landroid/util/TypedValue;
    const/4 v2, 0x1

    invoke-direct {p0, p1, p2, v1, v2}, Landroid/content/res/AssetManager;->loadResourceBagValue(IILandroid/util/TypedValue;Z)I

    move-result v0

    .line 176
    .local v0, block:I
    if-ltz v0, :cond_1

    .line 177
    iget v2, v1, Landroid/util/TypedValue;->type:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 178
    iget-object v2, p0, Landroid/content/res/AssetManager;->mStringBlocks:[Landroid/content/res/StringBlock;

    aget-object v2, v2, v0

    iget v3, v1, Landroid/util/TypedValue;->data:I

    invoke-virtual {v2, v3}, Landroid/content/res/StringBlock;->get(I)Ljava/lang/CharSequence;

    move-result-object v2

    monitor-exit p0

    .line 183
    :goto_0
    return-object v2

    .line 180
    :cond_0
    invoke-virtual {v1}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    move-result-object v2

    monitor-exit p0

    goto :goto_0

    .line 182
    .end local v0           #block:I
    .end local v1           #tmpValue:Landroid/util/TypedValue;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v0       #block:I
    .restart local v1       #tmpValue:Landroid/util/TypedValue;
    :cond_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 183
    const/4 v2, 0x0

    goto :goto_0
.end method

.method final native getResourceEntryName(I)Ljava/lang/String;
.end method

.method final native getResourceIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
.end method

.method final native getResourceName(I)Ljava/lang/String;
.end method

.method final native getResourcePackageName(I)Ljava/lang/String;
.end method

.method final getResourceStringArray(I)[Ljava/lang/String;
    .locals 1
    .parameter "id"

    .prologue
    .line 192
    invoke-direct {p0, p1}, Landroid/content/res/AssetManager;->getArrayStringResource(I)[Ljava/lang/String;

    move-result-object v0

    .line 193
    .local v0, retArray:[Ljava/lang/String;
    return-object v0
.end method

.method final getResourceText(I)Ljava/lang/CharSequence;
    .locals 4
    .parameter "ident"

    .prologue
    .line 155
    monitor-enter p0

    .line 156
    :try_start_0
    iget-object v1, p0, Landroid/content/res/AssetManager;->mValue:Landroid/util/TypedValue;

    .line 157
    .local v1, tmpValue:Landroid/util/TypedValue;
    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {p0, p1, v2, v1, v3}, Landroid/content/res/AssetManager;->loadResourceValue(ISLandroid/util/TypedValue;Z)I

    move-result v0

    .line 158
    .local v0, block:I
    if-ltz v0, :cond_1

    .line 159
    iget v2, v1, Landroid/util/TypedValue;->type:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 160
    iget-object v2, p0, Landroid/content/res/AssetManager;->mStringBlocks:[Landroid/content/res/StringBlock;

    aget-object v2, v2, v0

    iget v3, v1, Landroid/util/TypedValue;->data:I

    invoke-virtual {v2, v3}, Landroid/content/res/StringBlock;->get(I)Ljava/lang/CharSequence;

    move-result-object v2

    monitor-exit p0

    .line 165
    :goto_0
    return-object v2

    .line 162
    :cond_0
    invoke-virtual {v1}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    move-result-object v2

    monitor-exit p0

    goto :goto_0

    .line 164
    .end local v0           #block:I
    .end local v1           #tmpValue:Landroid/util/TypedValue;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v0       #block:I
    .restart local v1       #tmpValue:Landroid/util/TypedValue;
    :cond_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 165
    const/4 v2, 0x0

    goto :goto_0
.end method

.method final getResourceTextArray(I)[Ljava/lang/CharSequence;
    .locals 9
    .parameter "id"

    .prologue
    .line 219
    invoke-direct {p0, p1}, Landroid/content/res/AssetManager;->getArrayStringInfo(I)[I

    move-result-object v5

    .line 220
    .local v5, rawInfoArray:[I
    array-length v6, v5

    .line 221
    .local v6, rawInfoArrayLen:I
    div-int/lit8 v3, v6, 0x2

    .line 224
    .local v3, infoArrayLen:I
    new-array v7, v3, [Ljava/lang/CharSequence;

    .line 225
    .local v7, retArray:[Ljava/lang/CharSequence;
    const/4 v1, 0x0

    .local v1, i:I
    const/4 v4, 0x0

    .local v4, j:I
    :goto_0
    if-ge v1, v6, :cond_1

    .line 226
    aget v0, v5, v1

    .line 227
    .local v0, block:I
    add-int/lit8 v8, v1, 0x1

    aget v2, v5, v8

    .line 228
    .local v2, index:I
    if-ltz v2, :cond_0

    iget-object v8, p0, Landroid/content/res/AssetManager;->mStringBlocks:[Landroid/content/res/StringBlock;

    aget-object v8, v8, v0

    invoke-virtual {v8, v2}, Landroid/content/res/StringBlock;->get(I)Ljava/lang/CharSequence;

    move-result-object v8

    :goto_1
    aput-object v8, v7, v4

    .line 225
    add-int/lit8 v1, v1, 0x2

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 228
    :cond_0
    const/4 v8, 0x0

    goto :goto_1

    .line 230
    .end local v0           #block:I
    .end local v2           #index:I
    :cond_1
    return-object v7
.end method

.method final native getResourceTypeName(I)Ljava/lang/String;
.end method

.method final getResourceValue(IILandroid/util/TypedValue;Z)Z
    .locals 4
    .parameter "ident"
    .parameter "density"
    .parameter "outValue"
    .parameter "resolveRefs"

    .prologue
    const/4 v1, 0x1

    .line 202
    int-to-short v2, p2

    invoke-direct {p0, p1, v2, p3, p4}, Landroid/content/res/AssetManager;->loadResourceValue(ISLandroid/util/TypedValue;Z)I

    move-result v0

    .line 203
    .local v0, block:I
    if-ltz v0, :cond_1

    .line 204
    iget v2, p3, Landroid/util/TypedValue;->type:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    .line 210
    :goto_0
    return v1

    .line 207
    :cond_0
    iget-object v2, p0, Landroid/content/res/AssetManager;->mStringBlocks:[Landroid/content/res/StringBlock;

    aget-object v2, v2, v0

    iget v3, p3, Landroid/util/TypedValue;->data:I

    invoke-virtual {v2, v3}, Landroid/content/res/StringBlock;->get(I)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p3, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    goto :goto_0

    .line 210
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getThemeCookie()I
    .locals 1

    .prologue
    .line 730
    iget v0, p0, Landroid/content/res/AssetManager;->mThemeCookie:I

    return v0
.end method

.method public getThemePackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 714
    iget-object v0, p0, Landroid/content/res/AssetManager;->mThemePackageName:Ljava/lang/String;

    return-object v0
.end method

.method final getThemeValue(IILandroid/util/TypedValue;Z)Z
    .locals 5
    .parameter "theme"
    .parameter "ident"
    .parameter "outValue"
    .parameter "resolveRefs"

    .prologue
    const/4 v2, 0x1

    .line 235
    invoke-static {p1, p2, p3, p4}, Landroid/content/res/AssetManager;->loadThemeAttributeValue(IILandroid/util/TypedValue;Z)I

    move-result v0

    .line 236
    .local v0, block:I
    if-ltz v0, :cond_2

    .line 237
    iget v3, p3, Landroid/util/TypedValue;->type:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_0

    .line 248
    :goto_0
    return v2

    .line 240
    :cond_0
    iget-object v1, p0, Landroid/content/res/AssetManager;->mStringBlocks:[Landroid/content/res/StringBlock;

    .line 241
    .local v1, blocks:[Landroid/content/res/StringBlock;
    if-nez v1, :cond_1

    .line 242
    invoke-virtual {p0}, Landroid/content/res/AssetManager;->ensureStringBlocks()V

    .line 243
    iget-object v1, p0, Landroid/content/res/AssetManager;->mStringBlocks:[Landroid/content/res/StringBlock;

    .line 245
    :cond_1
    aget-object v3, v1, v0

    iget v4, p3, Landroid/util/TypedValue;->data:I

    invoke-virtual {v3, v4}, Landroid/content/res/StringBlock;->get(I)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, p3, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    goto :goto_0

    .line 248
    .end local v1           #blocks:[Landroid/content/res/StringBlock;
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public final hasThemeSupport()Z
    .locals 1

    .prologue
    .line 696
    iget-boolean v0, p0, Landroid/content/res/AssetManager;->mThemeSupport:Z

    return v0
.end method

.method public final native isUpToDate()Z
.end method

.method public final native list(Ljava/lang/String;)[Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method final makeStringBlocks(Z)V
    .locals 7
    .parameter "copyFromSystem"

    .prologue
    .line 262
    if-eqz p1, :cond_0

    sget-object v3, Landroid/content/res/AssetManager;->sSystem:Landroid/content/res/AssetManager;

    iget-object v3, v3, Landroid/content/res/AssetManager;->mStringBlocks:[Landroid/content/res/StringBlock;

    array-length v2, v3

    .line 263
    .local v2, sysNum:I
    :goto_0
    invoke-direct {p0}, Landroid/content/res/AssetManager;->getStringBlockCount()I

    move-result v1

    .line 264
    .local v1, num:I
    new-array v3, v1, [Landroid/content/res/StringBlock;

    iput-object v3, p0, Landroid/content/res/AssetManager;->mStringBlocks:[Landroid/content/res/StringBlock;

    .line 267
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 268
    if-ge v0, v2, :cond_1

    .line 269
    iget-object v3, p0, Landroid/content/res/AssetManager;->mStringBlocks:[Landroid/content/res/StringBlock;

    sget-object v4, Landroid/content/res/AssetManager;->sSystem:Landroid/content/res/AssetManager;

    iget-object v4, v4, Landroid/content/res/AssetManager;->mStringBlocks:[Landroid/content/res/StringBlock;

    aget-object v4, v4, v0

    aput-object v4, v3, v0

    .line 267
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 262
    .end local v0           #i:I
    .end local v1           #num:I
    .end local v2           #sysNum:I
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 271
    .restart local v0       #i:I
    .restart local v1       #num:I
    .restart local v2       #sysNum:I
    :cond_1
    iget-object v3, p0, Landroid/content/res/AssetManager;->mStringBlocks:[Landroid/content/res/StringBlock;

    new-instance v4, Landroid/content/res/StringBlock;

    invoke-direct {p0, v0}, Landroid/content/res/AssetManager;->getNativeStringBlock(I)I

    move-result v5

    const/4 v6, 0x1

    invoke-direct {v4, v5, v6}, Landroid/content/res/StringBlock;-><init>(IZ)V

    aput-object v4, v3, v0

    goto :goto_2

    .line 274
    :cond_2
    return-void
.end method

.method public final open(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 1
    .parameter "fileName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 295
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;I)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public final open(Ljava/lang/String;I)Ljava/io/InputStream;
    .locals 5
    .parameter "fileName"
    .parameter "accessMode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 317
    monitor-enter p0

    .line 318
    :try_start_0
    iget-boolean v2, p0, Landroid/content/res/AssetManager;->mOpen:Z

    if-nez v2, :cond_0

    .line 319
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Assetmanager has been closed"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 327
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 321
    :cond_0
    :try_start_1
    invoke-direct {p0, p1, p2}, Landroid/content/res/AssetManager;->openAsset(Ljava/lang/String;I)I

    move-result v0

    .line 322
    .local v0, asset:I
    if-eqz v0, :cond_1

    .line 323
    new-instance v1, Landroid/content/res/AssetManager$AssetInputStream;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, v2}, Landroid/content/res/AssetManager$AssetInputStream;-><init>(Landroid/content/res/AssetManager;ILandroid/content/res/AssetManager$1;)V

    .line 324
    .local v1, res:Landroid/content/res/AssetManager$AssetInputStream;
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-direct {p0, v2}, Landroid/content/res/AssetManager;->incRefsLocked(I)V

    .line 325
    monitor-exit p0

    return-object v1

    .line 327
    .end local v1           #res:Landroid/content/res/AssetManager$AssetInputStream;
    :cond_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 328
    new-instance v2, Ljava/io/FileNotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Asset file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public final openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    .locals 6
    .parameter "fileName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 333
    monitor-enter p0

    .line 334
    :try_start_0
    iget-boolean v0, p0, Landroid/content/res/AssetManager;->mOpen:Z

    if-nez v0, :cond_0

    .line 335
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "Assetmanager has been closed"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 341
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 337
    :cond_0
    :try_start_1
    iget-object v0, p0, Landroid/content/res/AssetManager;->mOffsets:[J

    invoke-direct {p0, p1, v0}, Landroid/content/res/AssetManager;->openAssetFd(Ljava/lang/String;[J)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 338
    .local v1, pfd:Landroid/os/ParcelFileDescriptor;
    if-eqz v1, :cond_1

    .line 339
    new-instance v0, Landroid/content/res/AssetFileDescriptor;

    iget-object v2, p0, Landroid/content/res/AssetManager;->mOffsets:[J

    const/4 v3, 0x0

    aget-wide v2, v2, v3

    iget-object v4, p0, Landroid/content/res/AssetManager;->mOffsets:[J

    const/4 v5, 0x1

    aget-wide v4, v4, v5

    invoke-direct/range {v0 .. v5}, Landroid/content/res/AssetFileDescriptor;-><init>(Landroid/os/ParcelFileDescriptor;JJ)V

    monitor-exit p0

    return-object v0

    .line 341
    :cond_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 342
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Asset file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final openNonAsset(ILjava/lang/String;)Ljava/io/InputStream;
    .locals 1
    .parameter "cookie"
    .parameter "fileName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 396
    const/4 v0, 0x2

    invoke-virtual {p0, p1, p2, v0}, Landroid/content/res/AssetManager;->openNonAsset(ILjava/lang/String;I)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public final openNonAsset(ILjava/lang/String;I)Ljava/io/InputStream;
    .locals 5
    .parameter "cookie"
    .parameter "fileName"
    .parameter "accessMode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 409
    monitor-enter p0

    .line 410
    :try_start_0
    iget-boolean v2, p0, Landroid/content/res/AssetManager;->mOpen:Z

    if-nez v2, :cond_0

    .line 411
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Assetmanager has been closed"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 419
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 413
    :cond_0
    :try_start_1
    invoke-direct {p0, p1, p2, p3}, Landroid/content/res/AssetManager;->openNonAssetNative(ILjava/lang/String;I)I

    move-result v0

    .line 414
    .local v0, asset:I
    if-eqz v0, :cond_1

    .line 415
    new-instance v1, Landroid/content/res/AssetManager$AssetInputStream;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, v2}, Landroid/content/res/AssetManager$AssetInputStream;-><init>(Landroid/content/res/AssetManager;ILandroid/content/res/AssetManager$1;)V

    .line 416
    .local v1, res:Landroid/content/res/AssetManager$AssetInputStream;
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-direct {p0, v2}, Landroid/content/res/AssetManager;->incRefsLocked(I)V

    .line 417
    monitor-exit p0

    return-object v1

    .line 419
    .end local v1           #res:Landroid/content/res/AssetManager$AssetInputStream;
    :cond_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 420
    new-instance v2, Ljava/io/FileNotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Asset absolute file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public final openNonAsset(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 2
    .parameter "fileName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 370
    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-virtual {p0, v0, p1, v1}, Landroid/content/res/AssetManager;->openNonAsset(ILjava/lang/String;I)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public final openNonAsset(Ljava/lang/String;I)Ljava/io/InputStream;
    .locals 1
    .parameter "fileName"
    .parameter "accessMode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 384
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, Landroid/content/res/AssetManager;->openNonAsset(ILjava/lang/String;I)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public final openNonAssetFd(ILjava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    .locals 6
    .parameter "cookie"
    .parameter "fileName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 430
    monitor-enter p0

    .line 431
    :try_start_0
    iget-boolean v0, p0, Landroid/content/res/AssetManager;->mOpen:Z

    if-nez v0, :cond_0

    .line 432
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "Assetmanager has been closed"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 439
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 434
    :cond_0
    :try_start_1
    iget-object v0, p0, Landroid/content/res/AssetManager;->mOffsets:[J

    invoke-direct {p0, p1, p2, v0}, Landroid/content/res/AssetManager;->openNonAssetFdNative(ILjava/lang/String;[J)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 436
    .local v1, pfd:Landroid/os/ParcelFileDescriptor;
    if-eqz v1, :cond_1

    .line 437
    new-instance v0, Landroid/content/res/AssetFileDescriptor;

    iget-object v2, p0, Landroid/content/res/AssetManager;->mOffsets:[J

    const/4 v3, 0x0

    aget-wide v2, v2, v3

    iget-object v4, p0, Landroid/content/res/AssetManager;->mOffsets:[J

    const/4 v5, 0x1

    aget-wide v4, v4, v5

    invoke-direct/range {v0 .. v5}, Landroid/content/res/AssetFileDescriptor;-><init>(Landroid/os/ParcelFileDescriptor;JJ)V

    monitor-exit p0

    return-object v0

    .line 439
    :cond_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 440
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Asset absolute file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final openNonAssetFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    .locals 1
    .parameter "fileName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 425
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Landroid/content/res/AssetManager;->openNonAssetFd(ILjava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method final openXmlBlockAsset(ILjava/lang/String;)Landroid/content/res/XmlBlock;
    .locals 5
    .parameter "cookie"
    .parameter "fileName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 489
    monitor-enter p0

    .line 490
    :try_start_0
    iget-boolean v2, p0, Landroid/content/res/AssetManager;->mOpen:Z

    if-nez v2, :cond_0

    .line 491
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Assetmanager has been closed"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 499
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 493
    :cond_0
    :try_start_1
    invoke-direct {p0, p1, p2}, Landroid/content/res/AssetManager;->openXmlAssetNative(ILjava/lang/String;)I

    move-result v1

    .line 494
    .local v1, xmlBlock:I
    if-eqz v1, :cond_1

    .line 495
    new-instance v0, Landroid/content/res/XmlBlock;

    invoke-direct {v0, p0, v1}, Landroid/content/res/XmlBlock;-><init>(Landroid/content/res/AssetManager;I)V

    .line 496
    .local v0, res:Landroid/content/res/XmlBlock;
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-direct {p0, v2}, Landroid/content/res/AssetManager;->incRefsLocked(I)V

    .line 497
    monitor-exit p0

    return-object v0

    .line 499
    .end local v0           #res:Landroid/content/res/XmlBlock;
    :cond_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 500
    new-instance v2, Ljava/io/FileNotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Asset XML file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method final openXmlBlockAsset(Ljava/lang/String;)Landroid/content/res/XmlBlock;
    .locals 1
    .parameter "fileName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 476
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Landroid/content/res/AssetManager;->openXmlBlockAsset(ILjava/lang/String;)Landroid/content/res/XmlBlock;

    move-result-object v0

    return-object v0
.end method

.method public final openXmlResourceParser(ILjava/lang/String;)Landroid/content/res/XmlResourceParser;
    .locals 2
    .parameter "cookie"
    .parameter "fileName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 461
    invoke-virtual {p0, p1, p2}, Landroid/content/res/AssetManager;->openXmlBlockAsset(ILjava/lang/String;)Landroid/content/res/XmlBlock;

    move-result-object v0

    .line 462
    .local v0, block:Landroid/content/res/XmlBlock;
    invoke-virtual {v0}, Landroid/content/res/XmlBlock;->newParser()Landroid/content/res/XmlResourceParser;

    move-result-object v1

    .line 463
    .local v1, rp:Landroid/content/res/XmlResourceParser;
    invoke-virtual {v0}, Landroid/content/res/XmlBlock;->close()V

    .line 464
    return-object v1
.end method

.method public final openXmlResourceParser(Ljava/lang/String;)Landroid/content/res/XmlResourceParser;
    .locals 1
    .parameter "fileName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 450
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Landroid/content/res/AssetManager;->openXmlResourceParser(ILjava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    return-object v0
.end method

.method final recreateStringBlocks()V
    .locals 1

    .prologue
    .line 272
    monitor-enter p0

    .line 273
    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, v0}, Landroid/content/res/AssetManager;->makeStringBlocks(Z)V

    .line 274
    monitor-exit p0

    .line 275
    return-void

    .line 274
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method final releaseTheme(I)V
    .locals 1
    .parameter "theme"

    .prologue
    .line 521
    monitor-enter p0

    .line 522
    :try_start_0
    invoke-direct {p0, p1}, Landroid/content/res/AssetManager;->deleteTheme(I)V

    .line 523
    invoke-direct {p0, p1}, Landroid/content/res/AssetManager;->decRefsLocked(I)V

    .line 524
    monitor-exit p0

    .line 525
    return-void

    .line 524
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method final native retrieveArray(I[I)I
.end method

.method final native retrieveAttributes(I[I[I[I)Z
.end method

.method public final native setConfiguration(IILjava/lang/String;IIIIIIIIIIIIII)V
.end method

.method public final native setLocale(Ljava/lang/String;)V
.end method

.method public setThemeCookie(I)V
    .locals 0
    .parameter "cookie"

    .prologue
    .line 738
    iput p1, p0, Landroid/content/res/AssetManager;->mThemeCookie:I

    .line 739
    return-void
.end method

.method public setThemePackageName(Ljava/lang/String;)V
    .locals 0
    .parameter "packageName"

    .prologue
    .line 722
    iput-object p1, p0, Landroid/content/res/AssetManager;->mThemePackageName:Ljava/lang/String;

    .line 723
    return-void
.end method

.method public final setThemeSupport(Z)V
    .locals 0
    .parameter "themeSupport"

    .prologue
    .line 686
    iput-boolean p1, p0, Landroid/content/res/AssetManager;->mThemeSupport:Z

    .line 687
    return-void
.end method

.method public final splitDrmProtectedThemePackage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .parameter "packageFileName"
    .parameter "lockedFileName"
    .parameter "drmProtectedresources"

    .prologue
    .line 492
    invoke-direct {p0, p1, p2, p3}, Landroid/content/res/AssetManager;->splitThemePackage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method xmlBlockGone(I)V
    .locals 1
    .parameter "id"

    .prologue
    .line 504
    monitor-enter p0

    .line 505
    :try_start_0
    invoke-direct {p0, p1}, Landroid/content/res/AssetManager;->decRefsLocked(I)V

    .line 506
    monitor-exit p0

    .line 507
    return-void

    .line 506
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

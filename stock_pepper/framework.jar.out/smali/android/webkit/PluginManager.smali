.class public Landroid/webkit/PluginManager;
.super Ljava/lang/Object;
.source "PluginManager.java"


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "PluginManager"

.field public static final PLUGIN_ACTION:Ljava/lang/String; = "android.webkit.PLUGIN"

.field public static final PLUGIN_PERMISSION:Ljava/lang/String; = "android.webkit.permission.PLUGIN"

.field private static final PLUGIN_SYSTEM_LIB:Ljava/lang/String; = "/system/lib/plugins/"

.field private static final PLUGIN_TYPE:Ljava/lang/String; = "type"

.field private static final SIGNATURES:[Landroid/content/pm/Signature; = null

.field private static final SIGNATURE_1:Ljava/lang/String; = "308204c5308203ada003020102020900d7cb412f75f4887e300d06092a864886f70d010105050030819d310b3009060355040613025553311330110603550408130a43616c69666f726e69613111300f0603550407130853616e204a6f736531233021060355040a131a41646f62652053797374656d7320496e636f72706f7261746564311c301a060355040b1313496e666f726d6174696f6e2053797374656d73312330210603550403131a41646f62652053797374656d7320496e636f72706f7261746564301e170d3039313030313030323331345a170d3337303231363030323331345a30819d310b3009060355040613025553311330110603550408130a43616c69666f726e69613111300f0603550407130853616e204a6f736531233021060355040a131a41646f62652053797374656d7320496e636f72706f7261746564311c301a060355040b1313496e666f726d6174696f6e2053797374656d73312330210603550403131a41646f62652053797374656d7320496e636f72706f726174656430820120300d06092a864886f70d01010105000382010d0030820108028201010099724f3e05bbd78843794f357776e04b340e13cb1c9ccb3044865180d7d8fec8166c5bbd876da8b80aa71eb6ba3d4d3455c9a8de162d24a25c4c1cd04c9523affd06a279fc8f0d018f242486bdbb2dbfbf6fcb21ed567879091928b876f7ccebc7bccef157366ebe74e33ae1d7e9373091adab8327482154afc0693a549522f8c796dd84d16e24bb221f5dbb809ca56dd2b6e799c5fa06b6d9c5c09ada54ea4c5db1523a9794ed22a3889e5e05b29f8ee0a8d61efe07ae28f65dece2ff7edc5b1416d7c7aad7f0d35e8f4a4b964dbf50ae9aa6d620157770d974131b3e7e3abd6d163d65758e2f0822db9c88598b9db6263d963d13942c91fc5efe34fc1e06e3020103a382010630820102301d0603551d0e041604145af418e419a639e1657db960996364a37ef20d403081d20603551d230481ca3081c780145af418e419a639e1657db960996364a37ef20d40a181a3a481a030819d310b3009060355040613025553311330110603550408130a43616c69666f726e69613111300f0603550407130853616e204a6f736531233021060355040a131a41646f62652053797374656d7320496e636f72706f7261746564311c301a060355040b1313496e666f726d6174696f6e2053797374656d73312330210603550403131a41646f62652053797374656d7320496e636f72706f7261746564820900d7cb412f75f4887e300c0603551d13040530030101ff300d06092a864886f70d0101050500038201010076c2a11fe303359689c2ebc7b2c398eff8c3f9ad545cdbac75df63bf7b5395b6988d1842d6aa1556d595b5692e08224d667a4c9c438f05e74906c53dd8016dde7004068866f01846365efd146e9bfaa48c9ecf657f87b97c757da11f225c4a24177bf2d7188e6cce2a70a1e8a841a14471eb51457398b8a0addd8b6c8c1538ca8f1e40b4d8b960009ea22c188d28924813d2c0b4a4d334b7cf05507e1fcf0a06fe946c7ffc435e173af6fc3e3400643710acc806f830a14788291d46f2feed9fb5c70423ca747ed1572d752894ac1f19f93989766308579393fabb43649aa8806a313b1ab9a50922a44c2467b9062037f2da0d484d9ffd8fe628eeea629ba637"

.field private static final TYPE_NATIVE:Ljava/lang/String; = "native"

.field private static mInstance:Landroid/webkit/PluginManager;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mPackageInfoCache:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 78
    const/4 v0, 0x0

    sput-object v0, Landroid/webkit/PluginManager;->mInstance:Landroid/webkit/PluginManager;

    .line 88
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/content/pm/Signature;

    const/4 v1, 0x0

    new-instance v2, Landroid/content/pm/Signature;

    const-string v3, "308204c5308203ada003020102020900d7cb412f75f4887e300d06092a864886f70d010105050030819d310b3009060355040613025553311330110603550408130a43616c69666f726e69613111300f0603550407130853616e204a6f736531233021060355040a131a41646f62652053797374656d7320496e636f72706f7261746564311c301a060355040b1313496e666f726d6174696f6e2053797374656d73312330210603550403131a41646f62652053797374656d7320496e636f72706f7261746564301e170d3039313030313030323331345a170d3337303231363030323331345a30819d310b3009060355040613025553311330110603550408130a43616c69666f726e69613111300f0603550407130853616e204a6f736531233021060355040a131a41646f62652053797374656d7320496e636f72706f7261746564311c301a060355040b1313496e666f726d6174696f6e2053797374656d73312330210603550403131a41646f62652053797374656d7320496e636f72706f726174656430820120300d06092a864886f70d01010105000382010d0030820108028201010099724f3e05bbd78843794f357776e04b340e13cb1c9ccb3044865180d7d8fec8166c5bbd876da8b80aa71eb6ba3d4d3455c9a8de162d24a25c4c1cd04c9523affd06a279fc8f0d018f242486bdbb2dbfbf6fcb21ed567879091928b876f7ccebc7bccef157366ebe74e33ae1d7e9373091adab8327482154afc0693a549522f8c796dd84d16e24bb221f5dbb809ca56dd2b6e799c5fa06b6d9c5c09ada54ea4c5db1523a9794ed22a3889e5e05b29f8ee0a8d61efe07ae28f65dece2ff7edc5b1416d7c7aad7f0d35e8f4a4b964dbf50ae9aa6d620157770d974131b3e7e3abd6d163d65758e2f0822db9c88598b9db6263d963d13942c91fc5efe34fc1e06e3020103a382010630820102301d0603551d0e041604145af418e419a639e1657db960996364a37ef20d403081d20603551d230481ca3081c780145af418e419a639e1657db960996364a37ef20d40a181a3a481a030819d310b3009060355040613025553311330110603550408130a43616c69666f726e69613111300f0603550407130853616e204a6f736531233021060355040a131a41646f62652053797374656d7320496e636f72706f7261746564311c301a060355040b1313496e666f726d6174696f6e2053797374656d73312330210603550403131a41646f62652053797374656d7320496e636f72706f7261746564820900d7cb412f75f4887e300c0603551d13040530030101ff300d06092a864886f70d0101050500038201010076c2a11fe303359689c2ebc7b2c398eff8c3f9ad545cdbac75df63bf7b5395b6988d1842d6aa1556d595b5692e08224d667a4c9c438f05e74906c53dd8016dde7004068866f01846365efd146e9bfaa48c9ecf657f87b97c757da11f225c4a24177bf2d7188e6cce2a70a1e8a841a14471eb51457398b8a0addd8b6c8c1538ca8f1e40b4d8b960009ea22c188d28924813d2c0b4a4d334b7cf05507e1fcf0a06fe946c7ffc435e173af6fc3e3400643710acc806f830a14788291d46f2feed9fb5c70423ca747ed1572d752894ac1f19f93989766308579393fabb43649aa8806a313b1ab9a50922a44c2467b9062037f2da0d484d9ffd8fe628eeea629ba637"

    invoke-direct {v2, v3}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V

    aput-object v2, v0, v1

    sput-object v0, Landroid/webkit/PluginManager;->SIGNATURES:[Landroid/content/pm/Signature;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    iput-object p1, p0, Landroid/webkit/PluginManager;->mContext:Landroid/content/Context;

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/webkit/PluginManager;->mPackageInfoCache:Ljava/util/ArrayList;

    .line 95
    return-void
.end method

.method private static containsPluginPermissionAndSignatures(Landroid/content/pm/PackageInfo;)Z
    .locals 12
    .parameter "pkgInfo"

    .prologue
    const/4 v10, 0x0

    .line 248
    iget-object v5, p0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    .line 249
    .local v5, permissions:[Ljava/lang/String;
    if-nez v5, :cond_1

    .line 283
    :cond_0
    :goto_0
    return v10

    .line 252
    :cond_1
    const/4 v4, 0x0

    .line 253
    .local v4, permissionOk:Z
    move-object v0, v5

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1
    if-ge v2, v3, :cond_2

    aget-object v6, v0, v2

    .line 254
    .local v6, permit:Ljava/lang/String;
    const-string v11, "android.webkit.permission.PLUGIN"

    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 255
    const/4 v4, 0x1

    .line 259
    .end local v6           #permit:Ljava/lang/String;
    :cond_2
    if-eqz v4, :cond_0

    .line 264
    iget-object v9, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 265
    .local v9, signatures:[Landroid/content/pm/Signature;
    if-eqz v9, :cond_0

    .line 268
    const-string/jumbo v11, "ro.secure"

    invoke-static {v11, v10}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 269
    const/4 v8, 0x0

    .line 270
    .local v8, signatureMatch:Z
    move-object v0, v9

    .local v0, arr$:[Landroid/content/pm/Signature;
    array-length v3, v0

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v3, :cond_6

    aget-object v7, v0, v2

    .line 271
    .local v7, signature:Landroid/content/pm/Signature;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_3
    sget-object v11, Landroid/webkit/PluginManager;->SIGNATURES:[Landroid/content/pm/Signature;

    array-length v11, v11

    if-ge v1, v11, :cond_3

    .line 272
    sget-object v11, Landroid/webkit/PluginManager;->SIGNATURES:[Landroid/content/pm/Signature;

    aget-object v11, v11, v1

    invoke-virtual {v11, v7}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 273
    const/4 v8, 0x1

    .line 270
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 253
    .end local v1           #i:I
    .end local v7           #signature:Landroid/content/pm/Signature;
    .end local v8           #signatureMatch:Z
    .end local v9           #signatures:[Landroid/content/pm/Signature;
    .local v0, arr$:[Ljava/lang/String;
    .restart local v6       #permit:Ljava/lang/String;
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 271
    .end local v6           #permit:Ljava/lang/String;
    .local v0, arr$:[Landroid/content/pm/Signature;
    .restart local v1       #i:I
    .restart local v7       #signature:Landroid/content/pm/Signature;
    .restart local v8       #signatureMatch:Z
    .restart local v9       #signatures:[Landroid/content/pm/Signature;
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 278
    .end local v1           #i:I
    .end local v7           #signature:Landroid/content/pm/Signature;
    :cond_6
    if-eqz v8, :cond_0

    .line 283
    .end local v0           #arr$:[Landroid/content/pm/Signature;
    .end local v8           #signatureMatch:Z
    :cond_7
    const/4 v10, 0x1

    goto :goto_0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Landroid/webkit/PluginManager;
    .locals 3
    .parameter "context"

    .prologue
    .line 98
    const-class v1, Landroid/webkit/PluginManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Landroid/webkit/PluginManager;->mInstance:Landroid/webkit/PluginManager;

    if-nez v0, :cond_1

    .line 99
    if-nez p0, :cond_0

    .line 100
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "First call to PluginManager need a valid context."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 103
    :cond_0
    :try_start_1
    new-instance v0, Landroid/webkit/PluginManager;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/webkit/PluginManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Landroid/webkit/PluginManager;->mInstance:Landroid/webkit/PluginManager;

    .line 105
    :cond_1
    sget-object v0, Landroid/webkit/PluginManager;->mInstance:Landroid/webkit/PluginManager;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-object v0
.end method


# virtual methods
.method containsPluginPermissionAndSignatures(Ljava/lang/String;)Z
    .locals 6
    .parameter "pluginAPKName"

    .prologue
    .line 230
    iget-object v3, p0, Landroid/webkit/PluginManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 234
    .local v2, pm:Landroid/content/pm/PackageManager;
    const/16 v3, 0x1040

    :try_start_0
    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 236
    .local v1, pkgInfo:Landroid/content/pm/PackageInfo;
    if-eqz v1, :cond_0

    .line 237
    invoke-static {v1}, Landroid/webkit/PluginManager;->containsPluginPermissionAndSignatures(Landroid/content/pm/PackageInfo;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 242
    .end local v1           #pkgInfo:Landroid/content/pm/PackageInfo;
    :goto_0
    return v3

    .line 239
    :catch_0
    move-exception v0

    .line 240
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "PluginManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t find plugin: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    .end local v0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method getPluginClass(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Class;
    .locals 4
    .parameter "packageName"
    .parameter "className"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 314
    iget-object v2, p0, Landroid/webkit/PluginManager;->mContext:Landroid/content/Context;

    const/4 v3, 0x3

    invoke-virtual {v2, p1, v3}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v1

    .line 317
    .local v1, pluginContext:Landroid/content/Context;
    invoke-virtual {v1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 318
    .local v0, pluginCL:Ljava/lang/ClassLoader;
    invoke-virtual {v0, p2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    return-object v2
.end method

.method getPluginDirectories()[Ljava/lang/String;
    .locals 23

    .prologue
    .line 123
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 124
    .local v6, directories:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/PluginManager;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    .line 125
    .local v14, pm:Landroid/content/pm/PackageManager;
    new-instance v19, Landroid/content/Intent;

    const-string v20, "android.webkit.PLUGIN"

    invoke-direct/range {v19 .. v20}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v20, 0x84

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v14, v0, v1}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v13

    .line 128
    .local v13, plugins:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/PluginManager;->mPackageInfoCache:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    monitor-enter v20

    .line 131
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/PluginManager;->mPackageInfoCache:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->clear()V

    .line 133
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_7

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/ResolveInfo;

    .line 136
    .local v10, info:Landroid/content/pm/ResolveInfo;
    iget-object v15, v10, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 137
    .local v15, serviceInfo:Landroid/content/pm/ServiceInfo;
    if-nez v15, :cond_1

    .line 138
    const-string v19, "PluginManager"

    const-string v21, "Ignore bad plugin"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 223
    .end local v9           #i$:Ljava/util/Iterator;
    .end local v10           #info:Landroid/content/pm/ResolveInfo;
    .end local v15           #serviceInfo:Landroid/content/pm/ServiceInfo;
    :catchall_0
    move-exception v19

    monitor-exit v20
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v19

    .line 145
    .restart local v9       #i$:Ljava/util/Iterator;
    .restart local v10       #info:Landroid/content/pm/ResolveInfo;
    .restart local v15       #serviceInfo:Landroid/content/pm/ServiceInfo;
    :cond_1
    :try_start_1
    iget-object v0, v15, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v21, 0x1040

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v14, v0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v11

    .line 152
    .local v11, pkgInfo:Landroid/content/pm/PackageInfo;
    if-eqz v11, :cond_0

    .line 162
    :try_start_2
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v11, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v21, "/lib"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 163
    .local v7, directory:Ljava/lang/String;
    iget-object v0, v11, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v3, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 164
    .local v3, appFlags:I
    const/16 v17, 0x81

    .line 167
    .local v17, updatedSystemFlags:I
    and-int/lit16 v0, v3, 0x81

    move/from16 v19, v0

    const/16 v21, 0x1

    move/from16 v0, v19

    move/from16 v1, v21

    if-ne v0, v1, :cond_2

    .line 168
    new-instance v16, Ljava/io/File;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "/system/lib/plugins/"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget-object v0, v11, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 169
    .local v16, systemDir:Ljava/io/File;
    const/16 v18, 0x1

    .line 171
    .local v18, useSystemLib:Z
    :try_start_3
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->exists()Z

    move-result v19

    if-eqz v19, :cond_3

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->isDirectory()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_3

    move-result v19

    if-eqz v19, :cond_3

    const/16 v18, 0x1

    .line 177
    :goto_1
    if-eqz v18, :cond_2

    .line 178
    :try_start_4
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "/system/lib/plugins/"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget-object v0, v11, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 184
    .end local v16           #systemDir:Ljava/io/File;
    .end local v18           #useSystemLib:Z
    :cond_2
    invoke-static {v11}, Landroid/webkit/PluginManager;->containsPluginPermissionAndSignatures(Landroid/content/pm/PackageInfo;)Z

    move-result v19

    if-eqz v19, :cond_0

    .line 189
    iget-object v0, v15, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    move-object/from16 v19, v0

    if-nez v19, :cond_4

    .line 190
    const-string v19, "PluginManager"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "The plugin \'"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    iget-object v0, v15, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "\' has no type defined"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 148
    .end local v3           #appFlags:I
    .end local v7           #directory:Ljava/lang/String;
    .end local v11           #pkgInfo:Landroid/content/pm/PackageInfo;
    .end local v17           #updatedSystemFlags:I
    :catch_0
    move-exception v8

    .line 149
    .local v8, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v19, "PluginManager"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Can\'t find plugin: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    iget-object v0, v15, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 171
    .end local v8           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v3       #appFlags:I
    .restart local v7       #directory:Ljava/lang/String;
    .restart local v11       #pkgInfo:Landroid/content/pm/PackageInfo;
    .restart local v16       #systemDir:Ljava/io/File;
    .restart local v17       #updatedSystemFlags:I
    .restart local v18       #useSystemLib:Z
    :cond_3
    const/16 v18, 0x0

    goto :goto_1

    .line 194
    .end local v16           #systemDir:Ljava/io/File;
    .end local v18           #useSystemLib:Z
    :cond_4
    iget-object v0, v15, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    move-object/from16 v19, v0

    const-string/jumbo v21, "type"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 195
    .local v12, pluginType:Ljava/lang/String;
    const-string/jumbo v19, "native"

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_5

    .line 196
    const-string v19, "PluginManager"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Unrecognized plugin type: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .line 201
    :cond_5
    :try_start_5
    iget-object v0, v15, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    iget-object v0, v15, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/webkit/PluginManager;->getPluginClass(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 204
    .local v5, cls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/4 v4, 0x1

    .line 206
    .local v4, classFound:Z
    if-nez v4, :cond_6

    .line 207
    const-string v19, "PluginManager"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "The plugin\'s class\' "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    iget-object v0, v15, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "\' does not extend the appropriate class."

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_0

    .line 211
    .end local v4           #classFound:Z
    .end local v5           #cls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :catch_1
    move-exception v8

    .line 212
    .restart local v8       #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_6
    const-string v19, "PluginManager"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Can\'t find plugin: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    iget-object v0, v15, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 214
    .end local v8           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_2
    move-exception v8

    .line 215
    .local v8, e:Ljava/lang/ClassNotFoundException;
    const-string v19, "PluginManager"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Can\'t find plugin\'s class: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    iget-object v0, v15, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 220
    .end local v8           #e:Ljava/lang/ClassNotFoundException;
    .restart local v4       #classFound:Z
    .restart local v5       #cls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/PluginManager;->mPackageInfoCache:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 221
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 223
    .end local v3           #appFlags:I
    .end local v4           #classFound:Z
    .end local v5           #cls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v7           #directory:Ljava/lang/String;
    .end local v10           #info:Landroid/content/pm/ResolveInfo;
    .end local v11           #pkgInfo:Landroid/content/pm/PackageInfo;
    .end local v12           #pluginType:Ljava/lang/String;
    .end local v15           #serviceInfo:Landroid/content/pm/ServiceInfo;
    .end local v17           #updatedSystemFlags:I
    :cond_7
    monitor-exit v20
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 225
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v19

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v19

    check-cast v19, [Ljava/lang/String;

    return-object v19

    .line 172
    .restart local v3       #appFlags:I
    .restart local v7       #directory:Ljava/lang/String;
    .restart local v10       #info:Landroid/content/pm/ResolveInfo;
    .restart local v11       #pkgInfo:Landroid/content/pm/PackageInfo;
    .restart local v15       #serviceInfo:Landroid/content/pm/ServiceInfo;
    .restart local v16       #systemDir:Ljava/io/File;
    .restart local v17       #updatedSystemFlags:I
    .restart local v18       #useSystemLib:Z
    :catch_3
    move-exception v19

    goto/16 :goto_1
.end method

.method getPluginSharedDataDirectory()Ljava/lang/String;
    .locals 3

    .prologue
    .line 308
    iget-object v0, p0, Landroid/webkit/PluginManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "plugins"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getPluginsAPKName(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "pluginLib"

    .prologue
    const/4 v2, 0x0

    .line 290
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    .line 304
    :cond_0
    :goto_0
    return-object v2

    .line 295
    :cond_1
    iget-object v3, p0, Landroid/webkit/PluginManager;->mPackageInfoCache:Ljava/util/ArrayList;

    monitor-enter v3

    .line 296
    :try_start_0
    iget-object v4, p0, Landroid/webkit/PluginManager;->mPackageInfoCache:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageInfo;

    .line 297
    .local v1, pkgInfo:Landroid/content/pm/PackageInfo;
    iget-object v4, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 298
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    monitor-exit v3

    goto :goto_0

    .line 301
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #pkgInfo:Landroid/content/pm/PackageInfo;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_3
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public refreshPlugins(Z)V
    .locals 3
    .parameter "reloadOpenPages"

    .prologue
    .line 116
    sget-object v0, Landroid/webkit/BrowserFrame;->sJavaBridge:Landroid/webkit/JWebCoreJavaBridge;

    const/16 v1, 0x64

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/webkit/JWebCoreJavaBridge;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 119
    return-void
.end method

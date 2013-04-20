.class public Lcom/android/server/ProfileManagerService;
.super Landroid/app/IProfileManager$Stub;
.source "ProfileManagerService.java"


# static fields
.field public static final INTENT_ACTION_PROFILE_SELECTED:Ljava/lang/String; = "android.intent.action.PROFILE_SELECTED"

.field private static final LOCAL_LOGV:Z = false

.field public static final PERMISSION_CHANGE_SETTINGS:Ljava/lang/String; = "android.permission.WRITE_SETTINGS"

.field private static final PROFILE_FILENAME:Ljava/lang/String; = "/data/system/profiles.xml"

.field private static final TAG:Ljava/lang/String; = "ProfileService"

.field private static final mWildcardUUID:Ljava/util/UUID;


# instance fields
.field private mActiveProfile:Landroid/app/Profile;

.field private mContext:Landroid/content/Context;

.field private mDirty:Z

.field private mGroups:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/util/UUID;",
            "Landroid/app/NotificationGroup;",
            ">;"
        }
    .end annotation
.end field

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mProfileNames:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/UUID;",
            ">;"
        }
    .end annotation
.end field

.field private mProfiles:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/util/UUID;",
            "Landroid/app/Profile;",
            ">;"
        }
    .end annotation
.end field

.field private mWildcardGroup:Landroid/app/NotificationGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 72
    const-string v0, "a126d48a-aaef-47c4-baed-7f0e44aeffe5"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/android/server/ProfileManagerService;->mWildcardUUID:Ljava/util/UUID;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const v4, 0x10400d1

    .line 92
    invoke-direct {p0}, Landroid/app/IProfileManager$Stub;-><init>()V

    .line 78
    new-instance v1, Lcom/android/server/ProfileManagerService$1;

    invoke-direct {v1, p0}, Lcom/android/server/ProfileManagerService$1;-><init>(Lcom/android/server/ProfileManagerService;)V

    iput-object v1, p0, Lcom/android/server/ProfileManagerService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 93
    iput-object p1, p0, Lcom/android/server/ProfileManagerService;->mContext:Landroid/content/Context;

    .line 95
    new-instance v1, Landroid/app/NotificationGroup;

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/android/server/ProfileManagerService;->mWildcardUUID:Ljava/util/UUID;

    invoke-direct {v1, v2, v4, v3}, Landroid/app/NotificationGroup;-><init>(Ljava/lang/String;ILjava/util/UUID;)V

    iput-object v1, p0, Lcom/android/server/ProfileManagerService;->mWildcardGroup:Landroid/app/NotificationGroup;

    .line 100
    invoke-direct {p0}, Lcom/android/server/ProfileManagerService;->initialize()V

    .line 102
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 103
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 104
    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 105
    iget-object v1, p0, Lcom/android/server/ProfileManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/ProfileManagerService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 106
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/ProfileManagerService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/server/ProfileManagerService;->persistIfDirty()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/ProfileManagerService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/server/ProfileManagerService;->initialize()V

    return-void
.end method

.method private addNotificationGroupInternal(Landroid/app/NotificationGroup;)V
    .locals 4
    .parameter "group"

    .prologue
    .line 380
    iget-object v2, p0, Lcom/android/server/ProfileManagerService;->mGroups:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/app/NotificationGroup;->getUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-interface {v2, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    .line 383
    iget-object v2, p0, Lcom/android/server/ProfileManagerService;->mProfiles:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Profile;

    .line 384
    .local v1, profile:Landroid/app/Profile;
    const/4 v2, 0x0

    invoke-direct {p0, v1, p1, v2}, Lcom/android/server/ProfileManagerService;->ensureGroupInProfile(Landroid/app/Profile;Landroid/app/NotificationGroup;Z)V

    goto :goto_0

    .line 387
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #profile:Landroid/app/Profile;
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/ProfileManagerService;->mDirty:Z

    .line 388
    return-void
.end method

.method private addProfileInternal(Landroid/app/Profile;)V
    .locals 6
    .parameter "profile"

    .prologue
    const/4 v5, 0x1

    .line 238
    iget-object v2, p0, Lcom/android/server/ProfileManagerService;->mGroups:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationGroup;

    .line 239
    .local v0, group:Landroid/app/NotificationGroup;
    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v2}, Lcom/android/server/ProfileManagerService;->ensureGroupInProfile(Landroid/app/Profile;Landroid/app/NotificationGroup;Z)V

    goto :goto_0

    .line 241
    .end local v0           #group:Landroid/app/NotificationGroup;
    :cond_0
    iget-object v2, p0, Lcom/android/server/ProfileManagerService;->mWildcardGroup:Landroid/app/NotificationGroup;

    invoke-direct {p0, p1, v2, v5}, Lcom/android/server/ProfileManagerService;->ensureGroupInProfile(Landroid/app/Profile;Landroid/app/NotificationGroup;Z)V

    .line 242
    iget-object v2, p0, Lcom/android/server/ProfileManagerService;->mProfiles:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/app/Profile;->getUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-interface {v2, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    iget-object v2, p0, Lcom/android/server/ProfileManagerService;->mProfileNames:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/app/Profile;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/app/Profile;->getUuid()Ljava/util/UUID;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    iput-boolean v5, p0, Lcom/android/server/ProfileManagerService;->mDirty:Z

    .line 245
    return-void
.end method

.method private enforceChangePermissions()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 547
    iget-object v0, p0, Lcom/android/server/ProfileManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.WRITE_SETTINGS"

    const-string v2, "You do not have permissions to change the Profile Manager."

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 549
    return-void
.end method

.method private ensureGroupInProfile(Landroid/app/Profile;Landroid/app/NotificationGroup;Z)V
    .locals 6
    .parameter "profile"
    .parameter "group"
    .parameter "defaultGroup"

    .prologue
    .line 248
    invoke-virtual {p2}, Landroid/app/NotificationGroup;->getUuid()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/app/Profile;->getProfileGroup(Ljava/util/UUID;)Landroid/app/ProfileGroup;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 262
    :cond_0
    :goto_0
    return-void

    .line 254
    :cond_1
    invoke-virtual {p1}, Landroid/app/Profile;->getProfileGroups()[Landroid/app/ProfileGroup;

    move-result-object v0

    .local v0, arr$:[Landroid/app/ProfileGroup;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1
    if-ge v1, v2, :cond_2

    aget-object v3, v0, v1

    .line 255
    .local v3, pg:Landroid/app/ProfileGroup;
    invoke-virtual {v3, p2, p3}, Landroid/app/ProfileGroup;->matches(Landroid/app/NotificationGroup;Z)Z

    move-result v4

    if-nez v4, :cond_0

    .line 254
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 261
    .end local v3           #pg:Landroid/app/ProfileGroup;
    :cond_2
    new-instance v4, Landroid/app/ProfileGroup;

    invoke-virtual {p2}, Landroid/app/NotificationGroup;->getUuid()Ljava/util/UUID;

    move-result-object v5

    invoke-direct {v4, v5, p3}, Landroid/app/ProfileGroup;-><init>(Ljava/util/UUID;Z)V

    invoke-virtual {p1, v4}, Landroid/app/Profile;->addProfileGroup(Landroid/app/ProfileGroup;)V

    goto :goto_0
.end method

.method private getXmlString()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 491
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 492
    .local v0, builder:Ljava/lang/StringBuilder;
    const-string v4, "<profiles>\n<active>"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 493
    invoke-virtual {p0}, Lcom/android/server/ProfileManagerService;->getActiveProfile()Landroid/app/Profile;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Profile;->getUuid()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->htmlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 494
    const-string v4, "</active>\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 496
    iget-object v4, p0, Lcom/android/server/ProfileManagerService;->mProfiles:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/Profile;

    .line 497
    .local v3, p:Landroid/app/Profile;
    iget-object v4, p0, Lcom/android/server/ProfileManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0, v4}, Landroid/app/Profile;->getXmlString(Ljava/lang/StringBuilder;Landroid/content/Context;)V

    goto :goto_0

    .line 499
    .end local v3           #p:Landroid/app/Profile;
    :cond_0
    iget-object v4, p0, Lcom/android/server/ProfileManagerService;->mGroups:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationGroup;

    .line 500
    .local v1, g:Landroid/app/NotificationGroup;
    iget-object v4, p0, Lcom/android/server/ProfileManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0, v4}, Landroid/app/NotificationGroup;->getXmlString(Ljava/lang/StringBuilder;Landroid/content/Context;)V

    goto :goto_1

    .line 502
    .end local v1           #g:Landroid/app/NotificationGroup;
    :cond_1
    const-string v4, "</profiles>\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 503
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private initialiseStructure()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 479
    iget-object v1, p0, Lcom/android/server/ProfileManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10f000c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    .line 482
    .local v0, xml:Landroid/content/res/XmlResourceParser;
    :try_start_0
    iget-object v1, p0, Lcom/android/server/ProfileManagerService;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0, v1}, Lcom/android/server/ProfileManagerService;->loadXml(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/Context;)V

    .line 483
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/ProfileManagerService;->mDirty:Z

    .line 484
    invoke-direct {p0}, Lcom/android/server/ProfileManagerService;->persistIfDirty()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 486
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->close()V

    .line 488
    return-void

    .line 486
    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->close()V

    throw v1
.end method

.method private initialize()V
    .locals 1

    .prologue
    .line 109
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/ProfileManagerService;->initialize(Z)V

    .line 110
    return-void
.end method

.method private initialize(Z)V
    .locals 5
    .parameter "skipFile"

    .prologue
    .line 113
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/android/server/ProfileManagerService;->mProfiles:Ljava/util/Map;

    .line 114
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/android/server/ProfileManagerService;->mProfileNames:Ljava/util/Map;

    .line 115
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/android/server/ProfileManagerService;->mGroups:Ljava/util/Map;

    .line 116
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/ProfileManagerService;->mDirty:Z

    .line 118
    move v2, p1

    .line 120
    .local v2, init:Z
    if-nez p1, :cond_0

    .line 122
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/ProfileManagerService;->loadFromFile()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 132
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    .line 134
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/ProfileManagerService;->initialiseStructure()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3

    .line 139
    :cond_1
    :goto_1
    return-void

    .line 123
    :catch_0
    move-exception v0

    .line 124
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 125
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 126
    .local v0, e:Lorg/xmlpull/v1/XmlPullParserException;
    const/4 v2, 0x1

    .line 129
    goto :goto_0

    .line 127
    .end local v0           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :catch_2
    move-exception v0

    .line 128
    .local v0, e:Ljava/io/IOException;
    const/4 v2, 0x1

    goto :goto_0

    .line 135
    .end local v0           #e:Ljava/io/IOException;
    :catch_3
    move-exception v1

    .line 136
    .local v1, ex:Ljava/lang/Throwable;
    const-string v3, "ProfileService"

    const-string v4, "Error loading xml from resource: "

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private loadFromFile()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 425
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v2

    .line 426
    .local v2, xppf:Lorg/xmlpull/v1/XmlPullParserFactory;
    invoke-virtual {v2}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    .line 427
    .local v1, xpp:Lorg/xmlpull/v1/XmlPullParser;
    new-instance v0, Ljava/io/FileReader;

    const-string v3, "/data/system/profiles.xml"

    invoke-direct {v0, v3}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 428
    .local v0, fr:Ljava/io/FileReader;
    invoke-interface {v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 429
    iget-object v3, p0, Lcom/android/server/ProfileManagerService;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1, v3}, Lcom/android/server/ProfileManagerService;->loadXml(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/Context;)V

    .line 430
    invoke-virtual {v0}, Ljava/io/FileReader;->close()V

    .line 431
    invoke-direct {p0}, Lcom/android/server/ProfileManagerService;->persistIfDirty()V

    .line 432
    return-void
.end method

.method private loadXml(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/Context;)V
    .locals 11
    .parameter "xpp"
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 436
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    .line 437
    .local v2, event:I
    const/4 v0, 0x0

    .line 438
    .local v0, active:Ljava/lang/String;
    :goto_0
    const/4 v6, 0x3

    if-ne v2, v6, :cond_0

    const-string v6, "profiles"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 439
    :cond_0
    const/4 v6, 0x2

    if-ne v2, v6, :cond_4

    .line 440
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 441
    .local v3, name:Ljava/lang/String;
    const-string v6, "active"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 442
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    .line 443
    const-string v6, "ProfileService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Found active: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    .end local v3           #name:Ljava/lang/String;
    :cond_1
    :goto_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    goto :goto_0

    .line 444
    .restart local v3       #name:Ljava/lang/String;
    :cond_2
    const-string v6, "profile"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 445
    invoke-static {p1, p2}, Landroid/app/Profile;->fromXml(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/Context;)Landroid/app/Profile;

    move-result-object v5

    .line 446
    .local v5, prof:Landroid/app/Profile;
    invoke-direct {p0, v5}, Lcom/android/server/ProfileManagerService;->addProfileInternal(Landroid/app/Profile;)V

    .line 448
    if-nez v0, :cond_1

    .line 449
    invoke-virtual {v5}, Landroid/app/Profile;->getUuid()Ljava/util/UUID;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 451
    .end local v5           #prof:Landroid/app/Profile;
    :cond_3
    const-string v6, "notificationGroup"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 452
    invoke-static {p1, p2}, Landroid/app/NotificationGroup;->fromXml(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/Context;)Landroid/app/NotificationGroup;

    move-result-object v4

    .line 453
    .local v4, ng:Landroid/app/NotificationGroup;
    invoke-direct {p0, v4}, Lcom/android/server/ProfileManagerService;->addNotificationGroupInternal(Landroid/app/NotificationGroup;)V

    goto :goto_1

    .line 455
    .end local v3           #name:Ljava/lang/String;
    .end local v4           #ng:Landroid/app/NotificationGroup;
    :cond_4
    if-ne v2, v10, :cond_1

    .line 456
    new-instance v6, Ljava/io/IOException;

    const-string v7, "Premature end of file while reading /data/system/profiles.xml"

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 464
    :cond_5
    :try_start_0
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v6

    const/4 v7, 0x0

    invoke-direct {p0, v6, v7}, Lcom/android/server/ProfileManagerService;->setActiveProfile(Ljava/util/UUID;Z)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 476
    :goto_2
    return-void

    .line 465
    :catch_0
    move-exception v1

    .line 466
    .local v1, e:Ljava/lang/IllegalArgumentException;
    iget-object v6, p0, Lcom/android/server/ProfileManagerService;->mProfileNames:Ljava/util/Map;

    invoke-interface {v6, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 467
    iget-object v6, p0, Lcom/android/server/ProfileManagerService;->mProfileNames:Ljava/util/Map;

    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/UUID;

    invoke-direct {p0, v6, v9}, Lcom/android/server/ProfileManagerService;->setActiveProfile(Ljava/util/UUID;Z)Z

    .line 474
    :goto_3
    iput-boolean v10, p0, Lcom/android/server/ProfileManagerService;->mDirty:Z

    goto :goto_2

    .line 471
    :cond_6
    iget-object v6, p0, Lcom/android/server/ProfileManagerService;->mProfiles:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/Profile;

    invoke-direct {p0, v6, v9}, Lcom/android/server/ProfileManagerService;->setActiveProfile(Landroid/app/Profile;Z)Z

    goto :goto_3
.end method

.method private declared-synchronized persistIfDirty()V
    .locals 8

    .prologue
    .line 515
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/ProfileManagerService;->mDirty:Z

    .line 516
    .local v0, dirty:Z
    if-nez v0, :cond_1

    .line 517
    iget-object v6, p0, Lcom/android/server/ProfileManagerService;->mProfiles:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/Profile;

    .line 518
    .local v5, profile:Landroid/app/Profile;
    invoke-virtual {v5}, Landroid/app/Profile;->isDirty()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 519
    const/4 v0, 0x1

    .line 524
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v5           #profile:Landroid/app/Profile;
    :cond_1
    if-nez v0, :cond_3

    .line 525
    iget-object v6, p0, Lcom/android/server/ProfileManagerService;->mGroups:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .restart local v4       #i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationGroup;

    .line 526
    .local v3, group:Landroid/app/NotificationGroup;
    invoke-virtual {v3}, Landroid/app/NotificationGroup;->isDirty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    if-eqz v6, :cond_2

    .line 527
    const/4 v0, 0x1

    .line 532
    .end local v3           #group:Landroid/app/NotificationGroup;
    .end local v4           #i$:Ljava/util/Iterator;
    :cond_3
    if-eqz v0, :cond_4

    .line 534
    :try_start_1
    const-string v6, "ProfileService"

    const-string v7, "Saving profile data..."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    new-instance v2, Ljava/io/FileWriter;

    const-string v6, "/data/system/profiles.xml"

    invoke-direct {v2, v6}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    .line 536
    .local v2, fw:Ljava/io/FileWriter;
    invoke-direct {p0}, Lcom/android/server/ProfileManagerService;->getXmlString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 537
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V

    .line 538
    const-string v6, "ProfileService"

    const-string v7, "Save completed."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/server/ProfileManagerService;->mDirty:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 544
    .end local v2           #fw:Ljava/io/FileWriter;
    :cond_4
    :goto_0
    monitor-exit p0

    return-void

    .line 540
    :catch_0
    move-exception v1

    .line 541
    .local v1, e:Ljava/lang/Throwable;
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 515
    .end local v0           #dirty:Z
    .end local v1           #e:Ljava/lang/Throwable;
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6
.end method

.method private setActiveProfile(Landroid/app/Profile;Z)Z
    .locals 9
    .parameter "newActiveProfile"
    .parameter "doinit"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 192
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/ProfileManagerService;->enforceChangePermissions()V

    .line 193
    const-string v6, "ProfileService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Set active profile to: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Landroid/app/Profile;->getUuid()Ljava/util/UUID;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Landroid/app/Profile;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    iget-object v2, p0, Lcom/android/server/ProfileManagerService;->mActiveProfile:Landroid/app/Profile;

    .line 195
    .local v2, lastProfile:Landroid/app/Profile;
    iput-object p1, p0, Lcom/android/server/ProfileManagerService;->mActiveProfile:Landroid/app/Profile;

    .line 196
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/server/ProfileManagerService;->mDirty:Z

    .line 197
    if-eqz p2, :cond_0

    .line 205
    invoke-static {}, Lcom/android/server/ProfileManagerService;->clearCallingIdentity()J

    move-result-wide v3

    .line 208
    .local v3, token:J
    iget-object v6, p0, Lcom/android/server/ProfileManagerService;->mActiveProfile:Landroid/app/Profile;

    iget-object v7, p0, Lcom/android/server/ProfileManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v7}, Landroid/app/Profile;->doSelect(Landroid/content/Context;)V

    .line 211
    new-instance v0, Landroid/content/Intent;

    const-string v6, "android.intent.action.PROFILE_SELECTED"

    invoke-direct {v0, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 212
    .local v0, broadcast:Landroid/content/Intent;
    const-string v6, "name"

    iget-object v7, p0, Lcom/android/server/ProfileManagerService;->mActiveProfile:Landroid/app/Profile;

    invoke-virtual {v7}, Landroid/app/Profile;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 213
    const-string v6, "uuid"

    iget-object v7, p0, Lcom/android/server/ProfileManagerService;->mActiveProfile:Landroid/app/Profile;

    invoke-virtual {v7}, Landroid/app/Profile;->getUuid()Ljava/util/UUID;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 214
    const-string v6, "lastName"

    invoke-virtual {v2}, Landroid/app/Profile;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 215
    const-string v6, "lastUuid"

    invoke-virtual {v2}, Landroid/app/Profile;->getUuid()Ljava/util/UUID;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 216
    iget-object v6, p0, Lcom/android/server/ProfileManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 218
    invoke-static {v3, v4}, Lcom/android/server/ProfileManagerService;->restoreCallingIdentity(J)V

    .line 219
    invoke-direct {p0}, Lcom/android/server/ProfileManagerService;->persistIfDirty()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 224
    .end local v0           #broadcast:Landroid/content/Intent;
    .end local v2           #lastProfile:Landroid/app/Profile;
    .end local v3           #token:J
    :cond_0
    :goto_0
    return v5

    .line 222
    :catch_0
    move-exception v1

    .line 223
    .local v1, ex:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 224
    const/4 v5, 0x0

    goto :goto_0
.end method

.method private setActiveProfile(Ljava/util/UUID;Z)Z
    .locals 3
    .parameter "profileUuid"
    .parameter "doinit"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 173
    iget-object v0, p0, Lcom/android/server/ProfileManagerService;->mProfiles:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/android/server/ProfileManagerService;->mProfiles:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Profile;

    invoke-direct {p0, v0, p2}, Lcom/android/server/ProfileManagerService;->setActiveProfile(Landroid/app/Profile;Z)Z

    move-result v0

    .line 178
    :goto_0
    return v0

    .line 177
    :cond_0
    const-string v0, "ProfileService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot set active profile to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - does not exist."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addNotificationGroup(Landroid/app/NotificationGroup;)V
    .locals 0
    .parameter "group"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 374
    invoke-direct {p0}, Lcom/android/server/ProfileManagerService;->enforceChangePermissions()V

    .line 375
    invoke-direct {p0, p1}, Lcom/android/server/ProfileManagerService;->addNotificationGroupInternal(Landroid/app/NotificationGroup;)V

    .line 376
    invoke-direct {p0}, Lcom/android/server/ProfileManagerService;->persistIfDirty()V

    .line 377
    return-void
.end method

.method public addProfile(Landroid/app/Profile;)Z
    .locals 1
    .parameter "profile"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 230
    invoke-direct {p0}, Lcom/android/server/ProfileManagerService;->enforceChangePermissions()V

    .line 231
    invoke-direct {p0, p1}, Lcom/android/server/ProfileManagerService;->addProfileInternal(Landroid/app/Profile;)V

    .line 232
    invoke-direct {p0}, Lcom/android/server/ProfileManagerService;->persistIfDirty()V

    .line 233
    const/4 v0, 0x1

    return v0
.end method

.method public getActiveProfile()Landroid/app/Profile;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 308
    iget-object v0, p0, Lcom/android/server/ProfileManagerService;->mActiveProfile:Landroid/app/Profile;

    return-object v0
.end method

.method public getNotificationGroup(Landroid/os/ParcelUuid;)Landroid/app/NotificationGroup;
    .locals 2
    .parameter "uuid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 508
    invoke-virtual {p1}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/ProfileManagerService;->mWildcardGroup:Landroid/app/NotificationGroup;

    invoke-virtual {v1}, Landroid/app/NotificationGroup;->getUuid()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 509
    iget-object v0, p0, Lcom/android/server/ProfileManagerService;->mWildcardGroup:Landroid/app/NotificationGroup;

    .line 511
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/ProfileManagerService;->mGroups:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationGroup;

    goto :goto_0
.end method

.method public getNotificationGroupForPackage(Ljava/lang/String;)Landroid/app/NotificationGroup;
    .locals 3
    .parameter "pkg"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 416
    iget-object v2, p0, Lcom/android/server/ProfileManagerService;->mGroups:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationGroup;

    .line 417
    .local v0, group:Landroid/app/NotificationGroup;
    invoke-virtual {v0, p1}, Landroid/app/NotificationGroup;->hasPackage(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 421
    .end local v0           #group:Landroid/app/NotificationGroup;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getNotificationGroups()[Landroid/app/NotificationGroup;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 369
    iget-object v0, p0, Lcom/android/server/ProfileManagerService;->mGroups:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/ProfileManagerService;->mGroups:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    new-array v1, v1, [Landroid/app/NotificationGroup;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/app/NotificationGroup;

    return-object v0
.end method

.method public getProfile(Landroid/os/ParcelUuid;)Landroid/app/Profile;
    .locals 2
    .parameter "profileParcelUuid"

    .prologue
    .line 278
    invoke-virtual {p1}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v0

    .line 279
    .local v0, profileUuid:Ljava/util/UUID;
    invoke-virtual {p0, v0}, Lcom/android/server/ProfileManagerService;->getProfile(Ljava/util/UUID;)Landroid/app/Profile;

    move-result-object v1

    return-object v1
.end method

.method public getProfile(Ljava/util/UUID;)Landroid/app/Profile;
    .locals 7
    .parameter "profileUuid"

    .prologue
    .line 284
    iget-object v6, p0, Lcom/android/server/ProfileManagerService;->mProfiles:Ljava/util/Map;

    invoke-interface {v6, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 285
    iget-object v6, p0, Lcom/android/server/ProfileManagerService;->mProfiles:Ljava/util/Map;

    invoke-interface {v6, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/Profile;

    .line 296
    :goto_0
    return-object v6

    .line 288
    :cond_0
    iget-object v6, p0, Lcom/android/server/ProfileManagerService;->mProfiles:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/Profile;

    .line 289
    .local v4, p:Landroid/app/Profile;
    invoke-virtual {v4}, Landroid/app/Profile;->getSecondaryUuids()[Ljava/util/UUID;

    move-result-object v0

    .local v0, arr$:[Ljava/util/UUID;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1
    if-ge v2, v3, :cond_1

    aget-object v5, v0, v2

    .line 290
    .local v5, uuid:Ljava/util/UUID;
    invoke-virtual {p1, v5}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    move-object v6, v4

    .line 291
    goto :goto_0

    .line 289
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 296
    .end local v0           #arr$:[Ljava/util/UUID;
    .end local v2           #i$:I
    .end local v3           #len$:I
    .end local v4           #p:Landroid/app/Profile;
    .end local v5           #uuid:Ljava/util/UUID;
    :cond_3
    const/4 v6, 0x0

    goto :goto_0
.end method

.method public getProfileByName(Ljava/lang/String;)Landroid/app/Profile;
    .locals 2
    .parameter "profileName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 267
    iget-object v0, p0, Lcom/android/server/ProfileManagerService;->mProfileNames:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 268
    iget-object v0, p0, Lcom/android/server/ProfileManagerService;->mProfiles:Ljava/util/Map;

    iget-object v1, p0, Lcom/android/server/ProfileManagerService;->mProfileNames:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Profile;

    .line 272
    :goto_0
    return-object v0

    .line 269
    :cond_0
    iget-object v0, p0, Lcom/android/server/ProfileManagerService;->mProfiles:Ljava/util/Map;

    invoke-static {p1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 270
    iget-object v0, p0, Lcom/android/server/ProfileManagerService;->mProfiles:Ljava/util/Map;

    invoke-static {p1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Profile;

    goto :goto_0

    .line 272
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getProfiles()[Landroid/app/Profile;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 301
    iget-object v1, p0, Lcom/android/server/ProfileManagerService;->mProfiles:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/ProfileManagerService;->mProfiles:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    new-array v2, v2, [Landroid/app/Profile;

    invoke-interface {v1, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/app/Profile;

    .line 302
    .local v0, tmpArr:[Landroid/app/Profile;
    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 303
    return-object v0
.end method

.method public notificationGroupExistsByName(Ljava/lang/String;)Z
    .locals 3
    .parameter "notificationGroupName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 359
    iget-object v2, p0, Lcom/android/server/ProfileManagerService;->mGroups:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationGroup;

    .line 360
    .local v0, group:Landroid/app/NotificationGroup;
    invoke-virtual {v0}, Landroid/app/NotificationGroup;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 361
    const/4 v2, 0x1

    .line 364
    .end local v0           #group:Landroid/app/NotificationGroup;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public profileExists(Landroid/os/ParcelUuid;)Z
    .locals 2
    .parameter "profileUuid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 344
    iget-object v0, p0, Lcom/android/server/ProfileManagerService;->mProfiles:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public profileExistsByName(Ljava/lang/String;)Z
    .locals 3
    .parameter "profileName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 349
    iget-object v2, p0, Lcom/android/server/ProfileManagerService;->mProfileNames:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

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

    check-cast v0, Ljava/util/Map$Entry;

    .line 350
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/UUID;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 351
    const/4 v2, 0x1

    .line 354
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/UUID;>;"
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public removeNotificationGroup(Landroid/app/NotificationGroup;)V
    .locals 5
    .parameter "group"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 392
    invoke-direct {p0}, Lcom/android/server/ProfileManagerService;->enforceChangePermissions()V

    .line 393
    iget-boolean v3, p0, Lcom/android/server/ProfileManagerService;->mDirty:Z

    iget-object v2, p0, Lcom/android/server/ProfileManagerService;->mGroups:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/app/NotificationGroup;->getUuid()Ljava/util/UUID;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    or-int/2addr v2, v3

    iput-boolean v2, p0, Lcom/android/server/ProfileManagerService;->mDirty:Z

    .line 396
    iget-object v2, p0, Lcom/android/server/ProfileManagerService;->mProfiles:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Profile;

    .line 397
    .local v1, profile:Landroid/app/Profile;
    invoke-virtual {p1}, Landroid/app/NotificationGroup;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Profile;->removeProfileGroup(Ljava/util/UUID;)V

    goto :goto_1

    .line 393
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #profile:Landroid/app/Profile;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 399
    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_1
    invoke-direct {p0}, Lcom/android/server/ProfileManagerService;->persistIfDirty()V

    .line 400
    return-void
.end method

.method public removeProfile(Landroid/app/Profile;)Z
    .locals 3
    .parameter "profile"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 313
    invoke-direct {p0}, Lcom/android/server/ProfileManagerService;->enforceChangePermissions()V

    .line 314
    iget-object v1, p0, Lcom/android/server/ProfileManagerService;->mProfileNames:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/app/Profile;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/ProfileManagerService;->mProfiles:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/app/Profile;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 315
    iput-boolean v0, p0, Lcom/android/server/ProfileManagerService;->mDirty:Z

    .line 316
    invoke-direct {p0}, Lcom/android/server/ProfileManagerService;->persistIfDirty()V

    .line 319
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public resetAll()V
    .locals 1

    .prologue
    .line 143
    invoke-direct {p0}, Lcom/android/server/ProfileManagerService;->enforceChangePermissions()V

    .line 144
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/ProfileManagerService;->initialize(Z)V

    .line 145
    return-void
.end method

.method public setActiveProfile(Landroid/os/ParcelUuid;)Z
    .locals 4
    .parameter "profileParcelUuid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 162
    invoke-virtual {p1}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v0

    .line 163
    .local v0, profileUuid:Ljava/util/UUID;
    iget-object v1, p0, Lcom/android/server/ProfileManagerService;->mProfiles:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 165
    iget-object v1, p0, Lcom/android/server/ProfileManagerService;->mProfiles:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Profile;

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/android/server/ProfileManagerService;->setActiveProfile(Landroid/app/Profile;Z)Z

    move-result v1

    .line 168
    :goto_0
    return v1

    .line 167
    :cond_0
    const-string v1, "ProfileService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot set active profile to: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " - does not exist."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setActiveProfileByName(Ljava/lang/String;)Z
    .locals 3
    .parameter "profileName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 150
    iget-object v0, p0, Lcom/android/server/ProfileManagerService;->mProfileNames:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/android/server/ProfileManagerService;->mProfiles:Ljava/util/Map;

    iget-object v1, p0, Lcom/android/server/ProfileManagerService;->mProfileNames:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Profile;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/server/ProfileManagerService;->setActiveProfile(Landroid/app/Profile;Z)Z

    move-result v0

    .line 156
    :goto_0
    return v0

    .line 155
    :cond_0
    const-string v0, "ProfileService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to find profile to set active, based on string: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateNotificationGroup(Landroid/app/NotificationGroup;)V
    .locals 3
    .parameter "group"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 404
    invoke-direct {p0}, Lcom/android/server/ProfileManagerService;->enforceChangePermissions()V

    .line 405
    iget-object v1, p0, Lcom/android/server/ProfileManagerService;->mGroups:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/app/NotificationGroup;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationGroup;

    .line 406
    .local v0, old:Landroid/app/NotificationGroup;
    if-eqz v0, :cond_0

    .line 407
    iget-object v1, p0, Lcom/android/server/ProfileManagerService;->mGroups:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/app/NotificationGroup;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 410
    invoke-direct {p0}, Lcom/android/server/ProfileManagerService;->persistIfDirty()V

    .line 412
    :cond_0
    return-void
.end method

.method public updateProfile(Landroid/app/Profile;)V
    .locals 4
    .parameter "profile"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 325
    invoke-direct {p0}, Lcom/android/server/ProfileManagerService;->enforceChangePermissions()V

    .line 326
    iget-object v1, p0, Lcom/android/server/ProfileManagerService;->mProfiles:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/app/Profile;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Profile;

    .line 327
    .local v0, old:Landroid/app/Profile;
    if-eqz v0, :cond_0

    .line 328
    iget-object v1, p0, Lcom/android/server/ProfileManagerService;->mProfileNames:Ljava/util/Map;

    invoke-virtual {v0}, Landroid/app/Profile;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    iget-object v1, p0, Lcom/android/server/ProfileManagerService;->mProfileNames:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/app/Profile;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/app/Profile;->getUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    iget-object v1, p0, Lcom/android/server/ProfileManagerService;->mProfiles:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/app/Profile;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    invoke-direct {p0}, Lcom/android/server/ProfileManagerService;->persistIfDirty()V

    .line 336
    iget-object v1, p0, Lcom/android/server/ProfileManagerService;->mActiveProfile:Landroid/app/Profile;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/ProfileManagerService;->mActiveProfile:Landroid/app/Profile;

    invoke-virtual {v1}, Landroid/app/Profile;->getUuid()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {p1}, Landroid/app/Profile;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 337
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Lcom/android/server/ProfileManagerService;->setActiveProfile(Landroid/app/Profile;Z)Z

    .line 340
    :cond_0
    return-void
.end method

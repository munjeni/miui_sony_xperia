.class public Lcom/sonyericsson/customizedsettings/CustomizedSettingsService;
.super Landroid/app/Service;
.source "CustomizedSettingsService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/customizedsettings/CustomizedSettingsService$1;,
        Lcom/sonyericsson/customizedsettings/CustomizedSettingsService$ReadDefaultValueTask;,
        Lcom/sonyericsson/customizedsettings/CustomizedSettingsService$Setting_Provider;
    }
.end annotation


# static fields
.field private static final ATTR_KEY:Ljava/lang/String; = "key"

.field private static final ATTR_VERSION:Ljava/lang/String; = "version"

.field private static final BACKUP:Ljava/lang/String; = "com.sonyericsson.settings.BACKUP"

.field public static final DEBUG:Z = false

.field private static final DEFAULT_SETTINGS_VERSION:I = 0x0

.field private static final KEY_SETTINGS_NAME:Ljava/lang/String; = "name"

.field private static final KEY_SETTINGS_VALUE:Ljava/lang/String; = "value"

.field public static final TAG:Ljava/lang/String; = "CustomizedSettings"

.field private static final TAG_SETTING:Ljava/lang/String; = "setting"

.field private static final TAG_SETTINGS:Ljava/lang/String; = "settings"

.field private static URI_STRING:Ljava/lang/String; = null

.field private static final WIFI_ON:Ljava/lang/String; = "wifi_on"

.field private static sSecureValues:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation
.end field

.field private static sSystemValues:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 76
    const-string v0, "content://com.sonyericsson.provider.customization/settings/com.android.settings"

    sput-object v0, Lcom/sonyericsson/customizedsettings/CustomizedSettingsService;->URI_STRING:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 103
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/sonyericsson/customizedsettings/CustomizedSettingsService;->URI_STRING:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sonyericsson/customizedsettings/CustomizedSettingsService;Ljava/lang/String;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/sonyericsson/customizedsettings/CustomizedSettingsService;->getCustomizationVersion(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$200()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/sonyericsson/customizedsettings/CustomizedSettingsService;->sSystemValues:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$202(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .parameter "x0"

    .prologue
    .line 50
    sput-object p0, Lcom/sonyericsson/customizedsettings/CustomizedSettingsService;->sSystemValues:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$300()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/sonyericsson/customizedsettings/CustomizedSettingsService;->sSecureValues:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$302(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .parameter "x0"

    .prologue
    .line 50
    sput-object p0, Lcom/sonyericsson/customizedsettings/CustomizedSettingsService;->sSecureValues:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$400(Lcom/sonyericsson/customizedsettings/CustomizedSettingsService;Ljava/util/ArrayList;Lcom/sonyericsson/customizedsettings/CustomizedSettingsService$Setting_Provider;Landroid/content/ContentResolver;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 50
    invoke-direct {p0, p1, p2, p3}, Lcom/sonyericsson/customizedsettings/CustomizedSettingsService;->setValuesIntoSystem(Ljava/util/ArrayList;Lcom/sonyericsson/customizedsettings/CustomizedSettingsService$Setting_Provider;Landroid/content/ContentResolver;)Z

    move-result v0

    return v0
.end method

.method private static castArrayToArrayOfContentValues(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .parameter "obj"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation

    .prologue
    .line 458
    return-object p0
.end method

.method static combineSettings([Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 8
    .parameter "settingsArray"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/ArrayList;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation

    .prologue
    .line 435
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 436
    .local v2, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 437
    .local v6, usedNames:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    array-length v7, p0

    add-int/lit8 v0, v7, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_2

    .line 438
    aget-object v7, p0, v0

    invoke-static {v7}, Lcom/sonyericsson/customizedsettings/CustomizedSettingsService;->castArrayToArrayOfContentValues(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v3

    .line 439
    .local v3, settings:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    if-eqz v3, :cond_1

    .line 440
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v1, v7, -0x1

    .local v1, j:I
    :goto_1
    if-ltz v1, :cond_1

    .line 441
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ContentValues;

    .line 442
    .local v5, thisSetting:Landroid/content/ContentValues;
    const-string v7, "name"

    invoke-virtual {v5, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 443
    .local v4, thisName:Ljava/lang/String;
    invoke-virtual {v6, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 444
    const/4 v7, 0x0

    invoke-virtual {v2, v7, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 445
    invoke-virtual {v6, v4, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 440
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 437
    .end local v1           #j:I
    .end local v4           #thisName:Ljava/lang/String;
    .end local v5           #thisSetting:Landroid/content/ContentValues;
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 450
    .end local v3           #settings:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    :cond_2
    return-object v2
.end method

.method private getCustomizationVersion(Ljava/lang/String;)I
    .locals 5
    .parameter "url"

    .prologue
    .line 467
    const/4 v2, 0x0

    .line 468
    .local v2, version:I
    const/4 v1, 0x0

    .line 470
    .local v1, stream:Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p0}, Lcom/sonyericsson/customizedsettings/CustomizedSettingsService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    .line 471
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    .line 472
    .local v0, parser:Lorg/xmlpull/v1/XmlPullParser;
    const/4 v3, 0x0

    invoke-interface {v0, v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 473
    invoke-direct {p0, v0}, Lcom/sonyericsson/customizedsettings/CustomizedSettingsService;->parse(Lorg/xmlpull/v1/XmlPullParser;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 479
    invoke-static {v1}, Lcom/sonyericsson/customizedsettings/Util;->close(Ljava/io/InputStream;)V

    .line 481
    .end local v0           #parser:Lorg/xmlpull/v1/XmlPullParser;
    :goto_0
    return v2

    .line 474
    :catch_0
    move-exception v3

    .line 479
    invoke-static {v1}, Lcom/sonyericsson/customizedsettings/Util;->close(Ljava/io/InputStream;)V

    goto :goto_0

    .line 476
    :catch_1
    move-exception v3

    .line 479
    invoke-static {v1}, Lcom/sonyericsson/customizedsettings/Util;->close(Ljava/io/InputStream;)V

    goto :goto_0

    :catchall_0
    move-exception v3

    invoke-static {v1}, Lcom/sonyericsson/customizedsettings/Util;->close(Ljava/io/InputStream;)V

    throw v3
.end method

.method private parse(Lorg/xmlpull/v1/XmlPullParser;)I
    .locals 4
    .parameter "parser"

    .prologue
    .line 490
    const/4 v1, 0x0

    .line 492
    .local v1, version:I
    :cond_0
    :try_start_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    .line 493
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    const-string v2, "settings"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 495
    const/4 v2, 0x0

    const-string v3, "version"

    invoke-interface {p1, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sonyericsson/customizedsettings/Util;->toInteger(Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 504
    :cond_1
    :goto_0
    return v1

    .line 499
    :catch_0
    move-exception v0

    .line 500
    .local v0, e:Lorg/xmlpull/v1/XmlPullParserException;
    const-string v2, "CustomizedSettings"

    const-string v3, "Parser Exception reading Default Settings"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 501
    .end local v0           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :catch_1
    move-exception v0

    .line 502
    .local v0, e:Ljava/io/IOException;
    const-string v2, "CustomizedSettings"

    const-string v3, "IOException reading Default Settings"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static parseSettingsFromXml(Ljava/util/ArrayList;ILandroid/content/Context;)Ljava/util/ArrayList;
    .locals 8
    .parameter
    .parameter "resource"
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;I",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation

    .prologue
    .line 328
    .local p0, settingsToRead:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 329
    .local v5, values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    .line 331
    .local v1, parser:Landroid/content/res/XmlResourceParser;
    if-nez v1, :cond_0

    .line 375
    :goto_0
    return-object v5

    .line 335
    :cond_0
    const/4 v2, 0x0

    .line 336
    .local v2, thisName:Ljava/lang/String;
    const/4 v4, 0x0

    .line 341
    .local v4, thisValue:Ljava/lang/String;
    :cond_1
    :goto_1
    :try_start_0
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v6

    const/4 v7, 0x1

    if-eq v6, v7, :cond_2

    .line 349
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_1

    const-string v6, "setting"

    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 351
    const/4 v6, 0x0

    const-string v7, "key"

    invoke-interface {v1, v6, v7}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 353
    if-eqz v2, :cond_1

    .line 354
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->nextText()Ljava/lang/String;

    move-result-object v4

    .line 356
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 357
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 358
    .local v3, thisSetting:Landroid/content/ContentValues;
    const-string v6, "name"

    invoke-virtual {v3, v6, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    const-string v6, "value"

    invoke-virtual {v3, v6, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 367
    .end local v3           #thisSetting:Landroid/content/ContentValues;
    :catch_0
    move-exception v0

    .line 368
    .local v0, e:Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_1
    const-string v6, "CustomizedSettings"

    const-string v7, "Parser Exception reading Default Settings"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 372
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_0

    .end local v0           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :cond_2
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_0

    .line 369
    :catch_1
    move-exception v0

    .line 370
    .local v0, e:Ljava/io/IOException;
    :try_start_2
    const-string v6, "CustomizedSettings"

    const-string v7, "IOException reading Default Settings"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 372
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_0

    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v6

    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    throw v6
.end method

.method public static parseSettingsWithUri(Ljava/util/ArrayList;Ljava/lang/String;Landroid/content/ContentResolver;)Ljava/util/ArrayList;
    .locals 15
    .parameter
    .parameter "uriAddres"
    .parameter "cr"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Landroid/content/ContentResolver;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 272
    .local p0, settingsToRead:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v14, 0x0

    .line 273
    .local v14, values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    const/4 v10, 0x0

    .line 274
    .local v10, thisName:Ljava/lang/String;
    const/4 v12, 0x0

    .line 276
    .local v12, thisValue:Ljava/lang/String;
    if-eqz p1, :cond_2

    .line 277
    new-instance v14, Ljava/util/ArrayList;

    .end local v14           #values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 278
    .restart local v14       #values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    invoke-static/range {p1 .. p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 279
    .local v1, uri:Landroid/net/Uri;
    const/4 v6, 0x0

    .line 281
    .local v6, cursor:Landroid/database/Cursor;
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p2

    :try_start_0
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 283
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 284
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 285
    const-string v0, "name"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 286
    .local v8, nameIndex:I
    const-string v0, "value"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .line 287
    .local v13, valueIndex:I
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v9

    .line 288
    .local v9, nbrOfItems:I
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    if-ge v7, v9, :cond_1

    .line 289
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 291
    invoke-virtual {p0, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 292
    invoke-interface {v6, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 294
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 295
    .local v11, thisSetting:Landroid/content/ContentValues;
    const-string v0, "name"

    invoke-virtual {v11, v0, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    const-string v0, "value"

    invoke-virtual {v11, v0, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    invoke-virtual {v14, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 308
    .end local v11           #thisSetting:Landroid/content/ContentValues;
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 288
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 312
    .end local v7           #i:I
    .end local v8           #nameIndex:I
    .end local v9           #nbrOfItems:I
    .end local v13           #valueIndex:I
    :cond_1
    if-eqz v6, :cond_2

    .line 313
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 317
    .end local v1           #uri:Landroid/net/Uri;
    .end local v6           #cursor:Landroid/database/Cursor;
    :cond_2
    return-object v14

    .line 312
    .restart local v1       #uri:Landroid/net/Uri;
    .restart local v6       #cursor:Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    .line 313
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method public static setCustomInputArrays(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentValues;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentValues;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 426
    .local p0, systemValues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .local p1, secureValues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    sput-object p0, Lcom/sonyericsson/customizedsettings/CustomizedSettingsService;->sSystemValues:Ljava/util/ArrayList;

    .line 427
    sput-object p1, Lcom/sonyericsson/customizedsettings/CustomizedSettingsService;->sSecureValues:Ljava/util/ArrayList;

    .line 428
    return-void
.end method

.method private setValuesIntoSystem(Ljava/util/ArrayList;Lcom/sonyericsson/customizedsettings/CustomizedSettingsService$Setting_Provider;Landroid/content/ContentResolver;)Z
    .locals 6
    .parameter
    .parameter "provider"
    .parameter "resolver"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentValues;",
            ">;",
            "Lcom/sonyericsson/customizedsettings/CustomizedSettingsService$Setting_Provider;",
            "Landroid/content/ContentResolver;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 383
    .local p1, defaultValues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 384
    .local v1, nElements:I
    const/4 v3, 0x1

    .line 385
    .local v3, valueIsSet:Z
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    if-eqz v3, :cond_0

    .line 386
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ContentValues;

    .line 388
    .local v2, thisSetting:Landroid/content/ContentValues;
    sget-object v4, Lcom/sonyericsson/customizedsettings/CustomizedSettingsService$1;->$SwitchMap$com$sonyericsson$customizedsettings$CustomizedSettingsService$Setting_Provider:[I

    invoke-virtual {p2}, Lcom/sonyericsson/customizedsettings/CustomizedSettingsService$Setting_Provider;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 411
    const/4 v3, 0x0

    .line 385
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 390
    :pswitch_0
    const-string v4, "name"

    invoke-virtual {v2, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "value"

    invoke-virtual {v2, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {p3, v4, v5}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    .line 401
    goto :goto_1

    .line 403
    :pswitch_1
    const-string v4, "name"

    invoke-virtual {v2, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "value"

    invoke-virtual {v2, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {p3, v4, v5}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    .line 409
    goto :goto_1

    .line 415
    .end local v2           #thisSetting:Landroid/content/ContentValues;
    :cond_0
    return v3

    .line 388
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 96
    const/4 v0, 0x0

    return-object v0
.end method

.method public final onStartCommand(Landroid/content/Intent;II)I
    .locals 3
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 85
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    .line 86
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 87
    .local v0, action:Ljava/lang/String;
    const-string v2, "com.sonyericsson.customizedsettings.service.BOOTUP"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 88
    new-instance v1, Lcom/sonyericsson/customizedsettings/CustomizedSettingsService$ReadDefaultValueTask;

    invoke-direct {v1, p0, p0}, Lcom/sonyericsson/customizedsettings/CustomizedSettingsService$ReadDefaultValueTask;-><init>(Lcom/sonyericsson/customizedsettings/CustomizedSettingsService;Landroid/content/Context;)V

    .line 89
    .local v1, readTask:Lcom/sonyericsson/customizedsettings/CustomizedSettingsService$ReadDefaultValueTask;
    const/4 v2, 0x0

    check-cast v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/customizedsettings/CustomizedSettingsService$ReadDefaultValueTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 91
    .end local v1           #readTask:Lcom/sonyericsson/customizedsettings/CustomizedSettingsService$ReadDefaultValueTask;
    :cond_0
    const/4 v2, 0x2

    return v2
.end method

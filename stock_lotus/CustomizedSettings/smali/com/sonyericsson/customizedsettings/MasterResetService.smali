.class public Lcom/sonyericsson/customizedsettings/MasterResetService;
.super Landroid/app/Service;
.source "MasterResetService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/customizedsettings/MasterResetService$1;,
        Lcom/sonyericsson/customizedsettings/MasterResetService$BackupRingtoneValueTask;,
        Lcom/sonyericsson/customizedsettings/MasterResetService$BackupDefaultValueTask;,
        Lcom/sonyericsson/customizedsettings/MasterResetService$RestoreDefaultValueTask;,
        Lcom/sonyericsson/customizedsettings/MasterResetService$DatabaseHelper;,
        Lcom/sonyericsson/customizedsettings/MasterResetService$Settings_Provider;
    }
.end annotation


# static fields
.field private static final DATABASE:Ljava/lang/String; = "DefaultValue.db"

.field public static final DEBUG:Z = false

.field private static final RESTORE_DEFAULT_APN_URI:Landroid/net/Uri; = null

.field private static final RINGTONE_TABLE:Ljava/lang/String; = "DefaultRingtoneValue"

.field private static final SECURE_TABLE:Ljava/lang/String; = "DefaultSecureValue"

.field private static final SELECTED_QUESTION:Ljava/lang/String; = "lockscreen.selectedquestion"

.field private static final SYSTEM_TABLE:Ljava/lang/String; = "DefaultSystemValue"

.field public static final TAG:Ljava/lang/String; = "Master Reset"

.field public static final TIME_UNTIL_REBOOT:I = 0x2710

.field private static final WORK_DB_VERSION:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 92
    const-string v0, "content://telephony/carriers/restore"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/customizedsettings/MasterResetService;->RESTORE_DEFAULT_APN_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 648
    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/customizedsettings/MasterResetService;Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/sonyericsson/customizedsettings/MasterResetService;->isDefaultValuesBackuped(Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/sonyericsson/customizedsettings/MasterResetService;Landroid/database/Cursor;Lcom/sonyericsson/customizedsettings/MasterResetService$Settings_Provider;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 68
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/customizedsettings/MasterResetService;->writeDefaultValuesToSettings(Landroid/database/Cursor;Lcom/sonyericsson/customizedsettings/MasterResetService$Settings_Provider;)V

    return-void
.end method

.method static synthetic access$200()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 68
    sget-object v0, Lcom/sonyericsson/customizedsettings/MasterResetService;->RESTORE_DEFAULT_APN_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sonyericsson/customizedsettings/MasterResetService;I)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/sonyericsson/customizedsettings/MasterResetService;->loadSettingNameList(I)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/sonyericsson/customizedsettings/MasterResetService;Ljava/util/ArrayList;Lcom/sonyericsson/customizedsettings/MasterResetService$Settings_Provider;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 68
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/customizedsettings/MasterResetService;->readDefaultValuesFromSettings(Ljava/util/ArrayList;Lcom/sonyericsson/customizedsettings/MasterResetService$Settings_Provider;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/sonyericsson/customizedsettings/MasterResetService;Landroid/database/sqlite/SQLiteDatabase;Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 68
    invoke-direct {p0, p1, p2, p3}, Lcom/sonyericsson/customizedsettings/MasterResetService;->writeDefaultValuesDatabase(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/ArrayList;Ljava/lang/String;)V

    return-void
.end method

.method private getIsMediaScannerDoneWithSettings(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 730
    const/4 v0, 0x1

    .line 731
    .local v0, isDone:Z
    const-string v1, "notification_sound"

    invoke-direct {p0, p1, v1}, Lcom/sonyericsson/customizedsettings/MasterResetService;->isSettingValueNotExists(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 732
    const/4 v0, 0x0

    .line 734
    :cond_0
    if-eqz v0, :cond_1

    const-string v1, "ringtone"

    invoke-direct {p0, p1, v1}, Lcom/sonyericsson/customizedsettings/MasterResetService;->isSettingValueNotExists(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 735
    const/4 v0, 0x0

    .line 737
    :cond_1
    if-eqz v0, :cond_2

    const-string v1, "alarm_alert"

    invoke-direct {p0, p1, v1}, Lcom/sonyericsson/customizedsettings/MasterResetService;->isSettingValueNotExists(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 738
    const/4 v0, 0x0

    .line 743
    :cond_2
    return v0
.end method

.method private isDefaultValuesBackuped(Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 14
    .parameter "db"

    .prologue
    const/4 v13, 0x0

    .line 348
    const/4 v9, 0x0

    .line 349
    .local v9, cSystem:Landroid/database/Cursor;
    const/4 v8, 0x0

    .line 351
    .local v8, cSecure:Landroid/database/Cursor;
    :try_start_0
    const-string v1, "DefaultSystemValue"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 352
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v12

    .line 353
    .local v12, nValuesSystem:I
    const-string v1, "DefaultSecureValue"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 354
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v11

    .line 355
    .local v11, nValuesSecure:I
    if-lez v12, :cond_2

    if-lez v11, :cond_2

    const/4 v0, 0x1

    .line 359
    :goto_0
    if-eqz v9, :cond_0

    .line 360
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 362
    :cond_0
    if-eqz v8, :cond_1

    .line 363
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .end local v11           #nValuesSecure:I
    .end local v12           #nValuesSystem:I
    :cond_1
    :goto_1
    return v0

    .restart local v11       #nValuesSecure:I
    .restart local v12       #nValuesSystem:I
    :cond_2
    move v0, v13

    .line 355
    goto :goto_0

    .line 356
    .end local v11           #nValuesSecure:I
    .end local v12           #nValuesSystem:I
    :catch_0
    move-exception v10

    .line 359
    .local v10, e:Landroid/database/sqlite/SQLiteException;
    if-eqz v9, :cond_3

    .line 360
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 362
    :cond_3
    if-eqz v8, :cond_4

    .line 363
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_4
    move v0, v13

    goto :goto_1

    .line 359
    .end local v10           #e:Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v0

    if-eqz v9, :cond_5

    .line 360
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 362
    :cond_5
    if-eqz v8, :cond_6

    .line 363
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v0
.end method

.method private isSettingValueNotExists(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3
    .parameter "context"
    .parameter "settingName"

    .prologue
    const/4 v1, 0x1

    .line 708
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, p2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 711
    .local v0, existingSettingValue:Ljava/lang/String;
    if-nez v0, :cond_1

    .line 716
    :cond_0
    :goto_0
    return v1

    .line 713
    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 716
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private loadSettingNameList(I)Ljava/util/ArrayList;
    .locals 5
    .parameter "resource"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 188
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 189
    .local v2, settingnameList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/sonyericsson/customizedsettings/MasterResetService;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    .line 191
    .local v0, parser:Landroid/content/res/XmlResourceParser;
    if-nez v0, :cond_0

    .line 225
    :goto_0
    return-object v2

    .line 201
    :cond_0
    :goto_1
    :try_start_0
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    .line 202
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    const-string v3, "setting"

    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 204
    const/4 v3, 0x0

    const-string v4, "name"

    invoke-interface {v0, v3, v4}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 205
    .local v1, settingName:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 206
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 210
    .end local v1           #settingName:Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 223
    :cond_1
    :goto_2
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_0

    .line 216
    :catch_1
    move-exception v3

    goto :goto_2
.end method

.method private readDefaultValuesFromSettings(Ljava/util/ArrayList;Lcom/sonyericsson/customizedsettings/MasterResetService$Settings_Provider;)Ljava/util/ArrayList;
    .locals 8
    .parameter
    .parameter "provider"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/sonyericsson/customizedsettings/MasterResetService$Settings_Provider;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation

    .prologue
    .line 303
    .local p1, settingNameList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez p1, :cond_1

    .line 304
    const/4 v3, 0x0

    .line 337
    :cond_0
    return-object v3

    .line 307
    :cond_1
    invoke-virtual {p0}, Lcom/sonyericsson/customizedsettings/MasterResetService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 308
    .local v0, cr:Landroid/content/ContentResolver;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 310
    .local v3, settingItemList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 312
    .local v4, settingName:Ljava/lang/String;
    const/4 v5, 0x0

    .line 313
    .local v5, settingValue:Ljava/lang/String;
    :try_start_0
    sget-object v6, Lcom/sonyericsson/customizedsettings/MasterResetService$1;->$SwitchMap$com$sonyericsson$customizedsettings$MasterResetService$Settings_Provider:[I

    invoke-virtual {p2}, Lcom/sonyericsson/customizedsettings/MasterResetService$Settings_Provider;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 322
    :goto_1
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 323
    .local v2, settingItem:Landroid/content/ContentValues;
    const-string v6, "name"

    invoke-virtual {v2, v6, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    const-string v6, "value"

    invoke-virtual {v2, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 326
    .end local v2           #settingItem:Landroid/content/ContentValues;
    :catch_0
    move-exception v6

    goto :goto_0

    .line 315
    :pswitch_0
    invoke-static {v0, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 316
    goto :goto_1

    .line 318
    :pswitch_1
    invoke-static {v0, v4}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v5

    goto :goto_1

    .line 330
    :catch_1
    move-exception v6

    goto :goto_0

    .line 313
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private writeDefaultValuesDatabase(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 3
    .parameter "db"
    .parameter
    .parameter "tableName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentValues;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 280
    .local p2, settingList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    :try_start_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ContentValues;

    .line 286
    .local v1, settingItem:Landroid/content/ContentValues;
    const-string v2, "name"

    invoke-virtual {p1, p3, v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 288
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #settingItem:Landroid/content/ContentValues;
    :catch_0
    move-exception v2

    .line 293
    :cond_0
    return-void
.end method

.method private writeDefaultValuesToSettings(Landroid/database/Cursor;Lcom/sonyericsson/customizedsettings/MasterResetService$Settings_Provider;)V
    .locals 6
    .parameter "c"
    .parameter "provider"

    .prologue
    const/4 v5, 0x0

    .line 238
    if-nez p1, :cond_1

    .line 239
    const-string v2, "Master Reset"

    const-string v3, "cursor is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    :cond_0
    return-void

    .line 243
    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 244
    invoke-virtual {p0}, Lcom/sonyericsson/customizedsettings/MasterResetService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 245
    .local v0, cr:Landroid/content/ContentResolver;
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_0

    .line 246
    sget-object v2, Lcom/sonyericsson/customizedsettings/MasterResetService$1;->$SwitchMap$com$sonyericsson$customizedsettings$MasterResetService$Settings_Provider:[I

    invoke-virtual {p2}, Lcom/sonyericsson/customizedsettings/MasterResetService$Settings_Provider;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 269
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 249
    :pswitch_0
    const/4 v2, 0x0

    :try_start_0
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 250
    :catch_0
    move-exception v1

    .line 251
    .local v1, e:Ljava/lang/Exception;
    const-string v2, "Master Reset"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Fail to reset "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 262
    .end local v1           #e:Ljava/lang/Exception;
    :pswitch_1
    const/4 v2, 0x0

    :try_start_1
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 263
    :catch_1
    move-exception v1

    .line 264
    .restart local v1       #e:Ljava/lang/Exception;
    const-string v2, "Master Reset"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Fail to reset "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 246
    nop

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
    .line 370
    const/4 v0, 0x0

    return-object v0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 6
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    const/4 v4, 0x0

    .line 156
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    .line 158
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 163
    .local v0, action:Ljava/lang/String;
    const-string v5, "com.sonyericsson.settings.service.MASTERRESET"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 164
    new-instance v2, Lcom/sonyericsson/customizedsettings/MasterResetService$RestoreDefaultValueTask;

    invoke-direct {v2, p0}, Lcom/sonyericsson/customizedsettings/MasterResetService$RestoreDefaultValueTask;-><init>(Lcom/sonyericsson/customizedsettings/MasterResetService;)V

    .line 165
    .local v2, restoreTask:Lcom/sonyericsson/customizedsettings/MasterResetService$RestoreDefaultValueTask;
    check-cast v4, [Ljava/lang/Void;

    invoke-virtual {v2, v4}, Lcom/sonyericsson/customizedsettings/MasterResetService$RestoreDefaultValueTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 178
    .end local v2           #restoreTask:Lcom/sonyericsson/customizedsettings/MasterResetService$RestoreDefaultValueTask;
    :cond_0
    :goto_0
    const/4 v4, 0x2

    return v4

    .line 166
    :cond_1
    const-string v5, "com.sonyericsson.settings.service.BACKUP"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 167
    new-instance v1, Lcom/sonyericsson/customizedsettings/MasterResetService$BackupDefaultValueTask;

    invoke-direct {v1, p0}, Lcom/sonyericsson/customizedsettings/MasterResetService$BackupDefaultValueTask;-><init>(Lcom/sonyericsson/customizedsettings/MasterResetService;)V

    .line 168
    .local v1, backupTask:Lcom/sonyericsson/customizedsettings/MasterResetService$BackupDefaultValueTask;
    check-cast v4, [Ljava/lang/Void;

    invoke-virtual {v1, v4}, Lcom/sonyericsson/customizedsettings/MasterResetService$BackupDefaultValueTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 169
    .end local v1           #backupTask:Lcom/sonyericsson/customizedsettings/MasterResetService$BackupDefaultValueTask;
    :cond_2
    const-string v5, "com.sonyericsson.settings.service.BACKUP_RINGTONE"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-direct {p0, p0}, Lcom/sonyericsson/customizedsettings/MasterResetService;->getIsMediaScannerDoneWithSettings(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 171
    new-instance v3, Lcom/sonyericsson/customizedsettings/MasterResetService$BackupRingtoneValueTask;

    invoke-direct {v3, p0}, Lcom/sonyericsson/customizedsettings/MasterResetService$BackupRingtoneValueTask;-><init>(Lcom/sonyericsson/customizedsettings/MasterResetService;)V

    .line 172
    .local v3, ringtoneTask:Lcom/sonyericsson/customizedsettings/MasterResetService$BackupRingtoneValueTask;
    check-cast v4, [Ljava/lang/Void;

    invoke-virtual {v3, v4}, Lcom/sonyericsson/customizedsettings/MasterResetService$BackupRingtoneValueTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

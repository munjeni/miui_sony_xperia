.class Lcom/sonyericsson/customizedsettings/MasterResetService$RestoreDefaultValueTask;
.super Landroid/os/AsyncTask;
.source "MasterResetService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/customizedsettings/MasterResetService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RestoreDefaultValueTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private mDatabaseHelper:Lcom/sonyericsson/customizedsettings/MasterResetService$DatabaseHelper;

.field final synthetic this$0:Lcom/sonyericsson/customizedsettings/MasterResetService;


# direct methods
.method constructor <init>(Lcom/sonyericsson/customizedsettings/MasterResetService;)V
    .locals 0
    .parameter

    .prologue
    .line 377
    iput-object p1, p0, Lcom/sonyericsson/customizedsettings/MasterResetService$RestoreDefaultValueTask;->this$0:Lcom/sonyericsson/customizedsettings/MasterResetService;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method private getCursorFromDatabase(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9
    .parameter "tableName"

    .prologue
    const/4 v8, 0x0

    .line 501
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/customizedsettings/MasterResetService$RestoreDefaultValueTask;->mDatabaseHelper:Lcom/sonyericsson/customizedsettings/MasterResetService$DatabaseHelper;

    invoke-virtual {v1}, Lcom/sonyericsson/customizedsettings/MasterResetService$DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 502
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v3, "name"

    aput-object v3, v2, v1

    const/4 v1, 0x1

    const-string v3, "value"

    aput-object v3, v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 511
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    :goto_0
    return-object v1

    .line 506
    :catch_0
    move-exception v1

    move-object v1, v8

    .line 511
    goto :goto_0
.end method

.method private loadPropertiesNameList(I)Ljava/util/Map;
    .locals 8
    .parameter "resource"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 537
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 538
    .local v3, propertyFiles:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    const/4 v1, 0x0

    .line 545
    .local v1, parser:Landroid/content/res/XmlResourceParser;
    :try_start_0
    iget-object v5, p0, Lcom/sonyericsson/customizedsettings/MasterResetService$RestoreDefaultValueTask;->this$0:Lcom/sonyericsson/customizedsettings/MasterResetService;

    invoke-virtual {v5}, Lcom/sonyericsson/customizedsettings/MasterResetService;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    .line 546
    :cond_0
    :goto_0
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_5

    .line 547
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    const-string v5, "setting"

    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 549
    const/4 v5, 0x0

    const-string v6, "name"

    invoke-interface {v1, v5, v6}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 550
    .local v4, settingName:Ljava/lang/String;
    const/4 v5, 0x0

    const-string v6, "file"

    invoke-interface {v1, v5, v6}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 552
    .local v0, fileName:Ljava/lang/String;
    if-eqz v4, :cond_1

    if-nez v0, :cond_3

    .line 553
    :cond_1
    new-instance v5, Ljava/util/InvalidPropertiesFormatException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid property: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " file: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/util/InvalidPropertiesFormatException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 563
    .end local v0           #fileName:Ljava/lang/String;
    .end local v4           #settingName:Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 574
    if-eqz v1, :cond_2

    .line 575
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    .line 578
    :cond_2
    :goto_1
    return-object v3

    .line 555
    .restart local v0       #fileName:Ljava/lang/String;
    .restart local v4       #settingName:Ljava/lang/String;
    :cond_3
    :try_start_1
    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 556
    .local v2, properties:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-nez v2, :cond_4

    .line 557
    new-instance v2, Ljava/util/ArrayList;

    .end local v2           #properties:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 558
    .restart local v2       #properties:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v3, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 560
    :cond_4
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 568
    .end local v0           #fileName:Ljava/lang/String;
    .end local v2           #properties:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v4           #settingName:Ljava/lang/String;
    :catch_1
    move-exception v5

    .line 574
    if-eqz v1, :cond_2

    .line 575
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_1

    .line 574
    :cond_5
    if-eqz v1, :cond_2

    .line 575
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_1

    .line 574
    :catchall_0
    move-exception v5

    if-eqz v1, :cond_6

    .line 575
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_6
    throw v5
.end method

.method private resetPatternScreenLockSettings()V
    .locals 3

    .prologue
    .line 524
    iget-object v0, p0, Lcom/sonyericsson/customizedsettings/MasterResetService$RestoreDefaultValueTask;->this$0:Lcom/sonyericsson/customizedsettings/MasterResetService;

    invoke-virtual {v0}, Lcom/sonyericsson/customizedsettings/MasterResetService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lockscreen.selectedquestion"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 525
    return-void
.end method

.method private restore()V
    .locals 9

    .prologue
    .line 399
    new-instance v4, Lcom/sonyericsson/customizedsettings/MasterResetService$DatabaseHelper;

    iget-object v5, p0, Lcom/sonyericsson/customizedsettings/MasterResetService$RestoreDefaultValueTask;->this$0:Lcom/sonyericsson/customizedsettings/MasterResetService;

    const-string v6, "DefaultValue.db"

    const/4 v7, 0x0

    const/4 v8, 0x2

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/sonyericsson/customizedsettings/MasterResetService$DatabaseHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    iput-object v4, p0, Lcom/sonyericsson/customizedsettings/MasterResetService$RestoreDefaultValueTask;->mDatabaseHelper:Lcom/sonyericsson/customizedsettings/MasterResetService$DatabaseHelper;

    .line 401
    iget-object v4, p0, Lcom/sonyericsson/customizedsettings/MasterResetService$RestoreDefaultValueTask;->mDatabaseHelper:Lcom/sonyericsson/customizedsettings/MasterResetService$DatabaseHelper;

    if-nez v4, :cond_0

    .line 441
    :goto_0
    return-void

    .line 406
    :cond_0
    :try_start_0
    iget-object v4, p0, Lcom/sonyericsson/customizedsettings/MasterResetService$RestoreDefaultValueTask;->mDatabaseHelper:Lcom/sonyericsson/customizedsettings/MasterResetService$DatabaseHelper;

    invoke-virtual {v4}, Lcom/sonyericsson/customizedsettings/MasterResetService$DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 407
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    iget-object v4, p0, Lcom/sonyericsson/customizedsettings/MasterResetService$RestoreDefaultValueTask;->this$0:Lcom/sonyericsson/customizedsettings/MasterResetService;

    #calls: Lcom/sonyericsson/customizedsettings/MasterResetService;->isDefaultValuesBackuped(Landroid/database/sqlite/SQLiteDatabase;)Z
    invoke-static {v4, v0}, Lcom/sonyericsson/customizedsettings/MasterResetService;->access$000(Lcom/sonyericsson/customizedsettings/MasterResetService;Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 410
    const-string v4, "DefaultSystemValue"

    invoke-direct {p0, v4}, Lcom/sonyericsson/customizedsettings/MasterResetService$RestoreDefaultValueTask;->getCursorFromDatabase(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 411
    .local v3, systemCursor:Landroid/database/Cursor;
    if-eqz v3, :cond_1

    .line 412
    iget-object v4, p0, Lcom/sonyericsson/customizedsettings/MasterResetService$RestoreDefaultValueTask;->this$0:Lcom/sonyericsson/customizedsettings/MasterResetService;

    sget-object v5, Lcom/sonyericsson/customizedsettings/MasterResetService$Settings_Provider;->SYSTEM:Lcom/sonyericsson/customizedsettings/MasterResetService$Settings_Provider;

    #calls: Lcom/sonyericsson/customizedsettings/MasterResetService;->writeDefaultValuesToSettings(Landroid/database/Cursor;Lcom/sonyericsson/customizedsettings/MasterResetService$Settings_Provider;)V
    invoke-static {v4, v3, v5}, Lcom/sonyericsson/customizedsettings/MasterResetService;->access$100(Lcom/sonyericsson/customizedsettings/MasterResetService;Landroid/database/Cursor;Lcom/sonyericsson/customizedsettings/MasterResetService$Settings_Provider;)V

    .line 413
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 417
    :cond_1
    const-string v4, "DefaultSecureValue"

    invoke-direct {p0, v4}, Lcom/sonyericsson/customizedsettings/MasterResetService$RestoreDefaultValueTask;->getCursorFromDatabase(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 418
    .local v2, secureCursor:Landroid/database/Cursor;
    if-eqz v2, :cond_2

    .line 419
    iget-object v4, p0, Lcom/sonyericsson/customizedsettings/MasterResetService$RestoreDefaultValueTask;->this$0:Lcom/sonyericsson/customizedsettings/MasterResetService;

    sget-object v5, Lcom/sonyericsson/customizedsettings/MasterResetService$Settings_Provider;->SECURE:Lcom/sonyericsson/customizedsettings/MasterResetService$Settings_Provider;

    #calls: Lcom/sonyericsson/customizedsettings/MasterResetService;->writeDefaultValuesToSettings(Landroid/database/Cursor;Lcom/sonyericsson/customizedsettings/MasterResetService$Settings_Provider;)V
    invoke-static {v4, v2, v5}, Lcom/sonyericsson/customizedsettings/MasterResetService;->access$100(Lcom/sonyericsson/customizedsettings/MasterResetService;Landroid/database/Cursor;Lcom/sonyericsson/customizedsettings/MasterResetService$Settings_Provider;)V

    .line 420
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 424
    :cond_2
    const-string v4, "DefaultRingtoneValue"

    invoke-direct {p0, v4}, Lcom/sonyericsson/customizedsettings/MasterResetService$RestoreDefaultValueTask;->getCursorFromDatabase(Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 425
    .local v1, ringtoneCursor:Landroid/database/Cursor;
    if-eqz v1, :cond_3

    .line 427
    :try_start_1
    iget-object v4, p0, Lcom/sonyericsson/customizedsettings/MasterResetService$RestoreDefaultValueTask;->this$0:Lcom/sonyericsson/customizedsettings/MasterResetService;

    sget-object v5, Lcom/sonyericsson/customizedsettings/MasterResetService$Settings_Provider;->SYSTEM:Lcom/sonyericsson/customizedsettings/MasterResetService$Settings_Provider;

    #calls: Lcom/sonyericsson/customizedsettings/MasterResetService;->writeDefaultValuesToSettings(Landroid/database/Cursor;Lcom/sonyericsson/customizedsettings/MasterResetService$Settings_Provider;)V
    invoke-static {v4, v1, v5}, Lcom/sonyericsson/customizedsettings/MasterResetService;->access$100(Lcom/sonyericsson/customizedsettings/MasterResetService;Landroid/database/Cursor;Lcom/sonyericsson/customizedsettings/MasterResetService$Settings_Provider;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 433
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 438
    .end local v1           #ringtoneCursor:Landroid/database/Cursor;
    .end local v2           #secureCursor:Landroid/database/Cursor;
    .end local v3           #systemCursor:Landroid/database/Cursor;
    :cond_3
    :goto_1
    iget-object v4, p0, Lcom/sonyericsson/customizedsettings/MasterResetService$RestoreDefaultValueTask;->mDatabaseHelper:Lcom/sonyericsson/customizedsettings/MasterResetService$DatabaseHelper;

    invoke-virtual {v4}, Lcom/sonyericsson/customizedsettings/MasterResetService$DatabaseHelper;->close()V

    .line 440
    const v4, 0x7f030004

    invoke-virtual {p0, v4}, Lcom/sonyericsson/customizedsettings/MasterResetService$RestoreDefaultValueTask;->restoreSystemProperties(I)V

    goto :goto_0

    .line 428
    .restart local v1       #ringtoneCursor:Landroid/database/Cursor;
    .restart local v2       #secureCursor:Landroid/database/Cursor;
    .restart local v3       #systemCursor:Landroid/database/Cursor;
    :catch_0
    move-exception v4

    .line 433
    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 438
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v1           #ringtoneCursor:Landroid/database/Cursor;
    .end local v2           #secureCursor:Landroid/database/Cursor;
    .end local v3           #systemCursor:Landroid/database/Cursor;
    :catchall_0
    move-exception v4

    iget-object v5, p0, Lcom/sonyericsson/customizedsettings/MasterResetService$RestoreDefaultValueTask;->mDatabaseHelper:Lcom/sonyericsson/customizedsettings/MasterResetService$DatabaseHelper;

    invoke-virtual {v5}, Lcom/sonyericsson/customizedsettings/MasterResetService$DatabaseHelper;->close()V

    throw v4

    .line 433
    .restart local v0       #db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v1       #ringtoneCursor:Landroid/database/Cursor;
    .restart local v2       #secureCursor:Landroid/database/Cursor;
    .restart local v3       #systemCursor:Landroid/database/Cursor;
    :catchall_1
    move-exception v4

    :try_start_4
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method private restoreDefaultApn()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 515
    iget-object v1, p0, Lcom/sonyericsson/customizedsettings/MasterResetService$RestoreDefaultValueTask;->this$0:Lcom/sonyericsson/customizedsettings/MasterResetService;

    invoke-virtual {v1}, Lcom/sonyericsson/customizedsettings/MasterResetService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 516
    .local v0, resolver:Landroid/content/ContentResolver;
    invoke-static {}, Lcom/sonyericsson/customizedsettings/MasterResetService;->access$200()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 517
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 377
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/sonyericsson/customizedsettings/MasterResetService$RestoreDefaultValueTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2
    .parameter "arg"

    .prologue
    .line 388
    const-class v1, Lcom/sonyericsson/customizedsettings/MasterResetService;

    monitor-enter v1

    .line 389
    :try_start_0
    invoke-direct {p0}, Lcom/sonyericsson/customizedsettings/MasterResetService$RestoreDefaultValueTask;->restore()V

    .line 390
    monitor-exit v1

    .line 395
    const/4 v0, 0x0

    return-object v0

    .line 390
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 377
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/sonyericsson/customizedsettings/MasterResetService$RestoreDefaultValueTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1
    .parameter "result"

    .prologue
    .line 491
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 493
    invoke-direct {p0}, Lcom/sonyericsson/customizedsettings/MasterResetService$RestoreDefaultValueTask;->restoreDefaultApn()V

    .line 494
    invoke-direct {p0}, Lcom/sonyericsson/customizedsettings/MasterResetService$RestoreDefaultValueTask;->resetPatternScreenLockSettings()V

    .line 495
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/sonyericsson/customizedsettings/MasterResetChecker;->setResetDone(Z)V

    .line 496
    iget-object v0, p0, Lcom/sonyericsson/customizedsettings/MasterResetService$RestoreDefaultValueTask;->this$0:Lcom/sonyericsson/customizedsettings/MasterResetService;

    invoke-virtual {v0}, Lcom/sonyericsson/customizedsettings/MasterResetService;->stopSelf()V

    .line 497
    return-void
.end method

.method protected restoreSystemProperties(I)V
    .locals 11
    .parameter "resourceId"

    .prologue
    .line 455
    invoke-direct {p0, p1}, Lcom/sonyericsson/customizedsettings/MasterResetService$RestoreDefaultValueTask;->loadPropertiesNameList(I)Ljava/util/Map;

    move-result-object v8

    .line 458
    .local v8, propertyFiles:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 459
    .local v7, propertyFile:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    new-instance v0, Ljava/io/File;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-direct {v0, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 460
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 462
    new-instance v5, Ljava/util/Properties;

    invoke-direct {v5}, Ljava/util/Properties;-><init>()V

    .line 463
    .local v5, properties:Ljava/util/Properties;
    const/4 v3, 0x0

    .line 465
    .local v3, inputStream:Ljava/io/FileInputStream;
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 466
    .end local v3           #inputStream:Ljava/io/FileInputStream;
    .local v4, inputStream:Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual {v5, v4}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 468
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 470
    .local v6, property:Ljava/lang/String;
    invoke-virtual {v5, v6}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 471
    .local v9, value:Ljava/lang/String;
    if-eqz v9, :cond_1

    .line 473
    invoke-static {v6, v9}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    .line 476
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v6           #property:Ljava/lang/String;
    .end local v9           #value:Ljava/lang/String;
    :catch_0
    move-exception v10

    move-object v3, v4

    .line 483
    .end local v4           #inputStream:Ljava/io/FileInputStream;
    .restart local v3       #inputStream:Ljava/io/FileInputStream;
    :goto_2
    invoke-static {v3}, Lcom/sonyericsson/customizedsettings/Util;->close(Ljava/io/InputStream;)V

    goto :goto_0

    .end local v3           #inputStream:Ljava/io/FileInputStream;
    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v4       #inputStream:Ljava/io/FileInputStream;
    :cond_2
    invoke-static {v4}, Lcom/sonyericsson/customizedsettings/Util;->close(Ljava/io/InputStream;)V

    goto :goto_0

    .line 479
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v4           #inputStream:Ljava/io/FileInputStream;
    .restart local v3       #inputStream:Ljava/io/FileInputStream;
    :catch_1
    move-exception v10

    .line 483
    :goto_3
    invoke-static {v3}, Lcom/sonyericsson/customizedsettings/Util;->close(Ljava/io/InputStream;)V

    goto :goto_0

    :catchall_0
    move-exception v10

    :goto_4
    invoke-static {v3}, Lcom/sonyericsson/customizedsettings/Util;->close(Ljava/io/InputStream;)V

    throw v10

    .line 487
    .end local v0           #file:Ljava/io/File;
    .end local v3           #inputStream:Ljava/io/FileInputStream;
    .end local v5           #properties:Ljava/util/Properties;
    .end local v7           #propertyFile:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    :cond_3
    return-void

    .line 483
    .restart local v0       #file:Ljava/io/File;
    .restart local v4       #inputStream:Ljava/io/FileInputStream;
    .restart local v5       #properties:Ljava/util/Properties;
    .restart local v7       #propertyFile:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    :catchall_1
    move-exception v10

    move-object v3, v4

    .end local v4           #inputStream:Ljava/io/FileInputStream;
    .restart local v3       #inputStream:Ljava/io/FileInputStream;
    goto :goto_4

    .line 479
    .end local v3           #inputStream:Ljava/io/FileInputStream;
    .restart local v4       #inputStream:Ljava/io/FileInputStream;
    :catch_2
    move-exception v10

    move-object v3, v4

    .end local v4           #inputStream:Ljava/io/FileInputStream;
    .restart local v3       #inputStream:Ljava/io/FileInputStream;
    goto :goto_3

    .line 476
    :catch_3
    move-exception v10

    goto :goto_2
.end method

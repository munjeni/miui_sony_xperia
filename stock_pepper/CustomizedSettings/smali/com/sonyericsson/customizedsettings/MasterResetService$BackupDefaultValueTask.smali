.class Lcom/sonyericsson/customizedsettings/MasterResetService$BackupDefaultValueTask;
.super Landroid/os/AsyncTask;
.source "MasterResetService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/customizedsettings/MasterResetService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BackupDefaultValueTask"
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
    .line 588
    iput-object p1, p0, Lcom/sonyericsson/customizedsettings/MasterResetService$BackupDefaultValueTask;->this$0:Lcom/sonyericsson/customizedsettings/MasterResetService;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method private backup()V
    .locals 10

    .prologue
    .line 608
    new-instance v5, Lcom/sonyericsson/customizedsettings/MasterResetService$DatabaseHelper;

    iget-object v6, p0, Lcom/sonyericsson/customizedsettings/MasterResetService$BackupDefaultValueTask;->this$0:Lcom/sonyericsson/customizedsettings/MasterResetService;

    const-string v7, "DefaultValue.db"

    const/4 v8, 0x0

    const/4 v9, 0x2

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/sonyericsson/customizedsettings/MasterResetService$DatabaseHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    iput-object v5, p0, Lcom/sonyericsson/customizedsettings/MasterResetService$BackupDefaultValueTask;->mDatabaseHelper:Lcom/sonyericsson/customizedsettings/MasterResetService$DatabaseHelper;

    .line 610
    iget-object v5, p0, Lcom/sonyericsson/customizedsettings/MasterResetService$BackupDefaultValueTask;->mDatabaseHelper:Lcom/sonyericsson/customizedsettings/MasterResetService$DatabaseHelper;

    if-nez v5, :cond_0

    .line 634
    :goto_0
    return-void

    .line 614
    :cond_0
    :try_start_0
    iget-object v5, p0, Lcom/sonyericsson/customizedsettings/MasterResetService$BackupDefaultValueTask;->this$0:Lcom/sonyericsson/customizedsettings/MasterResetService;

    iget-object v6, p0, Lcom/sonyericsson/customizedsettings/MasterResetService$BackupDefaultValueTask;->mDatabaseHelper:Lcom/sonyericsson/customizedsettings/MasterResetService$DatabaseHelper;

    invoke-virtual {v6}, Lcom/sonyericsson/customizedsettings/MasterResetService$DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    #calls: Lcom/sonyericsson/customizedsettings/MasterResetService;->isDefaultValuesBackuped(Landroid/database/sqlite/SQLiteDatabase;)Z
    invoke-static {v5, v6}, Lcom/sonyericsson/customizedsettings/MasterResetService;->access$000(Lcom/sonyericsson/customizedsettings/MasterResetService;Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 616
    iget-object v5, p0, Lcom/sonyericsson/customizedsettings/MasterResetService$BackupDefaultValueTask;->mDatabaseHelper:Lcom/sonyericsson/customizedsettings/MasterResetService$DatabaseHelper;

    invoke-virtual {v5}, Lcom/sonyericsson/customizedsettings/MasterResetService$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 620
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    iget-object v5, p0, Lcom/sonyericsson/customizedsettings/MasterResetService$BackupDefaultValueTask;->this$0:Lcom/sonyericsson/customizedsettings/MasterResetService;

    const v6, 0x7f030005

    #calls: Lcom/sonyericsson/customizedsettings/MasterResetService;->loadSettingNameList(I)Ljava/util/ArrayList;
    invoke-static {v5, v6}, Lcom/sonyericsson/customizedsettings/MasterResetService;->access$300(Lcom/sonyericsson/customizedsettings/MasterResetService;I)Ljava/util/ArrayList;

    move-result-object v4

    .line 621
    .local v4, systemNameList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v5, p0, Lcom/sonyericsson/customizedsettings/MasterResetService$BackupDefaultValueTask;->this$0:Lcom/sonyericsson/customizedsettings/MasterResetService;

    sget-object v6, Lcom/sonyericsson/customizedsettings/MasterResetService$Settings_Provider;->SYSTEM:Lcom/sonyericsson/customizedsettings/MasterResetService$Settings_Provider;

    #calls: Lcom/sonyericsson/customizedsettings/MasterResetService;->readDefaultValuesFromSettings(Ljava/util/ArrayList;Lcom/sonyericsson/customizedsettings/MasterResetService$Settings_Provider;)Ljava/util/ArrayList;
    invoke-static {v5, v4, v6}, Lcom/sonyericsson/customizedsettings/MasterResetService;->access$400(Lcom/sonyericsson/customizedsettings/MasterResetService;Ljava/util/ArrayList;Lcom/sonyericsson/customizedsettings/MasterResetService$Settings_Provider;)Ljava/util/ArrayList;

    move-result-object v3

    .line 623
    .local v3, systemDefaultValueList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    iget-object v5, p0, Lcom/sonyericsson/customizedsettings/MasterResetService$BackupDefaultValueTask;->this$0:Lcom/sonyericsson/customizedsettings/MasterResetService;

    const-string v6, "DefaultSystemValue"

    #calls: Lcom/sonyericsson/customizedsettings/MasterResetService;->writeDefaultValuesDatabase(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/ArrayList;Ljava/lang/String;)V
    invoke-static {v5, v0, v3, v6}, Lcom/sonyericsson/customizedsettings/MasterResetService;->access$500(Lcom/sonyericsson/customizedsettings/MasterResetService;Landroid/database/sqlite/SQLiteDatabase;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 626
    iget-object v5, p0, Lcom/sonyericsson/customizedsettings/MasterResetService$BackupDefaultValueTask;->this$0:Lcom/sonyericsson/customizedsettings/MasterResetService;

    const v6, 0x7f030003

    #calls: Lcom/sonyericsson/customizedsettings/MasterResetService;->loadSettingNameList(I)Ljava/util/ArrayList;
    invoke-static {v5, v6}, Lcom/sonyericsson/customizedsettings/MasterResetService;->access$300(Lcom/sonyericsson/customizedsettings/MasterResetService;I)Ljava/util/ArrayList;

    move-result-object v2

    .line 627
    .local v2, secureNameList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v5, p0, Lcom/sonyericsson/customizedsettings/MasterResetService$BackupDefaultValueTask;->this$0:Lcom/sonyericsson/customizedsettings/MasterResetService;

    sget-object v6, Lcom/sonyericsson/customizedsettings/MasterResetService$Settings_Provider;->SECURE:Lcom/sonyericsson/customizedsettings/MasterResetService$Settings_Provider;

    #calls: Lcom/sonyericsson/customizedsettings/MasterResetService;->readDefaultValuesFromSettings(Ljava/util/ArrayList;Lcom/sonyericsson/customizedsettings/MasterResetService$Settings_Provider;)Ljava/util/ArrayList;
    invoke-static {v5, v2, v6}, Lcom/sonyericsson/customizedsettings/MasterResetService;->access$400(Lcom/sonyericsson/customizedsettings/MasterResetService;Ljava/util/ArrayList;Lcom/sonyericsson/customizedsettings/MasterResetService$Settings_Provider;)Ljava/util/ArrayList;

    move-result-object v1

    .line 629
    .local v1, secureDefaultValueList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    iget-object v5, p0, Lcom/sonyericsson/customizedsettings/MasterResetService$BackupDefaultValueTask;->this$0:Lcom/sonyericsson/customizedsettings/MasterResetService;

    const-string v6, "DefaultSecureValue"

    #calls: Lcom/sonyericsson/customizedsettings/MasterResetService;->writeDefaultValuesDatabase(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/ArrayList;Ljava/lang/String;)V
    invoke-static {v5, v0, v1, v6}, Lcom/sonyericsson/customizedsettings/MasterResetService;->access$500(Lcom/sonyericsson/customizedsettings/MasterResetService;Landroid/database/sqlite/SQLiteDatabase;Ljava/util/ArrayList;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 632
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v1           #secureDefaultValueList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v2           #secureNameList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3           #systemDefaultValueList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v4           #systemNameList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1
    iget-object v5, p0, Lcom/sonyericsson/customizedsettings/MasterResetService$BackupDefaultValueTask;->mDatabaseHelper:Lcom/sonyericsson/customizedsettings/MasterResetService$DatabaseHelper;

    invoke-virtual {v5}, Lcom/sonyericsson/customizedsettings/MasterResetService$DatabaseHelper;->close()V

    goto :goto_0

    :catchall_0
    move-exception v5

    iget-object v6, p0, Lcom/sonyericsson/customizedsettings/MasterResetService$BackupDefaultValueTask;->mDatabaseHelper:Lcom/sonyericsson/customizedsettings/MasterResetService$DatabaseHelper;

    invoke-virtual {v6}, Lcom/sonyericsson/customizedsettings/MasterResetService$DatabaseHelper;->close()V

    throw v5
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 588
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/sonyericsson/customizedsettings/MasterResetService$BackupDefaultValueTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2
    .parameter "arg"

    .prologue
    .line 597
    const-class v1, Lcom/sonyericsson/customizedsettings/MasterResetService;

    monitor-enter v1

    .line 598
    :try_start_0
    invoke-direct {p0}, Lcom/sonyericsson/customizedsettings/MasterResetService$BackupDefaultValueTask;->backup()V

    .line 599
    monitor-exit v1

    .line 604
    const/4 v0, 0x0

    return-object v0

    .line 599
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
    .line 588
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/sonyericsson/customizedsettings/MasterResetService$BackupDefaultValueTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1
    .parameter "result"

    .prologue
    .line 638
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 639
    iget-object v0, p0, Lcom/sonyericsson/customizedsettings/MasterResetService$BackupDefaultValueTask;->this$0:Lcom/sonyericsson/customizedsettings/MasterResetService;

    invoke-virtual {v0}, Lcom/sonyericsson/customizedsettings/MasterResetService;->stopSelf()V

    .line 640
    return-void
.end method

.class Lcom/sonyericsson/customizedsettings/MasterResetService$DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "MasterResetService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/customizedsettings/MasterResetService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DatabaseHelper"
.end annotation


# static fields
.field private static final CREATE_RINGTONE_TABLE:Ljava/lang/String; = "CREATE TABLE DefaultRingtoneValue (_id INTEGER PRIMARY KEY AUTOINCREMENT,name TEXT,value TEXT);"

.field private static final CREATE_SECURE_TABLE:Ljava/lang/String; = "CREATE TABLE DefaultSecureValue (_id INTEGER PRIMARY KEY AUTOINCREMENT,name TEXT,value TEXT);"

.field private static final CREATE_SYSTEM_TABLE:Ljava/lang/String; = "CREATE TABLE DefaultSystemValue (_id INTEGER PRIMARY KEY AUTOINCREMENT,name TEXT,value TEXT);"

.field private static final DESTROY_RINGTONE_TABLE:Ljava/lang/String; = "DROP TABLE IF EXISTS DefaultRingtoneValue"

.field private static final DESTROY_SECURE_TABLE:Ljava/lang/String; = "DROP TABLE IF EXISTS DefaultSecureValue"

.field private static final DESTROY_SYSTEM_TABLE:Ljava/lang/String; = "DROP TABLE IF EXISTS DefaultSystemValue"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V
    .locals 0
    .parameter "context"
    .parameter "name"
    .parameter "factory"
    .parameter "version"

    .prologue
    .line 122
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 123
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .parameter "db"

    .prologue
    .line 132
    :try_start_0
    const-string v1, "CREATE TABLE DefaultSystemValue (_id INTEGER PRIMARY KEY AUTOINCREMENT,name TEXT,value TEXT);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 133
    const-string v1, "CREATE TABLE DefaultSecureValue (_id INTEGER PRIMARY KEY AUTOINCREMENT,name TEXT,value TEXT);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 134
    const-string v1, "CREATE TABLE DefaultRingtoneValue (_id INTEGER PRIMARY KEY AUTOINCREMENT,name TEXT,value TEXT);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    :goto_0
    return-void

    .line 135
    :catch_0
    move-exception v0

    .line 136
    .local v0, e:Landroid/database/sqlite/SQLiteException;
    const-string v1, "Master Reset"

    const-string v2, "Failed to create database tables DefaultSystemValue and DefaultSecureValue"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    .line 143
    const/4 v0, 0x2

    if-ge p2, v0, :cond_1

    .line 144
    const-string v0, "DROP TABLE IF EXISTS DefaultSystemValue"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 145
    const-string v0, "DROP TABLE IF EXISTS DefaultSecureValue"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 146
    const/4 v0, 0x1

    if-le p2, v0, :cond_0

    .line 147
    const-string v0, "DROP TABLE IF EXISTS DefaultRingtoneValue"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 149
    :cond_0
    invoke-virtual {p0, p1}, Lcom/sonyericsson/customizedsettings/MasterResetService$DatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 151
    :cond_1
    return-void
.end method

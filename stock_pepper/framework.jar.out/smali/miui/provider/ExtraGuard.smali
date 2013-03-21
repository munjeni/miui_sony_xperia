.class public final Lmiui/provider/ExtraGuard;
.super Ljava/lang/Object;
.source "ExtraGuard.java"


# static fields
.field private static final CLOUD_SCAN_KEY:Ljava/lang/String; = "cloud_scan"

.field public static final DEFAULT_PACKAGE_NAME:Ljava/lang/String; = "com.tencent.tmsprovider"

.field private static final SMS_BLACK:I = 0x2

.field private static final SMS_WHITE:I = 0x1

.field private static final VIRUS_BLACK:I = 0x2

.field private static final VIRUS_GRAY:I = 0x3

.field private static final VIRUS_WHITE:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkApk(Landroid/content/Context;Landroid/net/Uri;)Z
    .locals 13
    .parameter "context"
    .parameter "uri"

    .prologue
    .line 33
    if-nez p1, :cond_0

    .line 34
    const/4 v1, 0x0

    .line 70
    :goto_0
    return v1

    .line 37
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 38
    .local v0, resolver:Landroid/content/ContentResolver;
    const/4 v10, 0x0

    .line 39
    .local v10, path:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v12

    .line 40
    .local v12, scheme:Ljava/lang/String;
    const-string v1, "content"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 41
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 42
    .local v8, cursor:Landroid/database/Cursor;
    if-eqz v8, :cond_2

    .line 43
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 44
    const-string v1, "_data"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 45
    .local v9, index:I
    invoke-interface {v8, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 47
    .end local v9           #index:I
    :cond_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 52
    .end local v8           #cursor:Landroid/database/Cursor;
    :cond_2
    :goto_1
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 53
    const/4 v1, 0x0

    goto :goto_0

    .line 49
    :cond_3
    if-eqz v12, :cond_4

    const-string v1, "file"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 50
    :cond_4
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v10

    goto :goto_1

    .line 56
    :cond_5
    :try_start_0
    const-string v1, "AntiVirusUri"

    invoke-static {p0, v1}, Lmiui/provider/ExtraGuard;->getUri(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 57
    .local v6, antiVirusUri:Landroid/net/Uri;
    if-eqz v6, :cond_7

    .line 58
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 60
    .local v7, contentValues:Landroid/content/ContentValues;
    const-string v1, "cloud_scan"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v7, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 61
    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v10, v2, v3

    invoke-virtual {v0, v6, v7, v1, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v11

    .line 65
    .local v11, result:I
    const/4 v1, 0x2

    if-eq v11, v1, :cond_6

    const/4 v1, 0x1

    goto :goto_0

    :cond_6
    const/4 v1, 0x0

    goto :goto_0

    .line 67
    .end local v6           #antiVirusUri:Landroid/net/Uri;
    .end local v7           #contentValues:Landroid/content/ContentValues;
    .end local v11           #result:I
    :catch_0
    move-exception v1

    .line 70
    :cond_7
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static checkSms(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10
    .parameter "context"
    .parameter "address"
    .parameter "body"

    .prologue
    const/4 v9, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 79
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 80
    .local v0, resolver:Landroid/content/ContentResolver;
    const-string v5, "AntiSmsSpamUri"

    invoke-static {p0, v5}, Lmiui/provider/ExtraGuard;->getUri(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 81
    .local v2, uri:Landroid/net/Uri;
    if-eqz v2, :cond_1

    .line 82
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    const/4 v6, 0x0

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object p1, v7, v8

    const/4 v8, 0x1

    aput-object p2, v7, v8

    invoke-virtual {v0, v2, v5, v6, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 86
    .local v1, result:I
    if-ne v1, v9, :cond_0

    .line 91
    .end local v0           #resolver:Landroid/content/ContentResolver;
    .end local v1           #result:I
    .end local v2           #uri:Landroid/net/Uri;
    :goto_0
    return v3

    .restart local v0       #resolver:Landroid/content/ContentResolver;
    .restart local v1       #result:I
    .restart local v2       #uri:Landroid/net/Uri;
    :cond_0
    move v3, v4

    .line 86
    goto :goto_0

    .line 88
    .end local v0           #resolver:Landroid/content/ContentResolver;
    .end local v1           #result:I
    .end local v2           #uri:Landroid/net/Uri;
    :catch_0
    move-exception v3

    :cond_1
    move v3, v4

    .line 91
    goto :goto_0
.end method

.method public static getUri(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;
    .locals 8
    .parameter "context"
    .parameter "type"

    .prologue
    .line 95
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "safe_guard_choosed"

    invoke-static {v6, v7}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 96
    .local v3, packageName:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 97
    const-string v3, "com.tencent.tmsprovider"

    .line 99
    :cond_0
    const/4 v5, 0x0

    .line 100
    .local v5, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 101
    .local v4, pm:Landroid/content/pm/PackageManager;
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v6, "miui.intent.action.safeguard"

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 102
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {v1, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 103
    const/16 v6, 0x80

    invoke-virtual {v4, v1, v6}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 104
    .local v2, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_1

    .line 105
    const/4 v6, 0x0

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    iget-object v6, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v6, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 106
    .local v0, authorities:Ljava/lang/String;
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 108
    .end local v0           #authorities:Ljava/lang/String;
    :cond_1
    return-object v5
.end method

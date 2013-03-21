.class public Landroid/net/Downloads$DownloadBase;
.super Ljava/lang/Object;
.source "Downloads.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/Downloads;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DownloadBase"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static startDownloadByUri(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZIZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
    .locals 9
    .parameter "context"
    .parameter "url"
    .parameter "cookieData"
    .parameter "showDownload"
    .parameter "downloadDestination"
    .parameter "allowRoaming"
    .parameter "skipIntegrityCheck"
    .parameter "title"
    .parameter "notification_package"
    .parameter "notification_class"
    .parameter "notification_extras"

    .prologue
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .local v1, cr:Landroid/content/ContentResolver;
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .local v6, values:Landroid/content/ContentValues;
    const-string v7, "uri"

    invoke-virtual {v6, v7, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "cookiedata"

    invoke-virtual {v6, v7, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "visibility"

    if-eqz p3, :cond_3

    const/4 v7, 0x0

    :goto_0
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v8, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    if-eqz p7, :cond_0

    const-string v7, "title"

    move-object/from16 v0, p7

    invoke-virtual {v6, v7, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string v7, "entity"

    invoke-virtual {v6, v7, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    .local v2, destination:I
    packed-switch p4, :pswitch_data_0

    :goto_1
    const-string v7, "destination"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v7, "no_integrity"

    invoke-static {p6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    if-eqz p8, :cond_1

    if-eqz p9, :cond_1

    const-string v7, "notificationpackage"

    move-object/from16 v0, p8

    invoke-virtual {v6, v7, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "notificationclass"

    move-object/from16 v0, p9

    invoke-virtual {v6, v7, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p10, :cond_1

    const-string v7, "notificationextras"

    move-object/from16 v0, p10

    invoke-virtual {v6, v7, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    sget-object v7, Landroid/provider/Downloads$Impl;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v7, v6}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v5

    .local v5, downloadUri:Landroid/net/Uri;
    const-wide/16 v3, -0x1

    .local v3, downloadId:J
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    :cond_2
    return-wide v3

    .end local v2           #destination:I
    .end local v3           #downloadId:J
    .end local v5           #downloadUri:Landroid/net/Uri;
    :cond_3
    const/4 v7, 0x2

    goto :goto_0

    .restart local v2       #destination:I
    :pswitch_0
    const/4 v2, 0x0

    goto :goto_1

    :pswitch_1
    if-eqz p5, :cond_4

    const/4 v2, 0x1

    goto :goto_1

    :cond_4
    const/4 v2, 0x3

    goto :goto_1

    :pswitch_2
    const/4 v2, 0x2

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.class public Landroid/media/ExtraRingtone;
.super Ljava/lang/Object;
.source "ExtraRingtone.java"


# static fields
.field private static final DRM_COLUMNS:[Ljava/lang/String;

.field private static final MEDIA_COLUMNS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 17
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "_data"

    aput-object v1, v0, v3

    const-string/jumbo v1, "title"

    aput-object v1, v0, v4

    sput-object v0, Landroid/media/ExtraRingtone;->MEDIA_COLUMNS:[Ljava/lang/String;

    .line 23
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "_data"

    aput-object v1, v0, v3

    const-string/jumbo v1, "title"

    aput-object v1, v0, v4

    sput-object v0, Landroid/media/ExtraRingtone;->DRM_COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getRingtoneTitle(Landroid/content/Context;Landroid/net/Uri;Z)Ljava/lang/String;
    .locals 4
    .parameter "context"
    .parameter "uri"
    .parameter "formatSystemRingtone"

    .prologue
    const/4 v3, 0x1

    .line 41
    invoke-static {p0, p1, v3}, Landroid/media/ExtraRingtone;->getTitle(Landroid/content/Context;Landroid/net/Uri;Z)Ljava/lang/String;

    move-result-object v0

    .line 42
    .local v0, title:Ljava/lang/String;
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    const-string/jumbo v1, "settings"

    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 43
    const v1, 0x60c017d

    new-array v2, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 47
    :cond_0
    return-object v0
.end method

.method private static getTitle(Landroid/content/Context;Landroid/net/Uri;Z)Ljava/lang/String;
    .locals 11
    .parameter "context"
    .parameter "uri"
    .parameter "followSettingsUri"

    .prologue
    const/4 v3, 0x0

    .line 51
    const/4 v8, 0x0

    .line 52
    .local v8, cursor:Landroid/database/Cursor;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 54
    .local v0, res:Landroid/content/ContentResolver;
    const/4 v10, 0x0

    .line 56
    .local v10, title:Ljava/lang/String;
    if-eqz p1, :cond_3

    .line 57
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v7

    .line 59
    .local v7, authority:Ljava/lang/String;
    const-string/jumbo v1, "settings"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 60
    if-eqz p2, :cond_3

    .line 61
    invoke-static {p1}, Landroid/media/RingtoneManager;->getDefaultType(Landroid/net/Uri;)I

    move-result v1

    invoke-static {p0, v1}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v6

    .line 63
    .local v6, actualUri:Landroid/net/Uri;
    const/4 v1, 0x0

    invoke-static {p0, v6, v1}, Landroid/media/ExtraRingtone;->getTitle(Landroid/content/Context;Landroid/net/Uri;Z)Ljava/lang/String;

    move-result-object v1

    .line 102
    .end local v6           #actualUri:Landroid/net/Uri;
    .end local v7           #authority:Ljava/lang/String;
    :goto_0
    return-object v1

    .line 66
    .restart local v7       #authority:Ljava/lang/String;
    :cond_0
    const/4 v9, 0x0

    .line 68
    .local v9, fromDataBase:Z
    const-string v1, "drm"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 69
    sget-object v2, Landroid/media/ExtraRingtone;->DRM_COLUMNS:[Ljava/lang/String;

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 70
    const/4 v9, 0x1

    .line 77
    :cond_1
    :goto_1
    if-eqz v8, :cond_6

    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_6

    .line 78
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 79
    const/4 v1, 0x2

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 80
    if-nez v10, :cond_2

    .line 81
    const-string v10, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    :cond_2
    :goto_2
    if-eqz v8, :cond_3

    .line 90
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 96
    .end local v7           #authority:Ljava/lang/String;
    .end local v9           #fromDataBase:Z
    :cond_3
    if-nez v10, :cond_9

    .line 97
    const v1, 0x60c0195

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    :cond_4
    :goto_3
    move-object v1, v10

    .line 102
    goto :goto_0

    .line 71
    .restart local v7       #authority:Ljava/lang/String;
    .restart local v9       #fromDataBase:Z
    :cond_5
    const-string/jumbo v1, "media"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 72
    sget-object v2, Landroid/media/ExtraRingtone;->MEDIA_COLUMNS:[Ljava/lang/String;

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 73
    const/4 v9, 0x1

    goto :goto_1

    .line 83
    :cond_6
    if-eqz v9, :cond_7

    .line 84
    :try_start_1
    const-string v10, ""

    goto :goto_2

    .line 86
    :cond_7
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v10

    goto :goto_2

    .line 89
    :catchall_0
    move-exception v1

    if-eqz v8, :cond_8

    .line 90
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_8
    throw v1

    .line 98
    .end local v7           #authority:Ljava/lang/String;
    .end local v9           #fromDataBase:Z
    :cond_9
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_4

    .line 99
    const v1, 0x60c0197

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto :goto_3
.end method

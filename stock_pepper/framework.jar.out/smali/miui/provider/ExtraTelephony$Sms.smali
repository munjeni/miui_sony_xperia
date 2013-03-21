.class public final Lmiui/provider/ExtraTelephony$Sms;
.super Ljava/lang/Object;
.source "ExtraTelephony.java"

# interfaces
.implements Lmiui/provider/ExtraTelephony$TextBasedSmsColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/provider/ExtraTelephony;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Sms"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/provider/ExtraTelephony$Sms$Intents;
    }
.end annotation


# static fields
.field public static final ACCOUNT:Ljava/lang/String; = "account"

.field public static final ADDRESSES:Ljava/lang/String; = "addresses"

.field public static final BIND_ID:Ljava/lang/String; = "bind_id"

.field public static final DELETED:Ljava/lang/String; = "deleted"

.field public static final MARKER:Ljava/lang/String; = "marker"

.field public static final MX_ID:Ljava/lang/String; = "mx_id"

.field public static final MX_STATUS:Ljava/lang/String; = "mx_status"

.field public static final OUT_TIME:Ljava/lang/String; = "out_time"

.field public static final SOURCE:Ljava/lang/String; = "source"

.field public static final SYNC_STATE:Ljava/lang/String; = "sync_state"

.field public static final TIMED:Ljava/lang/String; = "timed"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    return-void
.end method

.method public static addMiMessageToUri(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ZZJ)Landroid/net/Uri;
    .locals 4
    .parameter "resolver"
    .parameter "uri"
    .parameter "address"
    .parameter "body"
    .parameter "subject"
    .parameter "date"
    .parameter "read"
    .parameter "deliveryReport"
    .parameter "threadId"

    .prologue
    const/4 v3, 0x1

    .line 140
    new-instance v0, Landroid/content/ContentValues;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 141
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "address"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    if-eqz p5, :cond_0

    .line 143
    const-string v1, "date"

    invoke-virtual {v0, v1, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 145
    :cond_0
    const-string/jumbo v2, "read"

    if-eqz p6, :cond_3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 146
    const-string/jumbo v1, "subject"

    invoke-virtual {v0, v1, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    const-string v1, "body"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    if-eqz p7, :cond_1

    .line 149
    const-string/jumbo v1, "status"

    const/16 v2, 0x20

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 151
    :cond_1
    const-wide/16 v1, -0x1

    cmp-long v1, p8, v1

    if-eqz v1, :cond_2

    .line 152
    const-string/jumbo v1, "thread_id"

    invoke-static {p8, p9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 154
    :cond_2
    const-string/jumbo v1, "mx_status"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 155
    invoke-virtual {p0, p1, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    return-object v1

    .line 145
    :cond_3
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0
.end method

.method public static moveMessageToFolder(Landroid/content/Context;Landroid/net/Uri;IILjava/lang/Long;Ljava/lang/Integer;I)Z
    .locals 8
    .parameter "context"
    .parameter "uri"
    .parameter "folder"
    .parameter "error"
    .parameter "outTime"
    .parameter "status"
    .parameter "mxStatus"

    .prologue
    .line 161
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-static/range {v0 .. v7}, Lmiui/provider/ExtraTelephony$Sms;->moveMessageToFolder(Landroid/content/Context;Landroid/net/Uri;IILjava/lang/Long;Ljava/lang/Integer;ILjava/lang/Long;)Z

    move-result v0

    return v0
.end method

.method public static moveMessageToFolder(Landroid/content/Context;Landroid/net/Uri;IILjava/lang/Long;Ljava/lang/Integer;ILjava/lang/Long;)Z
    .locals 10
    .parameter "context"
    .parameter "uri"
    .parameter "folder"
    .parameter "error"
    .parameter "outTime"
    .parameter "status"
    .parameter "mxStatus"
    .parameter "mxId"

    .prologue
    .line 181
    if-nez p1, :cond_0

    .line 182
    const/4 v1, 0x0

    .line 221
    :goto_0
    return v1

    .line 185
    :cond_0
    const/4 v8, 0x0

    .line 186
    .local v8, markAsUnread:Z
    const/4 v7, 0x0

    .line 187
    .local v7, markAsRead:Z
    packed-switch p2, :pswitch_data_0

    .line 200
    const/4 v1, 0x0

    goto :goto_0

    .line 193
    :pswitch_0
    const/4 v7, 0x1

    .line 203
    :goto_1
    :pswitch_1
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 204
    .local v4, values:Landroid/content/ContentValues;
    const-string/jumbo v1, "type"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 205
    if-eqz v8, :cond_5

    .line 206
    const-string/jumbo v1, "read"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 210
    :cond_1
    :goto_2
    if-eqz p4, :cond_2

    .line 211
    const-string/jumbo v1, "out_time"

    invoke-virtual {v4, v1, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 213
    :cond_2
    if-eqz p5, :cond_3

    .line 214
    const-string/jumbo v1, "status"

    invoke-virtual {v4, v1, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 216
    :cond_3
    const-string v1, "error_code"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 217
    const-string/jumbo v1, "mx_status"

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 218
    if-eqz p7, :cond_4

    .line 219
    const-string/jumbo v1, "mx_id"

    move-object/from16 v0, p7

    invoke-virtual {v4, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 221
    :cond_4
    const/4 v9, 0x1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v3, p1

    invoke-static/range {v1 .. v6}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    if-ne v9, v1, :cond_6

    const/4 v1, 0x1

    goto :goto_0

    .line 197
    .end local v4           #values:Landroid/content/ContentValues;
    :pswitch_2
    const/4 v8, 0x1

    .line 198
    goto :goto_1

    .line 207
    .restart local v4       #values:Landroid/content/ContentValues;
    :cond_5
    if-eqz v7, :cond_1

    .line 208
    const-string/jumbo v1, "read"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_2

    .line 221
    :cond_6
    const/4 v1, 0x0

    goto :goto_0

    .line 187
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

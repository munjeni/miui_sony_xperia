.class abstract Lcom/android/internal/policy/impl/MiuiLockScreen$PreviewCursorAdpater;
.super Landroid/widget/ResourceCursorAdapter;
.source "MiuiLockScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/MiuiLockScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "PreviewCursorAdpater"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/MiuiLockScreen$PreviewCursorAdpater$ContactInfo;
    }
.end annotation


# instance fields
.field private mContacts:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Lcom/android/internal/policy/impl/MiuiLockScreen$PreviewCursorAdpater$ContactInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private mLoading:Z

.field private mUseDefaultCount:Z

.field final synthetic this$0:Lcom/android/internal/policy/impl/MiuiLockScreen;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/MiuiLockScreen;Landroid/content/Context;ILandroid/database/Cursor;)V
    .locals 2
    .parameter
    .parameter "context"
    .parameter "layout"
    .parameter "c"

    .prologue
    const/4 v1, 0x1

    .line 1070
    iput-object p1, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$PreviewCursorAdpater;->this$0:Lcom/android/internal/policy/impl/MiuiLockScreen;

    .line 1071
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ResourceCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;)V

    .line 1044
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$PreviewCursorAdpater;->mContacts:Ljava/util/HashMap;

    .line 1045
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$PreviewCursorAdpater;->mLoading:Z

    .line 1046
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$PreviewCursorAdpater;->mUseDefaultCount:Z

    .line 1072
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 0
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 1078
    return-void
.end method

.method public enableDefaultCount(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 1051
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$PreviewCursorAdpater;->mUseDefaultCount:Z

    .line 1052
    return-void
.end method

.method protected formatDate(J)Ljava/lang/String;
    .locals 6
    .parameter "date"

    .prologue
    .line 1104
    iget-object v3, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$PreviewCursorAdpater;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v2, "MMM d, kk:mm"

    .line 1105
    .local v2, formatHour:Ljava/lang/String;
    :goto_0
    invoke-static {v2, p1, p2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1106
    .local v0, dateString:Ljava/lang/String;
    const-string v3, "MMM d"

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1107
    .local v1, day:Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1108
    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aget-object v3, v3, v4

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 1110
    :goto_1
    return-object v3

    .line 1104
    .end local v0           #dateString:Ljava/lang/String;
    .end local v1           #day:Ljava/lang/String;
    .end local v2           #formatHour:Ljava/lang/String;
    :cond_0
    const-string v2, "MMM d,aa h:mm"

    goto :goto_0

    .line 1110
    .restart local v0       #dateString:Ljava/lang/String;
    .restart local v1       #day:Ljava/lang/String;
    .restart local v2       #formatHour:Ljava/lang/String;
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ","

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$PreviewCursorAdpater;->mContext:Landroid/content/Context;

    const v5, 0x60c0040

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1
.end method

.method protected getContact(Ljava/lang/String;)Lcom/android/internal/policy/impl/MiuiLockScreen$PreviewCursorAdpater$ContactInfo;
    .locals 16
    .parameter "phoneNumber"

    .prologue
    .line 1115
    const/4 v12, 0x0

    .line 1116
    .local v12, info:Lcom/android/internal/policy/impl/MiuiLockScreen$PreviewCursorAdpater$ContactInfo;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/policy/impl/MiuiLockScreen$PreviewCursorAdpater;->mContacts:Ljava/util/HashMap;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1117
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/policy/impl/MiuiLockScreen$PreviewCursorAdpater;->mContacts:Ljava/util/HashMap;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/ref/SoftReference;

    .line 1118
    .local v14, infoReference:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Lcom/android/internal/policy/impl/MiuiLockScreen$PreviewCursorAdpater$ContactInfo;>;"
    invoke-virtual {v14}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v12

    .end local v12           #info:Lcom/android/internal/policy/impl/MiuiLockScreen$PreviewCursorAdpater$ContactInfo;
    check-cast v12, Lcom/android/internal/policy/impl/MiuiLockScreen$PreviewCursorAdpater$ContactInfo;

    .line 1119
    .restart local v12       #info:Lcom/android/internal/policy/impl/MiuiLockScreen$PreviewCursorAdpater$ContactInfo;
    if-eqz v12, :cond_0

    move-object v13, v12

    .line 1167
    .end local v12           #info:Lcom/android/internal/policy/impl/MiuiLockScreen$PreviewCursorAdpater$ContactInfo;
    .end local v14           #infoReference:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Lcom/android/internal/policy/impl/MiuiLockScreen$PreviewCursorAdpater$ContactInfo;>;"
    .local v13, info:Lcom/android/internal/policy/impl/MiuiLockScreen$PreviewCursorAdpater$ContactInfo;
    :goto_0
    return-object v13

    .line 1124
    .end local v13           #info:Lcom/android/internal/policy/impl/MiuiLockScreen$PreviewCursorAdpater$ContactInfo;
    .restart local v12       #info:Lcom/android/internal/policy/impl/MiuiLockScreen$PreviewCursorAdpater$ContactInfo;
    :cond_0
    const/4 v10, 0x0

    .line 1126
    .local v10, cursor:Landroid/database/Cursor;
    :try_start_0
    sget-object v1, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static/range {p1 .. p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 1127
    .local v2, uri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/policy/impl/MiuiLockScreen$PreviewCursorAdpater;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "display_name"

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 1133
    if-eqz v10, :cond_4

    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1134
    new-instance v13, Lcom/android/internal/policy/impl/MiuiLockScreen$PreviewCursorAdpater$ContactInfo;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/android/internal/policy/impl/MiuiLockScreen$PreviewCursorAdpater$ContactInfo;-><init>(Lcom/android/internal/policy/impl/MiuiLockScreen$PreviewCursorAdpater;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1135
    .end local v12           #info:Lcom/android/internal/policy/impl/MiuiLockScreen$PreviewCursorAdpater$ContactInfo;
    .restart local v13       #info:Lcom/android/internal/policy/impl/MiuiLockScreen$PreviewCursorAdpater$ContactInfo;
    const/4 v1, 0x0

    :try_start_1
    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v13, Lcom/android/internal/policy/impl/MiuiLockScreen$PreviewCursorAdpater$ContactInfo;->name:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v12, v13

    .line 1158
    .end local v13           #info:Lcom/android/internal/policy/impl/MiuiLockScreen$PreviewCursorAdpater$ContactInfo;
    .restart local v12       #info:Lcom/android/internal/policy/impl/MiuiLockScreen$PreviewCursorAdpater$ContactInfo;
    :cond_1
    :goto_1
    if-eqz v12, :cond_2

    .line 1159
    :try_start_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/policy/impl/MiuiLockScreen$PreviewCursorAdpater;->mContacts:Ljava/util/HashMap;

    new-instance v3, Ljava/lang/ref/SoftReference;

    invoke-direct {v3, v12}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    move-object/from16 v0, p1

    invoke-virtual {v1, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 1164
    :cond_2
    if-eqz v10, :cond_3

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .end local v2           #uri:Landroid/net/Uri;
    :cond_3
    :goto_2
    move-object v13, v12

    .line 1167
    .end local v12           #info:Lcom/android/internal/policy/impl/MiuiLockScreen$PreviewCursorAdpater$ContactInfo;
    .restart local v13       #info:Lcom/android/internal/policy/impl/MiuiLockScreen$PreviewCursorAdpater$ContactInfo;
    goto :goto_0

    .line 1138
    .end local v13           #info:Lcom/android/internal/policy/impl/MiuiLockScreen$PreviewCursorAdpater$ContactInfo;
    .restart local v2       #uri:Landroid/net/Uri;
    .restart local v12       #info:Lcom/android/internal/policy/impl/MiuiLockScreen$PreviewCursorAdpater$ContactInfo;
    :cond_4
    if-eqz v10, :cond_5

    :try_start_3
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1139
    :cond_5
    invoke-static/range {p1 .. p1}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->parse(Ljava/lang/CharSequence;)Lmiui/telephony/PhoneNumberUtils$PhoneNumber;

    move-result-object v15

    .line 1140
    .local v15, pn:Lmiui/telephony/PhoneNumberUtils$PhoneNumber;
    move-object/from16 v9, p1

    .line 1141
    .local v9, address:Ljava/lang/String;
    if-eqz v15, :cond_6

    invoke-virtual {v15}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getEffectiveNumber()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 1142
    invoke-virtual {v15}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getEffectiveNumber()Ljava/lang/String;

    move-result-object v9

    .line 1145
    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/policy/impl/MiuiLockScreen$PreviewCursorAdpater;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v1, "content://yellowpage/sp"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v1, 0x1

    new-array v5, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v6, "name"

    aput-object v6, v5, v1

    const-string v6, "addr=?"

    const/4 v1, 0x1

    new-array v7, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v9, v7, v1

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 1152
    if-eqz v10, :cond_1

    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1153
    new-instance v13, Lcom/android/internal/policy/impl/MiuiLockScreen$PreviewCursorAdpater$ContactInfo;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/android/internal/policy/impl/MiuiLockScreen$PreviewCursorAdpater$ContactInfo;-><init>(Lcom/android/internal/policy/impl/MiuiLockScreen$PreviewCursorAdpater;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 1154
    .end local v12           #info:Lcom/android/internal/policy/impl/MiuiLockScreen$PreviewCursorAdpater$ContactInfo;
    .restart local v13       #info:Lcom/android/internal/policy/impl/MiuiLockScreen$PreviewCursorAdpater$ContactInfo;
    const/4 v1, 0x0

    :try_start_4
    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v13, Lcom/android/internal/policy/impl/MiuiLockScreen$PreviewCursorAdpater$ContactInfo;->name:Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    move-object v12, v13

    .end local v13           #info:Lcom/android/internal/policy/impl/MiuiLockScreen$PreviewCursorAdpater$ContactInfo;
    .restart local v12       #info:Lcom/android/internal/policy/impl/MiuiLockScreen$PreviewCursorAdpater$ContactInfo;
    goto :goto_1

    .line 1161
    .end local v2           #uri:Landroid/net/Uri;
    .end local v9           #address:Ljava/lang/String;
    .end local v15           #pn:Lmiui/telephony/PhoneNumberUtils$PhoneNumber;
    :catch_0
    move-exception v11

    .line 1162
    .local v11, e:Ljava/lang/Exception;
    :goto_3
    :try_start_5
    const-string v1, "LockScreen"

    invoke-virtual {v11}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1164
    if-eqz v10, :cond_3

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .end local v11           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    :goto_4
    if-eqz v10, :cond_7

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_7
    throw v1

    .end local v12           #info:Lcom/android/internal/policy/impl/MiuiLockScreen$PreviewCursorAdpater$ContactInfo;
    .restart local v2       #uri:Landroid/net/Uri;
    .restart local v13       #info:Lcom/android/internal/policy/impl/MiuiLockScreen$PreviewCursorAdpater$ContactInfo;
    :catchall_1
    move-exception v1

    move-object v12, v13

    .end local v13           #info:Lcom/android/internal/policy/impl/MiuiLockScreen$PreviewCursorAdpater$ContactInfo;
    .restart local v12       #info:Lcom/android/internal/policy/impl/MiuiLockScreen$PreviewCursorAdpater$ContactInfo;
    goto :goto_4

    .line 1161
    .end local v12           #info:Lcom/android/internal/policy/impl/MiuiLockScreen$PreviewCursorAdpater$ContactInfo;
    .restart local v13       #info:Lcom/android/internal/policy/impl/MiuiLockScreen$PreviewCursorAdpater$ContactInfo;
    :catch_1
    move-exception v11

    move-object v12, v13

    .end local v13           #info:Lcom/android/internal/policy/impl/MiuiLockScreen$PreviewCursorAdpater$ContactInfo;
    .restart local v12       #info:Lcom/android/internal/policy/impl/MiuiLockScreen$PreviewCursorAdpater$ContactInfo;
    goto :goto_3
.end method

.method public getCount()I
    .locals 3

    .prologue
    .line 1056
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$PreviewCursorAdpater;->mUseDefaultCount:Z

    if-eqz v2, :cond_1

    .line 1057
    invoke-super {p0}, Landroid/widget/ResourceCursorAdapter;->getCount()I

    move-result v0

    .line 1067
    :cond_0
    :goto_0
    return v0

    .line 1059
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MiuiLockScreen$PreviewCursorAdpater;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    .line 1060
    .local v1, cursor:Landroid/database/Cursor;
    if-nez v1, :cond_2

    .line 1061
    const/4 v0, 0x0

    goto :goto_0

    .line 1063
    :cond_2
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 1064
    .local v0, count:I
    const/4 v2, 0x2

    if-le v0, v2, :cond_0

    .line 1065
    const/4 v0, 0x2

    goto :goto_0
.end method

.method getValidatedNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "number"

    .prologue
    .line 1171
    const-string v0, "-1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1172
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$PreviewCursorAdpater;->mContext:Landroid/content/Context;

    const v1, 0x60c003c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 1178
    .end local p1
    :cond_0
    :goto_0
    return-object p1

    .line 1173
    .restart local p1
    :cond_1
    const-string v0, "-2"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1174
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$PreviewCursorAdpater;->mContext:Landroid/content/Context;

    const v1, 0x60c003d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 1175
    :cond_2
    const-string v0, "-3"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1176
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$PreviewCursorAdpater;->mContext:Landroid/content/Context;

    const v1, 0x60c003e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 1093
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$PreviewCursorAdpater;->mLoading:Z

    if-eqz v0, :cond_0

    .line 1095
    const/4 v0, 0x0

    .line 1097
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Landroid/widget/ResourceCursorAdapter;->isEmpty()Z

    move-result v0

    goto :goto_0
.end method

.method public abstract markRead(Landroid/content/Context;I)V
.end method

.method protected onContentChanged()V
    .locals 1

    .prologue
    .line 1082
    invoke-super {p0}, Landroid/widget/ResourceCursorAdapter;->onContentChanged()V

    .line 1083
    invoke-super {p0}, Landroid/widget/ResourceCursorAdapter;->getCount()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/MiuiLockScreen$PreviewCursorAdpater;->onQueryResultCount(I)V

    .line 1084
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MiuiLockScreen$PreviewCursorAdpater;->notifyDataSetChanged()V

    .line 1085
    return-void
.end method

.method protected abstract onQueryResultCount(I)V
.end method

.method setLoading(Z)V
    .locals 0
    .parameter "loading"

    .prologue
    .line 1088
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$PreviewCursorAdpater;->mLoading:Z

    .line 1089
    return-void
.end method

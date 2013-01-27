.class public final Lmiui/provider/ExtraTelephony;
.super Ljava/lang/Object;
.source "ExtraTelephony.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/provider/ExtraTelephony$FirewallLog;,
        Lmiui/provider/ExtraTelephony$Keyword;,
        Lmiui/provider/ExtraTelephony$Whitelist;,
        Lmiui/provider/ExtraTelephony$Blacklist;,
        Lmiui/provider/ExtraTelephony$SimCards;,
        Lmiui/provider/ExtraTelephony$SmsPhrase;,
        Lmiui/provider/ExtraTelephony$MmsSms;,
        Lmiui/provider/ExtraTelephony$Threads;,
        Lmiui/provider/ExtraTelephony$ThreadsColumns;,
        Lmiui/provider/ExtraTelephony$Mx;,
        Lmiui/provider/ExtraTelephony$Mms;,
        Lmiui/provider/ExtraTelephony$Sms;,
        Lmiui/provider/ExtraTelephony$TextBasedSmsColumns;
    }
.end annotation


# static fields
.field public static final CALLER_IS_SYNCADAPTER:Ljava/lang/String; = "caller_is_syncadapter"

.field public static final CHECK_DUPLICATION:Ljava/lang/String; = "check_duplication"

.field private static final COLUMNS:[Ljava/lang/String; = null

.field private static final DATA_COLUMN:I = 0x0

.field public static final DIRTY_QUERY_LIMIT:Ljava/lang/String; = "dirty_query_limit"

.field private static final KEYWORD_COLUMNS:[Ljava/lang/String; = null

.field private static final NAME_COLUMN:I = 0x0

.field public static final NEED_FULL_INSERT_URI:Ljava/lang/String; = "need_full_insert_uri"

.field private static final STARRED_COLUMN:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ExtraTelephony"


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 471
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "display_name"

    aput-object v1, v0, v2

    const-string/jumbo v1, "starred"

    aput-object v1, v0, v3

    sput-object v0, Lmiui/provider/ExtraTelephony;->COLUMNS:[Ljava/lang/String;

    .line 475
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "data"

    aput-object v1, v0, v2

    sput-object v0, Lmiui/provider/ExtraTelephony;->KEYWORD_COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 991
    return-void
.end method

.method public static checkFirewallForMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10
    .parameter "context"
    .parameter "address"
    .parameter "body"

    .prologue
    const/4 v6, 0x1

    const/4 v8, 0x2

    .line 800
    const/4 v2, 0x0

    .line 802
    .local v2, insertFw:Z
    const/4 v3, 0x0

    .line 803
    .local v3, reason:I
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, p1, v7}, Lmiui/provider/ExtraTelephony;->shouldBlockByFirewall(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 804
    .local v4, ret:I
    if-ne v4, v6, :cond_2

    .line 805
    const/4 v2, 0x1

    .line 806
    const/4 v3, 0x4

    .line 817
    :cond_0
    :goto_0
    if-eqz v2, :cond_5

    .line 818
    invoke-static {p0}, Lmiui/provider/ExtraTelephony;->getSmsAct(Landroid/content/Context;)I

    move-result v0

    .line 820
    .local v0, act:I
    if-eq v0, v8, :cond_1

    const/high16 v7, 0x1

    if-ne v3, v7, :cond_5

    .line 823
    :cond_1
    const/4 v7, 0x4

    if-ne v3, v7, :cond_4

    .line 824
    const-string v7, "ExtraTelephony"

    const-string/jumbo v8, "\u76f4\u63a5\u5220\u9664\u9ed1\u540d\u5355\u6210\u5458\u77ed\u4fe1."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 832
    :goto_1
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 833
    .local v5, values:Landroid/content/ContentValues;
    const-string/jumbo v7, "number"

    invoke-virtual {v5, v7, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 834
    const-string v7, "date"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 835
    const-string/jumbo v7, "type"

    const/4 v8, 0x2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 836
    const-string v7, "data1"

    invoke-virtual {p2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 837
    const-string/jumbo v7, "reason"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 838
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    sget-object v8, Lmiui/provider/ExtraTelephony$FirewallLog;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v7, v8, v5}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 845
    .end local v0           #act:I
    .end local v4           #ret:I
    .end local v5           #values:Landroid/content/ContentValues;
    :goto_2
    return v6

    .line 808
    .restart local v4       #ret:I
    :cond_2
    if-ne v4, v8, :cond_3

    .line 809
    const/4 v2, 0x1

    .line 810
    const/16 v3, 0x104

    goto :goto_0

    .line 812
    :cond_3
    const/4 v7, 0x3

    if-ne v4, v7, :cond_0

    .line 813
    const/4 v2, 0x1

    .line 814
    const/high16 v3, 0x1

    goto :goto_0

    .line 825
    .restart local v0       #act:I
    :cond_4
    const/16 v7, 0x104

    if-ne v3, v7, :cond_6

    .line 826
    const-string v7, "ExtraTelephony"

    const-string/jumbo v8, "\u76f4\u63a5\u5220\u9664\u767d\u540d\u5355\u6210\u5458\u77ed\u4fe1."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 842
    .end local v0           #act:I
    .end local v4           #ret:I
    :catch_0
    move-exception v1

    .line 843
    .local v1, e:Ljava/lang/Exception;
    const-string v6, "ExtraTelephony"

    const-string/jumbo v7, "\u9632\u6253\u6270\u53d1\u751f\u5f02\u5e38"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 845
    .end local v1           #e:Ljava/lang/Exception;
    :cond_5
    const/4 v6, 0x0

    goto :goto_2

    .line 828
    .restart local v0       #act:I
    .restart local v4       #ret:I
    :cond_6
    :try_start_1
    const-string v7, "ExtraTelephony"

    const-string/jumbo v8, "\u77ed\u4fe1\u88ab\u8fc7\u6ee4."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public static checkFirewallForSms(Landroid/content/Context;[[B)Z
    .locals 8
    .parameter "context"
    .parameter "pdus"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 856
    if-eqz p1, :cond_2

    :try_start_0
    array-length v7, p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-lt v7, v5, :cond_2

    .line 857
    const/4 v0, 0x0

    .line 860
    .local v0, address:Ljava/lang/String;
    const/4 v7, 0x0

    :try_start_1
    aget-object v7, p1, v7

    invoke-static {v7}, Landroid/telephony/SmsMessage;->createFromPdu([B)Landroid/telephony/SmsMessage;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/SmsMessage;->getOriginatingAddress()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 865
    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 866
    .local v1, body:Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    array-length v7, p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    if-ge v4, v7, :cond_1

    .line 868
    :try_start_3
    aget-object v7, p1, v4

    invoke-static {v7}, Landroid/telephony/SmsMessage;->createFromPdu([B)Landroid/telephony/SmsMessage;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/SmsMessage;->getDisplayMessageBody()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 866
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 861
    .end local v1           #body:Ljava/lang/StringBuilder;
    .end local v4           #i:I
    :catch_0
    move-exception v3

    .local v3, ex:Ljava/lang/NullPointerException;
    move v5, v6

    .line 884
    .end local v0           #address:Ljava/lang/String;
    .end local v3           #ex:Ljava/lang/NullPointerException;
    :cond_0
    :goto_2
    return v5

    .line 876
    .restart local v0       #address:Ljava/lang/String;
    .restart local v1       #body:Ljava/lang/StringBuilder;
    .restart local v4       #i:I
    :cond_1
    :try_start_4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v0, v7}, Lmiui/provider/MiCloudSmsCmd;->checkSmsCmd(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 879
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v0, v5}, Lmiui/provider/ExtraTelephony;->checkFirewallForMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    move-result v5

    goto :goto_2

    .line 881
    .end local v0           #address:Ljava/lang/String;
    .end local v1           #body:Ljava/lang/StringBuilder;
    .end local v4           #i:I
    :catch_1
    move-exception v2

    .line 882
    .local v2, e:Ljava/lang/Exception;
    const-string v5, "ExtraTelephony"

    const-string/jumbo v7, "\u9632\u6253\u6270\u53d1\u751f\u5f02\u5e38"

    invoke-static {v5, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v2           #e:Ljava/lang/Exception;
    :cond_2
    move v5, v6

    .line 884
    goto :goto_2

    .line 869
    .restart local v0       #address:Ljava/lang/String;
    .restart local v1       #body:Ljava/lang/StringBuilder;
    .restart local v4       #i:I
    :catch_2
    move-exception v7

    goto :goto_1
.end method

.method public static checkFirewallForWapPush(Landroid/content/Context;[B)Z
    .locals 13
    .parameter "context"
    .parameter "pduData"

    .prologue
    .line 894
    if-eqz p1, :cond_6

    .line 895
    :try_start_0
    new-instance v5, Lcom/google/android/mms/pdu/PduParser;

    invoke-direct {v5, p1}, Lcom/google/android/mms/pdu/PduParser;-><init>([B)V

    .line 896
    .local v5, parser:Lcom/google/android/mms/pdu/PduParser;
    invoke-virtual {v5}, Lcom/google/android/mms/pdu/PduParser;->parse()Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v6

    .line 897
    .local v6, pdu:Lcom/google/android/mms/pdu/GenericPdu;
    if-nez v6, :cond_0

    .line 898
    const/4 v10, 0x0

    .line 946
    .end local v5           #parser:Lcom/google/android/mms/pdu/PduParser;
    .end local v6           #pdu:Lcom/google/android/mms/pdu/GenericPdu;
    :goto_0
    return v10

    .line 901
    .restart local v5       #parser:Lcom/google/android/mms/pdu/PduParser;
    .restart local v6       #pdu:Lcom/google/android/mms/pdu/GenericPdu;
    :cond_0
    invoke-virtual {v6}, Lcom/google/android/mms/pdu/GenericPdu;->getFrom()Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v3

    .line 902
    .local v3, from:Lcom/google/android/mms/pdu/EncodedStringValue;
    if-nez v3, :cond_1

    .line 903
    const/4 v10, 0x0

    goto :goto_0

    .line 906
    :cond_1
    invoke-virtual {v3}, Lcom/google/android/mms/pdu/EncodedStringValue;->getTextString()[B

    move-result-object v10

    invoke-static {v10}, Lcom/google/android/mms/pdu/PduPersister;->toIsoString([B)Ljava/lang/String;

    move-result-object v1

    .line 907
    .local v1, address:Ljava/lang/String;
    const/4 v4, 0x0

    .line 908
    .local v4, insertFw:Z
    const/4 v7, 0x0

    .line 910
    .local v7, reason:I
    invoke-static {p0, v1}, Lmiui/provider/ExtraTelephony;->shouldBlockByFirewall(Landroid/content/Context;Ljava/lang/String;)I

    move-result v8

    .line 911
    .local v8, ret:I
    const/4 v10, 0x1

    if-ne v8, v10, :cond_4

    .line 912
    const/4 v4, 0x1

    .line 913
    const/4 v7, 0x6

    .line 920
    :cond_2
    :goto_1
    if-eqz v4, :cond_6

    .line 921
    invoke-static {p0}, Lmiui/provider/ExtraTelephony;->getSmsAct(Landroid/content/Context;)I

    move-result v0

    .line 923
    .local v0, act:I
    const/4 v10, 0x2

    if-ne v0, v10, :cond_6

    .line 924
    const/4 v10, 0x6

    if-ne v7, v10, :cond_5

    .line 925
    const-string v10, "ExtraTelephony"

    const-string/jumbo v11, "\u76f4\u63a5\u5220\u9664\u9ed1\u540d\u5355\u6210\u5458\u5f69\u4fe1."

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 930
    :cond_3
    :goto_2
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 931
    .local v9, values:Landroid/content/ContentValues;
    const-string/jumbo v10, "number"

    invoke-virtual {v9, v10, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 932
    const-string v10, "date"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 933
    const-string/jumbo v10, "type"

    const/4 v11, 0x3

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 934
    const-string v10, "data1"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "<"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const v12, 0x60c016d

    invoke-virtual {p0, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ">"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 936
    const-string/jumbo v10, "reason"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 937
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    sget-object v11, Lmiui/provider/ExtraTelephony$FirewallLog;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v10, v11, v9}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 939
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 915
    .end local v0           #act:I
    .end local v9           #values:Landroid/content/ContentValues;
    :cond_4
    const/4 v10, 0x2

    if-ne v8, v10, :cond_2

    .line 916
    const/4 v4, 0x1

    .line 917
    const/16 v7, 0x106

    goto :goto_1

    .line 926
    .restart local v0       #act:I
    :cond_5
    const/16 v10, 0x106

    if-ne v7, v10, :cond_3

    .line 927
    const-string v10, "ExtraTelephony"

    const-string/jumbo v11, "\u76f4\u63a5\u5220\u9664\u767d\u540d\u5355\u6210\u5458\u5f69\u4fe1."

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 943
    .end local v0           #act:I
    .end local v1           #address:Ljava/lang/String;
    .end local v3           #from:Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local v4           #insertFw:Z
    .end local v5           #parser:Lcom/google/android/mms/pdu/PduParser;
    .end local v6           #pdu:Lcom/google/android/mms/pdu/GenericPdu;
    .end local v7           #reason:I
    .end local v8           #ret:I
    :catch_0
    move-exception v2

    .line 944
    .local v2, e:Ljava/lang/Exception;
    const-string v10, "ExtraTelephony"

    const-string/jumbo v11, "\u9632\u6253\u6270\u53d1\u751f\u5f02\u5e38"

    invoke-static {v10, v11, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 946
    .end local v2           #e:Ljava/lang/Exception;
    :cond_6
    const/4 v10, 0x0

    goto/16 :goto_0
.end method

.method public static getCallAct(Landroid/content/Context;)I
    .locals 3
    .parameter "context"

    .prologue
    .line 479
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "context should not be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 481
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "firewall_call_act"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getSmsAct(Landroid/content/Context;)I
    .locals 3
    .parameter "context"

    .prologue
    .line 487
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "context should not be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 489
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "firewall_sms_act"

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static isAntiPrivateEnabled(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 584
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "context should not be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 586
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "anti_private_call"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public static isAntiStrangerEnabled(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    const/4 v0, 0x1

    .line 574
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "context should not be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 576
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "anti_stranger_call"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isBlacklistEnabled(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    const/4 v0, 0x1

    .line 604
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "context should not be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 606
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "blacklist_enabled"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isCallLogNumber(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 11
    .parameter "context"
    .parameter "phone"

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x1

    const/4 v10, 0x0

    .line 756
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v7, v10

    .line 777
    :cond_0
    :goto_0
    return v7

    .line 760
    :cond_1
    invoke-static {p1}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->parse(Ljava/lang/CharSequence;)Lmiui/telephony/PhoneNumberUtils$PhoneNumber;

    move-result-object v8

    .line 761
    .local v8, pn:Lmiui/telephony/PhoneNumberUtils$PhoneNumber;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "normalized_number=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v8, v10, v2}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getNormalizedNumber(ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 762
    .local v3, selection:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v5, "type"

    aput-object v5, v2, v10

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 766
    .local v6, cursor:Landroid/database/Cursor;
    const/4 v7, 0x0

    .line 767
    .local v7, hasConnection:Z
    if-eqz v6, :cond_0

    .line 768
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 769
    invoke-interface {v6, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 770
    .local v9, type:I
    const/4 v0, 0x3

    if-eq v9, v0, :cond_2

    .line 771
    const/4 v7, 0x1

    .line 775
    .end local v9           #type:I
    :cond_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method public static isFilterSmsEnabled(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    const/4 v0, 0x1

    .line 594
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "context should not be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 596
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "filter_stranger_sms"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isFirewallEnabled(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    const/4 v0, 0x1

    .line 564
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "context should not be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 566
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "firewall_enabled"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isInBlacklist(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 8
    .parameter "context"
    .parameter "phone"

    .prologue
    const/4 v2, 0x0

    .line 518
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "context should not be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 520
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v7, 0x0

    .line 534
    :cond_1
    :goto_0
    return v7

    .line 522
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lmiui/provider/ExtraTelephony$Blacklist;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 526
    .local v6, c:Landroid/database/Cursor;
    const/4 v7, 0x0

    .line 527
    .local v7, result:Z
    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 528
    const/4 v7, 0x1

    .line 533
    :goto_1
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 530
    :cond_3
    const/4 v7, 0x0

    goto :goto_1
.end method

.method private static isInFirewallTimeLimit(Landroid/content/Context;)Z
    .locals 10
    .parameter "context"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 621
    if-nez p0, :cond_0

    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "context should not be null!"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 623
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "firewall_time_limit_enabled"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_2

    move v2, v5

    .line 626
    .local v2, isEnabled:Z
    :goto_0
    if-nez v2, :cond_3

    .line 642
    :cond_1
    :goto_1
    return v5

    .end local v2           #isEnabled:Z
    :cond_2
    move v2, v6

    .line 623
    goto :goto_0

    .line 628
    .restart local v2       #isEnabled:Z
    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "firewall_start_time"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 631
    .local v4, startTime:I
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "firewall_end_time"

    const/16 v9, 0x1a4

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 634
    .local v1, endTime:I
    if-ne v4, v1, :cond_4

    move v5, v6

    goto :goto_1

    .line 636
    :cond_4
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 637
    .local v0, c:Ljava/util/Calendar;
    const/16 v7, 0xb

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    mul-int/lit8 v7, v7, 0x3c

    const/16 v8, 0xc

    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    add-int v3, v7, v8

    .line 638
    .local v3, now:I
    if-ge v4, v1, :cond_6

    .line 639
    if-gt v4, v3, :cond_5

    if-le v3, v1, :cond_1

    :cond_5
    move v5, v6

    goto :goto_1

    .line 642
    :cond_6
    if-ge v3, v4, :cond_7

    if-gt v3, v1, :cond_8

    :cond_7
    move v6, v5

    :cond_8
    move v5, v6

    goto :goto_1
.end method

.method private static isInWhitelist(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 8
    .parameter "context"
    .parameter "phone"

    .prologue
    const/4 v2, 0x0

    .line 542
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "context should not be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 544
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v7, 0x0

    .line 557
    :cond_1
    :goto_0
    return v7

    .line 547
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lmiui/provider/ExtraTelephony$Whitelist;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 551
    .local v6, c:Landroid/database/Cursor;
    const/4 v7, 0x0

    .line 552
    .local v7, result:Z
    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 553
    const/4 v7, 0x1

    .line 556
    :cond_3
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method public static isSkipInCallLogForFirewall(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    const/4 v0, 0x1

    .line 785
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "context should not be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 787
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "firewall_hide_calllog"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isStranger(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 8
    .parameter "context"
    .parameter "phone"

    .prologue
    const/4 v3, 0x0

    .line 495
    const/4 v7, 0x1

    .line 496
    .local v7, stranger:Z
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static {v1, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lmiui/provider/ExtraTelephony;->COLUMNS:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 500
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 501
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 503
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 504
    const/4 v7, 0x0

    .line 507
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 510
    :cond_1
    return v7
.end method

.method private static isWhitelistEnabled(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    const/4 v0, 0x1

    .line 614
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "context should not be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 616
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "whitelist_enabled"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static shouldBlockByFirewall(Landroid/content/Context;Ljava/lang/String;)I
    .locals 1
    .parameter "context"
    .parameter "phone"

    .prologue
    const/4 v0, 0x1

    .line 647
    invoke-static {p0, p1, v0, v0}, Lmiui/provider/ExtraTelephony;->shouldBlockByFirewall(Landroid/content/Context;Ljava/lang/String;ZZ)I

    move-result v0

    return v0
.end method

.method public static shouldBlockByFirewall(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .parameter "context"
    .parameter "phone"
    .parameter "smsBody"

    .prologue
    const/4 v1, 0x1

    .line 651
    invoke-static {p0, p1, v1, v1}, Lmiui/provider/ExtraTelephony;->shouldBlockByFirewall(Landroid/content/Context;Ljava/lang/String;ZZ)I

    move-result v0

    .line 653
    .local v0, result:I
    if-nez v0, :cond_0

    .line 654
    invoke-static {p0, p1, p2}, Lmiui/provider/ExtraTelephony;->shouldFilter(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 657
    :cond_0
    return v0
.end method

.method public static shouldBlockByFirewall(Landroid/content/Context;Ljava/lang/String;Z)I
    .locals 1
    .parameter "context"
    .parameter "phone"
    .parameter "stranger"

    .prologue
    .line 661
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lmiui/provider/ExtraTelephony;->shouldBlockByFirewall(Landroid/content/Context;Ljava/lang/String;ZZ)I

    move-result v0

    return v0
.end method

.method private static shouldBlockByFirewall(Landroid/content/Context;Ljava/lang/String;ZZ)I
    .locals 6
    .parameter "context"
    .parameter "phone"
    .parameter "stranger"
    .parameter "queryContact"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x2

    const/4 v1, 0x0

    .line 672
    invoke-static {p0}, Lmiui/provider/ExtraTelephony;->isFirewallEnabled(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 706
    :cond_0
    :goto_0
    return v1

    .line 674
    :cond_1
    invoke-static {p0}, Lmiui/provider/ExtraTelephony;->isInFirewallTimeLimit(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 679
    invoke-static {p0}, Lmiui/provider/ExtraTelephony;->isBlacklistEnabled(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {p0, p1}, Lmiui/provider/ExtraTelephony;->isInBlacklist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v1, v2

    .line 680
    goto :goto_0

    .line 683
    :cond_2
    invoke-static {p0}, Lmiui/provider/ExtraTelephony;->isWhitelistEnabled(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {p0, p1}, Lmiui/provider/ExtraTelephony;->isInWhitelist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 687
    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "incoming_call_limit_setting"

    invoke-static {v4, v5, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 690
    .local v0, limitSetting:I
    const/4 v4, 0x3

    if-ne v0, v4, :cond_4

    move v1, v3

    .line 691
    goto :goto_0

    .line 693
    :cond_4
    if-ne v0, v2, :cond_0

    .line 694
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    move v1, v3

    .line 695
    goto :goto_0

    .line 697
    :cond_5
    if-eqz p3, :cond_6

    .line 698
    invoke-static {p0, p1}, Lmiui/provider/ExtraTelephony;->isStranger(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p2

    .line 701
    :cond_6
    if-eqz p2, :cond_0

    move v1, v3

    .line 702
    goto :goto_0
.end method

.method private static shouldFilter(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .locals 11
    .parameter "context"
    .parameter "phone"
    .parameter "smsBody"

    .prologue
    const/4 v3, 0x0

    const/4 v10, 0x0

    .line 710
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 749
    :cond_0
    :goto_0
    return v10

    .line 712
    :cond_1
    invoke-static {p0}, Lmiui/provider/ExtraTelephony;->isFilterSmsEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 714
    invoke-static {p0, p1}, Lmiui/provider/ExtraTelephony;->isStranger(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v9

    .line 715
    .local v9, stranger:Z
    if-eqz v9, :cond_0

    .line 719
    invoke-static {p0, p1}, Lmiui/provider/ExtraTelephony;->isInWhitelist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 723
    invoke-static {p0, p1}, Lmiui/provider/ExtraTelephony;->isCallLogNumber(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 727
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lmiui/provider/ExtraTelephony$Keyword;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lmiui/provider/ExtraTelephony;->KEYWORD_COLUMNS:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 731
    .local v7, cursor:Landroid/database/Cursor;
    const/4 v8, 0x0

    .line 732
    .local v8, matched:Z
    if-eqz v7, :cond_4

    .line 733
    :cond_2
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 734
    invoke-interface {v7, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 735
    .local v6, Keyword:Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 736
    invoke-virtual {p2, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 737
    const/4 v8, 0x1

    .line 742
    .end local v6           #Keyword:Ljava/lang/String;
    :cond_3
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 745
    :cond_4
    if-nez v8, :cond_5

    .line 746
    invoke-static {p0, p1, p2}, Lmiui/provider/ExtraGuard;->checkSms(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    .line 749
    :cond_5
    if-eqz v8, :cond_6

    const/4 v0, 0x3

    :goto_1
    move v10, v0

    goto :goto_0

    :cond_6
    move v0, v10

    goto :goto_1
.end method

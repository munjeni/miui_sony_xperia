.class public Lmiui/telephony/PhoneNumberUtils;
.super Landroid/telephony/PhoneNumberUtils;
.source "PhoneNumberUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler;,
        Lmiui/telephony/PhoneNumberUtils$TelocationQueryListener;,
        Lmiui/telephony/PhoneNumberUtils$PhoneNumber;
    }
.end annotation


# static fields
.field private static final CHINA_COUNTRY_CODE:Ljava/lang/String; = "86"

.field public static final CHINA_MCC:Ljava/lang/String; = "460"

.field private static final CHINA_MOBILE_NUMBER_LENGTH:I = 0xb

.field private static final CHINA_MOBILE_NUMBER_PREFIX:Ljava/lang/String; = "1"

.field private static final CHINA_REGION_CODE1:Ljava/lang/String; = "+86"

.field private static final CHINA_REGION_CODE2:Ljava/lang/String; = "0086"

.field private static final EMERGENCY_NUMBERS:[Ljava/lang/String; = null

.field static final LOG_TAG:Ljava/lang/String; = "PhoneNumberUtils"

.field public static final MASK_PHONE_NUMBER_MODE_HEAD:I = 0x0

.field public static final MASK_PHONE_NUMBER_MODE_MIDDLE:I = 0x2

.field public static final MASK_PHONE_NUMBER_MODE_TAIL:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 1045
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "110"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "112"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "119"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "120"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "122"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "911"

    aput-object v2, v0, v1

    sput-object v0, Lmiui/telephony/PhoneNumberUtils;->EMERGENCY_NUMBERS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/telephony/PhoneNumberUtils;-><init>()V

    .line 657
    return-void
.end method

.method public static cancelAsyncTelocationQuery(I)V
    .locals 1
    .parameter "token"

    .prologue
    .line 859
    invoke-static {}, Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler;->getInstance()Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler;

    move-result-object v0

    invoke-virtual {v0, p0}, Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler;->cancelOperation(I)V

    .line 860
    return-void
.end method

.method public static extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "phoneNumber"

    .prologue
    .line 91
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lmiui/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static extractNetworkPortion(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .parameter "phoneNumber"
    .parameter "phoneType"

    .prologue
    .line 95
    if-nez p0, :cond_0

    .line 96
    const/4 v0, 0x0

    .line 101
    :goto_0
    return-object v0

    .line 98
    :cond_0
    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    invoke-static {p0}, Lmiui/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 99
    :cond_1
    const/4 v0, 0x0

    invoke-static {p0}, Lmiui/telephony/PhoneNumberUtils;->indexOfLastNetworkChar(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 101
    :cond_2
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "phoneNumber"

    .prologue
    .line 105
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lmiui/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static extractNetworkPortionAlt(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .parameter "phoneNumber"
    .parameter "phoneType"

    .prologue
    .line 109
    if-nez p0, :cond_0

    .line 110
    const/4 v0, 0x0

    .line 116
    :goto_0
    return-object v0

    .line 113
    :cond_0
    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    invoke-static {p0}, Lmiui/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 114
    :cond_1
    const/4 v0, 0x0

    invoke-static {p0}, Lmiui/telephony/PhoneNumberUtils;->indexOfLastNetworkChar(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 116
    :cond_2
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static formatNumberWithIp(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .parameter "context"
    .parameter "number"

    .prologue
    .line 905
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "button_autoip"

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-eqz v9, :cond_0

    const/4 v5, 0x1

    .line 907
    .local v5, isAutoIpEnabled:Z
    :goto_0
    if-nez v5, :cond_1

    move-object v7, p1

    .line 973
    .end local p1
    .local v7, number:Ljava/lang/String;
    :goto_1
    return-object v7

    .line 905
    .end local v5           #isAutoIpEnabled:Z
    .end local v7           #number:Ljava/lang/String;
    .restart local p1
    :cond_0
    const/4 v5, 0x0

    goto :goto_0

    .line 912
    .restart local v5       #isAutoIpEnabled:Z
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "current_areacode"

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Lmiui/provider/ExtraSettings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 914
    .local v1, currentAreaCode:Ljava/lang/String;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v10, 0x2

    if-ge v9, v10, :cond_3

    :cond_2
    move-object v7, p1

    .line 916
    .end local p1
    .restart local v7       #number:Ljava/lang/String;
    goto :goto_1

    .line 920
    .end local v7           #number:Ljava/lang/String;
    .restart local p1
    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "autoip_prefix"

    invoke-static {p0}, Lmiui/telephony/PhoneNumberUtils;->getDefaultIpBySim(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v10, v11}, Lmiui/provider/ExtraSettings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 924
    .local v3, ipPrefix:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_4

    move-object v7, p1

    .line 925
    .end local p1
    .restart local v7       #number:Ljava/lang/String;
    goto :goto_1

    .line 927
    .end local v7           #number:Ljava/lang/String;
    .restart local p1
    :cond_4
    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    move-object v7, p1

    .line 929
    .end local p1
    .restart local v7       #number:Ljava/lang/String;
    goto :goto_1

    .line 932
    .end local v7           #number:Ljava/lang/String;
    .restart local p1
    :cond_5
    invoke-static {p1}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->parse(Ljava/lang/CharSequence;)Lmiui/telephony/PhoneNumberUtils$PhoneNumber;

    move-result-object v8

    .line 933
    .local v8, pn:Lmiui/telephony/PhoneNumberUtils$PhoneNumber;
    invoke-virtual {v8}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getPrefix()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_8

    .line 934
    invoke-virtual {v8, p0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getLocationAreaCode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 935
    .local v0, areaCode:Ljava/lang/String;
    const-string v9, "0"

    invoke-virtual {v1, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_9

    const/4 v9, 0x1

    invoke-virtual {v1, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 938
    .local v2, id:Ljava/lang/String;
    :goto_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "button_add_zero_prefix"

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-eqz v9, :cond_a

    const/4 v4, 0x1

    .line 942
    .local v4, isAddZeroPrefixEnabled:Z
    :goto_3
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "button_auto_ip_support_local_numbers"

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-eqz v9, :cond_b

    const/4 v6, 0x1

    .line 946
    .local v6, isSupportLocalNumbers:Z
    :goto_4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_8

    if-nez v6, :cond_6

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_8

    .line 947
    :cond_6
    const-string v9, "+86"

    invoke-virtual {p1, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_d

    .line 949
    invoke-virtual {v8}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getAreaCode()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-gtz v9, :cond_7

    invoke-virtual {v8}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->isNormalMobileNumber()Z

    move-result v9

    if-eqz v9, :cond_c

    if-eqz v4, :cond_c

    .line 950
    :cond_7
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "0"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x3

    invoke-virtual {p1, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 971
    .end local v0           #areaCode:Ljava/lang/String;
    .end local v2           #id:Ljava/lang/String;
    .end local v4           #isAddZeroPrefixEnabled:Z
    .end local v6           #isSupportLocalNumbers:Z
    :cond_8
    :goto_5
    invoke-virtual {v8}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->recycle()V

    move-object v7, p1

    .line 973
    .end local p1
    .restart local v7       #number:Ljava/lang/String;
    goto/16 :goto_1

    .end local v7           #number:Ljava/lang/String;
    .restart local v0       #areaCode:Ljava/lang/String;
    .restart local p1
    :cond_9
    move-object v2, v1

    .line 935
    goto :goto_2

    .line 938
    .restart local v2       #id:Ljava/lang/String;
    :cond_a
    const/4 v4, 0x0

    goto :goto_3

    .line 942
    .restart local v4       #isAddZeroPrefixEnabled:Z
    :cond_b
    const/4 v6, 0x0

    goto :goto_4

    .line 952
    .restart local v6       #isSupportLocalNumbers:Z
    :cond_c
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x3

    invoke-virtual {p1, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_5

    .line 954
    :cond_d
    const-string v9, "0086"

    invoke-virtual {p1, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_10

    .line 956
    invoke-virtual {v8}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getAreaCode()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-gtz v9, :cond_e

    invoke-virtual {v8}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->isNormalMobileNumber()Z

    move-result v9

    if-eqz v9, :cond_f

    if-eqz v4, :cond_f

    .line 957
    :cond_e
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "0"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x4

    invoke-virtual {p1, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_5

    .line 959
    :cond_f
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x4

    invoke-virtual {p1, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_5

    .line 962
    :cond_10
    invoke-virtual {v8}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->isNormalMobileNumber()Z

    move-result v9

    if-eqz v9, :cond_11

    if-eqz v4, :cond_11

    .line 963
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "0"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_5

    .line 966
    :cond_11
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "+"

    const-string v11, "00"

    invoke-virtual {p1, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_5
.end method

.method public static formatNumberWithoutIp(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "context"
    .parameter "number"

    .prologue
    const/4 v1, 0x0

    .line 988
    if-nez p1, :cond_0

    move-object v2, p1

    .line 1011
    .end local p1
    .local v2, number:Ljava/lang/String;
    :goto_0
    return-object v2

    .line 991
    .end local v2           #number:Ljava/lang/String;
    .restart local p1
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "button_autoip"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_1

    const/4 v1, 0x1

    .line 994
    .local v1, isAutoIpEnabled:Z
    :cond_1
    if-nez v1, :cond_2

    move-object v2, p1

    .line 996
    .end local p1
    .restart local v2       #number:Ljava/lang/String;
    goto :goto_0

    .line 999
    .end local v2           #number:Ljava/lang/String;
    .restart local p1
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "autoip_prefix"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1002
    .local v0, ipPrefix:Ljava/lang/String;
    if-nez v0, :cond_3

    .line 1003
    invoke-static {p0}, Lmiui/telephony/PhoneNumberUtils;->getDefaultIpBySim(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 1005
    :cond_3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    move-object v2, p1

    .line 1006
    .end local p1
    .restart local v2       #number:Ljava/lang/String;
    goto :goto_0

    .line 1008
    .end local v2           #number:Ljava/lang/String;
    .restart local p1
    :cond_4
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1009
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :cond_5
    move-object v2, p1

    .line 1011
    .end local p1
    .restart local v2       #number:Ljava/lang/String;
    goto :goto_0
.end method

.method public static getDefaultIpBySim(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "context"

    .prologue
    .line 877
    const-string/jumbo v2, "phone"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 879
    .local v1, telephonyManager:Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    .line 880
    .local v0, simOperator:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/telephony/gsm/MiuiSpnOverride;->getInstance()Lcom/android/internal/telephony/gsm/MiuiSpnOverride;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/gsm/MiuiSpnOverride;->getEquivalentOperatorNumeric(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 881
    const-string v2, "46000"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 882
    const-string v2, "17951"

    .line 888
    :goto_0
    return-object v2

    .line 883
    :cond_0
    const-string v2, "46001"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 884
    const-string v2, "17911"

    goto :goto_0

    .line 885
    :cond_1
    const-string v2, "46003"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 886
    const-string v2, "17901"

    goto :goto_0

    .line 888
    :cond_2
    const-string v2, ""

    goto :goto_0
.end method

.method private static indexOfLastNetworkChar(Ljava/lang/String;)I
    .locals 5
    .parameter "a"

    .prologue
    .line 76
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 78
    .local v0, origLength:I
    const/16 v4, 0x2c

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 79
    .local v1, pIndex:I
    const/16 v4, 0x3b

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 81
    .local v3, wIndex:I
    invoke-static {v1, v3}, Lmiui/telephony/PhoneNumberUtils;->minPositive(II)I

    move-result v2

    .line 83
    .local v2, trimIndex:I
    if-gez v2, :cond_0

    .line 84
    add-int/lit8 v4, v0, -0x1

    .line 86
    :goto_0
    return v4

    :cond_0
    add-int/lit8 v4, v2, -0x1

    goto :goto_0
.end method

.method private static isAlnum(C)Z
    .locals 1
    .parameter "ch"

    .prologue
    .line 1142
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-le p0, v0, :cond_2

    :cond_0
    const/16 v0, 0x61

    if-lt p0, v0, :cond_1

    const/16 v0, 0x7a

    if-le p0, v0, :cond_2

    :cond_1
    const/16 v0, 0x41

    if-lt p0, v0, :cond_3

    const/16 v0, 0x5a

    if-gt p0, v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isChinaMobileNumber(Ljava/lang/String;)Z
    .locals 5
    .parameter "phoneNumber"

    .prologue
    const/16 v4, 0xb

    const/4 v1, 0x0

    .line 133
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v2, v4, :cond_1

    .line 147
    :cond_0
    :goto_0
    return v1

    .line 137
    :cond_1
    invoke-static {p0}, Lmiui/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 139
    .local v0, number:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const-string v3, "86"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0xb

    if-lt v2, v3, :cond_2

    .line 140
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0xb

    const-string v2, "86"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "861"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0

    .line 142
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v2, v4, :cond_0

    .line 143
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0xb

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method public static isChineseOperator(Ljava/lang/String;)Z
    .locals 1
    .parameter "operator"

    .prologue
    .line 174
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "460"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isDialable(Ljava/lang/String;)Z
    .locals 3
    .parameter "address"

    .prologue
    .line 120
    const/4 v1, 0x0

    .local v1, i:I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .local v0, count:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 121
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lmiui/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v2

    if-nez v2, :cond_0

    .line 122
    const/4 v2, 0x0

    .line 125
    :goto_1
    return v2

    .line 120
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 125
    :cond_1
    const/4 v2, 0x1

    goto :goto_1
.end method

.method public static isMiuiEmergencyNumber(Ljava/lang/String;Z)Z
    .locals 7
    .parameter "number"
    .parameter "useExactMatch"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1050
    if-nez p0, :cond_1

    .line 1065
    :cond_0
    :goto_0
    return v4

    .line 1053
    :cond_1
    sget-object v0, Lmiui/telephony/PhoneNumberUtils;->EMERGENCY_NUMBERS:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 1054
    .local v1, emergencyNum:Ljava/lang/String;
    if-eqz p1, :cond_2

    .line 1055
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    move v4, v5

    .line 1056
    goto :goto_0

    .line 1059
    :cond_2
    invoke-virtual {v1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    move v4, v5

    .line 1060
    goto :goto_0

    .line 1053
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public static isServiceNumber(Ljava/lang/String;)Z
    .locals 2
    .parameter "phoneNumber"

    .prologue
    .line 169
    invoke-static {p0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->parse(Ljava/lang/CharSequence;)Lmiui/telephony/PhoneNumberUtils$PhoneNumber;

    move-result-object v0

    .line 170
    .local v0, pn:Lmiui/telephony/PhoneNumberUtils$PhoneNumber;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->isServiceNumber()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static maskPhoneNumber(Ljava/lang/String;I)Ljava/lang/String;
    .locals 8
    .parameter "phoneNumber"
    .parameter "cutMode"

    .prologue
    .line 1089
    if-nez p0, :cond_0

    .line 1090
    const-string v6, ""

    .line 1138
    :goto_0
    return-object v6

    .line 1092
    :cond_0
    const/4 v1, 0x0

    .line 1093
    .local v1, alnumCount:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v4, v6, :cond_2

    .line 1094
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Lmiui/telephony/PhoneNumberUtils;->isAlnum(C)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1095
    add-int/lit8 v1, v1, 0x1

    .line 1093
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1099
    :cond_2
    const/4 v2, 0x0

    .line 1100
    .local v2, cutLength:I
    const/4 v6, 0x7

    if-ge v1, v6, :cond_3

    .line 1101
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, p0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 1102
    :cond_3
    const/16 v6, 0xb

    if-ge v1, v6, :cond_4

    .line 1103
    const/4 v2, 0x2

    .line 1108
    :goto_2
    packed-switch p1, :pswitch_data_0

    .line 1119
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "Invalid cut mode"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1105
    :cond_4
    const/4 v2, 0x3

    goto :goto_2

    .line 1110
    :pswitch_0
    const/4 v3, 0x0

    .line 1122
    .local v3, cutStart:I
    :goto_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 1123
    .local v5, result:Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .line 1124
    .local v0, addedAlnumCount:I
    const/4 v4, 0x0

    :goto_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v4, v6, :cond_8

    .line 1125
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Lmiui/telephony/PhoneNumberUtils;->isAlnum(C)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 1126
    if-lt v0, v3, :cond_5

    if-gtz v2, :cond_6

    .line 1127
    :cond_5
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1132
    :goto_5
    add-int/lit8 v0, v0, 0x1

    .line 1124
    :goto_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 1113
    .end local v0           #addedAlnumCount:I
    .end local v3           #cutStart:I
    .end local v5           #result:Ljava/lang/StringBuilder;
    :pswitch_1
    sub-int v3, v1, v2

    .line 1114
    .restart local v3       #cutStart:I
    goto :goto_3

    .line 1116
    .end local v3           #cutStart:I
    :pswitch_2
    sub-int v6, v1, v2

    div-int/lit8 v3, v6, 0x2

    .line 1117
    .restart local v3       #cutStart:I
    goto :goto_3

    .line 1129
    .restart local v0       #addedAlnumCount:I
    .restart local v5       #result:Ljava/lang/StringBuilder;
    :cond_6
    const/16 v6, 0x3f

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1130
    add-int/lit8 v2, v2, -0x1

    goto :goto_5

    .line 1134
    :cond_7
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_6

    .line 1138
    :cond_8
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 1108
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static minPositive(II)I
    .locals 0
    .parameter "a"
    .parameter "b"

    .prologue
    .line 54
    if-ltz p0, :cond_2

    if-ltz p1, :cond_2

    .line 55
    if-ge p0, p1, :cond_1

    .line 61
    .end local p0
    :cond_0
    :goto_0
    return p0

    .restart local p0
    :cond_1
    move p0, p1

    .line 55
    goto :goto_0

    .line 56
    :cond_2
    if-gez p0, :cond_0

    .line 58
    if-ltz p1, :cond_3

    move p0, p1

    .line 59
    goto :goto_0

    .line 61
    :cond_3
    const/4 p0, -0x1

    goto :goto_0
.end method

.method public static parseNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "number"

    .prologue
    .line 1069
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    .line 1070
    invoke-static {p0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->parse(Ljava/lang/CharSequence;)Lmiui/telephony/PhoneNumberUtils$PhoneNumber;

    move-result-object v0

    .line 1071
    .local v0, pn:Lmiui/telephony/PhoneNumberUtils$PhoneNumber;
    if-eqz v0, :cond_0

    .line 1072
    invoke-virtual {v0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getEffectiveNumber()Ljava/lang/String;

    move-result-object p0

    .line 1075
    .end local v0           #pn:Lmiui/telephony/PhoneNumberUtils$PhoneNumber;
    :cond_0
    return-object p0
.end method

.method public static parseTelocationString(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 1
    .parameter "context"
    .parameter "phoneNumber"

    .prologue
    .line 871
    invoke-static {p0, p1}, Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler;->queryTelocation(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static queryTelocationStringAsync(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lmiui/telephony/PhoneNumberUtils$TelocationQueryListener;Landroid/content/Context;Ljava/lang/String;)V
    .locals 9
    .parameter "token"
    .parameter "cookie1"
    .parameter "cookie2"
    .parameter "cookie3"
    .parameter "cookie4"
    .parameter "listener"
    .parameter "context"
    .parameter "phoneNumber"

    .prologue
    .line 814
    invoke-virtual {p6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "enable_telocation"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 817
    invoke-static {}, Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler;->getInstance()Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler;

    move-result-object v0

    move v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    move-object/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler;->startQueryTelocationString(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lmiui/telephony/PhoneNumberUtils$TelocationQueryListener;Landroid/content/Context;Ljava/lang/String;)V

    .line 823
    :goto_0
    return-void

    .line 821
    :cond_0
    const/4 v5, 0x0

    move-object v0, p5

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-interface/range {v0 .. v5}, Lmiui/telephony/PhoneNumberUtils$TelocationQueryListener;->onComplete(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static queryTelocationStringAsync(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lmiui/telephony/PhoneNumberUtils$TelocationQueryListener;Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 9
    .parameter "token"
    .parameter "cookie1"
    .parameter "cookie2"
    .parameter "cookie3"
    .parameter "cookie4"
    .parameter "listener"
    .parameter "context"
    .parameter "phoneNumber"
    .parameter "enableTelocation"

    .prologue
    .line 843
    if-eqz p8, :cond_0

    .line 844
    invoke-static {}, Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler;->getInstance()Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler;

    move-result-object v0

    move v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    move-object/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler;->startQueryTelocationString(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lmiui/telephony/PhoneNumberUtils$TelocationQueryListener;Landroid/content/Context;Ljava/lang/String;)V

    .line 850
    :goto_0
    return-void

    .line 848
    :cond_0
    const/4 v5, 0x0

    move-object v0, p5

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-interface/range {v0 .. v5}, Lmiui/telephony/PhoneNumberUtils$TelocationQueryListener;->onComplete(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static removeDashesAndBlanks(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "phoneNumber"

    .prologue
    .line 1020
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1031
    .end local p0
    :goto_0
    return-object p0

    .line 1024
    .restart local p0
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1025
    .local v2, sb:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 1026
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1027
    .local v0, c:C
    const/16 v3, 0x20

    if-eq v0, v3, :cond_1

    const/16 v3, 0x2d

    if-eq v0, v3, :cond_1

    .line 1028
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1025
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1031
    .end local v0           #c:C
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static splitNetworkAndPostDialPortion(Ljava/lang/String;)[Ljava/lang/String;
    .locals 4
    .parameter "phoneNumber"

    .prologue
    const/4 v3, 0x0

    .line 151
    if-nez p0, :cond_0

    .line 152
    const/4 v1, 0x0

    .line 159
    :goto_0
    return-object v1

    .line 155
    :cond_0
    invoke-static {p0}, Lmiui/telephony/PhoneNumberUtils;->indexOfLastNetworkChar(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v0, v2, 0x1

    .line 156
    .local v0, networkEnd:I
    const/4 v2, 0x2

    new-array v1, v2, [Ljava/lang/String;

    .line 157
    .local v1, ret:[Ljava/lang/String;
    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    .line 158
    const/4 v3, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v0, v2, :cond_1

    const-string v2, ""

    :goto_1
    aput-object v2, v1, v3

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method public static stripSeparatorsAndCountryCode(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "phoneNumber"

    .prologue
    .line 36
    invoke-static {p0}, Lmiui/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 38
    .local v0, number:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 39
    const-string v1, "+86"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 40
    const-string v1, "+86"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 45
    :cond_0
    :goto_0
    return-object v0

    .line 41
    :cond_1
    const-string v1, "0086"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 42
    const-string v1, "0086"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

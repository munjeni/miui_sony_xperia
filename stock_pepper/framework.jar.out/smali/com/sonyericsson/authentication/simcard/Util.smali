.class public final Lcom/sonyericsson/authentication/simcard/Util;
.super Ljava/lang/Object;
.source "Util.java"


# static fields
.field private static final AKA_CLA_NOT_SUPPORTED_SW1:I = 0x6e

.field private static final AKA_CLA_NOT_SUPPORTED_SW2:I = 0x0

.field private static final AKA_INCORRECT_MAC:I = 0x62

.field private static final AKA_INCORRECT_PARAM1:I = 0x6a

.field private static final AKA_INCORRECT_PARAM2:I = 0x86

.field private static final AKA_KEY_FRESHNESS_FAILURE:I = 0x65

.field private static final AKA_NO_MEM_IN_EF:I = 0x67

.field private static final AKA_NO_MEM_SPACE:I = 0x66

.field private static final AKA_SECURITY_NOT_SUPPORTED:I = 0x64

.field private static final AUTHENTICATION_FAILURE:I = 0x98

.field private static final AUTH_CMD_SUCCESSFUL_1:I = 0x90

.field private static final AUTH_CMD_SUCCESSFUL_2:I = 0x9f

.field private static final AUTH_CMD_SUCCESSFUL_3:I = 0x61

.field public static final DBG:Z = false

.field private static final GSM_FILE_NOT_FOUND_ERR:I = 0x94

.field private static final GSM_INCORRECT_PARAM:I = 0x67

.field private static final GSM_MEM_ERR:I = 0x92

.field private static final GSM_TECH_PROBLEM:I = 0x6f

.field private static final GSM_UNKNOWN_INSTR:I = 0x6d

.field private static final GSM_WRONG_INSTR:I = 0x6e

.field private static final SIGNATURE:Landroid/content/pm/Signature; = null

.field private static final TAG:Ljava/lang/String; = "Utility"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 50
    new-instance v0, Landroid/content/pm/Signature;

    const-string v1, "30820265308201cea00302010202044a49db69300d06092a864886f70d01010505003077310b300906035504061302554b310f300d060355040813064c6f6e646f6e310f300d060355040713064c6f6e646f6e310f300d060355040a13064f72616e67653110300e060355040b13074f72616e6765203123302106035504030c1a4f72616e67655f416e64726f69645f4365727469666963617465301e170d3039303633303039333132315a170d3336313131353039333132315a3077310b300906035504061302554b310f300d060355040813064c6f6e646f6e310f300d060355040713064c6f6e646f6e310f300d060355040a13064f72616e67653110300e060355040b13074f72616e6765203123302106035504030c1a4f72616e67655f416e64726f69645f436572746966696361746530819f300d06092a864886f70d010101050003818d003081890281810088d595e05ad0d157936abd07e6dc1e7abd3a54a02cae6c61c41c298849e2fff46abc873523f7a6286aa435bc9714b01145a9468994d1138d4229e77cb253f50f8c3f60811efd6564582820b74590a57f11f7491a859bca64a2118b017dd136c12763add02aa478e300a87bfe43a2ee0502f95e98943ae4c45e1cf296e5b04e670203010001300d06092a864886f70d010105050003818100513949aa0d2f460aee3615d6fcebc69d0092b5db3fcee63d1e91e946991fa45c670e1941fec9b5404c8d7290e664cf9a1d5eff4ffa59e95efcf06ea0207720d7fb51eb18f3844fab0a87e47846495204daf6478ada19fb3a82c0bb11ddeebcd532ace9787565c3cf3d9fcc252659c9db7ca5b0115be03738b2ecb4ba501c883c"

    invoke-direct {v0, v1}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/sonyericsson/authentication/simcard/Util;->SIGNATURE:Landroid/content/pm/Signature;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static byteArrayToInteger([BI)I
    .locals 2
    .parameter "bytes"
    .parameter "start"

    .prologue
    .line 107
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x3

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method public static byteArrayToLong([BI)J
    .locals 8
    .parameter "bytes"
    .parameter "start"

    .prologue
    .line 119
    const/16 v0, 0x8

    .line 120
    .local v0, count:I
    const-wide/16 v2, 0x0

    .line 121
    .local v2, ret:J
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    const/16 v4, 0x8

    if-ge v1, v4, :cond_0

    .line 122
    add-int v4, p1, v1

    aget-byte v4, p0, v4

    int-to-long v4, v4

    const-wide/16 v6, 0xff

    and-long/2addr v4, v6

    rsub-int/lit8 v6, v1, 0x8

    add-int/lit8 v6, v6, -0x1

    mul-int/lit8 v6, v6, 0x8

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    .line 121
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 124
    :cond_0
    return-wide v2
.end method

.method public static byteArrayToString([BI)Ljava/lang/String;
    .locals 4
    .parameter "b"
    .parameter "start"

    .prologue
    .line 92
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 93
    .local v1, s:Ljava/lang/StringBuffer;
    move v0, p1

    .local v0, i:I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 94
    aget-byte v2, p0, v0

    and-int/lit16 v2, v2, 0xff

    add-int/lit16 v2, v2, 0x100

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 93
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 96
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static checkErrorTypeForAka([B)Ljava/lang/String;
    .locals 4
    .parameter "b"

    .prologue
    .line 215
    array-length v3, p0

    add-int/lit8 v3, v3, -0x2

    aget-byte v3, p0, v3

    and-int/lit16 v1, v3, 0xff

    .line 216
    .local v1, sw1:I
    array-length v3, p0

    add-int/lit8 v3, v3, -0x1

    aget-byte v3, p0, v3

    and-int/lit16 v2, v3, 0xff

    .line 217
    .local v2, sw2:I
    const/16 v3, 0x6e

    if-ne v1, v3, :cond_1

    if-nez v2, :cond_1

    .line 218
    const-string v0, "Class not supported"

    .line 246
    :cond_0
    :goto_0
    return-object v0

    .line 220
    :cond_1
    const/16 v3, 0x6a

    if-ne v1, v3, :cond_2

    const/16 v3, 0x86

    if-ne v2, v3, :cond_2

    .line 221
    const-string v0, "Incorrect parameters P1, P2"

    goto :goto_0

    .line 223
    :cond_2
    const/4 v0, 0x0

    .line 224
    .local v0, result:Ljava/lang/String;
    const/16 v3, 0x98

    if-ne v1, v3, :cond_0

    .line 225
    packed-switch v2, :pswitch_data_0

    .line 242
    :pswitch_0
    const-string v0, "Unknown Authentication error"

    goto :goto_0

    .line 227
    :pswitch_1
    const-string v0, "Authentication error, Incorrect MAC"

    .line 228
    goto :goto_0

    .line 230
    :pswitch_2
    const-string v0, "Authentication error, Security context not supported"

    .line 231
    goto :goto_0

    .line 233
    :pswitch_3
    const-string v0, "Key Freshness failure"

    .line 234
    goto :goto_0

    .line 236
    :pswitch_4
    const-string v0, "Authentication error, No memory space available"

    .line 237
    goto :goto_0

    .line 239
    :pswitch_5
    const-string v0, "Authentication error, No memory space available in EF"

    .line 240
    goto :goto_0

    .line 225
    :pswitch_data_0
    .packed-switch 0x62
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public static checkErrorTypeForGsm([B)Ljava/lang/String;
    .locals 3
    .parameter "b"

    .prologue
    .line 177
    array-length v2, p0

    add-int/lit8 v2, v2, -0x2

    aget-byte v2, p0, v2

    and-int/lit16 v1, v2, 0xff

    .line 178
    .local v1, status:I
    const/4 v0, 0x0

    .line 179
    .local v0, result:Ljava/lang/String;
    sparse-switch v1, :sswitch_data_0

    .line 202
    const-string v0, "Unknown error"

    .line 205
    :goto_0
    return-object v0

    .line 181
    :sswitch_0
    const-string v0, "Memory problem"

    .line 182
    goto :goto_0

    .line 184
    :sswitch_1
    const-string v0, "File ID not found else file inconsistent with command"

    .line 185
    goto :goto_0

    .line 187
    :sswitch_2
    const-string v0, "Authentication failed"

    .line 188
    goto :goto_0

    .line 190
    :sswitch_3
    const-string v0, "Incorrect parameter P3"

    .line 191
    goto :goto_0

    .line 193
    :sswitch_4
    const-string v0, "Unknown instruction code given in the command"

    .line 194
    goto :goto_0

    .line 196
    :sswitch_5
    const-string v0, "Wrong instruction given in the command"

    .line 197
    goto :goto_0

    .line 199
    :sswitch_6
    const-string v0, "Technical problem. Unknown error"

    .line 200
    goto :goto_0

    .line 179
    nop

    :sswitch_data_0
    .sparse-switch
        0x67 -> :sswitch_3
        0x6d -> :sswitch_4
        0x6e -> :sswitch_5
        0x6f -> :sswitch_6
        0x92 -> :sswitch_0
        0x94 -> :sswitch_1
        0x98 -> :sswitch_2
    .end sparse-switch
.end method

.method public static checkPermission(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 256
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.orange.permission.SIMCARD_AUTHENTICATION"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static checkStatus([B)Z
    .locals 2
    .parameter "b"

    .prologue
    .line 161
    array-length v1, p0

    add-int/lit8 v1, v1, -0x2

    aget-byte v1, p0, v1

    and-int/lit16 v0, v1, 0xff

    .line 162
    .local v0, sw1:I
    const/16 v1, 0x90

    if-eq v0, v1, :cond_0

    const/16 v1, 0x9f

    if-eq v0, v1, :cond_0

    const/16 v1, 0x61

    if-ne v0, v1, :cond_1

    .line 164
    :cond_0
    const/4 v1, 0x1

    .line 166
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static final intToByteArray(I)[B
    .locals 3
    .parameter "value"

    .prologue
    .line 133
    const/4 v0, 0x4

    new-array v0, v0, [B

    const/4 v1, 0x0

    ushr-int/lit8 v2, p0, 0x18

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x1

    ushr-int/lit8 v2, p0, 0x10

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x2

    ushr-int/lit8 v2, p0, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x3

    int-to-byte v2, p0

    aput-byte v2, v0, v1

    return-object v0
.end method

.method public static isConnectionAllowed(Landroid/content/Context;)Z
    .locals 11
    .parameter "context"

    .prologue
    const/4 v7, 0x0

    .line 270
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v3

    .line 272
    .local v3, packages:[Ljava/lang/String;
    if-eqz v3, :cond_0

    array-length v8, v3

    if-gtz v8, :cond_1

    .line 289
    :cond_0
    :goto_0
    return v7

    .line 276
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    const/4 v9, 0x0

    aget-object v9, v3, v9

    const/16 v10, 0x40

    invoke-virtual {v8, v9, v10}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    .line 278
    .local v4, pi:Landroid/content/pm/PackageInfo;
    iget-object v6, v4, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 279
    .local v6, signatures:[Landroid/content/pm/Signature;
    move-object v0, v6

    .local v0, arr$:[Landroid/content/pm/Signature;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1
    if-ge v1, v2, :cond_0

    aget-object v5, v0, v1

    .line 280
    .local v5, signature:Landroid/content/pm/Signature;
    sget-object v8, Lcom/sonyericsson/authentication/simcard/Util;->SIGNATURE:Landroid/content/pm/Signature;

    invoke-virtual {v8, v5}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    if-eqz v8, :cond_2

    .line 281
    const/4 v7, 0x1

    goto :goto_0

    .line 279
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 284
    .end local v0           #arr$:[Landroid/content/pm/Signature;
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v4           #pi:Landroid/content/pm/PackageInfo;
    .end local v5           #signature:Landroid/content/pm/Signature;
    .end local v6           #signatures:[Landroid/content/pm/Signature;
    :catch_0
    move-exception v8

    goto :goto_0
.end method

.method public static mergeArray([B[B)[B
    .locals 4
    .parameter "a"
    .parameter "b"

    .prologue
    .line 149
    array-length v1, p0

    array-length v2, p1

    add-int/2addr v1, v2

    invoke-static {p0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    .line 150
    .local v0, c:[B
    const/4 v1, 0x0

    array-length v2, p0

    array-length v3, p1

    invoke-static {p1, v1, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 151
    return-object v0
.end method

.method public static numericStringToByteArray(Ljava/lang/String;)[B
    .locals 4
    .parameter "s"

    .prologue
    .line 77
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    new-array v0, v2, [B

    .line 78
    .local v0, b:[B
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 79
    mul-int/lit8 v2, v1, 0x2

    mul-int/lit8 v3, v1, 0x2

    add-int/lit8 v3, v3, 0x2

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 78
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 81
    :cond_0
    return-object v0
.end method

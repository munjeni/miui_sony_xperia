.class public Landroid/security/Credentials;
.super Ljava/lang/Object;
.source "Credentials.java"


# static fields
.field public static final CA_CERTIFICATE:Ljava/lang/String; = "CACERT_"

.field public static final CERTIFICATE:Ljava/lang/String; = "CERT"

.field public static final EXTENSION_CER:Ljava/lang/String; = ".cer"

.field public static final EXTENSION_CRT:Ljava/lang/String; = ".crt"

.field public static final EXTENSION_P12:Ljava/lang/String; = ".p12"

.field public static final EXTENSION_PFX:Ljava/lang/String; = ".pfx"

.field public static final EXTRA_PRIVATE_KEY:Ljava/lang/String; = "PKEY"

.field public static final EXTRA_PUBLIC_KEY:Ljava/lang/String; = "KEY"

.field public static final INSTALL_ACTION:Ljava/lang/String; = "android.credentials.INSTALL"

.field public static final INSTALL_ACTION_WAPI:Ljava/lang/String; = "com.sonyericsson.credentials.INSTALL_WAPI"

.field private static final LOGTAG:Ljava/lang/String; = "Credentials"

.field public static final UNLOCK_ACTION:Ljava/lang/String; = "com.android.credentials.UNLOCK"

.field public static final USER_CERTIFICATE:Ljava/lang/String; = "USRCERT_"

.field public static final USER_PRIVATE_KEY:Ljava/lang/String; = "USRPKEY_"

.field public static final VPN:Ljava/lang/String; = "VPN_"

.field public static final WAPI_AS_CERTIFICATE:Ljava/lang/String; = "WAPIASCERT_"

.field public static final WAPI_USER_CERTIFICATE:Ljava/lang/String; = "WAPIUSRCERT_"

.field public static final WAPI_USER_PRIVATE_KEY:Ljava/lang/String; = "WAPIUSRPKEY_"

.field public static final WIFI:Ljava/lang/String; = "WIFI_"

.field private static singleton:Landroid/security/Credentials;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertFromPem([B)Ljava/util/List;
    .locals 6
    .parameter "bytes"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 114
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 115
    .local v0, bai:Ljava/io/ByteArrayInputStream;
    new-instance v3, Ljava/io/InputStreamReader;

    sget-object v5, Ljava/nio/charset/Charsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v3, v0, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 116
    .local v3, reader:Ljava/io/Reader;
    new-instance v2, Lcom/android/org/bouncycastle/openssl/PEMReader;

    invoke-direct {v2, v3}, Lcom/android/org/bouncycastle/openssl/PEMReader;-><init>(Ljava/io/Reader;)V

    .line 118
    .local v2, pr:Lcom/android/org/bouncycastle/openssl/PEMReader;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 120
    .local v4, result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Object;>;"
    :goto_0
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/openssl/PEMReader;->readObject()Ljava/lang/Object;

    move-result-object v1

    .local v1, o:Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 121
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 123
    :cond_0
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/openssl/PEMReader;->close()V

    .line 124
    return-object v4
.end method

.method public static varargs convertToPem([Ljava/lang/Object;)[B
    .locals 8
    .parameter "objects"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 99
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 100
    .local v1, bao:Ljava/io/ByteArrayOutputStream;
    new-instance v6, Ljava/io/OutputStreamWriter;

    sget-object v7, Ljava/nio/charset/Charsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v6, v1, v7}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    .line 101
    .local v6, writer:Ljava/io/Writer;
    new-instance v5, Lcom/android/org/bouncycastle/openssl/PEMWriter;

    invoke-direct {v5, v6}, Lcom/android/org/bouncycastle/openssl/PEMWriter;-><init>(Ljava/io/Writer;)V

    .line 102
    .local v5, pw:Lcom/android/org/bouncycastle/openssl/PEMWriter;
    move-object v0, p0

    .local v0, arr$:[Ljava/lang/Object;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    .line 103
    .local v4, o:Ljava/lang/Object;
    invoke-virtual {v5, v4}, Lcom/android/org/bouncycastle/openssl/PEMWriter;->writeObject(Ljava/lang/Object;)V

    .line 102
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 105
    .end local v4           #o:Ljava/lang/Object;
    :cond_0
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/openssl/PEMWriter;->close()V

    .line 106
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    return-object v7
.end method

.method public static getInstance()Landroid/security/Credentials;
    .locals 1

    .prologue
    .line 130
    sget-object v0, Landroid/security/Credentials;->singleton:Landroid/security/Credentials;

    if-nez v0, :cond_0

    .line 131
    new-instance v0, Landroid/security/Credentials;

    invoke-direct {v0}, Landroid/security/Credentials;-><init>()V

    sput-object v0, Landroid/security/Credentials;->singleton:Landroid/security/Credentials;

    .line 133
    :cond_0
    sget-object v0, Landroid/security/Credentials;->singleton:Landroid/security/Credentials;

    return-object v0
.end method


# virtual methods
.method public install(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 147
    :try_start_0
    invoke-static {}, Landroid/security/KeyChain;->createInstallIntent()Landroid/content/Intent;

    move-result-object v1

    .line 148
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    .end local v1           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 149
    :catch_0
    move-exception v0

    .line 150
    .local v0, e:Landroid/content/ActivityNotFoundException;
    const-string v2, "Credentials"

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public install(Landroid/content/Context;Ljava/lang/String;[B)V
    .locals 4
    .parameter "context"
    .parameter "type"
    .parameter "value"

    .prologue
    .line 167
    :try_start_0
    invoke-static {}, Landroid/security/KeyChain;->createInstallIntent()Landroid/content/Intent;

    move-result-object v1

    .line 168
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 169
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 173
    .end local v1           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 170
    :catch_0
    move-exception v0

    .line 171
    .local v0, e:Landroid/content/ActivityNotFoundException;
    const-string v2, "Credentials"

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public install(Landroid/content/Context;Ljava/security/KeyPair;)V
    .locals 4
    .parameter "context"
    .parameter "pair"

    .prologue
    .line 156
    :try_start_0
    invoke-static {}, Landroid/security/KeyChain;->createInstallIntent()Landroid/content/Intent;

    move-result-object v1

    .line 157
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "PKEY"

    invoke-virtual {p2}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v3

    invoke-interface {v3}, Ljava/security/PrivateKey;->getEncoded()[B

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 158
    const-string v2, "KEY"

    invoke-virtual {p2}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v3

    invoke-interface {v3}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 159
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    .end local v1           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 160
    :catch_0
    move-exception v0

    .line 161
    .local v0, e:Landroid/content/ActivityNotFoundException;
    const-string v2, "Credentials"

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public unlock(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 138
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.credentials.UNLOCK"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 139
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    .end local v1           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 140
    :catch_0
    move-exception v0

    .line 141
    .local v0, e:Landroid/content/ActivityNotFoundException;
    const-string v2, "Credentials"

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

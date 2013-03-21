.class public final Landroid/webkit/URLUtil;
.super Ljava/lang/Object;
.source "URLUtil.java"


# static fields
.field static final ASSET_BASE:Ljava/lang/String; = "file:///android_asset/"

.field private static final CONTENT_DISPOSITION_PATTERN:Ljava/util/regex/Pattern; = null

.field static final FILE_BASE:Ljava/lang/String; = "file://"

.field private static final LOGTAG:Ljava/lang/String; = "webkit"

.field static final PROXY_BASE:Ljava/lang/String; = "file:///cookieless_proxy/"

.field static final RESOURCE_BASE:Ljava/lang/String; = "file:///android_res/"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 405
    const-string v0, "attachment;\\s*filename\\s*=\\s*(\"?)([^\"]*)\\1\\s*$"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/webkit/URLUtil;->CONTENT_DISPOSITION_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static composeSearchUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "inQuery"
    .parameter "template"
    .parameter "queryPlaceHolder"

    .prologue
    const/4 v4, 0x0

    .line 101
    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 102
    .local v2, placeHolderIndex:I
    if-gez v2, :cond_0

    .line 120
    :goto_0
    return-object v4

    .line 107
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 108
    .local v0, buffer:Ljava/lang/StringBuilder;
    const/4 v5, 0x0

    invoke-virtual {p1, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    :try_start_0
    const-string/jumbo v5, "utf-8"

    invoke-static {p0, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 112
    .local v3, query:Ljava/lang/String;
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v4, v2

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 113
    .end local v3           #query:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 114
    .local v1, ex:Ljava/io/UnsupportedEncodingException;
    goto :goto_0
.end method

.method public static decode([B)[B
    .locals 9
    .parameter "url"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 124
    array-length v6, p0

    if-nez v6, :cond_0

    .line 125
    new-array v2, v8, [B

    .line 147
    :goto_0
    return-object v2

    .line 129
    :cond_0
    array-length v6, p0

    new-array v5, v6, [B

    .line 131
    .local v5, tempData:[B
    const/4 v3, 0x0

    .line 132
    .local v3, tempCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v6, p0

    if-ge v1, v6, :cond_3

    .line 133
    aget-byte v0, p0, v1

    .line 134
    .local v0, b:B
    const/16 v6, 0x25

    if-ne v0, v6, :cond_1

    .line 135
    array-length v6, p0

    sub-int/2addr v6, v1

    const/4 v7, 0x2

    if-le v6, v7, :cond_2

    .line 136
    add-int/lit8 v6, v1, 0x1

    aget-byte v6, p0, v6

    invoke-static {v6}, Landroid/webkit/URLUtil;->parseHex(B)I

    move-result v6

    mul-int/lit8 v6, v6, 0x10

    add-int/lit8 v7, v1, 0x2

    aget-byte v7, p0, v7

    invoke-static {v7}, Landroid/webkit/URLUtil;->parseHex(B)I

    move-result v7

    add-int/2addr v6, v7

    int-to-byte v0, v6

    .line 138
    add-int/lit8 v1, v1, 0x2

    .line 143
    :cond_1
    add-int/lit8 v4, v3, 0x1

    .end local v3           #tempCount:I
    .local v4, tempCount:I
    aput-byte v0, v5, v3

    .line 132
    add-int/lit8 v1, v1, 0x1

    move v3, v4

    .end local v4           #tempCount:I
    .restart local v3       #tempCount:I
    goto :goto_1

    .line 140
    :cond_2
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "Invalid format"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 145
    .end local v0           #b:B
    :cond_3
    new-array v2, v3, [B

    .line 146
    .local v2, retData:[B
    invoke-static {v5, v8, v2, v8, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method private static decodeSingleByteUtf8(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "data"

    .prologue
    .line 441
    if-nez p0, :cond_0

    .line 442
    const/4 p0, 0x0

    .line 455
    .end local p0
    .local v0, bytes:[B
    .local v1, charsetDecoder:Ljava/nio/charset/CharsetDecoder;
    .local v3, i:I
    :goto_0
    return-object p0

    .line 444
    .end local v0           #bytes:[B
    .end local v1           #charsetDecoder:Ljava/nio/charset/CharsetDecoder;
    .end local v3           #i:I
    .restart local p0
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    new-array v0, v4, [B

    .line 445
    .restart local v0       #bytes:[B
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 446
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    .line 445
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 448
    :cond_1
    const-string/jumbo v4, "utf-8"

    invoke-static {v4}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v4

    invoke-virtual {v4}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v1

    .line 449
    .restart local v1       #charsetDecoder:Ljava/nio/charset/CharsetDecoder;
    sget-object v4, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {v1, v4}, Ljava/nio/charset/CharsetDecoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    .line 451
    :try_start_0
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;
    :try_end_0
    .catch Ljava/nio/charset/CharacterCodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 455
    new-instance p0, Ljava/lang/String;

    .end local p0
    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([B)V

    goto :goto_0

    .line 452
    .restart local p0
    :catch_0
    move-exception v2

    .line 453
    .local v2, e:Ljava/nio/charset/CharacterCodingException;
    goto :goto_0
.end method

.method public static final guessFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .parameter "url"
    .parameter "contentDisposition"
    .parameter "mimeType"

    .prologue
    const/16 v11, 0x2f

    const/16 v9, 0x2e

    const/4 v10, 0x0

    .line 317
    const/4 v3, 0x0

    .line 318
    .local v3, filename:Ljava/lang/String;
    const/4 v2, 0x0

    .line 321
    .local v2, extension:Ljava/lang/String;
    if-nez v3, :cond_1

    if-eqz p1, :cond_1

    .line 322
    invoke-static {p1}, Landroid/webkit/URLUtil;->parseContentDisposition(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 323
    if-eqz v3, :cond_1

    .line 324
    invoke-virtual {v3, v11}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v8

    add-int/lit8 v4, v8, 0x1

    .line 325
    .local v4, index:I
    if-lez v4, :cond_0

    .line 326
    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 333
    :cond_0
    invoke-static {v3}, Landroid/webkit/URLUtil;->decodeSingleByteUtf8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 338
    .end local v4           #index:I
    :cond_1
    if-nez v3, :cond_3

    .line 339
    invoke-static {p0}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 340
    .local v0, decodedUrl:Ljava/lang/String;
    if-eqz v0, :cond_3

    .line 341
    const/16 v8, 0x3f

    invoke-virtual {v0, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    .line 343
    .local v6, queryIndex:I
    if-lez v6, :cond_2

    .line 344
    invoke-virtual {v0, v10, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 346
    :cond_2
    const-string v8, "/"

    invoke-virtual {v0, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 347
    invoke-virtual {v0, v11}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v8

    add-int/lit8 v4, v8, 0x1

    .line 348
    .restart local v4       #index:I
    if-lez v4, :cond_3

    .line 349
    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 356
    .end local v0           #decodedUrl:Ljava/lang/String;
    .end local v4           #index:I
    .end local v6           #queryIndex:I
    :cond_3
    if-nez v3, :cond_4

    .line 357
    const-string v3, "downloadfile"

    .line 362
    :cond_4
    invoke-virtual {v3, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 363
    .local v1, dotIndex:I
    if-gez v1, :cond_9

    .line 364
    if-eqz p2, :cond_5

    .line 365
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v8

    invoke-virtual {v8, p2}, Landroid/webkit/MimeTypeMap;->getExtensionFromMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 366
    if-eqz v2, :cond_5

    .line 367
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 370
    :cond_5
    if-nez v2, :cond_6

    .line 371
    if-eqz p2, :cond_8

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "text/"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 372
    const-string/jumbo v8, "text/html"

    invoke-virtual {p2, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 373
    const-string v2, ".html"

    .line 401
    :cond_6
    :goto_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    return-object v8

    .line 375
    :cond_7
    const-string v2, ".txt"

    goto :goto_0

    .line 378
    :cond_8
    const-string v2, ".bin"

    goto :goto_0

    .line 382
    :cond_9
    if-eqz p2, :cond_a

    .line 385
    invoke-virtual {v3, v9}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    .line 386
    .local v5, lastDotIndex:I
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v8

    add-int/lit8 v9, v5, 0x1

    invoke-virtual {v3, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 388
    .local v7, typeFromExt:Ljava/lang/String;
    if-eqz v7, :cond_a

    invoke-virtual {v7, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_a

    .line 389
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v8

    invoke-virtual {v8, p2}, Landroid/webkit/MimeTypeMap;->getExtensionFromMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 390
    if-eqz v2, :cond_a

    .line 391
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 395
    .end local v5           #lastDotIndex:I
    .end local v7           #typeFromExt:Ljava/lang/String;
    :cond_a
    if-nez v2, :cond_b

    .line 396
    invoke-virtual {v3, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 398
    :cond_b
    invoke-virtual {v3, v10, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public static guessUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "inUrl"

    .prologue
    .line 62
    move-object v1, p0

    .line 67
    .local v1, retVal:Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    .line 96
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .line 68
    .restart local p0
    :cond_1
    const-string v3, "about:"

    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 70
    const-string v3, "data:"

    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 72
    const-string v3, "file:"

    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 74
    const-string v3, "javascript:"

    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 77
    const-string v3, "."

    invoke-virtual {p0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 78
    const/4 v3, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 82
    :cond_2
    :try_start_0
    new-instance v2, Landroid/net/WebAddress;

    invoke-direct {v2, p0}, Landroid/net/WebAddress;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/net/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    .local v2, webAddress:Landroid/net/WebAddress;
    invoke-virtual {v2}, Landroid/net/WebAddress;->getHost()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x2e

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_3

    .line 94
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "www."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Landroid/net/WebAddress;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".com"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/net/WebAddress;->setHost(Ljava/lang/String;)V

    .line 96
    :cond_3
    invoke-virtual {v2}, Landroid/net/WebAddress;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 83
    .end local v2           #webAddress:Landroid/net/WebAddress;
    :catch_0
    move-exception v0

    .local v0, ex:Landroid/net/ParseException;
    move-object p0, v1

    .line 88
    goto :goto_0
.end method

.method public static isAboutUrl(Ljava/lang/String;)Z
    .locals 1
    .parameter "url"

    .prologue
    .line 222
    if-eqz p0, :cond_0

    const-string v0, "about:"

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

.method public static isAssetUrl(Ljava/lang/String;)Z
    .locals 1
    .parameter "url"

    .prologue
    .line 188
    if-eqz p0, :cond_0

    const-string v0, "file:///android_asset/"

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

.method public static isContentUrl(Ljava/lang/String;)Z
    .locals 1
    .parameter "url"

    .prologue
    .line 271
    if-eqz p0, :cond_0

    const-string v0, "content:"

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

.method public static isCookielessProxyUrl(Ljava/lang/String;)Z
    .locals 1
    .parameter "url"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 206
    if-eqz p0, :cond_0

    const-string v0, "file:///cookieless_proxy/"

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

.method public static isDataUrl(Ljava/lang/String;)Z
    .locals 1
    .parameter "url"

    .prologue
    .line 229
    if-eqz p0, :cond_0

    const-string v0, "data:"

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

.method public static isFileUrl(Ljava/lang/String;)Z
    .locals 1
    .parameter "url"

    .prologue
    .line 213
    if-eqz p0, :cond_0

    const-string v0, "file://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "file:///android_asset/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "file:///cookieless_proxy/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isHttpUrl(Ljava/lang/String;)Z
    .locals 3
    .parameter "url"

    .prologue
    const/4 v0, 0x0

    .line 243
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x6

    if-le v1, v2, :cond_0

    const/4 v1, 0x7

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v2, "http://"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isHttpsUrl(Ljava/lang/String;)Z
    .locals 3
    .parameter "url"

    .prologue
    const/4 v0, 0x0

    .line 252
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x7

    if-le v1, v2, :cond_0

    const/16 v1, 0x8

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v2, "https://"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isJavaScriptUrl(Ljava/lang/String;)Z
    .locals 1
    .parameter "url"

    .prologue
    .line 236
    if-eqz p0, :cond_0

    const-string v0, "javascript:"

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

.method public static isNetworkUrl(Ljava/lang/String;)Z
    .locals 2
    .parameter "url"

    .prologue
    const/4 v0, 0x0

    .line 261
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 264
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {p0}, Landroid/webkit/URLUtil;->isHttpUrl(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {p0}, Landroid/webkit/URLUtil;->isHttpsUrl(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isResourceUrl(Ljava/lang/String;)Z
    .locals 1
    .parameter "url"

    .prologue
    .line 196
    if-eqz p0, :cond_0

    const-string v0, "file:///android_res/"

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

.method public static isValidUrl(Ljava/lang/String;)Z
    .locals 2
    .parameter "url"

    .prologue
    const/4 v0, 0x0

    .line 278
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 282
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {p0}, Landroid/webkit/URLUtil;->isAssetUrl(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {p0}, Landroid/webkit/URLUtil;->isResourceUrl(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {p0}, Landroid/webkit/URLUtil;->isFileUrl(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {p0}, Landroid/webkit/URLUtil;->isAboutUrl(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {p0}, Landroid/webkit/URLUtil;->isHttpUrl(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {p0}, Landroid/webkit/URLUtil;->isHttpsUrl(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {p0}, Landroid/webkit/URLUtil;->isJavaScriptUrl(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {p0}, Landroid/webkit/URLUtil;->isContentUrl(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static parseContentDisposition(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "contentDisposition"

    .prologue
    .line 420
    :try_start_0
    sget-object v1, Landroid/webkit/URLUtil;->CONTENT_DISPOSITION_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 421
    .local v0, m:Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 422
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 427
    .end local v0           #m:Ljava/util/regex/Matcher;
    :goto_0
    return-object v1

    .line 424
    :catch_0
    move-exception v1

    .line 427
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static parseHex(B)I
    .locals 3
    .parameter "b"

    .prologue
    .line 177
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    add-int/lit8 v0, p0, -0x30

    .line 179
    :goto_0
    return v0

    .line 178
    :cond_0
    const/16 v0, 0x41

    if-lt p0, v0, :cond_1

    const/16 v0, 0x46

    if-gt p0, v0, :cond_1

    add-int/lit8 v0, p0, -0x41

    add-int/lit8 v0, v0, 0xa

    goto :goto_0

    .line 179
    :cond_1
    const/16 v0, 0x61

    if-lt p0, v0, :cond_2

    const/16 v0, 0x66

    if-gt p0, v0, :cond_2

    add-int/lit8 v0, p0, -0x61

    add-int/lit8 v0, v0, 0xa

    goto :goto_0

    .line 181
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid hex char \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static stripAnchor(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "url"

    .prologue
    .line 296
    const/16 v1, 0x23

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 297
    .local v0, anchorIndex:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 298
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 300
    .end local p0
    :cond_0
    return-object p0
.end method

.method static verifyURLEncoding(Ljava/lang/String;)Z
    .locals 6
    .parameter "url"

    .prologue
    const/16 v5, 0x25

    const/4 v3, 0x0

    .line 154
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 155
    .local v0, count:I
    if-nez v0, :cond_1

    .line 173
    :cond_0
    :goto_0
    return v3

    .line 159
    :cond_1
    invoke-virtual {p0, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 160
    .local v2, index:I
    :goto_1
    if-ltz v2, :cond_2

    if-ge v2, v0, :cond_2

    .line 161
    add-int/lit8 v4, v0, -0x2

    if-ge v2, v4, :cond_0

    .line 163
    add-int/lit8 v2, v2, 0x1

    :try_start_0
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    int-to-byte v4, v4

    invoke-static {v4}, Landroid/webkit/URLUtil;->parseHex(B)I

    .line 164
    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    int-to-byte v4, v4

    invoke-static {v4}, Landroid/webkit/URLUtil;->parseHex(B)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 171
    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p0, v5, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    goto :goto_1

    .line 165
    :catch_0
    move-exception v1

    .line 166
    .local v1, e:Ljava/lang/IllegalArgumentException;
    goto :goto_0

    .line 173
    .end local v1           #e:Ljava/lang/IllegalArgumentException;
    :cond_2
    const/4 v3, 0x1

    goto :goto_0
.end method

.class public Lcom/sonyericsson/customizedsettings/Util;
.super Ljava/lang/Object;
.source "Util.java"


# static fields
.field public static final DEFAULT_ENCODING:Ljava/lang/String; = "UTF-8"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static close(Ljava/io/InputStream;)V
    .locals 1
    .parameter "stream"

    .prologue
    .line 55
    if-eqz p0, :cond_0

    .line 57
    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    :cond_0
    :goto_0
    return-void

    .line 58
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static toInteger(Ljava/lang/String;)I
    .locals 2
    .parameter "stringValue"

    .prologue
    .line 39
    const/4 v0, 0x0

    .line 40
    .local v0, value:I
    if-eqz p0, :cond_0

    .line 42
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 46
    :cond_0
    :goto_0
    return v0

    .line 43
    :catch_0
    move-exception v1

    goto :goto_0
.end method

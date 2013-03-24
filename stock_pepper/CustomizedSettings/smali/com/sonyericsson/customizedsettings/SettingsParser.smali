.class public Lcom/sonyericsson/customizedsettings/SettingsParser;
.super Ljava/lang/Object;
.source "SettingsParser.java"


# static fields
.field private static final ATTR_NAME:Ljava/lang/String; = "name"

.field private static final ATTR_RUNTIME:Ljava/lang/String; = "runtime"

.field private static final ATTR_VERSION:Ljava/lang/String; = "version"

.field private static final TAG_SETTING:Ljava/lang/String; = "setting"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mReadTagVersion:I

.field private final mTagVersion:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .parameter "context"
    .parameter "tagVersion"

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const/4 v0, 0x0

    iput v0, p0, Lcom/sonyericsson/customizedsettings/SettingsParser;->mReadTagVersion:I

    .line 67
    iput-object p1, p0, Lcom/sonyericsson/customizedsettings/SettingsParser;->mContext:Landroid/content/Context;

    .line 68
    iput p2, p0, Lcom/sonyericsson/customizedsettings/SettingsParser;->mTagVersion:I

    .line 69
    return-void
.end method


# virtual methods
.method public getReadTagVersion()I
    .locals 1

    .prologue
    .line 119
    iget v0, p0, Lcom/sonyericsson/customizedsettings/SettingsParser;->mReadTagVersion:I

    return v0
.end method

.method public getSettingsToRead(I)Ljava/util/ArrayList;
    .locals 10
    .parameter "resource"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    .line 79
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 80
    .local v3, settingsToRead:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v6, p0, Lcom/sonyericsson/customizedsettings/SettingsParser;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    .line 81
    .local v1, parser:Landroid/content/res/XmlResourceParser;
    if-eqz v1, :cond_2

    .line 85
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v6

    if-eq v6, v9, :cond_3

    .line 87
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_0

    const-string v6, "setting"

    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 89
    const/4 v6, 0x0

    const-string v7, "name"

    invoke-interface {v1, v6, v7}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 90
    .local v4, thisSetting:Ljava/lang/String;
    const/4 v6, 0x0

    const-string v7, "version"

    const/4 v8, 0x0

    invoke-interface {v1, v6, v7, v8}, Landroid/content/res/XmlResourceParser;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v5

    .line 91
    .local v5, version:I
    const/4 v6, 0x0

    const-string v7, "runtime"

    const/4 v8, 0x1

    invoke-interface {v1, v6, v7, v8}, Landroid/content/res/XmlResourceParser;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    .line 92
    .local v2, runtime:Z
    if-eqz v4, :cond_0

    iget v6, p0, Lcom/sonyericsson/customizedsettings/SettingsParser;->mTagVersion:I

    if-gt v5, v6, :cond_1

    if-nez v2, :cond_0

    .line 93
    :cond_1
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    iget v6, p0, Lcom/sonyericsson/customizedsettings/SettingsParser;->mReadTagVersion:I

    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    move-result v6

    iput v6, p0, Lcom/sonyericsson/customizedsettings/SettingsParser;->mReadTagVersion:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 98
    .end local v2           #runtime:Z
    .end local v4           #thisSetting:Ljava/lang/String;
    .end local v5           #version:I
    :catch_0
    move-exception v0

    .line 99
    .local v0, e:Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_1
    const-string v6, "CustomizedSettings"

    const-string v7, "Parser Exception reading what values can be customized at Customized Settings"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 107
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    .line 111
    .end local v0           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :cond_2
    :goto_1
    return-object v3

    .line 107
    :cond_3
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_1

    .line 102
    :catch_1
    move-exception v0

    .line 103
    .local v0, e:Ljava/io/IOException;
    :try_start_2
    const-string v6, "CustomizedSettings"

    const-string v7, "IOException reading what values that can be customized at Customized Settings"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 107
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_1

    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v6

    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    throw v6
.end method

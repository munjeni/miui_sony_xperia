.class public Landroid/customization/CustomizedValues;
.super Ljava/lang/Object;
.source "CustomizedValues.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/customization/CustomizedValues$XmlParser;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "CustomizedValues"

.field private static final XML_CUSTOMIZATION_PATH:Ljava/lang/String; = "/system/etc/customization/settings/com/android/server/custom_settings.xml"

.field private static mInstance:Landroid/customization/CustomizedValues;


# instance fields
.field private mXmlParser:Landroid/customization/CustomizedValues$XmlParser;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 98
    new-instance v0, Landroid/customization/CustomizedValues;

    invoke-direct {v0}, Landroid/customization/CustomizedValues;-><init>()V

    sput-object v0, Landroid/customization/CustomizedValues;->mInstance:Landroid/customization/CustomizedValues;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    new-instance v0, Landroid/customization/CustomizedValues$XmlParser;

    invoke-direct {v0, p0}, Landroid/customization/CustomizedValues$XmlParser;-><init>(Landroid/customization/CustomizedValues;)V

    iput-object v0, p0, Landroid/customization/CustomizedValues;->mXmlParser:Landroid/customization/CustomizedValues$XmlParser;

    .line 102
    return-void
.end method

.method public static getBoolean(Ljava/lang/String;Z)Z
    .locals 2
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 117
    sget-object v0, Landroid/customization/CustomizedValues;->mInstance:Landroid/customization/CustomizedValues;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/customization/CustomizedValues;->getCheckedString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private getCheckedString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 105
    iget-object v0, p0, Landroid/customization/CustomizedValues;->mXmlParser:Landroid/customization/CustomizedValues$XmlParser;

    iget-object v0, v0, Landroid/customization/CustomizedValues$XmlParser;->mMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/customization/CustomizedValues;->mXmlParser:Landroid/customization/CustomizedValues$XmlParser;

    iget-object v0, v0, Landroid/customization/CustomizedValues$XmlParser;->mMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    move-object v0, p2

    goto :goto_0
.end method

.method public static getInt(Ljava/lang/String;I)I
    .locals 2
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 113
    sget-object v0, Landroid/customization/CustomizedValues;->mInstance:Landroid/customization/CustomizedValues;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/customization/CustomizedValues;->getCheckedString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 109
    sget-object v0, Landroid/customization/CustomizedValues;->mInstance:Landroid/customization/CustomizedValues;

    invoke-direct {v0, p0, p1}, Landroid/customization/CustomizedValues;->getCheckedString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.class Landroid/customization/CustomizedValues$XmlParser;
.super Ljava/lang/Object;
.source "CustomizedValues.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/customization/CustomizedValues;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "XmlParser"
.end annotation


# instance fields
.field mMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroid/customization/CustomizedValues;


# direct methods
.method constructor <init>(Landroid/customization/CustomizedValues;)V
    .locals 7
    .parameter

    .prologue
    .line 39
    iput-object p1, p0, Landroid/customization/CustomizedValues$XmlParser;->this$0:Landroid/customization/CustomizedValues;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, p0, Landroid/customization/CustomizedValues$XmlParser;->mMap:Ljava/util/HashMap;

    .line 42
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v5

    invoke-virtual {v5}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v4

    .line 43
    .local v4, xpp:Lorg/xmlpull/v1/XmlPullParser;
    new-instance v3, Ljava/io/FileReader;

    const-string v5, "/system/etc/customization/settings/com/android/server/custom_settings.xml"

    invoke-direct {v3, v5}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 44
    .local v3, reader:Ljava/io/FileReader;
    invoke-interface {v4, v3}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 45
    const-string v0, ""

    .line 46
    .local v0, currentKey:Ljava/lang/String;
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    .line 47
    .local v1, eventType:I
    :goto_0
    const/4 v5, 0x1

    if-eq v1, v5, :cond_2

    .line 48
    packed-switch v1, :pswitch_data_0

    .line 68
    :cond_0
    :goto_1
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    goto :goto_0

    .line 50
    :pswitch_0
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "setting"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 51
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v5

    if-ge v2, v5, :cond_0

    .line 52
    invoke-interface {v4, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "key"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 53
    invoke-interface {v4, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v0

    .line 54
    goto :goto_1

    .line 51
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 60
    .end local v2           #i:I
    :pswitch_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_0

    .line 61
    iget-object v5, p0, Landroid/customization/CustomizedValues$XmlParser;->mMap:Ljava/util/HashMap;

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 73
    .end local v0           #currentKey:Ljava/lang/String;
    .end local v1           #eventType:I
    .end local v3           #reader:Ljava/io/FileReader;
    .end local v4           #xpp:Lorg/xmlpull/v1/XmlPullParser;
    :catch_0
    move-exception v5

    .line 78
    :goto_3
    return-void

    .line 65
    .restart local v0       #currentKey:Ljava/lang/String;
    .restart local v1       #eventType:I
    .restart local v3       #reader:Ljava/io/FileReader;
    .restart local v4       #xpp:Lorg/xmlpull/v1/XmlPullParser;
    :pswitch_2
    const-string v0, ""

    goto :goto_1

    .line 70
    :cond_2
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V

    .line 72
    invoke-direct {p0}, Landroid/customization/CustomizedValues$XmlParser;->printMap()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 48
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private printMap()V
    .locals 0

    .prologue
    .line 94
    return-void
.end method

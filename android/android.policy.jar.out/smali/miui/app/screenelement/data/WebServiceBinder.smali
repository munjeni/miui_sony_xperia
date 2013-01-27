.class public Lmiui/app/screenelement/data/WebServiceBinder;
.super Ljava/lang/Object;
.source "WebServiceBinder.java"

# interfaces
.implements Lmiui/app/screenelement/data/VariableBinder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/app/screenelement/data/WebServiceBinder$QueryThread;,
        Lmiui/app/screenelement/data/WebServiceBinder$Variable;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "WebServiceBinder"

.field private static final PREF_LAST_QUERY_TIME:Ljava/lang/String; = "LastQueryTime"

.field public static final TAG_NAME:Ljava/lang/String; = "WebServiceBinder"


# instance fields
.field private mContext:Lmiui/app/screenelement/ScreenContext;

.field private mLastQueryTime:J

.field protected mName:Ljava/lang/String;

.field private mParamsFormatter:Lmiui/app/screenelement/util/TextFormatter;

.field private mQueryInProgress:Z

.field private mQuerySuccessful:Z

.field private mQueryThread:Ljava/lang/Thread;

.field private mUpdateInterval:I

.field private mUpdateIntervalFail:I

.field protected mUriFormatter:Lmiui/app/screenelement/util/TextFormatter;

.field private mVariables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lmiui/app/screenelement/data/WebServiceBinder$Variable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/app/screenelement/ScreenContext;)V
    .locals 2
    .parameter "node"
    .parameter "c"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/app/screenelement/ScreenElementLoadException;
        }
    .end annotation

    .prologue
    const/4 v1, -0x1

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/app/screenelement/data/WebServiceBinder;->mVariables:Ljava/util/ArrayList;

    .line 66
    iput v1, p0, Lmiui/app/screenelement/data/WebServiceBinder;->mUpdateInterval:I

    .line 68
    iput v1, p0, Lmiui/app/screenelement/data/WebServiceBinder;->mUpdateIntervalFail:I

    .line 78
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/app/screenelement/data/WebServiceBinder;->mQuerySuccessful:Z

    .line 132
    iput-object p2, p0, Lmiui/app/screenelement/data/WebServiceBinder;->mContext:Lmiui/app/screenelement/ScreenContext;

    .line 133
    invoke-direct {p0, p1}, Lmiui/app/screenelement/data/WebServiceBinder;->load(Lorg/w3c/dom/Element;)V

    .line 134
    return-void
.end method

.method static synthetic access$000(Lmiui/app/screenelement/data/WebServiceBinder;)Lmiui/app/screenelement/ScreenContext;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lmiui/app/screenelement/data/WebServiceBinder;->mContext:Lmiui/app/screenelement/ScreenContext;

    return-object v0
.end method

.method static synthetic access$100(Lmiui/app/screenelement/data/WebServiceBinder;)Lmiui/app/screenelement/util/TextFormatter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lmiui/app/screenelement/data/WebServiceBinder;->mParamsFormatter:Lmiui/app/screenelement/util/TextFormatter;

    return-object v0
.end method

.method static synthetic access$200(Lmiui/app/screenelement/data/WebServiceBinder;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lmiui/app/screenelement/data/WebServiceBinder;->onQueryComplete(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$302(Lmiui/app/screenelement/data/WebServiceBinder;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    iput-wide p1, p0, Lmiui/app/screenelement/data/WebServiceBinder;->mLastQueryTime:J

    return-wide p1
.end method

.method static synthetic access$402(Lmiui/app/screenelement/data/WebServiceBinder;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    iput-boolean p1, p0, Lmiui/app/screenelement/data/WebServiceBinder;->mQueryInProgress:Z

    return p1
.end method

.method private load(Lorg/w3c/dom/Element;)V
    .locals 5
    .parameter "node"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/app/screenelement/ScreenElementLoadException;
        }
    .end annotation

    .prologue
    const/4 v4, -0x1

    .line 200
    if-nez p1, :cond_0

    .line 201
    const-string v0, "WebServiceBinder"

    const-string v1, "WebServiceBinder node is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    new-instance v0, Lmiui/app/screenelement/ScreenElementLoadException;

    const-string v1, "node is null"

    invoke-direct {v0, v1}, Lmiui/app/screenelement/ScreenElementLoadException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 204
    :cond_0
    const-string v0, "name"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/app/screenelement/data/WebServiceBinder;->mName:Ljava/lang/String;

    .line 205
    new-instance v0, Lmiui/app/screenelement/util/TextFormatter;

    const-string v1, "uri"

    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "uriFormat"

    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "uriParas"

    invoke-interface {p1, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lmiui/app/screenelement/util/TextFormatter;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lmiui/app/screenelement/data/WebServiceBinder;->mUriFormatter:Lmiui/app/screenelement/util/TextFormatter;

    .line 207
    new-instance v0, Lmiui/app/screenelement/util/TextFormatter;

    const-string v1, "params"

    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "paramsFormat"

    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "paramsParas"

    invoke-interface {p1, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lmiui/app/screenelement/util/TextFormatter;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lmiui/app/screenelement/data/WebServiceBinder;->mParamsFormatter:Lmiui/app/screenelement/util/TextFormatter;

    .line 209
    const-string v0, "updateInterval"

    invoke-static {p1, v0, v4}, Lmiui/app/screenelement/util/Utils;->getAttrAsInt(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lmiui/app/screenelement/data/WebServiceBinder;->mUpdateInterval:I

    .line 210
    const-string v0, "updateIntervalFail"

    invoke-static {p1, v0, v4}, Lmiui/app/screenelement/util/Utils;->getAttrAsInt(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lmiui/app/screenelement/data/WebServiceBinder;->mUpdateIntervalFail:I

    .line 212
    invoke-direct {p0, p1}, Lmiui/app/screenelement/data/WebServiceBinder;->loadVariables(Lorg/w3c/dom/Element;)V

    .line 213
    return-void
.end method

.method private loadVariables(Lorg/w3c/dom/Element;)V
    .locals 5
    .parameter "node"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/app/screenelement/ScreenElementLoadException;
        }
    .end annotation

    .prologue
    .line 216
    const-string v3, "Variable"

    invoke-interface {p1, v3}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 217
    .local v2, variables:Lorg/w3c/dom/NodeList;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 218
    new-instance v1, Lmiui/app/screenelement/data/WebServiceBinder$Variable;

    invoke-interface {v2, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    check-cast v3, Lorg/w3c/dom/Element;

    iget-object v4, p0, Lmiui/app/screenelement/data/WebServiceBinder;->mContext:Lmiui/app/screenelement/ScreenContext;

    iget-object v4, v4, Lmiui/app/screenelement/ScreenContext;->mVariables:Lmiui/app/screenelement/data/Variables;

    invoke-direct {v1, v3, v4}, Lmiui/app/screenelement/data/WebServiceBinder$Variable;-><init>(Lorg/w3c/dom/Element;Lmiui/app/screenelement/data/Variables;)V

    .line 219
    .local v1, v:Lmiui/app/screenelement/data/WebServiceBinder$Variable;
    invoke-virtual {p0, v1}, Lmiui/app/screenelement/data/WebServiceBinder;->addVariable(Lmiui/app/screenelement/data/WebServiceBinder$Variable;)V

    .line 217
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 221
    .end local v1           #v:Lmiui/app/screenelement/data/WebServiceBinder$Variable;
    :cond_0
    return-void
.end method

.method private onQueryComplete(Ljava/lang/String;)V
    .locals 13
    .parameter "result"

    .prologue
    .line 237
    if-eqz p1, :cond_1

    .line 238
    invoke-static {}, Ljavax/xml/xpath/XPathFactory;->newInstance()Ljavax/xml/xpath/XPathFactory;

    move-result-object v10

    invoke-virtual {v10}, Ljavax/xml/xpath/XPathFactory;->newXPath()Ljavax/xml/xpath/XPath;

    move-result-object v9

    .line 239
    .local v9, xpath:Ljavax/xml/xpath/XPath;
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v1

    .line 240
    .local v1, dbf:Ljavax/xml/parsers/DocumentBuilderFactory;
    const/4 v5, 0x0

    .line 242
    .local v5, is:Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    .line 243
    .local v0, db:Ljavax/xml/parsers/DocumentBuilder;
    new-instance v6, Ljava/io/ByteArrayInputStream;

    const-string v10, "utf-8"

    invoke-virtual {p1, v10}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v10

    invoke-direct {v6, v10}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_12
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_11
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_a

    .line 244
    .end local v5           #is:Ljava/io/InputStream;
    .local v6, is:Ljava/io/InputStream;
    :try_start_1
    invoke-virtual {v0, v6}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v2

    .line 245
    .local v2, doc:Lorg/w3c/dom/Document;
    iget-object v10, p0, Lmiui/app/screenelement/data/WebServiceBinder;->mVariables:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lmiui/app/screenelement/data/WebServiceBinder$Variable;

    .line 246
    .local v7, v:Lmiui/app/screenelement/data/WebServiceBinder$Variable;
    iget-object v10, v7, Lmiui/app/screenelement/data/WebServiceBinder$Variable;->mStringVar:Lmiui/app/screenelement/util/IndexedStringVariable;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_10
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_e

    if-eqz v10, :cond_2

    .line 248
    :try_start_2
    iget-object v10, v7, Lmiui/app/screenelement/data/WebServiceBinder$Variable;->mXPath:Ljava/lang/String;

    sget-object v11, Ljavax/xml/xpath/XPathConstants;->STRING:Ljavax/xml/namespace/QName;

    invoke-interface {v9, v10, v2, v11}, Ljavax/xml/xpath/XPath;->evaluate(Ljava/lang/String;Ljava/lang/Object;Ljavax/xml/namespace/QName;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 249
    .local v8, value:Ljava/lang/String;
    iget-object v10, v7, Lmiui/app/screenelement/data/WebServiceBinder$Variable;->mStringVar:Lmiui/app/screenelement/util/IndexedStringVariable;

    invoke-virtual {v10, v8}, Lmiui/app/screenelement/util/IndexedStringVariable;->set(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljavax/xml/xpath/XPathExpressionException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/xml/sax/SAXException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_10
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_f
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_e

    goto :goto_0

    .line 250
    .end local v8           #value:Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 251
    .local v3, e:Ljavax/xml/xpath/XPathExpressionException;
    :try_start_3
    iget-object v10, v7, Lmiui/app/screenelement/data/WebServiceBinder$Variable;->mStringVar:Lmiui/app/screenelement/util/IndexedStringVariable;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lmiui/app/screenelement/util/IndexedStringVariable;->set(Ljava/lang/String;)V

    .line 252
    const-string v10, "WebServiceBinder"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "fail to get variable: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v7, Lmiui/app/screenelement/data/WebServiceBinder$Variable;->mName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " :"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v3}, Ljavax/xml/xpath/XPathExpressionException;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lorg/xml/sax/SAXException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_10
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_f
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_e

    goto :goto_0

    .line 265
    .end local v2           #doc:Lorg/w3c/dom/Document;
    .end local v3           #e:Ljavax/xml/xpath/XPathExpressionException;
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v7           #v:Lmiui/app/screenelement/data/WebServiceBinder$Variable;
    :catch_1
    move-exception v3

    move-object v5, v6

    .line 266
    .end local v0           #db:Ljavax/xml/parsers/DocumentBuilder;
    .end local v6           #is:Ljava/io/InputStream;
    .local v3, e:Ljavax/xml/parsers/ParserConfigurationException;
    .restart local v5       #is:Ljava/io/InputStream;
    :goto_1
    :try_start_4
    const-string v10, "WebServiceBinder"

    invoke-virtual {v3}, Ljavax/xml/parsers/ParserConfigurationException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 277
    if-eqz v5, :cond_1

    .line 278
    :try_start_5
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_c

    .line 283
    .end local v1           #dbf:Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v3           #e:Ljavax/xml/parsers/ParserConfigurationException;
    .end local v5           #is:Ljava/io/InputStream;
    .end local v9           #xpath:Ljavax/xml/xpath/XPath;
    :cond_1
    :goto_2
    return-void

    .line 254
    .restart local v0       #db:Ljavax/xml/parsers/DocumentBuilder;
    .restart local v1       #dbf:Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v2       #doc:Lorg/w3c/dom/Document;
    .restart local v4       #i$:Ljava/util/Iterator;
    .restart local v6       #is:Ljava/io/InputStream;
    .restart local v7       #v:Lmiui/app/screenelement/data/WebServiceBinder$Variable;
    .restart local v9       #xpath:Ljavax/xml/xpath/XPath;
    :cond_2
    :try_start_6
    iget-object v10, v7, Lmiui/app/screenelement/data/WebServiceBinder$Variable;->mNumberVar:Lmiui/app/screenelement/util/IndexedNumberVariable;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Lorg/xml/sax/SAXException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_6 .. :try_end_6} :catch_10
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_f
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_e

    if-eqz v10, :cond_0

    .line 256
    :try_start_7
    iget-object v10, v7, Lmiui/app/screenelement/data/WebServiceBinder$Variable;->mXPath:Ljava/lang/String;

    sget-object v11, Ljavax/xml/xpath/XPathConstants;->NUMBER:Ljavax/xml/namespace/QName;

    invoke-interface {v9, v10, v2, v11}, Ljavax/xml/xpath/XPath;->evaluate(Ljava/lang/String;Ljava/lang/Object;Ljavax/xml/namespace/QName;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Double;

    .line 257
    .local v8, value:Ljava/lang/Double;
    iget-object v10, v7, Lmiui/app/screenelement/data/WebServiceBinder$Variable;->mNumberVar:Lmiui/app/screenelement/util/IndexedNumberVariable;

    invoke-virtual {v10, v8}, Lmiui/app/screenelement/util/IndexedNumberVariable;->set(Ljava/lang/Double;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
    .catch Ljavax/xml/xpath/XPathExpressionException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Lorg/xml/sax/SAXException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_7 .. :try_end_7} :catch_10
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_f
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_e

    goto :goto_0

    .line 258
    .end local v8           #value:Ljava/lang/Double;
    :catch_2
    move-exception v3

    .line 259
    .local v3, e:Ljavax/xml/xpath/XPathExpressionException;
    :try_start_8
    iget-object v10, v7, Lmiui/app/screenelement/data/WebServiceBinder$Variable;->mNumberVar:Lmiui/app/screenelement/util/IndexedNumberVariable;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lmiui/app/screenelement/util/IndexedNumberVariable;->set(Ljava/lang/Double;)V

    .line 260
    const-string v10, "WebServiceBinder"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "fail to get variable: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v7, Lmiui/app/screenelement/data/WebServiceBinder$Variable;->mName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " :"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v3}, Ljavax/xml/xpath/XPathExpressionException;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Lorg/xml/sax/SAXException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_8 .. :try_end_8} :catch_10
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_f
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_e

    goto/16 :goto_0

    .line 267
    .end local v2           #doc:Lorg/w3c/dom/Document;
    .end local v3           #e:Ljavax/xml/xpath/XPathExpressionException;
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v7           #v:Lmiui/app/screenelement/data/WebServiceBinder$Variable;
    :catch_3
    move-exception v3

    move-object v5, v6

    .line 268
    .end local v0           #db:Ljavax/xml/parsers/DocumentBuilder;
    .end local v6           #is:Ljava/io/InputStream;
    .local v3, e:Lorg/xml/sax/SAXException;
    .restart local v5       #is:Ljava/io/InputStream;
    :goto_3
    :try_start_9
    const-string v10, "WebServiceBinder"

    invoke-virtual {v3}, Lorg/xml/sax/SAXException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 277
    if-eqz v5, :cond_1

    .line 278
    :try_start_a
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4

    goto :goto_2

    .line 279
    :catch_4
    move-exception v10

    goto :goto_2

    .line 264
    .end local v3           #e:Lorg/xml/sax/SAXException;
    .end local v5           #is:Ljava/io/InputStream;
    .restart local v0       #db:Ljavax/xml/parsers/DocumentBuilder;
    .restart local v2       #doc:Lorg/w3c/dom/Document;
    .restart local v4       #i$:Ljava/util/Iterator;
    .restart local v6       #is:Ljava/io/InputStream;
    :cond_3
    const/4 v10, 0x1

    :try_start_b
    iput-boolean v10, p0, Lmiui/app/screenelement/data/WebServiceBinder;->mQuerySuccessful:Z
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_b .. :try_end_b} :catch_1
    .catch Lorg/xml/sax/SAXException; {:try_start_b .. :try_end_b} :catch_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_b .. :try_end_b} :catch_10
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_f
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_e

    .line 277
    if-eqz v6, :cond_1

    .line 278
    :try_start_c
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_5

    goto :goto_2

    .line 279
    :catch_5
    move-exception v10

    goto :goto_2

    .line 269
    .end local v0           #db:Ljavax/xml/parsers/DocumentBuilder;
    .end local v2           #doc:Lorg/w3c/dom/Document;
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v6           #is:Ljava/io/InputStream;
    .restart local v5       #is:Ljava/io/InputStream;
    :catch_6
    move-exception v3

    .line 270
    .local v3, e:Ljava/io/UnsupportedEncodingException;
    :goto_4
    :try_start_d
    const-string v10, "WebServiceBinder"

    invoke-virtual {v3}, Ljava/io/UnsupportedEncodingException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 277
    if-eqz v5, :cond_1

    .line 278
    :try_start_e
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_7

    goto :goto_2

    .line 279
    :catch_7
    move-exception v10

    goto :goto_2

    .line 271
    .end local v3           #e:Ljava/io/UnsupportedEncodingException;
    :catch_8
    move-exception v3

    .line 272
    .local v3, e:Ljava/io/IOException;
    :goto_5
    :try_start_f
    const-string v10, "WebServiceBinder"

    invoke-virtual {v3}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 277
    if-eqz v5, :cond_1

    .line 278
    :try_start_10
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_9

    goto/16 :goto_2

    .line 279
    :catch_9
    move-exception v10

    goto/16 :goto_2

    .line 273
    .end local v3           #e:Ljava/io/IOException;
    :catch_a
    move-exception v3

    .line 274
    .local v3, e:Ljava/lang/Exception;
    :goto_6
    :try_start_11
    const-string v10, "WebServiceBinder"

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    .line 277
    if-eqz v5, :cond_1

    .line 278
    :try_start_12
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_b

    goto/16 :goto_2

    .line 279
    :catch_b
    move-exception v10

    goto/16 :goto_2

    .line 276
    .end local v3           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v10

    .line 277
    :goto_7
    if-eqz v5, :cond_4

    .line 278
    :try_start_13
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_d

    .line 280
    :cond_4
    :goto_8
    throw v10

    .line 279
    .local v3, e:Ljavax/xml/parsers/ParserConfigurationException;
    :catch_c
    move-exception v10

    goto/16 :goto_2

    .end local v3           #e:Ljavax/xml/parsers/ParserConfigurationException;
    :catch_d
    move-exception v11

    goto :goto_8

    .line 276
    .end local v5           #is:Ljava/io/InputStream;
    .restart local v0       #db:Ljavax/xml/parsers/DocumentBuilder;
    .restart local v6       #is:Ljava/io/InputStream;
    :catchall_1
    move-exception v10

    move-object v5, v6

    .end local v6           #is:Ljava/io/InputStream;
    .restart local v5       #is:Ljava/io/InputStream;
    goto :goto_7

    .line 273
    .end local v5           #is:Ljava/io/InputStream;
    .restart local v6       #is:Ljava/io/InputStream;
    :catch_e
    move-exception v3

    move-object v5, v6

    .end local v6           #is:Ljava/io/InputStream;
    .restart local v5       #is:Ljava/io/InputStream;
    goto :goto_6

    .line 271
    .end local v5           #is:Ljava/io/InputStream;
    .restart local v6       #is:Ljava/io/InputStream;
    :catch_f
    move-exception v3

    move-object v5, v6

    .end local v6           #is:Ljava/io/InputStream;
    .restart local v5       #is:Ljava/io/InputStream;
    goto :goto_5

    .line 269
    .end local v5           #is:Ljava/io/InputStream;
    .restart local v6       #is:Ljava/io/InputStream;
    :catch_10
    move-exception v3

    move-object v5, v6

    .end local v6           #is:Ljava/io/InputStream;
    .restart local v5       #is:Ljava/io/InputStream;
    goto :goto_4

    .line 267
    .end local v0           #db:Ljavax/xml/parsers/DocumentBuilder;
    :catch_11
    move-exception v3

    goto :goto_3

    .line 265
    :catch_12
    move-exception v3

    goto/16 :goto_1
.end method

.method private tryStartQuery()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    .line 188
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lmiui/app/screenelement/data/WebServiceBinder;->mLastQueryTime:J

    sub-long v0, v2, v4

    .line 189
    .local v0, time:J
    cmp-long v2, v0, v6

    if-gez v2, :cond_0

    .line 190
    iput-wide v6, p0, Lmiui/app/screenelement/data/WebServiceBinder;->mLastQueryTime:J

    .line 192
    :cond_0
    iget-wide v2, p0, Lmiui/app/screenelement/data/WebServiceBinder;->mLastQueryTime:J

    cmp-long v2, v2, v6

    if-eqz v2, :cond_2

    iget v2, p0, Lmiui/app/screenelement/data/WebServiceBinder;->mUpdateInterval:I

    if-lez v2, :cond_1

    iget v2, p0, Lmiui/app/screenelement/data/WebServiceBinder;->mUpdateInterval:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    cmp-long v2, v0, v2

    if-gtz v2, :cond_2

    :cond_1
    iget-boolean v2, p0, Lmiui/app/screenelement/data/WebServiceBinder;->mQuerySuccessful:Z

    if-nez v2, :cond_3

    iget v2, p0, Lmiui/app/screenelement/data/WebServiceBinder;->mUpdateIntervalFail:I

    if-lez v2, :cond_3

    iget v2, p0, Lmiui/app/screenelement/data/WebServiceBinder;->mUpdateIntervalFail:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    cmp-long v2, v0, v2

    if-lez v2, :cond_3

    .line 195
    :cond_2
    invoke-virtual {p0}, Lmiui/app/screenelement/data/WebServiceBinder;->startQuery()V

    .line 197
    :cond_3
    return-void
.end method


# virtual methods
.method protected addVariable(Lmiui/app/screenelement/data/WebServiceBinder$Variable;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 224
    iget-object v0, p0, Lmiui/app/screenelement/data/WebServiceBinder;->mVariables:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 225
    return-void
.end method

.method public finish()V
    .locals 8

    .prologue
    .line 159
    iget-object v4, p0, Lmiui/app/screenelement/data/WebServiceBinder;->mContext:Lmiui/app/screenelement/ScreenContext;

    iget-object v4, v4, Lmiui/app/screenelement/ScreenContext;->mContext:Landroid/content/Context;

    const-string v5, "MamlPreferences"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 160
    .local v2, sp:Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 161
    .local v0, ed:Landroid/content/SharedPreferences$Editor;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lmiui/app/screenelement/data/WebServiceBinder;->mName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "LastQueryTime"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-wide v5, p0, Lmiui/app/screenelement/data/WebServiceBinder;->mLastQueryTime:J

    invoke-interface {v0, v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 162
    const-string v4, "WebServiceBinder"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "persist mLastQueryTime: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p0, Lmiui/app/screenelement/data/WebServiceBinder;->mLastQueryTime:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    iget-object v4, p0, Lmiui/app/screenelement/data/WebServiceBinder;->mVariables:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiui/app/screenelement/data/WebServiceBinder$Variable;

    .line 164
    .local v3, v:Lmiui/app/screenelement/data/WebServiceBinder$Variable;
    iget-boolean v4, v3, Lmiui/app/screenelement/data/WebServiceBinder$Variable;->mPersist:Z

    if-eqz v4, :cond_0

    .line 165
    iget-object v4, v3, Lmiui/app/screenelement/data/WebServiceBinder$Variable;->mStringVar:Lmiui/app/screenelement/util/IndexedStringVariable;

    if-eqz v4, :cond_1

    .line 166
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lmiui/app/screenelement/data/WebServiceBinder;->mName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v3, Lmiui/app/screenelement/data/WebServiceBinder$Variable;->mName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v3, Lmiui/app/screenelement/data/WebServiceBinder$Variable;->mStringVar:Lmiui/app/screenelement/util/IndexedStringVariable;

    invoke-virtual {v5}, Lmiui/app/screenelement/util/IndexedStringVariable;->get()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 167
    :cond_1
    iget-object v4, v3, Lmiui/app/screenelement/data/WebServiceBinder$Variable;->mNumberVar:Lmiui/app/screenelement/util/IndexedNumberVariable;

    if-eqz v4, :cond_0

    .line 168
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lmiui/app/screenelement/data/WebServiceBinder;->mName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v3, Lmiui/app/screenelement/data/WebServiceBinder$Variable;->mName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v3, Lmiui/app/screenelement/data/WebServiceBinder$Variable;->mNumberVar:Lmiui/app/screenelement/util/IndexedNumberVariable;

    invoke-virtual {v5}, Lmiui/app/screenelement/util/IndexedNumberVariable;->get()Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Double;->floatValue()F

    move-result v5

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 172
    .end local v3           #v:Lmiui/app/screenelement/data/WebServiceBinder$Variable;
    :cond_2
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 173
    return-void
.end method

.method public bridge synthetic getName()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 47
    invoke-virtual {p0}, Lmiui/app/screenelement/data/WebServiceBinder;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lmiui/app/screenelement/data/WebServiceBinder;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public init()V
    .locals 7

    .prologue
    .line 141
    const/4 v3, 0x1

    iput-boolean v3, p0, Lmiui/app/screenelement/data/WebServiceBinder;->mQuerySuccessful:Z

    .line 142
    iget-object v3, p0, Lmiui/app/screenelement/data/WebServiceBinder;->mContext:Lmiui/app/screenelement/ScreenContext;

    iget-object v3, v3, Lmiui/app/screenelement/ScreenContext;->mContext:Landroid/content/Context;

    const-string v4, "MamlPreferences"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 143
    .local v1, sp:Landroid/content/SharedPreferences;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lmiui/app/screenelement/data/WebServiceBinder;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "LastQueryTime"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, 0x0

    invoke-interface {v1, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, p0, Lmiui/app/screenelement/data/WebServiceBinder;->mLastQueryTime:J

    .line 144
    const-string v3, "WebServiceBinder"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "get persisted mLastQueryTime: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, p0, Lmiui/app/screenelement/data/WebServiceBinder;->mLastQueryTime:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    iget-object v3, p0, Lmiui/app/screenelement/data/WebServiceBinder;->mVariables:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/app/screenelement/data/WebServiceBinder$Variable;

    .line 146
    .local v2, v:Lmiui/app/screenelement/data/WebServiceBinder$Variable;
    iget-boolean v3, v2, Lmiui/app/screenelement/data/WebServiceBinder$Variable;->mPersist:Z

    if-eqz v3, :cond_0

    .line 147
    iget-object v3, v2, Lmiui/app/screenelement/data/WebServiceBinder$Variable;->mStringVar:Lmiui/app/screenelement/util/IndexedStringVariable;

    if-eqz v3, :cond_1

    .line 148
    iget-object v3, v2, Lmiui/app/screenelement/data/WebServiceBinder$Variable;->mStringVar:Lmiui/app/screenelement/util/IndexedStringVariable;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lmiui/app/screenelement/data/WebServiceBinder;->mName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lmiui/app/screenelement/data/WebServiceBinder$Variable;->mName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lmiui/app/screenelement/util/IndexedStringVariable;->set(Ljava/lang/String;)V

    goto :goto_0

    .line 149
    :cond_1
    iget-object v3, v2, Lmiui/app/screenelement/data/WebServiceBinder$Variable;->mNumberVar:Lmiui/app/screenelement/util/IndexedNumberVariable;

    if-eqz v3, :cond_0

    .line 150
    iget-object v3, v2, Lmiui/app/screenelement/data/WebServiceBinder$Variable;->mNumberVar:Lmiui/app/screenelement/util/IndexedNumberVariable;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lmiui/app/screenelement/data/WebServiceBinder;->mName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lmiui/app/screenelement/data/WebServiceBinder$Variable;->mName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v4

    float-to-double v4, v4

    invoke-virtual {v3, v4, v5}, Lmiui/app/screenelement/util/IndexedNumberVariable;->set(D)V

    goto :goto_0

    .line 155
    .end local v2           #v:Lmiui/app/screenelement/data/WebServiceBinder$Variable;
    :cond_2
    invoke-direct {p0}, Lmiui/app/screenelement/data/WebServiceBinder;->tryStartQuery()V

    .line 156
    return-void
.end method

.method public pause()V
    .locals 0

    .prologue
    .line 176
    return-void
.end method

.method public refresh()V
    .locals 0

    .prologue
    .line 184
    invoke-virtual {p0}, Lmiui/app/screenelement/data/WebServiceBinder;->startQuery()V

    .line 185
    return-void
.end method

.method public resume()V
    .locals 0

    .prologue
    .line 179
    invoke-direct {p0}, Lmiui/app/screenelement/data/WebServiceBinder;->tryStartQuery()V

    .line 180
    return-void
.end method

.method public startQuery()V
    .locals 1

    .prologue
    .line 228
    iget-boolean v0, p0, Lmiui/app/screenelement/data/WebServiceBinder;->mQueryInProgress:Z

    if-eqz v0, :cond_0

    .line 234
    :goto_0
    return-void

    .line 230
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/app/screenelement/data/WebServiceBinder;->mQueryInProgress:Z

    .line 231
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/app/screenelement/data/WebServiceBinder;->mQuerySuccessful:Z

    .line 232
    new-instance v0, Lmiui/app/screenelement/data/WebServiceBinder$QueryThread;

    invoke-direct {v0, p0}, Lmiui/app/screenelement/data/WebServiceBinder$QueryThread;-><init>(Lmiui/app/screenelement/data/WebServiceBinder;)V

    iput-object v0, p0, Lmiui/app/screenelement/data/WebServiceBinder;->mQueryThread:Ljava/lang/Thread;

    .line 233
    iget-object v0, p0, Lmiui/app/screenelement/data/WebServiceBinder;->mQueryThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

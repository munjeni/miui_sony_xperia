.class public Lmiui/app/screenelement/data/WebServiceBinder$Variable;
.super Ljava/lang/Object;
.source "WebServiceBinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/app/screenelement/data/WebServiceBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Variable"
.end annotation


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "Variable"

.field private static final TYPE_NUMBER:Ljava/lang/String; = "number"

.field private static final TYPE_STRING:Ljava/lang/String; = "string"


# instance fields
.field public mName:Ljava/lang/String;

.field public mNumberVar:Lmiui/app/screenelement/util/IndexedNumberVariable;

.field public mPersist:Z

.field public mStringVar:Lmiui/app/screenelement/util/IndexedStringVariable;

.field public mType:Ljava/lang/String;

.field private mVar:Lmiui/app/screenelement/data/Variables;

.field public mXPath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/app/screenelement/data/Variables;)V
    .locals 0
    .parameter "node"
    .parameter "var"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/app/screenelement/ScreenElementLoadException;
        }
    .end annotation

    .prologue
    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    iput-object p2, p0, Lmiui/app/screenelement/data/WebServiceBinder$Variable;->mVar:Lmiui/app/screenelement/data/Variables;

    .line 106
    invoke-direct {p0, p1}, Lmiui/app/screenelement/data/WebServiceBinder$Variable;->load(Lorg/w3c/dom/Element;)V

    .line 107
    return-void
.end method

.method private createVar()V
    .locals 3

    .prologue
    .line 122
    const-string v0, "string"

    iget-object v1, p0, Lmiui/app/screenelement/data/WebServiceBinder$Variable;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 123
    new-instance v0, Lmiui/app/screenelement/util/IndexedStringVariable;

    iget-object v1, p0, Lmiui/app/screenelement/data/WebServiceBinder$Variable;->mName:Ljava/lang/String;

    iget-object v2, p0, Lmiui/app/screenelement/data/WebServiceBinder$Variable;->mVar:Lmiui/app/screenelement/data/Variables;

    invoke-direct {v0, v1, v2}, Lmiui/app/screenelement/util/IndexedStringVariable;-><init>(Ljava/lang/String;Lmiui/app/screenelement/data/Variables;)V

    iput-object v0, p0, Lmiui/app/screenelement/data/WebServiceBinder$Variable;->mStringVar:Lmiui/app/screenelement/util/IndexedStringVariable;

    .line 127
    :cond_0
    :goto_0
    return-void

    .line 124
    :cond_1
    const-string v0, "number"

    iget-object v1, p0, Lmiui/app/screenelement/data/WebServiceBinder$Variable;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    new-instance v0, Lmiui/app/screenelement/util/IndexedNumberVariable;

    iget-object v1, p0, Lmiui/app/screenelement/data/WebServiceBinder$Variable;->mName:Ljava/lang/String;

    iget-object v2, p0, Lmiui/app/screenelement/data/WebServiceBinder$Variable;->mVar:Lmiui/app/screenelement/data/Variables;

    invoke-direct {v0, v1, v2}, Lmiui/app/screenelement/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Lmiui/app/screenelement/data/Variables;)V

    iput-object v0, p0, Lmiui/app/screenelement/data/WebServiceBinder$Variable;->mNumberVar:Lmiui/app/screenelement/util/IndexedNumberVariable;

    goto :goto_0
.end method

.method private load(Lorg/w3c/dom/Element;)V
    .locals 2
    .parameter "node"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/app/screenelement/ScreenElementLoadException;
        }
    .end annotation

    .prologue
    .line 110
    if-nez p1, :cond_0

    .line 111
    const-string v0, "WebServiceBinder"

    const-string v1, "Variable node is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    new-instance v0, Lmiui/app/screenelement/ScreenElementLoadException;

    const-string v1, "node is null"

    invoke-direct {v0, v1}, Lmiui/app/screenelement/ScreenElementLoadException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 114
    :cond_0
    const-string v0, "name"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/app/screenelement/data/WebServiceBinder$Variable;->mName:Ljava/lang/String;

    .line 115
    const-string v0, "type"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/app/screenelement/data/WebServiceBinder$Variable;->mType:Ljava/lang/String;

    .line 116
    const-string v0, "xpath"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/app/screenelement/data/WebServiceBinder$Variable;->mXPath:Ljava/lang/String;

    .line 117
    const-string v0, "persist"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lmiui/app/screenelement/data/WebServiceBinder$Variable;->mPersist:Z

    .line 118
    invoke-direct {p0}, Lmiui/app/screenelement/data/WebServiceBinder$Variable;->createVar()V

    .line 119
    return-void
.end method

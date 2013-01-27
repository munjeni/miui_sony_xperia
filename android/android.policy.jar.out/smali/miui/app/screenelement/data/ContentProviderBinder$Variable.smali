.class public Lmiui/app/screenelement/data/ContentProviderBinder$Variable;
.super Ljava/lang/Object;
.source "ContentProviderBinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/app/screenelement/data/ContentProviderBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Variable"
.end annotation


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "Variable"


# instance fields
.field public mColumn:Ljava/lang/String;

.field public mName:Ljava/lang/String;

.field public mNumberVar:Lmiui/app/screenelement/util/IndexedNumberVariable;

.field public mRow:I

.field public mStringVar:Lmiui/app/screenelement/util/IndexedStringVariable;

.field public mType:Ljava/lang/String;

.field private mVar:Lmiui/app/screenelement/data/Variables;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 166
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
    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 169
    iput-object p2, p0, Lmiui/app/screenelement/data/ContentProviderBinder$Variable;->mVar:Lmiui/app/screenelement/data/Variables;

    .line 170
    invoke-direct {p0, p1}, Lmiui/app/screenelement/data/ContentProviderBinder$Variable;->load(Lorg/w3c/dom/Element;)V

    .line 171
    return-void
.end method

.method static synthetic access$100(Lmiui/app/screenelement/data/ContentProviderBinder$Variable;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 148
    invoke-direct {p0}, Lmiui/app/screenelement/data/ContentProviderBinder$Variable;->createVar()V

    return-void
.end method

.method private createVar()V
    .locals 3

    .prologue
    .line 187
    const-string v0, "string"

    iget-object v1, p0, Lmiui/app/screenelement/data/ContentProviderBinder$Variable;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 188
    new-instance v0, Lmiui/app/screenelement/util/IndexedStringVariable;

    iget-object v1, p0, Lmiui/app/screenelement/data/ContentProviderBinder$Variable;->mName:Ljava/lang/String;

    iget-object v2, p0, Lmiui/app/screenelement/data/ContentProviderBinder$Variable;->mVar:Lmiui/app/screenelement/data/Variables;

    invoke-direct {v0, v1, v2}, Lmiui/app/screenelement/util/IndexedStringVariable;-><init>(Ljava/lang/String;Lmiui/app/screenelement/data/Variables;)V

    iput-object v0, p0, Lmiui/app/screenelement/data/ContentProviderBinder$Variable;->mStringVar:Lmiui/app/screenelement/util/IndexedStringVariable;

    .line 192
    :goto_0
    return-void

    .line 190
    :cond_0
    new-instance v0, Lmiui/app/screenelement/util/IndexedNumberVariable;

    iget-object v1, p0, Lmiui/app/screenelement/data/ContentProviderBinder$Variable;->mName:Ljava/lang/String;

    iget-object v2, p0, Lmiui/app/screenelement/data/ContentProviderBinder$Variable;->mVar:Lmiui/app/screenelement/data/Variables;

    invoke-direct {v0, v1, v2}, Lmiui/app/screenelement/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Lmiui/app/screenelement/data/Variables;)V

    iput-object v0, p0, Lmiui/app/screenelement/data/ContentProviderBinder$Variable;->mNumberVar:Lmiui/app/screenelement/util/IndexedNumberVariable;

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
    .line 174
    if-nez p1, :cond_0

    .line 175
    const-string v0, "ContentProviderBinder"

    const-string v1, "Variable node is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    new-instance v0, Lmiui/app/screenelement/ScreenElementLoadException;

    const-string v1, "node is null"

    invoke-direct {v0, v1}, Lmiui/app/screenelement/ScreenElementLoadException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 178
    :cond_0
    const-string v0, "name"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/app/screenelement/data/ContentProviderBinder$Variable;->mName:Ljava/lang/String;

    .line 179
    const-string v0, "type"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/app/screenelement/data/ContentProviderBinder$Variable;->mType:Ljava/lang/String;

    .line 180
    const-string v0, "column"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/app/screenelement/data/ContentProviderBinder$Variable;->mColumn:Ljava/lang/String;

    .line 181
    const-string v0, "row"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lmiui/app/screenelement/util/Utils;->getAttrAsInt(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lmiui/app/screenelement/data/ContentProviderBinder$Variable;->mRow:I

    .line 183
    invoke-direct {p0}, Lmiui/app/screenelement/data/ContentProviderBinder$Variable;->createVar()V

    .line 184
    return-void
.end method

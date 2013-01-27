.class public Lmiui/app/screenelement/data/VariableBinderManager;
.super Ljava/lang/Object;
.source "VariableBinderManager.java"

# interfaces
.implements Lmiui/app/screenelement/data/ContentProviderBinder$QueryCompleteListener;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "VariableBinderManager"

.field public static final TAG_NAME:Ljava/lang/String; = "VariableBinders"


# instance fields
.field private mContext:Lmiui/app/screenelement/ScreenContext;

.field private mVariableBinders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lmiui/app/screenelement/data/VariableBinder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/app/screenelement/ScreenContext;)V
    .locals 1
    .parameter "node"
    .parameter "c"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/app/screenelement/ScreenElementLoadException;
        }
    .end annotation

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/app/screenelement/data/VariableBinderManager;->mVariableBinders:Ljava/util/ArrayList;

    .line 35
    iput-object p2, p0, Lmiui/app/screenelement/data/VariableBinderManager;->mContext:Lmiui/app/screenelement/ScreenContext;

    .line 36
    if-eqz p1, :cond_0

    .line 37
    invoke-direct {p0, p1}, Lmiui/app/screenelement/data/VariableBinderManager;->load(Lorg/w3c/dom/Element;)V

    .line 38
    :cond_0
    return-void
.end method

.method private static createBinder(Lorg/w3c/dom/Element;Lmiui/app/screenelement/ScreenContext;Lmiui/app/screenelement/data/VariableBinderManager;)Lmiui/app/screenelement/data/VariableBinder;
    .locals 3
    .parameter "ele"
    .parameter "c"
    .parameter "m"

    .prologue
    .line 83
    invoke-interface {p0}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v1

    .line 85
    .local v1, tag:Ljava/lang/String;
    :try_start_0
    const-string v2, "ContentProviderBinder"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 86
    new-instance v2, Lmiui/app/screenelement/data/ContentProviderBinder;

    invoke-direct {v2, p0, p1, p2}, Lmiui/app/screenelement/data/ContentProviderBinder;-><init>(Lorg/w3c/dom/Element;Lmiui/app/screenelement/ScreenContext;Lmiui/app/screenelement/data/ContentProviderBinder$QueryCompleteListener;)V

    .line 92
    :goto_0
    return-object v2

    .line 87
    :cond_0
    const-string v2, "WebServiceBinder"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 88
    new-instance v2, Lmiui/app/screenelement/data/WebServiceBinder;

    invoke-direct {v2, p0, p1}, Lmiui/app/screenelement/data/WebServiceBinder;-><init>(Lorg/w3c/dom/Element;Lmiui/app/screenelement/ScreenContext;)V
    :try_end_0
    .catch Lmiui/app/screenelement/ScreenElementLoadException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 89
    :catch_0
    move-exception v0

    .line 90
    .local v0, e:Lmiui/app/screenelement/ScreenElementLoadException;
    invoke-virtual {v0}, Lmiui/app/screenelement/ScreenElementLoadException;->printStackTrace()V

    .line 92
    .end local v0           #e:Lmiui/app/screenelement/ScreenElementLoadException;
    :cond_1
    const/4 v2, 0x0

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
    .line 73
    if-nez p1, :cond_0

    .line 74
    const-string v0, "VariableBinderManager"

    const-string v1, "node is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    new-instance v0, Lmiui/app/screenelement/ScreenElementLoadException;

    const-string v1, "node is null"

    invoke-direct {v0, v1}, Lmiui/app/screenelement/ScreenElementLoadException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 78
    :cond_0
    invoke-direct {p0, p1}, Lmiui/app/screenelement/data/VariableBinderManager;->loadBinders(Lorg/w3c/dom/Element;)V

    .line 79
    return-void
.end method

.method private loadBinders(Lorg/w3c/dom/Element;)V
    .locals 6
    .parameter "node"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/app/screenelement/ScreenElementLoadException;
        }
    .end annotation

    .prologue
    .line 96
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 97
    .local v0, children:Lorg/w3c/dom/NodeList;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 98
    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 99
    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/Element;

    .line 100
    .local v2, item:Lorg/w3c/dom/Element;
    iget-object v4, p0, Lmiui/app/screenelement/data/VariableBinderManager;->mContext:Lmiui/app/screenelement/ScreenContext;

    invoke-static {v2, v4, p0}, Lmiui/app/screenelement/data/VariableBinderManager;->createBinder(Lorg/w3c/dom/Element;Lmiui/app/screenelement/ScreenContext;Lmiui/app/screenelement/data/VariableBinderManager;)Lmiui/app/screenelement/data/VariableBinder;

    move-result-object v3

    .line 101
    .local v3, vb:Lmiui/app/screenelement/data/VariableBinder;
    if-eqz v3, :cond_0

    .line 102
    iget-object v4, p0, Lmiui/app/screenelement/data/VariableBinderManager;->mVariableBinders:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    .end local v2           #item:Lorg/w3c/dom/Element;
    .end local v3           #vb:Lmiui/app/screenelement/data/VariableBinder;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 106
    :cond_1
    return-void
.end method


# virtual methods
.method public addContentProviderBinder(Ljava/lang/String;)Lmiui/app/screenelement/data/ContentProviderBinder$Builder;
    .locals 1
    .parameter "uri"

    .prologue
    .line 109
    new-instance v0, Lmiui/app/screenelement/util/TextFormatter;

    invoke-direct {v0, p1}, Lmiui/app/screenelement/util/TextFormatter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lmiui/app/screenelement/data/VariableBinderManager;->addContentProviderBinder(Lmiui/app/screenelement/util/TextFormatter;)Lmiui/app/screenelement/data/ContentProviderBinder$Builder;

    move-result-object v0

    return-object v0
.end method

.method public addContentProviderBinder(Ljava/lang/String;Ljava/lang/String;)Lmiui/app/screenelement/data/ContentProviderBinder$Builder;
    .locals 1
    .parameter "uriFormat"
    .parameter "uriParas"

    .prologue
    .line 113
    new-instance v0, Lmiui/app/screenelement/util/TextFormatter;

    invoke-direct {v0, p1, p2}, Lmiui/app/screenelement/util/TextFormatter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lmiui/app/screenelement/data/VariableBinderManager;->addContentProviderBinder(Lmiui/app/screenelement/util/TextFormatter;)Lmiui/app/screenelement/data/ContentProviderBinder$Builder;

    move-result-object v0

    return-object v0
.end method

.method public addContentProviderBinder(Lmiui/app/screenelement/util/TextFormatter;)Lmiui/app/screenelement/data/ContentProviderBinder$Builder;
    .locals 2
    .parameter "uri"

    .prologue
    .line 117
    new-instance v0, Lmiui/app/screenelement/data/ContentProviderBinder;

    iget-object v1, p0, Lmiui/app/screenelement/data/VariableBinderManager;->mContext:Lmiui/app/screenelement/ScreenContext;

    invoke-direct {v0, v1, p0}, Lmiui/app/screenelement/data/ContentProviderBinder;-><init>(Lmiui/app/screenelement/ScreenContext;Lmiui/app/screenelement/data/ContentProviderBinder$QueryCompleteListener;)V

    .line 118
    .local v0, binder:Lmiui/app/screenelement/data/ContentProviderBinder;
    iput-object p1, v0, Lmiui/app/screenelement/data/ContentProviderBinder;->mUriFormatter:Lmiui/app/screenelement/util/TextFormatter;

    .line 119
    iget-object v1, p0, Lmiui/app/screenelement/data/VariableBinderManager;->mVariableBinders:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    new-instance v1, Lmiui/app/screenelement/data/ContentProviderBinder$Builder;

    invoke-direct {v1, v0}, Lmiui/app/screenelement/data/ContentProviderBinder$Builder;-><init>(Lmiui/app/screenelement/data/ContentProviderBinder;)V

    return-object v1
.end method

.method public findBinder(Ljava/lang/String;)Lmiui/app/screenelement/data/VariableBinder;
    .locals 3
    .parameter "name"

    .prologue
    .line 65
    iget-object v2, p0, Lmiui/app/screenelement/data/VariableBinderManager;->mVariableBinders:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/app/screenelement/data/VariableBinder;

    .line 66
    .local v0, binder:Lmiui/app/screenelement/data/VariableBinder;
    invoke-interface {v0}, Lmiui/app/screenelement/data/VariableBinder;->getName()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 69
    .end local v0           #binder:Lmiui/app/screenelement/data/VariableBinder;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public finish()V
    .locals 3

    .prologue
    .line 47
    iget-object v2, p0, Lmiui/app/screenelement/data/VariableBinderManager;->mVariableBinders:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/app/screenelement/data/VariableBinder;

    .line 48
    .local v0, binder:Lmiui/app/screenelement/data/VariableBinder;
    invoke-interface {v0}, Lmiui/app/screenelement/data/VariableBinder;->finish()V

    goto :goto_0

    .line 50
    .end local v0           #binder:Lmiui/app/screenelement/data/VariableBinder;
    :cond_0
    return-void
.end method

.method public init()V
    .locals 3

    .prologue
    .line 41
    iget-object v2, p0, Lmiui/app/screenelement/data/VariableBinderManager;->mVariableBinders:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/app/screenelement/data/VariableBinder;

    .line 42
    .local v0, binder:Lmiui/app/screenelement/data/VariableBinder;
    invoke-interface {v0}, Lmiui/app/screenelement/data/VariableBinder;->init()V

    goto :goto_0

    .line 44
    .end local v0           #binder:Lmiui/app/screenelement/data/VariableBinder;
    :cond_0
    return-void
.end method

.method public onQueryCompleted(Ljava/lang/String;)V
    .locals 5
    .parameter "name"

    .prologue
    .line 126
    iget-object v4, p0, Lmiui/app/screenelement/data/VariableBinderManager;->mVariableBinders:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/app/screenelement/data/VariableBinder;

    .line 127
    .local v0, binder:Lmiui/app/screenelement/data/VariableBinder;
    instance-of v4, v0, Lmiui/app/screenelement/data/ContentProviderBinder;

    if-eqz v4, :cond_0

    move-object v1, v0

    .line 128
    check-cast v1, Lmiui/app/screenelement/data/ContentProviderBinder;

    .line 129
    .local v1, cp:Lmiui/app/screenelement/data/ContentProviderBinder;
    invoke-virtual {v1}, Lmiui/app/screenelement/data/ContentProviderBinder;->getDependency()Ljava/lang/String;

    move-result-object v2

    .line 130
    .local v2, dependency:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 131
    invoke-virtual {v1}, Lmiui/app/screenelement/data/ContentProviderBinder;->startQuery()V

    goto :goto_0

    .line 135
    .end local v0           #binder:Lmiui/app/screenelement/data/VariableBinder;
    .end local v1           #cp:Lmiui/app/screenelement/data/ContentProviderBinder;
    .end local v2           #dependency:Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public pause()V
    .locals 3

    .prologue
    .line 53
    iget-object v2, p0, Lmiui/app/screenelement/data/VariableBinderManager;->mVariableBinders:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/app/screenelement/data/VariableBinder;

    .line 54
    .local v0, binder:Lmiui/app/screenelement/data/VariableBinder;
    invoke-interface {v0}, Lmiui/app/screenelement/data/VariableBinder;->pause()V

    goto :goto_0

    .line 56
    .end local v0           #binder:Lmiui/app/screenelement/data/VariableBinder;
    :cond_0
    return-void
.end method

.method public resume()V
    .locals 3

    .prologue
    .line 59
    iget-object v2, p0, Lmiui/app/screenelement/data/VariableBinderManager;->mVariableBinders:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/app/screenelement/data/VariableBinder;

    .line 60
    .local v0, binder:Lmiui/app/screenelement/data/VariableBinder;
    invoke-interface {v0}, Lmiui/app/screenelement/data/VariableBinder;->resume()V

    goto :goto_0

    .line 62
    .end local v0           #binder:Lmiui/app/screenelement/data/VariableBinder;
    :cond_0
    return-void
.end method

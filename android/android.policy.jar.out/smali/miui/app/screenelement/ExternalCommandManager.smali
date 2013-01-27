.class public Lmiui/app/screenelement/ExternalCommandManager;
.super Ljava/lang/Object;
.source "ExternalCommandManager.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ExternalCommandManager"

.field public static final TAG_NAME:Ljava/lang/String; = "ExternalCommands"


# instance fields
.field private mContext:Lmiui/app/screenelement/ScreenContext;

.field private mTriggers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lmiui/app/screenelement/CommandTrigger;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/app/screenelement/ScreenContext;Lmiui/app/screenelement/ScreenElementRoot;)V
    .locals 1
    .parameter "node"
    .parameter "c"
    .parameter "root"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/app/screenelement/ScreenElementLoadException;
        }
    .end annotation

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/app/screenelement/ExternalCommandManager;->mTriggers:Ljava/util/ArrayList;

    .line 31
    iput-object p2, p0, Lmiui/app/screenelement/ExternalCommandManager;->mContext:Lmiui/app/screenelement/ScreenContext;

    .line 32
    if-eqz p1, :cond_0

    .line 33
    invoke-direct {p0, p1, p3}, Lmiui/app/screenelement/ExternalCommandManager;->load(Lorg/w3c/dom/Element;Lmiui/app/screenelement/ScreenElementRoot;)V

    .line 34
    :cond_0
    return-void
.end method

.method private load(Lorg/w3c/dom/Element;Lmiui/app/screenelement/ScreenElementRoot;)V
    .locals 6
    .parameter "node"
    .parameter "root"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/app/screenelement/ScreenElementLoadException;
        }
    .end annotation

    .prologue
    .line 70
    if-nez p1, :cond_0

    .line 71
    const-string v3, "ExternalCommandManager"

    const-string v4, "node is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    new-instance v3, Lmiui/app/screenelement/ScreenElementLoadException;

    const-string v4, "node is null"

    invoke-direct {v3, v4}, Lmiui/app/screenelement/ScreenElementLoadException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 76
    :cond_0
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 77
    .local v0, children:Lorg/w3c/dom/NodeList;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-ge v1, v3, :cond_3

    .line 78
    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 79
    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/Element;

    .line 80
    .local v2, item:Lorg/w3c/dom/Element;
    invoke-interface {v2}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Trigger"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 77
    .end local v2           #item:Lorg/w3c/dom/Element;
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 83
    .restart local v2       #item:Lorg/w3c/dom/Element;
    :cond_2
    iget-object v3, p0, Lmiui/app/screenelement/ExternalCommandManager;->mTriggers:Ljava/util/ArrayList;

    new-instance v4, Lmiui/app/screenelement/CommandTrigger;

    iget-object v5, p0, Lmiui/app/screenelement/ExternalCommandManager;->mContext:Lmiui/app/screenelement/ScreenContext;

    invoke-direct {v4, v5, v2, p2}, Lmiui/app/screenelement/CommandTrigger;-><init>(Lmiui/app/screenelement/ScreenContext;Lorg/w3c/dom/Element;Lmiui/app/screenelement/ScreenElementRoot;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 86
    .end local v2           #item:Lorg/w3c/dom/Element;
    :cond_3
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 3

    .prologue
    .line 52
    iget-object v2, p0, Lmiui/app/screenelement/ExternalCommandManager;->mTriggers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/app/screenelement/CommandTrigger;

    .line 53
    .local v1, t:Lmiui/app/screenelement/CommandTrigger;
    invoke-virtual {v1}, Lmiui/app/screenelement/CommandTrigger;->finish()V

    goto :goto_0

    .line 55
    .end local v1           #t:Lmiui/app/screenelement/CommandTrigger;
    :cond_0
    return-void
.end method

.method public init()V
    .locals 3

    .prologue
    .line 46
    iget-object v2, p0, Lmiui/app/screenelement/ExternalCommandManager;->mTriggers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/app/screenelement/CommandTrigger;

    .line 47
    .local v1, t:Lmiui/app/screenelement/CommandTrigger;
    invoke-virtual {v1}, Lmiui/app/screenelement/CommandTrigger;->init()V

    goto :goto_0

    .line 49
    .end local v1           #t:Lmiui/app/screenelement/CommandTrigger;
    :cond_0
    return-void
.end method

.method public onCommand(Ljava/lang/String;)V
    .locals 3
    .parameter "command"

    .prologue
    .line 37
    iget-object v2, p0, Lmiui/app/screenelement/ExternalCommandManager;->mTriggers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/app/screenelement/CommandTrigger;

    .line 38
    .local v1, t:Lmiui/app/screenelement/CommandTrigger;
    invoke-virtual {v1}, Lmiui/app/screenelement/CommandTrigger;->getActionString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 39
    invoke-virtual {v1}, Lmiui/app/screenelement/CommandTrigger;->perform()V

    .line 43
    .end local v1           #t:Lmiui/app/screenelement/CommandTrigger;
    :cond_1
    return-void
.end method

.method public pause()V
    .locals 3

    .prologue
    .line 58
    iget-object v2, p0, Lmiui/app/screenelement/ExternalCommandManager;->mTriggers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/app/screenelement/CommandTrigger;

    .line 59
    .local v1, t:Lmiui/app/screenelement/CommandTrigger;
    invoke-virtual {v1}, Lmiui/app/screenelement/CommandTrigger;->pause()V

    goto :goto_0

    .line 61
    .end local v1           #t:Lmiui/app/screenelement/CommandTrigger;
    :cond_0
    return-void
.end method

.method public resume()V
    .locals 3

    .prologue
    .line 64
    iget-object v2, p0, Lmiui/app/screenelement/ExternalCommandManager;->mTriggers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/app/screenelement/CommandTrigger;

    .line 65
    .local v1, t:Lmiui/app/screenelement/CommandTrigger;
    invoke-virtual {v1}, Lmiui/app/screenelement/CommandTrigger;->resume()V

    goto :goto_0

    .line 67
    .end local v1           #t:Lmiui/app/screenelement/CommandTrigger;
    :cond_0
    return-void
.end method

.class public Lmiui/app/screenelement/CommandTrigger;
.super Ljava/lang/Object;
.source "CommandTrigger.java"


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "Trigger"


# instance fields
.field private mAction:Lmiui/app/screenelement/elements/ButtonScreenElement$ButtonAction;

.field private mActionString:Ljava/lang/String;

.field private mCommands:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lmiui/app/screenelement/ActionCommand;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Lmiui/app/screenelement/ScreenContext;

.field private mPropertyCommand:Lmiui/app/screenelement/ActionCommand$PropertyCommand;

.field protected mRoot:Lmiui/app/screenelement/ScreenElementRoot;


# direct methods
.method public constructor <init>(Lmiui/app/screenelement/ScreenContext;Lorg/w3c/dom/Element;Lmiui/app/screenelement/ScreenElementRoot;)V
    .locals 1
    .parameter "context"
    .parameter "ele"
    .parameter "root"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/app/screenelement/ScreenElementLoadException;
        }
    .end annotation

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    sget-object v0, Lmiui/app/screenelement/elements/ButtonScreenElement$ButtonAction;->Other:Lmiui/app/screenelement/elements/ButtonScreenElement$ButtonAction;

    iput-object v0, p0, Lmiui/app/screenelement/CommandTrigger;->mAction:Lmiui/app/screenelement/elements/ButtonScreenElement$ButtonAction;

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/app/screenelement/CommandTrigger;->mCommands:Ljava/util/ArrayList;

    .line 28
    iput-object p1, p0, Lmiui/app/screenelement/CommandTrigger;->mContext:Lmiui/app/screenelement/ScreenContext;

    .line 29
    iput-object p3, p0, Lmiui/app/screenelement/CommandTrigger;->mRoot:Lmiui/app/screenelement/ScreenElementRoot;

    .line 30
    invoke-direct {p0, p2, p3}, Lmiui/app/screenelement/CommandTrigger;->load(Lorg/w3c/dom/Element;Lmiui/app/screenelement/ScreenElementRoot;)V

    .line 31
    return-void
.end method

.method private load(Lorg/w3c/dom/Element;Lmiui/app/screenelement/ScreenElementRoot;)V
    .locals 11
    .parameter "ele"
    .parameter "root"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/app/screenelement/ScreenElementLoadException;
        }
    .end annotation

    .prologue
    .line 42
    if-eqz p1, :cond_8

    .line 43
    const-string v8, "target"

    invoke-interface {p1, v8}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 44
    .local v6, target:Ljava/lang/String;
    const-string v8, "property"

    invoke-interface {p1, v8}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 45
    .local v5, property:Ljava/lang/String;
    const-string v8, "value"

    invoke-interface {p1, v8}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 47
    .local v7, value:Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 48
    iget-object v8, p0, Lmiui/app/screenelement/CommandTrigger;->mContext:Lmiui/app/screenelement/ScreenContext;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, p2, v9, v7}, Lmiui/app/screenelement/ActionCommand$PropertyCommand;->create(Lmiui/app/screenelement/ScreenContext;Lmiui/app/screenelement/ScreenElementRoot;Ljava/lang/String;Ljava/lang/String;)Lmiui/app/screenelement/ActionCommand$PropertyCommand;

    move-result-object v8

    iput-object v8, p0, Lmiui/app/screenelement/CommandTrigger;->mPropertyCommand:Lmiui/app/screenelement/ActionCommand$PropertyCommand;

    .line 51
    :cond_0
    const-string v8, "action"

    invoke-interface {p1, v8}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 52
    .local v0, action:Ljava/lang/String;
    iput-object v0, p0, Lmiui/app/screenelement/CommandTrigger;->mActionString:Ljava/lang/String;

    .line 53
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 54
    const-string v8, "down"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 55
    sget-object v8, Lmiui/app/screenelement/elements/ButtonScreenElement$ButtonAction;->Down:Lmiui/app/screenelement/elements/ButtonScreenElement$ButtonAction;

    iput-object v8, p0, Lmiui/app/screenelement/CommandTrigger;->mAction:Lmiui/app/screenelement/elements/ButtonScreenElement$ButtonAction;

    .line 82
    :cond_1
    :goto_0
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 83
    .local v1, children:Lorg/w3c/dom/NodeList;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v8

    if-ge v3, v8, :cond_8

    .line 84
    invoke-interface {v1, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v8

    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_2

    .line 85
    invoke-interface {v1, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    check-cast v4, Lorg/w3c/dom/Element;

    .line 86
    .local v4, item:Lorg/w3c/dom/Element;
    iget-object v8, p0, Lmiui/app/screenelement/CommandTrigger;->mContext:Lmiui/app/screenelement/ScreenContext;

    invoke-static {v8, v4, p2}, Lmiui/app/screenelement/ActionCommand;->create(Lmiui/app/screenelement/ScreenContext;Lorg/w3c/dom/Element;Lmiui/app/screenelement/ScreenElementRoot;)Lmiui/app/screenelement/ActionCommand;

    move-result-object v2

    .line 87
    .local v2, command:Lmiui/app/screenelement/ActionCommand;
    if-eqz v2, :cond_2

    .line 88
    iget-object v8, p0, Lmiui/app/screenelement/CommandTrigger;->mCommands:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    .end local v2           #command:Lmiui/app/screenelement/ActionCommand;
    .end local v4           #item:Lorg/w3c/dom/Element;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 56
    .end local v1           #children:Lorg/w3c/dom/NodeList;
    .end local v3           #i:I
    :cond_3
    const-string v8, "up"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 57
    sget-object v8, Lmiui/app/screenelement/elements/ButtonScreenElement$ButtonAction;->Up:Lmiui/app/screenelement/elements/ButtonScreenElement$ButtonAction;

    iput-object v8, p0, Lmiui/app/screenelement/CommandTrigger;->mAction:Lmiui/app/screenelement/elements/ButtonScreenElement$ButtonAction;

    goto :goto_0

    .line 58
    :cond_4
    const-string v8, "double"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 59
    sget-object v8, Lmiui/app/screenelement/elements/ButtonScreenElement$ButtonAction;->Double:Lmiui/app/screenelement/elements/ButtonScreenElement$ButtonAction;

    iput-object v8, p0, Lmiui/app/screenelement/CommandTrigger;->mAction:Lmiui/app/screenelement/elements/ButtonScreenElement$ButtonAction;

    goto :goto_0

    .line 60
    :cond_5
    const-string v8, "long"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 61
    sget-object v8, Lmiui/app/screenelement/elements/ButtonScreenElement$ButtonAction;->Long:Lmiui/app/screenelement/elements/ButtonScreenElement$ButtonAction;

    iput-object v8, p0, Lmiui/app/screenelement/CommandTrigger;->mAction:Lmiui/app/screenelement/elements/ButtonScreenElement$ButtonAction;

    goto :goto_0

    .line 62
    :cond_6
    const-string v8, "cancel"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 63
    sget-object v8, Lmiui/app/screenelement/elements/ButtonScreenElement$ButtonAction;->Cancel:Lmiui/app/screenelement/elements/ButtonScreenElement$ButtonAction;

    iput-object v8, p0, Lmiui/app/screenelement/CommandTrigger;->mAction:Lmiui/app/screenelement/elements/ButtonScreenElement$ButtonAction;

    goto :goto_0

    .line 65
    :cond_7
    sget-object v8, Lmiui/app/screenelement/elements/ButtonScreenElement$ButtonAction;->Other:Lmiui/app/screenelement/elements/ButtonScreenElement$ButtonAction;

    iput-object v8, p0, Lmiui/app/screenelement/CommandTrigger;->mAction:Lmiui/app/screenelement/elements/ButtonScreenElement$ButtonAction;

    goto :goto_0

    .line 93
    .end local v0           #action:Ljava/lang/String;
    .end local v5           #property:Ljava/lang/String;
    .end local v6           #target:Ljava/lang/String;
    .end local v7           #value:Ljava/lang/String;
    :cond_8
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 3

    .prologue
    .line 112
    iget-object v2, p0, Lmiui/app/screenelement/CommandTrigger;->mCommands:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/app/screenelement/ActionCommand;

    .line 113
    .local v0, cmd:Lmiui/app/screenelement/ActionCommand;
    invoke-virtual {v0}, Lmiui/app/screenelement/ActionCommand;->finish()V

    goto :goto_0

    .line 115
    .end local v0           #cmd:Lmiui/app/screenelement/ActionCommand;
    :cond_0
    return-void
.end method

.method public getAction()Lmiui/app/screenelement/elements/ButtonScreenElement$ButtonAction;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lmiui/app/screenelement/CommandTrigger;->mAction:Lmiui/app/screenelement/elements/ButtonScreenElement$ButtonAction;

    return-object v0
.end method

.method public getActionString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lmiui/app/screenelement/CommandTrigger;->mActionString:Ljava/lang/String;

    return-object v0
.end method

.method public init()V
    .locals 3

    .prologue
    .line 106
    iget-object v2, p0, Lmiui/app/screenelement/CommandTrigger;->mCommands:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/app/screenelement/ActionCommand;

    .line 107
    .local v0, cmd:Lmiui/app/screenelement/ActionCommand;
    invoke-virtual {v0}, Lmiui/app/screenelement/ActionCommand;->init()V

    goto :goto_0

    .line 109
    .end local v0           #cmd:Lmiui/app/screenelement/ActionCommand;
    :cond_0
    return-void
.end method

.method public pause()V
    .locals 3

    .prologue
    .line 118
    iget-object v2, p0, Lmiui/app/screenelement/CommandTrigger;->mCommands:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/app/screenelement/ActionCommand;

    .line 119
    .local v0, cmd:Lmiui/app/screenelement/ActionCommand;
    invoke-virtual {v0}, Lmiui/app/screenelement/ActionCommand;->pause()V

    goto :goto_0

    .line 121
    .end local v0           #cmd:Lmiui/app/screenelement/ActionCommand;
    :cond_0
    return-void
.end method

.method public perform()V
    .locals 3

    .prologue
    .line 96
    iget-object v2, p0, Lmiui/app/screenelement/CommandTrigger;->mPropertyCommand:Lmiui/app/screenelement/ActionCommand$PropertyCommand;

    if-eqz v2, :cond_0

    .line 97
    iget-object v2, p0, Lmiui/app/screenelement/CommandTrigger;->mPropertyCommand:Lmiui/app/screenelement/ActionCommand$PropertyCommand;

    invoke-virtual {v2}, Lmiui/app/screenelement/ActionCommand$PropertyCommand;->perform()V

    .line 100
    :cond_0
    iget-object v2, p0, Lmiui/app/screenelement/CommandTrigger;->mCommands:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/app/screenelement/ActionCommand;

    .line 101
    .local v0, cmd:Lmiui/app/screenelement/ActionCommand;
    invoke-virtual {v0}, Lmiui/app/screenelement/ActionCommand;->perform()V

    goto :goto_0

    .line 103
    .end local v0           #cmd:Lmiui/app/screenelement/ActionCommand;
    :cond_1
    return-void
.end method

.method public resume()V
    .locals 3

    .prologue
    .line 124
    iget-object v2, p0, Lmiui/app/screenelement/CommandTrigger;->mCommands:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/app/screenelement/ActionCommand;

    .line 125
    .local v0, cmd:Lmiui/app/screenelement/ActionCommand;
    invoke-virtual {v0}, Lmiui/app/screenelement/ActionCommand;->resume()V

    goto :goto_0

    .line 127
    .end local v0           #cmd:Lmiui/app/screenelement/ActionCommand;
    :cond_0
    return-void
.end method

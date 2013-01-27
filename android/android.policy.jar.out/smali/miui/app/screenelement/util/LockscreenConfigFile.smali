.class public Lmiui/app/screenelement/util/LockscreenConfigFile;
.super Ljava/lang/Object;
.source "LockscreenConfigFile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/app/screenelement/util/LockscreenConfigFile$OnLoadElementListener;,
        Lmiui/app/screenelement/util/LockscreenConfigFile$Variable;
    }
.end annotation


# static fields
.field private static final TAG_ROOT:Ljava/lang/String; = "Config"

.field private static final TAG_TASK:Ljava/lang/String; = "Intent"

.field private static final TAG_TASKS:Ljava/lang/String; = "Tasks"

.field private static final TAG_VARIABLE:Ljava/lang/String; = "Variable"

.field private static final TAG_VARIABLES:Ljava/lang/String; = "Variables"


# instance fields
.field private mFilePath:Ljava/lang/String;

.field private mTasks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lmiui/app/screenelement/util/Task;",
            ">;"
        }
    .end annotation
.end field

.field private mVariables:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lmiui/app/screenelement/util/LockscreenConfigFile$Variable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmiui/app/screenelement/util/LockscreenConfigFile;->mVariables:Ljava/util/HashMap;

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmiui/app/screenelement/util/LockscreenConfigFile;->mTasks:Ljava/util/HashMap;

    .line 196
    return-void
.end method

.method static synthetic access$000(Lmiui/app/screenelement/util/LockscreenConfigFile;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 27
    invoke-direct {p0, p1, p2, p3}, Lmiui/app/screenelement/util/LockscreenConfigFile;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private loadList(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;Lmiui/app/screenelement/util/LockscreenConfigFile$OnLoadElementListener;)V
    .locals 6
    .parameter "root"
    .parameter "listTag"
    .parameter "itemTag"
    .parameter "listener"

    .prologue
    .line 201
    invoke-static {p1, p2}, Lmiui/app/screenelement/util/Utils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p1

    .line 202
    if-nez p1, :cond_1

    .line 212
    :cond_0
    return-void

    .line 204
    :cond_1
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 205
    .local v0, children:Lorg/w3c/dom/NodeList;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 206
    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    .line 207
    .local v3, node:Lorg/w3c/dom/Node;
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move-object v2, v3

    .line 208
    check-cast v2, Lorg/w3c/dom/Element;

    .line 209
    .local v2, item:Lorg/w3c/dom/Element;
    invoke-interface {p4, v2}, Lmiui/app/screenelement/util/LockscreenConfigFile$OnLoadElementListener;->OnLoadElement(Lorg/w3c/dom/Element;)V

    .line 205
    .end local v2           #item:Lorg/w3c/dom/Element;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private loadTasks(Lorg/w3c/dom/Element;)V
    .locals 3
    .parameter "root"

    .prologue
    .line 188
    const-string v0, "Tasks"

    const-string v1, "Intent"

    new-instance v2, Lmiui/app/screenelement/util/LockscreenConfigFile$2;

    invoke-direct {v2, p0}, Lmiui/app/screenelement/util/LockscreenConfigFile$2;-><init>(Lmiui/app/screenelement/util/LockscreenConfigFile;)V

    invoke-direct {p0, p1, v0, v1, v2}, Lmiui/app/screenelement/util/LockscreenConfigFile;->loadList(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;Lmiui/app/screenelement/util/LockscreenConfigFile$OnLoadElementListener;)V

    .line 194
    return-void
.end method

.method private loadVariables(Lorg/w3c/dom/Element;)V
    .locals 3
    .parameter "root"

    .prologue
    .line 179
    const-string v0, "Variables"

    const-string v1, "Variable"

    new-instance v2, Lmiui/app/screenelement/util/LockscreenConfigFile$1;

    invoke-direct {v2, p0}, Lmiui/app/screenelement/util/LockscreenConfigFile$1;-><init>(Lmiui/app/screenelement/util/LockscreenConfigFile;)V

    invoke-direct {p0, p1, v0, v1, v2}, Lmiui/app/screenelement/util/LockscreenConfigFile;->loadList(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;Lmiui/app/screenelement/util/LockscreenConfigFile$OnLoadElementListener;)V

    .line 185
    return-void
.end method

.method private put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "name"
    .parameter "value"
    .parameter "type"

    .prologue
    .line 242
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 254
    :cond_0
    :goto_0
    return-void

    .line 244
    :cond_1
    const-string v1, "string"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "number"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 246
    :cond_2
    iget-object v1, p0, Lmiui/app/screenelement/util/LockscreenConfigFile;->mVariables:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/app/screenelement/util/LockscreenConfigFile$Variable;

    .line 247
    .local v0, item:Lmiui/app/screenelement/util/LockscreenConfigFile$Variable;
    if-nez v0, :cond_3

    .line 248
    new-instance v0, Lmiui/app/screenelement/util/LockscreenConfigFile$Variable;

    .end local v0           #item:Lmiui/app/screenelement/util/LockscreenConfigFile$Variable;
    invoke-direct {v0, p0}, Lmiui/app/screenelement/util/LockscreenConfigFile$Variable;-><init>(Lmiui/app/screenelement/util/LockscreenConfigFile;)V

    .line 249
    .restart local v0       #item:Lmiui/app/screenelement/util/LockscreenConfigFile$Variable;
    iput-object p1, v0, Lmiui/app/screenelement/util/LockscreenConfigFile$Variable;->name:Ljava/lang/String;

    .line 250
    iget-object v1, p0, Lmiui/app/screenelement/util/LockscreenConfigFile;->mVariables:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    :cond_3
    iput-object p3, v0, Lmiui/app/screenelement/util/LockscreenConfigFile$Variable;->type:Ljava/lang/String;

    .line 253
    iput-object p2, v0, Lmiui/app/screenelement/util/LockscreenConfigFile$Variable;->value:Ljava/lang/String;

    goto :goto_0
.end method

.method private static writeTag(Ljava/io/FileWriter;Ljava/lang/String;Z)V
    .locals 1
    .parameter "fw"
    .parameter "tag"
    .parameter "end"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 151
    const-string v0, "<"

    invoke-virtual {p0, v0}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 152
    if-eqz p2, :cond_0

    .line 153
    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 154
    :cond_0
    invoke-virtual {p0, p1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 155
    const-string v0, ">\n"

    invoke-virtual {p0, v0}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 156
    return-void
.end method

.method private static writeTag(Ljava/io/FileWriter;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1
    .parameter "fw"
    .parameter "tag"
    .parameter "names"
    .parameter "values"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 159
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lmiui/app/screenelement/util/LockscreenConfigFile;->writeTag(Ljava/io/FileWriter;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Z)V

    .line 160
    return-void
.end method

.method private static writeTag(Ljava/io/FileWriter;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Z)V
    .locals 2
    .parameter "fw"
    .parameter "tag"
    .parameter "names"
    .parameter "values"
    .parameter "ignoreEmptyValues"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 164
    const-string v1, "<"

    invoke-virtual {p0, v1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 165
    invoke-virtual {p0, p1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 166
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_1

    .line 167
    if-eqz p4, :cond_0

    aget-object v1, p3, v0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 166
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 169
    :cond_0
    const-string v1, " "

    invoke-virtual {p0, v1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 170
    aget-object v1, p2, v0

    invoke-virtual {p0, v1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 171
    const-string v1, "=\""

    invoke-virtual {p0, v1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 172
    aget-object v1, p3, v0

    invoke-virtual {p0, v1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 173
    const-string v1, "\""

    invoke-virtual {p0, v1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    goto :goto_1

    .line 175
    :cond_1
    const-string v1, "/>\n"

    invoke-virtual {p0, v1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 176
    return-void
.end method

.method private writeTasks(Ljava/io/FileWriter;)V
    .locals 11
    .parameter "fw"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 132
    iget-object v4, p0, Lmiui/app/screenelement/util/LockscreenConfigFile;->mTasks:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    if-nez v4, :cond_0

    .line 148
    :goto_0
    return-void

    .line 135
    :cond_0
    const-string v4, "Tasks"

    invoke-static {p1, v4, v7}, Lmiui/app/screenelement/util/LockscreenConfigFile;->writeTag(Ljava/io/FileWriter;Ljava/lang/String;Z)V

    .line 137
    const/4 v4, 0x7

    new-array v2, v4, [Ljava/lang/String;

    sget-object v4, Lmiui/app/screenelement/util/Task;->TAG_ID:Ljava/lang/String;

    aput-object v4, v2, v7

    sget-object v4, Lmiui/app/screenelement/util/Task;->TAG_ACTION:Ljava/lang/String;

    aput-object v4, v2, v6

    sget-object v4, Lmiui/app/screenelement/util/Task;->TAG_TYPE:Ljava/lang/String;

    aput-object v4, v2, v8

    sget-object v4, Lmiui/app/screenelement/util/Task;->TAG_CATEGORY:Ljava/lang/String;

    aput-object v4, v2, v9

    sget-object v4, Lmiui/app/screenelement/util/Task;->TAG_PACKAGE:Ljava/lang/String;

    aput-object v4, v2, v10

    const/4 v4, 0x5

    sget-object v5, Lmiui/app/screenelement/util/Task;->TAG_CLASS:Ljava/lang/String;

    aput-object v5, v2, v4

    const/4 v4, 0x6

    sget-object v5, Lmiui/app/screenelement/util/Task;->TAG_NAME:Ljava/lang/String;

    aput-object v5, v2, v4

    .line 141
    .local v2, names:[Ljava/lang/String;
    iget-object v4, p0, Lmiui/app/screenelement/util/LockscreenConfigFile;->mTasks:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/app/screenelement/util/Task;

    .line 142
    .local v1, item:Lmiui/app/screenelement/util/Task;
    const/4 v4, 0x7

    new-array v3, v4, [Ljava/lang/String;

    iget-object v4, v1, Lmiui/app/screenelement/util/Task;->id:Ljava/lang/String;

    aput-object v4, v3, v7

    iget-object v4, v1, Lmiui/app/screenelement/util/Task;->action:Ljava/lang/String;

    aput-object v4, v3, v6

    iget-object v4, v1, Lmiui/app/screenelement/util/Task;->type:Ljava/lang/String;

    aput-object v4, v3, v8

    iget-object v4, v1, Lmiui/app/screenelement/util/Task;->category:Ljava/lang/String;

    aput-object v4, v3, v9

    iget-object v4, v1, Lmiui/app/screenelement/util/Task;->packageName:Ljava/lang/String;

    aput-object v4, v3, v10

    const/4 v4, 0x5

    iget-object v5, v1, Lmiui/app/screenelement/util/Task;->className:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x6

    iget-object v5, v1, Lmiui/app/screenelement/util/Task;->name:Ljava/lang/String;

    aput-object v5, v3, v4

    .line 145
    .local v3, values:[Ljava/lang/String;
    const-string v4, "Intent"

    invoke-static {p1, v4, v2, v3, v6}, Lmiui/app/screenelement/util/LockscreenConfigFile;->writeTag(Ljava/io/FileWriter;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Z)V

    goto :goto_1

    .line 147
    .end local v1           #item:Lmiui/app/screenelement/util/Task;
    .end local v3           #values:[Ljava/lang/String;
    :cond_1
    const-string v4, "Tasks"

    invoke-static {p1, v4, v6}, Lmiui/app/screenelement/util/LockscreenConfigFile;->writeTag(Ljava/io/FileWriter;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method private writeVariables(Ljava/io/FileWriter;)V
    .locals 9
    .parameter "fw"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 114
    iget-object v4, p0, Lmiui/app/screenelement/util/LockscreenConfigFile;->mVariables:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    if-nez v4, :cond_0

    .line 129
    :goto_0
    return-void

    .line 117
    :cond_0
    const-string v4, "Variables"

    invoke-static {p1, v4, v5}, Lmiui/app/screenelement/util/LockscreenConfigFile;->writeTag(Ljava/io/FileWriter;Ljava/lang/String;Z)V

    .line 119
    new-array v2, v8, [Ljava/lang/String;

    const-string v4, "name"

    aput-object v4, v2, v5

    const-string v4, "type"

    aput-object v4, v2, v6

    const-string v4, "value"

    aput-object v4, v2, v7

    .line 122
    .local v2, names:[Ljava/lang/String;
    iget-object v4, p0, Lmiui/app/screenelement/util/LockscreenConfigFile;->mVariables:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/app/screenelement/util/LockscreenConfigFile$Variable;

    .line 123
    .local v1, item:Lmiui/app/screenelement/util/LockscreenConfigFile$Variable;
    new-array v3, v8, [Ljava/lang/String;

    iget-object v4, v1, Lmiui/app/screenelement/util/LockscreenConfigFile$Variable;->name:Ljava/lang/String;

    aput-object v4, v3, v5

    iget-object v4, v1, Lmiui/app/screenelement/util/LockscreenConfigFile$Variable;->type:Ljava/lang/String;

    aput-object v4, v3, v6

    iget-object v4, v1, Lmiui/app/screenelement/util/LockscreenConfigFile$Variable;->value:Ljava/lang/String;

    aput-object v4, v3, v7

    .line 126
    .local v3, values:[Ljava/lang/String;
    const-string v4, "Variable"

    invoke-static {p1, v4, v2, v3}, Lmiui/app/screenelement/util/LockscreenConfigFile;->writeTag(Ljava/io/FileWriter;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_1

    .line 128
    .end local v1           #item:Lmiui/app/screenelement/util/LockscreenConfigFile$Variable;
    .end local v3           #values:[Ljava/lang/String;
    :cond_1
    const-string v4, "Variables"

    invoke-static {p1, v4, v6}, Lmiui/app/screenelement/util/LockscreenConfigFile;->writeTag(Ljava/io/FileWriter;Ljava/lang/String;Z)V

    goto :goto_0
.end method


# virtual methods
.method public getTask(Ljava/lang/String;)Lmiui/app/screenelement/util/Task;
    .locals 1
    .parameter "id"

    .prologue
    .line 238
    iget-object v0, p0, Lmiui/app/screenelement/util/LockscreenConfigFile;->mTasks:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/app/screenelement/util/Task;

    return-object v0
.end method

.method public getTasks()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lmiui/app/screenelement/util/Task;",
            ">;"
        }
    .end annotation

    .prologue
    .line 58
    iget-object v0, p0, Lmiui/app/screenelement/util/LockscreenConfigFile;->mTasks:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getVariable(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "name"

    .prologue
    .line 215
    iget-object v1, p0, Lmiui/app/screenelement/util/LockscreenConfigFile;->mVariables:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/app/screenelement/util/LockscreenConfigFile$Variable;

    .line 216
    .local v0, item:Lmiui/app/screenelement/util/LockscreenConfigFile$Variable;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, v0, Lmiui/app/screenelement/util/LockscreenConfigFile$Variable;->value:Ljava/lang/String;

    goto :goto_0
.end method

.method public getVariables()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lmiui/app/screenelement/util/LockscreenConfigFile$Variable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 54
    iget-object v0, p0, Lmiui/app/screenelement/util/LockscreenConfigFile;->mVariables:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public load(Ljava/lang/String;)Z
    .locals 9
    .parameter "filePath"

    .prologue
    const/4 v6, 0x0

    .line 83
    iput-object p1, p0, Lmiui/app/screenelement/util/LockscreenConfigFile;->mFilePath:Ljava/lang/String;

    .line 84
    iget-object v7, p0, Lmiui/app/screenelement/util/LockscreenConfigFile;->mVariables:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->clear()V

    .line 85
    iget-object v7, p0, Lmiui/app/screenelement/util/LockscreenConfigFile;->mTasks:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->clear()V

    .line 86
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v1

    .line 89
    .local v1, dbf:Ljavax/xml/parsers/DocumentBuilderFactory;
    :try_start_0
    invoke-virtual {v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    .line 90
    .local v0, db:Ljavax/xml/parsers/DocumentBuilder;
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 91
    .local v4, is:Ljava/io/InputStream;
    invoke-virtual {v0, v4}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v2

    .line 92
    .local v2, doc:Lorg/w3c/dom/Document;
    invoke-interface {v2}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v5

    .line 93
    .local v5, root:Lorg/w3c/dom/Element;
    if-nez v5, :cond_1

    .line 110
    .end local v0           #db:Ljavax/xml/parsers/DocumentBuilder;
    .end local v2           #doc:Lorg/w3c/dom/Document;
    .end local v4           #is:Ljava/io/InputStream;
    .end local v5           #root:Lorg/w3c/dom/Element;
    :cond_0
    :goto_0
    return v6

    .line 95
    .restart local v0       #db:Ljavax/xml/parsers/DocumentBuilder;
    .restart local v2       #doc:Lorg/w3c/dom/Document;
    .restart local v4       #is:Ljava/io/InputStream;
    .restart local v5       #root:Lorg/w3c/dom/Element;
    :cond_1
    invoke-interface {v5}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "Config"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 97
    invoke-direct {p0, v5}, Lmiui/app/screenelement/util/LockscreenConfigFile;->loadVariables(Lorg/w3c/dom/Element;)V

    .line 98
    invoke-direct {p0, v5}, Lmiui/app/screenelement/util/LockscreenConfigFile;->loadTasks(Lorg/w3c/dom/Element;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 99
    const/4 v6, 0x1

    goto :goto_0

    .line 101
    .end local v0           #db:Ljavax/xml/parsers/DocumentBuilder;
    .end local v2           #doc:Lorg/w3c/dom/Document;
    .end local v4           #is:Ljava/io/InputStream;
    .end local v5           #root:Lorg/w3c/dom/Element;
    :catch_0
    move-exception v3

    .line 102
    .local v3, e:Ljavax/xml/parsers/ParserConfigurationException;
    invoke-virtual {v3}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V

    goto :goto_0

    .line 103
    .end local v3           #e:Ljavax/xml/parsers/ParserConfigurationException;
    :catch_1
    move-exception v3

    .line 104
    .local v3, e:Lorg/xml/sax/SAXException;
    invoke-virtual {v3}, Lorg/xml/sax/SAXException;->printStackTrace()V

    goto :goto_0

    .line 105
    .end local v3           #e:Lorg/xml/sax/SAXException;
    :catch_2
    move-exception v3

    .line 106
    .local v3, e:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 107
    .end local v3           #e:Ljava/io/IOException;
    :catch_3
    move-exception v3

    .line 108
    .local v3, e:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 100
    .end local v3           #e:Ljava/lang/Exception;
    :catch_4
    move-exception v7

    goto :goto_0
.end method

.method public putNumber(Ljava/lang/String;D)V
    .locals 1
    .parameter "name"
    .parameter "value"

    .prologue
    .line 228
    invoke-static {p2, p3}, Lmiui/app/screenelement/util/Utils;->doubleToString(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lmiui/app/screenelement/util/LockscreenConfigFile;->putNumber(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    return-void
.end method

.method public putNumber(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "name"
    .parameter "value"

    .prologue
    .line 224
    const-string v0, "number"

    invoke-direct {p0, p1, p2, v0}, Lmiui/app/screenelement/util/LockscreenConfigFile;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    return-void
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "name"
    .parameter "value"

    .prologue
    .line 220
    const-string v0, "string"

    invoke-direct {p0, p1, p2, v0}, Lmiui/app/screenelement/util/LockscreenConfigFile;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    return-void
.end method

.method public putTask(Lmiui/app/screenelement/util/Task;)V
    .locals 2
    .parameter "task"

    .prologue
    .line 232
    if-eqz p1, :cond_0

    iget-object v0, p1, Lmiui/app/screenelement/util/Task;->id:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 235
    :cond_0
    :goto_0
    return-void

    .line 234
    :cond_1
    iget-object v0, p0, Lmiui/app/screenelement/util/LockscreenConfigFile;->mTasks:Ljava/util/HashMap;

    iget-object v1, p1, Lmiui/app/screenelement/util/Task;->id:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public save()Z
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lmiui/app/screenelement/util/LockscreenConfigFile;->mFilePath:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lmiui/app/screenelement/util/LockscreenConfigFile;->save(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public save(Ljava/lang/String;)Z
    .locals 7
    .parameter "filePath"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 67
    :try_start_0
    new-instance v1, Ljava/io/FileWriter;

    invoke-direct {v1, p1}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    .line 68
    .local v1, fw:Ljava/io/FileWriter;
    const-string v4, "Config"

    const/4 v5, 0x0

    invoke-static {v1, v4, v5}, Lmiui/app/screenelement/util/LockscreenConfigFile;->writeTag(Ljava/io/FileWriter;Ljava/lang/String;Z)V

    .line 69
    invoke-direct {p0, v1}, Lmiui/app/screenelement/util/LockscreenConfigFile;->writeVariables(Ljava/io/FileWriter;)V

    .line 70
    invoke-direct {p0, v1}, Lmiui/app/screenelement/util/LockscreenConfigFile;->writeTasks(Ljava/io/FileWriter;)V

    .line 71
    const-string v4, "Config"

    const/4 v5, 0x1

    invoke-static {v1, v4, v5}, Lmiui/app/screenelement/util/LockscreenConfigFile;->writeTag(Ljava/io/FileWriter;Ljava/lang/String;Z)V

    .line 72
    invoke-virtual {v1}, Ljava/io/FileWriter;->flush()V

    .line 73
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V

    .line 74
    const/16 v4, 0x1ff

    const/4 v5, -0x1

    const/4 v6, -0x1

    invoke-static {p1, v4, v5, v6}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    .end local v1           #fw:Ljava/io/FileWriter;
    :goto_0
    return v2

    .line 75
    :catch_0
    move-exception v0

    .line 76
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move v2, v3

    .line 77
    goto :goto_0
.end method

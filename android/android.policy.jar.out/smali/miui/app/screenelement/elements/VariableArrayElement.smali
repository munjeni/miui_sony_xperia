.class public Lmiui/app/screenelement/elements/VariableArrayElement;
.super Lmiui/app/screenelement/elements/ScreenElement;
.source "VariableArrayElement.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/app/screenelement/elements/VariableArrayElement$Item;,
        Lmiui/app/screenelement/elements/VariableArrayElement$Var;
    }
.end annotation


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "VarArray"


# instance fields
.field private mArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lmiui/app/screenelement/elements/VariableArrayElement$Item;",
            ">;"
        }
    .end annotation
.end field

.field private mIsStringType:Z

.field private mVars:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lmiui/app/screenelement/elements/VariableArrayElement$Var;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/app/screenelement/ScreenContext;Lmiui/app/screenelement/ScreenElementRoot;)V
    .locals 3
    .parameter "ele"
    .parameter "c"
    .parameter "root"

    .prologue
    .line 154
    invoke-direct {p0, p1, p2, p3}, Lmiui/app/screenelement/elements/ScreenElement;-><init>(Lorg/w3c/dom/Element;Lmiui/app/screenelement/ScreenContext;Lmiui/app/screenelement/ScreenElementRoot;)V

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/app/screenelement/elements/VariableArrayElement;->mArray:Ljava/util/ArrayList;

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/app/screenelement/elements/VariableArrayElement;->mVars:Ljava/util/ArrayList;

    .line 155
    if-eqz p1, :cond_0

    .line 156
    const-string v0, "string"

    const-string v1, "type"

    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lmiui/app/screenelement/elements/VariableArrayElement;->mIsStringType:Z

    .line 158
    const-string v0, "Vars"

    invoke-static {p1, v0}, Lmiui/app/screenelement/util/Utils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    const-string v1, "Var"

    new-instance v2, Lmiui/app/screenelement/elements/VariableArrayElement$1;

    invoke-direct {v2, p0}, Lmiui/app/screenelement/elements/VariableArrayElement$1;-><init>(Lmiui/app/screenelement/elements/VariableArrayElement;)V

    invoke-static {v0, v1, v2}, Lmiui/app/screenelement/util/Utils;->traverseXmlElementChildren(Lorg/w3c/dom/Element;Ljava/lang/String;Lmiui/app/screenelement/util/Utils$XmlTraverseListener;)V

    .line 165
    const-string v0, "Items"

    invoke-static {p1, v0}, Lmiui/app/screenelement/util/Utils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    const-string v1, "Item"

    new-instance v2, Lmiui/app/screenelement/elements/VariableArrayElement$2;

    invoke-direct {v2, p0}, Lmiui/app/screenelement/elements/VariableArrayElement$2;-><init>(Lmiui/app/screenelement/elements/VariableArrayElement;)V

    invoke-static {v0, v1, v2}, Lmiui/app/screenelement/util/Utils;->traverseXmlElementChildren(Lorg/w3c/dom/Element;Ljava/lang/String;Lmiui/app/screenelement/util/Utils$XmlTraverseListener;)V

    .line 172
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lmiui/app/screenelement/elements/VariableArrayElement;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-boolean v0, p0, Lmiui/app/screenelement/elements/VariableArrayElement;->mIsStringType:Z

    return v0
.end method

.method static synthetic access$100(Lmiui/app/screenelement/elements/VariableArrayElement;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lmiui/app/screenelement/elements/VariableArrayElement;->mArray:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lmiui/app/screenelement/elements/VariableArrayElement;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lmiui/app/screenelement/elements/VariableArrayElement;->mVars:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method public init()V
    .locals 3

    .prologue
    .line 187
    iget-object v2, p0, Lmiui/app/screenelement/elements/VariableArrayElement;->mVars:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/app/screenelement/elements/VariableArrayElement$Var;

    .line 188
    .local v1, v:Lmiui/app/screenelement/elements/VariableArrayElement$Var;
    invoke-virtual {v1}, Lmiui/app/screenelement/elements/VariableArrayElement$Var;->init()V

    goto :goto_0

    .line 190
    .end local v1           #v:Lmiui/app/screenelement/elements/VariableArrayElement$Var;
    :cond_0
    return-void
.end method

.method public render(Landroid/graphics/Canvas;)V
    .locals 0
    .parameter "c"

    .prologue
    .line 177
    return-void
.end method

.method public tick(J)V
    .locals 3
    .parameter "currentTime"

    .prologue
    .line 181
    iget-object v2, p0, Lmiui/app/screenelement/elements/VariableArrayElement;->mVars:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/app/screenelement/elements/VariableArrayElement$Var;

    .line 182
    .local v1, v:Lmiui/app/screenelement/elements/VariableArrayElement$Var;
    invoke-virtual {v1}, Lmiui/app/screenelement/elements/VariableArrayElement$Var;->tick()V

    goto :goto_0

    .line 184
    .end local v1           #v:Lmiui/app/screenelement/elements/VariableArrayElement$Var;
    :cond_0
    return-void
.end method

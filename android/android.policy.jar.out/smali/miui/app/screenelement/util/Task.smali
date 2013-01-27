.class public Lmiui/app/screenelement/util/Task;
.super Ljava/lang/Object;
.source "Task.java"


# static fields
.field public static TAG_ACTION:Ljava/lang/String;

.field public static TAG_CATEGORY:Ljava/lang/String;

.field public static TAG_CLASS:Ljava/lang/String;

.field public static TAG_ID:Ljava/lang/String;

.field public static TAG_NAME:Ljava/lang/String;

.field public static TAG_PACKAGE:Ljava/lang/String;

.field public static TAG_TYPE:Ljava/lang/String;


# instance fields
.field public action:Ljava/lang/String;

.field public category:Ljava/lang/String;

.field public className:Ljava/lang/String;

.field public id:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public packageName:Ljava/lang/String;

.field public type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 7
    const-string v0, "id"

    sput-object v0, Lmiui/app/screenelement/util/Task;->TAG_ID:Ljava/lang/String;

    .line 9
    const-string v0, "action"

    sput-object v0, Lmiui/app/screenelement/util/Task;->TAG_ACTION:Ljava/lang/String;

    .line 11
    const-string v0, "type"

    sput-object v0, Lmiui/app/screenelement/util/Task;->TAG_TYPE:Ljava/lang/String;

    .line 13
    const-string v0, "category"

    sput-object v0, Lmiui/app/screenelement/util/Task;->TAG_CATEGORY:Ljava/lang/String;

    .line 15
    const-string v0, "package"

    sput-object v0, Lmiui/app/screenelement/util/Task;->TAG_PACKAGE:Ljava/lang/String;

    .line 17
    const-string v0, "class"

    sput-object v0, Lmiui/app/screenelement/util/Task;->TAG_CLASS:Ljava/lang/String;

    .line 19
    const-string v0, "name"

    sput-object v0, Lmiui/app/screenelement/util/Task;->TAG_NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static load(Lorg/w3c/dom/Element;)Lmiui/app/screenelement/util/Task;
    .locals 2
    .parameter "ele"

    .prologue
    .line 37
    if-nez p0, :cond_0

    .line 38
    const/4 v0, 0x0

    .line 48
    :goto_0
    return-object v0

    .line 40
    :cond_0
    new-instance v0, Lmiui/app/screenelement/util/Task;

    invoke-direct {v0}, Lmiui/app/screenelement/util/Task;-><init>()V

    .line 41
    .local v0, task:Lmiui/app/screenelement/util/Task;
    const-string v1, "id"

    invoke-interface {p0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lmiui/app/screenelement/util/Task;->id:Ljava/lang/String;

    .line 42
    const-string v1, "action"

    invoke-interface {p0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lmiui/app/screenelement/util/Task;->action:Ljava/lang/String;

    .line 43
    const-string v1, "type"

    invoke-interface {p0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lmiui/app/screenelement/util/Task;->type:Ljava/lang/String;

    .line 44
    const-string v1, "category"

    invoke-interface {p0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lmiui/app/screenelement/util/Task;->category:Ljava/lang/String;

    .line 45
    const-string v1, "package"

    invoke-interface {p0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lmiui/app/screenelement/util/Task;->packageName:Ljava/lang/String;

    .line 46
    const-string v1, "class"

    invoke-interface {p0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lmiui/app/screenelement/util/Task;->className:Ljava/lang/String;

    .line 47
    const-string v1, "name"

    invoke-interface {p0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lmiui/app/screenelement/util/Task;->name:Ljava/lang/String;

    goto :goto_0
.end method

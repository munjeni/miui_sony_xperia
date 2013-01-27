.class Lmiui/app/screenelement/util/LockscreenConfigFile$1;
.super Ljava/lang/Object;
.source "LockscreenConfigFile.java"

# interfaces
.implements Lmiui/app/screenelement/util/LockscreenConfigFile$OnLoadElementListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/app/screenelement/util/LockscreenConfigFile;->loadVariables(Lorg/w3c/dom/Element;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/app/screenelement/util/LockscreenConfigFile;


# direct methods
.method constructor <init>(Lmiui/app/screenelement/util/LockscreenConfigFile;)V
    .locals 0
    .parameter

    .prologue
    .line 179
    iput-object p1, p0, Lmiui/app/screenelement/util/LockscreenConfigFile$1;->this$0:Lmiui/app/screenelement/util/LockscreenConfigFile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnLoadElement(Lorg/w3c/dom/Element;)V
    .locals 4
    .parameter "ele"

    .prologue
    .line 182
    iget-object v0, p0, Lmiui/app/screenelement/util/LockscreenConfigFile$1;->this$0:Lmiui/app/screenelement/util/LockscreenConfigFile;

    const-string v1, "name"

    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "value"

    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "type"

    invoke-interface {p1, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    #calls: Lmiui/app/screenelement/util/LockscreenConfigFile;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2, v3}, Lmiui/app/screenelement/util/LockscreenConfigFile;->access$000(Lmiui/app/screenelement/util/LockscreenConfigFile;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    return-void
.end method

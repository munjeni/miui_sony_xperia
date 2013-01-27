.class Lmiui/app/screenelement/ActionCommand$IntentCommand;
.super Lmiui/app/screenelement/ActionCommand;
.source "ActionCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/app/screenelement/ActionCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IntentCommand"
.end annotation


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "IntentCommand"


# instance fields
.field private mIntent:Landroid/content/Intent;

.field private mRoot:Lmiui/app/screenelement/ScreenElementRoot;

.field private mTask:Lmiui/app/screenelement/util/Task;


# direct methods
.method public constructor <init>(Lmiui/app/screenelement/ScreenContext;Lmiui/app/screenelement/ScreenElementRoot;Lorg/w3c/dom/Element;)V
    .locals 1
    .parameter "context"
    .parameter "root"
    .parameter "ele"

    .prologue
    .line 817
    invoke-direct {p0, p1}, Lmiui/app/screenelement/ActionCommand;-><init>(Lmiui/app/screenelement/ScreenContext;)V

    .line 818
    iput-object p2, p0, Lmiui/app/screenelement/ActionCommand$IntentCommand;->mRoot:Lmiui/app/screenelement/ScreenElementRoot;

    .line 819
    invoke-static {p3}, Lmiui/app/screenelement/util/Task;->load(Lorg/w3c/dom/Element;)Lmiui/app/screenelement/util/Task;

    move-result-object v0

    iput-object v0, p0, Lmiui/app/screenelement/ActionCommand$IntentCommand;->mTask:Lmiui/app/screenelement/util/Task;

    .line 820
    return-void
.end method


# virtual methods
.method protected doPerform()V
    .locals 3

    .prologue
    .line 846
    iget-object v1, p0, Lmiui/app/screenelement/ActionCommand$IntentCommand;->mIntent:Landroid/content/Intent;

    if-eqz v1, :cond_0

    .line 848
    :try_start_0
    iget-object v1, p0, Lmiui/app/screenelement/ActionCommand$IntentCommand;->mContext:Lmiui/app/screenelement/ScreenContext;

    iget-object v1, v1, Lmiui/app/screenelement/ScreenContext;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lmiui/app/screenelement/ActionCommand$IntentCommand;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 854
    :cond_0
    :goto_0
    return-void

    .line 849
    :catch_0
    move-exception v0

    .line 850
    .local v0, e:Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    .line 851
    const-string v1, "ActionCommand"

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public init()V
    .locals 5

    .prologue
    .line 823
    iget-object v1, p0, Lmiui/app/screenelement/ActionCommand$IntentCommand;->mRoot:Lmiui/app/screenelement/ScreenElementRoot;

    iget-object v2, p0, Lmiui/app/screenelement/ActionCommand$IntentCommand;->mTask:Lmiui/app/screenelement/util/Task;

    iget-object v2, v2, Lmiui/app/screenelement/util/Task;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lmiui/app/screenelement/ScreenElementRoot;->findTask(Ljava/lang/String;)Lmiui/app/screenelement/util/Task;

    move-result-object v0

    .line 825
    .local v0, configTask:Lmiui/app/screenelement/util/Task;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lmiui/app/screenelement/util/Task;->action:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 826
    iput-object v0, p0, Lmiui/app/screenelement/ActionCommand$IntentCommand;->mTask:Lmiui/app/screenelement/util/Task;

    .line 829
    :cond_0
    iget-object v1, p0, Lmiui/app/screenelement/ActionCommand$IntentCommand;->mTask:Lmiui/app/screenelement/util/Task;

    iget-object v1, v1, Lmiui/app/screenelement/util/Task;->action:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 830
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lmiui/app/screenelement/ActionCommand$IntentCommand;->mTask:Lmiui/app/screenelement/util/Task;

    iget-object v2, v2, Lmiui/app/screenelement/util/Task;->action:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lmiui/app/screenelement/ActionCommand$IntentCommand;->mIntent:Landroid/content/Intent;

    .line 831
    iget-object v1, p0, Lmiui/app/screenelement/ActionCommand$IntentCommand;->mTask:Lmiui/app/screenelement/util/Task;

    iget-object v1, v1, Lmiui/app/screenelement/util/Task;->type:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 832
    iget-object v1, p0, Lmiui/app/screenelement/ActionCommand$IntentCommand;->mIntent:Landroid/content/Intent;

    iget-object v2, p0, Lmiui/app/screenelement/ActionCommand$IntentCommand;->mTask:Lmiui/app/screenelement/util/Task;

    iget-object v2, v2, Lmiui/app/screenelement/util/Task;->type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 833
    :cond_1
    iget-object v1, p0, Lmiui/app/screenelement/ActionCommand$IntentCommand;->mTask:Lmiui/app/screenelement/util/Task;

    iget-object v1, v1, Lmiui/app/screenelement/util/Task;->category:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 834
    iget-object v1, p0, Lmiui/app/screenelement/ActionCommand$IntentCommand;->mIntent:Landroid/content/Intent;

    iget-object v2, p0, Lmiui/app/screenelement/ActionCommand$IntentCommand;->mTask:Lmiui/app/screenelement/util/Task;

    iget-object v2, v2, Lmiui/app/screenelement/util/Task;->category:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 835
    :cond_2
    iget-object v1, p0, Lmiui/app/screenelement/ActionCommand$IntentCommand;->mTask:Lmiui/app/screenelement/util/Task;

    iget-object v1, v1, Lmiui/app/screenelement/util/Task;->packageName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lmiui/app/screenelement/ActionCommand$IntentCommand;->mTask:Lmiui/app/screenelement/util/Task;

    iget-object v1, v1, Lmiui/app/screenelement/util/Task;->className:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 836
    iget-object v1, p0, Lmiui/app/screenelement/ActionCommand$IntentCommand;->mIntent:Landroid/content/Intent;

    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, p0, Lmiui/app/screenelement/ActionCommand$IntentCommand;->mTask:Lmiui/app/screenelement/util/Task;

    iget-object v3, v3, Lmiui/app/screenelement/util/Task;->packageName:Ljava/lang/String;

    iget-object v4, p0, Lmiui/app/screenelement/ActionCommand$IntentCommand;->mTask:Lmiui/app/screenelement/util/Task;

    iget-object v4, v4, Lmiui/app/screenelement/util/Task;->className:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 838
    :cond_3
    iget-object v1, p0, Lmiui/app/screenelement/ActionCommand$IntentCommand;->mIntent:Landroid/content/Intent;

    const/high16 v2, 0x3400

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 842
    :cond_4
    return-void
.end method

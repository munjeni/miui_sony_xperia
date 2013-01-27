.class Lmiui/app/screenelement/NotifierManager$BroadcastNotifier$1;
.super Landroid/content/BroadcastReceiver;
.source "NotifierManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/app/screenelement/NotifierManager$BroadcastNotifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/app/screenelement/NotifierManager$BroadcastNotifier;


# direct methods
.method constructor <init>(Lmiui/app/screenelement/NotifierManager$BroadcastNotifier;)V
    .locals 0
    .parameter

    .prologue
    .line 215
    iput-object p1, p0, Lmiui/app/screenelement/NotifierManager$BroadcastNotifier$1;->this$0:Lmiui/app/screenelement/NotifierManager$BroadcastNotifier;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 218
    invoke-static {}, Lmiui/app/screenelement/NotifierManager;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 219
    const-string v0, "NotifierManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNotify: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmiui/app/screenelement/NotifierManager$BroadcastNotifier$1;->this$0:Lmiui/app/screenelement/NotifierManager$BroadcastNotifier;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    :cond_0
    iget-object v0, p0, Lmiui/app/screenelement/NotifierManager$BroadcastNotifier$1;->this$0:Lmiui/app/screenelement/NotifierManager$BroadcastNotifier;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lmiui/app/screenelement/NotifierManager$BroadcastNotifier;->onNotify(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/Object;)V

    .line 222
    return-void
.end method

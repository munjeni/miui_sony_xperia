.class Lmiui/app/screenelement/NotifierManager$MobileDataNotifier$1;
.super Landroid/database/ContentObserver;
.source "NotifierManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/app/screenelement/NotifierManager$MobileDataNotifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/app/screenelement/NotifierManager$MobileDataNotifier;


# direct methods
.method constructor <init>(Lmiui/app/screenelement/NotifierManager$MobileDataNotifier;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 283
    iput-object p1, p0, Lmiui/app/screenelement/NotifierManager$MobileDataNotifier$1;->this$0:Lmiui/app/screenelement/NotifierManager$MobileDataNotifier;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4
    .parameter "selfChange"

    .prologue
    const/4 v3, 0x0

    .line 286
    invoke-static {}, Lmiui/app/screenelement/NotifierManager;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 287
    const-string v0, "NotifierManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNotify: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmiui/app/screenelement/NotifierManager$MobileDataNotifier$1;->this$0:Lmiui/app/screenelement/NotifierManager$MobileDataNotifier;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    :cond_0
    iget-object v0, p0, Lmiui/app/screenelement/NotifierManager$MobileDataNotifier$1;->this$0:Lmiui/app/screenelement/NotifierManager$MobileDataNotifier;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v3, v3, v1}, Lmiui/app/screenelement/NotifierManager$MobileDataNotifier;->onNotify(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/Object;)V

    .line 290
    return-void
.end method

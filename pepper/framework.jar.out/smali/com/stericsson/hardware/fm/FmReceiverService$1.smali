.class Lcom/stericsson/hardware/fm/FmReceiverService$1;
.super Landroid/content/BroadcastReceiver;
.source "FmReceiverService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stericsson/hardware/fm/FmReceiverService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/stericsson/hardware/fm/FmReceiverService;


# direct methods
.method constructor <init>(Lcom/stericsson/hardware/fm/FmReceiverService;)V
    .locals 0
    .parameter

    .prologue
    .line 513
    iput-object p1, p0, Lcom/stericsson/hardware/fm/FmReceiverService$1;->this$0:Lcom/stericsson/hardware/fm/FmReceiverService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 517
    if-nez p2, :cond_1

    .line 535
    :cond_0
    :goto_0
    return-void

    .line 521
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 522
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 523
    const-string v1, "FmReceiverService"

    const-string/jumbo v2, "onReceive:ACTION_AIRPLANE_MODE_CHANGED"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    iget-object v1, p0, Lcom/stericsson/hardware/fm/FmReceiverService$1;->this$0:Lcom/stericsson/hardware/fm/FmReceiverService;

    #calls: Lcom/stericsson/hardware/fm/FmReceiverService;->isAirplaneModeOn()Z
    invoke-static {v1}, Lcom/stericsson/hardware/fm/FmReceiverService;->access$1100(Lcom/stericsson/hardware/fm/FmReceiverService;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 531
    iget-object v1, p0, Lcom/stericsson/hardware/fm/FmReceiverService$1;->this$0:Lcom/stericsson/hardware/fm/FmReceiverService;

    #calls: Lcom/stericsson/hardware/fm/FmReceiverService;->_fm_receiver_reset()I
    invoke-static {v1}, Lcom/stericsson/hardware/fm/FmReceiverService;->access$1200(Lcom/stericsson/hardware/fm/FmReceiverService;)I

    move-result v1

    if-lez v1, :cond_0

    .line 532
    iget-object v1, p0, Lcom/stericsson/hardware/fm/FmReceiverService$1;->this$0:Lcom/stericsson/hardware/fm/FmReceiverService;

    const/4 v2, 0x3

    #calls: Lcom/stericsson/hardware/fm/FmReceiverService;->notifyOnForcedReset(I)V
    invoke-static {v1, v2}, Lcom/stericsson/hardware/fm/FmReceiverService;->access$1300(Lcom/stericsson/hardware/fm/FmReceiverService;I)V

    goto :goto_0
.end method

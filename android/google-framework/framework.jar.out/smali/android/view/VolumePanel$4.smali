.class Landroid/view/VolumePanel$4;
.super Landroid/content/BroadcastReceiver;
.source "VolumePanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/view/VolumePanel;->listenToRingerModeAndConfigChanges()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/view/VolumePanel;


# direct methods
.method constructor <init>(Landroid/view/VolumePanel;)V
    .locals 0
    .parameter

    .prologue
    .line 272
    iput-object p1, p0, Landroid/view/VolumePanel$4;->this$0:Landroid/view/VolumePanel;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v4, 0x6

    .line 275
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 277
    .local v0, action:Ljava/lang/String;
    const-string v2, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 278
    iget-object v2, p0, Landroid/view/VolumePanel$4;->this$0:Landroid/view/VolumePanel;

    invoke-virtual {v2, v4}, Landroid/view/VolumePanel;->removeMessages(I)V

    .line 279
    iget-object v2, p0, Landroid/view/VolumePanel$4;->this$0:Landroid/view/VolumePanel;

    iget-object v3, p0, Landroid/view/VolumePanel$4;->this$0:Landroid/view/VolumePanel;

    invoke-virtual {v3, v4}, Landroid/view/VolumePanel;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/VolumePanel;->sendMessage(Landroid/os/Message;)Z

    .line 284
    :cond_0
    :goto_0
    return-void

    .line 280
    :cond_1
    const-string v2, "android.intent.action.VOLUME_OVERLAY_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 281
    const-string/jumbo v2, "state"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 282
    .local v1, state:I
    iget-object v2, p0, Landroid/view/VolumePanel$4;->this$0:Landroid/view/VolumePanel;

    #calls: Landroid/view/VolumePanel;->changeOverlayStyle(I)V
    invoke-static {v2, v1}, Landroid/view/VolumePanel;->access$400(Landroid/view/VolumePanel;I)V

    goto :goto_0
.end method

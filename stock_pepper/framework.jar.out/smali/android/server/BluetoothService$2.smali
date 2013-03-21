.class Landroid/server/BluetoothService$2;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/server/BluetoothService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/server/BluetoothService;


# direct methods
.method constructor <init>(Landroid/server/BluetoothService;)V
    .locals 0
    .parameter

    .prologue
    .line 1686
    iput-object p1, p0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 1689
    if-nez p2, :cond_1

    .line 1723
    :cond_0
    :goto_0
    return-void

    .line 1691
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1692
    .local v0, action:Ljava/lang/String;
    const-string v4, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1693
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1696
    .local v2, resolver:Landroid/content/ContentResolver;
    iget-object v4, p0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    invoke-virtual {v4}, Landroid/server/BluetoothService;->isAirplaneModeOn()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1697
    iget-object v4, p0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mBluetoothState:Landroid/server/BluetoothAdapterStateMachine;
    invoke-static {v4}, Landroid/server/BluetoothService;->access$400(Landroid/server/BluetoothService;)Landroid/server/BluetoothAdapterStateMachine;

    move-result-object v4

    const/16 v5, 0x37

    invoke-virtual {v4, v5}, Landroid/server/BluetoothAdapterStateMachine;->sendMessage(I)V

    goto :goto_0

    .line 1699
    :cond_2
    iget-object v4, p0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mBluetoothState:Landroid/server/BluetoothAdapterStateMachine;
    invoke-static {v4}, Landroid/server/BluetoothService;->access$400(Landroid/server/BluetoothService;)Landroid/server/BluetoothAdapterStateMachine;

    move-result-object v4

    const/16 v5, 0x38

    invoke-virtual {v4, v5}, Landroid/server/BluetoothAdapterStateMachine;->sendMessage(I)V

    goto :goto_0

    .line 1701
    .end local v2           #resolver:Landroid/content/ContentResolver;
    :cond_3
    const-string v4, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1702
    const-string v4, "android.intent.extra.DOCK_STATE"

    invoke-virtual {p2, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 1704
    .local v3, state:I
    const-string v4, "BluetoothService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Received ACTION_DOCK_EVENT with State:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1705
    if-nez v3, :cond_4

    .line 1706
    invoke-static {v8}, Landroid/server/BluetoothService;->access$502(Ljava/lang/String;)Ljava/lang/String;

    .line 1707
    iget-object v4, p0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    #setter for: Landroid/server/BluetoothService;->mDockPin:Ljava/lang/String;
    invoke-static {v4, v8}, Landroid/server/BluetoothService;->access$602(Landroid/server/BluetoothService;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 1709
    :cond_4
    iget-object v4, p0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Landroid/server/BluetoothService;->access$700(Landroid/server/BluetoothService;)Landroid/content/Context;

    move-result-object v4

    const-string v5, "bluetooth_service_settings"

    iget-object v6, p0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mContext:Landroid/content/Context;
    invoke-static {v6}, Landroid/server/BluetoothService;->access$700(Landroid/server/BluetoothService;)Landroid/content/Context;

    invoke-virtual {v4, v5, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 1712
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dock_bluetooth_address"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/server/BluetoothService;->access$500()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1713
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_0

    .line 1715
    .end local v1           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v3           #state:I
    :cond_5
    const-string v4, "com.sonymobile.intent.action.BT_DISCOVERABLEALARM"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1716
    iget-object v4, p0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    #calls: Landroid/server/BluetoothService;->isEnabledInternal()Z
    invoke-static {v4}, Landroid/server/BluetoothService;->access$800(Landroid/server/BluetoothService;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1720
    iget-object v4, p0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    const/16 v5, 0x15

    const/4 v6, -0x1

    invoke-virtual {v4, v5, v6}, Landroid/server/BluetoothService;->setScanMode(II)Z

    goto/16 :goto_0
.end method

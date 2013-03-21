.class Landroid/net/wifi/WifiStateMachine$ConnectingState;
.super Lcom/android/internal/util/State;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ConnectingState"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Landroid/net/wifi/WifiStateMachine;)V
    .locals 0
    .parameter

    .prologue
    .line 2955
    iput-object p1, p0, Landroid/net/wifi/WifiStateMachine$ConnectingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 8

    .prologue
    const v7, 0x20010

    .line 2960
    const v4, 0xc365

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine$ConnectingState;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 2963
    :try_start_0
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$ConnectingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mNwService:Landroid/os/INetworkManagementService;
    invoke-static {v4}, Landroid/net/wifi/WifiStateMachine;->access$100(Landroid/net/wifi/WifiStateMachine;)Landroid/os/INetworkManagementService;

    move-result-object v4

    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine$ConnectingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;
    invoke-static {v5}, Landroid/net/wifi/WifiStateMachine;->access$000(Landroid/net/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Landroid/os/INetworkManagementService;->enableIpv6(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2970
    :goto_0
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$ConnectingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mLastNetworkId:I
    invoke-static {v4}, Landroid/net/wifi/WifiStateMachine;->access$4200(Landroid/net/wifi/WifiStateMachine;)I

    move-result v4

    invoke-static {v4}, Landroid/net/wifi/WifiConfigStore;->isUsingStaticIp(I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 2972
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$ConnectingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine$ConnectingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static {v5}, Landroid/net/wifi/WifiStateMachine;->access$1400(Landroid/net/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$ConnectingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine$ConnectingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;
    invoke-static {v7}, Landroid/net/wifi/WifiStateMachine;->access$000(Landroid/net/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Landroid/net/DhcpStateMachine;->makeDhcpStateMachine(Landroid/content/Context;Lcom/android/internal/util/StateMachine;Ljava/lang/String;)Landroid/net/DhcpStateMachine;

    move-result-object v5

    #setter for: Landroid/net/wifi/WifiStateMachine;->mDhcpStateMachine:Landroid/net/DhcpStateMachine;
    invoke-static {v4, v5}, Landroid/net/wifi/WifiStateMachine;->access$11002(Landroid/net/wifi/WifiStateMachine;Landroid/net/DhcpStateMachine;)Landroid/net/DhcpStateMachine;

    .line 2974
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$ConnectingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mDhcpStateMachine:Landroid/net/DhcpStateMachine;
    invoke-static {v4}, Landroid/net/wifi/WifiStateMachine;->access$11000(Landroid/net/wifi/WifiStateMachine;)Landroid/net/DhcpStateMachine;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/DhcpStateMachine;->registerForPreDhcpNotification()V

    .line 2975
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$ConnectingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mDhcpStateMachine:Landroid/net/DhcpStateMachine;
    invoke-static {v4}, Landroid/net/wifi/WifiStateMachine;->access$11000(Landroid/net/wifi/WifiStateMachine;)Landroid/net/DhcpStateMachine;

    move-result-object v4

    const v5, 0x30001

    invoke-virtual {v4, v5}, Landroid/net/DhcpStateMachine;->sendMessage(I)V

    .line 2994
    :goto_1
    return-void

    .line 2964
    :catch_0
    move-exception v3

    .line 2965
    .local v3, re:Landroid/os/RemoteException;
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$ConnectingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to enable IPv6: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    #calls: Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v4, v5}, Landroid/net/wifi/WifiStateMachine;->access$200(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    goto :goto_0

    .line 2966
    .end local v3           #re:Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 2967
    .local v1, e:Ljava/lang/IllegalStateException;
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$ConnectingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to enable IPv6: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    #calls: Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v4, v5}, Landroid/net/wifi/WifiStateMachine;->access$200(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    goto :goto_0

    .line 2977
    .end local v1           #e:Ljava/lang/IllegalStateException;
    :cond_0
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$ConnectingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mLastNetworkId:I
    invoke-static {v4}, Landroid/net/wifi/WifiStateMachine;->access$4200(Landroid/net/wifi/WifiStateMachine;)I

    move-result v4

    invoke-static {v4}, Landroid/net/wifi/WifiConfigStore;->getIpConfiguration(I)Landroid/net/DhcpInfoInternal;

    move-result-object v0

    .line 2979
    .local v0, dhcpInfoInternal:Landroid/net/DhcpInfoInternal;
    new-instance v2, Landroid/net/InterfaceConfiguration;

    invoke-direct {v2}, Landroid/net/InterfaceConfiguration;-><init>()V

    .line 2980
    .local v2, ifcg:Landroid/net/InterfaceConfiguration;
    invoke-virtual {v0}, Landroid/net/DhcpInfoInternal;->makeLinkAddress()Landroid/net/LinkAddress;

    move-result-object v4

    iput-object v4, v2, Landroid/net/InterfaceConfiguration;->addr:Landroid/net/LinkAddress;

    .line 2981
    const-string v4, "[up]"

    iput-object v4, v2, Landroid/net/InterfaceConfiguration;->interfaceFlags:Ljava/lang/String;

    .line 2983
    :try_start_1
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$ConnectingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mNwService:Landroid/os/INetworkManagementService;
    invoke-static {v4}, Landroid/net/wifi/WifiStateMachine;->access$100(Landroid/net/wifi/WifiStateMachine;)Landroid/os/INetworkManagementService;

    move-result-object v4

    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine$ConnectingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;
    invoke-static {v5}, Landroid/net/wifi/WifiStateMachine;->access$000(Landroid/net/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v2}, Landroid/os/INetworkManagementService;->setInterfaceConfig(Ljava/lang/String;Landroid/net/InterfaceConfiguration;)V

    .line 2985
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$ConnectingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const v5, 0x2000f

    invoke-virtual {v4, v5, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(ILjava/lang/Object;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_1

    .line 2986
    :catch_2
    move-exception v3

    .line 2987
    .restart local v3       #re:Landroid/os/RemoteException;
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$ConnectingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Static IP configuration failed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    #calls: Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v4, v5}, Landroid/net/wifi/WifiStateMachine;->access$200(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 2988
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$ConnectingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v4, v7}, Landroid/net/wifi/WifiStateMachine;->sendMessage(I)V

    goto/16 :goto_1

    .line 2989
    .end local v3           #re:Landroid/os/RemoteException;
    :catch_3
    move-exception v1

    .line 2990
    .restart local v1       #e:Ljava/lang/IllegalStateException;
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$ConnectingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Static IP configuration failed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    #calls: Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v4, v5}, Landroid/net/wifi/WifiStateMachine;->access$200(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 2991
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$ConnectingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v4, v7}, Landroid/net/wifi/WifiStateMachine;->sendMessage(I)V

    goto/16 :goto_1
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 6
    .parameter "message"

    .prologue
    const/4 v5, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2999
    iget v4, p1, Landroid/os/Message;->what:I

    sparse-switch v4, :sswitch_data_0

    .line 3063
    :cond_0
    :goto_0
    return v2

    .line 3001
    :sswitch_0
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$ConnectingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v2}, Landroid/net/wifi/WifiStateMachine;->handlePreDhcpSetup()V

    .line 3002
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$ConnectingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mDhcpStateMachine:Landroid/net/DhcpStateMachine;
    invoke-static {v2}, Landroid/net/wifi/WifiStateMachine;->access$11000(Landroid/net/wifi/WifiStateMachine;)Landroid/net/DhcpStateMachine;

    move-result-object v2

    const v4, 0x30006

    invoke-virtual {v2, v4}, Landroid/net/DhcpStateMachine;->sendMessage(I)V

    .line 3062
    :cond_1
    :goto_1
    :sswitch_1
    const v2, 0xc366

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-static {v2, v4}, Landroid/util/EventLog;->writeEvent(II)I

    move v2, v3

    .line 3063
    goto :goto_0

    .line 3005
    :sswitch_2
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$ConnectingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v2}, Landroid/net/wifi/WifiStateMachine;->handlePostDhcpSetup()V

    .line 3006
    iget v2, p1, Landroid/os/Message;->arg1:I

    if-ne v2, v3, :cond_3

    .line 3007
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/DhcpInfoInternal;

    .line 3008
    .local v0, dhcpInfoInternal:Landroid/net/DhcpInfoInternal;
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$ConnectingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #calls: Landroid/net/wifi/WifiStateMachine;->isSupportedIPAddress(Landroid/net/DhcpInfoInternal;)Z
    invoke-static {v2, v0}, Landroid/net/wifi/WifiStateMachine;->access$11100(Landroid/net/wifi/WifiStateMachine;Landroid/net/DhcpInfoInternal;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3009
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$ConnectingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #calls: Landroid/net/wifi/WifiStateMachine;->handleSuccessfulIpConfiguration(Landroid/net/DhcpInfoInternal;)V
    invoke-static {v2, v0}, Landroid/net/wifi/WifiStateMachine;->access$11200(Landroid/net/wifi/WifiStateMachine;Landroid/net/DhcpInfoInternal;)V

    .line 3010
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$ConnectingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$ConnectingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mConnectedState:Lcom/android/internal/util/State;
    invoke-static {v4}, Landroid/net/wifi/WifiStateMachine;->access$11300(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v4

    #calls: Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v2, v4}, Landroid/net/wifi/WifiStateMachine;->access$11400(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_1

    .line 3012
    :cond_2
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$ConnectingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #calls: Landroid/net/wifi/WifiStateMachine;->handleFailedIpConfiguration()V
    invoke-static {v2}, Landroid/net/wifi/WifiStateMachine;->access$11500(Landroid/net/wifi/WifiStateMachine;)V

    .line 3013
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$ConnectingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$ConnectingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mDisconnectingState:Lcom/android/internal/util/State;
    invoke-static {v4}, Landroid/net/wifi/WifiStateMachine;->access$10100(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v4

    #calls: Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v2, v4}, Landroid/net/wifi/WifiStateMachine;->access$11600(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_1

    .line 3015
    .end local v0           #dhcpInfoInternal:Landroid/net/DhcpInfoInternal;
    :cond_3
    iget v2, p1, Landroid/os/Message;->arg1:I

    if-ne v2, v5, :cond_1

    .line 3016
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$ConnectingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #calls: Landroid/net/wifi/WifiStateMachine;->handleFailedIpConfiguration()V
    invoke-static {v2}, Landroid/net/wifi/WifiStateMachine;->access$11500(Landroid/net/wifi/WifiStateMachine;)V

    .line 3017
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$ConnectingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$ConnectingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mDisconnectingState:Lcom/android/internal/util/State;
    invoke-static {v4}, Landroid/net/wifi/WifiStateMachine;->access$10100(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v4

    #calls: Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v2, v4}, Landroid/net/wifi/WifiStateMachine;->access$11700(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_1

    .line 3021
    :sswitch_3
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$ConnectingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/net/DhcpInfoInternal;

    #calls: Landroid/net/wifi/WifiStateMachine;->handleSuccessfulIpConfiguration(Landroid/net/DhcpInfoInternal;)V
    invoke-static {v4, v2}, Landroid/net/wifi/WifiStateMachine;->access$11200(Landroid/net/wifi/WifiStateMachine;Landroid/net/DhcpInfoInternal;)V

    .line 3022
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$ConnectingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$ConnectingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mConnectedState:Lcom/android/internal/util/State;
    invoke-static {v4}, Landroid/net/wifi/WifiStateMachine;->access$11300(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v4

    #calls: Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v2, v4}, Landroid/net/wifi/WifiStateMachine;->access$11800(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_1

    .line 3025
    :sswitch_4
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$ConnectingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #calls: Landroid/net/wifi/WifiStateMachine;->handleFailedIpConfiguration()V
    invoke-static {v2}, Landroid/net/wifi/WifiStateMachine;->access$11500(Landroid/net/wifi/WifiStateMachine;)V

    .line 3026
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$ConnectingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$ConnectingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mDisconnectingState:Lcom/android/internal/util/State;
    invoke-static {v4}, Landroid/net/wifi/WifiStateMachine;->access$10100(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v4

    #calls: Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v2, v4}, Landroid/net/wifi/WifiStateMachine;->access$11900(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_1

    .line 3029
    :sswitch_5
    invoke-static {}, Landroid/net/wifi/WifiNative;->disconnectCommand()Z

    .line 3030
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$ConnectingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$ConnectingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mDisconnectingState:Lcom/android/internal/util/State;
    invoke-static {v4}, Landroid/net/wifi/WifiStateMachine;->access$10100(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v4

    #calls: Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v2, v4}, Landroid/net/wifi/WifiStateMachine;->access$12000(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 3034
    :sswitch_6
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 3035
    .local v1, netId:I
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$ConnectingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v4}, Landroid/net/wifi/WifiStateMachine;->access$4400(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v4

    if-ne v4, v1, :cond_0

    goto/16 :goto_1

    .line 3040
    .end local v1           #netId:I
    :sswitch_7
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$ConnectingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #calls: Landroid/net/wifi/WifiStateMachine;->deferMessage(Landroid/os/Message;)V
    invoke-static {v2, p1}, Landroid/net/wifi/WifiStateMachine;->access$12100(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;)V

    goto/16 :goto_1

    .line 3046
    :sswitch_8
    iget v2, p1, Landroid/os/Message;->arg1:I

    if-ne v2, v5, :cond_1

    .line 3047
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$ConnectingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const v4, 0x2004a

    invoke-virtual {v2, v4}, Landroid/net/wifi/WifiStateMachine;->sendMessage(I)V

    .line 3048
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$ConnectingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #calls: Landroid/net/wifi/WifiStateMachine;->deferMessage(Landroid/os/Message;)V
    invoke-static {v2, p1}, Landroid/net/wifi/WifiStateMachine;->access$12200(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;)V

    goto/16 :goto_1

    .line 3053
    :sswitch_9
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$ConnectingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #calls: Landroid/net/wifi/WifiStateMachine;->deferMessage(Landroid/os/Message;)V
    invoke-static {v2, p1}, Landroid/net/wifi/WifiStateMachine;->access$12300(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;)V

    goto/16 :goto_1

    .line 3057
    :sswitch_a
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$ConnectingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #calls: Landroid/net/wifi/WifiStateMachine;->deferMessage(Landroid/os/Message;)V
    invoke-static {v2, p1}, Landroid/net/wifi/WifiStateMachine;->access$12400(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;)V

    goto/16 :goto_1

    .line 2999
    :sswitch_data_0
    .sparse-switch
        0x2000f -> :sswitch_3
        0x20010 -> :sswitch_4
        0x20047 -> :sswitch_9
        0x20048 -> :sswitch_8
        0x2004a -> :sswitch_5
        0x2004d -> :sswitch_a
        0x20056 -> :sswitch_6
        0x20057 -> :sswitch_7
        0x24003 -> :sswitch_1
        0x30004 -> :sswitch_0
        0x30005 -> :sswitch_2
    .end sparse-switch
.end method

.class Lcom/android/internal/telephony/RIL$IccHandler;
.super Landroid/os/Handler;
.source "RIL.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/RIL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "IccHandler"
.end annotation


# static fields
.field private static final EVENT_GET_ICC_CARD_STATUS_DONE:I = 0x1

.field private static final EVENT_ICC_CARD_STATUS_CHANGED:I = 0x2


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/RIL;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/RIL;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 630
    iput-object p1, p0, Lcom/android/internal/telephony/RIL$IccHandler;->this$0:Lcom/android/internal/telephony/RIL;

    .line 631
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 632
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    .line 641
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 714
    const-string v4, "RILJ"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unexpected message in handler "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->what:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 717
    :cond_0
    :goto_0
    return-void

    .line 643
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 644
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_1

    .line 645
    const-string v4, "RILJ"

    const-string v5, "Unexpected exception in getIccCardStatus"

    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v4, v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 649
    :cond_1
    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/telephony/IccCardStatus;

    .line 650
    .local v3, status:Lcom/android/internal/telephony/IccCardStatus;
    invoke-virtual {v3}, Lcom/android/internal/telephony/IccCardStatus;->getNumApplications()I

    move-result v4

    if-nez v4, :cond_3

    .line 651
    iget-object v4, p0, Lcom/android/internal/telephony/RIL$IccHandler;->this$0:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v4}, Lcom/android/internal/telephony/RIL;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 653
    iget-object v4, p0, Lcom/android/internal/telephony/RIL$IccHandler;->this$0:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v4}, Lcom/android/internal/telephony/RIL;->isCDMAMode()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 654
    iget-object v4, p0, Lcom/android/internal/telephony/RIL$IccHandler;->this$0:Lcom/android/internal/telephony/RIL;

    sget-object v5, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RUIM_LOCKED_OR_ABSENT:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/RIL;->setRadioState(Lcom/android/internal/telephony/CommandsInterface$RadioState;)V

    goto :goto_0

    .line 657
    :cond_2
    iget-object v4, p0, Lcom/android/internal/telephony/RIL$IccHandler;->this$0:Lcom/android/internal/telephony/RIL;

    sget-object v5, Lcom/android/internal/telephony/CommandsInterface$RadioState;->SIM_LOCKED_OR_ABSENT:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/RIL;->setRadioState(Lcom/android/internal/telephony/CommandsInterface$RadioState;)V

    goto :goto_0

    .line 663
    :cond_3
    const/4 v2, 0x0

    .line 664
    .local v2, index:I
    iget-object v4, p0, Lcom/android/internal/telephony/RIL$IccHandler;->this$0:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v4}, Lcom/android/internal/telephony/RIL;->isCDMAMode()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 665
    invoke-virtual {v3}, Lcom/android/internal/telephony/IccCardStatus;->getCdmaSubscriptionAppIndex()I

    move-result v2

    .line 671
    :goto_1
    invoke-virtual {v3, v2}, Lcom/android/internal/telephony/IccCardStatus;->getApplication(I)Lcom/android/internal/telephony/IccCardApplication;

    move-result-object v1

    .line 672
    .local v1, cardApp:Lcom/android/internal/telephony/IccCardApplication;
    sget-object v4, Lcom/android/internal/telephony/RIL$2;->$SwitchMap$com$android$internal$telephony$IccCardApplication$AppState:[I

    iget-object v5, v1, Lcom/android/internal/telephony/IccCardApplication;->app_state:Lcom/android/internal/telephony/IccCardApplication$AppState;

    invoke-virtual {v5}, Lcom/android/internal/telephony/IccCardApplication$AppState;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_1

    goto :goto_0

    .line 676
    :pswitch_1
    sget-object v4, Lcom/android/internal/telephony/RIL$2;->$SwitchMap$com$android$internal$telephony$IccCardApplication$AppType:[I

    iget-object v5, v1, Lcom/android/internal/telephony/IccCardApplication;->app_type:Lcom/android/internal/telephony/IccCardApplication$AppType;

    invoke-virtual {v5}, Lcom/android/internal/telephony/IccCardApplication$AppType;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_2

    .line 686
    const-string v4, "RILJ"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ICCs of type "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Lcom/android/internal/telephony/IccCardApplication;->app_type:Lcom/android/internal/telephony/IccCardApplication$AppType;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is not handled by RadioState"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 668
    .end local v1           #cardApp:Lcom/android/internal/telephony/IccCardApplication;
    :cond_4
    invoke-virtual {v3}, Lcom/android/internal/telephony/IccCardStatus;->getGsmUmtsSubscriptionAppIndex()I

    move-result v2

    goto :goto_1

    .line 679
    .restart local v1       #cardApp:Lcom/android/internal/telephony/IccCardApplication;
    :pswitch_2
    iget-object v4, p0, Lcom/android/internal/telephony/RIL$IccHandler;->this$0:Lcom/android/internal/telephony/RIL;

    sget-object v5, Lcom/android/internal/telephony/CommandsInterface$RadioState;->SIM_LOCKED_OR_ABSENT:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/RIL;->setRadioState(Lcom/android/internal/telephony/CommandsInterface$RadioState;)V

    goto/16 :goto_0

    .line 683
    :pswitch_3
    iget-object v4, p0, Lcom/android/internal/telephony/RIL$IccHandler;->this$0:Lcom/android/internal/telephony/RIL;

    sget-object v5, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RUIM_LOCKED_OR_ABSENT:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/RIL;->setRadioState(Lcom/android/internal/telephony/CommandsInterface$RadioState;)V

    goto/16 :goto_0

    .line 690
    :pswitch_4
    sget-object v4, Lcom/android/internal/telephony/RIL$2;->$SwitchMap$com$android$internal$telephony$IccCardApplication$AppType:[I

    iget-object v5, v1, Lcom/android/internal/telephony/IccCardApplication;->app_type:Lcom/android/internal/telephony/IccCardApplication$AppType;

    invoke-virtual {v5}, Lcom/android/internal/telephony/IccCardApplication$AppType;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_3

    .line 700
    const-string v4, "RILJ"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ICCs of type "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Lcom/android/internal/telephony/IccCardApplication;->app_type:Lcom/android/internal/telephony/IccCardApplication$AppType;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is not handled by RadioState"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 693
    :pswitch_5
    iget-object v4, p0, Lcom/android/internal/telephony/RIL$IccHandler;->this$0:Lcom/android/internal/telephony/RIL;

    sget-object v5, Lcom/android/internal/telephony/CommandsInterface$RadioState;->SIM_READY:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/RIL;->setRadioState(Lcom/android/internal/telephony/CommandsInterface$RadioState;)V

    goto/16 :goto_0

    .line 697
    :pswitch_6
    iget-object v4, p0, Lcom/android/internal/telephony/RIL$IccHandler;->this$0:Lcom/android/internal/telephony/RIL;

    sget-object v5, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RUIM_READY:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/RIL;->setRadioState(Lcom/android/internal/telephony/CommandsInterface$RadioState;)V

    goto/16 :goto_0

    .line 711
    .end local v0           #ar:Landroid/os/AsyncResult;
    .end local v1           #cardApp:Lcom/android/internal/telephony/IccCardApplication;
    .end local v2           #index:I
    .end local v3           #status:Lcom/android/internal/telephony/IccCardStatus;
    :pswitch_7
    iget-object v4, p0, Lcom/android/internal/telephony/RIL$IccHandler;->this$0:Lcom/android/internal/telephony/RIL;

    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/RIL$IccHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/RIL;->getIccCardStatus(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 641
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_7
    .end packed-switch

    .line 672
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_4
    .end packed-switch

    .line 676
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
    .end packed-switch

    .line 690
    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_5
        :pswitch_5
        :pswitch_6
        :pswitch_6
    .end packed-switch
.end method

.method public run()V
    .locals 3

    .prologue
    .line 635
    iget-object v0, p0, Lcom/android/internal/telephony/RIL$IccHandler;->this$0:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/RIL;->unregisterForIccStatusChanged(Landroid/os/Handler;)V

    .line 636
    iget-object v0, p0, Lcom/android/internal/telephony/RIL$IccHandler;->this$0:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/RIL;->registerForIccStatusChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 637
    iget-object v0, p0, Lcom/android/internal/telephony/RIL$IccHandler;->this$0:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL$IccHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/RIL;->getIccCardStatus(Landroid/os/Message;)V

    .line 638
    return-void
.end method

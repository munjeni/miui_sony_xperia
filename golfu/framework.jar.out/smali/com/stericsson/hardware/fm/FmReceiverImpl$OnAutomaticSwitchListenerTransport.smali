.class Lcom/stericsson/hardware/fm/FmReceiverImpl$OnAutomaticSwitchListenerTransport;
.super Lcom/stericsson/hardware/fm/IOnAutomaticSwitchListener$Stub;
.source "FmReceiverImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stericsson/hardware/fm/FmReceiverImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OnAutomaticSwitchListenerTransport"
.end annotation


# static fields
.field private static final TYPE_ON_AUTOMATIC_SWITCH:I = 0x1


# instance fields
.field private mListener:Lcom/stericsson/hardware/fm/FmReceiver$OnAutomaticSwitchListener;

.field private final mListenerHandler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/stericsson/hardware/fm/FmReceiver$OnAutomaticSwitchListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 530
    invoke-direct {p0}, Lcom/stericsson/hardware/fm/IOnAutomaticSwitchListener$Stub;-><init>()V

    .line 531
    iput-object p1, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl$OnAutomaticSwitchListenerTransport;->mListener:Lcom/stericsson/hardware/fm/FmReceiver$OnAutomaticSwitchListener;

    .line 533
    new-instance v0, Lcom/stericsson/hardware/fm/FmReceiverImpl$OnAutomaticSwitchListenerTransport$1;

    invoke-direct {v0, p0}, Lcom/stericsson/hardware/fm/FmReceiverImpl$OnAutomaticSwitchListenerTransport$1;-><init>(Lcom/stericsson/hardware/fm/FmReceiverImpl$OnAutomaticSwitchListenerTransport;)V

    iput-object v0, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl$OnAutomaticSwitchListenerTransport;->mListenerHandler:Landroid/os/Handler;

    .line 539
    return-void
.end method

.method private _handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 555
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 563
    :goto_0
    return-void

    .line 557
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    .line 558
    .local v0, b:Landroid/os/Bundle;
    const-string/jumbo v3, "newFrequency"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 559
    .local v1, newFrequency:I
    const-string/jumbo v3, "reason"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 560
    .local v2, reason:I
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl$OnAutomaticSwitchListenerTransport;->mListener:Lcom/stericsson/hardware/fm/FmReceiver$OnAutomaticSwitchListener;

    invoke-interface {v3, v1, v2}, Lcom/stericsson/hardware/fm/FmReceiver$OnAutomaticSwitchListener;->onAutomaticSwitch(II)V

    goto :goto_0

    .line 555
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic access$1000(Lcom/stericsson/hardware/fm/FmReceiverImpl$OnAutomaticSwitchListenerTransport;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 524
    invoke-direct {p0, p1}, Lcom/stericsson/hardware/fm/FmReceiverImpl$OnAutomaticSwitchListenerTransport;->_handleMessage(Landroid/os/Message;)V

    return-void
.end method


# virtual methods
.method public onAutomaticSwitch(II)V
    .locals 3
    .parameter "newFrequency"
    .parameter "reason"

    .prologue
    .line 542
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 543
    .local v1, msg:Landroid/os/Message;
    const/4 v2, 0x1

    iput v2, v1, Landroid/os/Message;->what:I

    .line 544
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 545
    .local v0, b:Landroid/os/Bundle;
    const-string/jumbo v2, "newFrequency"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 546
    const-string/jumbo v2, "reason"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 547
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 548
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl$OnAutomaticSwitchListenerTransport;->mListenerHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 549
    return-void
.end method

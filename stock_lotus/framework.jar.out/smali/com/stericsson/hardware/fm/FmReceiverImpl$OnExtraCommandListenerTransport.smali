.class Lcom/stericsson/hardware/fm/FmReceiverImpl$OnExtraCommandListenerTransport;
.super Lcom/stericsson/hardware/fm/IOnExtraCommandListener$Stub;
.source "FmReceiverImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stericsson/hardware/fm/FmReceiverImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OnExtraCommandListenerTransport"
.end annotation


# static fields
.field private static final TYPE_ON_EXTRA_COMMAND:I = 0x1


# instance fields
.field private mListener:Lcom/stericsson/hardware/fm/FmReceiver$OnExtraCommandListener;

.field private final mListenerHandler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/stericsson/hardware/fm/FmReceiver$OnExtraCommandListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 488
    invoke-direct {p0}, Lcom/stericsson/hardware/fm/IOnExtraCommandListener$Stub;-><init>()V

    .line 489
    iput-object p1, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl$OnExtraCommandListenerTransport;->mListener:Lcom/stericsson/hardware/fm/FmReceiver$OnExtraCommandListener;

    .line 491
    new-instance v0, Lcom/stericsson/hardware/fm/FmReceiverImpl$OnExtraCommandListenerTransport$1;

    invoke-direct {v0, p0}, Lcom/stericsson/hardware/fm/FmReceiverImpl$OnExtraCommandListenerTransport$1;-><init>(Lcom/stericsson/hardware/fm/FmReceiverImpl$OnExtraCommandListenerTransport;)V

    iput-object v0, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl$OnExtraCommandListenerTransport;->mListenerHandler:Landroid/os/Handler;

    .line 497
    return-void
.end method

.method private _handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 513
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 521
    :goto_0
    return-void

    .line 515
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    .line 516
    .local v0, b:Landroid/os/Bundle;
    const-string/jumbo v3, "response"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 517
    .local v2, response:Ljava/lang/String;
    const-string v3, "extras"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 518
    .local v1, extras:Landroid/os/Bundle;
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl$OnExtraCommandListenerTransport;->mListener:Lcom/stericsson/hardware/fm/FmReceiver$OnExtraCommandListener;

    invoke-interface {v3, v2, v1}, Lcom/stericsson/hardware/fm/FmReceiver$OnExtraCommandListener;->onExtraCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 513
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic access$900(Lcom/stericsson/hardware/fm/FmReceiverImpl$OnExtraCommandListenerTransport;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 482
    invoke-direct {p0, p1}, Lcom/stericsson/hardware/fm/FmReceiverImpl$OnExtraCommandListenerTransport;->_handleMessage(Landroid/os/Message;)V

    return-void
.end method


# virtual methods
.method public onExtraCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3
    .parameter "response"
    .parameter "extras"

    .prologue
    .line 500
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 501
    .local v1, msg:Landroid/os/Message;
    const/4 v2, 0x1

    iput v2, v1, Landroid/os/Message;->what:I

    .line 502
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 503
    .local v0, b:Landroid/os/Bundle;
    const-string/jumbo v2, "response"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 504
    const-string v2, "extras"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 505
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 506
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl$OnExtraCommandListenerTransport;->mListenerHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 507
    return-void
.end method

.class Lcom/stericsson/hardware/fm/FmReceiverImpl$OnExtraCommandListenerTransport$1;
.super Landroid/os/Handler;
.source "FmReceiverImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stericsson/hardware/fm/FmReceiverImpl$OnExtraCommandListenerTransport;-><init>(Lcom/stericsson/hardware/fm/FmReceiver$OnExtraCommandListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/stericsson/hardware/fm/FmReceiverImpl$OnExtraCommandListenerTransport;


# direct methods
.method constructor <init>(Lcom/stericsson/hardware/fm/FmReceiverImpl$OnExtraCommandListenerTransport;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl$OnExtraCommandListenerTransport$1;->this$0:Lcom/stericsson/hardware/fm/FmReceiverImpl$OnExtraCommandListenerTransport;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    iget-object v0, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl$OnExtraCommandListenerTransport$1;->this$0:Lcom/stericsson/hardware/fm/FmReceiverImpl$OnExtraCommandListenerTransport;

    #calls: Lcom/stericsson/hardware/fm/FmReceiverImpl$OnExtraCommandListenerTransport;->_handleMessage(Landroid/os/Message;)V
    invoke-static {v0, p1}, Lcom/stericsson/hardware/fm/FmReceiverImpl$OnExtraCommandListenerTransport;->access$900(Lcom/stericsson/hardware/fm/FmReceiverImpl$OnExtraCommandListenerTransport;Landroid/os/Message;)V

    return-void
.end method

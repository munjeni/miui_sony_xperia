.class Lcom/stericsson/hardware/fm/FmReceiverImpl$OnForcedResetListenerTransport$1;
.super Landroid/os/Handler;
.source "FmReceiverImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stericsson/hardware/fm/FmReceiverImpl$OnForcedResetListenerTransport;-><init>(Lcom/stericsson/hardware/fm/FmReceiver$OnForcedResetListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/stericsson/hardware/fm/FmReceiverImpl$OnForcedResetListenerTransport;


# direct methods
.method constructor <init>(Lcom/stericsson/hardware/fm/FmReceiverImpl$OnForcedResetListenerTransport;)V
    .locals 0
    .parameter

    .prologue
    .line 331
    iput-object p1, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl$OnForcedResetListenerTransport$1;->this$0:Lcom/stericsson/hardware/fm/FmReceiverImpl$OnForcedResetListenerTransport;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 334
    iget-object v0, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl$OnForcedResetListenerTransport$1;->this$0:Lcom/stericsson/hardware/fm/FmReceiverImpl$OnForcedResetListenerTransport;

    #calls: Lcom/stericsson/hardware/fm/FmReceiverImpl$OnForcedResetListenerTransport;->_handleMessage(Landroid/os/Message;)V
    invoke-static {v0, p1}, Lcom/stericsson/hardware/fm/FmReceiverImpl$OnForcedResetListenerTransport;->access$500(Lcom/stericsson/hardware/fm/FmReceiverImpl$OnForcedResetListenerTransport;Landroid/os/Message;)V

    .line 335
    return-void
.end method

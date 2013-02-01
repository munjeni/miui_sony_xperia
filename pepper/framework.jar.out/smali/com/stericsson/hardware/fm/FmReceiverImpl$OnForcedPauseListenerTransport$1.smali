.class Lcom/stericsson/hardware/fm/FmReceiverImpl$OnForcedPauseListenerTransport$1;
.super Landroid/os/Handler;
.source "FmReceiverImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stericsson/hardware/fm/FmReceiverImpl$OnForcedPauseListenerTransport;-><init>(Lcom/stericsson/hardware/fm/FmReceiver$OnForcedPauseListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/stericsson/hardware/fm/FmReceiverImpl$OnForcedPauseListenerTransport;


# direct methods
.method constructor <init>(Lcom/stericsson/hardware/fm/FmReceiverImpl$OnForcedPauseListenerTransport;)V
    .locals 0
    .parameter

    .prologue
    .line 295
    iput-object p1, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl$OnForcedPauseListenerTransport$1;->this$0:Lcom/stericsson/hardware/fm/FmReceiverImpl$OnForcedPauseListenerTransport;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 298
    iget-object v0, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl$OnForcedPauseListenerTransport$1;->this$0:Lcom/stericsson/hardware/fm/FmReceiverImpl$OnForcedPauseListenerTransport;

    #calls: Lcom/stericsson/hardware/fm/FmReceiverImpl$OnForcedPauseListenerTransport;->_handleMessage(Landroid/os/Message;)V
    invoke-static {v0, p1}, Lcom/stericsson/hardware/fm/FmReceiverImpl$OnForcedPauseListenerTransport;->access$400(Lcom/stericsson/hardware/fm/FmReceiverImpl$OnForcedPauseListenerTransport;Landroid/os/Message;)V

    .line 299
    return-void
.end method

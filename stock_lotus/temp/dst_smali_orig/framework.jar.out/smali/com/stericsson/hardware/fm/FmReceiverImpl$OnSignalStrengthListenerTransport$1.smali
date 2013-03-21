.class Lcom/stericsson/hardware/fm/FmReceiverImpl$OnSignalStrengthListenerTransport$1;
.super Landroid/os/Handler;
.source "FmReceiverImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stericsson/hardware/fm/FmReceiverImpl$OnSignalStrengthListenerTransport;-><init>(Lcom/stericsson/hardware/fm/FmReceiver$OnSignalStrengthChangedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/stericsson/hardware/fm/FmReceiverImpl$OnSignalStrengthListenerTransport;


# direct methods
.method constructor <init>(Lcom/stericsson/hardware/fm/FmReceiverImpl$OnSignalStrengthListenerTransport;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl$OnSignalStrengthListenerTransport$1;->this$0:Lcom/stericsson/hardware/fm/FmReceiverImpl$OnSignalStrengthListenerTransport;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    iget-object v0, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl$OnSignalStrengthListenerTransport$1;->this$0:Lcom/stericsson/hardware/fm/FmReceiverImpl$OnSignalStrengthListenerTransport;

    #calls: Lcom/stericsson/hardware/fm/FmReceiverImpl$OnSignalStrengthListenerTransport;->_handleMessage(Landroid/os/Message;)V
    invoke-static {v0, p1}, Lcom/stericsson/hardware/fm/FmReceiverImpl$OnSignalStrengthListenerTransport;->access$700(Lcom/stericsson/hardware/fm/FmReceiverImpl$OnSignalStrengthListenerTransport;Landroid/os/Message;)V

    return-void
.end method

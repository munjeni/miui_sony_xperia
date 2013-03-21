.class Lcom/stericsson/hardware/fm/FmTransmitterImpl$OnBlockScanListenerTransport$1;
.super Landroid/os/Handler;
.source "FmTransmitterImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stericsson/hardware/fm/FmTransmitterImpl$OnBlockScanListenerTransport;-><init>(Lcom/stericsson/hardware/fm/FmTransmitter$OnScanListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/stericsson/hardware/fm/FmTransmitterImpl$OnBlockScanListenerTransport;


# direct methods
.method constructor <init>(Lcom/stericsson/hardware/fm/FmTransmitterImpl$OnBlockScanListenerTransport;)V
    .locals 0
    .parameter

    .prologue
    .line 204
    iput-object p1, p0, Lcom/stericsson/hardware/fm/FmTransmitterImpl$OnBlockScanListenerTransport$1;->this$0:Lcom/stericsson/hardware/fm/FmTransmitterImpl$OnBlockScanListenerTransport;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 207
    iget-object v0, p0, Lcom/stericsson/hardware/fm/FmTransmitterImpl$OnBlockScanListenerTransport$1;->this$0:Lcom/stericsson/hardware/fm/FmTransmitterImpl$OnBlockScanListenerTransport;

    #calls: Lcom/stericsson/hardware/fm/FmTransmitterImpl$OnBlockScanListenerTransport;->_handleMessage(Landroid/os/Message;)V
    invoke-static {v0, p1}, Lcom/stericsson/hardware/fm/FmTransmitterImpl$OnBlockScanListenerTransport;->access$300(Lcom/stericsson/hardware/fm/FmTransmitterImpl$OnBlockScanListenerTransport;Landroid/os/Message;)V

    .line 208
    return-void
.end method

.class Lcom/stericsson/hardware/fm/FmTransmitterImpl$OnBlockScanListenerTransport;
.super Lcom/stericsson/hardware/fm/IOnBlockScanListener$Stub;
.source "FmTransmitterImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stericsson/hardware/fm/FmTransmitterImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OnBlockScanListenerTransport"
.end annotation


# static fields
.field private static final TYPE_ON_BLOCKSCAN:I = 0x1


# instance fields
.field private mListener:Lcom/stericsson/hardware/fm/FmTransmitter$OnScanListener;

.field private final mListenerHandler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/stericsson/hardware/fm/FmTransmitter$OnScanListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    invoke-direct {p0}, Lcom/stericsson/hardware/fm/IOnBlockScanListener$Stub;-><init>()V

    iput-object p1, p0, Lcom/stericsson/hardware/fm/FmTransmitterImpl$OnBlockScanListenerTransport;->mListener:Lcom/stericsson/hardware/fm/FmTransmitter$OnScanListener;

    new-instance v0, Lcom/stericsson/hardware/fm/FmTransmitterImpl$OnBlockScanListenerTransport$1;

    invoke-direct {v0, p0}, Lcom/stericsson/hardware/fm/FmTransmitterImpl$OnBlockScanListenerTransport$1;-><init>(Lcom/stericsson/hardware/fm/FmTransmitterImpl$OnBlockScanListenerTransport;)V

    iput-object v0, p0, Lcom/stericsson/hardware/fm/FmTransmitterImpl$OnBlockScanListenerTransport;->mListenerHandler:Landroid/os/Handler;

    return-void
.end method

.method private _handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;

    .local v1, b:Landroid/os/Bundle;
    const-string v4, "frequency"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v2

    .local v2, frequency:[I
    const-string v4, "signalStrength"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v3

    .local v3, signalStrengths:[I
    const-string v4, "aborted"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .local v0, aborted:Z
    iget-object v4, p0, Lcom/stericsson/hardware/fm/FmTransmitterImpl$OnBlockScanListenerTransport;->mListener:Lcom/stericsson/hardware/fm/FmTransmitter$OnScanListener;

    invoke-interface {v4, v2, v3, v0}, Lcom/stericsson/hardware/fm/FmTransmitter$OnScanListener;->onBlockScan([I[IZ)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic access$300(Lcom/stericsson/hardware/fm/FmTransmitterImpl$OnBlockScanListenerTransport;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/stericsson/hardware/fm/FmTransmitterImpl$OnBlockScanListenerTransport;->_handleMessage(Landroid/os/Message;)V

    return-void
.end method


# virtual methods
.method public onBlockScan([I[IZ)V
    .locals 3
    .parameter "frequency"
    .parameter "signalStrength"
    .parameter "aborted"

    .prologue
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .local v1, msg:Landroid/os/Message;
    const/4 v2, 0x1

    iput v2, v1, Landroid/os/Message;->what:I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .local v0, b:Landroid/os/Bundle;
    const-string v2, "frequency"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    const-string v2, "signalStrength"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    const-string v2, "aborted"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmTransmitterImpl$OnBlockScanListenerTransport;->mListenerHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

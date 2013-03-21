.class Lcom/stericsson/hardware/fm/FmReceiverImpl$OnSignalStrengthListenerTransport;
.super Lcom/stericsson/hardware/fm/IOnSignalStrengthListener$Stub;
.source "FmReceiverImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stericsson/hardware/fm/FmReceiverImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OnSignalStrengthListenerTransport"
.end annotation


# static fields
.field private static final TYPE_ON_SIGNAL_STRENGTH_CHANGED:I = 0x1


# instance fields
.field private mListener:Lcom/stericsson/hardware/fm/FmReceiver$OnSignalStrengthChangedListener;

.field private final mListenerHandler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/stericsson/hardware/fm/FmReceiver$OnSignalStrengthChangedListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 408
    invoke-direct {p0}, Lcom/stericsson/hardware/fm/IOnSignalStrengthListener$Stub;-><init>()V

    .line 409
    iput-object p1, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl$OnSignalStrengthListenerTransport;->mListener:Lcom/stericsson/hardware/fm/FmReceiver$OnSignalStrengthChangedListener;

    .line 411
    new-instance v0, Lcom/stericsson/hardware/fm/FmReceiverImpl$OnSignalStrengthListenerTransport$1;

    invoke-direct {v0, p0}, Lcom/stericsson/hardware/fm/FmReceiverImpl$OnSignalStrengthListenerTransport$1;-><init>(Lcom/stericsson/hardware/fm/FmReceiverImpl$OnSignalStrengthListenerTransport;)V

    iput-object v0, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl$OnSignalStrengthListenerTransport;->mListenerHandler:Landroid/os/Handler;

    .line 417
    return-void
.end method

.method private _handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 432
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 439
    :goto_0
    return-void

    .line 434
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    .line 435
    .local v0, b:Landroid/os/Bundle;
    const-string/jumbo v2, "signalStrength"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 436
    .local v1, signalStrength:I
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl$OnSignalStrengthListenerTransport;->mListener:Lcom/stericsson/hardware/fm/FmReceiver$OnSignalStrengthChangedListener;

    invoke-interface {v2, v1}, Lcom/stericsson/hardware/fm/FmReceiver$OnSignalStrengthChangedListener;->onSignalStrengthChanged(I)V

    goto :goto_0

    .line 432
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic access$700(Lcom/stericsson/hardware/fm/FmReceiverImpl$OnSignalStrengthListenerTransport;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 402
    invoke-direct {p0, p1}, Lcom/stericsson/hardware/fm/FmReceiverImpl$OnSignalStrengthListenerTransport;->_handleMessage(Landroid/os/Message;)V

    return-void
.end method


# virtual methods
.method public onSignalStrengthChanged(I)V
    .locals 3
    .parameter "signalStrength"

    .prologue
    .line 420
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 421
    .local v1, msg:Landroid/os/Message;
    const/4 v2, 0x1

    iput v2, v1, Landroid/os/Message;->what:I

    .line 422
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 423
    .local v0, b:Landroid/os/Bundle;
    const-string/jumbo v2, "signalStrength"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 424
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 425
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl$OnSignalStrengthListenerTransport;->mListenerHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 426
    return-void
.end method

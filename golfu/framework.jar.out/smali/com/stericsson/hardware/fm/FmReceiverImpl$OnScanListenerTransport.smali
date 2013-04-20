.class Lcom/stericsson/hardware/fm/FmReceiverImpl$OnScanListenerTransport;
.super Lcom/stericsson/hardware/fm/IOnScanListener$Stub;
.source "FmReceiverImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stericsson/hardware/fm/FmReceiverImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OnScanListenerTransport"
.end annotation


# static fields
.field private static final TYPE_ON_FULLSCAN:I = 0x2

.field private static final TYPE_ON_SCAN:I = 0x1


# instance fields
.field private mListener:Lcom/stericsson/hardware/fm/FmReceiver$OnScanListener;

.field private final mListenerHandler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/stericsson/hardware/fm/FmReceiver$OnScanListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 227
    invoke-direct {p0}, Lcom/stericsson/hardware/fm/IOnScanListener$Stub;-><init>()V

    .line 228
    iput-object p1, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl$OnScanListenerTransport;->mListener:Lcom/stericsson/hardware/fm/FmReceiver$OnScanListener;

    .line 230
    new-instance v0, Lcom/stericsson/hardware/fm/FmReceiverImpl$OnScanListenerTransport$1;

    invoke-direct {v0, p0}, Lcom/stericsson/hardware/fm/FmReceiverImpl$OnScanListenerTransport$1;-><init>(Lcom/stericsson/hardware/fm/FmReceiverImpl$OnScanListenerTransport;)V

    iput-object v0, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl$OnScanListenerTransport;->mListenerHandler:Landroid/os/Handler;

    .line 236
    return-void
.end method

.method private _handleMessage(Landroid/os/Message;)V
    .locals 8
    .parameter "msg"

    .prologue
    .line 266
    iget v7, p1, Landroid/os/Message;->what:I

    packed-switch v7, :pswitch_data_0

    .line 283
    :goto_0
    return-void

    .line 268
    :pswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;

    .line 269
    .local v1, b:Landroid/os/Bundle;
    const-string/jumbo v7, "tunedFrequency"

    invoke-virtual {v1, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 270
    .local v6, tunedFrequency:I
    const-string/jumbo v7, "signalStrength"

    invoke-virtual {v1, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 271
    .local v4, signalStrength:I
    const-string/jumbo v7, "scanDirection"

    invoke-virtual {v1, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 272
    .local v3, scanDirection:I
    const-string v7, "aborted"

    invoke-virtual {v1, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 273
    .local v0, aborted:Z
    iget-object v7, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl$OnScanListenerTransport;->mListener:Lcom/stericsson/hardware/fm/FmReceiver$OnScanListener;

    invoke-interface {v7, v6, v4, v3, v0}, Lcom/stericsson/hardware/fm/FmReceiver$OnScanListener;->onScan(IIIZ)V

    goto :goto_0

    .line 276
    .end local v0           #aborted:Z
    .end local v1           #b:Landroid/os/Bundle;
    .end local v3           #scanDirection:I
    .end local v4           #signalStrength:I
    .end local v6           #tunedFrequency:I
    :pswitch_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;

    .line 277
    .restart local v1       #b:Landroid/os/Bundle;
    const-string v7, "frequency"

    invoke-virtual {v1, v7}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v2

    .line 278
    .local v2, frequency:[I
    const-string/jumbo v7, "signalStrength"

    invoke-virtual {v1, v7}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v5

    .line 279
    .local v5, signalStrengths:[I
    const-string v7, "aborted"

    invoke-virtual {v1, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 280
    .restart local v0       #aborted:Z
    iget-object v7, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl$OnScanListenerTransport;->mListener:Lcom/stericsson/hardware/fm/FmReceiver$OnScanListener;

    invoke-interface {v7, v2, v5, v0}, Lcom/stericsson/hardware/fm/FmReceiver$OnScanListener;->onFullScan([I[IZ)V

    goto :goto_0

    .line 266
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic access$300(Lcom/stericsson/hardware/fm/FmReceiverImpl$OnScanListenerTransport;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 220
    invoke-direct {p0, p1}, Lcom/stericsson/hardware/fm/FmReceiverImpl$OnScanListenerTransport;->_handleMessage(Landroid/os/Message;)V

    return-void
.end method


# virtual methods
.method public onFullScan([I[IZ)V
    .locals 3
    .parameter "frequency"
    .parameter "signalStrength"
    .parameter "aborted"

    .prologue
    .line 252
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 253
    .local v1, msg:Landroid/os/Message;
    const/4 v2, 0x2

    iput v2, v1, Landroid/os/Message;->what:I

    .line 254
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 255
    .local v0, b:Landroid/os/Bundle;
    const-string v2, "frequency"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 256
    const-string/jumbo v2, "signalStrength"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 257
    const-string v2, "aborted"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 258
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 259
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl$OnScanListenerTransport;->mListenerHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 260
    return-void
.end method

.method public onScan(IIIZ)V
    .locals 3
    .parameter "tunedFrequency"
    .parameter "signalStrength"
    .parameter "scanDirection"
    .parameter "aborted"

    .prologue
    .line 240
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 241
    .local v1, msg:Landroid/os/Message;
    const/4 v2, 0x1

    iput v2, v1, Landroid/os/Message;->what:I

    .line 242
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 243
    .local v0, b:Landroid/os/Bundle;
    const-string/jumbo v2, "tunedFrequency"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 244
    const-string/jumbo v2, "signalStrength"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 245
    const-string/jumbo v2, "scanDirection"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 246
    const-string v2, "aborted"

    invoke-virtual {v0, v2, p4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 247
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 248
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl$OnScanListenerTransport;->mListenerHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 249
    return-void
.end method

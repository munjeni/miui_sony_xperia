.class Lcom/stericsson/hardware/fm/FmTransmitterImpl$OnExtraCommandListenerTransport;
.super Lcom/stericsson/hardware/fm/IOnExtraCommandListener$Stub;
.source "FmTransmitterImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stericsson/hardware/fm/FmTransmitterImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OnExtraCommandListenerTransport"
.end annotation


# static fields
.field private static final TYPE_ON_EXTRA_COMMAND:I = 0x1


# instance fields
.field private mListener:Lcom/stericsson/hardware/fm/FmTransmitter$OnExtraCommandListener;

.field private final mListenerHandler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/stericsson/hardware/fm/FmTransmitter$OnExtraCommandListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 312
    invoke-direct {p0}, Lcom/stericsson/hardware/fm/IOnExtraCommandListener$Stub;-><init>()V

    .line 313
    iput-object p1, p0, Lcom/stericsson/hardware/fm/FmTransmitterImpl$OnExtraCommandListenerTransport;->mListener:Lcom/stericsson/hardware/fm/FmTransmitter$OnExtraCommandListener;

    .line 315
    new-instance v0, Lcom/stericsson/hardware/fm/FmTransmitterImpl$OnExtraCommandListenerTransport$1;

    invoke-direct {v0, p0}, Lcom/stericsson/hardware/fm/FmTransmitterImpl$OnExtraCommandListenerTransport$1;-><init>(Lcom/stericsson/hardware/fm/FmTransmitterImpl$OnExtraCommandListenerTransport;)V

    iput-object v0, p0, Lcom/stericsson/hardware/fm/FmTransmitterImpl$OnExtraCommandListenerTransport;->mListenerHandler:Landroid/os/Handler;

    .line 321
    return-void
.end method

.method private _handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 337
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 345
    :goto_0
    return-void

    .line 339
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    .line 340
    .local v0, b:Landroid/os/Bundle;
    const-string/jumbo v3, "response"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 341
    .local v2, response:Ljava/lang/String;
    const-string v3, "extras"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 342
    .local v1, extras:Landroid/os/Bundle;
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmTransmitterImpl$OnExtraCommandListenerTransport;->mListener:Lcom/stericsson/hardware/fm/FmTransmitter$OnExtraCommandListener;

    invoke-interface {v3, v2, v1}, Lcom/stericsson/hardware/fm/FmTransmitter$OnExtraCommandListener;->onExtraCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 337
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic access$600(Lcom/stericsson/hardware/fm/FmTransmitterImpl$OnExtraCommandListenerTransport;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 306
    invoke-direct {p0, p1}, Lcom/stericsson/hardware/fm/FmTransmitterImpl$OnExtraCommandListenerTransport;->_handleMessage(Landroid/os/Message;)V

    return-void
.end method


# virtual methods
.method public onExtraCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3
    .parameter "response"
    .parameter "extras"

    .prologue
    .line 324
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 325
    .local v1, msg:Landroid/os/Message;
    const/4 v2, 0x1

    iput v2, v1, Landroid/os/Message;->what:I

    .line 326
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 327
    .local v0, b:Landroid/os/Bundle;
    const-string/jumbo v2, "response"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    const-string v2, "extras"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 329
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 330
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmTransmitterImpl$OnExtraCommandListenerTransport;->mListenerHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 331
    return-void
.end method

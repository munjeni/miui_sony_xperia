.class Lcom/stericsson/hardware/fm/FmReceiverImpl$OnStartedListenerTransport;
.super Lcom/stericsson/hardware/fm/IOnStartedListener$Stub;
.source "FmReceiverImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stericsson/hardware/fm/FmReceiverImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OnStartedListenerTransport"
.end annotation


# static fields
.field private static final TYPE_ON_STARTED:I = 0x1


# instance fields
.field private mListener:Lcom/stericsson/hardware/fm/FmReceiver$OnStartedListener;

.field private final mListenerHandler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/stericsson/hardware/fm/FmReceiver$OnStartedListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 162
    invoke-direct {p0}, Lcom/stericsson/hardware/fm/IOnStartedListener$Stub;-><init>()V

    .line 163
    iput-object p1, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl$OnStartedListenerTransport;->mListener:Lcom/stericsson/hardware/fm/FmReceiver$OnStartedListener;

    .line 165
    new-instance v0, Lcom/stericsson/hardware/fm/FmReceiverImpl$OnStartedListenerTransport$1;

    invoke-direct {v0, p0}, Lcom/stericsson/hardware/fm/FmReceiverImpl$OnStartedListenerTransport$1;-><init>(Lcom/stericsson/hardware/fm/FmReceiverImpl$OnStartedListenerTransport;)V

    iput-object v0, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl$OnStartedListenerTransport;->mListenerHandler:Landroid/os/Handler;

    .line 171
    return-void
.end method

.method private _handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 180
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 185
    :goto_0
    return-void

    .line 182
    :pswitch_0
    iget-object v0, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl$OnStartedListenerTransport;->mListener:Lcom/stericsson/hardware/fm/FmReceiver$OnStartedListener;

    invoke-interface {v0}, Lcom/stericsson/hardware/fm/FmReceiver$OnStartedListener;->onStarted()V

    goto :goto_0

    .line 180
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic access$100(Lcom/stericsson/hardware/fm/FmReceiverImpl$OnStartedListenerTransport;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 156
    invoke-direct {p0, p1}, Lcom/stericsson/hardware/fm/FmReceiverImpl$OnStartedListenerTransport;->_handleMessage(Landroid/os/Message;)V

    return-void
.end method


# virtual methods
.method public onStarted()V
    .locals 2

    .prologue
    .line 174
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 175
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 176
    iget-object v1, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl$OnStartedListenerTransport;->mListenerHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 177
    return-void
.end method

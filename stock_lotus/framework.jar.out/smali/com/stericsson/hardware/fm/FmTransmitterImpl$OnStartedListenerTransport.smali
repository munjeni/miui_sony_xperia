.class Lcom/stericsson/hardware/fm/FmTransmitterImpl$OnStartedListenerTransport;
.super Lcom/stericsson/hardware/fm/IOnStartedListener$Stub;
.source "FmTransmitterImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stericsson/hardware/fm/FmTransmitterImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OnStartedListenerTransport"
.end annotation


# static fields
.field private static final TYPE_ON_STARTED:I = 0x1


# instance fields
.field private mListener:Lcom/stericsson/hardware/fm/FmTransmitter$OnStartedListener;

.field private final mListenerHandler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/stericsson/hardware/fm/FmTransmitter$OnStartedListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 137
    invoke-direct {p0}, Lcom/stericsson/hardware/fm/IOnStartedListener$Stub;-><init>()V

    .line 138
    iput-object p1, p0, Lcom/stericsson/hardware/fm/FmTransmitterImpl$OnStartedListenerTransport;->mListener:Lcom/stericsson/hardware/fm/FmTransmitter$OnStartedListener;

    .line 140
    new-instance v0, Lcom/stericsson/hardware/fm/FmTransmitterImpl$OnStartedListenerTransport$1;

    invoke-direct {v0, p0}, Lcom/stericsson/hardware/fm/FmTransmitterImpl$OnStartedListenerTransport$1;-><init>(Lcom/stericsson/hardware/fm/FmTransmitterImpl$OnStartedListenerTransport;)V

    iput-object v0, p0, Lcom/stericsson/hardware/fm/FmTransmitterImpl$OnStartedListenerTransport;->mListenerHandler:Landroid/os/Handler;

    .line 146
    return-void
.end method

.method private _handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 155
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 160
    :goto_0
    return-void

    .line 157
    :pswitch_0
    iget-object v0, p0, Lcom/stericsson/hardware/fm/FmTransmitterImpl$OnStartedListenerTransport;->mListener:Lcom/stericsson/hardware/fm/FmTransmitter$OnStartedListener;

    invoke-interface {v0}, Lcom/stericsson/hardware/fm/FmTransmitter$OnStartedListener;->onStarted()V

    goto :goto_0

    .line 155
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic access$100(Lcom/stericsson/hardware/fm/FmTransmitterImpl$OnStartedListenerTransport;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 131
    invoke-direct {p0, p1}, Lcom/stericsson/hardware/fm/FmTransmitterImpl$OnStartedListenerTransport;->_handleMessage(Landroid/os/Message;)V

    return-void
.end method


# virtual methods
.method public onStarted()V
    .locals 2

    .prologue
    .line 149
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 150
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 151
    iget-object v1, p0, Lcom/stericsson/hardware/fm/FmTransmitterImpl$OnStartedListenerTransport;->mListenerHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 152
    return-void
.end method

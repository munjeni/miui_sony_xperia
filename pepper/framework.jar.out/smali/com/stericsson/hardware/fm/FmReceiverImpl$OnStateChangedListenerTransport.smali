.class Lcom/stericsson/hardware/fm/FmReceiverImpl$OnStateChangedListenerTransport;
.super Lcom/stericsson/hardware/fm/IOnStateChangedListener$Stub;
.source "FmReceiverImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stericsson/hardware/fm/FmReceiverImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OnStateChangedListenerTransport"
.end annotation


# static fields
.field private static final TYPE_ON_STATE_CHANGED:I = 0x1


# instance fields
.field private mListener:Lcom/stericsson/hardware/fm/FmReceiver$OnStateChangedListener;

.field private final mListenerHandler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/stericsson/hardware/fm/FmReceiver$OnStateChangedListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 122
    invoke-direct {p0}, Lcom/stericsson/hardware/fm/IOnStateChangedListener$Stub;-><init>()V

    .line 123
    iput-object p1, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl$OnStateChangedListenerTransport;->mListener:Lcom/stericsson/hardware/fm/FmReceiver$OnStateChangedListener;

    .line 125
    new-instance v0, Lcom/stericsson/hardware/fm/FmReceiverImpl$OnStateChangedListenerTransport$1;

    invoke-direct {v0, p0}, Lcom/stericsson/hardware/fm/FmReceiverImpl$OnStateChangedListenerTransport$1;-><init>(Lcom/stericsson/hardware/fm/FmReceiverImpl$OnStateChangedListenerTransport;)V

    iput-object v0, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl$OnStateChangedListenerTransport;->mListenerHandler:Landroid/os/Handler;

    .line 131
    return-void
.end method

.method private _handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 145
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 153
    :goto_0
    return-void

    .line 147
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    .line 148
    .local v0, b:Landroid/os/Bundle;
    const-string/jumbo v3, "oldState"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 149
    .local v2, oldState:I
    const-string/jumbo v3, "newState"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 150
    .local v1, newState:I
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl$OnStateChangedListenerTransport;->mListener:Lcom/stericsson/hardware/fm/FmReceiver$OnStateChangedListener;

    invoke-interface {v3, v2, v1}, Lcom/stericsson/hardware/fm/FmReceiver$OnStateChangedListener;->onStateChanged(II)V

    goto :goto_0

    .line 145
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic access$000(Lcom/stericsson/hardware/fm/FmReceiverImpl$OnStateChangedListenerTransport;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 116
    invoke-direct {p0, p1}, Lcom/stericsson/hardware/fm/FmReceiverImpl$OnStateChangedListenerTransport;->_handleMessage(Landroid/os/Message;)V

    return-void
.end method


# virtual methods
.method public onStateChanged(II)V
    .locals 3
    .parameter "oldState"
    .parameter "newState"

    .prologue
    .line 135
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 136
    .local v1, msg:Landroid/os/Message;
    const/4 v2, 0x1

    iput v2, v1, Landroid/os/Message;->what:I

    .line 137
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 138
    .local v0, b:Landroid/os/Bundle;
    const-string/jumbo v2, "oldState"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 139
    const-string/jumbo v2, "newState"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 140
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 141
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl$OnStateChangedListenerTransport;->mListenerHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 142
    return-void
.end method

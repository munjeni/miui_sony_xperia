.class Lcom/stericsson/hardware/fm/FmTransmitterImpl$OnForcedPauseListenerTransport$1;
.super Landroid/os/Handler;
.source "FmTransmitterImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stericsson/hardware/fm/FmTransmitterImpl$OnForcedPauseListenerTransport;-><init>(Lcom/stericsson/hardware/fm/FmTransmitter$OnForcedPauseListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/stericsson/hardware/fm/FmTransmitterImpl$OnForcedPauseListenerTransport;


# direct methods
.method constructor <init>(Lcom/stericsson/hardware/fm/FmTransmitterImpl$OnForcedPauseListenerTransport;)V
    .locals 0
    .parameter

    .prologue
    .line 246
    iput-object p1, p0, Lcom/stericsson/hardware/fm/FmTransmitterImpl$OnForcedPauseListenerTransport$1;->this$0:Lcom/stericsson/hardware/fm/FmTransmitterImpl$OnForcedPauseListenerTransport;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 249
    iget-object v0, p0, Lcom/stericsson/hardware/fm/FmTransmitterImpl$OnForcedPauseListenerTransport$1;->this$0:Lcom/stericsson/hardware/fm/FmTransmitterImpl$OnForcedPauseListenerTransport;

    #calls: Lcom/stericsson/hardware/fm/FmTransmitterImpl$OnForcedPauseListenerTransport;->_handleMessage(Landroid/os/Message;)V
    invoke-static {v0, p1}, Lcom/stericsson/hardware/fm/FmTransmitterImpl$OnForcedPauseListenerTransport;->access$400(Lcom/stericsson/hardware/fm/FmTransmitterImpl$OnForcedPauseListenerTransport;Landroid/os/Message;)V

    .line 250
    return-void
.end method

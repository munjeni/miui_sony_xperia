.class Lcom/stericsson/hardware/fm/FmReceiverImpl$OnRDSDataListenerTransport;
.super Lcom/stericsson/hardware/fm/IOnRDSDataFoundListener$Stub;
.source "FmReceiverImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stericsson/hardware/fm/FmReceiverImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OnRDSDataListenerTransport"
.end annotation


# static fields
.field private static final TYPE_ON_RDS_DATA:I = 0x1


# instance fields
.field private mListener:Lcom/stericsson/hardware/fm/FmReceiver$OnRDSDataFoundListener;

.field private final mListenerHandler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/stericsson/hardware/fm/FmReceiver$OnRDSDataFoundListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 365
    invoke-direct {p0}, Lcom/stericsson/hardware/fm/IOnRDSDataFoundListener$Stub;-><init>()V

    .line 366
    iput-object p1, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl$OnRDSDataListenerTransport;->mListener:Lcom/stericsson/hardware/fm/FmReceiver$OnRDSDataFoundListener;

    .line 368
    new-instance v0, Lcom/stericsson/hardware/fm/FmReceiverImpl$OnRDSDataListenerTransport$1;

    invoke-direct {v0, p0}, Lcom/stericsson/hardware/fm/FmReceiverImpl$OnRDSDataListenerTransport$1;-><init>(Lcom/stericsson/hardware/fm/FmReceiverImpl$OnRDSDataListenerTransport;)V

    iput-object v0, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl$OnRDSDataListenerTransport;->mListenerHandler:Landroid/os/Handler;

    .line 374
    return-void
.end method

.method private _handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 391
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 399
    :goto_0
    return-void

    .line 393
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    .line 394
    .local v0, b:Landroid/os/Bundle;
    const-string v3, "frequency"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 395
    .local v1, frequency:I
    const-string/jumbo v3, "rdsData"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 396
    .local v2, rdsData:Landroid/os/Bundle;
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl$OnRDSDataListenerTransport;->mListener:Lcom/stericsson/hardware/fm/FmReceiver$OnRDSDataFoundListener;

    invoke-interface {v3, v2, v1}, Lcom/stericsson/hardware/fm/FmReceiver$OnRDSDataFoundListener;->onRDSDataFound(Landroid/os/Bundle;I)V

    goto :goto_0

    .line 391
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic access$600(Lcom/stericsson/hardware/fm/FmReceiverImpl$OnRDSDataListenerTransport;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 359
    invoke-direct {p0, p1}, Lcom/stericsson/hardware/fm/FmReceiverImpl$OnRDSDataListenerTransport;->_handleMessage(Landroid/os/Message;)V

    return-void
.end method


# virtual methods
.method public onRDSDataFound(Landroid/os/Bundle;I)V
    .locals 3
    .parameter "rdsData"
    .parameter "frequency"

    .prologue
    .line 377
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 378
    .local v1, msg:Landroid/os/Message;
    const/4 v2, 0x1

    iput v2, v1, Landroid/os/Message;->what:I

    .line 379
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 380
    .local v0, b:Landroid/os/Bundle;
    if-eqz p1, :cond_0

    .line 381
    const-string/jumbo v2, "rdsData"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 383
    :cond_0
    const-string v2, "frequency"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 384
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 385
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl$OnRDSDataListenerTransport;->mListenerHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 386
    return-void
.end method

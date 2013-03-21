.class final Landroid/app/ContextImpl$35;
.super Landroid/app/ContextImpl$ServiceFetcher;
.source "ContextImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ContextImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 477
    invoke-direct {p0}, Landroid/app/ContextImpl$ServiceFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public createService(Landroid/app/ContextImpl;)Ljava/lang/Object;
    .locals 3
    .parameter "ctx"

    .prologue
    .line 479
    const-string v2, "fm_transmitter"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 480
    .local v0, b:Landroid/os/IBinder;
    invoke-static {v0}, Lcom/stericsson/hardware/fm/IFmTransmitter$Stub;->asInterface(Landroid/os/IBinder;)Lcom/stericsson/hardware/fm/IFmTransmitter;

    move-result-object v1

    .line 481
    .local v1, service:Lcom/stericsson/hardware/fm/IFmTransmitter;
    new-instance v2, Lcom/stericsson/hardware/fm/FmTransmitterImpl;

    invoke-direct {v2, v1}, Lcom/stericsson/hardware/fm/FmTransmitterImpl;-><init>(Lcom/stericsson/hardware/fm/IFmTransmitter;)V

    return-object v2
.end method

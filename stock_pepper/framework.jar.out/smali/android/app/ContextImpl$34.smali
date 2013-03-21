.class final Landroid/app/ContextImpl$34;
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
    .line 470
    invoke-direct {p0}, Landroid/app/ContextImpl$ServiceFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public createService(Landroid/app/ContextImpl;)Ljava/lang/Object;
    .locals 3
    .parameter "ctx"

    .prologue
    .line 472
    const-string v2, "fm_receiver"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 473
    .local v0, b:Landroid/os/IBinder;
    invoke-static {v0}, Lcom/stericsson/hardware/fm/IFmReceiver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/stericsson/hardware/fm/IFmReceiver;

    move-result-object v1

    .line 474
    .local v1, service:Lcom/stericsson/hardware/fm/IFmReceiver;
    new-instance v2, Lcom/stericsson/hardware/fm/FmReceiverImpl;

    invoke-direct {v2, v1}, Lcom/stericsson/hardware/fm/FmReceiverImpl;-><init>(Lcom/stericsson/hardware/fm/IFmReceiver;)V

    return-object v2
.end method

.class Landroid/mtp/MtpVendorHandler$1;
.super Landroid/content/BroadcastReceiver;
.source "MtpVendorHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/mtp/MtpVendorHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/mtp/MtpVendorHandler;


# direct methods
.method constructor <init>(Landroid/mtp/MtpVendorHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 63
    iput-object p1, p0, Landroid/mtp/MtpVendorHandler$1;->this$0:Landroid/mtp/MtpVendorHandler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 67
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 70
    .local v0, action:Ljava/lang/String;
    const-string v2, "com.sonyericsson.mtp.action.NOTIFICATION"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 85
    :cond_0
    :goto_0
    return-void

    .line 75
    :cond_1
    iget-object v2, p0, Landroid/mtp/MtpVendorHandler$1;->this$0:Landroid/mtp/MtpVendorHandler;

    #getter for: Landroid/mtp/MtpVendorHandler;->mVendorHandlerThread:Landroid/mtp/MtpVendorHandler$VendorHandlerThread;
    invoke-static {v2}, Landroid/mtp/MtpVendorHandler;->access$000(Landroid/mtp/MtpVendorHandler;)Landroid/mtp/MtpVendorHandler$VendorHandlerThread;

    move-result-object v2

    invoke-virtual {v2}, Landroid/mtp/MtpVendorHandler$VendorHandlerThread;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 76
    .local v1, msg:Landroid/os/Message;
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 78
    const-string v2, "com.sonyericsson.mtp.category.RESPONSE"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 79
    const/4 v2, 0x2

    iput v2, v1, Landroid/os/Message;->what:I

    .line 80
    iget-object v2, p0, Landroid/mtp/MtpVendorHandler$1;->this$0:Landroid/mtp/MtpVendorHandler;

    #getter for: Landroid/mtp/MtpVendorHandler;->mVendorHandlerThread:Landroid/mtp/MtpVendorHandler$VendorHandlerThread;
    invoke-static {v2}, Landroid/mtp/MtpVendorHandler;->access$000(Landroid/mtp/MtpVendorHandler;)Landroid/mtp/MtpVendorHandler$VendorHandlerThread;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/mtp/MtpVendorHandler$VendorHandlerThread;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 81
    :cond_2
    const-string v2, "com.sonyericsson.mtp.category.EVENT"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 82
    const/4 v2, 0x3

    iput v2, v1, Landroid/os/Message;->what:I

    .line 83
    iget-object v2, p0, Landroid/mtp/MtpVendorHandler$1;->this$0:Landroid/mtp/MtpVendorHandler;

    #getter for: Landroid/mtp/MtpVendorHandler;->mVendorHandlerThread:Landroid/mtp/MtpVendorHandler$VendorHandlerThread;
    invoke-static {v2}, Landroid/mtp/MtpVendorHandler;->access$000(Landroid/mtp/MtpVendorHandler;)Landroid/mtp/MtpVendorHandler$VendorHandlerThread;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/mtp/MtpVendorHandler$VendorHandlerThread;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.class Lcom/android/server/HDMIService$1;
.super Landroid/content/BroadcastReceiver;
.source "HDMIService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/HDMIService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/HDMIService;


# direct methods
.method constructor <init>(Lcom/android/server/HDMIService;)V
    .locals 0
    .parameter

    .prologue
    .line 154
    iput-object p1, p0, Lcom/android/server/HDMIService$1;->this$0:Lcom/android/server/HDMIService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 156
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 158
    .local v0, action:Ljava/lang/String;
    const-string v2, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "ro.hdmi.enable"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 160
    new-instance v1, Ljava/lang/Thread;

    iget-object v2, p0, Lcom/android/server/HDMIService$1;->this$0:Lcom/android/server/HDMIService;

    #getter for: Lcom/android/server/HDMIService;->mListener:Lcom/android/server/HDMIListener;
    invoke-static {v2}, Lcom/android/server/HDMIService;->access$000(Lcom/android/server/HDMIService;)Lcom/android/server/HDMIListener;

    move-result-object v2

    const-class v3, Lcom/android/server/HDMIListener;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 161
    .local v1, thread:Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 163
    .end local v1           #thread:Ljava/lang/Thread;
    :cond_0
    return-void
.end method

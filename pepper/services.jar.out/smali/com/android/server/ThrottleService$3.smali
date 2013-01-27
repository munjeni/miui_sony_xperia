.class Lcom/android/server/ThrottleService$3;
.super Landroid/content/BroadcastReceiver;
.source "ThrottleService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/ThrottleService;->systemReady()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ThrottleService;


# direct methods
.method constructor <init>(Lcom/android/server/ThrottleService;)V
    .locals 0
    .parameter

    .prologue
    .line 342
    iput-object p1, p0, Lcom/android/server/ThrottleService$3;->this$0:Lcom/android/server/ThrottleService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 345
    iget-object v0, p0, Lcom/android/server/ThrottleService$3;->this$0:Lcom/android/server/ThrottleService;

    const/4 v1, 0x0

    #setter for: Lcom/android/server/ThrottleService;->mUiContext:Landroid/content/Context;
    invoke-static {v0, v1}, Lcom/android/server/ThrottleService;->access$002(Lcom/android/server/ThrottleService;Landroid/content/Context;)Landroid/content/Context;

    .line 346
    return-void
.end method

.class Lcom/android/providers/media/MtpService$1;
.super Landroid/content/BroadcastReceiver;
.source "MtpService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/media/MtpService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/providers/media/MtpService;


# direct methods
.method constructor <init>(Lcom/android/providers/media/MtpService;)V
    .locals 0
    .parameter

    .prologue
    .line 82
    iput-object p1, p0, Lcom/android/providers/media/MtpService$1;->this$0:Lcom/android/providers/media/MtpService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v4, 0x0

    .line 85
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 86
    .local v0, action:Ljava/lang/String;
    const-string v2, "android.intent.action.USER_PRESENT"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 87
    iget-object v2, p0, Lcom/android/providers/media/MtpService$1;->this$0:Lcom/android/providers/media/MtpService;

    #getter for: Lcom/android/providers/media/MtpService;->mBinder:Lcom/android/providers/media/IMtpService$Stub;
    invoke-static {v2}, Lcom/android/providers/media/MtpService;->access$000(Lcom/android/providers/media/MtpService;)Lcom/android/providers/media/IMtpService$Stub;

    move-result-object v3

    monitor-enter v3

    .line 89
    :try_start_0
    iget-object v2, p0, Lcom/android/providers/media/MtpService$1;->this$0:Lcom/android/providers/media/MtpService;

    #getter for: Lcom/android/providers/media/MtpService;->mMtpDisabled:Z
    invoke-static {v2}, Lcom/android/providers/media/MtpService;->access$100(Lcom/android/providers/media/MtpService;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 90
    iget-object v2, p0, Lcom/android/providers/media/MtpService$1;->this$0:Lcom/android/providers/media/MtpService;

    #calls: Lcom/android/providers/media/MtpService;->addStorageDevicesLocked()V
    invoke-static {v2}, Lcom/android/providers/media/MtpService;->access$200(Lcom/android/providers/media/MtpService;)V

    .line 91
    iget-object v2, p0, Lcom/android/providers/media/MtpService$1;->this$0:Lcom/android/providers/media/MtpService;

    const/4 v4, 0x0

    #setter for: Lcom/android/providers/media/MtpService;->mMtpDisabled:Z
    invoke-static {v2, v4}, Lcom/android/providers/media/MtpService;->access$102(Lcom/android/providers/media/MtpService;Z)Z

    .line 93
    :cond_0
    monitor-exit v3

    .line 106
    :cond_1
    :goto_0
    return-void

    .line 93
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 94
    :cond_2
    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 95
    const-string v2, "level"

    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 96
    .local v1, batterylevel:I
    iget-object v2, p0, Lcom/android/providers/media/MtpService$1;->this$0:Lcom/android/providers/media/MtpService;

    const-string v3, "scale"

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    #setter for: Lcom/android/providers/media/MtpService;->mBatteryScale:I
    invoke-static {v2, v3}, Lcom/android/providers/media/MtpService;->access$302(Lcom/android/providers/media/MtpService;I)I

    .line 97
    iget-object v2, p0, Lcom/android/providers/media/MtpService$1;->this$0:Lcom/android/providers/media/MtpService;

    #getter for: Lcom/android/providers/media/MtpService;->mBatteryScale:I
    invoke-static {v2}, Lcom/android/providers/media/MtpService;->access$300(Lcom/android/providers/media/MtpService;)I

    move-result v2

    if-lez v2, :cond_3

    .line 98
    iget-object v2, p0, Lcom/android/providers/media/MtpService$1;->this$0:Lcom/android/providers/media/MtpService;

    mul-int/lit8 v3, v1, 0x64

    iget-object v4, p0, Lcom/android/providers/media/MtpService$1;->this$0:Lcom/android/providers/media/MtpService;

    #getter for: Lcom/android/providers/media/MtpService;->mBatteryScale:I
    invoke-static {v4}, Lcom/android/providers/media/MtpService;->access$300(Lcom/android/providers/media/MtpService;)I

    move-result v4

    div-int/2addr v3, v4

    #setter for: Lcom/android/providers/media/MtpService;->mBatteryLevel:I
    invoke-static {v2, v3}, Lcom/android/providers/media/MtpService;->access$402(Lcom/android/providers/media/MtpService;I)I

    .line 102
    :goto_1
    iget-object v2, p0, Lcom/android/providers/media/MtpService$1;->this$0:Lcom/android/providers/media/MtpService;

    #getter for: Lcom/android/providers/media/MtpService;->mDatabase:Landroid/mtp/MtpDatabase;
    invoke-static {v2}, Lcom/android/providers/media/MtpService;->access$500(Lcom/android/providers/media/MtpService;)Landroid/mtp/MtpDatabase;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 103
    iget-object v2, p0, Lcom/android/providers/media/MtpService$1;->this$0:Lcom/android/providers/media/MtpService;

    #getter for: Lcom/android/providers/media/MtpService;->mDatabase:Landroid/mtp/MtpDatabase;
    invoke-static {v2}, Lcom/android/providers/media/MtpService;->access$500(Lcom/android/providers/media/MtpService;)Landroid/mtp/MtpDatabase;

    move-result-object v2

    iget-object v3, p0, Lcom/android/providers/media/MtpService$1;->this$0:Lcom/android/providers/media/MtpService;

    #getter for: Lcom/android/providers/media/MtpService;->mBatteryLevel:I
    invoke-static {v3}, Lcom/android/providers/media/MtpService;->access$400(Lcom/android/providers/media/MtpService;)I

    move-result v3

    iget-object v4, p0, Lcom/android/providers/media/MtpService$1;->this$0:Lcom/android/providers/media/MtpService;

    #getter for: Lcom/android/providers/media/MtpService;->mBatteryScale:I
    invoke-static {v4}, Lcom/android/providers/media/MtpService;->access$300(Lcom/android/providers/media/MtpService;)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/mtp/MtpDatabase;->setBatteryLevel(II)V

    goto :goto_0

    .line 100
    :cond_3
    iget-object v2, p0, Lcom/android/providers/media/MtpService$1;->this$0:Lcom/android/providers/media/MtpService;

    #setter for: Lcom/android/providers/media/MtpService;->mBatteryLevel:I
    invoke-static {v2, v4}, Lcom/android/providers/media/MtpService;->access$402(Lcom/android/providers/media/MtpService;I)I

    goto :goto_1
.end method

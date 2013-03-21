.class Lcom/android/server/AlarmManagerService$PowerStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AlarmManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PowerStateReceiver"
.end annotation


# static fields
.field private static final ACTION_POWER_STATE_CHANGED:Ljava/lang/String; = "com.sonymobile.SUPER_STAMINA_POWER_STATE_CHANGED"

.field private static final EXTRA_POWER_STATE:Ljava/lang/String; = "power_state"


# instance fields
.field final synthetic this$0:Lcom/android/server/AlarmManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/AlarmManagerService;)V
    .locals 0
    .parameter

    .prologue
    .line 983
    iput-object p1, p0, Lcom/android/server/AlarmManagerService$PowerStateReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v1, 0x1

    .line 992
    iget-object v2, p0, Lcom/android/server/AlarmManagerService$PowerStateReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    #getter for: Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/server/AlarmManagerService;->access$500(Lcom/android/server/AlarmManagerService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 993
    :try_start_0
    const-string v3, "power_state"

    const/4 v4, -0x1

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 994
    .local v0, powerState:I
    iget-object v3, p0, Lcom/android/server/AlarmManagerService$PowerStateReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    if-nez v0, :cond_0

    :goto_0
    #setter for: Lcom/android/server/AlarmManagerService;->mSuperStaminaIsPowerState0:Z
    invoke-static {v3, v1}, Lcom/android/server/AlarmManagerService;->access$2002(Lcom/android/server/AlarmManagerService;Z)Z

    .line 996
    packed-switch v0, :pswitch_data_0

    .line 1015
    :goto_1
    monitor-exit v2

    .line 1016
    return-void

    .line 994
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 1001
    :pswitch_0
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$PowerStateReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    const/16 v3, 0xa

    #calls: Lcom/android/server/AlarmManagerService;->triggerAlarmsLocked(I)V
    invoke-static {v1, v3}, Lcom/android/server/AlarmManagerService;->access$600(Lcom/android/server/AlarmManagerService;I)V

    goto :goto_1

    .line 1015
    .end local v0           #powerState:I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1007
    .restart local v0       #powerState:I
    :pswitch_1
    :try_start_1
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$PowerStateReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    const/4 v3, 0x1

    #calls: Lcom/android/server/AlarmManagerService;->unsetLocked(I)V
    invoke-static {v1, v3}, Lcom/android/server/AlarmManagerService;->access$2100(Lcom/android/server/AlarmManagerService;I)V

    .line 1008
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$PowerStateReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    const/4 v3, 0x3

    #calls: Lcom/android/server/AlarmManagerService;->unsetLocked(I)V
    invoke-static {v1, v3}, Lcom/android/server/AlarmManagerService;->access$2100(Lcom/android/server/AlarmManagerService;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 996
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

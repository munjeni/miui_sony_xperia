.class Lcom/android/server/AlarmManagerService$SuperStaminaReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AlarmManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SuperStaminaReceiver"
.end annotation


# static fields
.field private static final ACTION_SUPER_STAMINA:Ljava/lang/String; = "com.sonymobile.SUPER_STAMINA"

.field private static final EXTRA_SUPER_STAMINA_STATE:Ljava/lang/String; = "state"


# instance fields
.field private final mPowerStateReceiver:Lcom/android/server/AlarmManagerService$PowerStateReceiver;

.field final synthetic this$0:Lcom/android/server/AlarmManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/AlarmManagerService;)V
    .locals 1
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/server/AlarmManagerService$SuperStaminaReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    new-instance v0, Lcom/android/server/AlarmManagerService$PowerStateReceiver;

    invoke-direct {v0, p1}, Lcom/android/server/AlarmManagerService$PowerStateReceiver;-><init>(Lcom/android/server/AlarmManagerService;)V

    iput-object v0, p0, Lcom/android/server/AlarmManagerService$SuperStaminaReceiver;->mPowerStateReceiver:Lcom/android/server/AlarmManagerService$PowerStateReceiver;

    return-void
.end method

.method private rerankAlarmsLocked(II)V
    .locals 9
    .parameter "fromType"
    .parameter "toType"

    .prologue
    const/4 v8, 0x0

    iget-object v5, p0, Lcom/android/server/AlarmManagerService$SuperStaminaReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    #calls: Lcom/android/server/AlarmManagerService;->getAlarmList(I)Ljava/util/ArrayList;
    invoke-static {v5, p1}, Lcom/android/server/AlarmManagerService;->access$2300(Lcom/android/server/AlarmManagerService;I)Ljava/util/ArrayList;

    move-result-object v2

    .local v2, fromList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/AlarmManagerService$Alarm;>;"
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerService$Alarm;

    .local v0, alarm:Lcom/android/server/AlarmManagerService$Alarm;
    iget-object v5, p0, Lcom/android/server/AlarmManagerService$SuperStaminaReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v6, v0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v6}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v6

    iget v7, v0, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    #calls: Lcom/android/server/AlarmManagerService;->filterTypeSuperStaminaLocked(Ljava/lang/String;I)I
    invoke-static {v5, v6, v7}, Lcom/android/server/AlarmManagerService;->access$2400(Lcom/android/server/AlarmManagerService;Ljava/lang/String;I)I

    move-result v1

    .local v1, filteredType:I
    if-eq p2, v1, :cond_1

    iget v5, v0, Lcom/android/server/AlarmManagerService$Alarm;->originalType:I

    if-ne p2, v5, :cond_0

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    iput p2, v0, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    iget-object v5, p0, Lcom/android/server/AlarmManagerService$SuperStaminaReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    #calls: Lcom/android/server/AlarmManagerService;->addAlarmLocked(Lcom/android/server/AlarmManagerService$Alarm;)I
    invoke-static {v5, v0}, Lcom/android/server/AlarmManagerService;->access$2500(Lcom/android/server/AlarmManagerService;Lcom/android/server/AlarmManagerService$Alarm;)I

    goto :goto_0

    .end local v0           #alarm:Lcom/android/server/AlarmManagerService$Alarm;
    .end local v1           #filteredType:I
    :cond_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_4

    iget-object v6, p0, Lcom/android/server/AlarmManagerService$SuperStaminaReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/AlarmManagerService$Alarm;

    #calls: Lcom/android/server/AlarmManagerService;->setLocked(Lcom/android/server/AlarmManagerService$Alarm;)V
    invoke-static {v6, v5}, Lcom/android/server/AlarmManagerService;->access$2600(Lcom/android/server/AlarmManagerService;Lcom/android/server/AlarmManagerService$Alarm;)V

    :goto_1
    iget-object v5, p0, Lcom/android/server/AlarmManagerService$SuperStaminaReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    #calls: Lcom/android/server/AlarmManagerService;->getAlarmList(I)Ljava/util/ArrayList;
    invoke-static {v5, p2}, Lcom/android/server/AlarmManagerService;->access$2300(Lcom/android/server/AlarmManagerService;I)Ljava/util/ArrayList;

    move-result-object v4

    .local v4, toList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v6, p0, Lcom/android/server/AlarmManagerService$SuperStaminaReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/AlarmManagerService$Alarm;

    #calls: Lcom/android/server/AlarmManagerService;->setLocked(Lcom/android/server/AlarmManagerService$Alarm;)V
    invoke-static {v6, v5}, Lcom/android/server/AlarmManagerService;->access$2600(Lcom/android/server/AlarmManagerService;Lcom/android/server/AlarmManagerService$Alarm;)V

    .end local v3           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/AlarmManagerService$Alarm;>;"
    .end local v4           #toList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    :cond_3
    return-void

    .restart local v3       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/AlarmManagerService$Alarm;>;"
    :cond_4
    iget-object v5, p0, Lcom/android/server/AlarmManagerService$SuperStaminaReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    #calls: Lcom/android/server/AlarmManagerService;->unsetLocked(I)V
    invoke-static {v5, p1}, Lcom/android/server/AlarmManagerService;->access$2100(Lcom/android/server/AlarmManagerService;I)V

    goto :goto_1
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v3, 0x0

    const-string v2, "state"

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .local v1, superStaminaEnabled:Z
    iget-object v2, p0, Lcom/android/server/AlarmManagerService$SuperStaminaReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    #getter for: Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/server/AlarmManagerService;->access$500(Lcom/android/server/AlarmManagerService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/server/AlarmManagerService$SuperStaminaReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    #getter for: Lcom/android/server/AlarmManagerService;->mSuperStaminaEnabled:Z
    invoke-static {v2}, Lcom/android/server/AlarmManagerService;->access$2200(Lcom/android/server/AlarmManagerService;)Z

    move-result v2

    if-eq v2, v1, :cond_0

    iget-object v2, p0, Lcom/android/server/AlarmManagerService$SuperStaminaReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    #setter for: Lcom/android/server/AlarmManagerService;->mSuperStaminaEnabled:Z
    invoke-static {v2, v1}, Lcom/android/server/AlarmManagerService;->access$2202(Lcom/android/server/AlarmManagerService;Z)Z

    iget-object v2, p0, Lcom/android/server/AlarmManagerService$SuperStaminaReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    const/4 v4, 0x1

    #setter for: Lcom/android/server/AlarmManagerService;->mSuperStaminaIsPowerState0:Z
    invoke-static {v2, v4}, Lcom/android/server/AlarmManagerService;->access$2002(Lcom/android/server/AlarmManagerService;Z)Z

    iget-object v2, p0, Lcom/android/server/AlarmManagerService$SuperStaminaReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    #getter for: Lcom/android/server/AlarmManagerService;->mSuperStaminaEnabled:Z
    invoke-static {v2}, Lcom/android/server/AlarmManagerService;->access$2200(Lcom/android/server/AlarmManagerService;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .local v0, filter:Landroid/content/IntentFilter;
    const-string v2, "com.sonymobile.SUPER_STAMINA_POWER_STATE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/AlarmManagerService$SuperStaminaReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    #getter for: Lcom/android/server/AlarmManagerService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/AlarmManagerService;->access$400(Lcom/android/server/AlarmManagerService;)Landroid/content/Context;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/AlarmManagerService$SuperStaminaReceiver;->mPowerStateReceiver:Lcom/android/server/AlarmManagerService$PowerStateReceiver;

    invoke-virtual {v2, v4, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v2, 0x0

    const/4 v4, 0x1

    invoke-direct {p0, v2, v4}, Lcom/android/server/AlarmManagerService$SuperStaminaReceiver;->rerankAlarmsLocked(II)V

    const/4 v2, 0x2

    const/4 v4, 0x3

    invoke-direct {p0, v2, v4}, Lcom/android/server/AlarmManagerService$SuperStaminaReceiver;->rerankAlarmsLocked(II)V

    .end local v0           #filter:Landroid/content/IntentFilter;
    :cond_0
    :goto_0
    monitor-exit v3

    return-void

    :cond_1
    const/4 v2, 0x1

    const/4 v4, 0x0

    invoke-direct {p0, v2, v4}, Lcom/android/server/AlarmManagerService$SuperStaminaReceiver;->rerankAlarmsLocked(II)V

    const/4 v2, 0x3

    const/4 v4, 0x2

    invoke-direct {p0, v2, v4}, Lcom/android/server/AlarmManagerService$SuperStaminaReceiver;->rerankAlarmsLocked(II)V

    iget-object v2, p0, Lcom/android/server/AlarmManagerService$SuperStaminaReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    #getter for: Lcom/android/server/AlarmManagerService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/AlarmManagerService;->access$400(Lcom/android/server/AlarmManagerService;)Landroid/content/Context;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/AlarmManagerService$SuperStaminaReceiver;->mPowerStateReceiver:Lcom/android/server/AlarmManagerService$PowerStateReceiver;

    invoke-virtual {v2, v4}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

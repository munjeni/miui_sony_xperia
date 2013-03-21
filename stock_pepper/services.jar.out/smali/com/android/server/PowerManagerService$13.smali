.class Lcom/android/server/PowerManagerService$13;
.super Ljava/lang/Object;
.source "PowerManagerService.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/PowerManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/PowerManagerService;)V
    .locals 0
    .parameter

    .prologue
    .line 3104
    iput-object p1, p0, Lcom/android/server/PowerManagerService$13;->this$0:Lcom/android/server/PowerManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .parameter "sensor"
    .parameter "accuracy"

    .prologue
    .line 3147
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 16
    .parameter "event"

    .prologue
    .line 3106
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 3107
    .local v5, milliseconds:J
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/PowerManagerService$13;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;
    invoke-static {v10}, Lcom/android/server/PowerManagerService;->access$500(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$LockList;

    move-result-object v11

    monitor-enter v11

    .line 3108
    :try_start_0
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/hardware/SensorEvent;->values:[F

    const/4 v12, 0x0

    aget v4, v10, v12

    .line 3109
    .local v4, distance:F
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/PowerManagerService$13;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mLastProximityEventTime:J
    invoke-static {v10}, Lcom/android/server/PowerManagerService;->access$5100(Lcom/android/server/PowerManagerService;)J

    move-result-wide v12

    sub-long v8, v5, v12

    .line 3112
    .local v8, timeSinceLastEvent:J
    float-to-double v12, v4

    const-wide/16 v14, 0x0

    cmpl-double v10, v12, v14

    if-ltz v10, :cond_0

    const/high16 v10, 0x40a0

    cmpg-float v10, v4, v10

    if-gez v10, :cond_0

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/PowerManagerService$13;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mProximitySensor:Landroid/hardware/Sensor;
    invoke-static {v10}, Lcom/android/server/PowerManagerService;->access$6000(Lcom/android/server/PowerManagerService;)Landroid/hardware/Sensor;

    move-result-object v10

    invoke-virtual {v10}, Landroid/hardware/Sensor;->getMaximumRange()F

    move-result v10

    cmpg-float v10, v4, v10

    if-gez v10, :cond_0

    const/4 v1, 0x1

    .line 3119
    .local v1, active:Z
    :goto_0
    if-eqz v1, :cond_1

    const/4 v7, 0x1

    .line 3120
    .local v7, proximityNewValue:I
    :goto_1
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/PowerManagerService$13;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mProximityCurrentValue:I
    invoke-static {v10}, Lcom/android/server/PowerManagerService;->access$5200(Lcom/android/server/PowerManagerService;)I

    move-result v10

    if-eq v10, v7, :cond_5

    .line 3121
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/PowerManagerService$13;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mProximityPendingValue:I
    invoke-static {v10}, Lcom/android/server/PowerManagerService;->access$4900(Lcom/android/server/PowerManagerService;)I

    move-result v10

    if-ne v7, v10, :cond_2

    .line 3122
    const-string v10, "PowerManagerService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Unexpected proximity sensor value. Multiple consecutive proximity active = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "."

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3124
    monitor-exit v11

    .line 3143
    :goto_2
    return-void

    .line 3112
    .end local v1           #active:Z
    .end local v7           #proximityNewValue:I
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 3119
    .restart local v1       #active:Z
    :cond_1
    const/4 v7, 0x0

    goto :goto_1

    .line 3127
    .restart local v7       #proximityNewValue:I
    :cond_2
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/PowerManagerService$13;->this$0:Lcom/android/server/PowerManagerService;

    #setter for: Lcom/android/server/PowerManagerService;->mProximityPendingValue:I
    invoke-static {v10, v7}, Lcom/android/server/PowerManagerService;->access$4902(Lcom/android/server/PowerManagerService;I)I

    .line 3129
    const-wide/16 v12, 0x3e8

    cmp-long v10, v8, v12

    if-gez v10, :cond_4

    const-wide/16 v12, 0x3e8

    sub-long v2, v12, v8

    .line 3131
    .local v2, delay:J
    :goto_3
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/PowerManagerService$13;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mHandler:Landroid/os/Handler;
    invoke-static {v10}, Lcom/android/server/PowerManagerService;->access$4000(Lcom/android/server/PowerManagerService;)Landroid/os/Handler;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/PowerManagerService$13;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mProximityTask:Ljava/lang/Runnable;
    invoke-static {v12}, Lcom/android/server/PowerManagerService;->access$6100(Lcom/android/server/PowerManagerService;)Ljava/lang/Runnable;

    move-result-object v12

    invoke-virtual {v10, v12, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3132
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/PowerManagerService$13;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mProximityPartialLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;
    invoke-static {v10}, Lcom/android/server/PowerManagerService;->access$5300(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;->isHeld()Z

    move-result v10

    if-nez v10, :cond_3

    .line 3133
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/PowerManagerService$13;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mProximityPartialLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;
    invoke-static {v10}, Lcom/android/server/PowerManagerService;->access$5300(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;->acquire()V

    .line 3142
    .end local v2           #delay:J
    :cond_3
    :goto_4
    monitor-exit v11

    goto :goto_2

    .end local v1           #active:Z
    .end local v4           #distance:F
    .end local v7           #proximityNewValue:I
    .end local v8           #timeSinceLastEvent:J
    :catchall_0
    move-exception v10

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v10

    .line 3129
    .restart local v1       #active:Z
    .restart local v4       #distance:F
    .restart local v7       #proximityNewValue:I
    .restart local v8       #timeSinceLastEvent:J
    :cond_4
    const-wide/16 v2, 0x0

    goto :goto_3

    .line 3136
    :cond_5
    :try_start_1
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/PowerManagerService$13;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mHandler:Landroid/os/Handler;
    invoke-static {v10}, Lcom/android/server/PowerManagerService;->access$4000(Lcom/android/server/PowerManagerService;)Landroid/os/Handler;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/PowerManagerService$13;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mProximityTask:Ljava/lang/Runnable;
    invoke-static {v12}, Lcom/android/server/PowerManagerService;->access$6100(Lcom/android/server/PowerManagerService;)Ljava/lang/Runnable;

    move-result-object v12

    invoke-virtual {v10, v12}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3137
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/PowerManagerService$13;->this$0:Lcom/android/server/PowerManagerService;

    const/4 v12, -0x1

    #setter for: Lcom/android/server/PowerManagerService;->mProximityPendingValue:I
    invoke-static {v10, v12}, Lcom/android/server/PowerManagerService;->access$4902(Lcom/android/server/PowerManagerService;I)I

    .line 3138
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/PowerManagerService$13;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mProximityPartialLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;
    invoke-static {v10}, Lcom/android/server/PowerManagerService;->access$5300(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;->isHeld()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 3139
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/PowerManagerService$13;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mProximityPartialLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;
    invoke-static {v10}, Lcom/android/server/PowerManagerService;->access$5300(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;->release()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4
.end method

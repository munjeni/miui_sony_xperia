.class Lcom/android/server/PowerManagerService$BrightnessState;
.super Ljava/lang/Object;
.source "PowerManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BrightnessState"
.end annotation


# instance fields
.field animating:Z

.field curValue:F

.field delta:F

.field initialized:Z

.field mElectronBeamOnHandler:Landroid/os/Handler;

.field mElectronBeamOnHandlerThread:Landroid/os/HandlerThread;

.field final mask:I

.field targetValue:I

.field final synthetic this$0:Lcom/android/server/PowerManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/PowerManagerService;I)V
    .locals 0
    .parameter
    .parameter "m"

    .prologue
    .line 2207
    iput-object p1, p0, Lcom/android/server/PowerManagerService$BrightnessState;->this$0:Lcom/android/server/PowerManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2208
    iput p2, p0, Lcom/android/server/PowerManagerService$BrightnessState;->mask:I

    .line 2209
    return-void
.end method

.method static synthetic access$5000(Lcom/android/server/PowerManagerService$BrightnessState;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 2196
    invoke-direct {p0}, Lcom/android/server/PowerManagerService$BrightnessState;->startElectronBeamOnAnimation()V

    return-void
.end method

.method private finishAnimationLocked(ZI)V
    .locals 2
    .parameter "more"
    .parameter "curIntValue"

    .prologue
    .line 2294
    iput-boolean p1, p0, Lcom/android/server/PowerManagerService$BrightnessState;->animating:Z

    .line 2295
    if-nez p1, :cond_0

    .line 2296
    iget v0, p0, Lcom/android/server/PowerManagerService$BrightnessState;->mask:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    if-nez p2, :cond_0

    .line 2297
    iget-object v0, p0, Lcom/android/server/PowerManagerService$BrightnessState;->this$0:Lcom/android/server/PowerManagerService;

    iget-object v1, p0, Lcom/android/server/PowerManagerService$BrightnessState;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mScreenOffReason:I
    invoke-static {v1}, Lcom/android/server/PowerManagerService;->access$4600(Lcom/android/server/PowerManagerService;)I

    move-result v1

    #calls: Lcom/android/server/PowerManagerService;->screenOffFinishedAnimatingLocked(I)I
    invoke-static {v0, v1}, Lcom/android/server/PowerManagerService;->access$4700(Lcom/android/server/PowerManagerService;I)I

    .line 2300
    :cond_0
    return-void
.end method

.method private startElectronBeamDelayed(Ljava/lang/Runnable;I)V
    .locals 4
    .parameter "animation"
    .parameter "delay"

    .prologue
    .line 2366
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "PowerManagerService.mScreenBrightness.mElectronBeamOnHandlerThread"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/PowerManagerService$BrightnessState;->mElectronBeamOnHandlerThread:Landroid/os/HandlerThread;

    .line 2367
    iget-object v1, p0, Lcom/android/server/PowerManagerService$BrightnessState;->mElectronBeamOnHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 2368
    new-instance v1, Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/PowerManagerService$BrightnessState;->mElectronBeamOnHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/PowerManagerService$BrightnessState;->mElectronBeamOnHandler:Landroid/os/Handler;

    .line 2369
    iget-object v1, p0, Lcom/android/server/PowerManagerService$BrightnessState;->mElectronBeamOnHandler:Landroid/os/Handler;

    int-to-long v2, p2

    invoke-virtual {v1, p1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2371
    :try_start_0
    iget-object v2, p0, Lcom/android/server/PowerManagerService$BrightnessState;->mElectronBeamOnHandler:Landroid/os/Handler;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2372
    :try_start_1
    iget-object v1, p0, Lcom/android/server/PowerManagerService$BrightnessState;->mElectronBeamOnHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    .line 2373
    monitor-exit v2

    .line 2379
    :goto_0
    return-void

    .line 2373
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 2374
    :catch_0
    move-exception v0

    .line 2375
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v1, "PowerManagerService"

    const-string v2, "mElectronBeamOnHandler.wait() interrupted"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2376
    const-string v1, "PowerManagerService"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2377
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method private startElectronBeamOnAnimation()V
    .locals 2

    .prologue
    .line 2360
    invoke-virtual {p0}, Lcom/android/server/PowerManagerService$BrightnessState;->jumpToTarget()V

    .line 2361
    iget-object v0, p0, Lcom/android/server/PowerManagerService$BrightnessState;->this$0:Lcom/android/server/PowerManagerService;

    iget-object v1, p0, Lcom/android/server/PowerManagerService$BrightnessState;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mAnimationSetting:I
    invoke-static {v1}, Lcom/android/server/PowerManagerService;->access$1900(Lcom/android/server/PowerManagerService;)I

    move-result v1

    #calls: Lcom/android/server/PowerManagerService;->nativeStartSurfaceFlingerOnAnimation(I)V
    invoke-static {v0, v1}, Lcom/android/server/PowerManagerService;->access$5100(Lcom/android/server/PowerManagerService;I)V

    .line 2362
    iget-object v0, p0, Lcom/android/server/PowerManagerService$BrightnessState;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mScreenBrightness:Lcom/android/server/PowerManagerService$BrightnessState;
    invoke-static {v0}, Lcom/android/server/PowerManagerService;->access$4800(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$BrightnessState;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/server/PowerManagerService$BrightnessState;->animating:Z

    .line 2363
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 2
    .parameter "pw"
    .parameter "prefix"

    .prologue
    .line 2212
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "animating="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/PowerManagerService$BrightnessState;->animating:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " targetValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/PowerManagerService$BrightnessState;->targetValue:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " curValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/PowerManagerService$BrightnessState;->curValue:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " delta="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/PowerManagerService$BrightnessState;->delta:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2216
    return-void
.end method

.method forceValueLocked(I)V
    .locals 2
    .parameter "value"

    .prologue
    .line 2219
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/PowerManagerService$BrightnessState;->targetValue:I

    .line 2220
    int-to-float v0, p1

    iput v0, p0, Lcom/android/server/PowerManagerService$BrightnessState;->curValue:F

    .line 2221
    iget-object v0, p0, Lcom/android/server/PowerManagerService$BrightnessState;->this$0:Lcom/android/server/PowerManagerService;

    iget v1, p0, Lcom/android/server/PowerManagerService$BrightnessState;->mask:I

    #calls: Lcom/android/server/PowerManagerService;->setLightBrightness(II)V
    invoke-static {v0, v1, p1}, Lcom/android/server/PowerManagerService;->access$4500(Lcom/android/server/PowerManagerService;II)V

    .line 2222
    iget-boolean v0, p0, Lcom/android/server/PowerManagerService$BrightnessState;->animating:Z

    if-eqz v0, :cond_0

    .line 2223
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/android/server/PowerManagerService$BrightnessState;->finishAnimationLocked(ZI)V

    .line 2225
    :cond_0
    return-void
.end method

.method jumpToTarget()V
    .locals 4

    .prologue
    .line 2304
    iget-object v1, p0, Lcom/android/server/PowerManagerService$BrightnessState;->this$0:Lcom/android/server/PowerManagerService;

    iget v2, p0, Lcom/android/server/PowerManagerService$BrightnessState;->mask:I

    iget v3, p0, Lcom/android/server/PowerManagerService$BrightnessState;->targetValue:I

    #calls: Lcom/android/server/PowerManagerService;->setLightBrightness(II)V
    invoke-static {v1, v2, v3}, Lcom/android/server/PowerManagerService;->access$4500(Lcom/android/server/PowerManagerService;II)V

    .line 2305
    iget v0, p0, Lcom/android/server/PowerManagerService$BrightnessState;->targetValue:I

    .line 2306
    .local v0, tv:I
    int-to-float v1, v0

    iput v1, p0, Lcom/android/server/PowerManagerService$BrightnessState;->curValue:F

    .line 2307
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/PowerManagerService$BrightnessState;->targetValue:I

    .line 2308
    return-void
.end method

.method jumpToTargetLocked()V
    .locals 4

    .prologue
    .line 2286
    iget-object v1, p0, Lcom/android/server/PowerManagerService$BrightnessState;->this$0:Lcom/android/server/PowerManagerService;

    iget v2, p0, Lcom/android/server/PowerManagerService$BrightnessState;->mask:I

    iget v3, p0, Lcom/android/server/PowerManagerService$BrightnessState;->targetValue:I

    #calls: Lcom/android/server/PowerManagerService;->setLightBrightness(II)V
    invoke-static {v1, v2, v3}, Lcom/android/server/PowerManagerService;->access$4500(Lcom/android/server/PowerManagerService;II)V

    .line 2287
    iget v0, p0, Lcom/android/server/PowerManagerService$BrightnessState;->targetValue:I

    .line 2288
    .local v0, tv:I
    int-to-float v1, v0

    iput v1, p0, Lcom/android/server/PowerManagerService$BrightnessState;->curValue:F

    .line 2289
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/PowerManagerService$BrightnessState;->targetValue:I

    .line 2290
    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/android/server/PowerManagerService$BrightnessState;->finishAnimationLocked(ZI)V

    .line 2291
    return-void
.end method

.method public run()V
    .locals 12

    .prologue
    const/4 v1, 0x1

    const/4 v7, 0x0

    .line 2311
    iget-object v8, p0, Lcom/android/server/PowerManagerService$BrightnessState;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;
    invoke-static {v8}, Lcom/android/server/PowerManagerService;->access$500(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$LockList;

    move-result-object v8

    monitor-enter v8

    .line 2312
    :try_start_0
    iget-boolean v9, p0, Lcom/android/server/PowerManagerService$BrightnessState;->animating:Z

    if-eqz v9, :cond_4

    iget v9, p0, Lcom/android/server/PowerManagerService$BrightnessState;->curValue:F

    float-to-int v9, v9

    if-nez v9, :cond_4

    move v6, v1

    .line 2313
    .local v6, turningOn:Z
    :goto_0
    iget-boolean v9, p0, Lcom/android/server/PowerManagerService$BrightnessState;->animating:Z

    if-eqz v9, :cond_5

    iget v9, p0, Lcom/android/server/PowerManagerService$BrightnessState;->targetValue:I

    if-nez v9, :cond_5

    move v5, v1

    .line 2316
    .local v5, turningOff:Z
    :goto_1
    iget-object v9, p0, Lcom/android/server/PowerManagerService$BrightnessState;->this$0:Lcom/android/server/PowerManagerService;

    iget-boolean v9, v9, Lcom/android/server/PowerManagerService;->mElectronBeamAnimationOff:Z

    if-eqz v9, :cond_0

    if-nez v5, :cond_1

    :cond_0
    iget-object v9, p0, Lcom/android/server/PowerManagerService$BrightnessState;->this$0:Lcom/android/server/PowerManagerService;

    iget-boolean v9, v9, Lcom/android/server/PowerManagerService;->mElectronBeamAnimationOn:Z

    if-eqz v9, :cond_6

    if-eqz v6, :cond_6

    .line 2319
    .local v1, electrifying:Z
    :cond_1
    :goto_2
    if-nez v1, :cond_7

    iget-object v9, p0, Lcom/android/server/PowerManagerService$BrightnessState;->this$0:Lcom/android/server/PowerManagerService;

    iget-boolean v9, v9, Lcom/android/server/PowerManagerService;->mAnimateScreenLights:Z

    if-nez v9, :cond_2

    if-nez v5, :cond_7

    .line 2320
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 2321
    .local v3, now:J
    iget-object v7, p0, Lcom/android/server/PowerManagerService$BrightnessState;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mScreenBrightness:Lcom/android/server/PowerManagerService$BrightnessState;
    invoke-static {v7}, Lcom/android/server/PowerManagerService;->access$4800(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$BrightnessState;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/PowerManagerService$BrightnessState;->stepLocked()Z

    move-result v2

    .line 2322
    .local v2, more:Z
    if-eqz v2, :cond_3

    .line 2323
    iget-object v7, p0, Lcom/android/server/PowerManagerService$BrightnessState;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mScreenOffHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/android/server/PowerManagerService;->access$2000(Lcom/android/server/PowerManagerService;)Landroid/os/Handler;

    move-result-object v7

    const-wide/16 v9, 0x10

    add-long/2addr v9, v3

    invoke-virtual {v7, p0, v9, v10}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    .line 2356
    .end local v2           #more:Z
    .end local v3           #now:J
    :cond_3
    :goto_3
    monitor-exit v8

    .line 2357
    return-void

    .end local v1           #electrifying:Z
    .end local v5           #turningOff:Z
    .end local v6           #turningOn:Z
    :cond_4
    move v6, v7

    .line 2312
    goto :goto_0

    .restart local v6       #turningOn:Z
    :cond_5
    move v5, v7

    .line 2313
    goto :goto_1

    .restart local v5       #turningOff:Z
    :cond_6
    move v1, v7

    .line 2316
    goto :goto_2

    .line 2328
    .restart local v1       #electrifying:Z
    :cond_7
    if-eqz v5, :cond_a

    .line 2329
    if-eqz v1, :cond_8

    .line 2330
    iget-object v9, p0, Lcom/android/server/PowerManagerService$BrightnessState;->this$0:Lcom/android/server/PowerManagerService;

    iget-object v10, p0, Lcom/android/server/PowerManagerService$BrightnessState;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mScreenOffReason:I
    invoke-static {v10}, Lcom/android/server/PowerManagerService;->access$4600(Lcom/android/server/PowerManagerService;)I

    move-result v10

    const/4 v11, 0x4

    if-ne v10, v11, :cond_9

    :goto_4
    #calls: Lcom/android/server/PowerManagerService;->nativeStartSurfaceFlingerOffAnimation(I)V
    invoke-static {v9, v7}, Lcom/android/server/PowerManagerService;->access$4900(Lcom/android/server/PowerManagerService;I)V

    .line 2334
    :cond_8
    iget-object v7, p0, Lcom/android/server/PowerManagerService$BrightnessState;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mScreenBrightness:Lcom/android/server/PowerManagerService$BrightnessState;
    invoke-static {v7}, Lcom/android/server/PowerManagerService;->access$4800(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$BrightnessState;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/PowerManagerService$BrightnessState;->jumpToTargetLocked()V

    goto :goto_3

    .line 2356
    .end local v1           #electrifying:Z
    .end local v5           #turningOff:Z
    .end local v6           #turningOn:Z
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .line 2330
    .restart local v1       #electrifying:Z
    .restart local v5       #turningOff:Z
    .restart local v6       #turningOn:Z
    :cond_9
    :try_start_1
    iget-object v7, p0, Lcom/android/server/PowerManagerService$BrightnessState;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mAnimationSetting:I
    invoke-static {v7}, Lcom/android/server/PowerManagerService;->access$1900(Lcom/android/server/PowerManagerService;)I

    move-result v7

    goto :goto_4

    .line 2335
    :cond_a
    if-eqz v6, :cond_3

    .line 2336
    if-eqz v1, :cond_c

    .line 2337
    iget-object v7, p0, Lcom/android/server/PowerManagerService$BrightnessState;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/server/PowerManagerService;->access$1800(Lcom/android/server/PowerManagerService;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v9, 0x10e002c

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 2338
    .local v0, delay:I
    if-lez v0, :cond_b

    .line 2339
    new-instance v7, Lcom/android/server/PowerManagerService$BrightnessState$1;

    invoke-direct {v7, p0}, Lcom/android/server/PowerManagerService$BrightnessState$1;-><init>(Lcom/android/server/PowerManagerService$BrightnessState;)V

    invoke-direct {p0, v7, v0}, Lcom/android/server/PowerManagerService$BrightnessState;->startElectronBeamDelayed(Ljava/lang/Runnable;I)V

    goto :goto_3

    .line 2349
    :cond_b
    invoke-direct {p0}, Lcom/android/server/PowerManagerService$BrightnessState;->startElectronBeamOnAnimation()V

    goto :goto_3

    .line 2352
    .end local v0           #delay:I
    :cond_c
    iget-object v7, p0, Lcom/android/server/PowerManagerService$BrightnessState;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mScreenBrightness:Lcom/android/server/PowerManagerService$BrightnessState;
    invoke-static {v7}, Lcom/android/server/PowerManagerService;->access$4800(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$BrightnessState;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/PowerManagerService$BrightnessState;->jumpToTargetLocked()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3
.end method

.method setTargetLocked(IIII)V
    .locals 3
    .parameter "target"
    .parameter "stepsToTarget"
    .parameter "initialValue"
    .parameter "nominalCurrentValue"

    .prologue
    const/4 v2, 0x1

    .line 2229
    iget-boolean v0, p0, Lcom/android/server/PowerManagerService$BrightnessState;->initialized:Z

    if-nez v0, :cond_1

    .line 2230
    iput-boolean v2, p0, Lcom/android/server/PowerManagerService$BrightnessState;->initialized:Z

    .line 2231
    int-to-float v0, p3

    iput v0, p0, Lcom/android/server/PowerManagerService$BrightnessState;->curValue:F

    .line 2235
    :cond_0
    iput p1, p0, Lcom/android/server/PowerManagerService$BrightnessState;->targetValue:I

    .line 2236
    iget v0, p0, Lcom/android/server/PowerManagerService$BrightnessState;->targetValue:I

    int-to-float v1, v0

    if-ltz p4, :cond_2

    int-to-float v0, p4

    :goto_0
    sub-float v0, v1, v0

    int-to-float v1, p2

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/server/PowerManagerService$BrightnessState;->delta:F

    .line 2246
    iput-boolean v2, p0, Lcom/android/server/PowerManagerService$BrightnessState;->animating:Z

    .line 2251
    iget-object v0, p0, Lcom/android/server/PowerManagerService$BrightnessState;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mScreenOffHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/PowerManagerService;->access$2000(Lcom/android/server/PowerManagerService;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2252
    iget-object v0, p0, Lcom/android/server/PowerManagerService$BrightnessState;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mScreenOffHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/PowerManagerService;->access$2000(Lcom/android/server/PowerManagerService;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2253
    :goto_1
    return-void

    .line 2232
    :cond_1
    iget v0, p0, Lcom/android/server/PowerManagerService$BrightnessState;->targetValue:I

    if-ne v0, p1, :cond_0

    goto :goto_1

    .line 2236
    :cond_2
    iget v0, p0, Lcom/android/server/PowerManagerService$BrightnessState;->curValue:F

    goto :goto_0
.end method

.method stepLocked()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 2256
    iget-boolean v2, p0, Lcom/android/server/PowerManagerService$BrightnessState;->animating:Z

    if-nez v2, :cond_0

    const/4 v1, 0x0

    .line 2281
    :goto_0
    return v1

    .line 2261
    :cond_0
    iget v2, p0, Lcom/android/server/PowerManagerService$BrightnessState;->curValue:F

    iget v3, p0, Lcom/android/server/PowerManagerService$BrightnessState;->delta:F

    add-float/2addr v2, v3

    iput v2, p0, Lcom/android/server/PowerManagerService$BrightnessState;->curValue:F

    .line 2262
    iget v2, p0, Lcom/android/server/PowerManagerService$BrightnessState;->curValue:F

    float-to-int v0, v2

    .line 2263
    .local v0, curIntValue:I
    const/4 v1, 0x1

    .line 2264
    .local v1, more:Z
    iget v2, p0, Lcom/android/server/PowerManagerService$BrightnessState;->delta:F

    cmpl-float v2, v2, v4

    if-nez v2, :cond_2

    .line 2265
    iget v0, p0, Lcom/android/server/PowerManagerService$BrightnessState;->targetValue:I

    int-to-float v2, v0

    iput v2, p0, Lcom/android/server/PowerManagerService$BrightnessState;->curValue:F

    .line 2266
    const/4 v1, 0x0

    .line 2279
    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/android/server/PowerManagerService$BrightnessState;->this$0:Lcom/android/server/PowerManagerService;

    iget v3, p0, Lcom/android/server/PowerManagerService$BrightnessState;->mask:I

    #calls: Lcom/android/server/PowerManagerService;->setLightBrightness(II)V
    invoke-static {v2, v3, v0}, Lcom/android/server/PowerManagerService;->access$4500(Lcom/android/server/PowerManagerService;II)V

    .line 2280
    invoke-direct {p0, v1, v0}, Lcom/android/server/PowerManagerService$BrightnessState;->finishAnimationLocked(ZI)V

    goto :goto_0

    .line 2267
    :cond_2
    iget v2, p0, Lcom/android/server/PowerManagerService$BrightnessState;->delta:F

    cmpl-float v2, v2, v4

    if-lez v2, :cond_3

    .line 2268
    iget v2, p0, Lcom/android/server/PowerManagerService$BrightnessState;->targetValue:I

    if-lt v0, v2, :cond_1

    .line 2269
    iget v0, p0, Lcom/android/server/PowerManagerService$BrightnessState;->targetValue:I

    int-to-float v2, v0

    iput v2, p0, Lcom/android/server/PowerManagerService$BrightnessState;->curValue:F

    .line 2270
    const/4 v1, 0x0

    goto :goto_1

    .line 2273
    :cond_3
    iget v2, p0, Lcom/android/server/PowerManagerService$BrightnessState;->targetValue:I

    if-gt v0, v2, :cond_1

    .line 2274
    iget v0, p0, Lcom/android/server/PowerManagerService$BrightnessState;->targetValue:I

    int-to-float v2, v0

    iput v2, p0, Lcom/android/server/PowerManagerService$BrightnessState;->curValue:F

    .line 2275
    const/4 v1, 0x0

    goto :goto_1
.end method

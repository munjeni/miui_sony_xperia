.class Lcom/android/server/PowerManagerService$11;
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
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/PowerManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/PowerManagerService;)V
    .locals 0
    .parameter

    .prologue
    .line 2664
    iput-object p1, p0, Lcom/android/server/PowerManagerService$11;->this$0:Lcom/android/server/PowerManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 2666
    iget-object v4, p0, Lcom/android/server/PowerManagerService$11;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;
    invoke-static {v4}, Lcom/android/server/PowerManagerService;->access$500(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$LockList;

    move-result-object v4

    monitor-enter v4

    .line 2667
    const/4 v0, 0x0

    .line 2668
    .local v0, again:Z
    :try_start_0
    iget-object v5, p0, Lcom/android/server/PowerManagerService$11;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mLightFilterSample:I
    invoke-static {v5}, Lcom/android/server/PowerManagerService;->access$5900(Lcom/android/server/PowerManagerService;)I

    move-result v5

    if-lez v5, :cond_2

    iget-object v5, p0, Lcom/android/server/PowerManagerService$11;->this$0:Lcom/android/server/PowerManagerService;

    #calls: Lcom/android/server/PowerManagerService;->isScreenTurningOffLocked()Z
    invoke-static {v5}, Lcom/android/server/PowerManagerService;->access$6000(Lcom/android/server/PowerManagerService;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 2669
    iget-object v5, p0, Lcom/android/server/PowerManagerService$11;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mLightFilterSamples:[I
    invoke-static {v5}, Lcom/android/server/PowerManagerService;->access$6100(Lcom/android/server/PowerManagerService;)[I

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/PowerManagerService$11;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mLightFilterIndex:I
    invoke-static {v6}, Lcom/android/server/PowerManagerService;->access$6200(Lcom/android/server/PowerManagerService;)I

    move-result v6

    aget v2, v5, v6

    .line 2670
    .local v2, discarded:I
    iget-object v5, p0, Lcom/android/server/PowerManagerService$11;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mLightFilterSamples:[I
    invoke-static {v5}, Lcom/android/server/PowerManagerService;->access$6100(Lcom/android/server/PowerManagerService;)[I

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/PowerManagerService$11;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mLightFilterIndex:I
    invoke-static {v6}, Lcom/android/server/PowerManagerService;->access$6200(Lcom/android/server/PowerManagerService;)I

    move-result v6

    iget-object v7, p0, Lcom/android/server/PowerManagerService$11;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mLightFilterSample:I
    invoke-static {v7}, Lcom/android/server/PowerManagerService;->access$5900(Lcom/android/server/PowerManagerService;)I

    move-result v7

    aput v7, v5, v6

    .line 2671
    iget-object v5, p0, Lcom/android/server/PowerManagerService$11;->this$0:Lcom/android/server/PowerManagerService;

    iget-object v6, p0, Lcom/android/server/PowerManagerService$11;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mLightFilterIndex:I
    invoke-static {v6}, Lcom/android/server/PowerManagerService;->access$6200(Lcom/android/server/PowerManagerService;)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    iget-object v7, p0, Lcom/android/server/PowerManagerService$11;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mLightFilterSamples:[I
    invoke-static {v7}, Lcom/android/server/PowerManagerService;->access$6100(Lcom/android/server/PowerManagerService;)[I

    move-result-object v7

    array-length v7, v7

    rem-int/2addr v6, v7

    #setter for: Lcom/android/server/PowerManagerService;->mLightFilterIndex:I
    invoke-static {v5, v6}, Lcom/android/server/PowerManagerService;->access$6202(Lcom/android/server/PowerManagerService;I)I

    .line 2673
    iget-object v5, p0, Lcom/android/server/PowerManagerService$11;->this$0:Lcom/android/server/PowerManagerService;

    iget-object v6, p0, Lcom/android/server/PowerManagerService$11;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mLightFilterSampleCounter:I
    invoke-static {v6}, Lcom/android/server/PowerManagerService;->access$6300(Lcom/android/server/PowerManagerService;)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    iget-object v7, p0, Lcom/android/server/PowerManagerService$11;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mLightFilterSamples:[I
    invoke-static {v7}, Lcom/android/server/PowerManagerService;->access$6100(Lcom/android/server/PowerManagerService;)[I

    move-result-object v7

    array-length v7, v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    #setter for: Lcom/android/server/PowerManagerService;->mLightFilterSampleCounter:I
    invoke-static {v5, v6}, Lcom/android/server/PowerManagerService;->access$6302(Lcom/android/server/PowerManagerService;I)I

    .line 2675
    iget-object v5, p0, Lcom/android/server/PowerManagerService$11;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mLightFilterSampleCounter:I
    invoke-static {v5}, Lcom/android/server/PowerManagerService;->access$6300(Lcom/android/server/PowerManagerService;)I

    move-result v5

    iget-object v6, p0, Lcom/android/server/PowerManagerService$11;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mLightFilterSamples:[I
    invoke-static {v6}, Lcom/android/server/PowerManagerService;->access$6100(Lcom/android/server/PowerManagerService;)[I

    move-result-object v6

    array-length v6, v6

    if-ge v5, v6, :cond_0

    .line 2676
    const/4 v2, 0x0

    .line 2679
    :cond_0
    iget-object v5, p0, Lcom/android/server/PowerManagerService$11;->this$0:Lcom/android/server/PowerManagerService;

    iget-object v6, p0, Lcom/android/server/PowerManagerService$11;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mLightFilterSample:I
    invoke-static {v6}, Lcom/android/server/PowerManagerService;->access$5900(Lcom/android/server/PowerManagerService;)I

    move-result v6

    invoke-static {v5, v6}, Lcom/android/server/PowerManagerService;->access$6412(Lcom/android/server/PowerManagerService;I)I

    .line 2681
    iget-object v5, p0, Lcom/android/server/PowerManagerService$11;->this$0:Lcom/android/server/PowerManagerService;

    invoke-static {v5, v2}, Lcom/android/server/PowerManagerService;->access$6420(Lcom/android/server/PowerManagerService;I)I

    .line 2683
    iget-object v5, p0, Lcom/android/server/PowerManagerService$11;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mLightFilterSum:I
    invoke-static {v5}, Lcom/android/server/PowerManagerService;->access$6400(Lcom/android/server/PowerManagerService;)I

    move-result v5

    int-to-float v5, v5

    iget-object v6, p0, Lcom/android/server/PowerManagerService$11;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mLightFilterSampleCounter:I
    invoke-static {v6}, Lcom/android/server/PowerManagerService;->access$6300(Lcom/android/server/PowerManagerService;)I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 2685
    .local v1, average:I
    iget-object v5, p0, Lcom/android/server/PowerManagerService$11;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mLightSensorValue:F
    invoke-static {v5}, Lcom/android/server/PowerManagerService;->access$6500(Lcom/android/server/PowerManagerService;)F

    move-result v5

    float-to-int v5, v5

    if-eq v1, v5, :cond_1

    .line 2686
    iget-object v5, p0, Lcom/android/server/PowerManagerService$11;->this$0:Lcom/android/server/PowerManagerService;

    #calls: Lcom/android/server/PowerManagerService;->lightSensorChangedLocked(I)V
    invoke-static {v5, v1}, Lcom/android/server/PowerManagerService;->access$5800(Lcom/android/server/PowerManagerService;I)V

    .line 2688
    :cond_1
    iget-object v5, p0, Lcom/android/server/PowerManagerService$11;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mLightSensorValue:F
    invoke-static {v5}, Lcom/android/server/PowerManagerService;->access$6500(Lcom/android/server/PowerManagerService;)F

    move-result v5

    float-to-int v5, v5

    iget-object v6, p0, Lcom/android/server/PowerManagerService$11;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mLightFilterSample:I
    invoke-static {v6}, Lcom/android/server/PowerManagerService;->access$5900(Lcom/android/server/PowerManagerService;)I

    move-result v6

    if-eq v5, v6, :cond_3

    .line 2689
    iget-object v3, p0, Lcom/android/server/PowerManagerService$11;->this$0:Lcom/android/server/PowerManagerService;

    const/4 v5, 0x0

    #setter for: Lcom/android/server/PowerManagerService;->mLightFilterEqualCounter:I
    invoke-static {v3, v5}, Lcom/android/server/PowerManagerService;->access$6602(Lcom/android/server/PowerManagerService;I)I

    .line 2690
    const/4 v0, 0x1

    .line 2706
    .end local v1           #average:I
    .end local v2           #discarded:I
    :cond_2
    :goto_0
    if-eqz v0, :cond_5

    .line 2707
    iget-object v3, p0, Lcom/android/server/PowerManagerService$11;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/server/PowerManagerService;->access$4100(Lcom/android/server/PowerManagerService;)Landroid/os/Handler;

    move-result-object v3

    iget-object v5, p0, Lcom/android/server/PowerManagerService$11;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mLightFilterTask:Ljava/lang/Runnable;
    invoke-static {v5}, Lcom/android/server/PowerManagerService;->access$6700(Lcom/android/server/PowerManagerService;)Ljava/lang/Runnable;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/PowerManagerService$11;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mLightFilterInterval:I
    invoke-static {v6}, Lcom/android/server/PowerManagerService;->access$6800(Lcom/android/server/PowerManagerService;)I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {v3, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2711
    :goto_1
    monitor-exit v4

    .line 2712
    return-void

    .line 2697
    .restart local v1       #average:I
    .restart local v2       #discarded:I
    :cond_3
    iget-object v5, p0, Lcom/android/server/PowerManagerService$11;->this$0:Lcom/android/server/PowerManagerService;

    invoke-static {v5}, Lcom/android/server/PowerManagerService;->access$6608(Lcom/android/server/PowerManagerService;)I

    .line 2698
    iget-object v5, p0, Lcom/android/server/PowerManagerService$11;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mLightFilterEqualCounter:I
    invoke-static {v5}, Lcom/android/server/PowerManagerService;->access$6600(Lcom/android/server/PowerManagerService;)I

    move-result v5

    iget-object v6, p0, Lcom/android/server/PowerManagerService$11;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mLightFilterSamples:[I
    invoke-static {v6}, Lcom/android/server/PowerManagerService;->access$6100(Lcom/android/server/PowerManagerService;)[I

    move-result-object v6

    array-length v6, v6

    if-ge v5, v6, :cond_4

    const/4 v0, 0x1

    :goto_2
    goto :goto_0

    :cond_4
    move v0, v3

    goto :goto_2

    .line 2709
    .end local v1           #average:I
    .end local v2           #discarded:I
    :cond_5
    iget-object v3, p0, Lcom/android/server/PowerManagerService$11;->this$0:Lcom/android/server/PowerManagerService;

    #calls: Lcom/android/server/PowerManagerService;->lightFilterStop()V
    invoke-static {v3}, Lcom/android/server/PowerManagerService;->access$6900(Lcom/android/server/PowerManagerService;)V

    goto :goto_1

    .line 2711
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

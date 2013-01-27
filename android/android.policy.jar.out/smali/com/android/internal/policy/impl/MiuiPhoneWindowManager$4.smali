.class Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$4;
.super Lcom/android/internal/view/BaseInputHandler;
.source "MiuiPhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mDownX:F

.field private mDownY:F

.field final synthetic this$0:Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;)V
    .locals 0
    .parameter

    .prologue
    .line 536
    iput-object p1, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$4;->this$0:Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;

    invoke-direct {p0}, Lcom/android/internal/view/BaseInputHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMotion(Landroid/view/MotionEvent;Landroid/view/InputQueue$FinishedCallback;)V
    .locals 9
    .parameter "event"
    .parameter "finishedCallback"

    .prologue
    .line 541
    const/4 v2, 0x0

    .line 543
    .local v2, handled:Z
    :try_start_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v4

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$4;->this$0:Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;

    iget-object v4, v4, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$4;->this$0:Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;

    #getter for: Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mIsStatusBarVisibleInFullscreen:Z
    invoke-static {v4}, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->access$100(Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v4

    if-eqz v4, :cond_1

    .line 574
    :cond_0
    invoke-virtual {p2, v2}, Landroid/view/InputQueue$FinishedCallback;->finished(Z)V

    .line 576
    :goto_0
    return-void

    .line 546
    :cond_1
    const/4 v2, 0x1

    .line 547
    :try_start_1
    iget-object v4, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$4;->this$0:Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;

    iget-object v5, v4, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 548
    :try_start_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 572
    :cond_2
    :goto_1
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 574
    invoke-virtual {p2, v2}, Landroid/view/InputQueue$FinishedCallback;->finished(Z)V

    goto :goto_0

    .line 550
    :pswitch_0
    :try_start_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    iput v4, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$4;->mDownX:F

    .line 551
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    iput v4, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$4;->mDownY:F

    goto :goto_1

    .line 572
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 574
    :catchall_1
    move-exception v4

    invoke-virtual {p2, v2}, Landroid/view/InputQueue$FinishedCallback;->finished(Z)V

    throw v4

    .line 558
    :pswitch_1
    :try_start_5
    iget-object v4, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$4;->this$0:Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;

    iget-object v4, v4, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const/high16 v6, 0x611

    iget-object v7, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$4;->this$0:Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;

    iget v7, v7, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mStatusBarHeight:I

    iget-object v8, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$4;->this$0:Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;

    iget v8, v8, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mStatusBarHeight:I

    invoke-virtual {v4, v6, v7, v8}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v3

    .line 562
    .local v3, statusBarExpandHeight:F
    iget v4, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$4;->mDownY:F

    cmpg-float v4, v3, v4

    if-ltz v4, :cond_2

    .line 564
    iget v4, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$4;->mDownX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v6

    sub-float/2addr v4, v6

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 565
    .local v0, distanceX:F
    iget v4, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$4;->mDownY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v6

    sub-float/2addr v4, v6

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 566
    .local v1, distanceY:F
    const/high16 v4, 0x4000

    mul-float/2addr v4, v0

    cmpl-float v4, v4, v1

    if-gtz v4, :cond_2

    iget-object v4, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$4;->this$0:Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;

    iget v4, v4, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mStatusBarHeight:I

    mul-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    cmpl-float v4, v4, v1

    if-gtz v4, :cond_2

    .line 568
    iget-object v4, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$4;->this$0:Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;

    const/4 v6, 0x1

    #calls: Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->setStatusBarInFullscreen(Z)V
    invoke-static {v4, v6}, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->access$000(Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;Z)V

    .line 569
    iget-object v4, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$4;->this$0:Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;

    iget v4, v4, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mStatusBarHeight:I

    int-to-float v4, v4

    iput v4, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$4;->mDownY:F
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 548
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

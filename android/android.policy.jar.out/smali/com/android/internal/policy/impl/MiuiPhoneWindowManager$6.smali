.class Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$6;
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


# static fields
.field static final TYPE_LAYER_MULTIPLIER:I = 0x2710

.field static final TYPE_LAYER_OFFSET:I = 0x3e8


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;)V
    .locals 0
    .parameter

    .prologue
    .line 588
    iput-object p1, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$6;->this$0:Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;

    invoke-direct {p0}, Lcom/android/internal/view/BaseInputHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMotion(Landroid/view/MotionEvent;Landroid/view/InputQueue$FinishedCallback;)V
    .locals 5
    .parameter "event"
    .parameter "finishedCallback"

    .prologue
    .line 601
    const/4 v0, 0x0

    .line 602
    .local v0, handled:Z
    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$6;->this$0:Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    float-to-int v2, v2

    #setter for: Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mDownX:I
    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->access$202(Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;I)I

    .line 603
    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$6;->this$0:Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    float-to-int v2, v2

    #setter for: Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mDownY:I
    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->access$302(Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;I)I

    .line 606
    :try_start_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v1

    and-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    .line 627
    invoke-virtual {p2, v0}, Landroid/view/InputQueue$FinishedCallback;->finished(Z)V

    .line 629
    :goto_0
    return-void

    .line 608
    :cond_0
    const/4 v0, 0x1

    .line 609
    :try_start_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$6;->this$0:Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;

    iget-object v2, v1, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 610
    :try_start_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 625
    :cond_1
    :goto_1
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 627
    invoke-virtual {p2, v0}, Landroid/view/InputQueue$FinishedCallback;->finished(Z)V

    goto :goto_0

    .line 613
    :pswitch_0
    :try_start_3
    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$6;->this$0:Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;

    const/4 v3, 0x1

    #setter for: Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mIsTouchDown:Z
    invoke-static {v1, v3}, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->access$402(Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;Z)Z

    .line 614
    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$6;->this$0:Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;

    #getter for: Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mShowMagnifier:Z
    invoke-static {v1}, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->access$500(Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 615
    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$6;->this$0:Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->getMagnifier()Lcom/android/internal/policy/impl/MagnifierPopupWindow;

    move-result-object v1

    iget-object v3, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$6;->this$0:Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;

    #getter for: Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mDownX:I
    invoke-static {v3}, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->access$200(Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;)I

    move-result v3

    iget-object v4, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$6;->this$0:Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;

    #getter for: Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mDownY:I
    invoke-static {v4}, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->access$300(Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;)I

    move-result v4

    invoke-virtual {v1, v3, v4}, Lcom/android/internal/policy/impl/MagnifierPopupWindow;->showMagnifier(II)V

    goto :goto_1

    .line 625
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 627
    :catchall_1
    move-exception v1

    invoke-virtual {p2, v0}, Landroid/view/InputQueue$FinishedCallback;->finished(Z)V

    throw v1

    .line 620
    :pswitch_1
    :try_start_5
    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$6;->this$0:Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->getMagnifier()Lcom/android/internal/policy/impl/MagnifierPopupWindow;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/MagnifierPopupWindow;->hide()V

    .line 621
    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$6;->this$0:Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;

    const/4 v3, 0x0

    #setter for: Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mIsTouchDown:Z
    invoke-static {v1, v3}, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->access$402(Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;Z)Z

    .line 622
    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$6;->this$0:Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;

    const/4 v3, 0x0

    #setter for: Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mShowMagnifier:Z
    invoke-static {v1, v3}, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->access$502(Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;Z)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 610
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

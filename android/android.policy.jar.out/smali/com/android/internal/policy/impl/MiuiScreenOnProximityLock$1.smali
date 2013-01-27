.class Lcom/android/internal/policy/impl/MiuiScreenOnProximityLock$1;
.super Landroid/os/Handler;
.source "MiuiScreenOnProximityLock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/MiuiScreenOnProximityLock;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardViewMediator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/MiuiScreenOnProximityLock;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/MiuiScreenOnProximityLock;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 124
    iput-object p1, p0, Lcom/android/internal/policy/impl/MiuiScreenOnProximityLock$1;->this$0:Lcom/android/internal/policy/impl/MiuiScreenOnProximityLock;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 127
    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiScreenOnProximityLock$1;->this$0:Lcom/android/internal/policy/impl/MiuiScreenOnProximityLock;

    monitor-enter v1

    .line 128
    :try_start_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 156
    :cond_0
    :goto_0
    monitor-exit v1

    .line 157
    return-void

    .line 130
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiScreenOnProximityLock$1;->this$0:Lcom/android/internal/policy/impl/MiuiScreenOnProximityLock;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/MiuiScreenOnProximityLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    const-string v0, "MiuiScreenOnProximityLock"

    const-string v2, "too close screen, show hint..."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiScreenOnProximityLock$1;->this$0:Lcom/android/internal/policy/impl/MiuiScreenOnProximityLock;

    #getter for: Lcom/android/internal/policy/impl/MiuiScreenOnProximityLock;->mDialog:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/android/internal/policy/impl/MiuiScreenOnProximityLock;->access$500(Lcom/android/internal/policy/impl/MiuiScreenOnProximityLock;)Landroid/app/Dialog;

    move-result-object v0

    if-nez v0, :cond_1

    .line 134
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiScreenOnProximityLock$1;->this$0:Lcom/android/internal/policy/impl/MiuiScreenOnProximityLock;

    #calls: Lcom/android/internal/policy/impl/MiuiScreenOnProximityLock;->prepareHintDialog()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/MiuiScreenOnProximityLock;->access$600(Lcom/android/internal/policy/impl/MiuiScreenOnProximityLock;)V

    .line 135
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiScreenOnProximityLock$1;->this$0:Lcom/android/internal/policy/impl/MiuiScreenOnProximityLock;

    #getter for: Lcom/android/internal/policy/impl/MiuiScreenOnProximityLock;->mDialog:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/android/internal/policy/impl/MiuiScreenOnProximityLock;->access$500(Lcom/android/internal/policy/impl/MiuiScreenOnProximityLock;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 137
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiScreenOnProximityLock$1;->this$0:Lcom/android/internal/policy/impl/MiuiScreenOnProximityLock;

    #getter for: Lcom/android/internal/policy/impl/MiuiScreenOnProximityLock;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;
    invoke-static {v0}, Lcom/android/internal/policy/impl/MiuiScreenOnProximityLock;->access$700(Lcom/android/internal/policy/impl/MiuiScreenOnProximityLock;)Lcom/android/internal/policy/impl/KeyguardViewMediator;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mRealPowerManager:Landroid/os/LocalPowerManager;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/os/LocalPowerManager;->enableUserActivity(Z)V

    goto :goto_0

    .line 156
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 141
    :pswitch_1
    :try_start_1
    const-string v0, "MiuiScreenOnProximityLock"

    const-string v2, "far from the screen, hide hint..."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiScreenOnProximityLock$1;->this$0:Lcom/android/internal/policy/impl/MiuiScreenOnProximityLock;

    #getter for: Lcom/android/internal/policy/impl/MiuiScreenOnProximityLock;->mDialog:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/android/internal/policy/impl/MiuiScreenOnProximityLock;->access$500(Lcom/android/internal/policy/impl/MiuiScreenOnProximityLock;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 143
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiScreenOnProximityLock$1;->this$0:Lcom/android/internal/policy/impl/MiuiScreenOnProximityLock;

    #getter for: Lcom/android/internal/policy/impl/MiuiScreenOnProximityLock;->mDialog:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/android/internal/policy/impl/MiuiScreenOnProximityLock;->access$500(Lcom/android/internal/policy/impl/MiuiScreenOnProximityLock;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 144
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiScreenOnProximityLock$1;->this$0:Lcom/android/internal/policy/impl/MiuiScreenOnProximityLock;

    const/4 v2, 0x0

    #setter for: Lcom/android/internal/policy/impl/MiuiScreenOnProximityLock;->mDialog:Landroid/app/Dialog;
    invoke-static {v0, v2}, Lcom/android/internal/policy/impl/MiuiScreenOnProximityLock;->access$502(Lcom/android/internal/policy/impl/MiuiScreenOnProximityLock;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 146
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiScreenOnProximityLock$1;->this$0:Lcom/android/internal/policy/impl/MiuiScreenOnProximityLock;

    #getter for: Lcom/android/internal/policy/impl/MiuiScreenOnProximityLock;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;
    invoke-static {v0}, Lcom/android/internal/policy/impl/MiuiScreenOnProximityLock;->access$700(Lcom/android/internal/policy/impl/MiuiScreenOnProximityLock;)Lcom/android/internal/policy/impl/KeyguardViewMediator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->isShowingAndNotHidden()Z

    move-result v0

    if-nez v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiScreenOnProximityLock$1;->this$0:Lcom/android/internal/policy/impl/MiuiScreenOnProximityLock;

    #getter for: Lcom/android/internal/policy/impl/MiuiScreenOnProximityLock;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;
    invoke-static {v0}, Lcom/android/internal/policy/impl/MiuiScreenOnProximityLock;->access$700(Lcom/android/internal/policy/impl/MiuiScreenOnProximityLock;)Lcom/android/internal/policy/impl/KeyguardViewMediator;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mRealPowerManager:Landroid/os/LocalPowerManager;

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Landroid/os/LocalPowerManager;->enableUserActivity(Z)V

    goto :goto_0

    .line 152
    :pswitch_2
    const-string v0, "MiuiScreenOnProximityLock"

    const-string v2, "far from the screen for a certain time, release proximity sensor..."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiScreenOnProximityLock$1;->this$0:Lcom/android/internal/policy/impl/MiuiScreenOnProximityLock;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/MiuiScreenOnProximityLock;->release()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 128
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

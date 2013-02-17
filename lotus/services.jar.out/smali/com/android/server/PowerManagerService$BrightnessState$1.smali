.class Lcom/android/server/PowerManagerService$BrightnessState$1;
.super Ljava/lang/Object;
.source "PowerManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/PowerManagerService$BrightnessState;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/PowerManagerService$BrightnessState;


# direct methods
.method constructor <init>(Lcom/android/server/PowerManagerService$BrightnessState;)V
    .locals 0
    .parameter

    .prologue
    .line 2339
    iput-object p1, p0, Lcom/android/server/PowerManagerService$BrightnessState$1;->this$1:Lcom/android/server/PowerManagerService$BrightnessState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2342
    iget-object v0, p0, Lcom/android/server/PowerManagerService$BrightnessState$1;->this$1:Lcom/android/server/PowerManagerService$BrightnessState;

    #calls: Lcom/android/server/PowerManagerService$BrightnessState;->startElectronBeamOnAnimation()V
    invoke-static {v0}, Lcom/android/server/PowerManagerService$BrightnessState;->access$5000(Lcom/android/server/PowerManagerService$BrightnessState;)V

    .line 2343
    iget-object v0, p0, Lcom/android/server/PowerManagerService$BrightnessState$1;->this$1:Lcom/android/server/PowerManagerService$BrightnessState;

    iget-object v1, v0, Lcom/android/server/PowerManagerService$BrightnessState;->mElectronBeamOnHandler:Landroid/os/Handler;

    monitor-enter v1

    .line 2344
    :try_start_0
    iget-object v0, p0, Lcom/android/server/PowerManagerService$BrightnessState$1;->this$1:Lcom/android/server/PowerManagerService$BrightnessState;

    iget-object v0, v0, Lcom/android/server/PowerManagerService$BrightnessState;->mElectronBeamOnHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 2345
    monitor-exit v1

    .line 2346
    return-void

    .line 2345
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

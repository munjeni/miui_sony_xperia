.class Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController$4;
.super Ljava/lang/Object;
.source "MiuiLockScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;)V
    .locals 0
    .parameter

    .prologue
    .line 2046
    iput-object p1, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController$4;->this$1:Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2049
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController$4;->this$1:Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;

    iget-object v0, v0, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->this$0:Lcom/android/internal/policy/impl/MiuiLockScreen;

    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController$4;->this$1:Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;

    #getter for: Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->mEnableSpectrumVisualizerRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->access$3400(Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/MiuiLockScreen;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2050
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController$4;->this$1:Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;

    #calls: Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->updateSpectrumVisualizer()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->access$100(Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;)V

    .line 2051
    return-void
.end method

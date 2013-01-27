.class Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController$2;
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
    .line 1904
    iput-object p1, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController$2;->this$1:Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1907
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController$2;->this$1:Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;

    #calls: Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->updateMusic()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->access$2500(Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;)V

    .line 1908
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController$2;->this$1:Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;

    #calls: Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->updateSpectrumVisualizer()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->access$100(Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;)V

    .line 1909
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController$2;->this$1:Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->addCheckStreamCallbacks()V

    .line 1910
    return-void
.end method

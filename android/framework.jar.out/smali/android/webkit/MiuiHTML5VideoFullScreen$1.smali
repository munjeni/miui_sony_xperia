.class Landroid/webkit/MiuiHTML5VideoFullScreen$1;
.super Ljava/lang/Object;
.source "MiuiHTML5VideoFullScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/MiuiHTML5VideoFullScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkit/MiuiHTML5VideoFullScreen;


# direct methods
.method constructor <init>(Landroid/webkit/MiuiHTML5VideoFullScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 87
    iput-object p1, p0, Landroid/webkit/MiuiHTML5VideoFullScreen$1;->this$0:Landroid/webkit/MiuiHTML5VideoFullScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 90
    iget-object v0, p0, Landroid/webkit/MiuiHTML5VideoFullScreen$1;->this$0:Landroid/webkit/MiuiHTML5VideoFullScreen;

    invoke-virtual {v0}, Landroid/webkit/MiuiHTML5VideoFullScreen;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Landroid/webkit/MiuiHTML5VideoFullScreen$1;->this$0:Landroid/webkit/MiuiHTML5VideoFullScreen;

    #getter for: Landroid/webkit/MiuiHTML5VideoFullScreen;->mMovieController:Landroid/widget/MiuiMovieController;
    invoke-static {v0}, Landroid/webkit/MiuiHTML5VideoFullScreen;->access$200(Landroid/webkit/MiuiHTML5VideoFullScreen;)Landroid/widget/MiuiMovieController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/MiuiMovieController;->showPlaying()V

    .line 95
    :goto_0
    return-void

    .line 93
    :cond_0
    iget-object v0, p0, Landroid/webkit/MiuiHTML5VideoFullScreen$1;->this$0:Landroid/webkit/MiuiHTML5VideoFullScreen;

    #getter for: Landroid/webkit/MiuiHTML5VideoFullScreen;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/webkit/MiuiHTML5VideoFullScreen;->access$400(Landroid/webkit/MiuiHTML5VideoFullScreen;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Landroid/webkit/MiuiHTML5VideoFullScreen$1;->this$0:Landroid/webkit/MiuiHTML5VideoFullScreen;

    #getter for: Landroid/webkit/MiuiHTML5VideoFullScreen;->mPlayingChecker:Ljava/lang/Runnable;
    invoke-static {v1}, Landroid/webkit/MiuiHTML5VideoFullScreen;->access$300(Landroid/webkit/MiuiHTML5VideoFullScreen;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

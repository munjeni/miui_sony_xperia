.class Landroid/webkit/MiuiHTML5VideoFullScreen$3;
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
    .line 179
    iput-object p1, p0, Landroid/webkit/MiuiHTML5VideoFullScreen$3;->this$0:Landroid/webkit/MiuiHTML5VideoFullScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 182
    iget-object v1, p0, Landroid/webkit/MiuiHTML5VideoFullScreen$3;->this$0:Landroid/webkit/MiuiHTML5VideoFullScreen;

    #calls: Landroid/webkit/MiuiHTML5VideoFullScreen;->setProgress()I
    invoke-static {v1}, Landroid/webkit/MiuiHTML5VideoFullScreen;->access$800(Landroid/webkit/MiuiHTML5VideoFullScreen;)I

    move-result v0

    .line 183
    .local v0, pos:I
    iget-object v1, p0, Landroid/webkit/MiuiHTML5VideoFullScreen$3;->this$0:Landroid/webkit/MiuiHTML5VideoFullScreen;

    #getter for: Landroid/webkit/MiuiHTML5VideoFullScreen;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Landroid/webkit/MiuiHTML5VideoFullScreen;->access$400(Landroid/webkit/MiuiHTML5VideoFullScreen;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Landroid/webkit/MiuiHTML5VideoFullScreen$3;->this$0:Landroid/webkit/MiuiHTML5VideoFullScreen;

    #getter for: Landroid/webkit/MiuiHTML5VideoFullScreen;->mProgressChecker:Ljava/lang/Runnable;
    invoke-static {v2}, Landroid/webkit/MiuiHTML5VideoFullScreen;->access$900(Landroid/webkit/MiuiHTML5VideoFullScreen;)Ljava/lang/Runnable;

    move-result-object v2

    rem-int/lit16 v3, v0, 0x3e8

    rsub-int v3, v3, 0x3e8

    int-to-long v3, v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 184
    return-void
.end method

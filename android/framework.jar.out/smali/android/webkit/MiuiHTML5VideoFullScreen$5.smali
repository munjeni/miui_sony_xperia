.class Landroid/webkit/MiuiHTML5VideoFullScreen$5;
.super Ljava/lang/Object;
.source "MiuiHTML5VideoFullScreen.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnBufferingUpdateListener;


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
    .line 346
    iput-object p1, p0, Landroid/webkit/MiuiHTML5VideoFullScreen$5;->this$0:Landroid/webkit/MiuiHTML5VideoFullScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBufferingUpdate(Landroid/media/MediaPlayer;I)V
    .locals 1
    .parameter "mp"
    .parameter "percent"

    .prologue
    .line 348
    iget-object v0, p0, Landroid/webkit/MiuiHTML5VideoFullScreen$5;->this$0:Landroid/webkit/MiuiHTML5VideoFullScreen;

    #setter for: Landroid/webkit/MiuiHTML5VideoFullScreen;->mCurrentBufferPercentage:I
    invoke-static {v0, p2}, Landroid/webkit/MiuiHTML5VideoFullScreen;->access$1202(Landroid/webkit/MiuiHTML5VideoFullScreen;I)I

    .line 349
    return-void
.end method

.class Lmiui/app/screenelement/elements/MusicControlScreenElement$3;
.super Ljava/lang/Object;
.source "MusicControlScreenElement.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/app/screenelement/elements/MusicControlScreenElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/app/screenelement/elements/MusicControlScreenElement;


# direct methods
.method constructor <init>(Lmiui/app/screenelement/elements/MusicControlScreenElement;)V
    .locals 0
    .parameter

    .prologue
    .line 372
    iput-object p1, p0, Lmiui/app/screenelement/elements/MusicControlScreenElement$3;->this$0:Lmiui/app/screenelement/elements/MusicControlScreenElement;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 375
    iget-object v0, p0, Lmiui/app/screenelement/elements/MusicControlScreenElement$3;->this$0:Lmiui/app/screenelement/elements/MusicControlScreenElement;

    #getter for: Lmiui/app/screenelement/elements/MusicControlScreenElement;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lmiui/app/screenelement/elements/MusicControlScreenElement;->access$700(Lmiui/app/screenelement/elements/MusicControlScreenElement;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lmiui/app/screenelement/elements/MusicControlScreenElement$3;->this$0:Lmiui/app/screenelement/elements/MusicControlScreenElement;

    #getter for: Lmiui/app/screenelement/elements/MusicControlScreenElement;->mEnableSpectrumVisualizerRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lmiui/app/screenelement/elements/MusicControlScreenElement;->access$800(Lmiui/app/screenelement/elements/MusicControlScreenElement;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 376
    iget-object v0, p0, Lmiui/app/screenelement/elements/MusicControlScreenElement$3;->this$0:Lmiui/app/screenelement/elements/MusicControlScreenElement;

    invoke-virtual {v0}, Lmiui/app/screenelement/elements/MusicControlScreenElement;->updateSpectrumVisualizer()V

    .line 377
    return-void
.end method

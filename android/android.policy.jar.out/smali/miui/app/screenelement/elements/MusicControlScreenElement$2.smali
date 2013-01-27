.class Lmiui/app/screenelement/elements/MusicControlScreenElement$2;
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
    .line 363
    iput-object p1, p0, Lmiui/app/screenelement/elements/MusicControlScreenElement$2;->this$0:Lmiui/app/screenelement/elements/MusicControlScreenElement;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 366
    iget-object v0, p0, Lmiui/app/screenelement/elements/MusicControlScreenElement$2;->this$0:Lmiui/app/screenelement/elements/MusicControlScreenElement;

    #calls: Lmiui/app/screenelement/elements/MusicControlScreenElement;->updateMusic()V
    invoke-static {v0}, Lmiui/app/screenelement/elements/MusicControlScreenElement;->access$600(Lmiui/app/screenelement/elements/MusicControlScreenElement;)V

    .line 367
    iget-object v0, p0, Lmiui/app/screenelement/elements/MusicControlScreenElement$2;->this$0:Lmiui/app/screenelement/elements/MusicControlScreenElement;

    invoke-virtual {v0}, Lmiui/app/screenelement/elements/MusicControlScreenElement;->updateSpectrumVisualizer()V

    .line 368
    iget-object v0, p0, Lmiui/app/screenelement/elements/MusicControlScreenElement$2;->this$0:Lmiui/app/screenelement/elements/MusicControlScreenElement;

    #getter for: Lmiui/app/screenelement/elements/MusicControlScreenElement;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lmiui/app/screenelement/elements/MusicControlScreenElement;->access$700(Lmiui/app/screenelement/elements/MusicControlScreenElement;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 369
    return-void
.end method

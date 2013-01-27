.class Lmiui/view/VolumePanel$1;
.super Ljava/lang/Object;
.source "VolumePanel.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/view/VolumePanel;->recreateIfNeeded()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/view/VolumePanel;


# direct methods
.method constructor <init>(Lmiui/view/VolumePanel;)V
    .locals 0
    .parameter

    .prologue
    .line 219
    iput-object p1, p0, Lmiui/view/VolumePanel$1;->this$0:Lmiui/view/VolumePanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "event"

    .prologue
    .line 221
    iget-object v0, p0, Lmiui/view/VolumePanel$1;->this$0:Lmiui/view/VolumePanel;

    #calls: Lmiui/view/VolumePanel;->resetTimeout()V
    invoke-static {v0}, Lmiui/view/VolumePanel;->access$000(Lmiui/view/VolumePanel;)V

    .line 222
    const/4 v0, 0x0

    return v0
.end method

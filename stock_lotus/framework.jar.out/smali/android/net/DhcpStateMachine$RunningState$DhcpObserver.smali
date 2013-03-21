.class Landroid/net/DhcpStateMachine$RunningState$DhcpObserver;
.super Landroid/os/FileObserver;
.source "DhcpStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/DhcpStateMachine$RunningState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DhcpObserver"
.end annotation


# static fields
.field private static final DHCP_LEASE_DIR:Ljava/lang/String; = "/data/misc/dhcp"


# instance fields
.field final synthetic this$1:Landroid/net/DhcpStateMachine$RunningState;


# direct methods
.method public constructor <init>(Landroid/net/DhcpStateMachine$RunningState;)V
    .locals 3
    .parameter

    .prologue
    .line 325
    iput-object p1, p0, Landroid/net/DhcpStateMachine$RunningState$DhcpObserver;->this$1:Landroid/net/DhcpStateMachine$RunningState;

    .line 326
    const-string v1, "/data/misc/dhcp"

    const/16 v2, 0x8

    invoke-direct {p0, v1, v2}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;I)V

    .line 327
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/misc/dhcp"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 328
    .local v0, f:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->canExecute()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v1

    if-nez v1, :cond_1

    .line 329
    :cond_0
    const-string v1, "DhcpStateMachine"

    const-string v2, "Error! Cannot access dhcpcd lease dir: /data/misc/dhcp"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    :cond_1
    return-void
.end method


# virtual methods
.method public onEvent(ILjava/lang/String;)V
    .locals 4
    .parameter "event"
    .parameter "path"

    .prologue
    .line 333
    if-eqz p2, :cond_0

    const-string v0, ".lease"

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 338
    iget-object v0, p0, Landroid/net/DhcpStateMachine$RunningState$DhcpObserver;->this$1:Landroid/net/DhcpStateMachine$RunningState;

    iget-object v0, v0, Landroid/net/DhcpStateMachine$RunningState;->this$0:Landroid/net/DhcpStateMachine;

    const v1, 0x30007

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/DhcpStateMachine;->sendMessageDelayed(IJ)V

    .line 340
    :cond_0
    return-void
.end method

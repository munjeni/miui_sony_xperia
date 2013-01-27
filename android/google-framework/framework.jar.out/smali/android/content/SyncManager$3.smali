.class Landroid/content/SyncManager$3;
.super Landroid/content/BroadcastReceiver;
.source "SyncManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/SyncManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/content/SyncManager;


# direct methods
.method constructor <init>(Landroid/content/SyncManager;)V
    .locals 0
    .parameter

    .prologue
    .line 188
    iput-object p1, p0, Landroid/content/SyncManager$3;->this$0:Landroid/content/SyncManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 190
    iget-object v0, p0, Landroid/content/SyncManager$3;->this$0:Landroid/content/SyncManager;

    const/4 v1, 0x0

    #setter for: Landroid/content/SyncManager;->mUiContext:Landroid/content/Context;
    invoke-static {v0, v1}, Landroid/content/SyncManager;->access$302(Landroid/content/SyncManager;Landroid/content/Context;)Landroid/content/Context;

    .line 191
    return-void
.end method

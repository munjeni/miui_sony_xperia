.class Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$3;
.super Landroid/content/BroadcastReceiver;
.source "MiuiPhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;)V
    .locals 0
    .parameter

    .prologue
    .line 508
    iput-object p1, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$3;->this$0:Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 510
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$3;->this$0:Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;

    const/4 v1, 0x0

    #calls: Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->setStatusBarInFullscreen(Z)V
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->access$000(Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;Z)V

    .line 511
    return-void
.end method

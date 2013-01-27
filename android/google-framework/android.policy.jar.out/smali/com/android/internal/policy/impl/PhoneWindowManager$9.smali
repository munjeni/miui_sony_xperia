.class Lcom/android/internal/policy/impl/PhoneWindowManager$9;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/PhoneWindowManager;->triggerVirtualKeypress(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

.field final synthetic val$keyCode:I


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 891
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$9;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iput p2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$9;->val$keyCode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 894
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$9;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    new-instance v1, Landroid/view/KeyEvent;

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$9;->val$keyCode:I

    invoke-direct {v1, v2, v3}, Landroid/view/KeyEvent;-><init>(II)V

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/view/IWindowManager;->injectKeyEvent(Landroid/view/KeyEvent;Z)Z

    .line 896
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$9;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    new-instance v1, Landroid/view/KeyEvent;

    const/4 v2, 0x1

    iget v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$9;->val$keyCode:I

    invoke-direct {v1, v2, v3}, Landroid/view/KeyEvent;-><init>(II)V

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/view/IWindowManager;->injectKeyEvent(Landroid/view/KeyEvent;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 900
    :goto_0
    return-void

    .line 898
    :catch_0
    move-exception v0

    goto :goto_0
.end method

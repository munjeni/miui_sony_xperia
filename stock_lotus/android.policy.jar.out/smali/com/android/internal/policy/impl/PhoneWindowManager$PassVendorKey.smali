.class Lcom/android/internal/policy/impl/PhoneWindowManager$PassVendorKey;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PassVendorKey"
.end annotation


# instance fields
.field mKeyEvent:Landroid/view/KeyEvent;

.field final synthetic this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/view/KeyEvent;)V
    .locals 0
    .parameter
    .parameter "keyEvent"

    .prologue
    .line 3350
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$PassVendorKey;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3351
    iput-object p2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$PassVendorKey;->mKeyEvent:Landroid/view/KeyEvent;

    .line 3352
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 3355
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3356
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$PassVendorKey;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->sendCloseSystemWindows()V

    .line 3357
    new-instance v1, Landroid/content/Intent;

    const-string v0, "com.sonyericsson.intent.action.VENDOR_BUTTON"

    invoke-direct {v1, v0, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 3358
    .local v1, intent:Landroid/content/Intent;
    const-string v0, "android.intent.extra.KEY_EVENT"

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$PassVendorKey;->mKeyEvent:Landroid/view/KeyEvent;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 3359
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$PassVendorKey;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v2, "com.sonyericsson.permission.VENDOR_BUTTON"

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$PassVendorKey;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v3, v3, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBroadcastDone:Landroid/content/BroadcastReceiver;

    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$PassVendorKey;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v4, v4, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/4 v5, -0x1

    move-object v7, v6

    invoke-virtual/range {v0 .. v7}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 3362
    .end local v1           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method

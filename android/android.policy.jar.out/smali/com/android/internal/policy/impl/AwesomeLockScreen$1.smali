.class Lcom/android/internal/policy/impl/AwesomeLockScreen$1;
.super Ljava/lang/Object;
.source "AwesomeLockScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/AwesomeLockScreen;->unlocked(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/AwesomeLockScreen;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/AwesomeLockScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 262
    iput-object p1, p0, Lcom/android/internal/policy/impl/AwesomeLockScreen$1;->this$0:Lcom/android/internal/policy/impl/AwesomeLockScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 266
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/AwesomeLockScreen$1;->this$0:Lcom/android/internal/policy/impl/AwesomeLockScreen;

    #getter for: Lcom/android/internal/policy/impl/AwesomeLockScreen;->mCallback:Lcom/miui/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v1}, Lcom/android/internal/policy/impl/AwesomeLockScreen;->access$000(Lcom/android/internal/policy/impl/AwesomeLockScreen;)Lcom/miui/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v1

    invoke-interface {v1}, Lcom/miui/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 271
    :goto_0
    return-void

    .line 267
    :catch_0
    move-exception v0

    .line 268
    .local v0, e:Landroid/content/ActivityNotFoundException;
    const-string v1, "AwesomeLockScreen"

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.class Lcom/android/internal/policy/impl/AccountUnlockScreen$1;
.super Landroid/content/BroadcastReceiver;
.source "AccountUnlockScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/AccountUnlockScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/AccountUnlockScreen;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/AccountUnlockScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 83
    iput-object p1, p0, Lcom/android/internal/policy/impl/AccountUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/AccountUnlockScreen;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v1, 0x0

    .line 86
    iget-object v0, p0, Lcom/android/internal/policy/impl/AccountUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/AccountUnlockScreen;

    #setter for: Lcom/android/internal/policy/impl/AccountUnlockScreen;->mUiContext:Landroid/content/Context;
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/AccountUnlockScreen;->access$002(Lcom/android/internal/policy/impl/AccountUnlockScreen;Landroid/content/Context;)Landroid/content/Context;

    .line 87
    iget-object v0, p0, Lcom/android/internal/policy/impl/AccountUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/AccountUnlockScreen;

    #setter for: Lcom/android/internal/policy/impl/AccountUnlockScreen;->mCheckingDialog:Landroid/app/ProgressDialog;
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/AccountUnlockScreen;->access$102(Lcom/android/internal/policy/impl/AccountUnlockScreen;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 88
    return-void
.end method

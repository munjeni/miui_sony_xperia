.class Lcom/android/internal/policy/impl/SimUnlockScreen$1;
.super Landroid/content/BroadcastReceiver;
.source "SimUnlockScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/SimUnlockScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/SimUnlockScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 75
    iput-object p1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

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

    .line 78
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    #setter for: Lcom/android/internal/policy/impl/SimUnlockScreen;->mUiContext:Landroid/content/Context;
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/SimUnlockScreen;->access$002(Lcom/android/internal/policy/impl/SimUnlockScreen;Landroid/content/Context;)Landroid/content/Context;

    .line 79
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    #setter for: Lcom/android/internal/policy/impl/SimUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/SimUnlockScreen;->access$102(Lcom/android/internal/policy/impl/SimUnlockScreen;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 80
    return-void
.end method

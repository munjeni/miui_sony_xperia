.class Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen$4$1;
.super Ljava/lang/Object;
.source "MiuiAccountUnlockScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen$4;->run(Landroid/accounts/AccountManagerFuture;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen$4;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen$4;)V
    .locals 0
    .parameter

    .prologue
    .line 374
    iput-object p1, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen$4$1;->this$1:Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 376
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen$4$1;->this$1:Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen$4;

    iget-object v0, v0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen$4;->this$0:Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;

    #calls: Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->getProgressDialog()Landroid/app/Dialog;
    invoke-static {v0}, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->access$1400(Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->hide()V

    .line 377
    return-void
.end method

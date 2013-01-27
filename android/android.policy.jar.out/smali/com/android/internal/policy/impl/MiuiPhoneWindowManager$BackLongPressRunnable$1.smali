.class Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$BackLongPressRunnable$1;
.super Ljava/lang/Object;
.source "MiuiPhoneWindowManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$BackLongPressRunnable;->showHint()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$BackLongPressRunnable;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$BackLongPressRunnable;)V
    .locals 0
    .parameter

    .prologue
    .line 748
    iput-object p1, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$BackLongPressRunnable$1;->this$1:Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$BackLongPressRunnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 751
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$BackLongPressRunnable$1;->this$1:Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$BackLongPressRunnable;

    iget-object v0, v0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$BackLongPressRunnable;->this$0:Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;

    iget-object v0, v0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "back_key_long_press_timeout"

    const/16 v2, 0x5dc

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 755
    return-void
.end method

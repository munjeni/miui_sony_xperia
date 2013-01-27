.class Lcom/android/internal/policy/impl/MiuiGlobalActions$8;
.super Landroid/os/Handler;
.source "MiuiGlobalActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/MiuiGlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/MiuiGlobalActions;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/MiuiGlobalActions;)V
    .locals 0
    .parameter

    .prologue
    .line 690
    iput-object p1, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions$8;->this$0:Lcom/android/internal/policy/impl/MiuiGlobalActions;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 692
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_1

    .line 693
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions$8;->this$0:Lcom/android/internal/policy/impl/MiuiGlobalActions;

    #getter for: Lcom/android/internal/policy/impl/MiuiGlobalActions;->mDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/internal/policy/impl/MiuiGlobalActions;->access$1100(Lcom/android/internal/policy/impl/MiuiGlobalActions;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 694
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions$8;->this$0:Lcom/android/internal/policy/impl/MiuiGlobalActions;

    #getter for: Lcom/android/internal/policy/impl/MiuiGlobalActions;->mDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/internal/policy/impl/MiuiGlobalActions;->access$1100(Lcom/android/internal/policy/impl/MiuiGlobalActions;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 699
    :cond_0
    :goto_0
    return-void

    .line 696
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 697
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions$8;->this$0:Lcom/android/internal/policy/impl/MiuiGlobalActions;

    #getter for: Lcom/android/internal/policy/impl/MiuiGlobalActions;->mAdapter:Lcom/android/internal/policy/impl/MiuiGlobalActions$MyAdapter;
    invoke-static {v0}, Lcom/android/internal/policy/impl/MiuiGlobalActions;->access$1000(Lcom/android/internal/policy/impl/MiuiGlobalActions;)Lcom/android/internal/policy/impl/MiuiGlobalActions$MyAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/MiuiGlobalActions$MyAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

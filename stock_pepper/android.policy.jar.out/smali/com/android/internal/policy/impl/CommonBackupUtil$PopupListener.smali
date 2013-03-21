.class Lcom/android/internal/policy/impl/CommonBackupUtil$PopupListener;
.super Ljava/lang/Object;
.source "CommonBackupUtil.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/CommonBackupUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PopupListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/CommonBackupUtil;


# direct methods
.method private constructor <init>(Lcom/android/internal/policy/impl/CommonBackupUtil;)V
    .locals 0
    .parameter

    .prologue
    .line 90
    iput-object p1, p0, Lcom/android/internal/policy/impl/CommonBackupUtil$PopupListener;->this$0:Lcom/android/internal/policy/impl/CommonBackupUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/policy/impl/CommonBackupUtil;Lcom/android/internal/policy/impl/CommonBackupUtil$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/CommonBackupUtil$PopupListener;-><init>(Lcom/android/internal/policy/impl/CommonBackupUtil;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 92
    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    .line 95
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 96
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.ChooseLockPattern"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 97
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 98
    iget-object v1, p0, Lcom/android/internal/policy/impl/CommonBackupUtil$PopupListener;->this$0:Lcom/android/internal/policy/impl/CommonBackupUtil;

    #getter for: Lcom/android/internal/policy/impl/CommonBackupUtil;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/internal/policy/impl/CommonBackupUtil;->access$100(Lcom/android/internal/policy/impl/CommonBackupUtil;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 102
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/CommonBackupUtil$PopupListener;->this$0:Lcom/android/internal/policy/impl/CommonBackupUtil;

    #getter for: Lcom/android/internal/policy/impl/CommonBackupUtil;->mKeyguardScreenCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v1}, Lcom/android/internal/policy/impl/CommonBackupUtil;->access$200(Lcom/android/internal/policy/impl/CommonBackupUtil;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->keyguardDone(Z)V

    .line 103
    return-void
.end method

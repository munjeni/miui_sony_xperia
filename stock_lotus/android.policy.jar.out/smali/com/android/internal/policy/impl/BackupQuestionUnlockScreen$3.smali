.class Lcom/android/internal/policy/impl/BackupQuestionUnlockScreen$3;
.super Ljava/lang/Object;
.source "BackupQuestionUnlockScreen.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/BackupQuestionUnlockScreen;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/widget/BackupQuestionUtils;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/BackupQuestionUnlockScreen;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/BackupQuestionUnlockScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 173
    iput-object p1, p0, Lcom/android/internal/policy/impl/BackupQuestionUnlockScreen$3;->this$0:Lcom/android/internal/policy/impl/BackupQuestionUnlockScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 176
    iget-object v0, p0, Lcom/android/internal/policy/impl/BackupQuestionUnlockScreen$3;->this$0:Lcom/android/internal/policy/impl/BackupQuestionUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/BackupQuestionUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v0}, Lcom/android/internal/policy/impl/BackupQuestionUnlockScreen;->access$100(Lcom/android/internal/policy/impl/BackupQuestionUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v0

    const/16 v1, 0x3a98

    invoke-interface {v0, v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock(I)V

    .line 177
    const/4 v0, 0x0

    return v0
.end method

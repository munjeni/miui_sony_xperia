.class Lcom/android/internal/policy/impl/BackupQuestionUnlockScreen$2;
.super Ljava/lang/Object;
.source "BackupQuestionUnlockScreen.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


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
    .line 156
    iput-object p1, p0, Lcom/android/internal/policy/impl/BackupQuestionUnlockScreen$2;->this$0:Lcom/android/internal/policy/impl/BackupQuestionUnlockScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "v"
    .parameter "actionId"
    .parameter "event"

    .prologue
    const/4 v1, 0x0

    .line 159
    packed-switch p2, :pswitch_data_0

    .line 167
    :goto_0
    return v1

    .line 162
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/BackupQuestionUnlockScreen$2;->this$0:Lcom/android/internal/policy/impl/BackupQuestionUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/BackupQuestionUnlockScreen;->mOk:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/internal/policy/impl/BackupQuestionUnlockScreen;->access$200(Lcom/android/internal/policy/impl/BackupQuestionUnlockScreen;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v2, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 163
    iget-object v0, p0, Lcom/android/internal/policy/impl/BackupQuestionUnlockScreen$2;->this$0:Lcom/android/internal/policy/impl/BackupQuestionUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/BackupQuestionUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v0}, Lcom/android/internal/policy/impl/BackupQuestionUnlockScreen;->access$100(Lcom/android/internal/policy/impl/BackupQuestionUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v0

    const/16 v2, 0x3a98

    invoke-interface {v0, v2}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock(I)V

    goto :goto_0

    :cond_0
    move v0, v1

    .line 162
    goto :goto_1

    .line 159
    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
    .end packed-switch
.end method

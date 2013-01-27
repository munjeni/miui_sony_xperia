.class Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen$2;
.super Ljava/lang/Object;
.source "MiuiAccountUnlockScreen.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;-><init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;Lcom/android/internal/widget/LockPatternUtils;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 176
    iput-object p1, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen$2;->this$0:Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 180
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen$2;->this$0:Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;

    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen$2;->this$0:Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->mAccounts:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->access$000(Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    #setter for: Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->mCurAccount:Landroid/accounts/Account;
    invoke-static {v1, v0}, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->access$502(Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;Landroid/accounts/Account;)Landroid/accounts/Account;

    .line 181
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 185
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen$2;->this$0:Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;

    const/4 v1, 0x0

    #setter for: Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->mCurAccount:Landroid/accounts/Account;
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->access$502(Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;Landroid/accounts/Account;)Landroid/accounts/Account;

    .line 186
    return-void
.end method

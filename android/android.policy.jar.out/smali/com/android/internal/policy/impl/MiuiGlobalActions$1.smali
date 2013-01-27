.class Lcom/android/internal/policy/impl/MiuiGlobalActions$1;
.super Lcom/android/internal/policy/impl/MiuiGlobalActions$ToggleAction;
.source "MiuiGlobalActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/MiuiGlobalActions;->createDialog()Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/MiuiGlobalActions;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/MiuiGlobalActions;IIIII)V
    .locals 6
    .parameter
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 137
    iput-object p1, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions$1;->this$0:Lcom/android/internal/policy/impl/MiuiGlobalActions;

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/policy/impl/MiuiGlobalActions$ToggleAction;-><init>(IIIII)V

    return-void
.end method


# virtual methods
.method protected changeStateFromPress(Z)V
    .locals 2
    .parameter "buttonOn"

    .prologue
    .line 156
    const-string v0, "ril.cdma.inecmmode"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 158
    if-eqz p1, :cond_1

    sget-object v0, Lcom/android/internal/policy/impl/MiuiGlobalActions$ToggleAction$State;->TurningOn:Lcom/android/internal/policy/impl/MiuiGlobalActions$ToggleAction$State;

    :goto_0
    iput-object v0, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions$1;->mState:Lcom/android/internal/policy/impl/MiuiGlobalActions$ToggleAction$State;

    .line 159
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions$1;->this$0:Lcom/android/internal/policy/impl/MiuiGlobalActions;

    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions$1;->mState:Lcom/android/internal/policy/impl/MiuiGlobalActions$ToggleAction$State;

    #setter for: Lcom/android/internal/policy/impl/MiuiGlobalActions;->mAirplaneState:Lcom/android/internal/policy/impl/MiuiGlobalActions$ToggleAction$State;
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/MiuiGlobalActions;->access$302(Lcom/android/internal/policy/impl/MiuiGlobalActions;Lcom/android/internal/policy/impl/MiuiGlobalActions$ToggleAction$State;)Lcom/android/internal/policy/impl/MiuiGlobalActions$ToggleAction$State;

    .line 161
    :cond_0
    return-void

    .line 158
    :cond_1
    sget-object v0, Lcom/android/internal/policy/impl/MiuiGlobalActions$ToggleAction$State;->TurningOff:Lcom/android/internal/policy/impl/MiuiGlobalActions$ToggleAction$State;

    goto :goto_0
.end method

.method onToggle(Z)V
    .locals 3
    .parameter "on"

    .prologue
    .line 140
    const-string v1, "ril.cdma.inecmmode"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 142
    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions$1;->this$0:Lcom/android/internal/policy/impl/MiuiGlobalActions;

    const/4 v2, 0x1

    #setter for: Lcom/android/internal/policy/impl/MiuiGlobalActions;->mIsWaitingForEcmExit:Z
    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/MiuiGlobalActions;->access$002(Lcom/android/internal/policy/impl/MiuiGlobalActions;Z)Z

    .line 144
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ACTION_SHOW_NOTICE_ECM_BLOCK_OTHERS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 146
    .local v0, ecmDialogIntent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 147
    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions$1;->this$0:Lcom/android/internal/policy/impl/MiuiGlobalActions;

    #getter for: Lcom/android/internal/policy/impl/MiuiGlobalActions;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/internal/policy/impl/MiuiGlobalActions;->access$100(Lcom/android/internal/policy/impl/MiuiGlobalActions;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 151
    .end local v0           #ecmDialogIntent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 149
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions$1;->this$0:Lcom/android/internal/policy/impl/MiuiGlobalActions;

    #calls: Lcom/android/internal/policy/impl/MiuiGlobalActions;->changeAirplaneModeSystemSetting(Z)V
    invoke-static {v1, p1}, Lcom/android/internal/policy/impl/MiuiGlobalActions;->access$200(Lcom/android/internal/policy/impl/MiuiGlobalActions;Z)V

    goto :goto_0
.end method

.method public showBeforeProvisioning()Z
    .locals 1

    .prologue
    .line 168
    const/4 v0, 0x0

    return v0
.end method

.method public showDuringKeyguard()Z
    .locals 1

    .prologue
    .line 164
    const/4 v0, 0x1

    return v0
.end method

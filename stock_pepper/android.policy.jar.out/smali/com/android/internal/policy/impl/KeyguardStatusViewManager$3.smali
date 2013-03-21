.class Lcom/android/internal/policy/impl/KeyguardStatusViewManager$3;
.super Ljava/lang/Object;
.source "KeyguardStatusViewManager.java"

# interfaces
.implements Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/KeyguardStatusViewManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;)V
    .locals 0
    .parameter

    .prologue
    .line 778
    iput-object p1, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$3;->this$0:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClockVisibilityChanged()V
    .locals 0

    .prologue
    .line 815
    return-void
.end method

.method public onDeviceProvisioned()V
    .locals 0

    .prologue
    .line 819
    return-void
.end method

.method public onPhoneStateChanged(I)V
    .locals 1
    .parameter "phoneState"

    .prologue
    .line 808
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$3;->this$0:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    iput p1, v0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mPhoneState:I

    .line 809
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$3;->this$0:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    #calls: Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->updateEmergencyCallButtonState(I)V
    invoke-static {v0, p1}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->access$1400(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;I)V

    .line 810
    return-void
.end method

.method public onRefreshBatteryInfo(ZZI)V
    .locals 4
    .parameter "showBatteryInfo"
    .parameter "pluggedIn"
    .parameter "batteryLevel"

    .prologue
    .line 782
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$3;->this$0:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    #setter for: Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mPluggedIn:Z
    invoke-static {v1, p2}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->access$602(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;Z)Z

    .line 783
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$3;->this$0:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    #setter for: Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mBatteryLevel:I
    invoke-static {v1, p3}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->access$702(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;I)I

    .line 784
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$3;->this$0:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    #getter for: Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mChargeStatusView:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->access$800(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;)Landroid/widget/TextView;

    move-result-object v1

    if-nez v1, :cond_0

    .line 785
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$3;->this$0:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    #setter for: Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mShowingBatteryInfo:Z
    invoke-static {v1, p1}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->access$902(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;Z)Z

    .line 786
    new-instance v0, Llibcore/util/MutableInt;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Llibcore/util/MutableInt;-><init>(I)V

    .line 787
    .local v0, tmpIcon:Llibcore/util/MutableInt;
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$3;->this$0:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    const/16 v2, 0xf

    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$3;->this$0:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    #calls: Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->getAltTextMessage(Llibcore/util/MutableInt;)Ljava/lang/CharSequence;
    invoke-static {v3, v0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->access$300(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;Llibcore/util/MutableInt;)Ljava/lang/CharSequence;

    move-result-object v3

    #calls: Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->update(ILjava/lang/CharSequence;)V
    invoke-static {v1, v2, v3}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->access$1000(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;ILjava/lang/CharSequence;)V

    .line 791
    .end local v0           #tmpIcon:Llibcore/util/MutableInt;
    :goto_0
    return-void

    .line 789
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$3;->this$0:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$3;->this$0:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    #getter for: Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mShowingStatus:Z
    invoke-static {v2}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->access$1100(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->updateStatusLines(Z)V

    goto :goto_0
.end method

.method public onRefreshCarrierInfo(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "plmn"
    .parameter "spn"

    .prologue
    .line 798
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$3;->this$0:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    #setter for: Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mPlmn:Ljava/lang/CharSequence;
    invoke-static {v0, p1}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->access$1202(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 799
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$3;->this$0:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    #setter for: Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mSpn:Ljava/lang/CharSequence;
    invoke-static {v0, p2}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->access$1302(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 800
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$3;->this$0:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    #calls: Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->updateCarrierStateWithSimStatus()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->access$100(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;)V

    .line 801
    return-void
.end method

.method public onRingerModeChanged(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 805
    return-void
.end method

.method public onTimeChanged()V
    .locals 1

    .prologue
    .line 794
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$3;->this$0:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->refreshDate()V

    .line 795
    return-void
.end method

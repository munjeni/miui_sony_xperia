.class Lcom/android/internal/policy/impl/KeyguardStatusViewManager$1;
.super Landroid/telephony/PhoneStateListener;
.source "KeyguardStatusViewManager.java"


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
    .line 118
    iput-object p1, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$1;->this$0:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 2
    .parameter "serviceState"

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$1;->this$0:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    #setter for: Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mServiceState:I
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->access$002(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;I)I

    .line 122
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$1;->this$0:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    #calls: Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->updateCarrierStateWithSimStatus()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->access$100(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;)V

    .line 123
    return-void
.end method

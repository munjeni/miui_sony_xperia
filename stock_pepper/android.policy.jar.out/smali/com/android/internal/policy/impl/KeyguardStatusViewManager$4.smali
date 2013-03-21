.class Lcom/android/internal/policy/impl/KeyguardStatusViewManager$4;
.super Ljava/lang/Object;
.source "KeyguardStatusViewManager.java"

# interfaces
.implements Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimStateCallback;


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
    .line 822
    iput-object p1, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$4;->this$0:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSimStateChanged(Lcom/android/internal/telephony/IccCard$State;)V
    .locals 1
    .parameter "simState"

    .prologue
    .line 826
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$4;->this$0:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    iput-object p1, v0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    .line 827
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$4;->this$0:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    #calls: Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->updateCarrierStateWithSimStatus()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->access$100(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;)V

    .line 828
    return-void
.end method

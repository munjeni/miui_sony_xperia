.class Lcom/android/internal/policy/impl/EmergencyMasterResetScreen$1;
.super Ljava/lang/Object;
.source "EmergencyMasterResetScreen.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/EmergencyMasterResetScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/EmergencyMasterResetScreen;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/EmergencyMasterResetScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 86
    iput-object p1, p0, Lcom/android/internal/policy/impl/EmergencyMasterResetScreen$1;->this$0:Lcom/android/internal/policy/impl/EmergencyMasterResetScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "button"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/internal/policy/impl/EmergencyMasterResetScreen$1;->this$0:Lcom/android/internal/policy/impl/EmergencyMasterResetScreen;

    #getter for: Lcom/android/internal/policy/impl/EmergencyMasterResetScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v0}, Lcom/android/internal/policy/impl/EmergencyMasterResetScreen;->access$100(Lcom/android/internal/policy/impl/EmergencyMasterResetScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/EmergencyMasterResetScreen$1;->this$0:Lcom/android/internal/policy/impl/EmergencyMasterResetScreen;

    #getter for: Lcom/android/internal/policy/impl/EmergencyMasterResetScreen;->mScreenOffTime:I
    invoke-static {v1}, Lcom/android/internal/policy/impl/EmergencyMasterResetScreen;->access$000(Lcom/android/internal/policy/impl/EmergencyMasterResetScreen;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock(I)V

    .line 90
    return-void
.end method

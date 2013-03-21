.class Lcom/android/internal/policy/impl/EmergencyMasterResetScreen$3;
.super Ljava/lang/Object;
.source "EmergencyMasterResetScreen.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/EmergencyMasterResetScreen;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V
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
    .line 128
    iput-object p1, p0, Lcom/android/internal/policy/impl/EmergencyMasterResetScreen$3;->this$0:Lcom/android/internal/policy/impl/EmergencyMasterResetScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/internal/policy/impl/EmergencyMasterResetScreen$3;->this$0:Lcom/android/internal/policy/impl/EmergencyMasterResetScreen;

    #calls: Lcom/android/internal/policy/impl/EmergencyMasterResetScreen;->emergencyMasterResetExit()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/EmergencyMasterResetScreen;->access$300(Lcom/android/internal/policy/impl/EmergencyMasterResetScreen;)V

    .line 131
    return-void
.end method

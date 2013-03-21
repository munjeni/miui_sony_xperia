.class Lcom/android/internal/policy/impl/EmergencyMasterResetScreen$4;
.super Ljava/lang/Object;
.source "EmergencyMasterResetScreen.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/EmergencyMasterResetScreen;->getFinalConfirmationDialog()Landroid/app/AlertDialog;
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
    .line 235
    iput-object p1, p0, Lcom/android/internal/policy/impl/EmergencyMasterResetScreen$4;->this$0:Lcom/android/internal/policy/impl/EmergencyMasterResetScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "button"

    .prologue
    .line 240
    iget-object v0, p0, Lcom/android/internal/policy/impl/EmergencyMasterResetScreen$4;->this$0:Lcom/android/internal/policy/impl/EmergencyMasterResetScreen;

    #calls: Lcom/android/internal/policy/impl/EmergencyMasterResetScreen;->executeMasterReset()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/EmergencyMasterResetScreen;->access$400(Lcom/android/internal/policy/impl/EmergencyMasterResetScreen;)V

    .line 241
    return-void
.end method

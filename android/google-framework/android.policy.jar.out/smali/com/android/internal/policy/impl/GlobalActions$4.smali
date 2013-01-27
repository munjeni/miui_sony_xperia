.class Lcom/android/internal/policy/impl/GlobalActions$4;
.super Lcom/android/internal/policy/impl/GlobalActions$ProfileChooseAction;
.source "GlobalActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/GlobalActions;->createDialog()Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/GlobalActions;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/GlobalActions;)V
    .locals 0
    .parameter

    .prologue
    .line 234
    iput-object p1, p0, Lcom/android/internal/policy/impl/GlobalActions$4;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/GlobalActions$ProfileChooseAction;-><init>(Lcom/android/internal/policy/impl/GlobalActions;)V

    return-void
.end method


# virtual methods
.method public onPress()V
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$4;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    #calls: Lcom/android/internal/policy/impl/GlobalActions;->createProfileDialog()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/GlobalActions;->access$500(Lcom/android/internal/policy/impl/GlobalActions;)V

    .line 237
    return-void
.end method

.method public showBeforeProvisioning()Z
    .locals 1

    .prologue
    .line 244
    const/4 v0, 0x0

    return v0
.end method

.method public showDuringKeyguard()Z
    .locals 1

    .prologue
    .line 240
    const/4 v0, 0x0

    return v0
.end method

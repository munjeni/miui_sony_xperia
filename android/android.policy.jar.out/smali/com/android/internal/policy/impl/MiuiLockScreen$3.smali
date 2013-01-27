.class Lcom/android/internal/policy/impl/MiuiLockScreen$3;
.super Ljava/lang/Object;
.source "MiuiLockScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/MiuiLockScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/MiuiLockScreen;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/MiuiLockScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 1433
    iput-object p1, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$3;->this$0:Lcom/android/internal/policy/impl/MiuiLockScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1436
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$3;->this$0:Lcom/android/internal/policy/impl/MiuiLockScreen;

    #getter for: Lcom/android/internal/policy/impl/MiuiLockScreen;->mHapticFeedbackUtil:Lmiui/util/HapticFeedbackUtil;
    invoke-static {v0}, Lcom/android/internal/policy/impl/MiuiLockScreen;->access$500(Lcom/android/internal/policy/impl/MiuiLockScreen;)Lmiui/util/HapticFeedbackUtil;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lmiui/util/HapticFeedbackUtil;->performHapticFeedback(IZ)Z

    .line 1437
    return-void
.end method

.class Lcom/android/internal/policy/impl/MiuiKeyguardUpdateMonitor$1;
.super Landroid/database/ContentObserver;
.source "MiuiKeyguardUpdateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/MiuiKeyguardUpdateMonitor;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/MiuiKeyguardUpdateMonitor;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/MiuiKeyguardUpdateMonitor;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 16
    iput-object p1, p0, Lcom/android/internal/policy/impl/MiuiKeyguardUpdateMonitor$1;->this$0:Lcom/android/internal/policy/impl/MiuiKeyguardUpdateMonitor;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4
    .parameter "selfChange"

    .prologue
    .line 19
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 20
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiKeyguardUpdateMonitor$1;->this$0:Lcom/android/internal/policy/impl/MiuiKeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiKeyguardUpdateMonitor$1;->this$0:Lcom/android/internal/policy/impl/MiuiKeyguardUpdateMonitor;

    #getter for: Lcom/android/internal/policy/impl/MiuiKeyguardUpdateMonitor;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/internal/policy/impl/MiuiKeyguardUpdateMonitor;->access$100(Lcom/android/internal/policy/impl/MiuiKeyguardUpdateMonitor;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x6080002

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    #setter for: Lcom/android/internal/policy/impl/MiuiKeyguardUpdateMonitor;->mLowBatteryThreshold:I
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/MiuiKeyguardUpdateMonitor;->access$002(Lcom/android/internal/policy/impl/MiuiKeyguardUpdateMonitor;I)I

    .line 22
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiKeyguardUpdateMonitor$1;->this$0:Lcom/android/internal/policy/impl/MiuiKeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiKeyguardUpdateMonitor$1;->this$0:Lcom/android/internal/policy/impl/MiuiKeyguardUpdateMonitor;

    #getter for: Lcom/android/internal/policy/impl/MiuiKeyguardUpdateMonitor;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/internal/policy/impl/MiuiKeyguardUpdateMonitor;->access$100(Lcom/android/internal/policy/impl/MiuiKeyguardUpdateMonitor;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "battery_level_low_customized"

    iget-object v3, p0, Lcom/android/internal/policy/impl/MiuiKeyguardUpdateMonitor$1;->this$0:Lcom/android/internal/policy/impl/MiuiKeyguardUpdateMonitor;

    #getter for: Lcom/android/internal/policy/impl/MiuiKeyguardUpdateMonitor;->mLowBatteryThreshold:I
    invoke-static {v3}, Lcom/android/internal/policy/impl/MiuiKeyguardUpdateMonitor;->access$000(Lcom/android/internal/policy/impl/MiuiKeyguardUpdateMonitor;)I

    move-result v3

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    #setter for: Lcom/android/internal/policy/impl/MiuiKeyguardUpdateMonitor;->mLowBatteryThreshold:I
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/MiuiKeyguardUpdateMonitor;->access$002(Lcom/android/internal/policy/impl/MiuiKeyguardUpdateMonitor;I)I

    .line 26
    return-void
.end method

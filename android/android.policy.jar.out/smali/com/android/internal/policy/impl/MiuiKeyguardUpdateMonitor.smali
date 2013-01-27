.class public Lcom/android/internal/policy/impl/MiuiKeyguardUpdateMonitor;
.super Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;
.source "MiuiKeyguardUpdateMonitor.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mLowBatteryThreshold:I

.field private mLowBatteryThresholdObserver:Landroid/database/ContentObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;-><init>(Landroid/content/Context;)V

    .line 15
    iput-object p1, p0, Lcom/android/internal/policy/impl/MiuiKeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    .line 16
    new-instance v0, Lcom/android/internal/policy/impl/MiuiKeyguardUpdateMonitor$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/internal/policy/impl/MiuiKeyguardUpdateMonitor$1;-><init>(Lcom/android/internal/policy/impl/MiuiKeyguardUpdateMonitor;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/MiuiKeyguardUpdateMonitor;->mLowBatteryThresholdObserver:Landroid/database/ContentObserver;

    .line 28
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiKeyguardUpdateMonitor;->mLowBatteryThresholdObserver:Landroid/database/ContentObserver;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 29
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiKeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "battery_level_low_customized"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/internal/policy/impl/MiuiKeyguardUpdateMonitor;->mLowBatteryThresholdObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 33
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/MiuiKeyguardUpdateMonitor;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 8
    iget v0, p0, Lcom/android/internal/policy/impl/MiuiKeyguardUpdateMonitor;->mLowBatteryThreshold:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/internal/policy/impl/MiuiKeyguardUpdateMonitor;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 8
    iput p1, p0, Lcom/android/internal/policy/impl/MiuiKeyguardUpdateMonitor;->mLowBatteryThreshold:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/MiuiKeyguardUpdateMonitor;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 8
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiKeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiKeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiKeyguardUpdateMonitor;->mLowBatteryThresholdObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 38
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 39
    return-void
.end method

.class Lcom/android/server/UiModeManagerService$UIModeScaleChangedObserver;
.super Landroid/database/ContentObserver;
.source "UiModeManagerService.java"


# annotations
.annotation build Landroid/annotation/MiuiHook;
    value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_CLASS:Landroid/annotation/MiuiHook$MiuiHookType;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/UiModeManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UIModeScaleChangedObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/UiModeManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/UiModeManagerService;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "h"

    .prologue
    .line 264
    iput-object p1, p0, Lcom/android/server/UiModeManagerService$UIModeScaleChangedObserver;->this$0:Lcom/android/server/UiModeManagerService;

    .line 265
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 266
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 5
    .parameter "selfChange"

    .prologue
    .line 269
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$UIModeScaleChangedObserver;->this$0:Lcom/android/server/UiModeManagerService;

    iget-object v1, v0, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 270
    :try_start_0
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$UIModeScaleChangedObserver;->this$0:Lcom/android/server/UiModeManagerService;

    iget-object v2, p0, Lcom/android/server/UiModeManagerService$UIModeScaleChangedObserver;->this$0:Lcom/android/server/UiModeManagerService;

    iget-object v2, v2, Lcom/android/server/UiModeManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "ui_mode_scale"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Lcom/android/server/UiModeManagerService;->mNormalType:I

    .line 274
    monitor-exit v1

    .line 275
    return-void

    .line 274
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

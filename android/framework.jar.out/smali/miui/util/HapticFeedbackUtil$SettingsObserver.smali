.class Lmiui/util/HapticFeedbackUtil$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "HapticFeedbackUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/util/HapticFeedbackUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/util/HapticFeedbackUtil;


# direct methods
.method constructor <init>(Lmiui/util/HapticFeedbackUtil;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "handler"

    .prologue
    .line 84
    iput-object p1, p0, Lmiui/util/HapticFeedbackUtil$SettingsObserver;->this$0:Lmiui/util/HapticFeedbackUtil;

    .line 85
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 86
    return-void
.end method


# virtual methods
.method observe()V
    .locals 3

    .prologue
    .line 89
    iget-object v1, p0, Lmiui/util/HapticFeedbackUtil$SettingsObserver;->this$0:Lmiui/util/HapticFeedbackUtil;

    #getter for: Lmiui/util/HapticFeedbackUtil;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lmiui/util/HapticFeedbackUtil;->access$000(Lmiui/util/HapticFeedbackUtil;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 90
    .local v0, resolver:Landroid/content/ContentResolver;
    const-string v1, "haptic_feedback_level"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 92
    iget-object v1, p0, Lmiui/util/HapticFeedbackUtil$SettingsObserver;->this$0:Lmiui/util/HapticFeedbackUtil;

    invoke-virtual {v1}, Lmiui/util/HapticFeedbackUtil;->updateSettings()V

    .line 93
    return-void
.end method

.method public onChange(Z)V
    .locals 1
    .parameter "selfChange"

    .prologue
    .line 97
    iget-object v0, p0, Lmiui/util/HapticFeedbackUtil$SettingsObserver;->this$0:Lmiui/util/HapticFeedbackUtil;

    invoke-virtual {v0}, Lmiui/util/HapticFeedbackUtil;->updateSettings()V

    .line 98
    return-void
.end method

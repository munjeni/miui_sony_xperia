.class public Lcom/android/internal/policy/impl/MiuiPhoneFallbackEventHandler;
.super Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;
.source "MiuiPhoneFallbackEventHandler.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 12
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;-><init>(Landroid/content/Context;)V

    .line 13
    return-void
.end method


# virtual methods
.method protected handleCameraKeyEvent()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 17
    const/4 v0, 0x0

    .line 18
    .local v0, id:I
    iget-object v4, p0, Lcom/android/internal/policy/impl/MiuiPhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "camera_key_preferred_action_type"

    invoke-static {v4, v5, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 21
    .local v3, type:I
    if-ne v8, v3, :cond_0

    .line 22
    iget-object v4, p0, Lcom/android/internal/policy/impl/MiuiPhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "camera_key_preferred_action_shortcut_id"

    const/4 v6, -0x1

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 26
    :cond_0
    const/4 v2, 0x0

    .line 27
    .local v2, mappedKeyCode:I
    packed-switch v0, :pswitch_data_0

    .line 36
    :goto_0
    if-eqz v2, :cond_3

    .line 37
    new-instance v1, Landroid/view/KeyEvent;

    invoke-direct {v1, v7, v2}, Landroid/view/KeyEvent;-><init>(II)V

    .line 38
    .local v1, mappedEvent:Landroid/view/KeyEvent;
    iget-object v4, p0, Lcom/android/internal/policy/impl/MiuiPhoneFallbackEventHandler;->mView:Landroid/view/View;

    invoke-virtual {v4, v1}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 39
    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/MiuiPhoneFallbackEventHandler;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 41
    :cond_1
    new-instance v1, Landroid/view/KeyEvent;

    .end local v1           #mappedEvent:Landroid/view/KeyEvent;
    invoke-direct {v1, v8, v2}, Landroid/view/KeyEvent;-><init>(II)V

    .line 42
    .restart local v1       #mappedEvent:Landroid/view/KeyEvent;
    iget-object v4, p0, Lcom/android/internal/policy/impl/MiuiPhoneFallbackEventHandler;->mView:Landroid/view/View;

    invoke-virtual {v4, v1}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 43
    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/MiuiPhoneFallbackEventHandler;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 49
    .end local v1           #mappedEvent:Landroid/view/KeyEvent;
    :cond_2
    :goto_1
    return-void

    .line 29
    :pswitch_0
    const/4 v2, 0x5

    .line 30
    goto :goto_0

    .line 32
    :pswitch_1
    const/16 v2, 0x54

    goto :goto_0

    .line 47
    :cond_3
    iget-object v4, p0, Lcom/android/internal/policy/impl/MiuiPhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    new-instance v5, Landroid/content/Intent;

    const-string v6, "com.miui.app.ExtraStatusBarManager.TRIGGER_CAMERA_KEY"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_1

    .line 27
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

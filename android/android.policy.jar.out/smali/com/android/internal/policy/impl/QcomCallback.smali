.class interface abstract Lcom/android/internal/policy/impl/QcomCallback;
.super Ljava/lang/Object;
.source "QcomCallback.java"


# annotations
.annotation build Landroid/annotation/MiuiHook;
    value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_CLASS:Landroid/annotation/MiuiHook$MiuiHookType;
.end annotation


# virtual methods
.method public abstract onRefreshCarrierInfo(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V
.end method

.method public abstract onSimStateChanged(Lcom/android/internal/telephony/IccCard$State;I)V
.end method

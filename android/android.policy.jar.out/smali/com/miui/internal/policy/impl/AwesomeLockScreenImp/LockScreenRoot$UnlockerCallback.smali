.class public interface abstract Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot$UnlockerCallback;
.super Ljava/lang/Object;
.source "LockScreenRoot.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "UnlockerCallback"
.end annotation


# virtual methods
.method public abstract findTask(Ljava/lang/String;)Lmiui/app/screenelement/util/Task;
.end method

.method public abstract haptic(I)V
.end method

.method public abstract isSecure()Z
.end method

.method public abstract isSoundEnable()Z
.end method

.method public abstract pokeWakelock()V
.end method

.method public abstract pokeWakelock(I)V
.end method

.method public abstract unlocked(Landroid/content/Intent;)V
.end method

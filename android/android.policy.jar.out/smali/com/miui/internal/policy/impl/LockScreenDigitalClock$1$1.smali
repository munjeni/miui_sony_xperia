.class Lcom/miui/internal/policy/impl/LockScreenDigitalClock$1$1;
.super Ljava/lang/Object;
.source "LockScreenDigitalClock.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/internal/policy/impl/LockScreenDigitalClock$1;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/internal/policy/impl/LockScreenDigitalClock$1;


# direct methods
.method constructor <init>(Lcom/miui/internal/policy/impl/LockScreenDigitalClock$1;)V
    .locals 0
    .parameter

    .prologue
    .line 61
    iput-object p1, p0, Lcom/miui/internal/policy/impl/LockScreenDigitalClock$1$1;->this$1:Lcom/miui/internal/policy/impl/LockScreenDigitalClock$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/miui/internal/policy/impl/LockScreenDigitalClock$1$1;->this$1:Lcom/miui/internal/policy/impl/LockScreenDigitalClock$1;

    iget-object v0, v0, Lcom/miui/internal/policy/impl/LockScreenDigitalClock$1;->this$0:Lcom/miui/internal/policy/impl/LockScreenDigitalClock;

    #calls: Lcom/miui/internal/policy/impl/LockScreenDigitalClock;->updateTime()V
    invoke-static {v0}, Lcom/miui/internal/policy/impl/LockScreenDigitalClock;->access$100(Lcom/miui/internal/policy/impl/LockScreenDigitalClock;)V

    .line 64
    return-void
.end method

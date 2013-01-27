.class Lcom/miui/internal/policy/impl/LockScreenDigitalClock$1;
.super Landroid/content/BroadcastReceiver;
.source "LockScreenDigitalClock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/policy/impl/LockScreenDigitalClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/internal/policy/impl/LockScreenDigitalClock;


# direct methods
.method constructor <init>(Lcom/miui/internal/policy/impl/LockScreenDigitalClock;)V
    .locals 0
    .parameter

    .prologue
    .line 53
    iput-object p1, p0, Lcom/miui/internal/policy/impl/LockScreenDigitalClock$1;->this$0:Lcom/miui/internal/policy/impl/LockScreenDigitalClock;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 56
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/miui/internal/policy/impl/LockScreenDigitalClock$1;->this$0:Lcom/miui/internal/policy/impl/LockScreenDigitalClock;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    #setter for: Lcom/miui/internal/policy/impl/LockScreenDigitalClock;->mCalendar:Ljava/util/Calendar;
    invoke-static {v0, v1}, Lcom/miui/internal/policy/impl/LockScreenDigitalClock;->access$002(Lcom/miui/internal/policy/impl/LockScreenDigitalClock;Ljava/util/Calendar;)Ljava/util/Calendar;

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/miui/internal/policy/impl/LockScreenDigitalClock$1;->this$0:Lcom/miui/internal/policy/impl/LockScreenDigitalClock;

    #getter for: Lcom/miui/internal/policy/impl/LockScreenDigitalClock;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/miui/internal/policy/impl/LockScreenDigitalClock;->access$200(Lcom/miui/internal/policy/impl/LockScreenDigitalClock;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/miui/internal/policy/impl/LockScreenDigitalClock$1$1;

    invoke-direct {v1, p0}, Lcom/miui/internal/policy/impl/LockScreenDigitalClock$1$1;-><init>(Lcom/miui/internal/policy/impl/LockScreenDigitalClock$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 66
    return-void
.end method

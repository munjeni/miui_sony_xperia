.class Landroid/net/wifi/AutoRegulatoryDomain$UpdateLogic$1;
.super Landroid/content/BroadcastReceiver;
.source "AutoRegulatoryDomain.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/AutoRegulatoryDomain$UpdateLogic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/net/wifi/AutoRegulatoryDomain$UpdateLogic;


# direct methods
.method constructor <init>(Landroid/net/wifi/AutoRegulatoryDomain$UpdateLogic;)V
    .locals 0
    .parameter

    .prologue
    .line 98
    iput-object p1, p0, Landroid/net/wifi/AutoRegulatoryDomain$UpdateLogic$1;->this$1:Landroid/net/wifi/AutoRegulatoryDomain$UpdateLogic;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 101
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 102
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.SERVICE_STATE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 103
    iget-object v1, p0, Landroid/net/wifi/AutoRegulatoryDomain$UpdateLogic$1;->this$1:Landroid/net/wifi/AutoRegulatoryDomain$UpdateLogic;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/net/wifi/AutoRegulatoryDomain$UpdateLogic;->sendEmptyMessage(I)Z

    .line 107
    :cond_0
    :goto_0
    return-void

    .line 104
    :cond_1
    const-string v1, "com.sonyericsson.intent.action.HYSTERESIS_TIMER"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 105
    iget-object v1, p0, Landroid/net/wifi/AutoRegulatoryDomain$UpdateLogic$1;->this$1:Landroid/net/wifi/AutoRegulatoryDomain$UpdateLogic;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/net/wifi/AutoRegulatoryDomain$UpdateLogic;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

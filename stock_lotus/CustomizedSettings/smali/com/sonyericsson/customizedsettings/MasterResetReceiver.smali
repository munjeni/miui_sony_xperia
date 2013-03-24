.class public Lcom/sonyericsson/customizedsettings/MasterResetReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MasterResetReceiver.java"


# static fields
.field static final MASTER_RESET:Ljava/lang/String; = "com.sonyericsson.settings.MASTERRESET"

.field static final MASTER_RESET_SERVICE:Ljava/lang/String; = "com.sonyericsson.settings.service.MASTERRESET"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 27
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 29
    .local v0, action:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v3, "com.sonyericsson.settings.MASTERRESET"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 31
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 32
    .local v1, activityIntent:Landroid/content/Intent;
    const-class v3, Lcom/sonyericsson/customizedsettings/MasterResetActivity;

    invoke-virtual {v1, p1, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 33
    const/high16 v3, 0x1000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 34
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 38
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 39
    .local v2, serviceIntent:Landroid/content/Intent;
    const-class v3, Lcom/sonyericsson/customizedsettings/MasterResetService;

    invoke-virtual {v2, p1, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 40
    const-string v3, "com.sonyericsson.settings.service.MASTERRESET"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 41
    invoke-virtual {p1, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 43
    .end local v1           #activityIntent:Landroid/content/Intent;
    .end local v2           #serviceIntent:Landroid/content/Intent;
    :cond_0
    return-void
.end method

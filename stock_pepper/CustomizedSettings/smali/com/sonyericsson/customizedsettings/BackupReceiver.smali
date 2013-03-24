.class public Lcom/sonyericsson/customizedsettings/BackupReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BackupReceiver.java"


# static fields
.field static final BACKUP:Ljava/lang/String; = "com.sonyericsson.settings.BACKUP"

.field static final BACKUP_SERVICE:Ljava/lang/String; = "com.sonyericsson.settings.service.BACKUP"


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
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 27
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 29
    .local v0, action:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v2, "com.sonyericsson.settings.BACKUP"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 30
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 31
    .local v1, serviceIntent:Landroid/content/Intent;
    const-class v2, Lcom/sonyericsson/customizedsettings/MasterResetService;

    invoke-virtual {v1, p1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 32
    const-string v2, "com.sonyericsson.settings.service.BACKUP"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 33
    invoke-virtual {p1, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 35
    .end local v1           #serviceIntent:Landroid/content/Intent;
    :cond_0
    return-void
.end method

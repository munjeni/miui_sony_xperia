.class public Lcom/sonyericsson/customizedsettings/NewSoftwareReceiver;
.super Lcom/sonyericsson/customizedsettings/BootUpCompletedReceiver;
.source "NewSoftwareReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/sonyericsson/customizedsettings/BootUpCompletedReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 24
    const-string v0, "com.sonyericsson.system.intent.action.NEW_SOFTWARE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 26
    invoke-super {p0, p1, p2}, Lcom/sonyericsson/customizedsettings/BootUpCompletedReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 28
    :cond_0
    return-void
.end method

.class Lcom/sonyericsson/customizedsettings/MasterResetActivity$1;
.super Ljava/util/TimerTask;
.source "MasterResetActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/customizedsettings/MasterResetActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/customizedsettings/MasterResetActivity;


# direct methods
.method constructor <init>(Lcom/sonyericsson/customizedsettings/MasterResetActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 78
    iput-object p1, p0, Lcom/sonyericsson/customizedsettings/MasterResetActivity$1;->this$0:Lcom/sonyericsson/customizedsettings/MasterResetActivity;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 82
    :goto_0
    invoke-static {}, Lcom/sonyericsson/customizedsettings/MasterResetChecker;->resetDone()Z

    move-result v1

    if-nez v1, :cond_0

    .line 84
    const-wide/16 v1, 0x1f4

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 85
    :catch_0
    move-exception v0

    .line 86
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 94
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/customizedsettings/MasterResetActivity$1;->this$0:Lcom/sonyericsson/customizedsettings/MasterResetActivity;

    #calls: Lcom/sonyericsson/customizedsettings/MasterResetActivity;->setAirplaneModeOff()V
    invoke-static {v1}, Lcom/sonyericsson/customizedsettings/MasterResetActivity;->access$000(Lcom/sonyericsson/customizedsettings/MasterResetActivity;)V

    .line 95
    iget-object v1, p0, Lcom/sonyericsson/customizedsettings/MasterResetActivity$1;->this$0:Lcom/sonyericsson/customizedsettings/MasterResetActivity;

    #calls: Lcom/sonyericsson/customizedsettings/MasterResetActivity;->startRebootActivity()V
    invoke-static {v1}, Lcom/sonyericsson/customizedsettings/MasterResetActivity;->access$100(Lcom/sonyericsson/customizedsettings/MasterResetActivity;)V

    .line 96
    return-void
.end method

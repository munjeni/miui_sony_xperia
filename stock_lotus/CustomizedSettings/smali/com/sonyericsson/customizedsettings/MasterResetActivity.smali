.class public Lcom/sonyericsson/customizedsettings/MasterResetActivity;
.super Landroid/app/Activity;
.source "MasterResetActivity.java"


# static fields
.field public static final DEBUG:Z = false

.field static final NUMBER_OF_PROGRESS_UPDATES:I = 0x64

.field private static final TAG:Ljava/lang/String; = "MasterResetActivity"


# instance fields
.field private mProgressBar:Landroid/widget/ProgressBar;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/customizedsettings/MasterResetActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/sonyericsson/customizedsettings/MasterResetActivity;->setAirplaneModeOff()V

    return-void
.end method

.method static synthetic access$100(Lcom/sonyericsson/customizedsettings/MasterResetActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/sonyericsson/customizedsettings/MasterResetActivity;->startRebootActivity()V

    return-void
.end method

.method private setAirplaneModeOff()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 134
    invoke-virtual {p0}, Lcom/sonyericsson/customizedsettings/MasterResetActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 136
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 137
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 138
    const-string v1, "state"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 139
    invoke-virtual {p0, v0}, Lcom/sonyericsson/customizedsettings/MasterResetActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 140
    return-void
.end method

.method private startRebootActivity()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 117
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 118
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.action.REBOOT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 120
    const-string v1, "nowait"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 122
    const-string v1, "interval"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 124
    const-string v1, "window"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 126
    invoke-virtual {p0, v0}, Lcom/sonyericsson/customizedsettings/MasterResetActivity;->startActivity(Landroid/content/Intent;)V

    .line 127
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x0

    .line 43
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 45
    if-eqz p1, :cond_0

    const-string v4, "progress"

    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 52
    .local v6, progress:I
    :goto_0
    const-string v4, "android.permission.MASTER_CLEAR"

    invoke-virtual {p0, v4}, Lcom/sonyericsson/customizedsettings/MasterResetActivity;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_1

    .line 53
    const-string v4, "Master Reset"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Permission Denial: can\'t invoke masterClear from pid="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "uid="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    new-instance v4, Ljava/lang/SecurityException;

    invoke-direct {v4}, Ljava/lang/SecurityException;-><init>()V

    throw v4

    .end local v6           #progress:I
    :cond_0
    move v6, v5

    .line 45
    goto :goto_0

    .line 58
    .restart local v6       #progress:I
    :cond_1
    const/high16 v4, 0x7f02

    invoke-virtual {p0, v4}, Lcom/sonyericsson/customizedsettings/MasterResetActivity;->setContentView(I)V

    .line 60
    const v4, 0x7f060002

    invoke-virtual {p0, v4}, Lcom/sonyericsson/customizedsettings/MasterResetActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ProgressBar;

    iput-object v4, p0, Lcom/sonyericsson/customizedsettings/MasterResetActivity;->mProgressBar:Landroid/widget/ProgressBar;

    .line 61
    iget-object v4, p0, Lcom/sonyericsson/customizedsettings/MasterResetActivity;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v4, v5}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 62
    iget-object v4, p0, Lcom/sonyericsson/customizedsettings/MasterResetActivity;->mProgressBar:Landroid/widget/ProgressBar;

    const/16 v5, 0x64

    invoke-virtual {v4, v5}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 63
    iget-object v4, p0, Lcom/sonyericsson/customizedsettings/MasterResetActivity;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/ProgressBar;->setHorizontalScrollBarEnabled(Z)V

    .line 65
    new-instance v1, Lcom/sonyericsson/customizedsettings/ProgressUpdateTask;

    iget-object v4, p0, Lcom/sonyericsson/customizedsettings/MasterResetActivity;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-direct {v1, v4, v6}, Lcom/sonyericsson/customizedsettings/ProgressUpdateTask;-><init>(Landroid/widget/ProgressBar;I)V

    .line 71
    .local v1, timerTask:Ljava/util/TimerTask;
    const-wide/16 v2, 0x64

    .line 73
    .local v2, updateTime:J
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    .local v0, timer:Ljava/util/Timer;
    move-wide v4, v2

    .line 75
    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    .line 78
    new-instance v4, Lcom/sonyericsson/customizedsettings/MasterResetActivity$1;

    invoke-direct {v4, p0}, Lcom/sonyericsson/customizedsettings/MasterResetActivity$1;-><init>(Lcom/sonyericsson/customizedsettings/MasterResetActivity;)V

    const-wide/16 v7, 0x2710

    invoke-virtual {v0, v4, v7, v8}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 98
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "saveState"

    .prologue
    .line 102
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 103
    const-string v0, "progress"

    iget-object v1, p0, Lcom/sonyericsson/customizedsettings/MasterResetActivity;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 107
    return-void
.end method

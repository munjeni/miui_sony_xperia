.class Lmiui/app/screenelement/ActionCommand$DataSwitchCommand;
.super Lmiui/app/screenelement/ActionCommand$NotificationReceiver;
.source "ActionCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/app/screenelement/ActionCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DataSwitchCommand"
.end annotation


# instance fields
.field private mApnEnable:Z

.field private mCm:Landroid/net/ConnectivityManager;

.field private mOnOffHelper:Lmiui/app/screenelement/ActionCommand$OnOffCommandHelper;


# direct methods
.method public constructor <init>(Lmiui/app/screenelement/ScreenContext;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "value"

    .prologue
    .line 582
    const-string v0, "data_state"

    sget-object v1, Lmiui/app/screenelement/NotifierManager$NotifierType;->MobileData:Lmiui/app/screenelement/NotifierManager$NotifierType;

    invoke-direct {p0, p1, v0, v1}, Lmiui/app/screenelement/ActionCommand$NotificationReceiver;-><init>(Lmiui/app/screenelement/ScreenContext;Ljava/lang/String;Lmiui/app/screenelement/NotifierManager$NotifierType;)V

    .line 583
    new-instance v0, Lmiui/app/screenelement/ActionCommand$OnOffCommandHelper;

    invoke-direct {v0, p2}, Lmiui/app/screenelement/ActionCommand$OnOffCommandHelper;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lmiui/app/screenelement/ActionCommand$DataSwitchCommand;->mOnOffHelper:Lmiui/app/screenelement/ActionCommand$OnOffCommandHelper;

    .line 584
    return-void
.end method

.method private ensureConnectivityManager()Z
    .locals 2

    .prologue
    .line 587
    iget-object v0, p0, Lmiui/app/screenelement/ActionCommand$DataSwitchCommand;->mCm:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_0

    .line 588
    iget-object v0, p0, Lmiui/app/screenelement/ActionCommand$DataSwitchCommand;->mContext:Lmiui/app/screenelement/ScreenContext;

    iget-object v0, v0, Lmiui/app/screenelement/ScreenContext;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lmiui/app/screenelement/ActionCommand$DataSwitchCommand;->mCm:Landroid/net/ConnectivityManager;

    .line 590
    :cond_0
    iget-object v0, p0, Lmiui/app/screenelement/ActionCommand$DataSwitchCommand;->mCm:Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected doPerform()V
    .locals 2

    .prologue
    .line 604
    invoke-direct {p0}, Lmiui/app/screenelement/ActionCommand$DataSwitchCommand;->ensureConnectivityManager()Z

    move-result v1

    if-nez v1, :cond_1

    .line 615
    :cond_0
    :goto_0
    return-void

    .line 607
    :cond_1
    iget-boolean v0, p0, Lmiui/app/screenelement/ActionCommand$DataSwitchCommand;->mApnEnable:Z

    .line 608
    .local v0, enable:Z
    iget-object v1, p0, Lmiui/app/screenelement/ActionCommand$DataSwitchCommand;->mOnOffHelper:Lmiui/app/screenelement/ActionCommand$OnOffCommandHelper;

    iget-boolean v1, v1, Lmiui/app/screenelement/ActionCommand$OnOffCommandHelper;->mIsToggle:Z

    if-eqz v1, :cond_3

    .line 609
    iget-boolean v1, p0, Lmiui/app/screenelement/ActionCommand$DataSwitchCommand;->mApnEnable:Z

    if-nez v1, :cond_2

    const/4 v0, 0x1

    .line 613
    :goto_1
    iget-boolean v1, p0, Lmiui/app/screenelement/ActionCommand$DataSwitchCommand;->mApnEnable:Z

    if-eq v1, v0, :cond_0

    .line 614
    iget-object v1, p0, Lmiui/app/screenelement/ActionCommand$DataSwitchCommand;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v1, v0}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    goto :goto_0

    .line 609
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 611
    :cond_3
    iget-object v1, p0, Lmiui/app/screenelement/ActionCommand$DataSwitchCommand;->mOnOffHelper:Lmiui/app/screenelement/ActionCommand$OnOffCommandHelper;

    iget-boolean v0, v1, Lmiui/app/screenelement/ActionCommand$OnOffCommandHelper;->mIsOn:Z

    goto :goto_1
.end method

.method protected update()V
    .locals 1

    .prologue
    .line 595
    invoke-direct {p0}, Lmiui/app/screenelement/ActionCommand$DataSwitchCommand;->ensureConnectivityManager()Z

    move-result v0

    if-nez v0, :cond_0

    .line 600
    :goto_0
    return-void

    .line 598
    :cond_0
    iget-object v0, p0, Lmiui/app/screenelement/ActionCommand$DataSwitchCommand;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lmiui/app/screenelement/ActionCommand$DataSwitchCommand;->mApnEnable:Z

    .line 599
    iget-boolean v0, p0, Lmiui/app/screenelement/ActionCommand$DataSwitchCommand;->mApnEnable:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {p0, v0}, Lmiui/app/screenelement/ActionCommand$DataSwitchCommand;->updateState(I)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

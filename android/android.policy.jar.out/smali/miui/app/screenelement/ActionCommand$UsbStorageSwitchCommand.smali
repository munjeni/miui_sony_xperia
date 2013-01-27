.class Lmiui/app/screenelement/ActionCommand$UsbStorageSwitchCommand;
.super Lmiui/app/screenelement/ActionCommand$NotificationReceiver;
.source "ActionCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/app/screenelement/ActionCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UsbStorageSwitchCommand"
.end annotation


# instance fields
.field private mConnected:Z

.field private mOnOffHelper:Lmiui/app/screenelement/ActionCommand$OnOffCommandHelper;

.field private mStorageManager:Landroid/os/storage/StorageManager;


# direct methods
.method public constructor <init>(Lmiui/app/screenelement/ScreenContext;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "value"

    .prologue
    .line 685
    const-string v0, "usb_mode"

    sget-object v1, Lmiui/app/screenelement/NotifierManager$NotifierType;->UsbState:Lmiui/app/screenelement/NotifierManager$NotifierType;

    invoke-direct {p0, p1, v0, v1}, Lmiui/app/screenelement/ActionCommand$NotificationReceiver;-><init>(Lmiui/app/screenelement/ScreenContext;Ljava/lang/String;Lmiui/app/screenelement/NotifierManager$NotifierType;)V

    .line 686
    new-instance v0, Lmiui/app/screenelement/ActionCommand$OnOffCommandHelper;

    invoke-direct {v0, p2}, Lmiui/app/screenelement/ActionCommand$OnOffCommandHelper;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lmiui/app/screenelement/ActionCommand$UsbStorageSwitchCommand;->mOnOffHelper:Lmiui/app/screenelement/ActionCommand$OnOffCommandHelper;

    .line 687
    return-void
.end method

.method static synthetic access$300(Lmiui/app/screenelement/ActionCommand$UsbStorageSwitchCommand;)Landroid/os/storage/StorageManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 679
    iget-object v0, p0, Lmiui/app/screenelement/ActionCommand$UsbStorageSwitchCommand;->mStorageManager:Landroid/os/storage/StorageManager;

    return-object v0
.end method


# virtual methods
.method protected doPerform()V
    .locals 4

    .prologue
    .line 696
    iget-object v3, p0, Lmiui/app/screenelement/ActionCommand$UsbStorageSwitchCommand;->mStorageManager:Landroid/os/storage/StorageManager;

    if-nez v3, :cond_1

    .line 722
    :cond_0
    :goto_0
    return-void

    .line 699
    :cond_1
    iget-object v3, p0, Lmiui/app/screenelement/ActionCommand$UsbStorageSwitchCommand;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v3}, Landroid/os/storage/StorageManager;->isUsbMassStorageEnabled()Z

    move-result v1

    .line 700
    .local v1, enabled:Z
    const/4 v2, 0x0

    .line 701
    .local v2, on:Z
    iget-object v3, p0, Lmiui/app/screenelement/ActionCommand$UsbStorageSwitchCommand;->mOnOffHelper:Lmiui/app/screenelement/ActionCommand$OnOffCommandHelper;

    iget-boolean v3, v3, Lmiui/app/screenelement/ActionCommand$OnOffCommandHelper;->mIsToggle:Z

    if-eqz v3, :cond_3

    .line 702
    if-nez v1, :cond_2

    const/4 v2, 0x1

    .line 710
    :goto_1
    const/4 v3, 0x3

    invoke-virtual {p0, v3}, Lmiui/app/screenelement/ActionCommand$UsbStorageSwitchCommand;->updateState(I)V

    .line 711
    move v0, v2

    .line 712
    .local v0, _on:Z
    new-instance v3, Lmiui/app/screenelement/ActionCommand$UsbStorageSwitchCommand$1;

    invoke-direct {v3, p0, v0}, Lmiui/app/screenelement/ActionCommand$UsbStorageSwitchCommand$1;-><init>(Lmiui/app/screenelement/ActionCommand$UsbStorageSwitchCommand;Z)V

    invoke-virtual {v3}, Lmiui/app/screenelement/ActionCommand$UsbStorageSwitchCommand$1;->start()V

    goto :goto_0

    .line 702
    .end local v0           #_on:Z
    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    .line 704
    :cond_3
    iget-object v3, p0, Lmiui/app/screenelement/ActionCommand$UsbStorageSwitchCommand;->mOnOffHelper:Lmiui/app/screenelement/ActionCommand$OnOffCommandHelper;

    iget-boolean v3, v3, Lmiui/app/screenelement/ActionCommand$OnOffCommandHelper;->mIsOn:Z

    if-eq v3, v1, :cond_0

    .line 706
    iget-object v3, p0, Lmiui/app/screenelement/ActionCommand$UsbStorageSwitchCommand;->mOnOffHelper:Lmiui/app/screenelement/ActionCommand$OnOffCommandHelper;

    iget-boolean v2, v3, Lmiui/app/screenelement/ActionCommand$OnOffCommandHelper;->mIsOn:Z

    goto :goto_1
.end method

.method public onNotify(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/Object;)V
    .locals 2
    .parameter "context"
    .parameter "intent"
    .parameter "o"

    .prologue
    .line 690
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "connected"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lmiui/app/screenelement/ActionCommand$UsbStorageSwitchCommand;->mConnected:Z

    .line 691
    invoke-super {p0, p1, p2, p3}, Lmiui/app/screenelement/ActionCommand$NotificationReceiver;->onNotify(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/Object;)V

    .line 692
    return-void
.end method

.method protected update()V
    .locals 3

    .prologue
    .line 726
    iget-object v1, p0, Lmiui/app/screenelement/ActionCommand$UsbStorageSwitchCommand;->mStorageManager:Landroid/os/storage/StorageManager;

    if-nez v1, :cond_0

    .line 727
    iget-object v1, p0, Lmiui/app/screenelement/ActionCommand$UsbStorageSwitchCommand;->mContext:Lmiui/app/screenelement/ScreenContext;

    iget-object v1, v1, Lmiui/app/screenelement/ScreenContext;->mContext:Landroid/content/Context;

    const-string v2, "storage"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/StorageManager;

    iput-object v1, p0, Lmiui/app/screenelement/ActionCommand$UsbStorageSwitchCommand;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 728
    iget-object v1, p0, Lmiui/app/screenelement/ActionCommand$UsbStorageSwitchCommand;->mStorageManager:Landroid/os/storage/StorageManager;

    if-nez v1, :cond_0

    .line 729
    const-string v1, "ActionCommand"

    const-string v2, "Failed to get StorageManager"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 736
    :goto_0
    return-void

    .line 734
    :cond_0
    iget-object v1, p0, Lmiui/app/screenelement/ActionCommand$UsbStorageSwitchCommand;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v1}, Landroid/os/storage/StorageManager;->isUsbMassStorageEnabled()Z

    move-result v0

    .line 735
    .local v0, enabled:Z
    iget-boolean v1, p0, Lmiui/app/screenelement/ActionCommand$UsbStorageSwitchCommand;->mConnected:Z

    if-eqz v1, :cond_2

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    :goto_1
    invoke-virtual {p0, v1}, Lmiui/app/screenelement/ActionCommand$UsbStorageSwitchCommand;->updateState(I)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

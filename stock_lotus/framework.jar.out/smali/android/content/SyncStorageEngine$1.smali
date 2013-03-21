.class Landroid/content/SyncStorageEngine$1;
.super Landroid/content/BroadcastReceiver;
.source "SyncStorageEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/SyncStorageEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/content/SyncStorageEngine;


# direct methods
.method constructor <init>(Landroid/content/SyncStorageEngine;)V
    .locals 0
    .parameter

    .prologue
    .line 2194
    iput-object p1, p0, Landroid/content/SyncStorageEngine$1;->this$0:Landroid/content/SyncStorageEngine;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 2196
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2197
    .local v0, action:Ljava/lang/String;
    const-string/jumbo v3, "phone"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 2200
    .local v1, telephonyManager:Landroid/telephony/TelephonyManager;
    const-string v3, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "LOADED"

    const-string/jumbo v4, "ss"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2203
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v2

    .line 2205
    .local v2, tempMccMnc:Ljava/lang/String;
    iget-object v3, p0, Landroid/content/SyncStorageEngine$1;->this$0:Landroid/content/SyncStorageEngine;

    #getter for: Landroid/content/SyncStorageEngine;->mMccMnc:Ljava/lang/String;
    invoke-static {v3}, Landroid/content/SyncStorageEngine;->access$000(Landroid/content/SyncStorageEngine;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2207
    iget-object v3, p0, Landroid/content/SyncStorageEngine$1;->this$0:Landroid/content/SyncStorageEngine;

    #setter for: Landroid/content/SyncStorageEngine;->mMccMnc:Ljava/lang/String;
    invoke-static {v3, v2}, Landroid/content/SyncStorageEngine;->access$002(Landroid/content/SyncStorageEngine;Ljava/lang/String;)Ljava/lang/String;

    .line 2209
    iget-object v3, p0, Landroid/content/SyncStorageEngine$1;->this$0:Landroid/content/SyncStorageEngine;

    iget-object v4, p0, Landroid/content/SyncStorageEngine$1;->this$0:Landroid/content/SyncStorageEngine;

    #getter for: Landroid/content/SyncStorageEngine;->mContext:Landroid/content/Context;
    invoke-static {v4}, Landroid/content/SyncStorageEngine;->access$100(Landroid/content/SyncStorageEngine;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1110035

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/SyncStorageEngine;->setMasterSyncAutomatically(Z)V

    .line 2214
    .end local v2           #tempMccMnc:Ljava/lang/String;
    :cond_0
    return-void
.end method

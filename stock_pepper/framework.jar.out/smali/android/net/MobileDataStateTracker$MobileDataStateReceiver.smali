.class Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MobileDataStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/MobileDataStateTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MobileDataStateReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/MobileDataStateTracker;


# direct methods
.method private constructor <init>(Landroid/net/MobileDataStateTracker;)V
    .locals 0
    .parameter

    .prologue
    .line 187
    iput-object p1, p0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/net/MobileDataStateTracker;Landroid/net/MobileDataStateTracker$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 187
    invoke-direct {p0, p1}, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;-><init>(Landroid/net/MobileDataStateTracker;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v8, 0x0

    .line 190
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    const-string v9, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 192
    const-string v7, "apnType"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 198
    .local v2, apnType:Ljava/lang/String;
    iget-object v7, p0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    #getter for: Landroid/net/MobileDataStateTracker;->mApnType:Ljava/lang/String;
    invoke-static {v7}, Landroid/net/MobileDataStateTracker;->access$200(Landroid/net/MobileDataStateTracker;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 309
    .end local v2           #apnType:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 201
    .restart local v2       #apnType:Ljava/lang/String;
    :cond_1
    iget-object v7, p0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    #getter for: Landroid/net/MobileDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v7}, Landroid/net/MobileDataStateTracker;->access$300(Landroid/net/MobileDataStateTracker;)Landroid/net/NetworkInfo;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v4

    .line 202
    .local v4, oldSubtype:I
    iget-object v7, p0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    #getter for: Landroid/net/MobileDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v7}, Landroid/net/MobileDataStateTracker;->access$300(Landroid/net/MobileDataStateTracker;)Landroid/net/NetworkInfo;

    move-result-object v7

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v9

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v10

    invoke-virtual {v10}, Landroid/telephony/TelephonyManager;->getNetworkTypeName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v9, v10}, Landroid/net/NetworkInfo;->setSubtype(ILjava/lang/String;)V

    .line 204
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v7

    if-eq v7, v4, :cond_2

    iget-object v7, p0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    #getter for: Landroid/net/MobileDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v7}, Landroid/net/MobileDataStateTracker;->access$300(Landroid/net/MobileDataStateTracker;)Landroid/net/NetworkInfo;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 206
    iget-object v7, p0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    #getter for: Landroid/net/MobileDataStateTracker;->mTarget:Landroid/os/Handler;
    invoke-static {v7}, Landroid/net/MobileDataStateTracker;->access$400(Landroid/net/MobileDataStateTracker;)Landroid/os/Handler;

    move-result-object v7

    const/4 v9, 0x7

    iget-object v10, p0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    #getter for: Landroid/net/MobileDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v10}, Landroid/net/MobileDataStateTracker;->access$300(Landroid/net/MobileDataStateTracker;)Landroid/net/NetworkInfo;

    move-result-object v10

    invoke-virtual {v7, v9, v4, v8, v10}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 208
    .local v3, msg:Landroid/os/Message;
    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 211
    .end local v3           #msg:Landroid/os/Message;
    :cond_2
    const-class v7, Lcom/android/internal/telephony/Phone$DataState;

    const-string/jumbo v9, "state"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/Phone$DataState;

    .line 213
    .local v6, state:Lcom/android/internal/telephony/Phone$DataState;
    const-string/jumbo v7, "reason"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 214
    .local v5, reason:Ljava/lang/String;
    const-string v7, "apn"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 215
    .local v1, apnName:Ljava/lang/String;
    iget-object v7, p0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    #getter for: Landroid/net/MobileDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v7}, Landroid/net/MobileDataStateTracker;->access$300(Landroid/net/MobileDataStateTracker;)Landroid/net/NetworkInfo;

    move-result-object v7

    const-string/jumbo v9, "networkRoaming"

    invoke-virtual {p2, v9, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v9

    invoke-virtual {v7, v9}, Landroid/net/NetworkInfo;->setRoaming(Z)V

    .line 221
    iget-object v7, p0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    #getter for: Landroid/net/MobileDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v7}, Landroid/net/MobileDataStateTracker;->access$300(Landroid/net/MobileDataStateTracker;)Landroid/net/NetworkInfo;

    move-result-object v9

    const-string/jumbo v7, "networkUnvailable"

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    if-nez v7, :cond_4

    const/4 v7, 0x1

    :goto_1
    invoke-virtual {v9, v7}, Landroid/net/NetworkInfo;->setIsAvailable(Z)V

    .line 228
    iget-object v7, p0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    #getter for: Landroid/net/MobileDataStateTracker;->mMobileDataState:Lcom/android/internal/telephony/Phone$DataState;
    invoke-static {v7}, Landroid/net/MobileDataStateTracker;->access$500(Landroid/net/MobileDataStateTracker;)Lcom/android/internal/telephony/Phone$DataState;

    move-result-object v7

    if-eq v7, v6, :cond_7

    .line 229
    iget-object v7, p0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    #setter for: Landroid/net/MobileDataStateTracker;->mMobileDataState:Lcom/android/internal/telephony/Phone$DataState;
    invoke-static {v7, v6}, Landroid/net/MobileDataStateTracker;->access$502(Landroid/net/MobileDataStateTracker;Lcom/android/internal/telephony/Phone$DataState;)Lcom/android/internal/telephony/Phone$DataState;

    .line 230
    sget-object v7, Landroid/net/MobileDataStateTracker$1;->$SwitchMap$com$android$internal$telephony$Phone$DataState:[I

    invoke-virtual {v6}, Lcom/android/internal/telephony/Phone$DataState;->ordinal()I

    move-result v9

    aget v7, v7, v9

    packed-switch v7, :pswitch_data_0

    goto/16 :goto_0

    .line 232
    :pswitch_0
    iget-object v7, p0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    invoke-virtual {v7}, Landroid/net/MobileDataStateTracker;->isTeardownRequested()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 233
    iget-object v7, p0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    invoke-virtual {v7, v8}, Landroid/net/MobileDataStateTracker;->setTeardownRequested(Z)V

    .line 236
    :cond_3
    iget-object v7, p0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    sget-object v8, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    #calls: Landroid/net/MobileDataStateTracker;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v7, v8, v5, v1}, Landroid/net/MobileDataStateTracker;->access$600(Landroid/net/MobileDataStateTracker;Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    move v7, v8

    .line 221
    goto :goto_1

    .line 245
    :pswitch_1
    iget-object v7, p0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    sget-object v8, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    #calls: Landroid/net/MobileDataStateTracker;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v7, v8, v5, v1}, Landroid/net/MobileDataStateTracker;->access$600(Landroid/net/MobileDataStateTracker;Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 248
    :pswitch_2
    iget-object v7, p0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    sget-object v8, Landroid/net/NetworkInfo$DetailedState;->SUSPENDED:Landroid/net/NetworkInfo$DetailedState;

    #calls: Landroid/net/MobileDataStateTracker;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v7, v8, v5, v1}, Landroid/net/MobileDataStateTracker;->access$600(Landroid/net/MobileDataStateTracker;Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 251
    :pswitch_3
    iget-object v8, p0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    const-string v7, "linkProperties"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Landroid/net/LinkProperties;

    #setter for: Landroid/net/MobileDataStateTracker;->mLinkProperties:Landroid/net/LinkProperties;
    invoke-static {v8, v7}, Landroid/net/MobileDataStateTracker;->access$702(Landroid/net/MobileDataStateTracker;Landroid/net/LinkProperties;)Landroid/net/LinkProperties;

    .line 253
    iget-object v7, p0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    #getter for: Landroid/net/MobileDataStateTracker;->mLinkProperties:Landroid/net/LinkProperties;
    invoke-static {v7}, Landroid/net/MobileDataStateTracker;->access$700(Landroid/net/MobileDataStateTracker;)Landroid/net/LinkProperties;

    move-result-object v7

    if-nez v7, :cond_5

    .line 254
    iget-object v7, p0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    const-string v8, "CONNECTED event did not supply link properties."

    #calls: Landroid/net/MobileDataStateTracker;->loge(Ljava/lang/String;)V
    invoke-static {v7, v8}, Landroid/net/MobileDataStateTracker;->access$800(Landroid/net/MobileDataStateTracker;Ljava/lang/String;)V

    .line 255
    iget-object v7, p0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    new-instance v8, Landroid/net/LinkProperties;

    invoke-direct {v8}, Landroid/net/LinkProperties;-><init>()V

    #setter for: Landroid/net/MobileDataStateTracker;->mLinkProperties:Landroid/net/LinkProperties;
    invoke-static {v7, v8}, Landroid/net/MobileDataStateTracker;->access$702(Landroid/net/MobileDataStateTracker;Landroid/net/LinkProperties;)Landroid/net/LinkProperties;

    .line 257
    :cond_5
    iget-object v8, p0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    const-string v7, "linkCapabilities"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Landroid/net/LinkCapabilities;

    #setter for: Landroid/net/MobileDataStateTracker;->mLinkCapabilities:Landroid/net/LinkCapabilities;
    invoke-static {v8, v7}, Landroid/net/MobileDataStateTracker;->access$902(Landroid/net/MobileDataStateTracker;Landroid/net/LinkCapabilities;)Landroid/net/LinkCapabilities;

    .line 259
    iget-object v7, p0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    #getter for: Landroid/net/MobileDataStateTracker;->mLinkCapabilities:Landroid/net/LinkCapabilities;
    invoke-static {v7}, Landroid/net/MobileDataStateTracker;->access$900(Landroid/net/MobileDataStateTracker;)Landroid/net/LinkCapabilities;

    move-result-object v7

    if-nez v7, :cond_6

    .line 260
    iget-object v7, p0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    const-string v8, "CONNECTED event did not supply link capabilities."

    #calls: Landroid/net/MobileDataStateTracker;->loge(Ljava/lang/String;)V
    invoke-static {v7, v8}, Landroid/net/MobileDataStateTracker;->access$800(Landroid/net/MobileDataStateTracker;Ljava/lang/String;)V

    .line 261
    iget-object v7, p0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    new-instance v8, Landroid/net/LinkCapabilities;

    invoke-direct {v8}, Landroid/net/LinkCapabilities;-><init>()V

    #setter for: Landroid/net/MobileDataStateTracker;->mLinkCapabilities:Landroid/net/LinkCapabilities;
    invoke-static {v7, v8}, Landroid/net/MobileDataStateTracker;->access$902(Landroid/net/MobileDataStateTracker;Landroid/net/LinkCapabilities;)Landroid/net/LinkCapabilities;

    .line 263
    :cond_6
    iget-object v7, p0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    sget-object v8, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    #calls: Landroid/net/MobileDataStateTracker;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v7, v8, v5, v1}, Landroid/net/MobileDataStateTracker;->access$600(Landroid/net/MobileDataStateTracker;Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 268
    :cond_7
    const-string v7, "linkPropertiesChanged"

    invoke-static {v5, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 269
    iget-object v8, p0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    const-string v7, "linkProperties"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Landroid/net/LinkProperties;

    #setter for: Landroid/net/MobileDataStateTracker;->mLinkProperties:Landroid/net/LinkProperties;
    invoke-static {v8, v7}, Landroid/net/MobileDataStateTracker;->access$702(Landroid/net/MobileDataStateTracker;Landroid/net/LinkProperties;)Landroid/net/LinkProperties;

    .line 270
    iget-object v7, p0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    #getter for: Landroid/net/MobileDataStateTracker;->mLinkProperties:Landroid/net/LinkProperties;
    invoke-static {v7}, Landroid/net/MobileDataStateTracker;->access$700(Landroid/net/MobileDataStateTracker;)Landroid/net/LinkProperties;

    move-result-object v7

    if-nez v7, :cond_8

    .line 271
    iget-object v7, p0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    const-string v8, "No link property in LINK_PROPERTIES change event."

    #calls: Landroid/net/MobileDataStateTracker;->loge(Ljava/lang/String;)V
    invoke-static {v7, v8}, Landroid/net/MobileDataStateTracker;->access$800(Landroid/net/MobileDataStateTracker;Ljava/lang/String;)V

    .line 272
    iget-object v7, p0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    new-instance v8, Landroid/net/LinkProperties;

    invoke-direct {v8}, Landroid/net/LinkProperties;-><init>()V

    #setter for: Landroid/net/MobileDataStateTracker;->mLinkProperties:Landroid/net/LinkProperties;
    invoke-static {v7, v8}, Landroid/net/MobileDataStateTracker;->access$702(Landroid/net/MobileDataStateTracker;Landroid/net/LinkProperties;)Landroid/net/LinkProperties;

    .line 275
    :cond_8
    iget-object v7, p0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    #getter for: Landroid/net/MobileDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v7}, Landroid/net/MobileDataStateTracker;->access$300(Landroid/net/MobileDataStateTracker;)Landroid/net/NetworkInfo;

    move-result-object v7

    iget-object v8, p0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    #getter for: Landroid/net/MobileDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v8}, Landroid/net/MobileDataStateTracker;->access$300(Landroid/net/MobileDataStateTracker;)Landroid/net/NetworkInfo;

    move-result-object v8

    invoke-virtual {v8}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v8

    iget-object v9, p0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    #getter for: Landroid/net/MobileDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v9}, Landroid/net/MobileDataStateTracker;->access$300(Landroid/net/MobileDataStateTracker;)Landroid/net/NetworkInfo;

    move-result-object v9

    invoke-virtual {v9}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v5, v9}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    iget-object v7, p0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    #getter for: Landroid/net/MobileDataStateTracker;->mTarget:Landroid/os/Handler;
    invoke-static {v7}, Landroid/net/MobileDataStateTracker;->access$400(Landroid/net/MobileDataStateTracker;)Landroid/os/Handler;

    move-result-object v7

    const/4 v8, 0x3

    iget-object v9, p0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    #getter for: Landroid/net/MobileDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v9}, Landroid/net/MobileDataStateTracker;->access$300(Landroid/net/MobileDataStateTracker;)Landroid/net/NetworkInfo;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 279
    .restart local v3       #msg:Landroid/os/Message;
    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 282
    .end local v1           #apnName:Ljava/lang/String;
    .end local v2           #apnType:Ljava/lang/String;
    .end local v3           #msg:Landroid/os/Message;
    .end local v4           #oldSubtype:I
    .end local v5           #reason:Ljava/lang/String;
    .end local v6           #state:Lcom/android/internal/telephony/Phone$DataState;
    :cond_9
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    const-string v8, "android.intent.action.DATA_CONNECTION_FAILED"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 284
    const-string v7, "apnType"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 285
    .restart local v2       #apnType:Ljava/lang/String;
    iget-object v7, p0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    #getter for: Landroid/net/MobileDataStateTracker;->mApnType:Ljava/lang/String;
    invoke-static {v7}, Landroid/net/MobileDataStateTracker;->access$200(Landroid/net/MobileDataStateTracker;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 293
    const-string/jumbo v7, "reason"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 294
    .restart local v5       #reason:Ljava/lang/String;
    const-string v7, "apn"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 299
    .restart local v1       #apnName:Ljava/lang/String;
    iget-object v7, p0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    sget-object v8, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    #calls: Landroid/net/MobileDataStateTracker;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v7, v8, v5, v1}, Landroid/net/MobileDataStateTracker;->access$600(Landroid/net/MobileDataStateTracker;Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 300
    .end local v1           #apnName:Ljava/lang/String;
    .end local v2           #apnType:Ljava/lang/String;
    .end local v5           #reason:Ljava/lang/String;
    :cond_a
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/android/internal/telephony/DataConnectionTracker;->ACTION_DATA_CONNECTION_TRACKER_MESSENGER:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 303
    iget-object v8, p0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    sget-object v7, Lcom/android/internal/telephony/DataConnectionTracker;->EXTRA_MESSENGER:Ljava/lang/String;

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Landroid/os/Messenger;

    #setter for: Landroid/net/MobileDataStateTracker;->mMessenger:Landroid/os/Messenger;
    invoke-static {v8, v7}, Landroid/net/MobileDataStateTracker;->access$1002(Landroid/net/MobileDataStateTracker;Landroid/os/Messenger;)Landroid/os/Messenger;

    .line 304
    new-instance v0, Lcom/android/internal/util/AsyncChannel;

    invoke-direct {v0}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    .line 305
    .local v0, ac:Lcom/android/internal/util/AsyncChannel;
    iget-object v7, p0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    #getter for: Landroid/net/MobileDataStateTracker;->mContext:Landroid/content/Context;
    invoke-static {v7}, Landroid/net/MobileDataStateTracker;->access$1100(Landroid/net/MobileDataStateTracker;)Landroid/content/Context;

    move-result-object v7

    iget-object v8, p0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    #getter for: Landroid/net/MobileDataStateTracker;->mHandler:Landroid/os/Handler;
    invoke-static {v8}, Landroid/net/MobileDataStateTracker;->access$1200(Landroid/net/MobileDataStateTracker;)Landroid/os/Handler;

    move-result-object v8

    iget-object v9, p0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    #getter for: Landroid/net/MobileDataStateTracker;->mMessenger:Landroid/os/Messenger;
    invoke-static {v9}, Landroid/net/MobileDataStateTracker;->access$1000(Landroid/net/MobileDataStateTracker;)Landroid/os/Messenger;

    move-result-object v9

    invoke-virtual {v0, v7, v8, v9}, Lcom/android/internal/util/AsyncChannel;->connect(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Messenger;)V

    goto/16 :goto_0

    .line 230
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

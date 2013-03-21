.class final Landroid/net/wifi/AutoRegulatoryDomain$CrdaUpdateLogic;
.super Landroid/net/wifi/AutoRegulatoryDomain$UpdateLogic;
.source "AutoRegulatoryDomain.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/AutoRegulatoryDomain;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CrdaUpdateLogic"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/AutoRegulatoryDomain;


# direct methods
.method public constructor <init>(Landroid/net/wifi/AutoRegulatoryDomain;Landroid/content/Context;Landroid/net/wifi/WifiStateMachine;)V
    .locals 0
    .parameter
    .parameter "context"
    .parameter "wifiStateMachine"

    .prologue
    iput-object p1, p0, Landroid/net/wifi/AutoRegulatoryDomain$CrdaUpdateLogic;->this$0:Landroid/net/wifi/AutoRegulatoryDomain;

    invoke-direct {p0, p1, p2, p3}, Landroid/net/wifi/AutoRegulatoryDomain$UpdateLogic;-><init>(Landroid/net/wifi/AutoRegulatoryDomain;Landroid/content/Context;Landroid/net/wifi/WifiStateMachine;)V

    return-void
.end method

.method private getCountryCode()Ljava/lang/String;
    .locals 3

    .prologue
    iget-object v1, p0, Landroid/net/wifi/AutoRegulatoryDomain$CrdaUpdateLogic;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/net/wifi/AutoRegulatoryDomain$CrdaUpdateLogic;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v0

    .local v0, countryCode:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/AutoRegulatoryDomain$CrdaUpdateLogic;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    .end local v0           #countryCode:Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0       #countryCode:Ljava/lang/String;
    :cond_0
    const-string v0, "US"

    goto :goto_0

    .end local v0           #countryCode:Ljava/lang/String;
    :cond_1
    const-string v0, "US"

    goto :goto_0
.end method


# virtual methods
.method protected doUpdate(Z)I
    .locals 1
    .parameter "force"

    .prologue
    invoke-direct {p0}, Landroid/net/wifi/AutoRegulatoryDomain$CrdaUpdateLogic;->getCountryCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Landroid/net/wifi/AutoRegulatoryDomain$CrdaUpdateLogic;->setCountryCode(Ljava/lang/String;Z)V

    const/4 v0, 0x1

    return v0
.end method

.class final Landroid/net/wifi/AutoRegulatoryDomain$MccUpdateLogic;
.super Landroid/net/wifi/AutoRegulatoryDomain$UpdateLogic;
.source "AutoRegulatoryDomain.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/AutoRegulatoryDomain;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MccUpdateLogic"
.end annotation


# static fields
.field private static final HIGH_CHANNEL_COUNTRY_CODE:Ljava/lang/String; = "SE"


# instance fields
.field private final mHighChannelSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mHighChannelsMccs:[Ljava/lang/String;

.field final synthetic this$0:Landroid/net/wifi/AutoRegulatoryDomain;


# direct methods
.method public constructor <init>(Landroid/net/wifi/AutoRegulatoryDomain;Landroid/content/Context;Landroid/net/wifi/WifiStateMachine;)V
    .locals 7
    .parameter
    .parameter "context"
    .parameter "wifiStateMachine"

    .prologue
    .line 264
    iput-object p1, p0, Landroid/net/wifi/AutoRegulatoryDomain$MccUpdateLogic;->this$0:Landroid/net/wifi/AutoRegulatoryDomain;

    .line 265
    invoke-direct {p0, p1, p2, p3}, Landroid/net/wifi/AutoRegulatoryDomain$UpdateLogic;-><init>(Landroid/net/wifi/AutoRegulatoryDomain;Landroid/content/Context;Landroid/net/wifi/WifiStateMachine;)V

    .line 257
    const/16 v4, 0x2b

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "204"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "206"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "208"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const-string v6, "212"

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const-string v6, "214"

    aput-object v6, v4, v5

    const/4 v5, 0x5

    const-string v6, "216"

    aput-object v6, v4, v5

    const/4 v5, 0x6

    const-string v6, "218"

    aput-object v6, v4, v5

    const/4 v5, 0x7

    const-string v6, "219"

    aput-object v6, v4, v5

    const/16 v5, 0x8

    const-string v6, "220"

    aput-object v6, v4, v5

    const/16 v5, 0x9

    const-string v6, "222"

    aput-object v6, v4, v5

    const/16 v5, 0xa

    const-string v6, "225"

    aput-object v6, v4, v5

    const/16 v5, 0xb

    const-string v6, "228"

    aput-object v6, v4, v5

    const/16 v5, 0xc

    const-string v6, "230"

    aput-object v6, v4, v5

    const/16 v5, 0xd

    const-string v6, "231"

    aput-object v6, v4, v5

    const/16 v5, 0xe

    const-string v6, "232"

    aput-object v6, v4, v5

    const/16 v5, 0xf

    const-string v6, "234"

    aput-object v6, v4, v5

    const/16 v5, 0x10

    const-string v6, "235"

    aput-object v6, v4, v5

    const/16 v5, 0x11

    const-string v6, "238"

    aput-object v6, v4, v5

    const/16 v5, 0x12

    const-string v6, "240"

    aput-object v6, v4, v5

    const/16 v5, 0x13

    const-string v6, "242"

    aput-object v6, v4, v5

    const/16 v5, 0x14

    const-string v6, "244"

    aput-object v6, v4, v5

    const/16 v5, 0x15

    const-string v6, "255"

    aput-object v6, v4, v5

    const/16 v5, 0x16

    const-string v6, "260"

    aput-object v6, v4, v5

    const/16 v5, 0x17

    const-string v6, "262"

    aput-object v6, v4, v5

    const/16 v5, 0x18

    const-string v6, "268"

    aput-object v6, v4, v5

    const/16 v5, 0x19

    const-string v6, "270"

    aput-object v6, v4, v5

    const/16 v5, 0x1a

    const-string v6, "272"

    aput-object v6, v4, v5

    const/16 v5, 0x1b

    const-string v6, "274"

    aput-object v6, v4, v5

    const/16 v5, 0x1c

    const-string v6, "290"

    aput-object v6, v4, v5

    const/16 v5, 0x1d

    const-string v6, "295"

    aput-object v6, v4, v5

    const/16 v5, 0x1e

    const-string v6, "340"

    aput-object v6, v4, v5

    const/16 v5, 0x1f

    const-string v6, "348"

    aput-object v6, v4, v5

    const/16 v5, 0x20

    const-string v6, "362"

    aput-object v6, v4, v5

    const/16 v5, 0x21

    const-string v6, "440"

    aput-object v6, v4, v5

    const/16 v5, 0x22

    const-string v6, "441"

    aput-object v6, v4, v5

    const/16 v5, 0x23

    const-string v6, "450"

    aput-object v6, v4, v5

    const/16 v5, 0x24

    const-string v6, "454"

    aput-object v6, v4, v5

    const/16 v5, 0x25

    const-string v6, "455"

    aput-object v6, v4, v5

    const/16 v5, 0x26

    const-string v6, "460"

    aput-object v6, v4, v5

    const/16 v5, 0x27

    const-string v6, "461"

    aput-object v6, v4, v5

    const/16 v5, 0x28

    const-string v6, "547"

    aput-object v6, v4, v5

    const/16 v5, 0x29

    const-string v6, "604"

    aput-object v6, v4, v5

    const/16 v5, 0x2a

    const-string v6, "742"

    aput-object v6, v4, v5

    iput-object v4, p0, Landroid/net/wifi/AutoRegulatoryDomain$MccUpdateLogic;->mHighChannelsMccs:[Ljava/lang/String;

    .line 266
    new-instance v4, Ljava/util/HashSet;

    iget-object v5, p0, Landroid/net/wifi/AutoRegulatoryDomain$MccUpdateLogic;->mHighChannelsMccs:[Ljava/lang/String;

    array-length v5, v5

    invoke-direct {v4, v5}, Ljava/util/HashSet;-><init>(I)V

    iput-object v4, p0, Landroid/net/wifi/AutoRegulatoryDomain$MccUpdateLogic;->mHighChannelSet:Ljava/util/HashSet;

    .line 267
    iget-object v0, p0, Landroid/net/wifi/AutoRegulatoryDomain$MccUpdateLogic;->mHighChannelsMccs:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 268
    .local v3, mcc:Ljava/lang/String;
    iget-object v4, p0, Landroid/net/wifi/AutoRegulatoryDomain$MccUpdateLogic;->mHighChannelSet:Ljava/util/HashSet;

    invoke-virtual {v4, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 267
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 270
    .end local v3           #mcc:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private getCountryCode()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v4, 0x5

    .line 284
    iget-object v3, p0, Landroid/net/wifi/AutoRegulatoryDomain$MccUpdateLogic;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v3, :cond_0

    .line 285
    iget-object v3, p0, Landroid/net/wifi/AutoRegulatoryDomain$MccUpdateLogic;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v1

    .line 286
    .local v1, plmn:Ljava/lang/String;
    iget-object v3, p0, Landroid/net/wifi/AutoRegulatoryDomain$MccUpdateLogic;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v2

    .line 287
    .local v2, simState:I
    if-ne v2, v4, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v3, v4, :cond_0

    .line 289
    const-string v3, "AutoRegulatoryDomain"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PLMN = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    const/4 v3, 0x0

    const/4 v4, 0x3

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 291
    .local v0, mcc:Ljava/lang/String;
    if-eqz v0, :cond_0

    iget-object v3, p0, Landroid/net/wifi/AutoRegulatoryDomain$MccUpdateLogic;->mHighChannelSet:Ljava/util/HashSet;

    invoke-virtual {v3, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 292
    const-string v3, "SE"

    .line 296
    .end local v0           #mcc:Ljava/lang/String;
    .end local v1           #plmn:Ljava/lang/String;
    .end local v2           #simState:I
    :goto_0
    return-object v3

    :cond_0
    const-string v3, "US"

    goto :goto_0
.end method


# virtual methods
.method protected doUpdate(Z)I
    .locals 2
    .parameter "force"

    .prologue
    .line 274
    invoke-direct {p0}, Landroid/net/wifi/AutoRegulatoryDomain$MccUpdateLogic;->getCountryCode()Ljava/lang/String;

    move-result-object v0

    .line 275
    .local v0, code:Ljava/lang/String;
    const-string v1, "US"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p1, :cond_2

    .line 276
    :cond_0
    invoke-virtual {p0, v0, p1}, Landroid/net/wifi/AutoRegulatoryDomain$MccUpdateLogic;->setCountryCode(Ljava/lang/String;Z)V

    .line 280
    :cond_1
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 277
    :cond_2
    iget-object v1, p0, Landroid/net/wifi/AutoRegulatoryDomain$MccUpdateLogic;->mLastSetCountryCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 278
    const/4 v1, 0x0

    goto :goto_0
.end method

.class final Landroid/net/wifi/AutoRegulatoryDomain;
.super Ljava/lang/Object;
.source "AutoRegulatoryDomain.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/AutoRegulatoryDomain$MccUpdateLogic;,
        Landroid/net/wifi/AutoRegulatoryDomain$CrdaUpdateLogic;,
        Landroid/net/wifi/AutoRegulatoryDomain$UpdateLogic;
    }
.end annotation


# static fields
.field private static final LOCAL_LOGD:Z = false

.field private static final TAG:Ljava/lang/String; = "AutoRegulatoryDomain"

.field private static final UPDATE_TYPE_MCC:I


# instance fields
.field private final mUpdateLogic:Landroid/net/wifi/AutoRegulatoryDomain$UpdateLogic;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/wifi/WifiStateMachine;)V
    .locals 3
    .parameter "context"
    .parameter "wifiStateMachine"

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e002d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 48
    .local v0, instanceType:I
    if-nez v0, :cond_0

    .line 50
    new-instance v1, Landroid/net/wifi/AutoRegulatoryDomain$MccUpdateLogic;

    invoke-direct {v1, p0, p1, p2}, Landroid/net/wifi/AutoRegulatoryDomain$MccUpdateLogic;-><init>(Landroid/net/wifi/AutoRegulatoryDomain;Landroid/content/Context;Landroid/net/wifi/WifiStateMachine;)V

    iput-object v1, p0, Landroid/net/wifi/AutoRegulatoryDomain;->mUpdateLogic:Landroid/net/wifi/AutoRegulatoryDomain$UpdateLogic;

    .line 56
    :goto_0
    return-void

    .line 54
    :cond_0
    new-instance v1, Landroid/net/wifi/AutoRegulatoryDomain$CrdaUpdateLogic;

    invoke-direct {v1, p0, p1, p2}, Landroid/net/wifi/AutoRegulatoryDomain$CrdaUpdateLogic;-><init>(Landroid/net/wifi/AutoRegulatoryDomain;Landroid/content/Context;Landroid/net/wifi/WifiStateMachine;)V

    iput-object v1, p0, Landroid/net/wifi/AutoRegulatoryDomain;->mUpdateLogic:Landroid/net/wifi/AutoRegulatoryDomain$UpdateLogic;

    goto :goto_0
.end method


# virtual methods
.method public start()V
    .locals 2

    .prologue
    .line 62
    iget-object v0, p0, Landroid/net/wifi/AutoRegulatoryDomain;->mUpdateLogic:Landroid/net/wifi/AutoRegulatoryDomain$UpdateLogic;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/net/wifi/AutoRegulatoryDomain$UpdateLogic;->sendEmptyMessage(I)Z

    .line 63
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 69
    iget-object v0, p0, Landroid/net/wifi/AutoRegulatoryDomain;->mUpdateLogic:Landroid/net/wifi/AutoRegulatoryDomain$UpdateLogic;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/net/wifi/AutoRegulatoryDomain$UpdateLogic;->sendEmptyMessage(I)Z

    .line 70
    return-void
.end method

.class public Landroid/net/NetworkPolicyManager;
.super Ljava/lang/Object;
.source "NetworkPolicyManager.java"


# static fields
.field private static final ALLOW_PLATFORM_APP_POLICY:Z = true

.field public static final EXTRA_NETWORK_TEMPLATE:Ljava/lang/String; = "android.net.NETWORK_TEMPLATE"

.field public static final POLICY_NONE:I = 0x0

.field public static final POLICY_REJECT_METERED_BACKGROUND:I = 0x1

.field public static final RULE_ALLOW_ALL:I = 0x0

.field public static final RULE_REJECT_METERED:I = 0x1


# instance fields
.field private mService:Landroid/net/INetworkPolicyManager;


# direct methods
.method public constructor <init>(Landroid/net/INetworkPolicyManager;)V
    .locals 2
    .parameter "service"

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    if-nez p1, :cond_0

    .line 66
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "missing INetworkPolicyManager"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 68
    :cond_0
    iput-object p1, p0, Landroid/net/NetworkPolicyManager;->mService:Landroid/net/INetworkPolicyManager;

    .line 69
    return-void
.end method

.method public static computeLastCycleBoundary(JLandroid/net/NetworkPolicy;)J
    .locals 6
    .parameter "currentTime"
    .parameter "policy"
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_CODE:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 137
    new-instance v2, Landroid/text/format/Time;

    invoke-direct {v2}, Landroid/text/format/Time;-><init>()V

    .line 138
    .local v2, now:Landroid/text/format/Time;
    invoke-virtual {v2, p0, p1}, Landroid/text/format/Time;->set(J)V

    .line 141
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0, v2}, Landroid/text/format/Time;-><init>(Landroid/text/format/Time;)V

    .line 142
    .local v0, cycle:Landroid/text/format/Time;
    iput v5, v0, Landroid/text/format/Time;->second:I

    iput v5, v0, Landroid/text/format/Time;->minute:I

    iput v5, v0, Landroid/text/format/Time;->hour:I

    .line 143
    iget v3, p2, Landroid/net/NetworkPolicy;->cycleDay:I

    invoke-static {v0, v3}, Landroid/net/NetworkPolicyManager;->snapToCycleDay(Landroid/text/format/Time;I)V

    .line 145
    invoke-static {v0, v2}, Landroid/text/format/Time;->compare(Landroid/text/format/Time;Landroid/text/format/Time;)I

    move-result v3

    if-ltz v3, :cond_0

    .line 148
    new-instance v1, Landroid/text/format/Time;

    invoke-direct {v1, v2}, Landroid/text/format/Time;-><init>(Landroid/text/format/Time;)V

    .line 149
    .local v1, lastMonth:Landroid/text/format/Time;
    iput v5, v1, Landroid/text/format/Time;->second:I

    iput v5, v1, Landroid/text/format/Time;->minute:I

    iput v5, v1, Landroid/text/format/Time;->hour:I

    .line 150
    iput v4, v1, Landroid/text/format/Time;->monthDay:I

    .line 151
    iget v3, v1, Landroid/text/format/Time;->month:I

    add-int/lit8 v3, v3, -0x1

    iput v3, v1, Landroid/text/format/Time;->month:I

    .line 152
    invoke-virtual {v1, v4}, Landroid/text/format/Time;->normalize(Z)J

    .line 154
    invoke-virtual {v0, v1}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 155
    iget v3, p2, Landroid/net/NetworkPolicy;->cycleDay:I

    invoke-static {v0, v3}, Landroid/net/NetworkPolicyManager;->snapToCycleDay(Landroid/text/format/Time;I)V

    .line 158
    .end local v1           #lastMonth:Landroid/text/format/Time;
    :cond_0
    invoke-virtual {v0, v4}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v3

    return-wide v3
.end method

.method public static computeNextCycleBoundary(JLandroid/net/NetworkPolicy;)J
    .locals 6
    .parameter "currentTime"
    .parameter "policy"
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_CODE:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 164
    new-instance v2, Landroid/text/format/Time;

    invoke-direct {v2}, Landroid/text/format/Time;-><init>()V

    .line 165
    .local v2, now:Landroid/text/format/Time;
    invoke-virtual {v2, p0, p1}, Landroid/text/format/Time;->set(J)V

    .line 168
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0, v2}, Landroid/text/format/Time;-><init>(Landroid/text/format/Time;)V

    .line 169
    .local v0, cycle:Landroid/text/format/Time;
    iput v5, v0, Landroid/text/format/Time;->second:I

    iput v5, v0, Landroid/text/format/Time;->minute:I

    iput v5, v0, Landroid/text/format/Time;->hour:I

    .line 170
    iget v3, p2, Landroid/net/NetworkPolicy;->cycleDay:I

    invoke-static {v0, v3}, Landroid/net/NetworkPolicyManager;->snapToCycleDay(Landroid/text/format/Time;I)V

    .line 172
    invoke-static {v0, v2}, Landroid/text/format/Time;->compare(Landroid/text/format/Time;Landroid/text/format/Time;)I

    move-result v3

    if-gtz v3, :cond_0

    .line 175
    new-instance v1, Landroid/text/format/Time;

    invoke-direct {v1, v2}, Landroid/text/format/Time;-><init>(Landroid/text/format/Time;)V

    .line 176
    .local v1, nextMonth:Landroid/text/format/Time;
    iput v5, v1, Landroid/text/format/Time;->second:I

    iput v5, v1, Landroid/text/format/Time;->minute:I

    iput v5, v1, Landroid/text/format/Time;->hour:I

    .line 177
    iput v4, v1, Landroid/text/format/Time;->monthDay:I

    .line 178
    iget v3, v1, Landroid/text/format/Time;->month:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v1, Landroid/text/format/Time;->month:I

    .line 179
    invoke-virtual {v1, v4}, Landroid/text/format/Time;->normalize(Z)J

    .line 181
    invoke-virtual {v0, v1}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 182
    iget v3, p2, Landroid/net/NetworkPolicy;->cycleDay:I

    invoke-static {v0, v3}, Landroid/net/NetworkPolicyManager;->snapToCycleDay(Landroid/text/format/Time;I)V

    .line 185
    .end local v1           #nextMonth:Landroid/text/format/Time;
    :cond_0
    invoke-virtual {v0, v4}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v3

    return-wide v3
.end method

.method public static dumpPolicy(Ljava/io/PrintWriter;I)V
    .locals 1
    .parameter "fout"
    .parameter "policy"

    .prologue
    .line 246
    const-string v0, "["

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 247
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_0

    .line 248
    const-string v0, "REJECT_METERED_BACKGROUND"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 250
    :cond_0
    const-string v0, "]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 251
    return-void
.end method

.method public static dumpRules(Ljava/io/PrintWriter;I)V
    .locals 1
    .parameter "fout"
    .parameter "rules"

    .prologue
    .line 255
    const-string v0, "["

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 256
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_0

    .line 257
    const-string v0, "REJECT_METERED"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 259
    :cond_0
    const-string v0, "]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 260
    return-void
.end method

.method public static getSystemService(Landroid/content/Context;)Landroid/net/NetworkPolicyManager;
    .locals 1
    .parameter "context"

    .prologue
    .line 72
    const-string/jumbo v0, "netpolicy"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkPolicyManager;

    return-object v0
.end method

.method public static isUidValidForPolicy(Landroid/content/Context;I)Z
    .locals 1
    .parameter "context"
    .parameter "uid"

    .prologue
    .line 212
    const/16 v0, 0x2710

    if-lt p1, v0, :cond_0

    const v0, 0x1869f

    if-le p1, v0, :cond_1

    .line 214
    :cond_0
    const/4 v0, 0x0

    .line 241
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static snapToCycleDay(Landroid/text/format/Time;I)V
    .locals 2
    .parameter "time"
    .parameter "cycleDay"

    .prologue
    const/4 v1, 0x1

    .line 195
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/text/format/Time;->getActualMaximum(I)I

    move-result v0

    if-le p1, v0, :cond_0

    .line 197
    iget v0, p0, Landroid/text/format/Time;->month:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/text/format/Time;->month:I

    .line 198
    iput v1, p0, Landroid/text/format/Time;->monthDay:I

    .line 199
    const/4 v0, -0x1

    iput v0, p0, Landroid/text/format/Time;->second:I

    .line 203
    :goto_0
    invoke-virtual {p0, v1}, Landroid/text/format/Time;->normalize(Z)J

    .line 204
    return-void

    .line 201
    :cond_0
    iput p1, p0, Landroid/text/format/Time;->monthDay:I

    goto :goto_0
.end method


# virtual methods
.method public getNetworkPolicies()[Landroid/net/NetworkPolicy;
    .locals 2

    .prologue
    .line 86
    :try_start_0
    iget-object v1, p0, Landroid/net/NetworkPolicyManager;->mService:Landroid/net/INetworkPolicyManager;

    invoke-interface {v1}, Landroid/net/INetworkPolicyManager;->getNetworkPolicies()[Landroid/net/NetworkPolicy;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 88
    :goto_0
    return-object v1

    .line 87
    :catch_0
    move-exception v0

    .line 88
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getUidPolicy(I)I
    .locals 2
    .parameter "uid"

    .prologue
    .line 107
    :try_start_0
    iget-object v1, p0, Landroid/net/NetworkPolicyManager;->mService:Landroid/net/INetworkPolicyManager;

    invoke-interface {v1, p1}, Landroid/net/INetworkPolicyManager;->getUidPolicy(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 109
    :goto_0
    return v1

    .line 108
    :catch_0
    move-exception v0

    .line 109
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public registerListener(Landroid/net/INetworkPolicyListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 115
    :try_start_0
    iget-object v0, p0, Landroid/net/NetworkPolicyManager;->mService:Landroid/net/INetworkPolicyManager;

    invoke-interface {v0, p1}, Landroid/net/INetworkPolicyManager;->registerListener(Landroid/net/INetworkPolicyListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    :goto_0
    return-void

    .line 116
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setNetworkPolicies([Landroid/net/NetworkPolicy;)V
    .locals 1
    .parameter "policies"

    .prologue
    .line 78
    :try_start_0
    iget-object v0, p0, Landroid/net/NetworkPolicyManager;->mService:Landroid/net/INetworkPolicyManager;

    invoke-interface {v0, p1}, Landroid/net/INetworkPolicyManager;->setNetworkPolicies([Landroid/net/NetworkPolicy;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    :goto_0
    return-void

    .line 79
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setUidPolicy(II)V
    .locals 1
    .parameter "uid"
    .parameter "policy"

    .prologue
    .line 100
    :try_start_0
    iget-object v0, p0, Landroid/net/NetworkPolicyManager;->mService:Landroid/net/INetworkPolicyManager;

    invoke-interface {v0, p1, p2}, Landroid/net/INetworkPolicyManager;->setUidPolicy(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    :goto_0
    return-void

    .line 101
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public unregisterListener(Landroid/net/INetworkPolicyListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 122
    :try_start_0
    iget-object v0, p0, Landroid/net/NetworkPolicyManager;->mService:Landroid/net/INetworkPolicyManager;

    invoke-interface {v0, p1}, Landroid/net/INetworkPolicyManager;->unregisterListener(Landroid/net/INetworkPolicyListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    :goto_0
    return-void

    .line 123
    :catch_0
    move-exception v0

    goto :goto_0
.end method

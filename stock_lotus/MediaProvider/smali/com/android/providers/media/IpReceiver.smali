.class public Lcom/android/providers/media/IpReceiver;
.super Landroid/content/BroadcastReceiver;
.source "IpReceiver.java"


# instance fields
.field private final ACTIVE_HOST_PREFS:Ljava/lang/String;

.field private final IP_FUNCTION_PTP:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 24
    const-string v0, "ptp"

    iput-object v0, p0, Lcom/android/providers/media/IpReceiver;->IP_FUNCTION_PTP:Ljava/lang/String;

    .line 25
    const-string v0, "ActiveHost"

    iput-object v0, p0, Lcom/android/providers/media/IpReceiver;->ACTIVE_HOST_PREFS:Ljava/lang/String;

    return-void
.end method

.method private getMtpStackMode(Landroid/content/Context;Ljava/lang/String;)V
    .locals 10
    .parameter "context"
    .parameter "responseTo"

    .prologue
    const/4 v9, -0x1

    .line 53
    invoke-static {}, Landroid/mtp/MtpServer;->getMtpStatus()I

    move-result v3

    .line 54
    .local v3, connStatus:I
    move v4, v3

    .line 55
    .local v4, errCode:I
    const/4 v6, 0x1

    .line 56
    .local v6, status:I
    const/16 v7, 0x8

    if-ne v3, v7, :cond_0

    .line 57
    const/4 v6, 0x0

    .line 58
    const/4 v4, 0x6

    .line 61
    :cond_0
    const-string v7, "ActiveHost"

    const/4 v8, 0x0

    invoke-virtual {p1, v7, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 63
    .local v2, activeHostPrefs:Landroid/content/SharedPreferences;
    const-string v7, "ActiveHostId"

    invoke-interface {v2, v7, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 64
    .local v0, activeHostId:I
    const-string v7, "ActiveHostName"

    const-string v8, ""

    invoke-interface {v2, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 66
    .local v1, activeHostName:Ljava/lang/String;
    new-instance v5, Landroid/content/Intent;

    const-string v7, "com.sonymobile.mtpwifi.MTP_STACK_MODE"

    invoke-direct {v5, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 67
    .local v5, response:Landroid/content/Intent;
    const-string v7, "value_0"

    invoke-virtual {v5, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 68
    if-eq v0, v9, :cond_1

    const/4 v7, 0x7

    if-ne v3, v7, :cond_2

    .line 69
    :cond_1
    const/4 v0, -0x1

    .line 70
    const-string v1, ""

    .line 71
    const/4 v4, 0x0

    .line 73
    :cond_2
    const-string v7, "value_1"

    invoke-virtual {v5, v7, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 74
    const-string v7, "value_2"

    invoke-virtual {v5, v7, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 75
    const-string v7, "value_3"

    invoke-virtual {v5, v7, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 76
    const-string v7, "is_response_to"

    invoke-virtual {v5, v7, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 77
    const-string v7, "com.sonymobile.mtp.permission.CONTROL_MTP_STACK"

    invoke-virtual {p1, v5, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 83
    return-void
.end method

.method private notify(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v7, -0x1

    .line 130
    const-string v6, "value_0"

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 131
    .local v5, status:I
    const-string v6, "value_1"

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 132
    .local v1, hostId:I
    const-string v6, "value_2"

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 133
    .local v0, errCode:I
    const-string v6, "value_3"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 134
    .local v2, hostName:Ljava/lang/String;
    const-string v6, "is_response_to"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 140
    .local v4, responseTo:Ljava/lang/String;
    new-instance v3, Landroid/content/Intent;

    const-string v6, "com.sonymobile.mtpwifi.MTP_STACK_MODE"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 141
    .local v3, response:Landroid/content/Intent;
    const-string v6, "value_0"

    invoke-virtual {v3, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 142
    const-string v6, "value_1"

    invoke-virtual {v3, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 143
    const-string v6, "value_2"

    invoke-virtual {v3, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 144
    const-string v6, "value_3"

    invoke-virtual {v3, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 145
    const-string v6, "is_response_to"

    invoke-virtual {v3, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 146
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "com.sonymobile.mtp.permission.CONTROL_MTP_STACK"

    invoke-virtual {v6, v3, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 148
    return-void
.end method

.method private setActiveHost(Landroid/content/Context;ILjava/lang/String;)V
    .locals 5
    .parameter "context"
    .parameter "hostId"
    .parameter "hostName"

    .prologue
    .line 151
    const-string v3, "ActiveHost"

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 153
    .local v0, activeHostPrefs:Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 154
    .local v1, e:Landroid/content/SharedPreferences$Editor;
    const-string v3, "ActiveHostId"

    invoke-interface {v1, v3, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 155
    const-string v3, "ActiveHostName"

    invoke-interface {v1, v3, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 156
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 159
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.sonymobile.mtpwifi.MTP_STACK_MODE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 160
    .local v2, response:Landroid/content/Intent;
    const-string v3, "value_0"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 161
    const-string v3, "value_1"

    invoke-virtual {v2, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 162
    const-string v3, "value_2"

    const/4 v4, 0x5

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 163
    const-string v3, "value_3"

    invoke-virtual {v2, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 164
    const-string v3, "is_response_to"

    const-string v4, "com.sonymobile.mtpwifi.REQUEST_SET_MTP_STACK_MODE"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 166
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "com.sonymobile.mtp.permission.CONTROL_MTP_STACK"

    invoke-virtual {v3, v2, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 168
    return-void
.end method

.method private setMtpStackMode(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x7

    const/4 v5, 0x1

    const/4 v2, -0x1

    .line 86
    const-string v0, "value_0"

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 87
    const-string v1, "value_1"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 88
    const-string v2, "value_2"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 89
    const-string v3, "ptp"

    const/4 v4, 0x0

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 95
    if-ne v0, v5, :cond_3

    if-lez v1, :cond_3

    .line 96
    invoke-direct {p0, p1}, Lcom/android/providers/media/IpReceiver;->stopConnection(Landroid/content/Context;)V

    .line 97
    new-instance v0, Landroid/content/Intent;

    const-class v4, Lcom/android/providers/media/MtpService;

    invoke-direct {v0, p1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 98
    const-string v4, "ActiveHostId"

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 99
    if-eqz v3, :cond_0

    .line 100
    const-string v3, "ptp"

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 102
    :cond_0
    if-lez v1, :cond_1

    .line 103
    const-string v3, "ActiveHostName"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 105
    :cond_1
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 107
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "content://media/none/mtp_connected"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 110
    invoke-direct {p0, p1, v1, v2}, Lcom/android/providers/media/IpReceiver;->setActiveHost(Landroid/content/Context;ILjava/lang/String;)V

    .line 127
    :cond_2
    :goto_0
    return-void

    .line 111
    :cond_3
    if-nez v0, :cond_2

    .line 112
    invoke-static {}, Landroid/mtp/MtpServer;->getMtpStatus()I

    move-result v2

    if-ne v2, v6, :cond_4

    .line 115
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 116
    const-string v3, "value_0"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 117
    const-string v0, "value_1"

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 118
    const-string v0, "value_2"

    invoke-virtual {v2, v0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 119
    const-string v0, "value_3"

    const-string v1, ""

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 120
    const-string v0, "is_response_to"

    const-string v1, "com.sonymobile.mtpwifi.REQUEST_SET_MTP_STACK_MODE"

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 122
    invoke-direct {p0, p1, v2}, Lcom/android/providers/media/IpReceiver;->notify(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 124
    :cond_4
    invoke-direct {p0, p1}, Lcom/android/providers/media/IpReceiver;->stopConnection(Landroid/content/Context;)V

    goto :goto_0
.end method

.method private stopConnection(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 171
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/providers/media/MtpService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 172
    invoke-virtual {p1, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 174
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://media/none/mtp_connected"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 176
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 29
    if-nez p2, :cond_1

    .line 50
    :cond_0
    :goto_0
    return-void

    .line 32
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 33
    .local v0, action:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 41
    const-string v1, "com.sonymobile.mtpwifi.REQUEST_GET_MTP_STACK_MODE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 42
    invoke-direct {p0, p1, v0}, Lcom/android/providers/media/IpReceiver;->getMtpStackMode(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 43
    :cond_2
    const-string v1, "com.sonymobile.mtpwifi.REQUEST_SET_MTP_STACK_MODE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 44
    invoke-direct {p0, p1, p2}, Lcom/android/providers/media/IpReceiver;->setMtpStackMode(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 45
    :cond_3
    const-string v1, "com.sonymobile.mtpwifi.NOTIFY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 46
    invoke-direct {p0, p1, p2}, Lcom/android/providers/media/IpReceiver;->notify(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 48
    :cond_4
    const-string v1, "MtpIpReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid action: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

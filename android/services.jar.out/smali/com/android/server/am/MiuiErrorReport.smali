.class public Lcom/android/server/am/MiuiErrorReport;
.super Ljava/lang/Object;
.source "MiuiErrorReport.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getAnrStackTrack()Ljava/lang/String;
    .locals 10

    .prologue
    .line 161
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 162
    .local v4, stackTrack:Ljava/lang/StringBuilder;
    const-string v8, "dalvik.vm.stack-trace-file"

    const/4 v9, 0x0

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 163
    .local v7, tracesPath:Ljava/lang/String;
    if-eqz v7, :cond_0

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_1

    .line 164
    :cond_0
    const-string v8, ""

    .line 199
    :goto_0
    return-object v8

    .line 167
    :cond_1
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 168
    .local v6, tracesFile:Ljava/io/File;
    const/4 v2, 0x0

    .line 170
    .local v2, reader:Ljava/io/BufferedReader;
    :try_start_0
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/FileReader;

    invoke-direct {v8, v6}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    .end local v2           #reader:Ljava/io/BufferedReader;
    .local v3, reader:Ljava/io/BufferedReader;
    const/4 v5, 0x0

    .line 173
    .local v5, start:Z
    const/4 v0, 0x0

    .line 174
    .local v0, count:I
    :cond_2
    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .local v1, line:Ljava/lang/String;
    if-eqz v1, :cond_5

    .line 175
    const-string v8, "DALVIK THREADS:"

    invoke-virtual {v1, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 176
    const/4 v5, 0x1

    .line 180
    :cond_3
    if-eqz v5, :cond_4

    .line 181
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    const-string v8, "\n"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 183
    add-int/lit8 v0, v0, 0x1

    .line 185
    :cond_4
    const/16 v8, 0x12c

    if-le v0, v8, :cond_2

    .line 192
    :cond_5
    :goto_1
    if-eqz v3, :cond_6

    .line 193
    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    :cond_6
    :goto_2
    move-object v2, v3

    .line 199
    .end local v0           #count:I
    .end local v1           #line:Ljava/lang/String;
    .end local v3           #reader:Ljava/io/BufferedReader;
    .end local v5           #start:Z
    .restart local v2       #reader:Ljava/io/BufferedReader;
    :cond_7
    :goto_3
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    .line 177
    .end local v2           #reader:Ljava/io/BufferedReader;
    .restart local v0       #count:I
    .restart local v1       #line:Ljava/lang/String;
    .restart local v3       #reader:Ljava/io/BufferedReader;
    .restart local v5       #start:Z
    :cond_8
    if-eqz v5, :cond_3

    :try_start_3
    const-string v8, "-----"

    invoke-virtual {v1, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    move-result v8

    if-eqz v8, :cond_3

    goto :goto_1

    .line 191
    .end local v0           #count:I
    .end local v1           #line:Ljava/lang/String;
    .end local v3           #reader:Ljava/io/BufferedReader;
    .end local v5           #start:Z
    .restart local v2       #reader:Ljava/io/BufferedReader;
    :catchall_0
    move-exception v8

    .line 192
    :goto_4
    if-eqz v2, :cond_9

    .line 193
    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 191
    :cond_9
    :goto_5
    throw v8

    .line 189
    :catch_0
    move-exception v8

    .line 192
    :goto_6
    if-eqz v2, :cond_7

    .line 193
    :try_start_5
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_3

    .line 195
    :catch_1
    move-exception v8

    goto :goto_3

    :catch_2
    move-exception v9

    goto :goto_5

    .end local v2           #reader:Ljava/io/BufferedReader;
    .restart local v0       #count:I
    .restart local v1       #line:Ljava/lang/String;
    .restart local v3       #reader:Ljava/io/BufferedReader;
    .restart local v5       #start:Z
    :catch_3
    move-exception v8

    goto :goto_2

    .line 191
    .end local v1           #line:Ljava/lang/String;
    :catchall_1
    move-exception v8

    move-object v2, v3

    .end local v3           #reader:Ljava/io/BufferedReader;
    .restart local v2       #reader:Ljava/io/BufferedReader;
    goto :goto_4

    .line 189
    .end local v2           #reader:Ljava/io/BufferedReader;
    .restart local v3       #reader:Ljava/io/BufferedReader;
    :catch_4
    move-exception v8

    move-object v2, v3

    .end local v3           #reader:Ljava/io/BufferedReader;
    .restart local v2       #reader:Ljava/io/BufferedReader;
    goto :goto_6
.end method

.method private static getDeviceString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 128
    const-string v1, "ro.product.mod_device"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 129
    .local v0, modDevice:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    .end local v0           #modDevice:Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method private static getIMEI()Ljava/lang/String;
    .locals 2

    .prologue
    .line 133
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 134
    .local v0, imei:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 135
    const-string v0, ""

    .line 138
    .end local v0           #imei:Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method private static getNetworkName(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .parameter "context"

    .prologue
    .line 123
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 124
    .local v0, tm:Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static getPackageVersion(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "context"
    .parameter "packageName"

    .prologue
    .line 142
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 145
    .local v2, pm:Landroid/content/pm/PackageManager;
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 151
    .local v1, info:Landroid/content/pm/PackageInfo;
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_0

    iget-object v3, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_1

    .line 154
    :cond_0
    sget-object v3, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    .line 156
    .end local v1           #info:Landroid/content/pm/PackageInfo;
    :goto_0
    return-object v3

    .line 146
    :catch_0
    move-exception v0

    .line 147
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 148
    const-string v3, ""

    goto :goto_0

    .line 156
    .end local v0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v1       #info:Landroid/content/pm/PackageInfo;
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method protected static populateAnrData(Lorg/json/JSONObject;Lcom/android/server/am/ProcessRecord;)V
    .locals 3
    .parameter "jsPost"
    .parameter "proc"

    .prologue
    .line 112
    :try_start_0
    const-string v1, "error_type"

    const-string v2, "anr"

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 113
    const-string v1, "anr_cause"

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->notRespondingReport:Landroid/app/ActivityManager$ProcessErrorStateInfo;

    iget-object v2, v2, Landroid/app/ActivityManager$ProcessErrorStateInfo;->shortMsg:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 114
    const-string v2, "anr_activity"

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->notRespondingReport:Landroid/app/ActivityManager$ProcessErrorStateInfo;

    iget-object v1, v1, Landroid/app/ActivityManager$ProcessErrorStateInfo;->tag:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v1, ""

    :goto_0
    invoke-virtual {p0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 116
    const-string v1, "stack_track"

    invoke-static {}, Lcom/android/server/am/MiuiErrorReport;->getAnrStackTrack()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 120
    :goto_1
    return-void

    .line 114
    :cond_0
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->notRespondingReport:Landroid/app/ActivityManager$ProcessErrorStateInfo;

    iget-object v1, v1, Landroid/app/ActivityManager$ProcessErrorStateInfo;->tag:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 117
    :catch_0
    move-exception v0

    .line 118
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method

.method protected static populateCommonData(Lorg/json/JSONObject;Landroid/content/Context;Lcom/android/server/am/ProcessRecord;)V
    .locals 3
    .parameter "jsPost"
    .parameter "context"
    .parameter "proc"

    .prologue
    .line 81
    :try_start_0
    const-string v1, "network"

    invoke-static {p1}, Lcom/android/server/am/MiuiErrorReport;->getNetworkName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 82
    const-string v1, "device"

    invoke-static {}, Lcom/android/server/am/MiuiErrorReport;->getDeviceString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 83
    const-string v1, "imei"

    invoke-static {}, Lcom/android/server/am/MiuiErrorReport;->getIMEI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 84
    const-string v1, "platform"

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 85
    const-string v1, "build_version"

    sget-object v2, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 86
    const-string v1, "package_name"

    iget-object v2, p2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 87
    const-string v1, "app_version"

    iget-object v2, p2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {p1, v2}, Lcom/android/server/am/MiuiErrorReport;->getPackageVersion(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    :goto_0
    return-void

    .line 88
    :catch_0
    move-exception v0

    .line 89
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method protected static populateFcData(Lorg/json/JSONObject;Landroid/app/ApplicationErrorReport$CrashInfo;)V
    .locals 4
    .parameter "jsPost"
    .parameter "crashInfo"

    .prologue
    .line 95
    if-nez p1, :cond_0

    .line 108
    :goto_0
    return-void

    .line 100
    :cond_0
    :try_start_0
    const-string v1, "error_type"

    const-string v2, "fc"

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 101
    const-string v1, "exception_class"

    iget-object v2, p1, Landroid/app/ApplicationErrorReport$CrashInfo;->exceptionClassName:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 102
    const-string v1, "exception_source_method"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p1, Landroid/app/ApplicationErrorReport$CrashInfo;->throwClassName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Landroid/app/ApplicationErrorReport$CrashInfo;->throwMethodName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 104
    const-string v1, "stack_track"

    iget-object v2, p1, Landroid/app/ApplicationErrorReport$CrashInfo;->stackTrace:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 105
    :catch_0
    move-exception v0

    .line 106
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public static sendAnrErrorReport(Landroid/content/Context;Lcom/android/server/am/ProcessRecord;Z)V
    .locals 2
    .parameter "context"
    .parameter "proc"
    .parameter "mandatory"

    .prologue
    .line 63
    :try_start_0
    invoke-static {}, Lmiui/os/Build;->isOfficialVersion()Z

    move-result v1

    if-nez v1, :cond_1

    .line 77
    :cond_0
    :goto_0
    return-void

    .line 67
    :cond_1
    if-nez p2, :cond_2

    invoke-static {p0}, Lmiui/util/ErrorReportUtils;->isUserAllowed(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Lmiui/util/ErrorReportUtils;->isWifiConnected(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 70
    :cond_2
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 71
    .local v0, js:Lorg/json/JSONObject;
    invoke-static {v0, p0, p1}, Lcom/android/server/am/MiuiErrorReport;->populateCommonData(Lorg/json/JSONObject;Landroid/content/Context;Lcom/android/server/am/ProcessRecord;)V

    .line 72
    invoke-static {v0, p1}, Lcom/android/server/am/MiuiErrorReport;->populateAnrData(Lorg/json/JSONObject;Lcom/android/server/am/ProcessRecord;)V

    .line 73
    invoke-static {p0, v0}, Lmiui/util/ErrorReportUtils;->postErrorReport(Landroid/content/Context;Lorg/json/JSONObject;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 75
    .end local v0           #js:Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static sendFcErrorReport(Landroid/content/Context;Lcom/android/server/am/ProcessRecord;Landroid/app/ApplicationErrorReport$CrashInfo;Z)V
    .locals 4
    .parameter "context"
    .parameter "proc"
    .parameter "crashInfo"
    .parameter "mandatory"

    .prologue
    .line 32
    :try_start_0
    invoke-static {}, Lmiui/os/Build;->isOfficialVersion()Z

    move-result v2

    if-nez v2, :cond_1

    .line 59
    :cond_0
    :goto_0
    return-void

    .line 36
    :cond_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 37
    .local v1, js:Lorg/json/JSONObject;
    invoke-static {v1, p0, p1}, Lcom/android/server/am/MiuiErrorReport;->populateCommonData(Lorg/json/JSONObject;Landroid/content/Context;Lcom/android/server/am/ProcessRecord;)V

    .line 38
    invoke-static {v1, p2}, Lcom/android/server/am/MiuiErrorReport;->populateFcData(Lorg/json/JSONObject;Landroid/app/ApplicationErrorReport$CrashInfo;)V

    .line 39
    if-eqz p3, :cond_2

    .line 40
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 41
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "com.miui.bugreport"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 42
    const-string v2, "com.miui.bugreport"

    const-string v3, "com.miui.bugreport.ui.MiuiFcPreviewActivity"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 44
    const-string v2, "extra_fc_report"

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 45
    const/high16 v2, 0x1000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 47
    :try_start_1
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 48
    :catch_0
    move-exception v2

    goto :goto_0

    .line 52
    .end local v0           #intent:Landroid/content/Intent;
    :cond_2
    :try_start_2
    invoke-static {p0}, Lmiui/util/ErrorReportUtils;->isUserAllowed(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p0}, Lmiui/util/ErrorReportUtils;->isWifiConnected(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 54
    invoke-static {p0, v1}, Lmiui/util/ErrorReportUtils;->postErrorReport(Landroid/content/Context;Lorg/json/JSONObject;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 57
    .end local v1           #js:Lorg/json/JSONObject;
    :catch_1
    move-exception v2

    goto :goto_0
.end method

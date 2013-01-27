.class public Lcom/miui/internal/app/ShutdownAlarm;
.super Ljava/lang/Object;
.source "ShutdownAlarm.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ShutdownAlarm"

.field private static final WAKEALARM_PATH:Ljava/lang/String; = "/sys/class/rtc/rtc0/wakealarm"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildShutdownAlarmCheckBox(Landroid/content/Context;)Landroid/widget/CheckBox;
    .locals 13
    .parameter "context"

    .prologue
    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 92
    invoke-static {}, Lcom/miui/internal/app/ShutdownAlarm;->readWakeAlarm()J

    move-result-wide v9

    const-wide/16 v11, 0x3e8

    mul-long v5, v9, v11

    .line 93
    .local v5, wakeAlarm:J
    invoke-static {v5, v6}, Lcom/miui/internal/app/ShutdownAlarm;->getWakeAlarmDeltaDays(J)I

    move-result v1

    .line 94
    .local v1, days:I
    if-eqz v1, :cond_0

    if-ne v1, v8, :cond_3

    :cond_0
    move v3, v8

    .line 95
    .local v3, showWakeAlarmMessage:Z
    :goto_0
    const/4 v4, 0x0

    .line 96
    .local v4, shutAlarmCheckBox:Landroid/widget/CheckBox;
    if-eqz v3, :cond_2

    .line 97
    new-instance v4, Landroid/widget/CheckBox;

    .end local v4           #shutAlarmCheckBox:Landroid/widget/CheckBox;
    invoke-direct {v4, p0}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    .line 98
    .restart local v4       #shutAlarmCheckBox:Landroid/widget/CheckBox;
    invoke-virtual {v4, v8}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 99
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 100
    .local v2, sb:Ljava/lang/StringBuilder;
    if-nez v1, :cond_4

    .line 101
    const v9, 0x60c01d1

    invoke-virtual {p0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    :cond_1
    :goto_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 106
    .local v0, c:Ljava/util/Calendar;
    invoke-virtual {v0, v5, v6}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 107
    invoke-static {p0, v0}, Lcom/miui/internal/app/ShutdownAlarm;->formatTime(Landroid/content/Context;Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    const v9, 0x60c01f5

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v7

    invoke-virtual {p0, v9, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 111
    .end local v0           #c:Ljava/util/Calendar;
    .end local v2           #sb:Ljava/lang/StringBuilder;
    :cond_2
    return-object v4

    .end local v3           #showWakeAlarmMessage:Z
    .end local v4           #shutAlarmCheckBox:Landroid/widget/CheckBox;
    :cond_3
    move v3, v7

    .line 94
    goto :goto_0

    .line 102
    .restart local v2       #sb:Ljava/lang/StringBuilder;
    .restart local v3       #showWakeAlarmMessage:Z
    .restart local v4       #shutAlarmCheckBox:Landroid/widget/CheckBox;
    :cond_4
    if-ne v1, v8, :cond_1

    .line 103
    const v9, 0x60c01a9

    invoke-virtual {p0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method private static formatTime(Landroid/content/Context;Ljava/util/Calendar;)Ljava/lang/String;
    .locals 2
    .parameter "context"
    .parameter "c"

    .prologue
    .line 115
    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "kk:mm"

    .line 118
    .local v0, format:Ljava/lang/String;
    :goto_0
    if-nez p1, :cond_1

    const-string v1, ""

    :goto_1
    return-object v1

    .line 115
    .end local v0           #format:Ljava/lang/String;
    :cond_0
    const v1, 0x60c01f6

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 118
    .restart local v0       #format:Ljava/lang/String;
    :cond_1
    invoke-static {v0, p1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_1
.end method

.method private static getWakeAlarmDeltaDays(J)I
    .locals 9
    .parameter "wakeAlarm"

    .prologue
    const/4 v8, 0x7

    .line 78
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v3, p0, v6

    .line 79
    .local v3, delta:J
    const/4 v2, -0x1

    .line 80
    .local v2, days:I
    const-wide/16 v6, 0x0

    cmp-long v6, v3, v6

    if-lez v6, :cond_0

    const-wide/32 v6, 0xa4cb800

    cmp-long v6, v3, v6

    if-gez v6, :cond_0

    .line 81
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 82
    .local v0, c:Ljava/util/Calendar;
    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 83
    .local v1, curDay:I
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 84
    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 85
    .local v5, wakeDay:I
    sub-int v6, v5, v1

    add-int/lit8 v6, v6, 0x7

    rem-int/lit8 v2, v6, 0x7

    .line 86
    const-string v6, "ShutdownAlarm"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "wake alarm days: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    .end local v0           #c:Ljava/util/Calendar;
    .end local v1           #curDay:I
    .end local v5           #wakeDay:I
    :cond_0
    return v2
.end method

.method public static readWakeAlarm()J
    .locals 8

    .prologue
    .line 27
    const-wide/16 v0, 0x0

    .line 28
    .local v0, alarmTime:J
    const/4 v3, 0x0

    .line 30
    .local v3, reader:Ljava/io/BufferedReader;
    :try_start_0
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    const-string v6, "/sys/class/rtc/rtc0/wakealarm"

    invoke-direct {v5, v6}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5

    .line 31
    .end local v3           #reader:Ljava/io/BufferedReader;
    .local v4, reader:Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8

    move-result v5

    int-to-long v0, v5

    .line 39
    if-eqz v4, :cond_2

    .line 41
    :try_start_2
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v3, v4

    .line 47
    .end local v4           #reader:Ljava/io/BufferedReader;
    .restart local v3       #reader:Ljava/io/BufferedReader;
    :cond_0
    :goto_0
    return-wide v0

    .line 42
    .end local v3           #reader:Ljava/io/BufferedReader;
    .restart local v4       #reader:Ljava/io/BufferedReader;
    :catch_0
    move-exception v2

    .line 43
    .local v2, e:Ljava/io/IOException;
    const-string v5, "ShutdownAlarm"

    const-string/jumbo v6, "read wake alarm error"

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v3, v4

    .line 44
    .end local v4           #reader:Ljava/io/BufferedReader;
    .restart local v3       #reader:Ljava/io/BufferedReader;
    goto :goto_0

    .line 32
    .end local v2           #e:Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 33
    .local v2, e:Ljava/io/FileNotFoundException;
    :goto_1
    :try_start_3
    const-string v5, "ShutdownAlarm"

    const-string/jumbo v6, "read wake alarm error"

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 39
    if-eqz v3, :cond_0

    .line 41
    :try_start_4
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 42
    :catch_2
    move-exception v2

    .line 43
    .local v2, e:Ljava/io/IOException;
    const-string v5, "ShutdownAlarm"

    const-string/jumbo v6, "read wake alarm error"

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 34
    .end local v2           #e:Ljava/io/IOException;
    :catch_3
    move-exception v2

    .line 35
    .local v2, e:Ljava/lang/NumberFormatException;
    :goto_2
    :try_start_5
    const-string v5, "ShutdownAlarm"

    const-string/jumbo v6, "read wake alarm error"

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 39
    if-eqz v3, :cond_0

    .line 41
    :try_start_6
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_0

    .line 42
    :catch_4
    move-exception v2

    .line 43
    .local v2, e:Ljava/io/IOException;
    const-string v5, "ShutdownAlarm"

    const-string/jumbo v6, "read wake alarm error"

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 36
    .end local v2           #e:Ljava/io/IOException;
    :catch_5
    move-exception v2

    .line 37
    .restart local v2       #e:Ljava/io/IOException;
    :goto_3
    :try_start_7
    const-string v5, "ShutdownAlarm"

    const-string/jumbo v6, "read wake alarm error"

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 39
    if-eqz v3, :cond_0

    .line 41
    :try_start_8
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    goto :goto_0

    .line 42
    :catch_6
    move-exception v2

    .line 43
    const-string v5, "ShutdownAlarm"

    const-string/jumbo v6, "read wake alarm error"

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 39
    .end local v2           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v5

    :goto_4
    if-eqz v3, :cond_1

    .line 41
    :try_start_9
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    .line 44
    :cond_1
    :goto_5
    throw v5

    .line 42
    :catch_7
    move-exception v2

    .line 43
    .restart local v2       #e:Ljava/io/IOException;
    const-string v6, "ShutdownAlarm"

    const-string/jumbo v7, "read wake alarm error"

    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .line 39
    .end local v2           #e:Ljava/io/IOException;
    .end local v3           #reader:Ljava/io/BufferedReader;
    .restart local v4       #reader:Ljava/io/BufferedReader;
    :catchall_1
    move-exception v5

    move-object v3, v4

    .end local v4           #reader:Ljava/io/BufferedReader;
    .restart local v3       #reader:Ljava/io/BufferedReader;
    goto :goto_4

    .line 36
    .end local v3           #reader:Ljava/io/BufferedReader;
    .restart local v4       #reader:Ljava/io/BufferedReader;
    :catch_8
    move-exception v2

    move-object v3, v4

    .end local v4           #reader:Ljava/io/BufferedReader;
    .restart local v3       #reader:Ljava/io/BufferedReader;
    goto :goto_3

    .line 34
    .end local v3           #reader:Ljava/io/BufferedReader;
    .restart local v4       #reader:Ljava/io/BufferedReader;
    :catch_9
    move-exception v2

    move-object v3, v4

    .end local v4           #reader:Ljava/io/BufferedReader;
    .restart local v3       #reader:Ljava/io/BufferedReader;
    goto :goto_2

    .line 32
    .end local v3           #reader:Ljava/io/BufferedReader;
    .restart local v4       #reader:Ljava/io/BufferedReader;
    :catch_a
    move-exception v2

    move-object v3, v4

    .end local v4           #reader:Ljava/io/BufferedReader;
    .restart local v3       #reader:Ljava/io/BufferedReader;
    goto :goto_1

    .end local v3           #reader:Ljava/io/BufferedReader;
    .restart local v4       #reader:Ljava/io/BufferedReader;
    :cond_2
    move-object v3, v4

    .end local v4           #reader:Ljava/io/BufferedReader;
    .restart local v3       #reader:Ljava/io/BufferedReader;
    goto :goto_0
.end method

.method public static writeWakeAlarm(J)V
    .locals 6
    .parameter "timeInSeconds"

    .prologue
    .line 55
    const/4 v1, 0x0

    .line 57
    .local v1, writer:Ljava/io/BufferedWriter;
    :try_start_0
    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v3, Ljava/io/FileWriter;

    const-string v4, "/sys/class/rtc/rtc0/wakealarm"

    invoke-direct {v3, v4}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 58
    .end local v1           #writer:Ljava/io/BufferedWriter;
    .local v2, writer:Ljava/io/BufferedWriter;
    :try_start_1
    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 62
    if-eqz v2, :cond_2

    .line 64
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v1, v2

    .line 70
    .end local v2           #writer:Ljava/io/BufferedWriter;
    .restart local v1       #writer:Ljava/io/BufferedWriter;
    :cond_0
    :goto_0
    return-void

    .line 65
    .end local v1           #writer:Ljava/io/BufferedWriter;
    .restart local v2       #writer:Ljava/io/BufferedWriter;
    :catch_0
    move-exception v0

    .line 66
    .local v0, e:Ljava/io/IOException;
    const-string v3, "ShutdownAlarm"

    const-string/jumbo v4, "write wake alarm error"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v1, v2

    .line 67
    .end local v2           #writer:Ljava/io/BufferedWriter;
    .restart local v1       #writer:Ljava/io/BufferedWriter;
    goto :goto_0

    .line 59
    .end local v0           #e:Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 60
    .restart local v0       #e:Ljava/io/IOException;
    :goto_1
    :try_start_3
    const-string v3, "ShutdownAlarm"

    const-string/jumbo v4, "write wake alarm error"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 62
    if-eqz v1, :cond_0

    .line 64
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 65
    :catch_2
    move-exception v0

    .line 66
    const-string v3, "ShutdownAlarm"

    const-string/jumbo v4, "write wake alarm error"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 62
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v3

    :goto_2
    if-eqz v1, :cond_1

    .line 64
    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 67
    :cond_1
    :goto_3
    throw v3

    .line 65
    :catch_3
    move-exception v0

    .line 66
    .restart local v0       #e:Ljava/io/IOException;
    const-string v4, "ShutdownAlarm"

    const-string/jumbo v5, "write wake alarm error"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 62
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #writer:Ljava/io/BufferedWriter;
    .restart local v2       #writer:Ljava/io/BufferedWriter;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2           #writer:Ljava/io/BufferedWriter;
    .restart local v1       #writer:Ljava/io/BufferedWriter;
    goto :goto_2

    .line 59
    .end local v1           #writer:Ljava/io/BufferedWriter;
    .restart local v2       #writer:Ljava/io/BufferedWriter;
    :catch_4
    move-exception v0

    move-object v1, v2

    .end local v2           #writer:Ljava/io/BufferedWriter;
    .restart local v1       #writer:Ljava/io/BufferedWriter;
    goto :goto_1

    .end local v1           #writer:Ljava/io/BufferedWriter;
    .restart local v2       #writer:Ljava/io/BufferedWriter;
    :cond_2
    move-object v1, v2

    .end local v2           #writer:Ljava/io/BufferedWriter;
    .restart local v1       #writer:Ljava/io/BufferedWriter;
    goto :goto_0
.end method

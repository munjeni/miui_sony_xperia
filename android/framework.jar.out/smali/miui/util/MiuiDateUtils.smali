.class public Lmiui/util/MiuiDateUtils;
.super Ljava/lang/Object;
.source "MiuiDateUtils.java"


# static fields
.field private static final CHAR_BUFFER_CAPACITY:I = 0x40

.field private static final mCharBufferPool:Lmiui/util/SimplePool$PoolInstance;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiui/util/SimplePool$PoolInstance",
            "<",
            "Ljava/nio/CharBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private static final mTimePool:Lmiui/util/SimplePool$PoolInstance;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiui/util/SimplePool$PoolInstance",
            "<",
            "Landroid/text/format/Time;",
            ">;"
        }
    .end annotation
.end field

.field private static sAmPmIndex:[I

.field private static sMonth:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 15
    new-instance v0, Lmiui/util/MiuiDateUtils$1;

    invoke-direct {v0}, Lmiui/util/MiuiDateUtils$1;-><init>()V

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lmiui/util/SimplePool;->newInsance(Lmiui/util/SimplePool$Manager;I)Lmiui/util/SimplePool$PoolInstance;

    move-result-object v0

    sput-object v0, Lmiui/util/MiuiDateUtils;->mCharBufferPool:Lmiui/util/SimplePool$PoolInstance;

    .line 27
    new-instance v0, Lmiui/util/MiuiDateUtils$2;

    invoke-direct {v0}, Lmiui/util/MiuiDateUtils$2;-><init>()V

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lmiui/util/SimplePool;->newInsance(Lmiui/util/SimplePool$Manager;I)Lmiui/util/SimplePool$PoolInstance;

    move-result-object v0

    sput-object v0, Lmiui/util/MiuiDateUtils;->mTimePool:Lmiui/util/SimplePool$PoolInstance;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;
    .locals 5
    .parameter "context"
    .parameter "time"
    .parameter "flags"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 163
    sget-object v2, Lmiui/util/MiuiDateUtils;->mCharBufferPool:Lmiui/util/SimplePool$PoolInstance;

    invoke-virtual {v2}, Lmiui/util/SimplePool$PoolInstance;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/CharBuffer;

    .line 164
    .local v0, cb:Ljava/nio/CharBuffer;
    invoke-static {p0, p1, p2, p3, v0}, Lmiui/util/MiuiDateUtils;->formatDateTime(Landroid/content/Context;JILjava/nio/CharBuffer;)V

    .line 165
    new-instance v1, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->array()[C

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->position()I

    move-result v4

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([CII)V

    .line 166
    .local v1, resultString:Ljava/lang/String;
    sget-object v2, Lmiui/util/MiuiDateUtils;->mCharBufferPool:Lmiui/util/SimplePool$PoolInstance;

    invoke-virtual {v2, v0}, Lmiui/util/SimplePool$PoolInstance;->release(Ljava/lang/Object;)V

    .line 167
    return-object v1
.end method

.method public static formatDateTime(Landroid/content/Context;JILjava/nio/CharBuffer;)V
    .locals 3
    .parameter "context"
    .parameter "time"
    .parameter "flags"
    .parameter "result"

    .prologue
    .line 178
    sget-object v2, Lmiui/util/MiuiDateUtils;->mTimePool:Lmiui/util/SimplePool$PoolInstance;

    invoke-virtual {v2}, Lmiui/util/SimplePool$PoolInstance;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/format/Time;

    .line 179
    .local v0, tTime:Landroid/text/format/Time;
    invoke-virtual {v0, p1, p2}, Landroid/text/format/Time;->set(J)V

    .line 180
    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v1

    .line 181
    .local v1, use24Hour:Z
    invoke-static {p0, v0, p3, v1, p4}, Lmiui/util/MiuiDateUtils;->getFormatTime(Landroid/content/Context;Landroid/text/format/Time;IZLjava/nio/CharBuffer;)V

    .line 182
    sget-object v2, Lmiui/util/MiuiDateUtils;->mTimePool:Lmiui/util/SimplePool$PoolInstance;

    invoke-virtual {v2, v0}, Lmiui/util/SimplePool$PoolInstance;->release(Ljava/lang/Object;)V

    .line 183
    return-void
.end method

.method private static getDetailedAmPm(I)Ljava/lang/String;
    .locals 6
    .parameter "hour"

    .prologue
    .line 187
    sget-object v4, Lmiui/util/MiuiDateUtils;->sAmPmIndex:[I

    if-nez v4, :cond_1

    .line 188
    const/16 v4, 0x18

    new-array v4, v4, [I

    sput-object v4, Lmiui/util/MiuiDateUtils;->sAmPmIndex:[I

    .line 189
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x606000a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v3

    .line 191
    .local v3, segments:[I
    const/16 v0, 0x17

    .local v0, i:I
    array-length v4, v3

    add-int/lit8 v1, v4, -0x1

    .local v1, j:I
    :goto_0
    if-ltz v0, :cond_1

    if-ltz v1, :cond_1

    .line 192
    aget v4, v3, v1

    if-ge v0, v4, :cond_0

    .line 193
    add-int/lit8 v1, v1, -0x1

    .line 195
    :cond_0
    sget-object v4, Lmiui/util/MiuiDateUtils;->sAmPmIndex:[I

    aput v1, v4, v0

    .line 191
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 199
    .end local v0           #i:I
    .end local v1           #j:I
    .end local v3           #segments:[I
    :cond_1
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x606000b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 200
    .local v2, names:[Ljava/lang/String;
    sget-object v4, Lmiui/util/MiuiDateUtils;->sAmPmIndex:[I

    aget v4, v4, p0

    aget-object v4, v2, v4

    return-object v4
.end method

.method private static getFormatTime(Landroid/content/Context;Landroid/text/format/Time;IZLjava/nio/CharBuffer;)V
    .locals 11
    .parameter "context"
    .parameter "tTime"
    .parameter "flags"
    .parameter "use24Hour"
    .parameter "result"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 204
    invoke-virtual {p1, v9}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v1

    .line 205
    .local v1, time:J
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_0

    move v8, v9

    .line 206
    .local v8, showTime:Z
    :goto_0
    if-eqz p3, :cond_1

    move-object v0, p0

    move-wide v3, v1

    move v5, p2

    .line 207
    invoke-static/range {v0 .. v5}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/nio/CharBuffer;->append(Ljava/lang/CharSequence;)Ljava/nio/CharBuffer;

    .line 226
    :goto_1
    return-void

    .end local v8           #showTime:Z
    :cond_0
    move v8, v10

    .line 205
    goto :goto_0

    .line 209
    .restart local v8       #showTime:Z
    :cond_1
    if-eqz v8, :cond_4

    .line 210
    xor-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_2

    .line 211
    xor-int/lit8 v5, p2, 0x1

    move-object v0, p0

    move-wide v3, v1

    invoke-static/range {v0 .. v5}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/nio/CharBuffer;->append(Ljava/lang/CharSequence;)Ljava/nio/CharBuffer;

    .line 212
    const-string v0, " "

    invoke-virtual {p4, v0}, Ljava/nio/CharBuffer;->append(Ljava/lang/CharSequence;)Ljava/nio/CharBuffer;

    .line 214
    :cond_2
    iget v0, p1, Landroid/text/format/Time;->hour:I

    invoke-static {v0}, Lmiui/util/MiuiDateUtils;->getDetailedAmPm(I)Ljava/lang/String;

    move-result-object v6

    .line 215
    .local v6, amPm:Ljava/lang/String;
    iget v0, p1, Landroid/text/format/Time;->hour:I

    const/16 v3, 0xc

    if-le v0, v3, :cond_3

    .line 216
    iget v0, p1, Landroid/text/format/Time;->hour:I

    add-int/lit8 v0, v0, -0xc

    iput v0, p1, Landroid/text/format/Time;->hour:I

    .line 218
    :cond_3
    invoke-virtual {p1, v9}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v1

    .line 219
    const/16 v5, 0x81

    move-object v0, p0

    move-wide v3, v1

    invoke-static/range {v0 .. v5}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v7

    .line 221
    .local v7, formatTime:Ljava/lang/String;
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x60c01f7

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v7, v4, v10

    aput-object v6, v4, v9

    invoke-virtual {v0, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/nio/CharBuffer;->append(Ljava/lang/CharSequence;)Ljava/nio/CharBuffer;

    goto :goto_1

    .end local v6           #amPm:Ljava/lang/String;
    .end local v7           #formatTime:Ljava/lang/String;
    :cond_4
    move-object v0, p0

    move-wide v3, v1

    move v5, p2

    .line 223
    invoke-static/range {v0 .. v5}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/nio/CharBuffer;->append(Ljava/lang/CharSequence;)Ljava/nio/CharBuffer;

    goto :goto_1
.end method

.method public static getRelativeTimeSpanString(Landroid/content/Context;JZLjava/nio/CharBuffer;)V
    .locals 28
    .parameter "context"
    .parameter "time"
    .parameter "isNeedTimeAfterDate"
    .parameter "result"

    .prologue
    .line 43
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    .line 44
    .local v20, now:J
    const-wide/32 v17, 0xea60

    .line 45
    .local v17, minResolution:J
    const/high16 v15, 0x8

    .line 47
    .local v15, flags:I
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v24

    .line 49
    .local v24, r:Landroid/content/res/Resources;
    const/16 v4, 0xc

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const v6, 0x60c01be

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const v6, 0x60c01bf

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const v6, 0x60c01c0

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const v6, 0x60c01c1

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const v6, 0x60c01c2

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x5

    const v6, 0x60c01c3

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x6

    const v6, 0x60c01c4

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x7

    const v6, 0x60c01c5

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0x8

    const v6, 0x60c01c6

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0x9

    const v6, 0x60c01c7

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0xa

    const v6, 0x60c01c8

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0xb

    const v6, 0x60c01c9

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    sput-object v4, Lmiui/util/MiuiDateUtils;->sMonth:[Ljava/lang/String;

    .line 64
    cmp-long v4, v20, p1

    if-ltz v4, :cond_2

    const/16 v23, 0x1

    .line 65
    .local v23, past:Z
    :goto_0
    sub-long v4, v20, p1

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v13

    .line 67
    .local v13, duration:J
    sget-object v4, Lmiui/util/MiuiDateUtils;->mTimePool:Lmiui/util/SimplePool$PoolInstance;

    invoke-virtual {v4}, Lmiui/util/SimplePool$PoolInstance;->acquire()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/text/format/Time;

    .line 68
    .local v22, nowTime:Landroid/text/format/Time;
    sget-object v4, Lmiui/util/MiuiDateUtils;->mTimePool:Lmiui/util/SimplePool$PoolInstance;

    invoke-virtual {v4}, Lmiui/util/SimplePool$PoolInstance;->acquire()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/text/format/Time;

    .line 69
    .local v26, thenTime:Landroid/text/format/Time;
    move-object/from16 v0, v22

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 70
    move-object/from16 v0, v26

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 72
    invoke-static/range {p0 .. p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v27

    .line 74
    .local v27, use24Hour:Z
    const/16 v25, -0x1

    .line 75
    .local v25, resId:I
    const-wide/32 v4, 0xea60

    div-long v10, v13, v4

    .line 76
    .local v10, count:J
    const-wide/16 v4, 0x3c

    cmp-long v4, v10, v4

    if-gtz v4, :cond_a

    .line 77
    if-eqz v23, :cond_6

    .line 78
    const-wide/16 v4, 0x3c

    cmp-long v4, v10, v4

    if-nez v4, :cond_3

    .line 80
    const v25, 0x6100004

    .line 144
    :cond_0
    :goto_1
    const/4 v4, -0x1

    move/from16 v0, v25

    if-eq v0, v4, :cond_1

    .line 145
    long-to-int v4, v10

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v0, v1, v4}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v16

    .line 146
    .local v16, format:Ljava/lang/String;
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    move-object/from16 v0, v16

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Ljava/nio/CharBuffer;->append(Ljava/lang/CharSequence;)Ljava/nio/CharBuffer;

    .line 149
    .end local v16           #format:Ljava/lang/String;
    :cond_1
    sget-object v4, Lmiui/util/MiuiDateUtils;->mTimePool:Lmiui/util/SimplePool$PoolInstance;

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Lmiui/util/SimplePool$PoolInstance;->release(Ljava/lang/Object;)V

    .line 150
    sget-object v4, Lmiui/util/MiuiDateUtils;->mTimePool:Lmiui/util/SimplePool$PoolInstance;

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Lmiui/util/SimplePool$PoolInstance;->release(Ljava/lang/Object;)V

    .line 151
    return-void

    .line 64
    .end local v10           #count:J
    .end local v13           #duration:J
    .end local v22           #nowTime:Landroid/text/format/Time;
    .end local v23           #past:Z
    .end local v25           #resId:I
    .end local v26           #thenTime:Landroid/text/format/Time;
    .end local v27           #use24Hour:Z
    :cond_2
    const/16 v23, 0x0

    goto :goto_0

    .line 81
    .restart local v10       #count:J
    .restart local v13       #duration:J
    .restart local v22       #nowTime:Landroid/text/format/Time;
    .restart local v23       #past:Z
    .restart local v25       #resId:I
    .restart local v26       #thenTime:Landroid/text/format/Time;
    .restart local v27       #use24Hour:Z
    :cond_3
    const-wide/16 v4, 0x1e

    cmp-long v4, v10, v4

    if-nez v4, :cond_4

    .line 83
    const v25, 0x610000a

    goto :goto_1

    .line 84
    :cond_4
    const-wide/16 v4, 0x0

    cmp-long v4, v10, v4

    if-nez v4, :cond_5

    .line 86
    const v25, 0x6100005

    goto :goto_1

    .line 88
    :cond_5
    const v25, 0x610000c

    goto :goto_1

    .line 91
    :cond_6
    const-wide/16 v4, 0x3c

    cmp-long v4, v10, v4

    if-nez v4, :cond_7

    .line 93
    const v25, 0x6100007

    goto :goto_1

    .line 94
    :cond_7
    const-wide/16 v4, 0x1e

    cmp-long v4, v10, v4

    if-nez v4, :cond_8

    .line 96
    const v25, 0x6100002

    goto :goto_1

    .line 97
    :cond_8
    const-wide/16 v4, 0x0

    cmp-long v4, v10, v4

    if-nez v4, :cond_9

    .line 99
    const v25, 0x610000b

    goto :goto_1

    .line 101
    :cond_9
    const v25, 0x610000e

    goto :goto_1

    .line 104
    :cond_a
    move-object/from16 v0, v22

    iget v4, v0, Landroid/text/format/Time;->year:I

    move-object/from16 v0, v26

    iget v5, v0, Landroid/text/format/Time;->year:I

    if-ne v4, v5, :cond_b

    move-object/from16 v0, v22

    iget v4, v0, Landroid/text/format/Time;->yearDay:I

    move-object/from16 v0, v26

    iget v5, v0, Landroid/text/format/Time;->yearDay:I

    if-ne v4, v5, :cond_b

    .line 107
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move/from16 v2, v27

    move-object/from16 v3, p4

    invoke-static {v0, v1, v4, v2, v3}, Lmiui/util/MiuiDateUtils;->getFormatTime(Landroid/content/Context;Landroid/text/format/Time;IZLjava/nio/CharBuffer;)V

    goto/16 :goto_1

    .line 108
    :cond_b
    move-object/from16 v0, v22

    iget v4, v0, Landroid/text/format/Time;->year:I

    move-object/from16 v0, v26

    iget v5, v0, Landroid/text/format/Time;->year:I

    if-ne v4, v5, :cond_d

    move-object/from16 v0, v22

    iget v4, v0, Landroid/text/format/Time;->yearDay:I

    move-object/from16 v0, v26

    iget v5, v0, Landroid/text/format/Time;->yearDay:I

    sub-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    const/4 v5, 0x2

    if-ge v4, v5, :cond_d

    .line 111
    if-eqz v23, :cond_c

    .line 112
    const v4, 0x60c01a8

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Ljava/nio/CharBuffer;->append(Ljava/lang/CharSequence;)Ljava/nio/CharBuffer;

    .line 113
    const-string v4, " "

    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Ljava/nio/CharBuffer;->append(Ljava/lang/CharSequence;)Ljava/nio/CharBuffer;

    .line 114
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move/from16 v2, v27

    move-object/from16 v3, p4

    invoke-static {v0, v1, v4, v2, v3}, Lmiui/util/MiuiDateUtils;->getFormatTime(Landroid/content/Context;Landroid/text/format/Time;IZLjava/nio/CharBuffer;)V

    goto/16 :goto_1

    .line 116
    :cond_c
    const v4, 0x60c01a9

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Ljava/nio/CharBuffer;->append(Ljava/lang/CharSequence;)Ljava/nio/CharBuffer;

    .line 117
    const-string v4, " "

    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Ljava/nio/CharBuffer;->append(Ljava/lang/CharSequence;)Ljava/nio/CharBuffer;

    .line 118
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move/from16 v2, v27

    move-object/from16 v3, p4

    invoke-static {v0, v1, v4, v2, v3}, Lmiui/util/MiuiDateUtils;->getFormatTime(Landroid/content/Context;Landroid/text/format/Time;IZLjava/nio/CharBuffer;)V

    goto/16 :goto_1

    .line 120
    :cond_d
    move-object/from16 v0, v22

    iget v4, v0, Landroid/text/format/Time;->year:I

    move-object/from16 v0, v26

    iget v5, v0, Landroid/text/format/Time;->year:I

    if-ne v4, v5, :cond_e

    invoke-virtual/range {v22 .. v22}, Landroid/text/format/Time;->getWeekNumber()I

    move-result v4

    invoke-virtual/range {v26 .. v26}, Landroid/text/format/Time;->getWeekNumber()I

    move-result v5

    if-ne v4, v5, :cond_e

    .line 124
    const v9, 0x80002

    move-object/from16 v4, p0

    move-wide/from16 v5, p1

    move-wide/from16 v7, p1

    invoke-static/range {v4 .. v9}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Ljava/nio/CharBuffer;->append(Ljava/lang/CharSequence;)Ljava/nio/CharBuffer;

    .line 125
    const-string v4, " "

    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Ljava/nio/CharBuffer;->append(Ljava/lang/CharSequence;)Ljava/nio/CharBuffer;

    .line 126
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move/from16 v2, v27

    move-object/from16 v3, p4

    invoke-static {v0, v1, v4, v2, v3}, Lmiui/util/MiuiDateUtils;->getFormatTime(Landroid/content/Context;Landroid/text/format/Time;IZLjava/nio/CharBuffer;)V

    goto/16 :goto_1

    .line 127
    :cond_e
    move-object/from16 v0, v22

    iget v4, v0, Landroid/text/format/Time;->year:I

    move-object/from16 v0, v26

    iget v5, v0, Landroid/text/format/Time;->year:I

    if-ne v4, v5, :cond_f

    .line 129
    sget-object v4, Lmiui/util/MiuiDateUtils;->sMonth:[Ljava/lang/String;

    move-object/from16 v0, v26

    iget v5, v0, Landroid/text/format/Time;->month:I

    aget-object v19, v4, v5

    .line 130
    .local v19, month:Ljava/lang/String;
    const v4, 0x60c01ca

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    move-object/from16 v0, v26

    iget v7, v0, Landroid/text/format/Time;->monthDay:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v24

    invoke-virtual {v0, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 131
    .local v12, day:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Ljava/nio/CharBuffer;->append(Ljava/lang/CharSequence;)Ljava/nio/CharBuffer;

    .line 132
    if-eqz p3, :cond_0

    .line 133
    const-string v4, " "

    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Ljava/nio/CharBuffer;->append(Ljava/lang/CharSequence;)Ljava/nio/CharBuffer;

    .line 134
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move/from16 v2, v27

    move-object/from16 v3, p4

    invoke-static {v0, v1, v4, v2, v3}, Lmiui/util/MiuiDateUtils;->getFormatTime(Landroid/content/Context;Landroid/text/format/Time;IZLjava/nio/CharBuffer;)V

    goto/16 :goto_1

    .line 137
    .end local v12           #day:Ljava/lang/String;
    .end local v19           #month:Ljava/lang/String;
    :cond_f
    const v9, 0x80014

    .line 138
    .local v9, overYearFlag:I
    if-eqz p3, :cond_10

    .line 139
    or-int/lit8 v9, v9, 0x1

    :cond_10
    move-object/from16 v4, p0

    move-wide/from16 v5, p1

    move-wide/from16 v7, p1

    .line 141
    invoke-static/range {v4 .. v9}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Ljava/nio/CharBuffer;->append(Ljava/lang/CharSequence;)Ljava/nio/CharBuffer;

    goto/16 :goto_1
.end method

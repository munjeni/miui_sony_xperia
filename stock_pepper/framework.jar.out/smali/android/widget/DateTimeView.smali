.class public Landroid/widget/DateTimeView;
.super Landroid/widget/TextView;
.source "DateTimeView.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation


# static fields
.field private static final SHOW_MONTH_DAY_YEAR:I = 0x1

.field private static final SHOW_TIME:I = 0x0

.field private static final TAG:Ljava/lang/String; = "DateTimeView"

.field private static final TWELVE_HOURS_IN_MINUTES:J = 0x2d0L

.field private static final TWENTY_FOUR_HOURS_IN_MILLIS:J = 0x5265c00L


# instance fields
.field private mAttachedToWindow:Z

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mContentObserver:Landroid/database/ContentObserver;

.field mLastDisplay:I

.field mLastFormat:Ljava/lang/String;

.field mTime:Ljava/util/Date;

.field mTimeMillis:J

.field private mUpdateTimeMillis:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 76
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 69
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/DateTimeView;->mLastDisplay:I

    .line 245
    new-instance v0, Landroid/widget/DateTimeView$1;

    invoke-direct {v0, p0}, Landroid/widget/DateTimeView$1;-><init>(Landroid/widget/DateTimeView;)V

    iput-object v0, p0, Landroid/widget/DateTimeView;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 263
    new-instance v0, Landroid/widget/DateTimeView$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Landroid/widget/DateTimeView$2;-><init>(Landroid/widget/DateTimeView;Landroid/os/Handler;)V

    iput-object v0, p0, Landroid/widget/DateTimeView;->mContentObserver:Landroid/database/ContentObserver;

    .line 77
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 80
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 69
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/DateTimeView;->mLastDisplay:I

    .line 245
    new-instance v0, Landroid/widget/DateTimeView$1;

    invoke-direct {v0, p0}, Landroid/widget/DateTimeView$1;-><init>(Landroid/widget/DateTimeView;)V

    iput-object v0, p0, Landroid/widget/DateTimeView;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 263
    new-instance v0, Landroid/widget/DateTimeView$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Landroid/widget/DateTimeView$2;-><init>(Landroid/widget/DateTimeView;Landroid/os/Handler;)V

    iput-object v0, p0, Landroid/widget/DateTimeView;->mContentObserver:Landroid/database/ContentObserver;

    .line 81
    return-void
.end method

.method static synthetic access$000(Landroid/widget/DateTimeView;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 57
    iget-wide v0, p0, Landroid/widget/DateTimeView;->mUpdateTimeMillis:J

    return-wide v0
.end method

.method private getDateString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 209
    invoke-virtual {p0}, Landroid/widget/DateTimeView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "date_format"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 211
    .local v2, format:Ljava/lang/String;
    if-eqz v2, :cond_0

    const-string v3, ""

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 212
    :cond_0
    invoke-virtual {p0}, Landroid/widget/DateTimeView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v0

    .line 213
    .local v0, dateFormatDefault:Ljava/text/DateFormat;
    iget-object v3, p0, Landroid/widget/DateTimeView;->mTime:Ljava/util/Date;

    invoke-virtual {v0, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    .line 220
    .end local v0           #dateFormatDefault:Ljava/text/DateFormat;
    :goto_0
    return-object v3

    .line 216
    :cond_1
    :try_start_0
    iget-object v3, p0, Landroid/widget/DateTimeView;->mTime:Ljava/util/Date;

    invoke-static {v2, v3}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 217
    :catch_0
    move-exception v1

    .line 219
    .local v1, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {p0}, Landroid/widget/DateTimeView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v0

    .line 220
    .restart local v0       #dateFormatDefault:Ljava/text/DateFormat;
    iget-object v3, p0, Landroid/widget/DateTimeView;->mTime:Ljava/util/Date;

    invoke-virtual {v0, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method private getTimeString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 196
    invoke-virtual {p0}, Landroid/widget/DateTimeView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 197
    .local v0, context:Landroid/content/Context;
    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 198
    const v2, 0x104007f

    .line 202
    .local v2, res:I
    :goto_0
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 203
    .local v1, format:Ljava/lang/String;
    const/16 v3, 0x48

    const/16 v4, 0x6b

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    .line 204
    iget-object v3, p0, Landroid/widget/DateTimeView;->mTime:Ljava/util/Date;

    invoke-static {v1, v3}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    return-object v3

    .line 200
    .end local v1           #format:Ljava/lang/String;
    .end local v2           #res:I
    :cond_0
    const v2, 0x104007e

    .restart local v2       #res:I
    goto :goto_0
.end method

.method private registerReceivers()V
    .locals 6

    .prologue
    .line 226
    invoke-virtual {p0}, Landroid/widget/DateTimeView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 228
    .local v0, context:Landroid/content/Context;
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 229
    .local v1, filter:Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.TIME_TICK"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 230
    const-string v3, "android.intent.action.TIME_SET"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 231
    const-string v3, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 232
    const-string v3, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 233
    iget-object v3, p0, Landroid/widget/DateTimeView;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 235
    const-string v3, "date_format"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 236
    .local v2, uri:Landroid/net/Uri;
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, 0x1

    iget-object v5, p0, Landroid/widget/DateTimeView;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v3, v2, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 237
    return-void
.end method

.method private unregisterReceivers()V
    .locals 3

    .prologue
    .line 240
    invoke-virtual {p0}, Landroid/widget/DateTimeView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 241
    .local v0, context:Landroid/content/Context;
    iget-object v1, p0, Landroid/widget/DateTimeView;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 242
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/DateTimeView;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 243
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 85
    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    .line 86
    invoke-direct {p0}, Landroid/widget/DateTimeView;->registerReceivers()V

    .line 87
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/DateTimeView;->mAttachedToWindow:Z

    .line 88
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 92
    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    .line 93
    invoke-direct {p0}, Landroid/widget/DateTimeView;->unregisterReceivers()V

    .line 94
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/DateTimeView;->mAttachedToWindow:Z

    .line 95
    return-void
.end method

.method public setTime(J)V
    .locals 8
    .parameter "time"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 99
    new-instance v7, Landroid/text/format/Time;

    invoke-direct {v7}, Landroid/text/format/Time;-><init>()V

    .line 100
    .local v7, t:Landroid/text/format/Time;
    invoke-virtual {v7, p1, p2}, Landroid/text/format/Time;->set(J)V

    .line 101
    iput v6, v7, Landroid/text/format/Time;->second:I

    .line 102
    invoke-virtual {v7, v6}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/widget/DateTimeView;->mTimeMillis:J

    .line 103
    new-instance v0, Ljava/util/Date;

    iget v1, v7, Landroid/text/format/Time;->year:I

    add-int/lit16 v1, v1, -0x76c

    iget v2, v7, Landroid/text/format/Time;->month:I

    iget v3, v7, Landroid/text/format/Time;->monthDay:I

    iget v4, v7, Landroid/text/format/Time;->hour:I

    iget v5, v7, Landroid/text/format/Time;->minute:I

    invoke-direct/range {v0 .. v6}, Ljava/util/Date;-><init>(IIIIII)V

    iput-object v0, p0, Landroid/widget/DateTimeView;->mTime:Ljava/util/Date;

    .line 104
    invoke-virtual {p0}, Landroid/widget/DateTimeView;->update()V

    .line 105
    return-void
.end method

.method update()V
    .locals 24

    .prologue
    .line 108
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DateTimeView;->mTime:Ljava/util/Date;

    move-object/from16 v21, v0

    if-nez v21, :cond_0

    .line 192
    :goto_0
    return-void

    .line 112
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v13

    .line 115
    .local v13, start:J
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DateTimeView;->mTime:Ljava/util/Date;

    move-object/from16 v16, v0

    .line 117
    .local v16, time:Ljava/util/Date;
    new-instance v15, Landroid/text/format/Time;

    invoke-direct {v15}, Landroid/text/format/Time;-><init>()V

    .line 118
    .local v15, t:Landroid/text/format/Time;
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/widget/DateTimeView;->mTimeMillis:J

    move-wide/from16 v21, v0

    move-wide/from16 v0, v21

    invoke-virtual {v15, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 119
    const/16 v21, 0x0

    move/from16 v0, v21

    iput v0, v15, Landroid/text/format/Time;->second:I

    .line 121
    iget v0, v15, Landroid/text/format/Time;->hour:I

    move/from16 v21, v0

    add-int/lit8 v21, v21, -0xc

    move/from16 v0, v21

    iput v0, v15, Landroid/text/format/Time;->hour:I

    .line 122
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v15, v0}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v19

    .line 123
    .local v19, twelveHoursBefore:J
    iget v0, v15, Landroid/text/format/Time;->hour:I

    move/from16 v21, v0

    add-int/lit8 v21, v21, 0xc

    move/from16 v0, v21

    iput v0, v15, Landroid/text/format/Time;->hour:I

    .line 124
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v15, v0}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v17

    .line 125
    .local v17, twelveHoursAfter:J
    const/16 v21, 0x0

    move/from16 v0, v21

    iput v0, v15, Landroid/text/format/Time;->hour:I

    .line 126
    const/16 v21, 0x0

    move/from16 v0, v21

    iput v0, v15, Landroid/text/format/Time;->minute:I

    .line 127
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v15, v0}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v9

    .line 128
    .local v9, midnightBefore:J
    iget v0, v15, Landroid/text/format/Time;->monthDay:I

    move/from16 v21, v0

    add-int/lit8 v21, v21, 0x1

    move/from16 v0, v21

    iput v0, v15, Landroid/text/format/Time;->monthDay:I

    .line 129
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v15, v0}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v7

    .line 131
    .local v7, midnightAfter:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    .line 132
    .local v11, nowMillis:J
    invoke-virtual {v15, v11, v12}, Landroid/text/format/Time;->set(J)V

    .line 133
    const/16 v21, 0x0

    move/from16 v0, v21

    iput v0, v15, Landroid/text/format/Time;->second:I

    .line 134
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v15, v0}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v11

    .line 138
    cmp-long v21, v11, v9

    if-ltz v21, :cond_1

    cmp-long v21, v11, v7

    if-ltz v21, :cond_2

    :cond_1
    cmp-long v21, v11, v19

    if-ltz v21, :cond_3

    cmp-long v21, v11, v17

    if-gez v21, :cond_3

    .line 140
    :cond_2
    const/4 v3, 0x0

    .line 149
    .local v3, display:I
    :goto_1
    const-string v6, ""

    .line 150
    .local v6, formattedDate:Ljava/lang/String;
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/DateTimeView;->mLastDisplay:I

    move/from16 v21, v0

    move/from16 v0, v21

    if-ne v3, v0, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DateTimeView;->mLastFormat:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-nez v21, :cond_4

    .line 152
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/widget/DateTimeView;->mLastFormat:Ljava/lang/String;

    .line 168
    :goto_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/widget/DateTimeView;->setText(Ljava/lang/CharSequence;)V

    .line 171
    if-nez v3, :cond_6

    .line 173
    cmp-long v21, v17, v7

    if-lez v21, :cond_5

    .end local v17           #twelveHoursAfter:J
    :goto_3
    move-wide/from16 v0, v17

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/widget/DateTimeView;->mUpdateTimeMillis:J

    .line 191
    .end local v19           #twelveHoursBefore:J
    :goto_4
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 192
    .local v4, finish:J
    goto/16 :goto_0

    .line 144
    .end local v3           #display:I
    .end local v4           #finish:J
    .end local v6           #formattedDate:Ljava/lang/String;
    .restart local v17       #twelveHoursAfter:J
    .restart local v19       #twelveHoursBefore:J
    :cond_3
    const/4 v3, 0x1

    .restart local v3       #display:I
    goto :goto_1

    .line 154
    .restart local v6       #formattedDate:Ljava/lang/String;
    :cond_4
    packed-switch v3, :pswitch_data_0

    .line 162
    new-instance v21, Ljava/lang/RuntimeException;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "unknown display value: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v21

    .line 156
    :pswitch_0
    invoke-direct/range {p0 .. p0}, Landroid/widget/DateTimeView;->getTimeString()Ljava/lang/String;

    move-result-object v6

    .line 164
    :goto_5
    move-object/from16 v0, p0

    iput-object v6, v0, Landroid/widget/DateTimeView;->mLastFormat:Ljava/lang/String;

    goto :goto_2

    .line 159
    :pswitch_1
    invoke-direct/range {p0 .. p0}, Landroid/widget/DateTimeView;->getDateString()Ljava/lang/String;

    move-result-object v6

    .line 160
    goto :goto_5

    :cond_5
    move-wide/from16 v17, v7

    .line 173
    goto :goto_3

    .line 176
    :cond_6
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/widget/DateTimeView;->mTimeMillis:J

    move-wide/from16 v21, v0

    cmp-long v21, v21, v11

    if-gez v21, :cond_7

    .line 178
    const-wide/16 v21, 0x0

    move-wide/from16 v0, v21

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/widget/DateTimeView;->mUpdateTimeMillis:J

    goto :goto_4

    .line 182
    :cond_7
    cmp-long v21, v19, v9

    if-gez v21, :cond_8

    .end local v19           #twelveHoursBefore:J
    :goto_6
    move-wide/from16 v0, v19

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/widget/DateTimeView;->mUpdateTimeMillis:J

    goto :goto_4

    .restart local v19       #twelveHoursBefore:J
    :cond_8
    move-wide/from16 v19, v9

    goto :goto_6

    .line 154
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

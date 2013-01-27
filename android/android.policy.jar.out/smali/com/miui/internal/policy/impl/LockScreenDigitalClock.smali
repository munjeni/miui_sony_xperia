.class public Lcom/miui/internal/policy/impl/LockScreenDigitalClock;
.super Landroid/widget/LinearLayout;
.source "LockScreenDigitalClock.java"


# static fields
.field private static final M12:Ljava/lang/String; = "h:mm"

.field private static final M24:Ljava/lang/String; = "kk:mm"

.field private static sDigital2ResId:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAttached:Z

.field private mCalendar:Ljava/util/Calendar;

.field private mDate:Landroid/widget/TextView;

.field private mFirstDigital:Landroid/widget/ImageView;

.field private mFormat:Ljava/lang/String;

.field private mFouthDigital:Landroid/widget/ImageView;

.field private final mHandler:Landroid/os/Handler;

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mSecondDigital:Landroid/widget/ImageView;

.field private mThirdDigital:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/miui/internal/policy/impl/LockScreenDigitalClock;->sDigital2ResId:Ljava/util/HashMap;

    .line 40
    sget-object v0, Lcom/miui/internal/policy/impl/LockScreenDigitalClock;->sDigital2ResId:Ljava/util/HashMap;

    const-string v1, "0"

    const v2, 0x602007a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    sget-object v0, Lcom/miui/internal/policy/impl/LockScreenDigitalClock;->sDigital2ResId:Ljava/util/HashMap;

    const-string v1, "1"

    const v2, 0x602007b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    sget-object v0, Lcom/miui/internal/policy/impl/LockScreenDigitalClock;->sDigital2ResId:Ljava/util/HashMap;

    const-string v1, "2"

    const v2, 0x602007c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    sget-object v0, Lcom/miui/internal/policy/impl/LockScreenDigitalClock;->sDigital2ResId:Ljava/util/HashMap;

    const-string v1, "3"

    const v2, 0x602007d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    sget-object v0, Lcom/miui/internal/policy/impl/LockScreenDigitalClock;->sDigital2ResId:Ljava/util/HashMap;

    const-string v1, "4"

    const v2, 0x602007e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    sget-object v0, Lcom/miui/internal/policy/impl/LockScreenDigitalClock;->sDigital2ResId:Ljava/util/HashMap;

    const-string v1, "5"

    const v2, 0x602007f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    sget-object v0, Lcom/miui/internal/policy/impl/LockScreenDigitalClock;->sDigital2ResId:Ljava/util/HashMap;

    const-string v1, "6"

    const v2, 0x6020080

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    sget-object v0, Lcom/miui/internal/policy/impl/LockScreenDigitalClock;->sDigital2ResId:Ljava/util/HashMap;

    const-string v1, "7"

    const v2, 0x6020081

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    sget-object v0, Lcom/miui/internal/policy/impl/LockScreenDigitalClock;->sDigital2ResId:Ljava/util/HashMap;

    const-string v1, "8"

    const v2, 0x6020082

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    sget-object v0, Lcom/miui/internal/policy/impl/LockScreenDigitalClock;->sDigital2ResId:Ljava/util/HashMap;

    const-string v1, "9"

    const v2, 0x6020083

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 70
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/internal/policy/impl/LockScreenDigitalClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 74
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 52
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/policy/impl/LockScreenDigitalClock;->mHandler:Landroid/os/Handler;

    .line 53
    new-instance v0, Lcom/miui/internal/policy/impl/LockScreenDigitalClock$1;

    invoke-direct {v0, p0}, Lcom/miui/internal/policy/impl/LockScreenDigitalClock$1;-><init>(Lcom/miui/internal/policy/impl/LockScreenDigitalClock;)V

    iput-object v0, p0, Lcom/miui/internal/policy/impl/LockScreenDigitalClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 75
    return-void
.end method

.method static synthetic access$002(Lcom/miui/internal/policy/impl/LockScreenDigitalClock;Ljava/util/Calendar;)Ljava/util/Calendar;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23
    iput-object p1, p0, Lcom/miui/internal/policy/impl/LockScreenDigitalClock;->mCalendar:Ljava/util/Calendar;

    return-object p1
.end method

.method static synthetic access$100(Lcom/miui/internal/policy/impl/LockScreenDigitalClock;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/miui/internal/policy/impl/LockScreenDigitalClock;->updateTime()V

    return-void
.end method

.method static synthetic access$200(Lcom/miui/internal/policy/impl/LockScreenDigitalClock;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/miui/internal/policy/impl/LockScreenDigitalClock;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private setDateFormat()V
    .locals 1

    .prologue
    .line 152
    invoke-virtual {p0}, Lcom/miui/internal/policy/impl/LockScreenDigitalClock;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "kk:mm"

    :goto_0
    iput-object v0, p0, Lcom/miui/internal/policy/impl/LockScreenDigitalClock;->mFormat:Ljava/lang/String;

    .line 153
    return-void

    .line 152
    :cond_0
    const-string v0, "h:mm"

    goto :goto_0
.end method

.method private updateTime()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 125
    iget-object v7, p0, Lcom/miui/internal/policy/impl/LockScreenDigitalClock;->mCalendar:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 126
    iget-object v7, p0, Lcom/miui/internal/policy/impl/LockScreenDigitalClock;->mFormat:Ljava/lang/String;

    iget-object v8, p0, Lcom/miui/internal/policy/impl/LockScreenDigitalClock;->mCalendar:Ljava/util/Calendar;

    invoke-static {v7, v8}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 127
    .local v1, newTime:Ljava/lang/CharSequence;
    const/4 v6, 0x0

    .line 128
    .local v6, start:I
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v7

    const/4 v8, 0x4

    if-ne v7, v8, :cond_1

    .line 129
    iget-object v7, p0, Lcom/miui/internal/policy/impl/LockScreenDigitalClock;->mFirstDigital:Landroid/widget/ImageView;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 137
    :cond_0
    :goto_0
    sget-object v7, Lcom/miui/internal/policy/impl/LockScreenDigitalClock;->sDigital2ResId:Ljava/util/HashMap;

    invoke-interface {v1, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 138
    .local v3, resId2:I
    iget-object v7, p0, Lcom/miui/internal/policy/impl/LockScreenDigitalClock;->mSecondDigital:Landroid/widget/ImageView;

    invoke-virtual {v7, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 140
    sget-object v7, Lcom/miui/internal/policy/impl/LockScreenDigitalClock;->sDigital2ResId:Ljava/util/HashMap;

    add-int/lit8 v8, v6, 0x2

    invoke-interface {v1, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 141
    .local v4, resId3:I
    iget-object v7, p0, Lcom/miui/internal/policy/impl/LockScreenDigitalClock;->mThirdDigital:Landroid/widget/ImageView;

    invoke-virtual {v7, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 143
    sget-object v7, Lcom/miui/internal/policy/impl/LockScreenDigitalClock;->sDigital2ResId:Ljava/util/HashMap;

    add-int/lit8 v8, v6, 0x3

    invoke-interface {v1, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 144
    .local v5, resId4:I
    iget-object v7, p0, Lcom/miui/internal/policy/impl/LockScreenDigitalClock;->mFouthDigital:Landroid/widget/ImageView;

    invoke-virtual {v7, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 145
    iget-object v7, p0, Lcom/miui/internal/policy/impl/LockScreenDigitalClock;->mContext:Landroid/content/Context;

    const v8, 0x60c002d

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/miui/internal/policy/impl/LockScreenDigitalClock;->mCalendar:Ljava/util/Calendar;

    invoke-static {v7, v8}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 147
    .local v0, date:Ljava/lang/CharSequence;
    iget-object v7, p0, Lcom/miui/internal/policy/impl/LockScreenDigitalClock;->mDate:Landroid/widget/TextView;

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 148
    iget-object v7, p0, Lcom/miui/internal/policy/impl/LockScreenDigitalClock;->mDate:Landroid/widget/TextView;

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    return-void

    .line 130
    .end local v0           #date:Ljava/lang/CharSequence;
    .end local v3           #resId2:I
    .end local v4           #resId3:I
    .end local v5           #resId4:I
    :cond_1
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v7

    const/4 v8, 0x5

    if-ne v7, v8, :cond_0

    .line 131
    sget-object v7, Lcom/miui/internal/policy/impl/LockScreenDigitalClock;->sDigital2ResId:Ljava/util/HashMap;

    invoke-interface {v1, v10}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 132
    .local v2, resId1:I
    iget-object v7, p0, Lcom/miui/internal/policy/impl/LockScreenDigitalClock;->mFirstDigital:Landroid/widget/ImageView;

    invoke-virtual {v7, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 133
    iget-object v7, p0, Lcom/miui/internal/policy/impl/LockScreenDigitalClock;->mFirstDigital:Landroid/widget/ImageView;

    invoke-virtual {v7, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 134
    const/4 v6, 0x1

    goto/16 :goto_0
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 3

    .prologue
    .line 92
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 94
    iget-boolean v1, p0, Lcom/miui/internal/policy/impl/LockScreenDigitalClock;->mAttached:Z

    if-eqz v1, :cond_0

    .line 105
    :goto_0
    return-void

    .line 95
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/miui/internal/policy/impl/LockScreenDigitalClock;->mAttached:Z

    .line 98
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 99
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 100
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 101
    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 102
    iget-object v1, p0, Lcom/miui/internal/policy/impl/LockScreenDigitalClock;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/miui/internal/policy/impl/LockScreenDigitalClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 104
    invoke-direct {p0}, Lcom/miui/internal/policy/impl/LockScreenDigitalClock;->updateTime()V

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 109
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 111
    iget-boolean v0, p0, Lcom/miui/internal/policy/impl/LockScreenDigitalClock;->mAttached:Z

    if-nez v0, :cond_0

    .line 115
    :goto_0
    return-void

    .line 112
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/internal/policy/impl/LockScreenDigitalClock;->mAttached:Z

    .line 114
    iget-object v0, p0, Lcom/miui/internal/policy/impl/LockScreenDigitalClock;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/internal/policy/impl/LockScreenDigitalClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 79
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 80
    const v0, 0x60b005b

    invoke-virtual {p0, v0}, Lcom/miui/internal/policy/impl/LockScreenDigitalClock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/internal/policy/impl/LockScreenDigitalClock;->mFirstDigital:Landroid/widget/ImageView;

    .line 81
    const v0, 0x60b005c

    invoke-virtual {p0, v0}, Lcom/miui/internal/policy/impl/LockScreenDigitalClock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/internal/policy/impl/LockScreenDigitalClock;->mSecondDigital:Landroid/widget/ImageView;

    .line 82
    const v0, 0x60b005e

    invoke-virtual {p0, v0}, Lcom/miui/internal/policy/impl/LockScreenDigitalClock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/internal/policy/impl/LockScreenDigitalClock;->mThirdDigital:Landroid/widget/ImageView;

    .line 83
    const v0, 0x60b005f

    invoke-virtual {p0, v0}, Lcom/miui/internal/policy/impl/LockScreenDigitalClock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/internal/policy/impl/LockScreenDigitalClock;->mFouthDigital:Landroid/widget/ImageView;

    .line 84
    const v0, 0x60b0060

    invoke-virtual {p0, v0}, Lcom/miui/internal/policy/impl/LockScreenDigitalClock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/internal/policy/impl/LockScreenDigitalClock;->mDate:Landroid/widget/TextView;

    .line 86
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/policy/impl/LockScreenDigitalClock;->mCalendar:Ljava/util/Calendar;

    .line 87
    invoke-direct {p0}, Lcom/miui/internal/policy/impl/LockScreenDigitalClock;->setDateFormat()V

    .line 88
    return-void
.end method

.method updateTime(Ljava/util/Calendar;)V
    .locals 0
    .parameter "c"

    .prologue
    .line 119
    iput-object p1, p0, Lcom/miui/internal/policy/impl/LockScreenDigitalClock;->mCalendar:Ljava/util/Calendar;

    .line 120
    invoke-direct {p0}, Lcom/miui/internal/policy/impl/LockScreenDigitalClock;->updateTime()V

    .line 121
    return-void
.end method

.class Landroid/appwidget/AppWidgetHost$Callbacks;
.super Lcom/android/internal/appwidget/IAppWidgetHost$Stub;
.source "AppWidgetHost.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/appwidget/AppWidgetHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Callbacks"
.end annotation


# instance fields
.field mHandler:Landroid/os/Handler;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/internal/appwidget/IAppWidgetHost$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/appwidget/AppWidgetHost$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 57
    invoke-direct {p0}, Landroid/appwidget/AppWidgetHost$Callbacks;-><init>()V

    return-void
.end method


# virtual methods
.method declared-synchronized getHostHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 85
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/appwidget/AppWidgetHost$Callbacks;->mHandler:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public providerChanged(ILandroid/appwidget/AppWidgetProviderInfo;)V
    .locals 3
    .parameter "appWidgetId"
    .parameter "info"

    .prologue
    .line 71
    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHost$Callbacks;->getHostHandler()Landroid/os/Handler;

    move-result-object v0

    .line 72
    .local v0, h:Landroid/os/Handler;
    if-eqz v0, :cond_0

    .line 73
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 74
    .local v1, msg:Landroid/os/Message;
    iput p1, v1, Landroid/os/Message;->arg1:I

    .line 75
    iput-object p2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 76
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 78
    .end local v1           #msg:Landroid/os/Message;
    :cond_0
    return-void
.end method

.method declared-synchronized setHostHandler(Landroid/os/Handler;)V
    .locals 1
    .parameter "handler"

    .prologue
    .line 81
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Landroid/appwidget/AppWidgetHost$Callbacks;->mHandler:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    monitor-exit p0

    return-void

    .line 81
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public updateAppWidget(ILandroid/widget/RemoteViews;)V
    .locals 3
    .parameter "appWidgetId"
    .parameter "views"

    .prologue
    .line 61
    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHost$Callbacks;->getHostHandler()Landroid/os/Handler;

    move-result-object v0

    .line 62
    .local v0, h:Landroid/os/Handler;
    if-eqz v0, :cond_0

    .line 63
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 64
    .local v1, msg:Landroid/os/Message;
    iput p1, v1, Landroid/os/Message;->arg1:I

    .line 65
    iput-object p2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 66
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 68
    .end local v1           #msg:Landroid/os/Message;
    :cond_0
    return-void
.end method

.method public viewDataChanged(II)V
    .locals 3
    .parameter "appWidgetId"
    .parameter "viewId"

    .prologue
    .line 89
    iget-object v1, p0, Landroid/appwidget/AppWidgetHost$Callbacks;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 90
    .local v0, msg:Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 91
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 92
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 93
    return-void
.end method

.class abstract Lmiui/app/screenelement/ActionCommand$NotificationReceiver;
.super Lmiui/app/screenelement/ActionCommand$StatefulActionCommand;
.source "ActionCommand.java"

# interfaces
.implements Lmiui/app/screenelement/NotifierManager$OnNotifyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/app/screenelement/ActionCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "NotificationReceiver"
.end annotation


# instance fields
.field private mNotifierManager:Lmiui/app/screenelement/NotifierManager;

.field private mType:Lmiui/app/screenelement/NotifierManager$NotifierType;


# direct methods
.method public constructor <init>(Lmiui/app/screenelement/ScreenContext;Ljava/lang/String;Lmiui/app/screenelement/NotifierManager$NotifierType;)V
    .locals 1
    .parameter "context"
    .parameter "stateName"
    .parameter "type"

    .prologue
    .line 81
    invoke-direct {p0, p1, p2}, Lmiui/app/screenelement/ActionCommand$StatefulActionCommand;-><init>(Lmiui/app/screenelement/ScreenContext;Ljava/lang/String;)V

    .line 82
    iput-object p3, p0, Lmiui/app/screenelement/ActionCommand$NotificationReceiver;->mType:Lmiui/app/screenelement/NotifierManager$NotifierType;

    .line 83
    iget-object v0, p0, Lmiui/app/screenelement/ActionCommand$NotificationReceiver;->mContext:Lmiui/app/screenelement/ScreenContext;

    invoke-virtual {v0}, Lmiui/app/screenelement/ScreenContext;->getRawContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lmiui/app/screenelement/NotifierManager;->getInstance(Landroid/content/Context;)Lmiui/app/screenelement/NotifierManager;

    move-result-object v0

    iput-object v0, p0, Lmiui/app/screenelement/ActionCommand$NotificationReceiver;->mNotifierManager:Lmiui/app/screenelement/NotifierManager;

    .line 84
    return-void
.end method


# virtual methods
.method protected asyncUpdate()V
    .locals 2

    .prologue
    .line 91
    invoke-static {}, Lmiui/app/screenelement/ActionCommand;->access$000()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lmiui/app/screenelement/ActionCommand$NotificationReceiver$1;

    invoke-direct {v1, p0}, Lmiui/app/screenelement/ActionCommand$NotificationReceiver$1;-><init>(Lmiui/app/screenelement/ActionCommand$NotificationReceiver;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 97
    return-void
.end method

.method public finish()V
    .locals 2

    .prologue
    .line 118
    iget-object v0, p0, Lmiui/app/screenelement/ActionCommand$NotificationReceiver;->mContext:Lmiui/app/screenelement/ScreenContext;

    invoke-virtual {v0}, Lmiui/app/screenelement/ScreenContext;->getRawContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lmiui/app/screenelement/NotifierManager;->getInstance(Landroid/content/Context;)Lmiui/app/screenelement/NotifierManager;

    move-result-object v0

    iget-object v1, p0, Lmiui/app/screenelement/ActionCommand$NotificationReceiver;->mType:Lmiui/app/screenelement/NotifierManager$NotifierType;

    invoke-virtual {v0, v1, p0}, Lmiui/app/screenelement/NotifierManager;->releaseNotifier(Lmiui/app/screenelement/NotifierManager$NotifierType;Lmiui/app/screenelement/NotifierManager$OnNotifyListener;)V

    .line 119
    return-void
.end method

.method public init()V
    .locals 2

    .prologue
    .line 101
    invoke-virtual {p0}, Lmiui/app/screenelement/ActionCommand$NotificationReceiver;->update()V

    .line 102
    iget-object v0, p0, Lmiui/app/screenelement/ActionCommand$NotificationReceiver;->mNotifierManager:Lmiui/app/screenelement/NotifierManager;

    iget-object v1, p0, Lmiui/app/screenelement/ActionCommand$NotificationReceiver;->mType:Lmiui/app/screenelement/NotifierManager$NotifierType;

    invoke-virtual {v0, v1, p0}, Lmiui/app/screenelement/NotifierManager;->acquireNotifier(Lmiui/app/screenelement/NotifierManager$NotifierType;Lmiui/app/screenelement/NotifierManager$OnNotifyListener;)V

    .line 103
    return-void
.end method

.method public onNotify(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/Object;)V
    .locals 0
    .parameter "context"
    .parameter "intent"
    .parameter "o"

    .prologue
    .line 87
    invoke-virtual {p0}, Lmiui/app/screenelement/ActionCommand$NotificationReceiver;->asyncUpdate()V

    .line 88
    return-void
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 107
    iget-object v0, p0, Lmiui/app/screenelement/ActionCommand$NotificationReceiver;->mNotifierManager:Lmiui/app/screenelement/NotifierManager;

    iget-object v1, p0, Lmiui/app/screenelement/ActionCommand$NotificationReceiver;->mType:Lmiui/app/screenelement/NotifierManager$NotifierType;

    invoke-virtual {v0, v1, p0}, Lmiui/app/screenelement/NotifierManager;->pause(Lmiui/app/screenelement/NotifierManager$NotifierType;Lmiui/app/screenelement/NotifierManager$OnNotifyListener;)V

    .line 108
    return-void
.end method

.method public resume()V
    .locals 2

    .prologue
    .line 112
    invoke-virtual {p0}, Lmiui/app/screenelement/ActionCommand$NotificationReceiver;->update()V

    .line 113
    iget-object v0, p0, Lmiui/app/screenelement/ActionCommand$NotificationReceiver;->mNotifierManager:Lmiui/app/screenelement/NotifierManager;

    iget-object v1, p0, Lmiui/app/screenelement/ActionCommand$NotificationReceiver;->mType:Lmiui/app/screenelement/NotifierManager$NotifierType;

    invoke-virtual {v0, v1, p0}, Lmiui/app/screenelement/NotifierManager;->resume(Lmiui/app/screenelement/NotifierManager$NotifierType;Lmiui/app/screenelement/NotifierManager$OnNotifyListener;)V

    .line 114
    return-void
.end method

.method protected abstract update()V
.end method

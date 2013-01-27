.class public abstract Lmiui/app/screenelement/NotifierManager$BroadcastNotifier;
.super Lmiui/app/screenelement/NotifierManager$BaseNotifier;
.source "NotifierManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/app/screenelement/NotifierManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "BroadcastNotifier"
.end annotation


# instance fields
.field private mIntentFilter:Landroid/content/IntentFilter;

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "c"

    .prologue
    .line 227
    invoke-direct {p0, p1}, Lmiui/app/screenelement/NotifierManager$BaseNotifier;-><init>(Landroid/content/Context;)V

    .line 215
    new-instance v0, Lmiui/app/screenelement/NotifierManager$BroadcastNotifier$1;

    invoke-direct {v0, p0}, Lmiui/app/screenelement/NotifierManager$BroadcastNotifier$1;-><init>(Lmiui/app/screenelement/NotifierManager$BroadcastNotifier;)V

    iput-object v0, p0, Lmiui/app/screenelement/NotifierManager$BroadcastNotifier;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 228
    return-void
.end method


# virtual methods
.method protected createIntentFilter()Landroid/content/IntentFilter;
    .locals 2

    .prologue
    .line 243
    invoke-virtual {p0}, Lmiui/app/screenelement/NotifierManager$BroadcastNotifier;->getIntentAction()Ljava/lang/String;

    move-result-object v0

    .line 244
    .local v0, action:Ljava/lang/String;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected getIntentAction()Ljava/lang/String;
    .locals 2

    .prologue
    .line 248
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "no intent filter action"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected onRegister()V
    .locals 3

    .prologue
    .line 232
    iget-object v0, p0, Lmiui/app/screenelement/NotifierManager$BroadcastNotifier;->mIntentFilter:Landroid/content/IntentFilter;

    if-nez v0, :cond_0

    .line 233
    invoke-virtual {p0}, Lmiui/app/screenelement/NotifierManager$BroadcastNotifier;->createIntentFilter()Landroid/content/IntentFilter;

    move-result-object v0

    iput-object v0, p0, Lmiui/app/screenelement/NotifierManager$BroadcastNotifier;->mIntentFilter:Landroid/content/IntentFilter;

    .line 234
    :cond_0
    iget-object v0, p0, Lmiui/app/screenelement/NotifierManager$BroadcastNotifier;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lmiui/app/screenelement/NotifierManager$BroadcastNotifier;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lmiui/app/screenelement/NotifierManager$BroadcastNotifier;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 235
    return-void
.end method

.method protected onUnregister()V
    .locals 2

    .prologue
    .line 239
    iget-object v0, p0, Lmiui/app/screenelement/NotifierManager$BroadcastNotifier;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lmiui/app/screenelement/NotifierManager$BroadcastNotifier;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 240
    return-void
.end method

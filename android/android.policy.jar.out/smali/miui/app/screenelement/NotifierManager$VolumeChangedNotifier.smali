.class public Lmiui/app/screenelement/NotifierManager$VolumeChangedNotifier;
.super Lmiui/app/screenelement/NotifierManager$BroadcastNotifier;
.source "NotifierManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/app/screenelement/NotifierManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VolumeChangedNotifier"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "c"

    .prologue
    .line 336
    invoke-direct {p0, p1}, Lmiui/app/screenelement/NotifierManager$BroadcastNotifier;-><init>(Landroid/content/Context;)V

    .line 337
    return-void
.end method


# virtual methods
.method protected getIntentAction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 340
    const-string v0, "android.media.VOLUME_CHANGED_ACTION"

    return-object v0
.end method

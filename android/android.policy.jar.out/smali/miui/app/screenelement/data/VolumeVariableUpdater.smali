.class public Lmiui/app/screenelement/data/VolumeVariableUpdater;
.super Lmiui/app/screenelement/data/NotifierVariableUpdater;
.source "VolumeVariableUpdater.java"


# static fields
.field private static final SHOW_DELAY_TIME:I = 0x3e8

.field public static final VAR_VOLUME_LEVEL:Ljava/lang/String; = "volume_level"

.field public static final VAR_VOLUME_LEVEL_OLD:Ljava/lang/String; = "volume_level_old"

.field public static final VAR_VOLUME_TYPE:Ljava/lang/String; = "volume_type"


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private final mResetType:Ljava/lang/Runnable;

.field private mVolumeLevel:Lmiui/app/screenelement/util/IndexedNumberVariable;

.field private mVolumeLevelOld:Lmiui/app/screenelement/util/IndexedNumberVariable;

.field private mVolumeType:Lmiui/app/screenelement/util/IndexedNumberVariable;


# direct methods
.method public constructor <init>(Lmiui/app/screenelement/data/VariableUpdaterManager;)V
    .locals 3
    .parameter "m"

    .prologue
    .line 53
    sget-object v0, Lmiui/app/screenelement/NotifierManager$NotifierType;->VolumeChanged:Lmiui/app/screenelement/NotifierManager$NotifierType;

    invoke-direct {p0, p1, v0}, Lmiui/app/screenelement/data/NotifierVariableUpdater;-><init>(Lmiui/app/screenelement/data/VariableUpdaterManager;Lmiui/app/screenelement/NotifierManager$NotifierType;)V

    .line 43
    new-instance v0, Lmiui/app/screenelement/data/VolumeVariableUpdater$1;

    invoke-direct {v0, p0}, Lmiui/app/screenelement/data/VolumeVariableUpdater$1;-><init>(Lmiui/app/screenelement/data/VolumeVariableUpdater;)V

    iput-object v0, p0, Lmiui/app/screenelement/data/VolumeVariableUpdater;->mResetType:Ljava/lang/Runnable;

    .line 50
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lmiui/app/screenelement/data/VolumeVariableUpdater;->mHandler:Landroid/os/Handler;

    .line 54
    new-instance v0, Lmiui/app/screenelement/util/IndexedNumberVariable;

    const-string v1, "volume_level"

    invoke-virtual {p0}, Lmiui/app/screenelement/data/VolumeVariableUpdater;->getContext()Lmiui/app/screenelement/ScreenContext;

    move-result-object v2

    iget-object v2, v2, Lmiui/app/screenelement/ScreenContext;->mVariables:Lmiui/app/screenelement/data/Variables;

    invoke-direct {v0, v1, v2}, Lmiui/app/screenelement/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Lmiui/app/screenelement/data/Variables;)V

    iput-object v0, p0, Lmiui/app/screenelement/data/VolumeVariableUpdater;->mVolumeLevel:Lmiui/app/screenelement/util/IndexedNumberVariable;

    .line 55
    new-instance v0, Lmiui/app/screenelement/util/IndexedNumberVariable;

    const-string v1, "volume_level_old"

    invoke-virtual {p0}, Lmiui/app/screenelement/data/VolumeVariableUpdater;->getContext()Lmiui/app/screenelement/ScreenContext;

    move-result-object v2

    iget-object v2, v2, Lmiui/app/screenelement/ScreenContext;->mVariables:Lmiui/app/screenelement/data/Variables;

    invoke-direct {v0, v1, v2}, Lmiui/app/screenelement/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Lmiui/app/screenelement/data/Variables;)V

    iput-object v0, p0, Lmiui/app/screenelement/data/VolumeVariableUpdater;->mVolumeLevelOld:Lmiui/app/screenelement/util/IndexedNumberVariable;

    .line 56
    new-instance v0, Lmiui/app/screenelement/util/IndexedNumberVariable;

    const-string v1, "volume_type"

    invoke-virtual {p0}, Lmiui/app/screenelement/data/VolumeVariableUpdater;->getContext()Lmiui/app/screenelement/ScreenContext;

    move-result-object v2

    iget-object v2, v2, Lmiui/app/screenelement/ScreenContext;->mVariables:Lmiui/app/screenelement/data/Variables;

    invoke-direct {v0, v1, v2}, Lmiui/app/screenelement/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Lmiui/app/screenelement/data/Variables;)V

    iput-object v0, p0, Lmiui/app/screenelement/data/VolumeVariableUpdater;->mVolumeType:Lmiui/app/screenelement/util/IndexedNumberVariable;

    .line 57
    iget-object v0, p0, Lmiui/app/screenelement/data/VolumeVariableUpdater;->mVolumeType:Lmiui/app/screenelement/util/IndexedNumberVariable;

    const-wide/high16 v1, -0x4010

    invoke-virtual {v0, v1, v2}, Lmiui/app/screenelement/util/IndexedNumberVariable;->set(D)V

    .line 58
    return-void
.end method

.method static synthetic access$000(Lmiui/app/screenelement/data/VolumeVariableUpdater;)Lmiui/app/screenelement/util/IndexedNumberVariable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 11
    iget-object v0, p0, Lmiui/app/screenelement/data/VolumeVariableUpdater;->mVolumeType:Lmiui/app/screenelement/util/IndexedNumberVariable;

    return-object v0
.end method


# virtual methods
.method public onNotify(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/Object;)V
    .locals 7
    .parameter "context"
    .parameter "intent"
    .parameter "o"

    .prologue
    const/4 v6, 0x0

    .line 62
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 63
    const-string v3, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    const/4 v4, -0x1

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 64
    .local v2, streamType:I
    iget-object v3, p0, Lmiui/app/screenelement/data/VolumeVariableUpdater;->mVolumeType:Lmiui/app/screenelement/util/IndexedNumberVariable;

    int-to-double v4, v2

    invoke-virtual {v3, v4, v5}, Lmiui/app/screenelement/util/IndexedNumberVariable;->set(D)V

    .line 65
    const-string v3, "android.media.EXTRA_VOLUME_STREAM_VALUE"

    invoke-virtual {p2, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 66
    .local v0, newVolLevel:I
    iget-object v3, p0, Lmiui/app/screenelement/data/VolumeVariableUpdater;->mVolumeLevel:Lmiui/app/screenelement/util/IndexedNumberVariable;

    int-to-double v4, v0

    invoke-virtual {v3, v4, v5}, Lmiui/app/screenelement/util/IndexedNumberVariable;->set(D)V

    .line 67
    const-string v3, "android.media.EXTRA_PREV_VOLUME_STREAM_VALUE"

    invoke-virtual {p2, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 69
    .local v1, oldVolLevel:I
    if-eq v1, v0, :cond_0

    .line 70
    iget-object v3, p0, Lmiui/app/screenelement/data/VolumeVariableUpdater;->mVolumeLevelOld:Lmiui/app/screenelement/util/IndexedNumberVariable;

    int-to-double v4, v1

    invoke-virtual {v3, v4, v5}, Lmiui/app/screenelement/util/IndexedNumberVariable;->set(D)V

    .line 71
    :cond_0
    invoke-virtual {p0}, Lmiui/app/screenelement/data/VolumeVariableUpdater;->getContext()Lmiui/app/screenelement/ScreenContext;

    move-result-object v3

    invoke-virtual {v3}, Lmiui/app/screenelement/ScreenContext;->requestUpdate()V

    .line 72
    iget-object v3, p0, Lmiui/app/screenelement/data/VolumeVariableUpdater;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lmiui/app/screenelement/data/VolumeVariableUpdater;->mResetType:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 73
    iget-object v3, p0, Lmiui/app/screenelement/data/VolumeVariableUpdater;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lmiui/app/screenelement/data/VolumeVariableUpdater;->mResetType:Ljava/lang/Runnable;

    const-wide/16 v5, 0x3e8

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 75
    .end local v0           #newVolLevel:I
    .end local v1           #oldVolLevel:I
    .end local v2           #streamType:I
    :cond_1
    return-void
.end method

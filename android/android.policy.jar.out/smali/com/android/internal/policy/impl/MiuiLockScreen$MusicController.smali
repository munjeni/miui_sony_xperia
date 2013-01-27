.class Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;
.super Ljava/lang/Object;
.source "MiuiLockScreen.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/MiuiLockScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MusicController"
.end annotation


# static fields
.field private static final ANIM_FADEIN:I = 0x1

.field private static final ANIM_FADEOUT:I = 0x2

.field private static final ANIM_NONE:I = 0x0

.field private static final CHECK_STREAM_MUSIC_DELAY:I = 0x3e8

.field private static final MUSIC_SHOW_NONE:I = 0x0

.field private static final MUSIC_SHOW_PLAY:I = 0x2

.field private static final MUSIC_SHOW_STOP:I = 0x1


# instance fields
.field private mAlbumBm:Landroid/graphics/Bitmap;

.field private mAlbumChanged:Z

.field private mAlbumFadeInAnim:Landroid/view/animation/Animation;

.field private mAlbumFadeOutAnim:Landroid/view/animation/Animation;

.field private mAlbumName:Ljava/lang/String;

.field private mAlbumView:Lcom/miui/internal/policy/impl/AlbumFrameView;

.field private mArtistName:Ljava/lang/String;

.field private mCheckStreamMusicRunnable:Ljava/lang/Runnable;

.field private mDefaultAlbum:Landroid/graphics/Bitmap;

.field private mEnable:Z

.field private mEnableSpectrumVisualizerRunnable:Ljava/lang/Runnable;

.field private final mHandler:Landroid/os/Handler;

.field private mIsOnlineSongBlocking:Z

.field private mMusicBatteryIndicator:Landroid/widget/ImageView;

.field private mMusicBatteryIndicatorId:I

.field private mMusicControl:Landroid/view/View;

.field private mMusicPlayPauseButton:Landroid/widget/ImageView;

.field private mMusicStatus:I

.field private mMusicTitle:Landroid/widget/TextView;

.field private mPlayerStatusListener:Landroid/content/BroadcastReceiver;

.field private mSpectrumVisualizer:Lmiui/widget/SpectrumVisualizer;

.field private mTempAlbumBm:Landroid/graphics/Bitmap;

.field private mTempAlbumView:Lcom/miui/internal/policy/impl/AlbumFrameView;

.field final synthetic this$0:Lcom/android/internal/policy/impl/MiuiLockScreen;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/MiuiLockScreen;)V
    .locals 1
    .parameter

    .prologue
    .line 1512
    iput-object p1, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->this$0:Lcom/android/internal/policy/impl/MiuiLockScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1904
    new-instance v0, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController$2;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController$2;-><init>(Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->mCheckStreamMusicRunnable:Ljava/lang/Runnable;

    .line 1991
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->mHandler:Landroid/os/Handler;

    .line 1993
    new-instance v0, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController$3;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController$3;-><init>(Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->mPlayerStatusListener:Landroid/content/BroadcastReceiver;

    .line 2046
    new-instance v0, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController$4;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController$4;-><init>(Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->mEnableSpectrumVisualizerRunnable:Ljava/lang/Runnable;

    .line 1513
    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1490
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->updateSpectrumVisualizer()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;)Lcom/miui/internal/policy/impl/AlbumFrameView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1490
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->mAlbumView:Lcom/miui/internal/policy/impl/AlbumFrameView;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1490
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->mMusicBatteryIndicator:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1490
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->mDefaultAlbum:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;)Lcom/miui/internal/policy/impl/AlbumFrameView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1490
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->mTempAlbumView:Lcom/miui/internal/policy/impl/AlbumFrameView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 1490
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->isAlbumShow()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2500(Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1490
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->updateMusic()V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1490
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->mMusicControl:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1490
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->setTrackInfo(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1490
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->requestAlbum(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1490
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->setAlbumInfo(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1490
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->showAlbum()V

    return-void
.end method

.method static synthetic access$3002(Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1490
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->mIsOnlineSongBlocking:Z

    return p1
.end method

.method static synthetic access$3100(Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1490
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->mMusicTitle:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1490
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->mEnableSpectrumVisualizerRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1490
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->mAlbumBm:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method private enableMusicControl(Z)V
    .locals 4
    .parameter "enable"

    .prologue
    const/4 v3, 0x4

    const/4 v1, 0x0

    .line 1891
    iget-object v2, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->mMusicControl:Landroid/view/View;

    if-eqz p1, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1892
    if-eqz p1, :cond_2

    .line 1893
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->this$0:Lcom/android/internal/policy/impl/MiuiLockScreen;

    #setter for: Lcom/android/internal/policy/impl/MiuiLockScreen;->mControlViewType:I
    invoke-static {v0, v3}, Lcom/android/internal/policy/impl/MiuiLockScreen;->access$2102(Lcom/android/internal/policy/impl/MiuiLockScreen;I)I

    .line 1894
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->this$0:Lcom/android/internal/policy/impl/MiuiLockScreen;

    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->mMusicControl:Landroid/view/View;

    const/4 v2, 0x0

    #calls: Lcom/android/internal/policy/impl/MiuiLockScreen;->setControlView(Landroid/view/View;Landroid/view/ViewGroup$MarginLayoutParams;)V
    invoke-static {v0, v1, v2}, Lcom/android/internal/policy/impl/MiuiLockScreen;->access$2300(Lcom/android/internal/policy/impl/MiuiLockScreen;Landroid/view/View;Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 1901
    :cond_0
    :goto_1
    return-void

    .line 1891
    :cond_1
    const/16 v0, 0x8

    goto :goto_0

    .line 1896
    :cond_2
    iput v1, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->mMusicStatus:I

    .line 1897
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->this$0:Lcom/android/internal/policy/impl/MiuiLockScreen;

    #getter for: Lcom/android/internal/policy/impl/MiuiLockScreen;->mControlViewType:I
    invoke-static {v0}, Lcom/android/internal/policy/impl/MiuiLockScreen;->access$2100(Lcom/android/internal/policy/impl/MiuiLockScreen;)I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 1898
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->this$0:Lcom/android/internal/policy/impl/MiuiLockScreen;

    #calls: Lcom/android/internal/policy/impl/MiuiLockScreen;->updateControlView()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/MiuiLockScreen;->access$2400(Lcom/android/internal/policy/impl/MiuiLockScreen;)V

    goto :goto_1
.end method

.method private hideAlbum()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1754
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->mAlbumView:Lcom/miui/internal/policy/impl/AlbumFrameView;

    invoke-virtual {v0}, Lcom/miui/internal/policy/impl/AlbumFrameView;->clearAnimation()V

    .line 1755
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->mTempAlbumView:Lcom/miui/internal/policy/impl/AlbumFrameView;

    invoke-virtual {v0}, Lcom/miui/internal/policy/impl/AlbumFrameView;->clearAnimation()V

    .line 1756
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->mTempAlbumView:Lcom/miui/internal/policy/impl/AlbumFrameView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/miui/internal/policy/impl/AlbumFrameView;->setVisibility(I)V

    .line 1757
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->mAlbumView:Lcom/miui/internal/policy/impl/AlbumFrameView;

    invoke-virtual {v0, v2}, Lcom/miui/internal/policy/impl/AlbumFrameView;->setDisplayBitmap(Landroid/graphics/Bitmap;)V

    .line 1758
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->mTempAlbumView:Lcom/miui/internal/policy/impl/AlbumFrameView;

    invoke-virtual {v0, v2}, Lcom/miui/internal/policy/impl/AlbumFrameView;->setDisplayBitmap(Landroid/graphics/Bitmap;)V

    .line 1759
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->this$0:Lcom/android/internal/policy/impl/MiuiLockScreen;

    #calls: Lcom/android/internal/policy/impl/MiuiLockScreen;->updateBackground()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/MiuiLockScreen;->access$2000(Lcom/android/internal/policy/impl/MiuiLockScreen;)V

    .line 1760
    return-void
.end method

.method private isAlbumShow()Z
    .locals 1

    .prologue
    .line 1742
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->mAlbumBm:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private requestAlbum()V
    .locals 2

    .prologue
    .line 1686
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->mAlbumChanged:Z

    if-eqz v1, :cond_0

    .line 1687
    new-instance v0, Landroid/content/Intent;

    const-string v1, "lockscreen.action.SONG_METADATA_REQUEST"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1688
    .local v0, requestIntent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->this$0:Lcom/android/internal/policy/impl/MiuiLockScreen;

    #getter for: Lcom/android/internal/policy/impl/MiuiLockScreen;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/internal/policy/impl/MiuiLockScreen;->access$1900(Lcom/android/internal/policy/impl/MiuiLockScreen;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1690
    .end local v0           #requestIntent:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private requestAlbum(Landroid/content/Intent;)V
    .locals 1
    .parameter "intent"

    .prologue
    .line 1693
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->requestAlbum(Landroid/content/Intent;Z)V

    .line 1694
    return-void
.end method

.method private sendMediaButtonBroadcast(II)V
    .locals 10
    .parameter "action"
    .parameter "keyCode"

    .prologue
    const/4 v9, 0x0

    .line 1653
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 1654
    .local v1, eventtime:J
    new-instance v0, Landroid/view/KeyEvent;

    const/4 v7, 0x0

    move-wide v3, v1

    move v5, p1

    move v6, p2

    invoke-direct/range {v0 .. v7}, Landroid/view/KeyEvent;-><init>(JJIII)V

    .line 1656
    .local v0, event:Landroid/view/KeyEvent;
    new-instance v8, Landroid/content/Intent;

    const-string v3, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v8, v3, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1657
    .local v8, intent:Landroid/content/Intent;
    const-string v3, "forbid_double_click"

    const/4 v4, 0x1

    invoke-virtual {v8, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1658
    const-string v3, "android.intent.extra.KEY_EVENT"

    const/16 v4, 0x8

    invoke-static {v0, v4}, Landroid/view/KeyEvent;->changeFlags(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object v4

    invoke-virtual {v8, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1661
    iget-object v3, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->this$0:Lcom/android/internal/policy/impl/MiuiLockScreen;

    #getter for: Lcom/android/internal/policy/impl/MiuiLockScreen;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/internal/policy/impl/MiuiLockScreen;->access$1600(Lcom/android/internal/policy/impl/MiuiLockScreen;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v8, v9}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1662
    iget-object v3, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->this$0:Lcom/android/internal/policy/impl/MiuiLockScreen;

    #getter for: Lcom/android/internal/policy/impl/MiuiLockScreen;->isPaused:Z
    invoke-static {v3}, Lcom/android/internal/policy/impl/MiuiLockScreen;->access$1700(Lcom/android/internal/policy/impl/MiuiLockScreen;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->this$0:Lcom/android/internal/policy/impl/MiuiLockScreen;

    #getter for: Lcom/android/internal/policy/impl/MiuiLockScreen;->mPowerManager:Landroid/os/PowerManager;
    invoke-static {v3}, Lcom/android/internal/policy/impl/MiuiLockScreen;->access$1800(Lcom/android/internal/policy/impl/MiuiLockScreen;)Landroid/os/PowerManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1663
    iget-object v3, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->this$0:Lcom/android/internal/policy/impl/MiuiLockScreen;

    #getter for: Lcom/android/internal/policy/impl/MiuiLockScreen;->mCallback:Lcom/miui/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v3}, Lcom/android/internal/policy/impl/MiuiLockScreen;->access$000(Lcom/android/internal/policy/impl/MiuiLockScreen;)Lcom/miui/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v3

    invoke-interface {v3}, Lcom/miui/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    .line 1665
    :cond_0
    return-void
.end method

.method private setAlbumInfo(Landroid/content/Intent;)V
    .locals 8
    .parameter "intent"

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 1799
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->mEnable:Z

    if-nez v3, :cond_0

    .line 1832
    :goto_0
    return-void

    .line 1802
    :cond_0
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->mAlbumChanged:Z

    .line 1803
    const-string v3, "album"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->mAlbumName:Ljava/lang/String;

    .line 1804
    const-string v3, "artist"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->mArtistName:Ljava/lang/String;

    .line 1806
    :try_start_0
    const-string v3, "tmp_album_path"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1807
    .local v0, albumPath:Ljava/lang/String;
    const/4 v1, 0x0

    .line 1808
    .local v1, bm:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_1

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1810
    iput-object v1, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->mAlbumBm:Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 1818
    :goto_1
    iget-object v3, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->mAlbumBm:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_2

    .line 1819
    iget-object v3, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->mAlbumView:Lcom/miui/internal/policy/impl/AlbumFrameView;

    iget-object v4, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->mAlbumBm:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v4}, Lcom/miui/internal/policy/impl/AlbumFrameView;->setDisplayBitmap(Landroid/graphics/Bitmap;)V

    .line 1820
    iget-object v3, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->mMusicBatteryIndicator:Landroid/widget/ImageView;

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1825
    :goto_2
    iget-object v3, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->mTempAlbumBm:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_3

    .line 1826
    iget-object v3, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->mTempAlbumView:Lcom/miui/internal/policy/impl/AlbumFrameView;

    iget-object v4, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->mTempAlbumBm:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v4}, Lcom/miui/internal/policy/impl/AlbumFrameView;->setDisplayBitmap(Landroid/graphics/Bitmap;)V

    .line 1830
    :goto_3
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->startTrackChangeAnim()V

    goto :goto_0

    .line 1813
    :cond_1
    const/4 v3, 0x0

    :try_start_1
    iput-object v3, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->mAlbumBm:Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1815
    .end local v0           #albumPath:Ljava/lang/String;
    .end local v1           #bm:Landroid/graphics/Bitmap;
    :catch_0
    move-exception v2

    .line 1816
    .local v2, e:Ljava/lang/OutOfMemoryError;
    const/4 v3, 0x0

    :try_start_2
    iput-object v3, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->mAlbumBm:Landroid/graphics/Bitmap;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1818
    iget-object v3, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->mAlbumBm:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_4

    .line 1819
    iget-object v3, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->mAlbumView:Lcom/miui/internal/policy/impl/AlbumFrameView;

    iget-object v4, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->mAlbumBm:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v4}, Lcom/miui/internal/policy/impl/AlbumFrameView;->setDisplayBitmap(Landroid/graphics/Bitmap;)V

    .line 1820
    iget-object v3, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->mMusicBatteryIndicator:Landroid/widget/ImageView;

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1825
    :goto_4
    iget-object v3, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->mTempAlbumBm:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_5

    .line 1826
    iget-object v3, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->mTempAlbumView:Lcom/miui/internal/policy/impl/AlbumFrameView;

    iget-object v4, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->mTempAlbumBm:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v4}, Lcom/miui/internal/policy/impl/AlbumFrameView;->setDisplayBitmap(Landroid/graphics/Bitmap;)V

    .line 1830
    :goto_5
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->startTrackChangeAnim()V

    goto :goto_0

    .line 1822
    .end local v2           #e:Ljava/lang/OutOfMemoryError;
    .restart local v0       #albumPath:Ljava/lang/String;
    .restart local v1       #bm:Landroid/graphics/Bitmap;
    :cond_2
    iget-object v3, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->mAlbumView:Lcom/miui/internal/policy/impl/AlbumFrameView;

    iget-object v4, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->mDefaultAlbum:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v4}, Lcom/miui/internal/policy/impl/AlbumFrameView;->setDisplayBitmap(Landroid/graphics/Bitmap;)V

    .line 1823
    iget-object v3, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->mMusicBatteryIndicator:Landroid/widget/ImageView;

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 1828
    :cond_3
    iget-object v3, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->mTempAlbumView:Lcom/miui/internal/policy/impl/AlbumFrameView;

    iget-object v4, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->mDefaultAlbum:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v4}, Lcom/miui/internal/policy/impl/AlbumFrameView;->setDisplayBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_3

    .line 1822
    .end local v0           #albumPath:Ljava/lang/String;
    .end local v1           #bm:Landroid/graphics/Bitmap;
    .restart local v2       #e:Ljava/lang/OutOfMemoryError;
    :cond_4
    iget-object v3, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->mAlbumView:Lcom/miui/internal/policy/impl/AlbumFrameView;

    iget-object v4, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->mDefaultAlbum:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v4}, Lcom/miui/internal/policy/impl/AlbumFrameView;->setDisplayBitmap(Landroid/graphics/Bitmap;)V

    .line 1823
    iget-object v3, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->mMusicBatteryIndicator:Landroid/widget/ImageView;

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_4

    .line 1828
    :cond_5
    iget-object v3, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->mTempAlbumView:Lcom/miui/internal/policy/impl/AlbumFrameView;

    iget-object v4, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->mDefaultAlbum:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v4}, Lcom/miui/internal/policy/impl/AlbumFrameView;->setDisplayBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_5

    .line 1818
    .end local v2           #e:Ljava/lang/OutOfMemoryError;
    :catchall_0
    move-exception v3

    iget-object v4, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->mAlbumBm:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_6

    .line 1819
    iget-object v4, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->mAlbumView:Lcom/miui/internal/policy/impl/AlbumFrameView;

    iget-object v5, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->mAlbumBm:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v5}, Lcom/miui/internal/policy/impl/AlbumFrameView;->setDisplayBitmap(Landroid/graphics/Bitmap;)V

    .line 1820
    iget-object v4, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->mMusicBatteryIndicator:Landroid/widget/ImageView;

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1825
    :goto_6
    iget-object v4, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->mTempAlbumBm:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_7

    .line 1826
    iget-object v4, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->mTempAlbumView:Lcom/miui/internal/policy/impl/AlbumFrameView;

    iget-object v5, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->mTempAlbumBm:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v5}, Lcom/miui/internal/policy/impl/AlbumFrameView;->setDisplayBitmap(Landroid/graphics/Bitmap;)V

    .line 1830
    :goto_7
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->startTrackChangeAnim()V

    throw v3

    .line 1822
    :cond_6
    iget-object v4, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->mAlbumView:Lcom/miui/internal/policy/impl/AlbumFrameView;

    iget-object v5, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->mDefaultAlbum:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v5}, Lcom/miui/internal/policy/impl/AlbumFrameView;->setDisplayBitmap(Landroid/graphics/Bitmap;)V

    .line 1823
    iget-object v4, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->mMusicBatteryIndicator:Landroid/widget/ImageView;

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_6

    .line 1828
    :cond_7
    iget-object v4, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->mTempAlbumView:Lcom/miui/internal/policy/impl/AlbumFrameView;

    iget-object v5, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->mDefaultAlbum:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v5}, Lcom/miui/internal/policy/impl/AlbumFrameView;->setDisplayBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_7
.end method

.method private setTrackInfo(Landroid/content/Intent;)V
    .locals 7
    .parameter "intent"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1836
    const-string v2, "track"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1837
    .local v1, title:Ljava/lang/String;
    const-string v2, "artist"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1838
    .local v0, artist:Ljava/lang/String;
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->mIsOnlineSongBlocking:Z

    .line 1840
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1841
    iget-object v2, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->mMusicTitle:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1854
    :goto_0
    return-void

    .line 1843
    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1844
    iget-object v2, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->mMusicTitle:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1851
    :goto_1
    iget-object v2, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->mMusicTitle:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1852
    iget-object v2, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->mMusicTitle:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setSelected(Z)V

    goto :goto_0

    .line 1845
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1846
    iget-object v2, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->mMusicTitle:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1848
    :cond_2
    iget-object v2, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->mMusicTitle:Landroid/widget/TextView;

    const-string v3, "%s-%s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v5

    aput-object v0, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private setupMusicControl()V
    .locals 5

    .prologue
    .line 1580
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->this$0:Lcom/android/internal/policy/impl/MiuiLockScreen;

    #getter for: Lcom/android/internal/policy/impl/MiuiLockScreen;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/internal/policy/impl/MiuiLockScreen;->access$1500(Lcom/android/internal/policy/impl/MiuiLockScreen;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x6030012

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->mMusicControl:Landroid/view/View;

    .line 1581
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->mMusicControl:Landroid/view/View;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    const/16 v4, 0x50

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1584
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->mMusicControl:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 1585
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->mMusicControl:Landroid/view/View;

    const v1, 0x60b0052

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->mMusicTitle:Landroid/widget/TextView;

    .line 1587
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->mMusicControl:Landroid/view/View;

    const v1, 0x60b0051

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->mMusicBatteryIndicator:Landroid/widget/ImageView;

    .line 1588
    iget v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->mMusicBatteryIndicatorId:I

    if-eqz v0, :cond_0

    .line 1589
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->mMusicBatteryIndicator:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->mMusicBatteryIndicatorId:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1592
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->mMusicControl:Landroid/view/View;

    const v1, 0x60b0054

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1593
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->mMusicControl:Landroid/view/View;

    const v1, 0x60b0056

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1595
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->mMusicControl:Landroid/view/View;

    const v1, 0x60b0055

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->mMusicPlayPauseButton:Landroid/widget/ImageView;

    .line 1596
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->mMusicPlayPauseButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1598
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->mMusicControl:Landroid/view/View;

    const v1, 0x60b0057

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiui/widget/SpectrumVisualizer;

    iput-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->mSpectrumVisualizer:Lmiui/widget/SpectrumVisualizer;

    .line 1599
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->mMusicControl:Landroid/view/View;

    const v1, 0x60b004f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/policy/impl/AlbumFrameView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->mAlbumView:Lcom/miui/internal/policy/impl/AlbumFrameView;

    .line 1600
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->mMusicControl:Landroid/view/View;

    const v1, 0x60b0050

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/policy/impl/AlbumFrameView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->mTempAlbumView:Lcom/miui/internal/policy/impl/AlbumFrameView;

    .line 1601
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->mMusicControl:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1602
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->init()V

    .line 1603
    return-void
.end method

.method private showAlbum()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 1763
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->mTempAlbumView:Lcom/miui/internal/policy/impl/AlbumFrameView;

    invoke-virtual {v0, v3}, Lcom/miui/internal/policy/impl/AlbumFrameView;->setVisibility(I)V

    .line 1764
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->mAlbumView:Lcom/miui/internal/policy/impl/AlbumFrameView;

    invoke-virtual {v0, v2}, Lcom/miui/internal/policy/impl/AlbumFrameView;->setVisibility(I)V

    .line 1766
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->mAlbumBm:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 1767
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->mAlbumView:Lcom/miui/internal/policy/impl/AlbumFrameView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->mAlbumBm:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/miui/internal/policy/impl/AlbumFrameView;->setDisplayBitmap(Landroid/graphics/Bitmap;)V

    .line 1768
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->mMusicBatteryIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1773
    :goto_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->this$0:Lcom/android/internal/policy/impl/MiuiLockScreen;

    #calls: Lcom/android/internal/policy/impl/MiuiLockScreen;->updateBackground()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/MiuiLockScreen;->access$2000(Lcom/android/internal/policy/impl/MiuiLockScreen;)V

    .line 1774
    return-void

    .line 1770
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->mAlbumView:Lcom/miui/internal/policy/impl/AlbumFrameView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->mDefaultAlbum:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/miui/internal/policy/impl/AlbumFrameView;->setDisplayBitmap(Landroid/graphics/Bitmap;)V

    .line 1771
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->mMusicBatteryIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method private startAlbumAnim(I)V
    .locals 2
    .parameter "type"

    .prologue
    .line 1780
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->mAlbumView:Lcom/miui/internal/policy/impl/AlbumFrameView;

    invoke-virtual {v0}, Lcom/miui/internal/policy/impl/AlbumFrameView;->clearAnimation()V

    .line 1781
    packed-switch p1, :pswitch_data_0

    .line 1796
    :goto_0
    return-void

    .line 1783
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->mMusicControl:Landroid/view/View;

    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->mAlbumFadeInAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1784
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->showAlbum()V

    goto :goto_0

    .line 1788
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->mMusicControl:Landroid/view/View;

    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->mAlbumFadeOutAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 1792
    :pswitch_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->mMusicControl:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    goto :goto_0

    .line 1781
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private startTrackChangeAnim()V
    .locals 2

    .prologue
    .line 1746
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->mAlbumView:Lcom/miui/internal/policy/impl/AlbumFrameView;

    invoke-virtual {v0}, Lcom/miui/internal/policy/impl/AlbumFrameView;->clearAnimation()V

    .line 1747
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->mTempAlbumView:Lcom/miui/internal/policy/impl/AlbumFrameView;

    invoke-virtual {v0}, Lcom/miui/internal/policy/impl/AlbumFrameView;->clearAnimation()V

    .line 1748
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->this$0:Lcom/android/internal/policy/impl/MiuiLockScreen;

    #calls: Lcom/android/internal/policy/impl/MiuiLockScreen;->updateBackground()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/MiuiLockScreen;->access$2000(Lcom/android/internal/policy/impl/MiuiLockScreen;)V

    .line 1749
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->mTempAlbumView:Lcom/miui/internal/policy/impl/AlbumFrameView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/internal/policy/impl/AlbumFrameView;->setVisibility(I)V

    .line 1750
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->mTempAlbumView:Lcom/miui/internal/policy/impl/AlbumFrameView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->mAlbumFadeOutAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Lcom/miui/internal/policy/impl/AlbumFrameView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1751
    return-void
.end method

.method private updateMusic()V
    .locals 4

    .prologue
    .line 1932
    iget-object v2, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->mMusicControl:Landroid/view/View;

    if-nez v2, :cond_1

    .line 1957
    :cond_0
    :goto_0
    return-void

    .line 1935
    :cond_1
    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v0

    .line 1937
    .local v0, isMusicActive:Z
    move v1, v0

    .line 1938
    .local v1, isShowPlaying:Z
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->mIsOnlineSongBlocking:Z

    if-eqz v2, :cond_2

    .line 1939
    const/4 v1, 0x1

    .line 1941
    :cond_2
    iget-object v3, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->mMusicPlayPauseButton:Landroid/widget/ImageView;

    if-eqz v1, :cond_3

    const v2, 0x60200ae

    :goto_1
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1944
    iget v2, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->mMusicStatus:I

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 1952
    :pswitch_0
    if-eqz v0, :cond_0

    .line 1953
    const/4 v2, 0x2

    iput v2, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->mMusicStatus:I

    goto :goto_0

    .line 1941
    :cond_3
    const v2, 0x60200b1

    goto :goto_1

    .line 1946
    :pswitch_1
    if-nez v0, :cond_0

    .line 1947
    const/4 v2, 0x1

    iput v2, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->mMusicStatus:I

    goto :goto_0

    .line 1944
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateSpectrumVisualizer()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 2055
    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->mSpectrumVisualizer:Lmiui/widget/SpectrumVisualizer;

    if-nez v1, :cond_0

    .line 2062
    :goto_0
    return-void

    .line 2058
    :cond_0
    const/4 v1, 0x3

    invoke-static {v1, v0}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->mMusicControl:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->this$0:Lcom/android/internal/policy/impl/MiuiLockScreen;

    #getter for: Lcom/android/internal/policy/impl/MiuiLockScreen;->isPaused:Z
    invoke-static {v1}, Lcom/android/internal/policy/impl/MiuiLockScreen;->access$1700(Lcom/android/internal/policy/impl/MiuiLockScreen;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x1

    .line 2061
    .local v0, isEnable:Z
    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->mSpectrumVisualizer:Lmiui/widget/SpectrumVisualizer;

    invoke-virtual {v1, v0}, Lmiui/widget/SpectrumVisualizer;->enableUpdate(Z)V

    goto :goto_0
.end method


# virtual methods
.method public addCheckStreamCallbacks()V
    .locals 1

    .prologue
    .line 1918
    const/16 v0, 0x3e8

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->addCheckStreamCallbacks(I)V

    .line 1919
    return-void
.end method

.method public addCheckStreamCallbacks(I)V
    .locals 4
    .parameter "delayTime"

    .prologue
    .line 1922
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->removeCheckStreamCallbacks()V

    .line 1923
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->this$0:Lcom/android/internal/policy/impl/MiuiLockScreen;

    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->mCheckStreamMusicRunnable:Ljava/lang/Runnable;

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/policy/impl/MiuiLockScreen;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1924
    return-void
.end method

.method public clearAnimation()V
    .locals 1

    .prologue
    .line 1974
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->mMusicControl:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1975
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->mMusicControl:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 1977
    :cond_0
    return-void
.end method

.method public enableAlbum(Z)V
    .locals 3
    .parameter "enable"

    .prologue
    const/4 v2, 0x0

    .line 1672
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->mEnable:Z

    .line 1673
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->mAlbumChanged:Z

    if-eqz v1, :cond_0

    .line 1674
    iput-object v2, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->mAlbumBm:Landroid/graphics/Bitmap;

    .line 1675
    iput-object v2, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->mTempAlbumBm:Landroid/graphics/Bitmap;

    .line 1677
    :cond_0
    if-eqz p1, :cond_2

    .line 1678
    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v0

    .line 1679
    .local v0, isMusicActive:Z
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->mIsOnlineSongBlocking:Z

    if-nez v1, :cond_1

    if-eqz v0, :cond_2

    .line 1680
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->requestAlbum()V

    .line 1683
    .end local v0           #isMusicActive:Z
    :cond_2
    return-void
.end method

.method public getMusicControl()Landroid/view/View;
    .locals 1

    .prologue
    .line 1980
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->mMusicControl:Landroid/view/View;

    if-nez v0, :cond_0

    .line 1981
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->setupMusicControl()V

    .line 1983
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->updateMusic()V

    .line 1984
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->mMusicControl:Landroid/view/View;

    return-object v0
.end method

.method public init()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 1516
    iget-object v8, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->this$0:Lcom/android/internal/policy/impl/MiuiLockScreen;

    #getter for: Lcom/android/internal/policy/impl/MiuiLockScreen;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/android/internal/policy/impl/MiuiLockScreen;->access$600(Lcom/android/internal/policy/impl/MiuiLockScreen;)Landroid/content/Context;

    move-result-object v8

    const v9, 0x6040002

    invoke-static {v8, v9}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v8

    iput-object v8, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->mAlbumFadeInAnim:Landroid/view/animation/Animation;

    .line 1517
    iget-object v8, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->this$0:Lcom/android/internal/policy/impl/MiuiLockScreen;

    #getter for: Lcom/android/internal/policy/impl/MiuiLockScreen;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/android/internal/policy/impl/MiuiLockScreen;->access$700(Lcom/android/internal/policy/impl/MiuiLockScreen;)Landroid/content/Context;

    move-result-object v8

    const v9, 0x6040003

    invoke-static {v8, v9}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v8

    iput-object v8, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->mAlbumFadeOutAnim:Landroid/view/animation/Animation;

    .line 1518
    iput-boolean v10, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->mAlbumChanged:Z

    .line 1519
    iget-object v8, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->this$0:Lcom/android/internal/policy/impl/MiuiLockScreen;

    #getter for: Lcom/android/internal/policy/impl/MiuiLockScreen;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/android/internal/policy/impl/MiuiLockScreen;->access$800(Lcom/android/internal/policy/impl/MiuiLockScreen;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x60200a9

    invoke-static {v8, v9}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v8

    iput-object v8, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->mDefaultAlbum:Landroid/graphics/Bitmap;

    .line 1521
    new-instance v2, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController$1;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController$1;-><init>(Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;)V

    .line 1547
    .local v2, animationListener:Landroid/view/animation/Animation$AnimationListener;
    iget-object v8, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->mAlbumFadeInAnim:Landroid/view/animation/Animation;

    invoke-virtual {v8, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1548
    iget-object v8, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->mAlbumFadeOutAnim:Landroid/view/animation/Animation;

    invoke-virtual {v8, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1549
    iget-object v8, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->mAlbumFadeInAnim:Landroid/view/animation/Animation;

    invoke-virtual {v8, v10}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 1551
    iget-object v8, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->this$0:Lcom/android/internal/policy/impl/MiuiLockScreen;

    #getter for: Lcom/android/internal/policy/impl/MiuiLockScreen;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/android/internal/policy/impl/MiuiLockScreen;->access$1400(Lcom/android/internal/policy/impl/MiuiLockScreen;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 1552
    .local v6, res:Landroid/content/res/Resources;
    const v8, 0x60200a3

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v4

    .line 1553
    .local v4, is:Ljava/io/InputStream;
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 1554
    .local v5, rect:Landroid/graphics/Rect;
    invoke-static {v6, v11, v4, v5, v11}, Landroid/graphics/BitmapFactory;->decodeResourceStream(Landroid/content/res/Resources;Landroid/util/TypedValue;Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1556
    .local v0, albumFilter:Landroid/graphics/Bitmap;
    if-eqz v4, :cond_0

    .line 1557
    :try_start_0
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1562
    :cond_0
    :goto_0
    iget-object v8, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->mAlbumView:Lcom/miui/internal/policy/impl/AlbumFrameView;

    invoke-virtual {v8, v5}, Lcom/miui/internal/policy/impl/AlbumFrameView;->setRect(Landroid/graphics/Rect;)V

    .line 1563
    iget-object v8, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->mAlbumView:Lcom/miui/internal/policy/impl/AlbumFrameView;

    invoke-virtual {v8, v0}, Lcom/miui/internal/policy/impl/AlbumFrameView;->setFilterBitmap(Landroid/graphics/Bitmap;)V

    .line 1564
    iget-object v8, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->mAlbumView:Lcom/miui/internal/policy/impl/AlbumFrameView;

    iget-object v9, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->mDefaultAlbum:Landroid/graphics/Bitmap;

    invoke-virtual {v8, v9}, Lcom/miui/internal/policy/impl/AlbumFrameView;->setDisplayBitmap(Landroid/graphics/Bitmap;)V

    .line 1565
    iget-object v8, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->mAlbumView:Lcom/miui/internal/policy/impl/AlbumFrameView;

    invoke-virtual {v8}, Lcom/miui/internal/policy/impl/AlbumFrameView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 1566
    .local v1, albumView:Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    iput v8, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 1567
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    iput v8, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 1568
    iget-object v8, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->mAlbumView:Lcom/miui/internal/policy/impl/AlbumFrameView;

    invoke-virtual {v8, v1}, Lcom/miui/internal/policy/impl/AlbumFrameView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1570
    iget-object v8, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->mTempAlbumView:Lcom/miui/internal/policy/impl/AlbumFrameView;

    invoke-virtual {v8, v5}, Lcom/miui/internal/policy/impl/AlbumFrameView;->setRect(Landroid/graphics/Rect;)V

    .line 1571
    iget-object v8, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->mTempAlbumView:Lcom/miui/internal/policy/impl/AlbumFrameView;

    invoke-virtual {v8, v0}, Lcom/miui/internal/policy/impl/AlbumFrameView;->setFilterBitmap(Landroid/graphics/Bitmap;)V

    .line 1572
    iget-object v8, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->mTempAlbumView:Lcom/miui/internal/policy/impl/AlbumFrameView;

    iget-object v9, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->mDefaultAlbum:Landroid/graphics/Bitmap;

    invoke-virtual {v8, v9}, Lcom/miui/internal/policy/impl/AlbumFrameView;->setDisplayBitmap(Landroid/graphics/Bitmap;)V

    .line 1573
    iget-object v8, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->mTempAlbumView:Lcom/miui/internal/policy/impl/AlbumFrameView;

    invoke-virtual {v8}, Lcom/miui/internal/policy/impl/AlbumFrameView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/FrameLayout$LayoutParams;

    .line 1574
    .local v7, tempAlbumView:Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    iput v8, v7, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 1575
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    iput v8, v7, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 1576
    iget-object v8, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->mTempAlbumView:Lcom/miui/internal/policy/impl/AlbumFrameView;

    invoke-virtual {v8, v7}, Lcom/miui/internal/policy/impl/AlbumFrameView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1577
    return-void

    .line 1559
    .end local v1           #albumView:Landroid/widget/FrameLayout$LayoutParams;
    .end local v7           #tempAlbumView:Landroid/widget/FrameLayout$LayoutParams;
    :catch_0
    move-exception v3

    .line 1560
    .local v3, e:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public isMusicControlVisible()Z
    .locals 1

    .prologue
    .line 1606
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->mMusicControl:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->mMusicControl:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMusicStatusNone()Z
    .locals 1

    .prologue
    .line 1960
    iget v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->mMusicStatus:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2066
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->this$0:Lcom/android/internal/policy/impl/MiuiLockScreen;

    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->mEnableSpectrumVisualizerRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/MiuiLockScreen;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2067
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->mMusicControl:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2068
    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->enableMusicControl(Z)V

    .line 2069
    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->enableAlbum(Z)V

    .line 2071
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->removeCheckStreamCallbacks()V

    .line 2072
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->updateSpectrumVisualizer()V

    .line 2073
    return-void
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2076
    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->this$0:Lcom/android/internal/policy/impl/MiuiLockScreen;

    #getter for: Lcom/android/internal/policy/impl/MiuiLockScreen;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/internal/policy/impl/MiuiLockScreen;->access$3500(Lcom/android/internal/policy/impl/MiuiLockScreen;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lmiui/util/AudioOutputHelper;->hasActiveReceivers(Landroid/content/Context;)Z

    move-result v0

    .line 2077
    .local v0, isMusicActive:Z
    if-eqz v0, :cond_2

    .line 2078
    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->mMusicControl:Landroid/view/View;

    if-nez v1, :cond_0

    .line 2079
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->setupMusicControl()V

    .line 2081
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->this$0:Lcom/android/internal/policy/impl/MiuiLockScreen;

    const/4 v2, 0x4

    #setter for: Lcom/android/internal/policy/impl/MiuiLockScreen;->mControlViewType:I
    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/MiuiLockScreen;->access$2102(Lcom/android/internal/policy/impl/MiuiLockScreen;I)I

    .line 2082
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->mMusicStatus:I

    .line 2083
    invoke-direct {p0, v3}, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->enableMusicControl(Z)V

    .line 2084
    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->enableAlbum(Z)V

    .line 2086
    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->this$0:Lcom/android/internal/policy/impl/MiuiLockScreen;

    iget-object v2, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->mEnableSpectrumVisualizerRunnable:Ljava/lang/Runnable;

    const-wide/16 v3, 0x1f4

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/internal/policy/impl/MiuiLockScreen;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2098
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->addCheckStreamCallbacks()V

    .line 2099
    return-void

    .line 2088
    :cond_2
    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->this$0:Lcom/android/internal/policy/impl/MiuiLockScreen;

    #setter for: Lcom/android/internal/policy/impl/MiuiLockScreen;->mControlViewType:I
    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/MiuiLockScreen;->access$2102(Lcom/android/internal/policy/impl/MiuiLockScreen;I)I

    .line 2089
    iput v2, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->mMusicStatus:I

    .line 2090
    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->mMusicControl:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 2091
    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->enableMusicControl(Z)V

    .line 2092
    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->enableAlbum(Z)V

    .line 2093
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->hideAlbum()V

    .line 2094
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->updateSpectrumVisualizer()V

    goto :goto_0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v5, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 1617
    const/16 v1, 0x55

    .line 1619
    .local v1, keyCode:I
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 1629
    :goto_0
    :pswitch_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    and-int/lit16 v0, v4, 0xff

    .line 1630
    .local v0, action:I
    if-nez v0, :cond_1

    .line 1631
    iget-object v4, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->this$0:Lcom/android/internal/policy/impl/MiuiLockScreen;

    #getter for: Lcom/android/internal/policy/impl/MiuiLockScreen;->mSelector:Lcom/miui/internal/policy/impl/SlidingPanel;
    invoke-static {v4}, Lcom/android/internal/policy/impl/MiuiLockScreen;->access$400(Lcom/android/internal/policy/impl/MiuiLockScreen;)Lcom/miui/internal/policy/impl/SlidingPanel;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/miui/internal/policy/impl/SlidingPanel;->requestDisallowInterceptTouchEvent(Z)V

    .line 1632
    invoke-direct {p0, v2, v1}, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->sendMediaButtonBroadcast(II)V

    .line 1633
    invoke-virtual {p1, v3}, Landroid/view/View;->setPressed(Z)V

    .line 1649
    :cond_0
    :goto_1
    return v3

    .line 1621
    .end local v0           #action:I
    :pswitch_1
    const/16 v1, 0x58

    .line 1622
    goto :goto_0

    .line 1625
    :pswitch_2
    const/16 v1, 0x57

    goto :goto_0

    .line 1635
    .restart local v0       #action:I
    :cond_1
    if-eq v0, v3, :cond_2

    const/4 v4, 0x3

    if-ne v0, v4, :cond_0

    .line 1636
    :cond_2
    invoke-direct {p0, v3, v1}, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->sendMediaButtonBroadcast(II)V

    .line 1637
    invoke-virtual {p1, v2}, Landroid/view/View;->setPressed(Z)V

    .line 1639
    const/16 v4, 0x55

    if-ne v1, v4, :cond_3

    iget v4, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->mMusicStatus:I

    if-ne v4, v5, :cond_3

    move v2, v3

    .line 1641
    .local v2, showPlayIcon:Z
    :cond_3
    iget-object v6, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->mMusicPlayPauseButton:Landroid/widget/ImageView;

    if-eqz v2, :cond_4

    const v4, 0x60200b1

    :goto_2
    invoke-virtual {v6, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1643
    if-eqz v2, :cond_5

    move v4, v3

    :goto_3
    iput v4, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->mMusicStatus:I

    .line 1644
    iget-object v4, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->mSpectrumVisualizer:Lmiui/widget/SpectrumVisualizer;

    invoke-virtual {v4, v3}, Lmiui/widget/SpectrumVisualizer;->enableUpdate(Z)V

    .line 1647
    const/16 v4, 0xbb8

    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->addCheckStreamCallbacks(I)V

    goto :goto_1

    .line 1641
    :cond_4
    const v4, 0x60200ae

    goto :goto_2

    :cond_5
    move v4, v5

    .line 1643
    goto :goto_3

    .line 1619
    :pswitch_data_0
    .packed-switch 0x60b0054
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public registerPlayerStatusListener()V
    .locals 5

    .prologue
    .line 2030
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 2031
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "com.miui.player.metachanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2032
    const-string v1, "lockscreen.action.SONG_METADATA_UPDATED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2033
    const-string v1, "com.miui.player.refreshprogress"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2034
    const-string v1, "com.miui.player.playstatechanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2035
    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->this$0:Lcom/android/internal/policy/impl/MiuiLockScreen;

    #getter for: Lcom/android/internal/policy/impl/MiuiLockScreen;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/internal/policy/impl/MiuiLockScreen;->access$3200(Lcom/android/internal/policy/impl/MiuiLockScreen;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->mPlayerStatusListener:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 2036
    return-void
.end method

.method public removeCheckStreamCallbacks()V
    .locals 2

    .prologue
    .line 1914
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->this$0:Lcom/android/internal/policy/impl/MiuiLockScreen;

    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->mCheckStreamMusicRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/MiuiLockScreen;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1915
    return-void
.end method

.method public requestAlbum(Landroid/content/Intent;Z)V
    .locals 7
    .parameter "intent"
    .parameter "forceRequest"

    .prologue
    const/4 v6, 0x0

    .line 1696
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->mAlbumChanged:Z

    .line 1697
    iget-boolean v5, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->mEnable:Z

    if-nez v5, :cond_1

    .line 1739
    :cond_0
    :goto_0
    return-void

    .line 1700
    :cond_1
    const-string v5, "album"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1701
    .local v0, albumName:Ljava/lang/String;
    const-string v5, "artist"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1702
    .local v2, artistName:Ljava/lang/String;
    if-nez v0, :cond_2

    .line 1703
    const-string v0, ""

    .line 1705
    :cond_2
    if-nez v2, :cond_3

    .line 1706
    const-string v2, ""

    .line 1708
    :cond_3
    if-nez p2, :cond_5

    .line 1709
    iget-object v5, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->mAlbumName:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->mArtistName:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1710
    iget-object v5, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->mAlbumBm:Landroid/graphics/Bitmap;

    if-nez v5, :cond_0

    .line 1715
    :cond_4
    iget-boolean v5, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->mEnable:Z

    if-eqz v5, :cond_0

    .line 1720
    :cond_5
    const-string v5, "album_uri"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    .line 1721
    .local v4, uri:Landroid/net/Uri;
    const/4 v3, 0x0

    .line 1722
    .local v3, isNeedRequest:Z
    if-eqz v4, :cond_7

    .line 1723
    const/4 v3, 0x1

    .line 1731
    :cond_6
    :goto_1
    iget-object v5, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->mAlbumBm:Landroid/graphics/Bitmap;

    iput-object v5, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->mTempAlbumBm:Landroid/graphics/Bitmap;

    .line 1732
    iput-object v6, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->mAlbumBm:Landroid/graphics/Bitmap;

    .line 1733
    iget-object v5, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->mTempAlbumView:Lcom/miui/internal/policy/impl/AlbumFrameView;

    invoke-virtual {v5, v6}, Lcom/miui/internal/policy/impl/AlbumFrameView;->setDisplayBitmap(Landroid/graphics/Bitmap;)V

    .line 1734
    if-eqz v3, :cond_8

    .line 1735
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->requestAlbum()V

    goto :goto_0

    .line 1725
    :cond_7
    const-string v5, "album_path"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1726
    .local v1, albumPath:Ljava/lang/String;
    if-eqz v1, :cond_6

    .line 1727
    const/4 v3, 0x1

    goto :goto_1

    .line 1737
    .end local v1           #albumPath:Ljava/lang/String;
    :cond_8
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->startTrackChangeAnim()V

    goto :goto_0
.end method

.method public setBatteryIndicator(I)V
    .locals 2
    .parameter "resId"

    .prologue
    .line 1610
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->mMusicBatteryIndicator:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 1611
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->mMusicBatteryIndicator:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->mMusicBatteryIndicatorId:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1613
    :cond_0
    return-void
.end method

.method public shouldShowMusic()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 1964
    iget v1, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->mMusicStatus:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->mMusicStatus:I

    if-ne v1, v0, :cond_2

    .line 1965
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->mMusicControl:Landroid/view/View;

    if-nez v1, :cond_1

    .line 1966
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->setupMusicControl()V

    .line 1970
    :cond_1
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toggleMusicControl()V
    .locals 6

    .prologue
    const/4 v0, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1861
    iget-object v5, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->mMusicControl:Landroid/view/View;

    if-nez v5, :cond_0

    .line 1862
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->setupMusicControl()V

    .line 1864
    :cond_0
    iget-object v5, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->mMusicControl:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_1

    move v2, v3

    .line 1865
    .local v2, isMusicShowNow:Z
    :goto_0
    const/4 v5, 0x3

    invoke-static {v5, v4}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v1

    .line 1867
    .local v1, isMusicActive:Z
    if-nez v2, :cond_3

    .line 1868
    iget-object v4, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->this$0:Lcom/android/internal/policy/impl/MiuiLockScreen;

    const/4 v5, 0x4

    #setter for: Lcom/android/internal/policy/impl/MiuiLockScreen;->mControlViewType:I
    invoke-static {v4, v5}, Lcom/android/internal/policy/impl/MiuiLockScreen;->access$2102(Lcom/android/internal/policy/impl/MiuiLockScreen;I)I

    .line 1869
    if-eqz v1, :cond_2

    .line 1870
    iput v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->mMusicStatus:I

    .line 1874
    :goto_1
    invoke-direct {p0, v3}, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->enableMusicControl(Z)V

    .line 1875
    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->enableAlbum(Z)V

    .line 1876
    invoke-direct {p0, v3}, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->startAlbumAnim(I)V

    .line 1887
    :goto_2
    return-void

    .end local v1           #isMusicActive:Z
    .end local v2           #isMusicShowNow:Z
    :cond_1
    move v2, v4

    .line 1864
    goto :goto_0

    .line 1872
    .restart local v1       #isMusicActive:Z
    .restart local v2       #isMusicShowNow:Z
    :cond_2
    iput v3, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->mMusicStatus:I

    goto :goto_1

    .line 1879
    :cond_3
    iput v4, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->mMusicStatus:I

    .line 1880
    iget-object v3, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->this$0:Lcom/android/internal/policy/impl/MiuiLockScreen;

    #setter for: Lcom/android/internal/policy/impl/MiuiLockScreen;->mControlViewType:I
    invoke-static {v3, v4}, Lcom/android/internal/policy/impl/MiuiLockScreen;->access$2102(Lcom/android/internal/policy/impl/MiuiLockScreen;I)I

    .line 1881
    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->enableAlbum(Z)V

    .line 1882
    iget-object v3, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->this$0:Lcom/android/internal/policy/impl/MiuiLockScreen;

    #getter for: Lcom/android/internal/policy/impl/MiuiLockScreen;->mShowingBatteryInfo:Z
    invoke-static {v3}, Lcom/android/internal/policy/impl/MiuiLockScreen;->access$2200(Lcom/android/internal/policy/impl/MiuiLockScreen;)Z

    move-result v3

    if-eqz v3, :cond_4

    move v0, v4

    .line 1884
    .local v0, animType:I
    :cond_4
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->startAlbumAnim(I)V

    .line 1885
    invoke-direct {p0, v4}, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->enableMusicControl(Z)V

    goto :goto_2
.end method

.method public unregisterPlayerStatusListener()V
    .locals 2

    .prologue
    .line 2039
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->this$0:Lcom/android/internal/policy/impl/MiuiLockScreen;

    #getter for: Lcom/android/internal/policy/impl/MiuiLockScreen;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/internal/policy/impl/MiuiLockScreen;->access$3300(Lcom/android/internal/policy/impl/MiuiLockScreen;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->mPlayerStatusListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2040
    return-void
.end method

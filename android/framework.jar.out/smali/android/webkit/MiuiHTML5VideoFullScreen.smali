.class public Landroid/webkit/MiuiHTML5VideoFullScreen;
.super Landroid/webkit/HTML5VideoView;
.source "MiuiHTML5VideoFullScreen.java"

# interfaces
.implements Landroid/widget/MediaController$MediaPlayerControl;
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/MiuiHTML5VideoFullScreen$VideoSurfaceView;
    }
.end annotation


# static fields
.field static final FULLSCREEN_OFF:I = 0x0

.field static final FULLSCREEN_SURFACECREATED:I = 0x2

.field static final FULLSCREEN_SURFACECREATING:I = 0x1

.field private static mLayout:Landroid/widget/FrameLayout;


# instance fields
.field private mBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

.field private final mCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

.field private mCanPause:Z

.field private mCanSeekBack:Z

.field private mCanSeekForward:Z

.field private mControllerChangedListener:Landroid/widget/MiuiMediaController$OnControllerChangedListener;

.field private mCurrentBufferPercentage:I

.field private mDragging:Z

.field private mFullScreenMode:I

.field private final mHandler:Landroid/os/Handler;

.field private mMovieController:Landroid/widget/MiuiMovieController;

.field private final mPlayingChecker:Ljava/lang/Runnable;

.field private final mProgressChecker:Ljava/lang/Runnable;

.field mSHCallback:Landroid/view/SurfaceHolder$Callback;

.field private mShowing:Z

.field private mSizeChangedListner:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

.field private mSurfaceHolder:Landroid/view/SurfaceHolder;

.field private mVideoHeight:I

.field private mVideoSurfaceView:Landroid/webkit/MiuiHTML5VideoFullScreen$VideoSurfaceView;

.field private mVideoWidth:I


# direct methods
.method constructor <init>(Landroid/content/Context;IIZ)V
    .locals 2
    .parameter "context"
    .parameter "videoLayerId"
    .parameter "position"
    .parameter "autoStart"

    .prologue
    const/4 v1, 0x0

    .line 152
    invoke-direct {p0}, Landroid/webkit/HTML5VideoView;-><init>()V

    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/MiuiHTML5VideoFullScreen;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 84
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Landroid/webkit/MiuiHTML5VideoFullScreen;->mHandler:Landroid/os/Handler;

    .line 87
    new-instance v0, Landroid/webkit/MiuiHTML5VideoFullScreen$1;

    invoke-direct {v0, p0}, Landroid/webkit/MiuiHTML5VideoFullScreen$1;-><init>(Landroid/webkit/MiuiHTML5VideoFullScreen;)V

    iput-object v0, p0, Landroid/webkit/MiuiHTML5VideoFullScreen;->mPlayingChecker:Ljava/lang/Runnable;

    .line 111
    new-instance v0, Landroid/webkit/MiuiHTML5VideoFullScreen$2;

    invoke-direct {v0, p0}, Landroid/webkit/MiuiHTML5VideoFullScreen$2;-><init>(Landroid/webkit/MiuiHTML5VideoFullScreen;)V

    iput-object v0, p0, Landroid/webkit/MiuiHTML5VideoFullScreen;->mSHCallback:Landroid/view/SurfaceHolder$Callback;

    .line 179
    new-instance v0, Landroid/webkit/MiuiHTML5VideoFullScreen$3;

    invoke-direct {v0, p0}, Landroid/webkit/MiuiHTML5VideoFullScreen$3;-><init>(Landroid/webkit/MiuiHTML5VideoFullScreen;)V

    iput-object v0, p0, Landroid/webkit/MiuiHTML5VideoFullScreen;->mProgressChecker:Ljava/lang/Runnable;

    .line 231
    new-instance v0, Landroid/webkit/MiuiHTML5VideoFullScreen$4;

    invoke-direct {v0, p0}, Landroid/webkit/MiuiHTML5VideoFullScreen$4;-><init>(Landroid/webkit/MiuiHTML5VideoFullScreen;)V

    iput-object v0, p0, Landroid/webkit/MiuiHTML5VideoFullScreen;->mCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

    .line 345
    new-instance v0, Landroid/webkit/MiuiHTML5VideoFullScreen$5;

    invoke-direct {v0, p0}, Landroid/webkit/MiuiHTML5VideoFullScreen$5;-><init>(Landroid/webkit/MiuiHTML5VideoFullScreen;)V

    iput-object v0, p0, Landroid/webkit/MiuiHTML5VideoFullScreen;->mBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    .line 372
    new-instance v0, Landroid/webkit/MiuiHTML5VideoFullScreen$6;

    invoke-direct {v0, p0}, Landroid/webkit/MiuiHTML5VideoFullScreen$6;-><init>(Landroid/webkit/MiuiHTML5VideoFullScreen;)V

    iput-object v0, p0, Landroid/webkit/MiuiHTML5VideoFullScreen;->mSizeChangedListner:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    .line 386
    new-instance v0, Landroid/webkit/MiuiHTML5VideoFullScreen$7;

    invoke-direct {v0, p0}, Landroid/webkit/MiuiHTML5VideoFullScreen$7;-><init>(Landroid/webkit/MiuiHTML5VideoFullScreen;)V

    iput-object v0, p0, Landroid/webkit/MiuiHTML5VideoFullScreen;->mControllerChangedListener:Landroid/widget/MiuiMediaController$OnControllerChangedListener;

    .line 153
    new-instance v0, Landroid/webkit/MiuiHTML5VideoFullScreen$VideoSurfaceView;

    invoke-direct {v0, p0, p1}, Landroid/webkit/MiuiHTML5VideoFullScreen$VideoSurfaceView;-><init>(Landroid/webkit/MiuiHTML5VideoFullScreen;Landroid/content/Context;)V

    iput-object v0, p0, Landroid/webkit/MiuiHTML5VideoFullScreen;->mVideoSurfaceView:Landroid/webkit/MiuiHTML5VideoFullScreen$VideoSurfaceView;

    .line 154
    iput v1, p0, Landroid/webkit/MiuiHTML5VideoFullScreen;->mFullScreenMode:I

    .line 155
    iput v1, p0, Landroid/webkit/MiuiHTML5VideoFullScreen;->mVideoWidth:I

    .line 156
    iput v1, p0, Landroid/webkit/MiuiHTML5VideoFullScreen;->mVideoHeight:I

    .line 157
    iput-boolean p4, p0, Landroid/webkit/MiuiHTML5VideoFullScreen;->mAutostart:Z

    .line 158
    invoke-virtual {p0, p2, p3, p4}, Landroid/webkit/MiuiHTML5VideoFullScreen;->init(IIZ)V

    .line 159
    iget-object v0, p0, Landroid/webkit/MiuiHTML5VideoFullScreen;->mPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Landroid/webkit/MiuiHTML5VideoFullScreen;->mSizeChangedListner:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    .line 160
    return-void
.end method

.method static synthetic access$000(Landroid/webkit/MiuiHTML5VideoFullScreen;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget v0, p0, Landroid/webkit/MiuiHTML5VideoFullScreen;->mVideoWidth:I

    return v0
.end method

.method static synthetic access$002(Landroid/webkit/MiuiHTML5VideoFullScreen;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23
    iput p1, p0, Landroid/webkit/MiuiHTML5VideoFullScreen;->mVideoWidth:I

    return p1
.end method

.method static synthetic access$100(Landroid/webkit/MiuiHTML5VideoFullScreen;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget v0, p0, Landroid/webkit/MiuiHTML5VideoFullScreen;->mVideoHeight:I

    return v0
.end method

.method static synthetic access$1000(Landroid/webkit/MiuiHTML5VideoFullScreen;)Landroid/view/SurfaceView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/webkit/MiuiHTML5VideoFullScreen;->getSurfaceView()Landroid/view/SurfaceView;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$102(Landroid/webkit/MiuiHTML5VideoFullScreen;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23
    iput p1, p0, Landroid/webkit/MiuiHTML5VideoFullScreen;->mVideoHeight:I

    return p1
.end method

.method static synthetic access$1100()Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Landroid/webkit/MiuiHTML5VideoFullScreen;->mLayout:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$1102(Landroid/widget/FrameLayout;)Landroid/widget/FrameLayout;
    .locals 0
    .parameter "x0"

    .prologue
    .line 23
    sput-object p0, Landroid/webkit/MiuiHTML5VideoFullScreen;->mLayout:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$1202(Landroid/webkit/MiuiHTML5VideoFullScreen;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23
    iput p1, p0, Landroid/webkit/MiuiHTML5VideoFullScreen;->mCurrentBufferPercentage:I

    return p1
.end method

.method static synthetic access$1300(Landroid/webkit/MiuiHTML5VideoFullScreen;)Landroid/webkit/MiuiHTML5VideoFullScreen$VideoSurfaceView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Landroid/webkit/MiuiHTML5VideoFullScreen;->mVideoSurfaceView:Landroid/webkit/MiuiHTML5VideoFullScreen$VideoSurfaceView;

    return-object v0
.end method

.method static synthetic access$1402(Landroid/webkit/MiuiHTML5VideoFullScreen;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23
    iput-boolean p1, p0, Landroid/webkit/MiuiHTML5VideoFullScreen;->mDragging:Z

    return p1
.end method

.method static synthetic access$1502(Landroid/webkit/MiuiHTML5VideoFullScreen;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23
    iput-boolean p1, p0, Landroid/webkit/MiuiHTML5VideoFullScreen;->mShowing:Z

    return p1
.end method

.method static synthetic access$200(Landroid/webkit/MiuiHTML5VideoFullScreen;)Landroid/widget/MiuiMovieController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Landroid/webkit/MiuiHTML5VideoFullScreen;->mMovieController:Landroid/widget/MiuiMovieController;

    return-object v0
.end method

.method static synthetic access$202(Landroid/webkit/MiuiHTML5VideoFullScreen;Landroid/widget/MiuiMovieController;)Landroid/widget/MiuiMovieController;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23
    iput-object p1, p0, Landroid/webkit/MiuiHTML5VideoFullScreen;->mMovieController:Landroid/widget/MiuiMovieController;

    return-object p1
.end method

.method static synthetic access$300(Landroid/webkit/MiuiHTML5VideoFullScreen;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Landroid/webkit/MiuiHTML5VideoFullScreen;->mPlayingChecker:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$400(Landroid/webkit/MiuiHTML5VideoFullScreen;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Landroid/webkit/MiuiHTML5VideoFullScreen;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$502(Landroid/webkit/MiuiHTML5VideoFullScreen;Landroid/view/SurfaceHolder;)Landroid/view/SurfaceHolder;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23
    iput-object p1, p0, Landroid/webkit/MiuiHTML5VideoFullScreen;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    return-object p1
.end method

.method static synthetic access$602(Landroid/webkit/MiuiHTML5VideoFullScreen;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23
    iput p1, p0, Landroid/webkit/MiuiHTML5VideoFullScreen;->mFullScreenMode:I

    return p1
.end method

.method static synthetic access$700(Landroid/webkit/MiuiHTML5VideoFullScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/webkit/MiuiHTML5VideoFullScreen;->prepareForFullScreen()V

    return-void
.end method

.method static synthetic access$800(Landroid/webkit/MiuiHTML5VideoFullScreen;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/webkit/MiuiHTML5VideoFullScreen;->setProgress()I

    move-result v0

    return v0
.end method

.method static synthetic access$900(Landroid/webkit/MiuiHTML5VideoFullScreen;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Landroid/webkit/MiuiHTML5VideoFullScreen;->mProgressChecker:Ljava/lang/Runnable;

    return-object v0
.end method

.method private getSurfaceView()Landroid/view/SurfaceView;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Landroid/webkit/MiuiHTML5VideoFullScreen;->mVideoSurfaceView:Landroid/webkit/MiuiHTML5VideoFullScreen$VideoSurfaceView;

    return-object v0
.end method

.method private prepareForFullScreen()V
    .locals 2

    .prologue
    .line 169
    iget-object v0, p0, Landroid/webkit/MiuiHTML5VideoFullScreen;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 171
    iget-object v0, p0, Landroid/webkit/MiuiHTML5VideoFullScreen;->mPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setScreenOnWhilePlaying(Z)V

    .line 172
    iget-object v0, p0, Landroid/webkit/MiuiHTML5VideoFullScreen;->mProxy:Landroid/webkit/HTML5VideoViewProxy;

    invoke-virtual {p0, v0}, Landroid/webkit/MiuiHTML5VideoFullScreen;->prepareDataAndDisplayMode(Landroid/webkit/HTML5VideoViewProxy;)V

    .line 174
    iget-object v0, p0, Landroid/webkit/MiuiHTML5VideoFullScreen;->mMovieController:Landroid/widget/MiuiMovieController;

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Landroid/webkit/MiuiHTML5VideoFullScreen;->mMovieController:Landroid/widget/MiuiMovieController;

    invoke-virtual {v0}, Landroid/widget/MiuiMovieController;->showLoading()V

    .line 177
    :cond_0
    return-void
.end method

.method private setProgress()I
    .locals 3

    .prologue
    .line 102
    iget-boolean v2, p0, Landroid/webkit/MiuiHTML5VideoFullScreen;->mDragging:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Landroid/webkit/MiuiHTML5VideoFullScreen;->mShowing:Z

    if-nez v2, :cond_1

    .line 103
    :cond_0
    const/4 v1, 0x0

    .line 108
    :goto_0
    return v1

    .line 105
    :cond_1
    invoke-virtual {p0}, Landroid/webkit/MiuiHTML5VideoFullScreen;->getCurrentPosition()I

    move-result v1

    .line 106
    .local v1, position:I
    invoke-virtual {p0}, Landroid/webkit/MiuiHTML5VideoFullScreen;->getDuration()I

    move-result v0

    .line 107
    .local v0, duration:I
    iget-object v2, p0, Landroid/webkit/MiuiHTML5VideoFullScreen;->mMovieController:Landroid/widget/MiuiMovieController;

    invoke-virtual {v2, v1, v0}, Landroid/widget/MiuiMovieController;->setTimes(II)V

    goto :goto_0
.end method

.method private toggleMovieControlsVisiblity()V
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Landroid/webkit/MiuiHTML5VideoFullScreen;->mMovieController:Landroid/widget/MiuiMovieController;

    invoke-virtual {v0}, Landroid/widget/MiuiMovieController;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Landroid/webkit/MiuiHTML5VideoFullScreen;->mMovieController:Landroid/widget/MiuiMovieController;

    invoke-virtual {v0}, Landroid/widget/MiuiMovieController;->hide()V

    .line 193
    :goto_0
    return-void

    .line 191
    :cond_0
    iget-object v0, p0, Landroid/webkit/MiuiHTML5VideoFullScreen;->mMovieController:Landroid/widget/MiuiMovieController;

    invoke-virtual {v0}, Landroid/widget/MiuiMovieController;->show()V

    goto :goto_0
.end method

.method private triggerPlayingChecker()V
    .locals 4

    .prologue
    .line 196
    iget-object v0, p0, Landroid/webkit/MiuiHTML5VideoFullScreen;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/webkit/MiuiHTML5VideoFullScreen;->mPlayingChecker:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 197
    iget-object v0, p0, Landroid/webkit/MiuiHTML5VideoFullScreen;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/webkit/MiuiHTML5VideoFullScreen;->mPlayingChecker:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 198
    return-void
.end method


# virtual methods
.method public canPause()Z
    .locals 1

    .prologue
    .line 323
    iget-boolean v0, p0, Landroid/webkit/MiuiHTML5VideoFullScreen;->mCanPause:Z

    return v0
.end method

.method public canSeekBackward()Z
    .locals 1

    .prologue
    .line 328
    iget-boolean v0, p0, Landroid/webkit/MiuiHTML5VideoFullScreen;->mCanSeekBack:Z

    return v0
.end method

.method public canSeekForward()Z
    .locals 1

    .prologue
    .line 333
    iget-boolean v0, p0, Landroid/webkit/MiuiHTML5VideoFullScreen;->mCanSeekForward:Z

    return v0
.end method

.method public decideDisplayMode()V
    .locals 2

    .prologue
    .line 164
    iget-object v0, p0, Landroid/webkit/MiuiHTML5VideoFullScreen;->mPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Landroid/webkit/MiuiHTML5VideoFullScreen;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 165
    return-void
.end method

.method public enterFullScreenVideoState(ILandroid/webkit/HTML5VideoViewProxy;Landroid/webkit/WebView;)V
    .locals 7
    .parameter "layerId"
    .parameter "proxy"
    .parameter "webView"

    .prologue
    const/4 v6, -0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 256
    iput v5, p0, Landroid/webkit/MiuiHTML5VideoFullScreen;->mFullScreenMode:I

    .line 257
    iput v4, p0, Landroid/webkit/MiuiHTML5VideoFullScreen;->mCurrentBufferPercentage:I

    .line 258
    iget-object v2, p0, Landroid/webkit/MiuiHTML5VideoFullScreen;->mPlayer:Landroid/media/MediaPlayer;

    iget-object v3, p0, Landroid/webkit/MiuiHTML5VideoFullScreen;->mBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 259
    iput-object p2, p0, Landroid/webkit/MiuiHTML5VideoFullScreen;->mProxy:Landroid/webkit/HTML5VideoViewProxy;

    .line 261
    iget-object v2, p0, Landroid/webkit/MiuiHTML5VideoFullScreen;->mVideoSurfaceView:Landroid/webkit/MiuiHTML5VideoFullScreen$VideoSurfaceView;

    invoke-virtual {v2}, Landroid/webkit/MiuiHTML5VideoFullScreen$VideoSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v2

    iget-object v3, p0, Landroid/webkit/MiuiHTML5VideoFullScreen;->mSHCallback:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {v2, v3}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 262
    iget-object v2, p0, Landroid/webkit/MiuiHTML5VideoFullScreen;->mVideoSurfaceView:Landroid/webkit/MiuiHTML5VideoFullScreen$VideoSurfaceView;

    invoke-virtual {v2}, Landroid/webkit/MiuiHTML5VideoFullScreen$VideoSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v2

    const/4 v3, 0x3

    invoke-interface {v2, v3}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 263
    iget-object v2, p0, Landroid/webkit/MiuiHTML5VideoFullScreen;->mVideoSurfaceView:Landroid/webkit/MiuiHTML5VideoFullScreen$VideoSurfaceView;

    invoke-virtual {v2, v5}, Landroid/webkit/MiuiHTML5VideoFullScreen$VideoSurfaceView;->setFocusable(Z)V

    .line 264
    iget-object v2, p0, Landroid/webkit/MiuiHTML5VideoFullScreen;->mVideoSurfaceView:Landroid/webkit/MiuiHTML5VideoFullScreen$VideoSurfaceView;

    invoke-virtual {v2, v5}, Landroid/webkit/MiuiHTML5VideoFullScreen$VideoSurfaceView;->setFocusableInTouchMode(Z)V

    .line 265
    iget-object v2, p0, Landroid/webkit/MiuiHTML5VideoFullScreen;->mVideoSurfaceView:Landroid/webkit/MiuiHTML5VideoFullScreen$VideoSurfaceView;

    invoke-virtual {v2}, Landroid/webkit/MiuiHTML5VideoFullScreen$VideoSurfaceView;->requestFocus()Z

    .line 268
    new-instance v2, Landroid/widget/FrameLayout;

    iget-object v3, p0, Landroid/webkit/MiuiHTML5VideoFullScreen;->mProxy:Landroid/webkit/HTML5VideoViewProxy;

    invoke-virtual {v3}, Landroid/webkit/HTML5VideoViewProxy;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    sput-object v2, Landroid/webkit/MiuiHTML5VideoFullScreen;->mLayout:Landroid/widget/FrameLayout;

    .line 269
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v2, 0x11

    invoke-direct {v1, v6, v6, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 275
    .local v1, layoutParams:Landroid/widget/FrameLayout$LayoutParams;
    sget-object v2, Landroid/webkit/MiuiHTML5VideoFullScreen;->mLayout:Landroid/widget/FrameLayout;

    invoke-direct {p0}, Landroid/webkit/MiuiHTML5VideoFullScreen;->getSurfaceView()Landroid/view/SurfaceView;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 278
    new-instance v2, Landroid/widget/MiuiMovieController;

    iget-object v3, p0, Landroid/webkit/MiuiHTML5VideoFullScreen;->mProxy:Landroid/webkit/HTML5VideoViewProxy;

    invoke-virtual {v3}, Landroid/webkit/HTML5VideoViewProxy;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/MiuiMovieController;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Landroid/webkit/MiuiHTML5VideoFullScreen;->mMovieController:Landroid/widget/MiuiMovieController;

    .line 279
    iget-object v2, p0, Landroid/webkit/MiuiHTML5VideoFullScreen;->mMovieController:Landroid/widget/MiuiMovieController;

    sget-object v3, Landroid/webkit/MiuiHTML5VideoFullScreen;->mLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getSystemUiVisibility()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/MiuiMovieController;->setSystemUiVisibility(I)V

    .line 280
    iget-object v2, p0, Landroid/webkit/MiuiHTML5VideoFullScreen;->mMovieController:Landroid/widget/MiuiMovieController;

    iget-object v3, p0, Landroid/webkit/MiuiHTML5VideoFullScreen;->mControllerChangedListener:Landroid/widget/MiuiMediaController$OnControllerChangedListener;

    invoke-virtual {v2, v3}, Landroid/widget/MiuiMovieController;->setControlListener(Landroid/widget/MiuiMediaController$OnControllerChangedListener;)V

    .line 281
    iget-object v2, p0, Landroid/webkit/MiuiHTML5VideoFullScreen;->mMovieController:Landroid/widget/MiuiMovieController;

    invoke-virtual {v2, v4}, Landroid/widget/MiuiMovieController;->setCanReplay(Z)V

    .line 282
    sget-object v2, Landroid/webkit/MiuiHTML5VideoFullScreen;->mLayout:Landroid/widget/FrameLayout;

    iget-object v3, p0, Landroid/webkit/MiuiHTML5VideoFullScreen;->mMovieController:Landroid/widget/MiuiMovieController;

    invoke-virtual {v3}, Landroid/widget/MiuiMovieController;->getView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 284
    sget-object v2, Landroid/webkit/MiuiHTML5VideoFullScreen;->mLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 286
    iget-object v2, p0, Landroid/webkit/MiuiHTML5VideoFullScreen;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Landroid/webkit/MiuiHTML5VideoFullScreen;->mProgressChecker:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 287
    iget-object v2, p0, Landroid/webkit/MiuiHTML5VideoFullScreen;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Landroid/webkit/MiuiHTML5VideoFullScreen;->mProgressChecker:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 289
    invoke-virtual {p3}, Landroid/webkit/WebView;->getWebChromeClient()Landroid/webkit/WebChromeClient;

    move-result-object v0

    .line 290
    .local v0, client:Landroid/webkit/WebChromeClient;
    if-eqz v0, :cond_0

    .line 291
    sget-object v2, Landroid/webkit/MiuiHTML5VideoFullScreen;->mLayout:Landroid/widget/FrameLayout;

    iget-object v3, p0, Landroid/webkit/MiuiHTML5VideoFullScreen;->mCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

    invoke-virtual {v0, v2, v3}, Landroid/webkit/WebChromeClient;->onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V

    .line 294
    invoke-virtual {p3}, Landroid/webkit/WebView;->getViewManager()Landroid/webkit/ViewManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 295
    invoke-virtual {p3}, Landroid/webkit/WebView;->getViewManager()Landroid/webkit/ViewManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/ViewManager;->hideAll()V

    .line 297
    :cond_0
    return-void
.end method

.method public fullScreenExited()Z
    .locals 1

    .prologue
    .line 228
    sget-object v0, Landroid/webkit/MiuiHTML5VideoFullScreen;->mLayout:Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getBufferPercentage()I
    .locals 1

    .prologue
    .line 338
    iget-object v0, p0, Landroid/webkit/MiuiHTML5VideoFullScreen;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 339
    iget v0, p0, Landroid/webkit/MiuiHTML5VideoFullScreen;->mCurrentBufferPercentage:I

    .line 341
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFullScreenMode()Z
    .locals 1

    .prologue
    .line 304
    const/4 v0, 0x1

    return v0
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 6
    .parameter "mp"

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 202
    invoke-super {p0, p1}, Landroid/webkit/HTML5VideoView;->onPrepared(Landroid/media/MediaPlayer;)V

    .line 204
    iget-object v1, p0, Landroid/webkit/MiuiHTML5VideoFullScreen;->mVideoSurfaceView:Landroid/webkit/MiuiHTML5VideoFullScreen$VideoSurfaceView;

    invoke-virtual {v1, p0}, Landroid/webkit/MiuiHTML5VideoFullScreen$VideoSurfaceView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 206
    invoke-virtual {p1, v2, v2}, Landroid/media/MediaPlayer;->getMetadata(ZZ)Landroid/media/Metadata;

    move-result-object v0

    .line 208
    .local v0, data:Landroid/media/Metadata;
    if-eqz v0, :cond_6

    .line 209
    invoke-virtual {v0, v3}, Landroid/media/Metadata;->has(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v3}, Landroid/media/Metadata;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_0
    move v1, v3

    :goto_0
    iput-boolean v1, p0, Landroid/webkit/MiuiHTML5VideoFullScreen;->mCanPause:Z

    .line 211
    invoke-virtual {v0, v4}, Landroid/media/Metadata;->has(I)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0, v4}, Landroid/media/Metadata;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_1
    move v1, v3

    :goto_1
    iput-boolean v1, p0, Landroid/webkit/MiuiHTML5VideoFullScreen;->mCanSeekBack:Z

    .line 213
    invoke-virtual {v0, v5}, Landroid/media/Metadata;->has(I)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0, v5}, Landroid/media/Metadata;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    move v2, v3

    :cond_3
    iput-boolean v2, p0, Landroid/webkit/MiuiHTML5VideoFullScreen;->mCanSeekForward:Z

    .line 219
    :goto_2
    invoke-virtual {p0}, Landroid/webkit/MiuiHTML5VideoFullScreen;->start()V

    .line 221
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v1

    iput v1, p0, Landroid/webkit/MiuiHTML5VideoFullScreen;->mVideoWidth:I

    .line 222
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v1

    iput v1, p0, Landroid/webkit/MiuiHTML5VideoFullScreen;->mVideoHeight:I

    .line 224
    iget-object v1, p0, Landroid/webkit/MiuiHTML5VideoFullScreen;->mVideoSurfaceView:Landroid/webkit/MiuiHTML5VideoFullScreen$VideoSurfaceView;

    invoke-virtual {v1}, Landroid/webkit/MiuiHTML5VideoFullScreen$VideoSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    iget v2, p0, Landroid/webkit/MiuiHTML5VideoFullScreen;->mVideoWidth:I

    iget v3, p0, Landroid/webkit/MiuiHTML5VideoFullScreen;->mVideoHeight:I

    invoke-interface {v1, v2, v3}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    .line 225
    return-void

    :cond_4
    move v1, v2

    .line 209
    goto :goto_0

    :cond_5
    move v1, v2

    .line 211
    goto :goto_1

    .line 216
    :cond_6
    iput-boolean v3, p0, Landroid/webkit/MiuiHTML5VideoFullScreen;->mCanSeekForward:Z

    iput-boolean v3, p0, Landroid/webkit/MiuiHTML5VideoFullScreen;->mCanSeekBack:Z

    iput-boolean v3, p0, Landroid/webkit/MiuiHTML5VideoFullScreen;->mCanPause:Z

    goto :goto_2
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "v"
    .parameter "event"

    .prologue
    .line 354
    iget v0, p0, Landroid/webkit/MiuiHTML5VideoFullScreen;->mFullScreenMode:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Landroid/webkit/MiuiHTML5VideoFullScreen;->mMovieController:Landroid/widget/MiuiMovieController;

    if-eqz v0, :cond_0

    .line 355
    invoke-direct {p0}, Landroid/webkit/MiuiHTML5VideoFullScreen;->toggleMovieControlsVisiblity()V

    .line 357
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 315
    invoke-super {p0}, Landroid/webkit/HTML5VideoView;->pause()V

    .line 316
    iget-object v0, p0, Landroid/webkit/MiuiHTML5VideoFullScreen;->mMovieController:Landroid/widget/MiuiMovieController;

    if-eqz v0, :cond_0

    .line 317
    iget-object v0, p0, Landroid/webkit/MiuiHTML5VideoFullScreen;->mMovieController:Landroid/widget/MiuiMovieController;

    invoke-virtual {v0}, Landroid/widget/MiuiMovieController;->showPaused()V

    .line 319
    :cond_0
    return-void
.end method

.method public start()V
    .locals 0

    .prologue
    .line 310
    invoke-super {p0}, Landroid/webkit/HTML5VideoView;->start()V

    .line 311
    invoke-direct {p0}, Landroid/webkit/MiuiHTML5VideoFullScreen;->triggerPlayingChecker()V

    .line 312
    return-void
.end method

.method protected switchProgressView(Z)V
    .locals 1
    .parameter "playerBuffering"

    .prologue
    .line 362
    iget-object v0, p0, Landroid/webkit/MiuiHTML5VideoFullScreen;->mMovieController:Landroid/widget/MiuiMovieController;

    if-eqz v0, :cond_0

    .line 363
    if-eqz p1, :cond_1

    .line 364
    iget-object v0, p0, Landroid/webkit/MiuiHTML5VideoFullScreen;->mMovieController:Landroid/widget/MiuiMovieController;

    invoke-virtual {v0}, Landroid/widget/MiuiMovieController;->showLoading()V

    .line 369
    :cond_0
    :goto_0
    return-void

    .line 366
    :cond_1
    invoke-direct {p0}, Landroid/webkit/MiuiHTML5VideoFullScreen;->triggerPlayingChecker()V

    goto :goto_0
.end method

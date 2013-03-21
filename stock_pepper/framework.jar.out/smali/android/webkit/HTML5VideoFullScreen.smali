.class public Landroid/webkit/HTML5VideoFullScreen;
.super Landroid/webkit/HTML5VideoView;
.source "HTML5VideoFullScreen.java"

# interfaces
.implements Landroid/widget/MediaController$MediaPlayerControl;
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/HTML5VideoFullScreen$FullScreenMediaController;,
        Landroid/webkit/HTML5VideoFullScreen$VideoSurfaceView;
    }
.end annotation


# static fields
.field static final FULLSCREEN_OFF:I = 0x0

.field static final FULLSCREEN_SURFACECREATED:I = 0x2

.field static final FULLSCREEN_SURFACECREATING:I = 0x1

.field private static mLayout:Landroid/widget/FrameLayout;

.field private static mProgressView:Landroid/view/View;


# instance fields
.field private mBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

.field private final mCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

.field private mCanPause:Z

.field private mCanSeekBack:Z

.field private mCanSeekForward:Z

.field private mCurrentBufferPercentage:I

.field private mFullScreenMode:I

.field private mMediaController:Landroid/widget/MediaController;

.field private mMediaControllerPrepared:Z

.field mSHCallback:Landroid/view/SurfaceHolder$Callback;

.field private mSurfaceHolder:Landroid/view/SurfaceHolder;

.field private mVideoHeight:I

.field private mVideoSurfaceView:Landroid/webkit/HTML5VideoFullScreen$VideoSurfaceView;

.field private mVideoWidth:I


# direct methods
.method constructor <init>(Landroid/content/Context;IIZLandroid/media/MediaPlayer;)V
    .locals 2
    .parameter "context"
    .parameter "videoLayerId"
    .parameter "position"
    .parameter "autoStart"
    .parameter "player"

    .prologue
    const/4 v1, 0x0

    .line 124
    invoke-direct {p0}, Landroid/webkit/HTML5VideoView;-><init>()V

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/HTML5VideoFullScreen;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 76
    iput-boolean v1, p0, Landroid/webkit/HTML5VideoFullScreen;->mMediaControllerPrepared:Z

    .line 83
    new-instance v0, Landroid/webkit/HTML5VideoFullScreen$1;

    invoke-direct {v0, p0}, Landroid/webkit/HTML5VideoFullScreen$1;-><init>(Landroid/webkit/HTML5VideoFullScreen;)V

    iput-object v0, p0, Landroid/webkit/HTML5VideoFullScreen;->mSHCallback:Landroid/view/SurfaceHolder$Callback;

    .line 229
    new-instance v0, Landroid/webkit/HTML5VideoFullScreen$2;

    invoke-direct {v0, p0}, Landroid/webkit/HTML5VideoFullScreen$2;-><init>(Landroid/webkit/HTML5VideoFullScreen;)V

    iput-object v0, p0, Landroid/webkit/HTML5VideoFullScreen;->mCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

    .line 334
    new-instance v0, Landroid/webkit/HTML5VideoFullScreen$3;

    invoke-direct {v0, p0}, Landroid/webkit/HTML5VideoFullScreen$3;-><init>(Landroid/webkit/HTML5VideoFullScreen;)V

    iput-object v0, p0, Landroid/webkit/HTML5VideoFullScreen;->mBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    .line 125
    new-instance v0, Landroid/webkit/HTML5VideoFullScreen$VideoSurfaceView;

    invoke-direct {v0, p0, p1}, Landroid/webkit/HTML5VideoFullScreen$VideoSurfaceView;-><init>(Landroid/webkit/HTML5VideoFullScreen;Landroid/content/Context;)V

    iput-object v0, p0, Landroid/webkit/HTML5VideoFullScreen;->mVideoSurfaceView:Landroid/webkit/HTML5VideoFullScreen$VideoSurfaceView;

    .line 126
    iput v1, p0, Landroid/webkit/HTML5VideoFullScreen;->mFullScreenMode:I

    .line 127
    iput-boolean v1, p0, Landroid/webkit/HTML5VideoFullScreen;->mMediaControllerPrepared:Z

    .line 128
    iput v1, p0, Landroid/webkit/HTML5VideoFullScreen;->mVideoWidth:I

    .line 129
    iput v1, p0, Landroid/webkit/HTML5VideoFullScreen;->mVideoHeight:I

    .line 130
    invoke-virtual {p0, p2, p3, p4, p5}, Landroid/webkit/HTML5VideoFullScreen;->init(IIZLandroid/media/MediaPlayer;)V

    .line 131
    return-void
.end method

.method static synthetic access$000(Landroid/webkit/HTML5VideoFullScreen;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget v0, p0, Landroid/webkit/HTML5VideoFullScreen;->mVideoWidth:I

    return v0
.end method

.method static synthetic access$100(Landroid/webkit/HTML5VideoFullScreen;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget v0, p0, Landroid/webkit/HTML5VideoFullScreen;->mVideoHeight:I

    return v0
.end method

.method static synthetic access$200(Landroid/webkit/HTML5VideoFullScreen;)Landroid/widget/MediaController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Landroid/webkit/HTML5VideoFullScreen;->mMediaController:Landroid/widget/MediaController;

    return-object v0
.end method

.method static synthetic access$202(Landroid/webkit/HTML5VideoFullScreen;Landroid/widget/MediaController;)Landroid/widget/MediaController;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24
    iput-object p1, p0, Landroid/webkit/HTML5VideoFullScreen;->mMediaController:Landroid/widget/MediaController;

    return-object p1
.end method

.method static synthetic access$302(Landroid/webkit/HTML5VideoFullScreen;Landroid/view/SurfaceHolder;)Landroid/view/SurfaceHolder;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24
    iput-object p1, p0, Landroid/webkit/HTML5VideoFullScreen;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    return-object p1
.end method

.method static synthetic access$402(Landroid/webkit/HTML5VideoFullScreen;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24
    iput p1, p0, Landroid/webkit/HTML5VideoFullScreen;->mFullScreenMode:I

    return p1
.end method

.method static synthetic access$500(Landroid/webkit/HTML5VideoFullScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/webkit/HTML5VideoFullScreen;->prepareForFullScreen()V

    return-void
.end method

.method static synthetic access$600(Landroid/webkit/HTML5VideoFullScreen;)Landroid/view/SurfaceView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/webkit/HTML5VideoFullScreen;->getSurfaceView()Landroid/view/SurfaceView;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700()Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Landroid/webkit/HTML5VideoFullScreen;->mLayout:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$702(Landroid/widget/FrameLayout;)Landroid/widget/FrameLayout;
    .locals 0
    .parameter "x0"

    .prologue
    .line 24
    sput-object p0, Landroid/webkit/HTML5VideoFullScreen;->mLayout:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$800()Landroid/view/View;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Landroid/webkit/HTML5VideoFullScreen;->mProgressView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$802(Landroid/view/View;)Landroid/view/View;
    .locals 0
    .parameter "x0"

    .prologue
    .line 24
    sput-object p0, Landroid/webkit/HTML5VideoFullScreen;->mProgressView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$902(Landroid/webkit/HTML5VideoFullScreen;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24
    iput p1, p0, Landroid/webkit/HTML5VideoFullScreen;->mCurrentBufferPercentage:I

    return p1
.end method

.method private attachMediaController()V
    .locals 2

    .prologue
    .line 139
    iget-object v0, p0, Landroid/webkit/HTML5VideoFullScreen;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkit/HTML5VideoFullScreen;->mMediaController:Landroid/widget/MediaController;

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Landroid/webkit/HTML5VideoFullScreen;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v0, p0}, Landroid/widget/MediaController;->setMediaPlayer(Landroid/widget/MediaController$MediaPlayerControl;)V

    .line 141
    iget-object v0, p0, Landroid/webkit/HTML5VideoFullScreen;->mMediaController:Landroid/widget/MediaController;

    iget-object v1, p0, Landroid/webkit/HTML5VideoFullScreen;->mVideoSurfaceView:Landroid/webkit/HTML5VideoFullScreen$VideoSurfaceView;

    invoke-virtual {v0, v1}, Landroid/widget/MediaController;->setAnchorView(Landroid/view/View;)V

    .line 143
    iget-boolean v0, p0, Landroid/webkit/HTML5VideoFullScreen;->mMediaControllerPrepared:Z

    if-nez v0, :cond_0

    .line 144
    iget-object v0, p0, Landroid/webkit/HTML5VideoFullScreen;->mMediaController:Landroid/widget/MediaController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/MediaController;->setEnabled(Z)V

    .line 147
    :cond_0
    return-void
.end method

.method private configMediaController(Landroid/media/MediaPlayer;)V
    .locals 6
    .parameter "mp"

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 181
    iget-object v1, p0, Landroid/webkit/HTML5VideoFullScreen;->mVideoSurfaceView:Landroid/webkit/HTML5VideoFullScreen$VideoSurfaceView;

    invoke-virtual {v1, p0}, Landroid/webkit/HTML5VideoFullScreen$VideoSurfaceView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 183
    invoke-virtual {p1, v2, v2}, Landroid/media/MediaPlayer;->getMetadata(ZZ)Landroid/media/Metadata;

    move-result-object v0

    .line 185
    .local v0, data:Landroid/media/Metadata;
    if-eqz v0, :cond_8

    .line 186
    invoke-virtual {v0, v3}, Landroid/media/Metadata;->has(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v3}, Landroid/media/Metadata;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_0
    move v1, v3

    :goto_0
    iput-boolean v1, p0, Landroid/webkit/HTML5VideoFullScreen;->mCanPause:Z

    .line 188
    invoke-virtual {v0, v4}, Landroid/media/Metadata;->has(I)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0, v4}, Landroid/media/Metadata;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_7

    :cond_1
    move v1, v3

    :goto_1
    iput-boolean v1, p0, Landroid/webkit/HTML5VideoFullScreen;->mCanSeekBack:Z

    .line 190
    invoke-virtual {v0, v5}, Landroid/media/Metadata;->has(I)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0, v5}, Landroid/media/Metadata;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    move v2, v3

    :cond_3
    iput-boolean v2, p0, Landroid/webkit/HTML5VideoFullScreen;->mCanSeekForward:Z

    .line 198
    :goto_2
    iget-object v1, p0, Landroid/webkit/HTML5VideoFullScreen;->mMediaController:Landroid/widget/MediaController;

    if-eqz v1, :cond_4

    .line 199
    iget-object v1, p0, Landroid/webkit/HTML5VideoFullScreen;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v1, v3}, Landroid/widget/MediaController;->setEnabled(Z)V

    .line 200
    iget-object v1, p0, Landroid/webkit/HTML5VideoFullScreen;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v1}, Landroid/widget/MediaController;->show()V

    .line 203
    :cond_4
    sget-object v1, Landroid/webkit/HTML5VideoFullScreen;->mProgressView:Landroid/view/View;

    if-eqz v1, :cond_5

    .line 204
    sget-object v1, Landroid/webkit/HTML5VideoFullScreen;->mProgressView:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 207
    :cond_5
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v1

    iput v1, p0, Landroid/webkit/HTML5VideoFullScreen;->mVideoWidth:I

    .line 208
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v1

    iput v1, p0, Landroid/webkit/HTML5VideoFullScreen;->mVideoHeight:I

    .line 210
    iget-object v1, p0, Landroid/webkit/HTML5VideoFullScreen;->mVideoSurfaceView:Landroid/webkit/HTML5VideoFullScreen$VideoSurfaceView;

    invoke-virtual {v1}, Landroid/webkit/HTML5VideoFullScreen$VideoSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    iget v2, p0, Landroid/webkit/HTML5VideoFullScreen;->mVideoWidth:I

    iget v4, p0, Landroid/webkit/HTML5VideoFullScreen;->mVideoHeight:I

    invoke-interface {v1, v2, v4}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    .line 211
    iput-boolean v3, p0, Landroid/webkit/HTML5VideoFullScreen;->mMediaControllerPrepared:Z

    .line 212
    return-void

    :cond_6
    move v1, v2

    .line 186
    goto :goto_0

    :cond_7
    move v1, v2

    .line 188
    goto :goto_1

    .line 193
    :cond_8
    iput-boolean v3, p0, Landroid/webkit/HTML5VideoFullScreen;->mCanSeekForward:Z

    iput-boolean v3, p0, Landroid/webkit/HTML5VideoFullScreen;->mCanSeekBack:Z

    iput-boolean v3, p0, Landroid/webkit/HTML5VideoFullScreen;->mCanPause:Z

    goto :goto_2
.end method

.method private getSurfaceView()Landroid/view/SurfaceView;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Landroid/webkit/HTML5VideoFullScreen;->mVideoSurfaceView:Landroid/webkit/HTML5VideoFullScreen$VideoSurfaceView;

    return-object v0
.end method

.method private prepareForFullScreen()V
    .locals 3

    .prologue
    .line 155
    new-instance v0, Landroid/webkit/HTML5VideoFullScreen$FullScreenMediaController;

    iget-object v1, p0, Landroid/webkit/HTML5VideoFullScreen;->mProxy:Landroid/webkit/HTML5VideoViewProxy;

    invoke-virtual {v1}, Landroid/webkit/HTML5VideoViewProxy;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/webkit/HTML5VideoFullScreen;->mLayout:Landroid/widget/FrameLayout;

    invoke-direct {v0, v1, v2}, Landroid/webkit/HTML5VideoFullScreen$FullScreenMediaController;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 156
    .local v0, mc:Landroid/widget/MediaController;
    sget-object v1, Landroid/webkit/HTML5VideoFullScreen;->mLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getSystemUiVisibility()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/MediaController;->setSystemUiVisibility(I)V

    .line 157
    invoke-direct {p0, v0}, Landroid/webkit/HTML5VideoFullScreen;->setMediaController(Landroid/widget/MediaController;)V

    .line 158
    iget-object v1, p0, Landroid/webkit/HTML5VideoFullScreen;->mPlayer:Landroid/media/MediaPlayer;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setScreenOnWhilePlaying(Z)V

    .line 159
    iget-boolean v1, p0, Landroid/webkit/HTML5VideoFullScreen;->mMediaControllerPrepared:Z

    if-nez v1, :cond_0

    .line 160
    iget-object v1, p0, Landroid/webkit/HTML5VideoFullScreen;->mProxy:Landroid/webkit/HTML5VideoViewProxy;

    invoke-virtual {p0, v1}, Landroid/webkit/HTML5VideoFullScreen;->prepareDataAndDisplayMode(Landroid/webkit/HTML5VideoViewProxy;)V

    .line 169
    :goto_0
    return-void

    .line 163
    :cond_0
    invoke-virtual {p0}, Landroid/webkit/HTML5VideoFullScreen;->decideDisplayMode()V

    .line 164
    iget-object v1, p0, Landroid/webkit/HTML5VideoFullScreen;->mProxy:Landroid/webkit/HTML5VideoViewProxy;

    invoke-virtual {p0, v1}, Landroid/webkit/HTML5VideoFullScreen;->setOnCompletionListener(Landroid/webkit/HTML5VideoViewProxy;)V

    .line 165
    iget-object v1, p0, Landroid/webkit/HTML5VideoFullScreen;->mProxy:Landroid/webkit/HTML5VideoViewProxy;

    invoke-virtual {p0, v1}, Landroid/webkit/HTML5VideoFullScreen;->setOnPreparedListener(Landroid/webkit/HTML5VideoViewProxy;)V

    .line 166
    iget-object v1, p0, Landroid/webkit/HTML5VideoFullScreen;->mProxy:Landroid/webkit/HTML5VideoViewProxy;

    invoke-virtual {p0, v1}, Landroid/webkit/HTML5VideoFullScreen;->setOnErrorListener(Landroid/webkit/HTML5VideoViewProxy;)V

    .line 167
    iget-object v1, p0, Landroid/webkit/HTML5VideoFullScreen;->mProxy:Landroid/webkit/HTML5VideoViewProxy;

    invoke-virtual {p0, v1}, Landroid/webkit/HTML5VideoFullScreen;->setOnInfoListener(Landroid/webkit/HTML5VideoViewProxy;)V

    goto :goto_0
.end method

.method private setMediaController(Landroid/widget/MediaController;)V
    .locals 0
    .parameter "m"

    .prologue
    .line 134
    iput-object p1, p0, Landroid/webkit/HTML5VideoFullScreen;->mMediaController:Landroid/widget/MediaController;

    .line 135
    invoke-direct {p0}, Landroid/webkit/HTML5VideoFullScreen;->attachMediaController()V

    .line 136
    return-void
.end method

.method private toggleMediaControlsVisiblity()V
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Landroid/webkit/HTML5VideoFullScreen;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Landroid/webkit/HTML5VideoFullScreen;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->hide()V

    .line 178
    :goto_0
    return-void

    .line 176
    :cond_0
    iget-object v0, p0, Landroid/webkit/HTML5VideoFullScreen;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->show()V

    goto :goto_0
.end method


# virtual methods
.method public canPause()Z
    .locals 1

    .prologue
    .line 312
    iget-boolean v0, p0, Landroid/webkit/HTML5VideoFullScreen;->mCanPause:Z

    return v0
.end method

.method public canSeekBackward()Z
    .locals 1

    .prologue
    .line 317
    iget-boolean v0, p0, Landroid/webkit/HTML5VideoFullScreen;->mCanSeekBack:Z

    return v0
.end method

.method public canSeekForward()Z
    .locals 1

    .prologue
    .line 322
    iget-boolean v0, p0, Landroid/webkit/HTML5VideoFullScreen;->mCanSeekForward:Z

    return v0
.end method

.method public decideDisplayMode()V
    .locals 2

    .prologue
    .line 151
    iget-object v0, p0, Landroid/webkit/HTML5VideoFullScreen;->mPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Landroid/webkit/HTML5VideoFullScreen;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 152
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

    .line 258
    iput v5, p0, Landroid/webkit/HTML5VideoFullScreen;->mFullScreenMode:I

    .line 259
    iput v4, p0, Landroid/webkit/HTML5VideoFullScreen;->mCurrentBufferPercentage:I

    .line 260
    iget-object v2, p0, Landroid/webkit/HTML5VideoFullScreen;->mPlayer:Landroid/media/MediaPlayer;

    iget-object v3, p0, Landroid/webkit/HTML5VideoFullScreen;->mBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 261
    iput-object p2, p0, Landroid/webkit/HTML5VideoFullScreen;->mProxy:Landroid/webkit/HTML5VideoViewProxy;

    .line 263
    iget-object v2, p0, Landroid/webkit/HTML5VideoFullScreen;->mVideoSurfaceView:Landroid/webkit/HTML5VideoFullScreen$VideoSurfaceView;

    invoke-virtual {v2}, Landroid/webkit/HTML5VideoFullScreen$VideoSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v2

    iget-object v3, p0, Landroid/webkit/HTML5VideoFullScreen;->mSHCallback:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {v2, v3}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 264
    iget-object v2, p0, Landroid/webkit/HTML5VideoFullScreen;->mVideoSurfaceView:Landroid/webkit/HTML5VideoFullScreen$VideoSurfaceView;

    invoke-virtual {v2}, Landroid/webkit/HTML5VideoFullScreen$VideoSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v2

    const/4 v3, 0x3

    invoke-interface {v2, v3}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 265
    iget-object v2, p0, Landroid/webkit/HTML5VideoFullScreen;->mVideoSurfaceView:Landroid/webkit/HTML5VideoFullScreen$VideoSurfaceView;

    invoke-virtual {v2, v5}, Landroid/webkit/HTML5VideoFullScreen$VideoSurfaceView;->setFocusable(Z)V

    .line 266
    iget-object v2, p0, Landroid/webkit/HTML5VideoFullScreen;->mVideoSurfaceView:Landroid/webkit/HTML5VideoFullScreen$VideoSurfaceView;

    invoke-virtual {v2, v5}, Landroid/webkit/HTML5VideoFullScreen$VideoSurfaceView;->setFocusableInTouchMode(Z)V

    .line 267
    iget-object v2, p0, Landroid/webkit/HTML5VideoFullScreen;->mVideoSurfaceView:Landroid/webkit/HTML5VideoFullScreen$VideoSurfaceView;

    invoke-virtual {v2}, Landroid/webkit/HTML5VideoFullScreen$VideoSurfaceView;->requestFocus()Z

    .line 271
    new-instance v2, Landroid/widget/FrameLayout;

    iget-object v3, p0, Landroid/webkit/HTML5VideoFullScreen;->mProxy:Landroid/webkit/HTML5VideoViewProxy;

    invoke-virtual {v3}, Landroid/webkit/HTML5VideoViewProxy;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    sput-object v2, Landroid/webkit/HTML5VideoFullScreen;->mLayout:Landroid/widget/FrameLayout;

    .line 272
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v2, 0x11

    invoke-direct {v1, v6, v6, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 277
    .local v1, layoutParams:Landroid/widget/FrameLayout$LayoutParams;
    sget-object v2, Landroid/webkit/HTML5VideoFullScreen;->mLayout:Landroid/widget/FrameLayout;

    invoke-direct {p0}, Landroid/webkit/HTML5VideoFullScreen;->getSurfaceView()Landroid/view/SurfaceView;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 279
    sget-object v2, Landroid/webkit/HTML5VideoFullScreen;->mLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 280
    invoke-virtual {p3}, Landroid/webkit/WebView;->getWebChromeClient()Landroid/webkit/WebChromeClient;

    move-result-object v0

    .line 281
    .local v0, client:Landroid/webkit/WebChromeClient;
    if-eqz v0, :cond_1

    .line 282
    sget-object v2, Landroid/webkit/HTML5VideoFullScreen;->mLayout:Landroid/widget/FrameLayout;

    iget-object v3, p0, Landroid/webkit/HTML5VideoFullScreen;->mCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

    invoke-virtual {v0, v2, v3}, Landroid/webkit/WebChromeClient;->onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V

    .line 285
    invoke-virtual {p3}, Landroid/webkit/WebView;->getViewManager()Landroid/webkit/ViewManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 286
    invoke-virtual {p3}, Landroid/webkit/WebView;->getViewManager()Landroid/webkit/ViewManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/ViewManager;->hideAll()V

    .line 288
    :cond_0
    invoke-virtual {v0}, Landroid/webkit/WebChromeClient;->getVideoLoadingProgressView()Landroid/view/View;

    move-result-object v2

    sput-object v2, Landroid/webkit/HTML5VideoFullScreen;->mProgressView:Landroid/view/View;

    .line 289
    sget-object v2, Landroid/webkit/HTML5VideoFullScreen;->mProgressView:Landroid/view/View;

    if-eqz v2, :cond_1

    sget-object v2, Landroid/webkit/HTML5VideoFullScreen;->mLayout:Landroid/widget/FrameLayout;

    if-eqz v2, :cond_1

    .line 290
    sget-object v2, Landroid/webkit/HTML5VideoFullScreen;->mLayout:Landroid/widget/FrameLayout;

    sget-object v3, Landroid/webkit/HTML5VideoFullScreen;->mProgressView:Landroid/view/View;

    invoke-virtual {v2, v3, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 291
    iget-boolean v2, p0, Landroid/webkit/HTML5VideoFullScreen;->mMediaControllerPrepared:Z

    if-eqz v2, :cond_2

    .line 292
    sget-object v2, Landroid/webkit/HTML5VideoFullScreen;->mProgressView:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 299
    :cond_1
    :goto_0
    return-void

    .line 295
    :cond_2
    sget-object v2, Landroid/webkit/HTML5VideoFullScreen;->mProgressView:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public fullScreenExited()Z
    .locals 1

    .prologue
    .line 226
    sget-object v0, Landroid/webkit/HTML5VideoFullScreen;->mLayout:Landroid/widget/FrameLayout;

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
    .line 327
    iget-object v0, p0, Landroid/webkit/HTML5VideoFullScreen;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 328
    iget v0, p0, Landroid/webkit/HTML5VideoFullScreen;->mCurrentBufferPercentage:I

    .line 330
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFullScreenMode()Z
    .locals 1

    .prologue
    .line 306
    const/4 v0, 0x1

    return v0
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 0
    .parameter "mp"

    .prologue
    .line 221
    invoke-super {p0, p1}, Landroid/webkit/HTML5VideoView;->onPrepared(Landroid/media/MediaPlayer;)V

    .line 222
    invoke-direct {p0, p1}, Landroid/webkit/HTML5VideoFullScreen;->configMediaController(Landroid/media/MediaPlayer;)V

    .line 223
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "v"
    .parameter "event"

    .prologue
    .line 343
    iget v0, p0, Landroid/webkit/HTML5VideoFullScreen;->mFullScreenMode:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Landroid/webkit/HTML5VideoFullScreen;->mMediaController:Landroid/widget/MediaController;

    if-eqz v0, :cond_0

    .line 345
    invoke-direct {p0}, Landroid/webkit/HTML5VideoFullScreen;->toggleMediaControlsVisiblity()V

    .line 347
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setPrepared(Landroid/media/MediaPlayer;)V
    .locals 1
    .parameter "mp"

    .prologue
    .line 215
    const/4 v0, 0x2

    iput v0, p0, Landroid/webkit/HTML5VideoFullScreen;->mCurrentState:I

    .line 216
    invoke-direct {p0, p1}, Landroid/webkit/HTML5VideoFullScreen;->configMediaController(Landroid/media/MediaPlayer;)V

    .line 217
    return-void
.end method

.method protected switchProgressView(Z)V
    .locals 2
    .parameter "playerBuffering"

    .prologue
    .line 352
    sget-object v0, Landroid/webkit/HTML5VideoFullScreen;->mProgressView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 353
    if-eqz p1, :cond_1

    .line 354
    sget-object v0, Landroid/webkit/HTML5VideoFullScreen;->mProgressView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 359
    :cond_0
    :goto_0
    return-void

    .line 356
    :cond_1
    sget-object v0, Landroid/webkit/HTML5VideoFullScreen;->mProgressView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

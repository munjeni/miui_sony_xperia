.class public Lmiui/app/screenelement/RendererController;
.super Ljava/lang/Object;
.source "RendererController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/app/screenelement/RendererController$Listener;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "RendererController"


# instance fields
.field private mCurFramerate:F

.field private mFrameTime:I

.field private mFramerateTokenList:Lmiui/app/screenelement/FramerateTokenList;

.field private mLastUpdateSystemTime:J

.field private mListener:Lmiui/app/screenelement/RendererController$Listener;

.field private mLock:Ljava/lang/Object;

.field private mPaused:Z

.field private mPendingRender:Z

.field private mRenderThread:Lmiui/app/screenelement/RenderThread;

.field private mSelfPaused:Z

.field private mShouldUpdate:Z


# direct methods
.method public constructor <init>(Lmiui/app/screenelement/RendererController$Listener;)V
    .locals 1
    .parameter "l"

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Lmiui/app/screenelement/FramerateTokenList;

    invoke-direct {v0}, Lmiui/app/screenelement/FramerateTokenList;-><init>()V

    iput-object v0, p0, Lmiui/app/screenelement/RendererController;->mFramerateTokenList:Lmiui/app/screenelement/FramerateTokenList;

    .line 38
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lmiui/app/screenelement/RendererController;->mLock:Ljava/lang/Object;

    .line 46
    const v0, 0x7fffffff

    iput v0, p0, Lmiui/app/screenelement/RendererController;->mFrameTime:I

    .line 49
    iput-object p1, p0, Lmiui/app/screenelement/RendererController;->mListener:Lmiui/app/screenelement/RendererController$Listener;

    .line 50
    return-void
.end method


# virtual methods
.method public createToken(Ljava/lang/String;)Lmiui/app/screenelement/FramerateTokenList$FramerateToken;
    .locals 1
    .parameter "name"

    .prologue
    .line 65
    iget-object v0, p0, Lmiui/app/screenelement/RendererController;->mFramerateTokenList:Lmiui/app/screenelement/FramerateTokenList;

    invoke-virtual {v0, p1}, Lmiui/app/screenelement/FramerateTokenList;->createToken(Ljava/lang/String;)Lmiui/app/screenelement/FramerateTokenList$FramerateToken;

    move-result-object v0

    return-object v0
.end method

.method public doRender()V
    .locals 1

    .prologue
    .line 116
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/app/screenelement/RendererController;->mPendingRender:Z

    .line 117
    iget-object v0, p0, Lmiui/app/screenelement/RendererController;->mListener:Lmiui/app/screenelement/RendererController$Listener;

    invoke-interface {v0}, Lmiui/app/screenelement/RendererController$Listener;->doRender()V

    .line 118
    return-void
.end method

.method public doneRender()V
    .locals 1

    .prologue
    .line 157
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/app/screenelement/RendererController;->mPendingRender:Z

    .line 158
    return-void
.end method

.method public finish()V
    .locals 3

    .prologue
    .line 78
    :try_start_0
    iget-object v1, p0, Lmiui/app/screenelement/RendererController;->mListener:Lmiui/app/screenelement/RendererController$Listener;

    invoke-interface {v1}, Lmiui/app/screenelement/RendererController$Listener;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    :goto_0
    return-void

    .line 79
    :catch_0
    move-exception v0

    .line 80
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 81
    const-string v1, "RendererController"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getCurFramerate()F
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lmiui/app/screenelement/RendererController;->mCurFramerate:F

    return v0
.end method

.method public getFrameTime()I
    .locals 1

    .prologue
    .line 169
    iget v0, p0, Lmiui/app/screenelement/RendererController;->mFrameTime:I

    return v0
.end method

.method public getFramerate()F
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lmiui/app/screenelement/RendererController;->mFramerateTokenList:Lmiui/app/screenelement/FramerateTokenList;

    invoke-virtual {v0}, Lmiui/app/screenelement/FramerateTokenList;->getFramerate()F

    move-result v0

    return v0
.end method

.method public getLastUpdateTime()J
    .locals 2

    .prologue
    .line 125
    iget-wide v0, p0, Lmiui/app/screenelement/RendererController;->mLastUpdateSystemTime:J

    return-wide v0
.end method

.method public init()V
    .locals 3

    .prologue
    .line 87
    :try_start_0
    iget-object v1, p0, Lmiui/app/screenelement/RendererController;->mListener:Lmiui/app/screenelement/RendererController$Listener;

    invoke-interface {v1}, Lmiui/app/screenelement/RendererController$Listener;->init()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    :goto_0
    return-void

    .line 88
    :catch_0
    move-exception v0

    .line 89
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 90
    const-string v1, "RendererController"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public isSelfPaused()Z
    .locals 1

    .prologue
    .line 153
    iget-boolean v0, p0, Lmiui/app/screenelement/RendererController;->mSelfPaused:Z

    return v0
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 96
    iget-object v1, p0, Lmiui/app/screenelement/RendererController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 97
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lmiui/app/screenelement/RendererController;->mPaused:Z

    .line 98
    iget-boolean v0, p0, Lmiui/app/screenelement/RendererController;->mSelfPaused:Z

    if-nez v0, :cond_0

    .line 99
    iget-object v0, p0, Lmiui/app/screenelement/RendererController;->mListener:Lmiui/app/screenelement/RendererController$Listener;

    invoke-interface {v0}, Lmiui/app/screenelement/RendererController$Listener;->pause()V

    .line 100
    :cond_0
    monitor-exit v1

    .line 101
    return-void

    .line 100
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public pendingRender()Z
    .locals 1

    .prologue
    .line 121
    iget-boolean v0, p0, Lmiui/app/screenelement/RendererController;->mPendingRender:Z

    return v0
.end method

.method public requestUpdate()V
    .locals 1

    .prologue
    .line 73
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/app/screenelement/RendererController;->mShouldUpdate:Z

    .line 74
    return-void
.end method

.method public resume()V
    .locals 2

    .prologue
    .line 104
    iget-object v1, p0, Lmiui/app/screenelement/RendererController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 105
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lmiui/app/screenelement/RendererController;->mPaused:Z

    .line 106
    iget-boolean v0, p0, Lmiui/app/screenelement/RendererController;->mSelfPaused:Z

    if-nez v0, :cond_0

    .line 107
    iget-object v0, p0, Lmiui/app/screenelement/RendererController;->mListener:Lmiui/app/screenelement/RendererController$Listener;

    invoke-interface {v0}, Lmiui/app/screenelement/RendererController$Listener;->resume()V

    .line 108
    :cond_0
    monitor-exit v1

    .line 109
    return-void

    .line 108
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public selfPause()V
    .locals 2

    .prologue
    .line 133
    iget-object v1, p0, Lmiui/app/screenelement/RendererController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 134
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lmiui/app/screenelement/RendererController;->mSelfPaused:Z

    .line 135
    iget-boolean v0, p0, Lmiui/app/screenelement/RendererController;->mPaused:Z

    if-nez v0, :cond_0

    .line 136
    iget-object v0, p0, Lmiui/app/screenelement/RendererController;->mListener:Lmiui/app/screenelement/RendererController$Listener;

    invoke-interface {v0}, Lmiui/app/screenelement/RendererController$Listener;->pause()V

    .line 137
    :cond_0
    monitor-exit v1

    .line 138
    return-void

    .line 137
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public selfResume()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 141
    iget-object v1, p0, Lmiui/app/screenelement/RendererController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 142
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lmiui/app/screenelement/RendererController;->mSelfPaused:Z

    .line 143
    iget-boolean v0, p0, Lmiui/app/screenelement/RendererController;->mPaused:Z

    if-nez v0, :cond_0

    .line 144
    iget-object v0, p0, Lmiui/app/screenelement/RendererController;->mListener:Lmiui/app/screenelement/RendererController$Listener;

    invoke-interface {v0}, Lmiui/app/screenelement/RendererController$Listener;->resume()V

    .line 145
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 148
    iget-object v0, p0, Lmiui/app/screenelement/RendererController;->mRenderThread:Lmiui/app/screenelement/RenderThread;

    if-eqz v0, :cond_1

    .line 149
    iget-object v0, p0, Lmiui/app/screenelement/RendererController;->mRenderThread:Lmiui/app/screenelement/RenderThread;

    invoke-virtual {v0, v2}, Lmiui/app/screenelement/RenderThread;->setPaused(Z)V

    .line 150
    :cond_1
    return-void

    .line 145
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public setCurFramerate(F)V
    .locals 0
    .parameter "f"

    .prologue
    .line 61
    iput p1, p0, Lmiui/app/screenelement/RendererController;->mCurFramerate:F

    .line 62
    return-void
.end method

.method public setFrameTime(I)V
    .locals 0
    .parameter "frameTime"

    .prologue
    .line 165
    iput p1, p0, Lmiui/app/screenelement/RendererController;->mFrameTime:I

    .line 166
    return-void
.end method

.method public setLastUpdateTime(J)V
    .locals 0
    .parameter "t"

    .prologue
    .line 129
    iput-wide p1, p0, Lmiui/app/screenelement/RendererController;->mLastUpdateSystemTime:J

    .line 130
    return-void
.end method

.method public setRenderThread(Lmiui/app/screenelement/RenderThread;)V
    .locals 0
    .parameter "renderThread"

    .prologue
    .line 161
    iput-object p1, p0, Lmiui/app/screenelement/RendererController;->mRenderThread:Lmiui/app/screenelement/RenderThread;

    .line 162
    return-void
.end method

.method public shouldUpdate()Z
    .locals 1

    .prologue
    .line 69
    iget-boolean v0, p0, Lmiui/app/screenelement/RendererController;->mShouldUpdate:Z

    return v0
.end method

.method public tick(J)V
    .locals 1
    .parameter "currentTime"

    .prologue
    .line 173
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/app/screenelement/RendererController;->mShouldUpdate:Z

    .line 174
    iget-object v0, p0, Lmiui/app/screenelement/RendererController;->mListener:Lmiui/app/screenelement/RendererController$Listener;

    invoke-interface {v0, p1, p2}, Lmiui/app/screenelement/RendererController$Listener;->tick(J)V

    .line 175
    return-void
.end method

.method public updateFramerate(J)V
    .locals 1
    .parameter "time"

    .prologue
    .line 112
    iget-object v0, p0, Lmiui/app/screenelement/RendererController;->mListener:Lmiui/app/screenelement/RendererController$Listener;

    invoke-interface {v0, p1, p2}, Lmiui/app/screenelement/RendererController$Listener;->updateFramerate(J)V

    .line 113
    return-void
.end method

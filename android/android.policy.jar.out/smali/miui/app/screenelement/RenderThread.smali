.class public Lmiui/app/screenelement/RenderThread;
.super Ljava/lang/Thread;
.source "RenderThread.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "RenderThread"

.field private static sGlobalThread:Lmiui/app/screenelement/RenderThread;

.field private static sGlobalThreadLock:Ljava/lang/Object;


# instance fields
.field private mPaused:Z

.field private mRendererControllerList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lmiui/app/screenelement/RendererController;",
            ">;"
        }
    .end annotation
.end field

.field private mResumeSignal:Ljava/lang/Object;

.field private mStarted:Z

.field private mStop:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lmiui/app/screenelement/RenderThread;->sGlobalThreadLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    const-string v0, "MAML RenderThread"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/app/screenelement/RenderThread;->mRendererControllerList:Ljava/util/ArrayList;

    .line 21
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/app/screenelement/RenderThread;->mPaused:Z

    .line 24
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lmiui/app/screenelement/RenderThread;->mResumeSignal:Ljava/lang/Object;

    .line 33
    return-void
.end method

.method public constructor <init>(Lmiui/app/screenelement/RendererController;)V
    .locals 1
    .parameter "c"

    .prologue
    .line 27
    const-string v0, "MAML RenderThread"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/app/screenelement/RenderThread;->mRendererControllerList:Ljava/util/ArrayList;

    .line 21
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/app/screenelement/RenderThread;->mPaused:Z

    .line 24
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lmiui/app/screenelement/RenderThread;->mResumeSignal:Ljava/lang/Object;

    .line 28
    invoke-virtual {p0, p1}, Lmiui/app/screenelement/RenderThread;->addRendererController(Lmiui/app/screenelement/RendererController;)V

    .line 29
    return-void
.end method

.method private doFinish()V
    .locals 4

    .prologue
    .line 251
    iget-object v2, p0, Lmiui/app/screenelement/RenderThread;->mRendererControllerList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 259
    :goto_0
    return-void

    .line 254
    :cond_0
    iget-object v3, p0, Lmiui/app/screenelement/RenderThread;->mRendererControllerList:Ljava/util/ArrayList;

    monitor-enter v3

    .line 255
    :try_start_0
    iget-object v2, p0, Lmiui/app/screenelement/RenderThread;->mRendererControllerList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/app/screenelement/RendererController;

    .line 256
    .local v0, c:Lmiui/app/screenelement/RendererController;
    invoke-virtual {v0}, Lmiui/app/screenelement/RendererController;->finish()V

    goto :goto_1

    .line 258
    .end local v0           #c:Lmiui/app/screenelement/RendererController;
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_1
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private doInit()V
    .locals 6

    .prologue
    .line 184
    iget-object v4, p0, Lmiui/app/screenelement/RenderThread;->mRendererControllerList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_0

    .line 194
    :goto_0
    return-void

    .line 187
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 188
    .local v1, currentTime:J
    iget-object v5, p0, Lmiui/app/screenelement/RenderThread;->mRendererControllerList:Ljava/util/ArrayList;

    monitor-enter v5

    .line 189
    :try_start_0
    iget-object v4, p0, Lmiui/app/screenelement/RenderThread;->mRendererControllerList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/app/screenelement/RendererController;

    .line 190
    .local v0, c:Lmiui/app/screenelement/RendererController;
    invoke-virtual {v0, v1, v2}, Lmiui/app/screenelement/RendererController;->setLastUpdateTime(J)V

    .line 191
    invoke-virtual {v0}, Lmiui/app/screenelement/RendererController;->init()V

    goto :goto_1

    .line 193
    .end local v0           #c:Lmiui/app/screenelement/RendererController;
    .end local v3           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .restart local v3       #i$:Ljava/util/Iterator;
    :cond_1
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private doPause()V
    .locals 4

    .prologue
    .line 212
    iget-object v2, p0, Lmiui/app/screenelement/RenderThread;->mRendererControllerList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 220
    :goto_0
    return-void

    .line 215
    :cond_0
    iget-object v3, p0, Lmiui/app/screenelement/RenderThread;->mRendererControllerList:Ljava/util/ArrayList;

    monitor-enter v3

    .line 216
    :try_start_0
    iget-object v2, p0, Lmiui/app/screenelement/RenderThread;->mRendererControllerList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/app/screenelement/RendererController;

    .line 217
    .local v0, c:Lmiui/app/screenelement/RendererController;
    invoke-virtual {v0}, Lmiui/app/screenelement/RendererController;->pause()V

    goto :goto_1

    .line 219
    .end local v0           #c:Lmiui/app/screenelement/RendererController;
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_1
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private doResume()V
    .locals 4

    .prologue
    .line 223
    iget-object v2, p0, Lmiui/app/screenelement/RenderThread;->mRendererControllerList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 231
    :goto_0
    return-void

    .line 226
    :cond_0
    iget-object v3, p0, Lmiui/app/screenelement/RenderThread;->mRendererControllerList:Ljava/util/ArrayList;

    monitor-enter v3

    .line 227
    :try_start_0
    iget-object v2, p0, Lmiui/app/screenelement/RenderThread;->mRendererControllerList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/app/screenelement/RendererController;

    .line 228
    .local v0, c:Lmiui/app/screenelement/RendererController;
    invoke-virtual {v0}, Lmiui/app/screenelement/RendererController;->resume()V

    goto :goto_1

    .line 230
    .end local v0           #c:Lmiui/app/screenelement/RendererController;
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_1
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private doUpdateFramerate(J)Z
    .locals 5
    .parameter "time"

    .prologue
    .line 235
    iget-object v3, p0, Lmiui/app/screenelement/RenderThread;->mRendererControllerList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_0

    .line 236
    const/4 v0, 0x1

    .line 247
    :goto_0
    return v0

    .line 238
    :cond_0
    const/4 v0, 0x1

    .line 239
    .local v0, allPaused:Z
    iget-object v4, p0, Lmiui/app/screenelement/RenderThread;->mRendererControllerList:Ljava/util/ArrayList;

    monitor-enter v4

    .line 240
    :try_start_0
    iget-object v3, p0, Lmiui/app/screenelement/RenderThread;->mRendererControllerList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/app/screenelement/RendererController;

    .line 241
    .local v1, c:Lmiui/app/screenelement/RendererController;
    invoke-virtual {v1}, Lmiui/app/screenelement/RendererController;->isSelfPaused()Z

    move-result v3

    if-nez v3, :cond_1

    .line 242
    invoke-virtual {v1, p1, p2}, Lmiui/app/screenelement/RendererController;->updateFramerate(J)V

    .line 243
    const/4 v0, 0x0

    goto :goto_1

    .line 246
    .end local v1           #c:Lmiui/app/screenelement/RendererController;
    :cond_2
    monitor-exit v4

    goto :goto_0

    .end local v2           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public static globalThread()Lmiui/app/screenelement/RenderThread;
    .locals 2

    .prologue
    .line 39
    sget-object v0, Lmiui/app/screenelement/RenderThread;->sGlobalThread:Lmiui/app/screenelement/RenderThread;

    if-nez v0, :cond_1

    .line 40
    sget-object v1, Lmiui/app/screenelement/RenderThread;->sGlobalThreadLock:Ljava/lang/Object;

    monitor-enter v1

    .line 41
    :try_start_0
    sget-object v0, Lmiui/app/screenelement/RenderThread;->sGlobalThread:Lmiui/app/screenelement/RenderThread;

    if-nez v0, :cond_0

    .line 42
    new-instance v0, Lmiui/app/screenelement/RenderThread;

    invoke-direct {v0}, Lmiui/app/screenelement/RenderThread;-><init>()V

    sput-object v0, Lmiui/app/screenelement/RenderThread;->sGlobalThread:Lmiui/app/screenelement/RenderThread;

    .line 44
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    :cond_1
    sget-object v0, Lmiui/app/screenelement/RenderThread;->sGlobalThread:Lmiui/app/screenelement/RenderThread;

    return-object v0

    .line 44
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private postInit()V
    .locals 6

    .prologue
    .line 197
    iget-object v2, p0, Lmiui/app/screenelement/RenderThread;->mRendererControllerList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 209
    :goto_0
    return-void

    .line 200
    :cond_0
    iget-object v3, p0, Lmiui/app/screenelement/RenderThread;->mRendererControllerList:Ljava/util/ArrayList;

    monitor-enter v3

    .line 201
    :try_start_0
    iget-object v2, p0, Lmiui/app/screenelement/RenderThread;->mRendererControllerList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/app/screenelement/RendererController;

    .line 202
    .local v0, c:Lmiui/app/screenelement/RendererController;
    iget-boolean v2, p0, Lmiui/app/screenelement/RenderThread;->mPaused:Z

    if-eqz v2, :cond_1

    .line 203
    const-wide/16 v4, 0x0

    invoke-virtual {v0, v4, v5}, Lmiui/app/screenelement/RendererController;->tick(J)V

    .line 204
    invoke-virtual {v0}, Lmiui/app/screenelement/RendererController;->doRender()V

    .line 206
    :cond_1
    invoke-virtual {v0}, Lmiui/app/screenelement/RendererController;->requestUpdate()V

    goto :goto_1

    .line 208
    .end local v0           #c:Lmiui/app/screenelement/RendererController;
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_2
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private sleepForFramerate(F)V
    .locals 3
    .parameter "framerate"

    .prologue
    .line 168
    const/high16 v2, 0x4248

    cmpl-float v2, p1, v2

    if-lez v2, :cond_0

    .line 181
    :goto_0
    return-void

    .line 172
    :cond_0
    const-wide/16 v0, 0x32

    .line 174
    .local v0, sleepTime:J
    const/high16 v2, 0x4120

    cmpl-float v2, p1, v2

    if-lez v2, :cond_1

    .line 175
    const/high16 v2, 0x43fa

    div-float/2addr v2, p1

    float-to-long v0, v2

    .line 178
    :cond_1
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 179
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private waiteForResume()V
    .locals 2

    .prologue
    .line 263
    :try_start_0
    iget-object v1, p0, Lmiui/app/screenelement/RenderThread;->mResumeSignal:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 267
    :goto_0
    return-void

    .line 264
    :catch_0
    move-exception v0

    .line 265
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public addRendererController(Lmiui/app/screenelement/RendererController;)V
    .locals 2
    .parameter "c"

    .prologue
    .line 51
    iget-object v1, p0, Lmiui/app/screenelement/RenderThread;->mRendererControllerList:Ljava/util/ArrayList;

    monitor-enter v1

    .line 52
    :try_start_0
    iget-object v0, p0, Lmiui/app/screenelement/RenderThread;->mRendererControllerList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    invoke-virtual {p1, p0}, Lmiui/app/screenelement/RendererController;->setRenderThread(Lmiui/app/screenelement/RenderThread;)V

    .line 54
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmiui/app/screenelement/RenderThread;->setPaused(Z)V

    .line 57
    return-void

    .line 54
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public isStarted()Z
    .locals 1

    .prologue
    .line 68
    iget-boolean v0, p0, Lmiui/app/screenelement/RenderThread;->mStarted:Z

    return v0
.end method

.method public removeRendererController(Lmiui/app/screenelement/RendererController;)V
    .locals 2
    .parameter "c"

    .prologue
    .line 61
    iget-object v1, p0, Lmiui/app/screenelement/RenderThread;->mRendererControllerList:Ljava/util/ArrayList;

    monitor-enter v1

    .line 62
    :try_start_0
    iget-object v0, p0, Lmiui/app/screenelement/RenderThread;->mRendererControllerList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 63
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lmiui/app/screenelement/RendererController;->setRenderThread(Lmiui/app/screenelement/RenderThread;)V

    .line 64
    monitor-exit v1

    .line 65
    return-void

    .line 64
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public run()V
    .locals 17

    .prologue
    .line 87
    const-string v11, "RenderThread"

    const-string v12, "RenderThread started"

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lmiui/app/screenelement/RenderThread;->doInit()V

    .line 92
    const/4 v11, 0x1

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lmiui/app/screenelement/RenderThread;->mStarted:Z

    .line 93
    invoke-direct/range {p0 .. p0}, Lmiui/app/screenelement/RenderThread;->postInit()V

    .line 94
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lmiui/app/screenelement/RenderThread;->mStop:Z

    if-nez v11, :cond_3

    .line 95
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lmiui/app/screenelement/RenderThread;->mPaused:Z

    if-eqz v11, :cond_2

    .line 96
    move-object/from16 v0, p0

    iget-object v12, v0, Lmiui/app/screenelement/RenderThread;->mResumeSignal:Ljava/lang/Object;

    monitor-enter v12
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    .line 97
    :try_start_1
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lmiui/app/screenelement/RenderThread;->mPaused:Z

    if-eqz v11, :cond_1

    .line 98
    invoke-direct/range {p0 .. p0}, Lmiui/app/screenelement/RenderThread;->doPause()V

    .line 99
    const-string v11, "RenderThread"

    const-string v13, "RenderThread paused, waiting for signal"

    invoke-static {v11, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    invoke-direct/range {p0 .. p0}, Lmiui/app/screenelement/RenderThread;->waiteForResume()V

    .line 101
    const-string v11, "RenderThread"

    const-string v13, "RenderThread resumed"

    invoke-static {v11, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    invoke-direct/range {p0 .. p0}, Lmiui/app/screenelement/RenderThread;->doResume()V

    .line 104
    :cond_1
    monitor-exit v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 106
    :cond_2
    :try_start_2
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lmiui/app/screenelement/RenderThread;->mStop:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_1

    if-eqz v11, :cond_4

    .line 162
    :cond_3
    :goto_1
    invoke-direct/range {p0 .. p0}, Lmiui/app/screenelement/RenderThread;->doFinish()V

    .line 163
    const-string v11, "RenderThread"

    const-string v12, "RenderThread stopped"

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    return-void

    .line 104
    :catchall_0
    move-exception v11

    :try_start_3
    monitor-exit v12
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v11
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_1

    .line 154
    :catch_0
    move-exception v4

    .line 155
    .local v4, e:Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 156
    const-string v11, "RenderThread"

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 109
    .end local v4           #e:Ljava/lang/Exception;
    :cond_4
    :try_start_5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 111
    .local v2, currentTime:J
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lmiui/app/screenelement/RenderThread;->doUpdateFramerate(J)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 112
    const/4 v11, 0x1

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lmiui/app/screenelement/RenderThread;->mPaused:Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_0

    .line 157
    .end local v2           #currentTime:J
    :catch_1
    move-exception v4

    .line 158
    .local v4, e:Ljava/lang/OutOfMemoryError;
    invoke-virtual {v4}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    .line 159
    const-string v11, "RenderThread"

    invoke-virtual {v4}, Ljava/lang/OutOfMemoryError;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 116
    .end local v4           #e:Ljava/lang/OutOfMemoryError;
    .restart local v2       #currentTime:J
    :cond_5
    const/4 v10, 0x0

    .line 117
    .local v10, maxFramerate:F
    const/4 v9, 0x0

    .line 118
    .local v9, issuedUpdate:Z
    :try_start_6
    move-object/from16 v0, p0

    iget-object v12, v0, Lmiui/app/screenelement/RenderThread;->mRendererControllerList:Ljava/util/ArrayList;

    monitor-enter v12
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_6 .. :try_end_6} :catch_1

    .line 119
    :try_start_7
    move-object/from16 v0, p0

    iget-object v11, v0, Lmiui/app/screenelement/RenderThread;->mRendererControllerList:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :cond_6
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_c

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/app/screenelement/RendererController;

    .line 120
    .local v1, c:Lmiui/app/screenelement/RendererController;
    invoke-virtual {v1}, Lmiui/app/screenelement/RendererController;->isSelfPaused()Z

    move-result v11

    if-nez v11, :cond_6

    .line 123
    const/4 v8, 0x0

    .line 124
    .local v8, isFramerateDive:Z
    invoke-virtual {v1}, Lmiui/app/screenelement/RendererController;->getFramerate()F

    move-result v6

    .line 125
    .local v6, framerate:F
    cmpl-float v11, v6, v10

    if-lez v11, :cond_7

    .line 126
    move v10, v6

    .line 127
    :cond_7
    invoke-virtual {v1}, Lmiui/app/screenelement/RendererController;->getCurFramerate()F

    move-result v11

    cmpl-float v11, v11, v6

    if-eqz v11, :cond_9

    .line 133
    invoke-virtual {v1}, Lmiui/app/screenelement/RendererController;->getCurFramerate()F

    move-result v11

    const/high16 v13, 0x3f80

    cmpl-float v11, v11, v13

    if-lez v11, :cond_8

    const/high16 v11, 0x3f80

    cmpg-float v11, v6, v11

    if-gez v11, :cond_8

    .line 134
    const/4 v8, 0x1

    .line 136
    :cond_8
    invoke-virtual {v1, v6}, Lmiui/app/screenelement/RendererController;->setCurFramerate(F)V

    .line 137
    const-string v11, "RenderThread"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "framerate changed: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " at time: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    const/4 v11, 0x0

    cmpl-float v11, v6, v11

    if-eqz v11, :cond_b

    const/high16 v11, 0x447a

    div-float/2addr v11, v6

    :goto_3
    float-to-int v5, v11

    .line 139
    .local v5, frameTime:I
    invoke-virtual {v1, v5}, Lmiui/app/screenelement/RendererController;->setFrameTime(I)V

    .line 141
    .end local v5           #frameTime:I
    :cond_9
    invoke-virtual {v1}, Lmiui/app/screenelement/RendererController;->pendingRender()Z

    move-result v11

    if-nez v11, :cond_6

    invoke-virtual {v1}, Lmiui/app/screenelement/RendererController;->getLastUpdateTime()J

    move-result-wide v13

    sub-long v13, v2, v13

    invoke-virtual {v1}, Lmiui/app/screenelement/RendererController;->getFrameTime()I

    move-result v11

    int-to-long v15, v11

    cmp-long v11, v13, v15

    if-gtz v11, :cond_a

    invoke-virtual {v1}, Lmiui/app/screenelement/RendererController;->shouldUpdate()Z

    move-result v11

    if-nez v11, :cond_a

    if-eqz v8, :cond_6

    .line 143
    :cond_a
    invoke-virtual {v1, v2, v3}, Lmiui/app/screenelement/RendererController;->tick(J)V

    .line 144
    invoke-virtual {v1}, Lmiui/app/screenelement/RendererController;->doRender()V

    .line 145
    invoke-virtual {v1, v2, v3}, Lmiui/app/screenelement/RendererController;->setLastUpdateTime(J)V

    .line 146
    const/4 v9, 0x1

    goto/16 :goto_2

    .line 138
    :cond_b
    const/high16 v11, 0x4f00

    goto :goto_3

    .line 149
    .end local v1           #c:Lmiui/app/screenelement/RendererController;
    .end local v6           #framerate:F
    .end local v8           #isFramerateDive:Z
    :cond_c
    monitor-exit v12
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 151
    if-nez v9, :cond_0

    .line 152
    :try_start_8
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lmiui/app/screenelement/RenderThread;->sleepForFramerate(F)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_8 .. :try_end_8} :catch_1

    goto/16 :goto_0

    .line 149
    .end local v7           #i$:Ljava/util/Iterator;
    :catchall_1
    move-exception v11

    :try_start_9
    monitor-exit v12
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :try_start_a
    throw v11
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_a .. :try_end_a} :catch_1
.end method

.method public setPaused(Z)V
    .locals 2
    .parameter "pause"

    .prologue
    .line 72
    iget-object v1, p0, Lmiui/app/screenelement/RenderThread;->mResumeSignal:Ljava/lang/Object;

    monitor-enter v1

    .line 73
    :try_start_0
    iput-boolean p1, p0, Lmiui/app/screenelement/RenderThread;->mPaused:Z

    .line 74
    if-nez p1, :cond_0

    .line 75
    iget-object v0, p0, Lmiui/app/screenelement/RenderThread;->mResumeSignal:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 77
    :cond_0
    monitor-exit v1

    .line 78
    return-void

    .line 77
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setStop()V
    .locals 1

    .prologue
    .line 81
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/app/screenelement/RenderThread;->mStop:Z

    .line 82
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmiui/app/screenelement/RenderThread;->setPaused(Z)V

    .line 83
    return-void
.end method

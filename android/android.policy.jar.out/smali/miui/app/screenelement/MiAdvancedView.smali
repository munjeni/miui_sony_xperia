.class public Lmiui/app/screenelement/MiAdvancedView;
.super Landroid/view/View;
.source "MiAdvancedView.java"

# interfaces
.implements Lmiui/app/screenelement/RendererController$Listener;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "MiAdvancedView"

.field private static final VARIABLE_VIEW_HEIGHT:Ljava/lang/String; = "view_height"

.field private static final VARIABLE_VIEW_WIDTH:Ljava/lang/String; = "view_width"


# instance fields
.field private mLoggedHardwareRender:Z

.field private mNeedDisallowInterceptTouchEvent:Z

.field private mPaused:Z

.field private mRendererController:Lmiui/app/screenelement/RendererController;

.field protected mRoot:Lmiui/app/screenelement/ScreenElementRoot;

.field private mThread:Lmiui/app/screenelement/RenderThread;

.field private mUseExternalRenderThread:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lmiui/app/screenelement/ScreenElementRoot;)V
    .locals 2
    .parameter "context"
    .parameter "root"

    .prologue
    const/4 v0, 0x1

    .line 33
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 22
    iput-boolean v0, p0, Lmiui/app/screenelement/MiAdvancedView;->mPaused:Z

    .line 34
    invoke-virtual {p0, v0}, Lmiui/app/screenelement/MiAdvancedView;->setFocusable(Z)V

    .line 35
    invoke-virtual {p0, v0}, Lmiui/app/screenelement/MiAdvancedView;->setFocusableInTouchMode(Z)V

    .line 36
    iput-object p2, p0, Lmiui/app/screenelement/MiAdvancedView;->mRoot:Lmiui/app/screenelement/ScreenElementRoot;

    .line 37
    new-instance v0, Lmiui/app/screenelement/RendererController;

    invoke-direct {v0, p0}, Lmiui/app/screenelement/RendererController;-><init>(Lmiui/app/screenelement/RendererController$Listener;)V

    iput-object v0, p0, Lmiui/app/screenelement/MiAdvancedView;->mRendererController:Lmiui/app/screenelement/RendererController;

    .line 38
    iget-object v0, p0, Lmiui/app/screenelement/MiAdvancedView;->mRoot:Lmiui/app/screenelement/ScreenElementRoot;

    iget-object v1, p0, Lmiui/app/screenelement/MiAdvancedView;->mRendererController:Lmiui/app/screenelement/RendererController;

    invoke-virtual {v0, v1}, Lmiui/app/screenelement/ScreenElementRoot;->setRenderController(Lmiui/app/screenelement/RendererController;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lmiui/app/screenelement/ScreenElementRoot;Lmiui/app/screenelement/RenderThread;)V
    .locals 2
    .parameter "context"
    .parameter "root"
    .parameter "t"

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Lmiui/app/screenelement/MiAdvancedView;-><init>(Landroid/content/Context;Lmiui/app/screenelement/ScreenElementRoot;)V

    .line 44
    if-eqz p3, :cond_0

    .line 45
    iget-object v0, p0, Lmiui/app/screenelement/MiAdvancedView;->mRendererController:Lmiui/app/screenelement/RendererController;

    invoke-virtual {v0}, Lmiui/app/screenelement/RendererController;->init()V

    .line 46
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/app/screenelement/MiAdvancedView;->mUseExternalRenderThread:Z

    .line 47
    iput-object p3, p0, Lmiui/app/screenelement/MiAdvancedView;->mThread:Lmiui/app/screenelement/RenderThread;

    .line 48
    iget-object v0, p0, Lmiui/app/screenelement/MiAdvancedView;->mThread:Lmiui/app/screenelement/RenderThread;

    iget-object v1, p0, Lmiui/app/screenelement/MiAdvancedView;->mRendererController:Lmiui/app/screenelement/RendererController;

    invoke-virtual {v0, v1}, Lmiui/app/screenelement/RenderThread;->addRendererController(Lmiui/app/screenelement/RendererController;)V

    .line 50
    :cond_0
    return-void
.end method


# virtual methods
.method public cleanUp()V
    .locals 2

    .prologue
    .line 53
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmiui/app/screenelement/MiAdvancedView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 54
    iget-object v0, p0, Lmiui/app/screenelement/MiAdvancedView;->mThread:Lmiui/app/screenelement/RenderThread;

    if-eqz v0, :cond_0

    .line 55
    iget-boolean v0, p0, Lmiui/app/screenelement/MiAdvancedView;->mUseExternalRenderThread:Z

    if-nez v0, :cond_1

    .line 56
    iget-object v0, p0, Lmiui/app/screenelement/MiAdvancedView;->mThread:Lmiui/app/screenelement/RenderThread;

    invoke-virtual {v0}, Lmiui/app/screenelement/RenderThread;->setStop()V

    .line 62
    :cond_0
    :goto_0
    return-void

    .line 58
    :cond_1
    iget-object v0, p0, Lmiui/app/screenelement/MiAdvancedView;->mThread:Lmiui/app/screenelement/RenderThread;

    iget-object v1, p0, Lmiui/app/screenelement/MiAdvancedView;->mRendererController:Lmiui/app/screenelement/RendererController;

    invoke-virtual {v0, v1}, Lmiui/app/screenelement/RenderThread;->removeRendererController(Lmiui/app/screenelement/RendererController;)V

    .line 59
    iget-object v0, p0, Lmiui/app/screenelement/MiAdvancedView;->mRendererController:Lmiui/app/screenelement/RendererController;

    invoke-virtual {v0}, Lmiui/app/screenelement/RendererController;->finish()V

    goto :goto_0
.end method

.method public doRender()V
    .locals 0

    .prologue
    .line 171
    invoke-virtual {p0}, Lmiui/app/screenelement/MiAdvancedView;->postInvalidate()V

    .line 172
    return-void
.end method

.method public finish()V
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lmiui/app/screenelement/MiAdvancedView;->mRoot:Lmiui/app/screenelement/ScreenElementRoot;

    invoke-virtual {v0}, Lmiui/app/screenelement/ScreenElementRoot;->finish()V

    .line 182
    return-void
.end method

.method public final getRoot()Lmiui/app/screenelement/ScreenElementRoot;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lmiui/app/screenelement/MiAdvancedView;->mRoot:Lmiui/app/screenelement/ScreenElementRoot;

    return-object v0
.end method

.method public init()V
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lmiui/app/screenelement/MiAdvancedView;->mRoot:Lmiui/app/screenelement/ScreenElementRoot;

    invoke-virtual {v0}, Lmiui/app/screenelement/ScreenElementRoot;->init()V

    .line 177
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 126
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 128
    iget-boolean v0, p0, Lmiui/app/screenelement/MiAdvancedView;->mUseExternalRenderThread:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lmiui/app/screenelement/MiAdvancedView;->mThread:Lmiui/app/screenelement/RenderThread;

    if-nez v0, :cond_0

    .line 129
    new-instance v0, Lmiui/app/screenelement/RenderThread;

    iget-object v1, p0, Lmiui/app/screenelement/MiAdvancedView;->mRendererController:Lmiui/app/screenelement/RendererController;

    invoke-direct {v0, v1}, Lmiui/app/screenelement/RenderThread;-><init>(Lmiui/app/screenelement/RendererController;)V

    iput-object v0, p0, Lmiui/app/screenelement/MiAdvancedView;->mThread:Lmiui/app/screenelement/RenderThread;

    .line 130
    iget-object v0, p0, Lmiui/app/screenelement/MiAdvancedView;->mThread:Lmiui/app/screenelement/RenderThread;

    iget-boolean v1, p0, Lmiui/app/screenelement/MiAdvancedView;->mPaused:Z

    invoke-virtual {v0, v1}, Lmiui/app/screenelement/RenderThread;->setPaused(Z)V

    .line 131
    iget-object v0, p0, Lmiui/app/screenelement/MiAdvancedView;->mThread:Lmiui/app/screenelement/RenderThread;

    invoke-virtual {v0}, Lmiui/app/screenelement/RenderThread;->start()V

    .line 133
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 137
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 138
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .parameter "canvas"

    .prologue
    .line 103
    iget-object v1, p0, Lmiui/app/screenelement/MiAdvancedView;->mThread:Lmiui/app/screenelement/RenderThread;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lmiui/app/screenelement/MiAdvancedView;->mThread:Lmiui/app/screenelement/RenderThread;

    invoke-virtual {v1}, Lmiui/app/screenelement/RenderThread;->isStarted()Z

    move-result v1

    if-nez v1, :cond_1

    .line 122
    :cond_0
    :goto_0
    return-void

    .line 106
    :cond_1
    iget-boolean v1, p0, Lmiui/app/screenelement/MiAdvancedView;->mLoggedHardwareRender:Z

    if-nez v1, :cond_2

    .line 107
    const-string v1, "MiAdvancedView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "canvas hardware render: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    const/4 v1, 0x1

    iput-boolean v1, p0, Lmiui/app/screenelement/MiAdvancedView;->mLoggedHardwareRender:Z

    .line 112
    :cond_2
    :try_start_0
    iget-object v2, p0, Lmiui/app/screenelement/MiAdvancedView;->mRoot:Lmiui/app/screenelement/ScreenElementRoot;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    .line 113
    :try_start_1
    iget-object v1, p0, Lmiui/app/screenelement/MiAdvancedView;->mRoot:Lmiui/app/screenelement/ScreenElementRoot;

    invoke-virtual {v1, p1}, Lmiui/app/screenelement/ScreenElementRoot;->render(Landroid/graphics/Canvas;)V

    .line 114
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_1

    .line 115
    :catch_0
    move-exception v0

    .line 116
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 117
    const-string v1, "MiAdvancedView"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 118
    .end local v0           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 119
    .local v0, e:Ljava/lang/OutOfMemoryError;
    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    .line 120
    const-string v1, "MiAdvancedView"

    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 6
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 152
    const-string v0, "view_width"

    iget-object v1, p0, Lmiui/app/screenelement/MiAdvancedView;->mRoot:Lmiui/app/screenelement/ScreenElementRoot;

    invoke-virtual {v1}, Lmiui/app/screenelement/ScreenElementRoot;->getContext()Lmiui/app/screenelement/ScreenContext;

    move-result-object v1

    iget-object v1, v1, Lmiui/app/screenelement/ScreenContext;->mVariables:Lmiui/app/screenelement/data/Variables;

    sub-int v2, p4, p2

    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    iget-object v4, p0, Lmiui/app/screenelement/MiAdvancedView;->mRoot:Lmiui/app/screenelement/ScreenElementRoot;

    invoke-virtual {v4}, Lmiui/app/screenelement/ScreenElementRoot;->getScale()F

    move-result v4

    float-to-double v4, v4

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lmiui/app/screenelement/util/Utils;->putVariableNumber(Ljava/lang/String;Lmiui/app/screenelement/data/Variables;Ljava/lang/Double;)V

    .line 154
    const-string v0, "view_height"

    iget-object v1, p0, Lmiui/app/screenelement/MiAdvancedView;->mRoot:Lmiui/app/screenelement/ScreenElementRoot;

    invoke-virtual {v1}, Lmiui/app/screenelement/ScreenElementRoot;->getContext()Lmiui/app/screenelement/ScreenContext;

    move-result-object v1

    iget-object v1, v1, Lmiui/app/screenelement/ScreenContext;->mVariables:Lmiui/app/screenelement/data/Variables;

    sub-int v2, p5, p3

    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    iget-object v4, p0, Lmiui/app/screenelement/MiAdvancedView;->mRoot:Lmiui/app/screenelement/ScreenElementRoot;

    invoke-virtual {v4}, Lmiui/app/screenelement/ScreenElementRoot;->getScale()F

    move-result v4

    float-to-double v4, v4

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lmiui/app/screenelement/util/Utils;->putVariableNumber(Ljava/lang/String;Lmiui/app/screenelement/data/Variables;Ljava/lang/Double;)V

    .line 156
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 141
    iput-boolean v1, p0, Lmiui/app/screenelement/MiAdvancedView;->mPaused:Z

    .line 142
    iget-object v0, p0, Lmiui/app/screenelement/MiAdvancedView;->mThread:Lmiui/app/screenelement/RenderThread;

    if-eqz v0, :cond_0

    .line 143
    iget-boolean v0, p0, Lmiui/app/screenelement/MiAdvancedView;->mUseExternalRenderThread:Z

    if-nez v0, :cond_1

    .line 144
    iget-object v0, p0, Lmiui/app/screenelement/MiAdvancedView;->mThread:Lmiui/app/screenelement/RenderThread;

    invoke-virtual {v0, v1}, Lmiui/app/screenelement/RenderThread;->setPaused(Z)V

    .line 149
    :cond_0
    :goto_0
    return-void

    .line 146
    :cond_1
    iget-object v0, p0, Lmiui/app/screenelement/MiAdvancedView;->mRendererController:Lmiui/app/screenelement/RendererController;

    invoke-virtual {v0}, Lmiui/app/screenelement/RendererController;->selfPause()V

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 159
    iput-boolean v1, p0, Lmiui/app/screenelement/MiAdvancedView;->mPaused:Z

    .line 160
    iget-object v0, p0, Lmiui/app/screenelement/MiAdvancedView;->mThread:Lmiui/app/screenelement/RenderThread;

    if-eqz v0, :cond_0

    .line 161
    iget-boolean v0, p0, Lmiui/app/screenelement/MiAdvancedView;->mUseExternalRenderThread:Z

    if-nez v0, :cond_1

    .line 162
    iget-object v0, p0, Lmiui/app/screenelement/MiAdvancedView;->mThread:Lmiui/app/screenelement/RenderThread;

    invoke-virtual {v0, v1}, Lmiui/app/screenelement/RenderThread;->setPaused(Z)V

    .line 167
    :cond_0
    :goto_0
    return-void

    .line 164
    :cond_1
    iget-object v0, p0, Lmiui/app/screenelement/MiAdvancedView;->mRendererController:Lmiui/app/screenelement/RendererController;

    invoke-virtual {v0}, Lmiui/app/screenelement/RendererController;->selfResume()V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "event"

    .prologue
    .line 80
    iget-object v2, p0, Lmiui/app/screenelement/MiAdvancedView;->mRoot:Lmiui/app/screenelement/ScreenElementRoot;

    if-eqz v2, :cond_2

    .line 81
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_0

    .line 82
    const/4 v2, 0x4

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->setAction(I)V

    .line 84
    :cond_0
    iget-object v2, p0, Lmiui/app/screenelement/MiAdvancedView;->mRoot:Lmiui/app/screenelement/ScreenElementRoot;

    invoke-virtual {v2}, Lmiui/app/screenelement/ScreenElementRoot;->needDisallowInterceptTouchEvent()Z

    move-result v0

    .line 85
    .local v0, b:Z
    iget-boolean v2, p0, Lmiui/app/screenelement/MiAdvancedView;->mNeedDisallowInterceptTouchEvent:Z

    if-eq v2, v0, :cond_1

    .line 86
    invoke-virtual {p0}, Lmiui/app/screenelement/MiAdvancedView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-interface {v2, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 87
    iput-boolean v0, p0, Lmiui/app/screenelement/MiAdvancedView;->mNeedDisallowInterceptTouchEvent:Z

    .line 90
    :cond_1
    :try_start_0
    iget-object v2, p0, Lmiui/app/screenelement/MiAdvancedView;->mRoot:Lmiui/app/screenelement/ScreenElementRoot;

    invoke-virtual {v2, p1}, Lmiui/app/screenelement/ScreenElementRoot;->onTouch(Landroid/view/MotionEvent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 99
    .end local v0           #b:Z
    :goto_0
    return v2

    .line 91
    .restart local v0       #b:Z
    :catch_0
    move-exception v1

    .line 92
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 93
    const-string v2, "MiAdvancedView"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    .end local v0           #b:Z
    .end local v1           #e:Ljava/lang/Exception;
    :cond_2
    :goto_1
    const/4 v2, 0x0

    goto :goto_0

    .line 94
    .restart local v0       #b:Z
    :catch_1
    move-exception v1

    .line 95
    .local v1, e:Ljava/lang/OutOfMemoryError;
    invoke-virtual {v1}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    .line 96
    const-string v2, "MiAdvancedView"

    invoke-virtual {v1}, Ljava/lang/OutOfMemoryError;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lmiui/app/screenelement/MiAdvancedView;->mRoot:Lmiui/app/screenelement/ScreenElementRoot;

    invoke-virtual {v0}, Lmiui/app/screenelement/ScreenElementRoot;->pause()V

    .line 187
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lmiui/app/screenelement/MiAdvancedView;->mRoot:Lmiui/app/screenelement/ScreenElementRoot;

    invoke-virtual {v0}, Lmiui/app/screenelement/ScreenElementRoot;->resume()V

    .line 192
    return-void
.end method

.method public setVisibility(I)V
    .locals 1
    .parameter "visibility"

    .prologue
    .line 70
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 71
    if-nez p1, :cond_1

    .line 72
    invoke-virtual {p0}, Lmiui/app/screenelement/MiAdvancedView;->onResume()V

    .line 76
    :cond_0
    :goto_0
    return-void

    .line 73
    :cond_1
    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    .line 74
    :cond_2
    invoke-virtual {p0}, Lmiui/app/screenelement/MiAdvancedView;->onPause()V

    goto :goto_0
.end method

.method public tick(J)V
    .locals 2
    .parameter "currentTime"

    .prologue
    .line 201
    iget-object v1, p0, Lmiui/app/screenelement/MiAdvancedView;->mRoot:Lmiui/app/screenelement/ScreenElementRoot;

    monitor-enter v1

    .line 202
    :try_start_0
    iget-object v0, p0, Lmiui/app/screenelement/MiAdvancedView;->mRoot:Lmiui/app/screenelement/ScreenElementRoot;

    invoke-virtual {v0, p1, p2}, Lmiui/app/screenelement/ScreenElementRoot;->tick(J)V

    .line 203
    monitor-exit v1

    .line 204
    return-void

    .line 203
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public updateFramerate(J)V
    .locals 1
    .parameter "time"

    .prologue
    .line 196
    iget-object v0, p0, Lmiui/app/screenelement/MiAdvancedView;->mRoot:Lmiui/app/screenelement/ScreenElementRoot;

    invoke-virtual {v0, p1, p2}, Lmiui/app/screenelement/ScreenElementRoot;->updateFramerate(J)V

    .line 197
    return-void
.end method

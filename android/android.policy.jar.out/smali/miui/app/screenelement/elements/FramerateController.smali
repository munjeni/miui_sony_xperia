.class public Lmiui/app/screenelement/elements/FramerateController;
.super Lmiui/app/screenelement/elements/ScreenElement;
.source "FramerateController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/app/screenelement/elements/FramerateController$ControlPoint;
    }
.end annotation


# static fields
.field public static final INNER_TAG:Ljava/lang/String; = "ControlPoint"

.field public static final TAG_NAME:Ljava/lang/String; = "FramerateController"


# instance fields
.field private mControlPoints:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lmiui/app/screenelement/elements/FramerateController$ControlPoint;",
            ">;"
        }
    .end annotation
.end field

.field private mCurFramerate:F

.field private mLock:Ljava/lang/Object;

.field private mLoop:Z

.field private mStartTime:J

.field private mStopped:Z

.field private mTimeRange:J


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/app/screenelement/ScreenContext;Lmiui/app/screenelement/ScreenElementRoot;)V
    .locals 5
    .parameter "ele"
    .parameter "c"
    .parameter "root"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/app/screenelement/ScreenElementLoadException;
        }
    .end annotation

    .prologue
    .line 38
    invoke-direct {p0, p1, p2, p3}, Lmiui/app/screenelement/elements/ScreenElement;-><init>(Lorg/w3c/dom/Element;Lmiui/app/screenelement/ScreenContext;Lmiui/app/screenelement/ScreenElementRoot;)V

    .line 20
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lmiui/app/screenelement/elements/FramerateController;->mControlPoints:Ljava/util/ArrayList;

    .line 24
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lmiui/app/screenelement/elements/FramerateController;->mLock:Ljava/lang/Object;

    .line 39
    iget-object v3, p0, Lmiui/app/screenelement/elements/FramerateController;->mRoot:Lmiui/app/screenelement/ScreenElementRoot;

    invoke-virtual {v3, p0}, Lmiui/app/screenelement/ScreenElementRoot;->addFramerateController(Lmiui/app/screenelement/elements/FramerateController;)V

    .line 40
    const-string v3, "loop"

    invoke-interface {p1, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lmiui/app/screenelement/elements/FramerateController;->mLoop:Z

    .line 42
    const-string v3, "ControlPoint"

    invoke-interface {p1, v3}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 43
    .local v2, nodeList:Lorg/w3c/dom/NodeList;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 44
    invoke-interface {v2, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    .line 45
    .local v0, e:Lorg/w3c/dom/Element;
    iget-object v3, p0, Lmiui/app/screenelement/elements/FramerateController;->mControlPoints:Ljava/util/ArrayList;

    new-instance v4, Lmiui/app/screenelement/elements/FramerateController$ControlPoint;

    invoke-direct {v4, v0}, Lmiui/app/screenelement/elements/FramerateController$ControlPoint;-><init>(Lorg/w3c/dom/Element;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 47
    .end local v0           #e:Lorg/w3c/dom/Element;
    :cond_0
    iget-object v3, p0, Lmiui/app/screenelement/elements/FramerateController;->mControlPoints:Ljava/util/ArrayList;

    iget-object v4, p0, Lmiui/app/screenelement/elements/FramerateController;->mControlPoints:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiui/app/screenelement/elements/FramerateController$ControlPoint;

    iget-wide v3, v3, Lmiui/app/screenelement/elements/FramerateController$ControlPoint;->mTime:J

    iput-wide v3, p0, Lmiui/app/screenelement/elements/FramerateController;->mTimeRange:J

    .line 48
    return-void
.end method


# virtual methods
.method protected onVisibilityChange(Z)V
    .locals 1
    .parameter "visible"

    .prologue
    .line 63
    invoke-super {p0, p1}, Lmiui/app/screenelement/elements/ScreenElement;->onVisibilityChange(Z)V

    .line 64
    if-nez p1, :cond_0

    .line 65
    invoke-virtual {p0}, Lmiui/app/screenelement/elements/FramerateController;->getFramerate()F

    move-result v0

    iput v0, p0, Lmiui/app/screenelement/elements/FramerateController;->mCurFramerate:F

    .line 66
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmiui/app/screenelement/elements/FramerateController;->requestFramerate(F)V

    .line 71
    :goto_0
    return-void

    .line 69
    :cond_0
    iget v0, p0, Lmiui/app/screenelement/elements/FramerateController;->mCurFramerate:F

    invoke-virtual {p0, v0}, Lmiui/app/screenelement/elements/FramerateController;->requestFramerate(F)V

    goto :goto_0
.end method

.method public render(Landroid/graphics/Canvas;)V
    .locals 0
    .parameter "c"

    .prologue
    .line 52
    return-void
.end method

.method public reset(J)V
    .locals 2
    .parameter "time"

    .prologue
    .line 56
    iget-object v1, p0, Lmiui/app/screenelement/elements/FramerateController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 57
    :try_start_0
    iput-wide p1, p0, Lmiui/app/screenelement/elements/FramerateController;->mStartTime:J

    .line 58
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/app/screenelement/elements/FramerateController;->mStopped:Z

    .line 59
    monitor-exit v1

    .line 60
    return-void

    .line 59
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public updateFramerate(J)V
    .locals 10
    .parameter "currentTime"

    .prologue
    .line 74
    invoke-virtual {p0}, Lmiui/app/screenelement/elements/FramerateController;->isVisible()Z

    move-result v6

    if-nez v6, :cond_0

    .line 96
    :goto_0
    return-void

    .line 78
    :cond_0
    iget-object v7, p0, Lmiui/app/screenelement/elements/FramerateController;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 79
    :try_start_0
    iget-boolean v6, p0, Lmiui/app/screenelement/elements/FramerateController;->mStopped:Z

    if-eqz v6, :cond_1

    .line 80
    monitor-exit v7

    goto :goto_0

    .line 95
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 81
    :cond_1
    :try_start_1
    iget-wide v8, p0, Lmiui/app/screenelement/elements/FramerateController;->mStartTime:J

    sub-long v1, p1, v8

    .line 82
    .local v1, elapsedTime:J
    const-wide/16 v8, 0x0

    cmp-long v6, v1, v8

    if-gez v6, :cond_2

    .line 83
    const-wide/16 v1, 0x0

    .line 84
    :cond_2
    iget-boolean v6, p0, Lmiui/app/screenelement/elements/FramerateController;->mLoop:Z

    if-eqz v6, :cond_4

    iget-wide v8, p0, Lmiui/app/screenelement/elements/FramerateController;->mTimeRange:J

    rem-long v4, v1, v8

    .line 85
    .local v4, time:J
    :goto_1
    iget-object v6, p0, Lmiui/app/screenelement/elements/FramerateController;->mControlPoints:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v3, v6, -0x1

    .local v3, i:I
    :goto_2
    if-ltz v3, :cond_3

    .line 86
    iget-object v6, p0, Lmiui/app/screenelement/elements/FramerateController;->mControlPoints:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/app/screenelement/elements/FramerateController$ControlPoint;

    .line 87
    .local v0, cp:Lmiui/app/screenelement/elements/FramerateController$ControlPoint;
    iget-wide v8, v0, Lmiui/app/screenelement/elements/FramerateController$ControlPoint;->mTime:J

    cmp-long v6, v4, v8

    if-ltz v6, :cond_5

    .line 88
    iget v6, v0, Lmiui/app/screenelement/elements/FramerateController$ControlPoint;->mFramerate:I

    int-to-float v6, v6

    invoke-virtual {p0, v6}, Lmiui/app/screenelement/elements/FramerateController;->requestFramerate(F)V

    .line 89
    iget-boolean v6, p0, Lmiui/app/screenelement/elements/FramerateController;->mLoop:Z

    if-nez v6, :cond_3

    iget-object v6, p0, Lmiui/app/screenelement/elements/FramerateController;->mControlPoints:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ne v3, v6, :cond_3

    .line 90
    const/4 v6, 0x1

    iput-boolean v6, p0, Lmiui/app/screenelement/elements/FramerateController;->mStopped:Z

    .line 95
    .end local v0           #cp:Lmiui/app/screenelement/elements/FramerateController$ControlPoint;
    :cond_3
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .end local v3           #i:I
    .end local v4           #time:J
    :cond_4
    move-wide v4, v1

    .line 84
    goto :goto_1

    .line 85
    .restart local v0       #cp:Lmiui/app/screenelement/elements/FramerateController$ControlPoint;
    .restart local v3       #i:I
    .restart local v4       #time:J
    :cond_5
    add-int/lit8 v3, v3, -0x1

    goto :goto_2
.end method

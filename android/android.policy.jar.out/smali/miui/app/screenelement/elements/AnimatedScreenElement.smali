.class public abstract Lmiui/app/screenelement/elements/AnimatedScreenElement;
.super Lmiui/app/screenelement/elements/ScreenElement;
.source "AnimatedScreenElement.java"


# instance fields
.field private mActualXVar:Lmiui/app/screenelement/util/IndexedNumberVariable;

.field private mActualYVar:Lmiui/app/screenelement/util/IndexedNumberVariable;

.field protected mAni:Lmiui/app/screenelement/animation/AnimatedElement;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/app/screenelement/ScreenContext;Lmiui/app/screenelement/ScreenElementRoot;)V
    .locals 4
    .parameter "node"
    .parameter "c"
    .parameter "root"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/app/screenelement/ScreenElementLoadException;
        }
    .end annotation

    .prologue
    .line 21
    invoke-direct {p0, p1, p2, p3}, Lmiui/app/screenelement/elements/ScreenElement;-><init>(Lorg/w3c/dom/Element;Lmiui/app/screenelement/ScreenContext;Lmiui/app/screenelement/ScreenElementRoot;)V

    .line 22
    new-instance v0, Lmiui/app/screenelement/animation/AnimatedElement;

    iget-object v1, p0, Lmiui/app/screenelement/elements/AnimatedScreenElement;->mContext:Lmiui/app/screenelement/ScreenContext;

    invoke-direct {v0, p1, v1}, Lmiui/app/screenelement/animation/AnimatedElement;-><init>(Lorg/w3c/dom/Element;Lmiui/app/screenelement/ScreenContext;)V

    iput-object v0, p0, Lmiui/app/screenelement/elements/AnimatedScreenElement;->mAni:Lmiui/app/screenelement/animation/AnimatedElement;

    .line 23
    iget-boolean v0, p0, Lmiui/app/screenelement/elements/AnimatedScreenElement;->mHasName:Z

    if-eqz v0, :cond_0

    .line 24
    new-instance v0, Lmiui/app/screenelement/util/IndexedNumberVariable;

    iget-object v1, p0, Lmiui/app/screenelement/elements/AnimatedScreenElement;->mName:Ljava/lang/String;

    const-string v2, "actual_x"

    iget-object v3, p2, Lmiui/app/screenelement/ScreenContext;->mVariables:Lmiui/app/screenelement/data/Variables;

    invoke-direct {v0, v1, v2, v3}, Lmiui/app/screenelement/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Ljava/lang/String;Lmiui/app/screenelement/data/Variables;)V

    iput-object v0, p0, Lmiui/app/screenelement/elements/AnimatedScreenElement;->mActualXVar:Lmiui/app/screenelement/util/IndexedNumberVariable;

    .line 25
    new-instance v0, Lmiui/app/screenelement/util/IndexedNumberVariable;

    iget-object v1, p0, Lmiui/app/screenelement/elements/AnimatedScreenElement;->mName:Ljava/lang/String;

    const-string v2, "actual_y"

    iget-object v3, p2, Lmiui/app/screenelement/ScreenContext;->mVariables:Lmiui/app/screenelement/data/Variables;

    invoke-direct {v0, v1, v2, v3}, Lmiui/app/screenelement/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Ljava/lang/String;Lmiui/app/screenelement/data/Variables;)V

    iput-object v0, p0, Lmiui/app/screenelement/elements/AnimatedScreenElement;->mActualYVar:Lmiui/app/screenelement/util/IndexedNumberVariable;

    .line 27
    :cond_0
    return-void
.end method


# virtual methods
.method public getAlpha()I
    .locals 2

    .prologue
    .line 94
    iget-object v1, p0, Lmiui/app/screenelement/elements/AnimatedScreenElement;->mAni:Lmiui/app/screenelement/animation/AnimatedElement;

    invoke-virtual {v1}, Lmiui/app/screenelement/animation/AnimatedElement;->getAlpha()I

    move-result v0

    .line 95
    .local v0, a:I
    iget-object v1, p0, Lmiui/app/screenelement/elements/AnimatedScreenElement;->mParent:Lmiui/app/screenelement/elements/ElementGroup;

    if-nez v1, :cond_0

    .end local v0           #a:I
    :goto_0
    return v0

    .restart local v0       #a:I
    :cond_0
    iget-object v1, p0, Lmiui/app/screenelement/elements/AnimatedScreenElement;->mParent:Lmiui/app/screenelement/elements/ElementGroup;

    invoke-virtual {v1}, Lmiui/app/screenelement/elements/ElementGroup;->getAlpha()I

    move-result v1

    invoke-static {v0, v1}, Lmiui/app/screenelement/util/Utils;->mixAlpha(II)I

    move-result v0

    goto :goto_0
.end method

.method public getAngle()F
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lmiui/app/screenelement/elements/AnimatedScreenElement;->mAni:Lmiui/app/screenelement/animation/AnimatedElement;

    invoke-virtual {v0}, Lmiui/app/screenelement/animation/AnimatedElement;->getRotationAngle()F

    move-result v0

    return v0
.end method

.method public getCenterX()F
    .locals 2

    .prologue
    .line 82
    iget-object v0, p0, Lmiui/app/screenelement/elements/AnimatedScreenElement;->mAni:Lmiui/app/screenelement/animation/AnimatedElement;

    invoke-virtual {v0}, Lmiui/app/screenelement/animation/AnimatedElement;->getCenterX()F

    move-result v0

    float-to-double v0, v0

    invoke-virtual {p0, v0, v1}, Lmiui/app/screenelement/elements/AnimatedScreenElement;->scale(D)F

    move-result v0

    return v0
.end method

.method public getCenterY()F
    .locals 2

    .prologue
    .line 86
    iget-object v0, p0, Lmiui/app/screenelement/elements/AnimatedScreenElement;->mAni:Lmiui/app/screenelement/animation/AnimatedElement;

    invoke-virtual {v0}, Lmiui/app/screenelement/animation/AnimatedElement;->getCenterY()F

    move-result v0

    float-to-double v0, v0

    invoke-virtual {p0, v0, v1}, Lmiui/app/screenelement/elements/AnimatedScreenElement;->scale(D)F

    move-result v0

    return v0
.end method

.method public getHeight()F
    .locals 2

    .prologue
    .line 70
    iget-object v0, p0, Lmiui/app/screenelement/elements/AnimatedScreenElement;->mAni:Lmiui/app/screenelement/animation/AnimatedElement;

    invoke-virtual {v0}, Lmiui/app/screenelement/animation/AnimatedElement;->getHeight()F

    move-result v0

    float-to-double v0, v0

    invoke-virtual {p0, v0, v1}, Lmiui/app/screenelement/elements/AnimatedScreenElement;->scale(D)F

    move-result v0

    return v0
.end method

.method public getMaxHeight()F
    .locals 2

    .prologue
    .line 78
    iget-object v0, p0, Lmiui/app/screenelement/elements/AnimatedScreenElement;->mAni:Lmiui/app/screenelement/animation/AnimatedElement;

    invoke-virtual {v0}, Lmiui/app/screenelement/animation/AnimatedElement;->getMaxHeight()F

    move-result v0

    float-to-double v0, v0

    invoke-virtual {p0, v0, v1}, Lmiui/app/screenelement/elements/AnimatedScreenElement;->scale(D)F

    move-result v0

    return v0
.end method

.method public getMaxWidth()F
    .locals 2

    .prologue
    .line 74
    iget-object v0, p0, Lmiui/app/screenelement/elements/AnimatedScreenElement;->mAni:Lmiui/app/screenelement/animation/AnimatedElement;

    invoke-virtual {v0}, Lmiui/app/screenelement/animation/AnimatedElement;->getMaxWidth()F

    move-result v0

    float-to-double v0, v0

    invoke-virtual {p0, v0, v1}, Lmiui/app/screenelement/elements/AnimatedScreenElement;->scale(D)F

    move-result v0

    return v0
.end method

.method public getWidth()F
    .locals 2

    .prologue
    .line 66
    iget-object v0, p0, Lmiui/app/screenelement/elements/AnimatedScreenElement;->mAni:Lmiui/app/screenelement/animation/AnimatedElement;

    invoke-virtual {v0}, Lmiui/app/screenelement/animation/AnimatedElement;->getWidth()F

    move-result v0

    float-to-double v0, v0

    invoke-virtual {p0, v0, v1}, Lmiui/app/screenelement/elements/AnimatedScreenElement;->scale(D)F

    move-result v0

    return v0
.end method

.method public getX()F
    .locals 2

    .prologue
    .line 58
    iget-object v0, p0, Lmiui/app/screenelement/elements/AnimatedScreenElement;->mAni:Lmiui/app/screenelement/animation/AnimatedElement;

    invoke-virtual {v0}, Lmiui/app/screenelement/animation/AnimatedElement;->getX()F

    move-result v0

    float-to-double v0, v0

    invoke-virtual {p0, v0, v1}, Lmiui/app/screenelement/elements/AnimatedScreenElement;->scale(D)F

    move-result v0

    return v0
.end method

.method public getY()F
    .locals 2

    .prologue
    .line 62
    iget-object v0, p0, Lmiui/app/screenelement/elements/AnimatedScreenElement;->mAni:Lmiui/app/screenelement/animation/AnimatedElement;

    invoke-virtual {v0}, Lmiui/app/screenelement/animation/AnimatedElement;->getY()F

    move-result v0

    float-to-double v0, v0

    invoke-virtual {p0, v0, v1}, Lmiui/app/screenelement/elements/AnimatedScreenElement;->scale(D)F

    move-result v0

    return v0
.end method

.method public init()V
    .locals 1

    .prologue
    .line 31
    invoke-super {p0}, Lmiui/app/screenelement/elements/ScreenElement;->init()V

    .line 32
    iget-object v0, p0, Lmiui/app/screenelement/elements/AnimatedScreenElement;->mAni:Lmiui/app/screenelement/animation/AnimatedElement;

    invoke-virtual {v0}, Lmiui/app/screenelement/animation/AnimatedElement;->init()V

    .line 33
    return-void
.end method

.method protected isVisibleInner()Z
    .locals 1

    .prologue
    .line 54
    invoke-super {p0}, Lmiui/app/screenelement/elements/ScreenElement;->isVisibleInner()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lmiui/app/screenelement/elements/AnimatedScreenElement;->getAlpha()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public reset(J)V
    .locals 1
    .parameter "time"

    .prologue
    .line 37
    invoke-super {p0, p1, p2}, Lmiui/app/screenelement/elements/ScreenElement;->reset(J)V

    .line 38
    iget-object v0, p0, Lmiui/app/screenelement/elements/AnimatedScreenElement;->mAni:Lmiui/app/screenelement/animation/AnimatedElement;

    invoke-virtual {v0, p1, p2}, Lmiui/app/screenelement/animation/AnimatedElement;->reset(J)V

    .line 39
    return-void
.end method

.method public tick(J)V
    .locals 3
    .parameter "currentTime"

    .prologue
    .line 43
    iget-object v0, p0, Lmiui/app/screenelement/elements/AnimatedScreenElement;->mAni:Lmiui/app/screenelement/animation/AnimatedElement;

    invoke-virtual {v0, p1, p2}, Lmiui/app/screenelement/animation/AnimatedElement;->tick(J)V

    .line 45
    invoke-virtual {p0}, Lmiui/app/screenelement/elements/AnimatedScreenElement;->updateVisibility()V

    .line 46
    iget-boolean v0, p0, Lmiui/app/screenelement/elements/AnimatedScreenElement;->mHasName:Z

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lmiui/app/screenelement/elements/AnimatedScreenElement;->mActualXVar:Lmiui/app/screenelement/util/IndexedNumberVariable;

    iget-object v1, p0, Lmiui/app/screenelement/elements/AnimatedScreenElement;->mAni:Lmiui/app/screenelement/animation/AnimatedElement;

    invoke-virtual {v1}, Lmiui/app/screenelement/animation/AnimatedElement;->getX()F

    move-result v1

    float-to-double v1, v1

    invoke-virtual {v0, v1, v2}, Lmiui/app/screenelement/util/IndexedNumberVariable;->set(D)V

    .line 48
    iget-object v0, p0, Lmiui/app/screenelement/elements/AnimatedScreenElement;->mActualYVar:Lmiui/app/screenelement/util/IndexedNumberVariable;

    iget-object v1, p0, Lmiui/app/screenelement/elements/AnimatedScreenElement;->mAni:Lmiui/app/screenelement/animation/AnimatedElement;

    invoke-virtual {v1}, Lmiui/app/screenelement/animation/AnimatedElement;->getY()F

    move-result v1

    float-to-double v1, v1

    invoke-virtual {v0, v1, v2}, Lmiui/app/screenelement/util/IndexedNumberVariable;->set(D)V

    .line 50
    :cond_0
    return-void
.end method

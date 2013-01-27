.class Lmiui/app/screenelement/elements/AdvancedSlider$SliderPoint;
.super Ljava/lang/Object;
.source "AdvancedSlider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/app/screenelement/elements/AdvancedSlider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SliderPoint"
.end annotation


# instance fields
.field private mCurrentStateElements:Lmiui/app/screenelement/elements/ScreenElement;

.field protected mCurrentX:F

.field protected mCurrentY:F

.field private mHeight:Lmiui/app/screenelement/data/Expression;

.field protected mName:Ljava/lang/String;

.field protected mNormalSound:Ljava/lang/String;

.field protected mNormalStateElements:Lmiui/app/screenelement/elements/ElementGroup;

.field protected mPressedSound:Ljava/lang/String;

.field protected mPressedStateElements:Lmiui/app/screenelement/elements/ElementGroup;

.field protected mReachedSound:Ljava/lang/String;

.field private mReachedStateElements:Lmiui/app/screenelement/elements/ElementGroup;

.field private mState:Lmiui/app/screenelement/elements/AdvancedSlider$State;

.field private mWidth:Lmiui/app/screenelement/data/Expression;

.field protected mX:Lmiui/app/screenelement/data/Expression;

.field protected mY:Lmiui/app/screenelement/data/Expression;

.field final synthetic this$0:Lmiui/app/screenelement/elements/AdvancedSlider;


# direct methods
.method public constructor <init>(Lmiui/app/screenelement/elements/AdvancedSlider;Lorg/w3c/dom/Element;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter "node"
    .parameter "tag"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/app/screenelement/ScreenElementLoadException;
        }
    .end annotation

    .prologue
    .line 340
    iput-object p1, p0, Lmiui/app/screenelement/elements/AdvancedSlider$SliderPoint;->this$0:Lmiui/app/screenelement/elements/AdvancedSlider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 324
    sget-object v0, Lmiui/app/screenelement/elements/AdvancedSlider$State;->Invalid:Lmiui/app/screenelement/elements/AdvancedSlider$State;

    iput-object v0, p0, Lmiui/app/screenelement/elements/AdvancedSlider$SliderPoint;->mState:Lmiui/app/screenelement/elements/AdvancedSlider$State;

    .line 341
    invoke-virtual {p0, p2, p3}, Lmiui/app/screenelement/elements/AdvancedSlider$SliderPoint;->load(Lorg/w3c/dom/Element;Ljava/lang/String;)V

    .line 342
    return-void
.end method


# virtual methods
.method public findElement(Ljava/lang/String;)Lmiui/app/screenelement/elements/ScreenElement;
    .locals 2
    .parameter "name"

    .prologue
    .line 466
    const/4 v0, 0x0

    .line 467
    .local v0, ele:Lmiui/app/screenelement/elements/ScreenElement;
    iget-object v1, p0, Lmiui/app/screenelement/elements/AdvancedSlider$SliderPoint;->mPressedStateElements:Lmiui/app/screenelement/elements/ElementGroup;

    if-eqz v1, :cond_0

    .line 468
    iget-object v1, p0, Lmiui/app/screenelement/elements/AdvancedSlider$SliderPoint;->mPressedStateElements:Lmiui/app/screenelement/elements/ElementGroup;

    invoke-virtual {v1, p1}, Lmiui/app/screenelement/elements/ElementGroup;->findElement(Ljava/lang/String;)Lmiui/app/screenelement/elements/ScreenElement;

    move-result-object v0

    .line 469
    if-eqz v0, :cond_0

    move-object v1, v0

    .line 482
    :goto_0
    return-object v1

    .line 472
    :cond_0
    iget-object v1, p0, Lmiui/app/screenelement/elements/AdvancedSlider$SliderPoint;->mNormalStateElements:Lmiui/app/screenelement/elements/ElementGroup;

    if-eqz v1, :cond_1

    .line 473
    iget-object v1, p0, Lmiui/app/screenelement/elements/AdvancedSlider$SliderPoint;->mNormalStateElements:Lmiui/app/screenelement/elements/ElementGroup;

    invoke-virtual {v1, p1}, Lmiui/app/screenelement/elements/ElementGroup;->findElement(Ljava/lang/String;)Lmiui/app/screenelement/elements/ScreenElement;

    move-result-object v0

    .line 474
    if-eqz v0, :cond_1

    move-object v1, v0

    .line 475
    goto :goto_0

    .line 477
    :cond_1
    iget-object v1, p0, Lmiui/app/screenelement/elements/AdvancedSlider$SliderPoint;->mReachedStateElements:Lmiui/app/screenelement/elements/ElementGroup;

    if-eqz v1, :cond_2

    .line 478
    iget-object v1, p0, Lmiui/app/screenelement/elements/AdvancedSlider$SliderPoint;->mReachedStateElements:Lmiui/app/screenelement/elements/ElementGroup;

    invoke-virtual {v1, p1}, Lmiui/app/screenelement/elements/ElementGroup;->findElement(Ljava/lang/String;)Lmiui/app/screenelement/elements/ScreenElement;

    move-result-object v0

    .line 479
    if-eqz v0, :cond_2

    move-object v1, v0

    .line 480
    goto :goto_0

    .line 482
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public finish()V
    .locals 1

    .prologue
    .line 406
    iget-object v0, p0, Lmiui/app/screenelement/elements/AdvancedSlider$SliderPoint;->mNormalStateElements:Lmiui/app/screenelement/elements/ElementGroup;

    if-eqz v0, :cond_0

    .line 407
    iget-object v0, p0, Lmiui/app/screenelement/elements/AdvancedSlider$SliderPoint;->mNormalStateElements:Lmiui/app/screenelement/elements/ElementGroup;

    invoke-virtual {v0}, Lmiui/app/screenelement/elements/ElementGroup;->finish()V

    .line 408
    :cond_0
    iget-object v0, p0, Lmiui/app/screenelement/elements/AdvancedSlider$SliderPoint;->mPressedStateElements:Lmiui/app/screenelement/elements/ElementGroup;

    if-eqz v0, :cond_1

    .line 409
    iget-object v0, p0, Lmiui/app/screenelement/elements/AdvancedSlider$SliderPoint;->mPressedStateElements:Lmiui/app/screenelement/elements/ElementGroup;

    invoke-virtual {v0}, Lmiui/app/screenelement/elements/ElementGroup;->finish()V

    .line 410
    :cond_1
    iget-object v0, p0, Lmiui/app/screenelement/elements/AdvancedSlider$SliderPoint;->mReachedStateElements:Lmiui/app/screenelement/elements/ElementGroup;

    if-eqz v0, :cond_2

    .line 411
    iget-object v0, p0, Lmiui/app/screenelement/elements/AdvancedSlider$SliderPoint;->mReachedStateElements:Lmiui/app/screenelement/elements/ElementGroup;

    invoke-virtual {v0}, Lmiui/app/screenelement/elements/ElementGroup;->finish()V

    .line 412
    :cond_2
    return-void
.end method

.method public getCurrentX()F
    .locals 1

    .prologue
    .line 494
    iget v0, p0, Lmiui/app/screenelement/elements/AdvancedSlider$SliderPoint;->mCurrentX:F

    return v0
.end method

.method public getCurrentY()F
    .locals 1

    .prologue
    .line 498
    iget v0, p0, Lmiui/app/screenelement/elements/AdvancedSlider$SliderPoint;->mCurrentY:F

    return v0
.end method

.method public getState()Lmiui/app/screenelement/elements/AdvancedSlider$State;
    .locals 1

    .prologue
    .line 535
    iget-object v0, p0, Lmiui/app/screenelement/elements/AdvancedSlider$SliderPoint;->mState:Lmiui/app/screenelement/elements/AdvancedSlider$State;

    return-object v0
.end method

.method public getX()F
    .locals 3

    .prologue
    .line 486
    iget-object v0, p0, Lmiui/app/screenelement/elements/AdvancedSlider$SliderPoint;->this$0:Lmiui/app/screenelement/elements/AdvancedSlider;

    iget-object v1, p0, Lmiui/app/screenelement/elements/AdvancedSlider$SliderPoint;->mX:Lmiui/app/screenelement/data/Expression;

    iget-object v2, p0, Lmiui/app/screenelement/elements/AdvancedSlider$SliderPoint;->this$0:Lmiui/app/screenelement/elements/AdvancedSlider;

    iget-object v2, v2, Lmiui/app/screenelement/elements/AdvancedSlider;->mContext:Lmiui/app/screenelement/ScreenContext;

    iget-object v2, v2, Lmiui/app/screenelement/ScreenContext;->mVariables:Lmiui/app/screenelement/data/Variables;

    invoke-virtual {v1, v2}, Lmiui/app/screenelement/data/Expression;->evaluate(Lmiui/app/screenelement/data/Variables;)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lmiui/app/screenelement/elements/AdvancedSlider;->scale(D)F

    move-result v0

    return v0
.end method

.method public getY()F
    .locals 3

    .prologue
    .line 490
    iget-object v0, p0, Lmiui/app/screenelement/elements/AdvancedSlider$SliderPoint;->this$0:Lmiui/app/screenelement/elements/AdvancedSlider;

    iget-object v1, p0, Lmiui/app/screenelement/elements/AdvancedSlider$SliderPoint;->mY:Lmiui/app/screenelement/data/Expression;

    iget-object v2, p0, Lmiui/app/screenelement/elements/AdvancedSlider$SliderPoint;->this$0:Lmiui/app/screenelement/elements/AdvancedSlider;

    iget-object v2, v2, Lmiui/app/screenelement/elements/AdvancedSlider;->mContext:Lmiui/app/screenelement/ScreenContext;

    iget-object v2, v2, Lmiui/app/screenelement/ScreenContext;->mVariables:Lmiui/app/screenelement/data/Variables;

    invoke-virtual {v1, v2}, Lmiui/app/screenelement/data/Expression;->evaluate(Lmiui/app/screenelement/data/Variables;)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lmiui/app/screenelement/elements/AdvancedSlider;->scale(D)F

    move-result v0

    return v0
.end method

.method public init()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 387
    iget-object v0, p0, Lmiui/app/screenelement/elements/AdvancedSlider$SliderPoint;->this$0:Lmiui/app/screenelement/elements/AdvancedSlider;

    iget-object v1, p0, Lmiui/app/screenelement/elements/AdvancedSlider$SliderPoint;->mX:Lmiui/app/screenelement/data/Expression;

    iget-object v2, p0, Lmiui/app/screenelement/elements/AdvancedSlider$SliderPoint;->this$0:Lmiui/app/screenelement/elements/AdvancedSlider;

    iget-object v2, v2, Lmiui/app/screenelement/elements/AdvancedSlider;->mContext:Lmiui/app/screenelement/ScreenContext;

    iget-object v2, v2, Lmiui/app/screenelement/ScreenContext;->mVariables:Lmiui/app/screenelement/data/Variables;

    invoke-virtual {v1, v2}, Lmiui/app/screenelement/data/Expression;->evaluate(Lmiui/app/screenelement/data/Variables;)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lmiui/app/screenelement/elements/AdvancedSlider;->scale(D)F

    move-result v0

    iput v0, p0, Lmiui/app/screenelement/elements/AdvancedSlider$SliderPoint;->mCurrentX:F

    .line 388
    iget-object v0, p0, Lmiui/app/screenelement/elements/AdvancedSlider$SliderPoint;->this$0:Lmiui/app/screenelement/elements/AdvancedSlider;

    iget-object v1, p0, Lmiui/app/screenelement/elements/AdvancedSlider$SliderPoint;->mY:Lmiui/app/screenelement/data/Expression;

    iget-object v2, p0, Lmiui/app/screenelement/elements/AdvancedSlider$SliderPoint;->this$0:Lmiui/app/screenelement/elements/AdvancedSlider;

    iget-object v2, v2, Lmiui/app/screenelement/elements/AdvancedSlider;->mContext:Lmiui/app/screenelement/ScreenContext;

    iget-object v2, v2, Lmiui/app/screenelement/ScreenContext;->mVariables:Lmiui/app/screenelement/data/Variables;

    invoke-virtual {v1, v2}, Lmiui/app/screenelement/data/Expression;->evaluate(Lmiui/app/screenelement/data/Variables;)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lmiui/app/screenelement/elements/AdvancedSlider;->scale(D)F

    move-result v0

    iput v0, p0, Lmiui/app/screenelement/elements/AdvancedSlider$SliderPoint;->mCurrentY:F

    .line 389
    iget-object v0, p0, Lmiui/app/screenelement/elements/AdvancedSlider$SliderPoint;->mNormalStateElements:Lmiui/app/screenelement/elements/ElementGroup;

    if-eqz v0, :cond_0

    .line 390
    iget-object v0, p0, Lmiui/app/screenelement/elements/AdvancedSlider$SliderPoint;->mNormalStateElements:Lmiui/app/screenelement/elements/ElementGroup;

    invoke-virtual {v0}, Lmiui/app/screenelement/elements/ElementGroup;->init()V

    .line 391
    iget-object v0, p0, Lmiui/app/screenelement/elements/AdvancedSlider$SliderPoint;->mNormalStateElements:Lmiui/app/screenelement/elements/ElementGroup;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmiui/app/screenelement/elements/ElementGroup;->show(Z)V

    .line 393
    :cond_0
    iget-object v0, p0, Lmiui/app/screenelement/elements/AdvancedSlider$SliderPoint;->mPressedStateElements:Lmiui/app/screenelement/elements/ElementGroup;

    if-eqz v0, :cond_1

    .line 394
    iget-object v0, p0, Lmiui/app/screenelement/elements/AdvancedSlider$SliderPoint;->mPressedStateElements:Lmiui/app/screenelement/elements/ElementGroup;

    invoke-virtual {v0}, Lmiui/app/screenelement/elements/ElementGroup;->init()V

    .line 395
    iget-object v0, p0, Lmiui/app/screenelement/elements/AdvancedSlider$SliderPoint;->mPressedStateElements:Lmiui/app/screenelement/elements/ElementGroup;

    invoke-virtual {v0, v3}, Lmiui/app/screenelement/elements/ElementGroup;->show(Z)V

    .line 397
    :cond_1
    iget-object v0, p0, Lmiui/app/screenelement/elements/AdvancedSlider$SliderPoint;->mReachedStateElements:Lmiui/app/screenelement/elements/ElementGroup;

    if-eqz v0, :cond_2

    .line 398
    iget-object v0, p0, Lmiui/app/screenelement/elements/AdvancedSlider$SliderPoint;->mReachedStateElements:Lmiui/app/screenelement/elements/ElementGroup;

    invoke-virtual {v0}, Lmiui/app/screenelement/elements/ElementGroup;->init()V

    .line 399
    iget-object v0, p0, Lmiui/app/screenelement/elements/AdvancedSlider$SliderPoint;->mReachedStateElements:Lmiui/app/screenelement/elements/ElementGroup;

    invoke-virtual {v0, v3}, Lmiui/app/screenelement/elements/ElementGroup;->show(Z)V

    .line 402
    :cond_2
    sget-object v0, Lmiui/app/screenelement/elements/AdvancedSlider$State;->Normal:Lmiui/app/screenelement/elements/AdvancedSlider$State;

    invoke-virtual {p0, v0}, Lmiui/app/screenelement/elements/AdvancedSlider$SliderPoint;->setState(Lmiui/app/screenelement/elements/AdvancedSlider$State;)V

    .line 403
    return-void
.end method

.method public load(Lorg/w3c/dom/Element;Ljava/lang/String;)V
    .locals 4
    .parameter "node"
    .parameter "tag"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/app/screenelement/ScreenElementLoadException;
        }
    .end annotation

    .prologue
    .line 345
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "wrong node name"

    invoke-static {v1, v2}, Lmiui/app/screenelement/util/Utils;->asserts(ZLjava/lang/String;)V

    .line 346
    const-string v1, "name"

    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lmiui/app/screenelement/elements/AdvancedSlider$SliderPoint;->mName:Ljava/lang/String;

    .line 347
    const-string v1, "normalSound"

    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lmiui/app/screenelement/elements/AdvancedSlider$SliderPoint;->mNormalSound:Ljava/lang/String;

    .line 348
    const-string v1, "pressedSound"

    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lmiui/app/screenelement/elements/AdvancedSlider$SliderPoint;->mPressedSound:Ljava/lang/String;

    .line 349
    const-string v1, "reachedSound"

    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lmiui/app/screenelement/elements/AdvancedSlider$SliderPoint;->mReachedSound:Ljava/lang/String;

    .line 351
    const-string v1, "x"

    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lmiui/app/screenelement/data/Expression;->build(Ljava/lang/String;)Lmiui/app/screenelement/data/Expression;

    move-result-object v1

    iput-object v1, p0, Lmiui/app/screenelement/elements/AdvancedSlider$SliderPoint;->mX:Lmiui/app/screenelement/data/Expression;

    .line 352
    const-string v1, "y"

    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lmiui/app/screenelement/data/Expression;->build(Ljava/lang/String;)Lmiui/app/screenelement/data/Expression;

    move-result-object v1

    iput-object v1, p0, Lmiui/app/screenelement/elements/AdvancedSlider$SliderPoint;->mY:Lmiui/app/screenelement/data/Expression;

    .line 353
    const-string v1, "w"

    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lmiui/app/screenelement/data/Expression;->build(Ljava/lang/String;)Lmiui/app/screenelement/data/Expression;

    move-result-object v1

    iput-object v1, p0, Lmiui/app/screenelement/elements/AdvancedSlider$SliderPoint;->mWidth:Lmiui/app/screenelement/data/Expression;

    .line 354
    const-string v1, "h"

    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lmiui/app/screenelement/data/Expression;->build(Ljava/lang/String;)Lmiui/app/screenelement/data/Expression;

    move-result-object v1

    iput-object v1, p0, Lmiui/app/screenelement/elements/AdvancedSlider$SliderPoint;->mHeight:Lmiui/app/screenelement/data/Expression;

    .line 356
    const-string v1, "NormalState"

    invoke-static {p1, v1}, Lmiui/app/screenelement/util/Utils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 357
    .local v0, ele:Lorg/w3c/dom/Element;
    if-eqz v0, :cond_0

    .line 358
    new-instance v1, Lmiui/app/screenelement/elements/ElementGroup;

    iget-object v2, p0, Lmiui/app/screenelement/elements/AdvancedSlider$SliderPoint;->this$0:Lmiui/app/screenelement/elements/AdvancedSlider;

    iget-object v2, v2, Lmiui/app/screenelement/elements/AdvancedSlider;->mContext:Lmiui/app/screenelement/ScreenContext;

    iget-object v3, p0, Lmiui/app/screenelement/elements/AdvancedSlider$SliderPoint;->this$0:Lmiui/app/screenelement/elements/AdvancedSlider;

    iget-object v3, v3, Lmiui/app/screenelement/elements/AdvancedSlider;->mRoot:Lmiui/app/screenelement/ScreenElementRoot;

    invoke-direct {v1, v0, v2, v3}, Lmiui/app/screenelement/elements/ElementGroup;-><init>(Lorg/w3c/dom/Element;Lmiui/app/screenelement/ScreenContext;Lmiui/app/screenelement/ScreenElementRoot;)V

    iput-object v1, p0, Lmiui/app/screenelement/elements/AdvancedSlider$SliderPoint;->mNormalStateElements:Lmiui/app/screenelement/elements/ElementGroup;

    .line 361
    :cond_0
    const-string v1, "PressedState"

    invoke-static {p1, v1}, Lmiui/app/screenelement/util/Utils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 362
    if-eqz v0, :cond_1

    .line 363
    new-instance v1, Lmiui/app/screenelement/elements/ElementGroup;

    iget-object v2, p0, Lmiui/app/screenelement/elements/AdvancedSlider$SliderPoint;->this$0:Lmiui/app/screenelement/elements/AdvancedSlider;

    iget-object v2, v2, Lmiui/app/screenelement/elements/AdvancedSlider;->mContext:Lmiui/app/screenelement/ScreenContext;

    iget-object v3, p0, Lmiui/app/screenelement/elements/AdvancedSlider$SliderPoint;->this$0:Lmiui/app/screenelement/elements/AdvancedSlider;

    iget-object v3, v3, Lmiui/app/screenelement/elements/AdvancedSlider;->mRoot:Lmiui/app/screenelement/ScreenElementRoot;

    invoke-direct {v1, v0, v2, v3}, Lmiui/app/screenelement/elements/ElementGroup;-><init>(Lorg/w3c/dom/Element;Lmiui/app/screenelement/ScreenContext;Lmiui/app/screenelement/ScreenElementRoot;)V

    iput-object v1, p0, Lmiui/app/screenelement/elements/AdvancedSlider$SliderPoint;->mPressedStateElements:Lmiui/app/screenelement/elements/ElementGroup;

    .line 367
    :cond_1
    const-string v1, "ReachedState"

    invoke-static {p1, v1}, Lmiui/app/screenelement/util/Utils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 368
    if-eqz v0, :cond_2

    .line 369
    new-instance v1, Lmiui/app/screenelement/elements/ElementGroup;

    iget-object v2, p0, Lmiui/app/screenelement/elements/AdvancedSlider$SliderPoint;->this$0:Lmiui/app/screenelement/elements/AdvancedSlider;

    iget-object v2, v2, Lmiui/app/screenelement/elements/AdvancedSlider;->mContext:Lmiui/app/screenelement/ScreenContext;

    iget-object v3, p0, Lmiui/app/screenelement/elements/AdvancedSlider$SliderPoint;->this$0:Lmiui/app/screenelement/elements/AdvancedSlider;

    iget-object v3, v3, Lmiui/app/screenelement/elements/AdvancedSlider;->mRoot:Lmiui/app/screenelement/ScreenElementRoot;

    invoke-direct {v1, v0, v2, v3}, Lmiui/app/screenelement/elements/ElementGroup;-><init>(Lorg/w3c/dom/Element;Lmiui/app/screenelement/ScreenContext;Lmiui/app/screenelement/ScreenElementRoot;)V

    iput-object v1, p0, Lmiui/app/screenelement/elements/AdvancedSlider$SliderPoint;->mReachedStateElements:Lmiui/app/screenelement/elements/ElementGroup;

    .line 371
    :cond_2
    return-void
.end method

.method public moveTo(FF)V
    .locals 0
    .parameter "x"
    .parameter "y"

    .prologue
    .line 382
    iput p1, p0, Lmiui/app/screenelement/elements/AdvancedSlider$SliderPoint;->mCurrentX:F

    .line 383
    iput p2, p0, Lmiui/app/screenelement/elements/AdvancedSlider$SliderPoint;->mCurrentY:F

    .line 384
    return-void
.end method

.method protected onStateChange(Lmiui/app/screenelement/elements/AdvancedSlider$State;Lmiui/app/screenelement/elements/AdvancedSlider$State;)V
    .locals 0
    .parameter "pre"
    .parameter "s"

    .prologue
    .line 539
    return-void
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 415
    iget-object v0, p0, Lmiui/app/screenelement/elements/AdvancedSlider$SliderPoint;->mNormalStateElements:Lmiui/app/screenelement/elements/ElementGroup;

    if-eqz v0, :cond_0

    .line 416
    iget-object v0, p0, Lmiui/app/screenelement/elements/AdvancedSlider$SliderPoint;->mNormalStateElements:Lmiui/app/screenelement/elements/ElementGroup;

    invoke-virtual {v0}, Lmiui/app/screenelement/elements/ElementGroup;->pause()V

    .line 417
    :cond_0
    iget-object v0, p0, Lmiui/app/screenelement/elements/AdvancedSlider$SliderPoint;->mPressedStateElements:Lmiui/app/screenelement/elements/ElementGroup;

    if-eqz v0, :cond_1

    .line 418
    iget-object v0, p0, Lmiui/app/screenelement/elements/AdvancedSlider$SliderPoint;->mPressedStateElements:Lmiui/app/screenelement/elements/ElementGroup;

    invoke-virtual {v0}, Lmiui/app/screenelement/elements/ElementGroup;->pause()V

    .line 419
    :cond_1
    iget-object v0, p0, Lmiui/app/screenelement/elements/AdvancedSlider$SliderPoint;->mReachedStateElements:Lmiui/app/screenelement/elements/ElementGroup;

    if-eqz v0, :cond_2

    .line 420
    iget-object v0, p0, Lmiui/app/screenelement/elements/AdvancedSlider$SliderPoint;->mReachedStateElements:Lmiui/app/screenelement/elements/ElementGroup;

    invoke-virtual {v0}, Lmiui/app/screenelement/elements/ElementGroup;->pause()V

    .line 421
    :cond_2
    return-void
.end method

.method public render(Landroid/graphics/Canvas;)V
    .locals 6
    .parameter "c"

    .prologue
    .line 442
    iget-object v3, p0, Lmiui/app/screenelement/elements/AdvancedSlider$SliderPoint;->this$0:Lmiui/app/screenelement/elements/AdvancedSlider;

    iget-object v4, p0, Lmiui/app/screenelement/elements/AdvancedSlider$SliderPoint;->mX:Lmiui/app/screenelement/data/Expression;

    iget-object v5, p0, Lmiui/app/screenelement/elements/AdvancedSlider$SliderPoint;->this$0:Lmiui/app/screenelement/elements/AdvancedSlider;

    iget-object v5, v5, Lmiui/app/screenelement/elements/AdvancedSlider;->mContext:Lmiui/app/screenelement/ScreenContext;

    iget-object v5, v5, Lmiui/app/screenelement/ScreenContext;->mVariables:Lmiui/app/screenelement/data/Variables;

    invoke-virtual {v4, v5}, Lmiui/app/screenelement/data/Expression;->evaluate(Lmiui/app/screenelement/data/Variables;)D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lmiui/app/screenelement/elements/AdvancedSlider;->scale(D)F

    move-result v1

    .line 443
    .local v1, x:F
    iget-object v3, p0, Lmiui/app/screenelement/elements/AdvancedSlider$SliderPoint;->this$0:Lmiui/app/screenelement/elements/AdvancedSlider;

    iget-object v4, p0, Lmiui/app/screenelement/elements/AdvancedSlider$SliderPoint;->mY:Lmiui/app/screenelement/data/Expression;

    iget-object v5, p0, Lmiui/app/screenelement/elements/AdvancedSlider$SliderPoint;->this$0:Lmiui/app/screenelement/elements/AdvancedSlider;

    iget-object v5, v5, Lmiui/app/screenelement/elements/AdvancedSlider;->mContext:Lmiui/app/screenelement/ScreenContext;

    iget-object v5, v5, Lmiui/app/screenelement/ScreenContext;->mVariables:Lmiui/app/screenelement/data/Variables;

    invoke-virtual {v4, v5}, Lmiui/app/screenelement/data/Expression;->evaluate(Lmiui/app/screenelement/data/Variables;)D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lmiui/app/screenelement/elements/AdvancedSlider;->scale(D)F

    move-result v2

    .line 444
    .local v2, y:F
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 445
    .local v0, rs:I
    iget v3, p0, Lmiui/app/screenelement/elements/AdvancedSlider$SliderPoint;->mCurrentX:F

    sub-float/2addr v3, v1

    iget v4, p0, Lmiui/app/screenelement/elements/AdvancedSlider$SliderPoint;->mCurrentY:F

    sub-float/2addr v4, v2

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 446
    iget-object v3, p0, Lmiui/app/screenelement/elements/AdvancedSlider$SliderPoint;->mCurrentStateElements:Lmiui/app/screenelement/elements/ScreenElement;

    if-eqz v3, :cond_0

    .line 447
    iget-object v3, p0, Lmiui/app/screenelement/elements/AdvancedSlider$SliderPoint;->mCurrentStateElements:Lmiui/app/screenelement/elements/ScreenElement;

    invoke-virtual {v3, p1}, Lmiui/app/screenelement/elements/ScreenElement;->render(Landroid/graphics/Canvas;)V

    .line 448
    :cond_0
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 449
    return-void
.end method

.method public reset(J)V
    .locals 1
    .parameter "time"

    .prologue
    .line 433
    iget-object v0, p0, Lmiui/app/screenelement/elements/AdvancedSlider$SliderPoint;->mNormalStateElements:Lmiui/app/screenelement/elements/ElementGroup;

    if-eqz v0, :cond_0

    .line 434
    iget-object v0, p0, Lmiui/app/screenelement/elements/AdvancedSlider$SliderPoint;->mNormalStateElements:Lmiui/app/screenelement/elements/ElementGroup;

    invoke-virtual {v0, p1, p2}, Lmiui/app/screenelement/elements/ElementGroup;->reset(J)V

    .line 435
    :cond_0
    iget-object v0, p0, Lmiui/app/screenelement/elements/AdvancedSlider$SliderPoint;->mPressedStateElements:Lmiui/app/screenelement/elements/ElementGroup;

    if-eqz v0, :cond_1

    .line 436
    iget-object v0, p0, Lmiui/app/screenelement/elements/AdvancedSlider$SliderPoint;->mPressedStateElements:Lmiui/app/screenelement/elements/ElementGroup;

    invoke-virtual {v0, p1, p2}, Lmiui/app/screenelement/elements/ElementGroup;->reset(J)V

    .line 437
    :cond_1
    iget-object v0, p0, Lmiui/app/screenelement/elements/AdvancedSlider$SliderPoint;->mReachedStateElements:Lmiui/app/screenelement/elements/ElementGroup;

    if-eqz v0, :cond_2

    .line 438
    iget-object v0, p0, Lmiui/app/screenelement/elements/AdvancedSlider$SliderPoint;->mReachedStateElements:Lmiui/app/screenelement/elements/ElementGroup;

    invoke-virtual {v0, p1, p2}, Lmiui/app/screenelement/elements/ElementGroup;->reset(J)V

    .line 439
    :cond_2
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 424
    iget-object v0, p0, Lmiui/app/screenelement/elements/AdvancedSlider$SliderPoint;->mNormalStateElements:Lmiui/app/screenelement/elements/ElementGroup;

    if-eqz v0, :cond_0

    .line 425
    iget-object v0, p0, Lmiui/app/screenelement/elements/AdvancedSlider$SliderPoint;->mNormalStateElements:Lmiui/app/screenelement/elements/ElementGroup;

    invoke-virtual {v0}, Lmiui/app/screenelement/elements/ElementGroup;->resume()V

    .line 426
    :cond_0
    iget-object v0, p0, Lmiui/app/screenelement/elements/AdvancedSlider$SliderPoint;->mPressedStateElements:Lmiui/app/screenelement/elements/ElementGroup;

    if-eqz v0, :cond_1

    .line 427
    iget-object v0, p0, Lmiui/app/screenelement/elements/AdvancedSlider$SliderPoint;->mPressedStateElements:Lmiui/app/screenelement/elements/ElementGroup;

    invoke-virtual {v0}, Lmiui/app/screenelement/elements/ElementGroup;->resume()V

    .line 428
    :cond_1
    iget-object v0, p0, Lmiui/app/screenelement/elements/AdvancedSlider$SliderPoint;->mReachedStateElements:Lmiui/app/screenelement/elements/ElementGroup;

    if-eqz v0, :cond_2

    .line 429
    iget-object v0, p0, Lmiui/app/screenelement/elements/AdvancedSlider$SliderPoint;->mReachedStateElements:Lmiui/app/screenelement/elements/ElementGroup;

    invoke-virtual {v0}, Lmiui/app/screenelement/elements/ElementGroup;->resume()V

    .line 430
    :cond_2
    return-void
.end method

.method public setState(Lmiui/app/screenelement/elements/AdvancedSlider$State;)V
    .locals 4
    .parameter "s"

    .prologue
    .line 502
    iget-object v2, p0, Lmiui/app/screenelement/elements/AdvancedSlider$SliderPoint;->mState:Lmiui/app/screenelement/elements/AdvancedSlider$State;

    if-ne v2, p1, :cond_0

    .line 532
    :goto_0
    return-void

    .line 504
    :cond_0
    iget-object v1, p0, Lmiui/app/screenelement/elements/AdvancedSlider$SliderPoint;->mState:Lmiui/app/screenelement/elements/AdvancedSlider$State;

    .line 505
    .local v1, preState:Lmiui/app/screenelement/elements/AdvancedSlider$State;
    iput-object p1, p0, Lmiui/app/screenelement/elements/AdvancedSlider$SliderPoint;->mState:Lmiui/app/screenelement/elements/AdvancedSlider$State;

    .line 506
    const/4 v0, 0x0

    .line 507
    .local v0, ele:Lmiui/app/screenelement/elements/ScreenElement;
    sget-object v2, Lmiui/app/screenelement/elements/AdvancedSlider$1;->$SwitchMap$miui$app$screenelement$elements$AdvancedSlider$State:[I

    invoke-virtual {p1}, Lmiui/app/screenelement/elements/AdvancedSlider$State;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 520
    :goto_1
    if-eqz v0, :cond_2

    iget-object v2, p0, Lmiui/app/screenelement/elements/AdvancedSlider$SliderPoint;->mPressedStateElements:Lmiui/app/screenelement/elements/ElementGroup;

    if-ne v0, v2, :cond_1

    iget-object v2, p0, Lmiui/app/screenelement/elements/AdvancedSlider$SliderPoint;->this$0:Lmiui/app/screenelement/elements/AdvancedSlider;

    #getter for: Lmiui/app/screenelement/elements/AdvancedSlider;->mPressed:Z
    invoke-static {v2}, Lmiui/app/screenelement/elements/AdvancedSlider;->access$500(Lmiui/app/screenelement/elements/AdvancedSlider;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 521
    :cond_1
    invoke-virtual {v0}, Lmiui/app/screenelement/elements/ScreenElement;->reset()V

    .line 523
    :cond_2
    iget-object v2, p0, Lmiui/app/screenelement/elements/AdvancedSlider$SliderPoint;->mCurrentStateElements:Lmiui/app/screenelement/elements/ScreenElement;

    if-eq v2, v0, :cond_5

    .line 524
    iget-object v2, p0, Lmiui/app/screenelement/elements/AdvancedSlider$SliderPoint;->mCurrentStateElements:Lmiui/app/screenelement/elements/ScreenElement;

    if-eqz v2, :cond_3

    .line 525
    iget-object v2, p0, Lmiui/app/screenelement/elements/AdvancedSlider$SliderPoint;->mCurrentStateElements:Lmiui/app/screenelement/elements/ScreenElement;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lmiui/app/screenelement/elements/ScreenElement;->show(Z)V

    .line 526
    :cond_3
    if-eqz v0, :cond_4

    .line 527
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lmiui/app/screenelement/elements/ScreenElement;->show(Z)V

    .line 528
    :cond_4
    iput-object v0, p0, Lmiui/app/screenelement/elements/AdvancedSlider$SliderPoint;->mCurrentStateElements:Lmiui/app/screenelement/elements/ScreenElement;

    .line 531
    :cond_5
    iget-object v2, p0, Lmiui/app/screenelement/elements/AdvancedSlider$SliderPoint;->mState:Lmiui/app/screenelement/elements/AdvancedSlider$State;

    invoke-virtual {p0, v1, v2}, Lmiui/app/screenelement/elements/AdvancedSlider$SliderPoint;->onStateChange(Lmiui/app/screenelement/elements/AdvancedSlider$State;Lmiui/app/screenelement/elements/AdvancedSlider$State;)V

    goto :goto_0

    .line 509
    :pswitch_0
    iget-object v0, p0, Lmiui/app/screenelement/elements/AdvancedSlider$SliderPoint;->mNormalStateElements:Lmiui/app/screenelement/elements/ElementGroup;

    .line 510
    goto :goto_1

    .line 512
    :pswitch_1
    iget-object v2, p0, Lmiui/app/screenelement/elements/AdvancedSlider$SliderPoint;->mPressedStateElements:Lmiui/app/screenelement/elements/ElementGroup;

    if-eqz v2, :cond_6

    iget-object v0, p0, Lmiui/app/screenelement/elements/AdvancedSlider$SliderPoint;->mPressedStateElements:Lmiui/app/screenelement/elements/ElementGroup;

    .line 513
    :goto_2
    goto :goto_1

    .line 512
    :cond_6
    iget-object v0, p0, Lmiui/app/screenelement/elements/AdvancedSlider$SliderPoint;->mNormalStateElements:Lmiui/app/screenelement/elements/ElementGroup;

    goto :goto_2

    .line 515
    :pswitch_2
    iget-object v2, p0, Lmiui/app/screenelement/elements/AdvancedSlider$SliderPoint;->mReachedStateElements:Lmiui/app/screenelement/elements/ElementGroup;

    if-eqz v2, :cond_7

    iget-object v0, p0, Lmiui/app/screenelement/elements/AdvancedSlider$SliderPoint;->mReachedStateElements:Lmiui/app/screenelement/elements/ElementGroup;

    :goto_3
    goto :goto_1

    :cond_7
    iget-object v2, p0, Lmiui/app/screenelement/elements/AdvancedSlider$SliderPoint;->mPressedStateElements:Lmiui/app/screenelement/elements/ElementGroup;

    if-eqz v2, :cond_8

    iget-object v0, p0, Lmiui/app/screenelement/elements/AdvancedSlider$SliderPoint;->mPressedStateElements:Lmiui/app/screenelement/elements/ElementGroup;

    goto :goto_3

    :cond_8
    iget-object v0, p0, Lmiui/app/screenelement/elements/AdvancedSlider$SliderPoint;->mNormalStateElements:Lmiui/app/screenelement/elements/ElementGroup;

    goto :goto_3

    .line 507
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public showCategory(Ljava/lang/String;Z)V
    .locals 1
    .parameter "category"
    .parameter "show"

    .prologue
    .line 457
    iget-object v0, p0, Lmiui/app/screenelement/elements/AdvancedSlider$SliderPoint;->mPressedStateElements:Lmiui/app/screenelement/elements/ElementGroup;

    if-eqz v0, :cond_0

    .line 458
    iget-object v0, p0, Lmiui/app/screenelement/elements/AdvancedSlider$SliderPoint;->mPressedStateElements:Lmiui/app/screenelement/elements/ElementGroup;

    invoke-virtual {v0, p1, p2}, Lmiui/app/screenelement/elements/ElementGroup;->showCategory(Ljava/lang/String;Z)V

    .line 459
    :cond_0
    iget-object v0, p0, Lmiui/app/screenelement/elements/AdvancedSlider$SliderPoint;->mNormalStateElements:Lmiui/app/screenelement/elements/ElementGroup;

    if-eqz v0, :cond_1

    .line 460
    iget-object v0, p0, Lmiui/app/screenelement/elements/AdvancedSlider$SliderPoint;->mNormalStateElements:Lmiui/app/screenelement/elements/ElementGroup;

    invoke-virtual {v0, p1, p2}, Lmiui/app/screenelement/elements/ElementGroup;->showCategory(Ljava/lang/String;Z)V

    .line 461
    :cond_1
    iget-object v0, p0, Lmiui/app/screenelement/elements/AdvancedSlider$SliderPoint;->mReachedStateElements:Lmiui/app/screenelement/elements/ElementGroup;

    if-eqz v0, :cond_2

    .line 462
    iget-object v0, p0, Lmiui/app/screenelement/elements/AdvancedSlider$SliderPoint;->mReachedStateElements:Lmiui/app/screenelement/elements/ElementGroup;

    invoke-virtual {v0, p1, p2}, Lmiui/app/screenelement/elements/ElementGroup;->showCategory(Ljava/lang/String;Z)V

    .line 463
    :cond_2
    return-void
.end method

.method public tick(J)V
    .locals 1
    .parameter "currentTime"

    .prologue
    .line 452
    iget-object v0, p0, Lmiui/app/screenelement/elements/AdvancedSlider$SliderPoint;->mCurrentStateElements:Lmiui/app/screenelement/elements/ScreenElement;

    if-eqz v0, :cond_0

    .line 453
    iget-object v0, p0, Lmiui/app/screenelement/elements/AdvancedSlider$SliderPoint;->mCurrentStateElements:Lmiui/app/screenelement/elements/ScreenElement;

    invoke-virtual {v0, p1, p2}, Lmiui/app/screenelement/elements/ScreenElement;->tick(J)V

    .line 454
    :cond_0
    return-void
.end method

.method public touched(FF)Z
    .locals 7
    .parameter "x"
    .parameter "y"

    .prologue
    .line 374
    iget-object v4, p0, Lmiui/app/screenelement/elements/AdvancedSlider$SliderPoint;->this$0:Lmiui/app/screenelement/elements/AdvancedSlider;

    iget-object v5, p0, Lmiui/app/screenelement/elements/AdvancedSlider$SliderPoint;->mX:Lmiui/app/screenelement/data/Expression;

    iget-object v6, p0, Lmiui/app/screenelement/elements/AdvancedSlider$SliderPoint;->this$0:Lmiui/app/screenelement/elements/AdvancedSlider;

    iget-object v6, v6, Lmiui/app/screenelement/elements/AdvancedSlider;->mContext:Lmiui/app/screenelement/ScreenContext;

    iget-object v6, v6, Lmiui/app/screenelement/ScreenContext;->mVariables:Lmiui/app/screenelement/data/Variables;

    invoke-virtual {v5, v6}, Lmiui/app/screenelement/data/Expression;->evaluate(Lmiui/app/screenelement/data/Variables;)D

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lmiui/app/screenelement/elements/AdvancedSlider;->scale(D)F

    move-result v2

    .line 375
    .local v2, cx:F
    iget-object v4, p0, Lmiui/app/screenelement/elements/AdvancedSlider$SliderPoint;->this$0:Lmiui/app/screenelement/elements/AdvancedSlider;

    iget-object v5, p0, Lmiui/app/screenelement/elements/AdvancedSlider$SliderPoint;->mWidth:Lmiui/app/screenelement/data/Expression;

    iget-object v6, p0, Lmiui/app/screenelement/elements/AdvancedSlider$SliderPoint;->this$0:Lmiui/app/screenelement/elements/AdvancedSlider;

    iget-object v6, v6, Lmiui/app/screenelement/elements/AdvancedSlider;->mContext:Lmiui/app/screenelement/ScreenContext;

    iget-object v6, v6, Lmiui/app/screenelement/ScreenContext;->mVariables:Lmiui/app/screenelement/data/Variables;

    invoke-virtual {v5, v6}, Lmiui/app/screenelement/data/Expression;->evaluate(Lmiui/app/screenelement/data/Variables;)D

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lmiui/app/screenelement/elements/AdvancedSlider;->scale(D)F

    move-result v1

    .line 376
    .local v1, cw:F
    iget-object v4, p0, Lmiui/app/screenelement/elements/AdvancedSlider$SliderPoint;->this$0:Lmiui/app/screenelement/elements/AdvancedSlider;

    iget-object v5, p0, Lmiui/app/screenelement/elements/AdvancedSlider$SliderPoint;->mY:Lmiui/app/screenelement/data/Expression;

    iget-object v6, p0, Lmiui/app/screenelement/elements/AdvancedSlider$SliderPoint;->this$0:Lmiui/app/screenelement/elements/AdvancedSlider;

    iget-object v6, v6, Lmiui/app/screenelement/elements/AdvancedSlider;->mContext:Lmiui/app/screenelement/ScreenContext;

    iget-object v6, v6, Lmiui/app/screenelement/ScreenContext;->mVariables:Lmiui/app/screenelement/data/Variables;

    invoke-virtual {v5, v6}, Lmiui/app/screenelement/data/Expression;->evaluate(Lmiui/app/screenelement/data/Variables;)D

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lmiui/app/screenelement/elements/AdvancedSlider;->scale(D)F

    move-result v3

    .line 377
    .local v3, cy:F
    iget-object v4, p0, Lmiui/app/screenelement/elements/AdvancedSlider$SliderPoint;->this$0:Lmiui/app/screenelement/elements/AdvancedSlider;

    iget-object v5, p0, Lmiui/app/screenelement/elements/AdvancedSlider$SliderPoint;->mHeight:Lmiui/app/screenelement/data/Expression;

    iget-object v6, p0, Lmiui/app/screenelement/elements/AdvancedSlider$SliderPoint;->this$0:Lmiui/app/screenelement/elements/AdvancedSlider;

    iget-object v6, v6, Lmiui/app/screenelement/elements/AdvancedSlider;->mContext:Lmiui/app/screenelement/ScreenContext;

    iget-object v6, v6, Lmiui/app/screenelement/ScreenContext;->mVariables:Lmiui/app/screenelement/data/Variables;

    invoke-virtual {v5, v6}, Lmiui/app/screenelement/data/Expression;->evaluate(Lmiui/app/screenelement/data/Variables;)D

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lmiui/app/screenelement/elements/AdvancedSlider;->scale(D)F

    move-result v0

    .line 378
    .local v0, ch:F
    cmpl-float v4, p1, v2

    if-ltz v4, :cond_0

    add-float v4, v2, v1

    cmpg-float v4, p1, v4

    if-gtz v4, :cond_0

    cmpl-float v4, p2, v3

    if-ltz v4, :cond_0

    add-float v4, v3, v0

    cmpg-float v4, p2, v4

    if-gtz v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    return v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

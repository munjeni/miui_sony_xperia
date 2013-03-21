.class public Landroid/view/ScaleGestureDetector;
.super Ljava/lang/Object;
.source "ScaleGestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;,
        Landroid/view/ScaleGestureDetector$OnScaleGestureListener;
    }
.end annotation


# static fields
.field private static final PRESSURE_THRESHOLD:F = 0.67f

.field private static final TAG:Ljava/lang/String; = "ScaleGestureDetector"


# instance fields
.field private mActive0MostRecent:Z

.field private mActiveId0:I

.field private mActiveId1:I

.field private mBottomSlopEdge:F

.field private final mContext:Landroid/content/Context;

.field private mCurrEvent:Landroid/view/MotionEvent;

.field private mCurrFingerDiffX:F

.field private mCurrFingerDiffY:F

.field private mCurrLen:F

.field private mCurrPressure:F

.field private final mEdgeSlop:F

.field private mFocusX:F

.field private mFocusY:F

.field private mGestureInProgress:Z

.field private final mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

.field private mInvalidGesture:Z

.field private final mListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

.field private mPrevEvent:Landroid/view/MotionEvent;

.field private mPrevFingerDiffX:F

.field private mPrevFingerDiffY:F

.field private mPrevLen:F

.field private mPrevPressure:F

.field private mRightSlopEdge:F

.field private mScaleFactor:F

.field private mSloppyGesture:Z

.field private mTimeDelta:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V
    .locals 3
    .parameter "context"
    .parameter "listener"

    .prologue
    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 170
    invoke-static {}, Landroid/view/InputEventConsistencyVerifier;->isInstrumentationEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Landroid/view/InputEventConsistencyVerifier;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/view/InputEventConsistencyVerifier;-><init>(Ljava/lang/Object;I)V

    :goto_0
    iput-object v1, p0, Landroid/view/ScaleGestureDetector;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    .line 175
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 176
    .local v0, config:Landroid/view/ViewConfiguration;
    iput-object p1, p0, Landroid/view/ScaleGestureDetector;->mContext:Landroid/content/Context;

    .line 177
    iput-object p2, p0, Landroid/view/ScaleGestureDetector;->mListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    .line 178
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledEdgeSlop()I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Landroid/view/ScaleGestureDetector;->mEdgeSlop:F

    .line 179
    return-void

    .line 170
    .end local v0           #config:Landroid/view/ViewConfiguration;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private findNewActiveIndex(Landroid/view/MotionEvent;II)I
    .locals 10
    .parameter "ev"
    .parameter "otherActiveId"
    .parameter "oldIndex"

    .prologue
    .line 492
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v5

    .line 495
    .local v5, pointerCount:I
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v4

    .line 496
    .local v4, otherActiveIndex:I
    const/4 v3, -0x1

    .line 499
    .local v3, newActiveIndex:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v5, :cond_0

    .line 500
    if-eq v2, p3, :cond_1

    if-eq v2, v4, :cond_1

    .line 501
    iget v1, p0, Landroid/view/ScaleGestureDetector;->mEdgeSlop:F

    .line 502
    .local v1, edgeSlop:F
    iget v6, p0, Landroid/view/ScaleGestureDetector;->mRightSlopEdge:F

    .line 503
    .local v6, rightSlop:F
    iget v0, p0, Landroid/view/ScaleGestureDetector;->mBottomSlopEdge:F

    .line 504
    .local v0, bottomSlop:F
    invoke-static {p1, v2}, Landroid/view/ScaleGestureDetector;->getRawX(Landroid/view/MotionEvent;I)F

    move-result v7

    .line 505
    .local v7, x:F
    invoke-static {p1, v2}, Landroid/view/ScaleGestureDetector;->getRawY(Landroid/view/MotionEvent;I)F

    move-result v8

    .line 506
    .local v8, y:F
    cmpl-float v9, v7, v1

    if-ltz v9, :cond_1

    cmpl-float v9, v8, v1

    if-ltz v9, :cond_1

    cmpg-float v9, v7, v6

    if-gtz v9, :cond_1

    cmpg-float v9, v8, v0

    if-gtz v9, :cond_1

    .line 507
    move v3, v2

    .line 513
    .end local v0           #bottomSlop:F
    .end local v1           #edgeSlop:F
    .end local v6           #rightSlop:F
    .end local v7           #x:F
    .end local v8           #y:F
    :cond_0
    return v3

    .line 499
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private static getRawX(Landroid/view/MotionEvent;I)F
    .locals 3
    .parameter "event"
    .parameter "pointerIndex"

    .prologue
    .line 520
    if-gez p1, :cond_0

    const/4 v1, 0x1

    .line 523
    :goto_0
    return v1

    .line 521
    :cond_0
    if-nez p1, :cond_1

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    goto :goto_0

    .line 522
    :cond_1
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    sub-float v0, v1, v2

    .line 523
    .local v0, offset:F
    invoke-virtual {p0, p1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    add-float/2addr v1, v0

    goto :goto_0
.end method

.method private static getRawY(Landroid/view/MotionEvent;I)F
    .locals 3
    .parameter "event"
    .parameter "pointerIndex"

    .prologue
    .line 530
    if-gez p1, :cond_0

    const/4 v1, 0x1

    .line 533
    :goto_0
    return v1

    .line 531
    :cond_0
    if-nez p1, :cond_1

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    goto :goto_0

    .line 532
    :cond_1
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    sub-float v0, v1, v2

    .line 533
    .local v0, offset:F
    invoke-virtual {p0, p1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    add-float/2addr v1, v0

    goto :goto_0
.end method

.method private reset()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 588
    iget-object v0, p0, Landroid/view/ScaleGestureDetector;->mPrevEvent:Landroid/view/MotionEvent;

    if-eqz v0, :cond_0

    .line 589
    iget-object v0, p0, Landroid/view/ScaleGestureDetector;->mPrevEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 590
    iput-object v3, p0, Landroid/view/ScaleGestureDetector;->mPrevEvent:Landroid/view/MotionEvent;

    .line 592
    :cond_0
    iget-object v0, p0, Landroid/view/ScaleGestureDetector;->mCurrEvent:Landroid/view/MotionEvent;

    if-eqz v0, :cond_1

    .line 593
    iget-object v0, p0, Landroid/view/ScaleGestureDetector;->mCurrEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 594
    iput-object v3, p0, Landroid/view/ScaleGestureDetector;->mCurrEvent:Landroid/view/MotionEvent;

    .line 596
    :cond_1
    iput-boolean v1, p0, Landroid/view/ScaleGestureDetector;->mSloppyGesture:Z

    .line 597
    iput-boolean v1, p0, Landroid/view/ScaleGestureDetector;->mGestureInProgress:Z

    .line 598
    iput v2, p0, Landroid/view/ScaleGestureDetector;->mActiveId0:I

    .line 599
    iput v2, p0, Landroid/view/ScaleGestureDetector;->mActiveId1:I

    .line 600
    iput-boolean v1, p0, Landroid/view/ScaleGestureDetector;->mInvalidGesture:Z

    .line 601
    return-void
.end method

.method private setContext(Landroid/view/MotionEvent;)V
    .locals 24
    .parameter "curr"

    .prologue
    .line 537
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ScaleGestureDetector;->mCurrEvent:Landroid/view/MotionEvent;

    move-object/from16 v20, v0

    if-eqz v20, :cond_0

    .line 538
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ScaleGestureDetector;->mCurrEvent:Landroid/view/MotionEvent;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/MotionEvent;->recycle()V

    .line 540
    :cond_0
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/ScaleGestureDetector;->mCurrEvent:Landroid/view/MotionEvent;

    .line 542
    const/high16 v20, -0x4080

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mCurrLen:F

    .line 543
    const/high16 v20, -0x4080

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mPrevLen:F

    .line 544
    const/high16 v20, -0x4080

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mScaleFactor:F

    .line 546
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/view/ScaleGestureDetector;->mPrevEvent:Landroid/view/MotionEvent;

    .line 548
    .local v11, prev:Landroid/view/MotionEvent;
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ScaleGestureDetector;->mActiveId0:I

    move/from16 v20, v0

    move/from16 v0, v20

    invoke-virtual {v11, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v12

    .line 549
    .local v12, prevIndex0:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ScaleGestureDetector;->mActiveId1:I

    move/from16 v20, v0

    move/from16 v0, v20

    invoke-virtual {v11, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v13

    .line 550
    .local v13, prevIndex1:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ScaleGestureDetector;->mActiveId0:I

    move/from16 v20, v0

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v3

    .line 551
    .local v3, currIndex0:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ScaleGestureDetector;->mActiveId1:I

    move/from16 v20, v0

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v4

    .line 553
    .local v4, currIndex1:I
    if-ltz v12, :cond_1

    if-ltz v13, :cond_1

    if-ltz v3, :cond_1

    if-gez v4, :cond_3

    .line 554
    :cond_1
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ScaleGestureDetector;->mInvalidGesture:Z

    .line 555
    const-string v20, "ScaleGestureDetector"

    const-string v21, "Invalid MotionEvent stream detected."

    new-instance v22, Ljava/lang/Throwable;

    invoke-direct/range {v22 .. v22}, Ljava/lang/Throwable;-><init>()V

    invoke-static/range {v20 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 556
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ScaleGestureDetector;->mGestureInProgress:Z

    move/from16 v20, v0

    if-eqz v20, :cond_2

    .line 557
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ScaleGestureDetector;->mListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Landroid/view/ScaleGestureDetector$OnScaleGestureListener;->onScaleEnd(Landroid/view/ScaleGestureDetector;)V

    .line 585
    :cond_2
    :goto_0
    return-void

    .line 562
    :cond_3
    invoke-virtual {v11, v12}, Landroid/view/MotionEvent;->getX(I)F

    move-result v16

    .line 563
    .local v16, px0:F
    invoke-virtual {v11, v12}, Landroid/view/MotionEvent;->getY(I)F

    move-result v18

    .line 564
    .local v18, py0:F
    invoke-virtual {v11, v13}, Landroid/view/MotionEvent;->getX(I)F

    move-result v17

    .line 565
    .local v17, px1:F
    invoke-virtual {v11, v13}, Landroid/view/MotionEvent;->getY(I)F

    move-result v19

    .line 566
    .local v19, py1:F
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    .line 567
    .local v7, cx0:F
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v9

    .line 568
    .local v9, cy0:F
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v8

    .line 569
    .local v8, cx1:F
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v10

    .line 571
    .local v10, cy1:F
    sub-float v14, v17, v16

    .line 572
    .local v14, pvx:F
    sub-float v15, v19, v18

    .line 573
    .local v15, pvy:F
    sub-float v5, v8, v7

    .line 574
    .local v5, cvx:F
    sub-float v6, v10, v9

    .line 575
    .local v6, cvy:F
    move-object/from16 v0, p0

    iput v14, v0, Landroid/view/ScaleGestureDetector;->mPrevFingerDiffX:F

    .line 576
    move-object/from16 v0, p0

    iput v15, v0, Landroid/view/ScaleGestureDetector;->mPrevFingerDiffY:F

    .line 577
    move-object/from16 v0, p0

    iput v5, v0, Landroid/view/ScaleGestureDetector;->mCurrFingerDiffX:F

    .line 578
    move-object/from16 v0, p0

    iput v6, v0, Landroid/view/ScaleGestureDetector;->mCurrFingerDiffY:F

    .line 580
    const/high16 v20, 0x3f00

    mul-float v20, v20, v5

    add-float v20, v20, v7

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mFocusX:F

    .line 581
    const/high16 v20, 0x3f00

    mul-float v20, v20, v6

    add-float v20, v20, v9

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mFocusY:F

    .line 582
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v20

    invoke-virtual {v11}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v22

    sub-long v20, v20, v22

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/view/ScaleGestureDetector;->mTimeDelta:J

    .line 583
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v20

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v21

    add-float v20, v20, v21

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mCurrPressure:F

    .line 584
    invoke-virtual {v11, v12}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v20

    invoke-virtual {v11, v13}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v21

    add-float v20, v20, v21

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mPrevPressure:F

    goto/16 :goto_0
.end method


# virtual methods
.method public getCurrentSpan()F
    .locals 4

    .prologue
    .line 648
    iget v2, p0, Landroid/view/ScaleGestureDetector;->mCurrLen:F

    const/high16 v3, -0x4080

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    .line 649
    iget v0, p0, Landroid/view/ScaleGestureDetector;->mCurrFingerDiffX:F

    .line 650
    .local v0, cvx:F
    iget v1, p0, Landroid/view/ScaleGestureDetector;->mCurrFingerDiffY:F

    .line 651
    .local v1, cvy:F
    mul-float v2, v0, v0

    mul-float v3, v1, v1

    add-float/2addr v2, v3

    invoke-static {v2}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v2

    iput v2, p0, Landroid/view/ScaleGestureDetector;->mCurrLen:F

    .line 653
    .end local v0           #cvx:F
    .end local v1           #cvy:F
    :cond_0
    iget v2, p0, Landroid/view/ScaleGestureDetector;->mCurrLen:F

    return v2
.end method

.method public getCurrentSpanX()F
    .locals 1

    .prologue
    .line 663
    iget v0, p0, Landroid/view/ScaleGestureDetector;->mCurrFingerDiffX:F

    return v0
.end method

.method public getCurrentSpanY()F
    .locals 1

    .prologue
    .line 673
    iget v0, p0, Landroid/view/ScaleGestureDetector;->mCurrFingerDiffY:F

    return v0
.end method

.method public getEventTime()J
    .locals 2

    .prologue
    .line 741
    iget-object v0, p0, Landroid/view/ScaleGestureDetector;->mCurrEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getFocusX()F
    .locals 1

    .prologue
    .line 623
    iget v0, p0, Landroid/view/ScaleGestureDetector;->mFocusX:F

    return v0
.end method

.method public getFocusY()F
    .locals 1

    .prologue
    .line 638
    iget v0, p0, Landroid/view/ScaleGestureDetector;->mFocusY:F

    return v0
.end method

.method public getPreviousSpan()F
    .locals 4

    .prologue
    .line 683
    iget v2, p0, Landroid/view/ScaleGestureDetector;->mPrevLen:F

    const/high16 v3, -0x4080

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    .line 684
    iget v0, p0, Landroid/view/ScaleGestureDetector;->mPrevFingerDiffX:F

    .line 685
    .local v0, pvx:F
    iget v1, p0, Landroid/view/ScaleGestureDetector;->mPrevFingerDiffY:F

    .line 686
    .local v1, pvy:F
    mul-float v2, v0, v0

    mul-float v3, v1, v1

    add-float/2addr v2, v3

    invoke-static {v2}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v2

    iput v2, p0, Landroid/view/ScaleGestureDetector;->mPrevLen:F

    .line 688
    .end local v0           #pvx:F
    .end local v1           #pvy:F
    :cond_0
    iget v2, p0, Landroid/view/ScaleGestureDetector;->mPrevLen:F

    return v2
.end method

.method public getPreviousSpanX()F
    .locals 1

    .prologue
    .line 698
    iget v0, p0, Landroid/view/ScaleGestureDetector;->mPrevFingerDiffX:F

    return v0
.end method

.method public getPreviousSpanY()F
    .locals 1

    .prologue
    .line 708
    iget v0, p0, Landroid/view/ScaleGestureDetector;->mPrevFingerDiffY:F

    return v0
.end method

.method public getScaleFactor()F
    .locals 2

    .prologue
    .line 719
    iget v0, p0, Landroid/view/ScaleGestureDetector;->mScaleFactor:F

    const/high16 v1, -0x4080

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 720
    invoke-virtual {p0}, Landroid/view/ScaleGestureDetector;->getCurrentSpan()F

    move-result v0

    invoke-virtual {p0}, Landroid/view/ScaleGestureDetector;->getPreviousSpan()F

    move-result v1

    div-float/2addr v0, v1

    iput v0, p0, Landroid/view/ScaleGestureDetector;->mScaleFactor:F

    .line 722
    :cond_0
    iget v0, p0, Landroid/view/ScaleGestureDetector;->mScaleFactor:F

    return v0
.end method

.method public getTimeDelta()J
    .locals 2

    .prologue
    .line 732
    iget-wide v0, p0, Landroid/view/ScaleGestureDetector;->mTimeDelta:J

    return-wide v0
.end method

.method public isInProgress()Z
    .locals 1

    .prologue
    .line 608
    iget-boolean v0, p0, Landroid/view/ScaleGestureDetector;->mGestureInProgress:Z

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 30
    .parameter "event"

    .prologue
    .line 182
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ScaleGestureDetector;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    move-object/from16 v27, v0

    if-eqz v27, :cond_0

    .line 183
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ScaleGestureDetector;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, p1

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/view/InputEventConsistencyVerifier;->onTouchEvent(Landroid/view/MotionEvent;I)V

    .line 186
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    .line 188
    .local v3, action:I
    if-nez v3, :cond_1

    .line 189
    invoke-direct/range {p0 .. p0}, Landroid/view/ScaleGestureDetector;->reset()V

    .line 192
    :cond_1
    const/4 v10, 0x1

    .line 193
    .local v10, handled:Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ScaleGestureDetector;->mInvalidGesture:Z

    move/from16 v27, v0

    if-eqz v27, :cond_4

    .line 194
    const/4 v10, 0x0

    .line 485
    :cond_2
    :goto_0
    if-nez v10, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ScaleGestureDetector;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    move-object/from16 v27, v0

    if-eqz v27, :cond_3

    .line 486
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ScaleGestureDetector;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, p1

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/view/InputEventConsistencyVerifier;->onUnhandledEvent(Landroid/view/InputEvent;I)V

    :cond_3
    move/from16 v27, v10

    .line 488
    :goto_1
    return v27

    .line 195
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ScaleGestureDetector;->mGestureInProgress:Z

    move/from16 v27, v0

    if-nez v27, :cond_1e

    .line 196
    packed-switch v3, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 198
    :pswitch_1
    const/16 v27, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mActiveId0:I

    .line 199
    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ScaleGestureDetector;->mActive0MostRecent:Z

    goto :goto_0

    .line 204
    :pswitch_2
    invoke-direct/range {p0 .. p0}, Landroid/view/ScaleGestureDetector;->reset()V

    goto :goto_0

    .line 211
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ScaleGestureDetector;->mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v14

    .line 212
    .local v14, metrics:Landroid/util/DisplayMetrics;
    iget v0, v14, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ScaleGestureDetector;->mEdgeSlop:F

    move/from16 v28, v0

    sub-float v27, v27, v28

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mRightSlopEdge:F

    .line 213
    iget v0, v14, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ScaleGestureDetector;->mEdgeSlop:F

    move/from16 v28, v0

    sub-float v27, v27, v28

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mBottomSlopEdge:F

    .line 215
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ScaleGestureDetector;->mPrevEvent:Landroid/view/MotionEvent;

    move-object/from16 v27, v0

    if-eqz v27, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ScaleGestureDetector;->mPrevEvent:Landroid/view/MotionEvent;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/view/MotionEvent;->recycle()V

    .line 216
    :cond_5
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/ScaleGestureDetector;->mPrevEvent:Landroid/view/MotionEvent;

    .line 217
    const-wide/16 v27, 0x0

    move-wide/from16 v0, v27

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/view/ScaleGestureDetector;->mTimeDelta:J

    .line 219
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v13

    .line 220
    .local v13, index1:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ScaleGestureDetector;->mActiveId0:I

    move/from16 v27, v0

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v12

    .line 221
    .local v12, index0:I
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mActiveId1:I

    .line 222
    if-ltz v12, :cond_6

    if-ne v12, v13, :cond_7

    .line 224
    :cond_6
    if-ne v12, v13, :cond_a

    const/16 v27, -0x1

    :goto_2
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v27

    invoke-direct {v0, v1, v2, v12}, Landroid/view/ScaleGestureDetector;->findNewActiveIndex(Landroid/view/MotionEvent;II)I

    move-result v12

    .line 225
    if-ltz v12, :cond_7

    .line 226
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mActiveId0:I

    .line 229
    :cond_7
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ScaleGestureDetector;->mActive0MostRecent:Z

    .line 231
    invoke-direct/range {p0 .. p1}, Landroid/view/ScaleGestureDetector;->setContext(Landroid/view/MotionEvent;)V

    .line 237
    move-object/from16 v0, p0

    iget v8, v0, Landroid/view/ScaleGestureDetector;->mEdgeSlop:F

    .line 238
    .local v8, edgeSlop:F
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ScaleGestureDetector;->mRightSlopEdge:F

    move/from16 v21, v0

    .line 239
    .local v21, rightSlop:F
    move-object/from16 v0, p0

    iget v7, v0, Landroid/view/ScaleGestureDetector;->mBottomSlopEdge:F

    .line 240
    .local v7, bottomSlop:F
    move-object/from16 v0, p1

    invoke-static {v0, v12}, Landroid/view/ScaleGestureDetector;->getRawX(Landroid/view/MotionEvent;I)F

    move-result v23

    .line 241
    .local v23, x0:F
    move-object/from16 v0, p1

    invoke-static {v0, v12}, Landroid/view/ScaleGestureDetector;->getRawY(Landroid/view/MotionEvent;I)F

    move-result v25

    .line 242
    .local v25, y0:F
    move-object/from16 v0, p1

    invoke-static {v0, v13}, Landroid/view/ScaleGestureDetector;->getRawX(Landroid/view/MotionEvent;I)F

    move-result v24

    .line 243
    .local v24, x1:F
    move-object/from16 v0, p1

    invoke-static {v0, v13}, Landroid/view/ScaleGestureDetector;->getRawY(Landroid/view/MotionEvent;I)F

    move-result v26

    .line 245
    .local v26, y1:F
    cmpg-float v27, v23, v8

    if-ltz v27, :cond_8

    cmpg-float v27, v25, v8

    if-ltz v27, :cond_8

    cmpl-float v27, v23, v21

    if-gtz v27, :cond_8

    cmpl-float v27, v25, v7

    if-lez v27, :cond_b

    :cond_8
    const/16 v18, 0x1

    .line 247
    .local v18, p0sloppy:Z
    :goto_3
    cmpg-float v27, v24, v8

    if-ltz v27, :cond_9

    cmpg-float v27, v26, v8

    if-ltz v27, :cond_9

    cmpl-float v27, v24, v21

    if-gtz v27, :cond_9

    cmpl-float v27, v26, v7

    if-lez v27, :cond_c

    :cond_9
    const/16 v19, 0x1

    .line 250
    .local v19, p1sloppy:Z
    :goto_4
    if-eqz v18, :cond_d

    if-eqz v19, :cond_d

    .line 251
    const/high16 v27, -0x4080

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mFocusX:F

    .line 252
    const/high16 v27, -0x4080

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mFocusY:F

    .line 253
    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ScaleGestureDetector;->mSloppyGesture:Z

    goto/16 :goto_0

    .line 224
    .end local v7           #bottomSlop:F
    .end local v8           #edgeSlop:F
    .end local v18           #p0sloppy:Z
    .end local v19           #p1sloppy:Z
    .end local v21           #rightSlop:F
    .end local v23           #x0:F
    .end local v24           #x1:F
    .end local v25           #y0:F
    .end local v26           #y1:F
    :cond_a
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ScaleGestureDetector;->mActiveId1:I

    move/from16 v27, v0

    goto/16 :goto_2

    .line 245
    .restart local v7       #bottomSlop:F
    .restart local v8       #edgeSlop:F
    .restart local v21       #rightSlop:F
    .restart local v23       #x0:F
    .restart local v24       #x1:F
    .restart local v25       #y0:F
    .restart local v26       #y1:F
    :cond_b
    const/16 v18, 0x0

    goto :goto_3

    .line 247
    .restart local v18       #p0sloppy:Z
    :cond_c
    const/16 v19, 0x0

    goto :goto_4

    .line 254
    .restart local v19       #p1sloppy:Z
    :cond_d
    if-eqz v18, :cond_e

    .line 255
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/MotionEvent;->getX(I)F

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mFocusX:F

    .line 256
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/MotionEvent;->getY(I)F

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mFocusY:F

    .line 257
    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ScaleGestureDetector;->mSloppyGesture:Z

    goto/16 :goto_0

    .line 258
    :cond_e
    if-eqz v19, :cond_f

    .line 259
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/MotionEvent;->getX(I)F

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mFocusX:F

    .line 260
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/MotionEvent;->getY(I)F

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mFocusY:F

    .line 261
    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ScaleGestureDetector;->mSloppyGesture:Z

    goto/16 :goto_0

    .line 263
    :cond_f
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ScaleGestureDetector;->mSloppyGesture:Z

    .line 264
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ScaleGestureDetector;->mListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Landroid/view/ScaleGestureDetector$OnScaleGestureListener;->onScaleBegin(Landroid/view/ScaleGestureDetector;)Z

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ScaleGestureDetector;->mGestureInProgress:Z

    goto/16 :goto_0

    .line 270
    .end local v7           #bottomSlop:F
    .end local v8           #edgeSlop:F
    .end local v12           #index0:I
    .end local v13           #index1:I
    .end local v14           #metrics:Landroid/util/DisplayMetrics;
    .end local v18           #p0sloppy:Z
    .end local v19           #p1sloppy:Z
    .end local v21           #rightSlop:F
    .end local v23           #x0:F
    .end local v24           #x1:F
    .end local v25           #y0:F
    .end local v26           #y1:F
    :pswitch_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ScaleGestureDetector;->mSloppyGesture:Z

    move/from16 v27, v0

    if-eqz v27, :cond_2

    .line 272
    move-object/from16 v0, p0

    iget v8, v0, Landroid/view/ScaleGestureDetector;->mEdgeSlop:F

    .line 273
    .restart local v8       #edgeSlop:F
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ScaleGestureDetector;->mRightSlopEdge:F

    move/from16 v21, v0

    .line 274
    .restart local v21       #rightSlop:F
    move-object/from16 v0, p0

    iget v7, v0, Landroid/view/ScaleGestureDetector;->mBottomSlopEdge:F

    .line 275
    .restart local v7       #bottomSlop:F
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ScaleGestureDetector;->mActiveId0:I

    move/from16 v27, v0

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v12

    .line 276
    .restart local v12       #index0:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ScaleGestureDetector;->mActiveId1:I

    move/from16 v27, v0

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v13

    .line 278
    .restart local v13       #index1:I
    move-object/from16 v0, p1

    invoke-static {v0, v12}, Landroid/view/ScaleGestureDetector;->getRawX(Landroid/view/MotionEvent;I)F

    move-result v23

    .line 279
    .restart local v23       #x0:F
    move-object/from16 v0, p1

    invoke-static {v0, v12}, Landroid/view/ScaleGestureDetector;->getRawY(Landroid/view/MotionEvent;I)F

    move-result v25

    .line 280
    .restart local v25       #y0:F
    move-object/from16 v0, p1

    invoke-static {v0, v13}, Landroid/view/ScaleGestureDetector;->getRawX(Landroid/view/MotionEvent;I)F

    move-result v24

    .line 281
    .restart local v24       #x1:F
    move-object/from16 v0, p1

    invoke-static {v0, v13}, Landroid/view/ScaleGestureDetector;->getRawY(Landroid/view/MotionEvent;I)F

    move-result v26

    .line 283
    .restart local v26       #y1:F
    cmpg-float v27, v23, v8

    if-ltz v27, :cond_10

    cmpg-float v27, v25, v8

    if-ltz v27, :cond_10

    cmpl-float v27, v23, v21

    if-gtz v27, :cond_10

    cmpl-float v27, v25, v7

    if-lez v27, :cond_14

    :cond_10
    const/16 v18, 0x1

    .line 285
    .restart local v18       #p0sloppy:Z
    :goto_5
    cmpg-float v27, v24, v8

    if-ltz v27, :cond_11

    cmpg-float v27, v26, v8

    if-ltz v27, :cond_11

    cmpl-float v27, v24, v21

    if-gtz v27, :cond_11

    cmpl-float v27, v26, v7

    if-lez v27, :cond_15

    :cond_11
    const/16 v19, 0x1

    .line 288
    .restart local v19       #p1sloppy:Z
    :goto_6
    if-eqz v18, :cond_12

    .line 290
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ScaleGestureDetector;->mActiveId1:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v27

    invoke-direct {v0, v1, v2, v12}, Landroid/view/ScaleGestureDetector;->findNewActiveIndex(Landroid/view/MotionEvent;II)I

    move-result v11

    .line 291
    .local v11, index:I
    if-ltz v11, :cond_12

    .line 292
    move v12, v11

    .line 293
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mActiveId0:I

    .line 294
    move-object/from16 v0, p1

    invoke-static {v0, v11}, Landroid/view/ScaleGestureDetector;->getRawX(Landroid/view/MotionEvent;I)F

    move-result v23

    .line 295
    move-object/from16 v0, p1

    invoke-static {v0, v11}, Landroid/view/ScaleGestureDetector;->getRawY(Landroid/view/MotionEvent;I)F

    move-result v25

    .line 296
    const/16 v18, 0x0

    .line 300
    .end local v11           #index:I
    :cond_12
    if-eqz v19, :cond_13

    .line 302
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ScaleGestureDetector;->mActiveId0:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v27

    invoke-direct {v0, v1, v2, v13}, Landroid/view/ScaleGestureDetector;->findNewActiveIndex(Landroid/view/MotionEvent;II)I

    move-result v11

    .line 303
    .restart local v11       #index:I
    if-ltz v11, :cond_13

    .line 304
    move v13, v11

    .line 305
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mActiveId1:I

    .line 306
    move-object/from16 v0, p1

    invoke-static {v0, v11}, Landroid/view/ScaleGestureDetector;->getRawX(Landroid/view/MotionEvent;I)F

    move-result v24

    .line 307
    move-object/from16 v0, p1

    invoke-static {v0, v11}, Landroid/view/ScaleGestureDetector;->getRawY(Landroid/view/MotionEvent;I)F

    move-result v26

    .line 308
    const/16 v19, 0x0

    .line 312
    .end local v11           #index:I
    :cond_13
    if-eqz v18, :cond_16

    if-eqz v19, :cond_16

    .line 313
    const/high16 v27, -0x4080

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mFocusX:F

    .line 314
    const/high16 v27, -0x4080

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mFocusY:F

    goto/16 :goto_0

    .line 283
    .end local v18           #p0sloppy:Z
    .end local v19           #p1sloppy:Z
    :cond_14
    const/16 v18, 0x0

    goto/16 :goto_5

    .line 285
    .restart local v18       #p0sloppy:Z
    :cond_15
    const/16 v19, 0x0

    goto :goto_6

    .line 315
    .restart local v19       #p1sloppy:Z
    :cond_16
    if-eqz v18, :cond_17

    .line 316
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/MotionEvent;->getX(I)F

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mFocusX:F

    .line 317
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/MotionEvent;->getY(I)F

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mFocusY:F

    goto/16 :goto_0

    .line 318
    :cond_17
    if-eqz v19, :cond_18

    .line 319
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/MotionEvent;->getX(I)F

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mFocusX:F

    .line 320
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/MotionEvent;->getY(I)F

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mFocusY:F

    goto/16 :goto_0

    .line 322
    :cond_18
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ScaleGestureDetector;->mSloppyGesture:Z

    .line 323
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ScaleGestureDetector;->mListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Landroid/view/ScaleGestureDetector$OnScaleGestureListener;->onScaleBegin(Landroid/view/ScaleGestureDetector;)Z

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ScaleGestureDetector;->mGestureInProgress:Z

    goto/16 :goto_0

    .line 329
    .end local v7           #bottomSlop:F
    .end local v8           #edgeSlop:F
    .end local v12           #index0:I
    .end local v13           #index1:I
    .end local v18           #p0sloppy:Z
    .end local v19           #p1sloppy:Z
    .end local v21           #rightSlop:F
    .end local v23           #x0:F
    .end local v24           #x1:F
    .end local v25           #y0:F
    .end local v26           #y1:F
    :pswitch_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ScaleGestureDetector;->mSloppyGesture:Z

    move/from16 v27, v0

    if-eqz v27, :cond_2

    .line 330
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v20

    .line 331
    .local v20, pointerCount:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v5

    .line 332
    .local v5, actionIndex:I
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    .line 334
    .local v4, actionId:I
    const/16 v27, 0x2

    move/from16 v0, v20

    move/from16 v1, v27

    if-le v0, v1, :cond_1a

    .line 335
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ScaleGestureDetector;->mActiveId0:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-ne v4, v0, :cond_19

    .line 336
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ScaleGestureDetector;->mActiveId1:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v27

    invoke-direct {v0, v1, v2, v5}, Landroid/view/ScaleGestureDetector;->findNewActiveIndex(Landroid/view/MotionEvent;II)I

    move-result v15

    .line 337
    .local v15, newIndex:I
    if-ltz v15, :cond_2

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mActiveId0:I

    goto/16 :goto_0

    .line 338
    .end local v15           #newIndex:I
    :cond_19
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ScaleGestureDetector;->mActiveId1:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-ne v4, v0, :cond_2

    .line 339
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ScaleGestureDetector;->mActiveId0:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v27

    invoke-direct {v0, v1, v2, v5}, Landroid/view/ScaleGestureDetector;->findNewActiveIndex(Landroid/view/MotionEvent;II)I

    move-result v15

    .line 340
    .restart local v15       #newIndex:I
    if-ltz v15, :cond_2

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mActiveId1:I

    goto/16 :goto_0

    .line 344
    .end local v15           #newIndex:I
    :cond_1a
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ScaleGestureDetector;->mActiveId0:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-ne v4, v0, :cond_1c

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ScaleGestureDetector;->mActiveId1:I

    move/from16 v27, v0

    :goto_7
    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v11

    .line 346
    .restart local v11       #index:I
    if-gez v11, :cond_1d

    .line 347
    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ScaleGestureDetector;->mInvalidGesture:Z

    .line 348
    const-string v27, "ScaleGestureDetector"

    const-string v28, "Invalid MotionEvent stream detected."

    new-instance v29, Ljava/lang/Throwable;

    invoke-direct/range {v29 .. v29}, Ljava/lang/Throwable;-><init>()V

    invoke-static/range {v27 .. v29}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 349
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ScaleGestureDetector;->mGestureInProgress:Z

    move/from16 v27, v0

    if-eqz v27, :cond_1b

    .line 350
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ScaleGestureDetector;->mListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Landroid/view/ScaleGestureDetector$OnScaleGestureListener;->onScaleEnd(Landroid/view/ScaleGestureDetector;)V

    .line 352
    :cond_1b
    const/16 v27, 0x0

    goto/16 :goto_1

    .line 344
    .end local v11           #index:I
    :cond_1c
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ScaleGestureDetector;->mActiveId0:I

    move/from16 v27, v0

    goto :goto_7

    .line 355
    .restart local v11       #index:I
    :cond_1d
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mActiveId0:I

    .line 357
    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ScaleGestureDetector;->mActive0MostRecent:Z

    .line 358
    const/16 v27, -0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mActiveId1:I

    .line 359
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/view/MotionEvent;->getX(I)F

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mFocusX:F

    .line 360
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/view/MotionEvent;->getY(I)F

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mFocusY:F

    goto/16 :goto_0

    .line 367
    .end local v4           #actionId:I
    .end local v5           #actionIndex:I
    .end local v11           #index:I
    .end local v20           #pointerCount:I
    :cond_1e
    packed-switch v3, :pswitch_data_1

    :pswitch_6
    goto/16 :goto_0

    .line 463
    :pswitch_7
    invoke-direct/range {p0 .. p0}, Landroid/view/ScaleGestureDetector;->reset()V

    goto/16 :goto_0

    .line 370
    :pswitch_8
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ScaleGestureDetector;->mListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Landroid/view/ScaleGestureDetector$OnScaleGestureListener;->onScaleEnd(Landroid/view/ScaleGestureDetector;)V

    .line 371
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ScaleGestureDetector;->mActiveId0:I

    move/from16 v16, v0

    .line 372
    .local v16, oldActive0:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ScaleGestureDetector;->mActiveId1:I

    move/from16 v17, v0

    .line 373
    .local v17, oldActive1:I
    invoke-direct/range {p0 .. p0}, Landroid/view/ScaleGestureDetector;->reset()V

    .line 375
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/ScaleGestureDetector;->mPrevEvent:Landroid/view/MotionEvent;

    .line 376
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ScaleGestureDetector;->mActive0MostRecent:Z

    move/from16 v27, v0

    if-eqz v27, :cond_21

    .end local v16           #oldActive0:I
    :goto_8
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mActiveId0:I

    .line 377
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v27

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mActiveId1:I

    .line 378
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ScaleGestureDetector;->mActive0MostRecent:Z

    .line 380
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ScaleGestureDetector;->mActiveId0:I

    move/from16 v27, v0

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v12

    .line 381
    .restart local v12       #index0:I
    if-ltz v12, :cond_1f

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ScaleGestureDetector;->mActiveId0:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ScaleGestureDetector;->mActiveId1:I

    move/from16 v28, v0

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_20

    .line 383
    :cond_1f
    const-string v27, "ScaleGestureDetector"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Got "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-static {v3}, Landroid/view/MotionEvent;->actionToString(I)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " with bad state while a gesture was in progress. "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "Did you forget to pass an event to "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "ScaleGestureDetector#onTouchEvent?"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ScaleGestureDetector;->mActiveId0:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ScaleGestureDetector;->mActiveId1:I

    move/from16 v28, v0

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_22

    const/16 v27, -0x1

    :goto_9
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v27

    invoke-direct {v0, v1, v2, v12}, Landroid/view/ScaleGestureDetector;->findNewActiveIndex(Landroid/view/MotionEvent;II)I

    move-result v12

    .line 389
    if-ltz v12, :cond_20

    .line 390
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mActiveId0:I

    .line 394
    :cond_20
    invoke-direct/range {p0 .. p1}, Landroid/view/ScaleGestureDetector;->setContext(Landroid/view/MotionEvent;)V

    .line 396
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ScaleGestureDetector;->mListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Landroid/view/ScaleGestureDetector$OnScaleGestureListener;->onScaleBegin(Landroid/view/ScaleGestureDetector;)Z

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ScaleGestureDetector;->mGestureInProgress:Z

    goto/16 :goto_0

    .end local v12           #index0:I
    .restart local v16       #oldActive0:I
    :cond_21
    move/from16 v16, v17

    .line 376
    goto/16 :goto_8

    .line 387
    .end local v16           #oldActive0:I
    .restart local v12       #index0:I
    :cond_22
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ScaleGestureDetector;->mActiveId1:I

    move/from16 v27, v0

    goto :goto_9

    .line 401
    .end local v12           #index0:I
    .end local v17           #oldActive1:I
    :pswitch_9
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v20

    .line 402
    .restart local v20       #pointerCount:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v5

    .line 403
    .restart local v5       #actionIndex:I
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    .line 405
    .restart local v4       #actionId:I
    const/4 v9, 0x0

    .line 406
    .local v9, gestureEnded:Z
    const/16 v27, 0x2

    move/from16 v0, v20

    move/from16 v1, v27

    if-le v0, v1, :cond_27

    .line 407
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ScaleGestureDetector;->mActiveId0:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-ne v4, v0, :cond_25

    .line 408
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ScaleGestureDetector;->mActiveId1:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v27

    invoke-direct {v0, v1, v2, v5}, Landroid/view/ScaleGestureDetector;->findNewActiveIndex(Landroid/view/MotionEvent;II)I

    move-result v15

    .line 409
    .restart local v15       #newIndex:I
    if-ltz v15, :cond_24

    .line 410
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ScaleGestureDetector;->mListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Landroid/view/ScaleGestureDetector$OnScaleGestureListener;->onScaleEnd(Landroid/view/ScaleGestureDetector;)V

    .line 411
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mActiveId0:I

    .line 412
    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ScaleGestureDetector;->mActive0MostRecent:Z

    .line 413
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/ScaleGestureDetector;->mPrevEvent:Landroid/view/MotionEvent;

    .line 414
    invoke-direct/range {p0 .. p1}, Landroid/view/ScaleGestureDetector;->setContext(Landroid/view/MotionEvent;)V

    .line 415
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ScaleGestureDetector;->mListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Landroid/view/ScaleGestureDetector$OnScaleGestureListener;->onScaleBegin(Landroid/view/ScaleGestureDetector;)Z

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ScaleGestureDetector;->mGestureInProgress:Z

    .line 432
    .end local v15           #newIndex:I
    :cond_23
    :goto_a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ScaleGestureDetector;->mPrevEvent:Landroid/view/MotionEvent;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/view/MotionEvent;->recycle()V

    .line 433
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/ScaleGestureDetector;->mPrevEvent:Landroid/view/MotionEvent;

    .line 434
    invoke-direct/range {p0 .. p1}, Landroid/view/ScaleGestureDetector;->setContext(Landroid/view/MotionEvent;)V

    .line 439
    :goto_b
    if-eqz v9, :cond_2

    .line 441
    invoke-direct/range {p0 .. p1}, Landroid/view/ScaleGestureDetector;->setContext(Landroid/view/MotionEvent;)V

    .line 444
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ScaleGestureDetector;->mActiveId0:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-ne v4, v0, :cond_28

    move-object/from16 v0, p0

    iget v6, v0, Landroid/view/ScaleGestureDetector;->mActiveId1:I

    .line 445
    .local v6, activeId:I
    :goto_c
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v11

    .line 446
    .restart local v11       #index:I
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/view/MotionEvent;->getX(I)F

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mFocusX:F

    .line 447
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/view/MotionEvent;->getY(I)F

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mFocusY:F

    .line 449
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ScaleGestureDetector;->mListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Landroid/view/ScaleGestureDetector$OnScaleGestureListener;->onScaleEnd(Landroid/view/ScaleGestureDetector;)V

    .line 450
    invoke-direct/range {p0 .. p0}, Landroid/view/ScaleGestureDetector;->reset()V

    .line 451
    move-object/from16 v0, p0

    iput v6, v0, Landroid/view/ScaleGestureDetector;->mActiveId0:I

    .line 452
    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ScaleGestureDetector;->mActive0MostRecent:Z

    goto/16 :goto_0

    .line 417
    .end local v6           #activeId:I
    .end local v11           #index:I
    .restart local v15       #newIndex:I
    :cond_24
    const/4 v9, 0x1

    goto :goto_a

    .line 419
    .end local v15           #newIndex:I
    :cond_25
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ScaleGestureDetector;->mActiveId1:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-ne v4, v0, :cond_23

    .line 420
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ScaleGestureDetector;->mActiveId0:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v27

    invoke-direct {v0, v1, v2, v5}, Landroid/view/ScaleGestureDetector;->findNewActiveIndex(Landroid/view/MotionEvent;II)I

    move-result v15

    .line 421
    .restart local v15       #newIndex:I
    if-ltz v15, :cond_26

    .line 422
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ScaleGestureDetector;->mListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Landroid/view/ScaleGestureDetector$OnScaleGestureListener;->onScaleEnd(Landroid/view/ScaleGestureDetector;)V

    .line 423
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mActiveId1:I

    .line 424
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ScaleGestureDetector;->mActive0MostRecent:Z

    .line 425
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/ScaleGestureDetector;->mPrevEvent:Landroid/view/MotionEvent;

    .line 426
    invoke-direct/range {p0 .. p1}, Landroid/view/ScaleGestureDetector;->setContext(Landroid/view/MotionEvent;)V

    .line 427
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ScaleGestureDetector;->mListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Landroid/view/ScaleGestureDetector$OnScaleGestureListener;->onScaleBegin(Landroid/view/ScaleGestureDetector;)Z

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ScaleGestureDetector;->mGestureInProgress:Z

    goto/16 :goto_a

    .line 429
    :cond_26
    const/4 v9, 0x1

    goto/16 :goto_a

    .line 436
    .end local v15           #newIndex:I
    :cond_27
    const/4 v9, 0x1

    goto/16 :goto_b

    .line 444
    :cond_28
    move-object/from16 v0, p0

    iget v6, v0, Landroid/view/ScaleGestureDetector;->mActiveId0:I

    goto/16 :goto_c

    .line 458
    .end local v4           #actionId:I
    .end local v5           #actionIndex:I
    .end local v9           #gestureEnded:Z
    .end local v20           #pointerCount:I
    :pswitch_a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ScaleGestureDetector;->mListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Landroid/view/ScaleGestureDetector$OnScaleGestureListener;->onScaleEnd(Landroid/view/ScaleGestureDetector;)V

    .line 459
    invoke-direct/range {p0 .. p0}, Landroid/view/ScaleGestureDetector;->reset()V

    goto/16 :goto_0

    .line 467
    :pswitch_b
    invoke-direct/range {p0 .. p1}, Landroid/view/ScaleGestureDetector;->setContext(Landroid/view/MotionEvent;)V

    .line 472
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ScaleGestureDetector;->mCurrPressure:F

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ScaleGestureDetector;->mPrevPressure:F

    move/from16 v28, v0

    div-float v27, v27, v28

    const v28, 0x3f2b851f

    cmpl-float v27, v27, v28

    if-lez v27, :cond_2

    .line 473
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ScaleGestureDetector;->mListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Landroid/view/ScaleGestureDetector$OnScaleGestureListener;->onScale(Landroid/view/ScaleGestureDetector;)Z

    move-result v22

    .line 475
    .local v22, updatePrevious:Z
    if-eqz v22, :cond_2

    .line 476
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ScaleGestureDetector;->mPrevEvent:Landroid/view/MotionEvent;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/view/MotionEvent;->recycle()V

    .line 477
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/ScaleGestureDetector;->mPrevEvent:Landroid/view/MotionEvent;

    goto/16 :goto_0

    .line 196
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_5
    .end packed-switch

    .line 367
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_7
        :pswitch_b
        :pswitch_a
        :pswitch_6
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method private static adjustIndex(II)I
    .locals 0
    .parameter "index0"
    .parameter "index1"
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .prologue
    if-gez p0, :cond_0

    if-nez p1, :cond_1

    const/4 p0, 0x1

    :cond_0
    :goto_0
    return p0

    :cond_1
    const/4 p0, 0x0

    goto :goto_0
.end method

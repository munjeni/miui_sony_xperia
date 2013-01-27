.class Landroid/webkit/WebView$TouchEventQueue;
.super Ljava/lang/Object;
.source "WebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TouchEventQueue"
.end annotation


# static fields
.field private static final MAX_RECYCLED_QUEUED_TOUCH:I = 0xf

.field private static final QUEUED_GESTURE_TIMEOUT:I = 0x3e8


# instance fields
.field private mIgnoreUntilSequence:J

.field private mLastEventTime:J

.field private mLastHandledTouchSequence:J

.field private mNextTouchSequence:J

.field private mPreQueue:Landroid/webkit/WebView$QueuedTouch;

.field private mQueuedTouchRecycleBin:Landroid/webkit/WebView$QueuedTouch;

.field private mQueuedTouchRecycleCount:I

.field private mTouchEventQueue:Landroid/webkit/WebView$QueuedTouch;

.field final synthetic this$0:Landroid/webkit/WebView;


# direct methods
.method private constructor <init>(Landroid/webkit/WebView;)V
    .locals 4
    .parameter

    .prologue
    const-wide v2, -0x7fffffffffffffffL

    .line 7902
    iput-object p1, p0, Landroid/webkit/WebView$TouchEventQueue;->this$0:Landroid/webkit/WebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7903
    iput-wide v2, p0, Landroid/webkit/WebView$TouchEventQueue;->mNextTouchSequence:J

    .line 7904
    const-wide/high16 v0, -0x8000

    iput-wide v0, p0, Landroid/webkit/WebView$TouchEventQueue;->mLastHandledTouchSequence:J

    .line 7905
    iput-wide v2, p0, Landroid/webkit/WebView$TouchEventQueue;->mIgnoreUntilSequence:J

    .line 7917
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Landroid/webkit/WebView$TouchEventQueue;->mLastEventTime:J

    return-void
.end method

.method synthetic constructor <init>(Landroid/webkit/WebView;Landroid/webkit/WebView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 7902
    invoke-direct {p0, p1}, Landroid/webkit/WebView$TouchEventQueue;-><init>(Landroid/webkit/WebView;)V

    return-void
.end method

.method private dropStaleGestures(Landroid/view/MotionEvent;J)Z
    .locals 12
    .parameter "ev"
    .parameter "sequence"

    .prologue
    .line 8141
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_0

    iget-object v8, p0, Landroid/webkit/WebView$TouchEventQueue;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mConfirmMove:Z
    invoke-static {v8}, Landroid/webkit/WebView;->access$2000(Landroid/webkit/WebView;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 8146
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    iget-object v9, p0, Landroid/webkit/WebView$TouchEventQueue;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mLastTouchX:I
    invoke-static {v9}, Landroid/webkit/WebView;->access$2100(Landroid/webkit/WebView;)I

    move-result v9

    sub-int v0, v8, v9

    .line 8147
    .local v0, dx:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    iget-object v9, p0, Landroid/webkit/WebView$TouchEventQueue;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mLastTouchY:I
    invoke-static {v9}, Landroid/webkit/WebView;->access$2200(Landroid/webkit/WebView;)I

    move-result v9

    sub-int v1, v8, v9

    .line 8148
    .local v1, dy:I
    mul-int v8, v0, v0

    mul-int v9, v1, v1

    add-int/2addr v8, v9

    iget-object v9, p0, Landroid/webkit/WebView$TouchEventQueue;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mTouchSlopSquare:I
    invoke-static {v9}, Landroid/webkit/WebView;->access$2300(Landroid/webkit/WebView;)I

    move-result v9

    if-le v8, v9, :cond_0

    .line 8149
    iget-object v8, p0, Landroid/webkit/WebView$TouchEventQueue;->this$0:Landroid/webkit/WebView;

    iget-object v8, v8, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/4 v9, 0x3

    invoke-virtual {v8, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 8150
    iget-object v8, p0, Landroid/webkit/WebView$TouchEventQueue;->this$0:Landroid/webkit/WebView;

    iget-object v8, v8, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 8154
    .end local v0           #dx:I
    .end local v1           #dy:I
    :cond_0
    iget-object v8, p0, Landroid/webkit/WebView$TouchEventQueue;->mTouchEventQueue:Landroid/webkit/WebView$QueuedTouch;

    if-nez v8, :cond_2

    .line 8155
    iget-wide v8, p0, Landroid/webkit/WebView$TouchEventQueue;->mLastHandledTouchSequence:J

    cmp-long v8, p2, v8

    if-gtz v8, :cond_1

    const/4 v8, 0x1

    .line 8202
    :goto_0
    return v8

    .line 8155
    :cond_1
    const/4 v8, 0x0

    goto :goto_0

    .line 8160
    :cond_2
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    if-nez v8, :cond_4

    .line 8161
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    .line 8162
    .local v2, eventTime:J
    iget-wide v4, p0, Landroid/webkit/WebView$TouchEventQueue;->mLastEventTime:J

    .line 8163
    .local v4, lastHandledEventTime:J
    const-wide/16 v8, 0x3e8

    add-long/2addr v8, v4

    cmp-long v8, v2, v8

    if-lez v8, :cond_4

    .line 8164
    const-string/jumbo v8, "webview"

    const-string v9, "Got ACTION_DOWN but still waiting on stale event. Catching up."

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8166
    invoke-direct {p0}, Landroid/webkit/WebView$TouchEventQueue;->runQueuedAndPreQueuedEvents()V

    .line 8169
    iget-object v6, p0, Landroid/webkit/WebView$TouchEventQueue;->mTouchEventQueue:Landroid/webkit/WebView$QueuedTouch;

    .line 8170
    .local v6, qd:Landroid/webkit/WebView$QueuedTouch;
    :goto_1
    if-eqz v6, :cond_3

    iget-wide v8, v6, Landroid/webkit/WebView$QueuedTouch;->mSequence:J

    cmp-long v8, v8, p2

    if-gez v8, :cond_3

    .line 8171
    move-object v7, v6

    .line 8172
    .local v7, recycleMe:Landroid/webkit/WebView$QueuedTouch;
    iget-object v6, v6, Landroid/webkit/WebView$QueuedTouch;->mNext:Landroid/webkit/WebView$QueuedTouch;

    .line 8173
    invoke-direct {p0, v7}, Landroid/webkit/WebView$TouchEventQueue;->recycleQueuedTouch(Landroid/webkit/WebView$QueuedTouch;)V

    goto :goto_1

    .line 8175
    .end local v7           #recycleMe:Landroid/webkit/WebView$QueuedTouch;
    :cond_3
    iput-object v6, p0, Landroid/webkit/WebView$TouchEventQueue;->mTouchEventQueue:Landroid/webkit/WebView$QueuedTouch;

    .line 8176
    const-wide/16 v8, 0x1

    sub-long v8, p2, v8

    iput-wide v8, p0, Landroid/webkit/WebView$TouchEventQueue;->mLastHandledTouchSequence:J

    .line 8180
    .end local v2           #eventTime:J
    .end local v4           #lastHandledEventTime:J
    .end local v6           #qd:Landroid/webkit/WebView$QueuedTouch;
    :cond_4
    iget-wide v8, p0, Landroid/webkit/WebView$TouchEventQueue;->mIgnoreUntilSequence:J

    const-wide/16 v10, 0x1

    sub-long/2addr v8, v10

    iget-wide v10, p0, Landroid/webkit/WebView$TouchEventQueue;->mLastHandledTouchSequence:J

    cmp-long v8, v8, v10

    if-lez v8, :cond_6

    .line 8181
    iget-object v6, p0, Landroid/webkit/WebView$TouchEventQueue;->mTouchEventQueue:Landroid/webkit/WebView$QueuedTouch;

    .line 8182
    .restart local v6       #qd:Landroid/webkit/WebView$QueuedTouch;
    :goto_2
    if-eqz v6, :cond_5

    iget-wide v8, v6, Landroid/webkit/WebView$QueuedTouch;->mSequence:J

    iget-wide v10, p0, Landroid/webkit/WebView$TouchEventQueue;->mIgnoreUntilSequence:J

    cmp-long v8, v8, v10

    if-gez v8, :cond_5

    .line 8183
    move-object v7, v6

    .line 8184
    .restart local v7       #recycleMe:Landroid/webkit/WebView$QueuedTouch;
    iget-object v6, v6, Landroid/webkit/WebView$QueuedTouch;->mNext:Landroid/webkit/WebView$QueuedTouch;

    .line 8185
    invoke-direct {p0, v7}, Landroid/webkit/WebView$TouchEventQueue;->recycleQueuedTouch(Landroid/webkit/WebView$QueuedTouch;)V

    goto :goto_2

    .line 8187
    .end local v7           #recycleMe:Landroid/webkit/WebView$QueuedTouch;
    :cond_5
    iput-object v6, p0, Landroid/webkit/WebView$TouchEventQueue;->mTouchEventQueue:Landroid/webkit/WebView$QueuedTouch;

    .line 8188
    iget-wide v8, p0, Landroid/webkit/WebView$TouchEventQueue;->mIgnoreUntilSequence:J

    const-wide/16 v10, 0x1

    sub-long/2addr v8, v10

    iput-wide v8, p0, Landroid/webkit/WebView$TouchEventQueue;->mLastHandledTouchSequence:J

    .line 8191
    .end local v6           #qd:Landroid/webkit/WebView$QueuedTouch;
    :cond_6
    iget-object v8, p0, Landroid/webkit/WebView$TouchEventQueue;->mPreQueue:Landroid/webkit/WebView$QueuedTouch;

    if-eqz v8, :cond_8

    .line 8193
    iget-object v6, p0, Landroid/webkit/WebView$TouchEventQueue;->mPreQueue:Landroid/webkit/WebView$QueuedTouch;

    .line 8194
    .restart local v6       #qd:Landroid/webkit/WebView$QueuedTouch;
    :goto_3
    if-eqz v6, :cond_7

    iget-wide v8, v6, Landroid/webkit/WebView$QueuedTouch;->mSequence:J

    iget-wide v10, p0, Landroid/webkit/WebView$TouchEventQueue;->mIgnoreUntilSequence:J

    cmp-long v8, v8, v10

    if-gez v8, :cond_7

    .line 8195
    move-object v7, v6

    .line 8196
    .restart local v7       #recycleMe:Landroid/webkit/WebView$QueuedTouch;
    iget-object v6, v6, Landroid/webkit/WebView$QueuedTouch;->mNext:Landroid/webkit/WebView$QueuedTouch;

    .line 8197
    invoke-direct {p0, v7}, Landroid/webkit/WebView$TouchEventQueue;->recycleQueuedTouch(Landroid/webkit/WebView$QueuedTouch;)V

    goto :goto_3

    .line 8199
    .end local v7           #recycleMe:Landroid/webkit/WebView$QueuedTouch;
    :cond_7
    iput-object v6, p0, Landroid/webkit/WebView$TouchEventQueue;->mPreQueue:Landroid/webkit/WebView$QueuedTouch;

    .line 8202
    .end local v6           #qd:Landroid/webkit/WebView$QueuedTouch;
    :cond_8
    iget-wide v8, p0, Landroid/webkit/WebView$TouchEventQueue;->mLastHandledTouchSequence:J

    cmp-long v8, p2, v8

    if-gtz v8, :cond_9

    const/4 v8, 0x1

    goto/16 :goto_0

    :cond_9
    const/4 v8, 0x0

    goto/16 :goto_0
.end method

.method private handleQueuedMotionEvent(Landroid/view/MotionEvent;)V
    .locals 5
    .parameter "ev"

    .prologue
    .line 8215
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/webkit/WebView$TouchEventQueue;->mLastEventTime:J

    .line 8216
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 8217
    .local v0, action:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_0

    .line 8218
    iget-object v2, p0, Landroid/webkit/WebView$TouchEventQueue;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v2, p1}, Landroid/webkit/WebView;->handleMultiTouchInWebView(Landroid/view/MotionEvent;)V

    .line 8230
    :goto_0
    return-void

    .line 8220
    :cond_0
    iget-object v2, p0, Landroid/webkit/WebView$TouchEventQueue;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;
    invoke-static {v2}, Landroid/webkit/WebView;->access$2400(Landroid/webkit/WebView;)Landroid/webkit/ZoomManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/ZoomManager;->getMultiTouchGestureDetector()Landroid/view/ScaleGestureDetector;

    move-result-object v1

    .line 8221
    .local v1, detector:Landroid/view/ScaleGestureDetector;
    if-eqz v1, :cond_1

    iget-object v2, p0, Landroid/webkit/WebView$TouchEventQueue;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mPreventDefault:I
    invoke-static {v2}, Landroid/webkit/WebView;->access$2500(Landroid/webkit/WebView;)I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_1

    .line 8225
    invoke-virtual {v1, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 8228
    :cond_1
    iget-object v2, p0, Landroid/webkit/WebView$TouchEventQueue;->this$0:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    #calls: Landroid/webkit/WebView;->handleTouchEventCommon(Landroid/view/MotionEvent;III)Z
    invoke-static {v2, p1, v0, v3, v4}, Landroid/webkit/WebView;->access$2600(Landroid/webkit/WebView;Landroid/view/MotionEvent;III)Z

    goto :goto_0
.end method

.method private handleQueuedTouch(Landroid/webkit/WebView$QueuedTouch;)V
    .locals 1
    .parameter "qt"

    .prologue
    .line 8206
    iget-object v0, p1, Landroid/webkit/WebView$QueuedTouch;->mTed:Landroid/webkit/WebViewCore$TouchEventData;

    if-eqz v0, :cond_0

    .line 8207
    iget-object v0, p1, Landroid/webkit/WebView$QueuedTouch;->mTed:Landroid/webkit/WebViewCore$TouchEventData;

    invoke-direct {p0, v0}, Landroid/webkit/WebView$TouchEventQueue;->handleQueuedTouchEventData(Landroid/webkit/WebViewCore$TouchEventData;)V

    .line 8212
    :goto_0
    return-void

    .line 8209
    :cond_0
    iget-object v0, p1, Landroid/webkit/WebView$QueuedTouch;->mEvent:Landroid/view/MotionEvent;

    invoke-direct {p0, v0}, Landroid/webkit/WebView$TouchEventQueue;->handleQueuedMotionEvent(Landroid/view/MotionEvent;)V

    .line 8210
    iget-object v0, p1, Landroid/webkit/WebView$QueuedTouch;->mEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    goto :goto_0
.end method

.method private handleQueuedTouchEventData(Landroid/webkit/WebViewCore$TouchEventData;)V
    .locals 14
    .parameter "ted"

    .prologue
    const/4 v13, 0x7

    const/4 v0, 0x2

    const/4 v6, 0x1

    const/4 v1, 0x3

    const/4 v3, 0x0

    .line 8233
    iget-object v2, p1, Landroid/webkit/WebViewCore$TouchEventData;->mMotionEvent:Landroid/view/MotionEvent;

    if-eqz v2, :cond_0

    .line 8234
    iget-object v2, p1, Landroid/webkit/WebViewCore$TouchEventData;->mMotionEvent:Landroid/view/MotionEvent;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    iput-wide v4, p0, Landroid/webkit/WebView$TouchEventQueue;->mLastEventTime:J

    .line 8236
    :cond_0
    iget-boolean v2, p1, Landroid/webkit/WebViewCore$TouchEventData;->mReprocess:Z

    if-nez v2, :cond_6

    .line 8237
    iget v2, p1, Landroid/webkit/WebViewCore$TouchEventData;->mAction:I

    if-nez v2, :cond_4

    iget-object v2, p0, Landroid/webkit/WebView$TouchEventQueue;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mPreventDefault:I
    invoke-static {v2}, Landroid/webkit/WebView;->access$2500(Landroid/webkit/WebView;)I

    move-result v2

    if-ne v2, v6, :cond_4

    .line 8242
    iget-object v2, p0, Landroid/webkit/WebView$TouchEventQueue;->this$0:Landroid/webkit/WebView;

    iget-boolean v3, p1, Landroid/webkit/WebViewCore$TouchEventData;->mNativeResult:Z

    if-eqz v3, :cond_1

    move v0, v1

    :cond_1
    #setter for: Landroid/webkit/WebView;->mPreventDefault:I
    invoke-static {v2, v0}, Landroid/webkit/WebView;->access$2502(Landroid/webkit/WebView;I)I

    .line 8252
    :cond_2
    :goto_0
    iget-object v0, p0, Landroid/webkit/WebView$TouchEventQueue;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mPreventDefault:I
    invoke-static {v0}, Landroid/webkit/WebView;->access$2500(Landroid/webkit/WebView;)I

    move-result v0

    if-ne v0, v1, :cond_3

    .line 8253
    iget-object v0, p0, Landroid/webkit/WebView$TouchEventQueue;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mTouchHighlightRegion:Landroid/graphics/Region;
    invoke-static {v0}, Landroid/webkit/WebView;->access$2700(Landroid/webkit/WebView;)Landroid/graphics/Region;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Region;->setEmpty()V

    .line 8332
    :cond_3
    :goto_1
    return-void

    .line 8244
    :cond_4
    iget v2, p1, Landroid/webkit/WebViewCore$TouchEventData;->mAction:I

    if-ne v2, v0, :cond_2

    iget-object v2, p0, Landroid/webkit/WebView$TouchEventQueue;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mPreventDefault:I
    invoke-static {v2}, Landroid/webkit/WebView;->access$2500(Landroid/webkit/WebView;)I

    move-result v2

    if-ne v2, v0, :cond_2

    .line 8249
    iget-object v0, p0, Landroid/webkit/WebView$TouchEventQueue;->this$0:Landroid/webkit/WebView;

    iget-boolean v2, p1, Landroid/webkit/WebViewCore$TouchEventData;->mNativeResult:Z

    if-eqz v2, :cond_5

    move v3, v1

    :cond_5
    #setter for: Landroid/webkit/WebView;->mPreventDefault:I
    invoke-static {v0, v3}, Landroid/webkit/WebView;->access$2502(Landroid/webkit/WebView;I)I

    goto :goto_0

    .line 8256
    :cond_6
    iget-object v0, p1, Landroid/webkit/WebViewCore$TouchEventData;->mPoints:[Landroid/graphics/Point;

    array-length v0, v0

    if-le v0, v6, :cond_8

    .line 8257
    iget-boolean v0, p1, Landroid/webkit/WebViewCore$TouchEventData;->mNativeResult:Z

    if-nez v0, :cond_7

    iget-object v0, p0, Landroid/webkit/WebView$TouchEventQueue;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mPreventDefault:I
    invoke-static {v0}, Landroid/webkit/WebView;->access$2500(Landroid/webkit/WebView;)I

    move-result v0

    if-eq v0, v1, :cond_7

    .line 8258
    iget-object v0, p0, Landroid/webkit/WebView$TouchEventQueue;->this$0:Landroid/webkit/WebView;

    #setter for: Landroid/webkit/WebView;->mPreventDefault:I
    invoke-static {v0, v3}, Landroid/webkit/WebView;->access$2502(Landroid/webkit/WebView;I)I

    .line 8259
    iget-object v0, p0, Landroid/webkit/WebView$TouchEventQueue;->this$0:Landroid/webkit/WebView;

    iget-object v1, p1, Landroid/webkit/WebViewCore$TouchEventData;->mMotionEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->handleMultiTouchInWebView(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 8261
    :cond_7
    iget-object v0, p0, Landroid/webkit/WebView$TouchEventQueue;->this$0:Landroid/webkit/WebView;

    #setter for: Landroid/webkit/WebView;->mPreventDefault:I
    invoke-static {v0, v1}, Landroid/webkit/WebView;->access$2502(Landroid/webkit/WebView;I)I

    goto :goto_1

    .line 8268
    :cond_8
    iget-boolean v0, p1, Landroid/webkit/WebViewCore$TouchEventData;->mNativeResult:Z

    if-nez v0, :cond_3

    .line 8270
    iget v0, p1, Landroid/webkit/WebViewCore$TouchEventData;->mAction:I

    sparse-switch v0, :sswitch_data_0

    goto :goto_1

    .line 8272
    :sswitch_0
    iget-object v0, p0, Landroid/webkit/WebView$TouchEventQueue;->this$0:Landroid/webkit/WebView;

    iget-object v1, p1, Landroid/webkit/WebViewCore$TouchEventData;->mPointsInView:[Landroid/graphics/Point;

    aget-object v1, v1, v3

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    #setter for: Landroid/webkit/WebView;->mLastDeferTouchX:F
    invoke-static {v0, v1}, Landroid/webkit/WebView;->access$2802(Landroid/webkit/WebView;F)F

    .line 8273
    iget-object v0, p0, Landroid/webkit/WebView$TouchEventQueue;->this$0:Landroid/webkit/WebView;

    iget-object v1, p1, Landroid/webkit/WebViewCore$TouchEventData;->mPointsInView:[Landroid/graphics/Point;

    aget-object v1, v1, v3

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    #setter for: Landroid/webkit/WebView;->mLastDeferTouchY:F
    invoke-static {v0, v1}, Landroid/webkit/WebView;->access$2902(Landroid/webkit/WebView;F)F

    .line 8274
    iget-object v0, p0, Landroid/webkit/WebView$TouchEventQueue;->this$0:Landroid/webkit/WebView;

    #setter for: Landroid/webkit/WebView;->mDeferTouchMode:I
    invoke-static {v0, v6}, Landroid/webkit/WebView;->access$3002(Landroid/webkit/WebView;I)I

    goto :goto_1

    .line 8278
    :sswitch_1
    iget-object v0, p1, Landroid/webkit/WebViewCore$TouchEventData;->mPointsInView:[Landroid/graphics/Point;

    aget-object v0, v0, v3

    iget v11, v0, Landroid/graphics/Point;->x:I

    .line 8279
    .local v11, x:I
    iget-object v0, p1, Landroid/webkit/WebViewCore$TouchEventData;->mPointsInView:[Landroid/graphics/Point;

    aget-object v0, v0, v3

    iget v12, v0, Landroid/graphics/Point;->y:I

    .line 8281
    .local v12, y:I
    iget-object v0, p0, Landroid/webkit/WebView$TouchEventQueue;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mDeferTouchMode:I
    invoke-static {v0}, Landroid/webkit/WebView;->access$3000(Landroid/webkit/WebView;)I

    move-result v0

    if-eq v0, v1, :cond_9

    .line 8282
    iget-object v0, p0, Landroid/webkit/WebView$TouchEventQueue;->this$0:Landroid/webkit/WebView;

    #setter for: Landroid/webkit/WebView;->mDeferTouchMode:I
    invoke-static {v0, v1}, Landroid/webkit/WebView;->access$3002(Landroid/webkit/WebView;I)I

    .line 8283
    iget-object v0, p0, Landroid/webkit/WebView$TouchEventQueue;->this$0:Landroid/webkit/WebView;

    int-to-float v1, v11

    #setter for: Landroid/webkit/WebView;->mLastDeferTouchX:F
    invoke-static {v0, v1}, Landroid/webkit/WebView;->access$2802(Landroid/webkit/WebView;F)F

    .line 8284
    iget-object v0, p0, Landroid/webkit/WebView$TouchEventQueue;->this$0:Landroid/webkit/WebView;

    int-to-float v1, v12

    #setter for: Landroid/webkit/WebView;->mLastDeferTouchY:F
    invoke-static {v0, v1}, Landroid/webkit/WebView;->access$2902(Landroid/webkit/WebView;F)F

    .line 8285
    iget-object v0, p0, Landroid/webkit/WebView$TouchEventQueue;->this$0:Landroid/webkit/WebView;

    int-to-float v1, v11

    int-to-float v2, v12

    #calls: Landroid/webkit/WebView;->startScrollingLayer(FF)V
    invoke-static {v0, v1, v2}, Landroid/webkit/WebView;->access$3100(Landroid/webkit/WebView;FF)V

    .line 8286
    iget-object v0, p0, Landroid/webkit/WebView$TouchEventQueue;->this$0:Landroid/webkit/WebView;

    #calls: Landroid/webkit/WebView;->startDrag()V
    invoke-static {v0}, Landroid/webkit/WebView;->access$3200(Landroid/webkit/WebView;)V

    .line 8288
    :cond_9
    iget-object v0, p0, Landroid/webkit/WebView$TouchEventQueue;->this$0:Landroid/webkit/WebView;

    iget-object v1, p0, Landroid/webkit/WebView$TouchEventQueue;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mScrollX:I
    invoke-static {v1}, Landroid/webkit/WebView;->access$3300(Landroid/webkit/WebView;)I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Landroid/webkit/WebView$TouchEventQueue;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mLastDeferTouchX:F
    invoke-static {v2}, Landroid/webkit/WebView;->access$2800(Landroid/webkit/WebView;)F

    move-result v2

    add-float/2addr v1, v2

    int-to-float v2, v11

    sub-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->pinLocX(I)I

    move-result v0

    iget-object v1, p0, Landroid/webkit/WebView$TouchEventQueue;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mScrollX:I
    invoke-static {v1}, Landroid/webkit/WebView;->access$3400(Landroid/webkit/WebView;)I

    move-result v1

    sub-int v7, v0, v1

    .line 8291
    .local v7, deltaX:I
    iget-object v0, p0, Landroid/webkit/WebView$TouchEventQueue;->this$0:Landroid/webkit/WebView;

    iget-object v1, p0, Landroid/webkit/WebView$TouchEventQueue;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mScrollY:I
    invoke-static {v1}, Landroid/webkit/WebView;->access$3500(Landroid/webkit/WebView;)I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Landroid/webkit/WebView$TouchEventQueue;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mLastDeferTouchY:F
    invoke-static {v2}, Landroid/webkit/WebView;->access$2900(Landroid/webkit/WebView;)F

    move-result v2

    add-float/2addr v1, v2

    int-to-float v2, v12

    sub-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->pinLocY(I)I

    move-result v0

    iget-object v1, p0, Landroid/webkit/WebView$TouchEventQueue;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mScrollY:I
    invoke-static {v1}, Landroid/webkit/WebView;->access$3600(Landroid/webkit/WebView;)I

    move-result v1

    sub-int v8, v0, v1

    .line 8294
    .local v8, deltaY:I
    iget-object v0, p0, Landroid/webkit/WebView$TouchEventQueue;->this$0:Landroid/webkit/WebView;

    #calls: Landroid/webkit/WebView;->doDrag(II)V
    invoke-static {v0, v7, v8}, Landroid/webkit/WebView;->access$3700(Landroid/webkit/WebView;II)V

    .line 8295
    if-eqz v7, :cond_a

    iget-object v0, p0, Landroid/webkit/WebView$TouchEventQueue;->this$0:Landroid/webkit/WebView;

    int-to-float v1, v11

    #setter for: Landroid/webkit/WebView;->mLastDeferTouchX:F
    invoke-static {v0, v1}, Landroid/webkit/WebView;->access$2802(Landroid/webkit/WebView;F)F

    .line 8296
    :cond_a
    if-eqz v8, :cond_3

    iget-object v0, p0, Landroid/webkit/WebView$TouchEventQueue;->this$0:Landroid/webkit/WebView;

    int-to-float v1, v12

    #setter for: Landroid/webkit/WebView;->mLastDeferTouchY:F
    invoke-static {v0, v1}, Landroid/webkit/WebView;->access$2902(Landroid/webkit/WebView;F)F

    goto/16 :goto_1

    .line 8301
    .end local v7           #deltaX:I
    .end local v8           #deltaY:I
    .end local v11           #x:I
    .end local v12           #y:I
    :sswitch_2
    iget-object v0, p0, Landroid/webkit/WebView$TouchEventQueue;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mDeferTouchMode:I
    invoke-static {v0}, Landroid/webkit/WebView;->access$3000(Landroid/webkit/WebView;)I

    move-result v0

    if-ne v0, v1, :cond_b

    .line 8303
    iget-object v0, p0, Landroid/webkit/WebView$TouchEventQueue;->this$0:Landroid/webkit/WebView;

    iget-object v0, v0, Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;

    iget-object v1, p0, Landroid/webkit/WebView$TouchEventQueue;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mScrollX:I
    invoke-static {v1}, Landroid/webkit/WebView;->access$3800(Landroid/webkit/WebView;)I

    move-result v1

    iget-object v2, p0, Landroid/webkit/WebView$TouchEventQueue;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mScrollY:I
    invoke-static {v2}, Landroid/webkit/WebView;->access$3900(Landroid/webkit/WebView;)I

    move-result v2

    iget-object v4, p0, Landroid/webkit/WebView$TouchEventQueue;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->computeMaxScrollX()I

    move-result v4

    iget-object v5, p0, Landroid/webkit/WebView$TouchEventQueue;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v5}, Landroid/webkit/WebView;->computeMaxScrollY()I

    move-result v6

    move v5, v3

    invoke-virtual/range {v0 .. v6}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    .line 8306
    iget-object v0, p0, Landroid/webkit/WebView$TouchEventQueue;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->invalidate()V

    .line 8307
    invoke-static {v3}, Landroid/webkit/WebViewCore;->resumePriority(I)V

    .line 8308
    iget-object v0, p0, Landroid/webkit/WebView$TouchEventQueue;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v10

    .line 8309
    .local v10, webSettings:Landroid/webkit/WebSettings;
    sget-object v0, Landroid/webkit/WebSettings$RenderPriority;->NORMAL:Landroid/webkit/WebSettings$RenderPriority;

    invoke-virtual {v10, v0}, Landroid/webkit/WebSettings;->setRenderPriority(Landroid/webkit/WebSettings$RenderPriority;)V

    .line 8310
    iget-object v0, p0, Landroid/webkit/WebView$TouchEventQueue;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;
    invoke-static {v0}, Landroid/webkit/WebView;->access$700(Landroid/webkit/WebView;)Landroid/webkit/WebViewCore;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/WebViewCore;->resumeUpdatePicture(Landroid/webkit/WebViewCore;)V

    .line 8312
    .end local v10           #webSettings:Landroid/webkit/WebSettings;
    :cond_b
    iget-object v0, p0, Landroid/webkit/WebView$TouchEventQueue;->this$0:Landroid/webkit/WebView;

    #setter for: Landroid/webkit/WebView;->mDeferTouchMode:I
    invoke-static {v0, v13}, Landroid/webkit/WebView;->access$3002(Landroid/webkit/WebView;I)I

    goto/16 :goto_1

    .line 8316
    :sswitch_3
    iget-object v0, p0, Landroid/webkit/WebView$TouchEventQueue;->this$0:Landroid/webkit/WebView;

    iget-object v1, p1, Landroid/webkit/WebViewCore$TouchEventData;->mPointsInView:[Landroid/graphics/Point;

    aget-object v1, v1, v3

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    #setter for: Landroid/webkit/WebView;->mLastDeferTouchX:F
    invoke-static {v0, v1}, Landroid/webkit/WebView;->access$2802(Landroid/webkit/WebView;F)F

    .line 8317
    iget-object v0, p0, Landroid/webkit/WebView$TouchEventQueue;->this$0:Landroid/webkit/WebView;

    iget-object v1, p1, Landroid/webkit/WebViewCore$TouchEventData;->mPointsInView:[Landroid/graphics/Point;

    aget-object v1, v1, v3

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    #setter for: Landroid/webkit/WebView;->mLastDeferTouchY:F
    invoke-static {v0, v1}, Landroid/webkit/WebView;->access$2902(Landroid/webkit/WebView;F)F

    .line 8318
    iget-object v0, p0, Landroid/webkit/WebView$TouchEventQueue;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;
    invoke-static {v0}, Landroid/webkit/WebView;->access$2400(Landroid/webkit/WebView;)Landroid/webkit/ZoomManager;

    move-result-object v0

    iget-object v1, p0, Landroid/webkit/WebView$TouchEventQueue;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mLastTouchX:I
    invoke-static {v1}, Landroid/webkit/WebView;->access$2100(Landroid/webkit/WebView;)I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Landroid/webkit/WebView$TouchEventQueue;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mLastTouchY:I
    invoke-static {v2}, Landroid/webkit/WebView;->access$2200(Landroid/webkit/WebView;)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/webkit/ZoomManager;->handleDoubleTap(FF)V

    .line 8319
    iget-object v0, p0, Landroid/webkit/WebView$TouchEventQueue;->this$0:Landroid/webkit/WebView;

    #setter for: Landroid/webkit/WebView;->mDeferTouchMode:I
    invoke-static {v0, v13}, Landroid/webkit/WebView;->access$3002(Landroid/webkit/WebView;I)I

    goto/16 :goto_1

    .line 8322
    :sswitch_4
    iget-object v0, p0, Landroid/webkit/WebView$TouchEventQueue;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getHitTestResult()Landroid/webkit/WebView$HitTestResult;

    move-result-object v9

    .line 8323
    .local v9, hitTest:Landroid/webkit/WebView$HitTestResult;
    if-eqz v9, :cond_c

    #getter for: Landroid/webkit/WebView$HitTestResult;->mType:I
    invoke-static {v9}, Landroid/webkit/WebView$HitTestResult;->access$4000(Landroid/webkit/WebView$HitTestResult;)I

    move-result v0

    if-eqz v0, :cond_c

    .line 8325
    iget-object v0, p0, Landroid/webkit/WebView$TouchEventQueue;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->performLongClick()Z

    .line 8327
    :cond_c
    iget-object v0, p0, Landroid/webkit/WebView$TouchEventQueue;->this$0:Landroid/webkit/WebView;

    #setter for: Landroid/webkit/WebView;->mDeferTouchMode:I
    invoke-static {v0, v13}, Landroid/webkit/WebView;->access$3002(Landroid/webkit/WebView;I)I

    goto/16 :goto_1

    .line 8270
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_2
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x100 -> :sswitch_4
        0x200 -> :sswitch_3
    .end sparse-switch
.end method

.method private obtainQueuedTouch()Landroid/webkit/WebView$QueuedTouch;
    .locals 2

    .prologue
    .line 7924
    iget-object v1, p0, Landroid/webkit/WebView$TouchEventQueue;->mQueuedTouchRecycleBin:Landroid/webkit/WebView$QueuedTouch;

    if-eqz v1, :cond_0

    .line 7925
    iget-object v0, p0, Landroid/webkit/WebView$TouchEventQueue;->mQueuedTouchRecycleBin:Landroid/webkit/WebView$QueuedTouch;

    .line 7926
    .local v0, result:Landroid/webkit/WebView$QueuedTouch;
    iget-object v1, v0, Landroid/webkit/WebView$QueuedTouch;->mNext:Landroid/webkit/WebView$QueuedTouch;

    iput-object v1, p0, Landroid/webkit/WebView$TouchEventQueue;->mQueuedTouchRecycleBin:Landroid/webkit/WebView$QueuedTouch;

    .line 7927
    iget v1, p0, Landroid/webkit/WebView$TouchEventQueue;->mQueuedTouchRecycleCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroid/webkit/WebView$TouchEventQueue;->mQueuedTouchRecycleCount:I

    .line 7930
    .end local v0           #result:Landroid/webkit/WebView$QueuedTouch;
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/webkit/WebView$QueuedTouch;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/webkit/WebView$QueuedTouch;-><init>(Landroid/webkit/WebView$1;)V

    goto :goto_0
.end method

.method private recycleQueuedTouch(Landroid/webkit/WebView$QueuedTouch;)V
    .locals 2
    .parameter "qd"

    .prologue
    .line 7992
    iget v0, p0, Landroid/webkit/WebView$TouchEventQueue;->mQueuedTouchRecycleCount:I

    const/16 v1, 0xf

    if-ge v0, v1, :cond_0

    .line 7993
    iget-object v0, p0, Landroid/webkit/WebView$TouchEventQueue;->mQueuedTouchRecycleBin:Landroid/webkit/WebView$QueuedTouch;

    iput-object v0, p1, Landroid/webkit/WebView$QueuedTouch;->mNext:Landroid/webkit/WebView$QueuedTouch;

    .line 7994
    iput-object p1, p0, Landroid/webkit/WebView$TouchEventQueue;->mQueuedTouchRecycleBin:Landroid/webkit/WebView$QueuedTouch;

    .line 7995
    iget v0, p0, Landroid/webkit/WebView$TouchEventQueue;->mQueuedTouchRecycleCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/webkit/WebView$TouchEventQueue;->mQueuedTouchRecycleCount:I

    .line 7997
    :cond_0
    return-void
.end method

.method private runNextQueuedEvents()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x1

    .line 8129
    iget-object v0, p0, Landroid/webkit/WebView$TouchEventQueue;->mTouchEventQueue:Landroid/webkit/WebView$QueuedTouch;

    .line 8130
    .local v0, qd:Landroid/webkit/WebView$QueuedTouch;
    :goto_0
    if-eqz v0, :cond_0

    iget-wide v2, v0, Landroid/webkit/WebView$QueuedTouch;->mSequence:J

    iget-wide v4, p0, Landroid/webkit/WebView$TouchEventQueue;->mLastHandledTouchSequence:J

    add-long/2addr v4, v6

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 8131
    invoke-direct {p0, v0}, Landroid/webkit/WebView$TouchEventQueue;->handleQueuedTouch(Landroid/webkit/WebView$QueuedTouch;)V

    .line 8132
    move-object v1, v0

    .line 8133
    .local v1, recycleMe:Landroid/webkit/WebView$QueuedTouch;
    iget-object v0, v0, Landroid/webkit/WebView$QueuedTouch;->mNext:Landroid/webkit/WebView$QueuedTouch;

    .line 8134
    invoke-direct {p0, v1}, Landroid/webkit/WebView$TouchEventQueue;->recycleQueuedTouch(Landroid/webkit/WebView$QueuedTouch;)V

    .line 8135
    iget-wide v2, p0, Landroid/webkit/WebView$TouchEventQueue;->mLastHandledTouchSequence:J

    add-long/2addr v2, v6

    iput-wide v2, p0, Landroid/webkit/WebView$TouchEventQueue;->mLastHandledTouchSequence:J

    goto :goto_0

    .line 8137
    .end local v1           #recycleMe:Landroid/webkit/WebView$QueuedTouch;
    :cond_0
    iput-object v0, p0, Landroid/webkit/WebView$TouchEventQueue;->mTouchEventQueue:Landroid/webkit/WebView$QueuedTouch;

    .line 8138
    return-void
.end method

.method private runQueuedAndPreQueuedEvents()V
    .locals 15

    .prologue
    const-wide v7, 0x7fffffffffffffffL

    const-wide/16 v13, 0x1

    .line 7944
    iget-object v5, p0, Landroid/webkit/WebView$TouchEventQueue;->mPreQueue:Landroid/webkit/WebView$QueuedTouch;

    .line 7945
    .local v5, qd:Landroid/webkit/WebView$QueuedTouch;
    const/4 v0, 0x1

    .line 7946
    .local v0, fromPreQueue:Z
    :goto_0
    if-eqz v5, :cond_5

    iget-wide v9, v5, Landroid/webkit/WebView$QueuedTouch;->mSequence:J

    iget-wide v11, p0, Landroid/webkit/WebView$TouchEventQueue;->mLastHandledTouchSequence:J

    add-long/2addr v11, v13

    cmp-long v9, v9, v11

    if-nez v9, :cond_5

    .line 7947
    invoke-direct {p0, v5}, Landroid/webkit/WebView$TouchEventQueue;->handleQueuedTouch(Landroid/webkit/WebView$QueuedTouch;)V

    .line 7948
    move-object v6, v5

    .line 7949
    .local v6, recycleMe:Landroid/webkit/WebView$QueuedTouch;
    if-eqz v0, :cond_0

    .line 7950
    iget-object v9, v5, Landroid/webkit/WebView$QueuedTouch;->mNext:Landroid/webkit/WebView$QueuedTouch;

    iput-object v9, p0, Landroid/webkit/WebView$TouchEventQueue;->mPreQueue:Landroid/webkit/WebView$QueuedTouch;

    .line 7954
    :goto_1
    invoke-direct {p0, v6}, Landroid/webkit/WebView$TouchEventQueue;->recycleQueuedTouch(Landroid/webkit/WebView$QueuedTouch;)V

    .line 7955
    iget-wide v9, p0, Landroid/webkit/WebView$TouchEventQueue;->mLastHandledTouchSequence:J

    add-long/2addr v9, v13

    iput-wide v9, p0, Landroid/webkit/WebView$TouchEventQueue;->mLastHandledTouchSequence:J

    .line 7957
    iget-object v9, p0, Landroid/webkit/WebView$TouchEventQueue;->mPreQueue:Landroid/webkit/WebView$QueuedTouch;

    if-eqz v9, :cond_1

    iget-object v9, p0, Landroid/webkit/WebView$TouchEventQueue;->mPreQueue:Landroid/webkit/WebView$QueuedTouch;

    iget-wide v1, v9, Landroid/webkit/WebView$QueuedTouch;->mSequence:J

    .line 7958
    .local v1, nextPre:J
    :goto_2
    iget-object v9, p0, Landroid/webkit/WebView$TouchEventQueue;->mTouchEventQueue:Landroid/webkit/WebView$QueuedTouch;

    if-eqz v9, :cond_2

    iget-object v9, p0, Landroid/webkit/WebView$TouchEventQueue;->mTouchEventQueue:Landroid/webkit/WebView$QueuedTouch;

    iget-wide v3, v9, Landroid/webkit/WebView$QueuedTouch;->mSequence:J

    .line 7960
    .local v3, nextQueued:J
    :goto_3
    cmp-long v9, v1, v3

    if-gez v9, :cond_3

    const/4 v0, 0x1

    .line 7961
    :goto_4
    if-eqz v0, :cond_4

    iget-object v5, p0, Landroid/webkit/WebView$TouchEventQueue;->mPreQueue:Landroid/webkit/WebView$QueuedTouch;

    .line 7962
    :goto_5
    goto :goto_0

    .line 7952
    .end local v1           #nextPre:J
    .end local v3           #nextQueued:J
    :cond_0
    iget-object v9, v5, Landroid/webkit/WebView$QueuedTouch;->mNext:Landroid/webkit/WebView$QueuedTouch;

    iput-object v9, p0, Landroid/webkit/WebView$TouchEventQueue;->mTouchEventQueue:Landroid/webkit/WebView$QueuedTouch;

    goto :goto_1

    :cond_1
    move-wide v1, v7

    .line 7957
    goto :goto_2

    .restart local v1       #nextPre:J
    :cond_2
    move-wide v3, v7

    .line 7958
    goto :goto_3

    .line 7960
    .restart local v3       #nextQueued:J
    :cond_3
    const/4 v0, 0x0

    goto :goto_4

    .line 7961
    :cond_4
    iget-object v5, p0, Landroid/webkit/WebView$TouchEventQueue;->mTouchEventQueue:Landroid/webkit/WebView$QueuedTouch;

    goto :goto_5

    .line 7963
    .end local v1           #nextPre:J
    .end local v3           #nextQueued:J
    .end local v6           #recycleMe:Landroid/webkit/WebView$QueuedTouch;
    :cond_5
    return-void
.end method


# virtual methods
.method public enqueueTouchEvent(Landroid/view/MotionEvent;)V
    .locals 7
    .parameter "ev"

    .prologue
    const-wide/16 v5, 0x1

    .line 8105
    invoke-virtual {p0}, Landroid/webkit/WebView$TouchEventQueue;->nextTouchSequence()J

    move-result-wide v1

    .line 8107
    .local v1, sequence:J
    invoke-direct {p0, p1, v1, v2}, Landroid/webkit/WebView$TouchEventQueue;->dropStaleGestures(Landroid/view/MotionEvent;J)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 8126
    :goto_0
    return-void

    .line 8113
    :cond_0
    invoke-direct {p0}, Landroid/webkit/WebView$TouchEventQueue;->runNextQueuedEvents()V

    .line 8115
    iget-wide v3, p0, Landroid/webkit/WebView$TouchEventQueue;->mLastHandledTouchSequence:J

    add-long/2addr v3, v5

    cmp-long v3, v3, v1

    if-nez v3, :cond_1

    .line 8116
    invoke-direct {p0, p1}, Landroid/webkit/WebView$TouchEventQueue;->handleQueuedMotionEvent(Landroid/view/MotionEvent;)V

    .line 8118
    iget-wide v3, p0, Landroid/webkit/WebView$TouchEventQueue;->mLastHandledTouchSequence:J

    add-long/2addr v3, v5

    iput-wide v3, p0, Landroid/webkit/WebView$TouchEventQueue;->mLastHandledTouchSequence:J

    .line 8121
    invoke-direct {p0}, Landroid/webkit/WebView$TouchEventQueue;->runNextQueuedEvents()V

    goto :goto_0

    .line 8123
    :cond_1
    invoke-direct {p0}, Landroid/webkit/WebView$TouchEventQueue;->obtainQueuedTouch()Landroid/webkit/WebView$QueuedTouch;

    move-result-object v3

    invoke-virtual {v3, p1, v1, v2}, Landroid/webkit/WebView$QueuedTouch;->set(Landroid/view/MotionEvent;J)Landroid/webkit/WebView$QueuedTouch;

    move-result-object v0

    .line 8124
    .local v0, qd:Landroid/webkit/WebView$QueuedTouch;
    iget-object v3, p0, Landroid/webkit/WebView$TouchEventQueue;->mTouchEventQueue:Landroid/webkit/WebView$QueuedTouch;

    if-nez v3, :cond_2

    .end local v0           #qd:Landroid/webkit/WebView$QueuedTouch;
    :goto_1
    iput-object v0, p0, Landroid/webkit/WebView$TouchEventQueue;->mTouchEventQueue:Landroid/webkit/WebView$QueuedTouch;

    goto :goto_0

    .restart local v0       #qd:Landroid/webkit/WebView$QueuedTouch;
    :cond_2
    iget-object v3, p0, Landroid/webkit/WebView$TouchEventQueue;->mTouchEventQueue:Landroid/webkit/WebView$QueuedTouch;

    invoke-virtual {v3, v0}, Landroid/webkit/WebView$QueuedTouch;->add(Landroid/webkit/WebView$QueuedTouch;)Landroid/webkit/WebView$QueuedTouch;

    move-result-object v0

    goto :goto_1
.end method

.method public enqueueTouchEvent(Landroid/webkit/WebViewCore$TouchEventData;)Z
    .locals 10
    .parameter "ted"

    .prologue
    const-wide/16 v8, 0x1

    const/4 v3, 0x0

    .line 8040
    iget-object v0, p0, Landroid/webkit/WebView$TouchEventQueue;->mPreQueue:Landroid/webkit/WebView$QueuedTouch;

    .line 8041
    .local v0, preQueue:Landroid/webkit/WebView$QueuedTouch;
    if-eqz v0, :cond_0

    .line 8044
    iget-wide v4, v0, Landroid/webkit/WebView$QueuedTouch;->mSequence:J

    iget-wide v6, p1, Landroid/webkit/WebViewCore$TouchEventData;->mSequence:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_2

    .line 8045
    iget-object v4, v0, Landroid/webkit/WebView$QueuedTouch;->mNext:Landroid/webkit/WebView$QueuedTouch;

    iput-object v4, p0, Landroid/webkit/WebView$TouchEventQueue;->mPreQueue:Landroid/webkit/WebView$QueuedTouch;

    .line 8061
    :cond_0
    :goto_0
    iget-wide v4, p1, Landroid/webkit/WebViewCore$TouchEventData;->mSequence:J

    iget-wide v6, p0, Landroid/webkit/WebView$TouchEventQueue;->mLastHandledTouchSequence:J

    cmp-long v4, v4, v6

    if-gez v4, :cond_4

    .line 8063
    const-string/jumbo v4, "webview"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Stale touch event "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/webkit/WebViewCore$TouchEventData;->mAction:I

    invoke-static {v6}, Landroid/view/MotionEvent;->actionToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " received from webcore; ignoring"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8092
    :cond_1
    :goto_1
    return v3

    .line 8047
    :cond_2
    move-object v1, v0

    .line 8048
    .local v1, prev:Landroid/webkit/WebView$QueuedTouch;
    const/4 v0, 0x0

    .line 8049
    :goto_2
    iget-object v4, v1, Landroid/webkit/WebView$QueuedTouch;->mNext:Landroid/webkit/WebView$QueuedTouch;

    if-eqz v4, :cond_0

    .line 8050
    iget-object v4, v1, Landroid/webkit/WebView$QueuedTouch;->mNext:Landroid/webkit/WebView$QueuedTouch;

    iget-wide v4, v4, Landroid/webkit/WebView$QueuedTouch;->mSequence:J

    iget-wide v6, p1, Landroid/webkit/WebViewCore$TouchEventData;->mSequence:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_3

    .line 8051
    iget-object v0, v1, Landroid/webkit/WebView$QueuedTouch;->mNext:Landroid/webkit/WebView$QueuedTouch;

    .line 8052
    iget-object v4, v0, Landroid/webkit/WebView$QueuedTouch;->mNext:Landroid/webkit/WebView$QueuedTouch;

    iput-object v4, v1, Landroid/webkit/WebView$QueuedTouch;->mNext:Landroid/webkit/WebView$QueuedTouch;

    goto :goto_0

    .line 8055
    :cond_3
    iget-object v1, v1, Landroid/webkit/WebView$QueuedTouch;->mNext:Landroid/webkit/WebView$QueuedTouch;

    goto :goto_2

    .line 8068
    .end local v1           #prev:Landroid/webkit/WebView$QueuedTouch;
    :cond_4
    iget-object v4, p1, Landroid/webkit/WebViewCore$TouchEventData;->mMotionEvent:Landroid/view/MotionEvent;

    iget-wide v5, p1, Landroid/webkit/WebViewCore$TouchEventData;->mSequence:J

    invoke-direct {p0, v4, v5, v6}, Landroid/webkit/WebView$TouchEventQueue;->dropStaleGestures(Landroid/view/MotionEvent;J)Z

    move-result v4

    if-nez v4, :cond_1

    .line 8074
    invoke-direct {p0}, Landroid/webkit/WebView$TouchEventQueue;->runNextQueuedEvents()V

    .line 8076
    iget-wide v3, p0, Landroid/webkit/WebView$TouchEventQueue;->mLastHandledTouchSequence:J

    add-long/2addr v3, v8

    iget-wide v5, p1, Landroid/webkit/WebViewCore$TouchEventData;->mSequence:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_6

    .line 8077
    if-eqz v0, :cond_5

    .line 8078
    invoke-direct {p0, v0}, Landroid/webkit/WebView$TouchEventQueue;->recycleQueuedTouch(Landroid/webkit/WebView$QueuedTouch;)V

    .line 8079
    const/4 v0, 0x0

    .line 8081
    :cond_5
    invoke-direct {p0, p1}, Landroid/webkit/WebView$TouchEventQueue;->handleQueuedTouchEventData(Landroid/webkit/WebViewCore$TouchEventData;)V

    .line 8083
    iget-wide v3, p0, Landroid/webkit/WebView$TouchEventQueue;->mLastHandledTouchSequence:J

    add-long/2addr v3, v8

    iput-wide v3, p0, Landroid/webkit/WebView$TouchEventQueue;->mLastHandledTouchSequence:J

    .line 8086
    invoke-direct {p0}, Landroid/webkit/WebView$TouchEventQueue;->runNextQueuedEvents()V

    .line 8092
    :goto_3
    const/4 v3, 0x1

    goto :goto_1

    .line 8089
    :cond_6
    if-eqz v0, :cond_7

    move-object v2, v0

    .line 8090
    .local v2, qd:Landroid/webkit/WebView$QueuedTouch;
    :goto_4
    iget-object v3, p0, Landroid/webkit/WebView$TouchEventQueue;->mTouchEventQueue:Landroid/webkit/WebView$QueuedTouch;

    if-nez v3, :cond_8

    .end local v2           #qd:Landroid/webkit/WebView$QueuedTouch;
    :goto_5
    iput-object v2, p0, Landroid/webkit/WebView$TouchEventQueue;->mTouchEventQueue:Landroid/webkit/WebView$QueuedTouch;

    goto :goto_3

    .line 8089
    :cond_7
    invoke-direct {p0}, Landroid/webkit/WebView$TouchEventQueue;->obtainQueuedTouch()Landroid/webkit/WebView$QueuedTouch;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/webkit/WebView$QueuedTouch;->set(Landroid/webkit/WebViewCore$TouchEventData;)Landroid/webkit/WebView$QueuedTouch;

    move-result-object v2

    goto :goto_4

    .line 8090
    .restart local v2       #qd:Landroid/webkit/WebView$QueuedTouch;
    :cond_8
    iget-object v3, p0, Landroid/webkit/WebView$TouchEventQueue;->mTouchEventQueue:Landroid/webkit/WebView$QueuedTouch;

    invoke-virtual {v3, v2}, Landroid/webkit/WebView$QueuedTouch;->add(Landroid/webkit/WebView$QueuedTouch;)Landroid/webkit/WebView$QueuedTouch;

    move-result-object v2

    goto :goto_5
.end method

.method public ignoreCurrentlyMissingEvents()V
    .locals 2

    .prologue
    .line 7937
    iget-wide v0, p0, Landroid/webkit/WebView$TouchEventQueue;->mNextTouchSequence:J

    iput-wide v0, p0, Landroid/webkit/WebView$TouchEventQueue;->mIgnoreUntilSequence:J

    .line 7940
    invoke-direct {p0}, Landroid/webkit/WebView$TouchEventQueue;->runQueuedAndPreQueuedEvents()V

    .line 7941
    return-void
.end method

.method public nextTouchSequence()J
    .locals 4

    .prologue
    .line 8024
    iget-wide v0, p0, Landroid/webkit/WebView$TouchEventQueue;->mNextTouchSequence:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Landroid/webkit/WebView$TouchEventQueue;->mNextTouchSequence:J

    return-wide v0
.end method

.method public preQueueTouchEventData(Landroid/webkit/WebViewCore$TouchEventData;)V
    .locals 6
    .parameter "ted"

    .prologue
    .line 7977
    invoke-direct {p0}, Landroid/webkit/WebView$TouchEventQueue;->obtainQueuedTouch()Landroid/webkit/WebView$QueuedTouch;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/webkit/WebView$QueuedTouch;->set(Landroid/webkit/WebViewCore$TouchEventData;)Landroid/webkit/WebView$QueuedTouch;

    move-result-object v1

    .line 7978
    .local v1, newTouch:Landroid/webkit/WebView$QueuedTouch;
    iget-object v2, p0, Landroid/webkit/WebView$TouchEventQueue;->mPreQueue:Landroid/webkit/WebView$QueuedTouch;

    if-nez v2, :cond_0

    .line 7979
    iput-object v1, p0, Landroid/webkit/WebView$TouchEventQueue;->mPreQueue:Landroid/webkit/WebView$QueuedTouch;

    .line 7989
    :goto_0
    return-void

    .line 7981
    :cond_0
    iget-object v0, p0, Landroid/webkit/WebView$TouchEventQueue;->mPreQueue:Landroid/webkit/WebView$QueuedTouch;

    .line 7983
    .local v0, insertionPoint:Landroid/webkit/WebView$QueuedTouch;
    :goto_1
    iget-object v2, v0, Landroid/webkit/WebView$QueuedTouch;->mNext:Landroid/webkit/WebView$QueuedTouch;

    if-eqz v2, :cond_1

    iget-object v2, v0, Landroid/webkit/WebView$QueuedTouch;->mNext:Landroid/webkit/WebView$QueuedTouch;

    iget-wide v2, v2, Landroid/webkit/WebView$QueuedTouch;->mSequence:J

    iget-wide v4, v1, Landroid/webkit/WebView$QueuedTouch;->mSequence:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    .line 7984
    iget-object v0, v0, Landroid/webkit/WebView$QueuedTouch;->mNext:Landroid/webkit/WebView$QueuedTouch;

    goto :goto_1

    .line 7986
    :cond_1
    iget-object v2, v0, Landroid/webkit/WebView$QueuedTouch;->mNext:Landroid/webkit/WebView$QueuedTouch;

    iput-object v2, v1, Landroid/webkit/WebView$QueuedTouch;->mNext:Landroid/webkit/WebView$QueuedTouch;

    .line 7987
    iput-object v1, v0, Landroid/webkit/WebView$QueuedTouch;->mNext:Landroid/webkit/WebView$QueuedTouch;

    goto :goto_0
.end method

.method public reset()V
    .locals 5

    .prologue
    const-wide v3, -0x7fffffffffffffffL

    .line 8004
    iput-wide v3, p0, Landroid/webkit/WebView$TouchEventQueue;->mNextTouchSequence:J

    .line 8005
    const-wide/high16 v1, -0x8000

    iput-wide v1, p0, Landroid/webkit/WebView$TouchEventQueue;->mLastHandledTouchSequence:J

    .line 8006
    iput-wide v3, p0, Landroid/webkit/WebView$TouchEventQueue;->mIgnoreUntilSequence:J

    .line 8007
    :goto_0
    iget-object v1, p0, Landroid/webkit/WebView$TouchEventQueue;->mTouchEventQueue:Landroid/webkit/WebView$QueuedTouch;

    if-eqz v1, :cond_0

    .line 8008
    iget-object v0, p0, Landroid/webkit/WebView$TouchEventQueue;->mTouchEventQueue:Landroid/webkit/WebView$QueuedTouch;

    .line 8009
    .local v0, recycleMe:Landroid/webkit/WebView$QueuedTouch;
    iget-object v1, p0, Landroid/webkit/WebView$TouchEventQueue;->mTouchEventQueue:Landroid/webkit/WebView$QueuedTouch;

    iget-object v1, v1, Landroid/webkit/WebView$QueuedTouch;->mNext:Landroid/webkit/WebView$QueuedTouch;

    iput-object v1, p0, Landroid/webkit/WebView$TouchEventQueue;->mTouchEventQueue:Landroid/webkit/WebView$QueuedTouch;

    .line 8010
    invoke-direct {p0, v0}, Landroid/webkit/WebView$TouchEventQueue;->recycleQueuedTouch(Landroid/webkit/WebView$QueuedTouch;)V

    goto :goto_0

    .line 8012
    .end local v0           #recycleMe:Landroid/webkit/WebView$QueuedTouch;
    :cond_0
    :goto_1
    iget-object v1, p0, Landroid/webkit/WebView$TouchEventQueue;->mPreQueue:Landroid/webkit/WebView$QueuedTouch;

    if-eqz v1, :cond_1

    .line 8013
    iget-object v0, p0, Landroid/webkit/WebView$TouchEventQueue;->mPreQueue:Landroid/webkit/WebView$QueuedTouch;

    .line 8014
    .restart local v0       #recycleMe:Landroid/webkit/WebView$QueuedTouch;
    iget-object v1, p0, Landroid/webkit/WebView$TouchEventQueue;->mPreQueue:Landroid/webkit/WebView$QueuedTouch;

    iget-object v1, v1, Landroid/webkit/WebView$QueuedTouch;->mNext:Landroid/webkit/WebView$QueuedTouch;

    iput-object v1, p0, Landroid/webkit/WebView$TouchEventQueue;->mPreQueue:Landroid/webkit/WebView$QueuedTouch;

    .line 8015
    invoke-direct {p0, v0}, Landroid/webkit/WebView$TouchEventQueue;->recycleQueuedTouch(Landroid/webkit/WebView$QueuedTouch;)V

    goto :goto_1

    .line 8017
    .end local v0           #recycleMe:Landroid/webkit/WebView$QueuedTouch;
    :cond_1
    return-void
.end method

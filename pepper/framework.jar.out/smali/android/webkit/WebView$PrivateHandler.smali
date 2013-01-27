.class Landroid/webkit/WebView$PrivateHandler;
.super Landroid/os/Handler;
.source "WebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PrivateHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkit/WebView;


# direct methods
.method constructor <init>(Landroid/webkit/WebView;)V
    .locals 0
    .parameter

    .prologue
    .line 8343
    iput-object p1, p0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 41
    .parameter "msg"

    .prologue
    .line 8360
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;
    invoke-static {v2}, Landroid/webkit/WebView;->access$700(Landroid/webkit/WebView;)Landroid/webkit/WebViewCore;

    move-result-object v2

    if-nez v2, :cond_1

    .line 8810
    :cond_0
    :goto_0
    return-void

    .line 8364
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mBlockWebkitViewMessages:Z
    invoke-static {v2}, Landroid/webkit/WebView;->access$4100(Landroid/webkit/WebView;)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    const/16 v3, 0x6b

    if-ne v2, v3, :cond_0

    .line 8369
    :cond_2
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    .line 8807
    :goto_1
    invoke-super/range {p0 .. p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 8371
    :sswitch_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mDatabase:Landroid/webkit/WebViewDatabase;
    invoke-static {v2}, Landroid/webkit/WebView;->access$1300(Landroid/webkit/WebView;)Landroid/webkit/WebViewDatabase;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "host"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v5, "username"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v5

    const-string/jumbo v6, "password"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Landroid/webkit/WebViewDatabase;->setUsernamePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 8375
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 8379
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mDatabase:Landroid/webkit/WebViewDatabase;
    invoke-static {v2}, Landroid/webkit/WebView;->access$1300(Landroid/webkit/WebView;)Landroid/webkit/WebViewDatabase;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "host"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/webkit/WebViewDatabase;->setUsernamePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 8381
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 8387
    :sswitch_2
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    if-nez v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mPreventDefault:I
    invoke-static {v2}, Landroid/webkit/WebView;->access$2500(Landroid/webkit/WebView;)I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_4

    :cond_3
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mPreventDefault:I
    invoke-static {v2}, Landroid/webkit/WebView;->access$2500(Landroid/webkit/WebView;)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 8391
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mLastTouchX:I
    invoke-static {v4}, Landroid/webkit/WebView;->access$2100(Landroid/webkit/WebView;)I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mScrollX:I
    invoke-static {v5}, Landroid/webkit/WebView;->access$4200(Landroid/webkit/WebView;)I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v3, v4}, Landroid/webkit/WebView;->viewToContentX(I)I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mLastTouchY:I
    invoke-static {v5}, Landroid/webkit/WebView;->access$2200(Landroid/webkit/WebView;)I

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mScrollY:I
    invoke-static {v6}, Landroid/webkit/WebView;->access$4300(Landroid/webkit/WebView;)I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {v4, v5}, Landroid/webkit/WebView;->viewToContentY(I)I

    move-result v4

    const/4 v5, 0x1

    #calls: Landroid/webkit/WebView;->cancelWebCoreTouchEvent(IIZ)V
    invoke-static {v2, v3, v4, v5}, Landroid/webkit/WebView;->access$4400(Landroid/webkit/WebView;IIZ)V

    goto/16 :goto_0

    .line 8399
    :sswitch_3
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mAutoScrollX:I
    invoke-static {v2}, Landroid/webkit/WebView;->access$4500(Landroid/webkit/WebView;)I

    move-result v2

    if-nez v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mAutoScrollY:I
    invoke-static {v2}, Landroid/webkit/WebView;->access$4600(Landroid/webkit/WebView;)I

    move-result v2

    if-nez v2, :cond_5

    .line 8400
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    const/4 v3, 0x0

    #setter for: Landroid/webkit/WebView;->mSentAutoScrollMessage:Z
    invoke-static {v2, v3}, Landroid/webkit/WebView;->access$4702(Landroid/webkit/WebView;Z)Z

    goto/16 :goto_0

    .line 8403
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mCurrentScrollingLayerId:I
    invoke-static {v2}, Landroid/webkit/WebView;->access$4800(Landroid/webkit/WebView;)I

    move-result v2

    if-nez v2, :cond_6

    .line 8404
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mAutoScrollX:I
    invoke-static {v3}, Landroid/webkit/WebView;->access$4500(Landroid/webkit/WebView;)I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mAutoScrollY:I
    invoke-static {v4}, Landroid/webkit/WebView;->access$4600(Landroid/webkit/WebView;)I

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    #calls: Landroid/webkit/WebView;->pinScrollBy(IIZI)Z
    invoke-static {v2, v3, v4, v5, v6}, Landroid/webkit/WebView;->access$4900(Landroid/webkit/WebView;IIZI)Z

    .line 8409
    :goto_2
    const/16 v2, 0xb

    const-wide/16 v3, 0x10

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Landroid/webkit/WebView$PrivateHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 8406
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mScrollingLayerRect:Landroid/graphics/Rect;
    invoke-static {v3}, Landroid/webkit/WebView;->access$5000(Landroid/webkit/WebView;)Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mAutoScrollX:I
    invoke-static {v4}, Landroid/webkit/WebView;->access$4500(Landroid/webkit/WebView;)I

    move-result v4

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mScrollingLayerRect:Landroid/graphics/Rect;
    invoke-static {v4}, Landroid/webkit/WebView;->access$5000(Landroid/webkit/WebView;)Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mAutoScrollY:I
    invoke-static {v5}, Landroid/webkit/WebView;->access$4600(Landroid/webkit/WebView;)I

    move-result v5

    add-int/2addr v4, v5

    #calls: Landroid/webkit/WebView;->scrollLayerTo(II)V
    invoke-static {v2, v3, v4}, Landroid/webkit/WebView;->access$5100(Landroid/webkit/WebView;II)V

    goto :goto_2

    .line 8414
    :sswitch_4
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mTouchMode:I
    invoke-static {v2}, Landroid/webkit/WebView;->access$5200(Landroid/webkit/WebView;)I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mTouchMode:I
    invoke-static {v2}, Landroid/webkit/WebView;->access$5200(Landroid/webkit/WebView;)I

    move-result v2

    const/4 v3, 0x5

    if-eq v2, v3, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mTouchMode:I
    invoke-static {v2}, Landroid/webkit/WebView;->access$5200(Landroid/webkit/WebView;)I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    .line 8417
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #calls: Landroid/webkit/WebView;->updateSelection()V
    invoke-static {v2}, Landroid/webkit/WebView;->access$5300(Landroid/webkit/WebView;)V

    goto/16 :goto_0

    .line 8422
    :sswitch_5
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    const/4 v3, 0x0

    #setter for: Landroid/webkit/WebView;->mInitialHitTestResult:Landroid/webkit/WebView$HitTestResult;
    invoke-static {v2, v3}, Landroid/webkit/WebView;->access$5402(Landroid/webkit/WebView;Landroid/webkit/WebView$HitTestResult;)Landroid/webkit/WebView$HitTestResult;

    .line 8423
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mTouchMode:I
    invoke-static {v2}, Landroid/webkit/WebView;->access$5200(Landroid/webkit/WebView;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_9

    .line 8424
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebSettings;->supportTouchOnly()Z

    move-result v2

    if-nez v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mPreventDefault:I
    invoke-static {v2}, Landroid/webkit/WebView;->access$2500(Landroid/webkit/WebView;)I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_8

    .line 8426
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    const/4 v3, 0x4

    #setter for: Landroid/webkit/WebView;->mTouchMode:I
    invoke-static {v2, v3}, Landroid/webkit/WebView;->access$5202(Landroid/webkit/WebView;I)I

    .line 8427
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #calls: Landroid/webkit/WebView;->updateSelection()V
    invoke-static {v2}, Landroid/webkit/WebView;->access$5300(Landroid/webkit/WebView;)V

    goto/16 :goto_0

    .line 8431
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    const/4 v3, 0x5

    #setter for: Landroid/webkit/WebView;->mTouchMode:I
    invoke-static {v2, v3}, Landroid/webkit/WebView;->access$5202(Landroid/webkit/WebView;I)I

    goto/16 :goto_0

    .line 8433
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mTouchMode:I
    invoke-static {v2}, Landroid/webkit/WebView;->access$5200(Landroid/webkit/WebView;)I

    move-result v2

    const/4 v3, 0x6

    if-ne v2, v3, :cond_0

    .line 8434
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    const/4 v3, 0x7

    #setter for: Landroid/webkit/WebView;->mTouchMode:I
    invoke-static {v2, v3}, Landroid/webkit/WebView;->access$5202(Landroid/webkit/WebView;I)I

    goto/16 :goto_0

    .line 8439
    :sswitch_6
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebSettings;->supportTouchOnly()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 8440
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #calls: Landroid/webkit/WebView;->removeTouchHighlight()V
    invoke-static {v2}, Landroid/webkit/WebView;->access$5500(Landroid/webkit/WebView;)V

    .line 8442
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #calls: Landroid/webkit/WebView;->inFullScreenMode()Z
    invoke-static {v2}, Landroid/webkit/WebView;->access$5600(Landroid/webkit/WebView;)Z

    move-result v2

    if-nez v2, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mDeferTouchProcess:Z
    invoke-static {v2}, Landroid/webkit/WebView;->access$5700(Landroid/webkit/WebView;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 8443
    :cond_b
    new-instance v27, Landroid/webkit/WebViewCore$TouchEventData;

    invoke-direct/range {v27 .. v27}, Landroid/webkit/WebViewCore$TouchEventData;-><init>()V

    .line 8444
    .local v27, ted:Landroid/webkit/WebViewCore$TouchEventData;
    const/16 v2, 0x100

    move-object/from16 v0, v27

    iput v2, v0, Landroid/webkit/WebViewCore$TouchEventData;->mAction:I

    .line 8445
    const/4 v2, 0x1

    new-array v2, v2, [I

    move-object/from16 v0, v27

    iput-object v2, v0, Landroid/webkit/WebViewCore$TouchEventData;->mIds:[I

    .line 8446
    move-object/from16 v0, v27

    iget-object v2, v0, Landroid/webkit/WebViewCore$TouchEventData;->mIds:[I

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput v4, v2, v3

    .line 8447
    const/4 v2, 0x1

    new-array v2, v2, [Landroid/graphics/Point;

    move-object/from16 v0, v27

    iput-object v2, v0, Landroid/webkit/WebViewCore$TouchEventData;->mPoints:[Landroid/graphics/Point;

    .line 8448
    move-object/from16 v0, v27

    iget-object v2, v0, Landroid/webkit/WebViewCore$TouchEventData;->mPoints:[Landroid/graphics/Point;

    const/4 v3, 0x0

    new-instance v4, Landroid/graphics/Point;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mLastTouchX:I
    invoke-static {v6}, Landroid/webkit/WebView;->access$2100(Landroid/webkit/WebView;)I

    move-result v6

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mScrollX:I
    invoke-static {v7}, Landroid/webkit/WebView;->access$5800(Landroid/webkit/WebView;)I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {v5, v6}, Landroid/webkit/WebView;->viewToContentX(I)I

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mLastTouchY:I
    invoke-static {v7}, Landroid/webkit/WebView;->access$2200(Landroid/webkit/WebView;)I

    move-result v7

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object/from16 v40, v0

    #getter for: Landroid/webkit/WebView;->mScrollY:I
    invoke-static/range {v40 .. v40}, Landroid/webkit/WebView;->access$5900(Landroid/webkit/WebView;)I

    move-result v40

    add-int v7, v7, v40

    invoke-virtual {v6, v7}, Landroid/webkit/WebView;->viewToContentY(I)I

    move-result v6

    invoke-direct {v4, v5, v6}, Landroid/graphics/Point;-><init>(II)V

    aput-object v4, v2, v3

    .line 8450
    const/4 v2, 0x1

    new-array v2, v2, [Landroid/graphics/Point;

    move-object/from16 v0, v27

    iput-object v2, v0, Landroid/webkit/WebViewCore$TouchEventData;->mPointsInView:[Landroid/graphics/Point;

    .line 8451
    move-object/from16 v0, v27

    iget-object v2, v0, Landroid/webkit/WebViewCore$TouchEventData;->mPointsInView:[Landroid/graphics/Point;

    const/4 v3, 0x0

    new-instance v4, Landroid/graphics/Point;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mLastTouchX:I
    invoke-static {v5}, Landroid/webkit/WebView;->access$2100(Landroid/webkit/WebView;)I

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mLastTouchY:I
    invoke-static {v6}, Landroid/webkit/WebView;->access$2200(Landroid/webkit/WebView;)I

    move-result v6

    invoke-direct {v4, v5, v6}, Landroid/graphics/Point;-><init>(II)V

    aput-object v4, v2, v3

    .line 8456
    const/4 v2, 0x0

    move-object/from16 v0, v27

    iput v2, v0, Landroid/webkit/WebViewCore$TouchEventData;->mMetaState:I

    .line 8457
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mDeferTouchProcess:Z
    invoke-static {v2}, Landroid/webkit/WebView;->access$5700(Landroid/webkit/WebView;)Z

    move-result v2

    move-object/from16 v0, v27

    iput-boolean v2, v0, Landroid/webkit/WebViewCore$TouchEventData;->mReprocess:Z

    .line 8458
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object/from16 v0, v27

    iget-object v3, v0, Landroid/webkit/WebViewCore$TouchEventData;->mPoints:[Landroid/graphics/Point;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    iget v3, v3, Landroid/graphics/Point;->x:I

    move-object/from16 v0, v27

    iget-object v4, v0, Landroid/webkit/WebViewCore$TouchEventData;->mPoints:[Landroid/graphics/Point;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    iget v4, v4, Landroid/graphics/Point;->y:I

    move-object/from16 v0, v27

    iget-object v5, v0, Landroid/webkit/WebViewCore$TouchEventData;->mNativeLayerRect:Landroid/graphics/Rect;

    const/4 v6, 0x0

    #calls: Landroid/webkit/WebView;->nativeScrollableLayer(IILandroid/graphics/Rect;Landroid/graphics/Rect;)I
    invoke-static {v2, v3, v4, v5, v6}, Landroid/webkit/WebView;->access$6000(Landroid/webkit/WebView;IILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v2

    move-object/from16 v0, v27

    iput v2, v0, Landroid/webkit/WebViewCore$TouchEventData;->mNativeLayer:I

    .line 8461
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mTouchEventQueue:Landroid/webkit/WebView$TouchEventQueue;
    invoke-static {v2}, Landroid/webkit/WebView;->access$6100(Landroid/webkit/WebView;)Landroid/webkit/WebView$TouchEventQueue;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebView$TouchEventQueue;->nextTouchSequence()J

    move-result-wide v2

    move-object/from16 v0, v27

    iput-wide v2, v0, Landroid/webkit/WebViewCore$TouchEventData;->mSequence:J

    .line 8462
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mTouchEventQueue:Landroid/webkit/WebView$TouchEventQueue;
    invoke-static {v2}, Landroid/webkit/WebView;->access$6100(Landroid/webkit/WebView;)Landroid/webkit/WebView$TouchEventQueue;

    move-result-object v2

    move-object/from16 v0, v27

    invoke-virtual {v2, v0}, Landroid/webkit/WebView$TouchEventQueue;->preQueueTouchEventData(Landroid/webkit/WebViewCore$TouchEventData;)V

    .line 8463
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;
    invoke-static {v2}, Landroid/webkit/WebView;->access$700(Landroid/webkit/WebView;)Landroid/webkit/WebViewCore;

    move-result-object v2

    const/16 v3, 0x8d

    move-object/from16 v0, v27

    invoke-virtual {v2, v3, v0}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 8464
    .end local v27           #ted:Landroid/webkit/WebViewCore$TouchEventData;
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mPreventDefault:I
    invoke-static {v2}, Landroid/webkit/WebView;->access$2500(Landroid/webkit/WebView;)I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    .line 8465
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    const/4 v3, 0x7

    #setter for: Landroid/webkit/WebView;->mTouchMode:I
    invoke-static {v2, v3}, Landroid/webkit/WebView;->access$5202(Landroid/webkit/WebView;I)I

    .line 8466
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->performLongClick()Z

    goto/16 :goto_0

    .line 8471
    :sswitch_7
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #calls: Landroid/webkit/WebView;->doShortPress()V
    invoke-static {v2}, Landroid/webkit/WebView;->access$6200(Landroid/webkit/WebView;)V

    goto/16 :goto_0

    .line 8477
    :sswitch_8
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg2:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_d

    .line 8480
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v15

    .line 8481
    .local v15, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v15, :cond_0

    invoke-virtual {v15}, Landroid/view/inputmethod/InputMethodManager;->isAcceptingText()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v15, v2}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #calls: Landroid/webkit/WebView;->inEditingMode()Z
    invoke-static {v2}, Landroid/webkit/WebView;->access$6300(Landroid/webkit/WebView;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;
    invoke-static {v2}, Landroid/webkit/WebView;->access$1200(Landroid/webkit/WebView;)Landroid/webkit/WebTextView;

    move-result-object v2

    invoke-virtual {v15, v2}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 8487
    .end local v15           #imm:Landroid/view/inputmethod/InputMethodManager;
    :cond_d
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, Landroid/graphics/Point;

    .line 8488
    .local v22, p:Landroid/graphics/Point;
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_e

    .line 8489
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object/from16 v0, v22

    iget v3, v0, Landroid/graphics/Point;->x:I

    move-object/from16 v0, v22

    iget v4, v0, Landroid/graphics/Point;->y:I

    #calls: Landroid/webkit/WebView;->spawnContentScrollTo(II)V
    invoke-static {v2, v3, v4}, Landroid/webkit/WebView;->access$6400(Landroid/webkit/WebView;II)V

    goto/16 :goto_0

    .line 8491
    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object/from16 v0, v22

    iget v3, v0, Landroid/graphics/Point;->x:I

    move-object/from16 v0, v22

    iget v4, v0, Landroid/graphics/Point;->y:I

    #calls: Landroid/webkit/WebView;->setContentScrollTo(II)Z
    invoke-static {v2, v3, v4}, Landroid/webkit/WebView;->access$6500(Landroid/webkit/WebView;II)Z

    goto/16 :goto_0

    .line 8496
    .end local v22           #p:Landroid/graphics/Point;
    :sswitch_9
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v33, v0

    check-cast v33, Landroid/webkit/WebViewCore$ViewState;

    .line 8498
    .local v33, viewState:Landroid/webkit/WebViewCore$ViewState;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;
    invoke-static {v2}, Landroid/webkit/WebView;->access$2400(Landroid/webkit/WebView;)Landroid/webkit/ZoomManager;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getViewWidth()I

    move-result v3

    move-object/from16 v0, v33

    iget v4, v0, Landroid/webkit/WebViewCore$ViewState;->mScrollX:I

    move-object/from16 v0, v33

    invoke-virtual {v2, v0, v3, v4}, Landroid/webkit/ZoomManager;->updateZoomRange(Landroid/webkit/WebViewCore$ViewState;II)V

    goto/16 :goto_0

    .line 8502
    .end local v33           #viewState:Landroid/webkit/WebViewCore$ViewState;
    :sswitch_a
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v10

    .line 8503
    .local v10, density:F
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;
    invoke-static {v2}, Landroid/webkit/WebView;->access$2400(Landroid/webkit/WebView;)Landroid/webkit/ZoomManager;

    move-result-object v2

    invoke-virtual {v2, v10}, Landroid/webkit/ZoomManager;->updateDefaultZoomDensity(F)V

    goto/16 :goto_0

    .line 8507
    .end local v10           #density:F
    :sswitch_b
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    #calls: Landroid/webkit/WebView;->nativeReplaceBaseContent(I)V
    invoke-static {v2, v3}, Landroid/webkit/WebView;->access$6600(Landroid/webkit/WebView;I)V

    goto/16 :goto_0

    .line 8512
    :sswitch_c
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Landroid/webkit/WebViewCore$DrawData;

    .line 8513
    .local v12, draw:Landroid/webkit/WebViewCore$DrawData;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    const/4 v3, 0x1

    invoke-virtual {v2, v12, v3}, Landroid/webkit/WebView;->setNewPicture(Landroid/webkit/WebViewCore$DrawData;Z)V

    goto/16 :goto_0

    .line 8518
    .end local v12           #draw:Landroid/webkit/WebViewCore$DrawData;
    :sswitch_d
    const/4 v2, 0x3

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mContext:Landroid/content/Context;
    invoke-static {v3}, Landroid/webkit/WebView;->access$6700(Landroid/webkit/WebView;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/webkit/BrowserFrame;->getRawResFilename(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v13

    .line 8520
    .local v13, drawableDir:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mContext:Landroid/content/Context;
    invoke-static {v2}, Landroid/webkit/WebView;->access$6800(Landroid/webkit/WebView;)Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Landroid/view/WindowManager;

    .line 8522
    .local v37, windowManager:Landroid/view/WindowManager;
    invoke-interface/range {v37 .. v37}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v11

    .line 8523
    .local v11, display:Landroid/view/Display;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    invoke-static {v11}, Landroid/app/ActivityManager;->isHighEndGfx(Landroid/view/Display;)Z

    move-result v4

    #calls: Landroid/webkit/WebView;->nativeCreate(ILjava/lang/String;Z)V
    invoke-static {v2, v3, v13, v4}, Landroid/webkit/WebView;->access$6900(Landroid/webkit/WebView;ILjava/lang/String;Z)V

    .line 8525
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mDelaySetPicture:Landroid/webkit/WebViewCore$DrawData;
    invoke-static {v2}, Landroid/webkit/WebView;->access$7000(Landroid/webkit/WebView;)Landroid/webkit/WebViewCore$DrawData;

    move-result-object v2

    if-eqz v2, :cond_f

    .line 8526
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mDelaySetPicture:Landroid/webkit/WebViewCore$DrawData;
    invoke-static {v3}, Landroid/webkit/WebView;->access$7000(Landroid/webkit/WebView;)Landroid/webkit/WebViewCore$DrawData;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/webkit/WebView;->setNewPicture(Landroid/webkit/WebViewCore$DrawData;Z)V

    .line 8527
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    const/4 v3, 0x0

    #setter for: Landroid/webkit/WebView;->mDelaySetPicture:Landroid/webkit/WebViewCore$DrawData;
    invoke-static {v2, v3}, Landroid/webkit/WebView;->access$7002(Landroid/webkit/WebView;Landroid/webkit/WebViewCore$DrawData;)Landroid/webkit/WebViewCore$DrawData;

    .line 8529
    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mIsPaused:Z
    invoke-static {v2}, Landroid/webkit/WebView;->access$7100(Landroid/webkit/WebView;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 8530
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mNativeClass:I
    invoke-static {v2}, Landroid/webkit/WebView;->access$7200(Landroid/webkit/WebView;)I

    move-result v2

    const/4 v3, 0x1

    #calls: Landroid/webkit/WebView;->nativeSetPauseDrawing(IZ)V
    invoke-static {v2, v3}, Landroid/webkit/WebView;->access$7300(IZ)V

    goto/16 :goto_0

    .line 8536
    .end local v11           #display:Landroid/view/Display;
    .end local v13           #drawableDir:Ljava/lang/String;
    .end local v37           #windowManager:Landroid/view/WindowManager;
    :sswitch_e
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #calls: Landroid/webkit/WebView;->inEditingMode()Z
    invoke-static {v2}, Landroid/webkit/WebView;->access$6300(Landroid/webkit/WebView;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;
    invoke-static {v2}, Landroid/webkit/WebView;->access$1200(Landroid/webkit/WebView;)Landroid/webkit/WebTextView;

    move-result-object v2

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Landroid/webkit/WebTextView;->isSameTextField(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 8538
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg2:I

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mTextGeneration:I
    invoke-static {v3}, Landroid/webkit/WebView;->access$7400(Landroid/webkit/WebView;)I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 8539
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v28, v0

    check-cast v28, Ljava/lang/String;

    .line 8540
    .local v28, text:Ljava/lang/String;
    if-nez v28, :cond_10

    .line 8541
    const-string v28, ""

    .line 8543
    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;
    invoke-static {v2}, Landroid/webkit/WebView;->access$1200(Landroid/webkit/WebView;)Landroid/webkit/WebTextView;

    move-result-object v2

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Landroid/webkit/WebTextView;->setTextAndKeepSelection(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 8548
    .end local v28           #text:Ljava/lang/String;
    :sswitch_f
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    const/4 v3, 0x1

    #calls: Landroid/webkit/WebView;->displaySoftKeyboard(Z)V
    invoke-static {v2, v3}, Landroid/webkit/WebView;->access$7500(Landroid/webkit/WebView;Z)V

    .line 8551
    :sswitch_10
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg2:I

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/webkit/WebViewCore$TextSelectionData;

    #calls: Landroid/webkit/WebView;->updateTextSelectionFromMessage(IILandroid/webkit/WebViewCore$TextSelectionData;)V
    invoke-static {v3, v4, v5, v2}, Landroid/webkit/WebView;->access$7600(Landroid/webkit/WebView;IILandroid/webkit/WebViewCore$TextSelectionData;)V

    goto/16 :goto_0

    .line 8555
    :sswitch_11
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #calls: Landroid/webkit/WebView;->inEditingMode()Z
    invoke-static {v2}, Landroid/webkit/WebView;->access$6300(Landroid/webkit/WebView;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;
    invoke-static {v2}, Landroid/webkit/WebView;->access$1200(Landroid/webkit/WebView;)Landroid/webkit/WebTextView;

    move-result-object v2

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Landroid/webkit/WebTextView;->isSameTextField(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 8557
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #calls: Landroid/webkit/WebView;->hideSoftKeyboard()V
    invoke-static {v2}, Landroid/webkit/WebView;->access$7700(Landroid/webkit/WebView;)V

    goto/16 :goto_0

    .line 8561
    :sswitch_12
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #calls: Landroid/webkit/WebView;->inEditingMode()Z
    invoke-static {v2}, Landroid/webkit/WebView;->access$6300(Landroid/webkit/WebView;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;
    invoke-static {v2}, Landroid/webkit/WebView;->access$1200(Landroid/webkit/WebView;)Landroid/webkit/WebTextView;

    move-result-object v2

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Landroid/webkit/WebTextView;->isSameTextField(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 8563
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;
    invoke-static {v2}, Landroid/webkit/WebView;->access$1200(Landroid/webkit/WebView;)Landroid/webkit/WebTextView;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Landroid/webkit/WebTextView;->setHint(Ljava/lang/CharSequence;)V

    .line 8564
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v15

    .line 8569
    .restart local v15       #imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v15, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;
    invoke-static {v2}, Landroid/webkit/WebView;->access$1200(Landroid/webkit/WebView;)Landroid/webkit/WebTextView;

    move-result-object v2

    invoke-virtual {v15, v2}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 8570
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;
    invoke-static {v2}, Landroid/webkit/WebView;->access$1200(Landroid/webkit/WebView;)Landroid/webkit/WebTextView;

    move-result-object v2

    invoke-virtual {v15, v2}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    goto/16 :goto_0

    .line 8575
    .end local v15           #imm:Landroid/view/inputmethod/InputMethodManager;
    :sswitch_13
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    #calls: Landroid/webkit/WebView;->navHandledKey(IIZJ)Z
    invoke-static/range {v2 .. v7}, Landroid/webkit/WebView;->access$7800(Landroid/webkit/WebView;IIZJ)Z

    goto/16 :goto_0

    .line 8580
    :sswitch_14
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #calls: Landroid/webkit/WebView;->inEditingMode()Z
    invoke-static {v2}, Landroid/webkit/WebView;->access$6300(Landroid/webkit/WebView;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #calls: Landroid/webkit/WebView;->nativeCursorIsTextInput()Z
    invoke-static {v2}, Landroid/webkit/WebView;->access$7900(Landroid/webkit/WebView;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 8581
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #calls: Landroid/webkit/WebView;->updateWebTextViewPosition()V
    invoke-static {v2}, Landroid/webkit/WebView;->access$8000(Landroid/webkit/WebView;)V

    goto/16 :goto_0

    .line 8585
    :sswitch_15
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #calls: Landroid/webkit/WebView;->clearTextEntry()V
    invoke-static {v2}, Landroid/webkit/WebView;->access$8100(Landroid/webkit/WebView;)V

    goto/16 :goto_0

    .line 8588
    :sswitch_16
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v23, v0

    check-cast v23, Landroid/graphics/Rect;

    .line 8589
    .local v23, r:Landroid/graphics/Rect;
    if-nez v23, :cond_11

    .line 8590
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->invalidate()V

    goto/16 :goto_0

    .line 8594
    :cond_11
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object/from16 v0, v23

    iget v3, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v23

    iget v4, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v23

    iget v5, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, v23

    iget v6, v0, Landroid/graphics/Rect;->bottom:I

    #calls: Landroid/webkit/WebView;->viewInvalidate(IIII)V
    invoke-static {v2, v3, v4, v5, v6}, Landroid/webkit/WebView;->access$8200(Landroid/webkit/WebView;IIII)V

    goto/16 :goto_0

    .line 8599
    .end local v23           #r:Landroid/graphics/Rect;
    :sswitch_17
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/webkit/WebTextView$AutoCompleteAdapter;

    .line 8600
    .local v8, adapter:Landroid/webkit/WebTextView$AutoCompleteAdapter;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;
    invoke-static {v2}, Landroid/webkit/WebView;->access$1200(Landroid/webkit/WebView;)Landroid/webkit/WebTextView;

    move-result-object v2

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Landroid/webkit/WebTextView;->isSameTextField(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 8601
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;
    invoke-static {v2}, Landroid/webkit/WebView;->access$1200(Landroid/webkit/WebView;)Landroid/webkit/WebTextView;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/webkit/WebTextView;->setAdapterCustom(Landroid/webkit/WebTextView$AutoCompleteAdapter;)V

    goto/16 :goto_0

    .line 8608
    .end local v8           #adapter:Landroid/webkit/WebTextView$AutoCompleteAdapter;
    :sswitch_18
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    const/4 v3, 0x0

    #setter for: Landroid/webkit/WebView;->mGotCenterDown:Z
    invoke-static {v2, v3}, Landroid/webkit/WebView;->access$8302(Landroid/webkit/WebView;Z)Z

    .line 8609
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    const/4 v3, 0x0

    #setter for: Landroid/webkit/WebView;->mTrackballDown:Z
    invoke-static {v2, v3}, Landroid/webkit/WebView;->access$8402(Landroid/webkit/WebView;Z)Z

    .line 8610
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->performLongClick()Z

    goto/16 :goto_0

    .line 8614
    :sswitch_19
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    if-eqz v2, :cond_12

    const/4 v2, 0x1

    :goto_3
    #setter for: Landroid/webkit/WebView;->mForwardTouchEvents:Z
    invoke-static {v3, v2}, Landroid/webkit/WebView;->access$8502(Landroid/webkit/WebView;Z)Z

    goto/16 :goto_0

    :cond_12
    const/4 v2, 0x0

    goto :goto_3

    .line 8618
    :sswitch_1a
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #calls: Landroid/webkit/WebView;->inFullScreenMode()Z
    invoke-static {v2}, Landroid/webkit/WebView;->access$5600(Landroid/webkit/WebView;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 8621
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v27, v0

    check-cast v27, Landroid/webkit/WebViewCore$TouchEventData;

    .line 8623
    .restart local v27       #ted:Landroid/webkit/WebViewCore$TouchEventData;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mTouchEventQueue:Landroid/webkit/WebView$TouchEventQueue;
    invoke-static {v2}, Landroid/webkit/WebView;->access$6100(Landroid/webkit/WebView;)Landroid/webkit/WebView$TouchEventQueue;

    move-result-object v2

    move-object/from16 v0, v27

    invoke-virtual {v2, v0}, Landroid/webkit/WebView$TouchEventQueue;->enqueueTouchEvent(Landroid/webkit/WebViewCore$TouchEventData;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 8626
    const/16 v2, 0xa

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/webkit/WebView$PrivateHandler;->removeMessages(I)V

    goto/16 :goto_0

    .line 8631
    .end local v27           #ted:Landroid/webkit/WebViewCore$TouchEventData;
    :sswitch_1b
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    if-nez v2, :cond_13

    .line 8632
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #calls: Landroid/webkit/WebView;->hideSoftKeyboard()V
    invoke-static {v2}, Landroid/webkit/WebView;->access$7700(Landroid/webkit/WebView;)V

    goto/16 :goto_0

    .line 8634
    :cond_13
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    const/4 v3, 0x0

    #calls: Landroid/webkit/WebView;->displaySoftKeyboard(Z)V
    invoke-static {v2, v3}, Landroid/webkit/WebView;->access$7500(Landroid/webkit/WebView;Z)V

    goto/16 :goto_0

    .line 8640
    :sswitch_1c
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mFindIsUp:Z
    invoke-static {v2}, Landroid/webkit/WebView;->access$8600(Landroid/webkit/WebView;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mFindCallback:Landroid/webkit/FindActionModeCallback;
    invoke-static {v2}, Landroid/webkit/WebView;->access$8700(Landroid/webkit/WebView;)Landroid/webkit/FindActionModeCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 8641
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mFindCallback:Landroid/webkit/FindActionModeCallback;
    invoke-static {v2}, Landroid/webkit/WebView;->access$8700(Landroid/webkit/WebView;)Landroid/webkit/FindActionModeCallback;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/FindActionModeCallback;->findAll()V

    goto/16 :goto_0

    .line 8646
    :sswitch_1d
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    const/4 v3, 0x2

    #setter for: Landroid/webkit/WebView;->mHeldMotionless:I
    invoke-static {v2, v3}, Landroid/webkit/WebView;->access$8802(Landroid/webkit/WebView;I)I

    .line 8647
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->invalidate()V

    .line 8651
    :sswitch_1e
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mTouchMode:I
    invoke-static {v2}, Landroid/webkit/WebView;->access$5200(Landroid/webkit/WebView;)I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mHeldMotionless:I
    invoke-static {v2}, Landroid/webkit/WebView;->access$8800(Landroid/webkit/WebView;)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 8653
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollDefaultDelay()I

    move-result v3

    const/4 v4, 0x0

    #calls: Landroid/webkit/WebView;->awakenScrollBars(IZ)Z
    invoke-static {v2, v3, v4}, Landroid/webkit/WebView;->access$8900(Landroid/webkit/WebView;IZ)Z

    .line 8655
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    iget-object v2, v2, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    iget-object v3, v3, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v4, 0x9

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollDefaultDelay()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 8662
    :sswitch_1f
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg2:I

    #calls: Landroid/webkit/WebView;->doMotionUp(II)V
    invoke-static {v2, v3, v4}, Landroid/webkit/WebView;->access$9000(Landroid/webkit/WebView;II)V

    goto/16 :goto_0

    .line 8666
    :sswitch_20
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_14

    const/4 v2, 0x1

    :goto_4
    invoke-virtual {v3, v2}, Landroid/webkit/WebView;->setKeepScreenOn(Z)V

    goto/16 :goto_0

    :cond_14
    const/4 v2, 0x0

    goto :goto_4

    .line 8670
    :sswitch_21
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v16, v0

    .line 8672
    .local v16, layerId:I
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v30, v0

    check-cast v30, Ljava/lang/String;

    .line 8673
    .local v30, url:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mHTML5VideoViewProxy:Landroid/webkit/HTML5VideoViewProxy;
    invoke-static {v2}, Landroid/webkit/WebView;->access$9100(Landroid/webkit/WebView;)Landroid/webkit/HTML5VideoViewProxy;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 8674
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mHTML5VideoViewProxy:Landroid/webkit/HTML5VideoViewProxy;
    invoke-static {v2}, Landroid/webkit/WebView;->access$9100(Landroid/webkit/WebView;)Landroid/webkit/HTML5VideoViewProxy;

    move-result-object v2

    move/from16 v0, v16

    move-object/from16 v1, v30

    invoke-virtual {v2, v0, v1}, Landroid/webkit/HTML5VideoViewProxy;->enterFullScreenVideo(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 8679
    .end local v16           #layerId:I
    .end local v30           #url:Ljava/lang/String;
    :sswitch_22
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v31, v0

    check-cast v31, Landroid/view/View;

    .line 8680
    .local v31, view:Landroid/view/View;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v21, v0

    .line 8681
    .local v21, orientation:I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v20, v0

    .line 8683
    .local v20, npp:I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #calls: Landroid/webkit/WebView;->inFullScreenMode()Z
    invoke-static {v2}, Landroid/webkit/WebView;->access$5600(Landroid/webkit/WebView;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 8684
    const-string/jumbo v2, "webview"

    const-string v3, "Should not have another full screen."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8685
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #calls: Landroid/webkit/WebView;->dismissFullScreenMode()V
    invoke-static {v2}, Landroid/webkit/WebView;->access$9200(Landroid/webkit/WebView;)V

    .line 8687
    :cond_15
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    new-instance v3, Landroid/webkit/PluginFullScreenHolder;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move/from16 v0, v21

    move/from16 v1, v20

    invoke-direct {v3, v4, v0, v1}, Landroid/webkit/PluginFullScreenHolder;-><init>(Landroid/webkit/WebView;II)V

    iput-object v3, v2, Landroid/webkit/WebView;->mFullScreenHolder:Landroid/webkit/PluginFullScreenHolder;

    .line 8688
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    iget-object v2, v2, Landroid/webkit/WebView;->mFullScreenHolder:Landroid/webkit/PluginFullScreenHolder;

    move-object/from16 v0, v31

    invoke-virtual {v2, v0}, Landroid/webkit/PluginFullScreenHolder;->setContentView(Landroid/view/View;)V

    .line 8689
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    iget-object v2, v2, Landroid/webkit/WebView;->mFullScreenHolder:Landroid/webkit/PluginFullScreenHolder;

    invoke-virtual {v2}, Landroid/webkit/PluginFullScreenHolder;->show()V

    goto/16 :goto_0

    .line 8694
    .end local v20           #npp:I
    .end local v21           #orientation:I
    .end local v31           #view:Landroid/view/View;
    :sswitch_23
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #calls: Landroid/webkit/WebView;->dismissFullScreenMode()V
    invoke-static {v2}, Landroid/webkit/WebView;->access$9200(Landroid/webkit/WebView;)V

    goto/16 :goto_0

    .line 8698
    :sswitch_24
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #calls: Landroid/webkit/WebView;->inEditingMode()Z
    invoke-static {v2}, Landroid/webkit/WebView;->access$6300(Landroid/webkit/WebView;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 8699
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->nativeClearCursor()V

    .line 8700
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->rebuildWebTextView()V

    goto/16 :goto_0

    .line 8705
    :sswitch_25
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/webkit/WebViewCore$ShowRectData;

    .line 8706
    .local v9, data:Landroid/webkit/WebViewCore$ShowRectData;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mScrollX:I
    invoke-static {v2}, Landroid/webkit/WebView;->access$9300(Landroid/webkit/WebView;)I

    move-result v38

    .line 8707
    .local v38, x:I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    iget v3, v9, Landroid/webkit/WebViewCore$ShowRectData;->mLeft:I

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->contentToViewX(I)I

    move-result v17

    .line 8708
    .local v17, left:I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    iget v3, v9, Landroid/webkit/WebViewCore$ShowRectData;->mWidth:I

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->contentToViewDimension(I)I

    move-result v36

    .line 8709
    .local v36, width:I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    iget v3, v9, Landroid/webkit/WebViewCore$ShowRectData;->mContentWidth:I

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->contentToViewDimension(I)I

    move-result v19

    .line 8710
    .local v19, maxWidth:I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getViewWidth()I

    move-result v34

    .line 8711
    .local v34, viewWidth:I
    move/from16 v0, v36

    move/from16 v1, v34

    if-ge v0, v1, :cond_16

    .line 8713
    div-int/lit8 v2, v36, 0x2

    add-int v2, v2, v17

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mScrollX:I
    invoke-static {v3}, Landroid/webkit/WebView;->access$9400(Landroid/webkit/WebView;)I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v3, v34, 0x2

    sub-int/2addr v2, v3

    add-int v38, v38, v2

    .line 8727
    :goto_5
    const/4 v2, 0x0

    add-int v3, v38, v34

    move/from16 v0, v19

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    sub-int v3, v3, v34

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v38

    .line 8729
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    iget v3, v9, Landroid/webkit/WebViewCore$ShowRectData;->mTop:I

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->contentToViewY(I)I

    move-result v29

    .line 8730
    .local v29, top:I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    iget v3, v9, Landroid/webkit/WebViewCore$ShowRectData;->mHeight:I

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->contentToViewDimension(I)I

    move-result v14

    .line 8731
    .local v14, height:I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    iget v3, v9, Landroid/webkit/WebViewCore$ShowRectData;->mContentHeight:I

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->contentToViewDimension(I)I

    move-result v18

    .line 8732
    .local v18, maxHeight:I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getViewHeight()I

    move-result v32

    .line 8733
    .local v32, viewHeight:I
    move/from16 v0, v29

    int-to-float v2, v0

    iget v3, v9, Landroid/webkit/WebViewCore$ShowRectData;->mYPercentInDoc:F

    int-to-float v4, v14

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iget v3, v9, Landroid/webkit/WebViewCore$ShowRectData;->mYPercentInView:F

    move/from16 v0, v32

    int-to-float v4, v0

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    float-to-int v0, v2

    move/from16 v39, v0

    .line 8744
    .local v39, y:I
    const/4 v2, 0x0

    add-int v3, v39, v32

    move/from16 v0, v18

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    sub-int v3, v3, v32

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v39

    .line 8748
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #calls: Landroid/webkit/WebView;->getVisibleTitleHeightImpl()I
    invoke-static {v3}, Landroid/webkit/WebView;->access$9600(Landroid/webkit/WebView;)I

    move-result v3

    sub-int v3, v39, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v39

    .line 8749
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move/from16 v0, v38

    move/from16 v1, v39

    invoke-virtual {v2, v0, v1}, Landroid/webkit/WebView;->scrollTo(II)V

    goto/16 :goto_0

    .line 8715
    .end local v14           #height:I
    .end local v18           #maxHeight:I
    .end local v29           #top:I
    .end local v32           #viewHeight:I
    .end local v39           #y:I
    :cond_16
    move/from16 v0, v17

    int-to-float v2, v0

    iget v3, v9, Landroid/webkit/WebViewCore$ShowRectData;->mXPercentInDoc:F

    move/from16 v0, v36

    int-to-float v4, v0

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mScrollX:I
    invoke-static {v3}, Landroid/webkit/WebView;->access$9500(Landroid/webkit/WebView;)I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iget v3, v9, Landroid/webkit/WebViewCore$ShowRectData;->mXPercentInView:F

    move/from16 v0, v34

    int-to-float v4, v0

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    float-to-int v2, v2

    add-int v38, v38, v2

    goto/16 :goto_5

    .line 8754
    .end local v9           #data:Landroid/webkit/WebViewCore$ShowRectData;
    .end local v17           #left:I
    .end local v19           #maxWidth:I
    .end local v34           #viewWidth:I
    .end local v36           #width:I
    .end local v38           #x:I
    :sswitch_26
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/Rect;

    invoke-virtual {v3, v2}, Landroid/webkit/WebView;->centerFitRect(Landroid/graphics/Rect;)V

    goto/16 :goto_0

    .line 8758
    :sswitch_27
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    #setter for: Landroid/webkit/WebView;->mHorizontalScrollBarMode:I
    invoke-static {v2, v3}, Landroid/webkit/WebView;->access$9702(Landroid/webkit/WebView;I)I

    .line 8759
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg2:I

    #setter for: Landroid/webkit/WebView;->mVerticalScrollBarMode:I
    invoke-static {v2, v3}, Landroid/webkit/WebView;->access$9802(Landroid/webkit/WebView;I)I

    goto/16 :goto_0

    .line 8763
    :sswitch_28
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mAccessibilityInjector:Landroid/webkit/AccessibilityInjector;
    invoke-static {v2}, Landroid/webkit/WebView;->access$9900(Landroid/webkit/WebView;)Landroid/webkit/AccessibilityInjector;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 8764
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v26, v0

    check-cast v26, Ljava/lang/String;

    .line 8765
    .local v26, selectionString:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mAccessibilityInjector:Landroid/webkit/AccessibilityInjector;
    invoke-static {v2}, Landroid/webkit/WebView;->access$9900(Landroid/webkit/WebView;)Landroid/webkit/AccessibilityInjector;

    move-result-object v2

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Landroid/webkit/AccessibilityInjector;->onSelectionStringChange(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 8771
    .end local v26           #selectionString:Ljava/lang/String;
    :sswitch_29
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v24, v0

    check-cast v24, Ljava/util/ArrayList;

    .line 8772
    .local v24, rects:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/graphics/Rect;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object/from16 v0, v24

    #calls: Landroid/webkit/WebView;->setTouchHighlightRects(Ljava/util/ArrayList;)V
    invoke-static {v2, v0}, Landroid/webkit/WebView;->access$10000(Landroid/webkit/WebView;Ljava/util/ArrayList;)V

    goto/16 :goto_0

    .line 8776
    .end local v24           #rects:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/graphics/Rect;>;"
    :sswitch_2a
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v25, v0

    check-cast v25, Landroid/webkit/WebView$SaveWebArchiveMessage;

    .line 8777
    .local v25, saveMessage:Landroid/webkit/WebView$SaveWebArchiveMessage;
    move-object/from16 v0, v25

    iget-object v2, v0, Landroid/webkit/WebView$SaveWebArchiveMessage;->mCallback:Landroid/webkit/ValueCallback;

    if-eqz v2, :cond_0

    .line 8778
    move-object/from16 v0, v25

    iget-object v2, v0, Landroid/webkit/WebView$SaveWebArchiveMessage;->mCallback:Landroid/webkit/ValueCallback;

    move-object/from16 v0, v25

    iget-object v3, v0, Landroid/webkit/WebView$SaveWebArchiveMessage;->mResultFile:Ljava/lang/String;

    invoke-interface {v2, v3}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 8783
    .end local v25           #saveMessage:Landroid/webkit/WebView$SaveWebArchiveMessage;
    :sswitch_2b
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/webkit/WebViewCore$AutoFillData;

    #setter for: Landroid/webkit/WebView;->mAutoFillData:Landroid/webkit/WebViewCore$AutoFillData;
    invoke-static {v3, v2}, Landroid/webkit/WebView;->access$1102(Landroid/webkit/WebView;Landroid/webkit/WebViewCore$AutoFillData;)Landroid/webkit/WebViewCore$AutoFillData;

    .line 8784
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;
    invoke-static {v2}, Landroid/webkit/WebView;->access$1200(Landroid/webkit/WebView;)Landroid/webkit/WebTextView;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 8785
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;
    invoke-static {v2}, Landroid/webkit/WebView;->access$1200(Landroid/webkit/WebView;)Landroid/webkit/WebTextView;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mAutoFillData:Landroid/webkit/WebViewCore$AutoFillData;
    invoke-static {v3}, Landroid/webkit/WebView;->access$1100(Landroid/webkit/WebView;)Landroid/webkit/WebViewCore$AutoFillData;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/WebViewCore$AutoFillData;->getQueryId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/webkit/WebTextView;->setAutoFillable(I)V

    .line 8786
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->rebuildWebTextView()V

    goto/16 :goto_0

    .line 8791
    :sswitch_2c
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;
    invoke-static {v2}, Landroid/webkit/WebView;->access$1200(Landroid/webkit/WebView;)Landroid/webkit/WebTextView;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 8794
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;
    invoke-static {v2}, Landroid/webkit/WebView;->access$1200(Landroid/webkit/WebView;)Landroid/webkit/WebTextView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/webkit/WebTextView;->setAdapterCustom(Landroid/webkit/WebTextView$AutoCompleteAdapter;)V

    goto/16 :goto_0

    .line 8799
    :sswitch_2d
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg2:I

    #calls: Landroid/webkit/WebView;->nativeSelectAt(II)V
    invoke-static {v2, v3, v4}, Landroid/webkit/WebView;->access$10100(Landroid/webkit/WebView;II)V

    goto/16 :goto_0

    .line 8803
    :sswitch_2e
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v35

    .line 8804
    .local v35, webSettings:Landroid/webkit/WebSettings;
    sget-object v2, Landroid/webkit/WebSettings$RenderPriority;->NORMAL:Landroid/webkit/WebSettings$RenderPriority;

    move-object/from16 v0, v35

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setRenderPriority(Landroid/webkit/WebSettings$RenderPriority;)V

    goto/16 :goto_1

    .line 8369
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_5
        0x4 -> :sswitch_6
        0x5 -> :sswitch_7
        0x6 -> :sswitch_17
        0x8 -> :sswitch_1d
        0x9 -> :sswitch_1e
        0xa -> :sswitch_2
        0xb -> :sswitch_3
        0x65 -> :sswitch_8
        0x69 -> :sswitch_c
        0x6a -> :sswitch_14
        0x6b -> :sswitch_d
        0x6c -> :sswitch_e
        0x6d -> :sswitch_9
        0x6e -> :sswitch_13
        0x6f -> :sswitch_15
        0x70 -> :sswitch_10
        0x71 -> :sswitch_25
        0x72 -> :sswitch_18
        0x73 -> :sswitch_1a
        0x74 -> :sswitch_19
        0x75 -> :sswitch_16
        0x76 -> :sswitch_1b
        0x77 -> :sswitch_1f
        0x78 -> :sswitch_22
        0x79 -> :sswitch_23
        0x7a -> :sswitch_24
        0x7b -> :sswitch_b
        0x7c -> :sswitch_11
        0x7d -> :sswitch_12
        0x7e -> :sswitch_1c
        0x7f -> :sswitch_26
        0x80 -> :sswitch_f
        0x81 -> :sswitch_27
        0x82 -> :sswitch_28
        0x83 -> :sswitch_29
        0x84 -> :sswitch_2a
        0x85 -> :sswitch_2b
        0x86 -> :sswitch_2c
        0x87 -> :sswitch_2d
        0x88 -> :sswitch_20
        0x89 -> :sswitch_21
        0x8a -> :sswitch_4
        0x8b -> :sswitch_a
        0x8c -> :sswitch_2e
    .end sparse-switch
.end method

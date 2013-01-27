.class public Landroid/widget/MiuiCursorController$InsertionPointCursorController;
.super Landroid/widget/MiuiCursorController;
.source "MiuiCursorController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/MiuiCursorController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InsertionPointCursorController"
.end annotation


# instance fields
.field private mClipboardPanel:Landroid/widget/MiuiCursorController$FloatPanelViewController;

.field private mCoords:[I

.field private final mHandle:Landroid/widget/MiuiCursorController$MiuiHandleView;

.field private mPanel:Landroid/widget/MiuiCursorController$FloatPanelViewController;

.field private mPreviousDownTime:J

.field mShowOnOneShot:Z

.field private mTextOffset:I


# direct methods
.method constructor <init>(Landroid/widget/TextView;Landroid/content/Context;)V
    .locals 3
    .parameter "owner"
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 347
    invoke-direct {p0, p1, p2}, Landroid/widget/MiuiCursorController;-><init>(Landroid/widget/TextView;Landroid/content/Context;)V

    .line 344
    const/4 v1, 0x2

    new-array v1, v1, [I

    iput-object v1, p0, Landroid/widget/MiuiCursorController$InsertionPointCursorController;->mCoords:[I

    .line 389
    iput-boolean v2, p0, Landroid/widget/MiuiCursorController$InsertionPointCursorController;->mShowOnOneShot:Z

    .line 348
    iget-object v1, p0, Landroid/widget/MiuiCursorController$InsertionPointCursorController;->mOwner:Landroid/widget/TextView;

    invoke-virtual {p0, v1, v2, p0}, Landroid/widget/MiuiCursorController$InsertionPointCursorController;->initHandleView(Landroid/widget/TextView;ILandroid/widget/MiuiCursorController;)Landroid/widget/MiuiCursorController$MiuiHandleView;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/MiuiCursorController$InsertionPointCursorController;->mHandle:Landroid/widget/MiuiCursorController$MiuiHandleView;

    .line 349
    const v1, 0x6030033

    invoke-virtual {p0, v1}, Landroid/widget/MiuiCursorController$InsertionPointCursorController;->createFloatPanelViewController(I)Landroid/widget/MiuiCursorController$FloatPanelViewController;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/MiuiCursorController$InsertionPointCursorController;->mPanel:Landroid/widget/MiuiCursorController$FloatPanelViewController;

    .line 350
    const v1, 0x6030030

    invoke-virtual {p0, v1}, Landroid/widget/MiuiCursorController$InsertionPointCursorController;->createFloatPanelViewController(I)Landroid/widget/MiuiCursorController$FloatPanelViewController;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/MiuiCursorController$InsertionPointCursorController;->mClipboardPanel:Landroid/widget/MiuiCursorController$FloatPanelViewController;

    .line 351
    new-instance v0, Landroid/widget/MiuiCursorController$InsertionPointCursorController$1;

    invoke-direct {v0, p0}, Landroid/widget/MiuiCursorController$InsertionPointCursorController$1;-><init>(Landroid/widget/MiuiCursorController$InsertionPointCursorController;)V

    .line 358
    .local v0, l:Landroid/view/View$OnClickListener;
    iget-object v1, p0, Landroid/widget/MiuiCursorController$InsertionPointCursorController;->mPanel:Landroid/widget/MiuiCursorController$FloatPanelViewController;

    const v2, 0x60b0019

    invoke-virtual {v1, v2, v0}, Landroid/widget/MiuiCursorController$FloatPanelViewController;->setButtonOnClickListener(ILandroid/view/View$OnClickListener;)V

    .line 359
    iget-object v1, p0, Landroid/widget/MiuiCursorController$InsertionPointCursorController;->mPanel:Landroid/widget/MiuiCursorController$FloatPanelViewController;

    const v2, 0x60b001a

    invoke-virtual {v1, v2, v0}, Landroid/widget/MiuiCursorController$FloatPanelViewController;->setButtonOnClickListener(ILandroid/view/View$OnClickListener;)V

    .line 360
    iget-object v1, p0, Landroid/widget/MiuiCursorController$InsertionPointCursorController;->mPanel:Landroid/widget/MiuiCursorController$FloatPanelViewController;

    const v2, 0x60b0017

    invoke-virtual {v1, v2, v0}, Landroid/widget/MiuiCursorController$FloatPanelViewController;->setButtonOnClickListener(ILandroid/view/View$OnClickListener;)V

    .line 361
    iget-object v1, p0, Landroid/widget/MiuiCursorController$InsertionPointCursorController;->mPanel:Landroid/widget/MiuiCursorController$FloatPanelViewController;

    const v2, 0x60b0018

    invoke-virtual {v1, v2, v0}, Landroid/widget/MiuiCursorController$FloatPanelViewController;->setButtonOnClickListener(ILandroid/view/View$OnClickListener;)V

    .line 362
    return-void
.end method

.method static synthetic access$100(Landroid/widget/MiuiCursorController$InsertionPointCursorController;)Landroid/widget/MiuiCursorController$FloatPanelViewController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 335
    iget-object v0, p0, Landroid/widget/MiuiCursorController$InsertionPointCursorController;->mPanel:Landroid/widget/MiuiCursorController$FloatPanelViewController;

    return-object v0
.end method

.method private showInsertionPanel()V
    .locals 2

    .prologue
    .line 515
    const-string v0, "MiuiCursorController"

    const-string v1, ">need InsertPanel, to show Panel and hide handle"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    iget-object v0, p0, Landroid/widget/MiuiCursorController$InsertionPointCursorController;->mPanel:Landroid/widget/MiuiCursorController$FloatPanelViewController;

    invoke-virtual {v0}, Landroid/widget/MiuiCursorController$FloatPanelViewController;->showAndUpdatePositionAsync()V

    .line 517
    iget-object v0, p0, Landroid/widget/MiuiCursorController$InsertionPointCursorController;->mHandle:Landroid/widget/MiuiCursorController$MiuiHandleView;

    invoke-virtual {v0}, Landroid/widget/MiuiCursorController$MiuiHandleView;->invisible()V

    .line 518
    iget-object v0, p0, Landroid/widget/MiuiCursorController$InsertionPointCursorController;->mOwner:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionController()Landroid/widget/MiuiCursorController;

    move-result-object v0

    iget v1, p0, Landroid/widget/MiuiCursorController$InsertionPointCursorController;->mTextOffset:I

    invoke-virtual {v0, v1}, Landroid/widget/MiuiCursorController;->setMinMaxOffset(I)V

    .line 519
    return-void
.end method


# virtual methods
.method public computePanelPosition([I)V
    .locals 1
    .parameter "pos"

    .prologue
    .line 460
    iget-object v0, p0, Landroid/widget/MiuiCursorController$InsertionPointCursorController;->mHandle:Landroid/widget/MiuiCursorController$MiuiHandleView;

    invoke-virtual {v0, p1}, Landroid/widget/MiuiCursorController$MiuiHandleView;->getHotspotLocationOnScreen([I)V

    .line 461
    return-void
.end method

.method public computePanelPositionOnBottom()I
    .locals 2

    .prologue
    .line 466
    iget-object v0, p0, Landroid/widget/MiuiCursorController$InsertionPointCursorController;->mHandle:Landroid/widget/MiuiCursorController$MiuiHandleView;

    iget-object v1, p0, Landroid/widget/MiuiCursorController$InsertionPointCursorController;->mCoords:[I

    invoke-virtual {v0, v1}, Landroid/widget/MiuiCursorController$MiuiHandleView;->getHotspotLocationOnScreen([I)V

    .line 467
    iget-object v0, p0, Landroid/widget/MiuiCursorController$InsertionPointCursorController;->mCoords:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method public hide()V
    .locals 2

    .prologue
    .line 427
    const-string v0, "MiuiCursorController"

    const-string v1, "InsertionPointCursorController is hidden including all panels and handle"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    iget-object v0, p0, Landroid/widget/MiuiCursorController$InsertionPointCursorController;->mPanel:Landroid/widget/MiuiCursorController$FloatPanelViewController;

    invoke-virtual {v0}, Landroid/widget/MiuiCursorController$FloatPanelViewController;->hide()V

    .line 429
    iget-object v0, p0, Landroid/widget/MiuiCursorController$InsertionPointCursorController;->mClipboardPanel:Landroid/widget/MiuiCursorController$FloatPanelViewController;

    invoke-virtual {v0}, Landroid/widget/MiuiCursorController$FloatPanelViewController;->hide()V

    .line 430
    iget-object v0, p0, Landroid/widget/MiuiCursorController$InsertionPointCursorController;->mHandle:Landroid/widget/MiuiCursorController$MiuiHandleView;

    invoke-virtual {v0}, Landroid/widget/MiuiCursorController$MiuiHandleView;->hide()V

    .line 431
    return-void
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 434
    iget-object v0, p0, Landroid/widget/MiuiCursorController$InsertionPointCursorController;->mHandle:Landroid/widget/MiuiCursorController$MiuiHandleView;

    invoke-virtual {v0}, Landroid/widget/MiuiCursorController$MiuiHandleView;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/MiuiCursorController$InsertionPointCursorController;->mPanel:Landroid/widget/MiuiCursorController$FloatPanelViewController;

    invoke-virtual {v0}, Landroid/widget/MiuiCursorController$FloatPanelViewController;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/MiuiCursorController$InsertionPointCursorController;->mClipboardPanel:Landroid/widget/MiuiCursorController$FloatPanelViewController;

    invoke-virtual {v0}, Landroid/widget/MiuiCursorController$FloatPanelViewController;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method onClipBoardPancelClick()V
    .locals 1

    .prologue
    .line 365
    iget-object v0, p0, Landroid/widget/MiuiCursorController$InsertionPointCursorController;->mClipboardPanel:Landroid/widget/MiuiCursorController$FloatPanelViewController;

    invoke-virtual {v0}, Landroid/widget/MiuiCursorController$FloatPanelViewController;->hide()V

    .line 366
    return-void
.end method

.method public onHandleTouchEvent(Landroid/widget/MiuiCursorController$MiuiHandleView;Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "handle"
    .parameter "ev"

    .prologue
    .line 486
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 512
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 488
    :pswitch_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/widget/MiuiCursorController$InsertionPointCursorController;->mPreviousDownTime:J

    goto :goto_0

    .line 493
    :pswitch_1
    iget-object v0, p0, Landroid/widget/MiuiCursorController$InsertionPointCursorController;->mPanel:Landroid/widget/MiuiCursorController$FloatPanelViewController;

    invoke-virtual {v0}, Landroid/widget/MiuiCursorController$FloatPanelViewController;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Landroid/widget/MiuiCursorController$InsertionPointCursorController;->mPreviousDownTime:J

    sub-long/2addr v0, v2

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v2

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1

    .line 495
    iget-object v0, p0, Landroid/widget/MiuiCursorController$InsertionPointCursorController;->mPanel:Landroid/widget/MiuiCursorController$FloatPanelViewController;

    invoke-virtual {v0}, Landroid/widget/MiuiCursorController$FloatPanelViewController;->hide()V

    goto :goto_0

    .line 498
    :cond_1
    const-string v0, "MiuiCursorController"

    const-string v1, "InsertionPointCursorController onHandleTouchEvent() for ACTION_UP"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    iget-object v0, p0, Landroid/widget/MiuiCursorController$InsertionPointCursorController;->mOwner:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->needInsertPanel()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 500
    invoke-direct {p0}, Landroid/widget/MiuiCursorController$InsertionPointCursorController;->showInsertionPanel()V

    goto :goto_0

    .line 506
    :pswitch_2
    iget-object v0, p0, Landroid/widget/MiuiCursorController$InsertionPointCursorController;->mPanel:Landroid/widget/MiuiCursorController$FloatPanelViewController;

    invoke-virtual {v0}, Landroid/widget/MiuiCursorController$FloatPanelViewController;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 507
    iget-object v0, p0, Landroid/widget/MiuiCursorController$InsertionPointCursorController;->mPanel:Landroid/widget/MiuiCursorController$FloatPanelViewController;

    invoke-virtual {v0}, Landroid/widget/MiuiCursorController$FloatPanelViewController;->hide()V

    goto :goto_0

    .line 486
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 474
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 481
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 476
    :pswitch_0
    iget-object v0, p0, Landroid/widget/MiuiCursorController$InsertionPointCursorController;->mPanel:Landroid/widget/MiuiCursorController$FloatPanelViewController;

    invoke-virtual {v0}, Landroid/widget/MiuiCursorController$FloatPanelViewController;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 477
    invoke-virtual {p0}, Landroid/widget/MiuiCursorController$InsertionPointCursorController;->hide()V

    goto :goto_0

    .line 474
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method setupClipBoardPanel(Landroid/content/ClipData;Landroid/view/View$OnClickListener;)V
    .locals 11
    .parameter "clip"
    .parameter "l"

    .prologue
    const/4 v10, -0x1

    const/4 v9, -0x2

    .line 369
    iget-object v7, p0, Landroid/widget/MiuiCursorController$InsertionPointCursorController;->mClipboardPanel:Landroid/widget/MiuiCursorController$FloatPanelViewController;

    const v8, 0x60b001b

    invoke-virtual {v7, v8}, Landroid/widget/MiuiCursorController$FloatPanelViewController;->getElement(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    .line 370
    .local v5, ll:Landroid/widget/LinearLayout;
    invoke-virtual {v5}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 371
    invoke-virtual {p1}, Landroid/content/ClipData;->getItemCount()I

    move-result v0

    .line 372
    .local v0, historyCount:I
    const/4 v7, 0x3

    invoke-static {v7, v0}, Ljava/lang/Math;->min(II)I

    move-result v7

    add-int/lit8 v3, v7, -0x1

    .line 373
    .local v3, lastIndex:I
    iget-object v7, p0, Landroid/widget/MiuiCursorController$InsertionPointCursorController;->mContext:Landroid/content/Context;

    const-string v8, "layout_inflater"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    .line 374
    .local v4, layoutInflater:Landroid/view/LayoutInflater;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-gt v1, v3, :cond_1

    .line 375
    const v7, 0x6030031

    const/4 v8, 0x0

    invoke-virtual {v4, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 376
    .local v6, tv:Landroid/widget/TextView;
    invoke-virtual {p1, v1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v7

    iget-object v8, p0, Landroid/widget/MiuiCursorController$InsertionPointCursorController;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v8}, Landroid/content/ClipData$Item;->coerceToText(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 377
    invoke-virtual {v6, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 378
    new-instance v7, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v7, v10, v9}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 379
    if-eq v1, v3, :cond_0

    .line 380
    new-instance v2, Landroid/widget/ImageView;

    iget-object v7, p0, Landroid/widget/MiuiCursorController$InsertionPointCursorController;->mContext:Landroid/content/Context;

    invoke-direct {v2, v7}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 381
    .local v2, im:Landroid/widget/ImageView;
    const v7, 0x602010c

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 382
    sget-object v7, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 383
    new-instance v7, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v7, v10, v9}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v2, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 374
    .end local v2           #im:Landroid/widget/ImageView;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 386
    .end local v6           #tv:Landroid/widget/TextView;
    :cond_1
    iget-object v7, p0, Landroid/widget/MiuiCursorController$InsertionPointCursorController;->mClipboardPanel:Landroid/widget/MiuiCursorController$FloatPanelViewController;

    invoke-virtual {v7}, Landroid/widget/MiuiCursorController$FloatPanelViewController;->showAndUpdatePositionAsync()V

    .line 387
    return-void
.end method

.method public show()V
    .locals 11

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 392
    const/4 v8, 0x4

    new-array v0, v8, [I

    fill-array-data v0, :array_0

    .line 396
    .local v0, buttons:[I
    const/4 v8, 0x3

    new-array v4, v8, [I

    fill-array-data v4, :array_1

    .line 399
    .local v4, separators:[I
    iget-object v8, p0, Landroid/widget/MiuiCursorController$InsertionPointCursorController;->mOwner:Landroid/widget/TextView;

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->getFloatPanelShowHides([I)Ljava/util/ArrayList;

    move-result-object v5

    .line 400
    .local v5, showHides:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    const-string v8, "MiuiCursorController"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "InsertionPointCursorController show:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v5}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    iget-object v8, p0, Landroid/widget/MiuiCursorController$InsertionPointCursorController;->mPanel:Landroid/widget/MiuiCursorController$FloatPanelViewController;

    invoke-virtual {v8, v0, v4, v5}, Landroid/widget/MiuiCursorController$FloatPanelViewController;->showHideButtons([I[ILjava/util/ArrayList;)V

    .line 403
    const-string v8, "MiuiCursorController"

    const-string v9, "InsertionPointCursorController is shown with hidden panels and shown handle"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    iget-object v8, p0, Landroid/widget/MiuiCursorController$InsertionPointCursorController;->mPanel:Landroid/widget/MiuiCursorController$FloatPanelViewController;

    invoke-virtual {v8}, Landroid/widget/MiuiCursorController$FloatPanelViewController;->hide()V

    .line 405
    iget-object v8, p0, Landroid/widget/MiuiCursorController$InsertionPointCursorController;->mClipboardPanel:Landroid/widget/MiuiCursorController$FloatPanelViewController;

    invoke-virtual {v8}, Landroid/widget/MiuiCursorController$FloatPanelViewController;->hide()V

    .line 407
    iget-object v8, p0, Landroid/widget/MiuiCursorController$InsertionPointCursorController;->mOwner:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v2

    .line 408
    .local v2, offset:I
    iget v8, p0, Landroid/widget/MiuiCursorController$InsertionPointCursorController;->mTextOffset:I

    if-eq v2, v8, :cond_0

    iget-object v8, p0, Landroid/widget/MiuiCursorController$InsertionPointCursorController;->mOwner:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->length()I

    move-result v8

    if-gtz v8, :cond_2

    :cond_0
    move v3, v7

    .line 409
    .local v3, oneShot:Z
    :goto_0
    iput v2, p0, Landroid/widget/MiuiCursorController$InsertionPointCursorController;->mTextOffset:I

    .line 411
    iget-object v8, p0, Landroid/widget/MiuiCursorController$InsertionPointCursorController;->mOwner:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->hasMagnifierController()Z

    move-result v8

    if-eqz v8, :cond_3

    iget-object v8, p0, Landroid/widget/MiuiCursorController$InsertionPointCursorController;->mOwner:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getMagnifierController()Landroid/widget/MagnifierController;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/MagnifierController;->isShowing()Z

    move-result v8

    if-eqz v8, :cond_3

    move v1, v7

    .line 412
    .local v1, isShowMag:Z
    :goto_1
    iget-object v9, p0, Landroid/widget/MiuiCursorController$InsertionPointCursorController;->mHandle:Landroid/widget/MiuiCursorController$MiuiHandleView;

    if-nez v1, :cond_4

    if-nez v3, :cond_4

    move v8, v7

    :goto_2
    invoke-virtual {v9, v8}, Landroid/widget/MiuiCursorController$MiuiHandleView;->setVisible(Z)V

    .line 413
    iget-object v8, p0, Landroid/widget/MiuiCursorController$InsertionPointCursorController;->mHandle:Landroid/widget/MiuiCursorController$MiuiHandleView;

    invoke-virtual {v8}, Landroid/widget/MiuiCursorController$MiuiHandleView;->show()V

    .line 414
    if-eqz v3, :cond_1

    if-nez v1, :cond_1

    .line 415
    const-string v8, "MiuiCursorController"

    const-string v9, "Show InsertionPointCursorController in one shot context"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    iget-object v8, p0, Landroid/widget/MiuiCursorController$InsertionPointCursorController;->mOwner:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->needInsertPanel()Z

    move-result v8

    if-eqz v8, :cond_5

    iget-boolean v8, p0, Landroid/widget/MiuiCursorController$InsertionPointCursorController;->mShowOnOneShot:Z

    if-eqz v8, :cond_5

    .line 417
    invoke-direct {p0}, Landroid/widget/MiuiCursorController$InsertionPointCursorController;->showInsertionPanel()V

    .line 422
    :goto_3
    iget-boolean v8, p0, Landroid/widget/MiuiCursorController$InsertionPointCursorController;->mShowOnOneShot:Z

    if-nez v8, :cond_6

    :goto_4
    iput-boolean v7, p0, Landroid/widget/MiuiCursorController$InsertionPointCursorController;->mShowOnOneShot:Z

    .line 424
    :cond_1
    return-void

    .end local v1           #isShowMag:Z
    .end local v3           #oneShot:Z
    :cond_2
    move v3, v6

    .line 408
    goto :goto_0

    .restart local v3       #oneShot:Z
    :cond_3
    move v1, v6

    .line 411
    goto :goto_1

    .restart local v1       #isShowMag:Z
    :cond_4
    move v8, v6

    .line 412
    goto :goto_2

    .line 420
    :cond_5
    iget-object v8, p0, Landroid/widget/MiuiCursorController$InsertionPointCursorController;->mHandle:Landroid/widget/MiuiCursorController$MiuiHandleView;

    invoke-virtual {v8}, Landroid/widget/MiuiCursorController$MiuiHandleView;->hide()V

    goto :goto_3

    :cond_6
    move v7, v6

    .line 422
    goto :goto_4

    .line 392
    :array_0
    .array-data 0x4
        0x19t 0x0t 0xbt 0x6t
        0x1at 0x0t 0xbt 0x6t
        0x17t 0x0t 0xbt 0x6t
        0x18t 0x0t 0xbt 0x6t
    .end array-data

    .line 396
    :array_1
    .array-data 0x4
        0x1ct 0x0t 0xbt 0x6t
        0x1dt 0x0t 0xbt 0x6t
        0x1et 0x0t 0xbt 0x6t
    .end array-data
.end method

.method public updatePosition()V
    .locals 3

    .prologue
    .line 438
    iget-object v0, p0, Landroid/widget/MiuiCursorController$InsertionPointCursorController;->mOwner:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    iput v0, p0, Landroid/widget/MiuiCursorController$InsertionPointCursorController;->mTextOffset:I

    .line 440
    iget v0, p0, Landroid/widget/MiuiCursorController$InsertionPointCursorController;->mTextOffset:I

    if-gez v0, :cond_1

    .line 442
    const-string v0, "MiuiCursorController"

    const-string v1, "Update cursor controller position called with no cursor"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    invoke-virtual {p0}, Landroid/widget/MiuiCursorController$InsertionPointCursorController;->hide()V

    .line 456
    :cond_0
    :goto_0
    return-void

    .line 447
    :cond_1
    iget-object v0, p0, Landroid/widget/MiuiCursorController$InsertionPointCursorController;->mPanel:Landroid/widget/MiuiCursorController$FloatPanelViewController;

    invoke-virtual {v0}, Landroid/widget/MiuiCursorController$FloatPanelViewController;->isShowing()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/widget/MiuiCursorController$InsertionPointCursorController;->mClipboardPanel:Landroid/widget/MiuiCursorController$FloatPanelViewController;

    invoke-virtual {v0}, Landroid/widget/MiuiCursorController$FloatPanelViewController;->isShowing()Z

    move-result v0

    if-nez v0, :cond_2

    .line 448
    iget-object v0, p0, Landroid/widget/MiuiCursorController$InsertionPointCursorController;->mHandle:Landroid/widget/MiuiCursorController$MiuiHandleView;

    iget v1, p0, Landroid/widget/MiuiCursorController$InsertionPointCursorController;->mTextOffset:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/MiuiCursorController$MiuiHandleView;->positionAtCursorOffset(IZ)V

    .line 450
    :cond_2
    iget-object v0, p0, Landroid/widget/MiuiCursorController$InsertionPointCursorController;->mPanel:Landroid/widget/MiuiCursorController$FloatPanelViewController;

    invoke-virtual {v0}, Landroid/widget/MiuiCursorController$FloatPanelViewController;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 451
    iget-object v0, p0, Landroid/widget/MiuiCursorController$InsertionPointCursorController;->mPanel:Landroid/widget/MiuiCursorController$FloatPanelViewController;

    invoke-virtual {v0}, Landroid/widget/MiuiCursorController$FloatPanelViewController;->showAndUpdatePositionAsync()V

    .line 453
    :cond_3
    iget-object v0, p0, Landroid/widget/MiuiCursorController$InsertionPointCursorController;->mClipboardPanel:Landroid/widget/MiuiCursorController$FloatPanelViewController;

    invoke-virtual {v0}, Landroid/widget/MiuiCursorController$FloatPanelViewController;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 454
    iget-object v0, p0, Landroid/widget/MiuiCursorController$InsertionPointCursorController;->mClipboardPanel:Landroid/widget/MiuiCursorController$FloatPanelViewController;

    invoke-virtual {v0}, Landroid/widget/MiuiCursorController$FloatPanelViewController;->showAndUpdatePositionAsync()V

    goto :goto_0
.end method

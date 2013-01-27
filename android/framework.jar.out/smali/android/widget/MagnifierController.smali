.class public Landroid/widget/MagnifierController;
.super Ljava/lang/Object;
.source "MagnifierController.java"


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "MiuiMagnifierController"


# instance fields
.field private mLongClickX:I

.field private mLongClickY:I

.field private mOffset:I

.field private mShowing:Z

.field private final mTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/TextView;)V
    .locals 2
    .parameter "context"
    .parameter "textView"

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/MagnifierController;->mOffset:I

    .line 22
    const-string v0, "MiuiMagnifierController"

    const-string v1, "MagnifierController is created"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    iput-object p2, p0, Landroid/widget/MagnifierController;->mTextView:Landroid/widget/TextView;

    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/MagnifierController;->mShowing:Z

    .line 25
    return-void
.end method

.method private hide()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 36
    iput-boolean v1, p0, Landroid/widget/MagnifierController;->mShowing:Z

    .line 37
    iget-object v0, p0, Landroid/widget/MagnifierController;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 38
    iget-object v0, p0, Landroid/widget/MagnifierController;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 40
    :cond_0
    iget-object v0, p0, Landroid/widget/MagnifierController;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->makeBlinkWrap()V

    .line 41
    return-void
.end method

.method public static isMagnifierEnabled(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    .line 32
    invoke-static {p0}, Lmiui/provider/ExtraSettings$Secure;->showMagnifierWhenInput(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private showMagnifier()V
    .locals 3

    .prologue
    .line 91
    iget-object v0, p0, Landroid/widget/MagnifierController;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->stopBlink()V

    .line 92
    iget-object v0, p0, Landroid/widget/MagnifierController;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SHOW_MAGNIFIER"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 93
    return-void
.end method

.method private updatePosition(Z)V
    .locals 4
    .parameter "isFirst"

    .prologue
    .line 82
    iget-object v1, p0, Landroid/widget/MagnifierController;->mTextView:Landroid/widget/TextView;

    iget v2, p0, Landroid/widget/MagnifierController;->mLongClickX:I

    int-to-float v2, v2

    iget v3, p0, Landroid/widget/MagnifierController;->mLongClickY:I

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v0

    .line 83
    .local v0, offset:I
    iget v1, p0, Landroid/widget/MagnifierController;->mOffset:I

    if-eq v0, v1, :cond_0

    .line 84
    iget-object v1, p0, Landroid/widget/MagnifierController;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextSelection(I)V

    .line 85
    iput v0, p0, Landroid/widget/MagnifierController;->mOffset:I

    .line 86
    invoke-direct {p0}, Landroid/widget/MagnifierController;->showMagnifier()V

    .line 88
    :cond_0
    return-void
.end method


# virtual methods
.method public isShowing()Z
    .locals 1

    .prologue
    .line 52
    iget-boolean v0, p0, Landroid/widget/MagnifierController;->mShowing:Z

    return v0
.end method

.method public onParentChanged()V
    .locals 1

    .prologue
    .line 98
    iget-boolean v0, p0, Landroid/widget/MagnifierController;->mShowing:Z

    if-eqz v0, :cond_0

    .line 99
    invoke-direct {p0}, Landroid/widget/MagnifierController;->showMagnifier()V

    .line 101
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    .line 57
    const/4 v0, 0x0

    .line 59
    .local v0, handled:Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Landroid/widget/MagnifierController;->mLongClickX:I

    .line 60
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Landroid/widget/MagnifierController;->mLongClickY:I

    .line 62
    invoke-virtual {p0}, Landroid/widget/MagnifierController;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 63
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 74
    :goto_0
    iget-object v1, p0, Landroid/widget/MagnifierController;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getInsertionController()Landroid/widget/MiuiCursorController;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1}, Landroid/widget/MiuiCursorController;->onHandleTouchEvent(Landroid/widget/MiuiCursorController$MiuiHandleView;Landroid/view/MotionEvent;)Z

    .line 77
    :cond_0
    return v0

    .line 65
    :pswitch_0
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Landroid/widget/MagnifierController;->updatePosition(Z)V

    .line 66
    const/4 v0, 0x1

    .line 67
    goto :goto_0

    .line 71
    :pswitch_1
    invoke-direct {p0}, Landroid/widget/MagnifierController;->hide()V

    .line 72
    const/4 v0, 0x0

    goto :goto_0

    .line 63
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public show()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 44
    iput-boolean v1, p0, Landroid/widget/MagnifierController;->mShowing:Z

    .line 45
    iget-object v0, p0, Landroid/widget/MagnifierController;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Landroid/widget/MagnifierController;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 48
    :cond_0
    invoke-direct {p0}, Landroid/widget/MagnifierController;->showMagnifier()V

    .line 49
    return-void
.end method

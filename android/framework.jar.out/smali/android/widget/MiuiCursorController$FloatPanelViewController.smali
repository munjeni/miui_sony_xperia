.class Landroid/widget/MiuiCursorController$FloatPanelViewController;
.super Ljava/lang/Object;
.source "MiuiCursorController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/MiuiCursorController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FloatPanelViewController"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mContainer:Landroid/widget/PopupWindow;

.field private mContent:Landroid/widget/FloatPanelView;

.field private mController:Landroid/widget/MiuiCursorController;

.field private mDisplay:Landroid/view/Display;

.field private mPos:[I

.field private mStatusBarHeight:I

.field final synthetic this$0:Landroid/widget/MiuiCursorController;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 211
    const-class v0, Landroid/widget/MiuiCursorController;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Landroid/widget/MiuiCursorController$FloatPanelViewController;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/widget/MiuiCursorController;Landroid/widget/MiuiCursorController;I)V
    .locals 7
    .parameter
    .parameter "controller"
    .parameter "resId"

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x2

    .line 219
    iput-object p1, p0, Landroid/widget/MiuiCursorController$FloatPanelViewController;->this$0:Landroid/widget/MiuiCursorController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 215
    const/4 v2, 0x2

    new-array v2, v2, [I

    iput-object v2, p0, Landroid/widget/MiuiCursorController$FloatPanelViewController;->mPos:[I

    .line 220
    iput-object p2, p0, Landroid/widget/MiuiCursorController$FloatPanelViewController;->mController:Landroid/widget/MiuiCursorController;

    .line 221
    new-instance v2, Landroid/widget/PopupWindow;

    iget-object v3, p1, Landroid/widget/MiuiCursorController;->mContext:Landroid/content/Context;

    const v4, 0x10102c8

    invoke-direct {v2, v3, v6, v4}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v2, p0, Landroid/widget/MiuiCursorController$FloatPanelViewController;->mContainer:Landroid/widget/PopupWindow;

    .line 223
    iget-object v2, p0, Landroid/widget/MiuiCursorController$FloatPanelViewController;->mContainer:Landroid/widget/PopupWindow;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setSplitTouchEnabled(Z)V

    .line 224
    iget-object v2, p0, Landroid/widget/MiuiCursorController$FloatPanelViewController;->mContainer:Landroid/widget/PopupWindow;

    const/16 v3, 0x3ea

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setWindowLayoutType(I)V

    .line 225
    iget-object v2, p1, Landroid/widget/MiuiCursorController;->mContext:Landroid/content/Context;

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 227
    .local v0, layoutInflater:Landroid/view/LayoutInflater;
    invoke-virtual {v0, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FloatPanelView;

    iput-object v2, p0, Landroid/widget/MiuiCursorController$FloatPanelViewController;->mContent:Landroid/widget/FloatPanelView;

    .line 228
    iget-object v2, p0, Landroid/widget/MiuiCursorController$FloatPanelViewController;->mContainer:Landroid/widget/PopupWindow;

    iget-object v3, p0, Landroid/widget/MiuiCursorController$FloatPanelViewController;->mContent:Landroid/widget/FloatPanelView;

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 229
    iget-object v2, p0, Landroid/widget/MiuiCursorController$FloatPanelViewController;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v2, v5, v5}, Landroid/widget/PopupWindow;->setWindowLayoutMode(II)V

    .line 231
    iget-object v2, p1, Landroid/widget/MiuiCursorController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/high16 v3, 0x60a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Landroid/widget/MiuiCursorController$FloatPanelViewController;->mStatusBarHeight:I

    .line 233
    iget-object v2, p1, Landroid/widget/MiuiCursorController;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 234
    .local v1, wm:Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    iput-object v2, p0, Landroid/widget/MiuiCursorController$FloatPanelViewController;->mDisplay:Landroid/view/Display;

    .line 235
    return-void
.end method

.method static synthetic access$000(Landroid/widget/MiuiCursorController$FloatPanelViewController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 211
    invoke-direct {p0}, Landroid/widget/MiuiCursorController$FloatPanelViewController;->updatePosition()V

    return-void
.end method

.method private updatePosition()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 271
    iget-object v4, p0, Landroid/widget/MiuiCursorController$FloatPanelViewController;->mController:Landroid/widget/MiuiCursorController;

    iget-object v5, p0, Landroid/widget/MiuiCursorController$FloatPanelViewController;->mPos:[I

    invoke-virtual {v4, v5}, Landroid/widget/MiuiCursorController;->computePanelPosition([I)V

    .line 272
    iget-object v4, p0, Landroid/widget/MiuiCursorController$FloatPanelViewController;->mPos:[I

    aget v4, v4, v6

    iget-object v5, p0, Landroid/widget/MiuiCursorController$FloatPanelViewController;->mContent:Landroid/widget/FloatPanelView;

    invoke-virtual {v5}, Landroid/widget/FloatPanelView;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int v0, v4, v5

    .line 273
    .local v0, left:I
    iget-object v4, p0, Landroid/widget/MiuiCursorController$FloatPanelViewController;->mPos:[I

    aget v4, v4, v7

    iget-object v5, p0, Landroid/widget/MiuiCursorController$FloatPanelViewController;->mContent:Landroid/widget/FloatPanelView;

    invoke-virtual {v5}, Landroid/widget/FloatPanelView;->getHeight()I

    move-result v5

    sub-int/2addr v4, v5

    iget-object v5, p0, Landroid/widget/MiuiCursorController$FloatPanelViewController;->this$0:Landroid/widget/MiuiCursorController;

    iget-object v5, v5, Landroid/widget/MiuiCursorController;->mOwner:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getLineHeight()I

    move-result v5

    sub-int v2, v4, v5

    .line 274
    .local v2, top:I
    iget v4, p0, Landroid/widget/MiuiCursorController$FloatPanelViewController;->mStatusBarHeight:I

    if-ge v2, v4, :cond_1

    .line 275
    iget-object v4, p0, Landroid/widget/MiuiCursorController$FloatPanelViewController;->mContent:Landroid/widget/FloatPanelView;

    invoke-virtual {v4, v7}, Landroid/widget/FloatPanelView;->setArrow(Z)V

    .line 276
    iget-object v4, p0, Landroid/widget/MiuiCursorController$FloatPanelViewController;->mController:Landroid/widget/MiuiCursorController;

    invoke-virtual {v4}, Landroid/widget/MiuiCursorController;->computePanelPositionOnBottom()I

    move-result v2

    .line 280
    :goto_0
    iget-object v4, p0, Landroid/widget/MiuiCursorController$FloatPanelViewController;->mDisplay:Landroid/view/Display;

    invoke-virtual {v4}, Landroid/view/Display;->getWidth()I

    move-result v1

    .line 281
    .local v1, screenWidth:I
    iget-object v4, p0, Landroid/widget/MiuiCursorController$FloatPanelViewController;->mContent:Landroid/widget/FloatPanelView;

    invoke-virtual {v4}, Landroid/widget/FloatPanelView;->getWidth()I

    move-result v4

    div-int/lit8 v3, v4, 0x2

    .line 282
    .local v3, xpos:I
    if-gez v0, :cond_2

    .line 283
    add-int/2addr v3, v0

    .line 287
    :cond_0
    :goto_1
    iget-object v4, p0, Landroid/widget/MiuiCursorController$FloatPanelViewController;->mContent:Landroid/widget/FloatPanelView;

    invoke-virtual {v4, v3}, Landroid/widget/FloatPanelView;->setArrowPos(I)V

    .line 288
    iget-object v4, p0, Landroid/widget/MiuiCursorController$FloatPanelViewController;->mContainer:Landroid/widget/PopupWindow;

    iget-object v5, p0, Landroid/widget/MiuiCursorController$FloatPanelViewController;->mContent:Landroid/widget/FloatPanelView;

    invoke-virtual {v5}, Landroid/widget/FloatPanelView;->getWidth()I

    move-result v5

    iget-object v6, p0, Landroid/widget/MiuiCursorController$FloatPanelViewController;->mContent:Landroid/widget/FloatPanelView;

    invoke-virtual {v6}, Landroid/widget/FloatPanelView;->getHeight()I

    move-result v6

    invoke-virtual {v4, v0, v2, v5, v6}, Landroid/widget/PopupWindow;->update(IIII)V

    .line 289
    return-void

    .line 278
    .end local v1           #screenWidth:I
    .end local v3           #xpos:I
    :cond_1
    iget-object v4, p0, Landroid/widget/MiuiCursorController$FloatPanelViewController;->mContent:Landroid/widget/FloatPanelView;

    invoke-virtual {v4, v6}, Landroid/widget/FloatPanelView;->setArrow(Z)V

    goto :goto_0

    .line 284
    .restart local v1       #screenWidth:I
    .restart local v3       #xpos:I
    :cond_2
    iget-object v4, p0, Landroid/widget/MiuiCursorController$FloatPanelViewController;->mContent:Landroid/widget/FloatPanelView;

    invoke-virtual {v4}, Landroid/widget/FloatPanelView;->getWidth()I

    move-result v4

    add-int/2addr v4, v0

    if-le v4, v1, :cond_0

    .line 285
    iget-object v4, p0, Landroid/widget/MiuiCursorController$FloatPanelViewController;->mContent:Landroid/widget/FloatPanelView;

    invoke-virtual {v4}, Landroid/widget/FloatPanelView;->getWidth()I

    move-result v4

    add-int/2addr v4, v0

    sub-int/2addr v4, v1

    add-int/2addr v3, v4

    goto :goto_1
.end method


# virtual methods
.method public getElement(I)Landroid/view/View;
    .locals 1
    .parameter "id"

    .prologue
    .line 312
    iget-object v0, p0, Landroid/widget/MiuiCursorController$FloatPanelViewController;->mContent:Landroid/widget/FloatPanelView;

    invoke-virtual {v0, p1}, Landroid/widget/FloatPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public hide()V
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Landroid/widget/MiuiCursorController$FloatPanelViewController;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 247
    return-void
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Landroid/widget/MiuiCursorController$FloatPanelViewController;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    return v0
.end method

.method public setButtonOnClickListener(ILandroid/view/View$OnClickListener;)V
    .locals 4
    .parameter "id"
    .parameter "l"

    .prologue
    .line 292
    iget-object v1, p0, Landroid/widget/MiuiCursorController$FloatPanelViewController;->mContent:Landroid/widget/FloatPanelView;

    invoke-virtual {v1, p1}, Landroid/widget/FloatPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 293
    .local v0, v:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 294
    invoke-virtual {v0, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 299
    :goto_0
    return-void

    .line 297
    :cond_0
    const-string v1, "MiuiCursorController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FloatPanelView.setButtonHandler, could not find view, id:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public show()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 239
    iget-object v0, p0, Landroid/widget/MiuiCursorController$FloatPanelViewController;->mController:Landroid/widget/MiuiCursorController;

    iget-object v1, p0, Landroid/widget/MiuiCursorController$FloatPanelViewController;->mPos:[I

    invoke-virtual {v0, v1}, Landroid/widget/MiuiCursorController;->computePanelPosition([I)V

    .line 240
    iget-object v0, p0, Landroid/widget/MiuiCursorController$FloatPanelViewController;->mContainer:Landroid/widget/PopupWindow;

    iget-object v1, p0, Landroid/widget/MiuiCursorController$FloatPanelViewController;->this$0:Landroid/widget/MiuiCursorController;

    iget-object v1, v1, Landroid/widget/MiuiCursorController;->mOwner:Landroid/widget/TextView;

    iget-object v2, p0, Landroid/widget/MiuiCursorController$FloatPanelViewController;->mPos:[I

    aget v2, v2, v5

    iget-object v3, p0, Landroid/widget/MiuiCursorController$FloatPanelViewController;->mContent:Landroid/widget/FloatPanelView;

    invoke-virtual {v3}, Landroid/widget/FloatPanelView;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    iget-object v3, p0, Landroid/widget/MiuiCursorController$FloatPanelViewController;->mPos:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    iget-object v4, p0, Landroid/widget/MiuiCursorController$FloatPanelViewController;->mContent:Landroid/widget/FloatPanelView;

    invoke-virtual {v4}, Landroid/widget/FloatPanelView;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    iget-object v4, p0, Landroid/widget/MiuiCursorController$FloatPanelViewController;->this$0:Landroid/widget/MiuiCursorController;

    iget-object v4, v4, Landroid/widget/MiuiCursorController;->mOwner:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getLineHeight()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v0, v1, v5, v2, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 242
    invoke-direct {p0}, Landroid/widget/MiuiCursorController$FloatPanelViewController;->updatePosition()V

    .line 243
    return-void
.end method

.method public showAndUpdatePositionAsync()V
    .locals 2

    .prologue
    .line 254
    const-string v0, "MiuiCursorController"

    const-string v1, "FloatPanelViewController to showAndUpdatePositionAsync"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    invoke-virtual {p0}, Landroid/widget/MiuiCursorController$FloatPanelViewController;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 256
    invoke-virtual {p0}, Landroid/widget/MiuiCursorController$FloatPanelViewController;->show()V

    .line 261
    :cond_0
    iget-object v0, p0, Landroid/widget/MiuiCursorController$FloatPanelViewController;->this$0:Landroid/widget/MiuiCursorController;

    iget-object v0, v0, Landroid/widget/MiuiCursorController;->mOwner:Landroid/widget/TextView;

    new-instance v1, Landroid/widget/MiuiCursorController$FloatPanelViewController$1;

    invoke-direct {v1, p0}, Landroid/widget/MiuiCursorController$FloatPanelViewController$1;-><init>(Landroid/widget/MiuiCursorController$FloatPanelViewController;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    .line 268
    return-void
.end method

.method public showElement(IZ)V
    .locals 4
    .parameter "id"
    .parameter "show"

    .prologue
    .line 302
    iget-object v1, p0, Landroid/widget/MiuiCursorController$FloatPanelViewController;->mContent:Landroid/widget/FloatPanelView;

    invoke-virtual {v1, p1}, Landroid/widget/FloatPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 303
    .local v0, v:Landroid/view/View;
    if-eqz v0, :cond_1

    .line 304
    if-eqz p2, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 309
    :goto_1
    return-void

    .line 304
    :cond_0
    const/16 v1, 0x8

    goto :goto_0

    .line 307
    :cond_1
    const-string v1, "MiuiCursorController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FloatPanelView.showButton, could not find view, id:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public showHideButtons([I[ILjava/util/ArrayList;)V
    .locals 7
    .parameter "buttons"
    .parameter "separators"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I[I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, visibility:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 316
    sget-boolean v3, Landroid/widget/MiuiCursorController$FloatPanelViewController;->$assertionsDisabled:Z

    if-nez v3, :cond_1

    array-length v3, p1

    array-length v6, p2

    add-int/lit8 v6, v6, 0x1

    if-ne v3, v6, :cond_0

    array-length v3, p1

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-eq v3, v6, :cond_1

    :cond_0
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 319
    :cond_1
    aget v6, p1, v5

    invoke-virtual {p3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {p0, v6, v3}, Landroid/widget/MiuiCursorController$FloatPanelViewController;->showElement(IZ)V

    .line 321
    invoke-virtual {p3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_3

    move v1, v4

    .line 322
    .local v1, isFirstShow:Z
    :goto_0
    const/4 v0, 0x1

    .local v0, i:I
    :goto_1
    array-length v3, p1

    if-ge v0, v3, :cond_5

    .line 323
    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    .line 324
    .local v2, show:Ljava/lang/Boolean;
    aget v3, p1, v0

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-virtual {p0, v3, v6}, Landroid/widget/MiuiCursorController$FloatPanelViewController;->showElement(IZ)V

    .line 327
    add-int/lit8 v3, v0, -0x1

    aget v6, p2, v3

    if-nez v1, :cond_4

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_4

    move v3, v4

    :goto_2
    invoke-virtual {p0, v6, v3}, Landroid/widget/MiuiCursorController$FloatPanelViewController;->showElement(IZ)V

    .line 328
    if-eqz v1, :cond_2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 329
    const/4 v1, 0x0

    .line 322
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v0           #i:I
    .end local v1           #isFirstShow:Z
    .end local v2           #show:Ljava/lang/Boolean;
    :cond_3
    move v1, v5

    .line 321
    goto :goto_0

    .restart local v0       #i:I
    .restart local v1       #isFirstShow:Z
    .restart local v2       #show:Ljava/lang/Boolean;
    :cond_4
    move v3, v5

    .line 327
    goto :goto_2

    .line 332
    .end local v2           #show:Ljava/lang/Boolean;
    :cond_5
    return-void
.end method

.class public abstract Lmiui/app/screenelement/elements/ScreenElement;
.super Ljava/lang/Object;
.source "ScreenElement.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/app/screenelement/elements/ScreenElement$1;,
        Lmiui/app/screenelement/elements/ScreenElement$Align;,
        Lmiui/app/screenelement/elements/ScreenElement$AlignV;
    }
.end annotation


# static fields
.field public static final ACTUAL_H:Ljava/lang/String; = "actual_h"

.field public static final ACTUAL_W:Ljava/lang/String; = "actual_w"

.field public static final ACTUAL_X:Ljava/lang/String; = "actual_x"

.field public static final ACTUAL_Y:Ljava/lang/String; = "actual_y"

.field public static final VISIBILITY:Ljava/lang/String; = "visibility"

.field public static final VISIBILITY_FALSE:I = 0x0

.field public static final VISIBILITY_TRUE:I = 0x1


# instance fields
.field private mActualHeightVar:Lmiui/app/screenelement/util/IndexedNumberVariable;

.field private mActualWidthVar:Lmiui/app/screenelement/util/IndexedNumberVariable;

.field protected mAlign:Lmiui/app/screenelement/elements/ScreenElement$Align;

.field protected mAlignV:Lmiui/app/screenelement/elements/ScreenElement$AlignV;

.field protected mCategory:Ljava/lang/String;

.field protected mContext:Lmiui/app/screenelement/ScreenContext;

.field private mFramerateToken:Lmiui/app/screenelement/FramerateTokenList$FramerateToken;

.field protected mHasName:Z

.field protected mIsVisible:Z

.field protected mName:Ljava/lang/String;

.field protected mParent:Lmiui/app/screenelement/elements/ElementGroup;

.field protected mRoot:Lmiui/app/screenelement/ScreenElementRoot;

.field private mShow:Z

.field private mVisibilityExpression:Lmiui/app/screenelement/data/Expression;

.field private mVisibilityVar:Lmiui/app/screenelement/util/IndexedNumberVariable;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/app/screenelement/ScreenContext;Lmiui/app/screenelement/ScreenElementRoot;)V
    .locals 5
    .parameter "ele"
    .parameter "c"
    .parameter "root"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-boolean v3, p0, Lmiui/app/screenelement/elements/ScreenElement;->mShow:Z

    .line 58
    iput-boolean v3, p0, Lmiui/app/screenelement/elements/ScreenElement;->mIsVisible:Z

    .line 75
    iput-object p2, p0, Lmiui/app/screenelement/elements/ScreenElement;->mContext:Lmiui/app/screenelement/ScreenContext;

    .line 76
    iput-object p3, p0, Lmiui/app/screenelement/elements/ScreenElement;->mRoot:Lmiui/app/screenelement/ScreenElementRoot;

    .line 77
    if-eqz p1, :cond_2

    .line 78
    const-string v2, "category"

    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lmiui/app/screenelement/elements/ScreenElement;->mCategory:Ljava/lang/String;

    .line 79
    const-string v2, "name"

    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lmiui/app/screenelement/elements/ScreenElement;->mName:Ljava/lang/String;

    .line 80
    iget-object v2, p0, Lmiui/app/screenelement/elements/ScreenElement;->mName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lmiui/app/screenelement/elements/ScreenElement;->mHasName:Z

    .line 81
    const-string v2, "visibility"

    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 82
    .local v1, vis:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 83
    const-string v2, "false"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 84
    iput-boolean v4, p0, Lmiui/app/screenelement/elements/ScreenElement;->mShow:Z

    .line 91
    :cond_0
    :goto_1
    sget-object v2, Lmiui/app/screenelement/elements/ScreenElement$Align;->LEFT:Lmiui/app/screenelement/elements/ScreenElement$Align;

    iput-object v2, p0, Lmiui/app/screenelement/elements/ScreenElement;->mAlign:Lmiui/app/screenelement/elements/ScreenElement$Align;

    .line 92
    const-string v2, "align"

    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 93
    .local v0, align:Ljava/lang/String;
    const-string v2, "right"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 94
    sget-object v2, Lmiui/app/screenelement/elements/ScreenElement$Align;->RIGHT:Lmiui/app/screenelement/elements/ScreenElement$Align;

    iput-object v2, p0, Lmiui/app/screenelement/elements/ScreenElement;->mAlign:Lmiui/app/screenelement/elements/ScreenElement$Align;

    .line 101
    :cond_1
    :goto_2
    sget-object v2, Lmiui/app/screenelement/elements/ScreenElement$AlignV;->TOP:Lmiui/app/screenelement/elements/ScreenElement$AlignV;

    iput-object v2, p0, Lmiui/app/screenelement/elements/ScreenElement;->mAlignV:Lmiui/app/screenelement/elements/ScreenElement$AlignV;

    .line 102
    const-string v2, "alignV"

    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 103
    const-string v2, "bottom"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 104
    sget-object v2, Lmiui/app/screenelement/elements/ScreenElement$AlignV;->BOTTOM:Lmiui/app/screenelement/elements/ScreenElement$AlignV;

    iput-object v2, p0, Lmiui/app/screenelement/elements/ScreenElement;->mAlignV:Lmiui/app/screenelement/elements/ScreenElement$AlignV;

    .line 111
    .end local v0           #align:Ljava/lang/String;
    .end local v1           #vis:Ljava/lang/String;
    :cond_2
    :goto_3
    return-void

    :cond_3
    move v2, v4

    .line 80
    goto :goto_0

    .line 85
    .restart local v1       #vis:Ljava/lang/String;
    :cond_4
    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 86
    iput-boolean v3, p0, Lmiui/app/screenelement/elements/ScreenElement;->mShow:Z

    goto :goto_1

    .line 88
    :cond_5
    invoke-static {v1}, Lmiui/app/screenelement/data/Expression;->build(Ljava/lang/String;)Lmiui/app/screenelement/data/Expression;

    move-result-object v2

    iput-object v2, p0, Lmiui/app/screenelement/elements/ScreenElement;->mVisibilityExpression:Lmiui/app/screenelement/data/Expression;

    goto :goto_1

    .line 95
    .restart local v0       #align:Ljava/lang/String;
    :cond_6
    const-string v2, "left"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 96
    sget-object v2, Lmiui/app/screenelement/elements/ScreenElement$Align;->LEFT:Lmiui/app/screenelement/elements/ScreenElement$Align;

    iput-object v2, p0, Lmiui/app/screenelement/elements/ScreenElement;->mAlign:Lmiui/app/screenelement/elements/ScreenElement$Align;

    goto :goto_2

    .line 97
    :cond_7
    const-string v2, "center"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 98
    sget-object v2, Lmiui/app/screenelement/elements/ScreenElement$Align;->CENTER:Lmiui/app/screenelement/elements/ScreenElement$Align;

    iput-object v2, p0, Lmiui/app/screenelement/elements/ScreenElement;->mAlign:Lmiui/app/screenelement/elements/ScreenElement$Align;

    goto :goto_2

    .line 105
    :cond_8
    const-string v2, "top"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 106
    sget-object v2, Lmiui/app/screenelement/elements/ScreenElement$AlignV;->TOP:Lmiui/app/screenelement/elements/ScreenElement$AlignV;

    iput-object v2, p0, Lmiui/app/screenelement/elements/ScreenElement;->mAlignV:Lmiui/app/screenelement/elements/ScreenElement$AlignV;

    goto :goto_3

    .line 107
    :cond_9
    const-string v2, "center"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 108
    sget-object v2, Lmiui/app/screenelement/elements/ScreenElement$AlignV;->CENTER:Lmiui/app/screenelement/elements/ScreenElement$AlignV;

    iput-object v2, p0, Lmiui/app/screenelement/elements/ScreenElement;->mAlignV:Lmiui/app/screenelement/elements/ScreenElement$AlignV;

    goto :goto_3
.end method


# virtual methods
.method protected descale(F)F
    .locals 1
    .parameter "v"

    .prologue
    .line 260
    iget-object v0, p0, Lmiui/app/screenelement/elements/ScreenElement;->mRoot:Lmiui/app/screenelement/ScreenElementRoot;

    invoke-virtual {v0}, Lmiui/app/screenelement/ScreenElementRoot;->getScale()F

    move-result v0

    div-float v0, p1, v0

    return v0
.end method

.method public findElement(Ljava/lang/String;)Lmiui/app/screenelement/elements/ScreenElement;
    .locals 1
    .parameter "name"

    .prologue
    .line 128
    iget-object v0, p0, Lmiui/app/screenelement/elements/ScreenElement;->mName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .end local p0
    :goto_0
    return-object p0

    .restart local p0
    :cond_0
    const/4 p0, 0x0

    goto :goto_0
.end method

.method public finish()V
    .locals 0

    .prologue
    .line 174
    return-void
.end method

.method protected getFramerate()F
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lmiui/app/screenelement/elements/ScreenElement;->mFramerateToken:Lmiui/app/screenelement/FramerateTokenList$FramerateToken;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lmiui/app/screenelement/elements/ScreenElement;->mFramerateToken:Lmiui/app/screenelement/FramerateTokenList$FramerateToken;

    invoke-virtual {v0}, Lmiui/app/screenelement/FramerateTokenList$FramerateToken;->getFramerate()F

    move-result v0

    goto :goto_0
.end method

.method protected getLeft(FF)F
    .locals 3
    .parameter "pos"
    .parameter "width"

    .prologue
    .line 236
    const/4 v1, 0x0

    cmpg-float v1, p2, v1

    if-gtz v1, :cond_0

    .line 247
    .end local p1
    :goto_0
    return p1

    .line 238
    .restart local p1
    :cond_0
    move v0, p1

    .line 239
    .local v0, x:F
    sget-object v1, Lmiui/app/screenelement/elements/ScreenElement$1;->$SwitchMap$miui$app$screenelement$elements$ScreenElement$Align:[I

    iget-object v2, p0, Lmiui/app/screenelement/elements/ScreenElement;->mAlign:Lmiui/app/screenelement/elements/ScreenElement$Align;

    invoke-virtual {v2}, Lmiui/app/screenelement/elements/ScreenElement$Align;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :goto_1
    move p1, v0

    .line 247
    goto :goto_0

    .line 241
    :pswitch_0
    const/high16 v1, 0x4000

    div-float v1, p2, v1

    sub-float/2addr v0, v1

    .line 242
    goto :goto_1

    .line 244
    :pswitch_1
    sub-float/2addr v0, p2

    goto :goto_1

    .line 239
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lmiui/app/screenelement/elements/ScreenElement;->mName:Ljava/lang/String;

    return-object v0
.end method

.method protected getTop(FF)F
    .locals 3
    .parameter "pos"
    .parameter "height"

    .prologue
    .line 221
    const/4 v1, 0x0

    cmpg-float v1, p2, v1

    if-gtz v1, :cond_0

    .line 232
    .end local p1
    :goto_0
    return p1

    .line 223
    .restart local p1
    :cond_0
    move v0, p1

    .line 224
    .local v0, y:F
    sget-object v1, Lmiui/app/screenelement/elements/ScreenElement$1;->$SwitchMap$miui$app$screenelement$elements$ScreenElement$AlignV:[I

    iget-object v2, p0, Lmiui/app/screenelement/elements/ScreenElement;->mAlignV:Lmiui/app/screenelement/elements/ScreenElement$AlignV;

    invoke-virtual {v2}, Lmiui/app/screenelement/elements/ScreenElement$AlignV;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :goto_1
    move p1, v0

    .line 232
    goto :goto_0

    .line 226
    :pswitch_0
    const/high16 v1, 0x4000

    div-float v1, p2, v1

    sub-float/2addr v0, v1

    .line 227
    goto :goto_1

    .line 229
    :pswitch_1
    sub-float/2addr v0, p2

    goto :goto_1

    .line 224
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public init()V
    .locals 1

    .prologue
    .line 140
    invoke-virtual {p0}, Lmiui/app/screenelement/elements/ScreenElement;->reset()V

    .line 141
    invoke-virtual {p0}, Lmiui/app/screenelement/elements/ScreenElement;->updateVisibility()V

    .line 142
    invoke-virtual {p0}, Lmiui/app/screenelement/elements/ScreenElement;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lmiui/app/screenelement/elements/ScreenElement;->onVisibilityChange(Z)V

    .line 146
    :cond_0
    return-void
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 119
    iget-boolean v0, p0, Lmiui/app/screenelement/elements/ScreenElement;->mIsVisible:Z

    return v0
.end method

.method protected isVisibleInner()Z
    .locals 4

    .prologue
    .line 189
    iget-boolean v0, p0, Lmiui/app/screenelement/elements/ScreenElement;->mShow:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lmiui/app/screenelement/elements/ScreenElement;->mVisibilityExpression:Lmiui/app/screenelement/data/Expression;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lmiui/app/screenelement/elements/ScreenElement;->mVisibilityExpression:Lmiui/app/screenelement/data/Expression;

    iget-object v1, p0, Lmiui/app/screenelement/elements/ScreenElement;->mContext:Lmiui/app/screenelement/ScreenContext;

    iget-object v1, v1, Lmiui/app/screenelement/ScreenContext;->mVariables:Lmiui/app/screenelement/data/Variables;

    invoke-virtual {v0, v1}, Lmiui/app/screenelement/data/Expression;->evaluate(Lmiui/app/screenelement/data/Variables;)D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-gtz v0, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onTouch(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 196
    const/4 v0, 0x0

    return v0
.end method

.method protected onVisibilityChange(Z)V
    .locals 4
    .parameter "visible"

    .prologue
    .line 158
    iget-boolean v0, p0, Lmiui/app/screenelement/elements/ScreenElement;->mHasName:Z

    if-eqz v0, :cond_1

    .line 159
    iget-object v0, p0, Lmiui/app/screenelement/elements/ScreenElement;->mVisibilityVar:Lmiui/app/screenelement/util/IndexedNumberVariable;

    if-nez v0, :cond_0

    .line 160
    new-instance v0, Lmiui/app/screenelement/util/IndexedNumberVariable;

    iget-object v1, p0, Lmiui/app/screenelement/elements/ScreenElement;->mName:Ljava/lang/String;

    const-string v2, "visibility"

    iget-object v3, p0, Lmiui/app/screenelement/elements/ScreenElement;->mContext:Lmiui/app/screenelement/ScreenContext;

    iget-object v3, v3, Lmiui/app/screenelement/ScreenContext;->mVariables:Lmiui/app/screenelement/data/Variables;

    invoke-direct {v0, v1, v2, v3}, Lmiui/app/screenelement/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Ljava/lang/String;Lmiui/app/screenelement/data/Variables;)V

    iput-object v0, p0, Lmiui/app/screenelement/elements/ScreenElement;->mVisibilityVar:Lmiui/app/screenelement/util/IndexedNumberVariable;

    .line 162
    :cond_0
    iget-object v2, p0, Lmiui/app/screenelement/elements/ScreenElement;->mVisibilityVar:Lmiui/app/screenelement/util/IndexedNumberVariable;

    if-eqz p1, :cond_2

    const-wide/high16 v0, 0x3ff0

    :goto_0
    invoke-virtual {v2, v0, v1}, Lmiui/app/screenelement/util/IndexedNumberVariable;->set(D)V

    .line 164
    :cond_1
    return-void

    .line 162
    :cond_2
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public pause()V
    .locals 0

    .prologue
    .line 167
    return-void
.end method

.method public abstract render(Landroid/graphics/Canvas;)V
.end method

.method protected requestFramerate(F)V
    .locals 2
    .parameter "f"

    .prologue
    const/4 v1, 0x0

    .line 268
    cmpg-float v0, p1, v1

    if-gez v0, :cond_1

    .line 279
    :cond_0
    :goto_0
    return-void

    .line 271
    :cond_1
    iget-object v0, p0, Lmiui/app/screenelement/elements/ScreenElement;->mFramerateToken:Lmiui/app/screenelement/FramerateTokenList$FramerateToken;

    if-nez v0, :cond_2

    .line 273
    cmpl-float v0, p1, v1

    if-eqz v0, :cond_0

    .line 275
    iget-object v0, p0, Lmiui/app/screenelement/elements/ScreenElement;->mContext:Lmiui/app/screenelement/ScreenContext;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/app/screenelement/ScreenContext;->createToken(Ljava/lang/String;)Lmiui/app/screenelement/FramerateTokenList$FramerateToken;

    move-result-object v0

    iput-object v0, p0, Lmiui/app/screenelement/elements/ScreenElement;->mFramerateToken:Lmiui/app/screenelement/FramerateTokenList$FramerateToken;

    .line 277
    :cond_2
    iget-object v0, p0, Lmiui/app/screenelement/elements/ScreenElement;->mFramerateToken:Lmiui/app/screenelement/FramerateTokenList$FramerateToken;

    if-eqz v0, :cond_0

    .line 278
    iget-object v0, p0, Lmiui/app/screenelement/elements/ScreenElement;->mFramerateToken:Lmiui/app/screenelement/FramerateTokenList$FramerateToken;

    invoke-virtual {v0, p1}, Lmiui/app/screenelement/FramerateTokenList$FramerateToken;->requestFramerate(F)V

    goto :goto_0
.end method

.method public requestUpdate()V
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lmiui/app/screenelement/elements/ScreenElement;->mContext:Lmiui/app/screenelement/ScreenContext;

    invoke-virtual {v0}, Lmiui/app/screenelement/ScreenContext;->requestUpdate()V

    .line 252
    return-void
.end method

.method public final reset()V
    .locals 2

    .prologue
    .line 178
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lmiui/app/screenelement/elements/ScreenElement;->reset(J)V

    .line 179
    return-void
.end method

.method public reset(J)V
    .locals 0
    .parameter "time"

    .prologue
    .line 182
    return-void
.end method

.method public resume()V
    .locals 0

    .prologue
    .line 170
    invoke-virtual {p0}, Lmiui/app/screenelement/elements/ScreenElement;->updateVisibility()V

    .line 171
    return-void
.end method

.method protected scale(D)F
    .locals 2
    .parameter "v"

    .prologue
    .line 256
    iget-object v0, p0, Lmiui/app/screenelement/elements/ScreenElement;->mRoot:Lmiui/app/screenelement/ScreenElementRoot;

    invoke-virtual {v0}, Lmiui/app/screenelement/ScreenElementRoot;->getScale()F

    move-result v0

    float-to-double v0, v0

    mul-double/2addr v0, p1

    double-to-float v0, v0

    return v0
.end method

.method protected setActualHeight(D)V
    .locals 4
    .parameter "value"

    .prologue
    .line 210
    iget-boolean v0, p0, Lmiui/app/screenelement/elements/ScreenElement;->mHasName:Z

    if-nez v0, :cond_0

    .line 218
    :goto_0
    return-void

    .line 213
    :cond_0
    iget-object v0, p0, Lmiui/app/screenelement/elements/ScreenElement;->mActualHeightVar:Lmiui/app/screenelement/util/IndexedNumberVariable;

    if-nez v0, :cond_1

    .line 214
    new-instance v0, Lmiui/app/screenelement/util/IndexedNumberVariable;

    iget-object v1, p0, Lmiui/app/screenelement/elements/ScreenElement;->mName:Ljava/lang/String;

    const-string v2, "actual_h"

    iget-object v3, p0, Lmiui/app/screenelement/elements/ScreenElement;->mContext:Lmiui/app/screenelement/ScreenContext;

    iget-object v3, v3, Lmiui/app/screenelement/ScreenContext;->mVariables:Lmiui/app/screenelement/data/Variables;

    invoke-direct {v0, v1, v2, v3}, Lmiui/app/screenelement/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Ljava/lang/String;Lmiui/app/screenelement/data/Variables;)V

    iput-object v0, p0, Lmiui/app/screenelement/elements/ScreenElement;->mActualHeightVar:Lmiui/app/screenelement/util/IndexedNumberVariable;

    .line 216
    :cond_1
    iget-object v0, p0, Lmiui/app/screenelement/elements/ScreenElement;->mActualHeightVar:Lmiui/app/screenelement/util/IndexedNumberVariable;

    invoke-virtual {v0, p1, p2}, Lmiui/app/screenelement/util/IndexedNumberVariable;->set(D)V

    goto :goto_0
.end method

.method protected setActualWidth(D)V
    .locals 4
    .parameter "value"

    .prologue
    .line 200
    iget-boolean v0, p0, Lmiui/app/screenelement/elements/ScreenElement;->mHasName:Z

    if-nez v0, :cond_0

    .line 207
    :goto_0
    return-void

    .line 203
    :cond_0
    iget-object v0, p0, Lmiui/app/screenelement/elements/ScreenElement;->mActualWidthVar:Lmiui/app/screenelement/util/IndexedNumberVariable;

    if-nez v0, :cond_1

    .line 204
    new-instance v0, Lmiui/app/screenelement/util/IndexedNumberVariable;

    iget-object v1, p0, Lmiui/app/screenelement/elements/ScreenElement;->mName:Ljava/lang/String;

    const-string v2, "actual_w"

    iget-object v3, p0, Lmiui/app/screenelement/elements/ScreenElement;->mContext:Lmiui/app/screenelement/ScreenContext;

    iget-object v3, v3, Lmiui/app/screenelement/ScreenContext;->mVariables:Lmiui/app/screenelement/data/Variables;

    invoke-direct {v0, v1, v2, v3}, Lmiui/app/screenelement/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Ljava/lang/String;Lmiui/app/screenelement/data/Variables;)V

    iput-object v0, p0, Lmiui/app/screenelement/elements/ScreenElement;->mActualWidthVar:Lmiui/app/screenelement/util/IndexedNumberVariable;

    .line 206
    :cond_1
    iget-object v0, p0, Lmiui/app/screenelement/elements/ScreenElement;->mActualWidthVar:Lmiui/app/screenelement/util/IndexedNumberVariable;

    invoke-virtual {v0, p1, p2}, Lmiui/app/screenelement/util/IndexedNumberVariable;->set(D)V

    goto :goto_0
.end method

.method public setParent(Lmiui/app/screenelement/elements/ElementGroup;)V
    .locals 0
    .parameter "parent"

    .prologue
    .line 136
    iput-object p1, p0, Lmiui/app/screenelement/elements/ScreenElement;->mParent:Lmiui/app/screenelement/elements/ElementGroup;

    .line 137
    return-void
.end method

.method public show(Z)V
    .locals 0
    .parameter "show"

    .prologue
    .line 114
    iput-boolean p1, p0, Lmiui/app/screenelement/elements/ScreenElement;->mShow:Z

    .line 115
    invoke-virtual {p0}, Lmiui/app/screenelement/elements/ScreenElement;->updateVisibility()V

    .line 116
    return-void
.end method

.method public showCategory(Ljava/lang/String;Z)V
    .locals 1
    .parameter "category"
    .parameter "show"

    .prologue
    .line 123
    iget-object v0, p0, Lmiui/app/screenelement/elements/ScreenElement;->mCategory:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    invoke-virtual {p0, p2}, Lmiui/app/screenelement/elements/ScreenElement;->show(Z)V

    .line 125
    :cond_0
    return-void
.end method

.method public tick(J)V
    .locals 0
    .parameter "currentTime"

    .prologue
    .line 185
    invoke-virtual {p0}, Lmiui/app/screenelement/elements/ScreenElement;->updateVisibility()V

    .line 186
    return-void
.end method

.method protected updateVisibility()V
    .locals 2

    .prologue
    .line 149
    invoke-virtual {p0}, Lmiui/app/screenelement/elements/ScreenElement;->isVisibleInner()Z

    move-result v0

    .line 151
    .local v0, v:Z
    iget-boolean v1, p0, Lmiui/app/screenelement/elements/ScreenElement;->mIsVisible:Z

    if-eq v1, v0, :cond_0

    .line 152
    iput-boolean v0, p0, Lmiui/app/screenelement/elements/ScreenElement;->mIsVisible:Z

    .line 153
    iget-boolean v1, p0, Lmiui/app/screenelement/elements/ScreenElement;->mIsVisible:Z

    invoke-virtual {p0, v1}, Lmiui/app/screenelement/elements/ScreenElement;->onVisibilityChange(Z)V

    .line 155
    :cond_0
    return-void
.end method

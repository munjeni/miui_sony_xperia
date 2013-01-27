.class Lmiui/app/screenelement/elements/AdvancedSlider$Position;
.super Ljava/lang/Object;
.source "AdvancedSlider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/app/screenelement/elements/AdvancedSlider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Position"
.end annotation


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "Position"


# instance fields
.field private mBaseX:Lmiui/app/screenelement/data/Expression;

.field private mBaseY:Lmiui/app/screenelement/data/Expression;

.field final synthetic this$0:Lmiui/app/screenelement/elements/AdvancedSlider;

.field private x:I

.field private y:I


# direct methods
.method public constructor <init>(Lmiui/app/screenelement/elements/AdvancedSlider;Lorg/w3c/dom/Element;Lmiui/app/screenelement/data/Expression;Lmiui/app/screenelement/data/Expression;)V
    .locals 0
    .parameter
    .parameter "node"
    .parameter "baseX"
    .parameter "baseY"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/app/screenelement/ScreenElementLoadException;
        }
    .end annotation

    .prologue
    .line 585
    iput-object p1, p0, Lmiui/app/screenelement/elements/AdvancedSlider$Position;->this$0:Lmiui/app/screenelement/elements/AdvancedSlider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 586
    iput-object p3, p0, Lmiui/app/screenelement/elements/AdvancedSlider$Position;->mBaseX:Lmiui/app/screenelement/data/Expression;

    .line 587
    iput-object p4, p0, Lmiui/app/screenelement/elements/AdvancedSlider$Position;->mBaseY:Lmiui/app/screenelement/data/Expression;

    .line 588
    invoke-virtual {p0, p2}, Lmiui/app/screenelement/elements/AdvancedSlider$Position;->load(Lorg/w3c/dom/Element;)V

    .line 589
    return-void
.end method


# virtual methods
.method public getX()F
    .locals 5

    .prologue
    .line 592
    iget-object v2, p0, Lmiui/app/screenelement/elements/AdvancedSlider$Position;->this$0:Lmiui/app/screenelement/elements/AdvancedSlider;

    iget-object v0, p0, Lmiui/app/screenelement/elements/AdvancedSlider$Position;->mBaseX:Lmiui/app/screenelement/data/Expression;

    if-nez v0, :cond_0

    iget v0, p0, Lmiui/app/screenelement/elements/AdvancedSlider$Position;->x:I

    int-to-double v0, v0

    :goto_0
    invoke-virtual {v2, v0, v1}, Lmiui/app/screenelement/elements/AdvancedSlider;->scale(D)F

    move-result v0

    return v0

    :cond_0
    iget v0, p0, Lmiui/app/screenelement/elements/AdvancedSlider$Position;->x:I

    int-to-double v0, v0

    iget-object v3, p0, Lmiui/app/screenelement/elements/AdvancedSlider$Position;->mBaseX:Lmiui/app/screenelement/data/Expression;

    iget-object v4, p0, Lmiui/app/screenelement/elements/AdvancedSlider$Position;->this$0:Lmiui/app/screenelement/elements/AdvancedSlider;

    iget-object v4, v4, Lmiui/app/screenelement/elements/AdvancedSlider;->mContext:Lmiui/app/screenelement/ScreenContext;

    iget-object v4, v4, Lmiui/app/screenelement/ScreenContext;->mVariables:Lmiui/app/screenelement/data/Variables;

    invoke-virtual {v3, v4}, Lmiui/app/screenelement/data/Expression;->evaluate(Lmiui/app/screenelement/data/Variables;)D

    move-result-wide v3

    add-double/2addr v0, v3

    goto :goto_0
.end method

.method public getY()F
    .locals 5

    .prologue
    .line 596
    iget-object v2, p0, Lmiui/app/screenelement/elements/AdvancedSlider$Position;->this$0:Lmiui/app/screenelement/elements/AdvancedSlider;

    iget-object v0, p0, Lmiui/app/screenelement/elements/AdvancedSlider$Position;->mBaseY:Lmiui/app/screenelement/data/Expression;

    if-nez v0, :cond_0

    iget v0, p0, Lmiui/app/screenelement/elements/AdvancedSlider$Position;->y:I

    int-to-double v0, v0

    :goto_0
    invoke-virtual {v2, v0, v1}, Lmiui/app/screenelement/elements/AdvancedSlider;->scale(D)F

    move-result v0

    return v0

    :cond_0
    iget v0, p0, Lmiui/app/screenelement/elements/AdvancedSlider$Position;->y:I

    int-to-double v0, v0

    iget-object v3, p0, Lmiui/app/screenelement/elements/AdvancedSlider$Position;->mBaseY:Lmiui/app/screenelement/data/Expression;

    iget-object v4, p0, Lmiui/app/screenelement/elements/AdvancedSlider$Position;->this$0:Lmiui/app/screenelement/elements/AdvancedSlider;

    iget-object v4, v4, Lmiui/app/screenelement/elements/AdvancedSlider;->mContext:Lmiui/app/screenelement/ScreenContext;

    iget-object v4, v4, Lmiui/app/screenelement/ScreenContext;->mVariables:Lmiui/app/screenelement/data/Variables;

    invoke-virtual {v3, v4}, Lmiui/app/screenelement/data/Expression;->evaluate(Lmiui/app/screenelement/data/Variables;)D

    move-result-wide v3

    add-double/2addr v0, v3

    goto :goto_0
.end method

.method public load(Lorg/w3c/dom/Element;)V
    .locals 3
    .parameter "node"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/app/screenelement/ScreenElementLoadException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 600
    if-nez p1, :cond_0

    .line 601
    const-string v0, "LockScreen_AdvancedSlider"

    const-string v1, "node is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    new-instance v0, Lmiui/app/screenelement/ScreenElementLoadException;

    const-string v1, "node is null"

    invoke-direct {v0, v1}, Lmiui/app/screenelement/ScreenElementLoadException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 605
    :cond_0
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Position"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "wrong node tag"

    invoke-static {v0, v1}, Lmiui/app/screenelement/util/Utils;->asserts(ZLjava/lang/String;)V

    .line 606
    const-string v0, "x"

    invoke-static {p1, v0, v2}, Lmiui/app/screenelement/util/Utils;->getAttrAsInt(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lmiui/app/screenelement/elements/AdvancedSlider$Position;->x:I

    .line 607
    const-string v0, "y"

    invoke-static {p1, v0, v2}, Lmiui/app/screenelement/util/Utils;->getAttrAsInt(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lmiui/app/screenelement/elements/AdvancedSlider$Position;->y:I

    .line 608
    return-void
.end method

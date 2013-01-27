.class Lmiui/app/screenelement/elements/AdvancedSlider$StartPoint;
.super Lmiui/app/screenelement/elements/AdvancedSlider$SliderPoint;
.source "AdvancedSlider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/app/screenelement/elements/AdvancedSlider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StartPoint"
.end annotation


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "StartPoint"


# instance fields
.field final synthetic this$0:Lmiui/app/screenelement/elements/AdvancedSlider;


# direct methods
.method public constructor <init>(Lmiui/app/screenelement/elements/AdvancedSlider;Lorg/w3c/dom/Element;)V
    .locals 1
    .parameter
    .parameter "node"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/app/screenelement/ScreenElementLoadException;
        }
    .end annotation

    .prologue
    .line 546
    iput-object p1, p0, Lmiui/app/screenelement/elements/AdvancedSlider$StartPoint;->this$0:Lmiui/app/screenelement/elements/AdvancedSlider;

    .line 547
    const-string v0, "StartPoint"

    invoke-direct {p0, p1, p2, v0}, Lmiui/app/screenelement/elements/AdvancedSlider$SliderPoint;-><init>(Lmiui/app/screenelement/elements/AdvancedSlider;Lorg/w3c/dom/Element;Ljava/lang/String;)V

    .line 548
    return-void
.end method


# virtual methods
.method protected onStateChange(Lmiui/app/screenelement/elements/AdvancedSlider$State;Lmiui/app/screenelement/elements/AdvancedSlider$State;)V
    .locals 2
    .parameter "pre"
    .parameter "s"

    .prologue
    .line 552
    sget-object v0, Lmiui/app/screenelement/elements/AdvancedSlider$State;->Invalid:Lmiui/app/screenelement/elements/AdvancedSlider$State;

    if-ne p1, v0, :cond_1

    .line 565
    :cond_0
    :goto_0
    return-void

    .line 556
    :cond_1
    sget-object v0, Lmiui/app/screenelement/elements/AdvancedSlider$1;->$SwitchMap$miui$app$screenelement$elements$AdvancedSlider$State:[I

    invoke-virtual {p2}, Lmiui/app/screenelement/elements/AdvancedSlider$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 558
    :pswitch_0
    iget-object v0, p0, Lmiui/app/screenelement/elements/AdvancedSlider$StartPoint;->this$0:Lmiui/app/screenelement/elements/AdvancedSlider;

    iget-object v0, v0, Lmiui/app/screenelement/elements/AdvancedSlider;->mRoot:Lmiui/app/screenelement/ScreenElementRoot;

    iget-object v1, p0, Lmiui/app/screenelement/elements/AdvancedSlider$StartPoint;->mNormalSound:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmiui/app/screenelement/ScreenElementRoot;->playSound(Ljava/lang/String;)V

    goto :goto_0

    .line 561
    :pswitch_1
    iget-object v0, p0, Lmiui/app/screenelement/elements/AdvancedSlider$StartPoint;->this$0:Lmiui/app/screenelement/elements/AdvancedSlider;

    #getter for: Lmiui/app/screenelement/elements/AdvancedSlider;->mPressed:Z
    invoke-static {v0}, Lmiui/app/screenelement/elements/AdvancedSlider;->access$500(Lmiui/app/screenelement/elements/AdvancedSlider;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 562
    iget-object v0, p0, Lmiui/app/screenelement/elements/AdvancedSlider$StartPoint;->this$0:Lmiui/app/screenelement/elements/AdvancedSlider;

    iget-object v0, v0, Lmiui/app/screenelement/elements/AdvancedSlider;->mRoot:Lmiui/app/screenelement/ScreenElementRoot;

    iget-object v1, p0, Lmiui/app/screenelement/elements/AdvancedSlider$StartPoint;->mPressedSound:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmiui/app/screenelement/ScreenElementRoot;->playSound(Ljava/lang/String;)V

    goto :goto_0

    .line 556
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

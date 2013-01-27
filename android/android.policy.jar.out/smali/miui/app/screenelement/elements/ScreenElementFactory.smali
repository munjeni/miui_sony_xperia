.class public Lmiui/app/screenelement/elements/ScreenElementFactory;
.super Ljava/lang/Object;
.source "ScreenElementFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createInstance(Lorg/w3c/dom/Element;Lmiui/app/screenelement/ScreenContext;Lmiui/app/screenelement/ScreenElementRoot;)Lmiui/app/screenelement/elements/ScreenElement;
    .locals 2
    .parameter "ele"
    .parameter "context"
    .parameter "root"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/app/screenelement/ScreenElementLoadException;
        }
    .end annotation

    .prologue
    .line 13
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v0

    .line 14
    .local v0, tag:Ljava/lang/String;
    const-string v1, "Image"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 15
    new-instance v1, Lmiui/app/screenelement/elements/ImageScreenElement;

    invoke-direct {v1, p1, p2, p3}, Lmiui/app/screenelement/elements/ImageScreenElement;-><init>(Lorg/w3c/dom/Element;Lmiui/app/screenelement/ScreenContext;Lmiui/app/screenelement/ScreenElementRoot;)V

    .line 43
    :goto_0
    return-object v1

    .line 16
    :cond_0
    const-string v1, "Time"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 17
    new-instance v1, Lmiui/app/screenelement/elements/TimepanelScreenElement;

    invoke-direct {v1, p1, p2, p3}, Lmiui/app/screenelement/elements/TimepanelScreenElement;-><init>(Lorg/w3c/dom/Element;Lmiui/app/screenelement/ScreenContext;Lmiui/app/screenelement/ScreenElementRoot;)V

    goto :goto_0

    .line 18
    :cond_1
    const-string v1, "ImageNumber"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 19
    new-instance v1, Lmiui/app/screenelement/elements/ImageNumberScreenElement;

    invoke-direct {v1, p1, p2, p3}, Lmiui/app/screenelement/elements/ImageNumberScreenElement;-><init>(Lorg/w3c/dom/Element;Lmiui/app/screenelement/ScreenContext;Lmiui/app/screenelement/ScreenElementRoot;)V

    goto :goto_0

    .line 20
    :cond_2
    const-string v1, "Text"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 21
    new-instance v1, Lmiui/app/screenelement/elements/TextScreenElement;

    invoke-direct {v1, p1, p2, p3}, Lmiui/app/screenelement/elements/TextScreenElement;-><init>(Lorg/w3c/dom/Element;Lmiui/app/screenelement/ScreenContext;Lmiui/app/screenelement/ScreenElementRoot;)V

    goto :goto_0

    .line 22
    :cond_3
    const-string v1, "DateTime"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 23
    new-instance v1, Lmiui/app/screenelement/elements/DateTimeScreenElement;

    invoke-direct {v1, p1, p2, p3}, Lmiui/app/screenelement/elements/DateTimeScreenElement;-><init>(Lorg/w3c/dom/Element;Lmiui/app/screenelement/ScreenContext;Lmiui/app/screenelement/ScreenElementRoot;)V

    goto :goto_0

    .line 24
    :cond_4
    const-string v1, "Button"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 25
    new-instance v1, Lmiui/app/screenelement/elements/ButtonScreenElement;

    invoke-direct {v1, p1, p2, p3}, Lmiui/app/screenelement/elements/ButtonScreenElement;-><init>(Lorg/w3c/dom/Element;Lmiui/app/screenelement/ScreenContext;Lmiui/app/screenelement/ScreenElementRoot;)V

    goto :goto_0

    .line 26
    :cond_5
    const-string v1, "MusicControl"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 27
    new-instance v1, Lmiui/app/screenelement/elements/MusicControlScreenElement;

    invoke-direct {v1, p1, p2, p3}, Lmiui/app/screenelement/elements/MusicControlScreenElement;-><init>(Lorg/w3c/dom/Element;Lmiui/app/screenelement/ScreenContext;Lmiui/app/screenelement/ScreenElementRoot;)V

    goto :goto_0

    .line 28
    :cond_6
    const-string v1, "ElementGroup"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "Group"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 29
    :cond_7
    new-instance v1, Lmiui/app/screenelement/elements/ElementGroup;

    invoke-direct {v1, p1, p2, p3}, Lmiui/app/screenelement/elements/ElementGroup;-><init>(Lorg/w3c/dom/Element;Lmiui/app/screenelement/ScreenContext;Lmiui/app/screenelement/ScreenElementRoot;)V

    goto :goto_0

    .line 30
    :cond_8
    const-string v1, "Var"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 31
    new-instance v1, Lmiui/app/screenelement/elements/VariableElement;

    invoke-direct {v1, p1, p2, p3}, Lmiui/app/screenelement/elements/VariableElement;-><init>(Lorg/w3c/dom/Element;Lmiui/app/screenelement/ScreenContext;Lmiui/app/screenelement/ScreenElementRoot;)V

    goto :goto_0

    .line 32
    :cond_9
    const-string v1, "VarArray"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 33
    new-instance v1, Lmiui/app/screenelement/elements/VariableArrayElement;

    invoke-direct {v1, p1, p2, p3}, Lmiui/app/screenelement/elements/VariableArrayElement;-><init>(Lorg/w3c/dom/Element;Lmiui/app/screenelement/ScreenContext;Lmiui/app/screenelement/ScreenElementRoot;)V

    goto/16 :goto_0

    .line 34
    :cond_a
    const-string v1, "SpectrumVisualizer"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 35
    new-instance v1, Lmiui/app/screenelement/elements/SpectrumVisualizerScreenElement;

    invoke-direct {v1, p1, p2, p3}, Lmiui/app/screenelement/elements/SpectrumVisualizerScreenElement;-><init>(Lorg/w3c/dom/Element;Lmiui/app/screenelement/ScreenContext;Lmiui/app/screenelement/ScreenElementRoot;)V

    goto/16 :goto_0

    .line 36
    :cond_b
    const-string v1, "Slider"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 37
    new-instance v1, Lmiui/app/screenelement/elements/AdvancedSlider;

    invoke-direct {v1, p1, p2, p3}, Lmiui/app/screenelement/elements/AdvancedSlider;-><init>(Lorg/w3c/dom/Element;Lmiui/app/screenelement/ScreenContext;Lmiui/app/screenelement/ScreenElementRoot;)V

    goto/16 :goto_0

    .line 38
    :cond_c
    const-string v1, "FramerateController"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 39
    new-instance v1, Lmiui/app/screenelement/elements/FramerateController;

    invoke-direct {v1, p1, p2, p3}, Lmiui/app/screenelement/elements/FramerateController;-><init>(Lorg/w3c/dom/Element;Lmiui/app/screenelement/ScreenContext;Lmiui/app/screenelement/ScreenElementRoot;)V

    goto/16 :goto_0

    .line 40
    :cond_d
    const-string v1, "VirtualScreen"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 41
    new-instance v1, Lmiui/app/screenelement/elements/VirtualScreen;

    invoke-direct {v1, p1, p2, p3}, Lmiui/app/screenelement/elements/VirtualScreen;-><init>(Lorg/w3c/dom/Element;Lmiui/app/screenelement/ScreenContext;Lmiui/app/screenelement/ScreenElementRoot;)V

    goto/16 :goto_0

    .line 43
    :cond_e
    const/4 v1, 0x0

    goto/16 :goto_0
.end method

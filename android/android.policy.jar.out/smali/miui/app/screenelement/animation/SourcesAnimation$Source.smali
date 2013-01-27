.class public Lmiui/app/screenelement/animation/SourcesAnimation$Source;
.super Lmiui/app/screenelement/animation/BaseAnimation$AnimationItem;
.source "SourcesAnimation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/app/screenelement/animation/SourcesAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Source"
.end annotation


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "Source"


# instance fields
.field public mSrc:Ljava/lang/String;


# direct methods
.method public constructor <init>([Ljava/lang/String;Lmiui/app/screenelement/ScreenContext;)V
    .locals 0
    .parameter "attrs"
    .parameter "context"

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Lmiui/app/screenelement/animation/BaseAnimation$AnimationItem;-><init>([Ljava/lang/String;Lmiui/app/screenelement/ScreenContext;)V

    .line 16
    return-void
.end method


# virtual methods
.method public load(Lorg/w3c/dom/Element;)Lmiui/app/screenelement/animation/BaseAnimation$AnimationItem;
    .locals 1
    .parameter "node"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/app/screenelement/ScreenElementLoadException;
        }
    .end annotation

    .prologue
    .line 23
    const-string v0, "src"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/app/screenelement/animation/SourcesAnimation$Source;->mSrc:Ljava/lang/String;

    .line 24
    invoke-super {p0, p1}, Lmiui/app/screenelement/animation/BaseAnimation$AnimationItem;->load(Lorg/w3c/dom/Element;)Lmiui/app/screenelement/animation/BaseAnimation$AnimationItem;

    move-result-object v0

    return-object v0
.end method

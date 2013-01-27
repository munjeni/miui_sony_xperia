.class public Lmiui/app/screenelement/animation/SourcesAnimation;
.super Lmiui/app/screenelement/animation/PositionAnimation;
.source "SourcesAnimation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/app/screenelement/animation/SourcesAnimation$Source;
    }
.end annotation


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "SourcesAnimation"


# instance fields
.field private mCurrentBitmap:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/app/screenelement/ScreenContext;)V
    .locals 1
    .parameter "node"
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/app/screenelement/ScreenElementLoadException;
        }
    .end annotation

    .prologue
    .line 29
    const-string v0, "Source"

    invoke-direct {p0, p1, v0, p2}, Lmiui/app/screenelement/animation/PositionAnimation;-><init>(Lorg/w3c/dom/Element;Ljava/lang/String;Lmiui/app/screenelement/ScreenContext;)V

    .line 30
    return-void
.end method


# virtual methods
.method public final getSrc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lmiui/app/screenelement/animation/SourcesAnimation;->mCurrentBitmap:Ljava/lang/String;

    return-object v0
.end method

.method protected onCreateItem()Lmiui/app/screenelement/animation/BaseAnimation$AnimationItem;
    .locals 4

    .prologue
    .line 52
    new-instance v0, Lmiui/app/screenelement/animation/SourcesAnimation$Source;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "x"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "y"

    aput-object v3, v1, v2

    iget-object v2, p0, Lmiui/app/screenelement/animation/SourcesAnimation;->mContext:Lmiui/app/screenelement/ScreenContext;

    invoke-direct {v0, v1, v2}, Lmiui/app/screenelement/animation/SourcesAnimation$Source;-><init>([Ljava/lang/String;Lmiui/app/screenelement/ScreenContext;)V

    return-object v0
.end method

.method protected onTick(Lmiui/app/screenelement/animation/BaseAnimation$AnimationItem;Lmiui/app/screenelement/animation/BaseAnimation$AnimationItem;F)V
    .locals 2
    .parameter "item1"
    .parameter "item2"
    .parameter "ratio"

    .prologue
    const-wide/16 v0, 0x0

    .line 39
    if-nez p2, :cond_0

    .line 40
    iput-wide v0, p0, Lmiui/app/screenelement/animation/SourcesAnimation;->mCurrentX:D

    .line 41
    iput-wide v0, p0, Lmiui/app/screenelement/animation/SourcesAnimation;->mCurrentY:D

    .line 48
    .end local p2
    :goto_0
    return-void

    .line 45
    .restart local p2
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lmiui/app/screenelement/animation/BaseAnimation$AnimationItem;->get(I)D

    move-result-wide v0

    iput-wide v0, p0, Lmiui/app/screenelement/animation/SourcesAnimation;->mCurrentX:D

    .line 46
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lmiui/app/screenelement/animation/BaseAnimation$AnimationItem;->get(I)D

    move-result-wide v0

    iput-wide v0, p0, Lmiui/app/screenelement/animation/SourcesAnimation;->mCurrentY:D

    .line 47
    check-cast p2, Lmiui/app/screenelement/animation/SourcesAnimation$Source;

    .end local p2
    iget-object v0, p2, Lmiui/app/screenelement/animation/SourcesAnimation$Source;->mSrc:Ljava/lang/String;

    iput-object v0, p0, Lmiui/app/screenelement/animation/SourcesAnimation;->mCurrentBitmap:Ljava/lang/String;

    goto :goto_0
.end method

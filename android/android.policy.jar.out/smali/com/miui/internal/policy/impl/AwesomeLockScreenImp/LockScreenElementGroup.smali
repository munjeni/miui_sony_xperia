.class public Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenElementGroup;
.super Lmiui/app/screenelement/elements/ElementGroup;
.source "LockScreenElementGroup.java"

# interfaces
.implements Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerListener;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/app/screenelement/ScreenContext;Lmiui/app/screenelement/ScreenElementRoot;)V
    .locals 0
    .parameter "node"
    .parameter "c"
    .parameter "root"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/app/screenelement/ScreenElementLoadException;
        }
    .end annotation

    .prologue
    .line 14
    invoke-direct {p0, p1, p2, p3}, Lmiui/app/screenelement/elements/ElementGroup;-><init>(Lorg/w3c/dom/Element;Lmiui/app/screenelement/ScreenContext;Lmiui/app/screenelement/ScreenElementRoot;)V

    .line 15
    return-void
.end method


# virtual methods
.method public endUnlockMoving(Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;)V
    .locals 3
    .parameter "ele"

    .prologue
    .line 19
    iget-object v2, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/app/screenelement/elements/ScreenElement;

    .line 20
    .local v0, e:Lmiui/app/screenelement/elements/ScreenElement;
    instance-of v2, v0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerListener;

    if-eqz v2, :cond_0

    .line 21
    check-cast v0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerListener;

    .end local v0           #e:Lmiui/app/screenelement/elements/ScreenElement;
    invoke-interface {v0, p1}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerListener;->endUnlockMoving(Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;)V

    goto :goto_0

    .line 24
    :cond_1
    return-void
.end method

.method public startUnlockMoving(Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;)V
    .locals 3
    .parameter "ele"

    .prologue
    .line 28
    iget-object v2, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/app/screenelement/elements/ScreenElement;

    .line 29
    .local v0, e:Lmiui/app/screenelement/elements/ScreenElement;
    instance-of v2, v0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerListener;

    if-eqz v2, :cond_0

    .line 30
    check-cast v0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerListener;

    .end local v0           #e:Lmiui/app/screenelement/elements/ScreenElement;
    invoke-interface {v0, p1}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerListener;->startUnlockMoving(Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;)V

    goto :goto_0

    .line 33
    :cond_1
    return-void
.end method

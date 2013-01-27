.class public Lmiui/app/screenelement/data/VariableUpdaterManager;
.super Ljava/lang/Object;
.source "VariableUpdaterManager.java"


# instance fields
.field private mContext:Lmiui/app/screenelement/ScreenContext;

.field private mUpdaters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lmiui/app/screenelement/data/VariableUpdater;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lmiui/app/screenelement/ScreenContext;)V
    .locals 1
    .parameter "c"

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/app/screenelement/data/VariableUpdaterManager;->mUpdaters:Ljava/util/ArrayList;

    .line 13
    iput-object p1, p0, Lmiui/app/screenelement/data/VariableUpdaterManager;->mContext:Lmiui/app/screenelement/ScreenContext;

    .line 14
    return-void
.end method


# virtual methods
.method public add(Lmiui/app/screenelement/data/VariableUpdater;)V
    .locals 1
    .parameter "updater"

    .prologue
    .line 21
    iget-object v0, p0, Lmiui/app/screenelement/data/VariableUpdaterManager;->mUpdaters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 22
    return-void
.end method

.method public finish()V
    .locals 3

    .prologue
    .line 49
    iget-object v2, p0, Lmiui/app/screenelement/data/VariableUpdaterManager;->mUpdaters:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/app/screenelement/data/VariableUpdater;

    .line 50
    .local v1, updater:Lmiui/app/screenelement/data/VariableUpdater;
    invoke-virtual {v1}, Lmiui/app/screenelement/data/VariableUpdater;->finish()V

    goto :goto_0

    .line 51
    .end local v1           #updater:Lmiui/app/screenelement/data/VariableUpdater;
    :cond_0
    return-void
.end method

.method public getContext()Lmiui/app/screenelement/ScreenContext;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lmiui/app/screenelement/data/VariableUpdaterManager;->mContext:Lmiui/app/screenelement/ScreenContext;

    return-object v0
.end method

.method public init()V
    .locals 3

    .prologue
    .line 29
    iget-object v2, p0, Lmiui/app/screenelement/data/VariableUpdaterManager;->mUpdaters:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/app/screenelement/data/VariableUpdater;

    .line 30
    .local v1, updater:Lmiui/app/screenelement/data/VariableUpdater;
    invoke-virtual {v1}, Lmiui/app/screenelement/data/VariableUpdater;->init()V

    goto :goto_0

    .line 31
    .end local v1           #updater:Lmiui/app/screenelement/data/VariableUpdater;
    :cond_0
    return-void
.end method

.method public pause()V
    .locals 3

    .prologue
    .line 44
    iget-object v2, p0, Lmiui/app/screenelement/data/VariableUpdaterManager;->mUpdaters:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/app/screenelement/data/VariableUpdater;

    .line 45
    .local v1, updater:Lmiui/app/screenelement/data/VariableUpdater;
    invoke-virtual {v1}, Lmiui/app/screenelement/data/VariableUpdater;->pause()V

    goto :goto_0

    .line 46
    .end local v1           #updater:Lmiui/app/screenelement/data/VariableUpdater;
    :cond_0
    return-void
.end method

.method public remove(Lmiui/app/screenelement/data/VariableUpdater;)V
    .locals 1
    .parameter "updater"

    .prologue
    .line 25
    iget-object v0, p0, Lmiui/app/screenelement/data/VariableUpdaterManager;->mUpdaters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 26
    return-void
.end method

.method public resume()V
    .locals 3

    .prologue
    .line 39
    iget-object v2, p0, Lmiui/app/screenelement/data/VariableUpdaterManager;->mUpdaters:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/app/screenelement/data/VariableUpdater;

    .line 40
    .local v1, updater:Lmiui/app/screenelement/data/VariableUpdater;
    invoke-virtual {v1}, Lmiui/app/screenelement/data/VariableUpdater;->resume()V

    goto :goto_0

    .line 41
    .end local v1           #updater:Lmiui/app/screenelement/data/VariableUpdater;
    :cond_0
    return-void
.end method

.method public tick(J)V
    .locals 3
    .parameter "currentTime"

    .prologue
    .line 34
    iget-object v2, p0, Lmiui/app/screenelement/data/VariableUpdaterManager;->mUpdaters:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/app/screenelement/data/VariableUpdater;

    .line 35
    .local v1, updater:Lmiui/app/screenelement/data/VariableUpdater;
    invoke-virtual {v1, p1, p2}, Lmiui/app/screenelement/data/VariableUpdater;->tick(J)V

    goto :goto_0

    .line 36
    .end local v1           #updater:Lmiui/app/screenelement/data/VariableUpdater;
    :cond_0
    return-void
.end method

.class abstract Lmiui/app/screenelement/ActionCommand$StatefulActionCommand;
.super Lmiui/app/screenelement/ActionCommand;
.source "ActionCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/app/screenelement/ActionCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "StatefulActionCommand"
.end annotation


# instance fields
.field private mVar:Lmiui/app/screenelement/util/IndexedNumberVariable;


# direct methods
.method public constructor <init>(Lmiui/app/screenelement/ScreenContext;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "stateName"

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lmiui/app/screenelement/ActionCommand;-><init>(Lmiui/app/screenelement/ScreenContext;)V

    .line 63
    new-instance v0, Lmiui/app/screenelement/util/IndexedNumberVariable;

    iget-object v1, p0, Lmiui/app/screenelement/ActionCommand$StatefulActionCommand;->mContext:Lmiui/app/screenelement/ScreenContext;

    iget-object v1, v1, Lmiui/app/screenelement/ScreenContext;->mVariables:Lmiui/app/screenelement/data/Variables;

    invoke-direct {v0, p2, v1}, Lmiui/app/screenelement/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Lmiui/app/screenelement/data/Variables;)V

    iput-object v0, p0, Lmiui/app/screenelement/ActionCommand$StatefulActionCommand;->mVar:Lmiui/app/screenelement/util/IndexedNumberVariable;

    .line 64
    return-void
.end method


# virtual methods
.method protected final updateState(I)V
    .locals 3
    .parameter "state"

    .prologue
    .line 67
    iget-object v0, p0, Lmiui/app/screenelement/ActionCommand$StatefulActionCommand;->mVar:Lmiui/app/screenelement/util/IndexedNumberVariable;

    if-nez v0, :cond_0

    .line 71
    :goto_0
    return-void

    .line 69
    :cond_0
    iget-object v0, p0, Lmiui/app/screenelement/ActionCommand$StatefulActionCommand;->mVar:Lmiui/app/screenelement/util/IndexedNumberVariable;

    int-to-double v1, p1

    invoke-virtual {v0, v1, v2}, Lmiui/app/screenelement/util/IndexedNumberVariable;->set(D)V

    .line 70
    iget-object v0, p0, Lmiui/app/screenelement/ActionCommand$StatefulActionCommand;->mContext:Lmiui/app/screenelement/ScreenContext;

    invoke-virtual {v0}, Lmiui/app/screenelement/ScreenContext;->requestUpdate()V

    goto :goto_0
.end method

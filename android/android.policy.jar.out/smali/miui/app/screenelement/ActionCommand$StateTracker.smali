.class public abstract Lmiui/app/screenelement/ActionCommand$StateTracker;
.super Ljava/lang/Object;
.source "ActionCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/app/screenelement/ActionCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "StateTracker"
.end annotation


# instance fields
.field private mActualState:Ljava/lang/Boolean;

.field private mDeferredStateChangeRequestNeeded:Z

.field private mInTransition:Z

.field private mIntendedState:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 281
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 283
    iput-boolean v0, p0, Lmiui/app/screenelement/ActionCommand$StateTracker;->mInTransition:Z

    .line 285
    iput-object v1, p0, Lmiui/app/screenelement/ActionCommand$StateTracker;->mActualState:Ljava/lang/Boolean;

    .line 287
    iput-object v1, p0, Lmiui/app/screenelement/ActionCommand$StateTracker;->mIntendedState:Ljava/lang/Boolean;

    .line 293
    iput-boolean v0, p0, Lmiui/app/screenelement/ActionCommand$StateTracker;->mDeferredStateChangeRequestNeeded:Z

    return-void
.end method


# virtual methods
.method public abstract getActualState(Landroid/content/Context;)I
.end method

.method public final getTriState(Landroid/content/Context;)I
    .locals 2
    .parameter "context"

    .prologue
    const/4 v0, 0x5

    .line 387
    iget-boolean v1, p0, Lmiui/app/screenelement/ActionCommand$StateTracker;->mInTransition:Z

    if-eqz v1, :cond_0

    .line 403
    :goto_0
    return v0

    .line 397
    :cond_0
    invoke-virtual {p0, p1}, Lmiui/app/screenelement/ActionCommand$StateTracker;->getActualState(Landroid/content/Context;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 399
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 401
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 397
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final isTurningOn()Z
    .locals 1

    .prologue
    .line 377
    iget-object v0, p0, Lmiui/app/screenelement/ActionCommand$StateTracker;->mIntendedState:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/app/screenelement/ActionCommand$StateTracker;->mIntendedState:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract onActualStateChange(Landroid/content/Context;Landroid/content/Intent;)V
.end method

.method protected abstract requestStateChange(Landroid/content/Context;Z)V
.end method

.method protected final setCurrentState(Landroid/content/Context;I)V
    .locals 5
    .parameter "context"
    .parameter "newState"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 339
    iget-boolean v0, p0, Lmiui/app/screenelement/ActionCommand$StateTracker;->mInTransition:Z

    .line 340
    .local v0, wasInTransition:Z
    packed-switch p2, :pswitch_data_0

    .line 359
    :goto_0
    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lmiui/app/screenelement/ActionCommand$StateTracker;->mInTransition:Z

    if-nez v1, :cond_1

    .line 360
    iget-boolean v1, p0, Lmiui/app/screenelement/ActionCommand$StateTracker;->mDeferredStateChangeRequestNeeded:Z

    if-eqz v1, :cond_1

    .line 361
    const-string v1, "ActionCommand"

    const-string v2, "processing deferred state change"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    iget-object v1, p0, Lmiui/app/screenelement/ActionCommand$StateTracker;->mActualState:Ljava/lang/Boolean;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lmiui/app/screenelement/ActionCommand$StateTracker;->mIntendedState:Ljava/lang/Boolean;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lmiui/app/screenelement/ActionCommand$StateTracker;->mIntendedState:Ljava/lang/Boolean;

    iget-object v2, p0, Lmiui/app/screenelement/ActionCommand$StateTracker;->mActualState:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 363
    const-string v1, "ActionCommand"

    const-string v2, "... but intended state matches, so no changes."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    :cond_0
    :goto_1
    iput-boolean v3, p0, Lmiui/app/screenelement/ActionCommand$StateTracker;->mDeferredStateChangeRequestNeeded:Z

    .line 371
    :cond_1
    return-void

    .line 342
    :pswitch_0
    iput-boolean v3, p0, Lmiui/app/screenelement/ActionCommand$StateTracker;->mInTransition:Z

    .line 343
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lmiui/app/screenelement/ActionCommand$StateTracker;->mActualState:Ljava/lang/Boolean;

    goto :goto_0

    .line 346
    :pswitch_1
    iput-boolean v3, p0, Lmiui/app/screenelement/ActionCommand$StateTracker;->mInTransition:Z

    .line 347
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lmiui/app/screenelement/ActionCommand$StateTracker;->mActualState:Ljava/lang/Boolean;

    goto :goto_0

    .line 350
    :pswitch_2
    iput-boolean v4, p0, Lmiui/app/screenelement/ActionCommand$StateTracker;->mInTransition:Z

    .line 351
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lmiui/app/screenelement/ActionCommand$StateTracker;->mActualState:Ljava/lang/Boolean;

    goto :goto_0

    .line 354
    :pswitch_3
    iput-boolean v4, p0, Lmiui/app/screenelement/ActionCommand$StateTracker;->mInTransition:Z

    .line 355
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lmiui/app/screenelement/ActionCommand$StateTracker;->mActualState:Ljava/lang/Boolean;

    goto :goto_0

    .line 364
    :cond_2
    iget-object v1, p0, Lmiui/app/screenelement/ActionCommand$StateTracker;->mIntendedState:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    .line 365
    iput-boolean v4, p0, Lmiui/app/screenelement/ActionCommand$StateTracker;->mInTransition:Z

    .line 366
    iget-object v1, p0, Lmiui/app/screenelement/ActionCommand$StateTracker;->mIntendedState:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p0, p1, v1}, Lmiui/app/screenelement/ActionCommand$StateTracker;->requestStateChange(Landroid/content/Context;Z)V

    goto :goto_1

    .line 340
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public final toggleState(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v2, 0x1

    .line 300
    invoke-virtual {p0, p1}, Lmiui/app/screenelement/ActionCommand$StateTracker;->getTriState(Landroid/content/Context;)I

    move-result v0

    .line 301
    .local v0, currentState:I
    const/4 v1, 0x0

    .line 302
    .local v1, newState:Z
    packed-switch v0, :pswitch_data_0

    .line 315
    :cond_0
    :goto_0
    :pswitch_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lmiui/app/screenelement/ActionCommand$StateTracker;->mIntendedState:Ljava/lang/Boolean;

    .line 316
    iget-boolean v3, p0, Lmiui/app/screenelement/ActionCommand$StateTracker;->mInTransition:Z

    if-eqz v3, :cond_2

    .line 321
    iput-boolean v2, p0, Lmiui/app/screenelement/ActionCommand$StateTracker;->mDeferredStateChangeRequestNeeded:Z

    .line 326
    :goto_1
    return-void

    .line 304
    :pswitch_1
    const/4 v1, 0x0

    .line 305
    goto :goto_0

    .line 307
    :pswitch_2
    const/4 v1, 0x1

    .line 308
    goto :goto_0

    .line 310
    :pswitch_3
    iget-object v3, p0, Lmiui/app/screenelement/ActionCommand$StateTracker;->mIntendedState:Ljava/lang/Boolean;

    if-eqz v3, :cond_0

    .line 311
    iget-object v3, p0, Lmiui/app/screenelement/ActionCommand$StateTracker;->mIntendedState:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_1

    move v1, v2

    :goto_2
    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_2

    .line 323
    :cond_2
    iput-boolean v2, p0, Lmiui/app/screenelement/ActionCommand$StateTracker;->mInTransition:Z

    .line 324
    invoke-virtual {p0, p1, v1}, Lmiui/app/screenelement/ActionCommand$StateTracker;->requestStateChange(Landroid/content/Context;Z)V

    goto :goto_1

    .line 302
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

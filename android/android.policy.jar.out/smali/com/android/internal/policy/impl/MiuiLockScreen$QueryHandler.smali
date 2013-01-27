.class final Lcom/android/internal/policy/impl/MiuiLockScreen$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "MiuiLockScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/MiuiLockScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "QueryHandler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/MiuiLockScreen$QueryHandler$CatchingWorkerHandler;
    }
.end annotation


# instance fields
.field private final mAdapter:Lcom/android/internal/policy/impl/MiuiLockScreen$PreviewCursorAdpater;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/policy/impl/MiuiLockScreen$PreviewCursorAdpater;)V
    .locals 1
    .parameter "context"
    .parameter "adapter"

    .prologue
    .line 1474
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 1475
    iput-object p2, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$QueryHandler;->mAdapter:Lcom/android/internal/policy/impl/MiuiLockScreen$PreviewCursorAdpater;

    .line 1476
    return-void
.end method


# virtual methods
.method public closeCursor()V
    .locals 2

    .prologue
    .line 1486
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$QueryHandler;->mAdapter:Lcom/android/internal/policy/impl/MiuiLockScreen$PreviewCursorAdpater;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/MiuiLockScreen$PreviewCursorAdpater;->changeCursor(Landroid/database/Cursor;)V

    .line 1487
    return-void
.end method

.method protected createHandler(Landroid/os/Looper;)Landroid/os/Handler;
    .locals 1
    .parameter "looper"

    .prologue
    .line 1470
    new-instance v0, Lcom/android/internal/policy/impl/MiuiLockScreen$QueryHandler$CatchingWorkerHandler;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/policy/impl/MiuiLockScreen$QueryHandler$CatchingWorkerHandler;-><init>(Lcom/android/internal/policy/impl/MiuiLockScreen$QueryHandler;Landroid/os/Looper;)V

    return-object v0
.end method

.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 2
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    const/4 v0, 0x0

    .line 1480
    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$QueryHandler;->mAdapter:Lcom/android/internal/policy/impl/MiuiLockScreen$PreviewCursorAdpater;

    invoke-virtual {v1, v0}, Lcom/android/internal/policy/impl/MiuiLockScreen$PreviewCursorAdpater;->setLoading(Z)V

    .line 1481
    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$QueryHandler;->mAdapter:Lcom/android/internal/policy/impl/MiuiLockScreen$PreviewCursorAdpater;

    invoke-virtual {v1, p3}, Lcom/android/internal/policy/impl/MiuiLockScreen$PreviewCursorAdpater;->changeCursor(Landroid/database/Cursor;)V

    .line 1482
    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$QueryHandler;->mAdapter:Lcom/android/internal/policy/impl/MiuiLockScreen$PreviewCursorAdpater;

    if-nez p3, :cond_0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/internal/policy/impl/MiuiLockScreen$PreviewCursorAdpater;->onQueryResultCount(I)V

    .line 1483
    return-void

    .line 1482
    :cond_0
    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v0

    goto :goto_0
.end method

.class public abstract Lcom/android/internal/atfwd/AtCmdBaseHandler;
.super Landroid/os/Handler;
.source "AtCmdBaseHandler.java"

# interfaces
.implements Lcom/android/internal/atfwd/AtCmdHandler;


# instance fields
.field protected mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "c"

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/android/internal/atfwd/AtCmdBaseHandler;->mContext:Landroid/content/Context;

    .line 42
    return-void
.end method


# virtual methods
.method protected getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/internal/atfwd/AtCmdBaseHandler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public startEventProcess()V
    .locals 0

    .prologue
    .line 49
    return-void
.end method

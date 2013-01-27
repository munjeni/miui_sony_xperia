.class Lcom/android/internal/policy/impl/MagnifierPopupWindow$2;
.super Landroid/os/Handler;
.source "MagnifierPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/MagnifierPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/MagnifierPopupWindow;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/MagnifierPopupWindow;)V
    .locals 0
    .parameter

    .prologue
    .line 265
    iput-object p1, p0, Lcom/android/internal/policy/impl/MagnifierPopupWindow$2;->this$0:Lcom/android/internal/policy/impl/MagnifierPopupWindow;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 267
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 268
    iget-object v0, p0, Lcom/android/internal/policy/impl/MagnifierPopupWindow$2;->this$0:Lcom/android/internal/policy/impl/MagnifierPopupWindow;

    #calls: Lcom/android/internal/policy/impl/MagnifierPopupWindow;->showMagnifier()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/MagnifierPopupWindow;->access$1100(Lcom/android/internal/policy/impl/MagnifierPopupWindow;)V

    .line 272
    :cond_0
    :goto_0
    return-void

    .line 269
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 270
    iget-object v0, p0, Lcom/android/internal/policy/impl/MagnifierPopupWindow$2;->this$0:Lcom/android/internal/policy/impl/MagnifierPopupWindow;

    #getter for: Lcom/android/internal/policy/impl/MagnifierPopupWindow;->mMagnifierView:Lcom/android/internal/policy/impl/MagnifierPopupWindow$MagnifierView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/MagnifierPopupWindow;->access$300(Lcom/android/internal/policy/impl/MagnifierPopupWindow;)Lcom/android/internal/policy/impl/MagnifierPopupWindow$MagnifierView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/MagnifierPopupWindow$MagnifierView;->hide()V

    goto :goto_0
.end method

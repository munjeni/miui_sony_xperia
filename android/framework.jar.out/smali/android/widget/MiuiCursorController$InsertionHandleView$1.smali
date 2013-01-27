.class Landroid/widget/MiuiCursorController$InsertionHandleView$1;
.super Ljava/lang/Object;
.source "MiuiCursorController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/MiuiCursorController$InsertionHandleView;->hideAfterDelay(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/MiuiCursorController$InsertionHandleView;


# direct methods
.method constructor <init>(Landroid/widget/MiuiCursorController$InsertionHandleView;)V
    .locals 0
    .parameter

    .prologue
    .line 1118
    iput-object p1, p0, Landroid/widget/MiuiCursorController$InsertionHandleView$1;->this$1:Landroid/widget/MiuiCursorController$InsertionHandleView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1120
    iget-object v0, p0, Landroid/widget/MiuiCursorController$InsertionHandleView$1;->this$1:Landroid/widget/MiuiCursorController$InsertionHandleView;

    invoke-virtual {v0}, Landroid/widget/MiuiCursorController$InsertionHandleView;->hide()V

    .line 1121
    return-void
.end method

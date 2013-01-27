.class final Landroid/webkit/SelectionFloatPanel$1;
.super Ljava/lang/Object;
.source "SelectionFloatPanel.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/webkit/SelectionFloatPanel;->getInstance(Landroid/content/Context;Landroid/webkit/WebView;)Landroid/webkit/SelectionFloatPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$instance:Landroid/webkit/SelectionFloatPanel;

.field final synthetic val$webview:Landroid/webkit/WebView;


# direct methods
.method constructor <init>(Landroid/webkit/WebView;Landroid/webkit/SelectionFloatPanel;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 26
    iput-object p1, p0, Landroid/webkit/SelectionFloatPanel$1;->val$webview:Landroid/webkit/WebView;

    iput-object p2, p0, Landroid/webkit/SelectionFloatPanel$1;->val$instance:Landroid/webkit/SelectionFloatPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 29
    iget-object v0, p0, Landroid/webkit/SelectionFloatPanel$1;->val$webview:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->copySelection()Z

    .line 30
    iget-object v0, p0, Landroid/webkit/SelectionFloatPanel$1;->val$webview:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->selectionDone()V

    .line 31
    iget-object v0, p0, Landroid/webkit/SelectionFloatPanel$1;->val$instance:Landroid/webkit/SelectionFloatPanel;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/webkit/SelectionFloatPanel;->setVisibility(I)V

    .line 32
    return-void
.end method

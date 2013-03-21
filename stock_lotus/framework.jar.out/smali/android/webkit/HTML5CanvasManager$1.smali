.class Landroid/webkit/HTML5CanvasManager$1;
.super Landroid/os/Handler;
.source "HTML5CanvasManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/webkit/HTML5CanvasManager;->createWebCoreHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkit/HTML5CanvasManager;


# direct methods
.method constructor <init>(Landroid/webkit/HTML5CanvasManager;)V
    .locals 0
    .parameter

    .prologue
    .line 154
    iput-object p1, p0, Landroid/webkit/HTML5CanvasManager$1;->this$0:Landroid/webkit/HTML5CanvasManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    const/4 v1, 0x1

    .line 157
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 173
    const-string v1, "HTML5CanvasManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WebCoreHandler got unexpected message: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 176
    :goto_0
    return-void

    .line 161
    :pswitch_0
    iget-object v1, p0, Landroid/webkit/HTML5CanvasManager$1;->this$0:Landroid/webkit/HTML5CanvasManager;

    iget v1, v1, Landroid/webkit/HTML5CanvasManager;->mNativePointer:I

    iget v2, p1, Landroid/os/Message;->arg1:I

    #calls: Landroid/webkit/HTML5CanvasManager;->nativePerformSync(II)V
    invoke-static {v1, v2}, Landroid/webkit/HTML5CanvasManager;->access$000(II)V

    .line 162
    iget-object v1, p0, Landroid/webkit/HTML5CanvasManager$1;->this$0:Landroid/webkit/HTML5CanvasManager;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/webkit/HTML5CanvasManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 163
    .local v0, invMsg:Landroid/os/Message;
    iget-object v1, p0, Landroid/webkit/HTML5CanvasManager$1;->this$0:Landroid/webkit/HTML5CanvasManager;

    invoke-virtual {v1, v0}, Landroid/webkit/HTML5CanvasManager;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    goto :goto_0

    .line 169
    .end local v0           #invMsg:Landroid/os/Message;
    :pswitch_1
    iget-object v2, p0, Landroid/webkit/HTML5CanvasManager$1;->this$0:Landroid/webkit/HTML5CanvasManager;

    iget v2, v2, Landroid/webkit/HTML5CanvasManager;->mNativePointer:I

    iget-object v3, p0, Landroid/webkit/HTML5CanvasManager$1;->this$0:Landroid/webkit/HTML5CanvasManager;

    iget v3, v3, Landroid/webkit/HTML5CanvasManager;->mNativeViewKey:I

    iget v4, p1, Landroid/os/Message;->arg1:I

    if-ne v4, v1, :cond_0

    :goto_1
    #calls: Landroid/webkit/HTML5CanvasManager;->nativeSetPaintingDisabled(IIZ)V
    invoke-static {v2, v3, v1}, Landroid/webkit/HTML5CanvasManager;->access$100(IIZ)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    .line 157
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

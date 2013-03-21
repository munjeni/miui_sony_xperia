.class Landroid/drm/DrmManagerClient$InfoHandler;
.super Landroid/os/Handler;
.source "DrmManagerClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/drm/DrmManagerClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InfoHandler"
.end annotation


# static fields
.field public static final INFO_EVENT_TYPE:I = 0x1


# instance fields
.field final synthetic this$0:Landroid/drm/DrmManagerClient;


# direct methods
.method public constructor <init>(Landroid/drm/DrmManagerClient;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 223
    iput-object p1, p0, Landroid/drm/DrmManagerClient$InfoHandler;->this$0:Landroid/drm/DrmManagerClient;

    .line 224
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 225
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .parameter "msg"

    .prologue
    .line 228
    const/4 v1, 0x0

    .line 229
    .local v1, info:Landroid/drm/DrmInfoEvent;
    const/4 v0, 0x0

    .line 234
    .local v0, error:Landroid/drm/DrmErrorEvent;
    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_0

    .line 270
    const-string v5, "DrmManagerClient"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown message type "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    :cond_0
    :goto_0
    return-void

    .line 236
    :pswitch_0
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/drm/DrmInfoEvent;

    invoke-virtual {v5}, Landroid/drm/DrmInfoEvent;->getUniqueId()I

    move-result v4

    .line 237
    .local v4, uniqueId:I
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/drm/DrmInfoEvent;

    invoke-virtual {v5}, Landroid/drm/DrmInfoEvent;->getType()I

    move-result v2

    .line 238
    .local v2, infoType:I
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/drm/DrmInfoEvent;

    invoke-virtual {v5}, Landroid/drm/DrmInfoEvent;->getMessage()Ljava/lang/String;

    move-result-object v3

    .line 240
    .local v3, message:Ljava/lang/String;
    packed-switch v2, :pswitch_data_1

    .line 258
    new-instance v0, Landroid/drm/DrmErrorEvent;

    .end local v0           #error:Landroid/drm/DrmErrorEvent;
    invoke-direct {v0, v4, v2, v3}, Landroid/drm/DrmErrorEvent;-><init>(IILjava/lang/String;)V

    .line 262
    .restart local v0       #error:Landroid/drm/DrmErrorEvent;
    :goto_1
    iget-object v5, p0, Landroid/drm/DrmManagerClient$InfoHandler;->this$0:Landroid/drm/DrmManagerClient;

    #getter for: Landroid/drm/DrmManagerClient;->mOnInfoListener:Landroid/drm/DrmManagerClient$OnInfoListener;
    invoke-static {v5}, Landroid/drm/DrmManagerClient;->access$700(Landroid/drm/DrmManagerClient;)Landroid/drm/DrmManagerClient$OnInfoListener;

    move-result-object v5

    if-eqz v5, :cond_1

    if-eqz v1, :cond_1

    .line 263
    iget-object v5, p0, Landroid/drm/DrmManagerClient$InfoHandler;->this$0:Landroid/drm/DrmManagerClient;

    #getter for: Landroid/drm/DrmManagerClient;->mOnInfoListener:Landroid/drm/DrmManagerClient$OnInfoListener;
    invoke-static {v5}, Landroid/drm/DrmManagerClient;->access$700(Landroid/drm/DrmManagerClient;)Landroid/drm/DrmManagerClient$OnInfoListener;

    move-result-object v5

    iget-object v6, p0, Landroid/drm/DrmManagerClient$InfoHandler;->this$0:Landroid/drm/DrmManagerClient;

    invoke-interface {v5, v6, v1}, Landroid/drm/DrmManagerClient$OnInfoListener;->onInfo(Landroid/drm/DrmManagerClient;Landroid/drm/DrmInfoEvent;)V

    .line 265
    :cond_1
    iget-object v5, p0, Landroid/drm/DrmManagerClient$InfoHandler;->this$0:Landroid/drm/DrmManagerClient;

    #getter for: Landroid/drm/DrmManagerClient;->mOnErrorListener:Landroid/drm/DrmManagerClient$OnErrorListener;
    invoke-static {v5}, Landroid/drm/DrmManagerClient;->access$600(Landroid/drm/DrmManagerClient;)Landroid/drm/DrmManagerClient$OnErrorListener;

    move-result-object v5

    if-eqz v5, :cond_0

    if-eqz v0, :cond_0

    .line 266
    iget-object v5, p0, Landroid/drm/DrmManagerClient$InfoHandler;->this$0:Landroid/drm/DrmManagerClient;

    #getter for: Landroid/drm/DrmManagerClient;->mOnErrorListener:Landroid/drm/DrmManagerClient$OnErrorListener;
    invoke-static {v5}, Landroid/drm/DrmManagerClient;->access$600(Landroid/drm/DrmManagerClient;)Landroid/drm/DrmManagerClient$OnErrorListener;

    move-result-object v5

    iget-object v6, p0, Landroid/drm/DrmManagerClient$InfoHandler;->this$0:Landroid/drm/DrmManagerClient;

    invoke-interface {v5, v6, v0}, Landroid/drm/DrmManagerClient$OnErrorListener;->onError(Landroid/drm/DrmManagerClient;Landroid/drm/DrmErrorEvent;)V

    goto :goto_0

    .line 243
    :pswitch_1
    :try_start_0
    invoke-static {v3}, Landroid/drm/DrmUtils;->removeFile(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 246
    :goto_2
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v1           #info:Landroid/drm/DrmInfoEvent;
    check-cast v1, Landroid/drm/DrmInfoEvent;

    .line 247
    .restart local v1       #info:Landroid/drm/DrmInfoEvent;
    goto :goto_1

    .line 254
    :pswitch_2
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v1           #info:Landroid/drm/DrmInfoEvent;
    check-cast v1, Landroid/drm/DrmInfoEvent;

    .line 255
    .restart local v1       #info:Landroid/drm/DrmInfoEvent;
    goto :goto_1

    .line 244
    :catch_0
    move-exception v5

    goto :goto_2

    .line 234
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    .line 240
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

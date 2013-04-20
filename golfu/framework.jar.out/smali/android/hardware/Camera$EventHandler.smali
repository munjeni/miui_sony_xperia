.class Landroid/hardware/Camera$EventHandler;
.super Landroid/os/Handler;
.source "Camera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventHandler"
.end annotation


# instance fields
.field private mCamera:Landroid/hardware/Camera;

.field final synthetic this$0:Landroid/hardware/Camera;


# direct methods
.method public constructor <init>(Landroid/hardware/Camera;Landroid/hardware/Camera;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "c"
    .parameter "looper"

    .prologue
    .line 683
    iput-object p1, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    .line 684
    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 685
    iput-object p2, p0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    .line 686
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .parameter "msg"

    .prologue
    const/16 v6, 0x101

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 690
    iget v5, p1, Landroid/os/Message;->what:I

    sparse-switch v5, :sswitch_data_0

    .line 774
    const-string v3, "Camera"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown message type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 775
    :cond_0
    :goto_0
    return-void

    .line 692
    :sswitch_0
    iget-object v3, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    #getter for: Landroid/hardware/Camera;->mShutterCallback:Landroid/hardware/Camera$ShutterCallback;
    invoke-static {v3}, Landroid/hardware/Camera;->access$000(Landroid/hardware/Camera;)Landroid/hardware/Camera$ShutterCallback;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 693
    iget-object v3, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    #getter for: Landroid/hardware/Camera;->mShutterCallback:Landroid/hardware/Camera$ShutterCallback;
    invoke-static {v3}, Landroid/hardware/Camera;->access$000(Landroid/hardware/Camera;)Landroid/hardware/Camera$ShutterCallback;

    move-result-object v3

    invoke-interface {v3}, Landroid/hardware/Camera$ShutterCallback;->onShutter()V

    goto :goto_0

    .line 698
    :sswitch_1
    iget-object v3, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    #getter for: Landroid/hardware/Camera;->mRawImageCallback:Landroid/hardware/Camera$PictureCallback;
    invoke-static {v3}, Landroid/hardware/Camera;->access$100(Landroid/hardware/Camera;)Landroid/hardware/Camera$PictureCallback;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 699
    iget-object v3, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    #getter for: Landroid/hardware/Camera;->mRawImageCallback:Landroid/hardware/Camera$PictureCallback;
    invoke-static {v3}, Landroid/hardware/Camera;->access$100(Landroid/hardware/Camera;)Landroid/hardware/Camera$PictureCallback;

    move-result-object v4

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, [B

    check-cast v3, [B

    iget-object v5, p0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    invoke-interface {v4, v3, v5}, Landroid/hardware/Camera$PictureCallback;->onPictureTaken([BLandroid/hardware/Camera;)V

    goto :goto_0

    .line 704
    :sswitch_2
    iget-object v3, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    #getter for: Landroid/hardware/Camera;->mJpegCallback:Landroid/hardware/Camera$PictureCallback;
    invoke-static {v3}, Landroid/hardware/Camera;->access$200(Landroid/hardware/Camera;)Landroid/hardware/Camera$PictureCallback;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 705
    iget-object v3, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    #getter for: Landroid/hardware/Camera;->mJpegCallback:Landroid/hardware/Camera$PictureCallback;
    invoke-static {v3}, Landroid/hardware/Camera;->access$200(Landroid/hardware/Camera;)Landroid/hardware/Camera$PictureCallback;

    move-result-object v4

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, [B

    check-cast v3, [B

    iget-object v5, p0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    invoke-interface {v4, v3, v5}, Landroid/hardware/Camera$PictureCallback;->onPictureTaken([BLandroid/hardware/Camera;)V

    goto :goto_0

    .line 710
    :sswitch_3
    iget-object v5, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    #getter for: Landroid/hardware/Camera;->mPreviewCallback:Landroid/hardware/Camera$PreviewCallback;
    invoke-static {v5}, Landroid/hardware/Camera;->access$300(Landroid/hardware/Camera;)Landroid/hardware/Camera$PreviewCallback;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 711
    iget-object v5, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    #getter for: Landroid/hardware/Camera;->mPreviewCallback:Landroid/hardware/Camera$PreviewCallback;
    invoke-static {v5}, Landroid/hardware/Camera;->access$300(Landroid/hardware/Camera;)Landroid/hardware/Camera$PreviewCallback;

    move-result-object v0

    .line 712
    .local v0, cb:Landroid/hardware/Camera$PreviewCallback;
    iget-object v5, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    #getter for: Landroid/hardware/Camera;->mOneShot:Z
    invoke-static {v5}, Landroid/hardware/Camera;->access$400(Landroid/hardware/Camera;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 716
    iget-object v3, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    const/4 v4, 0x0

    #setter for: Landroid/hardware/Camera;->mPreviewCallback:Landroid/hardware/Camera$PreviewCallback;
    invoke-static {v3, v4}, Landroid/hardware/Camera;->access$302(Landroid/hardware/Camera;Landroid/hardware/Camera$PreviewCallback;)Landroid/hardware/Camera$PreviewCallback;

    .line 723
    :cond_1
    :goto_1
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, [B

    check-cast v3, [B

    iget-object v4, p0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    invoke-interface {v0, v3, v4}, Landroid/hardware/Camera$PreviewCallback;->onPreviewFrame([BLandroid/hardware/Camera;)V

    goto :goto_0

    .line 717
    :cond_2
    iget-object v5, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    #getter for: Landroid/hardware/Camera;->mWithBuffer:Z
    invoke-static {v5}, Landroid/hardware/Camera;->access$500(Landroid/hardware/Camera;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 721
    iget-object v5, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    #calls: Landroid/hardware/Camera;->setHasPreviewCallback(ZZ)V
    invoke-static {v5, v4, v3}, Landroid/hardware/Camera;->access$600(Landroid/hardware/Camera;ZZ)V

    goto :goto_1

    .line 728
    .end local v0           #cb:Landroid/hardware/Camera$PreviewCallback;
    :sswitch_4
    new-array v2, v6, [I

    .line 729
    .local v2, statsdata:[I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    if-ge v1, v6, :cond_3

    .line 730
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, [B

    check-cast v3, [B

    mul-int/lit8 v4, v1, 0x4

    #calls: Landroid/hardware/Camera;->byteToInt([BI)I
    invoke-static {v3, v4}, Landroid/hardware/Camera;->access$700([BI)I

    move-result v3

    aput v3, v2, v1

    .line 729
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 732
    :cond_3
    iget-object v3, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    #getter for: Landroid/hardware/Camera;->mCameraDataCallback:Landroid/hardware/Camera$CameraDataCallback;
    invoke-static {v3}, Landroid/hardware/Camera;->access$800(Landroid/hardware/Camera;)Landroid/hardware/Camera$CameraDataCallback;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 733
    iget-object v3, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    #getter for: Landroid/hardware/Camera;->mCameraDataCallback:Landroid/hardware/Camera$CameraDataCallback;
    invoke-static {v3}, Landroid/hardware/Camera;->access$800(Landroid/hardware/Camera;)Landroid/hardware/Camera$CameraDataCallback;

    move-result-object v3

    iget-object v4, p0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    invoke-interface {v3, v2, v4}, Landroid/hardware/Camera$CameraDataCallback;->onCameraData([ILandroid/hardware/Camera;)V

    goto/16 :goto_0

    .line 738
    .end local v1           #i:I
    .end local v2           #statsdata:[I
    :sswitch_5
    iget-object v3, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    #getter for: Landroid/hardware/Camera;->mCameraMetaDataCallback:Landroid/hardware/Camera$CameraMetaDataCallback;
    invoke-static {v3}, Landroid/hardware/Camera;->access$900(Landroid/hardware/Camera;)Landroid/hardware/Camera$CameraMetaDataCallback;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 739
    iget-object v3, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    #getter for: Landroid/hardware/Camera;->mCameraMetaDataCallback:Landroid/hardware/Camera$CameraMetaDataCallback;
    invoke-static {v3}, Landroid/hardware/Camera;->access$900(Landroid/hardware/Camera;)Landroid/hardware/Camera$CameraMetaDataCallback;

    move-result-object v4

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, [I

    check-cast v3, [I

    iget-object v5, p0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    invoke-interface {v4, v3, v5}, Landroid/hardware/Camera$CameraMetaDataCallback;->onCameraMetaData([ILandroid/hardware/Camera;)V

    goto/16 :goto_0

    .line 743
    :sswitch_6
    iget-object v3, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    #getter for: Landroid/hardware/Camera;->mPostviewCallback:Landroid/hardware/Camera$PictureCallback;
    invoke-static {v3}, Landroid/hardware/Camera;->access$1000(Landroid/hardware/Camera;)Landroid/hardware/Camera$PictureCallback;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 744
    iget-object v3, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    #getter for: Landroid/hardware/Camera;->mPostviewCallback:Landroid/hardware/Camera$PictureCallback;
    invoke-static {v3}, Landroid/hardware/Camera;->access$1000(Landroid/hardware/Camera;)Landroid/hardware/Camera$PictureCallback;

    move-result-object v4

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, [B

    check-cast v3, [B

    iget-object v5, p0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    invoke-interface {v4, v3, v5}, Landroid/hardware/Camera$PictureCallback;->onPictureTaken([BLandroid/hardware/Camera;)V

    goto/16 :goto_0

    .line 749
    :sswitch_7
    iget-object v5, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    #getter for: Landroid/hardware/Camera;->mAutoFocusCallback:Landroid/hardware/Camera$AutoFocusCallback;
    invoke-static {v5}, Landroid/hardware/Camera;->access$1100(Landroid/hardware/Camera;)Landroid/hardware/Camera$AutoFocusCallback;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 750
    iget-object v5, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    #getter for: Landroid/hardware/Camera;->mAutoFocusCallback:Landroid/hardware/Camera$AutoFocusCallback;
    invoke-static {v5}, Landroid/hardware/Camera;->access$1100(Landroid/hardware/Camera;)Landroid/hardware/Camera$AutoFocusCallback;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->arg1:I

    if-nez v6, :cond_4

    :goto_3
    iget-object v4, p0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    invoke-interface {v5, v3, v4}, Landroid/hardware/Camera$AutoFocusCallback;->onAutoFocus(ZLandroid/hardware/Camera;)V

    goto/16 :goto_0

    :cond_4
    move v3, v4

    goto :goto_3

    .line 755
    :sswitch_8
    iget-object v5, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    #getter for: Landroid/hardware/Camera;->mZoomListener:Landroid/hardware/Camera$OnZoomChangeListener;
    invoke-static {v5}, Landroid/hardware/Camera;->access$1200(Landroid/hardware/Camera;)Landroid/hardware/Camera$OnZoomChangeListener;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 756
    iget-object v5, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    #getter for: Landroid/hardware/Camera;->mZoomListener:Landroid/hardware/Camera$OnZoomChangeListener;
    invoke-static {v5}, Landroid/hardware/Camera;->access$1200(Landroid/hardware/Camera;)Landroid/hardware/Camera$OnZoomChangeListener;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->arg1:I

    iget v7, p1, Landroid/os/Message;->arg2:I

    if-eqz v7, :cond_5

    :goto_4
    iget-object v3, p0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    invoke-interface {v5, v6, v4, v3}, Landroid/hardware/Camera$OnZoomChangeListener;->onZoomChange(IZLandroid/hardware/Camera;)V

    goto/16 :goto_0

    :cond_5
    move v4, v3

    goto :goto_4

    .line 761
    :sswitch_9
    iget-object v3, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    #getter for: Landroid/hardware/Camera;->mFaceListener:Landroid/hardware/Camera$FaceDetectionListener;
    invoke-static {v3}, Landroid/hardware/Camera;->access$1300(Landroid/hardware/Camera;)Landroid/hardware/Camera$FaceDetectionListener;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 762
    iget-object v3, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    #getter for: Landroid/hardware/Camera;->mFaceListener:Landroid/hardware/Camera$FaceDetectionListener;
    invoke-static {v3}, Landroid/hardware/Camera;->access$1300(Landroid/hardware/Camera;)Landroid/hardware/Camera$FaceDetectionListener;

    move-result-object v4

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, [Landroid/hardware/Camera$Face;

    check-cast v3, [Landroid/hardware/Camera$Face;

    iget-object v5, p0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    invoke-interface {v4, v3, v5}, Landroid/hardware/Camera$FaceDetectionListener;->onFaceDetection([Landroid/hardware/Camera$Face;Landroid/hardware/Camera;)V

    goto/16 :goto_0

    .line 767
    :sswitch_a
    const-string v3, "Camera"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 768
    iget-object v3, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    #getter for: Landroid/hardware/Camera;->mErrorCallback:Landroid/hardware/Camera$ErrorCallback;
    invoke-static {v3}, Landroid/hardware/Camera;->access$1400(Landroid/hardware/Camera;)Landroid/hardware/Camera$ErrorCallback;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 769
    iget-object v3, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    #getter for: Landroid/hardware/Camera;->mErrorCallback:Landroid/hardware/Camera$ErrorCallback;
    invoke-static {v3}, Landroid/hardware/Camera;->access$1400(Landroid/hardware/Camera;)Landroid/hardware/Camera$ErrorCallback;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    iget-object v5, p0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    invoke-interface {v3, v4, v5}, Landroid/hardware/Camera$ErrorCallback;->onError(ILandroid/hardware/Camera;)V

    goto/16 :goto_0

    .line 690
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_a
        0x2 -> :sswitch_0
        0x4 -> :sswitch_7
        0x8 -> :sswitch_8
        0x10 -> :sswitch_3
        0x40 -> :sswitch_6
        0x80 -> :sswitch_1
        0x100 -> :sswitch_2
        0x400 -> :sswitch_9
        0x800 -> :sswitch_4
        0x8000 -> :sswitch_5
    .end sparse-switch
.end method

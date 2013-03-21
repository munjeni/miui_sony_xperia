.class Landroid/webkit/HTML5CanvasManager$HTML5CanvasTexture;
.super Ljava/lang/Object;
.source "HTML5CanvasManager.java"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/HTML5CanvasManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HTML5CanvasTexture"
.end annotation


# instance fields
.field private mCanvasElementId:I

.field private mFramesSinceLast:J

.field private mGlTextureNames:[I

.field private mLastSampleTime:J

.field private mSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field final synthetic this$0:Landroid/webkit/HTML5CanvasManager;


# direct methods
.method public constructor <init>(Landroid/webkit/HTML5CanvasManager;I)V
    .locals 3
    .parameter
    .parameter "id"

    .prologue
    const-wide/16 v1, 0x0

    const/4 v0, 0x0

    .line 233
    iput-object p1, p0, Landroid/webkit/HTML5CanvasManager$HTML5CanvasTexture;->this$0:Landroid/webkit/HTML5CanvasManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 225
    iput-object v0, p0, Landroid/webkit/HTML5CanvasManager$HTML5CanvasTexture;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 226
    iput-object v0, p0, Landroid/webkit/HTML5CanvasManager$HTML5CanvasTexture;->mGlTextureNames:[I

    .line 230
    iput-wide v1, p0, Landroid/webkit/HTML5CanvasManager$HTML5CanvasTexture;->mFramesSinceLast:J

    .line 231
    iput-wide v1, p0, Landroid/webkit/HTML5CanvasManager$HTML5CanvasTexture;->mLastSampleTime:J

    .line 234
    iput p2, p0, Landroid/webkit/HTML5CanvasManager$HTML5CanvasTexture;->mCanvasElementId:I

    .line 235
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 291
    iget-object v0, p0, Landroid/webkit/HTML5CanvasManager$HTML5CanvasTexture;->mGlTextureNames:[I

    if-eqz v0, :cond_0

    .line 292
    const/4 v0, 0x1

    iget-object v1, p0, Landroid/webkit/HTML5CanvasManager$HTML5CanvasTexture;->mGlTextureNames:[I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 293
    iput-object v3, p0, Landroid/webkit/HTML5CanvasManager$HTML5CanvasTexture;->mGlTextureNames:[I

    .line 295
    :cond_0
    iget-object v0, p0, Landroid/webkit/HTML5CanvasManager$HTML5CanvasTexture;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/webkit/HTML5CanvasManager$HTML5CanvasTexture;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    .line 296
    :cond_1
    iput-object v3, p0, Landroid/webkit/HTML5CanvasManager$HTML5CanvasTexture;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 297
    return-void
.end method

.method public generateTexture()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 239
    iget-object v0, p0, Landroid/webkit/HTML5CanvasManager$HTML5CanvasTexture;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-nez v0, :cond_0

    .line 240
    new-array v0, v1, [I

    iput-object v0, p0, Landroid/webkit/HTML5CanvasManager$HTML5CanvasTexture;->mGlTextureNames:[I

    .line 241
    iget-object v0, p0, Landroid/webkit/HTML5CanvasManager$HTML5CanvasTexture;->mGlTextureNames:[I

    invoke-static {v1, v0, v4}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 243
    new-instance v0, Landroid/graphics/SurfaceTexture;

    iget-object v1, p0, Landroid/webkit/HTML5CanvasManager$HTML5CanvasTexture;->mGlTextureNames:[I

    aget v1, v1, v4

    invoke-direct {v0, v1}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v0, p0, Landroid/webkit/HTML5CanvasManager$HTML5CanvasTexture;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 244
    iget-object v0, p0, Landroid/webkit/HTML5CanvasManager$HTML5CanvasTexture;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, p0}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 249
    iget-object v0, p0, Landroid/webkit/HTML5CanvasManager$HTML5CanvasTexture;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    iget-object v1, p0, Landroid/webkit/HTML5CanvasManager$HTML5CanvasTexture;->this$0:Landroid/webkit/HTML5CanvasManager;

    iget v1, v1, Landroid/webkit/HTML5CanvasManager;->mNativePointer:I

    iget v2, p0, Landroid/webkit/HTML5CanvasManager$HTML5CanvasTexture;->mCanvasElementId:I

    iget-object v3, p0, Landroid/webkit/HTML5CanvasManager$HTML5CanvasTexture;->mGlTextureNames:[I

    aget v3, v3, v4

    #calls: Landroid/webkit/HTML5CanvasManager;->nativeSendSurfaceTexture(Landroid/graphics/SurfaceTexture;III)Z
    invoke-static {v0, v1, v2, v3}, Landroid/webkit/HTML5CanvasManager;->access$200(Landroid/graphics/SurfaceTexture;III)Z

    move-result v0

    if-nez v0, :cond_0

    .line 252
    invoke-virtual {p0}, Landroid/webkit/HTML5CanvasManager$HTML5CanvasTexture;->dispose()V

    .line 257
    :cond_0
    return-void
.end method

.method public onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 3
    .parameter "surfaceTexture"

    .prologue
    .line 301
    iget-object v1, p0, Landroid/webkit/HTML5CanvasManager$HTML5CanvasTexture;->this$0:Landroid/webkit/HTML5CanvasManager;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/webkit/HTML5CanvasManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 302
    .local v0, msg:Landroid/os/Message;
    iput-object p0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 304
    iget-object v1, p0, Landroid/webkit/HTML5CanvasManager$HTML5CanvasTexture;->this$0:Landroid/webkit/HTML5CanvasManager;

    invoke-virtual {v1, v0}, Landroid/webkit/HTML5CanvasManager;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 305
    return-void
.end method

.method public update()V
    .locals 3

    .prologue
    .line 260
    iget-object v1, p0, Landroid/webkit/HTML5CanvasManager$HTML5CanvasTexture;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v1, :cond_0

    .line 262
    :try_start_0
    iget-object v1, p0, Landroid/webkit/HTML5CanvasManager$HTML5CanvasTexture;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v1}, Landroid/graphics/SurfaceTexture;->updateTexImage()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 287
    :cond_0
    :goto_0
    return-void

    .line 263
    :catch_0
    move-exception v0

    .line 264
    .local v0, re:Ljava/lang/RuntimeException;
    const-string v1, "HTML5CanvasManager"

    const-string/jumbo v2, "mSurfaceTexture.updateTexImage() failed!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

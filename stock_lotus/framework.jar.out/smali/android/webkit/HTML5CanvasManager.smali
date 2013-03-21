.class public Landroid/webkit/HTML5CanvasManager;
.super Landroid/os/Handler;
.source "HTML5CanvasManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/HTML5CanvasManager$HTML5CanvasTexture;
    }
.end annotation


# static fields
.field private static final CANVAS_ELEMENT_CREATED:I = 0x1

.field private static final CANVAS_ELEMENT_DESTROYED:I = 0x0

.field static final DEBUG_FPS:Z = false

.field private static final FRAME_AVAILABLE:I = 0x2

.field private static final INVALIDATE:I = 0x3

.field private static final LOGTAG:Ljava/lang/String; = "HTML5CanvasManager"

.field static final ONE_SECOND:J = 0x3e8L

.field private static final PERFORM_SYNC:I = 0x64

.field static final SAMPLE_PERIOD:J = 0x1388L

.field static final VDEBUG:Z = false

.field private static final VIEW_PAUS_CANVAS_DRAWING:I = 0x65


# instance fields
.field private mCanvasElements:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/webkit/HTML5CanvasManager$HTML5CanvasTexture;",
            ">;"
        }
    .end annotation
.end field

.field mNativePointer:I

.field mNativeViewKey:I

.field private mWebCoreHandler:Landroid/os/Handler;

.field private mWebView:Landroid/webkit/WebView;

.field private mWebViewCore:Landroid/webkit/WebViewCore;


# direct methods
.method private constructor <init>(Landroid/webkit/WebViewCore;II)V
    .locals 1
    .parameter "webViewCore"
    .parameter "nativePtr"
    .parameter "nativeViewKey"

    .prologue
    .line 84
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 86
    iput-object p1, p0, Landroid/webkit/HTML5CanvasManager;->mWebViewCore:Landroid/webkit/WebViewCore;

    .line 90
    iget-object v0, p0, Landroid/webkit/HTML5CanvasManager;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v0}, Landroid/webkit/WebViewCore;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    iput-object v0, p0, Landroid/webkit/HTML5CanvasManager;->mWebView:Landroid/webkit/WebView;

    .line 91
    iget-object v0, p0, Landroid/webkit/HTML5CanvasManager;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, p0}, Landroid/webkit/WebView;->setHTML5CanvasManager(Landroid/webkit/HTML5CanvasManager;)V

    .line 93
    iput p2, p0, Landroid/webkit/HTML5CanvasManager;->mNativePointer:I

    .line 94
    iput p3, p0, Landroid/webkit/HTML5CanvasManager;->mNativeViewKey:I

    .line 97
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/webkit/HTML5CanvasManager;->mCanvasElements:Ljava/util/HashMap;

    .line 99
    invoke-direct {p0}, Landroid/webkit/HTML5CanvasManager;->createWebCoreHandler()V

    .line 100
    return-void
.end method

.method static synthetic access$000(II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    invoke-static {p0, p1}, Landroid/webkit/HTML5CanvasManager;->nativePerformSync(II)V

    return-void
.end method

.method static synthetic access$100(IIZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 34
    invoke-static {p0, p1, p2}, Landroid/webkit/HTML5CanvasManager;->nativeSetPaintingDisabled(IIZ)V

    return-void
.end method

.method static synthetic access$200(Landroid/graphics/SurfaceTexture;III)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 34
    invoke-static {p0, p1, p2, p3}, Landroid/webkit/HTML5CanvasManager;->nativeSendSurfaceTexture(Landroid/graphics/SurfaceTexture;III)Z

    move-result v0

    return v0
.end method

.method private createWebCoreHandler()V
    .locals 1

    .prologue
    .line 154
    new-instance v0, Landroid/webkit/HTML5CanvasManager$1;

    invoke-direct {v0, p0}, Landroid/webkit/HTML5CanvasManager$1;-><init>(Landroid/webkit/HTML5CanvasManager;)V

    iput-object v0, p0, Landroid/webkit/HTML5CanvasManager;->mWebCoreHandler:Landroid/os/Handler;

    .line 178
    return-void
.end method

.method public static getInstance(Landroid/webkit/WebViewCore;II)Landroid/webkit/HTML5CanvasManager;
    .locals 1
    .parameter "webViewCore"
    .parameter "nativePtr"
    .parameter "nativeViewKey"

    .prologue
    .line 220
    new-instance v0, Landroid/webkit/HTML5CanvasManager;

    invoke-direct {v0, p0, p1, p2}, Landroid/webkit/HTML5CanvasManager;-><init>(Landroid/webkit/WebViewCore;II)V

    return-object v0
.end method

.method private static native nativePerformSync(II)V
.end method

.method private static native nativeSendSurfaceTexture(Landroid/graphics/SurfaceTexture;III)Z
.end method

.method private static native nativeSetPaintingDisabled(IIZ)V
.end method


# virtual methods
.method public canvasElementCreated(I)V
    .locals 3
    .parameter "elementId"

    .prologue
    .line 183
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, p1, v2}, Landroid/webkit/HTML5CanvasManager;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 184
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 185
    return-void
.end method

.method public canvasElementDestroyed(I)V
    .locals 2
    .parameter "elementId"

    .prologue
    const/4 v1, 0x0

    .line 188
    invoke-virtual {p0, v1, p1, v1}, Landroid/webkit/HTML5CanvasManager;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 191
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 192
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    .line 105
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 147
    const-string v3, "HTML5CanvasManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Got unexpected message: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 150
    :cond_0
    :goto_0
    return-void

    .line 107
    :pswitch_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 108
    .local v0, elementId:I
    iget-object v3, p0, Landroid/webkit/HTML5CanvasManager;->mCanvasElements:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 109
    const-string v3, "HTML5CanvasManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "canvasElementCreated: ElementID "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " already exists!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 114
    :cond_1
    iget-object v3, p0, Landroid/webkit/HTML5CanvasManager;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getLayerType()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_2

    .line 115
    new-instance v1, Landroid/webkit/HTML5CanvasManager$HTML5CanvasTexture;

    invoke-direct {v1, p0, v0}, Landroid/webkit/HTML5CanvasManager$HTML5CanvasTexture;-><init>(Landroid/webkit/HTML5CanvasManager;I)V

    .line 116
    .local v1, elementTexture:Landroid/webkit/HTML5CanvasManager$HTML5CanvasTexture;
    iget-object v3, p0, Landroid/webkit/HTML5CanvasManager;->mCanvasElements:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    invoke-virtual {v1}, Landroid/webkit/HTML5CanvasManager$HTML5CanvasTexture;->generateTexture()V

    goto :goto_0

    .line 122
    .end local v1           #elementTexture:Landroid/webkit/HTML5CanvasManager$HTML5CanvasTexture;
    :cond_2
    const/4 v3, 0x0

    iget v4, p0, Landroid/webkit/HTML5CanvasManager;->mNativePointer:I

    const/4 v5, 0x0

    invoke-static {v3, v4, v0, v5}, Landroid/webkit/HTML5CanvasManager;->nativeSendSurfaceTexture(Landroid/graphics/SurfaceTexture;III)Z

    goto :goto_0

    .line 128
    .end local v0           #elementId:I
    :pswitch_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 129
    .restart local v0       #elementId:I
    iget-object v3, p0, Landroid/webkit/HTML5CanvasManager;->mCanvasElements:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 130
    iget-object v3, p0, Landroid/webkit/HTML5CanvasManager;->mCanvasElements:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/webkit/HTML5CanvasManager$HTML5CanvasTexture;

    .line 131
    .restart local v1       #elementTexture:Landroid/webkit/HTML5CanvasManager$HTML5CanvasTexture;
    invoke-virtual {v1}, Landroid/webkit/HTML5CanvasManager$HTML5CanvasTexture;->dispose()V

    goto :goto_0

    .line 137
    .end local v0           #elementId:I
    .end local v1           #elementTexture:Landroid/webkit/HTML5CanvasManager$HTML5CanvasTexture;
    :pswitch_2
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/webkit/HTML5CanvasManager$HTML5CanvasTexture;

    .line 139
    .local v2, texture:Landroid/webkit/HTML5CanvasManager$HTML5CanvasTexture;
    invoke-virtual {v2}, Landroid/webkit/HTML5CanvasManager$HTML5CanvasTexture;->update()V

    goto :goto_0

    .line 143
    .end local v2           #texture:Landroid/webkit/HTML5CanvasManager$HTML5CanvasTexture;
    :pswitch_3
    iget-object v3, p0, Landroid/webkit/HTML5CanvasManager;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->invalidate()V

    goto :goto_0

    .line 105
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public pauseDrawing(Z)V
    .locals 5
    .parameter "pause"

    .prologue
    const/4 v2, 0x0

    .line 205
    iget-object v3, p0, Landroid/webkit/HTML5CanvasManager;->mWebCoreHandler:Landroid/os/Handler;

    const/16 v4, 0x65

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v3, v4, v1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 206
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 207
    return-void

    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    move v1, v2

    .line 205
    goto :goto_0
.end method

.method public postSyncMessage(I)V
    .locals 4
    .parameter "userData"

    .prologue
    .line 198
    iget-object v1, p0, Landroid/webkit/HTML5CanvasManager;->mWebCoreHandler:Landroid/os/Handler;

    const/16 v2, 0x64

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 199
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 200
    return-void
.end method

.class final Lcom/android/providers/media/MediaScannerService$ServiceHandler;
.super Landroid/os/Handler;
.source "MediaScannerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/media/MediaScannerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ServiceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/providers/media/MediaScannerService;


# direct methods
.method private constructor <init>(Lcom/android/providers/media/MediaScannerService;)V
    .locals 0
    .parameter

    .prologue
    .line 292
    iput-object p1, p0, Lcom/android/providers/media/MediaScannerService$ServiceHandler;->this$0:Lcom/android/providers/media/MediaScannerService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/providers/media/MediaScannerService;Lcom/android/providers/media/MediaScannerService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 292
    invoke-direct {p0, p1}, Lcom/android/providers/media/MediaScannerService$ServiceHandler;-><init>(Lcom/android/providers/media/MediaScannerService;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 14
    .parameter "msg"

    .prologue
    const/4 v7, 0x0

    .line 300
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;

    .line 301
    .local v1, arguments:Landroid/os/Bundle;
    const-string v11, "filepath"

    invoke-virtual {v1, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 304
    .local v6, filePath:Ljava/lang/String;
    if-eqz v6, :cond_2

    .line 305
    :try_start_0
    const-string v11, "listener"

    invoke-virtual {v1, v11}, Landroid/os/Bundle;->getIBinder(Ljava/lang/String;)Landroid/os/IBinder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 306
    .local v2, binder:Landroid/os/IBinder;
    if-nez v2, :cond_1

    .line 308
    .local v7, listener:Landroid/media/IMediaScannerListener;
    :goto_0
    const/4 v9, 0x0

    .line 310
    .local v9, uri:Landroid/net/Uri;
    :try_start_1
    iget-object v11, p0, Lcom/android/providers/media/MediaScannerService$ServiceHandler;->this$0:Lcom/android/providers/media/MediaScannerService;

    const-string v12, "mimetype"

    invoke-virtual {v1, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    #calls: Lcom/android/providers/media/MediaScannerService;->scanFile(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    invoke-static {v11, v6, v12}, Lcom/android/providers/media/MediaScannerService;->access$100(Lcom/android/providers/media/MediaScannerService;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v9

    .line 314
    :goto_1
    if-eqz v7, :cond_0

    .line 315
    :try_start_2
    invoke-interface {v7, v6, v9}, Landroid/media/IMediaScannerListener;->scanCompleted(Ljava/lang/String;Landroid/net/Uri;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 377
    .end local v2           #binder:Landroid/os/IBinder;
    .end local v7           #listener:Landroid/media/IMediaScannerListener;
    .end local v9           #uri:Landroid/net/Uri;
    :cond_0
    :goto_2
    iget-object v11, p0, Lcom/android/providers/media/MediaScannerService$ServiceHandler;->this$0:Lcom/android/providers/media/MediaScannerService;

    iget v12, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v11, v12}, Lcom/android/providers/media/MediaScannerService;->stopSelf(I)V

    .line 378
    return-void

    .line 306
    .restart local v2       #binder:Landroid/os/IBinder;
    :cond_1
    :try_start_3
    invoke-static {v2}, Landroid/media/IMediaScannerListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IMediaScannerListener;

    move-result-object v7

    goto :goto_0

    .line 311
    .restart local v7       #listener:Landroid/media/IMediaScannerListener;
    .restart local v9       #uri:Landroid/net/Uri;
    :catch_0
    move-exception v5

    .line 312
    .local v5, e:Ljava/lang/Exception;
    const-string v11, "MediaScannerService"

    const-string v12, "Exception scanning file"

    invoke-static {v11, v12, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 373
    .end local v2           #binder:Landroid/os/IBinder;
    .end local v5           #e:Ljava/lang/Exception;
    .end local v7           #listener:Landroid/media/IMediaScannerListener;
    .end local v9           #uri:Landroid/net/Uri;
    :catch_1
    move-exception v5

    .line 374
    .restart local v5       #e:Ljava/lang/Exception;
    const-string v11, "MediaScannerService"

    const-string v12, "Exception in handleMessage"

    invoke-static {v11, v12, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 318
    .end local v5           #e:Ljava/lang/Exception;
    :cond_2
    :try_start_4
    const-string v11, "volume"

    invoke-virtual {v1, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 319
    .local v10, volume:Ljava/lang/String;
    const/4 v3, 0x0

    .line 320
    .local v3, directories:[Ljava/lang/String;
    const-string v11, "action"

    invoke-virtual {v1, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 322
    .local v0, action:Ljava/lang/String;
    const/4 v8, 0x1

    .line 324
    .local v8, shouldScan:Z
    const-string v11, "internal"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 326
    const/4 v11, 0x1

    new-array v3, v11, [Ljava/lang/String;

    .end local v3           #directories:[Ljava/lang/String;
    const/4 v11, 0x0

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "/media"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v3, v11

    .line 336
    .restart local v3       #directories:[Ljava/lang/String;
    :cond_3
    :goto_3
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "file://"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/4 v12, 0x0

    aget-object v12, v3, v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .line 337
    .restart local v9       #uri:Landroid/net/Uri;
    iget-object v11, p0, Lcom/android/providers/media/MediaScannerService$ServiceHandler;->this$0:Lcom/android/providers/media/MediaScannerService;

    new-instance v12, Landroid/content/Intent;

    const-string v13, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-direct {v12, v13, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v11, v12}, Lcom/android/providers/media/MediaScannerService;->sendBroadcast(Landroid/content/Intent;)V

    .line 339
    const-string v11, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 340
    iget-object v11, p0, Lcom/android/providers/media/MediaScannerService$ServiceHandler;->this$0:Lcom/android/providers/media/MediaScannerService;

    #getter for: Lcom/android/providers/media/MediaScannerService;->mMediaProvider:Landroid/content/IContentProvider;
    invoke-static {v11}, Lcom/android/providers/media/MediaScannerService;->access$300(Lcom/android/providers/media/MediaScannerService;)Landroid/content/IContentProvider;

    move-result-object v11

    const-string v12, "com.android.providers.media.mount"

    const/4 v13, 0x0

    invoke-interface {v11, v12, v13, v1}, Landroid/content/IContentProvider;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 345
    :cond_4
    :goto_4
    if-eqz v3, :cond_0

    .line 346
    const/4 v4, 0x0

    .line 347
    .local v4, doScan:Z
    monitor-enter p0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 351
    :try_start_5
    iget v11, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, v11}, Lcom/android/providers/media/MediaScannerService$ServiceHandler;->hasMessages(I)Z

    move-result v11

    if-nez v11, :cond_5

    if-eqz v8, :cond_5

    .line 352
    const/4 v4, 0x1

    .line 353
    iget-object v11, p0, Lcom/android/providers/media/MediaScannerService$ServiceHandler;->this$0:Lcom/android/providers/media/MediaScannerService;

    iget v12, p1, Landroid/os/Message;->what:I

    #setter for: Lcom/android/providers/media/MediaScannerService;->mCurrentTask:I
    invoke-static {v11, v12}, Lcom/android/providers/media/MediaScannerService;->access$402(Lcom/android/providers/media/MediaScannerService;I)I

    .line 354
    #calls: Lcom/android/providers/media/MediaScannerService;->unblockScanner()V
    invoke-static {}, Lcom/android/providers/media/MediaScannerService;->access$500()V

    .line 356
    :cond_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 358
    if-eqz v4, :cond_8

    .line 361
    :try_start_6
    iget-object v11, p0, Lcom/android/providers/media/MediaScannerService$ServiceHandler;->this$0:Lcom/android/providers/media/MediaScannerService;

    #calls: Lcom/android/providers/media/MediaScannerService;->scan([Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v11, v3, v10}, Lcom/android/providers/media/MediaScannerService;->access$600(Lcom/android/providers/media/MediaScannerService;[Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    monitor-enter p0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    .line 364
    :try_start_7
    iget-object v11, p0, Lcom/android/providers/media/MediaScannerService$ServiceHandler;->this$0:Lcom/android/providers/media/MediaScannerService;

    const/4 v12, 0x0

    #setter for: Lcom/android/providers/media/MediaScannerService;->mCurrentTask:I
    invoke-static {v11, v12}, Lcom/android/providers/media/MediaScannerService;->access$402(Lcom/android/providers/media/MediaScannerService;I)I

    .line 365
    monitor-exit p0

    goto/16 :goto_2

    :catchall_0
    move-exception v11

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    throw v11

    .line 330
    .end local v4           #doScan:Z
    .end local v9           #uri:Landroid/net/Uri;
    :cond_6
    const-string v11, "external"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 332
    iget-object v11, p0, Lcom/android/providers/media/MediaScannerService$ServiceHandler;->this$0:Lcom/android/providers/media/MediaScannerService;

    #getter for: Lcom/android/providers/media/MediaScannerService;->mExternalStoragePaths:[Ljava/lang/String;
    invoke-static {v11}, Lcom/android/providers/media/MediaScannerService;->access$200(Lcom/android/providers/media/MediaScannerService;)[Ljava/lang/String;

    move-result-object v3

    .line 333
    iget-object v11, p0, Lcom/android/providers/media/MediaScannerService$ServiceHandler;->this$0:Lcom/android/providers/media/MediaScannerService;

    const-string v12, "volumePath"

    invoke-virtual {v1, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12, v0}, Lcom/android/providers/media/MediaScannerService;->shouldScan(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    goto/16 :goto_3

    .line 341
    .restart local v9       #uri:Landroid/net/Uri;
    :cond_7
    const-string v11, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 342
    iget-object v11, p0, Lcom/android/providers/media/MediaScannerService$ServiceHandler;->this$0:Lcom/android/providers/media/MediaScannerService;

    #getter for: Lcom/android/providers/media/MediaScannerService;->mMediaProvider:Landroid/content/IContentProvider;
    invoke-static {v11}, Lcom/android/providers/media/MediaScannerService;->access$300(Lcom/android/providers/media/MediaScannerService;)Landroid/content/IContentProvider;

    move-result-object v11

    const-string v12, "com.android.providers.media.eject"

    const/4 v13, 0x0

    invoke-interface {v11, v12, v13, v1}, Landroid/content/IContentProvider;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_4

    .line 356
    .restart local v4       #doScan:Z
    :catchall_1
    move-exception v11

    :try_start_9
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :try_start_a
    throw v11

    .line 369
    :cond_8
    iget-object v11, p0, Lcom/android/providers/media/MediaScannerService$ServiceHandler;->this$0:Lcom/android/providers/media/MediaScannerService;

    new-instance v12, Landroid/content/Intent;

    const-string v13, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-direct {v12, v13, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v11, v12}, Lcom/android/providers/media/MediaScannerService;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1

    goto/16 :goto_2
.end method

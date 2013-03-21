.class Landroid/net/wifi/ApduService$ApduServiceRunner;
.super Ljava/lang/Object;
.source "ApduService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/ApduService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ApduServiceRunner"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/ApduService;


# direct methods
.method private constructor <init>(Landroid/net/wifi/ApduService;)V
    .locals 0
    .parameter

    .prologue
    .line 58
    iput-object p1, p0, Landroid/net/wifi/ApduService$ApduServiceRunner;->this$0:Landroid/net/wifi/ApduService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/net/wifi/ApduService;Landroid/net/wifi/ApduService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    invoke-direct {p0, p1}, Landroid/net/wifi/ApduService$ApduServiceRunner;-><init>(Landroid/net/wifi/ApduService;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 63
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/ApduService$ApduServiceRunner;->this$0:Landroid/net/wifi/ApduService;

    new-instance v2, Landroid/net/LocalServerSocket;

    iget-object v3, p0, Landroid/net/wifi/ApduService$ApduServiceRunner;->this$0:Landroid/net/wifi/ApduService;

    #getter for: Landroid/net/wifi/ApduService;->mSocketName:Ljava/lang/String;
    invoke-static {v3}, Landroid/net/wifi/ApduService;->access$200(Landroid/net/wifi/ApduService;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/net/LocalServerSocket;-><init>(Ljava/lang/String;)V

    #setter for: Landroid/net/wifi/ApduService;->mServerSocket:Landroid/net/LocalServerSocket;
    invoke-static {v1, v2}, Landroid/net/wifi/ApduService;->access$102(Landroid/net/wifi/ApduService;Landroid/net/LocalServerSocket;)Landroid/net/LocalServerSocket;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    :try_start_1
    iget-object v1, p0, Landroid/net/wifi/ApduService$ApduServiceRunner;->this$0:Landroid/net/wifi/ApduService;

    #calls: Landroid/net/wifi/ApduService;->runService()V
    invoke-static {v1}, Landroid/net/wifi/ApduService;->access$300(Landroid/net/wifi/ApduService;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 75
    :goto_0
    :try_start_2
    iget-object v1, p0, Landroid/net/wifi/ApduService$ApduServiceRunner;->this$0:Landroid/net/wifi/ApduService;

    #getter for: Landroid/net/wifi/ApduService;->mServerSocket:Landroid/net/LocalServerSocket;
    invoke-static {v1}, Landroid/net/wifi/ApduService;->access$100(Landroid/net/wifi/ApduService;)Landroid/net/LocalServerSocket;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v1

    if-eqz v1, :cond_0

    .line 77
    :try_start_3
    iget-object v1, p0, Landroid/net/wifi/ApduService$ApduServiceRunner;->this$0:Landroid/net/wifi/ApduService;

    #getter for: Landroid/net/wifi/ApduService;->mServerSocket:Landroid/net/LocalServerSocket;
    invoke-static {v1}, Landroid/net/wifi/ApduService;->access$100(Landroid/net/wifi/ApduService;)Landroid/net/LocalServerSocket;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/LocalServerSocket;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 81
    :goto_1
    :try_start_4
    iget-object v1, p0, Landroid/net/wifi/ApduService$ApduServiceRunner;->this$0:Landroid/net/wifi/ApduService;

    const/4 v2, 0x0

    #setter for: Landroid/net/wifi/ApduService;->mServerSocket:Landroid/net/LocalServerSocket;
    invoke-static {v1, v2}, Landroid/net/wifi/ApduService;->access$102(Landroid/net/wifi/ApduService;Landroid/net/LocalServerSocket;)Landroid/net/LocalServerSocket;

    .line 84
    :cond_0
    iget-object v1, p0, Landroid/net/wifi/ApduService$ApduServiceRunner;->this$0:Landroid/net/wifi/ApduService;

    #getter for: Landroid/net/wifi/ApduService;->mConnectionSocket:Landroid/net/LocalSocket;
    invoke-static {v1}, Landroid/net/wifi/ApduService;->access$400(Landroid/net/wifi/ApduService;)Landroid/net/LocalSocket;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v1

    if-eqz v1, :cond_1

    .line 86
    :try_start_5
    iget-object v1, p0, Landroid/net/wifi/ApduService$ApduServiceRunner;->this$0:Landroid/net/wifi/ApduService;

    #getter for: Landroid/net/wifi/ApduService;->mConnectionSocket:Landroid/net/LocalSocket;
    invoke-static {v1}, Landroid/net/wifi/ApduService;->access$400(Landroid/net/wifi/ApduService;)Landroid/net/LocalSocket;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/LocalSocket;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 92
    :cond_1
    :goto_2
    iget-object v1, p0, Landroid/net/wifi/ApduService$ApduServiceRunner;->this$0:Landroid/net/wifi/ApduService;

    #setter for: Landroid/net/wifi/ApduService;->mStarted:Z
    invoke-static {v1, v4}, Landroid/net/wifi/ApduService;->access$502(Landroid/net/wifi/ApduService;Z)Z

    .line 94
    :goto_3
    return-void

    .line 64
    :catch_0
    move-exception v0

    .line 65
    .local v0, e:Ljava/io/IOException;
    :try_start_6
    const-string v1, "ApduService"

    const-string v2, "Service startup failed. Could not create server socket"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 92
    iget-object v1, p0, Landroid/net/wifi/ApduService$ApduServiceRunner;->this$0:Landroid/net/wifi/ApduService;

    #setter for: Landroid/net/wifi/ApduService;->mStarted:Z
    invoke-static {v1, v4}, Landroid/net/wifi/ApduService;->access$502(Landroid/net/wifi/ApduService;Z)Z

    goto :goto_3

    .line 71
    .end local v0           #e:Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 72
    .local v0, e:Ljava/lang/RuntimeException;
    :try_start_7
    const-string v1, "ApduService"

    const-string v2, "RuntimeException running service, closing down"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_0

    .line 92
    .end local v0           #e:Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v1

    iget-object v2, p0, Landroid/net/wifi/ApduService$ApduServiceRunner;->this$0:Landroid/net/wifi/ApduService;

    #setter for: Landroid/net/wifi/ApduService;->mStarted:Z
    invoke-static {v2, v4}, Landroid/net/wifi/ApduService;->access$502(Landroid/net/wifi/ApduService;Z)Z

    throw v1

    .line 78
    :catch_2
    move-exception v0

    .line 79
    .local v0, e:Ljava/io/IOException;
    :try_start_8
    const-string v1, "ApduService"

    const-string v2, "Error closing local server socket"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 87
    .end local v0           #e:Ljava/io/IOException;
    :catch_3
    move-exception v0

    .line 88
    .restart local v0       #e:Ljava/io/IOException;
    const-string v1, "ApduService"

    const-string v2, "Error closing connection socket"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_2
.end method

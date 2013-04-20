.class final Lcom/android/server/location/BTGpsLocationProvider$BTGPSMessageThread;
.super Ljava/lang/Thread;
.source "BTGpsLocationProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/BTGpsLocationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BTGPSMessageThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/BTGpsLocationProvider;


# direct methods
.method private constructor <init>(Lcom/android/server/location/BTGpsLocationProvider;)V
    .locals 0
    .parameter

    .prologue
    .line 193
    iput-object p1, p0, Lcom/android/server/location/BTGpsLocationProvider$BTGPSMessageThread;->this$0:Lcom/android/server/location/BTGpsLocationProvider;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/location/BTGpsLocationProvider;Lcom/android/server/location/BTGpsLocationProvider$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 193
    invoke-direct {p0, p1}, Lcom/android/server/location/BTGpsLocationProvider$BTGPSMessageThread;-><init>(Lcom/android/server/location/BTGpsLocationProvider;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 197
    :try_start_0
    invoke-static {}, Landroid/os/Looper;->prepare()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 201
    :goto_0
    iget-object v0, p0, Lcom/android/server/location/BTGpsLocationProvider$BTGPSMessageThread;->this$0:Lcom/android/server/location/BTGpsLocationProvider;

    new-instance v1, Lcom/android/server/location/BTGpsLocationProvider$BTGPSMessageThread$1;

    invoke-direct {v1, p0}, Lcom/android/server/location/BTGpsLocationProvider$BTGPSMessageThread$1;-><init>(Lcom/android/server/location/BTGpsLocationProvider$BTGPSMessageThread;)V

    #setter for: Lcom/android/server/location/BTGpsLocationProvider;->mHandler:Landroid/os/Handler;
    invoke-static {v0, v1}, Lcom/android/server/location/BTGpsLocationProvider;->access$202(Lcom/android/server/location/BTGpsLocationProvider;Landroid/os/Handler;)Landroid/os/Handler;

    .line 260
    iget-object v0, p0, Lcom/android/server/location/BTGpsLocationProvider$BTGPSMessageThread;->this$0:Lcom/android/server/location/BTGpsLocationProvider;

    #getter for: Lcom/android/server/location/BTGpsLocationProvider;->mInitializedLatch:Ljava/util/concurrent/CountDownLatch;
    invoke-static {v0}, Lcom/android/server/location/BTGpsLocationProvider;->access$1400(Lcom/android/server/location/BTGpsLocationProvider;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 261
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 262
    return-void

    .line 198
    :catch_0
    move-exception v0

    goto :goto_0
.end method

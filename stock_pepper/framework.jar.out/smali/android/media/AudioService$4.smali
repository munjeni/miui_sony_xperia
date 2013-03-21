.class Landroid/media/AudioService$4;
.super Landroid/telephony/PhoneStateListener;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/AudioService;


# direct methods
.method constructor <init>(Landroid/media/AudioService;)V
    .locals 0
    .parameter

    .prologue
    .line 2849
    iput-object p1, p0, Landroid/media/AudioService$4;->this$0:Landroid/media/AudioService;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 3
    .parameter "state"
    .parameter "incomingNumber"

    .prologue
    const/4 v0, 0x1

    .line 2852
    if-ne p1, v0, :cond_1

    .line 2854
    invoke-static {}, Landroid/media/AudioService;->access$7000()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 2855
    :try_start_0
    iget-object v0, p0, Landroid/media/AudioService$4;->this$0:Landroid/media/AudioService;

    const/4 v2, 0x1

    #setter for: Landroid/media/AudioService;->mIsRinging:Z
    invoke-static {v0, v2}, Landroid/media/AudioService;->access$7102(Landroid/media/AudioService;Z)Z

    .line 2856
    monitor-exit v1

    .line 2863
    :cond_0
    :goto_0
    return-void

    .line 2856
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 2857
    :cond_1
    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    if-nez p1, :cond_0

    .line 2859
    :cond_2
    invoke-static {}, Landroid/media/AudioService;->access$7000()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 2860
    :try_start_1
    iget-object v0, p0, Landroid/media/AudioService$4;->this$0:Landroid/media/AudioService;

    const/4 v2, 0x0

    #setter for: Landroid/media/AudioService;->mIsRinging:Z
    invoke-static {v0, v2}, Landroid/media/AudioService;->access$7102(Landroid/media/AudioService;Z)Z

    .line 2861
    monitor-exit v1

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0
.end method

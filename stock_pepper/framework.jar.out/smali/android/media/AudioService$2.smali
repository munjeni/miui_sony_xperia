.class Landroid/media/AudioService$2;
.super Ljava/lang/Object;
.source "AudioService.java"

# interfaces
.implements Landroid/media/AudioSystem$SoundLevelAlertCallback;


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
    .line 245
    iput-object p1, p0, Landroid/media/AudioService$2;->this$0:Landroid/media/AudioService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSoundLevelAlertCallback(Z)V
    .locals 4
    .parameter "show"

    .prologue
    .line 248
    iget-object v0, p0, Landroid/media/AudioService$2;->this$0:Landroid/media/AudioService;

    #calls: Landroid/media/AudioService;->sendSoundLevelAlertIntent(Z)V
    invoke-static {v0, p1}, Landroid/media/AudioService;->access$300(Landroid/media/AudioService;Z)V

    .line 250
    iget-object v0, p0, Landroid/media/AudioService$2;->this$0:Landroid/media/AudioService;

    const/4 v1, 0x3

    const/16 v2, 0x8

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioService;->setStreamVolume(III)V

    .line 251
    return-void
.end method

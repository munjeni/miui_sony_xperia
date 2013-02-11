.class Lcom/example/android/fmradioreceiver/FmRadioReceiver$4;
.super Ljava/lang/Thread;
.source "FmRadioReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/android/fmradioreceiver/FmRadioReceiver;->initialBandscan()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/example/android/fmradioreceiver/FmRadioReceiver;


# direct methods
.method constructor <init>(Lcom/example/android/fmradioreceiver/FmRadioReceiver;)V
    .locals 0
    .parameter

    .prologue
    .line 267
    iput-object p1, p0, Lcom/example/android/fmradioreceiver/FmRadioReceiver$4;->this$0:Lcom/example/android/fmradioreceiver/FmRadioReceiver;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 270
    :try_start_0
    iget-object v1, p0, Lcom/example/android/fmradioreceiver/FmRadioReceiver$4;->this$0:Lcom/example/android/fmradioreceiver/FmRadioReceiver;

    #getter for: Lcom/example/android/fmradioreceiver/FmRadioReceiver;->mFmReceiver:Lcom/stericsson/hardware/fm/FmReceiver;
    invoke-static {v1}, Lcom/example/android/fmradioreceiver/FmRadioReceiver;->access$400(Lcom/example/android/fmradioreceiver/FmRadioReceiver;)Lcom/stericsson/hardware/fm/FmReceiver;

    move-result-object v1

    invoke-virtual {v1}, Lcom/stericsson/hardware/fm/FmReceiver;->startFullScan()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 275
    :goto_0
    return-void

    .line 271
    :catch_0
    move-exception v0

    .line 272
    .local v0, e:Ljava/lang/IllegalStateException;
    iget-object v1, p0, Lcom/example/android/fmradioreceiver/FmRadioReceiver$4;->this$0:Lcom/example/android/fmradioreceiver/FmRadioReceiver;

    const-string v2, "Unable to start the scan"

    const/4 v3, 0x1

    #calls: Lcom/example/android/fmradioreceiver/FmRadioReceiver;->showToast(Ljava/lang/String;I)V
    invoke-static {v1, v2, v3}, Lcom/example/android/fmradioreceiver/FmRadioReceiver;->access$000(Lcom/example/android/fmradioreceiver/FmRadioReceiver;Ljava/lang/String;I)V

    goto :goto_0
.end method

.class Lcom/example/android/fmradioreceiver/FmRadioReceiver$9;
.super Ljava/lang/Object;
.source "FmRadioReceiver.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/android/fmradioreceiver/FmRadioReceiver;->setupButtons()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/example/android/fmradioreceiver/FmRadioReceiver;

.field final synthetic val$fullScan:Landroid/widget/Button;


# direct methods
.method constructor <init>(Lcom/example/android/fmradioreceiver/FmRadioReceiver;Landroid/widget/Button;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 400
    iput-object p1, p0, Lcom/example/android/fmradioreceiver/FmRadioReceiver$9;->this$0:Lcom/example/android/fmradioreceiver/FmRadioReceiver;

    iput-object p2, p0, Lcom/example/android/fmradioreceiver/FmRadioReceiver$9;->val$fullScan:Landroid/widget/Button;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    const/4 v4, 0x1

    .line 404
    :try_start_0
    iget-object v1, p0, Lcom/example/android/fmradioreceiver/FmRadioReceiver$9;->val$fullScan:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 405
    iget-object v1, p0, Lcom/example/android/fmradioreceiver/FmRadioReceiver$9;->this$0:Lcom/example/android/fmradioreceiver/FmRadioReceiver;

    const-string v2, "Scanning for stations"

    const/4 v3, 0x1

    #calls: Lcom/example/android/fmradioreceiver/FmRadioReceiver;->showToast(Ljava/lang/String;I)V
    invoke-static {v1, v2, v3}, Lcom/example/android/fmradioreceiver/FmRadioReceiver;->access$000(Lcom/example/android/fmradioreceiver/FmRadioReceiver;Ljava/lang/String;I)V

    .line 406
    iget-object v1, p0, Lcom/example/android/fmradioreceiver/FmRadioReceiver$9;->this$0:Lcom/example/android/fmradioreceiver/FmRadioReceiver;

    #getter for: Lcom/example/android/fmradioreceiver/FmRadioReceiver;->mFmReceiver:Lcom/stericsson/hardware/fm/FmReceiver;
    invoke-static {v1}, Lcom/example/android/fmradioreceiver/FmRadioReceiver;->access$400(Lcom/example/android/fmradioreceiver/FmRadioReceiver;)Lcom/stericsson/hardware/fm/FmReceiver;

    move-result-object v1

    invoke-virtual {v1}, Lcom/stericsson/hardware/fm/FmReceiver;->startFullScan()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 410
    :goto_0
    return-void

    .line 407
    :catch_0
    move-exception v0

    .line 408
    .local v0, e:Ljava/lang/IllegalStateException;
    iget-object v1, p0, Lcom/example/android/fmradioreceiver/FmRadioReceiver$9;->this$0:Lcom/example/android/fmradioreceiver/FmRadioReceiver;

    const-string v2, "Unable to start the scan"

    #calls: Lcom/example/android/fmradioreceiver/FmRadioReceiver;->showToast(Ljava/lang/String;I)V
    invoke-static {v1, v2, v4}, Lcom/example/android/fmradioreceiver/FmRadioReceiver;->access$000(Lcom/example/android/fmradioreceiver/FmRadioReceiver;Ljava/lang/String;I)V

    goto :goto_0
.end method

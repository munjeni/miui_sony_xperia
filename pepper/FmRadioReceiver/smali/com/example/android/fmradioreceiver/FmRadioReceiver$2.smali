.class Lcom/example/android/fmradioreceiver/FmRadioReceiver$2;
.super Ljava/lang/Object;
.source "FmRadioReceiver.java"

# interfaces
.implements Lcom/stericsson/hardware/fm/FmReceiver$OnRDSDataFoundListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/android/fmradioreceiver/FmRadioReceiver;->onStart()V
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
    .line 185
    iput-object p1, p0, Lcom/example/android/fmradioreceiver/FmRadioReceiver$2;->this$0:Lcom/example/android/fmradioreceiver/FmRadioReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRDSDataFound(Landroid/os/Bundle;I)V
    .locals 2
    .parameter "rdsData"
    .parameter "frequency"

    .prologue
    .line 189
    const-string v0, "PSN"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/example/android/fmradioreceiver/FmRadioReceiver$2;->this$0:Lcom/example/android/fmradioreceiver/FmRadioReceiver;

    #getter for: Lcom/example/android/fmradioreceiver/FmRadioReceiver;->mStationNameTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/example/android/fmradioreceiver/FmRadioReceiver;->access$600(Lcom/example/android/fmradioreceiver/FmRadioReceiver;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "PSN"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 192
    :cond_0
    return-void
.end method

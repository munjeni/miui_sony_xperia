.class Lcom/example/android/fmradioreceiver/FmRadioReceiver$1;
.super Ljava/lang/Object;
.source "FmRadioReceiver.java"

# interfaces
.implements Lcom/stericsson/hardware/fm/FmReceiver$OnScanListener;


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
    .line 140
    iput-object p1, p0, Lcom/example/android/fmradioreceiver/FmRadioReceiver$1;->this$0:Lcom/example/android/fmradioreceiver/FmRadioReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFullScan([I[IZ)V
    .locals 9
    .parameter "frequency"
    .parameter "signalStrength"
    .parameter "aborted"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 144
    iget-object v3, p0, Lcom/example/android/fmradioreceiver/FmRadioReceiver$1;->this$0:Lcom/example/android/fmradioreceiver/FmRadioReceiver;

    const v4, 0x7f050007

    invoke-virtual {v3, v4}, Lcom/example/android/fmradioreceiver/FmRadioReceiver;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    invoke-virtual {v3, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 145
    iget-object v3, p0, Lcom/example/android/fmradioreceiver/FmRadioReceiver$1;->this$0:Lcom/example/android/fmradioreceiver/FmRadioReceiver;

    const-string v4, "Fullscan complete"

    #calls: Lcom/example/android/fmradioreceiver/FmRadioReceiver;->showToast(Ljava/lang/String;I)V
    invoke-static {v3, v4, v7}, Lcom/example/android/fmradioreceiver/FmRadioReceiver;->access$000(Lcom/example/android/fmradioreceiver/FmRadioReceiver;Ljava/lang/String;I)V

    .line 146
    iget-object v3, p0, Lcom/example/android/fmradioreceiver/FmRadioReceiver$1;->this$0:Lcom/example/android/fmradioreceiver/FmRadioReceiver;

    #getter for: Lcom/example/android/fmradioreceiver/FmRadioReceiver;->mMenuAdapter:Landroid/widget/ArrayAdapter;
    invoke-static {v3}, Lcom/example/android/fmradioreceiver/FmRadioReceiver;->access$100(Lcom/example/android/fmradioreceiver/FmRadioReceiver;)Landroid/widget/ArrayAdapter;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ArrayAdapter;->clear()V

    .line 147
    array-length v3, p1

    if-nez v3, :cond_1

    .line 148
    iget-object v3, p0, Lcom/example/android/fmradioreceiver/FmRadioReceiver$1;->this$0:Lcom/example/android/fmradioreceiver/FmRadioReceiver;

    #getter for: Lcom/example/android/fmradioreceiver/FmRadioReceiver;->mMenuAdapter:Landroid/widget/ArrayAdapter;
    invoke-static {v3}, Lcom/example/android/fmradioreceiver/FmRadioReceiver;->access$100(Lcom/example/android/fmradioreceiver/FmRadioReceiver;)Landroid/widget/ArrayAdapter;

    move-result-object v3

    const-string v4, "No stations available"

    invoke-virtual {v3, v4}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 171
    :cond_0
    :goto_0
    return-void

    .line 151
    :cond_1
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    array-length v3, p1

    if-ge v2, v3, :cond_3

    .line 152
    aget v3, p1, v2

    int-to-double v3, v3

    const-wide v5, 0x408f400000000000L

    div-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    .line 153
    .local v0, a:Ljava/lang/String;
    iget-object v3, p0, Lcom/example/android/fmradioreceiver/FmRadioReceiver$1;->this$0:Lcom/example/android/fmradioreceiver/FmRadioReceiver;

    #getter for: Lcom/example/android/fmradioreceiver/FmRadioReceiver;->mFmBand:Lcom/stericsson/hardware/fm/FmBand;
    invoke-static {v3}, Lcom/example/android/fmradioreceiver/FmRadioReceiver;->access$200(Lcom/example/android/fmradioreceiver/FmRadioReceiver;)Lcom/stericsson/hardware/fm/FmBand;

    move-result-object v3

    invoke-virtual {v3}, Lcom/stericsson/hardware/fm/FmBand;->getChannelOffset()I

    move-result v3

    const/16 v4, 0x32

    if-ne v3, v4, :cond_2

    .line 154
    new-array v3, v7, [Ljava/lang/Object;

    const-string v4, "%.2f"

    aput-object v4, v3, v8

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 158
    :goto_2
    iget-object v3, p0, Lcom/example/android/fmradioreceiver/FmRadioReceiver$1;->this$0:Lcom/example/android/fmradioreceiver/FmRadioReceiver;

    #getter for: Lcom/example/android/fmradioreceiver/FmRadioReceiver;->mMenuAdapter:Landroid/widget/ArrayAdapter;
    invoke-static {v3}, Lcom/example/android/fmradioreceiver/FmRadioReceiver;->access$100(Lcom/example/android/fmradioreceiver/FmRadioReceiver;)Landroid/widget/ArrayAdapter;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 151
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 156
    :cond_2
    new-array v3, v7, [Ljava/lang/Object;

    const-string v4, "%.1f"

    aput-object v4, v3, v8

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 160
    .end local v0           #a:Ljava/lang/String;
    :cond_3
    iget-object v3, p0, Lcom/example/android/fmradioreceiver/FmRadioReceiver$1;->this$0:Lcom/example/android/fmradioreceiver/FmRadioReceiver;

    #getter for: Lcom/example/android/fmradioreceiver/FmRadioReceiver;->mInit:Z
    invoke-static {v3}, Lcom/example/android/fmradioreceiver/FmRadioReceiver;->access$300(Lcom/example/android/fmradioreceiver/FmRadioReceiver;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 161
    iget-object v3, p0, Lcom/example/android/fmradioreceiver/FmRadioReceiver$1;->this$0:Lcom/example/android/fmradioreceiver/FmRadioReceiver;

    #setter for: Lcom/example/android/fmradioreceiver/FmRadioReceiver;->mInit:Z
    invoke-static {v3, v8}, Lcom/example/android/fmradioreceiver/FmRadioReceiver;->access$302(Lcom/example/android/fmradioreceiver/FmRadioReceiver;Z)Z

    .line 163
    :try_start_0
    iget-object v3, p0, Lcom/example/android/fmradioreceiver/FmRadioReceiver$1;->this$0:Lcom/example/android/fmradioreceiver/FmRadioReceiver;

    #getter for: Lcom/example/android/fmradioreceiver/FmRadioReceiver;->mFmReceiver:Lcom/stericsson/hardware/fm/FmReceiver;
    invoke-static {v3}, Lcom/example/android/fmradioreceiver/FmRadioReceiver;->access$400(Lcom/example/android/fmradioreceiver/FmRadioReceiver;)Lcom/stericsson/hardware/fm/FmReceiver;

    move-result-object v3

    const/4 v4, 0x0

    aget v4, p1, v4

    invoke-virtual {v3, v4}, Lcom/stericsson/hardware/fm/FmReceiver;->setFrequency(I)V

    .line 164
    iget-object v3, p0, Lcom/example/android/fmradioreceiver/FmRadioReceiver$1;->this$0:Lcom/example/android/fmradioreceiver/FmRadioReceiver;

    #getter for: Lcom/example/android/fmradioreceiver/FmRadioReceiver;->mFrequencyTextView:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/example/android/fmradioreceiver/FmRadioReceiver;->access$500(Lcom/example/android/fmradioreceiver/FmRadioReceiver;)Landroid/widget/TextView;

    move-result-object v4

    iget-object v3, p0, Lcom/example/android/fmradioreceiver/FmRadioReceiver$1;->this$0:Lcom/example/android/fmradioreceiver/FmRadioReceiver;

    #getter for: Lcom/example/android/fmradioreceiver/FmRadioReceiver;->mMenuAdapter:Landroid/widget/ArrayAdapter;
    invoke-static {v3}, Lcom/example/android/fmradioreceiver/FmRadioReceiver;->access$100(Lcom/example/android/fmradioreceiver/FmRadioReceiver;)Landroid/widget/ArrayAdapter;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 165
    :catch_0
    move-exception v1

    .line 166
    .local v1, e:Ljava/io/IOException;
    iget-object v3, p0, Lcom/example/android/fmradioreceiver/FmRadioReceiver$1;->this$0:Lcom/example/android/fmradioreceiver/FmRadioReceiver;

    const-string v4, "Unable to set the receiver\'s frequency"

    #calls: Lcom/example/android/fmradioreceiver/FmRadioReceiver;->showToast(Ljava/lang/String;I)V
    invoke-static {v3, v4, v7}, Lcom/example/android/fmradioreceiver/FmRadioReceiver;->access$000(Lcom/example/android/fmradioreceiver/FmRadioReceiver;Ljava/lang/String;I)V

    goto :goto_0

    .line 167
    .end local v1           #e:Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 168
    .local v1, e:Ljava/lang/IllegalArgumentException;
    iget-object v3, p0, Lcom/example/android/fmradioreceiver/FmRadioReceiver$1;->this$0:Lcom/example/android/fmradioreceiver/FmRadioReceiver;

    const-string v4, "Unable to set the receiver\'s frequency"

    #calls: Lcom/example/android/fmradioreceiver/FmRadioReceiver;->showToast(Ljava/lang/String;I)V
    invoke-static {v3, v4, v7}, Lcom/example/android/fmradioreceiver/FmRadioReceiver;->access$000(Lcom/example/android/fmradioreceiver/FmRadioReceiver;Ljava/lang/String;I)V

    goto/16 :goto_0
.end method

.method public onScan(IIIZ)V
    .locals 7
    .parameter "tunedFrequency"
    .parameter "signalStrength"
    .parameter "scanDirection"
    .parameter "aborted"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 175
    int-to-double v1, p1

    const-wide v3, 0x408f400000000000L

    div-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    .line 176
    .local v0, a:Ljava/lang/String;
    iget-object v1, p0, Lcom/example/android/fmradioreceiver/FmRadioReceiver$1;->this$0:Lcom/example/android/fmradioreceiver/FmRadioReceiver;

    #getter for: Lcom/example/android/fmradioreceiver/FmRadioReceiver;->mFmBand:Lcom/stericsson/hardware/fm/FmBand;
    invoke-static {v1}, Lcom/example/android/fmradioreceiver/FmRadioReceiver;->access$200(Lcom/example/android/fmradioreceiver/FmRadioReceiver;)Lcom/stericsson/hardware/fm/FmBand;

    move-result-object v1

    invoke-virtual {v1}, Lcom/stericsson/hardware/fm/FmBand;->getChannelOffset()I

    move-result v1

    const/16 v2, 0x32

    if-ne v1, v2, :cond_0

    .line 177
    iget-object v1, p0, Lcom/example/android/fmradioreceiver/FmRadioReceiver$1;->this$0:Lcom/example/android/fmradioreceiver/FmRadioReceiver;

    #getter for: Lcom/example/android/fmradioreceiver/FmRadioReceiver;->mFrequencyTextView:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/example/android/fmradioreceiver/FmRadioReceiver;->access$500(Lcom/example/android/fmradioreceiver/FmRadioReceiver;)Landroid/widget/TextView;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "%.2f"

    aput-object v3, v2, v6

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 181
    :goto_0
    iget-object v1, p0, Lcom/example/android/fmradioreceiver/FmRadioReceiver$1;->this$0:Lcom/example/android/fmradioreceiver/FmRadioReceiver;

    const v2, 0x7f050005

    invoke-virtual {v1, v2}, Lcom/example/android/fmradioreceiver/FmRadioReceiver;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 182
    iget-object v1, p0, Lcom/example/android/fmradioreceiver/FmRadioReceiver$1;->this$0:Lcom/example/android/fmradioreceiver/FmRadioReceiver;

    const v2, 0x7f050004

    invoke-virtual {v1, v2}, Lcom/example/android/fmradioreceiver/FmRadioReceiver;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 183
    return-void

    .line 179
    :cond_0
    iget-object v1, p0, Lcom/example/android/fmradioreceiver/FmRadioReceiver$1;->this$0:Lcom/example/android/fmradioreceiver/FmRadioReceiver;

    #getter for: Lcom/example/android/fmradioreceiver/FmRadioReceiver;->mFrequencyTextView:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/example/android/fmradioreceiver/FmRadioReceiver;->access$500(Lcom/example/android/fmradioreceiver/FmRadioReceiver;)Landroid/widget/TextView;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "%.1f"

    aput-object v3, v2, v6

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

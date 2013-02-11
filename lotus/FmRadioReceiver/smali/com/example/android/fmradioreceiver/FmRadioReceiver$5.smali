.class Lcom/example/android/fmradioreceiver/FmRadioReceiver$5;
.super Ljava/lang/Object;
.source "FmRadioReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/android/fmradioreceiver/FmRadioReceiver;->showToast(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/example/android/fmradioreceiver/FmRadioReceiver;

.field final synthetic val$duration:I

.field final synthetic val$text:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/example/android/fmradioreceiver/FmRadioReceiver;Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 284
    iput-object p1, p0, Lcom/example/android/fmradioreceiver/FmRadioReceiver$5;->this$0:Lcom/example/android/fmradioreceiver/FmRadioReceiver;

    iput-object p2, p0, Lcom/example/android/fmradioreceiver/FmRadioReceiver$5;->val$text:Ljava/lang/String;

    iput p3, p0, Lcom/example/android/fmradioreceiver/FmRadioReceiver$5;->val$duration:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 286
    iget-object v0, p0, Lcom/example/android/fmradioreceiver/FmRadioReceiver$5;->this$0:Lcom/example/android/fmradioreceiver/FmRadioReceiver;

    invoke-virtual {v0}, Lcom/example/android/fmradioreceiver/FmRadioReceiver;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/example/android/fmradioreceiver/FmRadioReceiver$5;->val$text:Ljava/lang/String;

    iget v2, p0, Lcom/example/android/fmradioreceiver/FmRadioReceiver$5;->val$duration:I

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 287
    return-void
.end method

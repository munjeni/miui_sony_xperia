.class Lcom/android/server/location/BTGpsLocationProvider$1;
.super Landroid/content/BroadcastReceiver;
.source "BTGpsLocationProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/location/BTGpsLocationProvider;-><init>(Landroid/content/Context;Landroid/location/ILocationManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/BTGpsLocationProvider;


# direct methods
.method constructor <init>(Lcom/android/server/location/BTGpsLocationProvider;)V
    .locals 0
    .parameter

    .prologue
    .line 168
    iput-object p1, p0, Lcom/android/server/location/BTGpsLocationProvider$1;->this$0:Lcom/android/server/location/BTGpsLocationProvider;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 171
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 172
    .local v0, action:Ljava/lang/String;
    const-string v2, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 173
    const-string v2, "android.bluetooth.adapter.extra.STATE"

    const/high16 v3, -0x8000

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 175
    .local v1, state:I
    packed-switch v1, :pswitch_data_0

    .line 187
    .end local v1           #state:I
    :cond_0
    :goto_0
    return-void

    .line 177
    .restart local v1       #state:I
    :pswitch_0
    const-string v2, "BTGpsLocationProvider"

    const-string v3, "BT turned on -> notify services?"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 180
    :pswitch_1
    iget-object v2, p0, Lcom/android/server/location/BTGpsLocationProvider$1;->this$0:Lcom/android/server/location/BTGpsLocationProvider;

    #getter for: Lcom/android/server/location/BTGpsLocationProvider;->btsvc:Lcom/android/server/location/BTGPSService;
    invoke-static {v2}, Lcom/android/server/location/BTGpsLocationProvider;->access$100(Lcom/android/server/location/BTGpsLocationProvider;)Lcom/android/server/location/BTGPSService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/location/BTGPSService;->getServiceState()I

    move-result v2

    if-eqz v2, :cond_0

    .line 181
    const-string v2, "BTGpsLocationProvider"

    const-string v3, "BT turned off -> stopping services"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    iget-object v2, p0, Lcom/android/server/location/BTGpsLocationProvider$1;->this$0:Lcom/android/server/location/BTGpsLocationProvider;

    #getter for: Lcom/android/server/location/BTGpsLocationProvider;->btsvc:Lcom/android/server/location/BTGPSService;
    invoke-static {v2}, Lcom/android/server/location/BTGpsLocationProvider;->access$100(Lcom/android/server/location/BTGpsLocationProvider;)Lcom/android/server/location/BTGPSService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/location/BTGPSService;->stop()V

    goto :goto_0

    .line 175
    nop

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

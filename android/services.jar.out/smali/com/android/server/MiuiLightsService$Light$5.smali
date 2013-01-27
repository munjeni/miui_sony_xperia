.class Lcom/android/server/MiuiLightsService$Light$5;
.super Landroid/database/ContentObserver;
.source "MiuiLightsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/MiuiLightsService$Light;-><init>(Lcom/android/server/MiuiLightsService;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/MiuiLightsService$Light;

.field final synthetic val$this$0:Lcom/android/server/MiuiLightsService;


# direct methods
.method constructor <init>(Lcom/android/server/MiuiLightsService$Light;Landroid/os/Handler;Lcom/android/server/MiuiLightsService;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter

    .prologue
    .line 101
    iput-object p1, p0, Lcom/android/server/MiuiLightsService$Light$5;->this$1:Lcom/android/server/MiuiLightsService$Light;

    iput-object p3, p0, Lcom/android/server/MiuiLightsService$Light$5;->val$this$0:Lcom/android/server/MiuiLightsService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .parameter "selfChange"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/server/MiuiLightsService$Light$5;->this$1:Lcom/android/server/MiuiLightsService$Light;

    const-string v1, "mms_breathing_light_color"

    const-string v2, "mms_breathing_light_freq"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/MiuiLightsService$Light;->setFlashing(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    return-void
.end method

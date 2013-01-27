.class Lcom/android/server/MiuiLightsService$Light$2;
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
    .line 63
    iput-object p1, p0, Lcom/android/server/MiuiLightsService$Light$2;->this$1:Lcom/android/server/MiuiLightsService$Light;

    iput-object p3, p0, Lcom/android/server/MiuiLightsService$Light$2;->val$this$0:Lcom/android/server/MiuiLightsService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 6
    .parameter "selfChange"

    .prologue
    const/4 v1, 0x0

    .line 65
    iget-object v0, p0, Lcom/android/server/MiuiLightsService$Light$2;->this$1:Lcom/android/server/MiuiLightsService$Light;

    #getter for: Lcom/android/server/MiuiLightsService$Light;->mDisabled:Z
    invoke-static {v0}, Lcom/android/server/MiuiLightsService$Light;->access$200(Lcom/android/server/MiuiLightsService$Light;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    :goto_0
    return-void

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/android/server/MiuiLightsService$Light$2;->this$1:Lcom/android/server/MiuiLightsService$Light;

    iget-object v2, p0, Lcom/android/server/MiuiLightsService$Light$2;->this$1:Lcom/android/server/MiuiLightsService$Light;

    #calls: Lcom/android/server/MiuiLightsService$Light;->isTurnOn()Z
    invoke-static {v2}, Lcom/android/server/MiuiLightsService$Light;->access$1100(Lcom/android/server/MiuiLightsService$Light;)Z

    move-result v2

    #setter for: Lcom/android/server/MiuiLightsService$Light;->mTurnOn:Z
    invoke-static {v0, v2}, Lcom/android/server/MiuiLightsService$Light;->access$402(Lcom/android/server/MiuiLightsService$Light;Z)Z

    .line 70
    iget-object v0, p0, Lcom/android/server/MiuiLightsService$Light$2;->this$1:Lcom/android/server/MiuiLightsService$Light;

    #getter for: Lcom/android/server/MiuiLightsService$Light;->mTurnOn:Z
    invoke-static {v0}, Lcom/android/server/MiuiLightsService$Light;->access$400(Lcom/android/server/MiuiLightsService$Light;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 71
    iget-object v0, p0, Lcom/android/server/MiuiLightsService$Light$2;->this$1:Lcom/android/server/MiuiLightsService$Light;

    iget-object v1, p0, Lcom/android/server/MiuiLightsService$Light$2;->this$1:Lcom/android/server/MiuiLightsService$Light;

    #getter for: Lcom/android/server/MiuiLightsService$Light;->mColor:I
    invoke-static {v1}, Lcom/android/server/MiuiLightsService$Light;->access$500(Lcom/android/server/MiuiLightsService$Light;)I

    move-result v1

    iget-object v2, p0, Lcom/android/server/MiuiLightsService$Light$2;->this$1:Lcom/android/server/MiuiLightsService$Light;

    #getter for: Lcom/android/server/MiuiLightsService$Light;->mMode:I
    invoke-static {v2}, Lcom/android/server/MiuiLightsService$Light;->access$600(Lcom/android/server/MiuiLightsService$Light;)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/MiuiLightsService$Light$2;->this$1:Lcom/android/server/MiuiLightsService$Light;

    #getter for: Lcom/android/server/MiuiLightsService$Light;->mOnMS:I
    invoke-static {v3}, Lcom/android/server/MiuiLightsService$Light;->access$700(Lcom/android/server/MiuiLightsService$Light;)I

    move-result v3

    iget-object v4, p0, Lcom/android/server/MiuiLightsService$Light$2;->this$1:Lcom/android/server/MiuiLightsService$Light;

    #getter for: Lcom/android/server/MiuiLightsService$Light;->mOffMS:I
    invoke-static {v4}, Lcom/android/server/MiuiLightsService$Light;->access$800(Lcom/android/server/MiuiLightsService$Light;)I

    move-result v4

    iget-object v5, p0, Lcom/android/server/MiuiLightsService$Light$2;->this$1:Lcom/android/server/MiuiLightsService$Light;

    #getter for: Lcom/android/server/MiuiLightsService$Light;->mBrightnessMode:I
    invoke-static {v5}, Lcom/android/server/MiuiLightsService$Light;->access$900(Lcom/android/server/MiuiLightsService$Light;)I

    move-result v5

    #calls: Lcom/android/server/LightsService$Light;->setLightLocked(IIIII)V
    invoke-static/range {v0 .. v5}, Lcom/android/server/MiuiLightsService$Light;->access$1201(Lcom/android/server/MiuiLightsService$Light;IIIII)V

    goto :goto_0

    .line 73
    :cond_1
    iget-object v0, p0, Lcom/android/server/MiuiLightsService$Light$2;->this$1:Lcom/android/server/MiuiLightsService$Light;

    iget-object v2, p0, Lcom/android/server/MiuiLightsService$Light$2;->this$1:Lcom/android/server/MiuiLightsService$Light;

    #getter for: Lcom/android/server/MiuiLightsService$Light;->mMode:I
    invoke-static {v2}, Lcom/android/server/MiuiLightsService$Light;->access$600(Lcom/android/server/MiuiLightsService$Light;)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/MiuiLightsService$Light$2;->this$1:Lcom/android/server/MiuiLightsService$Light;

    #getter for: Lcom/android/server/MiuiLightsService$Light;->mBrightnessMode:I
    invoke-static {v3}, Lcom/android/server/MiuiLightsService$Light;->access$900(Lcom/android/server/MiuiLightsService$Light;)I

    move-result v5

    move v3, v1

    move v4, v1

    #calls: Lcom/android/server/LightsService$Light;->setLightLocked(IIIII)V
    invoke-static/range {v0 .. v5}, Lcom/android/server/MiuiLightsService$Light;->access$1301(Lcom/android/server/MiuiLightsService$Light;IIIII)V

    goto :goto_0
.end method

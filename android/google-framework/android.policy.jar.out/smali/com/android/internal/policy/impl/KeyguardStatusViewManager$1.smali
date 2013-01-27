.class Lcom/android/internal/policy/impl/KeyguardStatusViewManager$1;
.super Landroid/os/Handler;
.source "KeyguardStatusViewManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/KeyguardStatusViewManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;)V
    .locals 0
    .parameter

    .prologue
    .line 273
    iput-object p1, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$1;->this$0:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    .line 276
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 356
    :goto_0
    return-void

    .line 278
    :pswitch_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v3, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$1$1;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$1$1;-><init>(Lcom/android/internal/policy/impl/KeyguardStatusViewManager$1;)V

    invoke-direct {v0, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 327
    .local v0, queryWeather:Ljava/lang/Thread;
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/Thread;->setPriority(I)V

    .line 328
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 331
    .end local v0           #queryWeather:Ljava/lang/Thread;
    :pswitch_1
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 332
    .local v2, woeid:Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 336
    const/4 v1, 0x0

    .line 338
    .local v1, w:Lcom/android/internal/util/weather/WeatherInfo;
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$1;->this$0:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    iget-object v4, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$1;->this$0:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    #calls: Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->getDocument(Ljava/lang/String;)Lorg/w3c/dom/Document;
    invoke-static {v4, v2}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->access$600(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;Ljava/lang/String;)Lorg/w3c/dom/Document;

    move-result-object v4

    #calls: Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->parseXml(Lorg/w3c/dom/Document;)Lcom/android/internal/util/weather/WeatherInfo;
    invoke-static {v3, v4}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->access$700(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;Lorg/w3c/dom/Document;)Lcom/android/internal/util/weather/WeatherInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 341
    :goto_1
    if-nez v1, :cond_0

    .line 342
    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$1;->this$0:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    #calls: Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->setNoWeatherData()V
    invoke-static {v3}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->access$800(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;)V

    goto :goto_0

    .line 344
    :cond_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$1;->this$0:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    #calls: Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->setWeatherData(Lcom/android/internal/util/weather/WeatherInfo;)V
    invoke-static {v3, v1}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->access$900(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;Lcom/android/internal/util/weather/WeatherInfo;)V

    .line 345
    invoke-static {v1}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->access$1002(Lcom/android/internal/util/weather/WeatherInfo;)Lcom/android/internal/util/weather/WeatherInfo;

    goto :goto_0

    .line 348
    .end local v1           #w:Lcom/android/internal/util/weather/WeatherInfo;
    :cond_1
    invoke-static {}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->access$1000()Lcom/android/internal/util/weather/WeatherInfo;

    move-result-object v3

    iget-object v3, v3, Lcom/android/internal/util/weather/WeatherInfo;->temp:Ljava/lang/String;

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 349
    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$1;->this$0:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    #calls: Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->setNoWeatherData()V
    invoke-static {v3}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->access$800(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;)V

    goto :goto_0

    .line 351
    :cond_2
    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$1;->this$0:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    invoke-static {}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->access$1000()Lcom/android/internal/util/weather/WeatherInfo;

    move-result-object v4

    #calls: Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->setWeatherData(Lcom/android/internal/util/weather/WeatherInfo;)V
    invoke-static {v3, v4}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->access$900(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;Lcom/android/internal/util/weather/WeatherInfo;)V

    goto :goto_0

    .line 339
    .restart local v1       #w:Lcom/android/internal/util/weather/WeatherInfo;
    :catch_0
    move-exception v3

    goto :goto_1

    .line 276
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

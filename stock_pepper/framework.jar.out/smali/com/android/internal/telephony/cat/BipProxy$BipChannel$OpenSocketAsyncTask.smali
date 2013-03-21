.class Lcom/android/internal/telephony/cat/BipProxy$BipChannel$OpenSocketAsyncTask;
.super Landroid/os/AsyncTask;
.source "BipProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cat/BipProxy$BipChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OpenSocketAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/android/internal/telephony/cat/CatCmdMessage;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/telephony/cat/BipProxy$BipChannel;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cat/BipProxy$BipChannel;)V
    .locals 0
    .parameter

    .prologue
    .line 896
    iput-object p1, p0, Lcom/android/internal/telephony/cat/BipProxy$BipChannel$OpenSocketAsyncTask;->this$1:Lcom/android/internal/telephony/cat/BipProxy$BipChannel;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Lcom/android/internal/telephony/cat/CatCmdMessage;)Ljava/lang/Boolean;
    .locals 2
    .parameter "cmdMsg"

    .prologue
    .line 899
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$BipChannel$OpenSocketAsyncTask;->this$1:Lcom/android/internal/telephony/cat/BipProxy$BipChannel;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cat/BipProxy$BipChannel;->openSocket(Lcom/android/internal/telephony/cat/CatCmdMessage;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 896
    check-cast p1, [Lcom/android/internal/telephony/cat/CatCmdMessage;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/cat/BipProxy$BipChannel$OpenSocketAsyncTask;->doInBackground([Lcom/android/internal/telephony/cat/CatCmdMessage;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

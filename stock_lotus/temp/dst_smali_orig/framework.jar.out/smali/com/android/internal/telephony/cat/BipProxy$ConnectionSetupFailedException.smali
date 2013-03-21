.class Lcom/android/internal/telephony/cat/BipProxy$ConnectionSetupFailedException;
.super Ljava/io/IOException;
.source "BipProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cat/BipProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConnectionSetupFailedException"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/cat/BipProxy;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/cat/BipProxy;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "message"

    .prologue
    iput-object p1, p0, Lcom/android/internal/telephony/cat/BipProxy$ConnectionSetupFailedException;->this$0:Lcom/android/internal/telephony/cat/BipProxy;

    invoke-direct {p0, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    return-void
.end method

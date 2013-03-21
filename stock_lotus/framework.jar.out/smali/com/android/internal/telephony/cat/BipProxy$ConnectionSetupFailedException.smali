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
    .line 308
    iput-object p1, p0, Lcom/android/internal/telephony/cat/BipProxy$ConnectionSetupFailedException;->this$0:Lcom/android/internal/telephony/cat/BipProxy;

    .line 309
    invoke-direct {p0, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 310
    return-void
.end method

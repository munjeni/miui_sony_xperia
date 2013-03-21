.class public Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;
.super Ljava/lang/Object;
.source "CatCmdMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cat/CatCmdMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ChannelSettings"
.end annotation


# instance fields
.field public bearerDescription:Lcom/android/internal/telephony/cat/BearerDescription;

.field public bufSize:I

.field public channel:I

.field public cid:Ljava/lang/Integer;

.field public destinationAddress:[B

.field public networkAccessName:Ljava/lang/String;

.field public port:I

.field public protocol:Lcom/android/internal/telephony/cat/InterfaceTransportLevel$TransportProtocol;

.field public userLogin:Ljava/lang/String;

.field public userPassword:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

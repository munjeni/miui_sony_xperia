.class Lcom/android/internal/telephony/cat/OpenChannelParams;
.super Lcom/android/internal/telephony/cat/CommandParams;
.source "CommandParams.java"


# instance fields
.field bearerDescription:Lcom/android/internal/telephony/cat/BearerDescription;

.field bufSize:I

.field confirmMsg:Lcom/android/internal/telephony/cat/TextMessage;

.field destinationAddress:[B

.field itl:Lcom/android/internal/telephony/cat/InterfaceTransportLevel;

.field networkAccessName:Ljava/lang/String;

.field userLogin:Ljava/lang/String;

.field userPassword:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/TextMessage;ILcom/android/internal/telephony/cat/InterfaceTransportLevel;[BLcom/android/internal/telephony/cat/BearerDescription;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "cmdDet"
    .parameter "confirmMsg"
    .parameter "bufSize"
    .parameter "itl"
    .parameter "destinationAddress"
    .parameter "bearerDescription"
    .parameter "networkAccessName"
    .parameter "userLogin"
    .parameter "userPassword"

    .prologue
    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/CommandParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;)V

    iput-object v1, p0, Lcom/android/internal/telephony/cat/OpenChannelParams;->confirmMsg:Lcom/android/internal/telephony/cat/TextMessage;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/cat/OpenChannelParams;->bufSize:I

    iput-object v1, p0, Lcom/android/internal/telephony/cat/OpenChannelParams;->itl:Lcom/android/internal/telephony/cat/InterfaceTransportLevel;

    iput-object v1, p0, Lcom/android/internal/telephony/cat/OpenChannelParams;->destinationAddress:[B

    iput-object v1, p0, Lcom/android/internal/telephony/cat/OpenChannelParams;->bearerDescription:Lcom/android/internal/telephony/cat/BearerDescription;

    iput-object v1, p0, Lcom/android/internal/telephony/cat/OpenChannelParams;->networkAccessName:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/internal/telephony/cat/OpenChannelParams;->userLogin:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/internal/telephony/cat/OpenChannelParams;->userPassword:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/internal/telephony/cat/OpenChannelParams;->confirmMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iput p3, p0, Lcom/android/internal/telephony/cat/OpenChannelParams;->bufSize:I

    iput-object p4, p0, Lcom/android/internal/telephony/cat/OpenChannelParams;->itl:Lcom/android/internal/telephony/cat/InterfaceTransportLevel;

    iput-object p5, p0, Lcom/android/internal/telephony/cat/OpenChannelParams;->destinationAddress:[B

    iput-object p6, p0, Lcom/android/internal/telephony/cat/OpenChannelParams;->bearerDescription:Lcom/android/internal/telephony/cat/BearerDescription;

    iput-object p7, p0, Lcom/android/internal/telephony/cat/OpenChannelParams;->networkAccessName:Ljava/lang/String;

    iput-object p8, p0, Lcom/android/internal/telephony/cat/OpenChannelParams;->userLogin:Ljava/lang/String;

    iput-object p9, p0, Lcom/android/internal/telephony/cat/OpenChannelParams;->userPassword:Ljava/lang/String;

    return-void
.end method

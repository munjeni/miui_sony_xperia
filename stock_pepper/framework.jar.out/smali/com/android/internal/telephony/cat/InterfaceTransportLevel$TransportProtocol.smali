.class public final enum Lcom/android/internal/telephony/cat/InterfaceTransportLevel$TransportProtocol;
.super Ljava/lang/Enum;
.source "InterfaceTransportLevel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cat/InterfaceTransportLevel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TransportProtocol"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/telephony/cat/InterfaceTransportLevel$TransportProtocol;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/telephony/cat/InterfaceTransportLevel$TransportProtocol;

.field public static final enum RESERVED:Lcom/android/internal/telephony/cat/InterfaceTransportLevel$TransportProtocol;

.field public static final enum TCP_CLIENT_LOCAL:Lcom/android/internal/telephony/cat/InterfaceTransportLevel$TransportProtocol;

.field public static final enum TCP_CLIENT_REMOTE:Lcom/android/internal/telephony/cat/InterfaceTransportLevel$TransportProtocol;

.field public static final enum TCP_SERVER:Lcom/android/internal/telephony/cat/InterfaceTransportLevel$TransportProtocol;

.field public static final enum UDP_CLIENT_LOCAL:Lcom/android/internal/telephony/cat/InterfaceTransportLevel$TransportProtocol;

.field public static final enum UDP_CLIENT_REMOTE:Lcom/android/internal/telephony/cat/InterfaceTransportLevel$TransportProtocol;


# instance fields
.field private mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 32
    new-instance v0, Lcom/android/internal/telephony/cat/InterfaceTransportLevel$TransportProtocol;

    const-string v1, "RESERVED"

    invoke-direct {v0, v1, v4, v4}, Lcom/android/internal/telephony/cat/InterfaceTransportLevel$TransportProtocol;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/InterfaceTransportLevel$TransportProtocol;->RESERVED:Lcom/android/internal/telephony/cat/InterfaceTransportLevel$TransportProtocol;

    .line 33
    new-instance v0, Lcom/android/internal/telephony/cat/InterfaceTransportLevel$TransportProtocol;

    const-string v1, "UDP_CLIENT_REMOTE"

    invoke-direct {v0, v1, v5, v5}, Lcom/android/internal/telephony/cat/InterfaceTransportLevel$TransportProtocol;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/InterfaceTransportLevel$TransportProtocol;->UDP_CLIENT_REMOTE:Lcom/android/internal/telephony/cat/InterfaceTransportLevel$TransportProtocol;

    .line 34
    new-instance v0, Lcom/android/internal/telephony/cat/InterfaceTransportLevel$TransportProtocol;

    const-string v1, "TCP_CLIENT_REMOTE"

    invoke-direct {v0, v1, v6, v6}, Lcom/android/internal/telephony/cat/InterfaceTransportLevel$TransportProtocol;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/InterfaceTransportLevel$TransportProtocol;->TCP_CLIENT_REMOTE:Lcom/android/internal/telephony/cat/InterfaceTransportLevel$TransportProtocol;

    .line 35
    new-instance v0, Lcom/android/internal/telephony/cat/InterfaceTransportLevel$TransportProtocol;

    const-string v1, "TCP_SERVER"

    invoke-direct {v0, v1, v7, v7}, Lcom/android/internal/telephony/cat/InterfaceTransportLevel$TransportProtocol;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/InterfaceTransportLevel$TransportProtocol;->TCP_SERVER:Lcom/android/internal/telephony/cat/InterfaceTransportLevel$TransportProtocol;

    .line 36
    new-instance v0, Lcom/android/internal/telephony/cat/InterfaceTransportLevel$TransportProtocol;

    const-string v1, "UDP_CLIENT_LOCAL"

    invoke-direct {v0, v1, v8, v8}, Lcom/android/internal/telephony/cat/InterfaceTransportLevel$TransportProtocol;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/InterfaceTransportLevel$TransportProtocol;->UDP_CLIENT_LOCAL:Lcom/android/internal/telephony/cat/InterfaceTransportLevel$TransportProtocol;

    .line 37
    new-instance v0, Lcom/android/internal/telephony/cat/InterfaceTransportLevel$TransportProtocol;

    const-string v1, "TCP_CLIENT_LOCAL"

    const/4 v2, 0x5

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cat/InterfaceTransportLevel$TransportProtocol;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/InterfaceTransportLevel$TransportProtocol;->TCP_CLIENT_LOCAL:Lcom/android/internal/telephony/cat/InterfaceTransportLevel$TransportProtocol;

    .line 31
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/android/internal/telephony/cat/InterfaceTransportLevel$TransportProtocol;

    sget-object v1, Lcom/android/internal/telephony/cat/InterfaceTransportLevel$TransportProtocol;->RESERVED:Lcom/android/internal/telephony/cat/InterfaceTransportLevel$TransportProtocol;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/internal/telephony/cat/InterfaceTransportLevel$TransportProtocol;->UDP_CLIENT_REMOTE:Lcom/android/internal/telephony/cat/InterfaceTransportLevel$TransportProtocol;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/internal/telephony/cat/InterfaceTransportLevel$TransportProtocol;->TCP_CLIENT_REMOTE:Lcom/android/internal/telephony/cat/InterfaceTransportLevel$TransportProtocol;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/internal/telephony/cat/InterfaceTransportLevel$TransportProtocol;->TCP_SERVER:Lcom/android/internal/telephony/cat/InterfaceTransportLevel$TransportProtocol;

    aput-object v1, v0, v7

    sget-object v1, Lcom/android/internal/telephony/cat/InterfaceTransportLevel$TransportProtocol;->UDP_CLIENT_LOCAL:Lcom/android/internal/telephony/cat/InterfaceTransportLevel$TransportProtocol;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/android/internal/telephony/cat/InterfaceTransportLevel$TransportProtocol;->TCP_CLIENT_LOCAL:Lcom/android/internal/telephony/cat/InterfaceTransportLevel$TransportProtocol;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/telephony/cat/InterfaceTransportLevel$TransportProtocol;->$VALUES:[Lcom/android/internal/telephony/cat/InterfaceTransportLevel$TransportProtocol;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .parameter
    .parameter
    .parameter "value"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 42
    iput p3, p0, Lcom/android/internal/telephony/cat/InterfaceTransportLevel$TransportProtocol;->mValue:I

    .line 43
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/cat/InterfaceTransportLevel$TransportProtocol;
    .locals 1
    .parameter "name"

    .prologue
    .line 31
    const-class v0, Lcom/android/internal/telephony/cat/InterfaceTransportLevel$TransportProtocol;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/cat/InterfaceTransportLevel$TransportProtocol;

    return-object v0
.end method

.method public static values()[Lcom/android/internal/telephony/cat/InterfaceTransportLevel$TransportProtocol;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/android/internal/telephony/cat/InterfaceTransportLevel$TransportProtocol;->$VALUES:[Lcom/android/internal/telephony/cat/InterfaceTransportLevel$TransportProtocol;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/cat/InterfaceTransportLevel$TransportProtocol;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/cat/InterfaceTransportLevel$TransportProtocol;

    return-object v0
.end method


# virtual methods
.method public value()I
    .locals 1

    .prologue
    .line 46
    iget v0, p0, Lcom/android/internal/telephony/cat/InterfaceTransportLevel$TransportProtocol;->mValue:I

    return v0
.end method

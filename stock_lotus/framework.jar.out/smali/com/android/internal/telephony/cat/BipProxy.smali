.class public final Lcom/android/internal/telephony/cat/BipProxy;
.super Landroid/os/Handler;
.source "BipProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/cat/BipProxy$1;,
        Lcom/android/internal/telephony/cat/BipProxy$DefaultBearerStateReceiver;,
        Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;,
        Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;,
        Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;,
        Lcom/android/internal/telephony/cat/BipProxy$BipChannel;,
        Lcom/android/internal/telephony/cat/BipProxy$ConnectionSetupFailedException;
    }
.end annotation


# static fields
.field private static final BIP_DATA_PROFILE_ID:I = 0x527

.field static final MAX_CHANNEL_NUM:I = 0x7

.field static final MSG_ID_PDP_STATE_CHANGE:I = 0xc

.field static final MSG_ID_SETUP_DATA_CALL:I = 0xa

.field static final MSG_ID_TEARDOWN_DATA_CALL:I = 0xb

.field private static final PDP_INIT_CID:I = -0x1

.field static final TCP_CHANNEL_BUFFER_SIZE:I = 0x4000

.field static final UDP_CHANNEL_BUFFER_SIZE:I = 0x5dc


# instance fields
.field private final mBipChannels:[Lcom/android/internal/telephony/cat/BipProxy$BipChannel;

.field private final mCatService:Lcom/android/internal/telephony/cat/CatService;

.field private final mCids:[I

.field private final mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

.field private final mContext:Landroid/content/Context;

.field private final mDefaultBearerStateReceiver:Lcom/android/internal/telephony/cat/BipProxy$DefaultBearerStateReceiver;

.field private mIsLinkDropped:Z

.field private mIsTrackRegistered:Z


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/cat/CatService;Lcom/android/internal/telephony/CommandsInterface;Landroid/content/Context;)V
    .locals 3
    .parameter "stkService"
    .parameter "cmdIf"
    .parameter "context"

    .prologue
    const/4 v2, 0x7

    const/4 v1, 0x0

    .line 93
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 87
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy;->mCids:[I

    .line 89
    new-array v0, v2, [Lcom/android/internal/telephony/cat/BipProxy$BipChannel;

    iput-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy;->mBipChannels:[Lcom/android/internal/telephony/cat/BipProxy$BipChannel;

    .line 94
    iput-object p1, p0, Lcom/android/internal/telephony/cat/BipProxy;->mCatService:Lcom/android/internal/telephony/cat/CatService;

    .line 95
    iput-object p2, p0, Lcom/android/internal/telephony/cat/BipProxy;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    .line 96
    iput-object p3, p0, Lcom/android/internal/telephony/cat/BipProxy;->mContext:Landroid/content/Context;

    .line 97
    iput-boolean v1, p0, Lcom/android/internal/telephony/cat/BipProxy;->mIsLinkDropped:Z

    .line 98
    iput-boolean v1, p0, Lcom/android/internal/telephony/cat/BipProxy;->mIsTrackRegistered:Z

    .line 99
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy;->mCids:[I

    const/4 v1, -0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 101
    new-instance v0, Lcom/android/internal/telephony/cat/BipProxy$DefaultBearerStateReceiver;

    invoke-direct {v0, p0, p3}, Lcom/android/internal/telephony/cat/BipProxy$DefaultBearerStateReceiver;-><init>(Lcom/android/internal/telephony/cat/BipProxy;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy;->mDefaultBearerStateReceiver:Lcom/android/internal/telephony/cat/BipProxy$DefaultBearerStateReceiver;

    .line 102
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy;->mDefaultBearerStateReceiver:Lcom/android/internal/telephony/cat/BipProxy$DefaultBearerStateReceiver;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/BipProxy$DefaultBearerStateReceiver;->startListening()V

    .line 103
    const-string v0, "BipProxy(): startListening!"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/cat/BipProxy;)Lcom/android/internal/telephony/cat/CatService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy;->mCatService:Lcom/android/internal/telephony/cat/CatService;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/cat/BipProxy;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 68
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/cat/BipProxy;->sendDataAvailableEvent(II)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/cat/BipProxy;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/android/internal/telephony/cat/BipProxy;->mIsLinkDropped:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/cat/BipProxy;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/BipProxy;->sendChannelStatusEvent(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/internal/telephony/cat/BipProxy;Lcom/android/internal/telephony/cat/CatCmdMessage;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 68
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/cat/BipProxy;->teardownDataConnection(Lcom/android/internal/telephony/cat/CatCmdMessage;I)Z

    move-result v0

    return v0
.end method

.method private allChannelsClosed()Z
    .locals 5

    .prologue
    .line 263
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy;->mBipChannels:[Lcom/android/internal/telephony/cat/BipProxy$BipChannel;

    .local v0, arr$:[Lcom/android/internal/telephony/cat/BipProxy$BipChannel;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 264
    .local v1, channel:Lcom/android/internal/telephony/cat/BipProxy$BipChannel;
    if-eqz v1, :cond_0

    .line 265
    const/4 v4, 0x0

    .line 268
    .end local v1           #channel:Lcom/android/internal/telephony/cat/BipProxy$BipChannel;
    :goto_1
    return v4

    .line 263
    .restart local v1       #channel:Lcom/android/internal/telephony/cat/BipProxy$BipChannel;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 268
    .end local v1           #channel:Lcom/android/internal/telephony/cat/BipProxy$BipChannel;
    :cond_1
    const/4 v4, 0x1

    goto :goto_1
.end method

.method private checkPdpAllDown()V
    .locals 3

    .prologue
    .line 602
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v1, 0x7

    if-ge v0, v1, :cond_2

    .line 603
    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipProxy;->mCids:[I

    aget v1, v1, v0

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 612
    :cond_0
    :goto_1
    return-void

    .line 602
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 608
    :cond_2
    iget-boolean v1, p0, Lcom/android/internal/telephony/cat/BipProxy;->mIsTrackRegistered:Z

    if-eqz v1, :cond_0

    .line 609
    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipProxy;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForDataNetworkStateChanged(Landroid/os/Handler;)V

    .line 610
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/telephony/cat/BipProxy;->mIsTrackRegistered:Z

    goto :goto_1
.end method

.method private cleanupBipChannel(I)V
    .locals 3
    .parameter "channel"

    .prologue
    .line 272
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy;->mBipChannels:[Lcom/android/internal/telephony/cat/BipProxy$BipChannel;

    add-int/lit8 v1, p1, -0x1

    const/4 v2, 0x0

    aput-object v2, v0, v1

    .line 273
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy;->mCids:[I

    add-int/lit8 v1, p1, -0x1

    const/4 v2, -0x1

    aput v2, v0, v1

    .line 274
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/BipProxy;->checkPdpAllDown()V

    .line 275
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/BipProxy;->allChannelsClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 277
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy;->mDefaultBearerStateReceiver:Lcom/android/internal/telephony/cat/BipProxy$DefaultBearerStateReceiver;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/BipProxy$DefaultBearerStateReceiver;->stopListening()V

    .line 279
    :cond_0
    return-void
.end method

.method private findAvailableDefaultBearer([Landroid/net/NetworkInfo;)Landroid/net/NetworkInfo;
    .locals 8
    .parameter "networkInfos"

    .prologue
    .line 314
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 315
    .local v1, availableBearers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/NetworkInfo;>;"
    move-object v0, p1

    .local v0, arr$:[Landroid/net/NetworkInfo;
    array-length v5, v0

    .local v5, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v5, :cond_2

    aget-object v4, v0, v3

    .line 316
    .local v4, info:Landroid/net/NetworkInfo;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v7

    if-nez v7, :cond_1

    .line 315
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 320
    :cond_1
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getType()I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    goto :goto_1

    .line 324
    :sswitch_0
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 331
    .end local v4           #info:Landroid/net/NetworkInfo;
    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-nez v7, :cond_4

    .line 332
    const/4 v2, 0x0

    .line 348
    .end local v3           #i$:I
    :cond_3
    :goto_2
    return-object v2

    .line 335
    .restart local v3       #i$:I
    :cond_4
    const/4 v2, 0x0

    .line 336
    .local v2, candidateBearer:Landroid/net/NetworkInfo;
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_5
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/NetworkInfo;

    .line 337
    .restart local v4       #info:Landroid/net/NetworkInfo;
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v6

    .line 338
    .local v6, state:Landroid/net/NetworkInfo$State;
    sget-object v7, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v6, v7, :cond_6

    .line 339
    move-object v2, v4

    .line 340
    goto :goto_2

    .line 341
    :cond_6
    sget-object v7, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    if-eq v6, v7, :cond_7

    sget-object v7, Landroid/net/NetworkInfo$State;->SUSPENDED:Landroid/net/NetworkInfo$State;

    if-ne v6, v7, :cond_5

    .line 344
    :cond_7
    move-object v2, v4

    goto :goto_3

    .line 320
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_0
        0x6 -> :sswitch_0
    .end sparse-switch
.end method

.method private handleBipOpenChannel(Lcom/android/internal/telephony/cat/CatCmdMessage;)Z
    .locals 14
    .parameter "cmdMsg"

    .prologue
    const/4 v5, 0x0

    const/4 v9, 0x0

    const/4 v3, 0x1

    .line 172
    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getChannelSettings()Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    move-result-object v12

    .line 174
    .local v12, channelSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;
    if-nez v12, :cond_1

    move v3, v9

    .line 221
    :cond_0
    :goto_0
    return v3

    .line 178
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/BipProxy;->allChannelsClosed()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 179
    const-string v0, "handleBipCommand(): deal with OPEN_CHANNEL "

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 183
    :cond_2
    const/4 v13, 0x0

    .local v13, i:I
    :goto_1
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy;->mBipChannels:[Lcom/android/internal/telephony/cat/BipProxy$BipChannel;

    array-length v0, v0

    if-ge v13, v0, :cond_3

    .line 184
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy;->mBipChannels:[Lcom/android/internal/telephony/cat/BipProxy$BipChannel;

    aget-object v0, v0, v13

    if-nez v0, :cond_4

    .line 185
    add-int/lit8 v0, v13, 0x1

    iput v0, v12, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->channel:I

    .line 189
    :cond_3
    iget v0, v12, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->channel:I

    if-nez v0, :cond_5

    .line 191
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy;->mCatService:Lcom/android/internal/telephony/cat/CatService;

    iget-object v1, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->BIP_ERROR:Lcom/android/internal/telephony/cat/ResultCode;

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto :goto_0

    .line 183
    :cond_4
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 196
    :cond_5
    sget-object v0, Lcom/android/internal/telephony/cat/BipProxy$1;->$SwitchMap$com$android$internal$telephony$cat$InterfaceTransportLevel$TransportProtocol:[I

    iget-object v1, v12, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->protocol:Lcom/android/internal/telephony/cat/InterfaceTransportLevel$TransportProtocol;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/InterfaceTransportLevel$TransportProtocol;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 209
    iget-object v6, p0, Lcom/android/internal/telephony/cat/BipProxy;->mCatService:Lcom/android/internal/telephony/cat/CatService;

    iget-object v7, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v8, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    move v10, v9

    move-object v11, v5

    invoke-virtual/range {v6 .. v11}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto :goto_0

    .line 198
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy;->mBipChannels:[Lcom/android/internal/telephony/cat/BipProxy$BipChannel;

    iget v1, v12, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->channel:I

    add-int/lit8 v1, v1, -0x1

    new-instance v2, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;-><init>(Lcom/android/internal/telephony/cat/BipProxy;)V

    aput-object v2, v0, v1

    .line 214
    :goto_2
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/BipProxy;->setupDataConnection(Lcom/android/internal/telephony/cat/CatCmdMessage;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 216
    const-string v0, "Continue processing open channel"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 217
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy;->mBipChannels:[Lcom/android/internal/telephony/cat/BipProxy$BipChannel;

    iget v1, v12, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->channel:I

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/cat/BipProxy$BipChannel;->open(Lcom/android/internal/telephony/cat/CatCmdMessage;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 218
    iget v0, v12, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->channel:I

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cat/BipProxy;->cleanupBipChannel(I)V

    goto :goto_0

    .line 202
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy;->mBipChannels:[Lcom/android/internal/telephony/cat/BipProxy$BipChannel;

    iget v1, v12, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->channel:I

    add-int/lit8 v1, v1, -0x1

    new-instance v2, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;-><init>(Lcom/android/internal/telephony/cat/BipProxy;)V

    aput-object v2, v0, v1

    goto :goto_2

    .line 206
    :pswitch_2
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy;->mBipChannels:[Lcom/android/internal/telephony/cat/BipProxy$BipChannel;

    iget v1, v12, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->channel:I

    add-int/lit8 v1, v1, -0x1

    new-instance v2, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;-><init>(Lcom/android/internal/telephony/cat/BipProxy;)V

    aput-object v2, v0, v1

    goto :goto_2

    .line 196
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private handleBipOtherCommand(Lcom/android/internal/telephony/cat/AppInterface$CommandType;Lcom/android/internal/telephony/cat/CatCmdMessage;)Z
    .locals 11
    .parameter "curCmdType"
    .parameter "cmdMsg"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x3

    const/4 v0, 0x0

    const/4 v8, 0x1

    .line 225
    invoke-virtual {p2}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getDataSettings()Lcom/android/internal/telephony/cat/CatCmdMessage$DataSettings;

    move-result-object v1

    if-nez v1, :cond_1

    .line 255
    :cond_0
    :goto_0
    return v0

    .line 230
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipProxy;->mBipChannels:[Lcom/android/internal/telephony/cat/BipProxy$BipChannel;

    invoke-virtual {p2}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getDataSettings()Lcom/android/internal/telephony/cat/CatCmdMessage$DataSettings;

    move-result-object v2

    iget v2, v2, Lcom/android/internal/telephony/cat/CatCmdMessage$DataSettings;->channel:I

    add-int/lit8 v2, v2, -0x1

    aget-object v6, v1, v2

    .line 231
    .local v6, curChannel:Lcom/android/internal/telephony/cat/BipProxy$BipChannel;
    if-eqz v6, :cond_4

    .line 232
    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SEND_DATA:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    if-ne p1, v1, :cond_2

    .line 233
    invoke-virtual {v6, p2}, Lcom/android/internal/telephony/cat/BipProxy$BipChannel;->send(Lcom/android/internal/telephony/cat/CatCmdMessage;)V

    move v0, v8

    .line 234
    goto :goto_0

    .line 235
    :cond_2
    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->RECEIVE_DATA:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    if-ne p1, v1, :cond_3

    .line 236
    invoke-virtual {v6, p2}, Lcom/android/internal/telephony/cat/BipProxy$BipChannel;->receive(Lcom/android/internal/telephony/cat/CatCmdMessage;)V

    move v0, v8

    .line 237
    goto :goto_0

    .line 238
    :cond_3
    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->CLOSE_CHANNEL:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    if-ne p1, v1, :cond_0

    .line 239
    invoke-virtual {v6, p2}, Lcom/android/internal/telephony/cat/BipProxy$BipChannel;->close(Lcom/android/internal/telephony/cat/CatCmdMessage;)V

    .line 240
    invoke-virtual {p2}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getDataSettings()Lcom/android/internal/telephony/cat/CatCmdMessage$DataSettings;

    move-result-object v0

    iget v0, v0, Lcom/android/internal/telephony/cat/CatCmdMessage$DataSettings;->channel:I

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cat/BipProxy;->cleanupBipChannel(I)V

    move v0, v8

    .line 241
    goto :goto_0

    .line 245
    :cond_4
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy;->mCatService:Lcom/android/internal/telephony/cat/CatService;

    iget-object v1, p2, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->BIP_ERROR:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v3, 0x1

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v8

    .line 247
    goto :goto_0

    .line 249
    .end local v6           #curChannel:Lcom/android/internal/telephony/cat/BipProxy$BipChannel;
    :catch_0
    move-exception v7

    .line 251
    .local v7, e:Ljava/lang/ArrayIndexOutOfBoundsException;
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy;->mCatService:Lcom/android/internal/telephony/cat/CatService;

    iget-object v1, p2, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->BIP_ERROR:Lcom/android/internal/telephony/cat/ResultCode;

    move v3, v8

    move v4, v9

    move-object v5, v10

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    move v0, v8

    .line 253
    goto :goto_0
.end method

.method private isPdpActivated(Ljava/util/ArrayList;I)Z
    .locals 3
    .parameter
    .parameter "cid"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/DataCallState;",
            ">;I)Z"
        }
    .end annotation

    .prologue
    .line 566
    .local p1, pdpStates:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/DataCallState;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/DataCallState;

    .line 567
    .local v1, state:Lcom/android/internal/telephony/DataCallState;
    iget v2, v1, Lcom/android/internal/telephony/DataCallState;->cid:I

    if-ne v2, p2, :cond_0

    iget v2, v1, Lcom/android/internal/telephony/DataCallState;->active:I

    if-eqz v2, :cond_0

    .line 568
    const/4 v2, 0x1

    .line 571
    .end local v1           #state:Lcom/android/internal/telephony/DataCallState;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private onPdpStateChanged(Landroid/os/AsyncResult;)V
    .locals 6
    .parameter "ar"

    .prologue
    const/4 v5, -0x1

    .line 575
    if-eqz p1, :cond_0

    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_1

    .line 599
    :cond_0
    :goto_0
    return-void

    .line 579
    :cond_1
    iget-object v2, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    move-object v1, v2

    check-cast v1, Ljava/util/ArrayList;

    .line 580
    .local v1, pdpStates:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/DataCallState;>;"
    if-eqz v1, :cond_0

    .line 584
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    const/4 v2, 0x7

    if-ge v0, v2, :cond_4

    .line 585
    iget-object v2, p0, Lcom/android/internal/telephony/cat/BipProxy;->mCids:[I

    aget v2, v2, v0

    if-ne v2, v5, :cond_3

    .line 584
    :cond_2
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 588
    :cond_3
    iget-object v2, p0, Lcom/android/internal/telephony/cat/BipProxy;->mCids:[I

    aget v2, v2, v0

    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/cat/BipProxy;->isPdpActivated(Ljava/util/ArrayList;I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 589
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/telephony/cat/BipProxy;->mIsLinkDropped:Z

    .line 590
    iget-object v2, p0, Lcom/android/internal/telephony/cat/BipProxy;->mCids:[I

    aput v5, v2, v0

    .line 592
    iget-object v2, p0, Lcom/android/internal/telephony/cat/BipProxy;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "d60b19010a82028281b8020"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, v0, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "05"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->sendEnvelope(Ljava/lang/String;Landroid/os/Message;)V

    .line 594
    const-string v2, "BIP network state : disconnected "

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    .line 598
    :cond_4
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/BipProxy;->checkPdpAllDown()V

    goto :goto_0
.end method

.method private onSetupConnectionCompleted(Landroid/os/AsyncResult;)V
    .locals 22
    .parameter "ar"

    .prologue
    .line 503
    if-nez p1, :cond_1

    .line 563
    :cond_0
    :goto_0
    return-void

    .line 507
    :cond_1
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Lcom/android/internal/telephony/DataCallState;

    .line 508
    .local v21, response:Lcom/android/internal/telephony/DataCallState;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v16, v0

    check-cast v16, Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 510
    .local v16, cmdMsg:Lcom/android/internal/telephony/cat/CatCmdMessage;
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_2

    .line 511
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to setup data connection for channel: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getChannelSettings()Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    move-result-object v3

    iget v3, v3, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->channel:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 513
    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getChannelSettings()Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    move-result-object v2

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->cid:Ljava/lang/Integer;

    .line 514
    new-instance v7, Lcom/android/internal/telephony/cat/OpenChannelResponseData;

    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getChannelSettings()Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    move-result-object v2

    iget v2, v2, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->bufSize:I

    const/4 v3, 0x0

    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getChannelSettings()Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    move-result-object v4

    iget-object v4, v4, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->bearerDescription:Lcom/android/internal/telephony/cat/BearerDescription;

    invoke-direct {v7, v2, v3, v4}, Lcom/android/internal/telephony/cat/OpenChannelResponseData;-><init>(ILjava/lang/Integer;Lcom/android/internal/telephony/cat/BearerDescription;)V

    .line 516
    .local v7, resp:Lcom/android/internal/telephony/cat/ResponseData;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/BipProxy;->mCatService:Lcom/android/internal/telephony/cat/CatService;

    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v4, Lcom/android/internal/telephony/cat/ResultCode;->NETWORK_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    .line 518
    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getChannelSettings()Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    move-result-object v2

    iget v2, v2, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->channel:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/cat/BipProxy;->cleanupBipChannel(I)V

    goto :goto_0

    .line 520
    .end local v7           #resp:Lcom/android/internal/telephony/cat/ResponseData;
    :cond_2
    if-eqz v21, :cond_5

    move-object/from16 v0, v21

    iget v2, v0, Lcom/android/internal/telephony/DataCallState;->status:I

    if-nez v2, :cond_5

    .line 521
    move-object/from16 v0, v21

    iget v15, v0, Lcom/android/internal/telephony/DataCallState;->cid:I

    .line 522
    .local v15, cid:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/BipProxy;->mCids:[I

    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getChannelSettings()Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    move-result-object v3

    iget v3, v3, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->channel:I

    add-int/lit8 v3, v3, -0x1

    aput v15, v2, v3

    .line 523
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/internal/telephony/DataCallState;->ifname:Ljava/lang/String;

    move-object/from16 v19, v0

    .line 524
    .local v19, interfaceName:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Succeeded to setup data connection for channel "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getChannelSettings()Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    move-result-object v3

    iget v3, v3, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->channel:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " cid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ifname="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 530
    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getChannelSettings()Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    move-result-object v2

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->cid:Ljava/lang/Integer;

    .line 533
    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getChannelSettings()Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->destinationAddress:[B

    const/4 v3, 0x3

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x18

    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getChannelSettings()Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    move-result-object v3

    iget-object v3, v3, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->destinationAddress:[B

    const/4 v4, 0x2

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getChannelSettings()Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    move-result-object v3

    iget-object v3, v3, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->destinationAddress:[B

    const/4 v4, 0x1

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getChannelSettings()Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    move-result-object v3

    iget-object v3, v3, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->destinationAddress:[B

    const/4 v4, 0x0

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    or-int v14, v2, v3

    .line 538
    .local v14, addr:I
    invoke-static {v14}, Landroid/net/NetworkUtils;->intToInetAddress(I)Ljava/net/InetAddress;

    move-result-object v18

    .line 539
    .local v18, inetAddress:Ljava/net/InetAddress;
    if-nez v18, :cond_4

    .line 540
    const-string v2, " inetAddress is null Error"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 553
    :cond_3
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/BipProxy;->mBipChannels:[Lcom/android/internal/telephony/cat/BipProxy$BipChannel;

    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getChannelSettings()Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    move-result-object v3

    iget v3, v3, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->channel:I

    add-int/lit8 v3, v3, -0x1

    aget-object v2, v2, v3

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/cat/BipProxy$BipChannel;->open(Lcom/android/internal/telephony/cat/CatCmdMessage;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 555
    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getChannelSettings()Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    move-result-object v2

    iget v2, v2, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->channel:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/cat/BipProxy;->cleanupBipChannel(I)V

    goto/16 :goto_0

    .line 542
    :cond_4
    const-string/jumbo v2, "network_management"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v20

    .line 544
    .local v20, nms:Landroid/os/INetworkManagementService;
    if-eqz v20, :cond_3

    .line 546
    :try_start_0
    invoke-static/range {v18 .. v18}, Landroid/net/RouteInfo;->makeHostRoute(Ljava/net/InetAddress;)Landroid/net/RouteInfo;

    move-result-object v2

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-interface {v0, v1, v2}, Landroid/os/INetworkManagementService;->addRoute(Ljava/lang/String;Landroid/net/RouteInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 547
    :catch_0
    move-exception v17

    .line 548
    .local v17, e:Landroid/os/RemoteException;
    const-string v2, "Add Route failed in remote"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 558
    .end local v14           #addr:I
    .end local v15           #cid:I
    .end local v17           #e:Landroid/os/RemoteException;
    .end local v18           #inetAddress:Ljava/net/InetAddress;
    .end local v19           #interfaceName:Ljava/lang/String;
    .end local v20           #nms:Landroid/os/INetworkManagementService;
    :cond_5
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/telephony/cat/BipProxy;->mCatService:Lcom/android/internal/telephony/cat/CatService;

    move-object/from16 v0, v16

    iget-object v9, v0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v10, Lcom/android/internal/telephony/cat/ResultCode;->BIP_ERROR:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual/range {v8 .. v13}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    .line 560
    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getChannelSettings()Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    move-result-object v2

    iget v2, v2, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->channel:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/cat/BipProxy;->cleanupBipChannel(I)V

    goto/16 :goto_0
.end method

.method private onTeardownConnectionCompleted(Landroid/os/AsyncResult;)V
    .locals 5
    .parameter "ar"

    .prologue
    .line 615
    if-nez p1, :cond_1

    .line 639
    :cond_0
    :goto_0
    return-void

    .line 619
    :cond_1
    iget-object v1, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 621
    .local v1, cmdMsg:Lcom/android/internal/telephony/cat/CatCmdMessage;
    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCmdType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v2

    .line 623
    .local v2, cmdType:Lcom/android/internal/telephony/cat/AppInterface$CommandType;
    sget-object v3, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->OPEN_CHANNEL:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    if-ne v2, v3, :cond_2

    .line 624
    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getChannelSettings()Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    move-result-object v3

    iget v0, v3, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->channel:I

    .line 631
    .local v0, channel:I
    :goto_1
    iget-object v3, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_3

    .line 632
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to teardown data connection for channel: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 638
    :goto_2
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cat/BipProxy;->cleanupBipChannel(I)V

    goto :goto_0

    .line 625
    .end local v0           #channel:I
    :cond_2
    sget-object v3, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->CLOSE_CHANNEL:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    if-ne v2, v3, :cond_0

    .line 626
    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getDataSettings()Lcom/android/internal/telephony/cat/CatCmdMessage$DataSettings;

    move-result-object v3

    iget v0, v3, Lcom/android/internal/telephony/cat/CatCmdMessage$DataSettings;->channel:I

    .restart local v0       #channel:I
    goto :goto_1

    .line 635
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Succedded to teardown data connection for channel: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2
.end method

.method private sendChannelStatusEvent(I)V
    .locals 5
    .parameter "channelStatus"

    .prologue
    .line 282
    const/4 v1, 0x4

    new-array v0, v1, [B

    fill-array-data v0, :array_0

    .line 283
    .local v0, additionalInfo:[B
    const/4 v1, 0x2

    shr-int/lit8 v2, p1, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 284
    const/4 v1, 0x3

    and-int/lit16 v2, p1, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 287
    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipProxy;->mCatService:Lcom/android/internal/telephony/cat/CatService;

    new-instance v2, Lcom/android/internal/telephony/cat/CatEventMessage;

    const/16 v3, 0xa

    const/4 v4, 0x1

    invoke-direct {v2, v3, v0, v4}, Lcom/android/internal/telephony/cat/CatEventMessage;-><init>(I[BZ)V

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/cat/CatService;->onEventDownload(Lcom/android/internal/telephony/cat/CatEventMessage;)V

    .line 288
    return-void

    .line 282
    :array_0
    .array-data 0x1
        0xb8t
        0x2t
        0x0t
        0x0t
    .end array-data
.end method

.method private sendDataAvailableEvent(II)V
    .locals 6
    .parameter "channelStatus"
    .parameter "dataAvailable"

    .prologue
    const/4 v5, 0x6

    const/4 v4, 0x3

    const/4 v3, 0x2

    .line 291
    const/4 v1, 0x7

    new-array v0, v1, [B

    fill-array-data v0, :array_0

    .line 292
    .local v0, additionalInfo:[B
    shr-int/lit8 v1, p1, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, v0, v3

    .line 293
    iget-boolean v1, p0, Lcom/android/internal/telephony/cat/BipProxy;->mIsLinkDropped:Z

    if-nez v1, :cond_0

    .line 294
    aget-byte v1, v0, v3

    or-int/lit16 v1, v1, 0x80

    int-to-byte v1, v1

    aput-byte v1, v0, v3

    .line 297
    :cond_0
    and-int/lit16 v1, p1, 0xff

    int-to-byte v1, v1

    aput-byte v1, v0, v4

    .line 298
    and-int/lit16 v1, p2, 0xff

    int-to-byte v1, v1

    aput-byte v1, v0, v5

    .line 300
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "additionalInfo[2]="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-byte v2, v0, v3

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 301
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "additionalInfo[3]="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-byte v2, v0, v4

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 302
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "additionalInfo[6]="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-byte v2, v0, v5

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 304
    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipProxy;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "d60e19010982028281"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->sendEnvelope(Ljava/lang/String;Landroid/os/Message;)V

    .line 305
    return-void

    .line 291
    nop

    :array_0
    .array-data 0x1
        0xb8t
        0x2t
        0x0t
        0x0t
        0xb7t
        0x1t
        0x0t
    .end array-data
.end method

.method private setupDataConnection(Lcom/android/internal/telephony/cat/CatCmdMessage;)Z
    .locals 11
    .parameter "cmdMsg"

    .prologue
    const/4 v10, 0x0

    .line 457
    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getChannelSettings()Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    move-result-object v8

    .line 459
    .local v8, newChannel:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;
    iget-object v0, v8, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->protocol:Lcom/android/internal/telephony/cat/InterfaceTransportLevel$TransportProtocol;

    sget-object v1, Lcom/android/internal/telephony/cat/InterfaceTransportLevel$TransportProtocol;->TCP_CLIENT_REMOTE:Lcom/android/internal/telephony/cat/InterfaceTransportLevel$TransportProtocol;

    if-eq v0, v1, :cond_0

    iget-object v0, v8, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->protocol:Lcom/android/internal/telephony/cat/InterfaceTransportLevel$TransportProtocol;

    sget-object v1, Lcom/android/internal/telephony/cat/InterfaceTransportLevel$TransportProtocol;->UDP_CLIENT_REMOTE:Lcom/android/internal/telephony/cat/InterfaceTransportLevel$TransportProtocol;

    if-eq v0, v1, :cond_0

    .line 461
    const-string v0, "No data connection needed for this channel"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 462
    const/4 v9, 0x1

    .line 487
    :goto_0
    return v9

    .line 465
    :cond_0
    const/4 v9, 0x0

    .line 466
    .local v9, result:Z
    iget-object v6, v8, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->bearerDescription:Lcom/android/internal/telephony/cat/BearerDescription;

    .line 469
    .local v6, bd:Lcom/android/internal/telephony/cat/BearerDescription;
    :try_start_0
    iget-object v0, v6, Lcom/android/internal/telephony/cat/BearerDescription;->type:Lcom/android/internal/telephony/cat/BearerDescription$BearerType;

    sget-object v1, Lcom/android/internal/telephony/cat/BearerDescription$BearerType;->DEFAULT_BEARER:Lcom/android/internal/telephony/cat/BearerDescription$BearerType;

    if-ne v0, v1, :cond_1

    .line 470
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/BipProxy;->setupDefaultDataConnection(Lcom/android/internal/telephony/cat/CatCmdMessage;)Z

    move-result v9

    goto :goto_0

    .line 471
    :cond_1
    iget-object v0, v6, Lcom/android/internal/telephony/cat/BearerDescription;->type:Lcom/android/internal/telephony/cat/BearerDescription$BearerType;

    sget-object v1, Lcom/android/internal/telephony/cat/BearerDescription$BearerType;->MOBILE_PS:Lcom/android/internal/telephony/cat/BearerDescription$BearerType;

    if-eq v0, v1, :cond_2

    iget-object v0, v6, Lcom/android/internal/telephony/cat/BearerDescription;->type:Lcom/android/internal/telephony/cat/BearerDescription$BearerType;

    sget-object v1, Lcom/android/internal/telephony/cat/BearerDescription$BearerType;->MOBILE_PS_EXTENDED_QOS:Lcom/android/internal/telephony/cat/BearerDescription$BearerType;

    if-ne v0, v1, :cond_3

    .line 473
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/BipProxy;->setupSpecificPdpConnection(Lcom/android/internal/telephony/cat/CatCmdMessage;)Z

    move-result v9

    goto :goto_0

    .line 476
    :cond_3
    const-string v0, "Unsupported bearer type"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 477
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy;->mCatService:Lcom/android/internal/telephony/cat/CatService;

    iget-object v1, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->BEYOND_TERMINAL_CAPABILITY:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V
    :try_end_0
    .catch Lcom/android/internal/telephony/cat/BipProxy$ConnectionSetupFailedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 480
    :catch_0
    move-exception v7

    .line 481
    .local v7, csfe:Lcom/android/internal/telephony/cat/BipProxy$ConnectionSetupFailedException;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setupDataConnection Failed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v7}, Lcom/android/internal/telephony/cat/BipProxy$ConnectionSetupFailedException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 483
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy;->mBipChannels:[Lcom/android/internal/telephony/cat/BipProxy$BipChannel;

    iget v1, v8, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->channel:I

    add-int/lit8 v1, v1, -0x1

    aput-object v10, v0, v1

    .line 484
    iget v0, v8, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->channel:I

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cat/BipProxy;->cleanupBipChannel(I)V

    goto :goto_0
.end method

.method private setupDefaultDataConnection(Lcom/android/internal/telephony/cat/CatCmdMessage;)Z
    .locals 13
    .parameter "cmdMsg"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/BipProxy$ConnectionSetupFailedException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 353
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/ConnectivityManager;

    .line 355
    .local v6, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v6}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v8

    .line 356
    .local v8, netInfos:[Landroid/net/NetworkInfo;
    const/4 v7, 0x0

    .line 358
    .local v7, netInfo:Landroid/net/NetworkInfo;
    if-eqz v8, :cond_0

    array-length v0, v8

    if-eqz v0, :cond_0

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/cat/BipProxy;->findAvailableDefaultBearer([Landroid/net/NetworkInfo;)Landroid/net/NetworkInfo;

    move-result-object v7

    if-nez v7, :cond_1

    .line 360
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy;->mCatService:Lcom/android/internal/telephony/cat/CatService;

    iget-object v1, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->BEYOND_TERMINAL_CAPABILITY:Lcom/android/internal/telephony/cat/ResultCode;

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    .line 362
    new-instance v0, Lcom/android/internal/telephony/cat/BipProxy$ConnectionSetupFailedException;

    const-string v1, "No default bearer available"

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/cat/BipProxy$ConnectionSetupFailedException;-><init>(Lcom/android/internal/telephony/cat/BipProxy;Ljava/lang/String;)V

    throw v0

    .line 365
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getChannelSettings()Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    move-result-object v9

    .line 366
    .local v9, newChannel:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;
    const/4 v11, 0x0

    .line 368
    .local v11, result:Z
    sget-object v0, Lcom/android/internal/telephony/cat/BipProxy$1;->$SwitchMap$android$net$NetworkInfo$State:[I

    invoke-virtual {v7}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/NetworkInfo$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 390
    const-string v0, "Default bearer is Disconnected"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 391
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy;->mCatService:Lcom/android/internal/telephony/cat/CatService;

    iget-object v1, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->BEYOND_TERMINAL_CAPABILITY:Lcom/android/internal/telephony/cat/ResultCode;

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    .line 393
    new-instance v0, Lcom/android/internal/telephony/cat/BipProxy$ConnectionSetupFailedException;

    const-string v1, "Default bearer is disconnected!"

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/cat/BipProxy$ConnectionSetupFailedException;-><init>(Lcom/android/internal/telephony/cat/BipProxy;Ljava/lang/String;)V

    throw v0

    .line 370
    :pswitch_0
    const-string v0, "Default bearer is connected"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 371
    const/4 v11, 0x1

    .line 396
    :goto_0
    return v11

    .line 374
    :pswitch_1
    const-string v0, "Default bearer is connecting.  Waiting for connect"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 375
    const/16 v0, 0xa

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/cat/BipProxy;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v12

    .line 376
    .local v12, resultMsg:Landroid/os/Message;
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy;->mDefaultBearerStateReceiver:Lcom/android/internal/telephony/cat/BipProxy$DefaultBearerStateReceiver;

    invoke-virtual {v0, v12}, Lcom/android/internal/telephony/cat/BipProxy$DefaultBearerStateReceiver;->setOngoingSetupMessage(Landroid/os/Message;)V

    .line 377
    const/4 v11, 0x0

    .line 378
    goto :goto_0

    .line 381
    .end local v12           #resultMsg:Landroid/os/Message;
    :pswitch_2
    const-string v0, "Default bearer not connected, busy on voice call"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 382
    new-instance v10, Lcom/android/internal/telephony/cat/OpenChannelResponseData;

    iget v0, v9, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->bufSize:I

    iget-object v1, v9, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->bearerDescription:Lcom/android/internal/telephony/cat/BearerDescription;

    invoke-direct {v10, v0, v5, v1}, Lcom/android/internal/telephony/cat/OpenChannelResponseData;-><init>(ILjava/lang/Integer;Lcom/android/internal/telephony/cat/BearerDescription;)V

    .line 384
    .local v10, resp:Lcom/android/internal/telephony/cat/ResponseData;
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy;->mCatService:Lcom/android/internal/telephony/cat/CatService;

    iget-object v1, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->TERMINAL_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v3, 0x1

    const/4 v4, 0x2

    move-object v5, v10

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    .line 386
    new-instance v0, Lcom/android/internal/telephony/cat/BipProxy$ConnectionSetupFailedException;

    const-string v1, "Default bearer suspended!"

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/cat/BipProxy$ConnectionSetupFailedException;-><init>(Lcom/android/internal/telephony/cat/BipProxy;Ljava/lang/String;)V

    throw v0

    .line 368
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private setupSpecificPdpConnection(Lcom/android/internal/telephony/cat/CatCmdMessage;)Z
    .locals 20
    .parameter "cmdMsg"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/BipProxy$ConnectionSetupFailedException;
        }
    .end annotation

    .prologue
    .line 401
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/BipProxy;->mContext:Landroid/content/Context;

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/net/ConnectivityManager;

    .line 403
    .local v17, cm:Landroid/net/ConnectivityManager;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/BipProxy;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/telephony/TelephonyManager;

    .line 406
    .local v19, tm:Landroid/telephony/TelephonyManager;
    invoke-virtual/range {v17 .. v17}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 407
    const-string v2, "User does not allow mobile data connections"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 408
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/BipProxy;->mCatService:Lcom/android/internal/telephony/cat/CatService;

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v4, Lcom/android/internal/telephony/cat/ResultCode;->BEYOND_TERMINAL_CAPABILITY:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    .line 410
    new-instance v2, Lcom/android/internal/telephony/cat/BipProxy$ConnectionSetupFailedException;

    const-string v3, "No mobile data connections allowed!"

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3}, Lcom/android/internal/telephony/cat/BipProxy$ConnectionSetupFailedException;-><init>(Lcom/android/internal/telephony/cat/BipProxy;Ljava/lang/String;)V

    throw v2

    .line 413
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getChannelSettings()Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    move-result-object v18

    .line 415
    .local v18, newChannel:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;
    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->networkAccessName:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 416
    const-string/jumbo v2, "no accessname for PS bearer req"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 417
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/cat/BipProxy;->setupDefaultDataConnection(Lcom/android/internal/telephony/cat/CatCmdMessage;)Z

    move-result v2

    .line 447
    :goto_0
    return v2

    .line 420
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setupSpecificPdpConnection(): current call state is :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {v19 .. v19}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " and network type is : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {v19 .. v19}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 423
    invoke-virtual/range {v19 .. v19}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual/range {v19 .. v19}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v2

    const/4 v3, 0x2

    if-gt v2, v3, :cond_2

    .line 426
    const-string v2, "Bearer not setup, busy on voice call"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 427
    new-instance v7, Lcom/android/internal/telephony/cat/OpenChannelResponseData;

    move-object/from16 v0, v18

    iget v2, v0, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->bufSize:I

    const/4 v3, 0x0

    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->bearerDescription:Lcom/android/internal/telephony/cat/BearerDescription;

    invoke-direct {v7, v2, v3, v4}, Lcom/android/internal/telephony/cat/OpenChannelResponseData;-><init>(ILjava/lang/Integer;Lcom/android/internal/telephony/cat/BearerDescription;)V

    .line 429
    .local v7, resp:Lcom/android/internal/telephony/cat/ResponseData;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/BipProxy;->mCatService:Lcom/android/internal/telephony/cat/CatService;

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v4, Lcom/android/internal/telephony/cat/ResultCode;->TERMINAL_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v5, 0x1

    const/4 v6, 0x2

    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    .line 431
    new-instance v2, Lcom/android/internal/telephony/cat/BipProxy$ConnectionSetupFailedException;

    const-string v3, "Busy on voice call"

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3}, Lcom/android/internal/telephony/cat/BipProxy$ConnectionSetupFailedException;-><init>(Lcom/android/internal/telephony/cat/BipProxy;Ljava/lang/String;)V

    throw v2

    .line 434
    .end local v7           #resp:Lcom/android/internal/telephony/cat/ResponseData;
    :cond_2
    const-string v2, "Detected new data connection parameters"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 436
    const/16 v2, 0xa

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/telephony/cat/BipProxy;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v16

    .line 437
    .local v16, resultMsg:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/telephony/cat/BipProxy;->mIsTrackRegistered:Z

    if-nez v2, :cond_3

    .line 438
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/BipProxy;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v3, 0xc

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-interface {v2, v0, v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->registerForDataNetworkStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 439
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/cat/BipProxy;->mIsTrackRegistered:Z

    .line 441
    :cond_3
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/telephony/cat/BipProxy;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    const/16 v2, 0x527

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, v18

    iget-object v11, v0, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->networkAccessName:Ljava/lang/String;

    move-object/from16 v0, v18

    iget-object v12, v0, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->userLogin:Ljava/lang/String;

    move-object/from16 v0, v18

    iget-object v13, v0, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->userPassword:Ljava/lang/String;

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    const-string v15, "IP"

    invoke-interface/range {v8 .. v16}, Lcom/android/internal/telephony/CommandsInterface;->setupDataCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 447
    const/4 v2, 0x0

    goto/16 :goto_0
.end method

.method private teardownDataConnection(Lcom/android/internal/telephony/cat/CatCmdMessage;I)Z
    .locals 3
    .parameter "cmdMsg"
    .parameter "cid"

    .prologue
    .line 497
    const/16 v1, 0xb

    invoke-virtual {p0, v1, p1}, Lcom/android/internal/telephony/cat/BipProxy;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 498
    .local v0, resultMsg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipProxy;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v2, 0x0

    invoke-interface {v1, p2, v2, v0}, Lcom/android/internal/telephony/CommandsInterface;->deactivateDataCall(IILandroid/os/Message;)V

    .line 499
    const/4 v1, 0x1

    return v1
.end method


# virtual methods
.method public canHandleNewChannel()Z
    .locals 5

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy;->mBipChannels:[Lcom/android/internal/telephony/cat/BipProxy$BipChannel;

    .local v0, arr$:[Lcom/android/internal/telephony/cat/BipProxy$BipChannel;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 113
    .local v1, bipChannel:Lcom/android/internal/telephony/cat/BipProxy$BipChannel;
    if-nez v1, :cond_0

    .line 114
    const/4 v4, 0x1

    .line 117
    .end local v1           #bipChannel:Lcom/android/internal/telephony/cat/BipProxy$BipChannel;
    :goto_1
    return v4

    .line 112
    .restart local v1       #bipChannel:Lcom/android/internal/telephony/cat/BipProxy$BipChannel;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 117
    .end local v1           #bipChannel:Lcom/android/internal/telephony/cat/BipProxy$BipChannel;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public handleBipCommand(Lcom/android/internal/telephony/cat/CatCmdMessage;)V
    .locals 17
    .parameter "cmdMsg"

    .prologue
    .line 131
    if-nez p1, :cond_1

    .line 169
    :cond_0
    :goto_0
    return-void

    .line 135
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCmdType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v14

    .line 137
    .local v14, curCmdType:Lcom/android/internal/telephony/cat/AppInterface$CommandType;
    sget-object v2, Lcom/android/internal/telephony/cat/BipProxy$1;->$SwitchMap$com$android$internal$telephony$cat$AppInterface$CommandType:[I

    invoke-virtual {v14}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 166
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/telephony/cat/BipProxy;->mCatService:Lcom/android/internal/telephony/cat/CatService;

    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v10, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual/range {v8 .. v13}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto :goto_0

    .line 139
    :pswitch_0
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/cat/BipProxy;->handleBipOpenChannel(Lcom/android/internal/telephony/cat/CatCmdMessage;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 147
    :pswitch_1
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v14, v1}, Lcom/android/internal/telephony/cat/BipProxy;->handleBipOtherCommand(Lcom/android/internal/telephony/cat/AppInterface$CommandType;Lcom/android/internal/telephony/cat/CatCmdMessage;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 153
    :pswitch_2
    const/4 v2, 0x7

    new-array v0, v2, [I

    move-object/from16 v16, v0

    .line 154
    .local v16, status:[I
    const/4 v15, 0x0

    .local v15, i:I
    :goto_1
    const/4 v2, 0x7

    if-ge v15, v2, :cond_3

    .line 155
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/BipProxy;->mBipChannels:[Lcom/android/internal/telephony/cat/BipProxy$BipChannel;

    aget-object v2, v2, v15

    if-eqz v2, :cond_2

    .line 156
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/BipProxy;->mBipChannels:[Lcom/android/internal/telephony/cat/BipProxy$BipChannel;

    aget-object v2, v2, v15

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/BipProxy$BipChannel;->getStatus()I

    move-result v2

    aput v2, v16, v15

    .line 154
    :goto_2
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 159
    :cond_2
    const/4 v2, 0x0

    aput v2, v16, v15

    goto :goto_2

    .line 162
    :cond_3
    new-instance v7, Lcom/android/internal/telephony/cat/ChannelStatusResponseData;

    move-object/from16 v0, v16

    invoke-direct {v7, v0}, Lcom/android/internal/telephony/cat/ChannelStatusResponseData;-><init>([I)V

    .line 163
    .local v7, resp:Lcom/android/internal/telephony/cat/ResponseData;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/BipProxy;->mCatService:Lcom/android/internal/telephony/cat/CatService;

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v4, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto :goto_0

    .line 137
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 643
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 660
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 645
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 646
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cat/BipProxy;->onSetupConnectionCompleted(Landroid/os/AsyncResult;)V

    .line 662
    :cond_0
    :goto_0
    return-void

    .line 650
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 651
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cat/BipProxy;->onTeardownConnectionCompleted(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 655
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 656
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cat/BipProxy;->onPdpStateChanged(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 643
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

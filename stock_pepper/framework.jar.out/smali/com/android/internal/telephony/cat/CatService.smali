.class public Lcom/android/internal/telephony/cat/CatService;
.super Landroid/os/Handler;
.source "CatService.java"

# interfaces
.implements Lcom/android/internal/telephony/cat/AppInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/cat/CatService$1;
    }
.end annotation


# static fields
.field private static final DEV_ID_DISPLAY:I = 0x2

.field private static final DEV_ID_EARPIECE:I = 0x3

.field private static final DEV_ID_KEYPAD:I = 0x1

.field private static final DEV_ID_NETWORK:I = 0x83

.field private static final DEV_ID_TERMINAL:I = 0x82

.field private static final DEV_ID_UICC:I = 0x81

.field static final MSG_ID_CALL_SETUP:I = 0x4

.field static final MSG_ID_EVENT_NOTIFY:I = 0x3

.field private static final MSG_ID_ICC_RECORDS_LOADED:I = 0x14

.field static final MSG_ID_ICC_REFRESH_RESET:I = 0x1e

.field static final MSG_ID_PROACTIVE_COMMAND:I = 0x2

.field static final MSG_ID_REFRESH:I = 0x5

.field static final MSG_ID_RESPONSE:I = 0x6

.field static final MSG_ID_RIL_MSG_DECODED:I = 0xa

.field static final MSG_ID_SESSION_END:I = 0x1

.field static final MSG_ID_SIM_READY:I = 0x7

.field static final STK_DEFAULT:Ljava/lang/String; = "Defualt Message"

.field private static mIccRecords:Lcom/android/internal/telephony/IccRecords;

.field private static sInstance:Lcom/android/internal/telephony/cat/CatService;

.field private static final sInstanceLock:Ljava/lang/Object;


# instance fields
.field private final mBIPProxyEnabled:Z

.field private mBipProxy:Lcom/android/internal/telephony/cat/BipProxy;

.field private mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

.field private mContext:Landroid/content/Context;

.field private mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

.field private mEventList:[B

.field private mMenuCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

.field private mMsgDecoder:Lcom/android/internal/telephony/cat/RilMessageDecoder;

.field private mStkAppInstalled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 78
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/cat/CatService;->sInstanceLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/IccRecords;Landroid/content/Context;Lcom/android/internal/telephony/IccFileHandler;Lcom/android/internal/telephony/IccCard;)V
    .locals 5
    .parameter "ci"
    .parameter "ir"
    .parameter "context"
    .parameter "fh"
    .parameter "ic"

    .prologue
    const/4 v4, 0x7

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 118
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 82
    iput-object v3, p0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 83
    iput-object v3, p0, Lcom/android/internal/telephony/cat/CatService;->mMenuCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 84
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mEventList:[B

    .line 86
    iput-object v3, p0, Lcom/android/internal/telephony/cat/CatService;->mBipProxy:Lcom/android/internal/telephony/cat/BipProxy;

    .line 88
    iput-object v3, p0, Lcom/android/internal/telephony/cat/CatService;->mMsgDecoder:Lcom/android/internal/telephony/cat/RilMessageDecoder;

    .line 89
    iput-boolean v1, p0, Lcom/android/internal/telephony/cat/CatService;->mStkAppInstalled:Z

    .line 119
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    if-nez p5, :cond_1

    .line 121
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Service: Input parameters must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 124
    :cond_1
    iput-object p1, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    .line 125
    iput-object p3, p0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    .line 127
    const-string/jumbo v0, "ro.semc.sim.bip.enabled"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/cat/CatService;->mBIPProxyEnabled:Z

    .line 129
    iget-boolean v0, p0, Lcom/android/internal/telephony/cat/CatService;->mBIPProxyEnabled:Z

    if-eqz v0, :cond_2

    .line 130
    new-instance v0, Lcom/android/internal/telephony/cat/BipProxy;

    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/internal/telephony/cat/BipProxy;-><init>(Lcom/android/internal/telephony/cat/CatService;Lcom/android/internal/telephony/CommandsInterface;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mBipProxy:Lcom/android/internal/telephony/cat/BipProxy;

    .line 134
    :cond_2
    invoke-static {p0, p4}, Lcom/android/internal/telephony/cat/RilMessageDecoder;->getInstance(Landroid/os/Handler;Lcom/android/internal/telephony/IccFileHandler;)Lcom/android/internal/telephony/cat/RilMessageDecoder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mMsgDecoder:Lcom/android/internal/telephony/cat/RilMessageDecoder;

    .line 137
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x1

    invoke-interface {v0, p0, v1, v3}, Lcom/android/internal/telephony/CommandsInterface;->setOnCatSessionEnd(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 138
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x2

    invoke-interface {v0, p0, v1, v3}, Lcom/android/internal/telephony/CommandsInterface;->setOnCatProactiveCmd(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 139
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x3

    invoke-interface {v0, p0, v1, v3}, Lcom/android/internal/telephony/CommandsInterface;->setOnCatEvent(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 140
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x4

    invoke-interface {v0, p0, v1, v3}, Lcom/android/internal/telephony/CommandsInterface;->setOnCatCallSetUp(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 143
    sput-object p2, Lcom/android/internal/telephony/cat/CatService;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    .line 146
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0, v4, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForSIMReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 147
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0, v4, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForRUIMReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 148
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0, v4, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForNVReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 149
    sget-object v0, Lcom/android/internal/telephony/cat/CatService;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    const/16 v1, 0x14

    invoke-virtual {v0, p0, v1, v3}, Lcom/android/internal/telephony/IccRecords;->registerForRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 152
    sget-object v0, Lcom/android/internal/telephony/cat/CatService;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    const/16 v1, 0x1e

    invoke-virtual {v0, p0, v1, v3}, Lcom/android/internal/telephony/IccRecords;->registerForIccRefreshReset(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 155
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/CatService;->isStkAppInstalled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/cat/CatService;->mStkAppInstalled:Z

    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Running CAT service. STK app installed:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/cat/CatService;->mStkAppInstalled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 158
    return-void
.end method

.method private encodeOptionalTags(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;Lcom/android/internal/telephony/cat/Input;Ljava/io/ByteArrayOutputStream;)V
    .locals 3
    .parameter "cmdDet"
    .parameter "resultCode"
    .parameter "cmdInput"
    .parameter "buf"

    .prologue
    .line 510
    iget v1, p1, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    invoke-static {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->fromInt(I)Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v0

    .line 511
    .local v0, cmdType:Lcom/android/internal/telephony/cat/AppInterface$CommandType;
    if-eqz v0, :cond_1

    .line 512
    sget-object v1, Lcom/android/internal/telephony/cat/CatService$1;->$SwitchMap$com$android$internal$telephony$cat$AppInterface$CommandType:[I

    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    sparse-switch v1, :sswitch_data_0

    .line 529
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "encodeOptionalTags() Unsupported Cmd:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 535
    :cond_0
    :goto_0
    return-void

    .line 517
    :sswitch_0
    invoke-virtual {p2}, Lcom/android/internal/telephony/cat/ResultCode;->value()I

    move-result v1

    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->NO_RESPONSE_FROM_USER:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/ResultCode;->value()I

    move-result v2

    if-ne v1, v2, :cond_0

    if-eqz p3, :cond_0

    iget-object v1, p3, Lcom/android/internal/telephony/cat/Input;->duration:Lcom/android/internal/telephony/cat/Duration;

    if-eqz v1, :cond_0

    .line 519
    invoke-direct {p0, p4, p3}, Lcom/android/internal/telephony/cat/CatService;->getInKeyResponse(Ljava/io/ByteArrayOutputStream;Lcom/android/internal/telephony/cat/Input;)V

    goto :goto_0

    .line 523
    :sswitch_1
    iget v1, p1, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    invoke-virtual {p2}, Lcom/android/internal/telephony/cat/ResultCode;->value()I

    move-result v1

    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/ResultCode;->value()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 525
    invoke-direct {p0, p4}, Lcom/android/internal/telephony/cat/CatService;->getPliResponse(Ljava/io/ByteArrayOutputStream;)V

    goto :goto_0

    .line 533
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "encodeOptionalTags() bad Cmd:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 512
    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_1
        0xa -> :sswitch_0
    .end sparse-switch
.end method

.method private eventDownload(IIIIZLjava/lang/String;Z)V
    .locals 14
    .parameter "event"
    .parameter "sourceId"
    .parameter "destinationId"
    .parameter "additionalInfo"
    .parameter "addedInfo"
    .parameter "languageCode"
    .parameter "oneShot"

    .prologue
    .line 615
    iget-boolean v11, p0, Lcom/android/internal/telephony/cat/CatService;->mBIPProxyEnabled:Z

    if-eqz v11, :cond_2

    .line 617
    const/4 v1, 0x0

    .line 619
    .local v1, allowed:Z
    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatService;->mEventList:[B

    .local v2, arr$:[B
    array-length v8, v2

    .local v8, len$:I
    const/4 v6, 0x0

    .local v6, i$:I
    :goto_0
    if-ge v6, v8, :cond_0

    aget-byte v3, v2, v6

    .line 620
    .local v3, b:B
    int-to-byte v11, p1

    if-ne v3, v11, :cond_1

    .line 621
    const/4 v1, 0x1

    .line 625
    .end local v3           #b:B
    :cond_0
    if-nez v1, :cond_2

    .line 626
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "(U)SIM has not subscribed for event: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {p0, v11}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 687
    .end local v1           #allowed:Z
    .end local v2           #arr$:[B
    .end local v6           #i$:I
    .end local v8           #len$:I
    :goto_1
    return-void

    .line 619
    .restart local v1       #allowed:Z
    .restart local v2       #arr$:[B
    .restart local v3       #b:B
    .restart local v6       #i$:I
    .restart local v8       #len$:I
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 630
    .end local v1           #allowed:Z
    .end local v2           #arr$:[B
    .end local v3           #b:B
    .end local v6           #i$:I
    .end local v8           #len$:I
    :cond_2
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 633
    .local v4, buf:Ljava/io/ByteArrayOutputStream;
    const/16 v10, 0xd6

    .line 634
    .local v10, tag:I
    invoke-virtual {v4, v10}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 637
    const/4 v11, 0x0

    invoke-virtual {v4, v11}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 640
    sget-object v11, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->EVENT_LIST:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v11}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v11

    or-int/lit16 v10, v11, 0x80

    .line 641
    invoke-virtual {v4, v10}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 642
    const/4 v11, 0x1

    invoke-virtual {v4, v11}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 643
    invoke-virtual {v4, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 646
    sget-object v11, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->DEVICE_IDENTITIES:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v11}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v11

    or-int/lit16 v10, v11, 0x80

    .line 647
    invoke-virtual {v4, v10}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 648
    const/4 v11, 0x2

    invoke-virtual {v4, v11}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 649
    move/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 650
    move/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 652
    sget-object v11, Lcom/android/internal/telephony/cat/CatService$1;->$SwitchMap$com$android$internal$telephony$cat$SetEventList:[I

    invoke-static {p1}, Lcom/android/internal/telephony/cat/SetEventList;->fromInt(I)Lcom/android/internal/telephony/cat/SetEventList;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/internal/telephony/cat/SetEventList;->ordinal()I

    move-result v12

    aget v11, v11, v12

    packed-switch v11, :pswitch_data_0

    .line 678
    :cond_3
    :goto_2
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v9

    .line 681
    .local v9, rawData:[B
    array-length v11, v9

    add-int/lit8 v7, v11, -0x2

    .line 682
    .local v7, len:I
    const/4 v11, 0x1

    int-to-byte v12, v7

    aput-byte v12, v9, v11

    .line 684
    invoke-static {v9}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v5

    .line 686
    .local v5, hexString:Ljava/lang/String;
    iget-object v11, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v12, 0x0

    invoke-interface {v11, v5, v12}, Lcom/android/internal/telephony/CommandsInterface;->sendEnvelope(Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_1

    .line 654
    .end local v5           #hexString:Ljava/lang/String;
    .end local v7           #len:I
    .end local v9           #rawData:[B
    :pswitch_0
    sget-object v11, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->BROWSER_TERMINATION_CAUSE:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v11}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v11

    or-int/lit16 v10, v11, 0x80

    .line 655
    invoke-virtual {v4, v10}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 656
    const/4 v11, 0x1

    invoke-virtual {v4, v11}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 665
    if-eqz p5, :cond_3

    .line 666
    move/from16 v0, p4

    invoke-virtual {v4, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_2

    .line 669
    :pswitch_1
    sget-object v11, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->LANGUAGE:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v11}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v11

    or-int/lit16 v10, v11, 0x80

    .line 670
    invoke-virtual {v4, v10}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 671
    invoke-virtual/range {p6 .. p6}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v4, v11}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 672
    invoke-virtual/range {p6 .. p6}, Ljava/lang/String;->getBytes()[B

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual/range {p6 .. p6}, Ljava/lang/String;->getBytes()[B

    move-result-object v13

    array-length v13, v13

    invoke-virtual {v4, v11, v12, v13}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_2

    .line 652
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getInKeyResponse(Ljava/io/ByteArrayOutputStream;Lcom/android/internal/telephony/cat/Input;)V
    .locals 2
    .parameter "buf"
    .parameter "cmdInput"

    .prologue
    .line 538
    sget-object v1, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->DURATION:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v0

    .line 540
    .local v0, tag:I
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 541
    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 542
    iget-object v1, p2, Lcom/android/internal/telephony/cat/Input;->duration:Lcom/android/internal/telephony/cat/Duration;

    iget-object v1, v1, Lcom/android/internal/telephony/cat/Duration;->timeUnit:Lcom/android/internal/telephony/cat/Duration$TimeUnit;

    sget-object v1, Lcom/android/internal/telephony/cat/Duration$TimeUnit;->SECOND:Lcom/android/internal/telephony/cat/Duration$TimeUnit;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/Duration$TimeUnit;->value()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 543
    iget-object v1, p2, Lcom/android/internal/telephony/cat/Input;->duration:Lcom/android/internal/telephony/cat/Duration;

    iget v1, v1, Lcom/android/internal/telephony/cat/Duration;->timeInterval:I

    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 544
    return-void
.end method

.method public static getInstance()Lcom/android/internal/telephony/cat/AppInterface;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 731
    invoke-static {v0, v0, v0, v0, v0}, Lcom/android/internal/telephony/cat/CatService;->getInstance(Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/IccRecords;Landroid/content/Context;Lcom/android/internal/telephony/IccFileHandler;Lcom/android/internal/telephony/IccCard;)Lcom/android/internal/telephony/cat/CatService;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/IccRecords;Landroid/content/Context;Lcom/android/internal/telephony/IccFileHandler;Lcom/android/internal/telephony/IccCard;)Lcom/android/internal/telephony/cat/CatService;
    .locals 8
    .parameter "ci"
    .parameter "ir"
    .parameter "context"
    .parameter "fh"
    .parameter "ic"

    .prologue
    const/4 v0, 0x0

    .line 701
    sget-object v7, Lcom/android/internal/telephony/cat/CatService;->sInstanceLock:Ljava/lang/Object;

    monitor-enter v7

    .line 702
    :try_start_0
    sget-object v1, Lcom/android/internal/telephony/cat/CatService;->sInstance:Lcom/android/internal/telephony/cat/CatService;

    if-nez v1, :cond_2

    .line 703
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    if-nez p4, :cond_1

    .line 705
    :cond_0
    monitor-exit v7

    .line 721
    :goto_0
    return-object v0

    .line 707
    :cond_1
    new-instance v6, Landroid/os/HandlerThread;

    const-string v0, "Cat Telephony service"

    invoke-direct {v6, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 708
    .local v6, thread:Landroid/os/HandlerThread;
    invoke-virtual {v6}, Landroid/os/HandlerThread;->start()V

    .line 709
    new-instance v0, Lcom/android/internal/telephony/cat/CatService;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/cat/CatService;-><init>(Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/IccRecords;Landroid/content/Context;Lcom/android/internal/telephony/IccFileHandler;Lcom/android/internal/telephony/IccCard;)V

    sput-object v0, Lcom/android/internal/telephony/cat/CatService;->sInstance:Lcom/android/internal/telephony/cat/CatService;

    .line 710
    sget-object v0, Lcom/android/internal/telephony/cat/CatService;->sInstance:Lcom/android/internal/telephony/cat/CatService;

    const-string v1, "NEW sInstance"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 721
    .end local v6           #thread:Landroid/os/HandlerThread;
    :goto_1
    sget-object v0, Lcom/android/internal/telephony/cat/CatService;->sInstance:Lcom/android/internal/telephony/cat/CatService;

    monitor-exit v7

    goto :goto_0

    .line 722
    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 711
    :cond_2
    if-eqz p1, :cond_3

    :try_start_1
    sget-object v0, Lcom/android/internal/telephony/cat/CatService;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    if-eq v0, p1, :cond_3

    .line 712
    sget-object v0, Lcom/android/internal/telephony/cat/CatService;->sInstance:Lcom/android/internal/telephony/cat/CatService;

    const-string v1, "Reinitialize the Service with SIMRecords"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 713
    sput-object p1, Lcom/android/internal/telephony/cat/CatService;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    .line 716
    sget-object v0, Lcom/android/internal/telephony/cat/CatService;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    sget-object v1, Lcom/android/internal/telephony/cat/CatService;->sInstance:Lcom/android/internal/telephony/cat/CatService;

    const/16 v2, 0x14

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/IccRecords;->registerForRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 717
    sget-object v0, Lcom/android/internal/telephony/cat/CatService;->sInstance:Lcom/android/internal/telephony/cat/CatService;

    const-string/jumbo v1, "sr changed reinitialize and return current sInstance"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 719
    :cond_3
    sget-object v0, Lcom/android/internal/telephony/cat/CatService;->sInstance:Lcom/android/internal/telephony/cat/CatService;

    const-string v1, "Return current sInstance"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method private getPliResponse(Ljava/io/ByteArrayOutputStream;)V
    .locals 5
    .parameter "buf"

    .prologue
    .line 549
    const-string/jumbo v2, "persist.sys.language"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 551
    .local v0, lang:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 553
    sget-object v2, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->LANGUAGE:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v1

    .line 554
    .local v1, tag:I
    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 555
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {p1, v2}, Lcom/android/internal/telephony/cat/ResponseData;->writeLength(Ljava/io/ByteArrayOutputStream;I)V

    .line 556
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p1, v2, v3, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 558
    .end local v1           #tag:I
    :cond_0
    return-void
.end method

.method private handleCmdResponse(Lcom/android/internal/telephony/cat/CatResponseMessage;)V
    .locals 13
    .parameter "resMsg"

    .prologue
    const/4 v7, 0x0

    const/4 v5, 0x1

    const/4 v12, 0x0

    .line 837
    iget-boolean v0, p0, Lcom/android/internal/telephony/cat/CatService;->mBIPProxyEnabled:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    iget-object v0, p1, Lcom/android/internal/telephony/cat/CatResponseMessage;->envelopeCmd:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 838
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p1, Lcom/android/internal/telephony/cat/CatResponseMessage;->envelopeCmd:Ljava/lang/String;

    invoke-interface {v0, v1, v12}, Lcom/android/internal/telephony/CommandsInterface;->sendEnvelope(Ljava/lang/String;Landroid/os/Message;)V

    .line 951
    :cond_0
    :goto_0
    return-void

    .line 841
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/CatService;->validateResponse(Lcom/android/internal/telephony/cat/CatResponseMessage;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 844
    const/4 v8, 0x0

    .line 845
    .local v8, resp:Lcom/android/internal/telephony/cat/ResponseData;
    const/4 v9, 0x0

    .line 846
    .local v9, helpRequired:Z
    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/CatResponseMessage;->getCmdDetails()Lcom/android/internal/telephony/cat/CommandDetails;

    move-result-object v4

    .line 848
    .local v4, cmdDet:Lcom/android/internal/telephony/cat/CommandDetails;
    sget-object v0, Lcom/android/internal/telephony/cat/CatService$1;->$SwitchMap$com$android$internal$telephony$cat$ResultCode:[I

    iget-object v1, p1, Lcom/android/internal/telephony/cat/CatResponseMessage;->resCode:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/ResultCode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 850
    :pswitch_0
    const/4 v9, 0x1

    .line 863
    :pswitch_1
    sget-object v0, Lcom/android/internal/telephony/cat/CatService$1;->$SwitchMap$com$android$internal$telephony$cat$AppInterface$CommandType:[I

    iget v1, v4, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    invoke-static {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->fromInt(I)Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1

    .line 949
    :cond_2
    :goto_1
    :pswitch_2
    iget-object v5, p1, Lcom/android/internal/telephony/cat/CatResponseMessage;->resCode:Lcom/android/internal/telephony/cat/ResultCode;

    iget-boolean v6, p1, Lcom/android/internal/telephony/cat/CatResponseMessage;->includeAdditionalInfo:Z

    iget v7, p1, Lcom/android/internal/telephony/cat/CatResponseMessage;->additionalInfo:I

    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    .line 950
    iput-object v12, p0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    goto :goto_0

    .line 865
    :pswitch_3
    iget-object v0, p1, Lcom/android/internal/telephony/cat/CatResponseMessage;->resCode:Lcom/android/internal/telephony/cat/ResultCode;

    sget-object v1, Lcom/android/internal/telephony/cat/ResultCode;->HELP_INFO_REQUIRED:Lcom/android/internal/telephony/cat/ResultCode;

    if-ne v0, v1, :cond_3

    move v9, v5

    .line 866
    :goto_2
    iget v0, p1, Lcom/android/internal/telephony/cat/CatResponseMessage;->usersMenuSelection:I

    invoke-direct {p0, v0, v9}, Lcom/android/internal/telephony/cat/CatService;->sendMenuSelection(IZ)V

    goto :goto_0

    :cond_3
    move v9, v7

    .line 865
    goto :goto_2

    .line 869
    :pswitch_4
    new-instance v8, Lcom/android/internal/telephony/cat/SelectItemResponseData;

    .end local v8           #resp:Lcom/android/internal/telephony/cat/ResponseData;
    iget v0, p1, Lcom/android/internal/telephony/cat/CatResponseMessage;->usersMenuSelection:I

    invoke-direct {v8, v0}, Lcom/android/internal/telephony/cat/SelectItemResponseData;-><init>(I)V

    .line 870
    .restart local v8       #resp:Lcom/android/internal/telephony/cat/ResponseData;
    goto :goto_1

    .line 873
    :pswitch_5
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/CatCmdMessage;->geInput()Lcom/android/internal/telephony/cat/Input;

    move-result-object v10

    .line 874
    .local v10, input:Lcom/android/internal/telephony/cat/Input;
    iget-boolean v0, v10, Lcom/android/internal/telephony/cat/Input;->yesNo:Z

    if-nez v0, :cond_4

    .line 877
    if-nez v9, :cond_2

    .line 878
    new-instance v8, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;

    .end local v8           #resp:Lcom/android/internal/telephony/cat/ResponseData;
    iget-object v0, p1, Lcom/android/internal/telephony/cat/CatResponseMessage;->usersInput:Ljava/lang/String;

    iget-boolean v1, v10, Lcom/android/internal/telephony/cat/Input;->ucs2:Z

    iget-boolean v3, v10, Lcom/android/internal/telephony/cat/Input;->packed:Z

    invoke-direct {v8, v0, v1, v3}, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;-><init>(Ljava/lang/String;ZZ)V

    .restart local v8       #resp:Lcom/android/internal/telephony/cat/ResponseData;
    goto :goto_1

    .line 882
    :cond_4
    new-instance v8, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;

    .end local v8           #resp:Lcom/android/internal/telephony/cat/ResponseData;
    iget-boolean v0, p1, Lcom/android/internal/telephony/cat/CatResponseMessage;->usersYesNoSelection:Z

    invoke-direct {v8, v0}, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;-><init>(Z)V

    .line 885
    .restart local v8       #resp:Lcom/android/internal/telephony/cat/ResponseData;
    goto :goto_1

    .line 890
    .end local v10           #input:Lcom/android/internal/telephony/cat/Input;
    :pswitch_6
    iget-boolean v0, p0, Lcom/android/internal/telephony/cat/CatService;->mBIPProxyEnabled:Z

    if-eqz v0, :cond_5

    .line 891
    iget-object v0, p1, Lcom/android/internal/telephony/cat/CatResponseMessage;->resCode:Lcom/android/internal/telephony/cat/ResultCode;

    sget-object v1, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    if-ne v0, v1, :cond_2

    .line 893
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mBipProxy:Lcom/android/internal/telephony/cat/BipProxy;

    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cat/BipProxy;->handleBipCommand(Lcom/android/internal/telephony/cat/CatCmdMessage;)V

    goto/16 :goto_0

    .line 900
    :cond_5
    :pswitch_7
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    iget-boolean v1, p1, Lcom/android/internal/telephony/cat/CatResponseMessage;->usersConfirm:Z

    invoke-interface {v0, v1, v12}, Lcom/android/internal/telephony/CommandsInterface;->handleCallSetupRequestFromSim(ZLandroid/os/Message;)V

    .line 904
    iput-object v12, p0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    goto/16 :goto_0

    .line 907
    :pswitch_8
    const/16 v2, 0x82

    .line 912
    .local v2, devId:I
    iget v0, p1, Lcom/android/internal/telephony/cat/CatResponseMessage;->eventValue:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_6

    .line 913
    const/4 v2, 0x2

    .line 915
    :cond_6
    iget v1, p1, Lcom/android/internal/telephony/cat/CatResponseMessage;->eventValue:I

    const/16 v3, 0x81

    iget v4, p1, Lcom/android/internal/telephony/cat/CatResponseMessage;->addedInfo:I

    .end local v4           #cmdDet:Lcom/android/internal/telephony/cat/CommandDetails;
    iget-object v6, p1, Lcom/android/internal/telephony/cat/CatResponseMessage;->languageCode:Ljava/lang/String;

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/telephony/cat/CatService;->eventDownload(IIIIZLjava/lang/String;Z)V

    goto/16 :goto_0

    .line 923
    .end local v2           #devId:I
    .restart local v4       #cmdDet:Lcom/android/internal/telephony/cat/CommandDetails;
    :pswitch_9
    iput-boolean v5, p1, Lcom/android/internal/telephony/cat/CatResponseMessage;->includeAdditionalInfo:Z

    .line 924
    iput v5, p1, Lcom/android/internal/telephony/cat/CatResponseMessage;->additionalInfo:I

    .line 929
    :pswitch_a
    iget-boolean v0, p0, Lcom/android/internal/telephony/cat/CatService;->mBIPProxyEnabled:Z

    if-eqz v0, :cond_2

    .line 930
    sget-object v0, Lcom/android/internal/telephony/cat/CatService$1;->$SwitchMap$com$android$internal$telephony$cat$AppInterface$CommandType:[I

    iget v1, v4, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    invoke-static {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->fromInt(I)Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_2

    .line 941
    const/4 v8, 0x0

    .line 942
    goto/16 :goto_1

    .line 932
    :pswitch_b
    iget-boolean v0, p1, Lcom/android/internal/telephony/cat/CatResponseMessage;->usersConfirm:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/CatCmdMessage;->geTextMessage()Lcom/android/internal/telephony/cat/TextMessage;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/internal/telephony/cat/TextMessage;->responseNeeded:Z

    if-eqz v0, :cond_2

    .line 934
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getChannelSettings()Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    move-result-object v11

    .line 935
    .local v11, params:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;
    sget-object v0, Lcom/android/internal/telephony/cat/ResultCode;->USER_NOT_ACCEPT:Lcom/android/internal/telephony/cat/ResultCode;

    iput-object v0, p1, Lcom/android/internal/telephony/cat/CatResponseMessage;->resCode:Lcom/android/internal/telephony/cat/ResultCode;

    .line 936
    new-instance v8, Lcom/android/internal/telephony/cat/OpenChannelResponseData;

    .end local v8           #resp:Lcom/android/internal/telephony/cat/ResponseData;
    iget v0, v11, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->bufSize:I

    iget-object v1, v11, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->bearerDescription:Lcom/android/internal/telephony/cat/BearerDescription;

    invoke-direct {v8, v0, v12, v1}, Lcom/android/internal/telephony/cat/OpenChannelResponseData;-><init>(ILjava/lang/Integer;Lcom/android/internal/telephony/cat/BearerDescription;)V

    .line 938
    .restart local v8       #resp:Lcom/android/internal/telephony/cat/ResponseData;
    goto/16 :goto_1

    .line 848
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_9
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
    .end packed-switch

    .line 863
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_8
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_7
        :pswitch_6
    .end packed-switch

    .line 930
    :pswitch_data_2
    .packed-switch 0x11
        :pswitch_b
    .end packed-switch
.end method

.method private handleCommand(Lcom/android/internal/telephony/cat/CommandParams;Z)V
    .locals 18
    .parameter "cmdParams"
    .parameter "isProactiveCmd"

    .prologue
    .line 252
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/cat/CommandParams;->getCommandType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->name()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 255
    new-instance v14, Lcom/android/internal/telephony/cat/CatCmdMessage;

    move-object/from16 v0, p1

    invoke-direct {v14, v0}, Lcom/android/internal/telephony/cat/CatCmdMessage;-><init>(Lcom/android/internal/telephony/cat/CommandParams;)V

    .line 256
    .local v14, cmdMsg:Lcom/android/internal/telephony/cat/CatCmdMessage;
    sget-object v1, Lcom/android/internal/telephony/cat/CatService$1;->$SwitchMap$com$android$internal$telephony$cat$AppInterface$CommandType:[I

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/cat/CommandParams;->getCommandType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 421
    const-string v1, "Unsupported command"

    move-object/from16 v0, p0

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 428
    .end local p1
    :cond_0
    :goto_0
    return-void

    .line 258
    .restart local p1
    :pswitch_0
    invoke-virtual {v14}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getMenu()Lcom/android/internal/telephony/cat/Menu;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/cat/CatService;->removeMenu(Lcom/android/internal/telephony/cat/Menu;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 259
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/internal/telephony/cat/CatService;->mMenuCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 263
    :goto_1
    move-object/from16 v0, p1

    iget-boolean v1, v0, Lcom/android/internal/telephony/cat/CommandParams;->mLoadOptionalIconFailed:Z

    if-eqz v1, :cond_3

    .line 264
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CommandParams;->cmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v3, Lcom/android/internal/telephony/cat/ResultCode;->PRFRMD_ICON_NOT_DISPLAYED:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    .line 424
    .end local p1
    :cond_1
    :goto_2
    :pswitch_1
    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 425
    new-instance v15, Landroid/content/Intent;

    const-string v1, "android.intent.action.stk.command"

    invoke-direct {v15, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 426
    .local v15, intent:Landroid/content/Intent;
    const-string v1, "STK CMD"

    invoke-virtual {v15, v1, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 427
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v15}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 261
    .end local v15           #intent:Landroid/content/Intent;
    .restart local p1
    :cond_2
    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/internal/telephony/cat/CatService;->mMenuCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    goto :goto_1

    .line 267
    :cond_3
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CommandParams;->cmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v3, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto :goto_2

    .line 273
    :pswitch_2
    invoke-virtual {v14}, Lcom/android/internal/telephony/cat/CatCmdMessage;->geTextMessage()Lcom/android/internal/telephony/cat/TextMessage;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/internal/telephony/cat/TextMessage;->responseNeeded:Z

    if-nez v1, :cond_1

    .line 274
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CommandParams;->cmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v3, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto :goto_2

    .line 279
    :pswitch_3
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/internal/telephony/cat/CommandParams;->cmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    iget v1, v1, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_4

    .line 281
    const/4 v1, 0x0

    new-array v1, v1, [B

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/internal/telephony/cat/CatService;->mEventList:[B

    .line 285
    :cond_4
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/internal/telephony/cat/CommandParams;->cmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v2, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SET_UP_IDLE_MODE_TEXT:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->value()I

    move-result v2

    iput v2, v1, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    goto :goto_2

    .line 288
    :pswitch_4
    move-object/from16 v0, p1

    iget-boolean v1, v0, Lcom/android/internal/telephony/cat/CommandParams;->mLoadOptionalIconFailed:Z

    if-eqz v1, :cond_5

    .line 289
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CommandParams;->cmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v3, Lcom/android/internal/telephony/cat/ResultCode;->PRFRMD_ICON_NOT_DISPLAYED:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto :goto_2

    .line 292
    :cond_5
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CommandParams;->cmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v3, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto/16 :goto_2

    .line 297
    :pswitch_5
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/internal/telephony/cat/CommandParams;->cmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    iget v1, v1, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    packed-switch v1, :pswitch_data_1

    .line 307
    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/internal/telephony/cat/CommandParams;->cmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v9, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v7, p0

    invoke-virtual/range {v7 .. v12}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto/16 :goto_0

    .line 299
    :pswitch_6
    new-instance v6, Lcom/android/internal/telephony/cat/DTTZResponseData;

    const/4 v1, 0x0

    invoke-direct {v6, v1}, Lcom/android/internal/telephony/cat/DTTZResponseData;-><init>(Ljava/util/Calendar;)V

    .line 300
    .local v6, resp:Lcom/android/internal/telephony/cat/ResponseData;
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CommandParams;->cmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v3, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto/16 :goto_0

    .line 303
    .end local v6           #resp:Lcom/android/internal/telephony/cat/ResponseData;
    :pswitch_7
    new-instance v6, Lcom/android/internal/telephony/cat/LanguageResponseData;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v6, v1}, Lcom/android/internal/telephony/cat/LanguageResponseData;-><init>(Ljava/lang/String;)V

    .line 304
    .restart local v6       #resp:Lcom/android/internal/telephony/cat/ResponseData;
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CommandParams;->cmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v3, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto/16 :goto_0

    .line 312
    .end local v6           #resp:Lcom/android/internal/telephony/cat/ResponseData;
    :pswitch_8
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/internal/telephony/cat/CatService;->mBIPProxyEnabled:Z

    if-eqz v1, :cond_6

    .line 314
    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 315
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getEventList()[B

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/internal/telephony/cat/CatService;->mEventList:[B

    goto/16 :goto_2

    .line 317
    :cond_6
    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/internal/telephony/cat/CommandParams;->cmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v9, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v7, p0

    invoke-virtual/range {v7 .. v12}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto/16 :goto_2

    :pswitch_9
    move-object/from16 v1, p1

    .line 321
    check-cast v1, Lcom/android/internal/telephony/cat/LaunchBrowserParams;

    iget-object v1, v1, Lcom/android/internal/telephony/cat/LaunchBrowserParams;->confirmMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iget-object v1, v1, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    if-eqz v1, :cond_1

    move-object/from16 v1, p1

    check-cast v1, Lcom/android/internal/telephony/cat/LaunchBrowserParams;

    iget-object v1, v1, Lcom/android/internal/telephony/cat/LaunchBrowserParams;->confirmMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iget-object v1, v1, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    move-object/from16 v1, p1

    check-cast v1, Lcom/android/internal/telephony/cat/LaunchBrowserParams;

    iget-object v1, v1, Lcom/android/internal/telephony/cat/LaunchBrowserParams;->confirmMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iget-object v1, v1, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    const-string v2, "Defualt Message"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 324
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    const v2, 0x1040523

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v16

    .line 325
    .local v16, message:Ljava/lang/CharSequence;
    check-cast p1, Lcom/android/internal/telephony/cat/LaunchBrowserParams;

    .end local p1
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/internal/telephony/cat/LaunchBrowserParams;->confirmMsg:Lcom/android/internal/telephony/cat/TextMessage;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    goto/16 :goto_2

    .end local v16           #message:Ljava/lang/CharSequence;
    .restart local p1
    :pswitch_a
    move-object/from16 v1, p1

    .line 336
    check-cast v1, Lcom/android/internal/telephony/cat/DisplayTextParams;

    iget-object v1, v1, Lcom/android/internal/telephony/cat/DisplayTextParams;->textMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iget-object v1, v1, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    if-eqz v1, :cond_1

    move-object/from16 v1, p1

    check-cast v1, Lcom/android/internal/telephony/cat/DisplayTextParams;

    iget-object v1, v1, Lcom/android/internal/telephony/cat/DisplayTextParams;->textMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iget-object v1, v1, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    move-object/from16 v1, p1

    check-cast v1, Lcom/android/internal/telephony/cat/DisplayTextParams;

    iget-object v1, v1, Lcom/android/internal/telephony/cat/DisplayTextParams;->textMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iget-object v1, v1, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    const-string v2, "Defualt Message"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 339
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    const v2, 0x1040522

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v16

    .line 340
    .restart local v16       #message:Ljava/lang/CharSequence;
    check-cast p1, Lcom/android/internal/telephony/cat/DisplayTextParams;

    .end local p1
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/internal/telephony/cat/DisplayTextParams;->textMsg:Lcom/android/internal/telephony/cat/TextMessage;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    goto/16 :goto_2

    .end local v16           #message:Ljava/lang/CharSequence;
    .restart local p1
    :pswitch_b
    move-object/from16 v1, p1

    .line 346
    check-cast v1, Lcom/android/internal/telephony/cat/CallSetupParams;

    iget-object v1, v1, Lcom/android/internal/telephony/cat/CallSetupParams;->confirmMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iget-object v1, v1, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    if-eqz v1, :cond_1

    move-object/from16 v1, p1

    check-cast v1, Lcom/android/internal/telephony/cat/CallSetupParams;

    iget-object v1, v1, Lcom/android/internal/telephony/cat/CallSetupParams;->confirmMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iget-object v1, v1, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 348
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    const v2, 0x1040524

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v16

    .line 349
    .restart local v16       #message:Ljava/lang/CharSequence;
    check-cast p1, Lcom/android/internal/telephony/cat/CallSetupParams;

    .end local p1
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/internal/telephony/cat/CallSetupParams;->confirmMsg:Lcom/android/internal/telephony/cat/TextMessage;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    goto/16 :goto_2

    .line 353
    .end local v16           #message:Ljava/lang/CharSequence;
    .restart local p1
    :pswitch_c
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/internal/telephony/cat/CatService;->mBIPProxyEnabled:Z

    if-eqz v1, :cond_1

    .line 354
    invoke-virtual {v14}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getChannelSettings()Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    move-result-object v17

    .line 355
    .local v17, newChannel:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;
    if-nez v17, :cond_7

    .line 357
    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/internal/telephony/cat/CommandParams;->cmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v9, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v7, p0

    invoke-virtual/range {v7 .. v12}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto/16 :goto_0

    .line 362
    :cond_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/cat/CatService;->mBipProxy:Lcom/android/internal/telephony/cat/BipProxy;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/BipProxy;->canHandleNewChannel()Z

    move-result v1

    if-nez v1, :cond_8

    .line 363
    new-instance v6, Lcom/android/internal/telephony/cat/OpenChannelResponseData;

    move-object/from16 v0, v17

    iget v1, v0, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->bufSize:I

    const/4 v2, 0x0

    move-object/from16 v0, v17

    iget-object v3, v0, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->bearerDescription:Lcom/android/internal/telephony/cat/BearerDescription;

    invoke-direct {v6, v1, v2, v3}, Lcom/android/internal/telephony/cat/OpenChannelResponseData;-><init>(ILjava/lang/Integer;Lcom/android/internal/telephony/cat/BearerDescription;)V

    .line 365
    .restart local v6       #resp:Lcom/android/internal/telephony/cat/ResponseData;
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CommandParams;->cmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v3, Lcom/android/internal/telephony/cat/ResultCode;->BIP_ERROR:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto/16 :goto_0

    .line 369
    .end local v6           #resp:Lcom/android/internal/telephony/cat/ResponseData;
    :cond_8
    invoke-virtual {v14}, Lcom/android/internal/telephony/cat/CatCmdMessage;->geTextMessage()Lcom/android/internal/telephony/cat/TextMessage;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-virtual {v14}, Lcom/android/internal/telephony/cat/CatCmdMessage;->geTextMessage()Lcom/android/internal/telephony/cat/TextMessage;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/internal/telephony/cat/TextMessage;->responseNeeded:Z

    if-eqz v1, :cond_9

    invoke-virtual {v14}, Lcom/android/internal/telephony/cat/CatCmdMessage;->geTextMessage()Lcom/android/internal/telephony/cat/TextMessage;

    move-result-object v1

    iget-object v1, v1, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    if-eqz v1, :cond_9

    invoke-virtual {v14}, Lcom/android/internal/telephony/cat/CatCmdMessage;->geTextMessage()Lcom/android/internal/telephony/cat/TextMessage;

    move-result-object v1

    iget-object v1, v1, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 382
    .end local v17           #newChannel:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;
    :cond_9
    :pswitch_d
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/internal/telephony/cat/CatService;->mBIPProxyEnabled:Z

    if-eqz v1, :cond_a

    .line 383
    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 384
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/cat/CatService;->mBipProxy:Lcom/android/internal/telephony/cat/BipProxy;

    invoke-virtual {v1, v14}, Lcom/android/internal/telephony/cat/BipProxy;->handleBipCommand(Lcom/android/internal/telephony/cat/CatCmdMessage;)V

    goto/16 :goto_0

    :cond_a
    move-object/from16 v13, p1

    .line 387
    check-cast v13, Lcom/android/internal/telephony/cat/BIPClientParams;

    .line 388
    .local v13, cmd:Lcom/android/internal/telephony/cat/BIPClientParams;
    iget-boolean v1, v13, Lcom/android/internal/telephony/cat/BIPClientParams;->bHasAlphaId:Z

    if-eqz v1, :cond_b

    iget-object v1, v13, Lcom/android/internal/telephony/cat/BIPClientParams;->textMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iget-object v1, v1, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    if-nez v1, :cond_b

    .line 389
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cmd "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/cat/CommandParams;->getCommandType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " with null alpha id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 391
    if-eqz p2, :cond_0

    .line 392
    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/internal/telephony/cat/CommandParams;->cmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v9, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v7, p0

    invoke-virtual/range {v7 .. v12}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto/16 :goto_0

    .line 397
    :cond_b
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/internal/telephony/cat/CatService;->mStkAppInstalled:Z

    if-nez v1, :cond_c

    .line 398
    const-string v1, "No STK application found."

    move-object/from16 v0, p0

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 399
    if-eqz p2, :cond_c

    .line 400
    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/internal/telephony/cat/CommandParams;->cmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v9, Lcom/android/internal/telephony/cat/ResultCode;->BEYOND_TERMINAL_CAPABILITY:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v7, p0

    invoke-virtual/range {v7 .. v12}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto/16 :goto_0

    .line 412
    :cond_c
    if-eqz p2, :cond_1

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/cat/CommandParams;->getCommandType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->CLOSE_CHANNEL:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    if-eq v1, v2, :cond_d

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/cat/CommandParams;->getCommandType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->RECEIVE_DATA:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    if-eq v1, v2, :cond_d

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/cat/CommandParams;->getCommandType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SEND_DATA:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    if-ne v1, v2, :cond_1

    .line 416
    :cond_d
    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/internal/telephony/cat/CommandParams;->cmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v9, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v7, p0

    invoke-virtual/range {v7 .. v12}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto/16 :goto_2

    .line 256
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_8
        :pswitch_9
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_1
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
    .end packed-switch

    .line 297
    :pswitch_data_1
    .packed-switch 0x3
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private handleIccRefreshReset()V
    .locals 6

    .prologue
    .line 814
    new-instance v0, Lcom/android/internal/telephony/cat/CommandDetails;

    invoke-direct {v0}, Lcom/android/internal/telephony/cat/CommandDetails;-><init>()V

    .line 815
    .local v0, cmdDet:Lcom/android/internal/telephony/cat/CommandDetails;
    sget-object v4, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SET_UP_MENU:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->value()I

    move-result v4

    iput v4, v0, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    .line 816
    new-instance v2, Lcom/android/internal/telephony/cat/SelectItemParams;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v2, v0, v4, v5}, Lcom/android/internal/telephony/cat/SelectItemParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/Menu;Z)V

    .line 817
    .local v2, cmdParams:Lcom/android/internal/telephony/cat/SelectItemParams;
    new-instance v1, Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/cat/CatCmdMessage;-><init>(Lcom/android/internal/telephony/cat/CommandParams;)V

    .line 820
    .local v1, cmdMsg:Lcom/android/internal/telephony/cat/CatCmdMessage;
    const-string v4, "Sending NULL menu to uninstall STK menu"

    invoke-static {p0, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 821
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.stk.command"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 822
    .local v3, intent:Landroid/content/Intent;
    const-string v4, "STK CMD"

    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 823
    iget-object v4, p0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 824
    return-void
.end method

.method private handleRilMsg(Lcom/android/internal/telephony/cat/RilMessage;)V
    .locals 9
    .parameter "rilMsg"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v4, 0x0

    .line 176
    if-nez p1, :cond_1

    .line 242
    :cond_0
    :goto_0
    return-void

    .line 181
    :cond_1
    const/4 v7, 0x0

    .line 182
    .local v7, cmdParams:Lcom/android/internal/telephony/cat/CommandParams;
    iget v1, p1, Lcom/android/internal/telephony/cat/RilMessage;->mId:I

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 235
    :pswitch_1
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/CatService;->handleSessionEnd()V

    goto :goto_0

    .line 184
    :pswitch_2
    iget-object v1, p1, Lcom/android/internal/telephony/cat/RilMessage;->mResCode:Lcom/android/internal/telephony/cat/ResultCode;

    sget-object v3, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    if-ne v1, v3, :cond_0

    .line 185
    iget-object v7, p1, Lcom/android/internal/telephony/cat/RilMessage;->mData:Ljava/lang/Object;

    .end local v7           #cmdParams:Lcom/android/internal/telephony/cat/CommandParams;
    check-cast v7, Lcom/android/internal/telephony/cat/CommandParams;

    .line 186
    .restart local v7       #cmdParams:Lcom/android/internal/telephony/cat/CommandParams;
    if-eqz v7, :cond_0

    .line 187
    invoke-direct {p0, v7, v4}, Lcom/android/internal/telephony/cat/CatService;->handleCommand(Lcom/android/internal/telephony/cat/CommandParams;Z)V

    goto :goto_0

    .line 193
    :pswitch_3
    :try_start_0
    iget-object v1, p1, Lcom/android/internal/telephony/cat/RilMessage;->mData:Ljava/lang/Object;

    move-object v0, v1

    check-cast v0, Lcom/android/internal/telephony/cat/CommandParams;

    move-object v7, v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 201
    if-eqz v7, :cond_3

    .line 202
    iget-object v1, p1, Lcom/android/internal/telephony/cat/RilMessage;->mResCode:Lcom/android/internal/telephony/cat/ResultCode;

    sget-object v3, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    if-ne v1, v3, :cond_2

    .line 203
    invoke-direct {p0, v7, v5}, Lcom/android/internal/telephony/cat/CatService;->handleCommand(Lcom/android/internal/telephony/cat/CommandParams;Z)V

    goto :goto_0

    .line 194
    :catch_0
    move-exception v8

    .line 196
    .local v8, e:Ljava/lang/ClassCastException;
    const-string v1, "Fail to parse proactive command"

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 197
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iget-object v2, v1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v3, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    move-object v1, p0

    move v5, v4

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto :goto_0

    .line 208
    .end local v8           #e:Ljava/lang/ClassCastException;
    :cond_2
    iget-object v2, v7, Lcom/android/internal/telephony/cat/CommandParams;->cmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    iget-object v3, p1, Lcom/android/internal/telephony/cat/RilMessage;->mResCode:Lcom/android/internal/telephony/cat/ResultCode;

    move-object v1, p0

    move v5, v4

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto :goto_0

    .line 219
    :cond_3
    new-instance v2, Lcom/android/internal/telephony/cat/CommandDetails;

    invoke-direct {v2}, Lcom/android/internal/telephony/cat/CommandDetails;-><init>()V

    .line 220
    .local v2, lastCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;
    iput-boolean v5, v2, Lcom/android/internal/telephony/cat/CommandDetails;->compRequired:Z

    .line 221
    iput v4, v2, Lcom/android/internal/telephony/cat/CommandDetails;->commandNumber:I

    .line 222
    iput v4, v2, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    .line 223
    iput v4, v2, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    .line 224
    iget-object v3, p1, Lcom/android/internal/telephony/cat/RilMessage;->mResCode:Lcom/android/internal/telephony/cat/ResultCode;

    move-object v1, p0

    move v5, v4

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto :goto_0

    .line 229
    .end local v2           #lastCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;
    :pswitch_4
    iget-object v7, p1, Lcom/android/internal/telephony/cat/RilMessage;->mData:Ljava/lang/Object;

    .end local v7           #cmdParams:Lcom/android/internal/telephony/cat/CommandParams;
    check-cast v7, Lcom/android/internal/telephony/cat/CommandParams;

    .line 230
    .restart local v7       #cmdParams:Lcom/android/internal/telephony/cat/CommandParams;
    if-eqz v7, :cond_0

    .line 231
    invoke-direct {p0, v7, v4}, Lcom/android/internal/telephony/cat/CatService;->handleCommand(Lcom/android/internal/telephony/cat/CommandParams;Z)V

    goto :goto_0

    .line 182
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private handleSessionEnd()V
    .locals 2

    .prologue
    .line 435
    const-string v1, "SESSION END"

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 437
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mMenuCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iput-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 438
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.stk.session_end"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 439
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 440
    return-void
.end method

.method private isStkAppInstalled()Z
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 954
    new-instance v1, Landroid/content/Intent;

    const-string v5, "android.intent.action.stk.command"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 955
    .local v1, intent:Landroid/content/Intent;
    iget-object v5, p0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 956
    .local v3, pm:Landroid/content/pm/PackageManager;
    const/16 v5, 0x80

    invoke-virtual {v3, v1, v5}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 958
    .local v0, broadcastReceivers:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-nez v0, :cond_1

    move v2, v4

    .line 960
    .local v2, numReceiver:I
    :goto_0
    if-lez v2, :cond_0

    const/4 v4, 0x1

    :cond_0
    return v4

    .line 958
    .end local v2           #numReceiver:I
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    goto :goto_0
.end method

.method private removeMenu(Lcom/android/internal/telephony/cat/Menu;)Z
    .locals 5
    .parameter "menu"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 803
    :try_start_0
    iget-object v3, p1, Lcom/android/internal/telephony/cat/Menu;->items:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ne v3, v1, :cond_0

    iget-object v3, p1, Lcom/android/internal/telephony/cat/Menu;->items:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    if-nez v3, :cond_0

    .line 810
    :goto_0
    return v1

    .line 806
    :catch_0
    move-exception v0

    .line 807
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v2, "Unable to get Menu\'s items size"

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .end local v0           #e:Ljava/lang/NullPointerException;
    :cond_0
    move v1, v2

    .line 810
    goto :goto_0
.end method

.method private sendMenuSelection(IZ)V
    .locals 8
    .parameter "menuId"
    .parameter "helpRequired"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 562
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 565
    .local v0, buf:Ljava/io/ByteArrayOutputStream;
    const/16 v4, 0xd3

    .line 566
    .local v4, tag:I
    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 569
    invoke-virtual {v0, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 572
    sget-object v5, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->DEVICE_IDENTITIES:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v5}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v5

    or-int/lit16 v4, v5, 0x80

    .line 573
    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 574
    const/4 v5, 0x2

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 575
    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 576
    const/16 v5, 0x81

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 579
    sget-object v5, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ITEM_ID:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v5}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v5

    or-int/lit16 v4, v5, 0x80

    .line 580
    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 581
    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 582
    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 585
    if-eqz p2, :cond_0

    .line 586
    sget-object v5, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->HELP_REQUEST:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v5}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v4

    .line 587
    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 588
    invoke-virtual {v0, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 591
    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    .line 594
    .local v3, rawData:[B
    array-length v5, v3

    add-int/lit8 v2, v5, -0x2

    .line 595
    .local v2, len:I
    int-to-byte v5, v2

    aput-byte v5, v3, v6

    .line 597
    invoke-static {v3}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    .line 599
    .local v1, hexString:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v6, 0x0

    invoke-interface {v5, v1, v6}, Lcom/android/internal/telephony/CommandsInterface;->sendEnvelope(Ljava/lang/String;Landroid/os/Message;)V

    .line 600
    return-void
.end method

.method private validateResponse(Lcom/android/internal/telephony/cat/CatResponseMessage;)Z
    .locals 3
    .parameter "resMsg"

    .prologue
    .line 789
    const/4 v0, 0x0

    .line 790
    .local v0, validResponse:Z
    iget-object v1, p1, Lcom/android/internal/telephony/cat/CatResponseMessage;->cmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    iget v1, v1, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    sget-object v2, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SET_UP_MENU:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->value()I

    move-result v2

    if-eq v1, v2, :cond_0

    iget-object v1, p1, Lcom/android/internal/telephony/cat/CatResponseMessage;->cmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    iget v1, v1, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    sget-object v2, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SET_UP_EVENT_LIST:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->value()I

    move-result v2

    if-ne v1, v2, :cond_2

    .line 792
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CmdType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/internal/telephony/cat/CatResponseMessage;->cmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    iget v2, v2, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 793
    const/4 v0, 0x1

    .line 798
    :cond_1
    :goto_0
    return v0

    .line 794
    :cond_2
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    if-eqz v1, :cond_1

    .line 795
    iget-object v1, p1, Lcom/android/internal/telephony/cat/CatResponseMessage;->cmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/cat/CommandDetails;->compareTo(Lcom/android/internal/telephony/cat/CommandDetails;)Z

    move-result v0

    .line 796
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isResponse for last valid cmd: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .prologue
    .line 161
    sget-object v0, Lcom/android/internal/telephony/cat/CatService;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/IccRecords;->unregisterForRecordsLoaded(Landroid/os/Handler;)V

    .line 162
    sget-object v0, Lcom/android/internal/telephony/cat/CatService;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/IccRecords;->unregisterForIccRefreshReset(Landroid/os/Handler;)V

    .line 163
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnCatSessionEnd(Landroid/os/Handler;)V

    .line 164
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnCatProactiveCmd(Landroid/os/Handler;)V

    .line 165
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnCatEvent(Landroid/os/Handler;)V

    .line 166
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnCatCallSetUp(Landroid/os/Handler;)V

    .line 168
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cat/CatService;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 169
    return-void
.end method

.method protected finalize()V
    .locals 1

    .prologue
    .line 172
    const-string v0, "Service finalized"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 173
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    const/4 v6, 0x0

    .line 737
    iget v3, p1, Landroid/os/Message;->what:I

    sparse-switch v3, :sswitch_data_0

    .line 775
    new-instance v3, Ljava/lang/AssertionError;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unrecognized CAT command: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    .line 742
    :sswitch_0
    const-string/jumbo v3, "ril message arrived"

    invoke-static {p0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 743
    const/4 v1, 0x0

    .line 744
    .local v1, data:Ljava/lang/String;
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v3, :cond_0

    .line 745
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 746
    .local v0, ar:Landroid/os/AsyncResult;
    if-eqz v0, :cond_0

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v3, :cond_0

    .line 748
    :try_start_0
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    .end local v1           #data:Ljava/lang/String;
    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 754
    .end local v0           #ar:Landroid/os/AsyncResult;
    .restart local v1       #data:Ljava/lang/String;
    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/cat/CatService;->mMsgDecoder:Lcom/android/internal/telephony/cat/RilMessageDecoder;

    new-instance v4, Lcom/android/internal/telephony/cat/RilMessage;

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-direct {v4, v5, v1}, Lcom/android/internal/telephony/cat/RilMessage;-><init>(ILjava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/cat/RilMessageDecoder;->sendStartDecodingMessageParams(Lcom/android/internal/telephony/cat/RilMessage;)V

    .line 777
    .end local v1           #data:Ljava/lang/String;
    :goto_0
    :sswitch_1
    return-void

    .line 749
    .restart local v0       #ar:Landroid/os/AsyncResult;
    :catch_0
    move-exception v2

    .line 750
    .local v2, e:Ljava/lang/ClassCastException;
    goto :goto_0

    .line 757
    .end local v0           #ar:Landroid/os/AsyncResult;
    .end local v2           #e:Ljava/lang/ClassCastException;
    :sswitch_2
    iget-object v3, p0, Lcom/android/internal/telephony/cat/CatService;->mMsgDecoder:Lcom/android/internal/telephony/cat/RilMessageDecoder;

    new-instance v4, Lcom/android/internal/telephony/cat/RilMessage;

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-direct {v4, v5, v6}, Lcom/android/internal/telephony/cat/RilMessage;-><init>(ILjava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/cat/RilMessageDecoder;->sendStartDecodingMessageParams(Lcom/android/internal/telephony/cat/RilMessage;)V

    goto :goto_0

    .line 762
    :sswitch_3
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/telephony/cat/RilMessage;

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/cat/CatService;->handleRilMsg(Lcom/android/internal/telephony/cat/RilMessage;)V

    goto :goto_0

    .line 765
    :sswitch_4
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/telephony/cat/CatResponseMessage;

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/cat/CatService;->handleCmdResponse(Lcom/android/internal/telephony/cat/CatResponseMessage;)V

    goto :goto_0

    .line 768
    :sswitch_5
    const-string v3, "SIM ready. Reporting STK service running now..."

    invoke-static {p0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 769
    iget-object v3, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v3, v6}, Lcom/android/internal/telephony/CommandsInterface;->reportStkServiceIsRunning(Landroid/os/Message;)V

    goto :goto_0

    .line 772
    :sswitch_6
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/CatService;->handleIccRefreshReset()V

    goto :goto_0

    .line 737
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x3 -> :sswitch_0
        0x4 -> :sswitch_2
        0x5 -> :sswitch_0
        0x6 -> :sswitch_4
        0x7 -> :sswitch_5
        0xa -> :sswitch_3
        0x14 -> :sswitch_1
        0x1e -> :sswitch_6
    .end sparse-switch
.end method

.method public declared-synchronized onCmdResponse(Lcom/android/internal/telephony/cat/CatResponseMessage;)V
    .locals 2
    .parameter "resMsg"

    .prologue
    .line 780
    monitor-enter p0

    if-nez p1, :cond_0

    .line 786
    :goto_0
    monitor-exit p0

    return-void

    .line 784
    :cond_0
    const/4 v1, 0x6

    :try_start_0
    invoke-virtual {p0, v1, p1}, Lcom/android/internal/telephony/cat/CatService;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 785
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 780
    .end local v0           #msg:Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public onEventDownload(Lcom/android/internal/telephony/cat/CatEventMessage;)V
    .locals 8
    .parameter "eventMsg"

    .prologue
    const/4 v5, 0x0

    .line 603
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Download event: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/CatEventMessage;->getEvent()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 604
    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/CatEventMessage;->getEvent()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/CatEventMessage;->getSourceId()I

    move-result v2

    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/CatEventMessage;->getDestId()I

    move-result v3

    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/CatEventMessage;->getAdditionalInfo()[B

    move-result-object v0

    aget-byte v4, v0, v5

    const/4 v6, 0x0

    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/CatEventMessage;->isOneShot()Z

    move-result v7

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/telephony/cat/CatService;->eventDownload(IIIIZLjava/lang/String;Z)V

    .line 611
    return-void
.end method

.method protected sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V
    .locals 8
    .parameter "cmdDet"
    .parameter "resultCode"
    .parameter "includeAdditionalInfo"
    .parameter "additionalInfo"
    .parameter "resp"

    .prologue
    const/4 v3, 0x2

    .line 446
    if-nez p1, :cond_0

    .line 506
    :goto_0
    return-void

    .line 449
    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 451
    .local v0, buf:Ljava/io/ByteArrayOutputStream;
    const/4 v1, 0x0

    .line 452
    .local v1, cmdInput:Lcom/android/internal/telephony/cat/Input;
    iget-object v6, p0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    if-eqz v6, :cond_1

    .line 453
    iget-object v6, p0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v6}, Lcom/android/internal/telephony/cat/CatCmdMessage;->geInput()Lcom/android/internal/telephony/cat/Input;

    move-result-object v1

    .line 457
    :cond_1
    sget-object v6, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->COMMAND_DETAILS:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v6}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v5

    .line 458
    .local v5, tag:I
    iget-boolean v6, p1, Lcom/android/internal/telephony/cat/CommandDetails;->compRequired:Z

    if-eqz v6, :cond_2

    .line 459
    or-int/lit16 v5, v5, 0x80

    .line 461
    :cond_2
    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 462
    const/4 v6, 0x3

    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 463
    iget v6, p1, Lcom/android/internal/telephony/cat/CommandDetails;->commandNumber:I

    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 464
    iget v6, p1, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 465
    iget v6, p1, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 474
    sget-object v6, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->DEVICE_IDENTITIES:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v6}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v5

    .line 475
    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 476
    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 477
    const/16 v6, 0x82

    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 478
    const/16 v6, 0x81

    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 481
    sget-object v6, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->RESULT:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v6}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v6

    or-int/lit16 v5, v6, 0x80

    .line 482
    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 483
    if-eqz p3, :cond_4

    .line 484
    .local v3, length:I
    :goto_1
    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 485
    invoke-virtual {p2}, Lcom/android/internal/telephony/cat/ResultCode;->value()I

    move-result v6

    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 488
    if-eqz p3, :cond_3

    .line 489
    invoke-virtual {v0, p4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 493
    :cond_3
    if-eqz p5, :cond_5

    .line 494
    invoke-virtual {p5, v0}, Lcom/android/internal/telephony/cat/ResponseData;->format(Ljava/io/ByteArrayOutputStream;)V

    .line 499
    :goto_2
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    .line 500
    .local v4, rawData:[B
    invoke-static {v4}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v2

    .line 502
    .local v2, hexString:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "TERMINAL RESPONSE: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 505
    iget-object v6, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v7, 0x0

    invoke-interface {v6, v2, v7}, Lcom/android/internal/telephony/CommandsInterface;->sendTerminalResponse(Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 483
    .end local v2           #hexString:Ljava/lang/String;
    .end local v3           #length:I
    .end local v4           #rawData:[B
    :cond_4
    const/4 v3, 0x1

    goto :goto_1

    .line 496
    .restart local v3       #length:I
    :cond_5
    invoke-direct {p0, p1, p2, v1, v0}, Lcom/android/internal/telephony/cat/CatService;->encodeOptionalTags(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;Lcom/android/internal/telephony/cat/Input;Ljava/io/ByteArrayOutputStream;)V

    goto :goto_2
.end method

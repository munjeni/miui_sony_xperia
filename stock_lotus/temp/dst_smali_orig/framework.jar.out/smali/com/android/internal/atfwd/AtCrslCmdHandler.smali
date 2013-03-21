.class public Lcom/android/internal/atfwd/AtCrslCmdHandler;
.super Lcom/android/internal/atfwd/AtCmdBaseHandler;
.source "AtCrslCmdHandler.java"

# interfaces
.implements Lcom/android/internal/atfwd/AtCmdHandler;


# static fields
.field private static final TAG:Ljava/lang/String; = "AtCrslCmdHandler"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "c"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/atfwd/AtCmdHandler$AtCmdHandlerInstantiationException;
        }
    .end annotation

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/atfwd/AtCmdBaseHandler;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private static getAudioService()Landroid/media/IAudioService;
    .locals 3

    .prologue
    const-string v1, "audio"

    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;

    move-result-object v0

    .local v0, audioService:Landroid/media/IAudioService;
    if-nez v0, :cond_0

    const-string v1, "AtCrslCmdHandler"

    const-string v2, "Unable to find IAudioService interface."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-object v0
.end method

.method private getFormattedRingerVolumeRange()Ljava/lang/String;
    .locals 8

    .prologue
    const-string v3, ""

    .local v3, ret:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/atfwd/AtCrslCmdHandler;->getAudioService()Landroid/media/IAudioService;

    move-result-object v0

    .local v0, audioService:Landroid/media/IAudioService;
    if-nez v0, :cond_0

    move-object v4, v3

    .end local v3           #ret:Ljava/lang/String;
    .local v4, ret:Ljava/lang/String;
    :goto_0
    return-object v4

    .end local v4           #ret:Ljava/lang/String;
    .restart local v3       #ret:Ljava/lang/String;
    :cond_0
    const/4 v5, 0x2

    :try_start_0
    invoke-interface {v0, v5}, Landroid/media/IAudioService;->getStreamMaxVolume(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .local v2, nMaxVol:Ljava/lang/Integer;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "(0-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .end local v2           #nMaxVol:Ljava/lang/Integer;
    :goto_1
    move-object v4, v3

    .end local v3           #ret:Ljava/lang/String;
    .restart local v4       #ret:Ljava/lang/String;
    goto :goto_0

    .end local v4           #ret:Ljava/lang/String;
    .restart local v3       #ret:Ljava/lang/String;
    :catch_0
    move-exception v1

    .local v1, ex:Landroid/os/RemoteException;
    const-string v5, "AtCrslCmdHandler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to format Ringer Vol levels : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method static getRingerVolume(Ljava/lang/String;)I
    .locals 5
    .parameter "input"

    .prologue
    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .local v1, ringVolume:Ljava/lang/Integer;
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    return v2

    :catch_0
    move-exception v0

    .local v0, ex:Ljava/lang/NumberFormatException;
    const-string v2, "AtCrslCmdHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Not an Integer: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public getCommandName()Ljava/lang/String;
    .locals 1

    .prologue
    const-string v0, "+CRSL"

    return-object v0
.end method

.method public handleCommand(Lcom/android/internal/atfwd/AtCmd;)Lcom/android/internal/atfwd/AtCmdResponse;
    .locals 11
    .parameter "cmd"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x3

    invoke-virtual {p1}, Lcom/android/internal/atfwd/AtCmd;->getTokens()[Ljava/lang/String;

    move-result-object v5

    .local v5, tokens:[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, result:Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, isAtCmdRespOK:Z
    invoke-static {}, Lcom/android/internal/atfwd/AtCrslCmdHandler;->getAudioService()Landroid/media/IAudioService;

    move-result-object v0

    .local v0, audioService:Landroid/media/IAudioService;
    if-nez v0, :cond_0

    new-instance v6, Lcom/android/internal/atfwd/AtCmdResponse;

    invoke-virtual {p1, v9}, Lcom/android/internal/atfwd/AtCmd;->getAtCmdErrStr(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v10, v7}, Lcom/android/internal/atfwd/AtCmdResponse;-><init>(ILjava/lang/String;)V

    :goto_0
    return-object v6

    :cond_0
    const-string v6, "AtCrslCmdHandler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "OpCode"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Lcom/android/internal/atfwd/AtCmd;->getOpcode()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/android/internal/atfwd/AtCmd;->getOpcode()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    :goto_1
    if-eqz v2, :cond_5

    new-instance v6, Lcom/android/internal/atfwd/AtCmdResponse;

    const/4 v7, 0x1

    invoke-direct {v6, v7, v3}, Lcom/android/internal/atfwd/AtCmdResponse;-><init>(ILjava/lang/String;)V

    goto :goto_0

    :sswitch_0
    if-eqz v5, :cond_1

    :try_start_0
    array-length v6, v5

    if-nez v6, :cond_2

    :cond_1
    const/16 v6, 0x32

    invoke-virtual {p1, v6}, Lcom/android/internal/atfwd/AtCmd;->getAtCmdErrStr(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_2
    const/4 v6, 0x0

    aget-object v6, v5, v6

    invoke-static {v6}, Lcom/android/internal/atfwd/AtCrslCmdHandler;->getRingerVolume(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .local v4, ringVolume:Ljava/lang/Integer;
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-gez v6, :cond_3

    const/4 v6, 0x3

    invoke-virtual {p1, v6}, Lcom/android/internal/atfwd/AtCmd;->getAtCmdErrStr(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_3
    const/4 v6, 0x2

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/4 v8, 0x5

    invoke-interface {v0, v6, v7, v8}, Landroid/media/IAudioService;->setStreamVolume(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x1

    goto :goto_1

    .end local v4           #ringVolume:Ljava/lang/Integer;
    :catch_0
    move-exception v1

    .local v1, ex:Landroid/os/RemoteException;
    const-string v6, "AtCrslCmdHandler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to perfom AT+CRSL Exception : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1, v9}, Lcom/android/internal/atfwd/AtCmd;->getAtCmdErrStr(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .end local v1           #ex:Landroid/os/RemoteException;
    :sswitch_1
    const/4 v6, 0x2

    :try_start_1
    invoke-interface {v0, v6}, Landroid/media/IAudioService;->getStreamVolume(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .restart local v4       #ringVolume:Ljava/lang/Integer;
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    const/4 v2, 0x1

    goto :goto_1

    .end local v4           #ringVolume:Ljava/lang/Integer;
    :catch_1
    move-exception v1

    .restart local v1       #ex:Landroid/os/RemoteException;
    const-string v6, "AtCrslCmdHandler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to perfom AT+CRSL Exception : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1, v9}, Lcom/android/internal/atfwd/AtCmd;->getAtCmdErrStr(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1

    .end local v1           #ex:Landroid/os/RemoteException;
    :sswitch_2
    invoke-direct {p0}, Lcom/android/internal/atfwd/AtCrslCmdHandler;->getFormattedRingerVolumeRange()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_4

    const/4 v2, 0x1

    goto/16 :goto_1

    :cond_4
    invoke-virtual {p1, v9}, Lcom/android/internal/atfwd/AtCmd;->getAtCmdErrStr(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1

    :cond_5
    new-instance v6, Lcom/android/internal/atfwd/AtCmdResponse;

    invoke-direct {v6, v10, v3}, Lcom/android/internal/atfwd/AtCmdResponse;-><init>(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_2
        0x7 -> :sswitch_1
        0xb -> :sswitch_0
    .end sparse-switch
.end method

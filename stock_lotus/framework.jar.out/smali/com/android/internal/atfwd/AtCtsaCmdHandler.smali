.class public Lcom/android/internal/atfwd/AtCtsaCmdHandler;
.super Lcom/android/internal/atfwd/AtCmdBaseHandler;
.source "AtCtsaCmdHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/atfwd/AtCtsaCmdHandler$ParsedCtsaCmd;
    }
.end annotation


# static fields
.field private static final CTSA_ACTION_DBL_TAP:I = 0x3

.field private static final CTSA_ACTION_DEPRESS:I = 0x1

.field private static final CTSA_ACTION_LNG_TAP:I = 0x4

.field private static final CTSA_ACTION_RELEASE:I = 0x0

.field private static final CTSA_ACTION_TAP:I = 0x2

.field private static final DEFAULT_PAUSE_TIME:I = 0x190

.field private static final DEFAULT_PRESS_TIME:I = 0xc8

.field private static final EVT_CTSA_CMD:I = 0x0

.field private static final LOG_TAG:Ljava/lang/String; = "AtCtsaCmdHandler"


# instance fields
.field private mInjectHandler:Landroid/os/Handler;

.field private mInjectThread:Landroid/os/HandlerThread;

.field private mInjectThreadStart:Z

.field private mWm:Landroid/view/IWindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "c"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/atfwd/AtCmdHandler$AtCmdHandlerInstantiationException;
        }
    .end annotation

    .prologue
    .line 206
    invoke-direct {p0, p1}, Lcom/android/internal/atfwd/AtCmdBaseHandler;-><init>(Landroid/content/Context;)V

    .line 83
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/atfwd/AtCtsaCmdHandler;->mInjectThreadStart:Z

    .line 207
    const-string/jumbo v1, "window"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    .line 209
    .local v0, service:Landroid/view/IWindowManager;
    if-nez v0, :cond_0

    .line 210
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Unable to connect to Window Service"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 211
    :cond_0
    iput-object v0, p0, Lcom/android/internal/atfwd/AtCtsaCmdHandler;->mWm:Landroid/view/IWindowManager;

    .line 215
    new-instance v1, Lcom/android/internal/atfwd/AtCtsaCmdHandler$1;

    const-string v2, "CTSA Inject Thread"

    const/4 v3, -0x8

    invoke-direct {v1, p0, v2, v3}, Lcom/android/internal/atfwd/AtCtsaCmdHandler$1;-><init>(Lcom/android/internal/atfwd/AtCtsaCmdHandler;Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/android/internal/atfwd/AtCtsaCmdHandler;->mInjectThread:Landroid/os/HandlerThread;

    .line 273
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/atfwd/AtCtsaCmdHandler;)Landroid/view/IWindowManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/internal/atfwd/AtCtsaCmdHandler;->mWm:Landroid/view/IWindowManager;

    return-object v0
.end method


# virtual methods
.method public getCommandName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 383
    const-string v0, "+CTSA"

    return-object v0
.end method

.method public handleCommand(Lcom/android/internal/atfwd/AtCmd;)Lcom/android/internal/atfwd/AtCmdResponse;
    .locals 13
    .parameter "cmd"

    .prologue
    const/4 v12, 0x7

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 333
    const/4 v3, 0x0

    .line 334
    .local v3, ret:Lcom/android/internal/atfwd/AtCmdResponse;
    const/4 v5, 0x0

    .line 335
    .local v5, valid:Lcom/android/internal/atfwd/AtCtsaCmdHandler$ParsedCtsaCmd;
    const/4 v0, 0x0

    .line 336
    .local v0, dead:Z
    invoke-virtual {p1}, Lcom/android/internal/atfwd/AtCmd;->getOpcode()I

    move-result v2

    .line 337
    .local v2, opCode:I
    const-string v7, "AtCtsaCmdHandler"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "handleCommand: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    iget-object v7, p0, Lcom/android/internal/atfwd/AtCtsaCmdHandler;->mInjectThread:Landroid/os/HandlerThread;

    invoke-virtual {v7}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v7

    if-nez v7, :cond_0

    move v0, v8

    .line 340
    :goto_0
    if-nez v0, :cond_3

    .line 341
    const/16 v7, 0xb

    if-eq v2, v7, :cond_1

    if-eq v2, v12, :cond_1

    .line 343
    const-string v7, "AtCtsaCmdHandler"

    const-string v8, "CTSA opcode eror"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    new-instance v7, Lcom/android/internal/atfwd/AtCmdResponse;

    const/4 v8, 0x4

    invoke-virtual {p1, v8}, Lcom/android/internal/atfwd/AtCmd;->getAtCmdErrStr(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v9, v8}, Lcom/android/internal/atfwd/AtCmdResponse;-><init>(ILjava/lang/String;)V

    .line 379
    :goto_1
    return-object v7

    :cond_0
    move v0, v9

    .line 339
    goto :goto_0

    .line 350
    :cond_1
    if-ne v2, v12, :cond_2

    .line 351
    const-string v7, "AtCtsaCmdHandler"

    const-string v9, "+CTSA=? test command, RESULT OK  "

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    new-instance v7, Lcom/android/internal/atfwd/AtCmdResponse;

    const-string v9, "+CTSA: (0-4)"

    invoke-direct {v7, v8, v9}, Lcom/android/internal/atfwd/AtCmdResponse;-><init>(ILjava/lang/String;)V

    goto :goto_1

    .line 364
    :cond_2
    :try_start_0
    new-instance v6, Lcom/android/internal/atfwd/AtCtsaCmdHandler$ParsedCtsaCmd;

    invoke-direct {v6, p0, p1}, Lcom/android/internal/atfwd/AtCtsaCmdHandler$ParsedCtsaCmd;-><init>(Lcom/android/internal/atfwd/AtCtsaCmdHandler;Lcom/android/internal/atfwd/AtCmd;)V
    :try_end_0
    .catch Lcom/android/internal/atfwd/AtCmdHandler$AtCmdParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/android/internal/atfwd/AtCmdHandler$AtCmdParametersException; {:try_start_0 .. :try_end_0} :catch_1

    .line 365
    .end local v5           #valid:Lcom/android/internal/atfwd/AtCtsaCmdHandler$ParsedCtsaCmd;
    .local v6, valid:Lcom/android/internal/atfwd/AtCtsaCmdHandler$ParsedCtsaCmd;
    :try_start_1
    new-instance v4, Lcom/android/internal/atfwd/AtCmdResponse;

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-direct {v4, v7, v8}, Lcom/android/internal/atfwd/AtCmdResponse;-><init>(ILjava/lang/String;)V
    :try_end_1
    .catch Lcom/android/internal/atfwd/AtCmdHandler$AtCmdParseException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Lcom/android/internal/atfwd/AtCmdHandler$AtCmdParametersException; {:try_start_1 .. :try_end_1} :catch_2

    .line 366
    .end local v3           #ret:Lcom/android/internal/atfwd/AtCmdResponse;
    .local v4, ret:Lcom/android/internal/atfwd/AtCmdResponse;
    :try_start_2
    const-string v7, "AtCtsaCmdHandler"

    const-string v8, "Queuing command"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    iget-object v7, p0, Lcom/android/internal/atfwd/AtCtsaCmdHandler;->mInjectHandler:Landroid/os/Handler;

    const/4 v8, 0x0

    invoke-static {v7, v8, v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/Message;->sendToTarget()V

    .line 368
    const-string v7, "AtCtsaCmdHandler"

    const-string v8, "Command queued"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Lcom/android/internal/atfwd/AtCmdHandler$AtCmdParseException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Lcom/android/internal/atfwd/AtCmdHandler$AtCmdParametersException; {:try_start_2 .. :try_end_2} :catch_3

    move-object v5, v6

    .end local v6           #valid:Lcom/android/internal/atfwd/AtCtsaCmdHandler$ParsedCtsaCmd;
    .restart local v5       #valid:Lcom/android/internal/atfwd/AtCtsaCmdHandler$ParsedCtsaCmd;
    move-object v3, v4

    .end local v4           #ret:Lcom/android/internal/atfwd/AtCmdResponse;
    .restart local v3       #ret:Lcom/android/internal/atfwd/AtCmdResponse;
    :goto_2
    move-object v7, v3

    .line 379
    goto :goto_1

    .line 369
    :catch_0
    move-exception v1

    .line 370
    .local v1, e:Lcom/android/internal/atfwd/AtCmdHandler$AtCmdParseException;
    :goto_3
    const-string v7, "AtCtsaCmdHandler"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error parsing command "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    new-instance v3, Lcom/android/internal/atfwd/AtCmdResponse;

    .end local v3           #ret:Lcom/android/internal/atfwd/AtCmdResponse;
    const-string v7, "+CME ERROR: 25"

    invoke-direct {v3, v9, v7}, Lcom/android/internal/atfwd/AtCmdResponse;-><init>(ILjava/lang/String;)V

    .line 375
    .restart local v3       #ret:Lcom/android/internal/atfwd/AtCmdResponse;
    goto :goto_2

    .line 372
    .end local v1           #e:Lcom/android/internal/atfwd/AtCmdHandler$AtCmdParseException;
    :catch_1
    move-exception v1

    .line 373
    .local v1, e:Lcom/android/internal/atfwd/AtCmdHandler$AtCmdParametersException;
    :goto_4
    const-string v7, "AtCtsaCmdHandler"

    const-string v8, "Incorrect parameters "

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    new-instance v3, Lcom/android/internal/atfwd/AtCmdResponse;

    .end local v3           #ret:Lcom/android/internal/atfwd/AtCmdResponse;
    const-string v7, "+CME ERROR: 50"

    invoke-direct {v3, v9, v7}, Lcom/android/internal/atfwd/AtCmdResponse;-><init>(ILjava/lang/String;)V

    .line 375
    .restart local v3       #ret:Lcom/android/internal/atfwd/AtCmdResponse;
    goto :goto_2

    .line 377
    .end local v1           #e:Lcom/android/internal/atfwd/AtCmdHandler$AtCmdParametersException;
    :cond_3
    new-instance v3, Lcom/android/internal/atfwd/AtCmdResponse;

    .end local v3           #ret:Lcom/android/internal/atfwd/AtCmdResponse;
    const-string v7, "+CME ERROR: 1"

    invoke-direct {v3, v9, v7}, Lcom/android/internal/atfwd/AtCmdResponse;-><init>(ILjava/lang/String;)V

    .restart local v3       #ret:Lcom/android/internal/atfwd/AtCmdResponse;
    goto :goto_2

    .line 372
    .end local v5           #valid:Lcom/android/internal/atfwd/AtCtsaCmdHandler$ParsedCtsaCmd;
    .restart local v6       #valid:Lcom/android/internal/atfwd/AtCtsaCmdHandler$ParsedCtsaCmd;
    :catch_2
    move-exception v1

    move-object v5, v6

    .end local v6           #valid:Lcom/android/internal/atfwd/AtCtsaCmdHandler$ParsedCtsaCmd;
    .restart local v5       #valid:Lcom/android/internal/atfwd/AtCtsaCmdHandler$ParsedCtsaCmd;
    goto :goto_4

    .end local v3           #ret:Lcom/android/internal/atfwd/AtCmdResponse;
    .end local v5           #valid:Lcom/android/internal/atfwd/AtCtsaCmdHandler$ParsedCtsaCmd;
    .restart local v4       #ret:Lcom/android/internal/atfwd/AtCmdResponse;
    .restart local v6       #valid:Lcom/android/internal/atfwd/AtCtsaCmdHandler$ParsedCtsaCmd;
    :catch_3
    move-exception v1

    move-object v5, v6

    .end local v6           #valid:Lcom/android/internal/atfwd/AtCtsaCmdHandler$ParsedCtsaCmd;
    .restart local v5       #valid:Lcom/android/internal/atfwd/AtCtsaCmdHandler$ParsedCtsaCmd;
    move-object v3, v4

    .end local v4           #ret:Lcom/android/internal/atfwd/AtCmdResponse;
    .restart local v3       #ret:Lcom/android/internal/atfwd/AtCmdResponse;
    goto :goto_4

    .line 369
    .end local v5           #valid:Lcom/android/internal/atfwd/AtCtsaCmdHandler$ParsedCtsaCmd;
    .restart local v6       #valid:Lcom/android/internal/atfwd/AtCtsaCmdHandler$ParsedCtsaCmd;
    :catch_4
    move-exception v1

    move-object v5, v6

    .end local v6           #valid:Lcom/android/internal/atfwd/AtCtsaCmdHandler$ParsedCtsaCmd;
    .restart local v5       #valid:Lcom/android/internal/atfwd/AtCtsaCmdHandler$ParsedCtsaCmd;
    goto :goto_3

    .end local v3           #ret:Lcom/android/internal/atfwd/AtCmdResponse;
    .end local v5           #valid:Lcom/android/internal/atfwd/AtCtsaCmdHandler$ParsedCtsaCmd;
    .restart local v4       #ret:Lcom/android/internal/atfwd/AtCmdResponse;
    .restart local v6       #valid:Lcom/android/internal/atfwd/AtCtsaCmdHandler$ParsedCtsaCmd;
    :catch_5
    move-exception v1

    move-object v5, v6

    .end local v6           #valid:Lcom/android/internal/atfwd/AtCtsaCmdHandler$ParsedCtsaCmd;
    .restart local v5       #valid:Lcom/android/internal/atfwd/AtCtsaCmdHandler$ParsedCtsaCmd;
    move-object v3, v4

    .end local v4           #ret:Lcom/android/internal/atfwd/AtCmdResponse;
    .restart local v3       #ret:Lcom/android/internal/atfwd/AtCmdResponse;
    goto :goto_3
.end method

.method public startEventProcess()V
    .locals 2

    .prologue
    .line 275
    iget-boolean v0, p0, Lcom/android/internal/atfwd/AtCtsaCmdHandler;->mInjectThreadStart:Z

    if-nez v0, :cond_0

    .line 276
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/atfwd/AtCtsaCmdHandler;->mInjectThreadStart:Z

    .line 277
    iget-object v0, p0, Lcom/android/internal/atfwd/AtCtsaCmdHandler;->mInjectThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 278
    new-instance v0, Lcom/android/internal/atfwd/AtCtsaCmdHandler$2;

    iget-object v1, p0, Lcom/android/internal/atfwd/AtCtsaCmdHandler;->mInjectThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/internal/atfwd/AtCtsaCmdHandler$2;-><init>(Lcom/android/internal/atfwd/AtCtsaCmdHandler;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/internal/atfwd/AtCtsaCmdHandler;->mInjectHandler:Landroid/os/Handler;

    .line 330
    :cond_0
    return-void
.end method

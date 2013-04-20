.class public Lcom/android/internal/atfwd/AtCssCmdHandler;
.super Lcom/android/internal/atfwd/AtCmdBaseHandler;
.source "AtCssCmdHandler.java"

# interfaces
.implements Lcom/android/internal/atfwd/AtCmdHandler;


# static fields
.field private static final TAG:Ljava/lang/String; = "AtCssCmdHandler"


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
    .line 44
    invoke-direct {p0, p1}, Lcom/android/internal/atfwd/AtCmdBaseHandler;-><init>(Landroid/content/Context;)V

    .line 45
    return-void
.end method

.method private getWindowManager()Landroid/view/WindowManager;
    .locals 3

    .prologue
    .line 48
    iget-object v1, p0, Lcom/android/internal/atfwd/AtCssCmdHandler;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 49
    .local v0, wm:Landroid/view/WindowManager;
    if-nez v0, :cond_0

    .line 50
    const-string v1, "AtCssCmdHandler"

    const-string v2, "Unable to find WindowManager interface."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    :cond_0
    return-object v0
.end method


# virtual methods
.method public getCommandName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    const-string v0, "+CSS"

    return-object v0
.end method

.method public handleCommand(Lcom/android/internal/atfwd/AtCmd;)Lcom/android/internal/atfwd/AtCmdResponse;
    .locals 10
    .parameter "cmd"

    .prologue
    const/4 v9, 0x0

    .line 64
    const/4 v2, 0x0

    .line 65
    .local v2, result:Ljava/lang/String;
    const/4 v1, 0x0

    .line 67
    .local v1, isAtCmdRespOK:Z
    const-string v6, "AtCssCmdHandler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "OpCode  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Lcom/android/internal/atfwd/AtCmd;->getOpcode()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    invoke-virtual {p1}, Lcom/android/internal/atfwd/AtCmd;->getOpcode()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 91
    :goto_0
    if-eqz v1, :cond_1

    new-instance v6, Lcom/android/internal/atfwd/AtCmdResponse;

    const/4 v7, 0x1

    invoke-direct {v6, v7, v2}, Lcom/android/internal/atfwd/AtCmdResponse;-><init>(ILjava/lang/String;)V

    :goto_1
    return-object v6

    .line 72
    :pswitch_0
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/atfwd/AtCssCmdHandler;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v5

    .line 73
    .local v5, wm:Landroid/view/WindowManager;
    if-nez v5, :cond_0

    .line 74
    const-string v6, "AtCssCmdHandler"

    const-string v7, "Unable to find WindowManager interface."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    const/4 v6, 0x0

    invoke-virtual {p1, v6}, Lcom/android/internal/atfwd/AtCmd;->getAtCmdErrStr(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 78
    :cond_0
    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Display;->getHeight()I

    move-result v3

    .line 79
    .local v3, screenHeight:I
    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Display;->getWidth()I

    move-result v4

    .line 80
    .local v4, screenWidth:I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 81
    const-string v6, "AtCssCmdHandler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " At Result :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    const/4 v1, 0x1

    goto :goto_0

    .line 84
    .end local v3           #screenHeight:I
    .end local v4           #screenWidth:I
    .end local v5           #wm:Landroid/view/WindowManager;
    :catch_0
    move-exception v0

    .line 85
    .local v0, e:Ljava/lang/SecurityException;
    const-string v6, "AtCssCmdHandler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SecurityException: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    const/4 v6, 0x3

    invoke-virtual {p1, v6}, Lcom/android/internal/atfwd/AtCmd;->getAtCmdErrStr(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 91
    .end local v0           #e:Ljava/lang/SecurityException;
    :cond_1
    new-instance v6, Lcom/android/internal/atfwd/AtCmdResponse;

    invoke-direct {v6, v9, v2}, Lcom/android/internal/atfwd/AtCmdResponse;-><init>(ILjava/lang/String;)V

    goto :goto_1

    .line 68
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

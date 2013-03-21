.class public Lcom/android/internal/atfwd/AtCmarCmdHandler;
.super Lcom/android/internal/atfwd/AtCmdBaseHandler;
.source "AtCmarCmdHandler.java"

# interfaces
.implements Lcom/android/internal/atfwd/AtCmdHandler;


# static fields
.field private static final TAG:Ljava/lang/String; = "AtCmarCmdHandler"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mSdReset:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "c"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/atfwd/AtCmdHandler$AtCmdHandlerInstantiationException;
        }
    .end annotation

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/android/internal/atfwd/AtCmdBaseHandler;-><init>(Landroid/content/Context;)V

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/atfwd/AtCmarCmdHandler;->mSdReset:Z

    .line 57
    iput-object p1, p0, Lcom/android/internal/atfwd/AtCmarCmdHandler;->mContext:Landroid/content/Context;

    .line 58
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/internal/atfwd/AtCmarCmdHandler;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/atfwd/AtCmarCmdHandler;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 59
    return-void
.end method

.method private processResetCommand()V
    .locals 5

    .prologue
    .line 137
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    .line 138
    .local v1, status:Ljava/lang/String;
    const-string v2, "bad_removal"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "removed"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/internal/atfwd/AtCmarCmdHandler;->mSdReset:Z

    if-nez v2, :cond_1

    .line 145
    :cond_0
    const-string v2, "AtCmarCmdHandler"

    const-string v3, " Phone Storage MASTER RESET triggered"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    iget-object v2, p0, Lcom/android/internal/atfwd/AtCmarCmdHandler;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.MASTER_CLEAR"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 161
    :goto_0
    return-void

    .line 155
    :cond_1
    const-string v2, "AtCmarCmdHandler"

    const-string v3, " External Storage MASTER RESET triggered"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.android.internal.os.storage.FORMAT_AND_FACTORY_RESET"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 157
    .local v0, intent:Landroid/content/Intent;
    sget-object v2, Lcom/android/internal/os/storage/ExternalStorageFormatter;->COMPONENT_NAME:Landroid/content/ComponentName;

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 158
    iget-object v2, p0, Lcom/android/internal/atfwd/AtCmarCmdHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0
.end method


# virtual methods
.method public getCommandName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    const-string v0, "+CMAR"

    return-object v0
.end method

.method public handleCommand(Lcom/android/internal/atfwd/AtCmd;)Lcom/android/internal/atfwd/AtCmdResponse;
    .locals 7
    .parameter "cmd"

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x7

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 69
    invoke-virtual {p1}, Lcom/android/internal/atfwd/AtCmd;->getTokens()[Ljava/lang/String;

    move-result-object v1

    .line 70
    .local v1, tokens:[Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/internal/atfwd/AtCmd;->getOpcode()I

    move-result v0

    .line 72
    .local v0, opCode:I
    const/16 v2, 0xb

    if-eq v0, v2, :cond_0

    if-eq v0, v3, :cond_0

    .line 74
    const-string v2, "AtCmarCmdHandler"

    const-string v3, "CMAR opcode eror"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    new-instance v2, Lcom/android/internal/atfwd/AtCmdResponse;

    const/4 v3, 0x4

    invoke-virtual {p1, v3}, Lcom/android/internal/atfwd/AtCmd;->getAtCmdErrStr(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v4, v3}, Lcom/android/internal/atfwd/AtCmdResponse;-><init>(ILjava/lang/String;)V

    .line 128
    :goto_0
    return-object v2

    .line 79
    :cond_0
    if-ne v0, v3, :cond_1

    .line 80
    const-string v2, "AtCmarCmdHandler"

    const-string v3, "+CMAR=? test command, RESULT OK "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    new-instance v2, Lcom/android/internal/atfwd/AtCmdResponse;

    invoke-direct {v2, v5, v6}, Lcom/android/internal/atfwd/AtCmdResponse;-><init>(ILjava/lang/String;)V

    goto :goto_0

    .line 84
    :cond_1
    array-length v2, v1

    if-nez v2, :cond_2

    .line 85
    const-string v2, "AtCmarCmdHandler"

    const-string v3, "CMAR mandatory parameter pin lock code missing "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    new-instance v2, Lcom/android/internal/atfwd/AtCmdResponse;

    const/16 v3, 0x32

    invoke-virtual {p1, v3}, Lcom/android/internal/atfwd/AtCmd;->getAtCmdErrStr(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v4, v3}, Lcom/android/internal/atfwd/AtCmdResponse;-><init>(ILjava/lang/String;)V

    goto :goto_0

    .line 90
    :cond_2
    array-length v2, v1

    if-le v2, v5, :cond_3

    aget-object v2, v1, v5

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 91
    iput-boolean v5, p0, Lcom/android/internal/atfwd/AtCmarCmdHandler;->mSdReset:Z

    .line 92
    const-string v2, "AtCmarCmdHandler"

    const-string v3, " Option enabled to erase SD card, if present "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    :cond_3
    iget-object v2, p0, Lcom/android/internal/atfwd/AtCmarCmdHandler;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v2

    const/high16 v3, 0x1

    if-ne v2, v3, :cond_4

    .line 113
    const-string v2, "AtCmarCmdHandler"

    const-string v3, "Pattern Lock enabled/No password set , CMAR is unsupported "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    new-instance v2, Lcom/android/internal/atfwd/AtCmdResponse;

    invoke-virtual {p1, v4}, Lcom/android/internal/atfwd/AtCmd;->getAtCmdErrStr(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v4, v3}, Lcom/android/internal/atfwd/AtCmdResponse;-><init>(ILjava/lang/String;)V

    goto :goto_0

    .line 120
    :cond_4
    iget-object v2, p0, Lcom/android/internal/atfwd/AtCmarCmdHandler;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    aget-object v3, v1, v4

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->checkPassword(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 122
    invoke-direct {p0}, Lcom/android/internal/atfwd/AtCmarCmdHandler;->processResetCommand()V

    .line 123
    new-instance v2, Lcom/android/internal/atfwd/AtCmdResponse;

    invoke-direct {v2, v5, v6}, Lcom/android/internal/atfwd/AtCmdResponse;-><init>(ILjava/lang/String;)V

    goto :goto_0

    .line 127
    :cond_5
    const-string v2, "AtCmarCmdHandler"

    const-string v3, "+CMAR=<pin lock code > Verification failed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    new-instance v2, Lcom/android/internal/atfwd/AtCmdResponse;

    const/16 v3, 0x10

    invoke-virtual {p1, v3}, Lcom/android/internal/atfwd/AtCmd;->getAtCmdErrStr(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v4, v3}, Lcom/android/internal/atfwd/AtCmdResponse;-><init>(ILjava/lang/String;)V

    goto :goto_0
.end method

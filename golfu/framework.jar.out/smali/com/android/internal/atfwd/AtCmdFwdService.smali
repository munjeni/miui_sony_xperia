.class public Lcom/android/internal/atfwd/AtCmdFwdService;
.super Lcom/android/internal/atfwd/IAtCmdFwd$Stub;
.source "AtCmdFwdService.java"


# static fields
.field private static final ATFWD_PERMISSION:Ljava/lang/String; = "android.permission.ATCMD"

.field private static final LOG_TAG:Ljava/lang/String; = "AtCmdFwdService"


# instance fields
.field private mCmdHandlers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/internal/atfwd/AtCmdHandler;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "c"

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/android/internal/atfwd/IAtCmdFwd$Stub;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/android/internal/atfwd/AtCmdFwdService;->mContext:Landroid/content/Context;

    .line 54
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/internal/atfwd/AtCmdFwdService;->mCmdHandlers:Ljava/util/HashMap;

    .line 59
    :try_start_0
    new-instance v0, Lcom/android/internal/atfwd/AtCkpdCmdHandler;

    invoke-direct {v0, p1}, Lcom/android/internal/atfwd/AtCkpdCmdHandler;-><init>(Landroid/content/Context;)V

    .line 62
    .local v0, cmd:Lcom/android/internal/atfwd/AtCmdHandler;
    invoke-interface {v0}, Lcom/android/internal/atfwd/AtCmdHandler;->startEventProcess()V

    .line 63
    iget-object v2, p0, Lcom/android/internal/atfwd/AtCmdFwdService;->mCmdHandlers:Ljava/util/HashMap;

    invoke-interface {v0}, Lcom/android/internal/atfwd/AtCmdHandler;->getCommandName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/android/internal/atfwd/AtCmdHandler$AtCmdHandlerInstantiationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    .end local v0           #cmd:Lcom/android/internal/atfwd/AtCmdHandler;
    :goto_0
    :try_start_1
    new-instance v0, Lcom/android/internal/atfwd/AtCtsaCmdHandler;

    invoke-direct {v0, p1}, Lcom/android/internal/atfwd/AtCtsaCmdHandler;-><init>(Landroid/content/Context;)V

    .line 72
    .restart local v0       #cmd:Lcom/android/internal/atfwd/AtCmdHandler;
    invoke-interface {v0}, Lcom/android/internal/atfwd/AtCmdHandler;->startEventProcess()V

    .line 73
    iget-object v2, p0, Lcom/android/internal/atfwd/AtCmdFwdService;->mCmdHandlers:Ljava/util/HashMap;

    invoke-interface {v0}, Lcom/android/internal/atfwd/AtCmdHandler;->getCommandName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Lcom/android/internal/atfwd/AtCmdHandler$AtCmdHandlerInstantiationException; {:try_start_1 .. :try_end_1} :catch_1

    .line 79
    .end local v0           #cmd:Lcom/android/internal/atfwd/AtCmdHandler;
    :goto_1
    :try_start_2
    new-instance v0, Lcom/android/internal/atfwd/AtCfunCmdHandler;

    invoke-direct {v0, p1}, Lcom/android/internal/atfwd/AtCfunCmdHandler;-><init>(Landroid/content/Context;)V

    .line 80
    .restart local v0       #cmd:Lcom/android/internal/atfwd/AtCmdHandler;
    iget-object v2, p0, Lcom/android/internal/atfwd/AtCmdFwdService;->mCmdHandlers:Ljava/util/HashMap;

    invoke-interface {v0}, Lcom/android/internal/atfwd/AtCmdHandler;->getCommandName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Lcom/android/internal/atfwd/AtCmdHandler$AtCmdHandlerInstantiationException; {:try_start_2 .. :try_end_2} :catch_2

    .line 86
    .end local v0           #cmd:Lcom/android/internal/atfwd/AtCmdHandler;
    :goto_2
    :try_start_3
    new-instance v0, Lcom/android/internal/atfwd/AtCrslCmdHandler;

    invoke-direct {v0, p1}, Lcom/android/internal/atfwd/AtCrslCmdHandler;-><init>(Landroid/content/Context;)V

    .line 87
    .restart local v0       #cmd:Lcom/android/internal/atfwd/AtCmdHandler;
    iget-object v2, p0, Lcom/android/internal/atfwd/AtCmdFwdService;->mCmdHandlers:Ljava/util/HashMap;

    invoke-interface {v0}, Lcom/android/internal/atfwd/AtCmdHandler;->getCommandName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Lcom/android/internal/atfwd/AtCmdHandler$AtCmdHandlerInstantiationException; {:try_start_3 .. :try_end_3} :catch_3

    .line 93
    .end local v0           #cmd:Lcom/android/internal/atfwd/AtCmdHandler;
    :goto_3
    :try_start_4
    new-instance v0, Lcom/android/internal/atfwd/AtCssCmdHandler;

    invoke-direct {v0, p1}, Lcom/android/internal/atfwd/AtCssCmdHandler;-><init>(Landroid/content/Context;)V

    .line 94
    .restart local v0       #cmd:Lcom/android/internal/atfwd/AtCmdHandler;
    iget-object v2, p0, Lcom/android/internal/atfwd/AtCmdFwdService;->mCmdHandlers:Ljava/util/HashMap;

    invoke-interface {v0}, Lcom/android/internal/atfwd/AtCmdHandler;->getCommandName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Lcom/android/internal/atfwd/AtCmdHandler$AtCmdHandlerInstantiationException; {:try_start_4 .. :try_end_4} :catch_4

    .line 100
    .end local v0           #cmd:Lcom/android/internal/atfwd/AtCmdHandler;
    :goto_4
    :try_start_5
    new-instance v0, Lcom/android/internal/atfwd/AtCmarCmdHandler;

    invoke-direct {v0, p1}, Lcom/android/internal/atfwd/AtCmarCmdHandler;-><init>(Landroid/content/Context;)V

    .line 101
    .restart local v0       #cmd:Lcom/android/internal/atfwd/AtCmdHandler;
    iget-object v2, p0, Lcom/android/internal/atfwd/AtCmdFwdService;->mCmdHandlers:Ljava/util/HashMap;

    invoke-interface {v0}, Lcom/android/internal/atfwd/AtCmdHandler;->getCommandName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Lcom/android/internal/atfwd/AtCmdHandler$AtCmdHandlerInstantiationException; {:try_start_5 .. :try_end_5} :catch_5

    .line 106
    .end local v0           #cmd:Lcom/android/internal/atfwd/AtCmdHandler;
    :goto_5
    return-void

    .line 64
    :catch_0
    move-exception v1

    .line 65
    .local v1, e:Lcom/android/internal/atfwd/AtCmdHandler$AtCmdHandlerInstantiationException;
    const-string v2, "AtCmdFwdService"

    const-string v3, "Unable to instantiate command"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 74
    .end local v1           #e:Lcom/android/internal/atfwd/AtCmdHandler$AtCmdHandlerInstantiationException;
    :catch_1
    move-exception v1

    .line 75
    .restart local v1       #e:Lcom/android/internal/atfwd/AtCmdHandler$AtCmdHandlerInstantiationException;
    const-string v2, "AtCmdFwdService"

    const-string v3, "Unable to instantiate command"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 81
    .end local v1           #e:Lcom/android/internal/atfwd/AtCmdHandler$AtCmdHandlerInstantiationException;
    :catch_2
    move-exception v1

    .line 82
    .restart local v1       #e:Lcom/android/internal/atfwd/AtCmdHandler$AtCmdHandlerInstantiationException;
    const-string v2, "AtCmdFwdService"

    const-string v3, "Unable to instantiate command"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 88
    .end local v1           #e:Lcom/android/internal/atfwd/AtCmdHandler$AtCmdHandlerInstantiationException;
    :catch_3
    move-exception v1

    .line 89
    .restart local v1       #e:Lcom/android/internal/atfwd/AtCmdHandler$AtCmdHandlerInstantiationException;
    const-string v2, "AtCmdFwdService"

    const-string v3, "Unable to instantiate command"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 95
    .end local v1           #e:Lcom/android/internal/atfwd/AtCmdHandler$AtCmdHandlerInstantiationException;
    :catch_4
    move-exception v1

    .line 96
    .restart local v1       #e:Lcom/android/internal/atfwd/AtCmdHandler$AtCmdHandlerInstantiationException;
    const-string v2, "AtCmdFwdService"

    const-string v3, "Unable to instantiate command"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 102
    .end local v1           #e:Lcom/android/internal/atfwd/AtCmdHandler$AtCmdHandlerInstantiationException;
    :catch_5
    move-exception v1

    .line 103
    .restart local v1       #e:Lcom/android/internal/atfwd/AtCmdHandler$AtCmdHandlerInstantiationException;
    const-string v2, "AtCmdFwdService"

    const-string v3, "Unable to instantiate command"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5
.end method


# virtual methods
.method public processAtCmd(Lcom/android/internal/atfwd/AtCmd;)Lcom/android/internal/atfwd/AtCmdResponse;
    .locals 7
    .parameter "cmd"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 109
    iget-object v3, p0, Lcom/android/internal/atfwd/AtCmdFwdService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.ATCMD"

    const-string v5, "Processing AT Command: Permission denied"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    const-string v3, "AtCmdFwdService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "processAtCmd(cmd: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/android/internal/atfwd/AtCmd;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    iget-object v3, p0, Lcom/android/internal/atfwd/AtCmdFwdService;->mCmdHandlers:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/android/internal/atfwd/AtCmd;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/atfwd/AtCmdHandler;

    .line 113
    .local v1, h:Lcom/android/internal/atfwd/AtCmdHandler;
    if-eqz v1, :cond_0

    .line 115
    :try_start_0
    invoke-interface {v1, p1}, Lcom/android/internal/atfwd/AtCmdHandler;->handleCommand(Lcom/android/internal/atfwd/AtCmd;)Lcom/android/internal/atfwd/AtCmdResponse;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 123
    .local v2, ret:Lcom/android/internal/atfwd/AtCmdResponse;
    :goto_0
    return-object v2

    .line 116
    .end local v2           #ret:Lcom/android/internal/atfwd/AtCmdResponse;
    :catch_0
    move-exception v0

    .line 117
    .local v0, e:Ljava/lang/Throwable;
    new-instance v2, Lcom/android/internal/atfwd/AtCmdResponse;

    const-string v3, "+CME ERROR: 2"

    invoke-direct {v2, v6, v3}, Lcom/android/internal/atfwd/AtCmdResponse;-><init>(ILjava/lang/String;)V

    .line 118
    .restart local v2       #ret:Lcom/android/internal/atfwd/AtCmdResponse;
    goto :goto_0

    .line 120
    .end local v0           #e:Ljava/lang/Throwable;
    .end local v2           #ret:Lcom/android/internal/atfwd/AtCmdResponse;
    :cond_0
    const-string v3, "AtCmdFwdService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unhandled command "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    new-instance v2, Lcom/android/internal/atfwd/AtCmdResponse;

    const-string v3, "+CME ERROR: 4"

    invoke-direct {v2, v6, v3}, Lcom/android/internal/atfwd/AtCmdResponse;-><init>(ILjava/lang/String;)V

    .restart local v2       #ret:Lcom/android/internal/atfwd/AtCmdResponse;
    goto :goto_0
.end method

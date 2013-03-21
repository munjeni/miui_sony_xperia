.class Lcom/android/internal/atfwd/AtCkpdCmdHandler$1;
.super Ljava/lang/Thread;
.source "AtCkpdCmdHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/atfwd/AtCkpdCmdHandler;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/atfwd/AtCkpdCmdHandler;


# direct methods
.method constructor <init>(Lcom/android/internal/atfwd/AtCkpdCmdHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 266
    iput-object p1, p0, Lcom/android/internal/atfwd/AtCkpdCmdHandler$1;->this$0:Lcom/android/internal/atfwd/AtCkpdCmdHandler;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 19

    .prologue
    .line 268
    const/4 v9, 0x0

    .line 270
    .local v9, cmd:Lcom/android/internal/atfwd/AtCkpdCmdHandler$ParsedCkpdCmd;
    :cond_0
    const-string v4, "AtCkpdCmdHandler"

    const-string v5, "De-queing command"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/atfwd/AtCkpdCmdHandler$1;->this$0:Lcom/android/internal/atfwd/AtCkpdCmdHandler;

    #getter for: Lcom/android/internal/atfwd/AtCkpdCmdHandler;->mEventQ:Ljava/util/LinkedList;
    invoke-static {v4}, Lcom/android/internal/atfwd/AtCkpdCmdHandler;->access$100(Lcom/android/internal/atfwd/AtCkpdCmdHandler;)Ljava/util/LinkedList;

    move-result-object v5

    monitor-enter v5

    .line 272
    :goto_0
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/atfwd/AtCkpdCmdHandler$1;->this$0:Lcom/android/internal/atfwd/AtCkpdCmdHandler;

    #getter for: Lcom/android/internal/atfwd/AtCkpdCmdHandler;->mEventQ:Ljava/util/LinkedList;
    invoke-static {v4}, Lcom/android/internal/atfwd/AtCkpdCmdHandler;->access$100(Lcom/android/internal/atfwd/AtCkpdCmdHandler;)Ljava/util/LinkedList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/LinkedList;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_1

    .line 274
    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/atfwd/AtCkpdCmdHandler$1;->this$0:Lcom/android/internal/atfwd/AtCkpdCmdHandler;

    #getter for: Lcom/android/internal/atfwd/AtCkpdCmdHandler;->mEventQ:Ljava/util/LinkedList;
    invoke-static {v4}, Lcom/android/internal/atfwd/AtCkpdCmdHandler;->access$100(Lcom/android/internal/atfwd/AtCkpdCmdHandler;)Ljava/util/LinkedList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 275
    :catch_0
    move-exception v10

    .line 276
    .local v10, e:Ljava/lang/InterruptedException;
    :try_start_2
    const-string v4, "AtCkpdCmdHandler"

    const-string v6, "Inject thread interrupted"

    invoke-static {v4, v6, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 281
    .end local v10           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 280
    :cond_1
    :try_start_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/atfwd/AtCkpdCmdHandler$1;->this$0:Lcom/android/internal/atfwd/AtCkpdCmdHandler;

    #getter for: Lcom/android/internal/atfwd/AtCkpdCmdHandler;->mEventQ:Ljava/util/LinkedList;
    invoke-static {v4}, Lcom/android/internal/atfwd/AtCkpdCmdHandler;->access$100(Lcom/android/internal/atfwd/AtCkpdCmdHandler;)Ljava/util/LinkedList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/android/internal/atfwd/AtCkpdCmdHandler$ParsedCkpdCmd;

    move-object v9, v0

    .line 281
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 282
    if-eqz v9, :cond_0

    .line 283
    const-string v4, "AtCkpdCmdHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Command de-queued: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/atfwd/AtCkpdCmdHandler$1;->this$0:Lcom/android/internal/atfwd/AtCkpdCmdHandler;

    iget-object v4, v4, Lcom/android/internal/atfwd/AtCkpdCmdHandler;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "power"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/os/PowerManager;

    .line 287
    .local v17, pm:Landroid/os/PowerManager;
    const v4, 0x3000001a

    const-string v5, "+CKPD Handler"

    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v5}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v18

    .line 290
    .local v18, wl:Landroid/os/PowerManager$WakeLock;
    invoke-virtual {v9}, Lcom/android/internal/atfwd/AtCkpdCmdHandler$ParsedCkpdCmd;->getEvents()Ljava/util/Vector;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    .line 291
    .local v12, evt:Ljava/lang/Object;
    instance-of v4, v12, Lcom/android/internal/atfwd/AtCmdHandler$PauseEvent;

    if-eqz v4, :cond_2

    .line 293
    :try_start_4
    check-cast v12, Lcom/android/internal/atfwd/AtCmdHandler$PauseEvent;

    .end local v12           #evt:Ljava/lang/Object;
    invoke-virtual {v12}, Lcom/android/internal/atfwd/AtCmdHandler$PauseEvent;->getTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 294
    :catch_1
    move-exception v10

    .line 295
    .restart local v10       #e:Ljava/lang/InterruptedException;
    const-string v4, "AtCkpdCmdHandler"

    const-string v5, "Interrupted pause"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 299
    .end local v10           #e:Ljava/lang/InterruptedException;
    .restart local v12       #evt:Ljava/lang/Object;
    :cond_2
    instance-of v4, v12, Landroid/view/KeyEvent;

    if-nez v4, :cond_3

    .line 300
    const-string v4, "AtCkpdCmdHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown type of event "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 305
    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .local v2, dntime:J
    move-object v11, v12

    .line 306
    check-cast v11, Landroid/view/KeyEvent;

    .line 307
    .local v11, ev:Landroid/view/KeyEvent;
    new-instance v1, Landroid/view/KeyEvent;

    invoke-virtual {v11}, Landroid/view/KeyEvent;->getAction()I

    move-result v6

    invoke-virtual {v11}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v7

    const/4 v8, 0x0

    move-wide v4, v2

    invoke-direct/range {v1 .. v8}, Landroid/view/KeyEvent;-><init>(JJIII)V

    .line 313
    .end local v11           #ev:Landroid/view/KeyEvent;
    .local v1, ev:Landroid/view/KeyEvent;
    const/4 v4, 0x6

    invoke-virtual {v1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v5

    if-ne v4, v5, :cond_5

    .line 315
    :try_start_5
    const-string/jumbo v4, "phone"

    invoke-static {v4}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v16

    .line 318
    .local v16, phoneServ:Lcom/android/internal/telephony/ITelephony;
    if-eqz v16, :cond_4

    .line 320
    const/4 v14, 0x0

    .line 322
    .local v14, hungUp:Z
    invoke-interface/range {v16 .. v16}, Lcom/android/internal/telephony/ITelephony;->endCall()Z

    move-result v14

    .line 323
    const-string v4, "AtCkpdCmdHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "end Call Result: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_1

    .line 327
    .end local v14           #hungUp:Z
    .end local v16           #phoneServ:Lcom/android/internal/telephony/ITelephony;
    :catch_2
    move-exception v13

    .line 328
    .local v13, ex:Landroid/os/RemoteException;
    const-string v4, "AtCkpdCmdHandler"

    const-string v5, "RemoteException from getPhoneInterface()"

    invoke-static {v4, v5, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 325
    .end local v13           #ex:Landroid/os/RemoteException;
    .restart local v16       #phoneServ:Lcom/android/internal/telephony/ITelephony;
    :cond_4
    :try_start_6
    const-string v4, "AtCkpdCmdHandler"

    const-string v5, "Unable to find ITelephony interface"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_2

    goto/16 :goto_1

    .line 335
    .end local v16           #phoneServ:Lcom/android/internal/telephony/ITelephony;
    :cond_5
    :try_start_7
    invoke-virtual/range {v18 .. v18}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 336
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/atfwd/AtCkpdCmdHandler$1;->this$0:Lcom/android/internal/atfwd/AtCkpdCmdHandler;

    #getter for: Lcom/android/internal/atfwd/AtCkpdCmdHandler;->mWm:Landroid/view/IWindowManager;
    invoke-static {v4}, Lcom/android/internal/atfwd/AtCkpdCmdHandler;->access$200(Lcom/android/internal/atfwd/AtCkpdCmdHandler;)Landroid/view/IWindowManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v4, v1, v5}, Landroid/view/IWindowManager;->injectKeyEvent(Landroid/view/KeyEvent;Z)Z

    .line 337
    invoke-virtual/range {v18 .. v18}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_3

    goto/16 :goto_1

    .line 338
    :catch_3
    move-exception v10

    .line 339
    .local v10, e:Landroid/os/RemoteException;
    const-string v4, "AtCkpdCmdHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Remote exception while inserting press code "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 342
    return-void
.end method

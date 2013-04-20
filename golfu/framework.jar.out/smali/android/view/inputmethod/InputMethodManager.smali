.class public final Landroid/view/inputmethod/InputMethodManager;
.super Ljava/lang/Object;
.source "InputMethodManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/inputmethod/InputMethodManager$ControlledInputConnectionWrapper;,
        Landroid/view/inputmethod/InputMethodManager$H;
    }
.end annotation


# static fields
.field public static final CONTROL_START_INITIAL:I = 0x100

.field public static final CONTROL_WINDOW_FIRST:I = 0x4

.field public static final CONTROL_WINDOW_IS_TEXT_EDITOR:I = 0x2

.field public static final CONTROL_WINDOW_VIEW_HAS_FOCUS:I = 0x1

.field static final DEBUG:Z = false

.field public static final HIDE_IMPLICIT_ONLY:I = 0x1

.field public static final HIDE_NOT_ALWAYS:I = 0x2

.field static final MSG_BIND:I = 0x2

.field static final MSG_DUMP:I = 0x1

.field static final MSG_SET_ACTIVE:I = 0x4

.field static final MSG_UNBIND:I = 0x3

.field public static final RESULT_HIDDEN:I = 0x3

.field public static final RESULT_SHOWN:I = 0x2

.field public static final RESULT_UNCHANGED_HIDDEN:I = 0x1

.field public static final RESULT_UNCHANGED_SHOWN:I = 0x0

.field public static final SHOW_FORCED:I = 0x2

.field public static final SHOW_IMPLICIT:I = 0x1

.field static final TAG:Ljava/lang/String; = "InputMethodManager"

.field static mInstance:Landroid/view/inputmethod/InputMethodManager;

.field static final mInstanceSync:Ljava/lang/Object;


# instance fields
.field mActive:Z

.field mBindSequence:I

.field final mClient:Lcom/android/internal/view/IInputMethodClient$Stub;

.field mCompletions:[Landroid/view/inputmethod/CompletionInfo;

.field mCurId:Ljava/lang/String;

.field mCurMethod:Lcom/android/internal/view/IInputMethodSession;

.field mCurRootView:Landroid/view/View;

.field mCurrentTextBoxAttribute:Landroid/view/inputmethod/EditorInfo;

.field mCursorCandEnd:I

.field mCursorCandStart:I

.field mCursorRect:Landroid/graphics/Rect;

.field mCursorSelEnd:I

.field mCursorSelStart:I

.field final mDummyInputConnection:Landroid/view/inputmethod/InputConnection;

.field mFullscreenMode:Z

.field final mH:Landroid/view/inputmethod/InputMethodManager$H;

.field mHasBeenInactive:Z

.field final mIInputContext:Lcom/android/internal/view/IInputContext;

.field final mMainLooper:Landroid/os/Looper;

.field mNextServedView:Landroid/view/View;

.field mServedConnecting:Z

.field mServedInputConnection:Landroid/view/inputmethod/InputConnection;

.field mServedView:Landroid/view/View;

.field final mService:Lcom/android/internal/view/IInputMethodManager;

.field mTmpCursorRect:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 198
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/view/inputmethod/InputMethodManager;->mInstanceSync:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Lcom/android/internal/view/IInputMethodManager;Landroid/os/Looper;)V
    .locals 2
    .parameter "service"
    .parameter "looper"

    .prologue
    const/4 v1, 0x0

    .line 465
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 238
    iput-boolean v1, p0, Landroid/view/inputmethod/InputMethodManager;->mActive:Z

    .line 244
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/inputmethod/InputMethodManager;->mHasBeenInactive:Z

    .line 289
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mTmpCursorRect:Landroid/graphics/Rect;

    .line 290
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorRect:Landroid/graphics/Rect;

    .line 301
    const/4 v0, -0x1

    iput v0, p0, Landroid/view/inputmethod/InputMethodManager;->mBindSequence:I

    .line 426
    new-instance v0, Landroid/view/inputmethod/InputMethodManager$1;

    invoke-direct {v0, p0}, Landroid/view/inputmethod/InputMethodManager$1;-><init>(Landroid/view/inputmethod/InputMethodManager;)V

    iput-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mClient:Lcom/android/internal/view/IInputMethodClient$Stub;

    .line 463
    new-instance v0, Landroid/view/inputmethod/BaseInputConnection;

    invoke-direct {v0, p0, v1}, Landroid/view/inputmethod/BaseInputConnection;-><init>(Landroid/view/inputmethod/InputMethodManager;Z)V

    iput-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mDummyInputConnection:Landroid/view/inputmethod/InputConnection;

    .line 466
    iput-object p1, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    .line 467
    iput-object p2, p0, Landroid/view/inputmethod/InputMethodManager;->mMainLooper:Landroid/os/Looper;

    .line 468
    new-instance v0, Landroid/view/inputmethod/InputMethodManager$H;

    invoke-direct {v0, p0, p2}, Landroid/view/inputmethod/InputMethodManager$H;-><init>(Landroid/view/inputmethod/InputMethodManager;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    .line 469
    new-instance v0, Landroid/view/inputmethod/InputMethodManager$ControlledInputConnectionWrapper;

    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mDummyInputConnection:Landroid/view/inputmethod/InputConnection;

    invoke-direct {v0, p2, v1, p0}, Landroid/view/inputmethod/InputMethodManager$ControlledInputConnectionWrapper;-><init>(Landroid/os/Looper;Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/InputMethodManager;)V

    iput-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mIInputContext:Lcom/android/internal/view/IInputContext;

    .line 472
    sget-object v0, Landroid/view/inputmethod/InputMethodManager;->mInstance:Landroid/view/inputmethod/InputMethodManager;

    if-nez v0, :cond_0

    .line 473
    sput-object p0, Landroid/view/inputmethod/InputMethodManager;->mInstance:Landroid/view/inputmethod/InputMethodManager;

    .line 475
    :cond_0
    return-void
.end method

.method private checkFocusNoStartInput(Z)Z
    .locals 6
    .parameter "forceNewFocus"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1174
    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    iget-object v4, p0, Landroid/view/inputmethod/InputMethodManager;->mNextServedView:Landroid/view/View;

    if-ne v3, v4, :cond_0

    if-nez p1, :cond_0

    .line 1208
    :goto_0
    return v1

    .line 1178
    :cond_0
    const/4 v0, 0x0

    .line 1179
    .local v0, ic:Landroid/view/inputmethod/InputConnection;
    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v3

    .line 1180
    :try_start_0
    iget-object v4, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    iget-object v5, p0, Landroid/view/inputmethod/InputMethodManager;->mNextServedView:Landroid/view/View;

    if-ne v4, v5, :cond_1

    if-nez p1, :cond_1

    .line 1181
    monitor-exit v3

    goto :goto_0

    .line 1202
    :catchall_0
    move-exception v1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1187
    :cond_1
    :try_start_1
    iget-object v4, p0, Landroid/view/inputmethod/InputMethodManager;->mNextServedView:Landroid/view/View;

    if-nez v4, :cond_2

    .line 1188
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->finishInputLocked()V

    .line 1192
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->closeCurrentInput()V

    .line 1193
    monitor-exit v3

    goto :goto_0

    .line 1196
    :cond_2
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnection:Landroid/view/inputmethod/InputConnection;

    .line 1198
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mNextServedView:Landroid/view/View;

    iput-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    .line 1199
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCurrentTextBoxAttribute:Landroid/view/inputmethod/EditorInfo;

    .line 1200
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCompletions:[Landroid/view/inputmethod/CompletionInfo;

    .line 1201
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/view/inputmethod/InputMethodManager;->mServedConnecting:Z

    .line 1202
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1204
    if-eqz v0, :cond_3

    .line 1205
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    :cond_3
    move v1, v2

    .line 1208
    goto :goto_0
.end method

.method public static getInstance(Landroid/content/Context;)Landroid/view/inputmethod/InputMethodManager;
    .locals 1
    .parameter "context"

    .prologue
    .line 483
    invoke-virtual {p0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {v0}, Landroid/view/inputmethod/InputMethodManager;->getInstance(Landroid/os/Looper;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Landroid/os/Looper;)Landroid/view/inputmethod/InputMethodManager;
    .locals 4
    .parameter "mainLooper"

    .prologue
    .line 492
    sget-object v3, Landroid/view/inputmethod/InputMethodManager;->mInstanceSync:Ljava/lang/Object;

    monitor-enter v3

    .line 493
    :try_start_0
    sget-object v2, Landroid/view/inputmethod/InputMethodManager;->mInstance:Landroid/view/inputmethod/InputMethodManager;

    if-eqz v2, :cond_0

    .line 494
    sget-object v2, Landroid/view/inputmethod/InputMethodManager;->mInstance:Landroid/view/inputmethod/InputMethodManager;

    monitor-exit v3

    .line 500
    :goto_0
    return-object v2

    .line 496
    :cond_0
    const-string v2, "input_method"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 497
    .local v0, b:Landroid/os/IBinder;
    invoke-static {v0}, Lcom/android/internal/view/IInputMethodManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputMethodManager;

    move-result-object v1

    .line 498
    .local v1, service:Lcom/android/internal/view/IInputMethodManager;
    new-instance v2, Landroid/view/inputmethod/InputMethodManager;

    invoke-direct {v2, v1, p0}, Landroid/view/inputmethod/InputMethodManager;-><init>(Lcom/android/internal/view/IInputMethodManager;Landroid/os/Looper;)V

    sput-object v2, Landroid/view/inputmethod/InputMethodManager;->mInstance:Landroid/view/inputmethod/InputMethodManager;

    .line 499
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 500
    sget-object v2, Landroid/view/inputmethod/InputMethodManager;->mInstance:Landroid/view/inputmethod/InputMethodManager;

    goto :goto_0

    .line 499
    .end local v0           #b:Landroid/os/IBinder;
    .end local v1           #service:Lcom/android/internal/view/IInputMethodManager;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public static peekInstance()Landroid/view/inputmethod/InputMethodManager;
    .locals 1

    .prologue
    .line 509
    sget-object v0, Landroid/view/inputmethod/InputMethodManager;->mInstance:Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method


# virtual methods
.method public checkFocus()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1167
    invoke-direct {p0, v1}, Landroid/view/inputmethod/InputMethodManager;->checkFocusNoStartInput(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1168
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1, v1, v1}, Landroid/view/inputmethod/InputMethodManager;->startInputInner(Landroid/os/IBinder;III)Z

    .line 1170
    :cond_0
    return-void
.end method

.method clearBindingLocked()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 648
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->clearConnectionLocked()V

    .line 649
    const/4 v0, -0x1

    iput v0, p0, Landroid/view/inputmethod/InputMethodManager;->mBindSequence:I

    .line 650
    iput-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCurId:Ljava/lang/String;

    .line 651
    iput-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCurMethod:Lcom/android/internal/view/IInputMethodSession;

    .line 652
    return-void
.end method

.method clearConnectionLocked()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 659
    iput-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCurrentTextBoxAttribute:Landroid/view/inputmethod/EditorInfo;

    .line 660
    iput-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnection:Landroid/view/inputmethod/InputConnection;

    .line 661
    return-void
.end method

.method closeCurrentInput()V
    .locals 4

    .prologue
    .line 1213
    :try_start_0
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mClient:Lcom/android/internal/view/IInputMethodClient$Stub;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/view/IInputMethodManager;->hideSoftInput(Lcom/android/internal/view/IInputMethodClient;ILandroid/os/ResultReceiver;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1216
    :goto_0
    return-void

    .line 1214
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public dispatchKeyEvent(Landroid/content/Context;ILandroid/view/KeyEvent;Lcom/android/internal/view/IInputMethodCallback;)V
    .locals 5
    .parameter "context"
    .parameter "seq"
    .parameter "key"
    .parameter "callback"

    .prologue
    .line 1474
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v2

    .line 1477
    :try_start_0
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCurMethod:Lcom/android/internal/view/IInputMethodSession;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 1479
    const/4 v1, 0x0

    :try_start_1
    invoke-interface {p4, p2, v1}, Lcom/android/internal/view/IInputMethodCallback;->finishedEvent(IZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2

    .line 1482
    :goto_0
    :try_start_2
    monitor-exit v2

    .line 1507
    :goto_1
    return-void

    .line 1485
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x111003a

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1486
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/16 v3, 0x3f

    if-ne v1, v3, :cond_1

    .line 1488
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->showInputMethodPicker()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1490
    const/4 v1, 0x1

    :try_start_3
    invoke-interface {p4, p2, v1}, Lcom/android/internal/view/IInputMethodCallback;->finishedEvent(IZ)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    .line 1493
    :goto_2
    :try_start_4
    monitor-exit v2

    goto :goto_1

    .line 1506
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1

    .line 1498
    :cond_1
    :try_start_5
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCurMethod:Lcom/android/internal/view/IInputMethodSession;

    invoke-interface {v1, p2, p3, p4}, Lcom/android/internal/view/IInputMethodSession;->dispatchKeyEvent(ILandroid/view/KeyEvent;Lcom/android/internal/view/IInputMethodCallback;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0

    .line 1506
    :goto_3
    :try_start_6
    monitor-exit v2

    goto :goto_1

    .line 1499
    :catch_0
    move-exception v0

    .line 1500
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "InputMethodManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IME died: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/view/inputmethod/InputMethodManager;->mCurId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " dropping: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1502
    const/4 v1, 0x0

    :try_start_7
    invoke-interface {p4, p2, v1}, Lcom/android/internal/view/IInputMethodCallback;->finishedEvent(IZ)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_3

    .line 1503
    :catch_1
    move-exception v1

    goto :goto_3

    .line 1480
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_2
    move-exception v1

    goto :goto_0

    .line 1491
    :catch_3
    move-exception v1

    goto :goto_2
.end method

.method dispatchTrackballEvent(Landroid/content/Context;ILandroid/view/MotionEvent;Lcom/android/internal/view/IInputMethodCallback;)V
    .locals 5
    .parameter "context"
    .parameter "seq"
    .parameter "motion"
    .parameter "callback"

    .prologue
    .line 1514
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v2

    .line 1517
    :try_start_0
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCurMethod:Lcom/android/internal/view/IInputMethodSession;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCurrentTextBoxAttribute:Landroid/view/inputmethod/EditorInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    .line 1519
    :cond_0
    const/4 v1, 0x0

    :try_start_1
    invoke-interface {p4, p2, v1}, Lcom/android/internal/view/IInputMethodCallback;->finishedEvent(IZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2

    .line 1522
    :goto_0
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1536
    :goto_1
    return-void

    .line 1527
    :cond_1
    :try_start_3
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCurMethod:Lcom/android/internal/view/IInputMethodSession;

    invoke-interface {v1, p2, p3, p4}, Lcom/android/internal/view/IInputMethodSession;->dispatchTrackballEvent(ILandroid/view/MotionEvent;Lcom/android/internal/view/IInputMethodCallback;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    .line 1535
    :goto_2
    :try_start_4
    monitor-exit v2

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1

    .line 1528
    :catch_0
    move-exception v0

    .line 1529
    .local v0, e:Landroid/os/RemoteException;
    :try_start_5
    const-string v1, "InputMethodManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IME died: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/view/inputmethod/InputMethodManager;->mCurId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " dropping trackball: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1531
    const/4 v1, 0x0

    :try_start_6
    invoke-interface {p4, p2, v1}, Lcom/android/internal/view/IInputMethodCallback;->finishedEvent(IZ)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_2

    .line 1532
    :catch_1
    move-exception v1

    goto :goto_2

    .line 1520
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_2
    move-exception v1

    goto :goto_0
.end method

.method public displayCompletions(Landroid/view/View;[Landroid/view/inputmethod/CompletionInfo;)V
    .locals 3
    .parameter "view"
    .parameter "completions"

    .prologue
    .line 710
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->checkFocus()V

    .line 711
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v1

    .line 712
    :try_start_0
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    if-eq v0, p1, :cond_1

    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->checkInputConnectionProxy(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 714
    :cond_0
    monitor-exit v1

    .line 725
    :goto_0
    return-void

    .line 717
    :cond_1
    iput-object p2, p0, Landroid/view/inputmethod/InputMethodManager;->mCompletions:[Landroid/view/inputmethod/CompletionInfo;

    .line 718
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCurMethod:Lcom/android/internal/view/IInputMethodSession;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    .line 720
    :try_start_1
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCurMethod:Lcom/android/internal/view/IInputMethodSession;

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mCompletions:[Landroid/view/inputmethod/CompletionInfo;

    invoke-interface {v0, v2}, Lcom/android/internal/view/IInputMethodSession;->displayCompletions([Landroid/view/inputmethod/CompletionInfo;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 724
    :cond_2
    :goto_1
    :try_start_2
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 721
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method doDump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3
    .parameter "fd"
    .parameter "fout"
    .parameter "args"

    .prologue
    .line 1687
    new-instance v0, Landroid/util/PrintWriterPrinter;

    invoke-direct {v0, p2}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    .line 1688
    .local v0, p:Landroid/util/Printer;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Input method client state for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1690
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mService="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1691
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mMainLooper="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mMainLooper:Landroid/os/Looper;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1692
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mIInputContext="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mIInputContext:Lcom/android/internal/view/IInputContext;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1693
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mActive="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/view/inputmethod/InputMethodManager;->mActive:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mHasBeenInactive="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/view/inputmethod/InputMethodManager;->mHasBeenInactive:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mBindSequence="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/inputmethod/InputMethodManager;->mBindSequence:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mCurId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mCurId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1697
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mCurMethod="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mCurMethod:Lcom/android/internal/view/IInputMethodSession;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1698
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mCurRootView="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mCurRootView:Landroid/view/View;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1699
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mServedView="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1700
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mNextServedView="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mNextServedView:Landroid/view/View;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1701
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mServedConnecting="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/view/inputmethod/InputMethodManager;->mServedConnecting:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1702
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCurrentTextBoxAttribute:Landroid/view/inputmethod/EditorInfo;

    if-eqz v1, :cond_0

    .line 1703
    const-string v1, "  mCurrentTextBoxAttribute:"

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1704
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCurrentTextBoxAttribute:Landroid/view/inputmethod/EditorInfo;

    const-string v2, "    "

    invoke-virtual {v1, v0, v2}, Landroid/view/inputmethod/EditorInfo;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    .line 1708
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mServedInputConnection="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnection:Landroid/view/inputmethod/InputConnection;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1709
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mCompletions="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mCompletions:[Landroid/view/inputmethod/CompletionInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1710
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mCursorRect="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1711
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mCursorSelStart="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorSelStart:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mCursorSelEnd="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorSelEnd:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mCursorCandStart="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorCandStart:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mCursorCandEnd="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorCandEnd:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1715
    return-void

    .line 1706
    :cond_0
    const-string v1, "  mCurrentTextBoxAttribute: null"

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method finishInputLocked()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 667
    iput-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mNextServedView:Landroid/view/View;

    .line 668
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    if-eqz v1, :cond_2

    .line 671
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCurrentTextBoxAttribute:Landroid/view/inputmethod/EditorInfo;

    if-eqz v1, :cond_0

    .line 673
    :try_start_0
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mClient:Lcom/android/internal/view/IInputMethodClient$Stub;

    invoke-interface {v1, v2}, Lcom/android/internal/view/IInputMethodManager;->finishInput(Lcom/android/internal/view/IInputMethodClient;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 678
    :cond_0
    :goto_0
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnection:Landroid/view/inputmethod/InputConnection;

    if-eqz v1, :cond_1

    .line 683
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 684
    .local v0, vh:Landroid/os/Handler;
    if-eqz v0, :cond_1

    .line 687
    const/16 v1, 0x3f4

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnection:Landroid/view/inputmethod/InputConnection;

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 692
    .end local v0           #vh:Landroid/os/Handler;
    :cond_1
    iput-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    .line 693
    iput-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mCompletions:[Landroid/view/inputmethod/CompletionInfo;

    .line 694
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/view/inputmethod/InputMethodManager;->mServedConnecting:Z

    .line 695
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->clearConnectionLocked()V

    .line 697
    :cond_2
    return-void

    .line 674
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public focusIn(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 1113
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v1

    .line 1114
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/view/inputmethod/InputMethodManager;->focusInLocked(Landroid/view/View;)V

    .line 1115
    monitor-exit v1

    .line 1116
    return-void

    .line 1115
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method focusInLocked(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 1121
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCurRootView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 1130
    :goto_0
    return-void

    .line 1128
    :cond_0
    iput-object p1, p0, Landroid/view/inputmethod/InputMethodManager;->mNextServedView:Landroid/view/View;

    .line 1129
    invoke-virtual {p0, p1}, Landroid/view/inputmethod/InputMethodManager;->scheduleCheckFocusLocked(Landroid/view/View;)V

    goto :goto_0
.end method

.method public focusOut(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 1137
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v1

    .line 1141
    :try_start_0
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    if-eq v0, p1, :cond_0

    .line 1152
    :cond_0
    monitor-exit v1

    .line 1153
    return-void

    .line 1152
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getClient()Lcom/android/internal/view/IInputMethodClient;
    .locals 1

    .prologue
    .line 514
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mClient:Lcom/android/internal/view/IInputMethodClient$Stub;

    return-object v0
.end method

.method public getCurrentInputMethodSubtype()Landroid/view/inputmethod/InputMethodSubtype;
    .locals 5

    .prologue
    .line 1569
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v2

    .line 1571
    :try_start_0
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    invoke-interface {v1}, Lcom/android/internal/view/IInputMethodManager;->getCurrentInputMethodSubtype()Landroid/view/inputmethod/InputMethodSubtype;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :try_start_1
    monitor-exit v2

    .line 1574
    :goto_0
    return-object v1

    .line 1572
    :catch_0
    move-exception v0

    .line 1573
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "InputMethodManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IME died: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/view/inputmethod/InputMethodManager;->mCurId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1574
    const/4 v1, 0x0

    monitor-exit v2

    goto :goto_0

    .line 1576
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public getEnabledInputMethodList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 532
    :try_start_0
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    invoke-interface {v1}, Lcom/android/internal/view/IInputMethodManager;->getEnabledInputMethodList()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 533
    :catch_0
    move-exception v0

    .line 534
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getEnabledInputMethodSubtypeList(Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;
    .locals 2
    .parameter "imi"
    .parameter "allowsImplicitlySelectedSubtypes"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/inputmethod/InputMethodInfo;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Landroid/view/inputmethod/InputMethodSubtype;",
            ">;"
        }
    .end annotation

    .prologue
    .line 548
    :try_start_0
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    invoke-interface {v1, p1, p2}, Lcom/android/internal/view/IInputMethodManager;->getEnabledInputMethodSubtypeList(Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 549
    :catch_0
    move-exception v0

    .line 550
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getInputContext()Lcom/android/internal/view/IInputContext;
    .locals 1

    .prologue
    .line 519
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mIInputContext:Lcom/android/internal/view/IInputContext;

    return-object v0
.end method

.method public getInputMethodList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 524
    :try_start_0
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    invoke-interface {v1}, Lcom/android/internal/view/IInputMethodManager;->getInputMethodList()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 525
    :catch_0
    move-exception v0

    .line 526
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getLastInputMethodSubtype()Landroid/view/inputmethod/InputMethodSubtype;
    .locals 5

    .prologue
    .line 1676
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v2

    .line 1678
    :try_start_0
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    invoke-interface {v1}, Lcom/android/internal/view/IInputMethodManager;->getLastInputMethodSubtype()Landroid/view/inputmethod/InputMethodSubtype;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :try_start_1
    monitor-exit v2

    .line 1681
    :goto_0
    return-object v1

    .line 1679
    :catch_0
    move-exception v0

    .line 1680
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "InputMethodManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IME died: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/view/inputmethod/InputMethodManager;->mCurId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1681
    const/4 v1, 0x0

    monitor-exit v2

    goto :goto_0

    .line 1683
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public getShortcutInputMethodsAndSubtypes()Ljava/util/Map;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            "Ljava/util/List",
            "<",
            "Landroid/view/inputmethod/InputMethodSubtype;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 1600
    iget-object v8, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v8

    .line 1601
    :try_start_0
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1605
    .local v5, ret:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/view/inputmethod/InputMethodInfo;Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;>;"
    :try_start_1
    iget-object v7, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    invoke-interface {v7}, Lcom/android/internal/view/IInputMethodManager;->getShortcutInputMethodsAndSubtypes()Ljava/util/List;

    move-result-object v3

    .line 1607
    .local v3, info:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Object;>;"
    const/4 v6, 0x0

    .line 1608
    .local v6, subtypes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    .line 1609
    .local v0, N:I
    if-eqz v3, :cond_0

    if-lez v0, :cond_0

    .line 1610
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 1611
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 1612
    .local v4, o:Ljava/lang/Object;
    instance-of v7, v4, Landroid/view/inputmethod/InputMethodInfo;

    if-eqz v7, :cond_3

    .line 1613
    invoke-virtual {v5, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1614
    const-string v7, "InputMethodManager"

    const-string v9, "IMI list already contains the same InputMethod."

    invoke-static {v7, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1627
    .end local v0           #N:I
    .end local v2           #i:I
    .end local v3           #info:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Object;>;"
    .end local v4           #o:Ljava/lang/Object;
    .end local v6           #subtypes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    :cond_0
    :goto_1
    :try_start_2
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-object v5

    .line 1617
    .restart local v0       #N:I
    .restart local v2       #i:I
    .restart local v3       #info:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Object;>;"
    .restart local v4       #o:Ljava/lang/Object;
    .restart local v6       #subtypes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    :cond_1
    :try_start_3
    new-instance v6, Ljava/util/ArrayList;

    .end local v6           #subtypes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1618
    .restart local v6       #subtypes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    check-cast v4, Landroid/view/inputmethod/InputMethodInfo;

    .end local v4           #o:Ljava/lang/Object;
    invoke-virtual {v5, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1610
    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1619
    .restart local v4       #o:Ljava/lang/Object;
    :cond_3
    if-eqz v6, :cond_2

    instance-of v7, v4, Landroid/view/inputmethod/InputMethodSubtype;

    if-eqz v7, :cond_2

    .line 1620
    check-cast v4, Landroid/view/inputmethod/InputMethodSubtype;

    .end local v4           #o:Ljava/lang/Object;
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    .line 1624
    .end local v0           #N:I
    .end local v2           #i:I
    .end local v3           #info:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Object;>;"
    .end local v6           #subtypes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    :catch_0
    move-exception v1

    .line 1625
    .local v1, e:Landroid/os/RemoteException;
    :try_start_4
    const-string v7, "InputMethodManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "IME died: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Landroid/view/inputmethod/InputMethodManager;->mCurId:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1628
    .end local v1           #e:Landroid/os/RemoteException;
    .end local v5           #ret:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/view/inputmethod/InputMethodInfo;Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;>;"
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v7
.end method

.method public hideSoftInputFromInputMethod(Landroid/os/IBinder;I)V
    .locals 2
    .parameter "token"
    .parameter "flags"

    .prologue
    .line 1442
    :try_start_0
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    invoke-interface {v1, p1, p2}, Lcom/android/internal/view/IInputMethodManager;->hideMySoftInput(Landroid/os/IBinder;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1446
    return-void

    .line 1443
    :catch_0
    move-exception v0

    .line 1444
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public hideSoftInputFromWindow(Landroid/os/IBinder;I)Z
    .locals 1
    .parameter "windowToken"
    .parameter "flags"

    .prologue
    .line 870
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;ILandroid/os/ResultReceiver;)Z

    move-result v0

    return v0
.end method

.method public hideSoftInputFromWindow(Landroid/os/IBinder;ILandroid/os/ResultReceiver;)Z
    .locals 4
    .parameter "windowToken"
    .parameter "flags"
    .parameter "resultReceiver"

    .prologue
    const/4 v0, 0x0

    .line 891
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->checkFocus()V

    .line 892
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v1

    .line 893
    :try_start_0
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    if-eq v2, p1, :cond_1

    .line 894
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 901
    :goto_0
    return v0

    .line 898
    :cond_1
    :try_start_1
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mClient:Lcom/android/internal/view/IInputMethodClient$Stub;

    invoke-interface {v2, v3, p2, p3}, Lcom/android/internal/view/IInputMethodManager;->hideSoftInput(Lcom/android/internal/view/IInputMethodClient;ILandroid/os/ResultReceiver;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    :try_start_2
    monitor-exit v1

    goto :goto_0

    .line 902
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 899
    :catch_0
    move-exception v2

    .line 901
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public hideStatusIcon(Landroid/os/IBinder;)V
    .locals 4
    .parameter "imeToken"

    .prologue
    .line 564
    :try_start_0
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v1, p1, v2, v3}, Lcom/android/internal/view/IInputMethodManager;->updateStatusIcon(Landroid/os/IBinder;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 568
    return-void

    .line 565
    :catch_0
    move-exception v0

    .line 566
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public isAcceptingText()Z
    .locals 1

    .prologue
    .line 640
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->checkFocus()V

    .line 641
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnection:Landroid/view/inputmethod/InputConnection;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isActive()Z
    .locals 2

    .prologue
    .line 629
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->checkFocus()V

    .line 630
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v1

    .line 631
    :try_start_0
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCurrentTextBoxAttribute:Landroid/view/inputmethod/EditorInfo;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 632
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isActive(Landroid/view/View;)Z
    .locals 2
    .parameter "view"

    .prologue
    .line 616
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->checkFocus()V

    .line 617
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v1

    .line 618
    :try_start_0
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->checkInputConnectionProxy(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCurrentTextBoxAttribute:Landroid/view/inputmethod/EditorInfo;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 622
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isFullscreenMode()Z
    .locals 1

    .prologue
    .line 608
    iget-boolean v0, p0, Landroid/view/inputmethod/InputMethodManager;->mFullscreenMode:Z

    return v0
.end method

.method public isWatchingCursor(Landroid/view/View;)Z
    .locals 1
    .parameter "view"

    .prologue
    .line 1337
    const/4 v0, 0x0

    return v0
.end method

.method public notifySuggestionPicked(Landroid/text/style/SuggestionSpan;Ljava/lang/String;I)V
    .locals 2
    .parameter "span"
    .parameter "originalString"
    .parameter "index"

    .prologue
    .line 596
    :try_start_0
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    invoke-interface {v1, p1, p2, p3}, Lcom/android/internal/view/IInputMethodManager;->notifySuggestionPicked(Landroid/text/style/SuggestionSpan;Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 600
    return-void

    .line 597
    :catch_0
    move-exception v0

    .line 598
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public onWindowFocus(Landroid/view/View;Landroid/view/View;IZI)V
    .locals 10
    .parameter "rootView"
    .parameter "focusedView"
    .parameter "softInputMode"
    .parameter "first"
    .parameter "windowFlags"

    .prologue
    .line 1224
    const/4 v8, 0x0

    .line 1225
    .local v8, forceNewFocus:Z
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v1

    .line 1230
    :try_start_0
    iget-boolean v0, p0, Landroid/view/inputmethod/InputMethodManager;->mHasBeenInactive:Z

    if-eqz v0, :cond_0

    .line 1232
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/inputmethod/InputMethodManager;->mHasBeenInactive:Z

    .line 1233
    const/4 v8, 0x1

    .line 1235
    :cond_0
    if-eqz p2, :cond_3

    move-object v0, p2

    :goto_0
    invoke-virtual {p0, v0}, Landroid/view/inputmethod/InputMethodManager;->focusInLocked(Landroid/view/View;)V

    .line 1236
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1238
    const/4 v3, 0x0

    .line 1239
    .local v3, controlFlags:I
    if-eqz p2, :cond_1

    .line 1240
    or-int/lit8 v3, v3, 0x1

    .line 1241
    invoke-virtual {p2}, Landroid/view/View;->onCheckIsTextEditor()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1242
    or-int/lit8 v3, v3, 0x2

    .line 1245
    :cond_1
    if-eqz p4, :cond_2

    .line 1246
    or-int/lit8 v3, v3, 0x4

    .line 1249
    :cond_2
    invoke-direct {p0, v8}, Landroid/view/inputmethod/InputMethodManager;->checkFocusNoStartInput(Z)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1254
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p0, v0, v3, p3, p5}, Landroid/view/inputmethod/InputMethodManager;->startInputInner(Landroid/os/IBinder;III)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1269
    :goto_1
    return-void

    .end local v3           #controlFlags:I
    :cond_3
    move-object v0, p1

    .line 1235
    goto :goto_0

    .line 1236
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 1262
    .restart local v3       #controlFlags:I
    :cond_4
    iget-object v9, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v9

    .line 1264
    :try_start_2
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mClient:Lcom/android/internal/view/IInputMethodClient$Stub;

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v4, p3

    move v5, p5

    invoke-interface/range {v0 .. v7}, Lcom/android/internal/view/IInputMethodManager;->windowGainedFocus(Lcom/android/internal/view/IInputMethodClient;Landroid/os/IBinder;IIILandroid/view/inputmethod/EditorInfo;Lcom/android/internal/view/IInputContext;)Lcom/android/internal/view/InputBindResult;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1268
    :goto_2
    :try_start_3
    monitor-exit v9

    goto :goto_1

    :catchall_1
    move-exception v0

    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    .line 1266
    :catch_0
    move-exception v0

    goto :goto_2
.end method

.method public registerSuggestionSpansForNotification([Landroid/text/style/SuggestionSpan;)V
    .locals 2
    .parameter "spans"

    .prologue
    .line 587
    :try_start_0
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    invoke-interface {v1, p1}, Lcom/android/internal/view/IInputMethodManager;->registerSuggestionSpansForNotification([Landroid/text/style/SuggestionSpan;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 591
    return-void

    .line 588
    :catch_0
    move-exception v0

    .line 589
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public reportFinishInputConnection(Landroid/view/inputmethod/InputConnection;)V
    .locals 1
    .parameter "ic"

    .prologue
    .line 704
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnection:Landroid/view/inputmethod/InputConnection;

    if-eq v0, p1, :cond_0

    .line 705
    invoke-interface {p1}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 707
    :cond_0
    return-void
.end method

.method public restartInput(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    const/4 v2, 0x0

    .line 963
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->checkFocus()V

    .line 964
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v1

    .line 965
    :try_start_0
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    if-eq v0, p1, :cond_1

    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->checkInputConnectionProxy(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 967
    :cond_0
    monitor-exit v1

    .line 974
    :goto_0
    return-void

    .line 970
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/inputmethod/InputMethodManager;->mServedConnecting:Z

    .line 971
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 973
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v2, v2, v2}, Landroid/view/inputmethod/InputMethodManager;->startInputInner(Landroid/os/IBinder;III)Z

    goto :goto_0

    .line 971
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method scheduleCheckFocusLocked(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    const/16 v2, 0x3f5

    .line 1156
    invoke-virtual {p1}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 1157
    .local v0, vh:Landroid/os/Handler;
    if-eqz v0, :cond_0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1159
    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1161
    :cond_0
    return-void
.end method

.method public sendAppPrivateCommand(Landroid/view/View;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 5
    .parameter "view"
    .parameter "action"
    .parameter "data"

    .prologue
    .line 1379
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->checkFocus()V

    .line 1380
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v2

    .line 1381
    :try_start_0
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    if-eq v1, p1, :cond_0

    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->checkInputConnectionProxy(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCurrentTextBoxAttribute:Landroid/view/inputmethod/EditorInfo;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCurMethod:Lcom/android/internal/view/IInputMethodSession;

    if-nez v1, :cond_2

    .line 1384
    :cond_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1393
    :goto_0
    return-void

    .line 1388
    :cond_2
    :try_start_1
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCurMethod:Lcom/android/internal/view/IInputMethodSession;

    invoke-interface {v1, p2, p3}, Lcom/android/internal/view/IInputMethodSession;->appPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1392
    :goto_1
    :try_start_2
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 1389
    :catch_0
    move-exception v0

    .line 1390
    .local v0, e:Landroid/os/RemoteException;
    :try_start_3
    const-string v1, "InputMethodManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IME died: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/view/inputmethod/InputMethodManager;->mCurId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public setAdditionalInputMethodSubtypes(Ljava/lang/String;[Landroid/view/inputmethod/InputMethodSubtype;)V
    .locals 5
    .parameter "imiId"
    .parameter "subtypes"

    .prologue
    .line 1666
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v2

    .line 1668
    :try_start_0
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    invoke-interface {v1, p1, p2}, Lcom/android/internal/view/IInputMethodManager;->setAdditionalInputMethodSubtypes(Ljava/lang/String;[Landroid/view/inputmethod/InputMethodSubtype;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1672
    :goto_0
    :try_start_1
    monitor-exit v2

    .line 1673
    return-void

    .line 1669
    :catch_0
    move-exception v0

    .line 1670
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "InputMethodManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IME died: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/view/inputmethod/InputMethodManager;->mCurId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1672
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public setCurrentInputMethodSubtype(Landroid/view/inputmethod/InputMethodSubtype;)Z
    .locals 5
    .parameter "subtype"

    .prologue
    .line 1586
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v2

    .line 1588
    :try_start_0
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    invoke-interface {v1, p1}, Lcom/android/internal/view/IInputMethodManager;->setCurrentInputMethodSubtype(Landroid/view/inputmethod/InputMethodSubtype;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :try_start_1
    monitor-exit v2

    .line 1591
    :goto_0
    return v1

    .line 1589
    :catch_0
    move-exception v0

    .line 1590
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "InputMethodManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IME died: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/view/inputmethod/InputMethodManager;->mCurId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1591
    const/4 v1, 0x0

    monitor-exit v2

    goto :goto_0

    .line 1593
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public setFullscreenMode(Z)V
    .locals 0
    .parameter "fullScreen"

    .prologue
    .line 581
    iput-boolean p1, p0, Landroid/view/inputmethod/InputMethodManager;->mFullscreenMode:Z

    .line 582
    return-void
.end method

.method public setImeWindowStatus(Landroid/os/IBinder;II)V
    .locals 2
    .parameter "imeToken"
    .parameter "vis"
    .parameter "backDisposition"

    .prologue
    .line 573
    :try_start_0
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    invoke-interface {v1, p1, p2, p3}, Lcom/android/internal/view/IInputMethodManager;->setImeWindowStatus(Landroid/os/IBinder;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 577
    return-void

    .line 574
    :catch_0
    move-exception v0

    .line 575
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setInputMethod(Landroid/os/IBinder;Ljava/lang/String;)V
    .locals 2
    .parameter "token"
    .parameter "id"

    .prologue
    .line 1405
    :try_start_0
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    invoke-interface {v1, p1, p2}, Lcom/android/internal/view/IInputMethodManager;->setInputMethod(Landroid/os/IBinder;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1409
    return-void

    .line 1406
    :catch_0
    move-exception v0

    .line 1407
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setInputMethodAndSubtype(Landroid/os/IBinder;Ljava/lang/String;Landroid/view/inputmethod/InputMethodSubtype;)V
    .locals 2
    .parameter "token"
    .parameter "id"
    .parameter "subtype"

    .prologue
    .line 1422
    :try_start_0
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    invoke-interface {v1, p1, p2, p3}, Lcom/android/internal/view/IInputMethodManager;->setInputMethodAndSubtype(Landroid/os/IBinder;Ljava/lang/String;Landroid/view/inputmethod/InputMethodSubtype;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1426
    return-void

    .line 1423
    :catch_0
    move-exception v0

    .line 1424
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public showInputMethodAndSubtypeEnabler(Ljava/lang/String;)V
    .locals 5
    .parameter "imiId"

    .prologue
    .line 1554
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v2

    .line 1556
    :try_start_0
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mClient:Lcom/android/internal/view/IInputMethodClient$Stub;

    invoke-interface {v1, v3, p1}, Lcom/android/internal/view/IInputMethodManager;->showInputMethodAndSubtypeEnablerFromClient(Lcom/android/internal/view/IInputMethodClient;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1560
    :goto_0
    :try_start_1
    monitor-exit v2

    .line 1561
    return-void

    .line 1557
    :catch_0
    move-exception v0

    .line 1558
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "InputMethodManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IME died: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/view/inputmethod/InputMethodManager;->mCurId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1560
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public showInputMethodPicker()V
    .locals 5

    .prologue
    .line 1539
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v2

    .line 1541
    :try_start_0
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mClient:Lcom/android/internal/view/IInputMethodClient$Stub;

    invoke-interface {v1, v3}, Lcom/android/internal/view/IInputMethodManager;->showInputMethodPickerFromClient(Lcom/android/internal/view/IInputMethodClient;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1545
    :goto_0
    :try_start_1
    monitor-exit v2

    .line 1546
    return-void

    .line 1542
    :catch_0
    move-exception v0

    .line 1543
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "InputMethodManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IME died: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/view/inputmethod/InputMethodManager;->mCurId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1545
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public showSoftInput(Landroid/view/View;I)Z
    .locals 1
    .parameter "view"
    .parameter "flags"

    .prologue
    .line 769
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;ILandroid/os/ResultReceiver;)Z

    move-result v0

    return v0
.end method

.method public showSoftInput(Landroid/view/View;ILandroid/os/ResultReceiver;)Z
    .locals 4
    .parameter "view"
    .parameter "flags"
    .parameter "resultReceiver"

    .prologue
    const/4 v0, 0x0

    .line 821
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->checkFocus()V

    .line 822
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v1

    .line 823
    :try_start_0
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    if-eq v2, p1, :cond_1

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    invoke-virtual {v2, p1}, Landroid/view/View;->checkInputConnectionProxy(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 825
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 833
    :goto_0
    return v0

    .line 829
    :cond_1
    :try_start_1
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mClient:Lcom/android/internal/view/IInputMethodClient$Stub;

    invoke-interface {v2, v3, p2, p3}, Lcom/android/internal/view/IInputMethodManager;->showSoftInput(Lcom/android/internal/view/IInputMethodClient;ILandroid/os/ResultReceiver;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    :try_start_2
    monitor-exit v1

    goto :goto_0

    .line 834
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 830
    :catch_0
    move-exception v2

    .line 833
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public showSoftInputFromInputMethod(Landroid/os/IBinder;I)V
    .locals 2
    .parameter "token"
    .parameter "flags"

    .prologue
    .line 1463
    :try_start_0
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    invoke-interface {v1, p1, p2}, Lcom/android/internal/view/IInputMethodManager;->showMySoftInput(Landroid/os/IBinder;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1467
    return-void

    .line 1464
    :catch_0
    move-exception v0

    .line 1465
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public showSoftInputUnchecked(ILandroid/os/ResultReceiver;)V
    .locals 2
    .parameter "flags"
    .parameter "resultReceiver"

    .prologue
    .line 840
    :try_start_0
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mClient:Lcom/android/internal/view/IInputMethodClient$Stub;

    invoke-interface {v0, v1, p1, p2}, Lcom/android/internal/view/IInputMethodManager;->showSoftInput(Lcom/android/internal/view/IInputMethodClient;ILandroid/os/ResultReceiver;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 843
    :goto_0
    return-void

    .line 841
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public showStatusIcon(Landroid/os/IBinder;Ljava/lang/String;I)V
    .locals 2
    .parameter "imeToken"
    .parameter "packageName"
    .parameter "iconId"

    .prologue
    .line 556
    :try_start_0
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    invoke-interface {v1, p1, p2, p3}, Lcom/android/internal/view/IInputMethodManager;->updateStatusIcon(Landroid/os/IBinder;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 560
    return-void

    .line 557
    :catch_0
    move-exception v0

    .line 558
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public startGettingWindowFocus(Landroid/view/View;)V
    .locals 2
    .parameter "rootView"

    .prologue
    .line 1273
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v1

    .line 1274
    :try_start_0
    iput-object p1, p0, Landroid/view/inputmethod/InputMethodManager;->mCurRootView:Landroid/view/View;

    .line 1275
    monitor-exit v1

    .line 1276
    return-void

    .line 1275
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method startInputInner(Landroid/os/IBinder;III)Z
    .locals 15
    .parameter "windowGainingFocus"
    .parameter "controlFlags"
    .parameter "softInputMode"
    .parameter "windowFlags"

    .prologue
    .line 979
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v2

    .line 980
    :try_start_0
    iget-object v13, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    .line 984
    .local v13, view:Landroid/view/View;
    if-nez v13, :cond_0

    .line 986
    const/4 v1, 0x0

    monitor-exit v2

    .line 1090
    :goto_0
    return v1

    .line 988
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 994
    invoke-virtual {v13}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v12

    .line 995
    .local v12, vh:Landroid/os/Handler;
    if-nez v12, :cond_1

    .line 999
    const/4 v1, 0x0

    goto :goto_0

    .line 988
    .end local v12           #vh:Landroid/os/Handler;
    .end local v13           #view:Landroid/view/View;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 1001
    .restart local v12       #vh:Landroid/os/Handler;
    .restart local v13       #view:Landroid/view/View;
    :cond_1
    invoke-virtual {v12}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    if-eq v1, v2, :cond_2

    .line 1005
    new-instance v1, Landroid/view/inputmethod/InputMethodManager$2;

    invoke-direct {v1, p0}, Landroid/view/inputmethod/InputMethodManager$2;-><init>(Landroid/view/inputmethod/InputMethodManager;)V

    invoke-virtual {v12, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1010
    const/4 v1, 0x0

    goto :goto_0

    .line 1016
    :cond_2
    new-instance v7, Landroid/view/inputmethod/EditorInfo;

    invoke-direct {v7}, Landroid/view/inputmethod/EditorInfo;-><init>()V

    .line 1017
    .local v7, tba:Landroid/view/inputmethod/EditorInfo;
    invoke-virtual {v13}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v7, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    .line 1018
    invoke-virtual {v13}, Landroid/view/View;->getId()I

    move-result v1

    iput v1, v7, Landroid/view/inputmethod/EditorInfo;->fieldId:I

    .line 1019
    invoke-virtual {v13, v7}, Landroid/view/View;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object v10

    .line 1022
    .local v10, ic:Landroid/view/inputmethod/InputConnection;
    iget-object v14, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v14

    .line 1025
    :try_start_2
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    if-ne v1, v13, :cond_3

    iget-boolean v1, p0, Landroid/view/inputmethod/InputMethodManager;->mServedConnecting:Z

    if-nez v1, :cond_4

    .line 1030
    :cond_3
    const/4 v1, 0x0

    monitor-exit v14

    goto :goto_0

    .line 1088
    :catchall_1
    move-exception v1

    monitor-exit v14
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1

    .line 1035
    :cond_4
    :try_start_3
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCurrentTextBoxAttribute:Landroid/view/inputmethod/EditorInfo;

    if-nez v1, :cond_5

    .line 1036
    move/from16 v0, p2

    or-int/lit16 v0, v0, 0x100

    move/from16 p2, v0

    .line 1040
    :cond_5
    iput-object v7, p0, Landroid/view/inputmethod/InputMethodManager;->mCurrentTextBoxAttribute:Landroid/view/inputmethod/EditorInfo;

    .line 1041
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/view/inputmethod/InputMethodManager;->mServedConnecting:Z

    .line 1042
    iput-object v10, p0, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnection:Landroid/view/inputmethod/InputConnection;

    .line 1044
    if-eqz v10, :cond_8

    .line 1045
    iget v1, v7, Landroid/view/inputmethod/EditorInfo;->initialSelStart:I

    iput v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorSelStart:I

    .line 1046
    iget v1, v7, Landroid/view/inputmethod/EditorInfo;->initialSelEnd:I

    iput v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorSelEnd:I

    .line 1047
    const/4 v1, -0x1

    iput v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorCandStart:I

    .line 1048
    const/4 v1, -0x1

    iput v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorCandEnd:I

    .line 1049
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    .line 1050
    new-instance v8, Landroid/view/inputmethod/InputMethodManager$ControlledInputConnectionWrapper;

    invoke-virtual {v12}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v8, v1, v10, p0}, Landroid/view/inputmethod/InputMethodManager$ControlledInputConnectionWrapper;-><init>(Landroid/os/Looper;Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/InputMethodManager;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1060
    .local v8, servedContext:Lcom/android/internal/view/IInputContext;
    :goto_1
    if-eqz p1, :cond_9

    .line 1061
    :try_start_4
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mClient:Lcom/android/internal/view/IInputMethodClient$Stub;

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    invoke-interface/range {v1 .. v8}, Lcom/android/internal/view/IInputMethodManager;->windowGainedFocus(Lcom/android/internal/view/IInputMethodClient;Landroid/os/IBinder;IIILandroid/view/inputmethod/EditorInfo;Lcom/android/internal/view/IInputContext;)Lcom/android/internal/view/InputBindResult;

    move-result-object v11

    .line 1069
    .local v11, res:Lcom/android/internal/view/InputBindResult;
    :goto_2
    if-eqz v11, :cond_6

    .line 1070
    iget-object v1, v11, Lcom/android/internal/view/InputBindResult;->id:Ljava/lang/String;

    if-eqz v1, :cond_a

    .line 1071
    iget v1, v11, Lcom/android/internal/view/InputBindResult;->sequence:I

    iput v1, p0, Landroid/view/inputmethod/InputMethodManager;->mBindSequence:I

    .line 1072
    iget-object v1, v11, Lcom/android/internal/view/InputBindResult;->method:Lcom/android/internal/view/IInputMethodSession;

    iput-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCurMethod:Lcom/android/internal/view/IInputMethodSession;

    .line 1079
    :cond_6
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCurMethod:Lcom/android/internal/view/IInputMethodSession;

    if-eqz v1, :cond_7

    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCompletions:[Landroid/view/inputmethod/CompletionInfo;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    if-eqz v1, :cond_7

    .line 1081
    :try_start_5
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCurMethod:Lcom/android/internal/view/IInputMethodSession;

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mCompletions:[Landroid/view/inputmethod/CompletionInfo;

    invoke-interface {v1, v2}, Lcom/android/internal/view/IInputMethodSession;->displayCompletions([Landroid/view/inputmethod/CompletionInfo;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1

    .line 1088
    .end local v11           #res:Lcom/android/internal/view/InputBindResult;
    :cond_7
    :goto_3
    :try_start_6
    monitor-exit v14
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 1090
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1052
    .end local v8           #servedContext:Lcom/android/internal/view/IInputContext;
    :cond_8
    const/4 v8, 0x0

    .restart local v8       #servedContext:Lcom/android/internal/view/IInputContext;
    goto :goto_1

    .line 1065
    :cond_9
    :try_start_7
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mClient:Lcom/android/internal/view/IInputMethodClient$Stub;

    move/from16 v0, p2

    invoke-interface {v1, v2, v8, v7, v0}, Lcom/android/internal/view/IInputMethodManager;->startInput(Lcom/android/internal/view/IInputMethodClient;Lcom/android/internal/view/IInputContext;Landroid/view/inputmethod/EditorInfo;I)Lcom/android/internal/view/InputBindResult;

    move-result-object v11

    .restart local v11       #res:Lcom/android/internal/view/InputBindResult;
    goto :goto_2

    .line 1073
    :cond_a
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCurMethod:Lcom/android/internal/view/IInputMethodSession;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_0

    if-nez v1, :cond_6

    .line 1076
    const/4 v1, 0x1

    :try_start_8
    monitor-exit v14

    goto/16 :goto_0

    .line 1085
    .end local v11           #res:Lcom/android/internal/view/InputBindResult;
    :catch_0
    move-exception v9

    .line 1086
    .local v9, e:Landroid/os/RemoteException;
    const-string v1, "InputMethodManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IME died: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mCurId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_3

    .line 1082
    .end local v9           #e:Landroid/os/RemoteException;
    .restart local v11       #res:Lcom/android/internal/view/InputBindResult;
    :catch_1
    move-exception v1

    goto :goto_3
.end method

.method public switchToLastInputMethod(Landroid/os/IBinder;)Z
    .locals 5
    .parameter "imeToken"

    .prologue
    .line 1641
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v2

    .line 1643
    :try_start_0
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    invoke-interface {v1, p1}, Lcom/android/internal/view/IInputMethodManager;->switchToLastInputMethod(Landroid/os/IBinder;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :try_start_1
    monitor-exit v2

    .line 1646
    :goto_0
    return v1

    .line 1644
    :catch_0
    move-exception v0

    .line 1645
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "InputMethodManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IME died: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/view/inputmethod/InputMethodManager;->mCurId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1646
    const/4 v1, 0x0

    monitor-exit v2

    goto :goto_0

    .line 1648
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public toggleSoftInput(II)V
    .locals 1
    .parameter "showFlags"
    .parameter "hideFlags"

    .prologue
    .line 946
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCurMethod:Lcom/android/internal/view/IInputMethodSession;

    if-eqz v0, :cond_0

    .line 948
    :try_start_0
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCurMethod:Lcom/android/internal/view/IInputMethodSession;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/view/IInputMethodSession;->toggleSoftInput(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 952
    :cond_0
    :goto_0
    return-void

    .line 949
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public toggleSoftInputFromWindow(Landroid/os/IBinder;II)V
    .locals 2
    .parameter "windowToken"
    .parameter "showFlags"
    .parameter "hideFlags"

    .prologue
    .line 920
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v1

    .line 921
    :try_start_0
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eq v0, p1, :cond_1

    .line 922
    :cond_0
    monitor-exit v1

    .line 931
    :goto_0
    return-void

    .line 924
    :cond_1
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCurMethod:Lcom/android/internal/view/IInputMethodSession;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    .line 926
    :try_start_1
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCurMethod:Lcom/android/internal/view/IInputMethodSession;

    invoke-interface {v0, p2, p3}, Lcom/android/internal/view/IInputMethodSession;->toggleSoftInput(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 930
    :cond_2
    :goto_1
    :try_start_2
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 927
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public updateCursor(Landroid/view/View;IIII)V
    .locals 5
    .parameter "view"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 1344
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->checkFocus()V

    .line 1345
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v2

    .line 1346
    :try_start_0
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    if-eq v1, p1, :cond_0

    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->checkInputConnectionProxy(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCurrentTextBoxAttribute:Landroid/view/inputmethod/EditorInfo;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCurMethod:Lcom/android/internal/view/IInputMethodSession;

    if-nez v1, :cond_2

    .line 1349
    :cond_1
    monitor-exit v2

    .line 1365
    :goto_0
    return-void

    .line 1352
    :cond_2
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mTmpCursorRect:Landroid/graphics/Rect;

    invoke-virtual {v1, p2, p3, p4, p5}, Landroid/graphics/Rect;->set(IIII)V

    .line 1353
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorRect:Landroid/graphics/Rect;

    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mTmpCursorRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_3

    .line 1358
    :try_start_1
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCurMethod:Lcom/android/internal/view/IInputMethodSession;

    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mTmpCursorRect:Landroid/graphics/Rect;

    invoke-interface {v1, v3}, Lcom/android/internal/view/IInputMethodSession;->updateCursor(Landroid/graphics/Rect;)V

    .line 1359
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorRect:Landroid/graphics/Rect;

    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mTmpCursorRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1364
    :cond_3
    :goto_1
    :try_start_2
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 1360
    :catch_0
    move-exception v0

    .line 1361
    .local v0, e:Landroid/os/RemoteException;
    :try_start_3
    const-string v1, "InputMethodManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IME died: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/view/inputmethod/InputMethodManager;->mCurId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public updateExtractedText(Landroid/view/View;ILandroid/view/inputmethod/ExtractedText;)V
    .locals 2
    .parameter "view"
    .parameter "token"
    .parameter "text"

    .prologue
    .line 728
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->checkFocus()V

    .line 729
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v1

    .line 730
    :try_start_0
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    if-eq v0, p1, :cond_1

    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->checkInputConnectionProxy(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 732
    :cond_0
    monitor-exit v1

    .line 742
    :goto_0
    return-void

    .line 735
    :cond_1
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCurMethod:Lcom/android/internal/view/IInputMethodSession;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    .line 737
    :try_start_1
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCurMethod:Lcom/android/internal/view/IInputMethodSession;

    invoke-interface {v0, p2, p3}, Lcom/android/internal/view/IInputMethodSession;->updateExtractedText(ILandroid/view/inputmethod/ExtractedText;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 741
    :cond_2
    :goto_1
    :try_start_2
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 738
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public updateSelection(Landroid/view/View;IIII)V
    .locals 9
    .parameter "view"
    .parameter "selStart"
    .parameter "selEnd"
    .parameter "candidatesStart"
    .parameter "candidatesEnd"

    .prologue
    .line 1283
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->checkFocus()V

    .line 1284
    iget-object v8, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v8

    .line 1285
    :try_start_0
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->checkInputConnectionProxy(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCurrentTextBoxAttribute:Landroid/view/inputmethod/EditorInfo;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCurMethod:Lcom/android/internal/view/IInputMethodSession;

    if-nez v0, :cond_2

    .line 1288
    :cond_1
    monitor-exit v8

    .line 1309
    :goto_0
    return-void

    .line 1291
    :cond_2
    iget v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorSelStart:I

    if-ne v0, p2, :cond_3

    iget v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorSelEnd:I

    if-ne v0, p3, :cond_3

    iget v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorCandStart:I

    if-ne v0, p4, :cond_3

    iget v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorCandEnd:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v0, p5, :cond_4

    .line 1298
    :cond_3
    :try_start_1
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCurMethod:Lcom/android/internal/view/IInputMethodSession;

    iget v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorSelStart:I

    iget v2, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorSelEnd:I

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v0 .. v6}, Lcom/android/internal/view/IInputMethodSession;->updateSelection(IIIIII)V

    .line 1300
    iput p2, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorSelStart:I

    .line 1301
    iput p3, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorSelEnd:I

    .line 1302
    iput p4, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorCandStart:I

    .line 1303
    iput p5, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorCandEnd:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1308
    :cond_4
    :goto_1
    :try_start_2
    monitor-exit v8

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 1304
    :catch_0
    move-exception v7

    .line 1305
    .local v7, e:Landroid/os/RemoteException;
    :try_start_3
    const-string v0, "InputMethodManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IME died: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mCurId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public viewClicked(Landroid/view/View;)V
    .locals 6
    .parameter "view"

    .prologue
    .line 1315
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mNextServedView:Landroid/view/View;

    if-eq v2, v3, :cond_2

    const/4 v1, 0x1

    .line 1316
    .local v1, focusChanged:Z
    :goto_0
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->checkFocus()V

    .line 1317
    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v3

    .line 1318
    :try_start_0
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    if-eq v2, p1, :cond_0

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    invoke-virtual {v2, p1}, Landroid/view/View;->checkInputConnectionProxy(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mCurrentTextBoxAttribute:Landroid/view/inputmethod/EditorInfo;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mCurMethod:Lcom/android/internal/view/IInputMethodSession;

    if-nez v2, :cond_3

    .line 1321
    :cond_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1330
    :goto_1
    return-void

    .line 1315
    .end local v1           #focusChanged:Z
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 1325
    .restart local v1       #focusChanged:Z
    :cond_3
    :try_start_1
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mCurMethod:Lcom/android/internal/view/IInputMethodSession;

    invoke-interface {v2, v1}, Lcom/android/internal/view/IInputMethodSession;->viewClicked(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1329
    :goto_2
    :try_start_2
    monitor-exit v3

    goto :goto_1

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 1326
    :catch_0
    move-exception v0

    .line 1327
    .local v0, e:Landroid/os/RemoteException;
    :try_start_3
    const-string v2, "InputMethodManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IME died: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/view/inputmethod/InputMethodManager;->mCurId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2
.end method

.method public windowDismissed(Landroid/os/IBinder;)V
    .locals 2
    .parameter "appWindowToken"

    .prologue
    .line 1099
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->checkFocus()V

    .line 1100
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v1

    .line 1101
    :try_start_0
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 1103
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->finishInputLocked()V

    .line 1105
    :cond_0
    monitor-exit v1

    .line 1106
    return-void

    .line 1105
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

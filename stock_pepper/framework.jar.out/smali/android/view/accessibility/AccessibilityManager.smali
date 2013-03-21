.class public final Landroid/view/accessibility/AccessibilityManager;
.super Ljava/lang/Object;
.source "AccessibilityManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/accessibility/AccessibilityManager$MyHandler;,
        Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final DO_SET_STATE:I = 0xa

.field private static final LOG_TAG:Ljava/lang/String; = "AccessibilityManager"

.field public static final STATE_FLAG_ACCESSIBILITY_ENABLED:I = 0x1

.field public static final STATE_FLAG_DISABLED:I = 0x0

.field public static final STATE_FLAG_TOUCH_EXPLORATION_ENABLED:I = 0x2

.field private static sInstance:Landroid/view/accessibility/AccessibilityManager;

.field static final sInstanceSync:Ljava/lang/Object;


# instance fields
.field final mAccessibilityStateChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field final mClient:Landroid/view/accessibility/IAccessibilityManagerClient$Stub;

.field final mHandler:Landroid/os/Handler;

.field mIsEnabled:Z

.field mIsTouchExplorationEnabled:Z

.field final mService:Landroid/view/accessibility/IAccessibilityManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 81
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/view/accessibility/AccessibilityManager;->sInstanceSync:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/accessibility/IAccessibilityManager;)V
    .locals 4
    .parameter "context"
    .parameter "service"

    .prologue
    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    new-instance v2, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v2, p0, Landroid/view/accessibility/AccessibilityManager;->mAccessibilityStateChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 114
    new-instance v2, Landroid/view/accessibility/AccessibilityManager$1;

    invoke-direct {v2, p0}, Landroid/view/accessibility/AccessibilityManager$1;-><init>(Landroid/view/accessibility/AccessibilityManager;)V

    iput-object v2, p0, Landroid/view/accessibility/AccessibilityManager;->mClient:Landroid/view/accessibility/IAccessibilityManagerClient$Stub;

    .line 163
    new-instance v2, Landroid/view/accessibility/AccessibilityManager$MyHandler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Landroid/view/accessibility/AccessibilityManager$MyHandler;-><init>(Landroid/view/accessibility/AccessibilityManager;Landroid/os/Looper;)V

    iput-object v2, p0, Landroid/view/accessibility/AccessibilityManager;->mHandler:Landroid/os/Handler;

    .line 164
    iput-object p2, p0, Landroid/view/accessibility/AccessibilityManager;->mService:Landroid/view/accessibility/IAccessibilityManager;

    .line 166
    iget-object v2, p0, Landroid/view/accessibility/AccessibilityManager;->mService:Landroid/view/accessibility/IAccessibilityManager;

    if-nez v2, :cond_0

    .line 167
    const-string v2, "AccessibilityManager"

    const-string v3, "AccessibilityService is dead"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Landroid/view/accessibility/AccessibilityManager;->setState(I)V

    .line 177
    :goto_0
    return-void

    .line 171
    :cond_0
    :try_start_0
    iget-object v2, p0, Landroid/view/accessibility/AccessibilityManager;->mService:Landroid/view/accessibility/IAccessibilityManager;

    iget-object v3, p0, Landroid/view/accessibility/AccessibilityManager;->mClient:Landroid/view/accessibility/IAccessibilityManagerClient$Stub;

    invoke-interface {v2, v3}, Landroid/view/accessibility/IAccessibilityManager;->addClient(Landroid/view/accessibility/IAccessibilityManagerClient;)I

    move-result v1

    .line 172
    .local v1, stateFlags:I
    invoke-direct {p0, v1}, Landroid/view/accessibility/AccessibilityManager;->setState(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 173
    .end local v1           #stateFlags:I
    :catch_0
    move-exception v0

    .line 174
    .local v0, re:Landroid/os/RemoteException;
    const-string v2, "AccessibilityManager"

    const-string v3, "AccessibilityManagerService is dead"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static synthetic access$000(Landroid/view/accessibility/AccessibilityManager;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    invoke-direct {p0, p1}, Landroid/view/accessibility/AccessibilityManager;->setState(I)V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;
    .locals 4
    .parameter "context"

    .prologue
    .line 144
    sget-object v3, Landroid/view/accessibility/AccessibilityManager;->sInstanceSync:Ljava/lang/Object;

    monitor-enter v3

    .line 145
    :try_start_0
    sget-object v2, Landroid/view/accessibility/AccessibilityManager;->sInstance:Landroid/view/accessibility/AccessibilityManager;

    if-nez v2, :cond_0

    .line 146
    const-string v2, "accessibility"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 147
    .local v0, iBinder:Landroid/os/IBinder;
    invoke-static {v0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v1

    .line 148
    .local v1, service:Landroid/view/accessibility/IAccessibilityManager;
    new-instance v2, Landroid/view/accessibility/AccessibilityManager;

    invoke-direct {v2, p0, v1}, Landroid/view/accessibility/AccessibilityManager;-><init>(Landroid/content/Context;Landroid/view/accessibility/IAccessibilityManager;)V

    sput-object v2, Landroid/view/accessibility/AccessibilityManager;->sInstance:Landroid/view/accessibility/AccessibilityManager;

    .line 150
    .end local v0           #iBinder:Landroid/os/IBinder;
    .end local v1           #service:Landroid/view/accessibility/IAccessibilityManager;
    :cond_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 151
    sget-object v2, Landroid/view/accessibility/AccessibilityManager;->sInstance:Landroid/view/accessibility/AccessibilityManager;

    return-object v2

    .line 150
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private notifyAccessibilityStateChanged()V
    .locals 4

    .prologue
    .line 378
    iget-object v2, p0, Landroid/view/accessibility/AccessibilityManager;->mAccessibilityStateChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    .line 379
    .local v1, listenerCount:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 380
    iget-object v2, p0, Landroid/view/accessibility/AccessibilityManager;->mAccessibilityStateChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;

    iget-boolean v3, p0, Landroid/view/accessibility/AccessibilityManager;->mIsEnabled:Z

    invoke-interface {v2, v3}, Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;->onAccessibilityStateChanged(Z)V

    .line 379
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 382
    :cond_0
    return-void
.end method

.method private setAccessibilityState(Z)V
    .locals 2
    .parameter "isEnabled"

    .prologue
    .line 366
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityManager;->mHandler:Landroid/os/Handler;

    monitor-enter v1

    .line 367
    :try_start_0
    iget-boolean v0, p0, Landroid/view/accessibility/AccessibilityManager;->mIsEnabled:Z

    if-eq p1, v0, :cond_0

    .line 368
    iput-boolean p1, p0, Landroid/view/accessibility/AccessibilityManager;->mIsEnabled:Z

    .line 369
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityManager;->notifyAccessibilityStateChanged()V

    .line 371
    :cond_0
    monitor-exit v1

    .line 372
    return-void

    .line 371
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private setState(I)V
    .locals 4
    .parameter "stateFlags"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 355
    and-int/lit8 v3, p1, 0x1

    if-eqz v3, :cond_0

    move v0, v1

    .line 356
    .local v0, accessibilityEnabled:Z
    :goto_0
    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityManager;->setAccessibilityState(Z)V

    .line 357
    and-int/lit8 v3, p1, 0x2

    if-eqz v3, :cond_1

    :goto_1
    iput-boolean v1, p0, Landroid/view/accessibility/AccessibilityManager;->mIsTouchExplorationEnabled:Z

    .line 358
    return-void

    .end local v0           #accessibilityEnabled:Z
    :cond_0
    move v0, v2

    .line 355
    goto :goto_0

    .restart local v0       #accessibilityEnabled:Z
    :cond_1
    move v1, v2

    .line 357
    goto :goto_1
.end method


# virtual methods
.method public addAccessibilityInteractionConnection(Landroid/view/IWindow;Landroid/view/accessibility/IAccessibilityInteractionConnection;)I
    .locals 3
    .parameter "windowToken"
    .parameter "connection"

    .prologue
    .line 394
    :try_start_0
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityManager;->mService:Landroid/view/accessibility/IAccessibilityManager;

    invoke-interface {v1, p1, p2}, Landroid/view/accessibility/IAccessibilityManager;->addAccessibilityInteractionConnection(Landroid/view/IWindow;Landroid/view/accessibility/IAccessibilityInteractionConnection;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 398
    :goto_0
    return v1

    .line 395
    :catch_0
    move-exception v0

    .line 396
    .local v0, re:Landroid/os/RemoteException;
    const-string v1, "AccessibilityManager"

    const-string v2, "Error while adding an accessibility interaction connection. "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 398
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public addAccessibilityStateChangeListener(Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;)Z
    .locals 1
    .parameter "listener"

    .prologue
    .line 335
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mAccessibilityStateChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getAccessibilityServiceList()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ServiceInfo;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 271
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityManager;->getInstalledAccessibilityServiceList()Ljava/util/List;

    move-result-object v3

    .line 272
    .local v3, infos:Ljava/util/List;,"Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 273
    .local v4, services:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ServiceInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 274
    .local v2, infoCount:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 275
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 276
    .local v1, info:Landroid/accessibilityservice/AccessibilityServiceInfo;
    invoke-virtual {v1}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 274
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 278
    .end local v1           #info:Landroid/accessibilityservice/AccessibilityServiceInfo;
    :cond_0
    invoke-static {v4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    return-object v5
.end method

.method public getClient()Landroid/view/accessibility/IAccessibilityManagerClient;
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mClient:Landroid/view/accessibility/IAccessibilityManagerClient$Stub;

    invoke-virtual {v0}, Landroid/view/accessibility/IAccessibilityManagerClient$Stub;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/IAccessibilityManagerClient;

    return-object v0
.end method

.method public getEnabledAccessibilityServiceList(I)Ljava/util/List;
    .locals 4
    .parameter "feedbackTypeFlags"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/accessibilityservice/AccessibilityServiceInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 314
    const/4 v1, 0x0

    .line 316
    .local v1, services:Ljava/util/List;,"Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    :try_start_0
    iget-object v2, p0, Landroid/view/accessibility/AccessibilityManager;->mService:Landroid/view/accessibility/IAccessibilityManager;

    invoke-interface {v2, p1}, Landroid/view/accessibility/IAccessibilityManager;->getEnabledAccessibilityServiceList(I)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 323
    :goto_0
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    return-object v2

    .line 320
    :catch_0
    move-exception v0

    .line 321
    .local v0, re:Landroid/os/RemoteException;
    const-string v2, "AccessibilityManager"

    const-string v3, "Error while obtaining the installed AccessibilityServices. "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getInstalledAccessibilityServiceList()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/accessibilityservice/AccessibilityServiceInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 287
    const/4 v1, 0x0

    .line 289
    .local v1, services:Ljava/util/List;,"Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    :try_start_0
    iget-object v2, p0, Landroid/view/accessibility/AccessibilityManager;->mService:Landroid/view/accessibility/IAccessibilityManager;

    invoke-interface {v2}, Landroid/view/accessibility/IAccessibilityManager;->getInstalledAccessibilityServiceList()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 296
    :goto_0
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    return-object v2

    .line 293
    :catch_0
    move-exception v0

    .line 294
    .local v0, re:Landroid/os/RemoteException;
    const-string v2, "AccessibilityManager"

    const-string v3, "Error while obtaining the installed AccessibilityServices. "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public interrupt()V
    .locals 3

    .prologue
    .line 249
    iget-boolean v1, p0, Landroid/view/accessibility/AccessibilityManager;->mIsEnabled:Z

    if-nez v1, :cond_0

    .line 250
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Accessibility off. Did you forget to check that?"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 253
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityManager;->mService:Landroid/view/accessibility/IAccessibilityManager;

    invoke-interface {v1}, Landroid/view/accessibility/IAccessibilityManager;->interrupt()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 260
    :goto_0
    return-void

    .line 257
    :catch_0
    move-exception v0

    .line 258
    .local v0, re:Landroid/os/RemoteException;
    const-string v1, "AccessibilityManager"

    const-string v2, "Error while requesting interrupt from all services. "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public isEnabled()Z
    .locals 2

    .prologue
    .line 185
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityManager;->mHandler:Landroid/os/Handler;

    monitor-enter v1

    .line 186
    :try_start_0
    iget-boolean v0, p0, Landroid/view/accessibility/AccessibilityManager;->mIsEnabled:Z

    monitor-exit v1

    return v0

    .line 187
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isTouchExplorationEnabled()Z
    .locals 2

    .prologue
    .line 196
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityManager;->mHandler:Landroid/os/Handler;

    monitor-enter v1

    .line 197
    :try_start_0
    iget-boolean v0, p0, Landroid/view/accessibility/AccessibilityManager;->mIsTouchExplorationEnabled:Z

    monitor-exit v1

    return v0

    .line 198
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public removeAccessibilityInteractionConnection(Landroid/view/IWindow;)V
    .locals 3
    .parameter "windowToken"

    .prologue
    .line 409
    :try_start_0
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityManager;->mService:Landroid/view/accessibility/IAccessibilityManager;

    invoke-interface {v1, p1}, Landroid/view/accessibility/IAccessibilityManager;->removeAccessibilityInteractionConnection(Landroid/view/IWindow;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 413
    :goto_0
    return-void

    .line 410
    :catch_0
    move-exception v0

    .line 411
    .local v0, re:Landroid/os/RemoteException;
    const-string v1, "AccessibilityManager"

    const-string v2, "Error while removing an accessibility interaction connection. "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public removeAccessibilityStateChangeListener(Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;)Z
    .locals 1
    .parameter "listener"

    .prologue
    .line 346
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mAccessibilityStateChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 7
    .parameter "event"

    .prologue
    .line 221
    iget-boolean v4, p0, Landroid/view/accessibility/AccessibilityManager;->mIsEnabled:Z

    if-nez v4, :cond_0

    .line 222
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Accessibility off. Did you forget to check that?"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 224
    :cond_0
    const/4 v0, 0x0

    .line 226
    .local v0, doRecycle:Z
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-virtual {p1, v4, v5}, Landroid/view/accessibility/AccessibilityEvent;->setEventTime(J)V

    .line 230
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 231
    .local v1, identityToken:J
    iget-object v4, p0, Landroid/view/accessibility/AccessibilityManager;->mService:Landroid/view/accessibility/IAccessibilityManager;

    invoke-interface {v4, p1}, Landroid/view/accessibility/IAccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    .line 232
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 239
    if-eqz v0, :cond_1

    .line 240
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->recycle()V

    .line 243
    .end local v1           #identityToken:J
    :cond_1
    :goto_0
    return-void

    .line 236
    :catch_0
    move-exception v3

    .line 237
    .local v3, re:Landroid/os/RemoteException;
    :try_start_1
    const-string v4, "AccessibilityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error during sending "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 239
    if-eqz v0, :cond_1

    .line 240
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->recycle()V

    goto :goto_0

    .line 239
    .end local v3           #re:Landroid/os/RemoteException;
    :catchall_0
    move-exception v4

    if-eqz v0, :cond_2

    .line 240
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->recycle()V

    :cond_2
    throw v4
.end method

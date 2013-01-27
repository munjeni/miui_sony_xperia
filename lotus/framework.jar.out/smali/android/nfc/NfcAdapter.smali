.class public final Landroid/nfc/NfcAdapter;
.super Ljava/lang/Object;
.source "NfcAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/nfc/NfcAdapter$LegacyCallbackWrapper;,
        Landroid/nfc/NfcAdapter$NdefPushCallback;,
        Landroid/nfc/NfcAdapter$CreateNdefMessageCallback;,
        Landroid/nfc/NfcAdapter$OnNdefPushCompleteCallback;
    }
.end annotation


# static fields
.field public static final ACTION_ADAPTER_STATE_CHANGED:Ljava/lang/String; = "android.nfc.action.ADAPTER_STATE_CHANGED"

.field public static final ACTION_NDEF_DISCOVERED:Ljava/lang/String; = "android.nfc.action.NDEF_DISCOVERED"

.field public static final ACTION_TAG_DISCOVERED:Ljava/lang/String; = "android.nfc.action.TAG_DISCOVERED"

.field public static final ACTION_TAG_LEFT_FIELD:Ljava/lang/String; = "android.nfc.action.TAG_LOST"

.field public static final ACTION_TECH_DISCOVERED:Ljava/lang/String; = "android.nfc.action.TECH_DISCOVERED"

.field public static final EXTRA_ADAPTER_STATE:Ljava/lang/String; = "android.nfc.extra.ADAPTER_STATE"

.field public static final EXTRA_ID:Ljava/lang/String; = "android.nfc.extra.ID"

.field public static final EXTRA_NDEF_MESSAGES:Ljava/lang/String; = "android.nfc.extra.NDEF_MESSAGES"

.field public static final EXTRA_TAG:Ljava/lang/String; = "android.nfc.extra.TAG"

.field public static final STATE_OFF:I = 0x1

.field public static final STATE_ON:I = 0x3

.field public static final STATE_TURNING_OFF:I = 0x4

.field public static final STATE_TURNING_ON:I = 0x2

.field static final TAG:Ljava/lang/String; = "NFC"

.field static sIsInitialized:Z

.field static sNfcAdapters:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/Context;",
            "Landroid/nfc/NfcAdapter;",
            ">;"
        }
    .end annotation
.end field

.field static sNullContextNfcAdapter:Landroid/nfc/NfcAdapter;

.field static sService:Landroid/nfc/INfcAdapter;

.field static sTagService:Landroid/nfc/INfcTag;


# instance fields
.field final mContext:Landroid/content/Context;

.field mForegroundDispatchListener:Landroid/app/OnActivityPausedListener;

.field final mNfcActivityManager:Landroid/nfc/NfcActivityManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 199
    const/4 v0, 0x0

    sput-boolean v0, Landroid/nfc/NfcAdapter;->sIsInitialized:Z

    .line 212
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/nfc/NfcAdapter;->sNfcAdapters:Ljava/util/HashMap;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 391
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 723
    new-instance v0, Landroid/nfc/NfcAdapter$1;

    invoke-direct {v0, p0}, Landroid/nfc/NfcAdapter$1;-><init>(Landroid/nfc/NfcAdapter;)V

    iput-object v0, p0, Landroid/nfc/NfcAdapter;->mForegroundDispatchListener:Landroid/app/OnActivityPausedListener;

    .line 392
    iput-object p1, p0, Landroid/nfc/NfcAdapter;->mContext:Landroid/content/Context;

    .line 393
    new-instance v0, Landroid/nfc/NfcActivityManager;

    invoke-direct {v0, p0}, Landroid/nfc/NfcActivityManager;-><init>(Landroid/nfc/NfcAdapter;)V

    iput-object v0, p0, Landroid/nfc/NfcAdapter;->mNfcActivityManager:Landroid/nfc/NfcActivityManager;

    .line 394
    return-void
.end method

.method public static getDefaultAdapter()Landroid/nfc/NfcAdapter;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 385
    const-string v0, "NFC"

    const-string v1, "WARNING: NfcAdapter.getDefaultAdapter() is deprecated, use NfcAdapter.getDefaultAdapter(Context) instead"

    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 388
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/nfc/NfcAdapter;->getNfcAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    return-object v0
.end method

.method public static getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;
    .locals 3
    .parameter "context"

    .prologue
    .line 362
    if-nez p0, :cond_0

    .line 363
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "context cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 365
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 368
    const-string/jumbo v1, "nfc"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/nfc/NfcManager;

    .line 369
    .local v0, manager:Landroid/nfc/NfcManager;
    if-nez v0, :cond_1

    .line 371
    const/4 v1, 0x0

    .line 373
    :goto_0
    return-object v1

    :cond_1
    invoke-virtual {v0}, Landroid/nfc/NfcManager;->getDefaultAdapter()Landroid/nfc/NfcAdapter;

    move-result-object v1

    goto :goto_0
.end method

.method public static declared-synchronized getNfcAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;
    .locals 5
    .parameter "context"

    .prologue
    .line 302
    const-class v3, Landroid/nfc/NfcAdapter;

    monitor-enter v3

    :try_start_0
    sget-boolean v2, Landroid/nfc/NfcAdapter;->sIsInitialized:Z

    if-nez v2, :cond_2

    .line 304
    invoke-static {}, Landroid/nfc/NfcAdapter;->hasNfcFeature()Z

    move-result v2

    if-nez v2, :cond_0

    .line 305
    const-string v2, "NFC"

    const-string/jumbo v4, "this device does not have NFC support"

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v2}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 302
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 309
    :cond_0
    :try_start_1
    invoke-static {}, Landroid/nfc/NfcAdapter;->getServiceInterface()Landroid/nfc/INfcAdapter;

    move-result-object v2

    sput-object v2, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    .line 310
    sget-object v2, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    if-nez v2, :cond_1

    .line 311
    const-string v2, "NFC"

    const-string v4, "could not retrieve NFC service"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v2}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 315
    :cond_1
    :try_start_2
    sget-object v2, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v2}, Landroid/nfc/INfcAdapter;->getNfcTagInterface()Landroid/nfc/INfcTag;

    move-result-object v2

    sput-object v2, Landroid/nfc/NfcAdapter;->sTagService:Landroid/nfc/INfcTag;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 321
    const/4 v2, 0x1

    :try_start_3
    sput-boolean v2, Landroid/nfc/NfcAdapter;->sIsInitialized:Z

    .line 323
    :cond_2
    if-nez p0, :cond_5

    .line 324
    sget-object v2, Landroid/nfc/NfcAdapter;->sNullContextNfcAdapter:Landroid/nfc/NfcAdapter;

    if-nez v2, :cond_3

    .line 325
    new-instance v2, Landroid/nfc/NfcAdapter;

    const/4 v4, 0x0

    invoke-direct {v2, v4}, Landroid/nfc/NfcAdapter;-><init>(Landroid/content/Context;)V

    sput-object v2, Landroid/nfc/NfcAdapter;->sNullContextNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 327
    :cond_3
    sget-object v0, Landroid/nfc/NfcAdapter;->sNullContextNfcAdapter:Landroid/nfc/NfcAdapter;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 334
    :cond_4
    :goto_0
    monitor-exit v3

    return-object v0

    .line 316
    :catch_0
    move-exception v1

    .line 317
    .local v1, e:Landroid/os/RemoteException;
    :try_start_4
    const-string v2, "NFC"

    const-string v4, "could not retrieve NFC Tag service"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v2}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v2

    .line 329
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_5
    sget-object v2, Landroid/nfc/NfcAdapter;->sNfcAdapters:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/nfc/NfcAdapter;

    .line 330
    .local v0, adapter:Landroid/nfc/NfcAdapter;
    if-nez v0, :cond_4

    .line 331
    new-instance v0, Landroid/nfc/NfcAdapter;

    .end local v0           #adapter:Landroid/nfc/NfcAdapter;
    invoke-direct {v0, p0}, Landroid/nfc/NfcAdapter;-><init>(Landroid/content/Context;)V

    .line 332
    .restart local v0       #adapter:Landroid/nfc/NfcAdapter;
    sget-object v2, Landroid/nfc/NfcAdapter;->sNfcAdapters:Ljava/util/HashMap;

    invoke-virtual {v2, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method

.method private static getServiceInterface()Landroid/nfc/INfcAdapter;
    .locals 2

    .prologue
    .line 340
    const-string/jumbo v1, "nfc"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 341
    .local v0, b:Landroid/os/IBinder;
    if-nez v0, :cond_0

    .line 342
    const/4 v1, 0x0

    .line 344
    :goto_0
    return-object v1

    :cond_0
    invoke-static {v0}, Landroid/nfc/INfcAdapter$Stub;->asInterface(Landroid/os/IBinder;)Landroid/nfc/INfcAdapter;

    move-result-object v1

    goto :goto_0
.end method

.method private static hasNfcFeature()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 283
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    .line 284
    .local v1, pm:Landroid/content/pm/IPackageManager;
    if-nez v1, :cond_0

    .line 285
    const-string v3, "NFC"

    const-string v4, "Cannot get package manager, assuming no NFC feature"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    :goto_0
    return v2

    .line 289
    :cond_0
    :try_start_0
    const-string v3, "android.hardware.nfc"

    invoke-interface {v1, v3}, Landroid/content/pm/IPackageManager;->hasSystemFeature(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 290
    :catch_0
    move-exception v0

    .line 291
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "NFC"

    const-string v4, "Package manager query failed, assuming no NFC feature"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public attemptDeadServiceRecovery(Ljava/lang/Exception;)V
    .locals 4
    .parameter "e"

    .prologue
    .line 426
    const-string v2, "NFC"

    const-string v3, "NFC service dead - attempting to recover"

    invoke-static {v2, v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 427
    invoke-static {}, Landroid/nfc/NfcAdapter;->getServiceInterface()Landroid/nfc/INfcAdapter;

    move-result-object v1

    .line 428
    .local v1, service:Landroid/nfc/INfcAdapter;
    if-nez v1, :cond_0

    .line 429
    const-string v2, "NFC"

    const-string v3, "could not retrieve NFC service during service recovery"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    :goto_0
    return-void

    .line 436
    :cond_0
    sput-object v1, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    .line 438
    :try_start_0
    invoke-interface {v1}, Landroid/nfc/INfcAdapter;->getNfcTagInterface()Landroid/nfc/INfcTag;

    move-result-object v2

    sput-object v2, Landroid/nfc/NfcAdapter;->sTagService:Landroid/nfc/INfcTag;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 439
    :catch_0
    move-exception v0

    .line 440
    .local v0, ee:Landroid/os/RemoteException;
    const-string v2, "NFC"

    const-string v3, "could not retrieve NFC tag service during service recovery"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public disable()Z
    .locals 2

    .prologue
    .line 534
    :try_start_0
    sget-object v1, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v1}, Landroid/nfc/INfcAdapter;->disable()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 537
    :goto_0
    return v1

    .line 535
    :catch_0
    move-exception v0

    .line 536
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    .line 537
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public disableForegroundDispatch(Landroid/app/Activity;)V
    .locals 2
    .parameter "activity"

    .prologue
    .line 718
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    iget-object v1, p0, Landroid/nfc/NfcAdapter;->mForegroundDispatchListener:Landroid/app/OnActivityPausedListener;

    invoke-virtual {v0, p1, v1}, Landroid/app/ActivityThread;->unregisterOnActivityPausedListener(Landroid/app/Activity;Landroid/app/OnActivityPausedListener;)V

    .line 720
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/nfc/NfcAdapter;->disableForegroundDispatchInternal(Landroid/app/Activity;Z)V

    .line 721
    return-void
.end method

.method disableForegroundDispatchInternal(Landroid/app/Activity;Z)V
    .locals 5
    .parameter "activity"
    .parameter "force"

    .prologue
    .line 732
    :try_start_0
    sget-object v1, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Landroid/nfc/INfcAdapter;->setForegroundDispatch(Landroid/app/PendingIntent;[Landroid/content/IntentFilter;Landroid/nfc/TechListParcel;)V

    .line 733
    if-nez p2, :cond_0

    invoke-virtual {p1}, Landroid/app/Activity;->isResumed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 734
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "You must disable foreground dispatching while your activity is still resumed"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 737
    :catch_0
    move-exception v0

    .line 738
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    .line 740
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    return-void
.end method

.method public disableForegroundNdefPush(Landroid/app/Activity;)V
    .locals 2
    .parameter "activity"

    .prologue
    const/4 v1, 0x0

    .line 797
    if-nez p1, :cond_0

    .line 798
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 800
    :cond_0
    invoke-virtual {p0, p1}, Landroid/nfc/NfcAdapter;->enforceResumed(Landroid/app/Activity;)V

    .line 801
    iget-object v0, p0, Landroid/nfc/NfcAdapter;->mNfcActivityManager:Landroid/nfc/NfcActivityManager;

    invoke-virtual {v0, p1, v1}, Landroid/nfc/NfcActivityManager;->setNdefPushMessage(Landroid/app/Activity;Landroid/nfc/NdefMessage;)V

    .line 802
    iget-object v0, p0, Landroid/nfc/NfcAdapter;->mNfcActivityManager:Landroid/nfc/NfcActivityManager;

    invoke-virtual {v0, p1, v1}, Landroid/nfc/NfcActivityManager;->setNdefPushMessageCallback(Landroid/app/Activity;Landroid/nfc/NfcAdapter$CreateNdefMessageCallback;)V

    .line 803
    iget-object v0, p0, Landroid/nfc/NfcAdapter;->mNfcActivityManager:Landroid/nfc/NfcActivityManager;

    invoke-virtual {v0, p1, v1}, Landroid/nfc/NfcActivityManager;->setOnNdefPushCompleteCallback(Landroid/app/Activity;Landroid/nfc/NfcAdapter$OnNdefPushCompleteCallback;)V

    .line 804
    return-void
.end method

.method public disableNdefPush()Z
    .locals 2

    .prologue
    .line 882
    :try_start_0
    sget-object v1, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v1}, Landroid/nfc/INfcAdapter;->disableNdefPush()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 885
    :goto_0
    return v1

    .line 883
    :catch_0
    move-exception v0

    .line 884
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    .line 885
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public enable()Z
    .locals 2

    .prologue
    .line 507
    :try_start_0
    sget-object v1, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v1}, Landroid/nfc/INfcAdapter;->enable()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 510
    :goto_0
    return v1

    .line 508
    :catch_0
    move-exception v0

    .line 509
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    .line 510
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public enableForegroundDispatch(Landroid/app/Activity;Landroid/app/PendingIntent;[Landroid/content/IntentFilter;[[Ljava/lang/String;)V
    .locals 5
    .parameter "activity"
    .parameter "intent"
    .parameter "filters"
    .parameter "techLists"

    .prologue
    .line 683
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 684
    :cond_0
    new-instance v3, Ljava/lang/NullPointerException;

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    throw v3

    .line 686
    :cond_1
    invoke-virtual {p1}, Landroid/app/Activity;->isResumed()Z

    move-result v3

    if-nez v3, :cond_2

    .line 687
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Foreground dispatch can only be enabled when your activity is resumed"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 691
    :cond_2
    const/4 v1, 0x0

    .line 692
    .local v1, parcel:Landroid/nfc/TechListParcel;
    if-eqz p4, :cond_3

    :try_start_0
    array-length v3, p4

    if-lez v3, :cond_3

    .line 693
    new-instance v2, Landroid/nfc/TechListParcel;

    invoke-direct {v2, p4}, Landroid/nfc/TechListParcel;-><init>([[Ljava/lang/String;)V

    .end local v1           #parcel:Landroid/nfc/TechListParcel;
    .local v2, parcel:Landroid/nfc/TechListParcel;
    move-object v1, v2

    .line 695
    .end local v2           #parcel:Landroid/nfc/TechListParcel;
    .restart local v1       #parcel:Landroid/nfc/TechListParcel;
    :cond_3
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v3

    iget-object v4, p0, Landroid/nfc/NfcAdapter;->mForegroundDispatchListener:Landroid/app/OnActivityPausedListener;

    invoke-virtual {v3, p1, v4}, Landroid/app/ActivityThread;->registerOnActivityPausedListener(Landroid/app/Activity;Landroid/app/OnActivityPausedListener;)V

    .line 697
    sget-object v3, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v3, p2, p3, v1}, Landroid/nfc/INfcAdapter;->setForegroundDispatch(Landroid/app/PendingIntent;[Landroid/content/IntentFilter;Landroid/nfc/TechListParcel;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 701
    :goto_0
    return-void

    .line 698
    :catch_0
    move-exception v0

    .line 699
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public enableForegroundNdefPush(Landroid/app/Activity;Landroid/nfc/NdefMessage;)V
    .locals 1
    .parameter "activity"
    .parameter "message"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 770
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 771
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 773
    :cond_1
    invoke-virtual {p0, p1}, Landroid/nfc/NfcAdapter;->enforceResumed(Landroid/app/Activity;)V

    .line 774
    iget-object v0, p0, Landroid/nfc/NfcAdapter;->mNfcActivityManager:Landroid/nfc/NfcActivityManager;

    invoke-virtual {v0, p1, p2}, Landroid/nfc/NfcActivityManager;->setNdefPushMessage(Landroid/app/Activity;Landroid/nfc/NdefMessage;)V

    .line 775
    return-void
.end method

.method public enableForegroundNdefPush(Landroid/app/Activity;Landroid/nfc/NfcAdapter$NdefPushCallback;)V
    .locals 2
    .parameter "activity"
    .parameter "callback"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 852
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 853
    :cond_0
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 855
    :cond_1
    invoke-virtual {p0, p1}, Landroid/nfc/NfcAdapter;->enforceResumed(Landroid/app/Activity;)V

    .line 856
    new-instance v0, Landroid/nfc/NfcAdapter$LegacyCallbackWrapper;

    invoke-direct {v0, p2}, Landroid/nfc/NfcAdapter$LegacyCallbackWrapper;-><init>(Landroid/nfc/NfcAdapter$NdefPushCallback;)V

    .line 857
    .local v0, callbackWrapper:Landroid/nfc/NfcAdapter$LegacyCallbackWrapper;
    iget-object v1, p0, Landroid/nfc/NfcAdapter;->mNfcActivityManager:Landroid/nfc/NfcActivityManager;

    invoke-virtual {v1, p1, v0}, Landroid/nfc/NfcActivityManager;->setNdefPushMessageCallback(Landroid/app/Activity;Landroid/nfc/NfcAdapter$CreateNdefMessageCallback;)V

    .line 858
    iget-object v1, p0, Landroid/nfc/NfcAdapter;->mNfcActivityManager:Landroid/nfc/NfcActivityManager;

    invoke-virtual {v1, p1, v0}, Landroid/nfc/NfcActivityManager;->setOnNdefPushCompleteCallback(Landroid/app/Activity;Landroid/nfc/NfcAdapter$OnNdefPushCompleteCallback;)V

    .line 859
    return-void
.end method

.method public enableNdefPush()Z
    .locals 2

    .prologue
    .line 868
    :try_start_0
    sget-object v1, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v1}, Landroid/nfc/INfcAdapter;->enableNdefPush()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 871
    :goto_0
    return v1

    .line 869
    :catch_0
    move-exception v0

    .line 870
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    .line 871
    const/4 v1, 0x0

    goto :goto_0
.end method

.method enforceResumed(Landroid/app/Activity;)V
    .locals 2
    .parameter "activity"

    .prologue
    .line 927
    invoke-virtual {p1}, Landroid/app/Activity;->isResumed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 928
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "API cannot be called while activity is paused"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 930
    :cond_0
    return-void
.end method

.method public getAdapterState()I
    .locals 2

    .prologue
    .line 482
    :try_start_0
    sget-object v1, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v1}, Landroid/nfc/INfcAdapter;->getState()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 485
    :goto_0
    return v1

    .line 483
    :catch_0
    move-exception v0

    .line 484
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    .line 485
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 400
    iget-object v0, p0, Landroid/nfc/NfcAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getNfcAdapterExtrasInterface()Landroid/nfc/INfcAdapterExtras;
    .locals 3

    .prologue
    .line 914
    iget-object v1, p0, Landroid/nfc/NfcAdapter;->mContext:Landroid/content/Context;

    if-nez v1, :cond_0

    .line 915
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "You need a context on NfcAdapter to use the  NFC extras APIs"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 919
    :cond_0
    :try_start_0
    sget-object v1, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    iget-object v2, p0, Landroid/nfc/NfcAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/nfc/INfcAdapter;->getNfcAdapterExtrasInterface(Ljava/lang/String;)Landroid/nfc/INfcAdapterExtras;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 922
    :goto_0
    return-object v1

    .line 920
    :catch_0
    move-exception v0

    .line 921
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    .line 922
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getService()Landroid/nfc/INfcAdapter;
    .locals 1

    .prologue
    .line 408
    invoke-virtual {p0}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    .line 409
    sget-object v0, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    return-object v0
.end method

.method public getTagService()Landroid/nfc/INfcTag;
    .locals 1

    .prologue
    .line 417
    invoke-virtual {p0}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    .line 418
    sget-object v0, Landroid/nfc/NfcAdapter;->sTagService:Landroid/nfc/INfcTag;

    return-object v0
.end method

.method public isEnabled()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 460
    :try_start_0
    sget-object v2, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v2}, Landroid/nfc/INfcAdapter;->getState()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    .line 463
    :cond_0
    :goto_0
    return v1

    .line 461
    :catch_0
    move-exception v0

    .line 462
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public isNdefPushEnabled()Z
    .locals 2

    .prologue
    .line 903
    :try_start_0
    sget-object v1, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v1}, Landroid/nfc/INfcAdapter;->isNdefPushEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 906
    :goto_0
    return v1

    .line 904
    :catch_0
    move-exception v0

    .line 905
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    .line 906
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public varargs setNdefPushMessage(Landroid/nfc/NdefMessage;Landroid/app/Activity;[Landroid/app/Activity;)V
    .locals 6
    .parameter "message"
    .parameter "activity"
    .parameter "activities"

    .prologue
    .line 568
    if-nez p2, :cond_0

    .line 569
    new-instance v4, Ljava/lang/NullPointerException;

    const-string v5, "activity cannot be null"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 571
    :cond_0
    iget-object v4, p0, Landroid/nfc/NfcAdapter;->mNfcActivityManager:Landroid/nfc/NfcActivityManager;

    invoke-virtual {v4, p2, p1}, Landroid/nfc/NfcActivityManager;->setNdefPushMessage(Landroid/app/Activity;Landroid/nfc/NdefMessage;)V

    .line 572
    move-object v1, p3

    .local v1, arr$:[Landroid/app/Activity;
    array-length v3, v1

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v0, v1, v2

    .line 573
    .local v0, a:Landroid/app/Activity;
    if-nez v0, :cond_1

    .line 574
    new-instance v4, Ljava/lang/NullPointerException;

    const-string v5, "activities cannot contain null"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 576
    :cond_1
    iget-object v4, p0, Landroid/nfc/NfcAdapter;->mNfcActivityManager:Landroid/nfc/NfcActivityManager;

    invoke-virtual {v4, v0, p1}, Landroid/nfc/NfcActivityManager;->setNdefPushMessage(Landroid/app/Activity;Landroid/nfc/NdefMessage;)V

    .line 572
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 578
    .end local v0           #a:Landroid/app/Activity;
    :cond_2
    return-void
.end method

.method public varargs setNdefPushMessageCallback(Landroid/nfc/NfcAdapter$CreateNdefMessageCallback;Landroid/app/Activity;[Landroid/app/Activity;)V
    .locals 6
    .parameter "callback"
    .parameter "activity"
    .parameter "activities"

    .prologue
    .line 607
    if-nez p2, :cond_0

    .line 608
    new-instance v4, Ljava/lang/NullPointerException;

    const-string v5, "activity cannot be null"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 610
    :cond_0
    iget-object v4, p0, Landroid/nfc/NfcAdapter;->mNfcActivityManager:Landroid/nfc/NfcActivityManager;

    invoke-virtual {v4, p2, p1}, Landroid/nfc/NfcActivityManager;->setNdefPushMessageCallback(Landroid/app/Activity;Landroid/nfc/NfcAdapter$CreateNdefMessageCallback;)V

    .line 611
    move-object v1, p3

    .local v1, arr$:[Landroid/app/Activity;
    array-length v3, v1

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v0, v1, v2

    .line 612
    .local v0, a:Landroid/app/Activity;
    if-nez v0, :cond_1

    .line 613
    new-instance v4, Ljava/lang/NullPointerException;

    const-string v5, "activities cannot contain null"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 615
    :cond_1
    iget-object v4, p0, Landroid/nfc/NfcAdapter;->mNfcActivityManager:Landroid/nfc/NfcActivityManager;

    invoke-virtual {v4, v0, p1}, Landroid/nfc/NfcActivityManager;->setNdefPushMessageCallback(Landroid/app/Activity;Landroid/nfc/NfcAdapter$CreateNdefMessageCallback;)V

    .line 611
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 617
    .end local v0           #a:Landroid/app/Activity;
    :cond_2
    return-void
.end method

.method public varargs setOnNdefPushCompleteCallback(Landroid/nfc/NfcAdapter$OnNdefPushCompleteCallback;Landroid/app/Activity;[Landroid/app/Activity;)V
    .locals 6
    .parameter "callback"
    .parameter "activity"
    .parameter "activities"

    .prologue
    .line 636
    if-nez p2, :cond_0

    .line 637
    new-instance v4, Ljava/lang/NullPointerException;

    const-string v5, "activity cannot be null"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 639
    :cond_0
    iget-object v4, p0, Landroid/nfc/NfcAdapter;->mNfcActivityManager:Landroid/nfc/NfcActivityManager;

    invoke-virtual {v4, p2, p1}, Landroid/nfc/NfcActivityManager;->setOnNdefPushCompleteCallback(Landroid/app/Activity;Landroid/nfc/NfcAdapter$OnNdefPushCompleteCallback;)V

    .line 640
    move-object v1, p3

    .local v1, arr$:[Landroid/app/Activity;
    array-length v3, v1

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v0, v1, v2

    .line 641
    .local v0, a:Landroid/app/Activity;
    if-nez v0, :cond_1

    .line 642
    new-instance v4, Ljava/lang/NullPointerException;

    const-string v5, "activities cannot contain null"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 644
    :cond_1
    iget-object v4, p0, Landroid/nfc/NfcAdapter;->mNfcActivityManager:Landroid/nfc/NfcActivityManager;

    invoke-virtual {v4, v0, p1}, Landroid/nfc/NfcActivityManager;->setOnNdefPushCompleteCallback(Landroid/app/Activity;Landroid/nfc/NfcAdapter$OnNdefPushCompleteCallback;)V

    .line 640
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 646
    .end local v0           #a:Landroid/app/Activity;
    :cond_2
    return-void
.end method

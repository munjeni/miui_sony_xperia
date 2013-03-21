.class public Lcom/android/internal/atfwd/AtCkpdCmdHandler;
.super Lcom/android/internal/atfwd/AtCmdBaseHandler;
.source "AtCkpdCmdHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/atfwd/AtCkpdCmdHandler$ParsedCkpdCmd;
    }
.end annotation


# static fields
.field private static final DEFAULT_PAUSE_TIME:I = 0x190

.field private static final DEFAULT_PRESS_TIME:I = 0xc8

.field private static final LOG_TAG:Ljava/lang/String; = "AtCkpdCmdHandler"


# instance fields
.field private alphacode:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Character;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private key2keycode:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Character;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mEventQ:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/internal/atfwd/AtCkpdCmdHandler$ParsedCkpdCmd;",
            ">;"
        }
    .end annotation
.end field

.field private mInjectThread:Ljava/lang/Thread;

.field private mInjectThreadStart:Z

.field mKcm:Landroid/view/KeyCharacterMap;

.field private mWm:Landroid/view/IWindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 11
    .parameter "c"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/atfwd/AtCmdHandler$AtCmdHandlerInstantiationException;
        }
    .end annotation

    .prologue
    const/16 v10, 0x11

    const/16 v9, 0xa

    const/16 v8, 0x9

    const/4 v7, 0x0

    const/16 v6, 0x5b

    .line 208
    invoke-direct {p0, p1}, Lcom/android/internal/atfwd/AtCmdBaseHandler;-><init>(Landroid/content/Context;)V

    .line 71
    iput-boolean v7, p0, Lcom/android/internal/atfwd/AtCkpdCmdHandler;->mInjectThreadStart:Z

    .line 209
    const-string/jumbo v3, "window"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v2

    .line 212
    .local v2, service:Landroid/view/IWindowManager;
    if-nez v2, :cond_0

    .line 213
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Unable to connect to Window Service"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 215
    :cond_0
    iput-object v2, p0, Lcom/android/internal/atfwd/AtCkpdCmdHandler;->mWm:Landroid/view/IWindowManager;

    .line 216
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    iput-object v3, p0, Lcom/android/internal/atfwd/AtCkpdCmdHandler;->mEventQ:Ljava/util/LinkedList;

    .line 217
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/android/internal/atfwd/AtCkpdCmdHandler;->key2keycode:Ljava/util/HashMap;

    .line 218
    iget-object v3, p0, Lcom/android/internal/atfwd/AtCkpdCmdHandler;->key2keycode:Ljava/util/HashMap;

    const/16 v4, 0x23

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    const/16 v5, 0x12

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    iget-object v3, p0, Lcom/android/internal/atfwd/AtCkpdCmdHandler;->key2keycode:Ljava/util/HashMap;

    const/16 v4, 0x2a

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    iget-object v3, p0, Lcom/android/internal/atfwd/AtCkpdCmdHandler;->key2keycode:Ljava/util/HashMap;

    const/16 v4, 0x30

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    const/4 v5, 0x7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    iget-object v3, p0, Lcom/android/internal/atfwd/AtCkpdCmdHandler;->key2keycode:Ljava/util/HashMap;

    const/16 v4, 0x31

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    const/16 v5, 0x8

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    iget-object v3, p0, Lcom/android/internal/atfwd/AtCkpdCmdHandler;->key2keycode:Ljava/util/HashMap;

    const/16 v4, 0x32

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    iget-object v3, p0, Lcom/android/internal/atfwd/AtCkpdCmdHandler;->key2keycode:Ljava/util/HashMap;

    const/16 v4, 0x33

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    iget-object v3, p0, Lcom/android/internal/atfwd/AtCkpdCmdHandler;->key2keycode:Ljava/util/HashMap;

    const/16 v4, 0x34

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    const/16 v5, 0xb

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    iget-object v3, p0, Lcom/android/internal/atfwd/AtCkpdCmdHandler;->key2keycode:Ljava/util/HashMap;

    const/16 v4, 0x35

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    const/16 v5, 0xc

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    iget-object v3, p0, Lcom/android/internal/atfwd/AtCkpdCmdHandler;->key2keycode:Ljava/util/HashMap;

    const/16 v4, 0x36

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    const/16 v5, 0xd

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    iget-object v3, p0, Lcom/android/internal/atfwd/AtCkpdCmdHandler;->key2keycode:Ljava/util/HashMap;

    const/16 v4, 0x37

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    const/16 v5, 0xe

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    iget-object v3, p0, Lcom/android/internal/atfwd/AtCkpdCmdHandler;->key2keycode:Ljava/util/HashMap;

    const/16 v4, 0x38

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    const/16 v5, 0xf

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    iget-object v3, p0, Lcom/android/internal/atfwd/AtCkpdCmdHandler;->key2keycode:Ljava/util/HashMap;

    const/16 v4, 0x39

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    const/16 v5, 0x10

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    iget-object v3, p0, Lcom/android/internal/atfwd/AtCkpdCmdHandler;->key2keycode:Ljava/util/HashMap;

    const/16 v4, 0x3c

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    const/16 v5, 0x15

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    iget-object v3, p0, Lcom/android/internal/atfwd/AtCkpdCmdHandler;->key2keycode:Ljava/util/HashMap;

    const/16 v4, 0x3e

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    const/16 v5, 0x16

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    iget-object v3, p0, Lcom/android/internal/atfwd/AtCkpdCmdHandler;->key2keycode:Ljava/util/HashMap;

    const/16 v4, 0x5e

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    const/16 v5, 0x13

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    iget-object v3, p0, Lcom/android/internal/atfwd/AtCkpdCmdHandler;->key2keycode:Ljava/util/HashMap;

    const/16 v4, 0x56

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    const/16 v5, 0x14

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    iget-object v3, p0, Lcom/android/internal/atfwd/AtCkpdCmdHandler;->key2keycode:Ljava/util/HashMap;

    const/16 v4, 0x44

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    const/16 v5, 0x19

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    iget-object v3, p0, Lcom/android/internal/atfwd/AtCkpdCmdHandler;->key2keycode:Ljava/util/HashMap;

    const/16 v4, 0x45

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    const/4 v5, 0x6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    iget-object v3, p0, Lcom/android/internal/atfwd/AtCkpdCmdHandler;->key2keycode:Ljava/util/HashMap;

    const/16 v4, 0x4d

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    const/16 v5, 0x52

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    iget-object v3, p0, Lcom/android/internal/atfwd/AtCkpdCmdHandler;->key2keycode:Ljava/util/HashMap;

    const/16 v4, 0x50

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    const/16 v5, 0x1a

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    iget-object v3, p0, Lcom/android/internal/atfwd/AtCkpdCmdHandler;->key2keycode:Ljava/util/HashMap;

    const/16 v4, 0x51

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    iget-object v3, p0, Lcom/android/internal/atfwd/AtCkpdCmdHandler;->key2keycode:Ljava/util/HashMap;

    const/16 v4, 0x53

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    const/4 v5, 0x5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    iget-object v3, p0, Lcom/android/internal/atfwd/AtCkpdCmdHandler;->key2keycode:Ljava/util/HashMap;

    const/16 v4, 0x55

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    const/16 v5, 0x18

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    iget-object v3, p0, Lcom/android/internal/atfwd/AtCkpdCmdHandler;->key2keycode:Ljava/util/HashMap;

    const/16 v4, 0x56

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    const/16 v5, 0x14

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    iget-object v3, p0, Lcom/android/internal/atfwd/AtCkpdCmdHandler;->key2keycode:Ljava/util/HashMap;

    const/16 v4, 0x59

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    const/16 v5, 0x43

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    iget-object v3, p0, Lcom/android/internal/atfwd/AtCkpdCmdHandler;->key2keycode:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    iget-object v3, p0, Lcom/android/internal/atfwd/AtCkpdCmdHandler;->key2keycode:Ljava/util/HashMap;

    const/16 v4, 0x5d

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    iget-object v3, p0, Lcom/android/internal/atfwd/AtCkpdCmdHandler;->key2keycode:Ljava/util/HashMap;

    const/16 v4, 0x43

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    const/16 v5, 0x1c

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/android/internal/atfwd/AtCkpdCmdHandler;->alphacode:Ljava/util/HashMap;

    .line 248
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v3, 0x1a

    if-ge v0, v3, :cond_1

    .line 249
    iget-object v3, p0, Lcom/android/internal/atfwd/AtCkpdCmdHandler;->alphacode:Ljava/util/HashMap;

    add-int/lit8 v4, v0, 0x41

    int-to-char v4, v4

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    add-int/lit8 v5, v0, 0x1d

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 250
    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v9, :cond_2

    .line 251
    iget-object v3, p0, Lcom/android/internal/atfwd/AtCkpdCmdHandler;->alphacode:Ljava/util/HashMap;

    add-int/lit8 v4, v0, 0x30

    int-to-char v4, v4

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    add-int/lit8 v5, v0, 0x7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 252
    :cond_2
    iget-object v3, p0, Lcom/android/internal/atfwd/AtCkpdCmdHandler;->alphacode:Ljava/util/HashMap;

    const/16 v4, 0x40

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    const/16 v5, 0x4d

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    iget-object v3, p0, Lcom/android/internal/atfwd/AtCkpdCmdHandler;->alphacode:Ljava/util/HashMap;

    const/16 v4, 0x3d

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    const/16 v5, 0x46

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    iget-object v3, p0, Lcom/android/internal/atfwd/AtCkpdCmdHandler;->alphacode:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    const/16 v5, 0x47

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    iget-object v3, p0, Lcom/android/internal/atfwd/AtCkpdCmdHandler;->alphacode:Ljava/util/HashMap;

    const/16 v4, 0x2e

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    const/16 v5, 0x38

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    iget-object v3, p0, Lcom/android/internal/atfwd/AtCkpdCmdHandler;->alphacode:Ljava/util/HashMap;

    const/16 v4, 0x2b

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    const/16 v5, 0x51

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    iget-object v3, p0, Lcom/android/internal/atfwd/AtCkpdCmdHandler;->alphacode:Ljava/util/HashMap;

    const/16 v4, 0x23

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    const/16 v5, 0x12

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    iget-object v3, p0, Lcom/android/internal/atfwd/AtCkpdCmdHandler;->alphacode:Ljava/util/HashMap;

    const/16 v4, 0x5d

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    const/16 v5, 0x48

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    iget-object v3, p0, Lcom/android/internal/atfwd/AtCkpdCmdHandler;->alphacode:Ljava/util/HashMap;

    const/16 v4, 0x2f

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    const/16 v5, 0x4c

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    iget-object v3, p0, Lcom/android/internal/atfwd/AtCkpdCmdHandler;->alphacode:Ljava/util/HashMap;

    const/16 v4, 0x20

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    const/16 v5, 0x3e

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    iget-object v3, p0, Lcom/android/internal/atfwd/AtCkpdCmdHandler;->alphacode:Ljava/util/HashMap;

    const/16 v4, 0x2a

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    iget-object v3, p0, Lcom/android/internal/atfwd/AtCkpdCmdHandler;->alphacode:Ljava/util/HashMap;

    invoke-static {v8}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    const/16 v5, 0x3d

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    invoke-static {v7}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v1

    .line 264
    .local v1, kcm:Landroid/view/KeyCharacterMap;
    iput-object v1, p0, Lcom/android/internal/atfwd/AtCkpdCmdHandler;->mKcm:Landroid/view/KeyCharacterMap;

    .line 266
    new-instance v3, Lcom/android/internal/atfwd/AtCkpdCmdHandler$1;

    invoke-direct {v3, p0}, Lcom/android/internal/atfwd/AtCkpdCmdHandler$1;-><init>(Lcom/android/internal/atfwd/AtCkpdCmdHandler;)V

    iput-object v3, p0, Lcom/android/internal/atfwd/AtCkpdCmdHandler;->mInjectThread:Ljava/lang/Thread;

    .line 351
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/atfwd/AtCkpdCmdHandler;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/internal/atfwd/AtCkpdCmdHandler;->key2keycode:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/atfwd/AtCkpdCmdHandler;)Ljava/util/LinkedList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/internal/atfwd/AtCkpdCmdHandler;->mEventQ:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/atfwd/AtCkpdCmdHandler;)Landroid/view/IWindowManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/internal/atfwd/AtCkpdCmdHandler;->mWm:Landroid/view/IWindowManager;

    return-object v0
.end method


# virtual methods
.method public getCommandName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 407
    const-string v0, "+CKPD"

    return-object v0
.end method

.method public handleCommand(Lcom/android/internal/atfwd/AtCmd;)Lcom/android/internal/atfwd/AtCmdResponse;
    .locals 14
    .parameter "cmd"

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x7

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 362
    const/4 v3, 0x0

    .line 363
    .local v3, ret:Lcom/android/internal/atfwd/AtCmdResponse;
    const/4 v5, 0x0

    .line 364
    .local v5, valid:Lcom/android/internal/atfwd/AtCkpdCmdHandler$ParsedCkpdCmd;
    const/4 v0, 0x0

    .line 365
    .local v0, dead:Z
    invoke-virtual {p1}, Lcom/android/internal/atfwd/AtCmd;->getOpcode()I

    move-result v2

    .line 366
    .local v2, opCode:I
    const-string v7, "AtCkpdCmdHandler"

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

    .line 368
    iget-object v7, p0, Lcom/android/internal/atfwd/AtCkpdCmdHandler;->mInjectThread:Ljava/lang/Thread;

    invoke-virtual {v7}, Ljava/lang/Thread;->isAlive()Z

    move-result v7

    if-nez v7, :cond_0

    move v0, v8

    .line 369
    :goto_0
    if-nez v0, :cond_3

    .line 370
    const/16 v7, 0xb

    if-eq v2, v7, :cond_1

    if-eq v2, v12, :cond_1

    .line 372
    const-string v7, "AtCkpdCmdHandler"

    const-string v8, "CKPD opcode eror"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    new-instance v7, Lcom/android/internal/atfwd/AtCmdResponse;

    const/4 v8, 0x4

    invoke-virtual {p1, v8}, Lcom/android/internal/atfwd/AtCmd;->getAtCmdErrStr(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v9, v8}, Lcom/android/internal/atfwd/AtCmdResponse;-><init>(ILjava/lang/String;)V

    .line 402
    :goto_1
    return-object v7

    :cond_0
    move v0, v9

    .line 368
    goto :goto_0

    .line 377
    :cond_1
    if-ne v2, v12, :cond_2

    .line 378
    const-string v7, "AtCkpdCmdHandler"

    const-string v9, "+CKPD=? test command, RESULT OK "

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    new-instance v7, Lcom/android/internal/atfwd/AtCmdResponse;

    invoke-direct {v7, v8, v13}, Lcom/android/internal/atfwd/AtCmdResponse;-><init>(ILjava/lang/String;)V

    goto :goto_1

    .line 387
    :cond_2
    :try_start_0
    new-instance v6, Lcom/android/internal/atfwd/AtCkpdCmdHandler$ParsedCkpdCmd;

    invoke-direct {v6, p0, p1}, Lcom/android/internal/atfwd/AtCkpdCmdHandler$ParsedCkpdCmd;-><init>(Lcom/android/internal/atfwd/AtCkpdCmdHandler;Lcom/android/internal/atfwd/AtCmd;)V
    :try_end_0
    .catch Lcom/android/internal/atfwd/AtCmdHandler$AtCmdParseException; {:try_start_0 .. :try_end_0} :catch_1

    .line 388
    .end local v5           #valid:Lcom/android/internal/atfwd/AtCkpdCmdHandler$ParsedCkpdCmd;
    .local v6, valid:Lcom/android/internal/atfwd/AtCkpdCmdHandler$ParsedCkpdCmd;
    :try_start_1
    new-instance v4, Lcom/android/internal/atfwd/AtCmdResponse;

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-direct {v4, v7, v8}, Lcom/android/internal/atfwd/AtCmdResponse;-><init>(ILjava/lang/String;)V
    :try_end_1
    .catch Lcom/android/internal/atfwd/AtCmdHandler$AtCmdParseException; {:try_start_1 .. :try_end_1} :catch_2

    .line 389
    .end local v3           #ret:Lcom/android/internal/atfwd/AtCmdResponse;
    .local v4, ret:Lcom/android/internal/atfwd/AtCmdResponse;
    :try_start_2
    const-string v7, "AtCkpdCmdHandler"

    const-string v8, "Queuing command"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    iget-object v8, p0, Lcom/android/internal/atfwd/AtCkpdCmdHandler;->mEventQ:Ljava/util/LinkedList;

    monitor-enter v8
    :try_end_2
    .catch Lcom/android/internal/atfwd/AtCmdHandler$AtCmdParseException; {:try_start_2 .. :try_end_2} :catch_0

    .line 391
    :try_start_3
    iget-object v7, p0, Lcom/android/internal/atfwd/AtCkpdCmdHandler;->mEventQ:Ljava/util/LinkedList;

    invoke-virtual {v7, v6}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 392
    iget-object v7, p0, Lcom/android/internal/atfwd/AtCkpdCmdHandler;->mEventQ:Ljava/util/LinkedList;

    invoke-virtual {v7}, Ljava/lang/Object;->notify()V

    .line 393
    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 394
    :try_start_4
    const-string v7, "AtCkpdCmdHandler"

    const-string v8, "Command queued"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Lcom/android/internal/atfwd/AtCmdHandler$AtCmdParseException; {:try_start_4 .. :try_end_4} :catch_0

    move-object v5, v6

    .end local v6           #valid:Lcom/android/internal/atfwd/AtCkpdCmdHandler$ParsedCkpdCmd;
    .restart local v5       #valid:Lcom/android/internal/atfwd/AtCkpdCmdHandler$ParsedCkpdCmd;
    move-object v3, v4

    .end local v4           #ret:Lcom/android/internal/atfwd/AtCmdResponse;
    .restart local v3       #ret:Lcom/android/internal/atfwd/AtCmdResponse;
    :goto_2
    move-object v7, v3

    .line 402
    goto :goto_1

    .line 393
    .end local v3           #ret:Lcom/android/internal/atfwd/AtCmdResponse;
    .end local v5           #valid:Lcom/android/internal/atfwd/AtCkpdCmdHandler$ParsedCkpdCmd;
    .restart local v4       #ret:Lcom/android/internal/atfwd/AtCmdResponse;
    .restart local v6       #valid:Lcom/android/internal/atfwd/AtCkpdCmdHandler$ParsedCkpdCmd;
    :catchall_0
    move-exception v7

    :try_start_5
    monitor-exit v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v7
    :try_end_6
    .catch Lcom/android/internal/atfwd/AtCmdHandler$AtCmdParseException; {:try_start_6 .. :try_end_6} :catch_0

    .line 395
    :catch_0
    move-exception v1

    move-object v5, v6

    .end local v6           #valid:Lcom/android/internal/atfwd/AtCkpdCmdHandler$ParsedCkpdCmd;
    .restart local v5       #valid:Lcom/android/internal/atfwd/AtCkpdCmdHandler$ParsedCkpdCmd;
    move-object v3, v4

    .line 396
    .end local v4           #ret:Lcom/android/internal/atfwd/AtCmdResponse;
    .local v1, e:Lcom/android/internal/atfwd/AtCmdHandler$AtCmdParseException;
    .restart local v3       #ret:Lcom/android/internal/atfwd/AtCmdResponse;
    :goto_3
    const-string v7, "AtCkpdCmdHandler"

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

    .line 397
    new-instance v3, Lcom/android/internal/atfwd/AtCmdResponse;

    .end local v3           #ret:Lcom/android/internal/atfwd/AtCmdResponse;
    const-string v7, "+CME ERROR: 25"

    invoke-direct {v3, v9, v7}, Lcom/android/internal/atfwd/AtCmdResponse;-><init>(ILjava/lang/String;)V

    .line 398
    .restart local v3       #ret:Lcom/android/internal/atfwd/AtCmdResponse;
    goto :goto_2

    .line 400
    .end local v1           #e:Lcom/android/internal/atfwd/AtCmdHandler$AtCmdParseException;
    :cond_3
    new-instance v3, Lcom/android/internal/atfwd/AtCmdResponse;

    .end local v3           #ret:Lcom/android/internal/atfwd/AtCmdResponse;
    const-string v7, "+CME ERROR: 1"

    invoke-direct {v3, v9, v7}, Lcom/android/internal/atfwd/AtCmdResponse;-><init>(ILjava/lang/String;)V

    .restart local v3       #ret:Lcom/android/internal/atfwd/AtCmdResponse;
    goto :goto_2

    .line 395
    :catch_1
    move-exception v1

    goto :goto_3

    .end local v5           #valid:Lcom/android/internal/atfwd/AtCkpdCmdHandler$ParsedCkpdCmd;
    .restart local v6       #valid:Lcom/android/internal/atfwd/AtCkpdCmdHandler$ParsedCkpdCmd;
    :catch_2
    move-exception v1

    move-object v5, v6

    .end local v6           #valid:Lcom/android/internal/atfwd/AtCkpdCmdHandler$ParsedCkpdCmd;
    .restart local v5       #valid:Lcom/android/internal/atfwd/AtCkpdCmdHandler$ParsedCkpdCmd;
    goto :goto_3
.end method

.method public startEventProcess()V
    .locals 1

    .prologue
    .line 355
    iget-boolean v0, p0, Lcom/android/internal/atfwd/AtCkpdCmdHandler;->mInjectThreadStart:Z

    if-nez v0, :cond_0

    .line 356
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/atfwd/AtCkpdCmdHandler;->mInjectThreadStart:Z

    .line 357
    iget-object v0, p0, Lcom/android/internal/atfwd/AtCkpdCmdHandler;->mInjectThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 359
    :cond_0
    return-void
.end method

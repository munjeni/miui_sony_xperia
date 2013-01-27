.class public Lmiui/util/AudioOutputHelper;
.super Ljava/lang/Object;
.source "AudioOutputHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/util/AudioOutputHelper$DUMP_TAG;,
        Lmiui/util/AudioOutputHelper$AudioOutputClient;
    }
.end annotation


# static fields
.field private static final DEFAULT_TEMP_FILE:Ljava/lang/String; = "audio_flinger_%d_%d_%d.dump"

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-class v0, Lmiui/util/AudioOutputHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmiui/util/AudioOutputHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    return-void
.end method

.method private static collectSessions(Ljava/io/BufferedReader;Ljava/util/Map;)Ljava/lang/String;
    .locals 6
    .parameter "reader"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/BufferedReader;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 88
    .local p1, sessions:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .line 89
    .local v0, content:Ljava/lang/String;
    :goto_0
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 90
    sget-object v4, Lmiui/util/AudioOutputHelper$DUMP_TAG;->SESSIONS_CONTENT_FINDER:Ljava/util/regex/Pattern;

    invoke-virtual {v4, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 91
    .local v1, matcher:Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-nez v4, :cond_1

    .line 100
    .end local v1           #matcher:Ljava/util/regex/Matcher;
    :cond_0
    return-object v0

    .line 95
    .restart local v1       #matcher:Ljava/util/regex/Matcher;
    :cond_1
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 96
    .local v3, sessionId:I
    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 97
    .local v2, pid:I
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {p1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private static collectTracks(Ljava/io/BufferedReader;Ljava/util/List;Ljava/util/Map;Z)Ljava/lang/String;
    .locals 10
    .parameter "reader"
    .parameter
    .parameter
    .parameter "active"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/BufferedReader;",
            "Ljava/util/List",
            "<",
            "Lmiui/util/AudioOutputHelper$AudioOutputClient;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;Z)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 106
    .local p1, clients:Ljava/util/List;,"Ljava/util/List<Lmiui/util/AudioOutputHelper$AudioOutputClient;>;"
    .local p2, sessions:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .line 107
    .local v1, content:Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 108
    sget-object v9, Lmiui/util/AudioOutputHelper$DUMP_TAG;->TRACK_CONTENT_FINDER:Ljava/util/regex/Pattern;

    invoke-virtual {v9, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 109
    .local v4, matcher:Ljava/util/regex/Matcher;
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v9

    if-nez v9, :cond_2

    .line 136
    .end local v4           #matcher:Ljava/util/regex/Matcher;
    :cond_1
    return-object v1

    .line 113
    .restart local v4       #matcher:Ljava/util/regex/Matcher;
    :cond_2
    const/4 v9, 0x2

    invoke-virtual {v4, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 114
    .local v7, sessionId:I
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {p2, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 115
    .local v6, proc:Ljava/lang/Integer;
    if-eqz v6, :cond_0

    .line 116
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 117
    .local v5, pid:I
    const/4 v9, 0x1

    invoke-virtual {v4, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 118
    .local v8, streamType:I
    const/4 v2, 0x0

    .line 121
    .local v2, found:Z
    if-eqz p3, :cond_4

    .line 122
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/util/AudioOutputHelper$AudioOutputClient;

    .line 123
    .local v0, c:Lmiui/util/AudioOutputHelper$AudioOutputClient;
    iget v9, v0, Lmiui/util/AudioOutputHelper$AudioOutputClient;->mSessionId:I

    if-ne v9, v7, :cond_3

    .line 124
    iput-boolean p3, v0, Lmiui/util/AudioOutputHelper$AudioOutputClient;->mActive:Z

    .line 125
    const/4 v2, 0x1

    goto :goto_1

    .line 130
    .end local v0           #c:Lmiui/util/AudioOutputHelper$AudioOutputClient;
    .end local v3           #i$:Ljava/util/Iterator;
    :cond_4
    if-nez v2, :cond_0

    .line 131
    new-instance v9, Lmiui/util/AudioOutputHelper$AudioOutputClient;

    invoke-direct {v9, v7, v5, v8, p3}, Lmiui/util/AudioOutputHelper$AudioOutputClient;-><init>(IIIZ)V

    invoke-interface {p1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static getActiveClientNameList(Ljava/util/List;Landroid/content/Context;Z)Ljava/util/List;
    .locals 9
    .parameter
    .parameter "context"
    .parameter "addMainProc"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$RunningAppProcessInfo;",
            ">;",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .local p0, procs:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    const/4 v5, 0x0

    .line 274
    if-nez p0, :cond_1

    .line 302
    :cond_0
    :goto_0
    return-object v5

    .line 278
    :cond_1
    invoke-static {p1}, Lmiui/util/AudioOutputHelper;->parseAudioFlingerDump(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    .line 279
    .local v1, clients:Ljava/util/List;,"Ljava/util/List<Lmiui/util/AudioOutputHelper$AudioOutputClient;>;"
    if-eqz v1, :cond_0

    .line 283
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 284
    .local v5, names:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/util/AudioOutputHelper$AudioOutputClient;

    .line 285
    .local v0, c:Lmiui/util/AudioOutputHelper$AudioOutputClient;
    iget-boolean v8, v0, Lmiui/util/AudioOutputHelper$AudioOutputClient;->mActive:Z

    if-eqz v8, :cond_2

    .line 286
    iget v6, v0, Lmiui/util/AudioOutputHelper$AudioOutputClient;->mProcessId:I

    .line 287
    .local v6, pid:I
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 288
    .local v7, proc:Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v8, v7, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v8, v6, :cond_3

    .line 289
    iget-object v8, v7, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 295
    .end local v0           #c:Lmiui/util/AudioOutputHelper$AudioOutputClient;
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v6           #pid:I
    .end local v7           #proc:Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_4
    if-eqz p2, :cond_0

    .line 298
    invoke-static {v5}, Lmiui/util/AudioOutputHelper;->getMainProcessNames(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    .line 299
    .local v4, mainProc:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method public static getActiveReceiverNameList(Landroid/content/Context;)Ljava/util/List;
    .locals 12
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 312
    :try_start_0
    new-instance v3, Landroid/content/Intent;

    const-string v9, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v3, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 313
    .local v3, intent:Landroid/content/Intent;
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-interface {v9, v3, v10, v11}, Landroid/content/pm/IPackageManager;->queryIntentReceivers(Landroid/content/Intent;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v6

    .line 315
    .local v6, receivers:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v6, :cond_0

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_2

    :cond_0
    move-object v7, v8

    .line 340
    .end local v3           #intent:Landroid/content/Intent;
    .end local v6           #receivers:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_1
    :goto_0
    return-object v7

    .line 319
    .restart local v3       #intent:Landroid/content/Intent;
    .restart local v6       #receivers:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_2
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v9

    invoke-interface {v9}, Landroid/app/IActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v9

    const/4 v10, 0x1

    invoke-static {v9, p0, v10}, Lmiui/util/AudioOutputHelper;->getActiveClientNameList(Ljava/util/List;Landroid/content/Context;Z)Ljava/util/List;

    move-result-object v5

    .line 321
    .local v5, processes:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v5, :cond_3

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_4

    :cond_3
    move-object v7, v8

    .line 322
    goto :goto_0

    .line 325
    :cond_4
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 326
    .local v7, result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 327
    .local v4, p:Ljava/lang/String;
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 328
    .local v2, info:Landroid/content/pm/ResolveInfo;
    iget-object v9, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v9, :cond_6

    iget-object v9, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 330
    invoke-interface {v7, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 337
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #info:Landroid/content/pm/ResolveInfo;
    .end local v3           #intent:Landroid/content/Intent;
    .end local v4           #p:Ljava/lang/String;
    .end local v5           #processes:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v6           #receivers:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v7           #result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :catch_0
    move-exception v9

    move-object v7, v8

    .line 340
    goto :goto_0
.end method

.method private static getMainProcessNames(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 354
    .local p0, names:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 355
    .local v2, mainProcs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 356
    .local v3, name:Ljava/lang/String;
    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 357
    .local v0, colonIndex:I
    if-lez v0, :cond_0

    .line 358
    const/4 v4, 0x0

    invoke-virtual {v3, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 362
    .end local v0           #colonIndex:I
    .end local v3           #name:Ljava/lang/String;
    :cond_1
    return-object v2
.end method

.method public static hasActiveReceivers(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 349
    invoke-static {p0}, Lmiui/util/AudioOutputHelper;->getActiveReceiverNameList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 350
    .local v0, processes:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseAudioFlingerDump(Landroid/content/Context;)Ljava/util/List;
    .locals 15
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lmiui/util/AudioOutputHelper$AudioOutputClient;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v14, 0x3

    const/4 v13, 0x2

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 146
    const/4 v0, 0x0

    .line 148
    .local v0, dir:Ljava/io/File;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 152
    :goto_0
    if-nez v0, :cond_0

    .line 153
    new-instance v0, Ljava/io/File;

    .end local v0           #dir:Ljava/io/File;
    const-string v8, "/cache"

    invoke-direct {v0, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 156
    .restart local v0       #dir:Ljava/io/File;
    :cond_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    .line 157
    .local v4, pid:I
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Thread;->getId()J

    move-result-wide v6

    .line 158
    .local v6, tid:J
    const/4 v2, 0x0

    .line 159
    .local v2, i:I
    new-instance v1, Ljava/io/File;

    const-string v8, "audio_flinger_%d_%d_%d.dump"

    new-array v9, v14, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v11

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v9, v12

    add-int/lit8 v3, v2, 0x1

    .end local v2           #i:I
    .local v3, i:I
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v13

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v1, v0, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .local v1, dumpFile:Ljava/io/File;
    move v2, v3

    .line 160
    .end local v3           #i:I
    .restart local v2       #i:I
    :goto_1
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 161
    new-instance v1, Ljava/io/File;

    .end local v1           #dumpFile:Ljava/io/File;
    const-string v8, "audio_flinger_%d_%d_%d.dump"

    new-array v9, v14, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v11

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v9, v12

    add-int/lit8 v3, v2, 0x1

    .end local v2           #i:I
    .restart local v3       #i:I
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v13

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v1, v0, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .restart local v1       #dumpFile:Ljava/io/File;
    move v2, v3

    .end local v3           #i:I
    .restart local v2       #i:I
    goto :goto_1

    .line 164
    :cond_1
    invoke-static {v1}, Lmiui/util/AudioOutputHelper;->parseAudioFlingerDumpInternal(Ljava/io/File;)Ljava/util/List;

    move-result-object v5

    .line 165
    .local v5, result:Ljava/util/List;,"Ljava/util/List<Lmiui/util/AudioOutputHelper$AudioOutputClient;>;"
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 167
    return-object v5

    .line 149
    .end local v1           #dumpFile:Ljava/io/File;
    .end local v2           #i:I
    .end local v4           #pid:I
    .end local v5           #result:Ljava/util/List;,"Ljava/util/List<Lmiui/util/AudioOutputHelper$AudioOutputClient;>;"
    .end local v6           #tid:J
    :catch_0
    move-exception v8

    goto :goto_0
.end method

.method private static parseAudioFlingerDumpInternal(Ljava/io/File;)Ljava/util/List;
    .locals 18
    .parameter "tempFile"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/List",
            "<",
            "Lmiui/util/AudioOutputHelper$AudioOutputClient;",
            ">;"
        }
    .end annotation

    .prologue
    .line 171
    const/4 v7, 0x0

    .line 173
    .local v7, os:Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v8, Ljava/io/FileOutputStream;

    move-object/from16 v0, p0

    invoke-direct {v8, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5

    .line 174
    .end local v7           #os:Ljava/io/FileOutputStream;
    .local v8, os:Ljava/io/FileOutputStream;
    :try_start_1
    const-string/jumbo v15, "media.audio_flinger"

    invoke-static {v15}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v15

    invoke-virtual {v8}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v16

    const/16 v17, 0x0

    invoke-interface/range {v15 .. v17}, Landroid/os/IBinder;->dump(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_f
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_e
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_d

    .line 182
    if-eqz v8, :cond_a

    .line 184
    :try_start_2
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v7, v8

    .line 190
    .end local v8           #os:Ljava/io/FileOutputStream;
    .restart local v7       #os:Ljava/io/FileOutputStream;
    :cond_0
    :goto_0
    const/4 v5, 0x0

    .line 192
    .local v5, in:Ljava/io/InputStream;
    :try_start_3
    new-instance v6, Ljava/io/FileInputStream;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_c

    .end local v5           #in:Ljava/io/InputStream;
    .local v6, in:Ljava/io/InputStream;
    move-object v5, v6

    .line 196
    .end local v6           #in:Ljava/io/InputStream;
    .restart local v5       #in:Ljava/io/InputStream;
    :goto_1
    if-nez v5, :cond_2

    .line 197
    const/4 v2, 0x0

    .line 264
    :goto_2
    return-object v2

    .line 185
    .end local v5           #in:Ljava/io/InputStream;
    .end local v7           #os:Ljava/io/FileOutputStream;
    .restart local v8       #os:Ljava/io/FileOutputStream;
    :catch_0
    move-exception v15

    move-object v7, v8

    .line 186
    .end local v8           #os:Ljava/io/FileOutputStream;
    .restart local v7       #os:Ljava/io/FileOutputStream;
    goto :goto_0

    .line 175
    :catch_1
    move-exception v4

    .line 176
    .local v4, e:Ljava/io/FileNotFoundException;
    :goto_3
    :try_start_4
    sget-object v15, Lmiui/util/AudioOutputHelper;->TAG:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 182
    if-eqz v7, :cond_0

    .line 184
    :try_start_5
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_0

    .line 185
    :catch_2
    move-exception v15

    goto :goto_0

    .line 177
    .end local v4           #e:Ljava/io/FileNotFoundException;
    :catch_3
    move-exception v4

    .line 178
    .local v4, e:Landroid/os/RemoteException;
    :goto_4
    :try_start_6
    sget-object v15, Lmiui/util/AudioOutputHelper;->TAG:Ljava/lang/String;

    invoke-virtual {v4}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 182
    if-eqz v7, :cond_0

    .line 184
    :try_start_7
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_0

    .line 185
    :catch_4
    move-exception v15

    goto :goto_0

    .line 179
    .end local v4           #e:Landroid/os/RemoteException;
    :catch_5
    move-exception v4

    .line 180
    .local v4, e:Ljava/io/IOException;
    :goto_5
    :try_start_8
    sget-object v15, Lmiui/util/AudioOutputHelper;->TAG:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 182
    if-eqz v7, :cond_0

    .line 184
    :try_start_9
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    goto :goto_0

    .line 185
    :catch_6
    move-exception v15

    goto :goto_0

    .line 182
    .end local v4           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v15

    :goto_6
    if-eqz v7, :cond_1

    .line 184
    :try_start_a
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_9

    .line 186
    :cond_1
    :goto_7
    throw v15

    .line 201
    .restart local v5       #in:Ljava/io/InputStream;
    :cond_2
    :try_start_b
    new-instance v9, Ljava/io/BufferedReader;

    new-instance v15, Ljava/io/InputStreamReader;

    invoke-direct {v15, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v9, v15}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 202
    .local v9, reader:Ljava/io/BufferedReader;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 203
    .local v2, clients:Ljava/util/List;,"Ljava/util/List<Lmiui/util/AudioOutputHelper$AudioOutputClient;>;"
    const/4 v10, 0x0

    .line 204
    .local v10, sessions:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    const/4 v12, 0x0

    .line 206
    .local v12, standby:Z
    const/4 v3, 0x0

    .line 207
    .local v3, content:Ljava/lang/String;
    const/4 v11, 0x0

    .line 209
    .local v11, skipped:Ljava/lang/String;
    :cond_3
    :goto_8
    if-eqz v11, :cond_6

    .line 210
    move-object v3, v11

    .line 211
    const/4 v11, 0x0

    .line 219
    :cond_4
    sget-object v15, Lmiui/util/AudioOutputHelper$DUMP_TAG;->SESSIONS_HEAD_FINDER:Ljava/util/regex/Pattern;

    invoke-virtual {v15, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v15

    invoke-virtual {v15}, Ljava/util/regex/Matcher;->matches()Z

    move-result v15

    if-eqz v15, :cond_7

    .line 220
    if-nez v10, :cond_5

    .line 221
    new-instance v10, Ljava/util/HashMap;

    .end local v10           #sessions:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 223
    .restart local v10       #sessions:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :cond_5
    invoke-static {v9, v10}, Lmiui/util/AudioOutputHelper;->collectSessions(Ljava/io/BufferedReader;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v11

    .line 224
    goto :goto_8

    .line 213
    :cond_6
    invoke-virtual {v9}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_8

    move-result-object v3

    .line 214
    if-nez v3, :cond_4

    .line 259
    :try_start_c
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_7

    goto :goto_2

    .line 260
    :catch_7
    move-exception v15

    goto :goto_2

    .line 227
    :cond_7
    :try_start_d
    sget-object v15, Lmiui/util/AudioOutputHelper$DUMP_TAG;->STANDBY_FINDER:Ljava/util/regex/Pattern;

    invoke-virtual {v15, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v13

    .line 228
    .local v13, standbyMatcher:Ljava/util/regex/Matcher;
    invoke-virtual {v13}, Ljava/util/regex/Matcher;->find()Z

    move-result v15

    if-eqz v15, :cond_8

    .line 229
    const/4 v15, 0x1

    invoke-virtual {v13, v15}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    .line 230
    goto :goto_8

    .line 233
    :cond_8
    if-nez v12, :cond_3

    .line 234
    sget-object v15, Lmiui/util/AudioOutputHelper$DUMP_TAG;->TRACKS_FINDER:Ljava/util/regex/Pattern;

    invoke-virtual {v15, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v14

    .line 235
    .local v14, trackMatcher:Ljava/util/regex/Matcher;
    invoke-virtual {v14}, Ljava/util/regex/Matcher;->find()Z

    move-result v15

    if-eqz v15, :cond_9

    .line 237
    invoke-virtual {v9}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 239
    const/4 v15, 0x0

    invoke-static {v9, v2, v10, v15}, Lmiui/util/AudioOutputHelper;->collectTracks(Ljava/io/BufferedReader;Ljava/util/List;Ljava/util/Map;Z)Ljava/lang/String;

    move-result-object v11

    .line 240
    goto :goto_8

    .line 243
    :cond_9
    sget-object v15, Lmiui/util/AudioOutputHelper$DUMP_TAG;->ACTIVE_TRACKS_FINDER:Ljava/util/regex/Pattern;

    invoke-virtual {v15, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 244
    .local v1, activeTrackMatcher:Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v15

    if-eqz v15, :cond_3

    .line 246
    invoke-virtual {v9}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 248
    const/4 v15, 0x1

    invoke-static {v9, v2, v10, v15}, Lmiui/util/AudioOutputHelper;->collectTracks(Ljava/io/BufferedReader;Ljava/util/List;Ljava/util/Map;Z)Ljava/lang/String;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_8

    move-result-object v11

    .line 249
    goto :goto_8

    .line 255
    .end local v1           #activeTrackMatcher:Ljava/util/regex/Matcher;
    .end local v2           #clients:Ljava/util/List;,"Ljava/util/List<Lmiui/util/AudioOutputHelper$AudioOutputClient;>;"
    .end local v3           #content:Ljava/lang/String;
    .end local v9           #reader:Ljava/io/BufferedReader;
    .end local v10           #sessions:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v11           #skipped:Ljava/lang/String;
    .end local v12           #standby:Z
    .end local v13           #standbyMatcher:Ljava/util/regex/Matcher;
    .end local v14           #trackMatcher:Ljava/util/regex/Matcher;
    :catch_8
    move-exception v4

    .line 256
    .local v4, e:Ljava/lang/Exception;
    :try_start_e
    sget-object v15, Lmiui/util/AudioOutputHelper;->TAG:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    .line 259
    :try_start_f
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_a

    .line 264
    :goto_9
    const/4 v2, 0x0

    goto/16 :goto_2

    .line 258
    .end local v4           #e:Ljava/lang/Exception;
    :catchall_1
    move-exception v15

    .line 259
    :try_start_10
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_b

    .line 261
    :goto_a
    throw v15

    .line 185
    .end local v5           #in:Ljava/io/InputStream;
    :catch_9
    move-exception v16

    goto/16 :goto_7

    .line 260
    .restart local v4       #e:Ljava/lang/Exception;
    .restart local v5       #in:Ljava/io/InputStream;
    :catch_a
    move-exception v15

    goto :goto_9

    .end local v4           #e:Ljava/lang/Exception;
    :catch_b
    move-exception v16

    goto :goto_a

    .line 193
    :catch_c
    move-exception v15

    goto/16 :goto_1

    .line 182
    .end local v5           #in:Ljava/io/InputStream;
    .end local v7           #os:Ljava/io/FileOutputStream;
    .restart local v8       #os:Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v15

    move-object v7, v8

    .end local v8           #os:Ljava/io/FileOutputStream;
    .restart local v7       #os:Ljava/io/FileOutputStream;
    goto/16 :goto_6

    .line 179
    .end local v7           #os:Ljava/io/FileOutputStream;
    .restart local v8       #os:Ljava/io/FileOutputStream;
    :catch_d
    move-exception v4

    move-object v7, v8

    .end local v8           #os:Ljava/io/FileOutputStream;
    .restart local v7       #os:Ljava/io/FileOutputStream;
    goto/16 :goto_5

    .line 177
    .end local v7           #os:Ljava/io/FileOutputStream;
    .restart local v8       #os:Ljava/io/FileOutputStream;
    :catch_e
    move-exception v4

    move-object v7, v8

    .end local v8           #os:Ljava/io/FileOutputStream;
    .restart local v7       #os:Ljava/io/FileOutputStream;
    goto/16 :goto_4

    .line 175
    .end local v7           #os:Ljava/io/FileOutputStream;
    .restart local v8       #os:Ljava/io/FileOutputStream;
    :catch_f
    move-exception v4

    move-object v7, v8

    .end local v8           #os:Ljava/io/FileOutputStream;
    .restart local v7       #os:Ljava/io/FileOutputStream;
    goto/16 :goto_3

    .end local v7           #os:Ljava/io/FileOutputStream;
    .restart local v8       #os:Ljava/io/FileOutputStream;
    :cond_a
    move-object v7, v8

    .end local v8           #os:Ljava/io/FileOutputStream;
    .restart local v7       #os:Ljava/io/FileOutputStream;
    goto/16 :goto_0
.end method

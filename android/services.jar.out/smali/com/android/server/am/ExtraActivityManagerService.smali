.class public Lcom/android/server/am/ExtraActivityManagerService;
.super Ljava/lang/Object;
.source "ExtraActivityManagerService.java"


# static fields
.field private static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const-class v0, Lcom/android/server/am/ExtraActivityManagerService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/ExtraActivityManagerService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static adjustMediaButtonReceivers(Ljava/util/List;Ljava/util/List;)V
    .locals 7
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$RunningAppProcessInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 31
    .local p0, receivers:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Object;>;"
    .local p1, procs:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-static {p1, v5, v6}, Lmiui/util/AudioOutputHelper;->getActiveClientNameList(Ljava/util/List;Landroid/content/Context;Z)Ljava/util/List;

    move-result-object v0

    .line 33
    .local v0, activeProcessNames:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-nez v0, :cond_1

    .line 48
    :cond_0
    return-void

    .line 37
    :cond_1
    const/4 v1, 0x0

    .line 38
    .local v1, headIndex:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_0

    .line 39
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 41
    .local v4, r:Ljava/lang/Object;
    invoke-static {v4}, Lcom/android/server/am/ExtraActivityManagerService;->getProcessName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 42
    .local v3, name:Ljava/lang/String;
    if-eqz v3, :cond_2

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 43
    invoke-interface {p0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 44
    invoke-interface {p0, v1, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 45
    add-int/lit8 v1, v1, 0x1

    .line 38
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static adjustMediaButtonReceivers(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter "action"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$RunningAppProcessInfo;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 17
    .local p0, receivers:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Object;>;"
    .local p1, procs:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    const-string v0, "android.intent.action.MEDIA_BUTTON"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 18
    invoke-static {p0, p1}, Lcom/android/server/am/ExtraActivityManagerService;->adjustMediaButtonReceivers(Ljava/util/List;Ljava/util/List;)V

    .line 20
    :cond_0
    return-void
.end method

.method private static getProcessName(Ljava/lang/Object;)Ljava/lang/String;
    .locals 6
    .parameter "r"

    .prologue
    .line 51
    const/4 v2, 0x0

    .line 52
    .local v2, name:Ljava/lang/String;
    instance-of v3, p0, Lcom/android/server/am/BroadcastFilter;

    if-eqz v3, :cond_1

    move-object v0, p0

    .line 53
    check-cast v0, Lcom/android/server/am/BroadcastFilter;

    .line 54
    .local v0, filter:Lcom/android/server/am/BroadcastFilter;
    iget-object v3, v0, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    if-eqz v3, :cond_0

    iget-object v3, v0, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget-object v3, v3, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v3, :cond_0

    .line 56
    iget-object v3, v0, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget-object v3, v3, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v3, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 67
    .end local v0           #filter:Lcom/android/server/am/BroadcastFilter;
    :cond_0
    :goto_0
    return-object v2

    .line 58
    :cond_1
    instance-of v3, p0, Landroid/content/pm/ResolveInfo;

    if-eqz v3, :cond_2

    move-object v1, p0

    .line 59
    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 60
    .local v1, info:Landroid/content/pm/ResolveInfo;
    iget-object v3, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v3, :cond_0

    .line 61
    iget-object v3, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v3, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    goto :goto_0

    .line 64
    .end local v1           #info:Landroid/content/pm/ResolveInfo;
    :cond_2
    sget-object v3, Lcom/android/server/am/ExtraActivityManagerService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unknown receiver type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

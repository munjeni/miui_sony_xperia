.class public Lcom/sonyericsson/customizedsettings/MasterResetChecker;
.super Ljava/lang/Object;
.source "MasterResetChecker.java"


# static fields
.field private static mResetDone:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sonyericsson/customizedsettings/MasterResetChecker;->mResetDone:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized resetDone()Z
    .locals 2

    .prologue
    .line 28
    const-class v0, Lcom/sonyericsson/customizedsettings/MasterResetChecker;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/sonyericsson/customizedsettings/MasterResetChecker;->mResetDone:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized setResetDone(Z)V
    .locals 2
    .parameter "resetDone"

    .prologue
    .line 24
    const-class v0, Lcom/sonyericsson/customizedsettings/MasterResetChecker;

    monitor-enter v0

    :try_start_0
    sput-boolean p0, Lcom/sonyericsson/customizedsettings/MasterResetChecker;->mResetDone:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    monitor-exit v0

    return-void

    .line 24
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

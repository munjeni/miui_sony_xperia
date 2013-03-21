.class Lcom/android/server/BackupManagerService$RestoreParams;
.super Ljava/lang/Object;
.source "BackupManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BackupManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RestoreParams"
.end annotation


# instance fields
.field public filterSet:[Ljava/lang/String;

.field public needFullBackup:Z

.field public observer:Landroid/app/backup/IRestoreObserver;

.field public pkgInfo:Landroid/content/pm/PackageInfo;

.field public pmToken:I

.field final synthetic this$0:Lcom/android/server/BackupManagerService;

.field public token:J

.field public transport:Lcom/android/internal/backup/IBackupTransport;


# direct methods
.method constructor <init>(Lcom/android/server/BackupManagerService;Lcom/android/internal/backup/IBackupTransport;Landroid/app/backup/IRestoreObserver;JLandroid/content/pm/PackageInfo;IZ)V
    .locals 1
    .parameter
    .parameter "_transport"
    .parameter "_obs"
    .parameter "_token"
    .parameter "_pkg"
    .parameter "_pmToken"
    .parameter "_needFullBackup"

    .prologue
    .line 278
    iput-object p1, p0, Lcom/android/server/BackupManagerService$RestoreParams;->this$0:Lcom/android/server/BackupManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 279
    iput-object p2, p0, Lcom/android/server/BackupManagerService$RestoreParams;->transport:Lcom/android/internal/backup/IBackupTransport;

    .line 280
    iput-object p3, p0, Lcom/android/server/BackupManagerService$RestoreParams;->observer:Landroid/app/backup/IRestoreObserver;

    .line 281
    iput-wide p4, p0, Lcom/android/server/BackupManagerService$RestoreParams;->token:J

    .line 282
    iput-object p6, p0, Lcom/android/server/BackupManagerService$RestoreParams;->pkgInfo:Landroid/content/pm/PackageInfo;

    .line 283
    iput p7, p0, Lcom/android/server/BackupManagerService$RestoreParams;->pmToken:I

    .line 284
    iput-boolean p8, p0, Lcom/android/server/BackupManagerService$RestoreParams;->needFullBackup:Z

    .line 285
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/BackupManagerService$RestoreParams;->filterSet:[Ljava/lang/String;

    .line 286
    return-void
.end method

.method constructor <init>(Lcom/android/server/BackupManagerService;Lcom/android/internal/backup/IBackupTransport;Landroid/app/backup/IRestoreObserver;JZ)V
    .locals 2
    .parameter
    .parameter "_transport"
    .parameter "_obs"
    .parameter "_token"
    .parameter "_needFullBackup"

    .prologue
    const/4 v1, 0x0

    .line 289
    iput-object p1, p0, Lcom/android/server/BackupManagerService$RestoreParams;->this$0:Lcom/android/server/BackupManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 290
    iput-object p2, p0, Lcom/android/server/BackupManagerService$RestoreParams;->transport:Lcom/android/internal/backup/IBackupTransport;

    .line 291
    iput-object p3, p0, Lcom/android/server/BackupManagerService$RestoreParams;->observer:Landroid/app/backup/IRestoreObserver;

    .line 292
    iput-wide p4, p0, Lcom/android/server/BackupManagerService$RestoreParams;->token:J

    .line 293
    iput-object v1, p0, Lcom/android/server/BackupManagerService$RestoreParams;->pkgInfo:Landroid/content/pm/PackageInfo;

    .line 294
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/BackupManagerService$RestoreParams;->pmToken:I

    .line 295
    iput-boolean p6, p0, Lcom/android/server/BackupManagerService$RestoreParams;->needFullBackup:Z

    .line 296
    iput-object v1, p0, Lcom/android/server/BackupManagerService$RestoreParams;->filterSet:[Ljava/lang/String;

    .line 297
    return-void
.end method

.method constructor <init>(Lcom/android/server/BackupManagerService;Lcom/android/internal/backup/IBackupTransport;Landroid/app/backup/IRestoreObserver;J[Ljava/lang/String;Z)V
    .locals 1
    .parameter
    .parameter "_transport"
    .parameter "_obs"
    .parameter "_token"
    .parameter "_filterSet"
    .parameter "_needFullBackup"

    .prologue
    .line 300
    iput-object p1, p0, Lcom/android/server/BackupManagerService$RestoreParams;->this$0:Lcom/android/server/BackupManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 301
    iput-object p2, p0, Lcom/android/server/BackupManagerService$RestoreParams;->transport:Lcom/android/internal/backup/IBackupTransport;

    .line 302
    iput-object p3, p0, Lcom/android/server/BackupManagerService$RestoreParams;->observer:Landroid/app/backup/IRestoreObserver;

    .line 303
    iput-wide p4, p0, Lcom/android/server/BackupManagerService$RestoreParams;->token:J

    .line 304
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/BackupManagerService$RestoreParams;->pkgInfo:Landroid/content/pm/PackageInfo;

    .line 305
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/BackupManagerService$RestoreParams;->pmToken:I

    .line 306
    iput-boolean p7, p0, Lcom/android/server/BackupManagerService$RestoreParams;->needFullBackup:Z

    .line 307
    iput-object p6, p0, Lcom/android/server/BackupManagerService$RestoreParams;->filterSet:[Ljava/lang/String;

    .line 308
    return-void
.end method

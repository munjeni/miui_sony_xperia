.class Lcom/sonyericsson/customizedsettings/ProgressUpdateTask;
.super Ljava/util/TimerTask;
.source "MasterResetActivity.java"


# instance fields
.field private final mProgressBar:Landroid/widget/ProgressBar;

.field private mUpdates:I


# direct methods
.method constructor <init>(Landroid/widget/ProgressBar;I)V
    .locals 1
    .parameter "progressBar"
    .parameter "progress"

    .prologue
    .line 149
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 147
    const/4 v0, 0x0

    iput v0, p0, Lcom/sonyericsson/customizedsettings/ProgressUpdateTask;->mUpdates:I

    .line 150
    iput-object p1, p0, Lcom/sonyericsson/customizedsettings/ProgressUpdateTask;->mProgressBar:Landroid/widget/ProgressBar;

    .line 151
    iput p2, p0, Lcom/sonyericsson/customizedsettings/ProgressUpdateTask;->mUpdates:I

    .line 152
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 156
    iget-object v0, p0, Lcom/sonyericsson/customizedsettings/ProgressUpdateTask;->mProgressBar:Landroid/widget/ProgressBar;

    iget v1, p0, Lcom/sonyericsson/customizedsettings/ProgressUpdateTask;->mUpdates:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sonyericsson/customizedsettings/ProgressUpdateTask;->mUpdates:I

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 157
    return-void
.end method

.class Lmiui/app/screenelement/ActionCommand$DelayCommand;
.super Lmiui/app/screenelement/ActionCommand;
.source "ActionCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/app/screenelement/ActionCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DelayCommand"
.end annotation


# instance fields
.field private mCommand:Lmiui/app/screenelement/ActionCommand;

.field private mDelay:J


# direct methods
.method public constructor <init>(Lmiui/app/screenelement/ActionCommand;J)V
    .locals 1
    .parameter "command"
    .parameter "delay"

    .prologue
    .line 885
    invoke-virtual {p1}, Lmiui/app/screenelement/ActionCommand;->getContext()Lmiui/app/screenelement/ScreenContext;

    move-result-object v0

    invoke-direct {p0, v0}, Lmiui/app/screenelement/ActionCommand;-><init>(Lmiui/app/screenelement/ScreenContext;)V

    .line 886
    iput-object p1, p0, Lmiui/app/screenelement/ActionCommand$DelayCommand;->mCommand:Lmiui/app/screenelement/ActionCommand;

    .line 887
    iput-wide p2, p0, Lmiui/app/screenelement/ActionCommand$DelayCommand;->mDelay:J

    .line 888
    return-void
.end method

.method static synthetic access$400(Lmiui/app/screenelement/ActionCommand$DelayCommand;)Lmiui/app/screenelement/ActionCommand;
    .locals 1
    .parameter "x0"

    .prologue
    .line 880
    iget-object v0, p0, Lmiui/app/screenelement/ActionCommand$DelayCommand;->mCommand:Lmiui/app/screenelement/ActionCommand;

    return-object v0
.end method


# virtual methods
.method protected doPerform()V
    .locals 4

    .prologue
    .line 896
    iget-object v0, p0, Lmiui/app/screenelement/ActionCommand$DelayCommand;->mContext:Lmiui/app/screenelement/ScreenContext;

    iget-object v0, v0, Lmiui/app/screenelement/ScreenContext;->mHandler:Landroid/os/Handler;

    new-instance v1, Lmiui/app/screenelement/ActionCommand$DelayCommand$1;

    invoke-direct {v1, p0}, Lmiui/app/screenelement/ActionCommand$DelayCommand$1;-><init>(Lmiui/app/screenelement/ActionCommand$DelayCommand;)V

    iget-wide v2, p0, Lmiui/app/screenelement/ActionCommand$DelayCommand;->mDelay:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 902
    return-void
.end method

.method public init()V
    .locals 1

    .prologue
    .line 891
    iget-object v0, p0, Lmiui/app/screenelement/ActionCommand$DelayCommand;->mCommand:Lmiui/app/screenelement/ActionCommand;

    invoke-virtual {v0}, Lmiui/app/screenelement/ActionCommand;->init()V

    .line 892
    return-void
.end method

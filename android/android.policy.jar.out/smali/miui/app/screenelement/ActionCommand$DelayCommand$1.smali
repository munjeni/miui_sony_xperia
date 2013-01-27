.class Lmiui/app/screenelement/ActionCommand$DelayCommand$1;
.super Ljava/lang/Object;
.source "ActionCommand.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/app/screenelement/ActionCommand$DelayCommand;->doPerform()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/app/screenelement/ActionCommand$DelayCommand;


# direct methods
.method constructor <init>(Lmiui/app/screenelement/ActionCommand$DelayCommand;)V
    .locals 0
    .parameter

    .prologue
    .line 896
    iput-object p1, p0, Lmiui/app/screenelement/ActionCommand$DelayCommand$1;->this$0:Lmiui/app/screenelement/ActionCommand$DelayCommand;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 899
    iget-object v0, p0, Lmiui/app/screenelement/ActionCommand$DelayCommand$1;->this$0:Lmiui/app/screenelement/ActionCommand$DelayCommand;

    #getter for: Lmiui/app/screenelement/ActionCommand$DelayCommand;->mCommand:Lmiui/app/screenelement/ActionCommand;
    invoke-static {v0}, Lmiui/app/screenelement/ActionCommand$DelayCommand;->access$400(Lmiui/app/screenelement/ActionCommand$DelayCommand;)Lmiui/app/screenelement/ActionCommand;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/app/screenelement/ActionCommand;->perform()V

    .line 900
    return-void
.end method

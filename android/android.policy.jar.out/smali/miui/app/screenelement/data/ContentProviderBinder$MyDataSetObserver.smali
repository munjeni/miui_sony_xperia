.class Lmiui/app/screenelement/data/ContentProviderBinder$MyDataSetObserver;
.super Landroid/database/DataSetObserver;
.source "ContentProviderBinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/app/screenelement/data/ContentProviderBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyDataSetObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/app/screenelement/data/ContentProviderBinder;


# direct methods
.method private constructor <init>(Lmiui/app/screenelement/data/ContentProviderBinder;)V
    .locals 0
    .parameter

    .prologue
    .line 499
    iput-object p1, p0, Lmiui/app/screenelement/data/ContentProviderBinder$MyDataSetObserver;->this$0:Lmiui/app/screenelement/data/ContentProviderBinder;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lmiui/app/screenelement/data/ContentProviderBinder;Lmiui/app/screenelement/data/ContentProviderBinder$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 499
    invoke-direct {p0, p1}, Lmiui/app/screenelement/data/ContentProviderBinder$MyDataSetObserver;-><init>(Lmiui/app/screenelement/data/ContentProviderBinder;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    .prologue
    .line 502
    iget-object v0, p0, Lmiui/app/screenelement/data/ContentProviderBinder$MyDataSetObserver;->this$0:Lmiui/app/screenelement/data/ContentProviderBinder;

    #getter for: Lmiui/app/screenelement/data/ContentProviderBinder;->mFinished:Z
    invoke-static {v0}, Lmiui/app/screenelement/data/ContentProviderBinder;->access$300(Lmiui/app/screenelement/data/ContentProviderBinder;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 510
    :cond_0
    :goto_0
    return-void

    .line 505
    :cond_1
    iget-object v0, p0, Lmiui/app/screenelement/data/ContentProviderBinder$MyDataSetObserver;->this$0:Lmiui/app/screenelement/data/ContentProviderBinder;

    #calls: Lmiui/app/screenelement/data/ContentProviderBinder;->updateVariables()V
    invoke-static {v0}, Lmiui/app/screenelement/data/ContentProviderBinder;->access$400(Lmiui/app/screenelement/data/ContentProviderBinder;)V

    .line 507
    iget-object v0, p0, Lmiui/app/screenelement/data/ContentProviderBinder$MyDataSetObserver;->this$0:Lmiui/app/screenelement/data/ContentProviderBinder;

    #getter for: Lmiui/app/screenelement/data/ContentProviderBinder;->mQueryCompletedListener:Lmiui/app/screenelement/data/ContentProviderBinder$QueryCompleteListener;
    invoke-static {v0}, Lmiui/app/screenelement/data/ContentProviderBinder;->access$500(Lmiui/app/screenelement/data/ContentProviderBinder;)Lmiui/app/screenelement/data/ContentProviderBinder$QueryCompleteListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 508
    iget-object v0, p0, Lmiui/app/screenelement/data/ContentProviderBinder$MyDataSetObserver;->this$0:Lmiui/app/screenelement/data/ContentProviderBinder;

    #getter for: Lmiui/app/screenelement/data/ContentProviderBinder;->mQueryCompletedListener:Lmiui/app/screenelement/data/ContentProviderBinder$QueryCompleteListener;
    invoke-static {v0}, Lmiui/app/screenelement/data/ContentProviderBinder;->access$500(Lmiui/app/screenelement/data/ContentProviderBinder;)Lmiui/app/screenelement/data/ContentProviderBinder$QueryCompleteListener;

    move-result-object v0

    iget-object v1, p0, Lmiui/app/screenelement/data/ContentProviderBinder$MyDataSetObserver;->this$0:Lmiui/app/screenelement/data/ContentProviderBinder;

    iget-object v1, v1, Lmiui/app/screenelement/data/ContentProviderBinder;->mName:Ljava/lang/String;

    invoke-interface {v0, v1}, Lmiui/app/screenelement/data/ContentProviderBinder$QueryCompleteListener;->onQueryCompleted(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onInvalidated()V
    .locals 2

    .prologue
    .line 514
    iget-object v0, p0, Lmiui/app/screenelement/data/ContentProviderBinder$MyDataSetObserver;->this$0:Lmiui/app/screenelement/data/ContentProviderBinder;

    #getter for: Lmiui/app/screenelement/data/ContentProviderBinder;->mFinished:Z
    invoke-static {v0}, Lmiui/app/screenelement/data/ContentProviderBinder;->access$300(Lmiui/app/screenelement/data/ContentProviderBinder;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 522
    :cond_0
    :goto_0
    return-void

    .line 517
    :cond_1
    iget-object v0, p0, Lmiui/app/screenelement/data/ContentProviderBinder$MyDataSetObserver;->this$0:Lmiui/app/screenelement/data/ContentProviderBinder;

    #calls: Lmiui/app/screenelement/data/ContentProviderBinder;->updateVariables()V
    invoke-static {v0}, Lmiui/app/screenelement/data/ContentProviderBinder;->access$400(Lmiui/app/screenelement/data/ContentProviderBinder;)V

    .line 519
    iget-object v0, p0, Lmiui/app/screenelement/data/ContentProviderBinder$MyDataSetObserver;->this$0:Lmiui/app/screenelement/data/ContentProviderBinder;

    #getter for: Lmiui/app/screenelement/data/ContentProviderBinder;->mQueryCompletedListener:Lmiui/app/screenelement/data/ContentProviderBinder$QueryCompleteListener;
    invoke-static {v0}, Lmiui/app/screenelement/data/ContentProviderBinder;->access$500(Lmiui/app/screenelement/data/ContentProviderBinder;)Lmiui/app/screenelement/data/ContentProviderBinder$QueryCompleteListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 520
    iget-object v0, p0, Lmiui/app/screenelement/data/ContentProviderBinder$MyDataSetObserver;->this$0:Lmiui/app/screenelement/data/ContentProviderBinder;

    #getter for: Lmiui/app/screenelement/data/ContentProviderBinder;->mQueryCompletedListener:Lmiui/app/screenelement/data/ContentProviderBinder$QueryCompleteListener;
    invoke-static {v0}, Lmiui/app/screenelement/data/ContentProviderBinder;->access$500(Lmiui/app/screenelement/data/ContentProviderBinder;)Lmiui/app/screenelement/data/ContentProviderBinder$QueryCompleteListener;

    move-result-object v0

    iget-object v1, p0, Lmiui/app/screenelement/data/ContentProviderBinder$MyDataSetObserver;->this$0:Lmiui/app/screenelement/data/ContentProviderBinder;

    iget-object v1, v1, Lmiui/app/screenelement/data/ContentProviderBinder;->mName:Ljava/lang/String;

    invoke-interface {v0, v1}, Lmiui/app/screenelement/data/ContentProviderBinder$QueryCompleteListener;->onQueryCompleted(Ljava/lang/String;)V

    goto :goto_0
.end method

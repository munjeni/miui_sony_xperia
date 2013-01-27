.class public Lmiui/app/screenelement/data/Variables;
.super Ljava/lang/Object;
.source "Variables.java"


# static fields
.field private static DBG:Z = false

.field private static final GLOBAL:Ljava/lang/String; = "__global"

.field private static final LOG_TAG:Ljava/lang/String; = "Variables"


# instance fields
.field private mDoubleArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private mNextDoubleIndex:I

.field private mNextStringIndex:I

.field private mNumLock:Ljava/lang/Object;

.field private mNumObjects:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private mStrLock:Ljava/lang/Object;

.field private mStrObjects:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private mStringArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const/4 v0, 0x0

    sput-boolean v0, Lmiui/app/screenelement/data/Variables;->DBG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput v0, p0, Lmiui/app/screenelement/data/Variables;->mNextDoubleIndex:I

    .line 19
    iput v0, p0, Lmiui/app/screenelement/data/Variables;->mNextStringIndex:I

    .line 22
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmiui/app/screenelement/data/Variables;->mNumObjects:Ljava/util/HashMap;

    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmiui/app/screenelement/data/Variables;->mStrObjects:Ljava/util/HashMap;

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/app/screenelement/data/Variables;->mDoubleArray:Ljava/util/ArrayList;

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/app/screenelement/data/Variables;->mStringArray:Ljava/util/ArrayList;

    .line 31
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lmiui/app/screenelement/data/Variables;->mNumLock:Ljava/lang/Object;

    .line 33
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lmiui/app/screenelement/data/Variables;->mStrLock:Ljava/lang/Object;

    return-void
.end method

.method private getIndex(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 3
    .parameter
    .parameter "object"
    .parameter "property"
    .parameter "nextIndex"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)I"
        }
    .end annotation

    .prologue
    .line 60
    .local p1, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    if-nez p2, :cond_0

    .line 61
    const-string p2, "__global"

    .line 62
    :cond_0
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 63
    .local v1, obj:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    if-nez v1, :cond_1

    .line 64
    new-instance v1, Ljava/util/HashMap;

    .end local v1           #obj:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 65
    .restart local v1       #obj:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-virtual {p1, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    :cond_1
    invoke-virtual {v1, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 68
    .local v0, index:Ljava/lang/Integer;
    if-nez v0, :cond_2

    .line 69
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 70
    invoke-virtual {v1, p3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    return v2
.end method


# virtual methods
.method public getNum(I)Ljava/lang/Double;
    .locals 2
    .parameter "index"

    .prologue
    .line 102
    iget-object v1, p0, Lmiui/app/screenelement/data/Variables;->mNumLock:Ljava/lang/Object;

    monitor-enter v1

    .line 103
    const/4 v0, -0x1

    if-lt p1, v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lmiui/app/screenelement/data/Variables;->mDoubleArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-le p1, v0, :cond_1

    .line 104
    :cond_0
    const/4 v0, 0x0

    monitor-exit v1

    .line 106
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lmiui/app/screenelement/data/Variables;->mDoubleArray:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    monitor-exit v1

    goto :goto_0

    .line 107
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getStr(I)Ljava/lang/String;
    .locals 2
    .parameter "index"

    .prologue
    .line 111
    iget-object v1, p0, Lmiui/app/screenelement/data/Variables;->mStrLock:Ljava/lang/Object;

    monitor-enter v1

    .line 112
    const/4 v0, -0x1

    if-lt p1, v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lmiui/app/screenelement/data/Variables;->mStringArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-le p1, v0, :cond_1

    .line 113
    :cond_0
    const/4 v0, 0x0

    monitor-exit v1

    .line 115
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lmiui/app/screenelement/data/Variables;->mStringArray:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    monitor-exit v1

    goto :goto_0

    .line 116
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public putNum(ID)V
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 76
    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lmiui/app/screenelement/data/Variables;->putNum(ILjava/lang/Double;)V

    .line 77
    return-void
.end method

.method public putNum(ILjava/lang/Double;)V
    .locals 3
    .parameter "index"
    .parameter "value"

    .prologue
    .line 80
    if-gez p1, :cond_0

    .line 88
    :goto_0
    return-void

    .line 82
    :cond_0
    iget-object v1, p0, Lmiui/app/screenelement/data/Variables;->mNumLock:Ljava/lang/Object;

    monitor-enter v1

    .line 83
    :goto_1
    :try_start_0
    iget-object v0, p0, Lmiui/app/screenelement/data/Variables;->mDoubleArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-le p1, v0, :cond_1

    .line 84
    iget-object v0, p0, Lmiui/app/screenelement/data/Variables;->mDoubleArray:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 87
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 86
    :cond_1
    :try_start_1
    iget-object v0, p0, Lmiui/app/screenelement/data/Variables;->mDoubleArray:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 87
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public putStr(ILjava/lang/String;)V
    .locals 3
    .parameter "index"
    .parameter "value"

    .prologue
    .line 91
    if-gez p1, :cond_0

    .line 99
    :goto_0
    return-void

    .line 93
    :cond_0
    iget-object v1, p0, Lmiui/app/screenelement/data/Variables;->mStrLock:Ljava/lang/Object;

    monitor-enter v1

    .line 94
    :goto_1
    :try_start_0
    iget-object v0, p0, Lmiui/app/screenelement/data/Variables;->mStringArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-le p1, v0, :cond_1

    .line 95
    iget-object v0, p0, Lmiui/app/screenelement/data/Variables;->mStringArray:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 98
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 97
    :cond_1
    :try_start_1
    iget-object v0, p0, Lmiui/app/screenelement/data/Variables;->mStringArray:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 98
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public registerNumberVariable(Ljava/lang/String;Ljava/lang/String;)I
    .locals 5
    .parameter "object"
    .parameter "property"

    .prologue
    .line 36
    iget-object v2, p0, Lmiui/app/screenelement/data/Variables;->mNumLock:Ljava/lang/Object;

    monitor-enter v2

    .line 37
    :try_start_0
    iget-object v1, p0, Lmiui/app/screenelement/data/Variables;->mNumObjects:Ljava/util/HashMap;

    iget v3, p0, Lmiui/app/screenelement/data/Variables;->mNextDoubleIndex:I

    invoke-direct {p0, v1, p1, p2, v3}, Lmiui/app/screenelement/data/Variables;->getIndex(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 38
    .local v0, index:I
    iget v1, p0, Lmiui/app/screenelement/data/Variables;->mNextDoubleIndex:I

    if-ne v0, v1, :cond_0

    .line 39
    iget v1, p0, Lmiui/app/screenelement/data/Variables;->mNextDoubleIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lmiui/app/screenelement/data/Variables;->mNextDoubleIndex:I

    .line 40
    :cond_0
    sget-boolean v1, Lmiui/app/screenelement/data/Variables;->DBG:Z

    if-eqz v1, :cond_1

    .line 41
    const-string v1, "Variables"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "registerNumberVariable: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  index:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    :cond_1
    monitor-exit v2

    return v0

    .line 44
    .end local v0           #index:I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public registerStringVariable(Ljava/lang/String;Ljava/lang/String;)I
    .locals 5
    .parameter "object"
    .parameter "property"

    .prologue
    .line 48
    iget-object v2, p0, Lmiui/app/screenelement/data/Variables;->mStrLock:Ljava/lang/Object;

    monitor-enter v2

    .line 49
    :try_start_0
    iget-object v1, p0, Lmiui/app/screenelement/data/Variables;->mStrObjects:Ljava/util/HashMap;

    iget v3, p0, Lmiui/app/screenelement/data/Variables;->mNextStringIndex:I

    invoke-direct {p0, v1, p1, p2, v3}, Lmiui/app/screenelement/data/Variables;->getIndex(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 50
    .local v0, index:I
    iget v1, p0, Lmiui/app/screenelement/data/Variables;->mNextStringIndex:I

    if-ne v0, v1, :cond_0

    .line 51
    iget v1, p0, Lmiui/app/screenelement/data/Variables;->mNextStringIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lmiui/app/screenelement/data/Variables;->mNextStringIndex:I

    .line 52
    :cond_0
    sget-boolean v1, Lmiui/app/screenelement/data/Variables;->DBG:Z

    if-eqz v1, :cond_1

    .line 53
    const-string v1, "Variables"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "registerStringVariable: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  index:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    :cond_1
    monitor-exit v2

    return v0

    .line 56
    .end local v0           #index:I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

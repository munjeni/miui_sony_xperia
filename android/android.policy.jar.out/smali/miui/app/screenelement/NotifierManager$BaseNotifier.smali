.class public abstract Lmiui/app/screenelement/NotifierManager$BaseNotifier;
.super Ljava/lang/Object;
.source "NotifierManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/app/screenelement/NotifierManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "BaseNotifier"
.end annotation


# instance fields
.field private mActiveReference:I

.field protected mContext:Landroid/content/Context;

.field private mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lmiui/app/screenelement/NotifierManager$OnNotifyListener;",
            ">;"
        }
    .end annotation
.end field

.field private mReference:I

.field private mRegistered:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "c"

    .prologue
    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/app/screenelement/NotifierManager$BaseNotifier;->mListeners:Ljava/util/ArrayList;

    .line 130
    iput-object p1, p0, Lmiui/app/screenelement/NotifierManager$BaseNotifier;->mContext:Landroid/content/Context;

    .line 131
    return-void
.end method


# virtual methods
.method public final addActiveRef()I
    .locals 1

    .prologue
    .line 146
    iget v0, p0, Lmiui/app/screenelement/NotifierManager$BaseNotifier;->mActiveReference:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lmiui/app/screenelement/NotifierManager$BaseNotifier;->mActiveReference:I

    return v0
.end method

.method public final addListener(Lmiui/app/screenelement/NotifierManager$OnNotifyListener;)V
    .locals 2
    .parameter "l"

    .prologue
    .line 134
    iget-object v1, p0, Lmiui/app/screenelement/NotifierManager$BaseNotifier;->mListeners:Ljava/util/ArrayList;

    monitor-enter v1

    .line 135
    :try_start_0
    iget-object v0, p0, Lmiui/app/screenelement/NotifierManager$BaseNotifier;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 136
    monitor-exit v1

    .line 137
    return-void

    .line 136
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final addRef()I
    .locals 1

    .prologue
    .line 154
    iget v0, p0, Lmiui/app/screenelement/NotifierManager$BaseNotifier;->mReference:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lmiui/app/screenelement/NotifierManager$BaseNotifier;->mReference:I

    return v0
.end method

.method public finish()V
    .locals 0

    .prologue
    .line 182
    invoke-virtual {p0}, Lmiui/app/screenelement/NotifierManager$BaseNotifier;->unregister()V

    .line 183
    return-void
.end method

.method public init()V
    .locals 0

    .prologue
    .line 170
    invoke-virtual {p0}, Lmiui/app/screenelement/NotifierManager$BaseNotifier;->register()V

    .line 171
    return-void
.end method

.method protected onNotify(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/Object;)V
    .locals 4
    .parameter "context"
    .parameter "intent"
    .parameter "o"

    .prologue
    .line 162
    iget-object v3, p0, Lmiui/app/screenelement/NotifierManager$BaseNotifier;->mListeners:Ljava/util/ArrayList;

    monitor-enter v3

    .line 163
    :try_start_0
    iget-object v2, p0, Lmiui/app/screenelement/NotifierManager$BaseNotifier;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/app/screenelement/NotifierManager$OnNotifyListener;

    .line 164
    .local v1, l:Lmiui/app/screenelement/NotifierManager$OnNotifyListener;
    invoke-interface {v1, p1, p2, p3}, Lmiui/app/screenelement/NotifierManager$OnNotifyListener;->onNotify(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/Object;)V

    goto :goto_0

    .line 166
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #l:Lmiui/app/screenelement/NotifierManager$OnNotifyListener;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 167
    return-void
.end method

.method protected abstract onRegister()V
.end method

.method protected abstract onUnregister()V
.end method

.method public pause()V
    .locals 0

    .prologue
    .line 178
    invoke-virtual {p0}, Lmiui/app/screenelement/NotifierManager$BaseNotifier;->unregister()V

    .line 179
    return-void
.end method

.method protected register()V
    .locals 3

    .prologue
    .line 186
    iget-boolean v0, p0, Lmiui/app/screenelement/NotifierManager$BaseNotifier;->mRegistered:Z

    if-eqz v0, :cond_1

    .line 193
    :cond_0
    :goto_0
    return-void

    .line 188
    :cond_1
    invoke-virtual {p0}, Lmiui/app/screenelement/NotifierManager$BaseNotifier;->onRegister()V

    .line 189
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/app/screenelement/NotifierManager$BaseNotifier;->mRegistered:Z

    .line 191
    invoke-static {}, Lmiui/app/screenelement/NotifierManager;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 192
    const-string v0, "NotifierManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRegister: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public final releaseActiveRef()I
    .locals 1

    .prologue
    .line 150
    iget v0, p0, Lmiui/app/screenelement/NotifierManager$BaseNotifier;->mActiveReference:I

    if-lez v0, :cond_0

    iget v0, p0, Lmiui/app/screenelement/NotifierManager$BaseNotifier;->mActiveReference:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lmiui/app/screenelement/NotifierManager$BaseNotifier;->mActiveReference:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final releaseRef()I
    .locals 1

    .prologue
    .line 158
    iget v0, p0, Lmiui/app/screenelement/NotifierManager$BaseNotifier;->mReference:I

    if-lez v0, :cond_0

    iget v0, p0, Lmiui/app/screenelement/NotifierManager$BaseNotifier;->mReference:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lmiui/app/screenelement/NotifierManager$BaseNotifier;->mReference:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final removeListener(Lmiui/app/screenelement/NotifierManager$OnNotifyListener;)V
    .locals 2
    .parameter "l"

    .prologue
    .line 140
    iget-object v1, p0, Lmiui/app/screenelement/NotifierManager$BaseNotifier;->mListeners:Ljava/util/ArrayList;

    monitor-enter v1

    .line 141
    :try_start_0
    iget-object v0, p0, Lmiui/app/screenelement/NotifierManager$BaseNotifier;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 142
    monitor-exit v1

    .line 143
    return-void

    .line 142
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public resume()V
    .locals 0

    .prologue
    .line 174
    invoke-virtual {p0}, Lmiui/app/screenelement/NotifierManager$BaseNotifier;->register()V

    .line 175
    return-void
.end method

.method protected unregister()V
    .locals 4

    .prologue
    .line 196
    iget-boolean v1, p0, Lmiui/app/screenelement/NotifierManager$BaseNotifier;->mRegistered:Z

    if-nez v1, :cond_1

    .line 207
    :cond_0
    :goto_0
    return-void

    .line 199
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lmiui/app/screenelement/NotifierManager$BaseNotifier;->onUnregister()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 203
    :goto_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lmiui/app/screenelement/NotifierManager$BaseNotifier;->mRegistered:Z

    .line 205
    invoke-static {}, Lmiui/app/screenelement/NotifierManager;->access$000()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 206
    const-string v1, "NotifierManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onUnregister: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 200
    :catch_0
    move-exception v0

    .line 201
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string v1, "NotifierManager"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

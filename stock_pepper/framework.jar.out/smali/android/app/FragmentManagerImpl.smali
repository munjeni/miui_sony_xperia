.class final Landroid/app/FragmentManagerImpl;
.super Landroid/app/FragmentManager;
.source "FragmentManager.java"


# static fields
.field static DEBUG:Z = false

.field static final TAG:Ljava/lang/String; = "FragmentManager"

.field static final TARGET_REQUEST_CODE_STATE_TAG:Ljava/lang/String; = "android:target_req_state"

.field static final TARGET_STATE_TAG:Ljava/lang/String; = "android:target_state"

.field static final USER_VISIBLE_HINT_TAG:Ljava/lang/String; = "android:user_visible_hint"

.field static final VIEW_STATE_TAG:Ljava/lang/String; = "android:view_state"


# instance fields
.field mActive:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field mActivity:Landroid/app/Activity;

.field mAdded:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field mAvailBackStackIndices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mAvailIndices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mBackStack:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/BackStackRecord;",
            ">;"
        }
    .end annotation
.end field

.field mBackStackChangeListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/FragmentManager$OnBackStackChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field mBackStackIndices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/BackStackRecord;",
            ">;"
        }
    .end annotation
.end field

.field mCreatedMenus:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field mCurState:I

.field mDestroyed:Z

.field mExecCommit:Ljava/lang/Runnable;

.field mExecutingActions:Z

.field mHavePendingDeferredStart:Z

.field mNeedMenuInvalidate:Z

.field mNoTransactionsBecause:Ljava/lang/String;

.field mPendingActions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field mStateArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;"
        }
    .end annotation
.end field

.field mStateBundle:Landroid/os/Bundle;

.field mStateSaved:Z

.field mTmpActions:[Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 390
    const/4 v0, 0x0

    sput-boolean v0, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 389
    invoke-direct {p0}, Landroid/app/FragmentManager;-><init>()V

    .line 414
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/FragmentManagerImpl;->mCurState:I

    .line 424
    iput-object v1, p0, Landroid/app/FragmentManagerImpl;->mStateBundle:Landroid/os/Bundle;

    .line 425
    iput-object v1, p0, Landroid/app/FragmentManagerImpl;->mStateArray:Landroid/util/SparseArray;

    .line 427
    new-instance v0, Landroid/app/FragmentManagerImpl$1;

    invoke-direct {v0, p0}, Landroid/app/FragmentManagerImpl$1;-><init>(Landroid/app/FragmentManagerImpl;)V

    iput-object v0, p0, Landroid/app/FragmentManagerImpl;->mExecCommit:Ljava/lang/Runnable;

    return-void
.end method

.method private checkStateLoss()V
    .locals 3

    .prologue
    .line 1280
    iget-boolean v0, p0, Landroid/app/FragmentManagerImpl;->mStateSaved:Z

    if-eqz v0, :cond_0

    .line 1281
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can not perform this action after onSaveInstanceState"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1284
    :cond_0
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mNoTransactionsBecause:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 1285
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can not perform this action inside of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mNoTransactionsBecause:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1288
    :cond_1
    return-void
.end method

.method public static reverseTransit(I)I
    .locals 1
    .parameter "transit"

    .prologue
    .line 1955
    const/4 v0, 0x0

    .line 1956
    .local v0, rev:I
    sparse-switch p0, :sswitch_data_0

    .line 1967
    :goto_0
    return v0

    .line 1958
    :sswitch_0
    const/16 v0, 0x2002

    .line 1959
    goto :goto_0

    .line 1961
    :sswitch_1
    const/16 v0, 0x1001

    .line 1962
    goto :goto_0

    .line 1964
    :sswitch_2
    const/16 v0, 0x1003

    goto :goto_0

    .line 1956
    :sswitch_data_0
    .sparse-switch
        0x1001 -> :sswitch_0
        0x1003 -> :sswitch_2
        0x2002 -> :sswitch_1
    .end sparse-switch
.end method

.method public static transitToStyleIndex(IZ)I
    .locals 1
    .parameter "transit"
    .parameter "enter"

    .prologue
    .line 1972
    const/4 v0, -0x1

    .line 1973
    .local v0, animAttr:I
    sparse-switch p0, :sswitch_data_0

    .line 1990
    :goto_0
    return v0

    .line 1975
    :sswitch_0
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 1978
    :goto_1
    goto :goto_0

    .line 1975
    :cond_0
    const/4 v0, 0x1

    goto :goto_1

    .line 1980
    :sswitch_1
    if-eqz p1, :cond_1

    const/4 v0, 0x2

    .line 1983
    :goto_2
    goto :goto_0

    .line 1980
    :cond_1
    const/4 v0, 0x3

    goto :goto_2

    .line 1985
    :sswitch_2
    if-eqz p1, :cond_2

    const/4 v0, 0x4

    :goto_3
    goto :goto_0

    :cond_2
    const/4 v0, 0x5

    goto :goto_3

    .line 1973
    nop

    :sswitch_data_0
    .sparse-switch
        0x1001 -> :sswitch_0
        0x1003 -> :sswitch_2
        0x2002 -> :sswitch_1
    .end sparse-switch
.end method


# virtual methods
.method addBackStackState(Landroid/app/BackStackRecord;)V
    .locals 1
    .parameter "state"

    .prologue
    .line 1444
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 1445
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    .line 1447
    :cond_0
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1448
    invoke-virtual {p0}, Landroid/app/FragmentManagerImpl;->reportBackStackChanged()V

    .line 1449
    return-void
.end method

.method public addFragment(Landroid/app/Fragment;Z)V
    .locals 4
    .parameter "fragment"
    .parameter "moveToStateNow"

    .prologue
    const/4 v3, 0x1

    .line 1100
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 1101
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    .line 1103
    :cond_0
    sget-boolean v0, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "add: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1104
    :cond_1
    invoke-virtual {p0, p1}, Landroid/app/FragmentManagerImpl;->makeActive(Landroid/app/Fragment;)V

    .line 1105
    iget-boolean v0, p1, Landroid/app/Fragment;->mDetached:Z

    if-nez v0, :cond_3

    .line 1106
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1107
    iput-boolean v3, p1, Landroid/app/Fragment;->mAdded:Z

    .line 1108
    const/4 v0, 0x0

    iput-boolean v0, p1, Landroid/app/Fragment;->mRemoving:Z

    .line 1109
    iget-boolean v0, p1, Landroid/app/Fragment;->mHasMenu:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p1, Landroid/app/Fragment;->mMenuVisible:Z

    if-eqz v0, :cond_2

    .line 1110
    iput-boolean v3, p0, Landroid/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    .line 1112
    :cond_2
    if-eqz p2, :cond_3

    .line 1113
    invoke-virtual {p0, p1}, Landroid/app/FragmentManagerImpl;->moveToState(Landroid/app/Fragment;)V

    .line 1116
    :cond_3
    return-void
.end method

.method public addOnBackStackChangedListener(Landroid/app/FragmentManager$OnBackStackChangedListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 510
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mBackStackChangeListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 511
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/FragmentManagerImpl;->mBackStackChangeListeners:Ljava/util/ArrayList;

    .line 513
    :cond_0
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mBackStackChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 514
    return-void
.end method

.method public allocBackStackIndex(Landroid/app/BackStackRecord;)I
    .locals 5
    .parameter "bse"

    .prologue
    .line 1314
    monitor-enter p0

    .line 1315
    :try_start_0
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_3

    .line 1316
    :cond_0
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    if-nez v2, :cond_1

    .line 1317
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    .line 1319
    :cond_1
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1320
    .local v0, index:I
    sget-boolean v2, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v2, :cond_2

    const-string v2, "FragmentManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Setting back stack index "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1321
    :cond_2
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1322
    monitor-exit p0

    move v1, v0

    .line 1328
    .end local v0           #index:I
    .local v1, index:I
    :goto_0
    return v1

    .line 1325
    .end local v1           #index:I
    :cond_3
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    iget-object v3, p0, Landroid/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1326
    .restart local v0       #index:I
    sget-boolean v2, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v2, :cond_4

    const-string v2, "FragmentManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Adding back stack index "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " with "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1327
    :cond_4
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v2, v0, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1328
    monitor-exit p0

    move v1, v0

    .end local v0           #index:I
    .restart local v1       #index:I
    goto :goto_0

    .line 1330
    .end local v1           #index:I
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public attachActivity(Landroid/app/Activity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 1785
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 1786
    :cond_0
    iput-object p1, p0, Landroid/app/FragmentManagerImpl;->mActivity:Landroid/app/Activity;

    .line 1787
    return-void
.end method

.method public attachFragment(Landroid/app/Fragment;II)V
    .locals 4
    .parameter "fragment"
    .parameter "transition"
    .parameter "transitionStyle"

    .prologue
    const/4 v3, 0x1

    .line 1206
    sget-boolean v0, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "attach: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1207
    :cond_0
    iget-boolean v0, p1, Landroid/app/Fragment;->mDetached:Z

    if-eqz v0, :cond_3

    .line 1208
    const/4 v0, 0x0

    iput-boolean v0, p1, Landroid/app/Fragment;->mDetached:Z

    .line 1209
    iget-boolean v0, p1, Landroid/app/Fragment;->mAdded:Z

    if-nez v0, :cond_3

    .line 1210
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 1211
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    .line 1213
    :cond_1
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1214
    iput-boolean v3, p1, Landroid/app/Fragment;->mAdded:Z

    .line 1215
    iget-boolean v0, p1, Landroid/app/Fragment;->mHasMenu:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p1, Landroid/app/Fragment;->mMenuVisible:Z

    if-eqz v0, :cond_2

    .line 1216
    iput-boolean v3, p0, Landroid/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    .line 1218
    :cond_2
    iget v0, p0, Landroid/app/FragmentManagerImpl;->mCurState:I

    invoke-virtual {p0, p1, v0, p2, p3}, Landroid/app/FragmentManagerImpl;->moveToState(Landroid/app/Fragment;III)V

    .line 1221
    :cond_3
    return-void
.end method

.method public beginTransaction()Landroid/app/FragmentTransaction;
    .locals 1

    .prologue
    .line 436
    new-instance v0, Landroid/app/BackStackRecord;

    invoke-direct {v0, p0}, Landroid/app/BackStackRecord;-><init>(Landroid/app/FragmentManagerImpl;)V

    return-object v0
.end method

.method public detachFragment(Landroid/app/Fragment;II)V
    .locals 4
    .parameter "fragment"
    .parameter "transition"
    .parameter "transitionStyle"

    .prologue
    const/4 v3, 0x1

    .line 1188
    sget-boolean v0, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "detach: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1189
    :cond_0
    iget-boolean v0, p1, Landroid/app/Fragment;->mDetached:Z

    if-nez v0, :cond_3

    .line 1190
    iput-boolean v3, p1, Landroid/app/Fragment;->mDetached:Z

    .line 1191
    iget-boolean v0, p1, Landroid/app/Fragment;->mAdded:Z

    if-eqz v0, :cond_3

    .line 1193
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 1194
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1196
    :cond_1
    iget-boolean v0, p1, Landroid/app/Fragment;->mHasMenu:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p1, Landroid/app/Fragment;->mMenuVisible:Z

    if-eqz v0, :cond_2

    .line 1197
    iput-boolean v3, p0, Landroid/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    .line 1199
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p1, Landroid/app/Fragment;->mAdded:Z

    .line 1200
    invoke-virtual {p0, p1, v3, p2, p3}, Landroid/app/FragmentManagerImpl;->moveToState(Landroid/app/Fragment;III)V

    .line 1203
    :cond_3
    return-void
.end method

.method public dispatchActivityCreated()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1799
    iput-boolean v1, p0, Landroid/app/FragmentManagerImpl;->mStateSaved:Z

    .line 1800
    const/4 v0, 0x2

    invoke-virtual {p0, v0, v1}, Landroid/app/FragmentManagerImpl;->moveToState(IZ)V

    .line 1801
    return-void
.end method

.method public dispatchConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .parameter "newConfig"

    .prologue
    .line 1829
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    .line 1830
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1831
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Fragment;

    .line 1832
    .local v0, f:Landroid/app/Fragment;
    if-eqz v0, :cond_0

    .line 1833
    invoke-virtual {v0, p1}, Landroid/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1830
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1837
    .end local v0           #f:Landroid/app/Fragment;
    .end local v1           #i:I
    :cond_1
    return-void
.end method

.method public dispatchContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    .line 1921
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    .line 1922
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1923
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Fragment;

    .line 1924
    .local v0, f:Landroid/app/Fragment;
    if-eqz v0, :cond_0

    iget-boolean v2, v0, Landroid/app/Fragment;->mHidden:Z

    if-nez v2, :cond_0

    .line 1925
    invoke-virtual {v0, p1}, Landroid/app/Fragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1926
    const/4 v2, 0x1

    .line 1931
    .end local v0           #f:Landroid/app/Fragment;
    .end local v1           #i:I
    :goto_1
    return v2

    .line 1922
    .restart local v0       #f:Landroid/app/Fragment;
    .restart local v1       #i:I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1931
    .end local v0           #f:Landroid/app/Fragment;
    .end local v1           #i:I
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public dispatchCreate()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1794
    iput-boolean v1, p0, Landroid/app/FragmentManagerImpl;->mStateSaved:Z

    .line 1795
    const/4 v0, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/app/FragmentManagerImpl;->moveToState(IZ)V

    .line 1796
    return-void
.end method

.method public dispatchCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)Z
    .locals 5
    .parameter "menu"
    .parameter "inflater"

    .prologue
    .line 1862
    const/4 v3, 0x0

    .line 1863
    .local v3, show:Z
    const/4 v2, 0x0

    .line 1864
    .local v2, newMenus:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/Fragment;>;"
    iget-object v4, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    if-eqz v4, :cond_2

    .line 1865
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v4, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_2

    .line 1866
    iget-object v4, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Fragment;

    .line 1867
    .local v0, f:Landroid/app/Fragment;
    if-eqz v0, :cond_1

    iget-boolean v4, v0, Landroid/app/Fragment;->mHidden:Z

    if-nez v4, :cond_1

    iget-boolean v4, v0, Landroid/app/Fragment;->mHasMenu:Z

    if-eqz v4, :cond_1

    iget-boolean v4, v0, Landroid/app/Fragment;->mMenuVisible:Z

    if-eqz v4, :cond_1

    .line 1868
    const/4 v3, 0x1

    .line 1869
    invoke-virtual {v0, p1, p2}, Landroid/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 1870
    if-nez v2, :cond_0

    .line 1871
    new-instance v2, Ljava/util/ArrayList;

    .end local v2           #newMenus:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/Fragment;>;"
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1873
    .restart local v2       #newMenus:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/Fragment;>;"
    :cond_0
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1865
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1878
    .end local v0           #f:Landroid/app/Fragment;
    .end local v1           #i:I
    :cond_2
    iget-object v4, p0, Landroid/app/FragmentManagerImpl;->mCreatedMenus:Ljava/util/ArrayList;

    if-eqz v4, :cond_5

    .line 1879
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_1
    iget-object v4, p0, Landroid/app/FragmentManagerImpl;->mCreatedMenus:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_5

    .line 1880
    iget-object v4, p0, Landroid/app/FragmentManagerImpl;->mCreatedMenus:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Fragment;

    .line 1881
    .restart local v0       #f:Landroid/app/Fragment;
    if-eqz v2, :cond_3

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 1882
    :cond_3
    invoke-virtual {v0}, Landroid/app/Fragment;->onDestroyOptionsMenu()V

    .line 1879
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1887
    .end local v0           #f:Landroid/app/Fragment;
    .end local v1           #i:I
    :cond_5
    iput-object v2, p0, Landroid/app/FragmentManagerImpl;->mCreatedMenus:Ljava/util/ArrayList;

    .line 1889
    return v3
.end method

.method public dispatchDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1822
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/FragmentManagerImpl;->mDestroyed:Z

    .line 1823
    invoke-virtual {p0}, Landroid/app/FragmentManagerImpl;->execPendingActions()Z

    .line 1824
    invoke-virtual {p0, v1, v1}, Landroid/app/FragmentManagerImpl;->moveToState(IZ)V

    .line 1825
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/FragmentManagerImpl;->mActivity:Landroid/app/Activity;

    .line 1826
    return-void
.end method

.method public dispatchLowMemory()V
    .locals 3

    .prologue
    .line 1840
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    .line 1841
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1842
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Fragment;

    .line 1843
    .local v0, f:Landroid/app/Fragment;
    if-eqz v0, :cond_0

    .line 1844
    invoke-virtual {v0}, Landroid/app/Fragment;->onLowMemory()V

    .line 1841
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1848
    .end local v0           #f:Landroid/app/Fragment;
    .end local v1           #i:I
    :cond_1
    return-void
.end method

.method public dispatchOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    .line 1907
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    .line 1908
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1909
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Fragment;

    .line 1910
    .local v0, f:Landroid/app/Fragment;
    if-eqz v0, :cond_0

    iget-boolean v2, v0, Landroid/app/Fragment;->mHidden:Z

    if-nez v2, :cond_0

    iget-boolean v2, v0, Landroid/app/Fragment;->mHasMenu:Z

    if-eqz v2, :cond_0

    iget-boolean v2, v0, Landroid/app/Fragment;->mMenuVisible:Z

    if-eqz v2, :cond_0

    .line 1911
    invoke-virtual {v0, p1}, Landroid/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1912
    const/4 v2, 0x1

    .line 1917
    .end local v0           #f:Landroid/app/Fragment;
    .end local v1           #i:I
    :goto_1
    return v2

    .line 1908
    .restart local v0       #f:Landroid/app/Fragment;
    .restart local v1       #i:I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1917
    .end local v0           #f:Landroid/app/Fragment;
    .end local v1           #i:I
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public dispatchOptionsMenuClosed(Landroid/view/Menu;)V
    .locals 3
    .parameter "menu"

    .prologue
    .line 1935
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    .line 1936
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1937
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Fragment;

    .line 1938
    .local v0, f:Landroid/app/Fragment;
    if-eqz v0, :cond_0

    iget-boolean v2, v0, Landroid/app/Fragment;->mHidden:Z

    if-nez v2, :cond_0

    iget-boolean v2, v0, Landroid/app/Fragment;->mHasMenu:Z

    if-eqz v2, :cond_0

    iget-boolean v2, v0, Landroid/app/Fragment;->mMenuVisible:Z

    if-eqz v2, :cond_0

    .line 1939
    invoke-virtual {v0, p1}, Landroid/app/Fragment;->onOptionsMenuClosed(Landroid/view/Menu;)V

    .line 1936
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1943
    .end local v0           #f:Landroid/app/Fragment;
    .end local v1           #i:I
    :cond_1
    return-void
.end method

.method public dispatchPause()V
    .locals 2

    .prologue
    .line 1814
    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/app/FragmentManagerImpl;->moveToState(IZ)V

    .line 1815
    return-void
.end method

.method public dispatchPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    .line 1893
    const/4 v2, 0x0

    .line 1894
    .local v2, show:Z
    iget-object v3, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    if-eqz v3, :cond_1

    .line 1895
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v3, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 1896
    iget-object v3, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Fragment;

    .line 1897
    .local v0, f:Landroid/app/Fragment;
    if-eqz v0, :cond_0

    iget-boolean v3, v0, Landroid/app/Fragment;->mHidden:Z

    if-nez v3, :cond_0

    iget-boolean v3, v0, Landroid/app/Fragment;->mHasMenu:Z

    if-eqz v3, :cond_0

    iget-boolean v3, v0, Landroid/app/Fragment;->mMenuVisible:Z

    if-eqz v3, :cond_0

    .line 1898
    const/4 v2, 0x1

    .line 1899
    invoke-virtual {v0, p1}, Landroid/app/Fragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 1895
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1903
    .end local v0           #f:Landroid/app/Fragment;
    .end local v1           #i:I
    :cond_1
    return v2
.end method

.method public dispatchResume()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1809
    iput-boolean v1, p0, Landroid/app/FragmentManagerImpl;->mStateSaved:Z

    .line 1810
    const/4 v0, 0x5

    invoke-virtual {p0, v0, v1}, Landroid/app/FragmentManagerImpl;->moveToState(IZ)V

    .line 1811
    return-void
.end method

.method public dispatchStart()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1804
    iput-boolean v1, p0, Landroid/app/FragmentManagerImpl;->mStateSaved:Z

    .line 1805
    const/4 v0, 0x4

    invoke-virtual {p0, v0, v1}, Landroid/app/FragmentManagerImpl;->moveToState(IZ)V

    .line 1806
    return-void
.end method

.method public dispatchStop()V
    .locals 2

    .prologue
    .line 1818
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/app/FragmentManagerImpl;->moveToState(IZ)V

    .line 1819
    return-void
.end method

.method public dispatchTrimMemory(I)V
    .locals 3
    .parameter "level"

    .prologue
    .line 1851
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    .line 1852
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1853
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Fragment;

    .line 1854
    .local v0, f:Landroid/app/Fragment;
    if-eqz v0, :cond_0

    .line 1855
    invoke-virtual {v0, p1}, Landroid/app/Fragment;->onTrimMemory(I)V

    .line 1852
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1859
    .end local v0           #f:Landroid/app/Fragment;
    .end local v1           #i:I
    :cond_1
    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 8
    .parameter "prefix"
    .parameter "fd"
    .parameter "writer"
    .parameter "args"

    .prologue
    .line 576
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "    "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 579
    .local v4, innerPrefix:Ljava/lang/String;
    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    if-eqz v6, :cond_1

    .line 580
    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 581
    .local v0, N:I
    if-lez v0, :cond_1

    .line 582
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "Active Fragments in "

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 583
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 584
    const-string v6, ":"

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 585
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v0, :cond_1

    .line 586
    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Fragment;

    .line 587
    .local v2, f:Landroid/app/Fragment;
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "  #"

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 588
    const-string v6, ": "

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 589
    if-eqz v2, :cond_0

    .line 590
    invoke-virtual {v2, v4, p2, p3, p4}, Landroid/app/Fragment;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 585
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 596
    .end local v0           #N:I
    .end local v2           #f:Landroid/app/Fragment;
    .end local v3           #i:I
    :cond_1
    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    if-eqz v6, :cond_2

    .line 597
    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 598
    .restart local v0       #N:I
    if-lez v0, :cond_2

    .line 599
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "Added Fragments:"

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 600
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_1
    if-ge v3, v0, :cond_2

    .line 601
    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Fragment;

    .line 602
    .restart local v2       #f:Landroid/app/Fragment;
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "  #"

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 603
    const-string v6, ": "

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/app/Fragment;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 600
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 608
    .end local v0           #N:I
    .end local v2           #f:Landroid/app/Fragment;
    .end local v3           #i:I
    :cond_2
    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mCreatedMenus:Ljava/util/ArrayList;

    if-eqz v6, :cond_3

    .line 609
    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mCreatedMenus:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 610
    .restart local v0       #N:I
    if-lez v0, :cond_3

    .line 611
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "Fragments Created Menus:"

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 612
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_2
    if-ge v3, v0, :cond_3

    .line 613
    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mCreatedMenus:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Fragment;

    .line 614
    .restart local v2       #f:Landroid/app/Fragment;
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "  #"

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 615
    const-string v6, ": "

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/app/Fragment;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 612
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 620
    .end local v0           #N:I
    .end local v2           #f:Landroid/app/Fragment;
    .end local v3           #i:I
    :cond_3
    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    if-eqz v6, :cond_4

    .line 621
    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 622
    .restart local v0       #N:I
    if-lez v0, :cond_4

    .line 623
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "Back Stack:"

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 624
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_3
    if-ge v3, v0, :cond_4

    .line 625
    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/BackStackRecord;

    .line 626
    .local v1, bs:Landroid/app/BackStackRecord;
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "  #"

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 627
    const-string v6, ": "

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 628
    invoke-virtual {v1, v4, p2, p3, p4}, Landroid/app/BackStackRecord;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 624
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 633
    .end local v0           #N:I
    .end local v1           #bs:Landroid/app/BackStackRecord;
    .end local v3           #i:I
    :cond_4
    monitor-enter p0

    .line 634
    :try_start_0
    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    if-eqz v6, :cond_5

    .line 635
    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 636
    .restart local v0       #N:I
    if-lez v0, :cond_5

    .line 637
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "Back Stack Indices:"

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 638
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_4
    if-ge v3, v0, :cond_5

    .line 639
    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/BackStackRecord;

    .line 640
    .restart local v1       #bs:Landroid/app/BackStackRecord;
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "  #"

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 641
    const-string v6, ": "

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 638
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 646
    .end local v0           #N:I
    .end local v1           #bs:Landroid/app/BackStackRecord;
    .end local v3           #i:I
    :cond_5
    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    if-eqz v6, :cond_6

    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_6

    .line 647
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "mAvailBackStackIndices: "

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 648
    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 651
    :cond_6
    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    if-eqz v6, :cond_7

    .line 652
    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 653
    .restart local v0       #N:I
    if-lez v0, :cond_7

    .line 654
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "Pending Actions:"

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 655
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_5
    if-ge v3, v0, :cond_7

    .line 656
    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Runnable;

    .line 657
    .local v5, r:Ljava/lang/Runnable;
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "  #"

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 658
    const-string v6, ": "

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 655
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 662
    .end local v0           #N:I
    .end local v3           #i:I
    .end local v5           #r:Ljava/lang/Runnable;
    :cond_7
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 664
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "FragmentManager misc state:"

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 665
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "  mCurState="

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v6, p0, Landroid/app/FragmentManagerImpl;->mCurState:I

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(I)V

    .line 666
    const-string v6, " mStateSaved="

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v6, p0, Landroid/app/FragmentManagerImpl;->mStateSaved:Z

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Z)V

    .line 667
    const-string v6, " mDestroyed="

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v6, p0, Landroid/app/FragmentManagerImpl;->mDestroyed:Z

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Z)V

    .line 668
    iget-boolean v6, p0, Landroid/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    if-eqz v6, :cond_8

    .line 669
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "  mNeedMenuInvalidate="

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 670
    iget-boolean v6, p0, Landroid/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Z)V

    .line 672
    :cond_8
    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mNoTransactionsBecause:Ljava/lang/String;

    if-eqz v6, :cond_9

    .line 673
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "  mNoTransactionsBecause="

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 674
    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mNoTransactionsBecause:Ljava/lang/String;

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 676
    :cond_9
    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mAvailIndices:Ljava/util/ArrayList;

    if-eqz v6, :cond_a

    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mAvailIndices:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_a

    .line 677
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "  mAvailIndices: "

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 678
    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mAvailIndices:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 680
    :cond_a
    return-void

    .line 662
    :catchall_0
    move-exception v6

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6
.end method

.method public enqueueAction(Ljava/lang/Runnable;Z)V
    .locals 2
    .parameter "action"
    .parameter "allowStateLoss"

    .prologue
    .line 1291
    if-nez p2, :cond_0

    .line 1292
    invoke-direct {p0}, Landroid/app/FragmentManagerImpl;->checkStateLoss()V

    .line 1294
    :cond_0
    monitor-enter p0

    .line 1295
    :try_start_0
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mActivity:Landroid/app/Activity;

    if-nez v0, :cond_2

    .line 1296
    if-eqz p2, :cond_1

    .line 1297
    monitor-exit p0

    .line 1311
    :goto_0
    return-void

    .line 1299
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Activity has been destroyed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1310
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1302
    :cond_2
    :try_start_1
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    if-nez v0, :cond_3

    .line 1303
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    .line 1305
    :cond_3
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1306
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 1307
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mActivity:Landroid/app/Activity;

    iget-object v0, v0, Landroid/app/Activity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mExecCommit:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1308
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mActivity:Landroid/app/Activity;

    iget-object v0, v0, Landroid/app/Activity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mExecCommit:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1310
    :cond_4
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public execPendingActions()Z
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 1373
    iget-boolean v6, p0, Landroid/app/FragmentManagerImpl;->mExecutingActions:Z

    if-eqz v6, :cond_0

    .line 1374
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "Recursive entry to executePendingTransactions"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1377
    :cond_0
    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mActivity:Landroid/app/Activity;

    if-nez v6, :cond_4

    .line 1378
    sget-boolean v6, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v6, :cond_1

    const-string v6, "FragmentManager"

    const-string v7, "Activity has been destroyed. Ignoring pending transactions"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1379
    :cond_1
    monitor-enter p0

    .line 1380
    :try_start_0
    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    if-eqz v6, :cond_2

    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_2

    .line 1381
    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 1383
    :cond_2
    monitor-exit p0

    move v0, v5

    .line 1432
    :cond_3
    :goto_0
    return v0

    .line 1383
    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 1387
    :cond_4
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v6

    iget-object v7, p0, Landroid/app/FragmentManagerImpl;->mActivity:Landroid/app/Activity;

    iget-object v7, v7, Landroid/app/Activity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v7}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v7

    if-eq v6, v7, :cond_5

    .line 1388
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "Must be called from main thread of process"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1391
    :cond_5
    const/4 v0, 0x0

    .line 1396
    .local v0, didSomething:Z
    :goto_1
    monitor-enter p0

    .line 1397
    :try_start_1
    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    if-eqz v6, :cond_6

    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-nez v6, :cond_8

    .line 1398
    :cond_6
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1419
    iget-boolean v6, p0, Landroid/app/FragmentManagerImpl;->mHavePendingDeferredStart:Z

    if-eqz v6, :cond_3

    .line 1420
    const/4 v3, 0x0

    .line 1421
    .local v3, loadersRunning:Z
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v2, v6, :cond_c

    .line 1422
    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Fragment;

    .line 1423
    .local v1, f:Landroid/app/Fragment;
    if-eqz v1, :cond_7

    iget-object v6, v1, Landroid/app/Fragment;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    if-eqz v6, :cond_7

    .line 1424
    iget-object v6, v1, Landroid/app/Fragment;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    invoke-virtual {v6}, Landroid/app/LoaderManagerImpl;->hasRunningLoaders()Z

    move-result v6

    or-int/2addr v3, v6

    .line 1421
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1401
    .end local v1           #f:Landroid/app/Fragment;
    .end local v2           #i:I
    .end local v3           #loadersRunning:Z
    :cond_8
    :try_start_2
    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 1402
    .local v4, numActions:I
    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mTmpActions:[Ljava/lang/Runnable;

    if-eqz v6, :cond_9

    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mTmpActions:[Ljava/lang/Runnable;

    array-length v6, v6

    if-ge v6, v4, :cond_a

    .line 1403
    :cond_9
    new-array v6, v4, [Ljava/lang/Runnable;

    iput-object v6, p0, Landroid/app/FragmentManagerImpl;->mTmpActions:[Ljava/lang/Runnable;

    .line 1405
    :cond_a
    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    iget-object v7, p0, Landroid/app/FragmentManagerImpl;->mTmpActions:[Ljava/lang/Runnable;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1406
    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 1407
    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mActivity:Landroid/app/Activity;

    iget-object v6, v6, Landroid/app/Activity;->mHandler:Landroid/os/Handler;

    iget-object v7, p0, Landroid/app/FragmentManagerImpl;->mExecCommit:Ljava/lang/Runnable;

    invoke-virtual {v6, v7}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1408
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1410
    const/4 v6, 0x1

    iput-boolean v6, p0, Landroid/app/FragmentManagerImpl;->mExecutingActions:Z

    .line 1411
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_3
    if-ge v2, v4, :cond_b

    .line 1412
    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mTmpActions:[Ljava/lang/Runnable;

    aget-object v6, v6, v2

    invoke-interface {v6}, Ljava/lang/Runnable;->run()V

    .line 1413
    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mTmpActions:[Ljava/lang/Runnable;

    const/4 v7, 0x0

    aput-object v7, v6, v2

    .line 1411
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1408
    .end local v2           #i:I
    .end local v4           #numActions:I
    :catchall_1
    move-exception v5

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v5

    .line 1415
    .restart local v2       #i:I
    .restart local v4       #numActions:I
    :cond_b
    iput-boolean v5, p0, Landroid/app/FragmentManagerImpl;->mExecutingActions:Z

    .line 1416
    const/4 v0, 0x1

    .line 1417
    goto :goto_1

    .line 1427
    .end local v4           #numActions:I
    .restart local v3       #loadersRunning:Z
    :cond_c
    if-nez v3, :cond_3

    .line 1428
    iput-boolean v5, p0, Landroid/app/FragmentManagerImpl;->mHavePendingDeferredStart:Z

    .line 1429
    invoke-virtual {p0}, Landroid/app/FragmentManagerImpl;->startPendingDeferredFragments()V

    goto/16 :goto_0
.end method

.method public executePendingTransactions()Z
    .locals 1

    .prologue
    .line 441
    invoke-virtual {p0}, Landroid/app/FragmentManagerImpl;->execPendingActions()Z

    move-result v0

    return v0
.end method

.method public findFragmentById(I)Landroid/app/Fragment;
    .locals 3
    .parameter "id"

    .prologue
    .line 1224
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    if-eqz v2, :cond_2

    .line 1226
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_2

    .line 1227
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Fragment;

    .line 1228
    .local v0, f:Landroid/app/Fragment;
    if-eqz v0, :cond_1

    iget v2, v0, Landroid/app/Fragment;->mFragmentId:I

    if-ne v2, p1, :cond_1

    .line 1242
    .end local v0           #f:Landroid/app/Fragment;
    .end local v1           #i:I
    :cond_0
    :goto_1
    return-object v0

    .line 1226
    .restart local v0       #f:Landroid/app/Fragment;
    .restart local v1       #i:I
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1233
    .end local v0           #f:Landroid/app/Fragment;
    .end local v1           #i:I
    :cond_2
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    if-eqz v2, :cond_4

    .line 1235
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .restart local v1       #i:I
    :goto_2
    if-ltz v1, :cond_4

    .line 1236
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Fragment;

    .line 1237
    .restart local v0       #f:Landroid/app/Fragment;
    if-eqz v0, :cond_3

    iget v2, v0, Landroid/app/Fragment;->mFragmentId:I

    if-eq v2, p1, :cond_0

    .line 1235
    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 1242
    .end local v0           #f:Landroid/app/Fragment;
    .end local v1           #i:I
    :cond_4
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;
    .locals 3
    .parameter "tag"

    .prologue
    .line 1246
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    if-eqz v2, :cond_2

    if-eqz p1, :cond_2

    .line 1248
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_2

    .line 1249
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Fragment;

    .line 1250
    .local v0, f:Landroid/app/Fragment;
    if-eqz v0, :cond_1

    iget-object v2, v0, Landroid/app/Fragment;->mTag:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1264
    .end local v0           #f:Landroid/app/Fragment;
    .end local v1           #i:I
    :cond_0
    :goto_1
    return-object v0

    .line 1248
    .restart local v0       #f:Landroid/app/Fragment;
    .restart local v1       #i:I
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1255
    .end local v0           #f:Landroid/app/Fragment;
    .end local v1           #i:I
    :cond_2
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    if-eqz v2, :cond_4

    if-eqz p1, :cond_4

    .line 1257
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .restart local v1       #i:I
    :goto_2
    if-ltz v1, :cond_4

    .line 1258
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Fragment;

    .line 1259
    .restart local v0       #f:Landroid/app/Fragment;
    if-eqz v0, :cond_3

    iget-object v2, v0, Landroid/app/Fragment;->mTag:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1257
    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 1264
    .end local v0           #f:Landroid/app/Fragment;
    .end local v1           #i:I
    :cond_4
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public findFragmentByWho(Ljava/lang/String;)Landroid/app/Fragment;
    .locals 3
    .parameter "who"

    .prologue
    .line 1268
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    if-eqz p1, :cond_1

    .line 1269
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_1

    .line 1270
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Fragment;

    .line 1271
    .local v0, f:Landroid/app/Fragment;
    if-eqz v0, :cond_0

    iget-object v2, v0, Landroid/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1276
    .end local v0           #f:Landroid/app/Fragment;
    .end local v1           #i:I
    :goto_1
    return-object v0

    .line 1269
    .restart local v0       #f:Landroid/app/Fragment;
    .restart local v1       #i:I
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1276
    .end local v0           #f:Landroid/app/Fragment;
    .end local v1           #i:I
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public freeBackStackIndex(I)V
    .locals 3
    .parameter "index"

    .prologue
    .line 1359
    monitor-enter p0

    .line 1360
    :try_start_0
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1361
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 1362
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    .line 1364
    :cond_0
    sget-boolean v0, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Freeing back stack index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1365
    :cond_1
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1366
    monitor-exit p0

    .line 1367
    return-void

    .line 1366
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getBackStackEntryAt(I)Landroid/app/FragmentManager$BackStackEntry;
    .locals 1
    .parameter "index"

    .prologue
    .line 505
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/FragmentManager$BackStackEntry;

    return-object v0
.end method

.method public getBackStackEntryCount()I
    .locals 1

    .prologue
    .line 500
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFragment(Landroid/os/Bundle;Ljava/lang/String;)Landroid/app/Fragment;
    .locals 5
    .parameter "bundle"
    .parameter "key"

    .prologue
    const/4 v2, -0x1

    .line 534
    invoke-virtual {p1, p2, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 535
    .local v1, index:I
    if-ne v1, v2, :cond_1

    .line 536
    const/4 v0, 0x0

    .line 547
    :cond_0
    return-object v0

    .line 538
    :cond_1
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v1, v2, :cond_2

    .line 539
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Fragement no longer exists for key "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": index "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 542
    :cond_2
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Fragment;

    .line 543
    .local v0, f:Landroid/app/Fragment;
    if-nez v0, :cond_0

    .line 544
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Fragement no longer exists for key "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": index "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public hideFragment(Landroid/app/Fragment;II)V
    .locals 6
    .parameter "fragment"
    .parameter "transition"
    .parameter "transitionStyle"

    .prologue
    const/4 v5, 0x1

    .line 1136
    sget-boolean v2, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "FragmentManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "hide: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1137
    :cond_0
    iget-boolean v2, p1, Landroid/app/Fragment;->mHidden:Z

    if-nez v2, :cond_3

    .line 1138
    iput-boolean v5, p1, Landroid/app/Fragment;->mHidden:Z

    .line 1139
    iget-object v2, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    if-eqz v2, :cond_1

    .line 1140
    invoke-virtual {p0, p1, p2, v5, p3}, Landroid/app/FragmentManagerImpl;->loadAnimator(Landroid/app/Fragment;IZI)Landroid/animation/Animator;

    move-result-object v0

    .line 1142
    .local v0, anim:Landroid/animation/Animator;
    if-eqz v0, :cond_4

    .line 1143
    iget-object v2, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 1146
    move-object v1, p1

    .line 1147
    .local v1, finalFragment:Landroid/app/Fragment;
    new-instance v2, Landroid/app/FragmentManagerImpl$6;

    invoke-direct {v2, p0, v1}, Landroid/app/FragmentManagerImpl$6;-><init>(Landroid/app/FragmentManagerImpl;Landroid/app/Fragment;)V

    invoke-virtual {v0, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1155
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 1160
    .end local v0           #anim:Landroid/animation/Animator;
    .end local v1           #finalFragment:Landroid/app/Fragment;
    :cond_1
    :goto_0
    iget-boolean v2, p1, Landroid/app/Fragment;->mAdded:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p1, Landroid/app/Fragment;->mHasMenu:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p1, Landroid/app/Fragment;->mMenuVisible:Z

    if-eqz v2, :cond_2

    .line 1161
    iput-boolean v5, p0, Landroid/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    .line 1163
    :cond_2
    invoke-virtual {p1, v5}, Landroid/app/Fragment;->onHiddenChanged(Z)V

    .line 1165
    :cond_3
    return-void

    .line 1157
    .restart local v0       #anim:Landroid/animation/Animator;
    :cond_4
    iget-object v2, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public invalidateOptionsMenu()V
    .locals 2

    .prologue
    .line 1947
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/app/FragmentManagerImpl;->mCurState:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 1948
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 1952
    :goto_0
    return-void

    .line 1950
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    goto :goto_0
.end method

.method loadAnimator(Landroid/app/Fragment;IZI)Landroid/animation/Animator;
    .locals 7
    .parameter "fragment"
    .parameter "transit"
    .parameter "enter"
    .parameter "transitionStyle"

    .prologue
    const/4 v4, 0x0

    .line 684
    iget v5, p1, Landroid/app/Fragment;->mNextAnim:I

    invoke-virtual {p1, p2, p3, v5}, Landroid/app/Fragment;->onCreateAnimator(IZI)Landroid/animation/Animator;

    move-result-object v1

    .line 686
    .local v1, animObj:Landroid/animation/Animator;
    if-eqz v1, :cond_0

    .line 722
    .end local v1           #animObj:Landroid/animation/Animator;
    :goto_0
    return-object v1

    .line 690
    .restart local v1       #animObj:Landroid/animation/Animator;
    :cond_0
    iget v5, p1, Landroid/app/Fragment;->mNextAnim:I

    if-eqz v5, :cond_1

    .line 691
    iget-object v5, p0, Landroid/app/FragmentManagerImpl;->mActivity:Landroid/app/Activity;

    iget v6, p1, Landroid/app/Fragment;->mNextAnim:I

    invoke-static {v5, v6}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    .line 692
    .local v0, anim:Landroid/animation/Animator;
    if-eqz v0, :cond_1

    move-object v1, v0

    .line 693
    goto :goto_0

    .line 697
    .end local v0           #anim:Landroid/animation/Animator;
    :cond_1
    if-nez p2, :cond_2

    move-object v1, v4

    .line 698
    goto :goto_0

    .line 701
    :cond_2
    invoke-static {p2, p3}, Landroid/app/FragmentManagerImpl;->transitToStyleIndex(IZ)I

    move-result v3

    .line 702
    .local v3, styleIndex:I
    if-gez v3, :cond_3

    move-object v1, v4

    .line 703
    goto :goto_0

    .line 706
    :cond_3
    if-nez p4, :cond_4

    iget-object v5, p0, Landroid/app/FragmentManagerImpl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 707
    iget-object v5, p0, Landroid/app/FragmentManagerImpl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    iget p4, v5, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 709
    :cond_4
    if-nez p4, :cond_5

    move-object v1, v4

    .line 710
    goto :goto_0

    .line 713
    :cond_5
    iget-object v5, p0, Landroid/app/FragmentManagerImpl;->mActivity:Landroid/app/Activity;

    sget-object v6, Lcom/android/internal/R$styleable;->FragmentAnimation:[I

    invoke-virtual {v5, p4, v6}, Landroid/app/Activity;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 715
    .local v2, attrs:Landroid/content/res/TypedArray;
    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 716
    .local v0, anim:I
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 718
    if-nez v0, :cond_6

    move-object v1, v4

    .line 719
    goto :goto_0

    .line 722
    :cond_6
    iget-object v4, p0, Landroid/app/FragmentManagerImpl;->mActivity:Landroid/app/Activity;

    invoke-static {v4, v0}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v1

    goto :goto_0
.end method

.method makeActive(Landroid/app/Fragment;)V
    .locals 3
    .parameter "f"

    .prologue
    .line 1066
    iget v0, p1, Landroid/app/Fragment;->mIndex:I

    if-ltz v0, :cond_1

    .line 1082
    :cond_0
    :goto_0
    return-void

    .line 1070
    :cond_1
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mAvailIndices:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mAvailIndices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_4

    .line 1071
    :cond_2
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    if-nez v0, :cond_3

    .line 1072
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    .line 1074
    :cond_3
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/app/Fragment;->setIndex(I)V

    .line 1075
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1081
    :goto_1
    sget-boolean v0, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Allocated fragment index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1078
    :cond_4
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mAvailIndices:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mAvailIndices:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/app/Fragment;->setIndex(I)V

    .line 1079
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    iget v1, p1, Landroid/app/Fragment;->mIndex:I

    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method makeInactive(Landroid/app/Fragment;)V
    .locals 3
    .parameter "f"

    .prologue
    .line 1085
    iget v0, p1, Landroid/app/Fragment;->mIndex:I

    if-gez v0, :cond_0

    .line 1097
    :goto_0
    return-void

    .line 1089
    :cond_0
    sget-boolean v0, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Freeing fragment index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1090
    :cond_1
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    iget v1, p1, Landroid/app/Fragment;->mIndex:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1091
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mAvailIndices:Ljava/util/ArrayList;

    if-nez v0, :cond_2

    .line 1092
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/FragmentManagerImpl;->mAvailIndices:Ljava/util/ArrayList;

    .line 1094
    :cond_2
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mAvailIndices:Ljava/util/ArrayList;

    iget v1, p1, Landroid/app/Fragment;->mIndex:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1095
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mActivity:Landroid/app/Activity;

    iget v1, p1, Landroid/app/Fragment;->mIndex:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->invalidateFragmentIndex(I)V

    .line 1096
    invoke-virtual {p1}, Landroid/app/Fragment;->initState()V

    goto :goto_0
.end method

.method moveToState(IIIZ)V
    .locals 5
    .parameter "newState"
    .parameter "transit"
    .parameter "transitStyle"
    .parameter "always"

    .prologue
    .line 1022
    iget-object v3, p0, Landroid/app/FragmentManagerImpl;->mActivity:Landroid/app/Activity;

    if-nez v3, :cond_0

    if-eqz p1, :cond_0

    .line 1023
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "No activity"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1026
    :cond_0
    if-nez p4, :cond_2

    iget v3, p0, Landroid/app/FragmentManagerImpl;->mCurState:I

    if-ne v3, p1, :cond_2

    .line 1052
    :cond_1
    :goto_0
    return-void

    .line 1030
    :cond_2
    iput p1, p0, Landroid/app/FragmentManagerImpl;->mCurState:I

    .line 1031
    iget-object v3, p0, Landroid/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    if-eqz v3, :cond_1

    .line 1032
    const/4 v2, 0x0

    .line 1033
    .local v2, loadersRunning:Z
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v3, p0, Landroid/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_4

    .line 1034
    iget-object v3, p0, Landroid/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Fragment;

    .line 1035
    .local v0, f:Landroid/app/Fragment;
    if-eqz v0, :cond_3

    .line 1036
    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/app/FragmentManagerImpl;->moveToState(Landroid/app/Fragment;III)V

    .line 1037
    iget-object v3, v0, Landroid/app/Fragment;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    if-eqz v3, :cond_3

    .line 1038
    iget-object v3, v0, Landroid/app/Fragment;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    invoke-virtual {v3}, Landroid/app/LoaderManagerImpl;->hasRunningLoaders()Z

    move-result v3

    or-int/2addr v2, v3

    .line 1033
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1043
    .end local v0           #f:Landroid/app/Fragment;
    :cond_4
    if-nez v2, :cond_5

    .line 1044
    invoke-virtual {p0}, Landroid/app/FragmentManagerImpl;->startPendingDeferredFragments()V

    .line 1047
    :cond_5
    iget-boolean v3, p0, Landroid/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/app/FragmentManagerImpl;->mActivity:Landroid/app/Activity;

    if-eqz v3, :cond_1

    iget v3, p0, Landroid/app/FragmentManagerImpl;->mCurState:I

    const/4 v4, 0x5

    if-ne v3, v4, :cond_1

    .line 1048
    iget-object v3, p0, Landroid/app/FragmentManagerImpl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 1049
    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    goto :goto_0
.end method

.method moveToState(IZ)V
    .locals 1
    .parameter "newState"
    .parameter "always"

    .prologue
    const/4 v0, 0x0

    .line 1018
    invoke-virtual {p0, p1, v0, v0, p2}, Landroid/app/FragmentManagerImpl;->moveToState(IIIZ)V

    .line 1019
    return-void
.end method

.method moveToState(Landroid/app/Fragment;)V
    .locals 2
    .parameter "f"

    .prologue
    const/4 v1, 0x0

    .line 1014
    iget v0, p0, Landroid/app/FragmentManagerImpl;->mCurState:I

    invoke-virtual {p0, p1, v0, v1, v1}, Landroid/app/FragmentManagerImpl;->moveToState(Landroid/app/Fragment;III)V

    .line 1015
    return-void
.end method

.method moveToState(Landroid/app/Fragment;III)V
    .locals 7
    .parameter "f"
    .parameter "newState"
    .parameter "transit"
    .parameter "transitionStyle"

    .prologue
    .line 739
    iget-boolean v4, p1, Landroid/app/Fragment;->mAdded:Z

    if-nez v4, :cond_0

    const/4 v4, 0x1

    if-le p2, v4, :cond_0

    .line 740
    const/4 p2, 0x1

    .line 742
    :cond_0
    iget-boolean v4, p1, Landroid/app/Fragment;->mRemoving:Z

    if-eqz v4, :cond_1

    iget v4, p1, Landroid/app/Fragment;->mState:I

    if-le p2, v4, :cond_1

    .line 744
    iget p2, p1, Landroid/app/Fragment;->mState:I

    .line 748
    :cond_1
    iget-boolean v4, p1, Landroid/app/Fragment;->mDeferStart:Z

    if-eqz v4, :cond_2

    iget v4, p1, Landroid/app/Fragment;->mState:I

    const/4 v5, 0x4

    if-ge v4, v5, :cond_2

    const/4 v4, 0x3

    if-le p2, v4, :cond_2

    .line 749
    const/4 p2, 0x3

    .line 751
    :cond_2
    iget v4, p1, Landroid/app/Fragment;->mState:I

    if-ge v4, p2, :cond_1a

    .line 755
    iget-boolean v4, p1, Landroid/app/Fragment;->mFromLayout:Z

    if-eqz v4, :cond_3

    iget-boolean v4, p1, Landroid/app/Fragment;->mInLayout:Z

    if-nez v4, :cond_3

    .line 1011
    :goto_0
    return-void

    .line 758
    :cond_3
    iget-object v4, p1, Landroid/app/Fragment;->mAnimatingAway:Landroid/animation/Animator;

    if-eqz v4, :cond_4

    .line 763
    const/4 v4, 0x0

    iput-object v4, p1, Landroid/app/Fragment;->mAnimatingAway:Landroid/animation/Animator;

    .line 764
    iget v4, p1, Landroid/app/Fragment;->mStateAfterAnimating:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {p0, p1, v4, v5, v6}, Landroid/app/FragmentManagerImpl;->moveToState(Landroid/app/Fragment;III)V

    .line 766
    :cond_4
    iget v4, p1, Landroid/app/Fragment;->mState:I

    packed-switch v4, :pswitch_data_0

    .line 1010
    :cond_5
    :goto_1
    iput p2, p1, Landroid/app/Fragment;->mState:I

    goto :goto_0

    .line 768
    :pswitch_0
    sget-boolean v4, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v4, :cond_6

    const-string v4, "FragmentManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "moveto CREATED: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 769
    :cond_6
    iget-object v4, p1, Landroid/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    if-eqz v4, :cond_8

    .line 770
    iget-object v4, p1, Landroid/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    const-string v5, "android:view_state"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v4

    iput-object v4, p1, Landroid/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    .line 772
    iget-object v4, p1, Landroid/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    const-string v5, "android:target_state"

    invoke-virtual {p0, v4, v5}, Landroid/app/FragmentManagerImpl;->getFragment(Landroid/os/Bundle;Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v4

    iput-object v4, p1, Landroid/app/Fragment;->mTarget:Landroid/app/Fragment;

    .line 774
    iget-object v4, p1, Landroid/app/Fragment;->mTarget:Landroid/app/Fragment;

    if-eqz v4, :cond_7

    .line 775
    iget-object v4, p1, Landroid/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    const-string v5, "android:target_req_state"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, p1, Landroid/app/Fragment;->mTargetRequestCode:I

    .line 778
    :cond_7
    iget-object v4, p1, Landroid/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    const-string v5, "android:user_visible_hint"

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p1, Landroid/app/Fragment;->mUserVisibleHint:Z

    .line 780
    iget-boolean v4, p1, Landroid/app/Fragment;->mUserVisibleHint:Z

    if-nez v4, :cond_8

    .line 781
    const/4 v4, 0x1

    iput-boolean v4, p1, Landroid/app/Fragment;->mDeferStart:Z

    .line 782
    const/4 v4, 0x3

    if-le p2, v4, :cond_8

    .line 783
    const/4 p2, 0x3

    .line 787
    :cond_8
    iget-object v4, p0, Landroid/app/FragmentManagerImpl;->mActivity:Landroid/app/Activity;

    iput-object v4, p1, Landroid/app/Fragment;->mActivity:Landroid/app/Activity;

    .line 788
    iget-object v4, p0, Landroid/app/FragmentManagerImpl;->mActivity:Landroid/app/Activity;

    iget-object v4, v4, Landroid/app/Activity;->mFragments:Landroid/app/FragmentManagerImpl;

    iput-object v4, p1, Landroid/app/Fragment;->mFragmentManager:Landroid/app/FragmentManagerImpl;

    .line 789
    const/4 v4, 0x0

    iput-boolean v4, p1, Landroid/app/Fragment;->mCalled:Z

    .line 790
    iget-object v4, p0, Landroid/app/FragmentManagerImpl;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1, v4}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 791
    iget-boolean v4, p1, Landroid/app/Fragment;->mCalled:Z

    if-nez v4, :cond_9

    .line 792
    new-instance v4, Landroid/app/SuperNotCalledException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Fragment "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " did not call through to super.onAttach()"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 795
    :cond_9
    iget-object v4, p0, Landroid/app/FragmentManagerImpl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4, p1}, Landroid/app/Activity;->onAttachFragment(Landroid/app/Fragment;)V

    .line 797
    iget-boolean v4, p1, Landroid/app/Fragment;->mRetaining:Z

    if-nez v4, :cond_a

    .line 798
    const/4 v4, 0x0

    iput-boolean v4, p1, Landroid/app/Fragment;->mCalled:Z

    .line 799
    iget-object v4, p1, Landroid/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {p1, v4}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 800
    iget-boolean v4, p1, Landroid/app/Fragment;->mCalled:Z

    if-nez v4, :cond_a

    .line 801
    new-instance v4, Landroid/app/SuperNotCalledException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Fragment "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " did not call through to super.onCreate()"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 805
    :cond_a
    const/4 v4, 0x0

    iput-boolean v4, p1, Landroid/app/Fragment;->mRetaining:Z

    .line 806
    iget-boolean v4, p1, Landroid/app/Fragment;->mFromLayout:Z

    if-eqz v4, :cond_c

    .line 810
    iget-object v4, p1, Landroid/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {p1, v4}, Landroid/app/Fragment;->getLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v4

    const/4 v5, 0x0

    iget-object v6, p1, Landroid/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {p1, v4, v5, v6}, Landroid/app/Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v4

    iput-object v4, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    .line 812
    iget-object v4, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    if-eqz v4, :cond_c

    .line 813
    iget-object v4, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setSaveFromParentEnabled(Z)V

    .line 814
    iget-boolean v4, p1, Landroid/app/Fragment;->mHidden:Z

    if-eqz v4, :cond_b

    iget-object v4, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 815
    :cond_b
    iget-object v4, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    iget-object v5, p1, Landroid/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {p1, v4, v5}, Landroid/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 819
    :cond_c
    :pswitch_1
    const/4 v4, 0x1

    if-le p2, v4, :cond_15

    .line 820
    sget-boolean v4, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v4, :cond_d

    const-string v4, "FragmentManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "moveto ACTIVITY_CREATED: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 821
    :cond_d
    iget-boolean v4, p1, Landroid/app/Fragment;->mFromLayout:Z

    if-nez v4, :cond_12

    .line 822
    const/4 v1, 0x0

    .line 823
    .local v1, container:Landroid/view/ViewGroup;
    iget v4, p1, Landroid/app/Fragment;->mContainerId:I

    if-eqz v4, :cond_e

    .line 824
    iget-object v4, p0, Landroid/app/FragmentManagerImpl;->mActivity:Landroid/app/Activity;

    iget v5, p1, Landroid/app/Fragment;->mContainerId:I

    invoke-virtual {v4, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1           #container:Landroid/view/ViewGroup;
    check-cast v1, Landroid/view/ViewGroup;

    .line 825
    .restart local v1       #container:Landroid/view/ViewGroup;
    if-nez v1, :cond_e

    iget-boolean v4, p1, Landroid/app/Fragment;->mRestored:Z

    if-nez v4, :cond_e

    .line 826
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No view found for id 0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/app/Fragment;->mContainerId:I

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " for fragment "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 831
    :cond_e
    iput-object v1, p1, Landroid/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    .line 832
    iget-object v4, p1, Landroid/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {p1, v4}, Landroid/app/Fragment;->getLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v4

    iget-object v5, p1, Landroid/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {p1, v4, v1, v5}, Landroid/app/Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v4

    iput-object v4, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    .line 834
    iget-object v4, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    if-eqz v4, :cond_12

    .line 835
    iget-object v4, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setSaveFromParentEnabled(Z)V

    .line 836
    if-eqz v1, :cond_10

    .line 837
    const/4 v4, 0x1

    invoke-virtual {p0, p1, p3, v4, p4}, Landroid/app/FragmentManagerImpl;->loadAnimator(Landroid/app/Fragment;IZI)Landroid/animation/Animator;

    move-result-object v0

    .line 839
    .local v0, anim:Landroid/animation/Animator;
    if-eqz v0, :cond_f

    .line 840
    iget-object v4, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 841
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 843
    :cond_f
    iget-object v4, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 845
    .end local v0           #anim:Landroid/animation/Animator;
    :cond_10
    iget-boolean v4, p1, Landroid/app/Fragment;->mHidden:Z

    if-eqz v4, :cond_11

    iget-object v4, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 846
    :cond_11
    iget-object v4, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    iget-object v5, p1, Landroid/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {p1, v4, v5}, Landroid/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 850
    .end local v1           #container:Landroid/view/ViewGroup;
    :cond_12
    const/4 v4, 0x0

    iput-boolean v4, p1, Landroid/app/Fragment;->mCalled:Z

    .line 851
    iget-object v4, p1, Landroid/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {p1, v4}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 852
    iget-boolean v4, p1, Landroid/app/Fragment;->mCalled:Z

    if-nez v4, :cond_13

    .line 853
    new-instance v4, Landroid/app/SuperNotCalledException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Fragment "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " did not call through to super.onActivityCreated()"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 856
    :cond_13
    iget-object v4, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    if-eqz v4, :cond_14

    .line 857
    invoke-virtual {p1}, Landroid/app/Fragment;->restoreViewState()V

    .line 859
    :cond_14
    const/4 v4, 0x0

    iput-object v4, p1, Landroid/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    .line 863
    :cond_15
    :pswitch_2
    const/4 v4, 0x3

    if-le p2, v4, :cond_17

    .line 864
    sget-boolean v4, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v4, :cond_16

    const-string v4, "FragmentManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "moveto STARTED: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 865
    :cond_16
    const/4 v4, 0x0

    iput-boolean v4, p1, Landroid/app/Fragment;->mCalled:Z

    .line 866
    invoke-virtual {p1}, Landroid/app/Fragment;->performStart()V

    .line 867
    iget-boolean v4, p1, Landroid/app/Fragment;->mCalled:Z

    if-nez v4, :cond_17

    .line 868
    new-instance v4, Landroid/app/SuperNotCalledException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Fragment "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " did not call through to super.onStart()"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 873
    :cond_17
    :pswitch_3
    const/4 v4, 0x4

    if-le p2, v4, :cond_5

    .line 874
    sget-boolean v4, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v4, :cond_18

    const-string v4, "FragmentManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "moveto RESUMED: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 875
    :cond_18
    const/4 v4, 0x0

    iput-boolean v4, p1, Landroid/app/Fragment;->mCalled:Z

    .line 876
    const/4 v4, 0x1

    iput-boolean v4, p1, Landroid/app/Fragment;->mResumed:Z

    .line 877
    invoke-virtual {p1}, Landroid/app/Fragment;->onResume()V

    .line 878
    iget-boolean v4, p1, Landroid/app/Fragment;->mCalled:Z

    if-nez v4, :cond_19

    .line 879
    new-instance v4, Landroid/app/SuperNotCalledException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Fragment "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " did not call through to super.onResume()"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 883
    :cond_19
    const/4 v4, 0x0

    iput-object v4, p1, Landroid/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    .line 884
    const/4 v4, 0x0

    iput-object v4, p1, Landroid/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    goto/16 :goto_1

    .line 887
    :cond_1a
    iget v4, p1, Landroid/app/Fragment;->mState:I

    if-le v4, p2, :cond_5

    .line 888
    iget v4, p1, Landroid/app/Fragment;->mState:I

    packed-switch v4, :pswitch_data_1

    goto/16 :goto_1

    .line 961
    :cond_1b
    :goto_2
    :pswitch_4
    const/4 v4, 0x1

    if-ge p2, v4, :cond_5

    .line 962
    iget-boolean v4, p0, Landroid/app/FragmentManagerImpl;->mDestroyed:Z

    if-eqz v4, :cond_1c

    .line 963
    iget-object v4, p1, Landroid/app/Fragment;->mAnimatingAway:Landroid/animation/Animator;

    if-eqz v4, :cond_1c

    .line 970
    iget-object v0, p1, Landroid/app/Fragment;->mAnimatingAway:Landroid/animation/Animator;

    .line 971
    .restart local v0       #anim:Landroid/animation/Animator;
    const/4 v4, 0x0

    iput-object v4, p1, Landroid/app/Fragment;->mAnimatingAway:Landroid/animation/Animator;

    .line 972
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 975
    .end local v0           #anim:Landroid/animation/Animator;
    :cond_1c
    iget-object v4, p1, Landroid/app/Fragment;->mAnimatingAway:Landroid/animation/Animator;

    if-eqz v4, :cond_28

    .line 980
    iput p2, p1, Landroid/app/Fragment;->mStateAfterAnimating:I

    .line 981
    const/4 p2, 0x1

    goto/16 :goto_1

    .line 890
    :pswitch_5
    const/4 v4, 0x5

    if-ge p2, v4, :cond_1f

    .line 891
    sget-boolean v4, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v4, :cond_1d

    const-string v4, "FragmentManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "movefrom RESUMED: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 892
    :cond_1d
    const/4 v4, 0x0

    iput-boolean v4, p1, Landroid/app/Fragment;->mCalled:Z

    .line 893
    invoke-virtual {p1}, Landroid/app/Fragment;->onPause()V

    .line 894
    iget-boolean v4, p1, Landroid/app/Fragment;->mCalled:Z

    if-nez v4, :cond_1e

    .line 895
    new-instance v4, Landroid/app/SuperNotCalledException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Fragment "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " did not call through to super.onPause()"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 898
    :cond_1e
    const/4 v4, 0x0

    iput-boolean v4, p1, Landroid/app/Fragment;->mResumed:Z

    .line 901
    :cond_1f
    :pswitch_6
    const/4 v4, 0x4

    if-ge p2, v4, :cond_21

    .line 902
    sget-boolean v4, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v4, :cond_20

    const-string v4, "FragmentManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "movefrom STARTED: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 903
    :cond_20
    const/4 v4, 0x0

    iput-boolean v4, p1, Landroid/app/Fragment;->mCalled:Z

    .line 904
    invoke-virtual {p1}, Landroid/app/Fragment;->performStop()V

    .line 905
    iget-boolean v4, p1, Landroid/app/Fragment;->mCalled:Z

    if-nez v4, :cond_21

    .line 906
    new-instance v4, Landroid/app/SuperNotCalledException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Fragment "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " did not call through to super.onStop()"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 912
    :cond_21
    :pswitch_7
    const/4 v4, 0x2

    if-ge p2, v4, :cond_1b

    .line 913
    sget-boolean v4, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v4, :cond_22

    const-string v4, "FragmentManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "movefrom ACTIVITY_CREATED: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 914
    :cond_22
    iget-object v4, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    if-eqz v4, :cond_23

    .line 917
    iget-object v4, p0, Landroid/app/FragmentManagerImpl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->isFinishing()Z

    move-result v4

    if-nez v4, :cond_23

    iget-object v4, p1, Landroid/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    if-nez v4, :cond_23

    .line 918
    invoke-virtual {p0, p1}, Landroid/app/FragmentManagerImpl;->saveFragmentViewState(Landroid/app/Fragment;)V

    .line 921
    :cond_23
    const/4 v4, 0x0

    iput-boolean v4, p1, Landroid/app/Fragment;->mCalled:Z

    .line 922
    invoke-virtual {p1}, Landroid/app/Fragment;->performDestroyView()V

    .line 923
    iget-boolean v4, p1, Landroid/app/Fragment;->mCalled:Z

    if-nez v4, :cond_24

    .line 924
    new-instance v4, Landroid/app/SuperNotCalledException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Fragment "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " did not call through to super.onDestroyView()"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 927
    :cond_24
    iget-object v4, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    if-eqz v4, :cond_27

    iget-object v4, p1, Landroid/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    if-eqz v4, :cond_27

    .line 928
    const/4 v0, 0x0

    .line 929
    .restart local v0       #anim:Landroid/animation/Animator;
    iget v4, p0, Landroid/app/FragmentManagerImpl;->mCurState:I

    if-lez v4, :cond_25

    iget-boolean v4, p0, Landroid/app/FragmentManagerImpl;->mDestroyed:Z

    if-nez v4, :cond_25

    .line 930
    const/4 v4, 0x0

    invoke-virtual {p0, p1, p3, v4, p4}, Landroid/app/FragmentManagerImpl;->loadAnimator(Landroid/app/Fragment;IZI)Landroid/animation/Animator;

    move-result-object v0

    .line 933
    :cond_25
    if-eqz v0, :cond_26

    .line 934
    iget-object v1, p1, Landroid/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    .line 935
    .restart local v1       #container:Landroid/view/ViewGroup;
    iget-object v3, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    .line 936
    .local v3, view:Landroid/view/View;
    move-object v2, p1

    .line 937
    .local v2, fragment:Landroid/app/Fragment;
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->startViewTransition(Landroid/view/View;)V

    .line 938
    iput-object v0, p1, Landroid/app/Fragment;->mAnimatingAway:Landroid/animation/Animator;

    .line 939
    iput p2, p1, Landroid/app/Fragment;->mStateAfterAnimating:I

    .line 940
    new-instance v4, Landroid/app/FragmentManagerImpl$5;

    invoke-direct {v4, p0, v1, v3, v2}, Landroid/app/FragmentManagerImpl$5;-><init>(Landroid/app/FragmentManagerImpl;Landroid/view/ViewGroup;Landroid/view/View;Landroid/app/Fragment;)V

    invoke-virtual {v0, v4}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 951
    iget-object v4, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 952
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 955
    .end local v1           #container:Landroid/view/ViewGroup;
    .end local v2           #fragment:Landroid/app/Fragment;
    .end local v3           #view:Landroid/view/View;
    :cond_26
    iget-object v4, p1, Landroid/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    iget-object v5, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 957
    .end local v0           #anim:Landroid/animation/Animator;
    :cond_27
    const/4 v4, 0x0

    iput-object v4, p1, Landroid/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    .line 958
    const/4 v4, 0x0

    iput-object v4, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    goto/16 :goto_2

    .line 983
    :cond_28
    sget-boolean v4, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v4, :cond_29

    const-string v4, "FragmentManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "movefrom CREATED: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 984
    :cond_29
    iget-boolean v4, p1, Landroid/app/Fragment;->mRetaining:Z

    if-nez v4, :cond_2a

    .line 985
    const/4 v4, 0x0

    iput-boolean v4, p1, Landroid/app/Fragment;->mCalled:Z

    .line 986
    invoke-virtual {p1}, Landroid/app/Fragment;->onDestroy()V

    .line 987
    iget-boolean v4, p1, Landroid/app/Fragment;->mCalled:Z

    if-nez v4, :cond_2a

    .line 988
    new-instance v4, Landroid/app/SuperNotCalledException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Fragment "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " did not call through to super.onDestroy()"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 993
    :cond_2a
    const/4 v4, 0x0

    iput-boolean v4, p1, Landroid/app/Fragment;->mCalled:Z

    .line 994
    invoke-virtual {p1}, Landroid/app/Fragment;->onDetach()V

    .line 995
    iget-boolean v4, p1, Landroid/app/Fragment;->mCalled:Z

    if-nez v4, :cond_2b

    .line 996
    new-instance v4, Landroid/app/SuperNotCalledException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Fragment "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " did not call through to super.onDetach()"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 999
    :cond_2b
    iget-boolean v4, p1, Landroid/app/Fragment;->mRetaining:Z

    if-nez v4, :cond_2c

    .line 1000
    invoke-virtual {p0, p1}, Landroid/app/FragmentManagerImpl;->makeInactive(Landroid/app/Fragment;)V

    goto/16 :goto_1

    .line 1002
    :cond_2c
    const/4 v4, 0x0

    iput-object v4, p1, Landroid/app/Fragment;->mActivity:Landroid/app/Activity;

    .line 1003
    const/4 v4, 0x0

    iput-object v4, p1, Landroid/app/Fragment;->mFragmentManager:Landroid/app/FragmentManagerImpl;

    goto/16 :goto_1

    .line 766
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 888
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method

.method public noteStateNotSaved()V
    .locals 1

    .prologue
    .line 1790
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/FragmentManagerImpl;->mStateSaved:Z

    .line 1791
    return-void
.end method

.method public performPendingDeferredStart(Landroid/app/Fragment;)V
    .locals 2
    .parameter "f"

    .prologue
    const/4 v1, 0x0

    .line 726
    iget-boolean v0, p1, Landroid/app/Fragment;->mDeferStart:Z

    if-eqz v0, :cond_0

    .line 727
    iget-boolean v0, p0, Landroid/app/FragmentManagerImpl;->mExecutingActions:Z

    if-eqz v0, :cond_1

    .line 729
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/FragmentManagerImpl;->mHavePendingDeferredStart:Z

    .line 735
    :cond_0
    :goto_0
    return-void

    .line 732
    :cond_1
    iput-boolean v1, p1, Landroid/app/Fragment;->mDeferStart:Z

    .line 733
    iget v0, p0, Landroid/app/FragmentManagerImpl;->mCurState:I

    invoke-virtual {p0, p1, v0, v1, v1}, Landroid/app/FragmentManagerImpl;->moveToState(Landroid/app/Fragment;III)V

    goto :goto_0
.end method

.method public popBackStack()V
    .locals 2

    .prologue
    .line 446
    new-instance v0, Landroid/app/FragmentManagerImpl$2;

    invoke-direct {v0, p0}, Landroid/app/FragmentManagerImpl$2;-><init>(Landroid/app/FragmentManagerImpl;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/app/FragmentManagerImpl;->enqueueAction(Ljava/lang/Runnable;Z)V

    .line 451
    return-void
.end method

.method public popBackStack(II)V
    .locals 3
    .parameter "id"
    .parameter "flags"

    .prologue
    .line 478
    if-gez p1, :cond_0

    .line 479
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 481
    :cond_0
    new-instance v0, Landroid/app/FragmentManagerImpl$4;

    invoke-direct {v0, p0, p1, p2}, Landroid/app/FragmentManagerImpl$4;-><init>(Landroid/app/FragmentManagerImpl;II)V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/app/FragmentManagerImpl;->enqueueAction(Ljava/lang/Runnable;Z)V

    .line 486
    return-void
.end method

.method public popBackStack(Ljava/lang/String;I)V
    .locals 2
    .parameter "name"
    .parameter "flags"

    .prologue
    .line 462
    new-instance v0, Landroid/app/FragmentManagerImpl$3;

    invoke-direct {v0, p0, p1, p2}, Landroid/app/FragmentManagerImpl$3;-><init>(Landroid/app/FragmentManagerImpl;Ljava/lang/String;I)V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/app/FragmentManagerImpl;->enqueueAction(Ljava/lang/Runnable;Z)V

    .line 467
    return-void
.end method

.method public popBackStackImmediate()Z
    .locals 4

    .prologue
    .line 455
    invoke-direct {p0}, Landroid/app/FragmentManagerImpl;->checkStateLoss()V

    .line 456
    invoke-virtual {p0}, Landroid/app/FragmentManagerImpl;->executePendingTransactions()Z

    .line 457
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mActivity:Landroid/app/Activity;

    iget-object v0, v0, Landroid/app/Activity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/app/FragmentManagerImpl;->popBackStackState(Landroid/os/Handler;Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method public popBackStackImmediate(II)Z
    .locals 3
    .parameter "id"
    .parameter "flags"

    .prologue
    .line 490
    invoke-direct {p0}, Landroid/app/FragmentManagerImpl;->checkStateLoss()V

    .line 491
    invoke-virtual {p0}, Landroid/app/FragmentManagerImpl;->executePendingTransactions()Z

    .line 492
    if-gez p1, :cond_0

    .line 493
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 495
    :cond_0
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mActivity:Landroid/app/Activity;

    iget-object v0, v0, Landroid/app/Activity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1, p2}, Landroid/app/FragmentManagerImpl;->popBackStackState(Landroid/os/Handler;Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method public popBackStackImmediate(Ljava/lang/String;I)Z
    .locals 2
    .parameter "name"
    .parameter "flags"

    .prologue
    .line 471
    invoke-direct {p0}, Landroid/app/FragmentManagerImpl;->checkStateLoss()V

    .line 472
    invoke-virtual {p0}, Landroid/app/FragmentManagerImpl;->executePendingTransactions()Z

    .line 473
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mActivity:Landroid/app/Activity;

    iget-object v0, v0, Landroid/app/Activity;->mHandler:Landroid/os/Handler;

    const/4 v1, -0x1

    invoke-virtual {p0, v0, p1, v1, p2}, Landroid/app/FragmentManagerImpl;->popBackStackState(Landroid/os/Handler;Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method popBackStackState(Landroid/os/Handler;Ljava/lang/String;II)Z
    .locals 11
    .parameter "handler"
    .parameter "name"
    .parameter "id"
    .parameter "flags"

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 1452
    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    if-nez v6, :cond_1

    .line 1511
    :cond_0
    :goto_0
    return v9

    .line 1455
    :cond_1
    if-nez p2, :cond_2

    if-gez p3, :cond_2

    and-int/lit8 v6, p4, 0x1

    if-nez v6, :cond_2

    .line 1456
    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v4, v6, -0x1

    .line 1457
    .local v4, last:I
    if-ltz v4, :cond_0

    .line 1460
    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/BackStackRecord;

    .line 1461
    .local v1, bss:Landroid/app/BackStackRecord;
    invoke-virtual {v1, v8}, Landroid/app/BackStackRecord;->popFromBackStack(Z)V

    .line 1462
    invoke-virtual {p0}, Landroid/app/FragmentManagerImpl;->reportBackStackChanged()V

    .end local v1           #bss:Landroid/app/BackStackRecord;
    .end local v4           #last:I
    :goto_1
    move v9, v8

    .line 1511
    goto :goto_0

    .line 1464
    :cond_2
    const/4 v3, -0x1

    .line 1465
    .local v3, index:I
    if-nez p2, :cond_3

    if-ltz p3, :cond_9

    .line 1468
    :cond_3
    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v3, v6, -0x1

    .line 1469
    :goto_2
    if-ltz v3, :cond_4

    .line 1470
    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/BackStackRecord;

    .line 1471
    .restart local v1       #bss:Landroid/app/BackStackRecord;
    if-eqz p2, :cond_7

    invoke-virtual {v1}, Landroid/app/BackStackRecord;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 1479
    .end local v1           #bss:Landroid/app/BackStackRecord;
    :cond_4
    if-ltz v3, :cond_0

    .line 1482
    and-int/lit8 v6, p4, 0x1

    if-eqz v6, :cond_9

    .line 1483
    add-int/lit8 v3, v3, -0x1

    .line 1485
    :goto_3
    if-ltz v3, :cond_9

    .line 1486
    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/BackStackRecord;

    .line 1487
    .restart local v1       #bss:Landroid/app/BackStackRecord;
    if-eqz p2, :cond_5

    invoke-virtual {v1}, Landroid/app/BackStackRecord;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    :cond_5
    if-ltz p3, :cond_9

    iget v6, v1, Landroid/app/BackStackRecord;->mIndex:I

    if-ne p3, v6, :cond_9

    .line 1489
    :cond_6
    add-int/lit8 v3, v3, -0x1

    .line 1490
    goto :goto_3

    .line 1474
    :cond_7
    if-ltz p3, :cond_8

    iget v6, v1, Landroid/app/BackStackRecord;->mIndex:I

    if-eq p3, v6, :cond_4

    .line 1477
    :cond_8
    add-int/lit8 v3, v3, -0x1

    .line 1478
    goto :goto_2

    .line 1496
    .end local v1           #bss:Landroid/app/BackStackRecord;
    :cond_9
    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-eq v3, v6, :cond_0

    .line 1499
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1501
    .local v5, states:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/BackStackRecord;>;"
    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v2, v6, -0x1

    .local v2, i:I
    :goto_4
    if-le v2, v3, :cond_a

    .line 1502
    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1501
    add-int/lit8 v2, v2, -0x1

    goto :goto_4

    .line 1504
    :cond_a
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v0, v6, -0x1

    .line 1505
    .local v0, LAST:I
    const/4 v2, 0x0

    :goto_5
    if-gt v2, v0, :cond_d

    .line 1506
    sget-boolean v6, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v6, :cond_b

    const-string v6, "FragmentManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Popping back stack state: "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1507
    :cond_b
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/BackStackRecord;

    if-ne v2, v0, :cond_c

    move v7, v8

    :goto_6
    invoke-virtual {v6, v7}, Landroid/app/BackStackRecord;->popFromBackStack(Z)V

    .line 1505
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_c
    move v7, v9

    .line 1507
    goto :goto_6

    .line 1509
    :cond_d
    invoke-virtual {p0}, Landroid/app/FragmentManagerImpl;->reportBackStackChanged()V

    goto/16 :goto_1
.end method

.method public putFragment(Landroid/os/Bundle;Ljava/lang/String;Landroid/app/Fragment;)V
    .locals 3
    .parameter "bundle"
    .parameter "key"
    .parameter "fragment"

    .prologue
    .line 525
    iget v0, p3, Landroid/app/Fragment;->mIndex:I

    if-gez v0, :cond_0

    .line 526
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not currently in the FragmentManager"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 529
    :cond_0
    iget v0, p3, Landroid/app/Fragment;->mIndex:I

    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 530
    return-void
.end method

.method public removeFragment(Landroid/app/Fragment;II)V
    .locals 6
    .parameter "fragment"
    .parameter "transition"
    .parameter "transitionStyle"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1119
    sget-boolean v3, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "FragmentManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "remove: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " nesting="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/app/Fragment;->mBackStackNesting:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1120
    :cond_0
    invoke-virtual {p1}, Landroid/app/Fragment;->isInBackStack()Z

    move-result v3

    if-nez v3, :cond_5

    move v0, v1

    .line 1121
    .local v0, inactive:Z
    :goto_0
    iget-boolean v3, p1, Landroid/app/Fragment;->mDetached:Z

    if-eqz v3, :cond_1

    if-eqz v0, :cond_4

    .line 1122
    :cond_1
    iget-object v3, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    if-eqz v3, :cond_2

    .line 1123
    iget-object v3, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1125
    :cond_2
    iget-boolean v3, p1, Landroid/app/Fragment;->mHasMenu:Z

    if-eqz v3, :cond_3

    iget-boolean v3, p1, Landroid/app/Fragment;->mMenuVisible:Z

    if-eqz v3, :cond_3

    .line 1126
    iput-boolean v1, p0, Landroid/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    .line 1128
    :cond_3
    iput-boolean v2, p1, Landroid/app/Fragment;->mAdded:Z

    .line 1129
    iput-boolean v1, p1, Landroid/app/Fragment;->mRemoving:Z

    .line 1130
    if-eqz v0, :cond_6

    :goto_1
    invoke-virtual {p0, p1, v2, p2, p3}, Landroid/app/FragmentManagerImpl;->moveToState(Landroid/app/Fragment;III)V

    .line 1133
    :cond_4
    return-void

    .end local v0           #inactive:Z
    :cond_5
    move v0, v2

    .line 1120
    goto :goto_0

    .restart local v0       #inactive:Z
    :cond_6
    move v2, v1

    .line 1130
    goto :goto_1
.end method

.method public removeOnBackStackChangedListener(Landroid/app/FragmentManager$OnBackStackChangedListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 518
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mBackStackChangeListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 519
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mBackStackChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 521
    :cond_0
    return-void
.end method

.method reportBackStackChanged()V
    .locals 2

    .prologue
    .line 1436
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mBackStackChangeListeners:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 1437
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mBackStackChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1438
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mBackStackChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/FragmentManager$OnBackStackChangedListener;

    invoke-interface {v1}, Landroid/app/FragmentManager$OnBackStackChangedListener;->onBackStackChanged()V

    .line 1437
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1441
    .end local v0           #i:I
    :cond_0
    return-void
.end method

.method restoreAllState(Landroid/os/Parcelable;Ljava/util/ArrayList;)V
    .locals 10
    .parameter "state"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcelable;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/Fragment;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, nonConfig:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/Fragment;>;"
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 1682
    if-nez p1, :cond_1

    .line 1782
    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v2, p1

    .line 1683
    check-cast v2, Landroid/app/FragmentManagerState;

    .line 1684
    .local v2, fms:Landroid/app/FragmentManagerState;
    iget-object v5, v2, Landroid/app/FragmentManagerState;->mActive:[Landroid/app/FragmentState;

    if-eqz v5, :cond_0

    .line 1688
    if-eqz p2, :cond_4

    .line 1689
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_4

    .line 1690
    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Fragment;

    .line 1691
    .local v1, f:Landroid/app/Fragment;
    sget-boolean v5, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v5, :cond_2

    const-string v5, "FragmentManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "restoreAllState: re-attaching retained "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1692
    :cond_2
    iget-object v5, v2, Landroid/app/FragmentManagerState;->mActive:[Landroid/app/FragmentState;

    iget v6, v1, Landroid/app/Fragment;->mIndex:I

    aget-object v3, v5, v6

    .line 1693
    .local v3, fs:Landroid/app/FragmentState;
    iput-object v1, v3, Landroid/app/FragmentState;->mInstance:Landroid/app/Fragment;

    .line 1694
    iput-object v8, v1, Landroid/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    .line 1695
    iput v9, v1, Landroid/app/Fragment;->mBackStackNesting:I

    .line 1696
    iput-boolean v9, v1, Landroid/app/Fragment;->mInLayout:Z

    .line 1697
    iput-boolean v9, v1, Landroid/app/Fragment;->mAdded:Z

    .line 1698
    iput-object v8, v1, Landroid/app/Fragment;->mTarget:Landroid/app/Fragment;

    .line 1699
    iget-object v5, v3, Landroid/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    if-eqz v5, :cond_3

    .line 1700
    iget-object v5, v3, Landroid/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 1701
    iget-object v5, v3, Landroid/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    const-string v6, "android:view_state"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v5

    iput-object v5, v1, Landroid/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    .line 1689
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1709
    .end local v1           #f:Landroid/app/Fragment;
    .end local v3           #fs:Landroid/app/FragmentState;
    .end local v4           #i:I
    :cond_4
    new-instance v5, Ljava/util/ArrayList;

    iget-object v6, v2, Landroid/app/FragmentManagerState;->mActive:[Landroid/app/FragmentState;

    array-length v6, v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v5, p0, Landroid/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    .line 1710
    iget-object v5, p0, Landroid/app/FragmentManagerImpl;->mAvailIndices:Ljava/util/ArrayList;

    if-eqz v5, :cond_5

    .line 1711
    iget-object v5, p0, Landroid/app/FragmentManagerImpl;->mAvailIndices:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 1713
    :cond_5
    const/4 v4, 0x0

    .restart local v4       #i:I
    :goto_2
    iget-object v5, v2, Landroid/app/FragmentManagerState;->mActive:[Landroid/app/FragmentState;

    array-length v5, v5

    if-ge v4, v5, :cond_b

    .line 1714
    iget-object v5, v2, Landroid/app/FragmentManagerState;->mActive:[Landroid/app/FragmentState;

    aget-object v3, v5, v4

    .line 1715
    .restart local v3       #fs:Landroid/app/FragmentState;
    if-eqz v3, :cond_7

    .line 1716
    iget-object v5, p0, Landroid/app/FragmentManagerImpl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3, v5}, Landroid/app/FragmentState;->instantiate(Landroid/app/Activity;)Landroid/app/Fragment;

    move-result-object v1

    .line 1717
    .restart local v1       #f:Landroid/app/Fragment;
    sget-boolean v5, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v5, :cond_6

    const-string v5, "FragmentManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "restoreAllState: adding #"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1718
    :cond_6
    iget-object v5, p0, Landroid/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1722
    iput-object v8, v3, Landroid/app/FragmentState;->mInstance:Landroid/app/Fragment;

    .line 1713
    .end local v1           #f:Landroid/app/Fragment;
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 1724
    :cond_7
    sget-boolean v5, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v5, :cond_8

    const-string v5, "FragmentManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "restoreAllState: adding #"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": (null)"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1725
    :cond_8
    iget-object v5, p0, Landroid/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1726
    iget-object v5, p0, Landroid/app/FragmentManagerImpl;->mAvailIndices:Ljava/util/ArrayList;

    if-nez v5, :cond_9

    .line 1727
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Landroid/app/FragmentManagerImpl;->mAvailIndices:Ljava/util/ArrayList;

    .line 1729
    :cond_9
    sget-boolean v5, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v5, :cond_a

    const-string v5, "FragmentManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "restoreAllState: adding avail #"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1730
    :cond_a
    iget-object v5, p0, Landroid/app/FragmentManagerImpl;->mAvailIndices:Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1735
    .end local v3           #fs:Landroid/app/FragmentState;
    :cond_b
    if-eqz p2, :cond_e

    .line 1736
    const/4 v4, 0x0

    :goto_4
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_e

    .line 1737
    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Fragment;

    .line 1738
    .restart local v1       #f:Landroid/app/Fragment;
    iget v5, v1, Landroid/app/Fragment;->mTargetIndex:I

    if-ltz v5, :cond_c

    .line 1739
    iget v5, v1, Landroid/app/Fragment;->mTargetIndex:I

    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_d

    .line 1740
    iget-object v5, p0, Landroid/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    iget v6, v1, Landroid/app/Fragment;->mTargetIndex:I

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/Fragment;

    iput-object v5, v1, Landroid/app/Fragment;->mTarget:Landroid/app/Fragment;

    .line 1736
    :cond_c
    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 1742
    :cond_d
    const-string v5, "FragmentManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Re-attaching retained fragment "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " target no longer exists: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v1, Landroid/app/Fragment;->mTargetIndex:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1744
    iput-object v8, v1, Landroid/app/Fragment;->mTarget:Landroid/app/Fragment;

    goto :goto_5

    .line 1751
    .end local v1           #f:Landroid/app/Fragment;
    :cond_e
    iget-object v5, v2, Landroid/app/FragmentManagerState;->mAdded:[I

    if-eqz v5, :cond_11

    .line 1752
    new-instance v5, Ljava/util/ArrayList;

    iget-object v6, v2, Landroid/app/FragmentManagerState;->mAdded:[I

    array-length v6, v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v5, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    .line 1753
    const/4 v4, 0x0

    :goto_6
    iget-object v5, v2, Landroid/app/FragmentManagerState;->mAdded:[I

    array-length v5, v5

    if-ge v4, v5, :cond_12

    .line 1754
    iget-object v5, p0, Landroid/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    iget-object v6, v2, Landroid/app/FragmentManagerState;->mAdded:[I

    aget v6, v6, v4

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Fragment;

    .line 1755
    .restart local v1       #f:Landroid/app/Fragment;
    if-nez v1, :cond_f

    .line 1756
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "No instantiated fragment for index #"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v2, Landroid/app/FragmentManagerState;->mAdded:[I

    aget v7, v7, v4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1759
    :cond_f
    const/4 v5, 0x1

    iput-boolean v5, v1, Landroid/app/Fragment;->mAdded:Z

    .line 1760
    sget-boolean v5, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v5, :cond_10

    const-string v5, "FragmentManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "restoreAllState: making added #"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1761
    :cond_10
    iget-object v5, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1753
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 1764
    .end local v1           #f:Landroid/app/Fragment;
    :cond_11
    iput-object v8, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    .line 1768
    :cond_12
    iget-object v5, v2, Landroid/app/FragmentManagerState;->mBackStack:[Landroid/app/BackStackState;

    if-eqz v5, :cond_15

    .line 1769
    new-instance v5, Ljava/util/ArrayList;

    iget-object v6, v2, Landroid/app/FragmentManagerState;->mBackStack:[Landroid/app/BackStackState;

    array-length v6, v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v5, p0, Landroid/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    .line 1770
    const/4 v4, 0x0

    :goto_7
    iget-object v5, v2, Landroid/app/FragmentManagerState;->mBackStack:[Landroid/app/BackStackState;

    array-length v5, v5

    if-ge v4, v5, :cond_0

    .line 1771
    iget-object v5, v2, Landroid/app/FragmentManagerState;->mBackStack:[Landroid/app/BackStackState;

    aget-object v5, v5, v4

    invoke-virtual {v5, p0}, Landroid/app/BackStackState;->instantiate(Landroid/app/FragmentManagerImpl;)Landroid/app/BackStackRecord;

    move-result-object v0

    .line 1772
    .local v0, bse:Landroid/app/BackStackRecord;
    sget-boolean v5, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v5, :cond_13

    const-string v5, "FragmentManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "restoreAllState: adding bse #"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " (index "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v0, Landroid/app/BackStackRecord;->mIndex:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "): "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1774
    :cond_13
    iget-object v5, p0, Landroid/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1775
    iget v5, v0, Landroid/app/BackStackRecord;->mIndex:I

    if-ltz v5, :cond_14

    .line 1776
    iget v5, v0, Landroid/app/BackStackRecord;->mIndex:I

    invoke-virtual {p0, v5, v0}, Landroid/app/FragmentManagerImpl;->setBackStackIndex(ILandroid/app/BackStackRecord;)V

    .line 1770
    :cond_14
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    .line 1780
    .end local v0           #bse:Landroid/app/BackStackRecord;
    :cond_15
    iput-object v8, p0, Landroid/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    goto/16 :goto_0
.end method

.method retainNonConfig()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/Fragment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1515
    const/4 v1, 0x0

    .line 1516
    .local v1, fragments:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/Fragment;>;"
    iget-object v3, p0, Landroid/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    if-eqz v3, :cond_3

    .line 1517
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget-object v3, p0, Landroid/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 1518
    iget-object v3, p0, Landroid/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Fragment;

    .line 1519
    .local v0, f:Landroid/app/Fragment;
    if-eqz v0, :cond_1

    iget-boolean v3, v0, Landroid/app/Fragment;->mRetainInstance:Z

    if-eqz v3, :cond_1

    .line 1520
    if-nez v1, :cond_0

    .line 1521
    new-instance v1, Ljava/util/ArrayList;

    .end local v1           #fragments:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/Fragment;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1523
    .restart local v1       #fragments:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/Fragment;>;"
    :cond_0
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1524
    const/4 v3, 0x1

    iput-boolean v3, v0, Landroid/app/Fragment;->mRetaining:Z

    .line 1525
    iget-object v3, v0, Landroid/app/Fragment;->mTarget:Landroid/app/Fragment;

    if-eqz v3, :cond_2

    iget-object v3, v0, Landroid/app/Fragment;->mTarget:Landroid/app/Fragment;

    iget v3, v3, Landroid/app/Fragment;->mIndex:I

    :goto_1
    iput v3, v0, Landroid/app/Fragment;->mTargetIndex:I

    .line 1526
    sget-boolean v3, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v3, :cond_1

    const-string v3, "FragmentManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "retainNonConfig: keeping retained "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1517
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1525
    :cond_2
    const/4 v3, -0x1

    goto :goto_1

    .line 1530
    .end local v0           #f:Landroid/app/Fragment;
    .end local v2           #i:I
    :cond_3
    return-object v1
.end method

.method saveAllState()Landroid/os/Parcelable;
    .locals 18

    .prologue
    .line 1585
    invoke-virtual/range {p0 .. p0}, Landroid/app/FragmentManagerImpl;->execPendingActions()Z

    .line 1587
    const/4 v11, 0x1

    move-object/from16 v0, p0

    iput-boolean v11, v0, Landroid/app/FragmentManagerImpl;->mStateSaved:Z

    .line 1589
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    if-eqz v11, :cond_0

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-gtz v11, :cond_1

    .line 1590
    :cond_0
    const/4 v6, 0x0

    .line 1676
    :goto_0
    return-object v6

    .line 1594
    :cond_1
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1595
    .local v1, N:I
    new-array v2, v1, [Landroid/app/FragmentState;

    .line 1596
    .local v2, active:[Landroid/app/FragmentState;
    const/4 v8, 0x0

    .line 1597
    .local v8, haveFragments:Z
    const/4 v9, 0x0

    .local v9, i:I
    :goto_1
    if-ge v9, v1, :cond_7

    .line 1598
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/Fragment;

    .line 1599
    .local v5, f:Landroid/app/Fragment;
    if-eqz v5, :cond_5

    .line 1600
    const/4 v8, 0x1

    .line 1602
    new-instance v7, Landroid/app/FragmentState;

    invoke-direct {v7, v5}, Landroid/app/FragmentState;-><init>(Landroid/app/Fragment;)V

    .line 1603
    .local v7, fs:Landroid/app/FragmentState;
    aput-object v7, v2, v9

    .line 1605
    iget v11, v5, Landroid/app/Fragment;->mState:I

    if-lez v11, :cond_6

    iget-object v11, v7, Landroid/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    if-nez v11, :cond_6

    .line 1606
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/app/FragmentManagerImpl;->saveFragmentBasicState(Landroid/app/Fragment;)Landroid/os/Bundle;

    move-result-object v11

    iput-object v11, v7, Landroid/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    .line 1608
    iget-object v11, v5, Landroid/app/Fragment;->mTarget:Landroid/app/Fragment;

    if-eqz v11, :cond_4

    .line 1609
    iget-object v11, v5, Landroid/app/Fragment;->mTarget:Landroid/app/Fragment;

    iget v11, v11, Landroid/app/Fragment;->mIndex:I

    if-gez v11, :cond_2

    .line 1610
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Failure saving state: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " has target not in fragment manager: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v5, Landroid/app/Fragment;->mTarget:Landroid/app/Fragment;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1612
    .local v10, msg:Ljava/lang/String;
    const-string v11, "FragmentManager"

    invoke-static {v11, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1613
    const-string v11, "  "

    const/4 v12, 0x0

    new-instance v13, Ljava/io/PrintWriter;

    new-instance v14, Landroid/util/LogWriter;

    const/4 v15, 0x6

    const-string v16, "FragmentManager"

    const/16 v17, 0x3

    invoke-direct/range {v14 .. v17}, Landroid/util/LogWriter;-><init>(ILjava/lang/String;I)V

    invoke-direct {v13, v14}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v12, v13, v14}, Landroid/app/FragmentManagerImpl;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1615
    new-instance v11, Ljava/lang/IllegalStateException;

    invoke-direct {v11, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 1617
    .end local v10           #msg:Ljava/lang/String;
    :cond_2
    iget-object v11, v7, Landroid/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    if-nez v11, :cond_3

    .line 1618
    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    iput-object v11, v7, Landroid/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    .line 1620
    :cond_3
    iget-object v11, v7, Landroid/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    const-string v12, "android:target_state"

    iget-object v13, v5, Landroid/app/Fragment;->mTarget:Landroid/app/Fragment;

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v12, v13}, Landroid/app/FragmentManagerImpl;->putFragment(Landroid/os/Bundle;Ljava/lang/String;Landroid/app/Fragment;)V

    .line 1622
    iget v11, v5, Landroid/app/Fragment;->mTargetRequestCode:I

    if-eqz v11, :cond_4

    .line 1623
    iget-object v11, v7, Landroid/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    const-string v12, "android:target_req_state"

    iget v13, v5, Landroid/app/Fragment;->mTargetRequestCode:I

    invoke-virtual {v11, v12, v13}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1633
    :cond_4
    :goto_2
    sget-boolean v11, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v11, :cond_5

    const-string v11, "FragmentManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Saved state of "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ": "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v7, Landroid/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1597
    .end local v7           #fs:Landroid/app/FragmentState;
    :cond_5
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_1

    .line 1630
    .restart local v7       #fs:Landroid/app/FragmentState;
    :cond_6
    iget-object v11, v5, Landroid/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    iput-object v11, v7, Landroid/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    goto :goto_2

    .line 1638
    .end local v5           #f:Landroid/app/Fragment;
    .end local v7           #fs:Landroid/app/FragmentState;
    :cond_7
    if-nez v8, :cond_9

    .line 1639
    sget-boolean v11, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v11, :cond_8

    const-string v11, "FragmentManager"

    const-string/jumbo v12, "saveAllState: no fragments!"

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1640
    :cond_8
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 1643
    :cond_9
    const/4 v3, 0x0

    .line 1644
    .local v3, added:[I
    const/4 v4, 0x0

    .line 1647
    .local v4, backStack:[Landroid/app/BackStackState;
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    if-eqz v11, :cond_b

    .line 1648
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1649
    if-lez v1, :cond_b

    .line 1650
    new-array v3, v1, [I

    .line 1651
    const/4 v9, 0x0

    :goto_3
    if-ge v9, v1, :cond_b

    .line 1652
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/Fragment;

    iget v11, v11, Landroid/app/Fragment;->mIndex:I

    aput v11, v3, v9

    .line 1653
    sget-boolean v11, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v11, :cond_a

    const-string v11, "FragmentManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "saveAllState: adding fragment #"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ": "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v13, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1651
    :cond_a
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 1660
    :cond_b
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    if-eqz v11, :cond_d

    .line 1661
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1662
    if-lez v1, :cond_d

    .line 1663
    new-array v4, v1, [Landroid/app/BackStackState;

    .line 1664
    const/4 v9, 0x0

    :goto_4
    if-ge v9, v1, :cond_d

    .line 1665
    new-instance v12, Landroid/app/BackStackState;

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/BackStackRecord;

    move-object/from16 v0, p0

    invoke-direct {v12, v0, v11}, Landroid/app/BackStackState;-><init>(Landroid/app/FragmentManagerImpl;Landroid/app/BackStackRecord;)V

    aput-object v12, v4, v9

    .line 1666
    sget-boolean v11, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v11, :cond_c

    const-string v11, "FragmentManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "saveAllState: adding back stack #"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ": "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v13, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1664
    :cond_c
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 1672
    :cond_d
    new-instance v6, Landroid/app/FragmentManagerState;

    invoke-direct {v6}, Landroid/app/FragmentManagerState;-><init>()V

    .line 1673
    .local v6, fms:Landroid/app/FragmentManagerState;
    iput-object v2, v6, Landroid/app/FragmentManagerState;->mActive:[Landroid/app/FragmentState;

    .line 1674
    iput-object v3, v6, Landroid/app/FragmentManagerState;->mAdded:[I

    .line 1675
    iput-object v4, v6, Landroid/app/FragmentManagerState;->mBackStack:[Landroid/app/BackStackState;

    goto/16 :goto_0
.end method

.method saveFragmentBasicState(Landroid/app/Fragment;)Landroid/os/Bundle;
    .locals 3
    .parameter "f"

    .prologue
    .line 1550
    const/4 v0, 0x0

    .line 1552
    .local v0, result:Landroid/os/Bundle;
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mStateBundle:Landroid/os/Bundle;

    if-nez v1, :cond_0

    .line 1553
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, p0, Landroid/app/FragmentManagerImpl;->mStateBundle:Landroid/os/Bundle;

    .line 1555
    :cond_0
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mStateBundle:Landroid/os/Bundle;

    invoke-virtual {p1, v1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1556
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mStateBundle:Landroid/os/Bundle;

    invoke-virtual {v1}, Landroid/os/Bundle;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1557
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mStateBundle:Landroid/os/Bundle;

    .line 1558
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/app/FragmentManagerImpl;->mStateBundle:Landroid/os/Bundle;

    .line 1561
    :cond_1
    iget-object v1, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    if-eqz v1, :cond_2

    .line 1562
    invoke-virtual {p0, p1}, Landroid/app/FragmentManagerImpl;->saveFragmentViewState(Landroid/app/Fragment;)V

    .line 1564
    :cond_2
    iget-object v1, p1, Landroid/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    if-eqz v1, :cond_4

    .line 1565
    if-nez v0, :cond_3

    .line 1566
    new-instance v0, Landroid/os/Bundle;

    .end local v0           #result:Landroid/os/Bundle;
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1568
    .restart local v0       #result:Landroid/os/Bundle;
    :cond_3
    const-string v1, "android:view_state"

    iget-object v2, p1, Landroid/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 1571
    :cond_4
    iget-boolean v1, p1, Landroid/app/Fragment;->mUserVisibleHint:Z

    if-nez v1, :cond_6

    .line 1572
    if-nez v0, :cond_5

    .line 1573
    new-instance v0, Landroid/os/Bundle;

    .end local v0           #result:Landroid/os/Bundle;
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1576
    .restart local v0       #result:Landroid/os/Bundle;
    :cond_5
    const-string v1, "android:user_visible_hint"

    iget-boolean v2, p1, Landroid/app/Fragment;->mUserVisibleHint:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1579
    :cond_6
    return-object v0
.end method

.method public saveFragmentInstanceState(Landroid/app/Fragment;)Landroid/app/Fragment$SavedState;
    .locals 4
    .parameter "fragment"

    .prologue
    const/4 v1, 0x0

    .line 552
    iget v2, p1, Landroid/app/Fragment;->mIndex:I

    if-gez v2, :cond_0

    .line 553
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fragment "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not currently in the FragmentManager"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 556
    :cond_0
    iget v2, p1, Landroid/app/Fragment;->mState:I

    if-lez v2, :cond_1

    .line 557
    invoke-virtual {p0, p1}, Landroid/app/FragmentManagerImpl;->saveFragmentBasicState(Landroid/app/Fragment;)Landroid/os/Bundle;

    move-result-object v0

    .line 558
    .local v0, result:Landroid/os/Bundle;
    if-eqz v0, :cond_1

    new-instance v1, Landroid/app/Fragment$SavedState;

    invoke-direct {v1, v0}, Landroid/app/Fragment$SavedState;-><init>(Landroid/os/Bundle;)V

    .line 560
    .end local v0           #result:Landroid/os/Bundle;
    :cond_1
    return-object v1
.end method

.method saveFragmentViewState(Landroid/app/Fragment;)V
    .locals 2
    .parameter "f"

    .prologue
    .line 1534
    iget-object v0, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    if-nez v0, :cond_1

    .line 1547
    :cond_0
    :goto_0
    return-void

    .line 1537
    :cond_1
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mStateArray:Landroid/util/SparseArray;

    if-nez v0, :cond_2

    .line 1538
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/app/FragmentManagerImpl;->mStateArray:Landroid/util/SparseArray;

    .line 1542
    :goto_1
    iget-object v0, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mStateArray:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/view/View;->saveHierarchyState(Landroid/util/SparseArray;)V

    .line 1543
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mStateArray:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1544
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mStateArray:Landroid/util/SparseArray;

    iput-object v0, p1, Landroid/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    .line 1545
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/FragmentManagerImpl;->mStateArray:Landroid/util/SparseArray;

    goto :goto_0

    .line 1540
    :cond_2
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mStateArray:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    goto :goto_1
.end method

.method public setBackStackIndex(ILandroid/app/BackStackRecord;)V
    .locals 4
    .parameter "index"
    .parameter "bse"

    .prologue
    .line 1334
    monitor-enter p0

    .line 1335
    :try_start_0
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    .line 1336
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    .line 1338
    :cond_0
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1339
    .local v0, N:I
    if-ge p1, v0, :cond_2

    .line 1340
    sget-boolean v1, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "FragmentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Setting back stack index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1341
    :cond_1
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v1, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1355
    :goto_0
    monitor-exit p0

    .line 1356
    return-void

    .line 1343
    :cond_2
    :goto_1
    if-ge v0, p1, :cond_5

    .line 1344
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1345
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    if-nez v1, :cond_3

    .line 1346
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    .line 1348
    :cond_3
    sget-boolean v1, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v1, :cond_4

    const-string v1, "FragmentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Adding available back stack index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1349
    :cond_4
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1350
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1352
    :cond_5
    sget-boolean v1, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v1, :cond_6

    const-string v1, "FragmentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Adding back stack index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1353
    :cond_6
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1355
    .end local v0           #N:I
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public showFragment(Landroid/app/Fragment;II)V
    .locals 6
    .parameter "fragment"
    .parameter "transition"
    .parameter "transitionStyle"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1168
    sget-boolean v1, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "FragmentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "show: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1169
    :cond_0
    iget-boolean v1, p1, Landroid/app/Fragment;->mHidden:Z

    if-eqz v1, :cond_4

    .line 1170
    iput-boolean v4, p1, Landroid/app/Fragment;->mHidden:Z

    .line 1171
    iget-object v1, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    if-eqz v1, :cond_2

    .line 1172
    invoke-virtual {p0, p1, p2, v5, p3}, Landroid/app/FragmentManagerImpl;->loadAnimator(Landroid/app/Fragment;IZI)Landroid/animation/Animator;

    move-result-object v0

    .line 1174
    .local v0, anim:Landroid/animation/Animator;
    if-eqz v0, :cond_1

    .line 1175
    iget-object v1, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 1176
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 1178
    :cond_1
    iget-object v1, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1180
    .end local v0           #anim:Landroid/animation/Animator;
    :cond_2
    iget-boolean v1, p1, Landroid/app/Fragment;->mAdded:Z

    if-eqz v1, :cond_3

    iget-boolean v1, p1, Landroid/app/Fragment;->mHasMenu:Z

    if-eqz v1, :cond_3

    iget-boolean v1, p1, Landroid/app/Fragment;->mMenuVisible:Z

    if-eqz v1, :cond_3

    .line 1181
    iput-boolean v5, p0, Landroid/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    .line 1183
    :cond_3
    invoke-virtual {p1, v4}, Landroid/app/Fragment;->onHiddenChanged(Z)V

    .line 1185
    :cond_4
    return-void
.end method

.method startPendingDeferredFragments()V
    .locals 3

    .prologue
    .line 1055
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    if-nez v2, :cond_1

    .line 1063
    :cond_0
    return-void

    .line 1057
    :cond_1
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 1058
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Fragment;

    .line 1059
    .local v0, f:Landroid/app/Fragment;
    if-eqz v0, :cond_2

    .line 1060
    invoke-virtual {p0, v0}, Landroid/app/FragmentManagerImpl;->performPendingDeferredStart(Landroid/app/Fragment;)V

    .line 1057
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 565
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 566
    .local v0, sb:Ljava/lang/StringBuilder;
    const-string v1, "FragmentManager{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 567
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 568
    const-string v1, " in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 569
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mActivity:Landroid/app/Activity;

    invoke-static {v1, v0}, Landroid/util/DebugUtils;->buildShortClassTag(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    .line 570
    const-string/jumbo v1, "}}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 571
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

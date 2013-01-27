.class final Landroid/view/ViewRootImpl$AccessibilityInteractionController;
.super Ljava/lang/Object;
.source "ViewRootImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRootImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "AccessibilityInteractionController"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/ViewRootImpl$AccessibilityInteractionController$SomeArgs;
    }
.end annotation


# static fields
.field private static final POOL_SIZE:I = 0x5


# instance fields
.field private final mPool:Landroid/util/Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pool",
            "<",
            "Landroid/view/ViewRootImpl$AccessibilityInteractionController$SomeArgs;",
            ">;"
        }
    .end annotation
.end field

.field private mTempAccessibilityNodeInfoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroid/view/ViewRootImpl;


# direct methods
.method constructor <init>(Landroid/view/ViewRootImpl;)V
    .locals 2
    .parameter

    .prologue
    .line 4665
    iput-object p1, p0, Landroid/view/ViewRootImpl$AccessibilityInteractionController;->this$0:Landroid/view/ViewRootImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4668
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImpl$AccessibilityInteractionController;->mTempAccessibilityNodeInfoList:Ljava/util/ArrayList;

    .line 4674
    new-instance v0, Landroid/view/ViewRootImpl$AccessibilityInteractionController$1;

    invoke-direct {v0, p0}, Landroid/view/ViewRootImpl$AccessibilityInteractionController$1;-><init>(Landroid/view/ViewRootImpl$AccessibilityInteractionController;)V

    const/4 v1, 0x5

    invoke-static {v0, v1}, Landroid/util/Pools;->finitePool(Landroid/util/PoolableManager;I)Landroid/util/Pool;

    move-result-object v0

    invoke-static {v0}, Landroid/util/Pools;->synchronizedPool(Landroid/util/Pool;)Landroid/util/Pool;

    move-result-object v0

    iput-object v0, p0, Landroid/view/ViewRootImpl$AccessibilityInteractionController;->mPool:Landroid/util/Pool;

    .line 4690
    return-void
.end method

.method private findViewByAccessibilityId(I)Landroid/view/View;
    .locals 4
    .parameter "accessibilityId"

    .prologue
    const/4 v2, 0x0

    .line 4990
    iget-object v3, p0, Landroid/view/ViewRootImpl$AccessibilityInteractionController;->this$0:Landroid/view/ViewRootImpl;

    iget-object v1, v3, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    .line 4991
    .local v1, root:Landroid/view/View;
    if-nez v1, :cond_1

    move-object v0, v2

    .line 4998
    :cond_0
    :goto_0
    return-object v0

    .line 4994
    :cond_1
    invoke-virtual {v1, p1}, Landroid/view/View;->findViewByAccessibilityId(I)Landroid/view/View;

    move-result-object v0

    .line 4995
    .local v0, foundView:Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_0

    move-object v0, v2

    .line 4996
    goto :goto_0
.end method

.method private performActionClearFocus(I)Z
    .locals 3
    .parameter "accessibilityId"

    .prologue
    const/4 v1, 0x0

    .line 4954
    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl$AccessibilityInteractionController;->findViewByAccessibilityId(I)Landroid/view/View;

    move-result-object v0

    .line 4955
    .local v0, target:Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_1

    .line 4962
    :cond_0
    :goto_0
    return v1

    .line 4958
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4961
    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    .line 4962
    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method private performActionClearSelection(I)Z
    .locals 3
    .parameter "accessibilityId"

    .prologue
    const/4 v1, 0x0

    .line 4978
    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl$AccessibilityInteractionController;->findViewByAccessibilityId(I)Landroid/view/View;

    move-result-object v0

    .line 4979
    .local v0, target:Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_1

    .line 4986
    :cond_0
    :goto_0
    return v1

    .line 4982
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4985
    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 4986
    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method private performActionFocus(I)Z
    .locals 3
    .parameter "accessibilityId"

    .prologue
    const/4 v1, 0x0

    .line 4944
    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl$AccessibilityInteractionController;->findViewByAccessibilityId(I)Landroid/view/View;

    move-result-object v0

    .line 4945
    .local v0, target:Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_1

    .line 4950
    :cond_0
    :goto_0
    return v1

    .line 4949
    :cond_1
    iget-object v2, p0, Landroid/view/ViewRootImpl$AccessibilityInteractionController;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v2, v1}, Landroid/view/ViewRootImpl;->ensureTouchMode(Z)Z

    .line 4950
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    move-result v1

    goto :goto_0
.end method

.method private performActionSelect(I)Z
    .locals 3
    .parameter "accessibilityId"

    .prologue
    const/4 v1, 0x0

    .line 4966
    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl$AccessibilityInteractionController;->findViewByAccessibilityId(I)Landroid/view/View;

    move-result-object v0

    .line 4967
    .local v0, target:Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_1

    .line 4974
    :cond_0
    :goto_0
    return v1

    .line 4970
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    move-result v2

    if-nez v2, :cond_0

    .line 4973
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 4974
    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    move-result v1

    goto :goto_0
.end method


# virtual methods
.method public findAccessibilityNodeInfoByAccessibilityIdClientThread(IILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IJ)V
    .locals 3
    .parameter "accessibilityId"
    .parameter "interactionId"
    .parameter "callback"
    .parameter "interrogatingPid"
    .parameter "interrogatingTid"

    .prologue
    .line 4728
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 4729
    .local v0, message:Landroid/os/Message;
    const/16 v1, 0x3fd

    iput v1, v0, Landroid/os/Message;->what:I

    .line 4730
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 4731
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 4732
    iput-object p3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 4737
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-ne p4, v1, :cond_0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    cmp-long v1, p5, v1

    if-nez v1, :cond_0

    .line 4739
    iget-object v1, p0, Landroid/view/ViewRootImpl$AccessibilityInteractionController;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v0, v1}, Landroid/os/Message;->setTarget(Landroid/os/Handler;)V

    .line 4740
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->setSameThreadMessage(Landroid/os/Message;)V

    .line 4744
    :goto_0
    return-void

    .line 4742
    :cond_0
    iget-object v1, p0, Landroid/view/ViewRootImpl$AccessibilityInteractionController;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v1, v0}, Landroid/view/ViewRootImpl;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public findAccessibilityNodeInfoByAccessibilityIdUiThread(Landroid/os/Message;)V
    .locals 7
    .parameter "message"

    .prologue
    .line 4747
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 4748
    .local v0, accessibilityId:I
    iget v3, p1, Landroid/os/Message;->arg2:I

    .line 4749
    .local v3, interactionId:I
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    .line 4752
    .local v1, callback:Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    const/4 v2, 0x0

    .line 4754
    .local v2, info:Landroid/view/accessibility/AccessibilityNodeInfo;
    :try_start_0
    invoke-direct {p0, v0}, Landroid/view/ViewRootImpl$AccessibilityInteractionController;->findViewByAccessibilityId(I)Landroid/view/View;

    move-result-object v4

    .line 4755
    .local v4, target:Landroid/view/View;
    if-eqz v4, :cond_0

    .line 4756
    invoke-virtual {v4}, Landroid/view/View;->createAccessibilityNodeInfo()Landroid/view/accessibility/AccessibilityNodeInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 4760
    :cond_0
    :try_start_1
    invoke-interface {v1, v2, v3}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setFindAccessibilityNodeInfoResult(Landroid/view/accessibility/AccessibilityNodeInfo;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 4765
    :goto_0
    return-void

    .line 4759
    .end local v4           #target:Landroid/view/View;
    :catchall_0
    move-exception v5

    .line 4760
    :try_start_2
    invoke-interface {v1, v2, v3}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setFindAccessibilityNodeInfoResult(Landroid/view/accessibility/AccessibilityNodeInfo;I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 4763
    :goto_1
    throw v5

    .line 4761
    .restart local v4       #target:Landroid/view/View;
    :catch_0
    move-exception v5

    goto :goto_0

    .end local v4           #target:Landroid/view/View;
    :catch_1
    move-exception v6

    goto :goto_1
.end method

.method public findAccessibilityNodeInfoByViewIdClientThread(IILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IJ)V
    .locals 3
    .parameter "viewId"
    .parameter "interactionId"
    .parameter "callback"
    .parameter "interrogatingPid"
    .parameter "interrogatingTid"

    .prologue
    .line 4770
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 4771
    .local v0, message:Landroid/os/Message;
    const/16 v1, 0x3fe

    iput v1, v0, Landroid/os/Message;->what:I

    .line 4772
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 4773
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 4774
    iput-object p3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 4779
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-ne p4, v1, :cond_0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    cmp-long v1, p5, v1

    if-nez v1, :cond_0

    .line 4781
    iget-object v1, p0, Landroid/view/ViewRootImpl$AccessibilityInteractionController;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v0, v1}, Landroid/os/Message;->setTarget(Landroid/os/Handler;)V

    .line 4782
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->setSameThreadMessage(Landroid/os/Message;)V

    .line 4786
    :goto_0
    return-void

    .line 4784
    :cond_0
    iget-object v1, p0, Landroid/view/ViewRootImpl$AccessibilityInteractionController;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v1, v0}, Landroid/view/ViewRootImpl;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public findAccessibilityNodeInfoByViewIdUiThread(Landroid/os/Message;)V
    .locals 8
    .parameter "message"

    .prologue
    .line 4789
    iget v5, p1, Landroid/os/Message;->arg1:I

    .line 4790
    .local v5, viewId:I
    iget v2, p1, Landroid/os/Message;->arg2:I

    .line 4791
    .local v2, interactionId:I
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    .line 4794
    .local v0, callback:Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    const/4 v1, 0x0

    .line 4796
    .local v1, info:Landroid/view/accessibility/AccessibilityNodeInfo;
    :try_start_0
    iget-object v6, p0, Landroid/view/ViewRootImpl$AccessibilityInteractionController;->this$0:Landroid/view/ViewRootImpl;

    iget-object v3, v6, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    .line 4797
    .local v3, root:Landroid/view/View;
    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 4798
    .local v4, target:Landroid/view/View;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_0

    .line 4799
    invoke-virtual {v4}, Landroid/view/View;->createAccessibilityNodeInfo()Landroid/view/accessibility/AccessibilityNodeInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 4803
    :cond_0
    :try_start_1
    invoke-interface {v0, v1, v2}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setFindAccessibilityNodeInfoResult(Landroid/view/accessibility/AccessibilityNodeInfo;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 4808
    :goto_0
    return-void

    .line 4802
    .end local v3           #root:Landroid/view/View;
    .end local v4           #target:Landroid/view/View;
    :catchall_0
    move-exception v6

    .line 4803
    :try_start_2
    invoke-interface {v0, v1, v2}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setFindAccessibilityNodeInfoResult(Landroid/view/accessibility/AccessibilityNodeInfo;I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 4806
    :goto_1
    throw v6

    .line 4804
    .restart local v3       #root:Landroid/view/View;
    .restart local v4       #target:Landroid/view/View;
    :catch_0
    move-exception v6

    goto :goto_0

    .end local v3           #root:Landroid/view/View;
    .end local v4           #target:Landroid/view/View;
    :catch_1
    move-exception v7

    goto :goto_1
.end method

.method public findAccessibilityNodeInfosByViewTextClientThread(Ljava/lang/String;IILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IJ)V
    .locals 4
    .parameter "text"
    .parameter "accessibilityViewId"
    .parameter "interactionId"
    .parameter "callback"
    .parameter "interrogatingPid"
    .parameter "interrogatingTid"

    .prologue
    .line 4814
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 4815
    .local v1, message:Landroid/os/Message;
    const/16 v2, 0x3ff

    iput v2, v1, Landroid/os/Message;->what:I

    .line 4816
    iget-object v2, p0, Landroid/view/ViewRootImpl$AccessibilityInteractionController;->mPool:Landroid/util/Pool;

    invoke-interface {v2}, Landroid/util/Pool;->acquire()Landroid/util/Poolable;

    move-result-object v0

    check-cast v0, Landroid/view/ViewRootImpl$AccessibilityInteractionController$SomeArgs;

    .line 4817
    .local v0, args:Landroid/view/ViewRootImpl$AccessibilityInteractionController$SomeArgs;
    iput-object p1, v0, Landroid/view/ViewRootImpl$AccessibilityInteractionController$SomeArgs;->arg1:Ljava/lang/Object;

    .line 4818
    iput p2, v0, Landroid/view/ViewRootImpl$AccessibilityInteractionController$SomeArgs;->argi1:I

    .line 4819
    iput p3, v0, Landroid/view/ViewRootImpl$AccessibilityInteractionController$SomeArgs;->argi2:I

    .line 4820
    iput-object p4, v0, Landroid/view/ViewRootImpl$AccessibilityInteractionController$SomeArgs;->arg2:Ljava/lang/Object;

    .line 4821
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 4826
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    if-ne p5, v2, :cond_0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    cmp-long v2, p6, v2

    if-nez v2, :cond_0

    .line 4828
    iget-object v2, p0, Landroid/view/ViewRootImpl$AccessibilityInteractionController;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v1, v2}, Landroid/os/Message;->setTarget(Landroid/os/Handler;)V

    .line 4829
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/accessibility/AccessibilityInteractionClient;->setSameThreadMessage(Landroid/os/Message;)V

    .line 4833
    :goto_0
    return-void

    .line 4831
    :cond_0
    iget-object v2, p0, Landroid/view/ViewRootImpl$AccessibilityInteractionController;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v2, v1}, Landroid/view/ViewRootImpl;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public findAccessibilityNodeInfosByViewTextUiThread(Landroid/os/Message;)V
    .locals 13
    .parameter "message"

    .prologue
    .line 4836
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/view/ViewRootImpl$AccessibilityInteractionController$SomeArgs;

    .line 4837
    .local v1, args:Landroid/view/ViewRootImpl$AccessibilityInteractionController$SomeArgs;
    iget-object v9, v1, Landroid/view/ViewRootImpl$AccessibilityInteractionController$SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v9, Ljava/lang/String;

    .line 4838
    .local v9, text:Ljava/lang/String;
    iget v0, v1, Landroid/view/ViewRootImpl$AccessibilityInteractionController$SomeArgs;->argi1:I

    .line 4839
    .local v0, accessibilityViewId:I
    iget v7, v1, Landroid/view/ViewRootImpl$AccessibilityInteractionController$SomeArgs;->argi2:I

    .line 4840
    .local v7, interactionId:I
    iget-object v2, v1, Landroid/view/ViewRootImpl$AccessibilityInteractionController$SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v2, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    .line 4842
    .local v2, callback:Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    iget-object v11, p0, Landroid/view/ViewRootImpl$AccessibilityInteractionController;->mPool:Landroid/util/Pool;

    invoke-interface {v11, v1}, Landroid/util/Pool;->release(Landroid/util/Poolable;)V

    .line 4844
    const/4 v6, 0x0

    .line 4846
    .local v6, infos:Ljava/util/List;,"Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    :try_start_0
    iget-object v11, p0, Landroid/view/ViewRootImpl$AccessibilityInteractionController;->this$0:Landroid/view/ViewRootImpl;

    iget-object v11, v11, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v11, Landroid/view/View$AttachInfo;->mFocusablesTempList:Ljava/util/ArrayList;

    .line 4847
    .local v4, foundViews:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 4849
    const/4 v8, 0x0

    .line 4850
    .local v8, root:Landroid/view/View;
    const/4 v11, -0x1

    if-eq v0, v11, :cond_1

    .line 4851
    invoke-direct {p0, v0}, Landroid/view/ViewRootImpl$AccessibilityInteractionController;->findViewByAccessibilityId(I)Landroid/view/View;

    move-result-object v8

    .line 4856
    :goto_0
    if-eqz v8, :cond_0

    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v11

    if-eqz v11, :cond_2

    .line 4878
    :cond_0
    :try_start_1
    invoke-interface {v2, v6, v7}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setFindAccessibilityNodeInfosResult(Ljava/util/List;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2

    .line 4883
    :goto_1
    return-void

    .line 4853
    :cond_1
    :try_start_2
    iget-object v11, p0, Landroid/view/ViewRootImpl$AccessibilityInteractionController;->this$0:Landroid/view/ViewRootImpl;

    iget-object v8, v11, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    goto :goto_0

    .line 4860
    :cond_2
    const/4 v11, 0x3

    invoke-virtual {v8, v4, v9, v11}, Landroid/view/View;->findViewsWithText(Ljava/util/ArrayList;Ljava/lang/CharSequence;I)V

    .line 4862
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v11

    if-eqz v11, :cond_3

    .line 4878
    :try_start_3
    invoke-interface {v2, v6, v7}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setFindAccessibilityNodeInfosResult(Ljava/util/List;I)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 4879
    :catch_0
    move-exception v11

    goto :goto_1

    .line 4866
    :cond_3
    :try_start_4
    iget-object v6, p0, Landroid/view/ViewRootImpl$AccessibilityInteractionController;->mTempAccessibilityNodeInfoList:Ljava/util/ArrayList;

    .line 4867
    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 4869
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 4870
    .local v10, viewCount:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_2
    if-ge v5, v10, :cond_5

    .line 4871
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 4872
    .local v3, foundView:Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v11

    if-nez v11, :cond_4

    .line 4873
    invoke-virtual {v3}, Landroid/view/View;->createAccessibilityNodeInfo()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v11

    invoke-interface {v6, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 4870
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 4878
    .end local v3           #foundView:Landroid/view/View;
    :cond_5
    :try_start_5
    invoke-interface {v2, v6, v7}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setFindAccessibilityNodeInfosResult(Ljava/util/List;I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    .line 4879
    :catch_1
    move-exception v11

    goto :goto_1

    .line 4877
    .end local v4           #foundViews:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v5           #i:I
    .end local v8           #root:Landroid/view/View;
    .end local v10           #viewCount:I
    :catchall_0
    move-exception v11

    .line 4878
    :try_start_6
    invoke-interface {v2, v6, v7}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setFindAccessibilityNodeInfosResult(Ljava/util/List;I)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_3

    .line 4881
    :goto_3
    throw v11

    .line 4879
    .restart local v4       #foundViews:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    .restart local v8       #root:Landroid/view/View;
    :catch_2
    move-exception v11

    goto :goto_1

    .end local v4           #foundViews:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v8           #root:Landroid/view/View;
    :catch_3
    move-exception v12

    goto :goto_3
.end method

.method public performAccessibilityActionClientThread(IIILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IJ)V
    .locals 4
    .parameter "accessibilityId"
    .parameter "action"
    .parameter "interactionId"
    .parameter "callback"
    .parameter "interogatingPid"
    .parameter "interrogatingTid"

    .prologue
    .line 4888
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 4889
    .local v1, message:Landroid/os/Message;
    const/16 v2, 0x3fc

    iput v2, v1, Landroid/os/Message;->what:I

    .line 4890
    iget-object v2, p0, Landroid/view/ViewRootImpl$AccessibilityInteractionController;->mPool:Landroid/util/Pool;

    invoke-interface {v2}, Landroid/util/Pool;->acquire()Landroid/util/Poolable;

    move-result-object v0

    check-cast v0, Landroid/view/ViewRootImpl$AccessibilityInteractionController$SomeArgs;

    .line 4891
    .local v0, args:Landroid/view/ViewRootImpl$AccessibilityInteractionController$SomeArgs;
    iput p1, v0, Landroid/view/ViewRootImpl$AccessibilityInteractionController$SomeArgs;->argi1:I

    .line 4892
    iput p2, v0, Landroid/view/ViewRootImpl$AccessibilityInteractionController$SomeArgs;->argi2:I

    .line 4893
    iput p3, v0, Landroid/view/ViewRootImpl$AccessibilityInteractionController$SomeArgs;->argi3:I

    .line 4894
    iput-object p4, v0, Landroid/view/ViewRootImpl$AccessibilityInteractionController$SomeArgs;->arg1:Ljava/lang/Object;

    .line 4895
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 4900
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    if-ne p5, v2, :cond_0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    cmp-long v2, p6, v2

    if-nez v2, :cond_0

    .line 4902
    iget-object v2, p0, Landroid/view/ViewRootImpl$AccessibilityInteractionController;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v1, v2}, Landroid/os/Message;->setTarget(Landroid/os/Handler;)V

    .line 4903
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/accessibility/AccessibilityInteractionClient;->setSameThreadMessage(Landroid/os/Message;)V

    .line 4907
    :goto_0
    return-void

    .line 4905
    :cond_0
    iget-object v2, p0, Landroid/view/ViewRootImpl$AccessibilityInteractionController;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v2, v1}, Landroid/view/ViewRootImpl;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public perfromAccessibilityActionUiThread(Landroid/os/Message;)V
    .locals 8
    .parameter "message"

    .prologue
    .line 4910
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/view/ViewRootImpl$AccessibilityInteractionController$SomeArgs;

    .line 4911
    .local v2, args:Landroid/view/ViewRootImpl$AccessibilityInteractionController$SomeArgs;
    iget v0, v2, Landroid/view/ViewRootImpl$AccessibilityInteractionController$SomeArgs;->argi1:I

    .line 4912
    .local v0, accessibilityId:I
    iget v1, v2, Landroid/view/ViewRootImpl$AccessibilityInteractionController$SomeArgs;->argi2:I

    .line 4913
    .local v1, action:I
    iget v4, v2, Landroid/view/ViewRootImpl$AccessibilityInteractionController$SomeArgs;->argi3:I

    .line 4914
    .local v4, interactionId:I
    iget-object v3, v2, Landroid/view/ViewRootImpl$AccessibilityInteractionController$SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v3, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    .line 4916
    .local v3, callback:Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    iget-object v6, p0, Landroid/view/ViewRootImpl$AccessibilityInteractionController;->mPool:Landroid/util/Pool;

    invoke-interface {v6, v2}, Landroid/util/Pool;->release(Landroid/util/Poolable;)V

    .line 4918
    const/4 v5, 0x0

    .line 4920
    .local v5, succeeded:Z
    packed-switch v1, :pswitch_data_0

    .line 4936
    :goto_0
    :pswitch_0
    :try_start_0
    invoke-interface {v3, v5, v4}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setPerformAccessibilityActionResult(ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4941
    :goto_1
    return-void

    .line 4922
    :pswitch_1
    :try_start_1
    invoke-direct {p0, v0}, Landroid/view/ViewRootImpl$AccessibilityInteractionController;->performActionFocus(I)Z

    move-result v5

    .line 4923
    goto :goto_0

    .line 4925
    :pswitch_2
    invoke-direct {p0, v0}, Landroid/view/ViewRootImpl$AccessibilityInteractionController;->performActionClearFocus(I)Z

    move-result v5

    .line 4926
    goto :goto_0

    .line 4928
    :pswitch_3
    invoke-direct {p0, v0}, Landroid/view/ViewRootImpl$AccessibilityInteractionController;->performActionSelect(I)Z

    move-result v5

    .line 4929
    goto :goto_0

    .line 4931
    :pswitch_4
    invoke-direct {p0, v0}, Landroid/view/ViewRootImpl$AccessibilityInteractionController;->performActionClearSelection(I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v5

    goto :goto_0

    .line 4935
    :catchall_0
    move-exception v6

    .line 4936
    :try_start_2
    invoke-interface {v3, v5, v4}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setPerformAccessibilityActionResult(ZI)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 4939
    :goto_2
    throw v6

    .line 4937
    :catch_0
    move-exception v6

    goto :goto_1

    :catch_1
    move-exception v7

    goto :goto_2

    .line 4920
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

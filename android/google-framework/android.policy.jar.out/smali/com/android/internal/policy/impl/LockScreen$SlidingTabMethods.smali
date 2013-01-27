.class Lcom/android/internal/policy/impl/LockScreen$SlidingTabMethods;
.super Ljava/lang/Object;
.source "LockScreen.java"

# interfaces
.implements Lcom/android/internal/widget/SlidingTab$OnTriggerListener;
.implements Lcom/android/internal/policy/impl/LockScreen$UnlockWidgetCommonMethods;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/LockScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SlidingTabMethods"
.end annotation


# instance fields
.field private final mSlidingTab:Lcom/android/internal/widget/SlidingTab;

.field final synthetic this$0:Lcom/android/internal/policy/impl/LockScreen;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/LockScreen;Lcom/android/internal/widget/SlidingTab;)V
    .locals 0
    .parameter
    .parameter "slidingTab"

    .prologue
    .line 108
    iput-object p1, p0, Lcom/android/internal/policy/impl/LockScreen$SlidingTabMethods;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    iput-object p2, p0, Lcom/android/internal/policy/impl/LockScreen$SlidingTabMethods;->mSlidingTab:Lcom/android/internal/widget/SlidingTab;

    .line 110
    return-void
.end method


# virtual methods
.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen$SlidingTabMethods;->mSlidingTab:Lcom/android/internal/widget/SlidingTab;

    return-object v0
.end method

.method public onGrabbedStateChange(Landroid/view/View;I)V
    .locals 2
    .parameter "v"
    .parameter "grabbedState"

    .prologue
    .line 140
    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen$SlidingTabMethods;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen$SlidingTabMethods;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    #calls: Lcom/android/internal/policy/impl/LockScreen;->isSilentMode()Z
    invoke-static {v1}, Lcom/android/internal/policy/impl/LockScreen;->access$400(Lcom/android/internal/policy/impl/LockScreen;)Z

    move-result v1

    #setter for: Lcom/android/internal/policy/impl/LockScreen;->mSilentMode:Z
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/LockScreen;->access$002(Lcom/android/internal/policy/impl/LockScreen;Z)Z

    .line 142
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen$SlidingTabMethods;->mSlidingTab:Lcom/android/internal/widget/SlidingTab;

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen$SlidingTabMethods;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    #getter for: Lcom/android/internal/policy/impl/LockScreen;->mSilentMode:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/LockScreen;->access$000(Lcom/android/internal/policy/impl/LockScreen;)Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x1040329

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/internal/widget/SlidingTab;->setRightHintText(I)V

    .line 148
    :cond_0
    if-eqz p2, :cond_1

    .line 149
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen$SlidingTabMethods;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    #getter for: Lcom/android/internal/policy/impl/LockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v0}, Lcom/android/internal/policy/impl/LockScreen;->access$200(Lcom/android/internal/policy/impl/LockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    .line 151
    :cond_1
    return-void

    .line 142
    :cond_2
    const v0, 0x104032a

    goto :goto_0
.end method

.method public onTrigger(Landroid/view/View;I)V
    .locals 1
    .parameter "v"
    .parameter "whichHandle"

    .prologue
    .line 130
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 131
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen$SlidingTabMethods;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    #getter for: Lcom/android/internal/policy/impl/LockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v0}, Lcom/android/internal/policy/impl/LockScreen;->access$200(Lcom/android/internal/policy/impl/LockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    .line 136
    :cond_0
    :goto_0
    return-void

    .line 132
    :cond_1
    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen$SlidingTabMethods;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    #calls: Lcom/android/internal/policy/impl/LockScreen;->toggleRingMode()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/LockScreen;->access$300(Lcom/android/internal/policy/impl/LockScreen;)V

    .line 134
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen$SlidingTabMethods;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    #getter for: Lcom/android/internal/policy/impl/LockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v0}, Lcom/android/internal/policy/impl/LockScreen;->access$200(Lcom/android/internal/policy/impl/LockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    goto :goto_0
.end method

.method public ping()V
    .locals 0

    .prologue
    .line 162
    return-void
.end method

.method public reset(Z)V
    .locals 1
    .parameter "animate"

    .prologue
    .line 158
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen$SlidingTabMethods;->mSlidingTab:Lcom/android/internal/widget/SlidingTab;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/SlidingTab;->reset(Z)V

    .line 159
    return-void
.end method

.method public updateResources()V
    .locals 6

    .prologue
    const/4 v0, 0x1

    .line 113
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen$SlidingTabMethods;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    #getter for: Lcom/android/internal/policy/impl/LockScreen;->mSilentMode:Z
    invoke-static {v1}, Lcom/android/internal/policy/impl/LockScreen;->access$000(Lcom/android/internal/policy/impl/LockScreen;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen$SlidingTabMethods;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    #getter for: Lcom/android/internal/policy/impl/LockScreen;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v1}, Lcom/android/internal/policy/impl/LockScreen;->access$100(Lcom/android/internal/policy/impl/LockScreen;)Landroid/media/AudioManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 116
    .local v0, vibe:Z
    :goto_0
    iget-object v5, p0, Lcom/android/internal/policy/impl/LockScreen$SlidingTabMethods;->mSlidingTab:Lcom/android/internal/widget/SlidingTab;

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen$SlidingTabMethods;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    #getter for: Lcom/android/internal/policy/impl/LockScreen;->mSilentMode:Z
    invoke-static {v1}, Lcom/android/internal/policy/impl/LockScreen;->access$000(Lcom/android/internal/policy/impl/LockScreen;)Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz v0, :cond_1

    const v1, 0x10802cc

    :goto_1
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreen$SlidingTabMethods;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    #getter for: Lcom/android/internal/policy/impl/LockScreen;->mSilentMode:Z
    invoke-static {v2}, Lcom/android/internal/policy/impl/LockScreen;->access$000(Lcom/android/internal/policy/impl/LockScreen;)Z

    move-result v2

    if-eqz v2, :cond_3

    const v2, 0x10803bf

    :goto_2
    iget-object v3, p0, Lcom/android/internal/policy/impl/LockScreen$SlidingTabMethods;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    #getter for: Lcom/android/internal/policy/impl/LockScreen;->mSilentMode:Z
    invoke-static {v3}, Lcom/android/internal/policy/impl/LockScreen;->access$000(Lcom/android/internal/policy/impl/LockScreen;)Z

    move-result v3

    if-eqz v3, :cond_4

    const v3, 0x10803a8

    :goto_3
    iget-object v4, p0, Lcom/android/internal/policy/impl/LockScreen$SlidingTabMethods;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    #getter for: Lcom/android/internal/policy/impl/LockScreen;->mSilentMode:Z
    invoke-static {v4}, Lcom/android/internal/policy/impl/LockScreen;->access$000(Lcom/android/internal/policy/impl/LockScreen;)Z

    move-result v4

    if-eqz v4, :cond_5

    const v4, 0x10803bb

    :goto_4
    invoke-virtual {v5, v1, v2, v3, v4}, Lcom/android/internal/widget/SlidingTab;->setRightTabResources(IIII)V

    .line 126
    return-void

    .line 113
    .end local v0           #vibe:Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 116
    .restart local v0       #vibe:Z
    :cond_1
    const v1, 0x10802c9

    goto :goto_1

    :cond_2
    const v1, 0x10802ca

    goto :goto_1

    :cond_3
    const v2, 0x10803bc

    goto :goto_2

    :cond_4
    const v3, 0x10803a7

    goto :goto_3

    :cond_5
    const v4, 0x10803ba

    goto :goto_4
.end method

.class public Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;
.super Lmiui/app/screenelement/elements/AdvancedSlider;
.source "UnlockerScreenElement.java"

# interfaces
.implements Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerListener;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "LockScreen_UnlockerScreenElement"

.field public static final TAG_NAME:Ljava/lang/String; = "Unlocker"


# instance fields
.field private mAlwaysShow:Z

.field private mNoUnlock:Z

.field private final mUnlockerCallback:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot$UnlockerCallback;

.field private final mUnlockerListener:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerListener;

.field private mUnlockingHide:Z


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/app/screenelement/ScreenContext;Lmiui/app/screenelement/ScreenElementRoot;Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot$UnlockerCallback;Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerListener;)V
    .locals 1
    .parameter "node"
    .parameter "c"
    .parameter "root"
    .parameter "unlockerCallback"
    .parameter "unlockerListener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/app/screenelement/ScreenElementLoadException;
        }
    .end annotation

    .prologue
    .line 35
    invoke-direct {p0, p1, p2, p3}, Lmiui/app/screenelement/elements/AdvancedSlider;-><init>(Lorg/w3c/dom/Element;Lmiui/app/screenelement/ScreenContext;Lmiui/app/screenelement/ScreenElementRoot;)V

    .line 36
    iput-object p4, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->mUnlockerCallback:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot$UnlockerCallback;

    .line 37
    iput-object p5, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->mUnlockerListener:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerListener;

    .line 38
    const-string v0, "alwaysShow"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->mAlwaysShow:Z

    .line 41
    const-string v0, "noUnlock"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->mNoUnlock:Z

    .line 42
    return-void
.end method


# virtual methods
.method public endUnlockMoving(Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;)V
    .locals 1
    .parameter "ele"

    .prologue
    .line 50
    if-eq p1, p0, :cond_0

    iget-boolean v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->mAlwaysShow:Z

    if-nez v0, :cond_0

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->mUnlockingHide:Z

    .line 52
    :cond_0
    return-void
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 45
    invoke-super {p0}, Lmiui/app/screenelement/elements/AdvancedSlider;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->mUnlockingHide:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onCancel()V
    .locals 1

    .prologue
    .line 69
    invoke-super {p0}, Lmiui/app/screenelement/elements/AdvancedSlider;->onCancel()V

    .line 70
    iget-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->mUnlockerListener:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerListener;

    invoke-interface {v0, p0}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerListener;->endUnlockMoving(Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;)V

    .line 71
    return-void
.end method

.method protected onLaunch(Ljava/lang/String;Landroid/content/Intent;)Z
    .locals 3
    .parameter "name"
    .parameter "intent"

    .prologue
    .line 76
    invoke-super {p0, p1, p2}, Lmiui/app/screenelement/elements/AdvancedSlider;->onLaunch(Ljava/lang/String;Landroid/content/Intent;)Z

    .line 77
    iget-object v1, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->mUnlockerListener:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerListener;

    invoke-interface {v1, p0}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerListener;->endUnlockMoving(Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;)V

    .line 79
    iget-boolean v1, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->mNoUnlock:Z

    if-eqz v1, :cond_0

    if-nez p2, :cond_0

    .line 80
    iget-object v1, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->mUnlockerCallback:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot$UnlockerCallback;

    invoke-interface {v1}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot$UnlockerCallback;->pokeWakelock()V

    .line 81
    const/4 v1, 0x0

    .line 90
    :goto_0
    return v1

    .line 85
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->mUnlockerCallback:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot$UnlockerCallback;

    invoke-interface {v1, p2}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot$UnlockerCallback;->unlocked(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    .line 86
    :catch_0
    move-exception v0

    .line 87
    .local v0, e:Landroid/content/ActivityNotFoundException;
    const-string v1, "LockScreen_UnlockerScreenElement"

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_1
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 62
    invoke-super {p0}, Lmiui/app/screenelement/elements/AdvancedSlider;->onStart()V

    .line 63
    iget-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->mUnlockerListener:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerListener;

    invoke-interface {v0, p0}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerListener;->startUnlockMoving(Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;)V

    .line 64
    iget-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->mUnlockerCallback:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot$UnlockerCallback;

    invoke-interface {v0}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot$UnlockerCallback;->pokeWakelock()V

    .line 65
    return-void
.end method

.method public startUnlockMoving(Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;)V
    .locals 1
    .parameter "ele"

    .prologue
    .line 56
    if-eq p1, p0, :cond_0

    iget-boolean v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->mAlwaysShow:Z

    if-nez v0, :cond_0

    .line 57
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->mUnlockingHide:Z

    .line 58
    :cond_0
    return-void
.end method

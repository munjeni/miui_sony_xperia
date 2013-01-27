.class public Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenElementFactory;
.super Lmiui/app/screenelement/elements/ScreenElementFactory;
.source "LockScreenElementFactory.java"


# instance fields
.field private final mUnlockerCallback:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot$UnlockerCallback;

.field private final mUnlockerListener:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerListener;


# direct methods
.method public constructor <init>(Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot$UnlockerCallback;Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerListener;)V
    .locals 0
    .parameter "unlockerCallback"
    .parameter "unlockerListener"

    .prologue
    .line 17
    invoke-direct {p0}, Lmiui/app/screenelement/elements/ScreenElementFactory;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenElementFactory;->mUnlockerCallback:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot$UnlockerCallback;

    .line 19
    iput-object p2, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenElementFactory;->mUnlockerListener:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerListener;

    .line 20
    return-void
.end method


# virtual methods
.method public createInstance(Lorg/w3c/dom/Element;Lmiui/app/screenelement/ScreenContext;Lmiui/app/screenelement/ScreenElementRoot;)Lmiui/app/screenelement/elements/ScreenElement;
    .locals 7
    .parameter "ele"
    .parameter "context"
    .parameter "root"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/app/screenelement/ScreenElementLoadException;
        }
    .end annotation

    .prologue
    .line 24
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v6

    .line 25
    .local v6, tag:Ljava/lang/String;
    const-string v0, "Unlocker"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 26
    new-instance v0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;

    iget-object v4, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenElementFactory;->mUnlockerCallback:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot$UnlockerCallback;

    iget-object v5, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenElementFactory;->mUnlockerListener:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerListener;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;-><init>(Lorg/w3c/dom/Element;Lmiui/app/screenelement/ScreenContext;Lmiui/app/screenelement/ScreenElementRoot;Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot$UnlockerCallback;Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerListener;)V

    .line 30
    :goto_0
    return-object v0

    .line 27
    :cond_0
    const-string v0, "Wallpaper"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 28
    new-instance v0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/WallpaperScreenElement;

    invoke-direct {v0, p1, p2, p3}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/WallpaperScreenElement;-><init>(Lorg/w3c/dom/Element;Lmiui/app/screenelement/ScreenContext;Lmiui/app/screenelement/ScreenElementRoot;)V

    goto :goto_0

    .line 30
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lmiui/app/screenelement/elements/ScreenElementFactory;->createInstance(Lorg/w3c/dom/Element;Lmiui/app/screenelement/ScreenContext;Lmiui/app/screenelement/ScreenElementRoot;)Lmiui/app/screenelement/elements/ScreenElement;

    move-result-object v0

    goto :goto_0
.end method

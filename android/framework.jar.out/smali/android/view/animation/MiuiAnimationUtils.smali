.class public Landroid/view/animation/MiuiAnimationUtils;
.super Ljava/lang/Object;
.source "MiuiAnimationUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clone(Landroid/view/animation/Animation;)Landroid/view/animation/Animation;
    .locals 2
    .parameter "animation"

    .prologue
    .line 6
    const/4 v0, 0x0

    .line 8
    .local v0, result:Landroid/view/animation/Animation;
    :try_start_0
    invoke-virtual {p0}, Landroid/view/animation/Animation;->clone()Landroid/view/animation/Animation;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 11
    :goto_0
    return-object v0

    .line 9
    :catch_0
    move-exception v1

    goto :goto_0
.end method

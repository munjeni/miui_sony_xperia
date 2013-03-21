.class final Landroid/animation/ValueAnimator$1;
.super Ljava/lang/ThreadLocal;
.source "ValueAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal",
        "<",
        "Landroid/animation/ValueAnimator$AnimationHolder;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 115
    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected initialValue()Landroid/animation/ValueAnimator$AnimationHolder;
    .locals 2

    .prologue
    .line 118
    new-instance v0, Landroid/animation/ValueAnimator$AnimationHolder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/animation/ValueAnimator$AnimationHolder;-><init>(Landroid/animation/ValueAnimator$1;)V

    return-object v0
.end method

.method protected bridge synthetic initialValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 115
    invoke-virtual {p0}, Landroid/animation/ValueAnimator$1;->initialValue()Landroid/animation/ValueAnimator$AnimationHolder;

    move-result-object v0

    return-object v0
.end method

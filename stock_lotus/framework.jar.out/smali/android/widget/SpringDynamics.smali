.class Landroid/widget/SpringDynamics;
.super Landroid/widget/Dynamics;
.source "SpringDynamics.java"


# instance fields
.field protected mDamping:F

.field protected mFriction:F

.field protected mStiffness:F


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/widget/Dynamics;-><init>()V

    return-void
.end method

.method private calculateAcceleration()F
    .locals 5

    .prologue
    .line 56
    invoke-virtual {p0}, Landroid/widget/SpringDynamics;->getDistanceToLimit()F

    move-result v1

    .line 57
    .local v1, distanceFromLimit:F
    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-eqz v2, :cond_0

    .line 58
    iget v2, p0, Landroid/widget/SpringDynamics;->mStiffness:F

    mul-float/2addr v2, v1

    iget v3, p0, Landroid/widget/SpringDynamics;->mDamping:F

    iget v4, p0, Landroid/widget/SpringDynamics;->mVelocity:F

    mul-float/2addr v3, v4

    sub-float v0, v2, v3

    .line 63
    .local v0, acceleration:F
    :goto_0
    return v0

    .line 60
    .end local v0           #acceleration:F
    :cond_0
    iget v2, p0, Landroid/widget/SpringDynamics;->mFriction:F

    neg-float v2, v2

    iget v3, p0, Landroid/widget/SpringDynamics;->mVelocity:F

    mul-float v0, v2, v3

    .restart local v0       #acceleration:F
    goto :goto_0
.end method


# virtual methods
.method protected onUpdate(I)V
    .locals 6
    .parameter "deltaMs"

    .prologue
    const/high16 v5, 0x3f00

    .line 71
    int-to-float v2, p1

    const/high16 v3, 0x447a

    div-float v1, v2, v3

    .line 74
    .local v1, deltaSeconds:F
    invoke-direct {p0}, Landroid/widget/SpringDynamics;->calculateAcceleration()F

    move-result v0

    .line 77
    .local v0, acceleration:F
    iget v2, p0, Landroid/widget/SpringDynamics;->mPosition:F

    iget v3, p0, Landroid/widget/SpringDynamics;->mVelocity:F

    mul-float/2addr v3, v1

    mul-float v4, v5, v0

    mul-float/2addr v4, v1

    mul-float/2addr v4, v1

    add-float/2addr v3, v4

    add-float/2addr v2, v3

    iput v2, p0, Landroid/widget/SpringDynamics;->mPosition:F

    .line 81
    iget v2, p0, Landroid/widget/SpringDynamics;->mVelocity:F

    mul-float v3, v5, v0

    mul-float/2addr v3, v1

    add-float/2addr v2, v3

    iput v2, p0, Landroid/widget/SpringDynamics;->mVelocity:F

    .line 84
    invoke-direct {p0}, Landroid/widget/SpringDynamics;->calculateAcceleration()F

    move-result v0

    .line 88
    iget v2, p0, Landroid/widget/SpringDynamics;->mVelocity:F

    mul-float v3, v5, v0

    mul-float/2addr v3, v1

    add-float/2addr v2, v3

    iput v2, p0, Landroid/widget/SpringDynamics;->mVelocity:F

    .line 89
    return-void
.end method

.method setFriction(F)V
    .locals 0
    .parameter "friction"

    .prologue
    .line 33
    iput p1, p0, Landroid/widget/SpringDynamics;->mFriction:F

    .line 34
    return-void
.end method

.method setSpring(FF)V
    .locals 3
    .parameter "stiffness"
    .parameter "dampingRatio"

    .prologue
    .line 44
    iput p1, p0, Landroid/widget/SpringDynamics;->mStiffness:F

    .line 45
    const/high16 v0, 0x4000

    mul-float/2addr v0, p2

    float-to-double v1, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-float v1, v1

    mul-float/2addr v0, v1

    iput v0, p0, Landroid/widget/SpringDynamics;->mDamping:F

    .line 46
    return-void
.end method

.class abstract Landroid/widget/Dynamics;
.super Ljava/lang/Object;
.source "Dynamics.java"


# static fields
.field private static final MAX_TIMESTEP:I = 0x1f4

.field private static final TIMESTEP:I = 0xa


# instance fields
.field protected mLastTime:J

.field protected mMaxPosition:F

.field protected mMinPosition:F

.field protected mPosition:F

.field protected mVelocity:F


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const v0, 0x7f7fffff

    iput v0, p0, Landroid/widget/Dynamics;->mMaxPosition:F

    .line 35
    const v0, -0x800001

    iput v0, p0, Landroid/widget/Dynamics;->mMinPosition:F

    .line 38
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/widget/Dynamics;->mLastTime:J

    return-void
.end method


# virtual methods
.method adjustPositionAndVelocity()V
    .locals 2

    .prologue
    .line 112
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/Dynamics;->mVelocity:F

    .line 113
    iget v0, p0, Landroid/widget/Dynamics;->mPosition:F

    iget v1, p0, Landroid/widget/Dynamics;->mMinPosition:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    .line 114
    iget v0, p0, Landroid/widget/Dynamics;->mMinPosition:F

    iput v0, p0, Landroid/widget/Dynamics;->mPosition:F

    .line 118
    :cond_0
    :goto_0
    return-void

    .line 115
    :cond_1
    iget v0, p0, Landroid/widget/Dynamics;->mPosition:F

    iget v1, p0, Landroid/widget/Dynamics;->mMaxPosition:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 116
    iget v0, p0, Landroid/widget/Dynamics;->mMaxPosition:F

    iput v0, p0, Landroid/widget/Dynamics;->mPosition:F

    goto :goto_0
.end method

.method protected getDistanceToLimit()F
    .locals 3

    .prologue
    .line 177
    const/4 v0, 0x0

    .line 179
    .local v0, distanceToLimit:F
    iget v1, p0, Landroid/widget/Dynamics;->mPosition:F

    iget v2, p0, Landroid/widget/Dynamics;->mMaxPosition:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    .line 180
    iget v1, p0, Landroid/widget/Dynamics;->mMaxPosition:F

    iget v2, p0, Landroid/widget/Dynamics;->mPosition:F

    sub-float v0, v1, v2

    .line 185
    :cond_0
    :goto_0
    return v0

    .line 181
    :cond_1
    iget v1, p0, Landroid/widget/Dynamics;->mPosition:F

    iget v2, p0, Landroid/widget/Dynamics;->mMinPosition:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    .line 182
    iget v1, p0, Landroid/widget/Dynamics;->mMinPosition:F

    iget v2, p0, Landroid/widget/Dynamics;->mPosition:F

    sub-float v0, v1, v2

    goto :goto_0
.end method

.method getPosition()F
    .locals 1

    .prologue
    .line 70
    iget v0, p0, Landroid/widget/Dynamics;->mPosition:F

    return v0
.end method

.method getVelocity()F
    .locals 1

    .prologue
    .line 79
    iget v0, p0, Landroid/widget/Dynamics;->mVelocity:F

    return v0
.end method

.method isAtRest(FF)Z
    .locals 6
    .parameter "velocityTolerance"
    .parameter "positionTolerance"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 95
    iget v4, p0, Landroid/widget/Dynamics;->mVelocity:F

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpg-float v4, v4, p1

    if-gez v4, :cond_0

    move v0, v2

    .line 96
    .local v0, standingStill:Z
    :goto_0
    iget v4, p0, Landroid/widget/Dynamics;->mPosition:F

    sub-float/2addr v4, p2

    iget v5, p0, Landroid/widget/Dynamics;->mMaxPosition:F

    cmpg-float v4, v4, v5

    if-gez v4, :cond_1

    iget v4, p0, Landroid/widget/Dynamics;->mPosition:F

    add-float/2addr v4, p2

    iget v5, p0, Landroid/widget/Dynamics;->mMinPosition:F

    cmpl-float v4, v4, v5

    if-lez v4, :cond_1

    move v1, v2

    .line 98
    .local v1, withinLimits:Z
    :goto_1
    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    :goto_2
    return v2

    .end local v0           #standingStill:Z
    .end local v1           #withinLimits:Z
    :cond_0
    move v0, v3

    .line 95
    goto :goto_0

    .restart local v0       #standingStill:Z
    :cond_1
    move v1, v3

    .line 96
    goto :goto_1

    .restart local v1       #withinLimits:Z
    :cond_2
    move v2, v3

    .line 98
    goto :goto_2
.end method

.method protected abstract onUpdate(I)V
.end method

.method setLastTime(J)V
    .locals 0
    .parameter "now"

    .prologue
    .line 60
    iput-wide p1, p0, Landroid/widget/Dynamics;->mLastTime:J

    .line 61
    return-void
.end method

.method setMaxPosition(F)V
    .locals 0
    .parameter "maxPosition"

    .prologue
    .line 126
    iput p1, p0, Landroid/widget/Dynamics;->mMaxPosition:F

    .line 127
    return-void
.end method

.method setMinMaxPosition(F)V
    .locals 0
    .parameter "minMaxPosition"

    .prologue
    .line 144
    iput p1, p0, Landroid/widget/Dynamics;->mMaxPosition:F

    .line 145
    iput p1, p0, Landroid/widget/Dynamics;->mMinPosition:F

    .line 146
    return-void
.end method

.method setMinPosition(F)V
    .locals 0
    .parameter "minPosition"

    .prologue
    .line 135
    iput p1, p0, Landroid/widget/Dynamics;->mMinPosition:F

    .line 136
    return-void
.end method

.method setState(FFJ)V
    .locals 0
    .parameter "position"
    .parameter "velocity"
    .parameter "now"

    .prologue
    .line 49
    iput p2, p0, Landroid/widget/Dynamics;->mVelocity:F

    .line 50
    iput p1, p0, Landroid/widget/Dynamics;->mPosition:F

    .line 51
    iput-wide p3, p0, Landroid/widget/Dynamics;->mLastTime:J

    .line 52
    return-void
.end method

.method update(J)V
    .locals 4
    .parameter "now"

    .prologue
    .line 154
    iget-wide v2, p0, Landroid/widget/Dynamics;->mLastTime:J

    sub-long v2, p1, v2

    long-to-int v0, v2

    .line 156
    .local v0, deltaMs:I
    const/16 v2, 0x1f4

    if-le v0, v2, :cond_0

    .line 157
    const/16 v0, 0x1f4

    .line 160
    :cond_0
    :goto_0
    if-lez v0, :cond_1

    .line 161
    const/16 v2, 0xa

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 162
    .local v1, step:I
    invoke-virtual {p0, v1}, Landroid/widget/Dynamics;->onUpdate(I)V

    .line 163
    add-int/lit8 v0, v0, -0xa

    .line 164
    goto :goto_0

    .line 166
    .end local v1           #step:I
    :cond_1
    iput-wide p1, p0, Landroid/widget/Dynamics;->mLastTime:J

    .line 167
    return-void
.end method

.class public abstract Lcom/sonymobile/lockscreen/xperia/widget/unlockinglayout/Dynamics;
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
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const v0, 0x7f7fffff

    iput v0, p0, Lcom/sonymobile/lockscreen/xperia/widget/unlockinglayout/Dynamics;->mMaxPosition:F

    .line 30
    const v0, -0x800001

    iput v0, p0, Lcom/sonymobile/lockscreen/xperia/widget/unlockinglayout/Dynamics;->mMinPosition:F

    .line 33
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sonymobile/lockscreen/xperia/widget/unlockinglayout/Dynamics;->mLastTime:J

    return-void
.end method


# virtual methods
.method public adjustPositionAndVelocity()V
    .locals 2

    .prologue
    .line 96
    const/4 v0, 0x0

    iput v0, p0, Lcom/sonymobile/lockscreen/xperia/widget/unlockinglayout/Dynamics;->mVelocity:F

    .line 97
    iget v0, p0, Lcom/sonymobile/lockscreen/xperia/widget/unlockinglayout/Dynamics;->mPosition:F

    iget v1, p0, Lcom/sonymobile/lockscreen/xperia/widget/unlockinglayout/Dynamics;->mMinPosition:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    .line 98
    iget v0, p0, Lcom/sonymobile/lockscreen/xperia/widget/unlockinglayout/Dynamics;->mMinPosition:F

    iput v0, p0, Lcom/sonymobile/lockscreen/xperia/widget/unlockinglayout/Dynamics;->mPosition:F

    .line 102
    :cond_0
    :goto_0
    return-void

    .line 99
    :cond_1
    iget v0, p0, Lcom/sonymobile/lockscreen/xperia/widget/unlockinglayout/Dynamics;->mPosition:F

    iget v1, p0, Lcom/sonymobile/lockscreen/xperia/widget/unlockinglayout/Dynamics;->mMaxPosition:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 100
    iget v0, p0, Lcom/sonymobile/lockscreen/xperia/widget/unlockinglayout/Dynamics;->mMaxPosition:F

    iput v0, p0, Lcom/sonymobile/lockscreen/xperia/widget/unlockinglayout/Dynamics;->mPosition:F

    goto :goto_0
.end method

.method protected getDistanceToLimit()F
    .locals 3

    .prologue
    .line 151
    const/4 v0, 0x0

    .line 153
    .local v0, "distanceToLimit":F
    iget v1, p0, Lcom/sonymobile/lockscreen/xperia/widget/unlockinglayout/Dynamics;->mPosition:F

    iget v2, p0, Lcom/sonymobile/lockscreen/xperia/widget/unlockinglayout/Dynamics;->mMaxPosition:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    .line 154
    iget v1, p0, Lcom/sonymobile/lockscreen/xperia/widget/unlockinglayout/Dynamics;->mMaxPosition:F

    iget v2, p0, Lcom/sonymobile/lockscreen/xperia/widget/unlockinglayout/Dynamics;->mPosition:F

    sub-float v0, v1, v2

    .line 159
    :cond_0
    :goto_0
    return v0

    .line 155
    :cond_1
    iget v1, p0, Lcom/sonymobile/lockscreen/xperia/widget/unlockinglayout/Dynamics;->mPosition:F

    iget v2, p0, Lcom/sonymobile/lockscreen/xperia/widget/unlockinglayout/Dynamics;->mMinPosition:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    .line 156
    iget v1, p0, Lcom/sonymobile/lockscreen/xperia/widget/unlockinglayout/Dynamics;->mMinPosition:F

    iget v2, p0, Lcom/sonymobile/lockscreen/xperia/widget/unlockinglayout/Dynamics;->mPosition:F

    sub-float v0, v1, v2

    goto :goto_0
.end method

.method public getPosition()F
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lcom/sonymobile/lockscreen/xperia/widget/unlockinglayout/Dynamics;->mPosition:F

    return v0
.end method

.method public getVelocity()F
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Lcom/sonymobile/lockscreen/xperia/widget/unlockinglayout/Dynamics;->mVelocity:F

    return v0
.end method

.method public isAtRest(FF)Z
    .locals 6
    .param p1, "velocityTolerance"    # F
    .param p2, "positionTolerance"    # F

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 81
    iget v4, p0, Lcom/sonymobile/lockscreen/xperia/widget/unlockinglayout/Dynamics;->mVelocity:F

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpg-float v4, v4, p1

    if-gez v4, :cond_0

    move v0, v2

    .line 82
    .local v0, "standingStill":Z
    :goto_0
    iget v4, p0, Lcom/sonymobile/lockscreen/xperia/widget/unlockinglayout/Dynamics;->mPosition:F

    sub-float/2addr v4, p2

    iget v5, p0, Lcom/sonymobile/lockscreen/xperia/widget/unlockinglayout/Dynamics;->mMaxPosition:F

    cmpg-float v4, v4, v5

    if-gez v4, :cond_1

    iget v4, p0, Lcom/sonymobile/lockscreen/xperia/widget/unlockinglayout/Dynamics;->mPosition:F

    add-float/2addr v4, p2

    iget v5, p0, Lcom/sonymobile/lockscreen/xperia/widget/unlockinglayout/Dynamics;->mMinPosition:F

    cmpl-float v4, v4, v5

    if-lez v4, :cond_1

    move v1, v2

    .line 84
    .local v1, "withinLimits":Z
    :goto_1
    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    :goto_2
    return v2

    .end local v0    # "standingStill":Z
    .end local v1    # "withinLimits":Z
    :cond_0
    move v0, v3

    .line 81
    goto :goto_0

    .restart local v0    # "standingStill":Z
    :cond_1
    move v1, v3

    .line 82
    goto :goto_1

    .restart local v1    # "withinLimits":Z
    :cond_2
    move v2, v3

    .line 84
    goto :goto_2
.end method

.method protected abstract onUpdate(I)V
.end method

.method public setMaxPosition(F)V
    .locals 0
    .param p1, "maxPosition"    # F

    .prologue
    .line 110
    iput p1, p0, Lcom/sonymobile/lockscreen/xperia/widget/unlockinglayout/Dynamics;->mMaxPosition:F

    .line 111
    return-void
.end method

.method public setMinPosition(F)V
    .locals 0
    .param p1, "minPosition"    # F

    .prologue
    .line 119
    iput p1, p0, Lcom/sonymobile/lockscreen/xperia/widget/unlockinglayout/Dynamics;->mMinPosition:F

    .line 120
    return-void
.end method

.method public setState(FFJ)V
    .locals 0
    .param p1, "position"    # F
    .param p2, "velocity"    # F
    .param p3, "now"    # J

    .prologue
    .line 44
    iput p2, p0, Lcom/sonymobile/lockscreen/xperia/widget/unlockinglayout/Dynamics;->mVelocity:F

    .line 45
    iput p1, p0, Lcom/sonymobile/lockscreen/xperia/widget/unlockinglayout/Dynamics;->mPosition:F

    .line 46
    iput-wide p3, p0, Lcom/sonymobile/lockscreen/xperia/widget/unlockinglayout/Dynamics;->mLastTime:J

    .line 47
    return-void
.end method

.method public update(J)V
    .locals 4
    .param p1, "now"    # J

    .prologue
    .line 128
    iget-wide v2, p0, Lcom/sonymobile/lockscreen/xperia/widget/unlockinglayout/Dynamics;->mLastTime:J

    sub-long v2, p1, v2

    long-to-int v0, v2

    .line 130
    .local v0, "dt":I
    const/16 v2, 0x1f4

    if-le v0, v2, :cond_0

    .line 131
    const/16 v0, 0x1f4

    .line 134
    :cond_0
    :goto_0
    if-lez v0, :cond_1

    .line 135
    const/16 v2, 0xa

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 136
    .local v1, "step":I
    invoke-virtual {p0, v1}, Lcom/sonymobile/lockscreen/xperia/widget/unlockinglayout/Dynamics;->onUpdate(I)V

    .line 137
    add-int/lit8 v0, v0, -0xa

    .line 138
    goto :goto_0

    .line 140
    .end local v1    # "step":I
    :cond_1
    iput-wide p1, p0, Lcom/sonymobile/lockscreen/xperia/widget/unlockinglayout/Dynamics;->mLastTime:J

    .line 141
    return-void
.end method

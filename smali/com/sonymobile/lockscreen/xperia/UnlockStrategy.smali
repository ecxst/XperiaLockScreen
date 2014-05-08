.class public Lcom/sonymobile/lockscreen/xperia/UnlockStrategy;
.super Ljava/lang/Object;
.source "UnlockStrategy.java"


# static fields
.field private static final DEBUG:Z


# instance fields
.field private mAllowMultiTouch:Z

.field private mDragHasBeenMultitouch:Z

.field private mStartX:F

.field private mStartY:F

.field private mUnlockDistance:F

.field private mUnlockTriggered:Z

.field private mUnlockVelocity:F

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>(Lcom/sonymobile/lockscreen/xperia/UnlockStrategySettings;)V
    .locals 1
    .param p1, "settings"    # Lcom/sonymobile/lockscreen/xperia/UnlockStrategySettings;

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    invoke-virtual {p1}, Lcom/sonymobile/lockscreen/xperia/UnlockStrategySettings;->getMultiTouchAllowedInUnlock()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonymobile/lockscreen/xperia/UnlockStrategy;->mAllowMultiTouch:Z

    .line 39
    invoke-virtual {p1}, Lcom/sonymobile/lockscreen/xperia/UnlockStrategySettings;->getVelocityToUnlock()F

    move-result v0

    iput v0, p0, Lcom/sonymobile/lockscreen/xperia/UnlockStrategy;->mUnlockVelocity:F

    .line 40
    invoke-virtual {p1}, Lcom/sonymobile/lockscreen/xperia/UnlockStrategySettings;->getUnlockDistance()F

    move-result v0

    iput v0, p0, Lcom/sonymobile/lockscreen/xperia/UnlockStrategy;->mUnlockDistance:F

    .line 41
    return-void
.end method


# virtual methods
.method public isUnlockTriggered(Landroid/view/MotionEvent;)Z
    .locals 13
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 44
    iget-boolean v8, p0, Lcom/sonymobile/lockscreen/xperia/UnlockStrategy;->mUnlockTriggered:Z

    if-eqz v8, :cond_0

    .line 113
    :goto_0
    return v9

    .line 47
    :cond_0
    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    .line 48
    .local v3, "posX":F
    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    .line 50
    .local v4, "posY":F
    iget-boolean v11, p0, Lcom/sonymobile/lockscreen/xperia/UnlockStrategy;->mDragHasBeenMultitouch:Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v8

    if-le v8, v9, :cond_2

    move v8, v9

    :goto_1
    or-int/2addr v8, v11

    iput-boolean v8, p0, Lcom/sonymobile/lockscreen/xperia/UnlockStrategy;->mDragHasBeenMultitouch:Z

    .line 57
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v8

    packed-switch v8, :pswitch_data_0

    .line 113
    :cond_1
    :goto_2
    iget-boolean v9, p0, Lcom/sonymobile/lockscreen/xperia/UnlockStrategy;->mUnlockTriggered:Z

    goto :goto_0

    :cond_2
    move v8, v10

    .line 50
    goto :goto_1

    .line 59
    :pswitch_0
    iput v3, p0, Lcom/sonymobile/lockscreen/xperia/UnlockStrategy;->mStartX:F

    .line 60
    iput v4, p0, Lcom/sonymobile/lockscreen/xperia/UnlockStrategy;->mStartY:F

    .line 61
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v8

    iput-object v8, p0, Lcom/sonymobile/lockscreen/xperia/UnlockStrategy;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 62
    iget-object v8, p0, Lcom/sonymobile/lockscreen/xperia/UnlockStrategy;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v8, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    goto :goto_2

    .line 65
    :pswitch_1
    iget-object v8, p0, Lcom/sonymobile/lockscreen/xperia/UnlockStrategy;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v8, :cond_1

    .line 66
    iget-object v8, p0, Lcom/sonymobile/lockscreen/xperia/UnlockStrategy;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v8, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    goto :goto_2

    .line 72
    :pswitch_2
    const/4 v6, 0x0

    .line 73
    .local v6, "xVelocity":F
    const/4 v7, 0x0

    .line 75
    .local v7, "yVelocity":F
    iget-object v8, p0, Lcom/sonymobile/lockscreen/xperia/UnlockStrategy;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v8, :cond_3

    .line 78
    iget-object v8, p0, Lcom/sonymobile/lockscreen/xperia/UnlockStrategy;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v11, 0x3e8

    invoke-virtual {v8, v11}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 79
    iget-object v8, p0, Lcom/sonymobile/lockscreen/xperia/UnlockStrategy;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v8}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v6

    .line 80
    iget-object v8, p0, Lcom/sonymobile/lockscreen/xperia/UnlockStrategy;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v8}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v7

    .line 89
    :cond_3
    iget v8, p0, Lcom/sonymobile/lockscreen/xperia/UnlockStrategy;->mStartX:F

    sub-float v0, v3, v8

    .line 90
    .local v0, "distX":F
    iget v8, p0, Lcom/sonymobile/lockscreen/xperia/UnlockStrategy;->mStartY:F

    sub-float v1, v4, v8

    .line 91
    .local v1, "distY":F
    mul-float v8, v0, v0

    mul-float v11, v1, v1

    add-float/2addr v8, v11

    iget v11, p0, Lcom/sonymobile/lockscreen/xperia/UnlockStrategy;->mUnlockDistance:F

    iget v12, p0, Lcom/sonymobile/lockscreen/xperia/UnlockStrategy;->mUnlockDistance:F

    mul-float/2addr v11, v12

    cmpl-float v8, v8, v11

    if-ltz v8, :cond_7

    move v2, v9

    .line 93
    .local v2, "distanceSatisfied":Z
    :goto_3
    mul-float v8, v6, v6

    mul-float v11, v7, v7

    add-float/2addr v8, v11

    iget v11, p0, Lcom/sonymobile/lockscreen/xperia/UnlockStrategy;->mUnlockVelocity:F

    iget v12, p0, Lcom/sonymobile/lockscreen/xperia/UnlockStrategy;->mUnlockVelocity:F

    mul-float/2addr v11, v12

    cmpl-float v8, v8, v11

    if-ltz v8, :cond_8

    move v5, v9

    .line 96
    .local v5, "velocitySatisfied":Z
    :goto_4
    iget-boolean v8, p0, Lcom/sonymobile/lockscreen/xperia/UnlockStrategy;->mAllowMultiTouch:Z

    if-nez v8, :cond_4

    iget-boolean v8, p0, Lcom/sonymobile/lockscreen/xperia/UnlockStrategy;->mDragHasBeenMultitouch:Z

    if-nez v8, :cond_5

    :cond_4
    if-eqz v2, :cond_5

    if-eqz v5, :cond_5

    .line 102
    iput-boolean v9, p0, Lcom/sonymobile/lockscreen/xperia/UnlockStrategy;->mUnlockTriggered:Z

    .line 105
    :cond_5
    iget-object v8, p0, Lcom/sonymobile/lockscreen/xperia/UnlockStrategy;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v8, :cond_6

    .line 106
    iget-object v8, p0, Lcom/sonymobile/lockscreen/xperia/UnlockStrategy;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v8}, Landroid/view/VelocityTracker;->recycle()V

    .line 107
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/sonymobile/lockscreen/xperia/UnlockStrategy;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 109
    :cond_6
    iput-boolean v10, p0, Lcom/sonymobile/lockscreen/xperia/UnlockStrategy;->mDragHasBeenMultitouch:Z

    goto :goto_2

    .end local v2    # "distanceSatisfied":Z
    .end local v5    # "velocitySatisfied":Z
    :cond_7
    move v2, v10

    .line 91
    goto :goto_3

    .restart local v2    # "distanceSatisfied":Z
    :cond_8
    move v5, v10

    .line 93
    goto :goto_4

    .line 57
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

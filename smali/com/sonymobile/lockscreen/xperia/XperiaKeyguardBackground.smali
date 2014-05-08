.class public Lcom/sonymobile/lockscreen/xperia/XperiaKeyguardBackground;
.super Lcom/sonymobile/lockscreen/xperia/widget/unlockinglayout/UnlockingRelativeLayout;
.source "XperiaKeyguardBackground.java"

# interfaces
.implements Lcom/sonymobile/lockscreen/environment/KeyguardBackground;


# static fields
.field private static final DEBUG:Z = false

.field private static final DP_KEEP_ALIVE_MOTION_AMOUNT:I = 0x64

.field private static final DP_KEEP_ALIVE_MOTION_AMOUNT_PER_SEC:I = 0x64

.field public static final MOTION_CHECK_INTERVAL:I = 0x3e8


# instance fields
.field private mAccumulatedMotion:J

.field private mAllowUnlock:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mColorOverlayEnabled:Z

.field private mKeepAliveMotionAmountPixels:J

.field private mKeyguardComponentEnvironment:Lcom/sonymobile/lockscreen/environment/KeyguardComponentEnvironment;

.field private mLastXTouchPos:F

.field private mLastYTouchPos:F

.field private mLiveWallpaperController:Lcom/sonymobile/lockscreen/wallpaper/LiveWallpaperController;

.field private mOverlayColor:I

.field private mTempCell:[I

.field private mTimeOfLastMotionCheck:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 86
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sonymobile/lockscreen/xperia/XperiaKeyguardBackground;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 87
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    .line 98
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/lockscreen/xperia/widget/unlockinglayout/UnlockingRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonymobile/lockscreen/xperia/XperiaKeyguardBackground;->mColorOverlayEnabled:Z

    .line 52
    iput v2, p0, Lcom/sonymobile/lockscreen/xperia/XperiaKeyguardBackground;->mOverlayColor:I

    .line 54
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sonymobile/lockscreen/xperia/XperiaKeyguardBackground;->mAccumulatedMotion:J

    .line 73
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/sonymobile/lockscreen/xperia/XperiaKeyguardBackground;->mAllowUnlock:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 77
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/sonymobile/lockscreen/xperia/XperiaKeyguardBackground;->mTempCell:[I

    .line 99
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f050000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/sonymobile/lockscreen/xperia/XperiaKeyguardBackground;->mOverlayColor:I

    .line 100
    iget-boolean v0, p0, Lcom/sonymobile/lockscreen/xperia/XperiaKeyguardBackground;->mColorOverlayEnabled:Z

    if-eqz v0, :cond_0

    .line 101
    invoke-virtual {p0, v2}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 106
    :cond_0
    return-void
.end method

.method private resetScreenOffTimeoutIfNeeded(Landroid/view/MotionEvent;)V
    .locals 7
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 253
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 277
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 255
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iput v3, p0, Lcom/sonymobile/lockscreen/xperia/XperiaKeyguardBackground;->mLastXTouchPos:F

    .line 256
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iput v3, p0, Lcom/sonymobile/lockscreen/xperia/XperiaKeyguardBackground;->mLastYTouchPos:F

    goto :goto_0

    .line 259
    :pswitch_2
    iget-wide v3, p0, Lcom/sonymobile/lockscreen/xperia/XperiaKeyguardBackground;->mAccumulatedMotion:J

    long-to-float v3, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    iget v5, p0, Lcom/sonymobile/lockscreen/xperia/XperiaKeyguardBackground;->mLastXTouchPos:F

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    iget v6, p0, Lcom/sonymobile/lockscreen/xperia/XperiaKeyguardBackground;->mLastYTouchPos:F

    sub-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    add-float/2addr v4, v5

    add-float/2addr v3, v4

    float-to-long v3, v3

    iput-wide v3, p0, Lcom/sonymobile/lockscreen/xperia/XperiaKeyguardBackground;->mAccumulatedMotion:J

    .line 261
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iput v3, p0, Lcom/sonymobile/lockscreen/xperia/XperiaKeyguardBackground;->mLastXTouchPos:F

    .line 262
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iput v3, p0, Lcom/sonymobile/lockscreen/xperia/XperiaKeyguardBackground;->mLastYTouchPos:F

    .line 263
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 264
    .local v0, "currentTime":J
    iget-wide v3, p0, Lcom/sonymobile/lockscreen/xperia/XperiaKeyguardBackground;->mTimeOfLastMotionCheck:J

    sub-long v3, v0, v3

    long-to-float v2, v3

    .line 265
    .local v2, "dT":F
    const/high16 v3, 0x447a0000

    cmpl-float v3, v2, v3

    if-lez v3, :cond_0

    .line 266
    iget-wide v3, p0, Lcom/sonymobile/lockscreen/xperia/XperiaKeyguardBackground;->mAccumulatedMotion:J

    iget-wide v5, p0, Lcom/sonymobile/lockscreen/xperia/XperiaKeyguardBackground;->mKeepAliveMotionAmountPixels:J

    cmp-long v3, v3, v5

    if-ltz v3, :cond_0

    .line 267
    iget-object v3, p0, Lcom/sonymobile/lockscreen/xperia/XperiaKeyguardBackground;->mKeyguardComponentEnvironment:Lcom/sonymobile/lockscreen/environment/KeyguardComponentEnvironment;

    invoke-interface {v3}, Lcom/sonymobile/lockscreen/environment/KeyguardComponentEnvironment;->getKeyguardPowerManager()Lcom/sonymobile/lockscreen/environment/ExternalKeyguardPowerManager;

    move-result-object v3

    invoke-interface {v3}, Lcom/sonymobile/lockscreen/environment/ExternalKeyguardPowerManager;->resetScreenOffTimeout()V

    .line 269
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcom/sonymobile/lockscreen/xperia/XperiaKeyguardBackground;->mAccumulatedMotion:J

    .line 270
    iput-wide v0, p0, Lcom/sonymobile/lockscreen/xperia/XperiaKeyguardBackground;->mTimeOfLastMotionCheck:J

    goto :goto_0

    .line 253
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public cleanUp(J)V
    .locals 1
    .param p1, "timestamp"    # J

    .prologue
    .line 143
    iget-object v0, p0, Lcom/sonymobile/lockscreen/xperia/XperiaKeyguardBackground;->mLiveWallpaperController:Lcom/sonymobile/lockscreen/wallpaper/LiveWallpaperController;

    invoke-interface {v0, p1, p2}, Lcom/sonymobile/lockscreen/wallpaper/LiveWallpaperController;->cleanUp(J)V

    .line 144
    return-void
.end method

.method public disableBackgroundDarkener()Z
    .locals 1

    .prologue
    .line 207
    const/4 v0, 0x1

    return v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 215
    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 216
    iget-boolean v0, p0, Lcom/sonymobile/lockscreen/xperia/XperiaKeyguardBackground;->mColorOverlayEnabled:Z

    if-eqz v0, :cond_0

    .line 217
    iget v0, p0, Lcom/sonymobile/lockscreen/xperia/XperiaKeyguardBackground;->mOverlayColor:I

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 219
    :cond_0
    return-void
.end method

.method public immediateCleanUp(J)V
    .locals 1
    .param p1, "timestamp"    # J

    .prologue
    .line 151
    iget-object v0, p0, Lcom/sonymobile/lockscreen/xperia/XperiaKeyguardBackground;->mLiveWallpaperController:Lcom/sonymobile/lockscreen/wallpaper/LiveWallpaperController;

    invoke-interface {v0, p1, p2}, Lcom/sonymobile/lockscreen/wallpaper/LiveWallpaperController;->immediateCleanup(J)V

    .line 152
    return-void
.end method

.method public onBootCompleted()V
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/sonymobile/lockscreen/xperia/XperiaKeyguardBackground;->mLiveWallpaperController:Lcom/sonymobile/lockscreen/wallpaper/LiveWallpaperController;

    invoke-interface {v0}, Lcom/sonymobile/lockscreen/wallpaper/LiveWallpaperController;->onBootCompleted()V

    .line 192
    return-void
.end method

.method public onScreenTurnedOff()V
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/sonymobile/lockscreen/xperia/XperiaKeyguardBackground;->mLiveWallpaperController:Lcom/sonymobile/lockscreen/wallpaper/LiveWallpaperController;

    invoke-interface {v0}, Lcom/sonymobile/lockscreen/wallpaper/LiveWallpaperController;->onScreenTurnedOff()V

    .line 160
    return-void
.end method

.method public onScreenTurnedOn()V
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/sonymobile/lockscreen/xperia/XperiaKeyguardBackground;->mLiveWallpaperController:Lcom/sonymobile/lockscreen/wallpaper/LiveWallpaperController;

    invoke-interface {v0}, Lcom/sonymobile/lockscreen/wallpaper/LiveWallpaperController;->onScreenTurnedOn()V

    .line 168
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 281
    invoke-direct {p0, p1}, Lcom/sonymobile/lockscreen/xperia/XperiaKeyguardBackground;->resetScreenOffTimeoutIfNeeded(Landroid/view/MotionEvent;)V

    .line 282
    iget-object v0, p0, Lcom/sonymobile/lockscreen/xperia/XperiaKeyguardBackground;->mAllowUnlock:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 283
    invoke-super {p0, p1}, Lcom/sonymobile/lockscreen/xperia/widget/unlockinglayout/UnlockingRelativeLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 285
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected onWallpaperTap(Landroid/view/MotionEvent;)V
    .locals 9
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 292
    invoke-virtual {p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    .line 294
    .local v1, "windowToken":Landroid/os/IBinder;
    if-eqz v1, :cond_0

    .line 296
    iget-object v8, p0, Lcom/sonymobile/lockscreen/xperia/XperiaKeyguardBackground;->mTempCell:[I

    .line 297
    .local v8, "position":[I
    invoke-virtual {p0, v8}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 299
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v7

    .line 300
    .local v7, "pointerIndex":I
    aget v0, v8, v5

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    float-to-int v3, v3

    add-int/2addr v0, v3

    aput v0, v8, v5

    .line 301
    aget v0, v8, v4

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    float-to-int v3, v3

    add-int/2addr v0, v3

    aput v0, v8, v4

    .line 303
    const/4 v2, 0x0

    .line 305
    .local v2, "command":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 323
    :goto_0
    if-eqz v2, :cond_0

    .line 329
    iget-object v0, p0, Lcom/sonymobile/lockscreen/xperia/XperiaKeyguardBackground;->mLiveWallpaperController:Lcom/sonymobile/lockscreen/wallpaper/LiveWallpaperController;

    aget v3, v8, v5

    aget v4, v8, v4

    const/4 v6, 0x0

    invoke-interface/range {v0 .. v6}, Lcom/sonymobile/lockscreen/wallpaper/LiveWallpaperController;->sendLockscreenCommand(Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;)V

    .line 333
    .end local v2    # "command":Ljava/lang/String;
    .end local v7    # "pointerIndex":I
    .end local v8    # "position":[I
    :cond_0
    return-void

    .line 307
    .restart local v2    # "command":Ljava/lang/String;
    .restart local v7    # "pointerIndex":I
    .restart local v8    # "position":[I
    :pswitch_0
    const-string v2, "com.sonymobile.lockscreen.wallpaper.command.POINTER_DOWN"

    .line 308
    goto :goto_0

    .line 311
    :pswitch_1
    const-string v2, "com.sonymobile.lockscreen.wallpaper.command.POINTER_UP"

    .line 312
    goto :goto_0

    .line 315
    :pswitch_2
    const-string v2, "com.sonymobile.lockscreen.wallpaper.command.POINTER_UP"

    .line 316
    goto :goto_0

    .line 319
    :pswitch_3
    const-string v2, "com.sonymobile.lockscreen.wallpaper.command.POINTER_MOVE"

    goto :goto_0

    .line 305
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method public removeWallpaper()Z
    .locals 1

    .prologue
    .line 337
    const/4 v0, 0x0

    return v0
.end method

.method public setAllowUnlock(Z)V
    .locals 1
    .param p1, "allowUnlock"    # Z

    .prologue
    .line 240
    iget-object v0, p0, Lcom/sonymobile/lockscreen/xperia/XperiaKeyguardBackground;->mAllowUnlock:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 241
    return-void
.end method

.method public setColorOverlayEnabled(Z)V
    .locals 1
    .param p1, "shouldBeEnabled"    # Z

    .prologue
    .line 227
    iput-boolean p1, p0, Lcom/sonymobile/lockscreen/xperia/XperiaKeyguardBackground;->mColorOverlayEnabled:Z

    .line 228
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 229
    return-void

    .line 228
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDependencies(Landroid/content/Context;Lcom/sonymobile/lockscreen/environment/KeyguardComponentEnvironment;Lcom/sonymobile/lockscreen/xperia/UnlockStrategy;Lcom/sonymobile/lockscreen/wallpaper/LiveWallpaperController;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "keyguardComponentEnvironment"    # Lcom/sonymobile/lockscreen/environment/KeyguardComponentEnvironment;
    .param p3, "unlockStrategy"    # Lcom/sonymobile/lockscreen/xperia/UnlockStrategy;
    .param p4, "liveWallpaperController"    # Lcom/sonymobile/lockscreen/wallpaper/LiveWallpaperController;

    .prologue
    .line 125
    iput-object p2, p0, Lcom/sonymobile/lockscreen/xperia/XperiaKeyguardBackground;->mKeyguardComponentEnvironment:Lcom/sonymobile/lockscreen/environment/KeyguardComponentEnvironment;

    .line 126
    iput-object p4, p0, Lcom/sonymobile/lockscreen/xperia/XperiaKeyguardBackground;->mLiveWallpaperController:Lcom/sonymobile/lockscreen/wallpaper/LiveWallpaperController;

    .line 128
    if-eqz p3, :cond_0

    .line 129
    invoke-virtual {p0, p3}, Lcom/sonymobile/lockscreen/xperia/widget/unlockinglayout/UnlockingRelativeLayout;->setUnlockStrategy(Lcom/sonymobile/lockscreen/xperia/UnlockStrategy;)V

    .line 132
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x42c80000

    invoke-static {v0, v1}, Lcom/sonymobile/lockscreen/util/MetricUtils;->dipToPixels(Landroid/content/Context;F)F

    move-result v0

    float-to-long v0, v0

    iput-wide v0, p0, Lcom/sonymobile/lockscreen/xperia/XperiaKeyguardBackground;->mKeepAliveMotionAmountPixels:J

    .line 135
    iget-object v0, p0, Lcom/sonymobile/lockscreen/xperia/XperiaKeyguardBackground;->mLiveWallpaperController:Lcom/sonymobile/lockscreen/wallpaper/LiveWallpaperController;

    invoke-interface {v0}, Lcom/sonymobile/lockscreen/wallpaper/LiveWallpaperController;->setupLockscreenState()V

    .line 136
    return-void
.end method

.method public userSwitching()V
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/sonymobile/lockscreen/xperia/XperiaKeyguardBackground;->mLiveWallpaperController:Lcom/sonymobile/lockscreen/wallpaper/LiveWallpaperController;

    invoke-interface {v0}, Lcom/sonymobile/lockscreen/wallpaper/LiveWallpaperController;->userSwitching()V

    .line 200
    return-void
.end method

.method public windowVisibilityChanged(Z)V
    .locals 1
    .param p1, "hidden"    # Z

    .prologue
    .line 175
    iget-object v0, p0, Lcom/sonymobile/lockscreen/xperia/XperiaKeyguardBackground;->mLiveWallpaperController:Lcom/sonymobile/lockscreen/wallpaper/LiveWallpaperController;

    invoke-interface {v0, p1}, Lcom/sonymobile/lockscreen/wallpaper/LiveWallpaperController;->keyguardWindowVisibilityChanged(Z)V

    .line 176
    return-void
.end method

.method public wmServiceReady()V
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/sonymobile/lockscreen/xperia/XperiaKeyguardBackground;->mLiveWallpaperController:Lcom/sonymobile/lockscreen/wallpaper/LiveWallpaperController;

    invoke-interface {v0}, Lcom/sonymobile/lockscreen/wallpaper/LiveWallpaperController;->wmServiceReady()V

    .line 184
    return-void
.end method

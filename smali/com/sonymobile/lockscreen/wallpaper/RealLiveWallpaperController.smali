.class public Lcom/sonymobile/lockscreen/wallpaper/RealLiveWallpaperController;
.super Ljava/lang/Object;
.source "RealLiveWallpaperController.java"

# interfaces
.implements Lcom/sonymobile/lockscreen/wallpaper/LiveWallpaperController;


# static fields
.field private static final DEBUG:Z


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mEnterLockscreenRunnable:Ljava/lang/Runnable;

.field private final mLeaveLockscreenRunnable:Ljava/lang/Runnable;

.field private mScreenOn:Z

.field private final mUserSwitch:Lcom/sonymobile/lockscreen/wallpaper/UserSwitch;

.field private mWMServiceReadyRunnable:Ljava/lang/Runnable;

.field private mWPServiceReady:Z

.field private final mWallpaperEvents:Lcom/sonymobile/lockscreen/wallpaper/WallpaperEvents;

.field private final mWallpaperManager:Landroid/app/WallpaperManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sonymobile/lockscreen/wallpaper/WallpaperEvents;Lcom/sonymobile/lockscreen/wallpaper/UserSwitch;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "wallpaperEvents"    # Lcom/sonymobile/lockscreen/wallpaper/WallpaperEvents;
    .param p3, "userSwitch"    # Lcom/sonymobile/lockscreen/wallpaper/UserSwitch;

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonymobile/lockscreen/wallpaper/RealLiveWallpaperController;->mScreenOn:Z

    .line 52
    new-instance v0, Lcom/sonymobile/lockscreen/wallpaper/RealLiveWallpaperController$1;

    invoke-direct {v0, p0}, Lcom/sonymobile/lockscreen/wallpaper/RealLiveWallpaperController$1;-><init>(Lcom/sonymobile/lockscreen/wallpaper/RealLiveWallpaperController;)V

    iput-object v0, p0, Lcom/sonymobile/lockscreen/wallpaper/RealLiveWallpaperController;->mEnterLockscreenRunnable:Ljava/lang/Runnable;

    .line 59
    new-instance v0, Lcom/sonymobile/lockscreen/wallpaper/RealLiveWallpaperController$2;

    invoke-direct {v0, p0}, Lcom/sonymobile/lockscreen/wallpaper/RealLiveWallpaperController$2;-><init>(Lcom/sonymobile/lockscreen/wallpaper/RealLiveWallpaperController;)V

    iput-object v0, p0, Lcom/sonymobile/lockscreen/wallpaper/RealLiveWallpaperController;->mLeaveLockscreenRunnable:Ljava/lang/Runnable;

    .line 71
    iput-object p1, p0, Lcom/sonymobile/lockscreen/wallpaper/RealLiveWallpaperController;->mContext:Landroid/content/Context;

    .line 72
    iget-object v0, p0, Lcom/sonymobile/lockscreen/wallpaper/RealLiveWallpaperController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/lockscreen/wallpaper/RealLiveWallpaperController;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 73
    iput-object p2, p0, Lcom/sonymobile/lockscreen/wallpaper/RealLiveWallpaperController;->mWallpaperEvents:Lcom/sonymobile/lockscreen/wallpaper/WallpaperEvents;

    .line 74
    iput-object p3, p0, Lcom/sonymobile/lockscreen/wallpaper/RealLiveWallpaperController;->mUserSwitch:Lcom/sonymobile/lockscreen/wallpaper/UserSwitch;

    .line 76
    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/lockscreen/wallpaper/RealLiveWallpaperController;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {v0}, Landroid/app/WallpaperManager;->getIWallpaperManager()Landroid/app/IWallpaperManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IWallpaperManager;->isSystemReady()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonymobile/lockscreen/wallpaper/RealLiveWallpaperController;->mWPServiceReady:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    :goto_0
    return-void

    .line 80
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/sonymobile/lockscreen/wallpaper/RealLiveWallpaperController;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/lockscreen/wallpaper/RealLiveWallpaperController;
    .param p1, "x1"    # Z

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/sonymobile/lockscreen/wallpaper/RealLiveWallpaperController;->showLockscreenWallpaper(Z)V

    return-void
.end method

.method private enterLockscreen()V
    .locals 4

    .prologue
    .line 209
    iget-object v0, p0, Lcom/sonymobile/lockscreen/wallpaper/RealLiveWallpaperController;->mWallpaperEvents:Lcom/sonymobile/lockscreen/wallpaper/WallpaperEvents;

    sget-object v1, Lcom/sonymobile/lockscreen/wallpaper/WallpaperEvents$WallpaperState;->STATE_LOCKSCREEN:Lcom/sonymobile/lockscreen/wallpaper/WallpaperEvents$WallpaperState;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Lcom/sonymobile/lockscreen/wallpaper/WallpaperEvents;->stateChanged(Lcom/sonymobile/lockscreen/wallpaper/WallpaperEvents$WallpaperState;J)V

    .line 211
    iget-boolean v0, p0, Lcom/sonymobile/lockscreen/wallpaper/RealLiveWallpaperController;->mWPServiceReady:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/lockscreen/wallpaper/RealLiveWallpaperController;->mUserSwitch:Lcom/sonymobile/lockscreen/wallpaper/UserSwitch;

    invoke-interface {v0}, Lcom/sonymobile/lockscreen/wallpaper/UserSwitch;->isUserSwitching()Z

    move-result v0

    if-nez v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/sonymobile/lockscreen/wallpaper/RealLiveWallpaperController;->mEnterLockscreenRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 216
    :goto_0
    return-void

    .line 214
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/lockscreen/wallpaper/RealLiveWallpaperController;->mEnterLockscreenRunnable:Ljava/lang/Runnable;

    invoke-direct {p0, v0}, Lcom/sonymobile/lockscreen/wallpaper/RealLiveWallpaperController;->runLater(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private immediateLeaveLockscreen(J)V
    .locals 2
    .param p1, "timestamp"    # J

    .prologue
    .line 225
    iget-boolean v0, p0, Lcom/sonymobile/lockscreen/wallpaper/RealLiveWallpaperController;->mWPServiceReady:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/lockscreen/wallpaper/RealLiveWallpaperController;->mUserSwitch:Lcom/sonymobile/lockscreen/wallpaper/UserSwitch;

    invoke-interface {v0}, Lcom/sonymobile/lockscreen/wallpaper/UserSwitch;->isUserSwitching()Z

    move-result v0

    if-nez v0, :cond_0

    .line 226
    iget-object v0, p0, Lcom/sonymobile/lockscreen/wallpaper/RealLiveWallpaperController;->mLeaveLockscreenRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 230
    :goto_0
    iget-object v0, p0, Lcom/sonymobile/lockscreen/wallpaper/RealLiveWallpaperController;->mWallpaperEvents:Lcom/sonymobile/lockscreen/wallpaper/WallpaperEvents;

    sget-object v1, Lcom/sonymobile/lockscreen/wallpaper/WallpaperEvents$WallpaperState;->STATE_UNLOCKING:Lcom/sonymobile/lockscreen/wallpaper/WallpaperEvents$WallpaperState;

    invoke-interface {v0, v1, p1, p2}, Lcom/sonymobile/lockscreen/wallpaper/WallpaperEvents;->stateChanged(Lcom/sonymobile/lockscreen/wallpaper/WallpaperEvents$WallpaperState;J)V

    .line 231
    return-void

    .line 228
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sonymobile/lockscreen/wallpaper/RealLiveWallpaperController;->runLater(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private leaveLockscreen(J)V
    .locals 2
    .param p1, "timestamp"    # J

    .prologue
    .line 234
    iget-object v0, p0, Lcom/sonymobile/lockscreen/wallpaper/RealLiveWallpaperController;->mWallpaperEvents:Lcom/sonymobile/lockscreen/wallpaper/WallpaperEvents;

    sget-object v1, Lcom/sonymobile/lockscreen/wallpaper/WallpaperEvents$WallpaperState;->STATE_HOME:Lcom/sonymobile/lockscreen/wallpaper/WallpaperEvents$WallpaperState;

    invoke-interface {v0, v1, p1, p2}, Lcom/sonymobile/lockscreen/wallpaper/WallpaperEvents;->stateChanged(Lcom/sonymobile/lockscreen/wallpaper/WallpaperEvents$WallpaperState;J)V

    .line 235
    return-void
.end method

.method private runKeptTask()V
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lcom/sonymobile/lockscreen/wallpaper/RealLiveWallpaperController;->mWMServiceReadyRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 246
    iget-object v0, p0, Lcom/sonymobile/lockscreen/wallpaper/RealLiveWallpaperController;->mWMServiceReadyRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 248
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/lockscreen/wallpaper/RealLiveWallpaperController;->mWMServiceReadyRunnable:Ljava/lang/Runnable;

    .line 249
    return-void
.end method

.method private runLater(Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 238
    iput-object p1, p0, Lcom/sonymobile/lockscreen/wallpaper/RealLiveWallpaperController;->mWMServiceReadyRunnable:Ljava/lang/Runnable;

    .line 239
    return-void
.end method

.method private showLockscreenWallpaper(Z)V
    .locals 1
    .param p1, "showLockscreenWallpaper"    # Z

    .prologue
    .line 194
    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/lockscreen/wallpaper/RealLiveWallpaperController;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {v0}, Landroid/app/WallpaperManager;->getIWallpaperManager()Landroid/app/IWallpaperManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IWallpaperManager;->showLockscreenWallpaper(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 200
    :goto_0
    return-void

    .line 196
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public cleanUp(J)V
    .locals 1
    .param p1, "timestamp"    # J

    .prologue
    .line 133
    iget-boolean v0, p0, Lcom/sonymobile/lockscreen/wallpaper/RealLiveWallpaperController;->mScreenOn:Z

    if-eqz v0, :cond_0

    .line 136
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/lockscreen/wallpaper/RealLiveWallpaperController;->leaveLockscreen(J)V

    .line 138
    :cond_0
    return-void
.end method

.method public immediateCleanup(J)V
    .locals 0
    .param p1, "timestamp"    # J

    .prologue
    .line 122
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/lockscreen/wallpaper/RealLiveWallpaperController;->immediateLeaveLockscreen(J)V

    .line 123
    return-void
.end method

.method public keyguardWindowVisibilityChanged(Z)V
    .locals 2
    .param p1, "hidden"    # Z

    .prologue
    .line 107
    if-eqz p1, :cond_0

    .line 108
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/sonymobile/lockscreen/wallpaper/RealLiveWallpaperController;->leaveLockscreen(J)V

    .line 112
    :goto_0
    return-void

    .line 110
    :cond_0
    invoke-direct {p0}, Lcom/sonymobile/lockscreen/wallpaper/RealLiveWallpaperController;->enterLockscreen()V

    goto :goto_0
.end method

.method public onBootCompleted()V
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/sonymobile/lockscreen/wallpaper/RealLiveWallpaperController;->mWallpaperEvents:Lcom/sonymobile/lockscreen/wallpaper/WallpaperEvents;

    invoke-interface {v0}, Lcom/sonymobile/lockscreen/wallpaper/WallpaperEvents;->onBootCompleted()V

    .line 178
    return-void
.end method

.method public onScreenTurnedOff()V
    .locals 1

    .prologue
    .line 148
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/lockscreen/wallpaper/RealLiveWallpaperController;->mScreenOn:Z

    .line 149
    return-void
.end method

.method public onScreenTurnedOn()V
    .locals 1

    .prologue
    .line 159
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonymobile/lockscreen/wallpaper/RealLiveWallpaperController;->mScreenOn:Z

    .line 160
    return-void
.end method

.method public sendLockscreenCommand(Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;)V
    .locals 8
    .param p1, "windowToken"    # Landroid/os/IBinder;
    .param p2, "command"    # Ljava/lang/String;
    .param p3, "x"    # I
    .param p4, "y"    # I
    .param p5, "z"    # I
    .param p6, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 257
    iget-object v0, p0, Lcom/sonymobile/lockscreen/wallpaper/RealLiveWallpaperController;->mWallpaperEvents:Lcom/sonymobile/lockscreen/wallpaper/WallpaperEvents;

    iget-object v1, p0, Lcom/sonymobile/lockscreen/wallpaper/RealLiveWallpaperController;->mWallpaperManager:Landroid/app/WallpaperManager;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    invoke-interface/range {v0 .. v7}, Lcom/sonymobile/lockscreen/wallpaper/WallpaperEvents;->sendLockscreenCommand(Landroid/app/WallpaperManager;Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;)V

    .line 259
    return-void
.end method

.method public setupLockscreenState()V
    .locals 0

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/sonymobile/lockscreen/wallpaper/RealLiveWallpaperController;->enterLockscreen()V

    .line 97
    return-void
.end method

.method public userSwitching()V
    .locals 2

    .prologue
    .line 185
    iget-object v0, p0, Lcom/sonymobile/lockscreen/wallpaper/RealLiveWallpaperController;->mUserSwitch:Lcom/sonymobile/lockscreen/wallpaper/UserSwitch;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/sonymobile/lockscreen/wallpaper/UserSwitch;->setUserSwitching(Z)V

    .line 186
    return-void
.end method

.method public wmServiceReady()V
    .locals 2

    .prologue
    .line 167
    invoke-direct {p0}, Lcom/sonymobile/lockscreen/wallpaper/RealLiveWallpaperController;->runKeptTask()V

    .line 168
    iget-object v0, p0, Lcom/sonymobile/lockscreen/wallpaper/RealLiveWallpaperController;->mUserSwitch:Lcom/sonymobile/lockscreen/wallpaper/UserSwitch;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/sonymobile/lockscreen/wallpaper/UserSwitch;->setUserSwitching(Z)V

    .line 169
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonymobile/lockscreen/wallpaper/RealLiveWallpaperController;->mWPServiceReady:Z

    .line 170
    return-void
.end method

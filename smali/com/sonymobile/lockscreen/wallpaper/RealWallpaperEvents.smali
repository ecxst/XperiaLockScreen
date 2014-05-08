.class public Lcom/sonymobile/lockscreen/wallpaper/RealWallpaperEvents;
.super Ljava/lang/Object;
.source "RealWallpaperEvents.java"

# interfaces
.implements Lcom/sonymobile/lockscreen/wallpaper/WallpaperEvents;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/lockscreen/wallpaper/RealWallpaperEvents$1;
    }
.end annotation


# static fields
.field private static final DEBUG:Z


# instance fields
.field private mBootCompleted:Z

.field private mContext:Landroid/content/Context;

.field private mLastSentState:Lcom/sonymobile/lockscreen/wallpaper/WallpaperEvents$WallpaperState;

.field private mPackageName:Ljava/lang/String;

.field private mPreviousTimestamp:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/sonymobile/lockscreen/wallpaper/RealWallpaperEvents;->mContext:Landroid/content/Context;

    .line 37
    iput-object p2, p0, Lcom/sonymobile/lockscreen/wallpaper/RealWallpaperEvents;->mPackageName:Ljava/lang/String;

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/lockscreen/wallpaper/RealWallpaperEvents;->mLastSentState:Lcom/sonymobile/lockscreen/wallpaper/WallpaperEvents$WallpaperState;

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/lockscreen/wallpaper/RealWallpaperEvents;->mBootCompleted:Z

    .line 40
    return-void
.end method

.method private getWallpaperStateIntent(Lcom/sonymobile/lockscreen/wallpaper/WallpaperEvents$WallpaperState;)Ljava/lang/String;
    .locals 3
    .param p1, "wallpaperState"    # Lcom/sonymobile/lockscreen/wallpaper/WallpaperEvents$WallpaperState;

    .prologue
    .line 70
    const/4 v0, 0x0

    .line 72
    .local v0, "state":Ljava/lang/String;
    sget-object v1, Lcom/sonymobile/lockscreen/wallpaper/RealWallpaperEvents$1;->$SwitchMap$com$sonymobile$lockscreen$wallpaper$WallpaperEvents$WallpaperState:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 85
    :goto_0
    return-object v0

    .line 74
    :pswitch_0
    const-string v0, "com.sonymobile.lockscreen.intent.extra.WALLPAPER_STATE_LOCKSCREEN"

    .line 75
    goto :goto_0

    .line 78
    :pswitch_1
    const-string v0, "com.sonymobile.lockscreen.intent.extra.WALLPAPER_STATE_HOME"

    .line 79
    goto :goto_0

    .line 82
    :pswitch_2
    const-string v0, "com.sonymobile.lockscreen.intent.extra.WALLPAPER_STATE_UNLOCKING"

    goto :goto_0

    .line 72
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private sendWallpaperStateIntent(Lcom/sonymobile/lockscreen/wallpaper/WallpaperEvents$WallpaperState;)V
    .locals 2
    .param p1, "wallpaperState"    # Lcom/sonymobile/lockscreen/wallpaper/WallpaperEvents$WallpaperState;

    .prologue
    .line 89
    iget-object v1, p0, Lcom/sonymobile/lockscreen/wallpaper/RealWallpaperEvents;->mLastSentState:Lcom/sonymobile/lockscreen/wallpaper/WallpaperEvents$WallpaperState;

    invoke-direct {p0, v1}, Lcom/sonymobile/lockscreen/wallpaper/RealWallpaperEvents;->getWallpaperStateIntent(Lcom/sonymobile/lockscreen/wallpaper/WallpaperEvents$WallpaperState;)Ljava/lang/String;

    move-result-object v0

    .line 90
    .local v0, "state":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 91
    invoke-direct {p0, v0}, Lcom/sonymobile/lockscreen/wallpaper/RealWallpaperEvents;->sendWallpaperStateIntent(Ljava/lang/String;)V

    .line 93
    :cond_0
    return-void
.end method

.method private sendWallpaperStateIntent(Ljava/lang/String;)V
    .locals 3
    .param p1, "state"    # Ljava/lang/String;

    .prologue
    .line 99
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sonymobile.lockscreen.intent.action.WALLPAPER_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 100
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/sonymobile/lockscreen/wallpaper/RealWallpaperEvents;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 101
    const-string v1, "com.sonymobile.lockscreen.intent.extra.WALLPAPER_STATE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 102
    iget-object v1, p0, Lcom/sonymobile/lockscreen/wallpaper/RealWallpaperEvents;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 103
    return-void
.end method


# virtual methods
.method public onBootCompleted()V
    .locals 1

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/sonymobile/lockscreen/wallpaper/RealWallpaperEvents;->mBootCompleted:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/lockscreen/wallpaper/RealWallpaperEvents;->mLastSentState:Lcom/sonymobile/lockscreen/wallpaper/WallpaperEvents$WallpaperState;

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/sonymobile/lockscreen/wallpaper/RealWallpaperEvents;->mLastSentState:Lcom/sonymobile/lockscreen/wallpaper/WallpaperEvents$WallpaperState;

    invoke-direct {p0, v0}, Lcom/sonymobile/lockscreen/wallpaper/RealWallpaperEvents;->sendWallpaperStateIntent(Lcom/sonymobile/lockscreen/wallpaper/WallpaperEvents$WallpaperState;)V

    .line 66
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonymobile/lockscreen/wallpaper/RealWallpaperEvents;->mBootCompleted:Z

    .line 67
    return-void
.end method

.method public sendLockscreenCommand(Landroid/app/WallpaperManager;Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;)V
    .locals 0
    .param p1, "wallpaperManager"    # Landroid/app/WallpaperManager;
    .param p2, "windowToken"    # Landroid/os/IBinder;
    .param p3, "command"    # Ljava/lang/String;
    .param p4, "x"    # I
    .param p5, "y"    # I
    .param p6, "z"    # I
    .param p7, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 108
    invoke-virtual/range {p1 .. p7}, Landroid/app/WallpaperManager;->sendWallpaperCommand(Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;)V

    .line 110
    return-void
.end method

.method public stateChanged(Lcom/sonymobile/lockscreen/wallpaper/WallpaperEvents$WallpaperState;J)V
    .locals 2
    .param p1, "wallpaperState"    # Lcom/sonymobile/lockscreen/wallpaper/WallpaperEvents$WallpaperState;
    .param p2, "timestamp"    # J

    .prologue
    .line 45
    iget-object v0, p0, Lcom/sonymobile/lockscreen/wallpaper/RealWallpaperEvents;->mLastSentState:Lcom/sonymobile/lockscreen/wallpaper/WallpaperEvents$WallpaperState;

    if-eq p1, v0, :cond_0

    iget-wide v0, p0, Lcom/sonymobile/lockscreen/wallpaper/RealWallpaperEvents;->mPreviousTimestamp:J

    cmp-long v0, p2, v0

    if-ltz v0, :cond_0

    .line 46
    iput-object p1, p0, Lcom/sonymobile/lockscreen/wallpaper/RealWallpaperEvents;->mLastSentState:Lcom/sonymobile/lockscreen/wallpaper/WallpaperEvents$WallpaperState;

    .line 47
    iput-wide p2, p0, Lcom/sonymobile/lockscreen/wallpaper/RealWallpaperEvents;->mPreviousTimestamp:J

    .line 49
    iget-boolean v0, p0, Lcom/sonymobile/lockscreen/wallpaper/RealWallpaperEvents;->mBootCompleted:Z

    if-eqz v0, :cond_0

    .line 50
    invoke-direct {p0, p1}, Lcom/sonymobile/lockscreen/wallpaper/RealWallpaperEvents;->sendWallpaperStateIntent(Lcom/sonymobile/lockscreen/wallpaper/WallpaperEvents$WallpaperState;)V

    .line 53
    :cond_0
    return-void
.end method

.class public interface abstract Lcom/sonymobile/lockscreen/wallpaper/WallpaperEvents;
.super Ljava/lang/Object;
.source "WallpaperEvents.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/lockscreen/wallpaper/WallpaperEvents$WallpaperState;
    }
.end annotation


# virtual methods
.method public abstract onBootCompleted()V
.end method

.method public abstract sendLockscreenCommand(Landroid/app/WallpaperManager;Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;)V
.end method

.method public abstract stateChanged(Lcom/sonymobile/lockscreen/wallpaper/WallpaperEvents$WallpaperState;J)V
.end method

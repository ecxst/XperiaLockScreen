.class public interface abstract Lcom/sonymobile/lockscreen/wallpaper/LiveWallpaperController;
.super Ljava/lang/Object;
.source "LiveWallpaperController.java"


# virtual methods
.method public abstract cleanUp(J)V
.end method

.method public abstract immediateCleanup(J)V
.end method

.method public abstract keyguardWindowVisibilityChanged(Z)V
.end method

.method public abstract onBootCompleted()V
.end method

.method public abstract onScreenTurnedOff()V
.end method

.method public abstract onScreenTurnedOn()V
.end method

.method public abstract sendLockscreenCommand(Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;)V
.end method

.method public abstract setupLockscreenState()V
.end method

.method public abstract userSwitching()V
.end method

.method public abstract wmServiceReady()V
.end method

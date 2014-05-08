.class Lcom/sonymobile/lockscreen/wallpaper/RealLiveWallpaperController$1;
.super Ljava/lang/Object;
.source "RealLiveWallpaperController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/lockscreen/wallpaper/RealLiveWallpaperController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/lockscreen/wallpaper/RealLiveWallpaperController;


# direct methods
.method constructor <init>(Lcom/sonymobile/lockscreen/wallpaper/RealLiveWallpaperController;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/sonymobile/lockscreen/wallpaper/RealLiveWallpaperController$1;->this$0:Lcom/sonymobile/lockscreen/wallpaper/RealLiveWallpaperController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/sonymobile/lockscreen/wallpaper/RealLiveWallpaperController$1;->this$0:Lcom/sonymobile/lockscreen/wallpaper/RealLiveWallpaperController;

    const/4 v1, 0x1

    # invokes: Lcom/sonymobile/lockscreen/wallpaper/RealLiveWallpaperController;->showLockscreenWallpaper(Z)V
    invoke-static {v0, v1}, Lcom/sonymobile/lockscreen/wallpaper/RealLiveWallpaperController;->access$000(Lcom/sonymobile/lockscreen/wallpaper/RealLiveWallpaperController;Z)V

    .line 56
    return-void
.end method

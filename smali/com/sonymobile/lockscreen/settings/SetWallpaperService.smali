.class public Lcom/sonymobile/lockscreen/settings/SetWallpaperService;
.super Landroid/app/IntentService;
.source "SetWallpaperService.java"


# static fields
.field private static final DEBUG:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    const-string v0, "SetWallpaperService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 31
    return-void
.end method


# virtual methods
.method clearLockscreenWallpaper()V
    .locals 2

    .prologue
    .line 58
    new-instance v0, Lcom/sonymobile/lockscreen/xperia/RealContentResolverProxy;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sonymobile/lockscreen/xperia/RealContentResolverProxy;-><init>(Landroid/content/ContentResolver;)V

    invoke-static {v0}, Lcom/sonymobile/lockscreen/settings/WallpaperUtil;->clearLockscreenWallpaper(Lcom/sonymobile/lockscreen/util/ContentResolverProxy;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 60
    const-string v0, "XperiaLockscreen"

    const-string v1, "Failed to remove lockscreen wallpaper"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    :cond_0
    return-void
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 38
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 39
    .local v0, "uri":Landroid/net/Uri;
    if-nez v0, :cond_0

    .line 43
    invoke-virtual {p0}, Lcom/sonymobile/lockscreen/settings/SetWallpaperService;->clearLockscreenWallpaper()V

    .line 50
    :goto_0
    return-void

    .line 48
    :cond_0
    invoke-virtual {p0, v0}, Lcom/sonymobile/lockscreen/settings/SetWallpaperService;->setLockscreenWallpaper(Landroid/net/Uri;)V

    goto :goto_0
.end method

.method setLockscreenWallpaper(Landroid/net/Uri;)V
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 73
    if-eqz p1, :cond_0

    .line 74
    invoke-static {p0, p1}, Lcom/sonymobile/lockscreen/settings/WallpaperUtil;->setLockscreenWallpaper(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 75
    const-string v0, "XperiaLockscreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to set lockscreen wallpaper to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    :cond_0
    return-void
.end method

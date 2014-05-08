.class public Lcom/sonymobile/lockscreen/util/WallpaperLoader;
.super Ljava/lang/Object;
.source "WallpaperLoader.java"


# static fields
.field private static DEBUG:Z


# instance fields
.field private final mBootCompletedWaiter:Lcom/sonymobile/lockscreen/util/BootCompletedWaiter;

.field private final mContentResolverProxy:Lcom/sonymobile/lockscreen/util/ContentResolverProxy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sonymobile/lockscreen/util/WallpaperLoader;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Lcom/sonymobile/lockscreen/util/BootCompletedWaiter;Lcom/sonymobile/lockscreen/util/ContentResolverProxy;)V
    .locals 0
    .param p1, "bootCompletedWaiter"    # Lcom/sonymobile/lockscreen/util/BootCompletedWaiter;
    .param p2, "contentResolverProxy"    # Lcom/sonymobile/lockscreen/util/ContentResolverProxy;

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/sonymobile/lockscreen/util/WallpaperLoader;->mBootCompletedWaiter:Lcom/sonymobile/lockscreen/util/BootCompletedWaiter;

    .line 59
    iput-object p2, p0, Lcom/sonymobile/lockscreen/util/WallpaperLoader;->mContentResolverProxy:Lcom/sonymobile/lockscreen/util/ContentResolverProxy;

    .line 60
    return-void
.end method

.method private waitForSystemToBoot()Z
    .locals 5

    .prologue
    .line 112
    const/4 v0, 0x0

    .line 116
    .local v0, "success":Z
    :try_start_0
    iget-object v1, p0, Lcom/sonymobile/lockscreen/util/WallpaperLoader;->mBootCompletedWaiter:Lcom/sonymobile/lockscreen/util/BootCompletedWaiter;

    const-wide/16 v2, 0x5

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v2, v3, v4}, Lcom/sonymobile/lockscreen/util/BootCompletedWaiter;->waitForBootCompleted(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 120
    :goto_0
    return v0

    .line 117
    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public getWallpaper()Landroid/graphics/Bitmap;
    .locals 8

    .prologue
    .line 63
    sget-boolean v5, Lcom/sonymobile/lockscreen/util/WallpaperLoader;->DEBUG:Z

    if-eqz v5, :cond_0

    .line 64
    const-string v5, "XperiaLockscreen"

    const-string v6, "Start to load wallpaper"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    :cond_0
    invoke-direct {p0}, Lcom/sonymobile/lockscreen/util/WallpaperLoader;->waitForSystemToBoot()Z

    move-result v3

    .line 70
    .local v3, "success":Z
    if-nez v3, :cond_1

    .line 71
    const-string v5, "XperiaLockscreen"

    const-string v6, "Uh oh, timed out while waiting for system to boot"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    :cond_1
    const/4 v4, 0x0

    .line 75
    .local v4, "wallpaperBitmap":Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 76
    .local v2, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v5, 0x1

    iput-boolean v5, v2, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 77
    const/4 v1, 0x0

    .line 79
    .local v1, "in":Ljava/io/InputStream;
    :try_start_0
    iget-object v5, p0, Lcom/sonymobile/lockscreen/util/WallpaperLoader;->mContentResolverProxy:Lcom/sonymobile/lockscreen/util/ContentResolverProxy;

    sget-object v6, Lcom/sonymobile/lockscreen/wallpaper/WallpaperContract;->CONTENT_URI:Landroid/net/Uri;

    invoke-interface {v5, v6}, Lcom/sonymobile/lockscreen/util/ContentResolverProxy;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    .line 80
    const/4 v5, 0x0

    invoke-static {v1, v5, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 81
    if-nez v4, :cond_2

    .line 82
    const-string v5, "XperiaLockscreen"

    const-string v6, "Failed to decode wallpaper, delete cache file"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    iget-object v5, p0, Lcom/sonymobile/lockscreen/util/WallpaperLoader;->mContentResolverProxy:Lcom/sonymobile/lockscreen/util/ContentResolverProxy;

    invoke-static {v5}, Lcom/sonymobile/lockscreen/settings/WallpaperUtil;->clearLockscreenWallpaper(Lcom/sonymobile/lockscreen/util/ContentResolverProxy;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 84
    const-string v5, "XperiaLockscreen"

    const-string v6, "Cannot delete broken wallpaper"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    :cond_2
    if-eqz v1, :cond_3

    .line 94
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 103
    :cond_3
    :goto_0
    return-object v4

    .line 95
    :catch_0
    move-exception v0

    .line 96
    .local v0, "e":Ljava/io/IOException;
    sget-boolean v5, Lcom/sonymobile/lockscreen/util/WallpaperLoader;->DEBUG:Z

    if-eqz v5, :cond_3

    .line 97
    const-string v5, "XperiaLockscreen"

    const-string v6, "Could not close wallpaper"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 87
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 88
    .local v0, "e":Ljava/io/FileNotFoundException;
    :try_start_2
    sget-boolean v5, Lcom/sonymobile/lockscreen/util/WallpaperLoader;->DEBUG:Z

    if-eqz v5, :cond_4

    .line 89
    const-string v5, "XperiaLockscreen"

    const-string v6, "Could not open wallpaper"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 92
    :cond_4
    if-eqz v1, :cond_3

    .line 94
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 95
    :catch_2
    move-exception v0

    .line 96
    .local v0, "e":Ljava/io/IOException;
    sget-boolean v5, Lcom/sonymobile/lockscreen/util/WallpaperLoader;->DEBUG:Z

    if-eqz v5, :cond_3

    .line 97
    const-string v5, "XperiaLockscreen"

    const-string v6, "Could not close wallpaper"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 92
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    if-eqz v1, :cond_5

    .line 94
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 99
    :cond_5
    :goto_1
    throw v5

    .line 95
    :catch_3
    move-exception v0

    .line 96
    .restart local v0    # "e":Ljava/io/IOException;
    sget-boolean v6, Lcom/sonymobile/lockscreen/util/WallpaperLoader;->DEBUG:Z

    if-eqz v6, :cond_5

    .line 97
    const-string v6, "XperiaLockscreen"

    const-string v7, "Could not close wallpaper"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

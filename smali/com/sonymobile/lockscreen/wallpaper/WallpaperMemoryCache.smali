.class public Lcom/sonymobile/lockscreen/wallpaper/WallpaperMemoryCache;
.super Landroid/database/ContentObserver;
.source "WallpaperMemoryCache.java"


# instance fields
.field private mCachedBitmap:Landroid/graphics/Bitmap;

.field private mCachedExtractedColor:I

.field private mSuppressCacheInvalidationCount:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 27
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 22
    iput v1, p0, Lcom/sonymobile/lockscreen/wallpaper/WallpaperMemoryCache;->mCachedExtractedColor:I

    .line 28
    iput v1, p0, Lcom/sonymobile/lockscreen/wallpaper/WallpaperMemoryCache;->mSuppressCacheInvalidationCount:I

    .line 29
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/sonymobile/lockscreen/wallpaper/WallpaperMemoryCache;->mCachedBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/sonymobile/lockscreen/wallpaper/WallpaperMemoryCache;->mCachedBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 67
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/lockscreen/wallpaper/WallpaperMemoryCache;->mCachedBitmap:Landroid/graphics/Bitmap;

    .line 68
    const/4 v0, 0x0

    iput v0, p0, Lcom/sonymobile/lockscreen/wallpaper/WallpaperMemoryCache;->mCachedExtractedColor:I

    .line 69
    return-void
.end method

.method public getCachedBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/sonymobile/lockscreen/wallpaper/WallpaperMemoryCache;->mCachedBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getCachedExtractedColor()I
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lcom/sonymobile/lockscreen/wallpaper/WallpaperMemoryCache;->mCachedExtractedColor:I

    return v0
.end method

.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 78
    iget v0, p0, Lcom/sonymobile/lockscreen/wallpaper/WallpaperMemoryCache;->mSuppressCacheInvalidationCount:I

    if-nez v0, :cond_0

    .line 79
    invoke-virtual {p0}, Lcom/sonymobile/lockscreen/wallpaper/WallpaperMemoryCache;->clear()V

    .line 81
    :cond_0
    return-void
.end method

.method public reenableCacheInvalidation()V
    .locals 1

    .prologue
    .line 101
    iget v0, p0, Lcom/sonymobile/lockscreen/wallpaper/WallpaperMemoryCache;->mSuppressCacheInvalidationCount:I

    if-lez v0, :cond_0

    .line 102
    iget v0, p0, Lcom/sonymobile/lockscreen/wallpaper/WallpaperMemoryCache;->mSuppressCacheInvalidationCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sonymobile/lockscreen/wallpaper/WallpaperMemoryCache;->mSuppressCacheInvalidationCount:I

    .line 104
    :cond_0
    return-void
.end method

.method public setBitmapAndColor(Landroid/graphics/Bitmap;I)V
    .locals 0
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "color"    # I

    .prologue
    .line 47
    iput-object p1, p0, Lcom/sonymobile/lockscreen/wallpaper/WallpaperMemoryCache;->mCachedBitmap:Landroid/graphics/Bitmap;

    .line 48
    iput p2, p0, Lcom/sonymobile/lockscreen/wallpaper/WallpaperMemoryCache;->mCachedExtractedColor:I

    .line 49
    return-void
.end method

.method public suppressCacheInvalidation()V
    .locals 1

    .prologue
    .line 90
    iget v0, p0, Lcom/sonymobile/lockscreen/wallpaper/WallpaperMemoryCache;->mSuppressCacheInvalidationCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sonymobile/lockscreen/wallpaper/WallpaperMemoryCache;->mSuppressCacheInvalidationCount:I

    .line 91
    return-void
.end method

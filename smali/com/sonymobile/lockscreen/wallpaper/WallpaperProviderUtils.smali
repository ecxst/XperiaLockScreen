.class public Lcom/sonymobile/lockscreen/wallpaper/WallpaperProviderUtils;
.super Ljava/lang/Object;
.source "WallpaperProviderUtils.java"


# static fields
.field private static DEBUG:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sonymobile/lockscreen/wallpaper/WallpaperProviderUtils;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static calculateInSampleSize(III)I
    .locals 3
    .param p0, "sourceWidth"    # I
    .param p1, "sourceHeight"    # I
    .param p2, "targetSideLength"    # I

    .prologue
    .line 107
    const/4 v0, 0x1

    .line 108
    .local v0, "result":I
    if-le p1, p2, :cond_0

    if-le p0, p2, :cond_0

    .line 109
    div-int v1, p1, p2

    div-int v2, p0, p2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 111
    :cond_0
    return v0
.end method

.method private static cropBitmapIfNeeded(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 7
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "targetSideLength"    # I

    .prologue
    .line 151
    move-object v2, p0

    .line 154
    .local v2, "result":Landroid/graphics/Bitmap;
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-static {v3, v4, p1}, Lcom/sonymobile/lockscreen/settings/WallpaperUtil;->needsCropping(III)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 155
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-static {v3, v4, p1}, Lcom/sonymobile/lockscreen/settings/WallpaperUtil;->getCropRect(III)Landroid/graphics/Rect;

    move-result-object v0

    .line 157
    .local v0, "cropRect":Landroid/graphics/Rect;
    sget-boolean v3, Lcom/sonymobile/lockscreen/wallpaper/WallpaperProviderUtils;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 158
    const-string v3, "XperiaLockscreen"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cropping wallpaper to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    :cond_0
    iget v3, v0, Landroid/graphics/Rect;->left:I

    iget v4, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v6

    invoke-static {p0, v3, v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 164
    .local v1, "croppedBitmap":Landroid/graphics/Bitmap;
    if-eq p0, v1, :cond_1

    .line 165
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 167
    :cond_1
    move-object v2, v1

    .line 170
    .end local v0    # "cropRect":Landroid/graphics/Rect;
    .end local v1    # "croppedBitmap":Landroid/graphics/Bitmap;
    :cond_2
    return-object v2
.end method

.method private static sampleBitmap(Landroid/content/ContentResolver;Landroid/net/Uri;I)Landroid/graphics/Bitmap;
    .locals 4
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "imageUri"    # Landroid/net/Uri;
    .param p2, "sampleSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 126
    const/4 v2, 0x0

    .line 127
    .local v2, "sampledBitmap":Landroid/graphics/Bitmap;
    const/4 v0, 0x0

    .line 129
    .local v0, "in":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    .line 130
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 131
    .local v1, "options":Landroid/graphics/BitmapFactory$Options;
    iput p2, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 132
    const/4 v3, 0x0

    invoke-static {v0, v3, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 134
    if-eqz v0, :cond_0

    .line 135
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 138
    :cond_0
    return-object v2

    .line 134
    .end local v1    # "options":Landroid/graphics/BitmapFactory$Options;
    :catchall_0
    move-exception v3

    if-eqz v0, :cond_1

    .line 135
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_1
    throw v3
.end method


# virtual methods
.method public load(Landroid/content/ContentResolver;Landroid/net/Uri;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 5
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "imageUri"    # Landroid/net/Uri;
    .param p3, "targetSideLength"    # I
    .param p4, "bounds"    # Landroid/graphics/BitmapFactory$Options;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 60
    if-eqz p2, :cond_0

    if-lez p3, :cond_0

    if-eqz p4, :cond_0

    iget v2, p4, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-gtz v2, :cond_2

    .line 61
    :cond_0
    const/4 v0, 0x0

    .line 91
    :cond_1
    :goto_0
    return-object v0

    .line 64
    :cond_2
    sget-boolean v2, Lcom/sonymobile/lockscreen/wallpaper/WallpaperProviderUtils;->DEBUG:Z

    if-eqz v2, :cond_3

    .line 65
    const-string v2, "XperiaLockscreen"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Initiating bitmap loader: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    const-string v2, "XperiaLockscreen"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Source bounds: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p4, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p4, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    :cond_3
    const/4 v0, 0x0

    .line 72
    .local v0, "result":Landroid/graphics/Bitmap;
    iget v2, p4, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v3, p4, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-static {v2, v3, p3}, Lcom/sonymobile/lockscreen/wallpaper/WallpaperProviderUtils;->calculateInSampleSize(III)I

    move-result v1

    .line 74
    .local v1, "sampleSize":I
    sget-boolean v2, Lcom/sonymobile/lockscreen/wallpaper/WallpaperProviderUtils;->DEBUG:Z

    if-eqz v2, :cond_4

    .line 75
    const-string v2, "XperiaLockscreen"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Using sampleSize: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    :cond_4
    invoke-static {p1, p2, v1}, Lcom/sonymobile/lockscreen/wallpaper/WallpaperProviderUtils;->sampleBitmap(Landroid/content/ContentResolver;Landroid/net/Uri;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 80
    if-eqz v0, :cond_5

    .line 81
    invoke-static {v0, p3}, Lcom/sonymobile/lockscreen/wallpaper/WallpaperProviderUtils;->cropBitmapIfNeeded(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 84
    :cond_5
    sget-boolean v2, Lcom/sonymobile/lockscreen/wallpaper/WallpaperProviderUtils;->DEBUG:Z

    if-eqz v2, :cond_1

    .line 85
    if-nez v0, :cond_6

    .line 86
    const-string v2, "XperiaLockscreen"

    const-string v3, "Couldn\'t load wallpaper, returning null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 88
    :cond_6
    const-string v2, "XperiaLockscreen"

    const-string v3, "Wallpaper loaded"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

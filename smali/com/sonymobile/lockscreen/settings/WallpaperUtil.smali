.class public Lcom/sonymobile/lockscreen/settings/WallpaperUtil;
.super Ljava/lang/Object;
.source "WallpaperUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearLockscreenWallpaper(Lcom/sonymobile/lockscreen/util/ContentResolverProxy;)Z
    .locals 2
    .param p0, "resolverProxy"    # Lcom/sonymobile/lockscreen/util/ContentResolverProxy;

    .prologue
    const/4 v1, 0x0

    .line 48
    sget-object v0, Lcom/sonymobile/lockscreen/wallpaper/WallpaperContract;->CONTENT_URI:Landroid/net/Uri;

    invoke-interface {p0, v0, v1, v1}, Lcom/sonymobile/lockscreen/util/ContentResolverProxy;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getBounds(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/graphics/BitmapFactory$Options;
    .locals 3
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "imageUri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 175
    const/4 v0, 0x0

    .line 177
    .local v0, "in":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    .line 178
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 179
    .local v1, "justBounds":Landroid/graphics/BitmapFactory$Options;
    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 180
    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 183
    if-eqz v0, :cond_0

    .line 184
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_0
    return-object v1

    .line 183
    .end local v1    # "justBounds":Landroid/graphics/BitmapFactory$Options;
    :catchall_0
    move-exception v2

    if-eqz v0, :cond_1

    .line 184
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_1
    throw v2
.end method

.method public static getCropRect(III)Landroid/graphics/Rect;
    .locals 7
    .param p0, "sourceWidth"    # I
    .param p1, "sourceHeight"    # I
    .param p2, "targetSideLength"    # I

    .prologue
    const/4 v5, 0x0

    .line 88
    sub-int v4, p0, p2

    div-int/lit8 v4, v4, 0x2

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 89
    .local v2, "left":I
    sub-int v4, p1, p2

    div-int/lit8 v4, v4, 0x2

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 92
    .local v3, "top":I
    invoke-static {p0, p2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 93
    .local v1, "cropWidth":I
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 95
    .local v0, "cropHeight":I
    new-instance v4, Landroid/graphics/Rect;

    add-int v5, v2, v1

    add-int v6, v3, v0

    invoke-direct {v4, v2, v3, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v4
.end method

.method public static getDefaultWallpaperUri(Landroid/content/Context;)Landroid/net/Uri;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 195
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "android.resource://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7f020002

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getDesiredWallpaperDimensions(Landroid/content/Context;Landroid/graphics/Point;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "size"    # Landroid/graphics/Point;

    .prologue
    .line 223
    const/4 v1, 0x0

    .line 224
    .local v1, "result":Z
    const-string v3, "window"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 226
    .local v2, "windowManager":Landroid/view/WindowManager;
    if-eqz v2, :cond_0

    .line 227
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 228
    .local v0, "display":Landroid/view/Display;
    if-eqz v0, :cond_0

    .line 229
    invoke-virtual {v0, p1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 230
    const/4 v1, 0x1

    .line 233
    .end local v0    # "display":Landroid/view/Display;
    :cond_0
    if-nez v1, :cond_1

    .line 234
    const-string v3, "XperiaLockscreen"

    const-string v4, "Failed to resolve desired wallpaper dimensions"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    :cond_1
    return-void
.end method

.method public static needsCropping(III)Z
    .locals 1
    .param p0, "width"    # I
    .param p1, "height"    # I
    .param p2, "targetSideLength"    # I

    .prologue
    .line 74
    if-gt p0, p2, :cond_0

    if-le p1, p2, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static needsCropping(Landroid/graphics/BitmapFactory$Options;I)Z
    .locals 2
    .param p0, "bounds"    # Landroid/graphics/BitmapFactory$Options;
    .param p1, "targetSideLength"    # I

    .prologue
    .line 61
    iget v0, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v1, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-static {v0, v1, p1}, Lcom/sonymobile/lockscreen/settings/WallpaperUtil;->needsCropping(III)Z

    move-result v0

    return v0
.end method

.method public static observeLockscreenWallpaper(Landroid/content/ContentResolver;Landroid/database/ContentObserver;)V
    .locals 2
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "observer"    # Landroid/database/ContentObserver;

    .prologue
    .line 160
    sget-object v0, Lcom/sonymobile/lockscreen/wallpaper/WallpaperContract;->CONTENT_URI:Landroid/net/Uri;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1, p1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 161
    return-void
.end method

.method public static setCropExtras(Landroid/content/Intent;IIZLandroid/net/Uri;)V
    .locals 7
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "desiredWidth"    # I
    .param p2, "desiredHeight"    # I
    .param p3, "shouldBeSquare"    # Z
    .param p4, "resultUri"    # Landroid/net/Uri;

    .prologue
    .line 257
    const-string v5, "scaleUpIfNeeded"

    const/4 v6, 0x1

    invoke-virtual {p0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 258
    if-eqz p3, :cond_0

    .line 259
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 260
    .local v2, "sideLength":I
    int-to-float v5, p2

    int-to-float v6, v2

    div-float v3, v5, v6

    .line 261
    .local v3, "spotlightX":F
    int-to-float v5, p1

    int-to-float v6, v2

    div-float v4, v5, v6

    .line 263
    .local v4, "spotlightY":F
    const-string v5, "aspectX"

    invoke-virtual {p0, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 264
    const-string v5, "aspectY"

    invoke-virtual {p0, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 265
    const-string v5, "outputX"

    invoke-virtual {p0, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 266
    const-string v5, "outputY"

    invoke-virtual {p0, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 267
    const-string v5, "spotlightX"

    invoke-virtual {p0, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    .line 268
    const-string v5, "spotlightY"

    invoke-virtual {p0, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    .line 280
    .end local v2    # "sideLength":I
    .end local v3    # "spotlightX":F
    .end local v4    # "spotlightY":F
    :goto_0
    const-string v5, "output"

    invoke-virtual {p0, v5, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 281
    return-void

    .line 270
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 271
    .local v1, "portW":I
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 273
    .local v0, "portH":I
    const-string v5, "aspectX"

    invoke-virtual {p0, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 274
    const-string v5, "aspectY"

    invoke-virtual {p0, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 275
    const-string v5, "outputX"

    invoke-virtual {p0, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 276
    const-string v5, "outputY"

    invoke-virtual {p0, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0
.end method

.method public static setDefaultLockscreenWallpaper(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 207
    invoke-static {p0}, Lcom/sonymobile/lockscreen/settings/WallpaperUtil;->getDefaultWallpaperUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v0

    .line 208
    .local v0, "uri":Landroid/net/Uri;
    invoke-static {p0, v0}, Lcom/sonymobile/lockscreen/settings/WallpaperUtil;->setLockscreenWallpaper(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v1

    return v1
.end method

.method public static setLockscreenWallpaper(Landroid/content/ContentResolver;Landroid/net/Uri;II)Z
    .locals 6
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    const/4 v5, 0x0

    .line 113
    invoke-static {p2, p3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 115
    .local v0, "dim":I
    new-instance v2, Landroid/content/ContentValues;

    const/4 v3, 0x3

    invoke-direct {v2, v3}, Landroid/content/ContentValues;-><init>(I)V

    .line 116
    .local v2, "values":Landroid/content/ContentValues;
    const-string v3, "new_wallpaper_uri"

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    const-string v3, "sideLength"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 119
    sget-object v3, Lcom/sonymobile/lockscreen/wallpaper/WallpaperContract;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v3, v2, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_0

    const/4 v1, 0x1

    .line 120
    .local v1, "success":Z
    :goto_0
    return v1

    .line 119
    .end local v1    # "success":Z
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static setLockscreenWallpaper(Landroid/content/Context;Landroid/net/Uri;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 132
    const/4 v2, 0x0

    .line 133
    .local v2, "success":Z
    const-string v4, "window"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    .line 134
    .local v3, "wm":Landroid/view/WindowManager;
    if-eqz v3, :cond_0

    .line 135
    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 136
    .local v0, "display":Landroid/view/Display;
    if-eqz v0, :cond_0

    .line 137
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 138
    .local v1, "size":Landroid/graphics/Point;
    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 139
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iget v5, v1, Landroid/graphics/Point;->x:I

    iget v6, v1, Landroid/graphics/Point;->y:I

    invoke-static {v4, p1, v5, v6}, Lcom/sonymobile/lockscreen/settings/WallpaperUtil;->setLockscreenWallpaper(Landroid/content/ContentResolver;Landroid/net/Uri;II)Z

    move-result v2

    .line 144
    .end local v0    # "display":Landroid/view/Display;
    .end local v1    # "size":Landroid/graphics/Point;
    :cond_0
    if-nez v2, :cond_1

    .line 145
    const-string v4, "XperiaLockscreen"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to set Lockscreen Wallpaper to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    :cond_1
    return v2
.end method

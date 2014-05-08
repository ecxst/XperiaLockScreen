.class public Lcom/sonymobile/lockscreen/wallpaper/WallpaperProvider;
.super Landroid/content/ContentProvider;
.source "WallpaperProvider.java"


# static fields
.field private static final BUFFER_SIZE:I = 0x8000

.field private static final DEBUG:Z = false

.field private static final MATCH_WALLPAPER:I = 0x1

.field private static final WALLPAPER_CACHE_FILE:Ljava/lang/String; = "wallpaper.png"

.field private static final WALLPAPER_MINE_TYPE:Ljava/lang/String; = "image/png"

.field private static final sMatcher:Landroid/content/UriMatcher;


# instance fields
.field private volatile mWallpaperCacheFile:Ljava/io/File;

.field private mWallpaperProviderUtils:Lcom/sonymobile/lockscreen/wallpaper/WallpaperProviderUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 84
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/sonymobile/lockscreen/wallpaper/WallpaperProvider;->sMatcher:Landroid/content/UriMatcher;

    .line 85
    sget-object v0, Lcom/sonymobile/lockscreen/wallpaper/WallpaperProvider;->sMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.sonymobile.lockscreen.xperia.wallpaperprovider"

    const-string v2, "wallpaper"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 87
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method private copyWallpaperToTempFile(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/io/File;
    .locals 12
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "imageUri"    # Landroid/net/Uri;

    .prologue
    .line 382
    invoke-direct {p0}, Lcom/sonymobile/lockscreen/wallpaper/WallpaperProvider;->createWallpaperTempFile()Ljava/io/File;

    move-result-object v7

    .line 383
    .local v7, "tempFile":Ljava/io/File;
    if-nez v7, :cond_0

    .line 384
    const/4 v8, 0x0

    .line 425
    :goto_0
    return-object v8

    .line 387
    :cond_0
    const/4 v6, 0x0

    .line 388
    .local v6, "success":Z
    const/4 v3, 0x0

    .line 389
    .local v3, "in":Ljava/io/InputStream;
    const/4 v4, 0x0

    .line 391
    .local v4, "out":Ljava/io/OutputStream;
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v3

    .line 392
    new-instance v5, Ljava/io/BufferedOutputStream;

    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v5, v8}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_b
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 394
    .end local v4    # "out":Ljava/io/OutputStream;
    .local v5, "out":Ljava/io/OutputStream;
    const v8, 0x8000

    :try_start_1
    new-array v0, v8, [B

    .line 396
    .local v0, "buf":[B
    :goto_1
    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .local v1, "bytesRead":I
    if-lez v1, :cond_3

    .line 397
    const/4 v8, 0x0

    invoke-virtual {v5, v0, v8, v1}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_a
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .line 400
    .end local v0    # "buf":[B
    .end local v1    # "bytesRead":I
    :catch_0
    move-exception v2

    move-object v4, v5

    .line 401
    .end local v5    # "out":Ljava/io/OutputStream;
    .local v2, "e":Ljava/io/FileNotFoundException;
    .restart local v4    # "out":Ljava/io/OutputStream;
    :goto_2
    :try_start_2
    const-string v8, "XperiaLockscreen"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Couldn\'t copy wallpaper:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 405
    if-eqz v3, :cond_1

    .line 407
    :try_start_3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 412
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    :cond_1
    :goto_3
    if-eqz v4, :cond_2

    .line 414
    :try_start_4
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 422
    :cond_2
    :goto_4
    invoke-direct {p0, v7, v6}, Lcom/sonymobile/lockscreen/wallpaper/WallpaperProvider;->deleteFileIfNotValid(Ljava/io/File;Z)Ljava/io/File;

    move-result-object v7

    :goto_5
    move-object v8, v7

    .line 425
    goto :goto_0

    .line 399
    .end local v4    # "out":Ljava/io/OutputStream;
    .restart local v0    # "buf":[B
    .restart local v1    # "bytesRead":I
    .restart local v5    # "out":Ljava/io/OutputStream;
    :cond_3
    const/4 v6, 0x1

    .line 405
    if-eqz v3, :cond_4

    .line 407
    :try_start_5
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 412
    :cond_4
    :goto_6
    if-eqz v5, :cond_5

    .line 414
    :try_start_6
    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 422
    :cond_5
    :goto_7
    invoke-direct {p0, v7, v6}, Lcom/sonymobile/lockscreen/wallpaper/WallpaperProvider;->deleteFileIfNotValid(Ljava/io/File;Z)Ljava/io/File;

    move-result-object v7

    move-object v4, v5

    .line 423
    .end local v5    # "out":Ljava/io/OutputStream;
    .restart local v4    # "out":Ljava/io/OutputStream;
    goto :goto_5

    .line 408
    .end local v4    # "out":Ljava/io/OutputStream;
    .restart local v5    # "out":Ljava/io/OutputStream;
    :catch_1
    move-exception v2

    .line 409
    .local v2, "e":Ljava/io/IOException;
    const-string v8, "XperiaLockscreen"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Couldn\'t close wallpaper InputStream: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 415
    .end local v2    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v2

    .line 416
    .restart local v2    # "e":Ljava/io/IOException;
    const-string v8, "XperiaLockscreen"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Couldn\'t close wallpaper OutputStream: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 408
    .end local v0    # "buf":[B
    .end local v1    # "bytesRead":I
    .end local v5    # "out":Ljava/io/OutputStream;
    .local v2, "e":Ljava/io/FileNotFoundException;
    .restart local v4    # "out":Ljava/io/OutputStream;
    :catch_3
    move-exception v2

    .line 409
    .local v2, "e":Ljava/io/IOException;
    const-string v8, "XperiaLockscreen"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Couldn\'t close wallpaper InputStream: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 415
    .end local v2    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v2

    .line 416
    .restart local v2    # "e":Ljava/io/IOException;
    const-string v8, "XperiaLockscreen"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Couldn\'t close wallpaper OutputStream: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 402
    .end local v2    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v2

    .line 403
    .restart local v2    # "e":Ljava/io/IOException;
    :goto_8
    :try_start_7
    const-string v8, "XperiaLockscreen"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Couldn\'t copy wallpaper:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 405
    if-eqz v3, :cond_6

    .line 407
    :try_start_8
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    .line 412
    :cond_6
    :goto_9
    if-eqz v4, :cond_7

    .line 414
    :try_start_9
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    .line 422
    :cond_7
    :goto_a
    invoke-direct {p0, v7, v6}, Lcom/sonymobile/lockscreen/wallpaper/WallpaperProvider;->deleteFileIfNotValid(Ljava/io/File;Z)Ljava/io/File;

    move-result-object v7

    .line 423
    goto/16 :goto_5

    .line 408
    :catch_6
    move-exception v2

    .line 409
    const-string v8, "XperiaLockscreen"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Couldn\'t close wallpaper InputStream: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 415
    :catch_7
    move-exception v2

    .line 416
    const-string v8, "XperiaLockscreen"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Couldn\'t close wallpaper OutputStream: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    .line 405
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    :goto_b
    if-eqz v3, :cond_8

    .line 407
    :try_start_a
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_8

    .line 412
    :cond_8
    :goto_c
    if-eqz v4, :cond_9

    .line 414
    :try_start_b
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_9

    .line 422
    :cond_9
    :goto_d
    invoke-direct {p0, v7, v6}, Lcom/sonymobile/lockscreen/wallpaper/WallpaperProvider;->deleteFileIfNotValid(Ljava/io/File;Z)Ljava/io/File;

    move-result-object v7

    throw v8

    .line 408
    :catch_8
    move-exception v2

    .line 409
    .restart local v2    # "e":Ljava/io/IOException;
    const-string v9, "XperiaLockscreen"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Couldn\'t close wallpaper InputStream: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    .line 415
    .end local v2    # "e":Ljava/io/IOException;
    :catch_9
    move-exception v2

    .line 416
    .restart local v2    # "e":Ljava/io/IOException;
    const-string v9, "XperiaLockscreen"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Couldn\'t close wallpaper OutputStream: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    .line 405
    .end local v2    # "e":Ljava/io/IOException;
    .end local v4    # "out":Ljava/io/OutputStream;
    .restart local v5    # "out":Ljava/io/OutputStream;
    :catchall_1
    move-exception v8

    move-object v4, v5

    .end local v5    # "out":Ljava/io/OutputStream;
    .restart local v4    # "out":Ljava/io/OutputStream;
    goto :goto_b

    .line 402
    .end local v4    # "out":Ljava/io/OutputStream;
    .restart local v5    # "out":Ljava/io/OutputStream;
    :catch_a
    move-exception v2

    move-object v4, v5

    .end local v5    # "out":Ljava/io/OutputStream;
    .restart local v4    # "out":Ljava/io/OutputStream;
    goto/16 :goto_8

    .line 400
    :catch_b
    move-exception v2

    goto/16 :goto_2
.end method

.method private createTempFileForUri(Landroid/net/Uri;Ljava/lang/Integer;)Ljava/io/File;
    .locals 8
    .param p1, "newUri"    # Landroid/net/Uri;
    .param p2, "sideLength"    # Ljava/lang/Integer;

    .prologue
    .line 257
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 258
    .local v1, "contentResolver":Landroid/content/ContentResolver;
    const/4 v0, 0x0

    .line 260
    .local v0, "bounds":Landroid/graphics/BitmapFactory$Options;
    :try_start_0
    invoke-static {v1, p1}, Lcom/sonymobile/lockscreen/settings/WallpaperUtil;->getBounds(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/graphics/BitmapFactory$Options;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 267
    :goto_0
    const/4 v3, 0x0

    .line 268
    .local v3, "tempFile":Ljava/io/File;
    if-eqz v0, :cond_0

    iget v5, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-gtz v5, :cond_2

    .line 269
    :cond_0
    const-string v5, "XperiaLockscreen"

    const-string v6, "Couldn\'t decode wallpaper bounds"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    :cond_1
    :goto_1
    return-object v3

    .line 261
    .end local v3    # "tempFile":Ljava/io/File;
    :catch_0
    move-exception v2

    .line 262
    .local v2, "e":Ljava/io/FileNotFoundException;
    const-string v5, "XperiaLockscreen"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to load bounds for (FileNotFound) "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 263
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v2

    .line 264
    .local v2, "e":Ljava/io/IOException;
    const-string v5, "XperiaLockscreen"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to load bounds for (IOException) "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 270
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v3    # "tempFile":Ljava/io/File;
    :cond_2
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v0, v5}, Lcom/sonymobile/lockscreen/settings/WallpaperUtil;->needsCropping(Landroid/graphics/BitmapFactory$Options;I)Z

    move-result v5

    if-nez v5, :cond_3

    .line 276
    invoke-direct {p0, v1, p1}, Lcom/sonymobile/lockscreen/wallpaper/WallpaperProvider;->copyWallpaperToTempFile(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/io/File;

    move-result-object v3

    goto :goto_1

    .line 281
    :cond_3
    const/4 v4, 0x0

    .line 283
    .local v4, "wallpaperBitmapToCompress":Landroid/graphics/Bitmap;
    :try_start_1
    iget-object v5, p0, Lcom/sonymobile/lockscreen/wallpaper/WallpaperProvider;->mWallpaperProviderUtils:Lcom/sonymobile/lockscreen/wallpaper/WallpaperProviderUtils;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v5, v1, p1, v6, v0}, Lcom/sonymobile/lockscreen/wallpaper/WallpaperProviderUtils;->load(Landroid/content/ContentResolver;Landroid/net/Uri;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v4

    .line 292
    :goto_2
    if-eqz v4, :cond_1

    .line 293
    invoke-direct {p0, v4, p1}, Lcom/sonymobile/lockscreen/wallpaper/WallpaperProvider;->writeTempFileWithWallpaper(Landroid/graphics/Bitmap;Landroid/net/Uri;)Ljava/io/File;

    move-result-object v3

    .line 296
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_1

    .line 285
    :catch_2
    move-exception v2

    .line 286
    .restart local v2    # "e":Ljava/io/IOException;
    const-string v5, "XperiaLockscreen"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to load "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " as a wallpaper bitmap"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 287
    .end local v2    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v2

    .line 288
    .local v2, "e":Ljava/lang/OutOfMemoryError;
    const-string v5, "XperiaLockscreen"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Out of memory while loading wallpaper from "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method private createWallpaperTempFile()Ljava/io/File;
    .locals 5

    .prologue
    .line 353
    const/4 v1, 0x0

    .line 357
    .local v1, "tempFile":Ljava/io/File;
    :try_start_0
    const-string v2, "wallpaper.png"

    const-string v3, ".tmp"

    invoke-static {v2, v3}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 361
    :goto_0
    return-object v1

    .line 358
    :catch_0
    move-exception v0

    .line 359
    .local v0, "e":Ljava/io/IOException;
    const-string v2, "XperiaLockscreen"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not create temp file, maybe out of disk space?: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private deleteFileIfNotValid(Ljava/io/File;Z)Ljava/io/File;
    .locals 4
    .param p1, "file"    # Ljava/io/File;
    .param p2, "fileValid"    # Z

    .prologue
    .line 438
    move-object v0, p1

    .line 439
    .local v0, "result":Ljava/io/File;
    if-nez p2, :cond_1

    .line 440
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_0

    .line 441
    const-string v1, "XperiaLockscreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t delete the file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    :cond_0
    const/4 v0, 0x0

    .line 445
    :cond_1
    return-object v0
.end method

.method private notifyWallpaperChange()V
    .locals 3

    .prologue
    .line 369
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 370
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    sget-object v1, Lcom/sonymobile/lockscreen/wallpaper/WallpaperContract;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 371
    return-void
.end method

.method private writeTempFileWithWallpaper(Landroid/graphics/Bitmap;Landroid/net/Uri;)Ljava/io/File;
    .locals 9
    .param p1, "wallpaperBitmapToCompress"    # Landroid/graphics/Bitmap;
    .param p2, "uriOfWallpaperBitmap"    # Landroid/net/Uri;

    .prologue
    .line 313
    invoke-direct {p0}, Lcom/sonymobile/lockscreen/wallpaper/WallpaperProvider;->createWallpaperTempFile()Ljava/io/File;

    move-result-object v2

    .line 314
    .local v2, "tempFile":Ljava/io/File;
    if-nez v2, :cond_0

    .line 315
    const/4 v5, 0x0

    .line 344
    :goto_0
    return-object v5

    .line 319
    :cond_0
    const/4 v1, 0x0

    .line 320
    .local v1, "success":Z
    const/4 v3, 0x0

    .line 322
    .local v3, "tempFileOutputStream":Ljava/io/OutputStream;
    :try_start_0
    new-instance v4, Ljava/io/BufferedOutputStream;

    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 325
    .end local v3    # "tempFileOutputStream":Ljava/io/OutputStream;
    .local v4, "tempFileOutputStream":Ljava/io/OutputStream;
    :try_start_1
    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v6, 0x64

    invoke-virtual {p1, v5, v6, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v1

    .line 331
    if-eqz v4, :cond_1

    .line 333
    :try_start_2
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 341
    :cond_1
    :goto_1
    invoke-direct {p0, v2, v1}, Lcom/sonymobile/lockscreen/wallpaper/WallpaperProvider;->deleteFileIfNotValid(Ljava/io/File;Z)Ljava/io/File;

    move-result-object v2

    move-object v3, v4

    .end local v4    # "tempFileOutputStream":Ljava/io/OutputStream;
    .restart local v3    # "tempFileOutputStream":Ljava/io/OutputStream;
    :goto_2
    move-object v5, v2

    .line 344
    goto :goto_0

    .line 334
    .end local v3    # "tempFileOutputStream":Ljava/io/OutputStream;
    .restart local v4    # "tempFileOutputStream":Ljava/io/OutputStream;
    :catch_0
    move-exception v0

    .line 335
    .local v0, "e":Ljava/io/IOException;
    const-string v5, "XperiaLockscreen"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Couldn\'t close tempFileOutputStream: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 327
    .end local v0    # "e":Ljava/io/IOException;
    .end local v4    # "tempFileOutputStream":Ljava/io/OutputStream;
    .restart local v3    # "tempFileOutputStream":Ljava/io/OutputStream;
    :catch_1
    move-exception v0

    .line 328
    .restart local v0    # "e":Ljava/io/IOException;
    :goto_3
    :try_start_3
    const-string v5, "XperiaLockscreen"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Got an unxpected exception, probably because the disk is full: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 331
    if-eqz v3, :cond_2

    .line 333
    :try_start_4
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 341
    :cond_2
    :goto_4
    invoke-direct {p0, v2, v1}, Lcom/sonymobile/lockscreen/wallpaper/WallpaperProvider;->deleteFileIfNotValid(Ljava/io/File;Z)Ljava/io/File;

    move-result-object v2

    .line 342
    goto :goto_2

    .line 334
    :catch_2
    move-exception v0

    .line 335
    const-string v5, "XperiaLockscreen"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Couldn\'t close tempFileOutputStream: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 331
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    :goto_5
    if-eqz v3, :cond_3

    .line 333
    :try_start_5
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 341
    :cond_3
    :goto_6
    invoke-direct {p0, v2, v1}, Lcom/sonymobile/lockscreen/wallpaper/WallpaperProvider;->deleteFileIfNotValid(Ljava/io/File;Z)Ljava/io/File;

    move-result-object v2

    throw v5

    .line 334
    :catch_3
    move-exception v0

    .line 335
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v6, "XperiaLockscreen"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Couldn\'t close tempFileOutputStream: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 331
    .end local v0    # "e":Ljava/io/IOException;
    .end local v3    # "tempFileOutputStream":Ljava/io/OutputStream;
    .restart local v4    # "tempFileOutputStream":Ljava/io/OutputStream;
    :catchall_1
    move-exception v5

    move-object v3, v4

    .end local v4    # "tempFileOutputStream":Ljava/io/OutputStream;
    .restart local v3    # "tempFileOutputStream":Ljava/io/OutputStream;
    goto :goto_5

    .line 327
    .end local v3    # "tempFileOutputStream":Ljava/io/OutputStream;
    .restart local v4    # "tempFileOutputStream":Ljava/io/OutputStream;
    :catch_4
    move-exception v0

    move-object v3, v4

    .end local v4    # "tempFileOutputStream":Ljava/io/OutputStream;
    .restart local v3    # "tempFileOutputStream":Ljava/io/OutputStream;
    goto :goto_3
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 170
    sget-object v1, Lcom/sonymobile/lockscreen/wallpaper/WallpaperProvider;->sMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    .line 171
    const/4 v0, 0x0

    .line 190
    :cond_0
    :goto_0
    return v0

    .line 182
    :cond_1
    const/4 v0, 0x0

    .line 183
    .local v0, "rowsAffected":I
    iget-object v1, p0, Lcom/sonymobile/lockscreen/wallpaper/WallpaperProvider;->mWallpaperCacheFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 184
    const/4 v0, 0x1

    .line 187
    invoke-direct {p0}, Lcom/sonymobile/lockscreen/wallpaper/WallpaperProvider;->notifyWallpaperChange()V

    goto :goto_0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 147
    const/4 v0, 0x0

    .line 148
    .local v0, "type":Ljava/lang/String;
    sget-object v1, Lcom/sonymobile/lockscreen/wallpaper/WallpaperProvider;->sMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 153
    :goto_0
    return-object v0

    .line 150
    :pswitch_0
    const-string v0, "image/png"

    goto :goto_0

    .line 148
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 161
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Can not insert lockscreen wallpapers, there is only one"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onCreate()Z
    .locals 4

    .prologue
    .line 95
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    const/16 v2, 0x3e8

    if-ne v1, v2, :cond_0

    .line 96
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "This provider cannot be started as the system user"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 100
    :cond_0
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v0, v1, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    .line 101
    .local v0, "dataDir":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "wallpaper.png"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/sonymobile/lockscreen/wallpaper/WallpaperProvider;->mWallpaperCacheFile:Ljava/io/File;

    .line 102
    new-instance v1, Lcom/sonymobile/lockscreen/wallpaper/WallpaperProviderUtils;

    invoke-direct {v1}, Lcom/sonymobile/lockscreen/wallpaper/WallpaperProviderUtils;-><init>()V

    iput-object v1, p0, Lcom/sonymobile/lockscreen/wallpaper/WallpaperProvider;->mWallpaperProviderUtils:Lcom/sonymobile/lockscreen/wallpaper/WallpaperProviderUtils;

    .line 103
    const/4 v1, 0x1

    return v1
.end method

.method public openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "modeStr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 111
    sget-object v0, Lcom/sonymobile/lockscreen/wallpaper/WallpaperProvider;->sMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 112
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot open "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " as a file"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 115
    :cond_0
    const-string v0, "r"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 116
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported mode, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", must be \"r\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 129
    :cond_1
    iget-object v0, p0, Lcom/sonymobile/lockscreen/wallpaper/WallpaperProvider;->mWallpaperCacheFile:Ljava/io/File;

    const/high16 v1, 0x10000000

    invoke-static {v0, v1}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    .prologue
    .line 138
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Can not query for lockscreen wallpapers, there is only one"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 8
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 198
    sget-object v5, Lcom/sonymobile/lockscreen/wallpaper/WallpaperProvider;->sMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v5, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_0

    .line 199
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid URI: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 202
    :cond_0
    if-nez p2, :cond_1

    .line 203
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "values == null"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 206
    :cond_1
    const-string v5, "new_wallpaper_uri"

    invoke-virtual {p2, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 207
    .local v1, "newUriString":Ljava/lang/String;
    if-nez v1, :cond_3

    const/4 v0, 0x0

    .line 208
    .local v0, "newUri":Landroid/net/Uri;
    :goto_0
    const-string v5, "sideLength"

    invoke-virtual {p2, v5}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    .line 209
    .local v3, "sideLength":Ljava/lang/Integer;
    if-eqz v0, :cond_2

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-gtz v5, :cond_4

    .line 210
    :cond_2
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Must supply a valid uri and side length, was "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 207
    .end local v0    # "newUri":Landroid/net/Uri;
    .end local v3    # "sideLength":Ljava/lang/Integer;
    :cond_3
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    .line 216
    .restart local v0    # "newUri":Landroid/net/Uri;
    .restart local v3    # "sideLength":Ljava/lang/Integer;
    :cond_4
    invoke-direct {p0, v0, v3}, Lcom/sonymobile/lockscreen/wallpaper/WallpaperProvider;->createTempFileForUri(Landroid/net/Uri;Ljava/lang/Integer;)Ljava/io/File;

    move-result-object v4

    .line 219
    .local v4, "tempFile":Ljava/io/File;
    const/4 v2, 0x0

    .line 220
    .local v2, "rowsAffected":I
    if-eqz v4, :cond_5

    .line 225
    iget-object v5, p0, Lcom/sonymobile/lockscreen/wallpaper/WallpaperProvider;->mWallpaperCacheFile:Ljava/io/File;

    invoke-virtual {v4, v5}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 227
    const/4 v2, 0x1

    .line 232
    invoke-direct {p0}, Lcom/sonymobile/lockscreen/wallpaper/WallpaperProvider;->notifyWallpaperChange()V

    .line 243
    :cond_5
    :goto_1
    return v2

    .line 234
    :cond_6
    const-string v5, "XperiaLockscreen"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to rename "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " from "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/sonymobile/lockscreen/wallpaper/WallpaperProvider;->mWallpaperCacheFile:Ljava/io/File;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v5

    if-nez v5, :cond_5

    .line 238
    const-string v5, "XperiaLockscreen"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Couldn\'t delete temp file "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

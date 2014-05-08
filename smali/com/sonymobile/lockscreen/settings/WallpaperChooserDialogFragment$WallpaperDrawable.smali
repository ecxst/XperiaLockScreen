.class Lcom/sonymobile/lockscreen/settings/WallpaperChooserDialogFragment$WallpaperDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "WallpaperChooserDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/lockscreen/settings/WallpaperChooserDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "WallpaperDrawable"
.end annotation


# instance fields
.field mBitmap:Landroid/graphics/Bitmap;

.field mIntrinsicHeight:I

.field mIntrinsicWidth:I


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 369
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 387
    iget-object v4, p0, Lcom/sonymobile/lockscreen/settings/WallpaperChooserDialogFragment$WallpaperDrawable;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v4, :cond_0

    .line 393
    :goto_0
    return-void

    .line 388
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    .line 389
    .local v1, "width":I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v0

    .line 390
    .local v0, "height":I
    iget v4, p0, Lcom/sonymobile/lockscreen/settings/WallpaperChooserDialogFragment$WallpaperDrawable;->mIntrinsicWidth:I

    sub-int v4, v1, v4

    div-int/lit8 v2, v4, 0x2

    .line 391
    .local v2, "x":I
    iget v4, p0, Lcom/sonymobile/lockscreen/settings/WallpaperChooserDialogFragment$WallpaperDrawable;->mIntrinsicHeight:I

    sub-int v4, v0, v4

    div-int/lit8 v3, v4, 0x2

    .line 392
    .local v3, "y":I
    iget-object v4, p0, Lcom/sonymobile/lockscreen/settings/WallpaperChooserDialogFragment$WallpaperDrawable;->mBitmap:Landroid/graphics/Bitmap;

    int-to-float v5, v2

    int-to-float v6, v3

    const/4 v7, 0x0

    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 397
    const/4 v0, -0x1

    return v0
.end method

.method public setAlpha(I)V
    .locals 0
    .param p1, "alpha"    # I

    .prologue
    .line 403
    return-void
.end method

.method setBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 378
    iput-object p1, p0, Lcom/sonymobile/lockscreen/settings/WallpaperChooserDialogFragment$WallpaperDrawable;->mBitmap:Landroid/graphics/Bitmap;

    .line 379
    iget-object v0, p0, Lcom/sonymobile/lockscreen/settings/WallpaperChooserDialogFragment$WallpaperDrawable;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 383
    :goto_0
    return-void

    .line 381
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/lockscreen/settings/WallpaperChooserDialogFragment$WallpaperDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/sonymobile/lockscreen/settings/WallpaperChooserDialogFragment$WallpaperDrawable;->mIntrinsicWidth:I

    .line 382
    iget-object v0, p0, Lcom/sonymobile/lockscreen/settings/WallpaperChooserDialogFragment$WallpaperDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/sonymobile/lockscreen/settings/WallpaperChooserDialogFragment$WallpaperDrawable;->mIntrinsicHeight:I

    goto :goto_0
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 408
    return-void
.end method

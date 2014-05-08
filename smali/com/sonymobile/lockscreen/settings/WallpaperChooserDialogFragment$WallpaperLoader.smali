.class Lcom/sonymobile/lockscreen/settings/WallpaperChooserDialogFragment$WallpaperLoader;
.super Landroid/os/AsyncTask;
.source "WallpaperChooserDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/lockscreen/settings/WallpaperChooserDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WallpaperLoader"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field mOptions:Landroid/graphics/BitmapFactory$Options;

.field final synthetic this$0:Lcom/sonymobile/lockscreen/settings/WallpaperChooserDialogFragment;


# direct methods
.method constructor <init>(Lcom/sonymobile/lockscreen/settings/WallpaperChooserDialogFragment;)V
    .locals 2

    .prologue
    .line 319
    iput-object p1, p0, Lcom/sonymobile/lockscreen/settings/WallpaperChooserDialogFragment$WallpaperLoader;->this$0:Lcom/sonymobile/lockscreen/settings/WallpaperChooserDialogFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 320
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/lockscreen/settings/WallpaperChooserDialogFragment$WallpaperLoader;->mOptions:Landroid/graphics/BitmapFactory$Options;

    .line 321
    iget-object v0, p0, Lcom/sonymobile/lockscreen/settings/WallpaperChooserDialogFragment$WallpaperLoader;->mOptions:Landroid/graphics/BitmapFactory$Options;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 322
    iget-object v0, p0, Lcom/sonymobile/lockscreen/settings/WallpaperChooserDialogFragment$WallpaperLoader;->mOptions:Landroid/graphics/BitmapFactory$Options;

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 323
    return-void
.end method


# virtual methods
.method cancel()V
    .locals 1

    .prologue
    .line 361
    iget-object v0, p0, Lcom/sonymobile/lockscreen/settings/WallpaperChooserDialogFragment$WallpaperLoader;->mOptions:Landroid/graphics/BitmapFactory$Options;

    invoke-virtual {v0}, Landroid/graphics/BitmapFactory$Options;->requestCancelDecode()V

    .line 362
    const/4 v0, 0x1

    invoke-super {p0, v0}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 363
    return-void
.end method

.method protected varargs doInBackground([Ljava/lang/Integer;)Landroid/graphics/Bitmap;
    .locals 4
    .param p1, "params"    # [Ljava/lang/Integer;

    .prologue
    const/4 v2, 0x0

    .line 327
    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v2

    .line 331
    :goto_0
    return-object v1

    .line 329
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/sonymobile/lockscreen/settings/WallpaperChooserDialogFragment$WallpaperLoader;->this$0:Lcom/sonymobile/lockscreen/settings/WallpaperChooserDialogFragment;

    # getter for: Lcom/sonymobile/lockscreen/settings/WallpaperChooserDialogFragment;->mImages:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/sonymobile/lockscreen/settings/WallpaperChooserDialogFragment;->access$200(Lcom/sonymobile/lockscreen/settings/WallpaperChooserDialogFragment;)Ljava/util/ArrayList;

    move-result-object v1

    const/4 v3, 0x0

    aget-object v3, p1, v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v3, p0, Lcom/sonymobile/lockscreen/settings/WallpaperChooserDialogFragment$WallpaperLoader;->mOptions:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v1, v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 330
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/OutOfMemoryError;
    move-object v1, v2

    .line 331
    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 315
    check-cast p1, [Ljava/lang/Integer;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonymobile/lockscreen/settings/WallpaperChooserDialogFragment$WallpaperLoader;->doInBackground([Ljava/lang/Integer;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "b"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v2, 0x0

    .line 337
    if-nez p1, :cond_0

    .line 358
    :goto_0
    return-void

    .line 339
    :cond_0
    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/sonymobile/lockscreen/settings/WallpaperChooserDialogFragment$WallpaperLoader;->mOptions:Landroid/graphics/BitmapFactory$Options;

    iget-boolean v1, v1, Landroid/graphics/BitmapFactory$Options;->mCancel:Z

    if-nez v1, :cond_3

    .line 341
    iget-object v1, p0, Lcom/sonymobile/lockscreen/settings/WallpaperChooserDialogFragment$WallpaperLoader;->this$0:Lcom/sonymobile/lockscreen/settings/WallpaperChooserDialogFragment;

    # getter for: Lcom/sonymobile/lockscreen/settings/WallpaperChooserDialogFragment;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/sonymobile/lockscreen/settings/WallpaperChooserDialogFragment;->access$300(Lcom/sonymobile/lockscreen/settings/WallpaperChooserDialogFragment;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 342
    iget-object v1, p0, Lcom/sonymobile/lockscreen/settings/WallpaperChooserDialogFragment$WallpaperLoader;->this$0:Lcom/sonymobile/lockscreen/settings/WallpaperChooserDialogFragment;

    # getter for: Lcom/sonymobile/lockscreen/settings/WallpaperChooserDialogFragment;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/sonymobile/lockscreen/settings/WallpaperChooserDialogFragment;->access$300(Lcom/sonymobile/lockscreen/settings/WallpaperChooserDialogFragment;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 345
    :cond_1
    iget-object v1, p0, Lcom/sonymobile/lockscreen/settings/WallpaperChooserDialogFragment$WallpaperLoader;->this$0:Lcom/sonymobile/lockscreen/settings/WallpaperChooserDialogFragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    .line 346
    .local v0, "v":Landroid/view/View;
    if-eqz v0, :cond_2

    .line 347
    iget-object v1, p0, Lcom/sonymobile/lockscreen/settings/WallpaperChooserDialogFragment$WallpaperLoader;->this$0:Lcom/sonymobile/lockscreen/settings/WallpaperChooserDialogFragment;

    # setter for: Lcom/sonymobile/lockscreen/settings/WallpaperChooserDialogFragment;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v1, p1}, Lcom/sonymobile/lockscreen/settings/WallpaperChooserDialogFragment;->access$302(Lcom/sonymobile/lockscreen/settings/WallpaperChooserDialogFragment;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 348
    iget-object v1, p0, Lcom/sonymobile/lockscreen/settings/WallpaperChooserDialogFragment$WallpaperLoader;->this$0:Lcom/sonymobile/lockscreen/settings/WallpaperChooserDialogFragment;

    # getter for: Lcom/sonymobile/lockscreen/settings/WallpaperChooserDialogFragment;->mWallpaperDrawable:Lcom/sonymobile/lockscreen/settings/WallpaperChooserDialogFragment$WallpaperDrawable;
    invoke-static {v1}, Lcom/sonymobile/lockscreen/settings/WallpaperChooserDialogFragment;->access$400(Lcom/sonymobile/lockscreen/settings/WallpaperChooserDialogFragment;)Lcom/sonymobile/lockscreen/settings/WallpaperChooserDialogFragment$WallpaperDrawable;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sonymobile/lockscreen/settings/WallpaperChooserDialogFragment$WallpaperDrawable;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 349
    invoke-virtual {v0}, Landroid/view/View;->postInvalidate()V

    .line 354
    :goto_1
    iget-object v1, p0, Lcom/sonymobile/lockscreen/settings/WallpaperChooserDialogFragment$WallpaperLoader;->this$0:Lcom/sonymobile/lockscreen/settings/WallpaperChooserDialogFragment;

    # setter for: Lcom/sonymobile/lockscreen/settings/WallpaperChooserDialogFragment;->mLoader:Lcom/sonymobile/lockscreen/settings/WallpaperChooserDialogFragment$WallpaperLoader;
    invoke-static {v1, v2}, Lcom/sonymobile/lockscreen/settings/WallpaperChooserDialogFragment;->access$502(Lcom/sonymobile/lockscreen/settings/WallpaperChooserDialogFragment;Lcom/sonymobile/lockscreen/settings/WallpaperChooserDialogFragment$WallpaperLoader;)Lcom/sonymobile/lockscreen/settings/WallpaperChooserDialogFragment$WallpaperLoader;

    goto :goto_0

    .line 351
    :cond_2
    iget-object v1, p0, Lcom/sonymobile/lockscreen/settings/WallpaperChooserDialogFragment$WallpaperLoader;->this$0:Lcom/sonymobile/lockscreen/settings/WallpaperChooserDialogFragment;

    # setter for: Lcom/sonymobile/lockscreen/settings/WallpaperChooserDialogFragment;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v1, v2}, Lcom/sonymobile/lockscreen/settings/WallpaperChooserDialogFragment;->access$302(Lcom/sonymobile/lockscreen/settings/WallpaperChooserDialogFragment;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 352
    iget-object v1, p0, Lcom/sonymobile/lockscreen/settings/WallpaperChooserDialogFragment$WallpaperLoader;->this$0:Lcom/sonymobile/lockscreen/settings/WallpaperChooserDialogFragment;

    # getter for: Lcom/sonymobile/lockscreen/settings/WallpaperChooserDialogFragment;->mWallpaperDrawable:Lcom/sonymobile/lockscreen/settings/WallpaperChooserDialogFragment$WallpaperDrawable;
    invoke-static {v1}, Lcom/sonymobile/lockscreen/settings/WallpaperChooserDialogFragment;->access$400(Lcom/sonymobile/lockscreen/settings/WallpaperChooserDialogFragment;)Lcom/sonymobile/lockscreen/settings/WallpaperChooserDialogFragment$WallpaperDrawable;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/sonymobile/lockscreen/settings/WallpaperChooserDialogFragment$WallpaperDrawable;->setBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 356
    .end local v0    # "v":Landroid/view/View;
    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 315
    check-cast p1, Landroid/graphics/Bitmap;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonymobile/lockscreen/settings/WallpaperChooserDialogFragment$WallpaperLoader;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method

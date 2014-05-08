.class Lcom/sonymobile/lockscreen/settings/WallpaperChooserDialogFragment$ImageAdapter;
.super Landroid/widget/BaseAdapter;
.source "WallpaperChooserDialogFragment.java"

# interfaces
.implements Landroid/widget/ListAdapter;
.implements Landroid/widget/SpinnerAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/lockscreen/settings/WallpaperChooserDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImageAdapter"
.end annotation


# instance fields
.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/sonymobile/lockscreen/settings/WallpaperChooserDialogFragment;


# direct methods
.method constructor <init>(Lcom/sonymobile/lockscreen/settings/WallpaperChooserDialogFragment;Landroid/app/Activity;)V
    .locals 1
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 276
    iput-object p1, p0, Lcom/sonymobile/lockscreen/settings/WallpaperChooserDialogFragment$ImageAdapter;->this$0:Lcom/sonymobile/lockscreen/settings/WallpaperChooserDialogFragment;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 277
    invoke-virtual {p2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/lockscreen/settings/WallpaperChooserDialogFragment$ImageAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 278
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 281
    iget-object v0, p0, Lcom/sonymobile/lockscreen/settings/WallpaperChooserDialogFragment$ImageAdapter;->this$0:Lcom/sonymobile/lockscreen/settings/WallpaperChooserDialogFragment;

    # getter for: Lcom/sonymobile/lockscreen/settings/WallpaperChooserDialogFragment;->mThumbs:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/sonymobile/lockscreen/settings/WallpaperChooserDialogFragment;->access$100(Lcom/sonymobile/lockscreen/settings/WallpaperChooserDialogFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 285
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 289
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 295
    if-nez p2, :cond_0

    .line 296
    iget-object v4, p0, Lcom/sonymobile/lockscreen/settings/WallpaperChooserDialogFragment$ImageAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v5, 0x7f040005

    const/4 v6, 0x0

    invoke-virtual {v4, v5, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 301
    .local v3, "view":Landroid/view/View;
    :goto_0
    const v4, 0x7f0b000d

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 302
    .local v1, "image":Landroid/widget/ImageView;
    iget-object v4, p0, Lcom/sonymobile/lockscreen/settings/WallpaperChooserDialogFragment$ImageAdapter;->this$0:Lcom/sonymobile/lockscreen/settings/WallpaperChooserDialogFragment;

    # getter for: Lcom/sonymobile/lockscreen/settings/WallpaperChooserDialogFragment;->mThumbs:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/sonymobile/lockscreen/settings/WallpaperChooserDialogFragment;->access$100(Lcom/sonymobile/lockscreen/settings/WallpaperChooserDialogFragment;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 303
    .local v2, "thumbFile":Ljava/lang/String;
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 304
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_1

    .line 305
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 306
    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    .line 311
    :goto_1
    return-object v3

    .line 298
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "image":Landroid/widget/ImageView;
    .end local v2    # "thumbFile":Ljava/lang/String;
    .end local v3    # "view":Landroid/view/View;
    :cond_0
    move-object v3, p2

    .restart local v3    # "view":Landroid/view/View;
    goto :goto_0

    .line 308
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v1    # "image":Landroid/widget/ImageView;
    .restart local v2    # "thumbFile":Ljava/lang/String;
    :cond_1
    const-string v4, "WallpaperChooserDialogFragment"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error decoding thumbnail "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.class public Lcom/sonymobile/lockscreen/settings/WallpaperPickerGallery;
.super Landroid/app/Activity;
.source "WallpaperPickerGallery.java"


# static fields
.field private static final APPLICATION:Ljava/lang/String; = "com.sonyericsson.album"

.field private static final PICK_IMAGE:I = 0x1

.field public static final TEMP_WALLPAPER_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 32
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, ".tempLockScreenWallpaper"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/lockscreen/settings/WallpaperPickerGallery;->TEMP_WALLPAPER_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, -0x1

    .line 66
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 68
    packed-switch p1, :pswitch_data_0

    .line 83
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroid/app/Activity;->setResult(I)V

    .line 84
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 85
    :goto_0
    return-void

    .line 70
    :pswitch_0
    if-ne p2, v3, :cond_0

    .line 71
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 72
    .local v1, "uri":Landroid/net/Uri;
    if-eqz v1, :cond_0

    .line 73
    new-instance v0, Landroid/content/Intent;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 74
    .local v0, "data":Landroid/content/Intent;
    invoke-virtual {p0, v3, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 75
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 68
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x1

    .line 37
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 38
    invoke-virtual {p0, v6}, Landroid/app/Activity;->requestWindowFeature(I)Z

    .line 39
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    .line 40
    .local v3, "size":Landroid/graphics/Point;
    invoke-static {p0, v3}, Lcom/sonymobile/lockscreen/settings/WallpaperUtil;->getDesiredWallpaperDimensions(Landroid/content/Context;Landroid/graphics/Point;)V

    .line 41
    iget v5, v3, Landroid/graphics/Point;->x:I

    .line 42
    .local v5, "width":I
    iget v1, v3, Landroid/graphics/Point;->y:I

    .line 45
    .local v1, "height":I
    new-instance v2, Landroid/content/Intent;

    const-string v6, "android.intent.action.GET_CONTENT"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 46
    .local v2, "intent":Landroid/content/Intent;
    const-string v6, "com.sonyericsson.album"

    invoke-virtual {v2, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 47
    const-string v6, "image/*"

    invoke-virtual {v2, v6}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 48
    const-string v6, "crop"

    const-string v7, "true"

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 49
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const/high16 v7, 0x7f060000

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    .line 51
    .local v4, "supportsLandscape":Z
    sget-object v6, Lcom/sonymobile/lockscreen/settings/WallpaperPickerGallery;->TEMP_WALLPAPER_URI:Landroid/net/Uri;

    invoke-static {v2, v5, v1, v4, v6}, Lcom/sonymobile/lockscreen/settings/WallpaperUtil;->setCropExtras(Landroid/content/Intent;IIZLandroid/net/Uri;)V

    .line 57
    const/4 v6, 0x1

    :try_start_0
    invoke-virtual {p0, v2, v6}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    :goto_0
    return-void

    .line 58
    :catch_0
    move-exception v0

    .line 59
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Landroid/app/Activity;->setResult(I)V

    .line 60
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

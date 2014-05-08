.class public Lcom/sonymobile/lockscreen/settings/WallpaperChooserDialogFragment;
.super Landroid/app/DialogFragment;
.source "WallpaperChooserDialogFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/lockscreen/settings/WallpaperChooserDialogFragment$WallpaperDrawable;,
        Lcom/sonymobile/lockscreen/settings/WallpaperChooserDialogFragment$WallpaperLoader;,
        Lcom/sonymobile/lockscreen/settings/WallpaperChooserDialogFragment$ImageAdapter;
    }
.end annotation


# static fields
.field private static final EMBEDDED_KEY:Ljava/lang/String; = "com.sonyericsson.wallpaperpicker.WallpaperChooserDialogFragment.EMBEDDED_KEY"

.field private static final IMAGE_EXTENSIONS:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "WallpaperChooserDialogFragment"

.field private static final THUMBNAIL_SUFFIX:Ljava/lang/String; = "_small"

.field private static final WALLPAPER_PATH:Ljava/lang/String; = "/etc/customization/content/com/sonyericsson/wallpaperpicker/wallpapers/"


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mEmbedded:Z

.field private mImages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mIsWallpaperSet:Z

.field private mLoader:Lcom/sonymobile/lockscreen/settings/WallpaperChooserDialogFragment$WallpaperLoader;

.field private mThumbs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mWallpaperDrawable:Lcom/sonymobile/lockscreen/settings/WallpaperChooserDialogFragment$WallpaperDrawable;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 67
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "jpg"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "jpeg"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "png"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sonymobile/lockscreen/settings/WallpaperChooserDialogFragment;->IMAGE_EXTENSIONS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 71
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/lockscreen/settings/WallpaperChooserDialogFragment;->mBitmap:Landroid/graphics/Bitmap;

    .line 79
    new-instance v0, Lcom/sonymobile/lockscreen/settings/WallpaperChooserDialogFragment$WallpaperDrawable;

    invoke-direct {v0}, Lcom/sonymobile/lockscreen/settings/WallpaperChooserDialogFragment$WallpaperDrawable;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/lockscreen/settings/WallpaperChooserDialogFragment;->mWallpaperDrawable:Lcom/sonymobile/lockscreen/settings/WallpaperChooserDialogFragment$WallpaperDrawable;

    .line 369
    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/lockscreen/settings/WallpaperChooserDialogFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/lockscreen/settings/WallpaperChooserDialogFragment;
    .param p1, "x1"    # I

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/sonymobile/lockscreen/settings/WallpaperChooserDialogFragment;->selectWallpaper(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/sonymobile/lockscreen/settings/WallpaperChooserDialogFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/lockscreen/settings/WallpaperChooserDialogFragment;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/sonymobile/lockscreen/settings/WallpaperChooserDialogFragment;->mThumbs:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sonymobile/lockscreen/settings/WallpaperChooserDialogFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/lockscreen/settings/WallpaperChooserDialogFragment;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/sonymobile/lockscreen/settings/WallpaperChooserDialogFragment;->mImages:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sonymobile/lockscreen/settings/WallpaperChooserDialogFragment;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/lockscreen/settings/WallpaperChooserDialogFragment;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/sonymobile/lockscreen/settings/WallpaperChooserDialogFragment;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$302(Lcom/sonymobile/lockscreen/settings/WallpaperChooserDialogFragment;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/lockscreen/settings/WallpaperChooserDialogFragment;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/sonymobile/lockscreen/settings/WallpaperChooserDialogFragment;->mBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$400(Lcom/sonymobile/lockscreen/settings/WallpaperChooserDialogFragment;)Lcom/sonymobile/lockscreen/settings/WallpaperChooserDialogFragment$WallpaperDrawable;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/lockscreen/settings/WallpaperChooserDialogFragment;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/sonymobile/lockscreen/settings/WallpaperChooserDialogFragment;->mWallpaperDrawable:Lcom/sonymobile/lockscreen/settings/WallpaperChooserDialogFragment$WallpaperDrawable;

    return-object v0
.end method

.method static synthetic access$502(Lcom/sonymobile/lockscreen/settings/WallpaperChooserDialogFragment;Lcom/sonymobile/lockscreen/settings/WallpaperChooserDialogFragment$WallpaperLoader;)Lcom/sonymobile/lockscreen/settings/WallpaperChooserDialogFragment$WallpaperLoader;
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/lockscreen/settings/WallpaperChooserDialogFragment;
    .param p1, "x1"    # Lcom/sonymobile/lockscreen/settings/WallpaperChooserDialogFragment$WallpaperLoader;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/sonymobile/lockscreen/settings/WallpaperChooserDialogFragment;->mLoader:Lcom/sonymobile/lockscreen/settings/WallpaperChooserDialogFragment$WallpaperLoader;

    return-object p1
.end method

.method private cancelLoader()V
    .locals 2

    .prologue
    .line 105
    iget-object v0, p0, Lcom/sonymobile/lockscreen/settings/WallpaperChooserDialogFragment;->mLoader:Lcom/sonymobile/lockscreen/settings/WallpaperChooserDialogFragment$WallpaperLoader;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/lockscreen/settings/WallpaperChooserDialogFragment;->mLoader:Lcom/sonymobile/lockscreen/settings/WallpaperChooserDialogFragment$WallpaperLoader;

    invoke-virtual {v0}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_0

    .line 106
    iget-object v0, p0, Lcom/sonymobile/lockscreen/settings/WallpaperChooserDialogFragment;->mLoader:Lcom/sonymobile/lockscreen/settings/WallpaperChooserDialogFragment$WallpaperLoader;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 107
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/lockscreen/settings/WallpaperChooserDialogFragment;->mLoader:Lcom/sonymobile/lockscreen/settings/WallpaperChooserDialogFragment$WallpaperLoader;

    .line 109
    :cond_0
    return-void
.end method

.method private fileExists([Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p1, "fileList"    # [Ljava/lang/String;
    .param p2, "fileName"    # Ljava/lang/String;

    .prologue
    .line 254
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v2, v0, v1

    .line 255
    .local v2, "iFileName":Ljava/lang/String;
    invoke-virtual {v2, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 256
    const/4 v4, 0x1

    .line 259
    .end local v2    # "iFileName":Ljava/lang/String;
    :goto_1
    return v4

    .line 254
    .restart local v2    # "iFileName":Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 259
    .end local v2    # "iFileName":Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private findWallpapers()V
    .locals 11

    .prologue
    .line 215
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lcom/sonymobile/lockscreen/settings/WallpaperChooserDialogFragment;->mThumbs:Ljava/util/ArrayList;

    .line 216
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lcom/sonymobile/lockscreen/settings/WallpaperChooserDialogFragment;->mImages:Ljava/util/ArrayList;

    .line 218
    new-instance v8, Ljava/io/File;

    const-string v9, "/etc/customization/content/com/sonyericsson/wallpaperpicker/wallpapers/"

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 220
    .local v8, "wallpaperDir":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->isDirectory()Z

    move-result v9

    if-nez v9, :cond_1

    .line 221
    const-string v9, "WallpaperChooserDialogFragment"

    const-string v10, "/etc/customization/content/com/sonyericsson/wallpaperpicker/wallpapers/ is not a valid directory!"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    :cond_0
    return-void

    .line 225
    :cond_1
    invoke-virtual {v8}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    .line 227
    .local v1, "fileList":[Ljava/lang/String;
    move-object v0, v1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v6, :cond_0

    aget-object v2, v0, v3

    .line 228
    .local v2, "fileName":Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/sonymobile/lockscreen/settings/WallpaperChooserDialogFragment;->isThumbFile(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 229
    invoke-direct {p0, v2}, Lcom/sonymobile/lockscreen/settings/WallpaperChooserDialogFragment;->getImageFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 230
    .local v4, "imageFileName":Ljava/lang/String;
    invoke-direct {p0, v1, v4}, Lcom/sonymobile/lockscreen/settings/WallpaperChooserDialogFragment;->fileExists([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 231
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 232
    .local v7, "thumbPath":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 233
    .local v5, "imagePath":Ljava/lang/String;
    iget-object v9, p0, Lcom/sonymobile/lockscreen/settings/WallpaperChooserDialogFragment;->mThumbs:Ljava/util/ArrayList;

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 234
    iget-object v9, p0, Lcom/sonymobile/lockscreen/settings/WallpaperChooserDialogFragment;->mImages:Ljava/util/ArrayList;

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 227
    .end local v4    # "imageFileName":Ljava/lang/String;
    .end local v5    # "imagePath":Ljava/lang/String;
    .end local v7    # "thumbPath":Ljava/lang/String;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private getImageFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "thumbFileName"    # Ljava/lang/String;

    .prologue
    .line 263
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "_small"

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 264
    .local v0, "sufIndex":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 265
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_small"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 269
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isThumbFile(Ljava/lang/String;)Z
    .locals 6
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 243
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 244
    sget-object v0, Lcom/sonymobile/lockscreen/settings/WallpaperChooserDialogFragment;->IMAGE_EXTENSIONS:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 245
    .local v1, "extension":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_small."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 246
    const/4 v4, 0x1

    .line 250
    .end local v1    # "extension":Ljava/lang/String;
    :goto_1
    return v4

    .line 244
    .restart local v1    # "extension":Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 250
    .end local v1    # "extension":Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public static newInstance()Lcom/sonymobile/lockscreen/settings/WallpaperChooserDialogFragment;
    .locals 2

    .prologue
    .line 84
    new-instance v0, Lcom/sonymobile/lockscreen/settings/WallpaperChooserDialogFragment;

    invoke-direct {v0}, Lcom/sonymobile/lockscreen/settings/WallpaperChooserDialogFragment;-><init>()V

    .line 85
    .local v0, "fragment":Lcom/sonymobile/lockscreen/settings/WallpaperChooserDialogFragment;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/DialogFragment;->setCancelable(Z)V

    .line 86
    return-object v0
.end method

.method private selectWallpaper(I)V
    .locals 5
    .param p1, "position"    # I

    .prologue
    .line 184
    iget-boolean v2, p0, Lcom/sonymobile/lockscreen/settings/WallpaperChooserDialogFragment;->mIsWallpaperSet:Z

    if-nez v2, :cond_0

    if-ltz p1, :cond_0

    iget-object v2, p0, Lcom/sonymobile/lockscreen/settings/WallpaperChooserDialogFragment;->mImages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt p1, v2, :cond_1

    .line 193
    :cond_0
    :goto_0
    return-void

    .line 187
    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sonymobile/lockscreen/settings/WallpaperChooserDialogFragment;->mIsWallpaperSet:Z

    .line 188
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.sonyericsson.lockscreen.settings.PICK_WALLPAPER"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "file://"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, p0, Lcom/sonymobile/lockscreen/settings/WallpaperChooserDialogFragment;->mImages:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v1, v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 190
    .local v1, "data":Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 191
    .local v0, "activity":Landroid/app/Activity;
    const/4 v2, -0x1

    invoke-virtual {v0, v2, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 192
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 91
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 92
    if-eqz p1, :cond_0

    const-string v0, "com.sonyericsson.wallpaperpicker.WallpaperChooserDialogFragment.EMBEDDED_KEY"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    const-string v0, "com.sonyericsson.wallpaperpicker.WallpaperChooserDialogFragment.EMBEDDED_KEY"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonymobile/lockscreen/settings/WallpaperChooserDialogFragment;->mEmbedded:Z

    .line 97
    :goto_0
    return-void

    .line 95
    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->isInLayout()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonymobile/lockscreen/settings/WallpaperChooserDialogFragment;->mEmbedded:Z

    goto :goto_0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 149
    invoke-direct {p0}, Lcom/sonymobile/lockscreen/settings/WallpaperChooserDialogFragment;->findWallpapers()V

    .line 150
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 156
    invoke-direct {p0}, Lcom/sonymobile/lockscreen/settings/WallpaperChooserDialogFragment;->findWallpapers()V

    .line 162
    iget-boolean v3, p0, Lcom/sonymobile/lockscreen/settings/WallpaperChooserDialogFragment;->mEmbedded:Z

    if-eqz v3, :cond_0

    .line 163
    const v3, 0x7f040003

    invoke-virtual {p1, v3, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 164
    .local v2, "view":Landroid/view/View;
    iget-object v3, p0, Lcom/sonymobile/lockscreen/settings/WallpaperChooserDialogFragment;->mWallpaperDrawable:Lcom/sonymobile/lockscreen/settings/WallpaperChooserDialogFragment$WallpaperDrawable;

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 166
    const v3, 0x7f0b000a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Gallery;

    .line 167
    .local v0, "gallery":Landroid/widget/Gallery;
    invoke-virtual {v0, v4}, Landroid/widget/Gallery;->setCallbackDuringFling(Z)V

    .line 168
    invoke-virtual {v0, p0}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 169
    new-instance v3, Lcom/sonymobile/lockscreen/settings/WallpaperChooserDialogFragment$ImageAdapter;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/sonymobile/lockscreen/settings/WallpaperChooserDialogFragment$ImageAdapter;-><init>(Lcom/sonymobile/lockscreen/settings/WallpaperChooserDialogFragment;Landroid/app/Activity;)V

    invoke-virtual {v0, v3}, Landroid/widget/AbsSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 171
    const v3, 0x7f0b000b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 172
    .local v1, "setButton":Landroid/view/View;
    new-instance v3, Lcom/sonymobile/lockscreen/settings/WallpaperChooserDialogFragment$1;

    invoke-direct {v3, p0, v0}, Lcom/sonymobile/lockscreen/settings/WallpaperChooserDialogFragment$1;-><init>(Lcom/sonymobile/lockscreen/settings/WallpaperChooserDialogFragment;Landroid/widget/Gallery;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 180
    .end local v0    # "gallery":Landroid/widget/Gallery;
    .end local v1    # "setButton":Landroid/view/View;
    .end local v2    # "view":Landroid/view/View;
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 120
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 122
    invoke-direct {p0}, Lcom/sonymobile/lockscreen/settings/WallpaperChooserDialogFragment;->cancelLoader()V

    .line 123
    return-void
.end method

.method public onDetach()V
    .locals 0

    .prologue
    .line 113
    invoke-super {p0}, Landroid/app/DialogFragment;->onDetach()V

    .line 115
    invoke-direct {p0}, Lcom/sonymobile/lockscreen/settings/WallpaperChooserDialogFragment;->cancelLoader()V

    .line 116
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 133
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 138
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 139
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 140
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 142
    :cond_0
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 198
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-direct {p0, p3}, Lcom/sonymobile/lockscreen/settings/WallpaperChooserDialogFragment;->selectWallpaper(I)V

    .line 199
    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 204
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/sonymobile/lockscreen/settings/WallpaperChooserDialogFragment;->mLoader:Lcom/sonymobile/lockscreen/settings/WallpaperChooserDialogFragment$WallpaperLoader;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/lockscreen/settings/WallpaperChooserDialogFragment;->mLoader:Lcom/sonymobile/lockscreen/settings/WallpaperChooserDialogFragment$WallpaperLoader;

    invoke-virtual {v0}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_0

    .line 205
    iget-object v0, p0, Lcom/sonymobile/lockscreen/settings/WallpaperChooserDialogFragment;->mLoader:Lcom/sonymobile/lockscreen/settings/WallpaperChooserDialogFragment$WallpaperLoader;

    invoke-virtual {v0}, Lcom/sonymobile/lockscreen/settings/WallpaperChooserDialogFragment$WallpaperLoader;->cancel()V

    .line 207
    :cond_0
    new-instance v0, Lcom/sonymobile/lockscreen/settings/WallpaperChooserDialogFragment$WallpaperLoader;

    invoke-direct {v0, p0}, Lcom/sonymobile/lockscreen/settings/WallpaperChooserDialogFragment$WallpaperLoader;-><init>(Lcom/sonymobile/lockscreen/settings/WallpaperChooserDialogFragment;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Integer;

    const/4 v2, 0x0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/lockscreen/settings/WallpaperChooserDialogFragment$WallpaperLoader;

    iput-object v0, p0, Lcom/sonymobile/lockscreen/settings/WallpaperChooserDialogFragment;->mLoader:Lcom/sonymobile/lockscreen/settings/WallpaperChooserDialogFragment$WallpaperLoader;

    .line 208
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 212
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 127
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 128
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/lockscreen/settings/WallpaperChooserDialogFragment;->mIsWallpaperSet:Z

    .line 129
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 101
    const-string v0, "com.sonyericsson.wallpaperpicker.WallpaperChooserDialogFragment.EMBEDDED_KEY"

    iget-boolean v1, p0, Lcom/sonymobile/lockscreen/settings/WallpaperChooserDialogFragment;->mEmbedded:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 102
    return-void
.end method

.class public Lcom/sonymobile/lockscreen/settings/Setup;
.super Landroid/app/Activity;
.source "Setup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/lockscreen/settings/Setup$1;,
        Lcom/sonymobile/lockscreen/settings/Setup$RealOwnerInfoHelper;,
        Lcom/sonymobile/lockscreen/settings/Setup$RotateableWallpaperTask;
    }
.end annotation


# static fields
.field private static final DURATION_SETTING_WALLPAPER_DIALOG_MILLIS:J = 0x3e8L

.field private static final IMAGE_CROP_CODE:I = 0xc8

.field private static final IMAGE_REQUEST_CODE:I = 0x64

.field private static final INTENT_CROP_IMAGE_ACTION:Ljava/lang/String; = "com.android.camera.action.CROP"

.field public static final INTENT_LOCKSCREEN_SETTING_PICK_WALLPAPER:Ljava/lang/String; = "com.sonyericsson.lockscreen.settings.PICK_WALLPAPER"

.field private static final START_INTENT_FROM_SETTINGS:Ljava/lang/String; = "com.sonyericsson.settings.intent.action.LOCKSCREEN"


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private final mOwnerInfoHelper:Lcom/sonymobile/lockscreen/settings/OwnerInfoHelper;

.field private mWallpaperTask:Lcom/sonymobile/lockscreen/settings/Setup$RotateableWallpaperTask;

.field private mWallpaperTaskDialog:Landroid/app/ProgressDialog;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 63
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 64
    new-instance v0, Lcom/sonymobile/lockscreen/settings/Setup$RealOwnerInfoHelper;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sonymobile/lockscreen/settings/Setup$RealOwnerInfoHelper;-><init>(Lcom/sonymobile/lockscreen/settings/Setup$1;)V

    iput-object v0, p0, Lcom/sonymobile/lockscreen/settings/Setup;->mOwnerInfoHelper:Lcom/sonymobile/lockscreen/settings/OwnerInfoHelper;

    .line 65
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/lockscreen/settings/Setup;->mHandler:Landroid/os/Handler;

    .line 66
    return-void
.end method

.method protected constructor <init>(Lcom/sonymobile/lockscreen/settings/OwnerInfoHelper;)V
    .locals 1
    .param p1, "ownerInfoHelper"    # Lcom/sonymobile/lockscreen/settings/OwnerInfoHelper;

    .prologue
    .line 54
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/sonymobile/lockscreen/settings/Setup;->mOwnerInfoHelper:Lcom/sonymobile/lockscreen/settings/OwnerInfoHelper;

    .line 56
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/lockscreen/settings/Setup;->mHandler:Landroid/os/Handler;

    .line 57
    return-void
.end method

.method static synthetic access$200(Lcom/sonymobile/lockscreen/settings/Setup;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/lockscreen/settings/Setup;

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/sonymobile/lockscreen/settings/Setup;->dismissWallpaperTaskDialog()V

    return-void
.end method

.method static synthetic access$300(Lcom/sonymobile/lockscreen/settings/Setup;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/lockscreen/settings/Setup;
    .param p1, "x1"    # I

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/sonymobile/lockscreen/settings/Setup;->finishWithResult(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/sonymobile/lockscreen/settings/Setup;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/lockscreen/settings/Setup;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/sonymobile/lockscreen/settings/Setup;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private dismissWallpaperTaskDialog()V
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lcom/sonymobile/lockscreen/settings/Setup;->mWallpaperTaskDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 246
    iget-object v0, p0, Lcom/sonymobile/lockscreen/settings/Setup;->mWallpaperTaskDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 247
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/lockscreen/settings/Setup;->mWallpaperTaskDialog:Landroid/app/ProgressDialog;

    .line 249
    :cond_0
    return-void
.end method

.method private finishWithResult(I)V
    .locals 0
    .param p1, "res"    # I

    .prologue
    .line 252
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    .line 253
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 254
    return-void
.end method

.method private handleCorrectlySizedImage(Landroid/net/Uri;)V
    .locals 5
    .param p1, "image"    # Landroid/net/Uri;

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 188
    if-eqz p1, :cond_0

    .line 189
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 190
    .local v0, "size":Landroid/graphics/Point;
    invoke-static {p0, v0}, Lcom/sonymobile/lockscreen/settings/WallpaperUtil;->getDesiredWallpaperDimensions(Landroid/content/Context;Landroid/graphics/Point;)V

    .line 192
    new-instance v1, Lcom/sonymobile/lockscreen/settings/Setup$RotateableWallpaperTask;

    invoke-direct {v1, p0, v2}, Lcom/sonymobile/lockscreen/settings/Setup$RotateableWallpaperTask;-><init>(Lcom/sonymobile/lockscreen/settings/Setup;Lcom/sonymobile/lockscreen/settings/Setup$1;)V

    iput-object v1, p0, Lcom/sonymobile/lockscreen/settings/Setup;->mWallpaperTask:Lcom/sonymobile/lockscreen/settings/Setup$RotateableWallpaperTask;

    .line 193
    const v1, 0x7f090004

    invoke-virtual {p0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {p0, v2, v1, v4, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/sonymobile/lockscreen/settings/Setup;->mWallpaperTaskDialog:Landroid/app/ProgressDialog;

    .line 197
    iget-object v1, p0, Lcom/sonymobile/lockscreen/settings/Setup;->mWallpaperTask:Lcom/sonymobile/lockscreen/settings/Setup$RotateableWallpaperTask;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    iget v3, v0, Landroid/graphics/Point;->x:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    const/4 v3, 0x2

    iget v4, v0, Landroid/graphics/Point;->y:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 202
    .end local v0    # "size":Landroid/graphics/Point;
    :goto_0
    return-void

    .line 200
    :cond_0
    invoke-direct {p0, v3}, Lcom/sonymobile/lockscreen/settings/Setup;->finishWithResult(I)V

    goto :goto_0
.end method


# virtual methods
.method protected launchCropper(Landroid/net/Uri;Ljava/lang/String;IIZ)V
    .locals 4
    .param p1, "imageUri"    # Landroid/net/Uri;
    .param p2, "mimeType"    # Ljava/lang/String;
    .param p3, "desiredWidth"    # I
    .param p4, "desiredHeight"    # I
    .param p5, "shouldBeSquare"    # Z

    .prologue
    .line 111
    if-eqz p1, :cond_2

    .line 118
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 120
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/webkit/MimeTypeMap;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 123
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 125
    const/4 p2, 0x0

    .line 128
    :cond_1
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v2, p1, p2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 130
    .local v0, "cropIntent":Landroid/content/Intent;
    sget-object v2, Lcom/sonymobile/lockscreen/settings/WallpaperPickerGallery;->TEMP_WALLPAPER_URI:Landroid/net/Uri;

    invoke-static {v0, p3, p4, p5, v2}, Lcom/sonymobile/lockscreen/settings/WallpaperUtil;->setCropExtras(Landroid/content/Intent;IIZLandroid/net/Uri;)V

    .line 132
    const-string v2, "com.android.camera.action.CROP"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 134
    const/4 v1, 0x0

    .line 136
    .local v1, "launchedCropper":Z
    const/16 v2, 0xc8

    :try_start_0
    invoke-virtual {p0, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    const/4 v1, 0x1

    .line 141
    :goto_0
    if-nez v1, :cond_2

    .line 142
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/sonymobile/lockscreen/settings/Setup;->finishWithResult(I)V

    .line 145
    .end local v0    # "cropIntent":Landroid/content/Intent;
    .end local v1    # "launchedCropper":Z
    :cond_2
    return-void

    .line 138
    .restart local v0    # "cropIntent":Landroid/content/Intent;
    .restart local v1    # "launchedCropper":Z
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method protected launchPicker(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 153
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sonyericsson.lockscreen.settings.PICK_WALLPAPER"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 154
    .local v1, "pickWallpaper":Landroid/content/Intent;
    const v2, 0x7f090006

    invoke-virtual {p1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    .line 156
    .local v0, "chooser":Landroid/content/Intent;
    const/16 v2, 0x64

    invoke-virtual {p0, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 157
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x0

    .line 161
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 163
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 164
    invoke-direct {p0, v1}, Lcom/sonymobile/lockscreen/settings/Setup;->finishWithResult(I)V

    .line 180
    :goto_0
    return-void

    .line 167
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 176
    invoke-direct {p0, v1}, Lcom/sonymobile/lockscreen/settings/Setup;->finishWithResult(I)V

    goto :goto_0

    .line 169
    :sswitch_0
    sget-object v0, Lcom/sonymobile/lockscreen/settings/WallpaperPickerGallery;->TEMP_WALLPAPER_URI:Landroid/net/Uri;

    invoke-direct {p0, v0}, Lcom/sonymobile/lockscreen/settings/Setup;->handleCorrectlySizedImage(Landroid/net/Uri;)V

    goto :goto_0

    .line 172
    :sswitch_1
    if-eqz p3, :cond_1

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    :goto_1
    invoke-direct {p0, v0}, Lcom/sonymobile/lockscreen/settings/Setup;->handleCorrectlySizedImage(Landroid/net/Uri;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 167
    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_1
        0xc8 -> :sswitch_0
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x0

    .line 70
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 72
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    .line 73
    .local v8, "startIntent":Landroid/content/Intent;
    if-eqz v8, :cond_1

    invoke-virtual {v8}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    .line 74
    .local v6, "action":Ljava/lang/String;
    :goto_0
    if-eqz v8, :cond_0

    invoke-virtual {v8}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 75
    .local v1, "data":Landroid/net/Uri;
    :cond_0
    const-string v0, "com.sonyericsson.settings.intent.action.LOCKSCREEN"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 76
    invoke-virtual {p0, p0}, Lcom/sonymobile/lockscreen/settings/Setup;->launchPicker(Landroid/content/Context;)V

    .line 87
    :goto_1
    return-void

    .end local v1    # "data":Landroid/net/Uri;
    .end local v6    # "action":Ljava/lang/String;
    :cond_1
    move-object v6, v1

    .line 73
    goto :goto_0

    .line 77
    .restart local v1    # "data":Landroid/net/Uri;
    .restart local v6    # "action":Ljava/lang/String;
    :cond_2
    const-string v0, "android.intent.action.ATTACH_DATA"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    .line 78
    new-instance v7, Landroid/graphics/Point;

    invoke-direct {v7}, Landroid/graphics/Point;-><init>()V

    .line 79
    .local v7, "size":Landroid/graphics/Point;
    invoke-static {p0, v7}, Lcom/sonymobile/lockscreen/settings/WallpaperUtil;->getDesiredWallpaperDimensions(Landroid/content/Context;Landroid/graphics/Point;)V

    .line 80
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v3, 0x7f060000

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    .line 81
    .local v5, "supportsLandscape":Z
    invoke-virtual {v8}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v2

    .line 82
    .local v2, "mimeType":Ljava/lang/String;
    iget v3, v7, Landroid/graphics/Point;->x:I

    iget v4, v7, Landroid/graphics/Point;->y:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/sonymobile/lockscreen/settings/Setup;->launchCropper(Landroid/net/Uri;Ljava/lang/String;IIZ)V

    goto :goto_1

    .line 85
    .end local v2    # "mimeType":Ljava/lang/String;
    .end local v5    # "supportsLandscape":Z
    .end local v7    # "size":Landroid/graphics/Point;
    :cond_3
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sonymobile/lockscreen/settings/Setup;->finishWithResult(I)V

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 237
    iget-object v0, p0, Lcom/sonymobile/lockscreen/settings/Setup;->mWallpaperTask:Lcom/sonymobile/lockscreen/settings/Setup$RotateableWallpaperTask;

    if-eqz v0, :cond_0

    .line 238
    iget-object v0, p0, Lcom/sonymobile/lockscreen/settings/Setup;->mWallpaperTask:Lcom/sonymobile/lockscreen/settings/Setup$RotateableWallpaperTask;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 240
    :cond_0
    invoke-direct {p0}, Lcom/sonymobile/lockscreen/settings/Setup;->dismissWallpaperTaskDialog()V

    .line 241
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 242
    return-void
.end method

.class public interface abstract Lcom/sonymobile/lockscreen/wallpaper/WallpaperContract;
.super Ljava/lang/Object;
.source "WallpaperContract.java"


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "com.sonymobile.lockscreen.xperia.wallpaperprovider"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final NEW_WALLPAPER_URI:Ljava/lang/String; = "new_wallpaper_uri"

.field public static final SIDE_LENGTH:Ljava/lang/String; = "sideLength"

.field public static final WALLPAPER_DIRECTORY:Ljava/lang/String; = "wallpaper"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 59
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "content"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "com.sonymobile.lockscreen.xperia.wallpaperprovider"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "wallpaper"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/lockscreen/wallpaper/WallpaperContract;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

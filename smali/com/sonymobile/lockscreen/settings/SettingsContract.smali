.class public interface abstract Lcom/sonymobile/lockscreen/settings/SettingsContract;
.super Ljava/lang/Object;
.source "SettingsContract.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "com.sonyericsson.lockscreen.uxpnxt.settingsprovider"

.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/settings"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/settings"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final NAME_KEY:Ljava/lang/String; = "name"

.field public static final SETTINGS_CONTENT_DIR:Ljava/lang/String; = "settings"

.field public static final VALUE_KEY:Ljava/lang/String; = "value"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 43
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "content"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "com.sonyericsson.lockscreen.uxpnxt.settingsprovider"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "settings"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/lockscreen/settings/SettingsContract;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.class public final Lcom/sonyericsson/lockscreen/uxpnxt/Manifest$permission;
.super Ljava/lang/Object;
.source "Manifest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/lockscreen/uxpnxt/Manifest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "permission"
.end annotation


# static fields
.field public static final READ_LOCKSCREEN_WALLPAPER:Ljava/lang/String; = "com.sonymobile.permission.READ_LOCKSCREEN_WALLPAPER"

.field public static final SET_LOCKSCREEN_WALLPAPER:Ljava/lang/String; = "com.sonymobile.permission.SET_LOCKSCREEN_WALLPAPER"

.field public static final WRITE_LOCKSCREEN_WALLPAPER:Ljava/lang/String; = "com.sonymobile.permission.WRITE_LOCKSCREEN_WALLPAPER"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

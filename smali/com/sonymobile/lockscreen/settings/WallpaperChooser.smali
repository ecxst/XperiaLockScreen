.class public Lcom/sonymobile/lockscreen/settings/WallpaperChooser;
.super Landroid/app/Activity;
.source "WallpaperChooser.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 31
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 32
    const v0, 0x7f040004

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    .line 33
    return-void
.end method

.class public Lcom/sonymobile/lockscreen/xperia/XperiaKeyguardComponentFactory;
.super Lcom/sonymobile/lockscreen/environment/KeyguardComponentFactory;
.source "XperiaKeyguardComponentFactory.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final PS4_WALLPAPER_PACKAGE_NAME:Ljava/lang/String; = "com.sonymobile.experienceflow2"

.field private static mUserSwitch:Lcom/sonymobile/lockscreen/wallpaper/UserSwitch;

.field private static mWallpaperEvents:Lcom/sonymobile/lockscreen/wallpaper/WallpaperEvents;


# instance fields
.field private mBackgroundView:Lcom/sonymobile/lockscreen/xperia/XperiaKeyguardBackground;

.field private mNoSecurityView:Lcom/sonymobile/lockscreen/xperia/XperiaKeyguardNoSecurityView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/sonymobile/lockscreen/environment/KeyguardComponentFactory;-><init>()V

    return-void
.end method

.method public static setUserSwitch(Lcom/sonymobile/lockscreen/wallpaper/UserSwitch;)V
    .locals 0
    .param p0, "userSwitch"    # Lcom/sonymobile/lockscreen/wallpaper/UserSwitch;

    .prologue
    .line 122
    sput-object p0, Lcom/sonymobile/lockscreen/xperia/XperiaKeyguardComponentFactory;->mUserSwitch:Lcom/sonymobile/lockscreen/wallpaper/UserSwitch;

    .line 123
    return-void
.end method

.method public static setWallpaperEvents(Lcom/sonymobile/lockscreen/wallpaper/WallpaperEvents;)V
    .locals 0
    .param p0, "events"    # Lcom/sonymobile/lockscreen/wallpaper/WallpaperEvents;

    .prologue
    .line 113
    sput-object p0, Lcom/sonymobile/lockscreen/xperia/XperiaKeyguardComponentFactory;->mWallpaperEvents:Lcom/sonymobile/lockscreen/wallpaper/WallpaperEvents;

    .line 114
    return-void
.end method


# virtual methods
.method public createBackground(Landroid/content/Context;Lcom/sonymobile/lockscreen/environment/KeyguardComponentEnvironment;)Lcom/sonymobile/lockscreen/environment/KeyguardBackground;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "keyguardComponentEnvironment"    # Lcom/sonymobile/lockscreen/environment/KeyguardComponentEnvironment;

    .prologue
    .line 53
    iget-object v2, p0, Lcom/sonymobile/lockscreen/xperia/XperiaKeyguardComponentFactory;->mBackgroundView:Lcom/sonymobile/lockscreen/xperia/XperiaKeyguardBackground;

    if-nez v2, :cond_2

    .line 57
    new-instance v1, Lcom/sonymobile/lockscreen/xperia/UnlockStrategy;

    new-instance v2, Lcom/sonymobile/lockscreen/xperia/UnlockStrategySettings;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/sonymobile/lockscreen/xperia/UnlockStrategySettings;-><init>(Landroid/content/res/Resources;)V

    invoke-direct {v1, v2}, Lcom/sonymobile/lockscreen/xperia/UnlockStrategy;-><init>(Lcom/sonymobile/lockscreen/xperia/UnlockStrategySettings;)V

    .line 60
    .local v1, "unlockStrategy":Lcom/sonymobile/lockscreen/xperia/UnlockStrategy;
    const v2, 0x7f040001

    const/4 v3, 0x0

    invoke-static {p1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/lockscreen/xperia/XperiaKeyguardBackground;

    iput-object v2, p0, Lcom/sonymobile/lockscreen/xperia/XperiaKeyguardComponentFactory;->mBackgroundView:Lcom/sonymobile/lockscreen/xperia/XperiaKeyguardBackground;

    .line 63
    sget-object v2, Lcom/sonymobile/lockscreen/xperia/XperiaKeyguardComponentFactory;->mWallpaperEvents:Lcom/sonymobile/lockscreen/wallpaper/WallpaperEvents;

    if-nez v2, :cond_0

    .line 64
    new-instance v2, Lcom/sonymobile/lockscreen/wallpaper/RealWallpaperEvents;

    const-string v3, "com.sonymobile.experienceflow2"

    invoke-direct {v2, p1, v3}, Lcom/sonymobile/lockscreen/wallpaper/RealWallpaperEvents;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/sonymobile/lockscreen/xperia/XperiaKeyguardComponentFactory;->setWallpaperEvents(Lcom/sonymobile/lockscreen/wallpaper/WallpaperEvents;)V

    .line 67
    :cond_0
    sget-object v2, Lcom/sonymobile/lockscreen/xperia/XperiaKeyguardComponentFactory;->mUserSwitch:Lcom/sonymobile/lockscreen/wallpaper/UserSwitch;

    if-nez v2, :cond_1

    .line 68
    new-instance v2, Lcom/sonymobile/lockscreen/wallpaper/RealUserSwitch;

    invoke-direct {v2}, Lcom/sonymobile/lockscreen/wallpaper/RealUserSwitch;-><init>()V

    invoke-static {v2}, Lcom/sonymobile/lockscreen/xperia/XperiaKeyguardComponentFactory;->setUserSwitch(Lcom/sonymobile/lockscreen/wallpaper/UserSwitch;)V

    .line 71
    :cond_1
    new-instance v0, Lcom/sonymobile/lockscreen/wallpaper/RealLiveWallpaperController;

    sget-object v2, Lcom/sonymobile/lockscreen/xperia/XperiaKeyguardComponentFactory;->mWallpaperEvents:Lcom/sonymobile/lockscreen/wallpaper/WallpaperEvents;

    sget-object v3, Lcom/sonymobile/lockscreen/xperia/XperiaKeyguardComponentFactory;->mUserSwitch:Lcom/sonymobile/lockscreen/wallpaper/UserSwitch;

    invoke-direct {v0, p1, v2, v3}, Lcom/sonymobile/lockscreen/wallpaper/RealLiveWallpaperController;-><init>(Landroid/content/Context;Lcom/sonymobile/lockscreen/wallpaper/WallpaperEvents;Lcom/sonymobile/lockscreen/wallpaper/UserSwitch;)V

    .line 74
    .local v0, "liveWallpaperController":Lcom/sonymobile/lockscreen/wallpaper/LiveWallpaperController;
    iget-object v2, p0, Lcom/sonymobile/lockscreen/xperia/XperiaKeyguardComponentFactory;->mBackgroundView:Lcom/sonymobile/lockscreen/xperia/XperiaKeyguardBackground;

    invoke-virtual {v2, p1, p2, v1, v0}, Lcom/sonymobile/lockscreen/xperia/XperiaKeyguardBackground;->setDependencies(Landroid/content/Context;Lcom/sonymobile/lockscreen/environment/KeyguardComponentEnvironment;Lcom/sonymobile/lockscreen/xperia/UnlockStrategy;Lcom/sonymobile/lockscreen/wallpaper/LiveWallpaperController;)V

    .line 80
    .end local v0    # "liveWallpaperController":Lcom/sonymobile/lockscreen/wallpaper/LiveWallpaperController;
    .end local v1    # "unlockStrategy":Lcom/sonymobile/lockscreen/xperia/UnlockStrategy;
    :cond_2
    iget-object v2, p0, Lcom/sonymobile/lockscreen/xperia/XperiaKeyguardComponentFactory;->mBackgroundView:Lcom/sonymobile/lockscreen/xperia/XperiaKeyguardBackground;

    return-object v2
.end method

.method public createKeyguardNoSecurityView(Landroid/content/Context;Lcom/sonymobile/lockscreen/environment/KeyguardComponentEnvironment;)Landroid/view/View;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "keyguardComponentEnvironment"    # Lcom/sonymobile/lockscreen/environment/KeyguardComponentEnvironment;

    .prologue
    .line 87
    iget-object v2, p0, Lcom/sonymobile/lockscreen/xperia/XperiaKeyguardComponentFactory;->mNoSecurityView:Lcom/sonymobile/lockscreen/xperia/XperiaKeyguardNoSecurityView;

    if-nez v2, :cond_0

    .line 92
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 93
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const/high16 v2, 0x7f040000

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/lockscreen/xperia/XperiaKeyguardNoSecurityView;

    iput-object v2, p0, Lcom/sonymobile/lockscreen/xperia/XperiaKeyguardComponentFactory;->mNoSecurityView:Lcom/sonymobile/lockscreen/xperia/XperiaKeyguardNoSecurityView;

    .line 95
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060001

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 97
    .local v1, "letTouchesThrough":Z
    iget-object v2, p0, Lcom/sonymobile/lockscreen/xperia/XperiaKeyguardComponentFactory;->mNoSecurityView:Lcom/sonymobile/lockscreen/xperia/XperiaKeyguardNoSecurityView;

    iget-object v3, p0, Lcom/sonymobile/lockscreen/xperia/XperiaKeyguardComponentFactory;->mBackgroundView:Lcom/sonymobile/lockscreen/xperia/XperiaKeyguardBackground;

    new-instance v4, Lcom/sonymobile/lockscreen/xperia/RealViewFader;

    invoke-direct {v4}, Lcom/sonymobile/lockscreen/xperia/RealViewFader;-><init>()V

    invoke-virtual {v2, p2, v3, v4, v1}, Lcom/sonymobile/lockscreen/xperia/XperiaKeyguardNoSecurityView;->setDependencies(Lcom/sonymobile/lockscreen/environment/KeyguardComponentEnvironment;Lcom/sonymobile/lockscreen/xperia/XperiaKeyguardBackground;Lcom/sonymobile/lockscreen/xperia/ViewFader;Z)V

    .line 103
    .end local v0    # "inflater":Landroid/view/LayoutInflater;
    .end local v1    # "letTouchesThrough":Z
    :cond_0
    iget-object v2, p0, Lcom/sonymobile/lockscreen/xperia/XperiaKeyguardComponentFactory;->mNoSecurityView:Lcom/sonymobile/lockscreen/xperia/XperiaKeyguardNoSecurityView;

    return-object v2
.end method

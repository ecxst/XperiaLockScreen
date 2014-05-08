.class public Lcom/sonymobile/lockscreen/xperia/UnlockStrategySettings;
.super Ljava/lang/Object;
.source "UnlockStrategySettings.java"


# instance fields
.field private mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private mResources:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 1
    .param p1, "resources"    # Landroid/content/res/Resources;

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/sonymobile/lockscreen/xperia/UnlockStrategySettings;->mResources:Landroid/content/res/Resources;

    .line 25
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/lockscreen/xperia/UnlockStrategySettings;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 26
    return-void
.end method

.method private toPixels(F)F
    .locals 1
    .param p1, "dip"    # F

    .prologue
    .line 52
    iget-object v0, p0, Lcom/sonymobile/lockscreen/xperia/UnlockStrategySettings;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v0, p1}, Lcom/sonymobile/lockscreen/util/MetricUtils;->dipToPixels(Landroid/util/DisplayMetrics;F)F

    move-result v0

    return v0
.end method


# virtual methods
.method getMultiTouchAllowedInUnlock()Z
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x0

    return v0
.end method

.method public getUnlockDistance()F
    .locals 2

    .prologue
    .line 39
    iget-object v0, p0, Lcom/sonymobile/lockscreen/xperia/UnlockStrategySettings;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f070001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    invoke-direct {p0, v0}, Lcom/sonymobile/lockscreen/xperia/UnlockStrategySettings;->toPixels(F)F

    move-result v0

    return v0
.end method

.method public getVelocityToUnlock()F
    .locals 2

    .prologue
    .line 32
    iget-object v0, p0, Lcom/sonymobile/lockscreen/xperia/UnlockStrategySettings;->mResources:Landroid/content/res/Resources;

    const/high16 v1, 0x7f070000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    invoke-direct {p0, v0}, Lcom/sonymobile/lockscreen/xperia/UnlockStrategySettings;->toPixels(F)F

    move-result v0

    return v0
.end method

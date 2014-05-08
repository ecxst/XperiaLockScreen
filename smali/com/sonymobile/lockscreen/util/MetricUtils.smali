.class public Lcom/sonymobile/lockscreen/util/MetricUtils;
.super Ljava/lang/Object;
.source "MetricUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Only provides static methods"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static dipToPixels(Landroid/content/Context;F)F
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dp"    # F

    .prologue
    .line 32
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/sonymobile/lockscreen/util/MetricUtils;->dipToPixels(Landroid/util/DisplayMetrics;F)F

    move-result v0

    return v0
.end method

.method public static dipToPixels(Landroid/util/DisplayMetrics;F)F
    .locals 1
    .param p0, "displayMetrics"    # Landroid/util/DisplayMetrics;
    .param p1, "dp"    # F

    .prologue
    .line 43
    const/4 v0, 0x1

    invoke-static {v0, p1, p0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    return v0
.end method

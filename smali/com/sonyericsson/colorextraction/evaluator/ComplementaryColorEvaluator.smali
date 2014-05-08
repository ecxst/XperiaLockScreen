.class public Lcom/sonyericsson/colorextraction/evaluator/ComplementaryColorEvaluator;
.super Ljava/lang/Object;
.source "ComplementaryColorEvaluator.java"

# interfaces
.implements Lcom/sonyericsson/colorextraction/ColorEvaluator;


# static fields
.field private static final HUE_THRESHOLD:F = 180.0f


# instance fields
.field private mCC:Lcom/sonyericsson/colorextraction/ColorInfo;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/colorextraction/ColorInfo;)V
    .locals 0
    .param p1, "color"    # Lcom/sonyericsson/colorextraction/ColorInfo;

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/sonyericsson/colorextraction/evaluator/ComplementaryColorEvaluator;->mCC:Lcom/sonyericsson/colorextraction/ColorInfo;

    .line 40
    return-void
.end method


# virtual methods
.method public evaluate(Lcom/sonyericsson/colorextraction/ColorInfo;)I
    .locals 7
    .param p1, "c"    # Lcom/sonyericsson/colorextraction/ColorInfo;

    .prologue
    const/4 v2, 0x0

    .line 45
    iget v1, p1, Lcom/sonyericsson/colorextraction/ColorInfo;->mSaturation:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sonyericsson/colorextraction/evaluator/ComplementaryColorEvaluator;->mCC:Lcom/sonyericsson/colorextraction/ColorInfo;

    iget v1, v1, Lcom/sonyericsson/colorextraction/ColorInfo;->mSaturation:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_2

    .line 46
    :cond_0
    const/high16 v0, 0x43340000

    .line 54
    .local v0, "hueDifference":F
    :cond_1
    :goto_0
    const-wide v1, 0x408f400000000000L

    iget v3, p1, Lcom/sonyericsson/colorextraction/ColorInfo;->mNormalized:F

    float-to-double v3, v3

    const-wide v5, 0x3fd3333333333333L

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    mul-double/2addr v1, v3

    iget v3, p1, Lcom/sonyericsson/colorextraction/ColorInfo;->mBrightness:F

    float-to-double v3, v3

    mul-double/2addr v1, v3

    .line 55
    const/high16 v3, 0x3f800000

    iget v4, p1, Lcom/sonyericsson/colorextraction/ColorInfo;->mBrightness:F

    iget v5, p1, Lcom/sonyericsson/colorextraction/ColorInfo;->mSaturation:F

    add-float/2addr v4, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    float-to-double v3, v3

    .line 54
    mul-double/2addr v1, v3

    .line 55
    float-to-double v3, v0

    const-wide/high16 v5, 0x4010000000000000L

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    .line 54
    mul-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->round(D)J

    move-result-wide v1

    long-to-int v1, v1

    return v1

    .line 48
    .end local v0    # "hueDifference":F
    :cond_2
    iget v1, p1, Lcom/sonyericsson/colorextraction/ColorInfo;->mHue:F

    iget-object v2, p0, Lcom/sonyericsson/colorextraction/evaluator/ComplementaryColorEvaluator;->mCC:Lcom/sonyericsson/colorextraction/ColorInfo;

    iget v2, v2, Lcom/sonyericsson/colorextraction/ColorInfo;->mHue:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 49
    .restart local v0    # "hueDifference":F
    const/high16 v1, 0x43340000

    cmpl-float v1, v0, v1

    if-lez v1, :cond_1

    .line 50
    const/high16 v1, 0x43b40000

    sub-float v0, v1, v0

    goto :goto_0
.end method

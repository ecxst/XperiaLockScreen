.class public Lcom/sonyericsson/colorextraction/evaluator/MainColorEvaluator;
.super Ljava/lang/Object;
.source "MainColorEvaluator.java"

# interfaces
.implements Lcom/sonyericsson/colorextraction/ColorEvaluator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public evaluate(Lcom/sonyericsson/colorextraction/ColorInfo;)I
    .locals 6
    .param p1, "c"    # Lcom/sonyericsson/colorextraction/ColorInfo;

    .prologue
    .line 27
    const-wide v0, 0x408f400000000000L

    iget v2, p1, Lcom/sonyericsson/colorextraction/ColorInfo;->mNormalized:F

    float-to-double v2, v2

    const-wide v4, 0x3fd3333333333333L

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    const-wide v4, 0x3f847ae140000000L

    add-double/2addr v2, v4

    mul-double/2addr v0, v2

    iget v2, p1, Lcom/sonyericsson/colorextraction/ColorInfo;->mBrightness:F

    float-to-double v2, v2

    mul-double/2addr v0, v2

    .line 28
    iget v2, p1, Lcom/sonyericsson/colorextraction/ColorInfo;->mSaturation:F

    const v3, 0x3dcccccd

    add-float/2addr v2, v3

    float-to-double v2, v2

    mul-double/2addr v0, v2

    .line 27
    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

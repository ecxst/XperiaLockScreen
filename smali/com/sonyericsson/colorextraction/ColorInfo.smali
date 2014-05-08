.class public Lcom/sonyericsson/colorextraction/ColorInfo;
.super Ljava/lang/Object;
.source "ColorInfo.java"


# static fields
.field private static final BLUE_LUMINANCE_FACTOR:F = 0.114f

.field private static final GREEN_LUMINANCE_FACTOR:F = 0.587f

.field private static final RED_LUMINANCE_FACTOR:F = 0.299f


# instance fields
.field public final mBrightness:F

.field public final mHue:F

.field public mLuminance:F

.field public final mNormalized:F

.field public final mRgb:I

.field public final mSaturation:F


# direct methods
.method public constructor <init>(II)V
    .locals 4
    .param p1, "rgb"    # I
    .param p2, "n"    # I

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    const/4 v1, 0x3

    new-array v0, v1, [F

    .line 71
    .local v0, "hsv":[F
    invoke-static {p1, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 72
    const/4 v1, 0x0

    aget v1, v0, v1

    iput v1, p0, Lcom/sonyericsson/colorextraction/ColorInfo;->mHue:F

    .line 73
    const/4 v1, 0x1

    aget v1, v0, v1

    iput v1, p0, Lcom/sonyericsson/colorextraction/ColorInfo;->mSaturation:F

    .line 74
    const/4 v1, 0x2

    aget v1, v0, v1

    iput v1, p0, Lcom/sonyericsson/colorextraction/ColorInfo;->mBrightness:F

    .line 75
    int-to-float v1, p2

    iput v1, p0, Lcom/sonyericsson/colorextraction/ColorInfo;->mNormalized:F

    .line 76
    iput p1, p0, Lcom/sonyericsson/colorextraction/ColorInfo;->mRgb:I

    .line 77
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v1

    int-to-float v1, v1

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v2

    int-to-float v2, v2

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    int-to-float v3, v3

    invoke-direct {p0, v1, v2, v3}, Lcom/sonyericsson/colorextraction/ColorInfo;->calculateLuminance(FFF)F

    move-result v1

    iput v1, p0, Lcom/sonyericsson/colorextraction/ColorInfo;->mLuminance:F

    .line 78
    return-void
.end method

.method public constructor <init>(Lcom/sonyericsson/colorextraction/ColorInfo;)V
    .locals 1
    .param p1, "info"    # Lcom/sonyericsson/colorextraction/ColorInfo;

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iget v0, p1, Lcom/sonyericsson/colorextraction/ColorInfo;->mHue:F

    iput v0, p0, Lcom/sonyericsson/colorextraction/ColorInfo;->mHue:F

    .line 87
    iget v0, p1, Lcom/sonyericsson/colorextraction/ColorInfo;->mSaturation:F

    iput v0, p0, Lcom/sonyericsson/colorextraction/ColorInfo;->mSaturation:F

    .line 88
    iget v0, p1, Lcom/sonyericsson/colorextraction/ColorInfo;->mBrightness:F

    iput v0, p0, Lcom/sonyericsson/colorextraction/ColorInfo;->mBrightness:F

    .line 89
    iget v0, p1, Lcom/sonyericsson/colorextraction/ColorInfo;->mNormalized:F

    iput v0, p0, Lcom/sonyericsson/colorextraction/ColorInfo;->mNormalized:F

    .line 90
    iget v0, p1, Lcom/sonyericsson/colorextraction/ColorInfo;->mRgb:I

    iput v0, p0, Lcom/sonyericsson/colorextraction/ColorInfo;->mRgb:I

    .line 91
    iget v0, p1, Lcom/sonyericsson/colorextraction/ColorInfo;->mLuminance:F

    iput v0, p0, Lcom/sonyericsson/colorextraction/ColorInfo;->mLuminance:F

    .line 92
    return-void
.end method

.method public constructor <init>([FF)V
    .locals 3
    .param p1, "hsv"    # [F
    .param p2, "n"    # F

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const/4 v0, 0x0

    aget v0, p1, v0

    iput v0, p0, Lcom/sonyericsson/colorextraction/ColorInfo;->mHue:F

    .line 57
    const/4 v0, 0x1

    aget v0, p1, v0

    iput v0, p0, Lcom/sonyericsson/colorextraction/ColorInfo;->mSaturation:F

    .line 58
    const/4 v0, 0x2

    aget v0, p1, v0

    iput v0, p0, Lcom/sonyericsson/colorextraction/ColorInfo;->mBrightness:F

    .line 59
    iput p2, p0, Lcom/sonyericsson/colorextraction/ColorInfo;->mNormalized:F

    .line 61
    invoke-static {p1}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/colorextraction/ColorInfo;->mRgb:I

    .line 63
    iget v0, p0, Lcom/sonyericsson/colorextraction/ColorInfo;->mRgb:I

    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/sonyericsson/colorextraction/ColorInfo;->mRgb:I

    invoke-static {v1}, Landroid/graphics/Color;->green(I)I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/sonyericsson/colorextraction/ColorInfo;->mRgb:I

    invoke-static {v2}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    int-to-float v2, v2

    invoke-direct {p0, v0, v1, v2}, Lcom/sonyericsson/colorextraction/ColorInfo;->calculateLuminance(FFF)F

    move-result v0

    iput v0, p0, Lcom/sonyericsson/colorextraction/ColorInfo;->mLuminance:F

    .line 64
    return-void
.end method

.method private calculateLuminance(FFF)F
    .locals 2
    .param p1, "r"    # F
    .param p2, "g"    # F
    .param p3, "b"    # F

    .prologue
    .line 164
    const v0, 0x3e991687

    mul-float/2addr v0, p1

    const v1, 0x3f1645a2

    mul-float/2addr v1, p2

    add-float/2addr v0, v1

    .line 165
    const v1, 0x3de978d5

    mul-float/2addr v1, p3

    .line 164
    add-float/2addr v0, v1

    .line 165
    const/high16 v1, 0x437f0000

    .line 164
    div-float/2addr v0, v1

    return v0
.end method


# virtual methods
.method public getColor(F)I
    .locals 15
    .param p1, "newLuminance"    # F

    .prologue
    .line 102
    const/4 v12, 0x0

    cmpg-float v12, p1, v12

    if-gtz v12, :cond_0

    .line 103
    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Landroid/graphics/Color;->rgb(III)I

    move-result v12

    .line 158
    :goto_0
    return v12

    .line 104
    :cond_0
    const/high16 v12, 0x3f800000

    cmpl-float v12, p1, v12

    if-ltz v12, :cond_1

    .line 105
    const/16 v12, 0xff

    const/16 v13, 0xff

    const/16 v14, 0xff

    invoke-static {v12, v13, v14}, Landroid/graphics/Color;->rgb(III)I

    move-result v12

    goto :goto_0

    .line 109
    :cond_1
    iget v12, p0, Lcom/sonyericsson/colorextraction/ColorInfo;->mRgb:I

    invoke-static {v12}, Landroid/graphics/Color;->red(I)I

    move-result v7

    .line 110
    .local v7, "r":I
    iget v12, p0, Lcom/sonyericsson/colorextraction/ColorInfo;->mRgb:I

    invoke-static {v12}, Landroid/graphics/Color;->green(I)I

    move-result v3

    .line 111
    .local v3, "g":I
    iget v12, p0, Lcom/sonyericsson/colorextraction/ColorInfo;->mRgb:I

    invoke-static {v12}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    .line 112
    .local v0, "b":I
    iget v1, p0, Lcom/sonyericsson/colorextraction/ColorInfo;->mLuminance:F

    .line 114
    .local v1, "currentLuminance":F
    div-float v6, p1, v1

    .line 115
    .local v6, "multiplier":F
    const/high16 v12, 0x3f800000

    cmpg-float v12, v6, v12

    if-ltz v12, :cond_2

    if-ne v7, v3, :cond_3

    if-ne v3, v0, :cond_3

    .line 118
    :cond_2
    int-to-float v12, v7

    mul-float/2addr v12, v6

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v12

    int-to-float v13, v3

    mul-float/2addr v13, v6

    invoke-static {v13}, Ljava/lang/Math;->round(F)I

    move-result v13

    .line 119
    int-to-float v14, v0

    mul-float/2addr v14, v6

    invoke-static {v14}, Ljava/lang/Math;->round(F)I

    move-result v14

    .line 118
    invoke-static {v12, v13, v14}, Landroid/graphics/Color;->rgb(III)I

    move-result v12

    goto :goto_0

    .line 130
    :cond_3
    const/16 v12, 0xff

    if-ne v7, v12, :cond_7

    const/4 v11, 0x0

    .line 131
    .local v11, "vr":F
    :goto_1
    const/16 v12, 0xff

    if-ne v3, v12, :cond_8

    const/4 v10, 0x0

    .line 132
    .local v10, "vg":F
    :goto_2
    const/16 v12, 0xff

    if-ne v0, v12, :cond_9

    const/4 v9, 0x0

    .line 135
    .local v9, "vb":F
    :goto_3
    invoke-direct {p0, v11, v10, v9}, Lcom/sonyericsson/colorextraction/ColorInfo;->calculateLuminance(FFF)F

    move-result v4

    .line 136
    .local v4, "luminanceOfVector":F
    sub-float v12, p1, v1

    div-float v8, v12, v4

    .line 139
    .local v8, "requiredVectorFactor":F
    const v5, 0x7f7fffff

    .line 140
    .local v5, "maxFactor":F
    const/4 v12, 0x0

    cmpl-float v12, v11, v12

    if-eqz v12, :cond_4

    .line 141
    const/high16 v12, 0x437f0000

    int-to-float v13, v7

    sub-float/2addr v12, v13

    div-float/2addr v12, v11

    invoke-static {v12, v5}, Ljava/lang/Math;->min(FF)F

    move-result v5

    .line 143
    :cond_4
    const/4 v12, 0x0

    cmpl-float v12, v10, v12

    if-eqz v12, :cond_5

    .line 144
    const/high16 v12, 0x437f0000

    int-to-float v13, v3

    sub-float/2addr v12, v13

    div-float/2addr v12, v10

    invoke-static {v12, v5}, Ljava/lang/Math;->min(FF)F

    move-result v5

    .line 146
    :cond_5
    const/4 v12, 0x0

    cmpl-float v12, v9, v12

    if-eqz v12, :cond_6

    .line 147
    const/high16 v12, 0x437f0000

    int-to-float v13, v0

    sub-float/2addr v12, v13

    div-float/2addr v12, v9

    invoke-static {v12, v5}, Ljava/lang/Math;->min(FF)F

    move-result v5

    .line 150
    :cond_6
    invoke-static {v8, v5}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 151
    .local v2, "factor":F
    mul-float v12, v11, v2

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v12

    add-int/2addr v7, v12

    .line 152
    mul-float v12, v10, v2

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v12

    add-int/2addr v3, v12

    .line 153
    mul-float v12, v9, v2

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v12

    add-int/2addr v0, v12

    .line 154
    int-to-float v12, v7

    int-to-float v13, v3

    int-to-float v14, v0

    invoke-direct {p0, v12, v13, v14}, Lcom/sonyericsson/colorextraction/ColorInfo;->calculateLuminance(FFF)F

    move-result v1

    .line 156
    cmpl-float v12, v8, v5

    if-gez v12, :cond_3

    .line 158
    invoke-static {v7, v3, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result v12

    goto/16 :goto_0

    .line 130
    .end local v2    # "factor":F
    .end local v4    # "luminanceOfVector":F
    .end local v5    # "maxFactor":F
    .end local v8    # "requiredVectorFactor":F
    .end local v9    # "vb":F
    .end local v10    # "vg":F
    .end local v11    # "vr":F
    :cond_7
    int-to-float v12, v7

    const v13, 0x3c23d70a

    add-float v11, v12, v13

    goto :goto_1

    .line 131
    .restart local v11    # "vr":F
    :cond_8
    int-to-float v12, v3

    const v13, 0x3c23d70a

    add-float v10, v12, v13

    goto :goto_2

    .line 132
    .restart local v10    # "vg":F
    :cond_9
    int-to-float v12, v0

    const v13, 0x3c23d70a

    add-float v9, v12, v13

    goto :goto_3
.end method

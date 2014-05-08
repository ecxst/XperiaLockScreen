.class public Lcom/sonyericsson/colorextraction/ColorExtractor;
.super Ljava/lang/Object;
.source "ColorExtractor.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final HUE_RANGE:F = 360.0f

.field private static final MAX_PIXELS:I = 0x2710

.field private static final RANGE:[F

.field private static final RES:[I

.field private static final SAT_RANGE:F = 1.0f

.field private static final TAG:Ljava/lang/String; = "ColorExtractor"

.field private static final VAL_RANGE:F = 1.0f


# instance fields
.field private final mColorInfoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonyericsson/colorextraction/ColorInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mEvaluator:Lcom/sonyericsson/colorextraction/ColorEvaluator;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 55
    new-array v0, v1, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sonyericsson/colorextraction/ColorExtractor;->RANGE:[F

    .line 62
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/sonyericsson/colorextraction/ColorExtractor;->RES:[I

    .line 31
    return-void

    .line 55
    :array_0
    .array-data 4
        0x43b40000
        0x3f800000
        0x3f800000
    .end array-data

    .line 62
    :array_1
    .array-data 4
        0x24
        0xa
        0xa
    .end array-data
.end method

.method public constructor <init>(Lcom/sonyericsson/colorextraction/ColorEvaluator;)V
    .locals 1
    .param p1, "evaluator"    # Lcom/sonyericsson/colorextraction/ColorEvaluator;

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/colorextraction/ColorExtractor;->mColorInfoList:Ljava/util/ArrayList;

    .line 82
    if-nez p1, :cond_0

    .line 83
    new-instance v0, Lcom/sonyericsson/colorextraction/evaluator/MainColorEvaluator;

    invoke-direct {v0}, Lcom/sonyericsson/colorextraction/evaluator/MainColorEvaluator;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/colorextraction/ColorExtractor;->mEvaluator:Lcom/sonyericsson/colorextraction/ColorEvaluator;

    .line 87
    :goto_0
    return-void

    .line 85
    :cond_0
    iput-object p1, p0, Lcom/sonyericsson/colorextraction/ColorExtractor;->mEvaluator:Lcom/sonyericsson/colorextraction/ColorEvaluator;

    goto :goto_0
.end method

.method private createColorInfoList([BIILjava/lang/String;Ljava/io/FileDescriptor;Landroid/content/res/Resources;ILjava/io/InputStream;)V
    .locals 12
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .param p4, "pathName"    # Ljava/lang/String;
    .param p5, "fd"    # Ljava/io/FileDescriptor;
    .param p6, "res"    # Landroid/content/res/Resources;
    .param p7, "resId"    # I
    .param p8, "inputStream"    # Ljava/io/InputStream;

    .prologue
    .line 280
    new-instance v8, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v8}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 281
    .local v8, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v0, 0x1

    iput-boolean v0, v8, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    move-object v0, p1

    move v1, p2

    move v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move/from16 v6, p7

    move-object/from16 v7, p8

    .line 283
    invoke-static/range {v0 .. v8}, Lcom/sonyericsson/colorextraction/ColorExtractor;->decodeBitmap([BIILjava/lang/String;Ljava/io/FileDescriptor;Landroid/content/res/Resources;ILjava/io/InputStream;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 285
    iget v0, v8, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v1, v8, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    mul-int v9, v0, v1

    .line 286
    .local v9, "numberOfPixels":I
    int-to-float v0, v9

    const v1, 0x461c4000

    div-float v11, v0, v1

    .line 288
    .local v11, "scaling":F
    const/4 v0, 0x0

    iput-boolean v0, v8, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 289
    float-to-double v0, v11

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, v8, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    move-object v0, p1

    move v1, p2

    move v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move/from16 v6, p7

    move-object/from16 v7, p8

    .line 291
    invoke-static/range {v0 .. v8}, Lcom/sonyericsson/colorextraction/ColorExtractor;->decodeBitmap([BIILjava/lang/String;Ljava/io/FileDescriptor;Landroid/content/res/Resources;ILjava/io/InputStream;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 294
    .local v10, "scaledBitmap":Landroid/graphics/Bitmap;
    if-eqz v10, :cond_0

    .line 295
    invoke-direct {p0, v10}, Lcom/sonyericsson/colorextraction/ColorExtractor;->initialize(Landroid/graphics/Bitmap;)V

    .line 296
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->recycle()V

    .line 298
    :cond_0
    return-void
.end method

.method private static decodeBitmap([BIILjava/lang/String;Ljava/io/FileDescriptor;Landroid/content/res/Resources;ILjava/io/InputStream;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I
    .param p3, "pathName"    # Ljava/lang/String;
    .param p4, "fd"    # Ljava/io/FileDescriptor;
    .param p5, "res"    # Landroid/content/res/Resources;
    .param p6, "resId"    # I
    .param p7, "inputStream"    # Ljava/io/InputStream;
    .param p8, "options"    # Landroid/graphics/BitmapFactory$Options;

    .prologue
    const/4 v0, 0x0

    .line 441
    if-eqz p0, :cond_1

    .line 442
    invoke-static {p0, p1, p2, p8}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 452
    :cond_0
    :goto_0
    return-object v0

    .line 443
    :cond_1
    if-eqz p3, :cond_2

    .line 444
    invoke-static {p3, p8}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 445
    :cond_2
    if-eqz p4, :cond_3

    .line 446
    invoke-static {p4, v0, p8}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 447
    :cond_3
    if-eqz p5, :cond_4

    .line 448
    invoke-static {p5, p6, p8}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 449
    :cond_4
    if-eqz p7, :cond_0

    .line 450
    invoke-static {p7, v0, p8}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method private static dequantify(III[F)V
    .locals 5
    .param p0, "h"    # I
    .param p1, "s"    # I
    .param p2, "v"    # I
    .param p3, "hsv"    # [F

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 429
    int-to-float v0, p0

    sget-object v1, Lcom/sonyericsson/colorextraction/ColorExtractor;->RES:[I

    aget v1, v1, v2

    add-int/lit8 v1, v1, -0x1

    int-to-float v1, v1

    div-float/2addr v0, v1

    sget-object v1, Lcom/sonyericsson/colorextraction/ColorExtractor;->RANGE:[F

    aget v1, v1, v2

    mul-float/2addr v0, v1

    aput v0, p3, v2

    .line 430
    int-to-float v0, p1

    sget-object v1, Lcom/sonyericsson/colorextraction/ColorExtractor;->RES:[I

    aget v1, v1, v3

    add-int/lit8 v1, v1, -0x1

    int-to-float v1, v1

    div-float/2addr v0, v1

    sget-object v1, Lcom/sonyericsson/colorextraction/ColorExtractor;->RANGE:[F

    aget v1, v1, v3

    mul-float/2addr v0, v1

    aput v0, p3, v3

    .line 431
    int-to-float v0, p2

    sget-object v1, Lcom/sonyericsson/colorextraction/ColorExtractor;->RES:[I

    aget v1, v1, v4

    add-int/lit8 v1, v1, -0x1

    int-to-float v1, v1

    div-float/2addr v0, v1

    sget-object v1, Lcom/sonyericsson/colorextraction/ColorExtractor;->RANGE:[F

    aget v1, v1, v4

    mul-float/2addr v0, v1

    aput v0, p3, v4

    .line 432
    return-void
.end method

.method private extract()Lcom/sonyericsson/colorextraction/ColorInfo;
    .locals 8

    .prologue
    .line 223
    const/4 v0, 0x0

    .line 224
    .local v0, "bestColor":Lcom/sonyericsson/colorextraction/ColorInfo;
    const/high16 v1, -0x80000000

    .line 225
    .local v1, "bestScore":I
    const v4, 0x7fffffff

    .line 232
    .local v4, "worstScore":I
    iget-object v5, p0, Lcom/sonyericsson/colorextraction/ColorExtractor;->mColorInfoList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_3

    .line 257
    if-ne v1, v4, :cond_1

    iget-object v5, p0, Lcom/sonyericsson/colorextraction/ColorExtractor;->mColorInfoList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x1

    if-gt v5, v6, :cond_2

    :cond_1
    if-nez v0, :cond_5

    .line 265
    :cond_2
    new-instance v5, Lcom/sonyericsson/colorextraction/ColorInfo;

    const/4 v6, -0x1

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Lcom/sonyericsson/colorextraction/ColorInfo;-><init>(II)V

    .line 268
    :goto_1
    return-object v5

    .line 232
    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/colorextraction/ColorInfo;

    .line 233
    .local v2, "c":Lcom/sonyericsson/colorextraction/ColorInfo;
    iget-object v6, p0, Lcom/sonyericsson/colorextraction/ColorExtractor;->mEvaluator:Lcom/sonyericsson/colorextraction/ColorEvaluator;

    invoke-interface {v6, v2}, Lcom/sonyericsson/colorextraction/ColorEvaluator;->evaluate(Lcom/sonyericsson/colorextraction/ColorInfo;)I

    move-result v3

    .line 240
    .local v3, "score":I
    if-lt v3, v1, :cond_4

    .line 241
    move-object v0, v2

    .line 242
    move v1, v3

    .line 244
    :cond_4
    if-ge v3, v4, :cond_0

    .line 245
    move v4, v3

    goto :goto_0

    .line 268
    .end local v2    # "c":Lcom/sonyericsson/colorextraction/ColorInfo;
    .end local v3    # "score":I
    :cond_5
    new-instance v5, Lcom/sonyericsson/colorextraction/ColorInfo;

    invoke-direct {v5, v0}, Lcom/sonyericsson/colorextraction/ColorInfo;-><init>(Lcom/sonyericsson/colorextraction/ColorInfo;)V

    goto :goto_1
.end method

.method private initialize(Landroid/graphics/Bitmap;)V
    .locals 14
    .param p1, "scaledBitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 306
    const/4 v4, 0x0

    .line 307
    .local v4, "maxHistValue":I
    sget-object v10, Lcom/sonyericsson/colorextraction/ColorExtractor;->RES:[I

    const/4 v11, 0x0

    aget v10, v10, v11

    sget-object v11, Lcom/sonyericsson/colorextraction/ColorExtractor;->RES:[I

    const/4 v12, 0x1

    aget v11, v11, v12

    sget-object v12, Lcom/sonyericsson/colorextraction/ColorExtractor;->RES:[I

    const/4 v13, 0x2

    aget v12, v12, v13

    filled-new-array {v10, v11, v12}, [I

    move-result-object v10

    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v11, v10}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[[I

    .line 308
    .local v2, "histogram":[[[I
    const/4 v10, 0x3

    new-array v3, v10, [F

    .line 309
    .local v3, "hsv":[F
    const/4 v10, 0x3

    new-array v5, v10, [I

    .line 315
    .local v5, "qHSV":[I
    const/4 v9, 0x0

    .local v9, "y":I
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    if-lt v9, v10, :cond_0

    .line 342
    const/4 v0, 0x0

    .local v0, "h":I
    :goto_1
    array-length v10, v2

    if-lt v0, v10, :cond_2

    .line 369
    return-void

    .line 316
    .end local v0    # "h":I
    :cond_0
    const/4 v8, 0x0

    .local v8, "x":I
    :goto_2
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    if-lt v8, v10, :cond_1

    .line 315
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 317
    :cond_1
    invoke-virtual {p1, v8, v9}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v10

    invoke-static {v10, v3}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 321
    invoke-static {v3, v5}, Lcom/sonyericsson/colorextraction/ColorExtractor;->quantify([F[I)V

    .line 325
    const/4 v10, 0x0

    aget v10, v5, v10

    aget-object v10, v2, v10

    const/4 v11, 0x1

    aget v11, v5, v11

    aget-object v10, v10, v11

    const/4 v11, 0x2

    aget v11, v5, v11

    aget v10, v10, v11

    add-int/lit8 v1, v10, 0x1

    .line 328
    .local v1, "histValue":I
    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 329
    const/4 v10, 0x0

    aget v10, v5, v10

    aget-object v10, v2, v10

    const/4 v11, 0x1

    aget v11, v5, v11

    aget-object v10, v10, v11

    const/4 v11, 0x2

    aget v11, v5, v11

    aput v1, v10, v11

    .line 316
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 343
    .end local v1    # "histValue":I
    .end local v8    # "x":I
    .restart local v0    # "h":I
    :cond_2
    const/4 v6, 0x0

    .local v6, "s":I
    :goto_3
    aget-object v10, v2, v0

    array-length v10, v10

    if-lt v6, v10, :cond_3

    .line 342
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 344
    :cond_3
    const/4 v7, 0x0

    .local v7, "v":I
    :goto_4
    aget-object v10, v2, v0

    aget-object v10, v10, v6

    array-length v10, v10

    if-lt v7, v10, :cond_4

    .line 343
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 346
    :cond_4
    invoke-static {v0, v6, v7, v3}, Lcom/sonyericsson/colorextraction/ColorExtractor;->dequantify(III[F)V

    .line 352
    aget-object v10, v2, v0

    aget-object v10, v10, v6

    aget v10, v10, v7

    if-lez v10, :cond_5

    .line 360
    iget-object v10, p0, Lcom/sonyericsson/colorextraction/ColorExtractor;->mColorInfoList:Ljava/util/ArrayList;

    new-instance v11, Lcom/sonyericsson/colorextraction/ColorInfo;

    aget-object v12, v2, v0

    aget-object v12, v12, v6

    aget v12, v12, v7

    int-to-float v12, v12

    .line 361
    int-to-float v13, v4

    div-float/2addr v12, v13

    invoke-direct {v11, v3, v12}, Lcom/sonyericsson/colorextraction/ColorInfo;-><init>([FF)V

    .line 360
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 344
    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_4
.end method

.method private static quantify([F[I)V
    .locals 5
    .param p0, "hsv"    # [F
    .param p1, "qHSV"    # [I

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 386
    aget v0, p0, v4

    sget-object v1, Lcom/sonyericsson/colorextraction/ColorExtractor;->RANGE:[F

    aget v1, v1, v4

    div-float/2addr v0, v1

    sget-object v1, Lcom/sonyericsson/colorextraction/ColorExtractor;->RES:[I

    aget v1, v1, v4

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    aput v0, p1, v4

    .line 388
    aget v0, p1, v4

    sget-object v1, Lcom/sonyericsson/colorextraction/ColorExtractor;->RES:[I

    aget v1, v1, v4

    if-ne v0, v1, :cond_0

    .line 389
    aget v0, p1, v4

    add-int/lit8 v0, v0, -0x1

    aput v0, p1, v4

    .line 392
    :cond_0
    aget v0, p1, v4

    if-nez v0, :cond_2

    .line 395
    aput v2, p1, v2

    .line 396
    aput v2, p1, v3

    .line 397
    aput v2, p1, v4

    .line 423
    :cond_1
    :goto_0
    return-void

    .line 399
    :cond_2
    aget v0, p0, v3

    sget-object v1, Lcom/sonyericsson/colorextraction/ColorExtractor;->RANGE:[F

    aget v1, v1, v3

    div-float/2addr v0, v1

    sget-object v1, Lcom/sonyericsson/colorextraction/ColorExtractor;->RES:[I

    aget v1, v1, v3

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    aput v0, p1, v3

    .line 401
    aget v0, p1, v3

    sget-object v1, Lcom/sonyericsson/colorextraction/ColorExtractor;->RES:[I

    aget v1, v1, v3

    if-ne v0, v1, :cond_3

    .line 402
    aget v0, p1, v3

    add-int/lit8 v0, v0, -0x1

    aput v0, p1, v3

    .line 405
    :cond_3
    aget v0, p1, v3

    if-nez v0, :cond_4

    .line 408
    aput v2, p1, v2

    .line 409
    aput v2, p1, v3

    goto :goto_0

    .line 411
    :cond_4
    aget v0, p0, v2

    sget-object v1, Lcom/sonyericsson/colorextraction/ColorExtractor;->RANGE:[F

    aget v1, v1, v2

    div-float/2addr v0, v1

    sget-object v1, Lcom/sonyericsson/colorextraction/ColorExtractor;->RES:[I

    aget v1, v1, v2

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    aput v0, p1, v2

    .line 412
    aget v0, p1, v2

    sget-object v1, Lcom/sonyericsson/colorextraction/ColorExtractor;->RES:[I

    aget v1, v1, v2

    if-ne v0, v1, :cond_1

    .line 413
    aget v0, p1, v2

    add-int/lit8 v0, v0, -0x1

    aput v0, p1, v2

    goto :goto_0
.end method


# virtual methods
.method public extract(Landroid/content/res/Resources;I)Lcom/sonyericsson/colorextraction/ColorInfo;
    .locals 9
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "resId"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 164
    if-nez p1, :cond_0

    .line 165
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Supplied resources object is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    move-object v0, p0

    move v3, v2

    move-object v4, v1

    move-object v5, v1

    move-object v6, p1

    move v7, p2

    move-object v8, v1

    .line 167
    invoke-direct/range {v0 .. v8}, Lcom/sonyericsson/colorextraction/ColorExtractor;->createColorInfoList([BIILjava/lang/String;Ljava/io/FileDescriptor;Landroid/content/res/Resources;ILjava/io/InputStream;)V

    .line 168
    invoke-direct {p0}, Lcom/sonyericsson/colorextraction/ColorExtractor;->extract()Lcom/sonyericsson/colorextraction/ColorInfo;

    move-result-object v0

    return-object v0
.end method

.method public extract(Landroid/graphics/Bitmap;)Lcom/sonyericsson/colorextraction/ColorInfo;
    .locals 10
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/16 v9, 0x2710

    const/4 v8, 0x1

    .line 200
    if-nez p1, :cond_0

    .line 201
    new-instance v5, Ljava/lang/NullPointerException;

    const-string v6, "Supplied bitmap is null"

    invoke-direct {v5, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 204
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    mul-int v2, v5, v6

    .line 205
    .local v2, "numberOfPixels":I
    const/high16 v5, 0x3f800000

    int-to-float v6, v2

    const v7, 0x461c4000

    div-float/2addr v6, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 208
    .local v4, "scaling":F
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v4

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    double-to-int v5, v5

    invoke-static {v9, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 207
    invoke-static {v8, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 210
    .local v1, "dstWidth":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v4

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    double-to-int v5, v5

    invoke-static {v9, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 209
    invoke-static {v8, v5}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 212
    .local v0, "dstHeight":I
    invoke-static {p1, v1, v0, v8}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 214
    .local v3, "scaledBitmap":Landroid/graphics/Bitmap;
    if-eqz v3, :cond_1

    .line 215
    invoke-direct {p0, v3}, Lcom/sonyericsson/colorextraction/ColorExtractor;->initialize(Landroid/graphics/Bitmap;)V

    .line 216
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 217
    invoke-direct {p0}, Lcom/sonyericsson/colorextraction/ColorExtractor;->extract()Lcom/sonyericsson/colorextraction/ColorInfo;

    move-result-object v5

    .line 219
    :goto_0
    return-object v5

    :cond_1
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public extract(Ljava/io/FileDescriptor;)Lcom/sonyericsson/colorextraction/ColorInfo;
    .locals 9
    .param p1, "fd"    # Ljava/io/FileDescriptor;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 145
    if-nez p1, :cond_0

    .line 146
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Supplied file descriptor is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    move-object v0, p0

    move v3, v2

    move-object v4, v1

    move-object v5, p1

    move-object v6, v1

    move v7, v2

    move-object v8, v1

    .line 148
    invoke-direct/range {v0 .. v8}, Lcom/sonyericsson/colorextraction/ColorExtractor;->createColorInfoList([BIILjava/lang/String;Ljava/io/FileDescriptor;Landroid/content/res/Resources;ILjava/io/InputStream;)V

    .line 149
    invoke-direct {p0}, Lcom/sonyericsson/colorextraction/ColorExtractor;->extract()Lcom/sonyericsson/colorextraction/ColorInfo;

    move-result-object v0

    return-object v0
.end method

.method public extract(Ljava/io/InputStream;)Lcom/sonyericsson/colorextraction/ColorInfo;
    .locals 9
    .param p1, "inputStream"    # Ljava/io/InputStream;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 182
    if-nez p1, :cond_0

    .line 183
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Supplied inputstream is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    move-object v0, p0

    move v3, v2

    move-object v4, v1

    move-object v5, v1

    move-object v6, v1

    move v7, v2

    move-object v8, p1

    .line 185
    invoke-direct/range {v0 .. v8}, Lcom/sonyericsson/colorextraction/ColorExtractor;->createColorInfoList([BIILjava/lang/String;Ljava/io/FileDescriptor;Landroid/content/res/Resources;ILjava/io/InputStream;)V

    .line 186
    invoke-direct {p0}, Lcom/sonyericsson/colorextraction/ColorExtractor;->extract()Lcom/sonyericsson/colorextraction/ColorInfo;

    move-result-object v0

    return-object v0
.end method

.method public extract(Ljava/lang/String;)Lcom/sonyericsson/colorextraction/ColorInfo;
    .locals 9
    .param p1, "pathName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 127
    if-nez p1, :cond_0

    .line 128
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Supplied pathname is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    move-object v0, p0

    move v3, v2

    move-object v4, p1

    move-object v5, v1

    move-object v6, v1

    move v7, v2

    move-object v8, v1

    .line 130
    invoke-direct/range {v0 .. v8}, Lcom/sonyericsson/colorextraction/ColorExtractor;->createColorInfoList([BIILjava/lang/String;Ljava/io/FileDescriptor;Landroid/content/res/Resources;ILjava/io/InputStream;)V

    .line 131
    invoke-direct {p0}, Lcom/sonyericsson/colorextraction/ColorExtractor;->extract()Lcom/sonyericsson/colorextraction/ColorInfo;

    move-result-object v0

    return-object v0
.end method

.method public extract([BII)Lcom/sonyericsson/colorextraction/ColorInfo;
    .locals 9
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    const/4 v4, 0x0

    .line 106
    if-nez p1, :cond_0

    .line 107
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Supplied data array is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 108
    :cond_0
    if-lez p3, :cond_1

    if-ltz p2, :cond_1

    add-int v0, p2, p3

    array-length v1, p1

    if-le v0, v1, :cond_2

    .line 109
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 112
    :cond_2
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v5, v4

    move-object v6, v4

    move-object v8, v4

    invoke-direct/range {v0 .. v8}, Lcom/sonyericsson/colorextraction/ColorExtractor;->createColorInfoList([BIILjava/lang/String;Ljava/io/FileDescriptor;Landroid/content/res/Resources;ILjava/io/InputStream;)V

    .line 113
    invoke-direct {p0}, Lcom/sonyericsson/colorextraction/ColorExtractor;->extract()Lcom/sonyericsson/colorextraction/ColorInfo;

    move-result-object v0

    return-object v0
.end method

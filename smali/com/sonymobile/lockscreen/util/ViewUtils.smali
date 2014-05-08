.class public Lcom/sonymobile/lockscreen/util/ViewUtils;
.super Ljava/lang/Object;
.source "ViewUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Only provides static methods"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getMeasuredSize(III)I
    .locals 3
    .param p0, "desiredSize"    # I
    .param p1, "measureSpec"    # I
    .param p2, "suggestedMinimumSize"    # I

    .prologue
    .line 56
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 57
    .local v1, "sizeMode":I
    sparse-switch v1, :sswitch_data_0

    .line 66
    move v0, p0

    .line 70
    .local v0, "size":I
    :goto_0
    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 72
    return v0

    .line 59
    .end local v0    # "size":I
    :sswitch_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    invoke-static {v2, p0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 60
    .restart local v0    # "size":I
    goto :goto_0

    .line 62
    .end local v0    # "size":I
    :sswitch_1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 63
    .restart local v0    # "size":I
    goto :goto_0

    .line 57
    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_0
        0x40000000 -> :sswitch_1
    .end sparse-switch
.end method

.method public static transformXCoordinateToOtherView(Landroid/view/View;FLandroid/view/View;[I)F
    .locals 5
    .param p0, "view"    # Landroid/view/View;
    .param p1, "viewX"    # F
    .param p2, "otherView"    # Landroid/view/View;
    .param p3, "xYArray"    # [I

    .prologue
    const/4 v4, 0x0

    .line 96
    array-length v2, p3

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    .line 97
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "xyArray must be a two-element int-array"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 100
    :cond_0
    invoke-virtual {p0, p3}, Landroid/view/View;->getLocationInWindow([I)V

    .line 101
    aget v1, p3, v4

    .line 102
    .local v1, "viewScreenX":I
    invoke-virtual {p2, p3}, Landroid/view/View;->getLocationInWindow([I)V

    .line 103
    aget v0, p3, v4

    .line 104
    .local v0, "otherViewScreenX":I
    int-to-float v2, v1

    add-float/2addr v2, p1

    int-to-float v3, v0

    sub-float/2addr v2, v3

    return v2
.end method

.method public static transformYCoordinateToOtherView(Landroid/view/View;FLandroid/view/View;[I)F
    .locals 5
    .param p0, "view"    # Landroid/view/View;
    .param p1, "viewY"    # F
    .param p2, "otherView"    # Landroid/view/View;
    .param p3, "xYArray"    # [I

    .prologue
    const/4 v4, 0x1

    .line 130
    array-length v2, p3

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    .line 131
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "xyArray must be a two-element int-array"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 134
    :cond_0
    invoke-virtual {p0, p3}, Landroid/view/View;->getLocationInWindow([I)V

    .line 135
    aget v1, p3, v4

    .line 136
    .local v1, "viewScreenY":I
    invoke-virtual {p2, p3}, Landroid/view/View;->getLocationInWindow([I)V

    .line 137
    aget v0, p3, v4

    .line 138
    .local v0, "otherViewScreenY":I
    int-to-float v2, v1

    add-float/2addr v2, p1

    int-to-float v3, v0

    sub-float/2addr v2, v3

    return v2
.end method

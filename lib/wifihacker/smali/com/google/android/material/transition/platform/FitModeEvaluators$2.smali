.class final Lcom/google/android/material/transition/platform/FitModeEvaluators$2;
.super Ljava/lang/Object;
.source "FitModeEvaluators.java"

# interfaces
.implements Lcom/google/android/material/transition/platform/FitModeEvaluator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/transition/platform/FitModeEvaluators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public applyMask(Landroid/graphics/RectF;FLcom/google/android/material/transition/platform/FitModeResult;)V
    .locals 4
    .param p1, "maskBounds"    # Landroid/graphics/RectF;
    .param p2, "maskMultiplier"    # F
    .param p3, "fitModeResult"    # Lcom/google/android/material/transition/platform/FitModeResult;

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    .line 120
    iget v1, p3, Lcom/google/android/material/transition/platform/FitModeResult;->currentEndWidth:F

    iget v2, p3, Lcom/google/android/material/transition/platform/FitModeResult;->currentStartWidth:F

    sub-float/2addr v1, v2

    .line 121
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 122
    .local v0, "currentWidthDiff":F
    iget v1, p1, Landroid/graphics/RectF;->left:F

    div-float v2, v0, v3

    mul-float/2addr v2, p2

    add-float/2addr v1, v2

    iput v1, p1, Landroid/graphics/RectF;->left:F

    .line 123
    iget v1, p1, Landroid/graphics/RectF;->right:F

    div-float v2, v0, v3

    mul-float/2addr v2, p2

    sub-float/2addr v1, v2

    iput v1, p1, Landroid/graphics/RectF;->right:F

    .line 124
    return-void
.end method

.method public evaluate(FFFFFFF)Lcom/google/android/material/transition/platform/FitModeResult;
    .locals 7
    .param p1, "progress"    # F
    .param p2, "scaleStartFraction"    # F
    .param p3, "scaleEndFraction"    # F
    .param p4, "startWidth"    # F
    .param p5, "startHeight"    # F
    .param p6, "endWidth"    # F
    .param p7, "endHeight"    # F

    .prologue
    .line 92
    const/4 v5, 0x1

    move v0, p5

    move v1, p7

    move v2, p2

    move v3, p3

    move v4, p1

    .line 93
    invoke-static/range {v0 .. v5}, Lcom/google/android/material/transition/platform/TransitionUtils;->lerp(FFFFFZ)F

    move-result v4

    .line 100
    .local v4, "currentHeight":F
    div-float v1, v4, p5

    .line 101
    .local v1, "startScale":F
    div-float v2, v4, p7

    .line 102
    .local v2, "endScale":F
    mul-float v3, p4, v1

    .line 103
    .local v3, "currentStartWidth":F
    mul-float v5, p6, v2

    .line 104
    .local v5, "currentEndWidth":F
    new-instance v0, Lcom/google/android/material/transition/platform/FitModeResult;

    move v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/material/transition/platform/FitModeResult;-><init>(FFFFFF)V

    return-object v0
.end method

.method public shouldMaskStartBounds(Lcom/google/android/material/transition/platform/FitModeResult;)Z
    .locals 2
    .param p1, "fitModeResult"    # Lcom/google/android/material/transition/platform/FitModeResult;

    .prologue
    .line 115
    iget v0, p1, Lcom/google/android/material/transition/platform/FitModeResult;->currentStartWidth:F

    iget v1, p1, Lcom/google/android/material/transition/platform/FitModeResult;->currentEndWidth:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.class final Lcom/google/android/material/transition/FitModeEvaluators$1;
.super Ljava/lang/Object;
.source "FitModeEvaluators.java"

# interfaces
.implements Lcom/google/android/material/transition/FitModeEvaluator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/transition/FitModeEvaluators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public applyMask(Landroid/graphics/RectF;FLcom/google/android/material/transition/FitModeResult;)V
    .locals 3
    .param p1, "maskBounds"    # Landroid/graphics/RectF;
    .param p2, "maskMultiplier"    # F
    .param p3, "fitModeResult"    # Lcom/google/android/material/transition/FitModeResult;

    .prologue
    .line 69
    iget v1, p3, Lcom/google/android/material/transition/FitModeResult;->currentEndHeight:F

    iget v2, p3, Lcom/google/android/material/transition/FitModeResult;->currentStartHeight:F

    sub-float/2addr v1, v2

    .line 70
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 71
    .local v0, "currentHeightDiff":F
    iget v1, p1, Landroid/graphics/RectF;->bottom:F

    mul-float v2, v0, p2

    sub-float/2addr v1, v2

    iput v1, p1, Landroid/graphics/RectF;->bottom:F

    .line 72
    return-void
.end method

.method public evaluate(FFFFFFF)Lcom/google/android/material/transition/FitModeResult;
    .locals 7
    .param p1, "progress"    # F
    .param p2, "scaleStartFraction"    # F
    .param p3, "scaleEndFraction"    # F
    .param p4, "startWidth"    # F
    .param p5, "startHeight"    # F
    .param p6, "endWidth"    # F
    .param p7, "endHeight"    # F

    .prologue
    .line 41
    const/4 v5, 0x1

    move v0, p4

    move v1, p6

    move v2, p2

    move v3, p3

    move v4, p1

    .line 42
    invoke-static/range {v0 .. v5}, Lcom/google/android/material/transition/TransitionUtils;->lerp(FFFFFZ)F

    move-result v3

    .line 49
    .local v3, "currentWidth":F
    div-float v1, v3, p4

    .line 50
    .local v1, "startScale":F
    div-float v2, v3, p6

    .line 51
    .local v2, "endScale":F
    mul-float v4, p5, v1

    .line 52
    .local v4, "currentStartHeight":F
    mul-float v6, p7, v2

    .line 53
    .local v6, "currentEndHeight":F
    new-instance v0, Lcom/google/android/material/transition/FitModeResult;

    move v5, v3

    invoke-direct/range {v0 .. v6}, Lcom/google/android/material/transition/FitModeResult;-><init>(FFFFFF)V

    return-object v0
.end method

.method public shouldMaskStartBounds(Lcom/google/android/material/transition/FitModeResult;)Z
    .locals 2
    .param p1, "fitModeResult"    # Lcom/google/android/material/transition/FitModeResult;

    .prologue
    .line 64
    iget v0, p1, Lcom/google/android/material/transition/FitModeResult;->currentStartHeight:F

    iget v1, p1, Lcom/google/android/material/transition/FitModeResult;->currentEndHeight:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.class Lcom/google/android/material/tabs/ElasticTabIndicatorInterpolator;
.super Lcom/google/android/material/tabs/TabIndicatorInterpolator;
.source "ElasticTabIndicatorInterpolator.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/google/android/material/tabs/TabIndicatorInterpolator;-><init>()V

    return-void
.end method

.method private static accInterp(F)F
    .locals 6
    .param p0, "fraction"    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    .prologue
    .line 43
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    float-to-double v2, p0

    const-wide v4, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    sub-double/2addr v0, v2

    double-to-float v0, v0

    return v0
.end method

.method private static decInterp(F)F
    .locals 4
    .param p0, "fraction"    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    .prologue
    .line 37
    float-to-double v0, p0

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method


# virtual methods
.method setIndicatorBoundsForOffset(Lcom/google/android/material/tabs/TabLayout;Landroid/view/View;Landroid/view/View;FLandroid/graphics/drawable/Drawable;)V
    .locals 9
    .param p1, "tabLayout"    # Lcom/google/android/material/tabs/TabLayout;
    .param p2, "startTitle"    # Landroid/view/View;
    .param p3, "endTitle"    # Landroid/view/View;
    .param p4, "offset"    # F
    .param p5, "indicator"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 55
    invoke-static {p1, p2}, Lcom/google/android/material/tabs/ElasticTabIndicatorInterpolator;->calculateIndicatorWidthForTab(Lcom/google/android/material/tabs/TabLayout;Landroid/view/View;)Landroid/graphics/RectF;

    move-result-object v4

    .line 56
    .local v4, "startIndicator":Landroid/graphics/RectF;
    invoke-static {p1, p3}, Lcom/google/android/material/tabs/ElasticTabIndicatorInterpolator;->calculateIndicatorWidthForTab(Lcom/google/android/material/tabs/TabLayout;Landroid/view/View;)Landroid/graphics/RectF;

    move-result-object v0

    .line 61
    .local v0, "endIndicator":Landroid/graphics/RectF;
    iget v5, v4, Landroid/graphics/RectF;->left:F

    iget v6, v0, Landroid/graphics/RectF;->left:F

    cmpg-float v5, v5, v6

    if-gez v5, :cond_0

    const/4 v1, 0x1

    .line 66
    .local v1, "isMovingRight":Z
    :goto_0
    if-eqz v1, :cond_1

    .line 67
    invoke-static {p4}, Lcom/google/android/material/tabs/ElasticTabIndicatorInterpolator;->accInterp(F)F

    move-result v2

    .line 68
    .local v2, "leftFraction":F
    invoke-static {p4}, Lcom/google/android/material/tabs/ElasticTabIndicatorInterpolator;->decInterp(F)F

    move-result v3

    .line 73
    .local v3, "rightFraction":F
    :goto_1
    iget v5, v4, Landroid/graphics/RectF;->left:F

    float-to-int v5, v5

    iget v6, v0, Landroid/graphics/RectF;->left:F

    float-to-int v6, v6

    .line 74
    invoke-static {v5, v6, v2}, Lcom/google/android/material/animation/AnimationUtils;->lerp(IIF)I

    move-result v5

    .line 75
    invoke-virtual {p5}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Rect;->top:I

    iget v7, v4, Landroid/graphics/RectF;->right:F

    float-to-int v7, v7

    iget v8, v0, Landroid/graphics/RectF;->right:F

    float-to-int v8, v8

    .line 76
    invoke-static {v7, v8, v3}, Lcom/google/android/material/animation/AnimationUtils;->lerp(IIF)I

    move-result v7

    .line 77
    invoke-virtual {p5}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v8

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    .line 73
    invoke-virtual {p5, v5, v6, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 78
    return-void

    .line 61
    .end local v1    # "isMovingRight":Z
    .end local v2    # "leftFraction":F
    .end local v3    # "rightFraction":F
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 70
    .restart local v1    # "isMovingRight":Z
    :cond_1
    invoke-static {p4}, Lcom/google/android/material/tabs/ElasticTabIndicatorInterpolator;->decInterp(F)F

    move-result v2

    .line 71
    .restart local v2    # "leftFraction":F
    invoke-static {p4}, Lcom/google/android/material/tabs/ElasticTabIndicatorInterpolator;->accInterp(F)F

    move-result v3

    .restart local v3    # "rightFraction":F
    goto :goto_1
.end method

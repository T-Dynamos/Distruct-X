.class public Lcom/google/android/material/elevation/ElevationOverlayProvider;
.super Ljava/lang/Object;
.source "ElevationOverlayProvider.java"


# static fields
.field private static final FORMULA_MULTIPLIER:F = 4.5f

.field private static final FORMULA_OFFSET:F = 2.0f


# instance fields
.field private final colorSurface:I

.field private final displayDensity:F

.field private final elevationOverlayColor:I

.field private final elevationOverlayEnabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    sget v0, Lcom/google/android/material/R$attr;->elevationOverlayEnabled:I

    .line 44
    invoke-static {p1, v0, v1}, Lcom/google/android/material/resources/MaterialAttributes;->resolveBoolean(Landroid/content/Context;IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/material/elevation/ElevationOverlayProvider;->elevationOverlayEnabled:Z

    .line 45
    sget v0, Lcom/google/android/material/R$attr;->elevationOverlayColor:I

    .line 46
    invoke-static {p1, v0, v1}, Lcom/google/android/material/color/MaterialColors;->getColor(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/elevation/ElevationOverlayProvider;->elevationOverlayColor:I

    .line 47
    sget v0, Lcom/google/android/material/R$attr;->colorSurface:I

    invoke-static {p1, v0, v1}, Lcom/google/android/material/color/MaterialColors;->getColor(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/elevation/ElevationOverlayProvider;->colorSurface:I

    .line 48
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/google/android/material/elevation/ElevationOverlayProvider;->displayDensity:F

    .line 49
    return-void
.end method

.method private isThemeSurfaceColor(I)Z
    .locals 2
    .param p1, "color"    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 173
    const/16 v0, 0xff

    invoke-static {p1, v0}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v0

    iget v1, p0, Lcom/google/android/material/elevation/ElevationOverlayProvider;->colorSurface:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public calculateOverlayAlpha(F)I
    .locals 2
    .param p1, "elevation"    # F

    .prologue
    .line 130
    invoke-virtual {p0, p1}, Lcom/google/android/material/elevation/ElevationOverlayProvider;->calculateOverlayAlphaFraction(F)F

    move-result v0

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method public calculateOverlayAlphaFraction(F)F
    .locals 6
    .param p1, "elevation"    # F

    .prologue
    const/4 v2, 0x0

    .line 138
    iget v3, p0, Lcom/google/android/material/elevation/ElevationOverlayProvider;->displayDensity:F

    cmpg-float v3, v3, v2

    if-lez v3, :cond_0

    cmpg-float v3, p1, v2

    if-gtz v3, :cond_1

    .line 144
    :cond_0
    :goto_0
    return v2

    .line 141
    :cond_1
    iget v2, p0, Lcom/google/android/material/elevation/ElevationOverlayProvider;->displayDensity:F

    div-float v1, p1, v2

    .line 142
    .local v1, "elevationDp":F
    const/high16 v2, 0x40900000    # 4.5f

    float-to-double v4, v1

    .line 143
    invoke-static {v4, v5}, Ljava/lang/Math;->log1p(D)D

    move-result-wide v4

    double-to-float v3, v4

    mul-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    add-float/2addr v2, v3

    const/high16 v3, 0x42c80000    # 100.0f

    div-float v0, v2, v3

    .line 144
    .local v0, "alphaFraction":F
    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    goto :goto_0
.end method

.method public compositeOverlay(IF)I
    .locals 5
    .param p1, "backgroundColor"    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .param p2, "elevation"    # F
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    .prologue
    .line 117
    invoke-virtual {p0, p2}, Lcom/google/android/material/elevation/ElevationOverlayProvider;->calculateOverlayAlphaFraction(F)F

    move-result v2

    .line 118
    .local v2, "overlayAlphaFraction":F
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    .line 119
    .local v0, "backgroundAlpha":I
    const/16 v4, 0xff

    invoke-static {p1, v4}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v1

    .line 120
    .local v1, "backgroundColorOpaque":I
    iget v4, p0, Lcom/google/android/material/elevation/ElevationOverlayProvider;->elevationOverlayColor:I

    .line 121
    invoke-static {v1, v4, v2}, Lcom/google/android/material/color/MaterialColors;->layer(IIF)I

    move-result v3

    .line 122
    .local v3, "overlayColorOpaque":I
    invoke-static {v3, v0}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v4

    return v4
.end method

.method public compositeOverlay(IFLandroid/view/View;)I
    .locals 1
    .param p1, "backgroundColor"    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .param p2, "elevation"    # F
    .param p3, "overlayView"    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    .prologue
    .line 105
    invoke-virtual {p0, p3}, Lcom/google/android/material/elevation/ElevationOverlayProvider;->getParentAbsoluteElevation(Landroid/view/View;)F

    move-result v0

    add-float/2addr p2, v0

    .line 106
    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/elevation/ElevationOverlayProvider;->compositeOverlay(IF)I

    move-result v0

    return v0
.end method

.method public compositeOverlayIfNeeded(IF)I
    .locals 1
    .param p1, "backgroundColor"    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .param p2, "elevation"    # F
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    .prologue
    .line 94
    iget-boolean v0, p0, Lcom/google/android/material/elevation/ElevationOverlayProvider;->elevationOverlayEnabled:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/google/android/material/elevation/ElevationOverlayProvider;->isThemeSurfaceColor(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/elevation/ElevationOverlayProvider;->compositeOverlay(IF)I

    move-result p1

    .line 97
    .end local p1    # "backgroundColor":I
    :cond_0
    return p1
.end method

.method public compositeOverlayIfNeeded(IFLandroid/view/View;)I
    .locals 1
    .param p1, "backgroundColor"    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .param p2, "elevation"    # F
    .param p3, "overlayView"    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    .prologue
    .line 82
    invoke-virtual {p0, p3}, Lcom/google/android/material/elevation/ElevationOverlayProvider;->getParentAbsoluteElevation(Landroid/view/View;)F

    move-result v0

    add-float/2addr p2, v0

    .line 83
    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/elevation/ElevationOverlayProvider;->compositeOverlayIfNeeded(IF)I

    move-result v0

    return v0
.end method

.method public compositeOverlayWithThemeSurfaceColorIfNeeded(F)I
    .locals 1
    .param p1, "elevation"    # F
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    .prologue
    .line 70
    iget v0, p0, Lcom/google/android/material/elevation/ElevationOverlayProvider;->colorSurface:I

    invoke-virtual {p0, v0, p1}, Lcom/google/android/material/elevation/ElevationOverlayProvider;->compositeOverlayIfNeeded(IF)I

    move-result v0

    return v0
.end method

.method public compositeOverlayWithThemeSurfaceColorIfNeeded(FLandroid/view/View;)I
    .locals 1
    .param p1, "elevation"    # F
    .param p2, "overlayView"    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    .prologue
    .line 60
    invoke-virtual {p0, p2}, Lcom/google/android/material/elevation/ElevationOverlayProvider;->getParentAbsoluteElevation(Landroid/view/View;)F

    move-result v0

    add-float/2addr p1, v0

    .line 61
    invoke-virtual {p0, p1}, Lcom/google/android/material/elevation/ElevationOverlayProvider;->compositeOverlayWithThemeSurfaceColorIfNeeded(F)I

    move-result v0

    return v0
.end method

.method public getParentAbsoluteElevation(Landroid/view/View;)F
    .locals 1
    .param p1, "overlayView"    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 169
    invoke-static {p1}, Lcom/google/android/material/internal/ViewUtils;->getParentAbsoluteElevation(Landroid/view/View;)F

    move-result v0

    return v0
.end method

.method public getThemeElevationOverlayColor()I
    .locals 1
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    .prologue
    .line 155
    iget v0, p0, Lcom/google/android/material/elevation/ElevationOverlayProvider;->elevationOverlayColor:I

    return v0
.end method

.method public getThemeSurfaceColor()I
    .locals 1
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    .prologue
    .line 161
    iget v0, p0, Lcom/google/android/material/elevation/ElevationOverlayProvider;->colorSurface:I

    return v0
.end method

.method public isThemeElevationOverlayEnabled()Z
    .locals 1

    .prologue
    .line 149
    iget-boolean v0, p0, Lcom/google/android/material/elevation/ElevationOverlayProvider;->elevationOverlayEnabled:Z

    return v0
.end method

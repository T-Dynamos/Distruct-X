.class public Lcom/google/android/material/shape/ShapeAppearancePathProvider;
.super Ljava/lang/Object;
.source "ShapeAppearancePathProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/shape/ShapeAppearancePathProvider$ShapeAppearancePathSpec;,
        Lcom/google/android/material/shape/ShapeAppearancePathProvider$PathListener;,
        Lcom/google/android/material/shape/ShapeAppearancePathProvider$Lazy;
    }
.end annotation


# instance fields
.field private final boundsPath:Landroid/graphics/Path;

.field private final cornerPath:Landroid/graphics/Path;

.field private final cornerPaths:[Lcom/google/android/material/shape/ShapePath;

.field private final cornerTransforms:[Landroid/graphics/Matrix;

.field private edgeIntersectionCheckEnabled:Z

.field private final edgePath:Landroid/graphics/Path;

.field private final edgeTransforms:[Landroid/graphics/Matrix;

.field private final overlappedEdgePath:Landroid/graphics/Path;

.field private final pointF:Landroid/graphics/PointF;

.field private final scratch:[F

.field private final scratch2:[F

.field private final shapePath:Lcom/google/android/material/shape/ShapePath;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v2, 0x2

    const/4 v3, 0x4

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-array v1, v3, [Lcom/google/android/material/shape/ShapePath;

    iput-object v1, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->cornerPaths:[Lcom/google/android/material/shape/ShapePath;

    .line 56
    new-array v1, v3, [Landroid/graphics/Matrix;

    iput-object v1, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->cornerTransforms:[Landroid/graphics/Matrix;

    .line 57
    new-array v1, v3, [Landroid/graphics/Matrix;

    iput-object v1, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->edgeTransforms:[Landroid/graphics/Matrix;

    .line 60
    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    iput-object v1, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->pointF:Landroid/graphics/PointF;

    .line 61
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->overlappedEdgePath:Landroid/graphics/Path;

    .line 62
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->boundsPath:Landroid/graphics/Path;

    .line 63
    new-instance v1, Lcom/google/android/material/shape/ShapePath;

    invoke-direct {v1}, Lcom/google/android/material/shape/ShapePath;-><init>()V

    iput-object v1, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->shapePath:Lcom/google/android/material/shape/ShapePath;

    .line 64
    new-array v1, v2, [F

    iput-object v1, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->scratch:[F

    .line 65
    new-array v1, v2, [F

    iput-object v1, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->scratch2:[F

    .line 66
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->edgePath:Landroid/graphics/Path;

    .line 67
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->cornerPath:Landroid/graphics/Path;

    .line 69
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->edgeIntersectionCheckEnabled:Z

    .line 72
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 73
    iget-object v1, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->cornerPaths:[Lcom/google/android/material/shape/ShapePath;

    new-instance v2, Lcom/google/android/material/shape/ShapePath;

    invoke-direct {v2}, Lcom/google/android/material/shape/ShapePath;-><init>()V

    aput-object v2, v1, v0

    .line 74
    iget-object v1, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->cornerTransforms:[Landroid/graphics/Matrix;

    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    aput-object v2, v1, v0

    .line 75
    iget-object v1, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->edgeTransforms:[Landroid/graphics/Matrix;

    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    aput-object v2, v1, v0

    .line 72
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 77
    :cond_0
    return-void
.end method

.method private angleOfEdge(I)F
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 325
    add-int/lit8 v0, p1, 0x1

    mul-int/lit8 v0, v0, 0x5a

    int-to-float v0, v0

    return v0
.end method

.method private appendCornerPath(Lcom/google/android/material/shape/ShapeAppearancePathProvider$ShapeAppearancePathSpec;I)V
    .locals 4
    .param p1, "spec"    # Lcom/google/android/material/shape/ShapeAppearancePathProvider$ShapeAppearancePathSpec;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "index"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 170
    iget-object v0, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->scratch:[F

    iget-object v1, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->cornerPaths:[Lcom/google/android/material/shape/ShapePath;

    aget-object v1, v1, p2

    invoke-virtual {v1}, Lcom/google/android/material/shape/ShapePath;->getStartX()F

    move-result v1

    aput v1, v0, v2

    .line 171
    iget-object v0, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->scratch:[F

    iget-object v1, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->cornerPaths:[Lcom/google/android/material/shape/ShapePath;

    aget-object v1, v1, p2

    invoke-virtual {v1}, Lcom/google/android/material/shape/ShapePath;->getStartY()F

    move-result v1

    aput v1, v0, v3

    .line 172
    iget-object v0, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->cornerTransforms:[Landroid/graphics/Matrix;

    aget-object v0, v0, p2

    iget-object v1, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->scratch:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 173
    if-nez p2, :cond_1

    .line 174
    iget-object v0, p1, Lcom/google/android/material/shape/ShapeAppearancePathProvider$ShapeAppearancePathSpec;->path:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->scratch:[F

    aget v1, v1, v2

    iget-object v2, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->scratch:[F

    aget v2, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 178
    :goto_0
    iget-object v0, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->cornerPaths:[Lcom/google/android/material/shape/ShapePath;

    aget-object v0, v0, p2

    iget-object v1, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->cornerTransforms:[Landroid/graphics/Matrix;

    aget-object v1, v1, p2

    iget-object v2, p1, Lcom/google/android/material/shape/ShapeAppearancePathProvider$ShapeAppearancePathSpec;->path:Landroid/graphics/Path;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/material/shape/ShapePath;->applyToPath(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    .line 179
    iget-object v0, p1, Lcom/google/android/material/shape/ShapeAppearancePathProvider$ShapeAppearancePathSpec;->pathListener:Lcom/google/android/material/shape/ShapeAppearancePathProvider$PathListener;

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p1, Lcom/google/android/material/shape/ShapeAppearancePathProvider$ShapeAppearancePathSpec;->pathListener:Lcom/google/android/material/shape/ShapeAppearancePathProvider$PathListener;

    iget-object v1, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->cornerPaths:[Lcom/google/android/material/shape/ShapePath;

    aget-object v1, v1, p2

    iget-object v2, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->cornerTransforms:[Landroid/graphics/Matrix;

    aget-object v2, v2, p2

    invoke-interface {v0, v1, v2, p2}, Lcom/google/android/material/shape/ShapeAppearancePathProvider$PathListener;->onCornerPathCreated(Lcom/google/android/material/shape/ShapePath;Landroid/graphics/Matrix;I)V

    .line 182
    :cond_0
    return-void

    .line 176
    :cond_1
    iget-object v0, p1, Lcom/google/android/material/shape/ShapeAppearancePathProvider$ShapeAppearancePathSpec;->path:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->scratch:[F

    aget v1, v1, v2

    iget-object v2, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->scratch:[F

    aget v2, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_0
.end method

.method private appendEdgePath(Lcom/google/android/material/shape/ShapeAppearancePathProvider$ShapeAppearancePathSpec;I)V
    .locals 11
    .param p1, "spec"    # Lcom/google/android/material/shape/ShapeAppearancePathProvider$ShapeAppearancePathSpec;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "index"    # I

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 185
    add-int/lit8 v4, p2, 0x1

    rem-int/lit8 v3, v4, 0x4

    .line 186
    .local v3, "nextIndex":I
    iget-object v4, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->scratch:[F

    iget-object v5, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->cornerPaths:[Lcom/google/android/material/shape/ShapePath;

    aget-object v5, v5, p2

    invoke-virtual {v5}, Lcom/google/android/material/shape/ShapePath;->getEndX()F

    move-result v5

    aput v5, v4, v8

    .line 187
    iget-object v4, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->scratch:[F

    iget-object v5, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->cornerPaths:[Lcom/google/android/material/shape/ShapePath;

    aget-object v5, v5, p2

    invoke-virtual {v5}, Lcom/google/android/material/shape/ShapePath;->getEndY()F

    move-result v5

    aput v5, v4, v9

    .line 188
    iget-object v4, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->cornerTransforms:[Landroid/graphics/Matrix;

    aget-object v4, v4, p2

    iget-object v5, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->scratch:[F

    invoke-virtual {v4, v5}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 190
    iget-object v4, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->scratch2:[F

    iget-object v5, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->cornerPaths:[Lcom/google/android/material/shape/ShapePath;

    aget-object v5, v5, v3

    invoke-virtual {v5}, Lcom/google/android/material/shape/ShapePath;->getStartX()F

    move-result v5

    aput v5, v4, v8

    .line 191
    iget-object v4, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->scratch2:[F

    iget-object v5, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->cornerPaths:[Lcom/google/android/material/shape/ShapePath;

    aget-object v5, v5, v3

    invoke-virtual {v5}, Lcom/google/android/material/shape/ShapePath;->getStartY()F

    move-result v5

    aput v5, v4, v9

    .line 192
    iget-object v4, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->cornerTransforms:[Landroid/graphics/Matrix;

    aget-object v4, v4, v3

    iget-object v5, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->scratch2:[F

    invoke-virtual {v4, v5}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 194
    iget-object v4, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->scratch:[F

    aget v4, v4, v8

    iget-object v5, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->scratch2:[F

    aget v5, v5, v8

    sub-float/2addr v4, v5

    float-to-double v4, v4

    iget-object v6, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->scratch:[F

    aget v6, v6, v9

    iget-object v7, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->scratch2:[F

    aget v7, v7, v9

    sub-float/2addr v6, v7

    float-to-double v6, v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v4

    double-to-float v1, v4

    .line 196
    .local v1, "edgeLength":F
    const v4, 0x3a83126f    # 0.001f

    sub-float v4, v1, v4

    invoke-static {v4, v10}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 197
    iget-object v4, p1, Lcom/google/android/material/shape/ShapeAppearancePathProvider$ShapeAppearancePathSpec;->bounds:Landroid/graphics/RectF;

    invoke-direct {p0, v4, p2}, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->getEdgeCenterForIndex(Landroid/graphics/RectF;I)F

    move-result v0

    .line 198
    .local v0, "center":F
    iget-object v4, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->shapePath:Lcom/google/android/material/shape/ShapePath;

    invoke-virtual {v4, v10, v10}, Lcom/google/android/material/shape/ShapePath;->reset(FF)V

    .line 199
    iget-object v4, p1, Lcom/google/android/material/shape/ShapeAppearancePathProvider$ShapeAppearancePathSpec;->shapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    invoke-direct {p0, p2, v4}, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->getEdgeTreatmentForIndex(ILcom/google/android/material/shape/ShapeAppearanceModel;)Lcom/google/android/material/shape/EdgeTreatment;

    move-result-object v2

    .line 200
    .local v2, "edgeTreatment":Lcom/google/android/material/shape/EdgeTreatment;
    iget v4, p1, Lcom/google/android/material/shape/ShapeAppearancePathProvider$ShapeAppearancePathSpec;->interpolation:F

    iget-object v5, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->shapePath:Lcom/google/android/material/shape/ShapePath;

    invoke-virtual {v2, v1, v0, v4, v5}, Lcom/google/android/material/shape/EdgeTreatment;->getEdgePath(FFFLcom/google/android/material/shape/ShapePath;)V

    .line 201
    iget-object v4, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->edgePath:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    .line 202
    iget-object v4, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->shapePath:Lcom/google/android/material/shape/ShapePath;

    iget-object v5, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->edgeTransforms:[Landroid/graphics/Matrix;

    aget-object v5, v5, p2

    iget-object v6, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->edgePath:Landroid/graphics/Path;

    invoke-virtual {v4, v5, v6}, Lcom/google/android/material/shape/ShapePath;->applyToPath(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    .line 204
    iget-boolean v4, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->edgeIntersectionCheckEnabled:Z

    if-eqz v4, :cond_2

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x13

    if-lt v4, v5, :cond_2

    .line 206
    invoke-virtual {v2}, Lcom/google/android/material/shape/EdgeTreatment;->forceIntersection()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->edgePath:Landroid/graphics/Path;

    .line 207
    invoke-direct {p0, v4, p2}, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->pathOverlapsCorner(Landroid/graphics/Path;I)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->edgePath:Landroid/graphics/Path;

    .line 208
    invoke-direct {p0, v4, v3}, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->pathOverlapsCorner(Landroid/graphics/Path;I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 212
    :cond_0
    iget-object v4, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->edgePath:Landroid/graphics/Path;

    iget-object v5, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->edgePath:Landroid/graphics/Path;

    iget-object v6, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->boundsPath:Landroid/graphics/Path;

    sget-object v7, Landroid/graphics/Path$Op;->DIFFERENCE:Landroid/graphics/Path$Op;

    invoke-virtual {v4, v5, v6, v7}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    .line 216
    iget-object v4, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->scratch:[F

    iget-object v5, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->shapePath:Lcom/google/android/material/shape/ShapePath;

    invoke-virtual {v5}, Lcom/google/android/material/shape/ShapePath;->getStartX()F

    move-result v5

    aput v5, v4, v8

    .line 217
    iget-object v4, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->scratch:[F

    iget-object v5, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->shapePath:Lcom/google/android/material/shape/ShapePath;

    invoke-virtual {v5}, Lcom/google/android/material/shape/ShapePath;->getStartY()F

    move-result v5

    aput v5, v4, v9

    .line 218
    iget-object v4, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->edgeTransforms:[Landroid/graphics/Matrix;

    aget-object v4, v4, p2

    iget-object v5, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->scratch:[F

    invoke-virtual {v4, v5}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 219
    iget-object v4, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->overlappedEdgePath:Landroid/graphics/Path;

    iget-object v5, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->scratch:[F

    aget v5, v5, v8

    iget-object v6, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->scratch:[F

    aget v6, v6, v9

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Path;->moveTo(FF)V

    .line 222
    iget-object v4, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->shapePath:Lcom/google/android/material/shape/ShapePath;

    iget-object v5, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->edgeTransforms:[Landroid/graphics/Matrix;

    aget-object v5, v5, p2

    iget-object v6, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->overlappedEdgePath:Landroid/graphics/Path;

    invoke-virtual {v4, v5, v6}, Lcom/google/android/material/shape/ShapePath;->applyToPath(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    .line 227
    :goto_0
    iget-object v4, p1, Lcom/google/android/material/shape/ShapeAppearancePathProvider$ShapeAppearancePathSpec;->pathListener:Lcom/google/android/material/shape/ShapeAppearancePathProvider$PathListener;

    if-eqz v4, :cond_1

    .line 228
    iget-object v4, p1, Lcom/google/android/material/shape/ShapeAppearancePathProvider$ShapeAppearancePathSpec;->pathListener:Lcom/google/android/material/shape/ShapeAppearancePathProvider$PathListener;

    iget-object v5, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->shapePath:Lcom/google/android/material/shape/ShapePath;

    iget-object v6, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->edgeTransforms:[Landroid/graphics/Matrix;

    aget-object v6, v6, p2

    invoke-interface {v4, v5, v6, p2}, Lcom/google/android/material/shape/ShapeAppearancePathProvider$PathListener;->onEdgePathCreated(Lcom/google/android/material/shape/ShapePath;Landroid/graphics/Matrix;I)V

    .line 230
    :cond_1
    return-void

    .line 224
    :cond_2
    iget-object v4, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->shapePath:Lcom/google/android/material/shape/ShapePath;

    iget-object v5, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->edgeTransforms:[Landroid/graphics/Matrix;

    aget-object v5, v5, p2

    iget-object v6, p1, Lcom/google/android/material/shape/ShapeAppearancePathProvider$ShapeAppearancePathSpec;->path:Landroid/graphics/Path;

    invoke-virtual {v4, v5, v6}, Lcom/google/android/material/shape/ShapePath;->applyToPath(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    goto :goto_0
.end method

.method private getCoordinatesOfCorner(ILandroid/graphics/RectF;Landroid/graphics/PointF;)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "bounds"    # Landroid/graphics/RectF;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "pointF"    # Landroid/graphics/PointF;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 307
    packed-switch p1, :pswitch_data_0

    .line 319
    iget v0, p2, Landroid/graphics/RectF;->right:F

    iget v1, p2, Landroid/graphics/RectF;->top:F

    invoke-virtual {p3, v0, v1}, Landroid/graphics/PointF;->set(FF)V

    .line 322
    :goto_0
    return-void

    .line 309
    :pswitch_0
    iget v0, p2, Landroid/graphics/RectF;->right:F

    iget v1, p2, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p3, v0, v1}, Landroid/graphics/PointF;->set(FF)V

    goto :goto_0

    .line 312
    :pswitch_1
    iget v0, p2, Landroid/graphics/RectF;->left:F

    iget v1, p2, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p3, v0, v1}, Landroid/graphics/PointF;->set(FF)V

    goto :goto_0

    .line 315
    :pswitch_2
    iget v0, p2, Landroid/graphics/RectF;->left:F

    iget v1, p2, Landroid/graphics/RectF;->top:F

    invoke-virtual {p3, v0, v1}, Landroid/graphics/PointF;->set(FF)V

    goto :goto_0

    .line 307
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getCornerSizeForIndex(ILcom/google/android/material/shape/ShapeAppearanceModel;)Lcom/google/android/material/shape/CornerSize;
    .locals 1
    .param p1, "index"    # I
    .param p2, "shapeAppearanceModel"    # Lcom/google/android/material/shape/ShapeAppearanceModel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 278
    packed-switch p1, :pswitch_data_0

    .line 287
    invoke-virtual {p2}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getTopRightCornerSize()Lcom/google/android/material/shape/CornerSize;

    move-result-object v0

    :goto_0
    return-object v0

    .line 280
    :pswitch_0
    invoke-virtual {p2}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getBottomRightCornerSize()Lcom/google/android/material/shape/CornerSize;

    move-result-object v0

    goto :goto_0

    .line 282
    :pswitch_1
    invoke-virtual {p2}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getBottomLeftCornerSize()Lcom/google/android/material/shape/CornerSize;

    move-result-object v0

    goto :goto_0

    .line 284
    :pswitch_2
    invoke-virtual {p2}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getTopLeftCornerSize()Lcom/google/android/material/shape/CornerSize;

    move-result-object v0

    goto :goto_0

    .line 278
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getCornerTreatmentForIndex(ILcom/google/android/material/shape/ShapeAppearanceModel;)Lcom/google/android/material/shape/CornerTreatment;
    .locals 1
    .param p1, "index"    # I
    .param p2, "shapeAppearanceModel"    # Lcom/google/android/material/shape/ShapeAppearanceModel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 263
    packed-switch p1, :pswitch_data_0

    .line 272
    invoke-virtual {p2}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getTopRightCorner()Lcom/google/android/material/shape/CornerTreatment;

    move-result-object v0

    :goto_0
    return-object v0

    .line 265
    :pswitch_0
    invoke-virtual {p2}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getBottomRightCorner()Lcom/google/android/material/shape/CornerTreatment;

    move-result-object v0

    goto :goto_0

    .line 267
    :pswitch_1
    invoke-virtual {p2}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getBottomLeftCorner()Lcom/google/android/material/shape/CornerTreatment;

    move-result-object v0

    goto :goto_0

    .line 269
    :pswitch_2
    invoke-virtual {p2}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getTopLeftCorner()Lcom/google/android/material/shape/CornerTreatment;

    move-result-object v0

    goto :goto_0

    .line 263
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getEdgeCenterForIndex(Landroid/graphics/RectF;I)F
    .locals 4
    .param p1, "bounds"    # Landroid/graphics/RectF;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "index"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 247
    iget-object v0, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->scratch:[F

    iget-object v1, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->cornerPaths:[Lcom/google/android/material/shape/ShapePath;

    aget-object v1, v1, p2

    iget v1, v1, Lcom/google/android/material/shape/ShapePath;->endX:F

    aput v1, v0, v2

    .line 248
    iget-object v0, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->scratch:[F

    iget-object v1, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->cornerPaths:[Lcom/google/android/material/shape/ShapePath;

    aget-object v1, v1, p2

    iget v1, v1, Lcom/google/android/material/shape/ShapePath;->endY:F

    aput v1, v0, v3

    .line 249
    iget-object v0, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->cornerTransforms:[Landroid/graphics/Matrix;

    aget-object v0, v0, p2

    iget-object v1, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->scratch:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 250
    packed-switch p2, :pswitch_data_0

    .line 257
    :pswitch_0
    invoke-virtual {p1}, Landroid/graphics/RectF;->centerY()F

    move-result v0

    iget-object v1, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->scratch:[F

    aget v1, v1, v3

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    :goto_0
    return v0

    .line 253
    :pswitch_1
    invoke-virtual {p1}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    iget-object v1, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->scratch:[F

    aget v1, v1, v2

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    goto :goto_0

    .line 250
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getEdgeTreatmentForIndex(ILcom/google/android/material/shape/ShapeAppearanceModel;)Lcom/google/android/material/shape/EdgeTreatment;
    .locals 1
    .param p1, "index"    # I
    .param p2, "shapeAppearanceModel"    # Lcom/google/android/material/shape/ShapeAppearanceModel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 293
    packed-switch p1, :pswitch_data_0

    .line 302
    invoke-virtual {p2}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getRightEdge()Lcom/google/android/material/shape/EdgeTreatment;

    move-result-object v0

    :goto_0
    return-object v0

    .line 295
    :pswitch_0
    invoke-virtual {p2}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getBottomEdge()Lcom/google/android/material/shape/EdgeTreatment;

    move-result-object v0

    goto :goto_0

    .line 297
    :pswitch_1
    invoke-virtual {p2}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getLeftEdge()Lcom/google/android/material/shape/EdgeTreatment;

    move-result-object v0

    goto :goto_0

    .line 299
    :pswitch_2
    invoke-virtual {p2}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getTopEdge()Lcom/google/android/material/shape/EdgeTreatment;

    move-result-object v0

    goto :goto_0

    .line 293
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static getInstance()Lcom/google/android/material/shape/ShapeAppearancePathProvider;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .prologue
    .line 83
    sget-object v0, Lcom/google/android/material/shape/ShapeAppearancePathProvider$Lazy;->INSTANCE:Lcom/google/android/material/shape/ShapeAppearancePathProvider;

    return-object v0
.end method

.method private pathOverlapsCorner(Landroid/graphics/Path;I)Z
    .locals 6
    .param p1, "edgePath"    # Landroid/graphics/Path;
    .param p2, "index"    # I
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x13
    .end annotation

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v1, 0x1

    .line 234
    iget-object v2, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->cornerPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 235
    iget-object v2, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->cornerPaths:[Lcom/google/android/material/shape/ShapePath;

    aget-object v2, v2, p2

    iget-object v3, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->cornerTransforms:[Landroid/graphics/Matrix;

    aget-object v3, v3, p2

    iget-object v4, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->cornerPath:Landroid/graphics/Path;

    invoke-virtual {v2, v3, v4}, Lcom/google/android/material/shape/ShapePath;->applyToPath(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    .line 237
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 238
    .local v0, "bounds":Landroid/graphics/RectF;
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 239
    iget-object v2, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->cornerPath:Landroid/graphics/Path;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 240
    iget-object v2, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->cornerPath:Landroid/graphics/Path;

    sget-object v3, Landroid/graphics/Path$Op;->INTERSECT:Landroid/graphics/Path$Op;

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    .line 241
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 243
    invoke-virtual {v0}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v2

    cmpl-float v2, v2, v5

    if-lez v2, :cond_1

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v2

    cmpl-float v2, v2, v5

    if-lez v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private setCornerPathAndTransform(Lcom/google/android/material/shape/ShapeAppearancePathProvider$ShapeAppearancePathSpec;I)V
    .locals 7
    .param p1, "spec"    # Lcom/google/android/material/shape/ShapeAppearancePathProvider$ShapeAppearancePathSpec;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "index"    # I

    .prologue
    .line 148
    iget-object v0, p1, Lcom/google/android/material/shape/ShapeAppearancePathProvider$ShapeAppearancePathSpec;->shapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    invoke-direct {p0, p2, v0}, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->getCornerSizeForIndex(ILcom/google/android/material/shape/ShapeAppearanceModel;)Lcom/google/android/material/shape/CornerSize;

    move-result-object v5

    .line 149
    .local v5, "size":Lcom/google/android/material/shape/CornerSize;
    iget-object v0, p1, Lcom/google/android/material/shape/ShapeAppearancePathProvider$ShapeAppearancePathSpec;->shapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    invoke-direct {p0, p2, v0}, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->getCornerTreatmentForIndex(ILcom/google/android/material/shape/ShapeAppearanceModel;)Lcom/google/android/material/shape/CornerTreatment;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->cornerPaths:[Lcom/google/android/material/shape/ShapePath;

    aget-object v1, v1, p2

    const/high16 v2, 0x42b40000    # 90.0f

    iget v3, p1, Lcom/google/android/material/shape/ShapeAppearancePathProvider$ShapeAppearancePathSpec;->interpolation:F

    iget-object v4, p1, Lcom/google/android/material/shape/ShapeAppearancePathProvider$ShapeAppearancePathSpec;->bounds:Landroid/graphics/RectF;

    .line 150
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/material/shape/CornerTreatment;->getCornerPath(Lcom/google/android/material/shape/ShapePath;FFLandroid/graphics/RectF;Lcom/google/android/material/shape/CornerSize;)V

    .line 152
    invoke-direct {p0, p2}, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->angleOfEdge(I)F

    move-result v6

    .line 153
    .local v6, "edgeAngle":F
    iget-object v0, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->cornerTransforms:[Landroid/graphics/Matrix;

    aget-object v0, v0, p2

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 154
    iget-object v0, p1, Lcom/google/android/material/shape/ShapeAppearancePathProvider$ShapeAppearancePathSpec;->bounds:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->pointF:Landroid/graphics/PointF;

    invoke-direct {p0, p2, v0, v1}, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->getCoordinatesOfCorner(ILandroid/graphics/RectF;Landroid/graphics/PointF;)V

    .line 155
    iget-object v0, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->cornerTransforms:[Landroid/graphics/Matrix;

    aget-object v0, v0, p2

    iget-object v1, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->pointF:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->pointF:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 156
    iget-object v0, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->cornerTransforms:[Landroid/graphics/Matrix;

    aget-object v0, v0, p2

    invoke-virtual {v0, v6}, Landroid/graphics/Matrix;->preRotate(F)Z

    .line 157
    return-void
.end method

.method private setEdgePathAndTransform(I)V
    .locals 5
    .param p1, "index"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 160
    iget-object v1, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->scratch:[F

    iget-object v2, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->cornerPaths:[Lcom/google/android/material/shape/ShapePath;

    aget-object v2, v2, p1

    invoke-virtual {v2}, Lcom/google/android/material/shape/ShapePath;->getEndX()F

    move-result v2

    aput v2, v1, v3

    .line 161
    iget-object v1, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->scratch:[F

    iget-object v2, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->cornerPaths:[Lcom/google/android/material/shape/ShapePath;

    aget-object v2, v2, p1

    invoke-virtual {v2}, Lcom/google/android/material/shape/ShapePath;->getEndY()F

    move-result v2

    aput v2, v1, v4

    .line 162
    iget-object v1, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->cornerTransforms:[Landroid/graphics/Matrix;

    aget-object v1, v1, p1

    iget-object v2, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->scratch:[F

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 163
    invoke-direct {p0, p1}, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->angleOfEdge(I)F

    move-result v0

    .line 164
    .local v0, "edgeAngle":F
    iget-object v1, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->edgeTransforms:[Landroid/graphics/Matrix;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    .line 165
    iget-object v1, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->edgeTransforms:[Landroid/graphics/Matrix;

    aget-object v1, v1, p1

    iget-object v2, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->scratch:[F

    aget v2, v2, v3

    iget-object v3, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->scratch:[F

    aget v3, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 166
    iget-object v1, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->edgeTransforms:[Landroid/graphics/Matrix;

    aget-object v1, v1, p1

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->preRotate(F)Z

    .line 167
    return-void
.end method


# virtual methods
.method public calculatePath(Lcom/google/android/material/shape/ShapeAppearanceModel;FLandroid/graphics/RectF;Landroid/graphics/Path;)V
    .locals 6
    .param p1, "shapeAppearanceModel"    # Lcom/google/android/material/shape/ShapeAppearanceModel;
    .param p2, "interpolation"    # F
    .param p3, "bounds"    # Landroid/graphics/RectF;
    .param p4, "path"    # Landroid/graphics/Path;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 99
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->calculatePath(Lcom/google/android/material/shape/ShapeAppearanceModel;FLandroid/graphics/RectF;Lcom/google/android/material/shape/ShapeAppearancePathProvider$PathListener;Landroid/graphics/Path;)V

    .line 100
    return-void
.end method

.method public calculatePath(Lcom/google/android/material/shape/ShapeAppearanceModel;FLandroid/graphics/RectF;Lcom/google/android/material/shape/ShapeAppearancePathProvider$PathListener;Landroid/graphics/Path;)V
    .locals 8
    .param p1, "shapeAppearanceModel"    # Lcom/google/android/material/shape/ShapeAppearanceModel;
    .param p2, "interpolation"    # F
    .param p3, "bounds"    # Landroid/graphics/RectF;
    .param p4, "pathListener"    # Lcom/google/android/material/shape/ShapeAppearancePathProvider$PathListener;
    .param p5, "path"    # Landroid/graphics/Path;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    const/4 v7, 0x4

    .line 118
    invoke-virtual {p5}, Landroid/graphics/Path;->rewind()V

    .line 119
    iget-object v1, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->overlappedEdgePath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->rewind()V

    .line 120
    iget-object v1, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->boundsPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->rewind()V

    .line 121
    iget-object v1, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->boundsPath:Landroid/graphics/Path;

    sget-object v2, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, p3, v2}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 122
    new-instance v0, Lcom/google/android/material/shape/ShapeAppearancePathProvider$ShapeAppearancePathSpec;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/google/android/material/shape/ShapeAppearancePathProvider$ShapeAppearancePathSpec;-><init>(Lcom/google/android/material/shape/ShapeAppearanceModel;FLandroid/graphics/RectF;Lcom/google/android/material/shape/ShapeAppearancePathProvider$PathListener;Landroid/graphics/Path;)V

    .line 128
    .local v0, "spec":Lcom/google/android/material/shape/ShapeAppearancePathProvider$ShapeAppearancePathSpec;
    const/4 v6, 0x0

    .local v6, "index":I
    :goto_0
    if-ge v6, v7, :cond_0

    .line 129
    invoke-direct {p0, v0, v6}, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->setCornerPathAndTransform(Lcom/google/android/material/shape/ShapeAppearancePathProvider$ShapeAppearancePathSpec;I)V

    .line 130
    invoke-direct {p0, v6}, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->setEdgePathAndTransform(I)V

    .line 128
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 133
    :cond_0
    const/4 v6, 0x0

    :goto_1
    if-ge v6, v7, :cond_1

    .line 134
    invoke-direct {p0, v0, v6}, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->appendCornerPath(Lcom/google/android/material/shape/ShapeAppearancePathProvider$ShapeAppearancePathSpec;I)V

    .line 135
    invoke-direct {p0, v0, v6}, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->appendEdgePath(Lcom/google/android/material/shape/ShapeAppearancePathProvider$ShapeAppearancePathSpec;I)V

    .line 133
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 138
    :cond_1
    invoke-virtual {p5}, Landroid/graphics/Path;->close()V

    .line 139
    iget-object v1, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->overlappedEdgePath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->close()V

    .line 142
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_2

    iget-object v1, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->overlappedEdgePath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 143
    iget-object v1, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->overlappedEdgePath:Landroid/graphics/Path;

    sget-object v2, Landroid/graphics/Path$Op;->UNION:Landroid/graphics/Path$Op;

    invoke-virtual {p5, v1, v2}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    .line 145
    :cond_2
    return-void
.end method

.method setEdgeIntersectionCheckEnable(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 329
    iput-boolean p1, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->edgeIntersectionCheckEnabled:Z

    .line 330
    return-void
.end method

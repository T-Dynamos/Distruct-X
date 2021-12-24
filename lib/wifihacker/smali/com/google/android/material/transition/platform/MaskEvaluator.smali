.class Lcom/google/android/material/transition/platform/MaskEvaluator;
.super Ljava/lang/Object;
.source "MaskEvaluator.java"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x15
.end annotation


# instance fields
.field private currentShapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

.field private final endPath:Landroid/graphics/Path;

.field private final path:Landroid/graphics/Path;

.field private final pathProvider:Lcom/google/android/material/shape/ShapeAppearancePathProvider;

.field private final startPath:Landroid/graphics/Path;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/transition/platform/MaskEvaluator;->path:Landroid/graphics/Path;

    .line 45
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/transition/platform/MaskEvaluator;->startPath:Landroid/graphics/Path;

    .line 46
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/transition/platform/MaskEvaluator;->endPath:Landroid/graphics/Path;

    .line 48
    invoke-static {}, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->getInstance()Lcom/google/android/material/shape/ShapeAppearancePathProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/transition/platform/MaskEvaluator;->pathProvider:Lcom/google/android/material/shape/ShapeAppearancePathProvider;

    .line 47
    return-void
.end method


# virtual methods
.method clip(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 88
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 89
    iget-object v0, p0, Lcom/google/android/material/transition/platform/MaskEvaluator;->path:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 94
    :goto_0
    return-void

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/transition/platform/MaskEvaluator;->startPath:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 92
    iget-object v0, p0, Lcom/google/android/material/transition/platform/MaskEvaluator;->endPath:Landroid/graphics/Path;

    sget-object v1, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    goto :goto_0
.end method

.method evaluate(FLcom/google/android/material/shape/ShapeAppearanceModel;Lcom/google/android/material/shape/ShapeAppearanceModel;Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;)V
    .locals 8
    .param p1, "progress"    # F
    .param p2, "startShapeAppearanceModel"    # Lcom/google/android/material/shape/ShapeAppearanceModel;
    .param p3, "endShapeAppearanceModel"    # Lcom/google/android/material/shape/ShapeAppearanceModel;
    .param p4, "currentStartBounds"    # Landroid/graphics/RectF;
    .param p5, "currentStartBoundsMasked"    # Landroid/graphics/RectF;
    .param p6, "currentEndBoundsMasked"    # Landroid/graphics/RectF;
    .param p7, "shapeMaskThresholds"    # Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;

    .prologue
    const/high16 v7, 0x3f800000    # 1.0f

    .line 64
    invoke-virtual {p7}, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;->getStart()F

    move-result v4

    .line 65
    .local v4, "shapeStartFraction":F
    invoke-virtual {p7}, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;->getEnd()F

    move-result v5

    .local v5, "shapeEndFraction":F
    move-object v0, p2

    move-object v1, p3

    move-object v2, p4

    move-object v3, p6

    move v6, p1

    .line 67
    invoke-static/range {v0 .. v6}, Lcom/google/android/material/transition/platform/TransitionUtils;->lerp(Lcom/google/android/material/shape/ShapeAppearanceModel;Lcom/google/android/material/shape/ShapeAppearanceModel;Landroid/graphics/RectF;Landroid/graphics/RectF;FFF)Lcom/google/android/material/shape/ShapeAppearanceModel;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/transition/platform/MaskEvaluator;->currentShapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 76
    iget-object v0, p0, Lcom/google/android/material/transition/platform/MaskEvaluator;->pathProvider:Lcom/google/android/material/shape/ShapeAppearancePathProvider;

    iget-object v1, p0, Lcom/google/android/material/transition/platform/MaskEvaluator;->currentShapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    iget-object v2, p0, Lcom/google/android/material/transition/platform/MaskEvaluator;->startPath:Landroid/graphics/Path;

    invoke-virtual {v0, v1, v7, p5, v2}, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->calculatePath(Lcom/google/android/material/shape/ShapeAppearanceModel;FLandroid/graphics/RectF;Landroid/graphics/Path;)V

    .line 77
    iget-object v0, p0, Lcom/google/android/material/transition/platform/MaskEvaluator;->pathProvider:Lcom/google/android/material/shape/ShapeAppearancePathProvider;

    iget-object v1, p0, Lcom/google/android/material/transition/platform/MaskEvaluator;->currentShapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    iget-object v2, p0, Lcom/google/android/material/transition/platform/MaskEvaluator;->endPath:Landroid/graphics/Path;

    invoke-virtual {v0, v1, v7, p6, v2}, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->calculatePath(Lcom/google/android/material/shape/ShapeAppearanceModel;FLandroid/graphics/RectF;Landroid/graphics/Path;)V

    .line 81
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 82
    iget-object v0, p0, Lcom/google/android/material/transition/platform/MaskEvaluator;->path:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/google/android/material/transition/platform/MaskEvaluator;->startPath:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/google/android/material/transition/platform/MaskEvaluator;->endPath:Landroid/graphics/Path;

    sget-object v3, Landroid/graphics/Path$Op;->UNION:Landroid/graphics/Path$Op;

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    .line 84
    :cond_0
    return-void
.end method

.method getCurrentShapeAppearanceModel()Lcom/google/android/material/shape/ShapeAppearanceModel;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/google/android/material/transition/platform/MaskEvaluator;->currentShapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    return-object v0
.end method

.method getPath()Landroid/graphics/Path;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/google/android/material/transition/platform/MaskEvaluator;->path:Landroid/graphics/Path;

    return-object v0
.end method

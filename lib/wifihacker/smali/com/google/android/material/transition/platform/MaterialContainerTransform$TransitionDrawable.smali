.class final Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "MaterialContainerTransform.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/transition/platform/MaterialContainerTransform;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TransitionDrawable"
.end annotation


# static fields
.field private static final COMPAT_SHADOW_COLOR:I = -0x777778

.field private static final SHADOW_COLOR:I = 0x2d000000

.field private static final SHADOW_DX_MULTIPLIER_ADJUSTMENT:F = 0.3f

.field private static final SHADOW_DY_MULTIPLIER_ADJUSTMENT:F = 1.5f


# instance fields
.field private final compatShadowDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

.field private final containerPaint:Landroid/graphics/Paint;

.field private currentElevation:F

.field private currentElevationDy:F

.field private final currentEndBounds:Landroid/graphics/RectF;

.field private final currentEndBoundsMasked:Landroid/graphics/RectF;

.field private currentMaskBounds:Landroid/graphics/RectF;

.field private final currentStartBounds:Landroid/graphics/RectF;

.field private final currentStartBoundsMasked:Landroid/graphics/RectF;

.field private final debugPaint:Landroid/graphics/Paint;

.field private final debugPath:Landroid/graphics/Path;

.field private final displayHeight:F

.field private final displayWidth:F

.field private final drawDebugEnabled:Z

.field private final elevationShadowEnabled:Z

.field private final endBounds:Landroid/graphics/RectF;

.field private final endContainerPaint:Landroid/graphics/Paint;

.field private final endElevation:F

.field private final endShapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

.field private final endView:Landroid/view/View;

.field private final entering:Z

.field private final fadeModeEvaluator:Lcom/google/android/material/transition/platform/FadeModeEvaluator;

.field private fadeModeResult:Lcom/google/android/material/transition/platform/FadeModeResult;

.field private final fitModeEvaluator:Lcom/google/android/material/transition/platform/FitModeEvaluator;

.field private fitModeResult:Lcom/google/android/material/transition/platform/FitModeResult;

.field private final maskEvaluator:Lcom/google/android/material/transition/platform/MaskEvaluator;

.field private final motionPathLength:F

.field private final motionPathMeasure:Landroid/graphics/PathMeasure;

.field private final motionPathPosition:[F

.field private progress:F

.field private final progressThresholds:Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;

.field private final scrimPaint:Landroid/graphics/Paint;

.field private final shadowPaint:Landroid/graphics/Paint;

.field private final startBounds:Landroid/graphics/RectF;

.field private final startContainerPaint:Landroid/graphics/Paint;

.field private final startElevation:F

.field private final startShapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

.field private final startView:Landroid/view/View;


# direct methods
.method private constructor <init>(Landroid/transition/PathMotion;Landroid/view/View;Landroid/graphics/RectF;Lcom/google/android/material/shape/ShapeAppearanceModel;FLandroid/view/View;Landroid/graphics/RectF;Lcom/google/android/material/shape/ShapeAppearanceModel;FIIIIZZLcom/google/android/material/transition/platform/FadeModeEvaluator;Lcom/google/android/material/transition/platform/FitModeEvaluator;Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;Z)V
    .locals 10
    .param p1, "pathMotion"    # Landroid/transition/PathMotion;
    .param p2, "startView"    # Landroid/view/View;
    .param p3, "startBounds"    # Landroid/graphics/RectF;
    .param p4, "startShapeAppearanceModel"    # Lcom/google/android/material/shape/ShapeAppearanceModel;
    .param p5, "startElevation"    # F
    .param p6, "endView"    # Landroid/view/View;
    .param p7, "endBounds"    # Landroid/graphics/RectF;
    .param p8, "endShapeAppearanceModel"    # Lcom/google/android/material/shape/ShapeAppearanceModel;
    .param p9, "endElevation"    # F
    .param p10, "containerColor"    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .param p11, "startContainerColor"    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .param p12, "endContainerColor"    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .param p13, "scrimColor"    # I
    .param p14, "entering"    # Z
    .param p15, "elevationShadowEnabled"    # Z
    .param p16, "fadeModeEvaluator"    # Lcom/google/android/material/transition/platform/FadeModeEvaluator;
    .param p17, "fitModeEvaluator"    # Lcom/google/android/material/transition/platform/FitModeEvaluator;
    .param p18, "progressThresholds"    # Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;
    .param p19, "drawDebugEnabled"    # Z

    .prologue
    .line 1157
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 1099
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    iput-object v6, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->containerPaint:Landroid/graphics/Paint;

    .line 1100
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    iput-object v6, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->startContainerPaint:Landroid/graphics/Paint;

    .line 1101
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    iput-object v6, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->endContainerPaint:Landroid/graphics/Paint;

    .line 1102
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    iput-object v6, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->shadowPaint:Landroid/graphics/Paint;

    .line 1103
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    iput-object v6, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->scrimPaint:Landroid/graphics/Paint;

    .line 1106
    new-instance v6, Lcom/google/android/material/transition/platform/MaskEvaluator;

    invoke-direct {v6}, Lcom/google/android/material/transition/platform/MaskEvaluator;-><init>()V

    iput-object v6, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->maskEvaluator:Lcom/google/android/material/transition/platform/MaskEvaluator;

    .line 1109
    const/4 v6, 0x2

    new-array v6, v6, [F

    iput-object v6, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->motionPathPosition:[F

    .line 1116
    new-instance v6, Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-direct {v6}, Lcom/google/android/material/shape/MaterialShapeDrawable;-><init>()V

    iput-object v6, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->compatShadowDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 1127
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    iput-object v6, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->debugPaint:Landroid/graphics/Paint;

    .line 1128
    new-instance v6, Landroid/graphics/Path;

    invoke-direct {v6}, Landroid/graphics/Path;-><init>()V

    iput-object v6, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->debugPath:Landroid/graphics/Path;

    .line 1158
    iput-object p2, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->startView:Landroid/view/View;

    .line 1159
    iput-object p3, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->startBounds:Landroid/graphics/RectF;

    .line 1160
    iput-object p4, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->startShapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 1161
    iput p5, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->startElevation:F

    .line 1162
    move-object/from16 v0, p6

    iput-object v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->endView:Landroid/view/View;

    .line 1163
    move-object/from16 v0, p7

    iput-object v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->endBounds:Landroid/graphics/RectF;

    .line 1164
    move-object/from16 v0, p8

    iput-object v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->endShapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 1165
    move/from16 v0, p9

    iput v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->endElevation:F

    .line 1166
    move/from16 v0, p14

    iput-boolean v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->entering:Z

    .line 1167
    move/from16 v0, p15

    iput-boolean v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->elevationShadowEnabled:Z

    .line 1168
    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->fadeModeEvaluator:Lcom/google/android/material/transition/platform/FadeModeEvaluator;

    .line 1169
    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->fitModeEvaluator:Lcom/google/android/material/transition/platform/FitModeEvaluator;

    .line 1170
    move-object/from16 v0, p18

    iput-object v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->progressThresholds:Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;

    .line 1171
    move/from16 v0, p19

    iput-boolean v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->drawDebugEnabled:Z

    .line 1174
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "window"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/WindowManager;

    .line 1175
    .local v5, "windowManager":Landroid/view/WindowManager;
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1176
    .local v1, "displayMetrics":Landroid/util/DisplayMetrics;
    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1177
    iget v6, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v6, v6

    iput v6, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->displayWidth:F

    .line 1178
    iget v6, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v6, v6

    iput v6, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->displayHeight:F

    .line 1180
    iget-object v6, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->containerPaint:Landroid/graphics/Paint;

    move/from16 v0, p10

    invoke-virtual {v6, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 1181
    iget-object v6, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->startContainerPaint:Landroid/graphics/Paint;

    move/from16 v0, p11

    invoke-virtual {v6, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 1182
    iget-object v6, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->endContainerPaint:Landroid/graphics/Paint;

    move/from16 v0, p12

    invoke-virtual {v6, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 1184
    iget-object v6, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->compatShadowDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    const/4 v7, 0x0

    invoke-static {v7}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setFillColor(Landroid/content/res/ColorStateList;)V

    .line 1185
    iget-object v6, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->compatShadowDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setShadowCompatibilityMode(I)V

    .line 1187
    iget-object v6, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->compatShadowDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setShadowBitmapDrawingEnable(Z)V

    .line 1188
    iget-object v6, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->compatShadowDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    const v7, -0x777778

    invoke-virtual {v6, v7}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setShadowColor(I)V

    .line 1190
    new-instance v6, Landroid/graphics/RectF;

    invoke-direct {v6, p3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iput-object v6, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->currentStartBounds:Landroid/graphics/RectF;

    .line 1191
    new-instance v6, Landroid/graphics/RectF;

    iget-object v7, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->currentStartBounds:Landroid/graphics/RectF;

    invoke-direct {v6, v7}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iput-object v6, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->currentStartBoundsMasked:Landroid/graphics/RectF;

    .line 1192
    new-instance v6, Landroid/graphics/RectF;

    iget-object v7, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->currentStartBounds:Landroid/graphics/RectF;

    invoke-direct {v6, v7}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iput-object v6, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->currentEndBounds:Landroid/graphics/RectF;

    .line 1193
    new-instance v6, Landroid/graphics/RectF;

    iget-object v7, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->currentEndBounds:Landroid/graphics/RectF;

    invoke-direct {v6, v7}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iput-object v6, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->currentEndBoundsMasked:Landroid/graphics/RectF;

    .line 1196
    invoke-static {p3}, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->getMotionPathPoint(Landroid/graphics/RectF;)Landroid/graphics/PointF;

    move-result-object v4

    .line 1197
    .local v4, "startPoint":Landroid/graphics/PointF;
    invoke-static/range {p7 .. p7}, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->getMotionPathPoint(Landroid/graphics/RectF;)Landroid/graphics/PointF;

    move-result-object v2

    .line 1198
    .local v2, "endPoint":Landroid/graphics/PointF;
    iget v6, v4, Landroid/graphics/PointF;->x:F

    iget v7, v4, Landroid/graphics/PointF;->y:F

    iget v8, v2, Landroid/graphics/PointF;->x:F

    iget v9, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, v6, v7, v8, v9}, Landroid/transition/PathMotion;->getPath(FFFF)Landroid/graphics/Path;

    move-result-object v3

    .line 1199
    .local v3, "motionPath":Landroid/graphics/Path;
    new-instance v6, Landroid/graphics/PathMeasure;

    const/4 v7, 0x0

    invoke-direct {v6, v3, v7}, Landroid/graphics/PathMeasure;-><init>(Landroid/graphics/Path;Z)V

    iput-object v6, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->motionPathMeasure:Landroid/graphics/PathMeasure;

    .line 1200
    iget-object v6, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->motionPathMeasure:Landroid/graphics/PathMeasure;

    invoke-virtual {v6}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v6

    iput v6, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->motionPathLength:F

    .line 1205
    iget-object v6, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->motionPathPosition:[F

    const/4 v7, 0x0

    invoke-virtual {p3}, Landroid/graphics/RectF;->centerX()F

    move-result v8

    aput v8, v6, v7

    .line 1206
    iget-object v6, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->motionPathPosition:[F

    const/4 v7, 0x1

    iget v8, p3, Landroid/graphics/RectF;->top:F

    aput v8, v6, v7

    .line 1208
    iget-object v6, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->scrimPaint:Landroid/graphics/Paint;

    sget-object v7, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1209
    iget-object v6, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->scrimPaint:Landroid/graphics/Paint;

    invoke-static/range {p13 .. p13}, Lcom/google/android/material/transition/platform/TransitionUtils;->createColorShader(I)Landroid/graphics/Shader;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 1211
    iget-object v6, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->debugPaint:Landroid/graphics/Paint;

    sget-object v7, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1212
    iget-object v6, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->debugPaint:Landroid/graphics/Paint;

    const/high16 v7, 0x41200000    # 10.0f

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1215
    const/4 v6, 0x0

    invoke-direct {p0, v6}, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->updateProgress(F)V

    .line 1216
    return-void
.end method

.method synthetic constructor <init>(Landroid/transition/PathMotion;Landroid/view/View;Landroid/graphics/RectF;Lcom/google/android/material/shape/ShapeAppearanceModel;FLandroid/view/View;Landroid/graphics/RectF;Lcom/google/android/material/shape/ShapeAppearanceModel;FIIIIZZLcom/google/android/material/transition/platform/FadeModeEvaluator;Lcom/google/android/material/transition/platform/FitModeEvaluator;Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;ZLcom/google/android/material/transition/platform/MaterialContainerTransform$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/transition/PathMotion;
    .param p2, "x1"    # Landroid/view/View;
    .param p3, "x2"    # Landroid/graphics/RectF;
    .param p4, "x3"    # Lcom/google/android/material/shape/ShapeAppearanceModel;
    .param p5, "x4"    # F
    .param p6, "x5"    # Landroid/view/View;
    .param p7, "x6"    # Landroid/graphics/RectF;
    .param p8, "x7"    # Lcom/google/android/material/shape/ShapeAppearanceModel;
    .param p9, "x8"    # F
    .param p10, "x9"    # I
    .param p11, "x10"    # I
    .param p12, "x11"    # I
    .param p13, "x12"    # I
    .param p14, "x13"    # Z
    .param p15, "x14"    # Z
    .param p16, "x15"    # Lcom/google/android/material/transition/platform/FadeModeEvaluator;
    .param p17, "x16"    # Lcom/google/android/material/transition/platform/FitModeEvaluator;
    .param p18, "x17"    # Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;
    .param p19, "x18"    # Z
    .param p20, "x19"    # Lcom/google/android/material/transition/platform/MaterialContainerTransform$1;

    .prologue
    .line 1076
    invoke-direct/range {p0 .. p19}, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;-><init>(Landroid/transition/PathMotion;Landroid/view/View;Landroid/graphics/RectF;Lcom/google/android/material/shape/ShapeAppearanceModel;FLandroid/view/View;Landroid/graphics/RectF;Lcom/google/android/material/shape/ShapeAppearanceModel;FIIIIZZLcom/google/android/material/transition/platform/FadeModeEvaluator;Lcom/google/android/material/transition/platform/FitModeEvaluator;Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;F)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;
    .param p1, "x1"    # F

    .prologue
    .line 1076
    invoke-direct {p0, p1}, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->setProgress(F)V

    return-void
.end method

.method static synthetic access$800(Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;

    .prologue
    .line 1076
    iget-object v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->startView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$900(Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;

    .prologue
    .line 1076
    iget-object v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->endView:Landroid/view/View;

    return-object v0
.end method

.method private static calculateElevationDxMultiplier(Landroid/graphics/RectF;F)F
    .locals 2
    .param p0, "bounds"    # Landroid/graphics/RectF;
    .param p1, "displayWidth"    # F

    .prologue
    .line 1490
    invoke-virtual {p0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float v1, p1, v1

    div-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v0, v1

    const v1, 0x3e99999a    # 0.3f

    mul-float/2addr v0, v1

    return v0
.end method

.method private static calculateElevationDyMultiplier(Landroid/graphics/RectF;F)F
    .locals 2
    .param p0, "bounds"    # Landroid/graphics/RectF;
    .param p1, "displayHeight"    # F

    .prologue
    .line 1502
    invoke-virtual {p0}, Landroid/graphics/RectF;->centerY()F

    move-result v0

    div-float/2addr v0, p1

    const/high16 v1, 0x3fc00000    # 1.5f

    mul-float/2addr v0, v1

    return v0
.end method

.method private drawDebugCumulativePath(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Path;I)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "bounds"    # Landroid/graphics/RectF;
    .param p3, "path"    # Landroid/graphics/Path;
    .param p4, "color"    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 1507
    invoke-static {p2}, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->getMotionPathPoint(Landroid/graphics/RectF;)Landroid/graphics/PointF;

    move-result-object v0

    .line 1508
    .local v0, "point":Landroid/graphics/PointF;
    iget v1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->progress:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    .line 1509
    invoke-virtual {p3}, Landroid/graphics/Path;->reset()V

    .line 1510
    iget v1, v0, Landroid/graphics/PointF;->x:F

    iget v2, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {p3, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1516
    :goto_0
    return-void

    .line 1512
    :cond_0
    iget v1, v0, Landroid/graphics/PointF;->x:F

    iget v2, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {p3, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1513
    iget-object v1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->debugPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, p4}, Landroid/graphics/Paint;->setColor(I)V

    .line 1514
    iget-object v1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->debugPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p3, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_0
.end method

.method private drawDebugRect(Landroid/graphics/Canvas;Landroid/graphics/RectF;I)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "bounds"    # Landroid/graphics/RectF;
    .param p3, "color"    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 1519
    iget-object v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->debugPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 1520
    iget-object v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->debugPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 1521
    return-void
.end method

.method private drawElevationShadow(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 1256
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1257
    iget-object v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->maskEvaluator:Lcom/google/android/material/transition/platform/MaskEvaluator;

    invoke-virtual {v0}, Lcom/google/android/material/transition/platform/MaskEvaluator;->getPath()Landroid/graphics/Path;

    move-result-object v0

    sget-object v1, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    .line 1259
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-le v0, v1, :cond_0

    .line 1260
    invoke-direct {p0, p1}, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->drawElevationShadowWithPaintShadowLayer(Landroid/graphics/Canvas;)V

    .line 1265
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 1266
    return-void

    .line 1262
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->drawElevationShadowWithMaterialShapeDrawable(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method private drawElevationShadowWithMaterialShapeDrawable(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 1283
    iget-object v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->compatShadowDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    iget-object v1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->currentMaskBounds:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    float-to-int v1, v1

    iget-object v2, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->currentMaskBounds:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    float-to-int v2, v2

    iget-object v3, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->currentMaskBounds:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    float-to-int v3, v3

    iget-object v4, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->currentMaskBounds:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    float-to-int v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setBounds(IIII)V

    .line 1288
    iget-object v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->compatShadowDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    iget v1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->currentElevation:F

    invoke-virtual {v0, v1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setElevation(F)V

    .line 1289
    iget-object v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->compatShadowDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    iget v1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->currentElevationDy:F

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setShadowVerticalOffset(I)V

    .line 1290
    iget-object v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->compatShadowDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    iget-object v1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->maskEvaluator:Lcom/google/android/material/transition/platform/MaskEvaluator;

    invoke-virtual {v1}, Lcom/google/android/material/transition/platform/MaskEvaluator;->getCurrentShapeAppearanceModel()Lcom/google/android/material/shape/ShapeAppearanceModel;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setShapeAppearanceModel(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    .line 1291
    iget-object v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->compatShadowDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-virtual {v0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 1292
    return-void
.end method

.method private drawElevationShadowWithPaintShadowLayer(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 1269
    iget-object v2, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->maskEvaluator:Lcom/google/android/material/transition/platform/MaskEvaluator;

    .line 1270
    invoke-virtual {v2}, Lcom/google/android/material/transition/platform/MaskEvaluator;->getCurrentShapeAppearanceModel()Lcom/google/android/material/shape/ShapeAppearanceModel;

    move-result-object v0

    .line 1271
    .local v0, "currentShapeAppearanceModel":Lcom/google/android/material/shape/ShapeAppearanceModel;
    iget-object v2, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->currentMaskBounds:Landroid/graphics/RectF;

    invoke-virtual {v0, v2}, Lcom/google/android/material/shape/ShapeAppearanceModel;->isRoundRect(Landroid/graphics/RectF;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1274
    invoke-virtual {v0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getTopLeftCornerSize()Lcom/google/android/material/shape/CornerSize;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->currentMaskBounds:Landroid/graphics/RectF;

    invoke-interface {v2, v3}, Lcom/google/android/material/shape/CornerSize;->getCornerSize(Landroid/graphics/RectF;)F

    move-result v1

    .line 1275
    .local v1, "radius":F
    iget-object v2, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->currentMaskBounds:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->shadowPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v1, v1, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 1280
    .end local v1    # "radius":F
    :goto_0
    return-void

    .line 1278
    :cond_0
    iget-object v2, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->maskEvaluator:Lcom/google/android/material/transition/platform/MaskEvaluator;

    invoke-virtual {v2}, Lcom/google/android/material/transition/platform/MaskEvaluator;->getPath()Landroid/graphics/Path;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->shadowPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_0
.end method

.method private drawEndView(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 1314
    iget-object v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->endContainerPaint:Landroid/graphics/Paint;

    invoke-direct {p0, p1, v0}, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->maybeDrawContainerColor(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 1317
    invoke-virtual {p0}, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->currentEndBounds:Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/RectF;->left:F

    iget-object v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->currentEndBounds:Landroid/graphics/RectF;

    iget v3, v0, Landroid/graphics/RectF;->top:F

    iget-object v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->fitModeResult:Lcom/google/android/material/transition/platform/FitModeResult;

    iget v4, v0, Lcom/google/android/material/transition/platform/FitModeResult;->endScale:F

    iget-object v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->fadeModeResult:Lcom/google/android/material/transition/platform/FadeModeResult;

    iget v5, v0, Lcom/google/android/material/transition/platform/FadeModeResult;->endAlpha:I

    new-instance v6, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable$2;

    invoke-direct {v6, p0}, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable$2;-><init>(Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;)V

    move-object v0, p1

    .line 1315
    invoke-static/range {v0 .. v6}, Lcom/google/android/material/transition/platform/TransitionUtils;->transform(Landroid/graphics/Canvas;Landroid/graphics/Rect;FFFILcom/google/android/material/transition/platform/TransitionUtils$CanvasOperation;)V

    .line 1328
    return-void
.end method

.method private drawStartView(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 1296
    iget-object v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->startContainerPaint:Landroid/graphics/Paint;

    invoke-direct {p0, p1, v0}, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->maybeDrawContainerColor(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 1299
    invoke-virtual {p0}, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->currentStartBounds:Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/RectF;->left:F

    iget-object v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->currentStartBounds:Landroid/graphics/RectF;

    iget v3, v0, Landroid/graphics/RectF;->top:F

    iget-object v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->fitModeResult:Lcom/google/android/material/transition/platform/FitModeResult;

    iget v4, v0, Lcom/google/android/material/transition/platform/FitModeResult;->startScale:F

    iget-object v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->fadeModeResult:Lcom/google/android/material/transition/platform/FadeModeResult;

    iget v5, v0, Lcom/google/android/material/transition/platform/FadeModeResult;->startAlpha:I

    new-instance v6, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable$1;

    invoke-direct {v6, p0}, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable$1;-><init>(Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;)V

    move-object v0, p1

    .line 1297
    invoke-static/range {v0 .. v6}, Lcom/google/android/material/transition/platform/TransitionUtils;->transform(Landroid/graphics/Canvas;Landroid/graphics/Rect;FFFILcom/google/android/material/transition/platform/TransitionUtils$CanvasOperation;)V

    .line 1310
    return-void
.end method

.method private static getMotionPathPoint(Landroid/graphics/RectF;)Landroid/graphics/PointF;
    .locals 3
    .param p0, "bounds"    # Landroid/graphics/RectF;

    .prologue
    .line 1472
    new-instance v0, Landroid/graphics/PointF;

    invoke-virtual {p0}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    iget v2, p0, Landroid/graphics/RectF;->top:F

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0
.end method

.method private maybeDrawContainerColor(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "containerPaint"    # Landroid/graphics/Paint;

    .prologue
    .line 1334
    invoke-virtual {p2}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    if-lez v0, :cond_0

    .line 1335
    invoke-virtual {p0}, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1337
    :cond_0
    return-void
.end method

.method private setProgress(F)V
    .locals 1
    .param p1, "progress"    # F

    .prologue
    .line 1354
    iget v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->progress:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 1355
    invoke-direct {p0, p1}, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->updateProgress(F)V

    .line 1357
    :cond_0
    return-void
.end method

.method private updateProgress(F)V
    .locals 32
    .param p1, "progress"    # F

    .prologue
    .line 1360
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->progress:F

    .line 1363
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->scrimPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->entering:Z

    if-eqz v3, :cond_4

    const/4 v3, 0x0

    const/high16 v7, 0x437f0000    # 255.0f

    move/from16 v0, p1

    invoke-static {v3, v7, v0}, Lcom/google/android/material/transition/platform/TransitionUtils;->lerp(FFF)F

    move-result v3

    :goto_0
    float-to-int v3, v3

    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1366
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->motionPathMeasure:Landroid/graphics/PathMeasure;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->motionPathLength:F

    mul-float v4, v4, p1

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->motionPathPosition:[F

    const/4 v8, 0x0

    invoke-virtual {v3, v4, v7, v8}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    .line 1367
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->motionPathPosition:[F

    const/4 v4, 0x0

    aget v25, v3, v4

    .line 1368
    .local v25, "motionPathX":F
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->motionPathPosition:[F

    const/4 v4, 0x1

    aget v26, v3, v4

    .line 1371
    .local v26, "motionPathY":F
    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v3, p1, v3

    if-gtz v3, :cond_0

    const/4 v3, 0x0

    cmpg-float v3, p1, v3

    if-gez v3, :cond_1

    .line 1374
    :cond_0
    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v3, p1, v3

    if-lez v3, :cond_5

    .line 1375
    const v31, 0x3f7d70a4    # 0.99f

    .line 1376
    .local v31, "trajectoryProgress":F
    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v3, p1, v3

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float v4, v4, v31

    div-float v30, v3, v4

    .line 1382
    .local v30, "trajectoryMultiplier":F
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->motionPathMeasure:Landroid/graphics/PathMeasure;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->motionPathLength:F

    mul-float v4, v4, v31

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->motionPathPosition:[F

    const/4 v8, 0x0

    invoke-virtual {v3, v4, v7, v8}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    .line 1384
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->motionPathPosition:[F

    const/4 v4, 0x0

    aget v28, v3, v4

    .line 1385
    .local v28, "trajectoryMotionPathX":F
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->motionPathPosition:[F

    const/4 v4, 0x1

    aget v29, v3, v4

    .line 1386
    .local v29, "trajectoryMotionPathY":F
    sub-float v3, v25, v28

    mul-float v3, v3, v30

    add-float v25, v25, v3

    .line 1387
    sub-float v3, v26, v29

    mul-float v3, v3, v30

    add-float v26, v26, v3

    .line 1391
    .end local v28    # "trajectoryMotionPathX":F
    .end local v29    # "trajectoryMotionPathY":F
    .end local v30    # "trajectoryMultiplier":F
    .end local v31    # "trajectoryProgress":F
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->progressThresholds:Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;

    invoke-static {v3}, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;->access$500(Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;)Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;->access$1000(Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v3}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v5

    .line 1392
    .local v5, "scaleStartFraction":F
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->progressThresholds:Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;

    invoke-static {v3}, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;->access$500(Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;)Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;->access$1100(Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v3}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v6

    .line 1393
    .local v6, "scaleEndFraction":F
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->fitModeEvaluator:Lcom/google/android/material/transition/platform/FitModeEvaluator;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->startBounds:Landroid/graphics/RectF;

    .line 1398
    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v7

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->startBounds:Landroid/graphics/RectF;

    .line 1399
    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v8

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->endBounds:Landroid/graphics/RectF;

    .line 1400
    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v9

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->endBounds:Landroid/graphics/RectF;

    .line 1401
    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v10

    move/from16 v4, p1

    .line 1394
    invoke-interface/range {v3 .. v10}, Lcom/google/android/material/transition/platform/FitModeEvaluator;->evaluate(FFFFFFF)Lcom/google/android/material/transition/platform/FitModeResult;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->fitModeResult:Lcom/google/android/material/transition/platform/FitModeResult;

    .line 1402
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->currentStartBounds:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->fitModeResult:Lcom/google/android/material/transition/platform/FitModeResult;

    iget v4, v4, Lcom/google/android/material/transition/platform/FitModeResult;->currentStartWidth:F

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v4, v7

    sub-float v4, v25, v4

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->fitModeResult:Lcom/google/android/material/transition/platform/FitModeResult;

    iget v7, v7, Lcom/google/android/material/transition/platform/FitModeResult;->currentStartWidth:F

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    add-float v7, v7, v25

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->fitModeResult:Lcom/google/android/material/transition/platform/FitModeResult;

    iget v8, v8, Lcom/google/android/material/transition/platform/FitModeResult;->currentStartHeight:F

    add-float v8, v8, v26

    move/from16 v0, v26

    invoke-virtual {v3, v4, v0, v7, v8}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1407
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->currentEndBounds:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->fitModeResult:Lcom/google/android/material/transition/platform/FitModeResult;

    iget v4, v4, Lcom/google/android/material/transition/platform/FitModeResult;->currentEndWidth:F

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v4, v7

    sub-float v4, v25, v4

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->fitModeResult:Lcom/google/android/material/transition/platform/FitModeResult;

    iget v7, v7, Lcom/google/android/material/transition/platform/FitModeResult;->currentEndWidth:F

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    add-float v7, v7, v25

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->fitModeResult:Lcom/google/android/material/transition/platform/FitModeResult;

    iget v8, v8, Lcom/google/android/material/transition/platform/FitModeResult;->currentEndHeight:F

    add-float v8, v8, v26

    move/from16 v0, v26

    invoke-virtual {v3, v4, v0, v7, v8}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1414
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->currentStartBoundsMasked:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->currentStartBounds:Landroid/graphics/RectF;

    invoke-virtual {v3, v4}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 1415
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->currentEndBoundsMasked:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->currentEndBounds:Landroid/graphics/RectF;

    invoke-virtual {v3, v4}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 1416
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->progressThresholds:Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;

    invoke-static {v3}, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;->access$600(Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;)Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;->access$1000(Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v3}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v24

    .line 1417
    .local v24, "maskStartFraction":F
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->progressThresholds:Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;

    invoke-static {v3}, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;->access$600(Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;)Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;->access$1100(Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v3}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v21

    .line 1418
    .local v21, "maskEndFraction":F
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->fitModeEvaluator:Lcom/google/android/material/transition/platform/FitModeEvaluator;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->fitModeResult:Lcom/google/android/material/transition/platform/FitModeResult;

    invoke-interface {v3, v4}, Lcom/google/android/material/transition/platform/FitModeEvaluator;->shouldMaskStartBounds(Lcom/google/android/material/transition/platform/FitModeResult;)Z

    move-result v27

    .line 1419
    .local v27, "shouldMaskStartBounds":Z
    if-eqz v27, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->currentStartBoundsMasked:Landroid/graphics/RectF;

    move-object/from16 v20, v0

    .line 1420
    .local v20, "maskBounds":Landroid/graphics/RectF;
    :goto_2
    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    move/from16 v0, v24

    move/from16 v1, v21

    move/from16 v2, p1

    invoke-static {v3, v4, v0, v1, v2}, Lcom/google/android/material/transition/platform/TransitionUtils;->lerp(FFFFF)F

    move-result v23

    .line 1421
    .local v23, "maskProgress":F
    if-eqz v27, :cond_7

    move/from16 v22, v23

    .line 1422
    .local v22, "maskMultiplier":F
    :goto_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->fitModeEvaluator:Lcom/google/android/material/transition/platform/FitModeEvaluator;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->fitModeResult:Lcom/google/android/material/transition/platform/FitModeResult;

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-interface {v3, v0, v1, v4}, Lcom/google/android/material/transition/platform/FitModeEvaluator;->applyMask(Landroid/graphics/RectF;FLcom/google/android/material/transition/platform/FitModeResult;)V

    .line 1425
    new-instance v3, Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->currentStartBoundsMasked:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->currentEndBoundsMasked:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->left:F

    .line 1427
    invoke-static {v4, v7}, Ljava/lang/Math;->min(FF)F

    move-result v4

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->currentStartBoundsMasked:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->currentEndBoundsMasked:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->top:F

    .line 1428
    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F

    move-result v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->currentStartBoundsMasked:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->currentEndBoundsMasked:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->right:F

    .line 1429
    invoke-static {v8, v9}, Ljava/lang/Math;->max(FF)F

    move-result v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->currentStartBoundsMasked:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->bottom:F

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->currentEndBoundsMasked:Landroid/graphics/RectF;

    iget v10, v10, Landroid/graphics/RectF;->bottom:F

    .line 1430
    invoke-static {v9, v10}, Ljava/lang/Math;->max(FF)F

    move-result v9

    invoke-direct {v3, v4, v7, v8, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->currentMaskBounds:Landroid/graphics/RectF;

    .line 1432
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->maskEvaluator:Lcom/google/android/material/transition/platform/MaskEvaluator;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->startShapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->endShapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->currentStartBounds:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->currentStartBoundsMasked:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->currentEndBoundsMasked:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->progressThresholds:Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;

    .line 1439
    invoke-static {v3}, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;->access$700(Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;)Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;

    move-result-object v14

    move/from16 v8, p1

    .line 1432
    invoke-virtual/range {v7 .. v14}, Lcom/google/android/material/transition/platform/MaskEvaluator;->evaluate(FLcom/google/android/material/shape/ShapeAppearanceModel;Lcom/google/android/material/shape/ShapeAppearanceModel;Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;)V

    .line 1442
    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->startElevation:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->endElevation:F

    move/from16 v0, p1

    invoke-static {v3, v4, v0}, Lcom/google/android/material/transition/platform/TransitionUtils;->lerp(FFF)F

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->currentElevation:F

    .line 1443
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->currentMaskBounds:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->displayWidth:F

    invoke-static {v3, v4}, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->calculateElevationDxMultiplier(Landroid/graphics/RectF;F)F

    move-result v16

    .line 1444
    .local v16, "dxMultiplier":F
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->currentMaskBounds:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->displayHeight:F

    invoke-static {v3, v4}, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->calculateElevationDyMultiplier(Landroid/graphics/RectF;F)F

    move-result v17

    .line 1445
    .local v17, "dyMultiplier":F
    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->currentElevation:F

    mul-float v3, v3, v16

    float-to-int v3, v3

    int-to-float v15, v3

    .line 1446
    .local v15, "currentElevationDx":F
    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->currentElevation:F

    mul-float v3, v3, v17

    float-to-int v3, v3

    int-to-float v3, v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->currentElevationDy:F

    .line 1447
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->shadowPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->currentElevation:F

    move-object/from16 v0, p0

    iget v7, v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->currentElevationDy:F

    const/high16 v8, 0x2d000000

    invoke-virtual {v3, v4, v15, v7, v8}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 1451
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->progressThresholds:Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;

    invoke-static {v3}, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;->access$400(Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;)Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;->access$1000(Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v3}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v19

    .line 1452
    .local v19, "fadeStartFraction":F
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->progressThresholds:Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;

    invoke-static {v3}, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;->access$400(Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;)Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;->access$1100(Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v3}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v18

    .line 1453
    .local v18, "fadeEndFraction":F
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->fadeModeEvaluator:Lcom/google/android/material/transition/platform/FadeModeEvaluator;

    const v4, 0x3eb33333    # 0.35f

    .line 1454
    move/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v18

    invoke-interface {v3, v0, v1, v2, v4}, Lcom/google/android/material/transition/platform/FadeModeEvaluator;->evaluate(FFFF)Lcom/google/android/material/transition/platform/FadeModeResult;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->fadeModeResult:Lcom/google/android/material/transition/platform/FadeModeResult;

    .line 1461
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->startContainerPaint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getColor()I

    move-result v3

    if-eqz v3, :cond_2

    .line 1462
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->startContainerPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->fadeModeResult:Lcom/google/android/material/transition/platform/FadeModeResult;

    iget v4, v4, Lcom/google/android/material/transition/platform/FadeModeResult;->startAlpha:I

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1464
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->endContainerPaint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getColor()I

    move-result v3

    if-eqz v3, :cond_3

    .line 1465
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->endContainerPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->fadeModeResult:Lcom/google/android/material/transition/platform/FadeModeResult;

    iget v4, v4, Lcom/google/android/material/transition/platform/FadeModeResult;->endAlpha:I

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1468
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->invalidateSelf()V

    .line 1469
    return-void

    .line 1363
    .end local v5    # "scaleStartFraction":F
    .end local v6    # "scaleEndFraction":F
    .end local v15    # "currentElevationDx":F
    .end local v16    # "dxMultiplier":F
    .end local v17    # "dyMultiplier":F
    .end local v18    # "fadeEndFraction":F
    .end local v19    # "fadeStartFraction":F
    .end local v20    # "maskBounds":Landroid/graphics/RectF;
    .end local v21    # "maskEndFraction":F
    .end local v22    # "maskMultiplier":F
    .end local v23    # "maskProgress":F
    .end local v24    # "maskStartFraction":F
    .end local v25    # "motionPathX":F
    .end local v26    # "motionPathY":F
    .end local v27    # "shouldMaskStartBounds":Z
    :cond_4
    const/high16 v3, 0x437f0000    # 255.0f

    const/4 v7, 0x0

    move/from16 v0, p1

    invoke-static {v3, v7, v0}, Lcom/google/android/material/transition/platform/TransitionUtils;->lerp(FFF)F

    move-result v3

    goto/16 :goto_0

    .line 1378
    .restart local v25    # "motionPathX":F
    .restart local v26    # "motionPathY":F
    :cond_5
    const v31, 0x3c23d70a    # 0.01f

    .line 1379
    .restart local v31    # "trajectoryProgress":F
    div-float v3, p1, v31

    const/high16 v4, -0x40800000    # -1.0f

    mul-float v30, v3, v4

    .restart local v30    # "trajectoryMultiplier":F
    goto/16 :goto_1

    .line 1419
    .end local v30    # "trajectoryMultiplier":F
    .end local v31    # "trajectoryProgress":F
    .restart local v5    # "scaleStartFraction":F
    .restart local v6    # "scaleEndFraction":F
    .restart local v21    # "maskEndFraction":F
    .restart local v24    # "maskStartFraction":F
    .restart local v27    # "shouldMaskStartBounds":Z
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->currentEndBoundsMasked:Landroid/graphics/RectF;

    move-object/from16 v20, v0

    goto/16 :goto_2

    .line 1421
    .restart local v20    # "maskBounds":Landroid/graphics/RectF;
    .restart local v23    # "maskProgress":F
    :cond_7
    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v22, v3, v23

    goto/16 :goto_3
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1220
    iget-object v1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->scrimPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getAlpha()I

    move-result v1

    if-lez v1, :cond_0

    .line 1221
    invoke-virtual {p0}, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->scrimPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1224
    :cond_0
    iget-boolean v1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->drawDebugEnabled:Z

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 1226
    .local v0, "debugCanvasSave":I
    :goto_0
    iget-boolean v1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->elevationShadowEnabled:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->currentElevation:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    .line 1227
    invoke-direct {p0, p1}, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->drawElevationShadow(Landroid/graphics/Canvas;)V

    .line 1232
    :cond_1
    iget-object v1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->maskEvaluator:Lcom/google/android/material/transition/platform/MaskEvaluator;

    invoke-virtual {v1, p1}, Lcom/google/android/material/transition/platform/MaskEvaluator;->clip(Landroid/graphics/Canvas;)V

    .line 1234
    iget-object v1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->containerPaint:Landroid/graphics/Paint;

    invoke-direct {p0, p1, v1}, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->maybeDrawContainerColor(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 1236
    iget-object v1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->fadeModeResult:Lcom/google/android/material/transition/platform/FadeModeResult;

    iget-boolean v1, v1, Lcom/google/android/material/transition/platform/FadeModeResult;->endOnTop:Z

    if-eqz v1, :cond_4

    .line 1237
    invoke-direct {p0, p1}, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->drawStartView(Landroid/graphics/Canvas;)V

    .line 1238
    invoke-direct {p0, p1}, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->drawEndView(Landroid/graphics/Canvas;)V

    .line 1244
    :goto_1
    iget-boolean v1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->drawDebugEnabled:Z

    if-eqz v1, :cond_2

    .line 1245
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1246
    iget-object v1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->currentStartBounds:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->debugPath:Landroid/graphics/Path;

    const v3, -0xff01

    invoke-direct {p0, p1, v1, v2, v3}, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->drawDebugCumulativePath(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Path;I)V

    .line 1247
    iget-object v1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->currentStartBoundsMasked:Landroid/graphics/RectF;

    const/16 v2, -0x100

    invoke-direct {p0, p1, v1, v2}, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->drawDebugRect(Landroid/graphics/Canvas;Landroid/graphics/RectF;I)V

    .line 1248
    iget-object v1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->currentStartBounds:Landroid/graphics/RectF;

    const v2, -0xff0100

    invoke-direct {p0, p1, v1, v2}, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->drawDebugRect(Landroid/graphics/Canvas;Landroid/graphics/RectF;I)V

    .line 1249
    iget-object v1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->currentEndBoundsMasked:Landroid/graphics/RectF;

    const v2, -0xff0001

    invoke-direct {p0, p1, v1, v2}, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->drawDebugRect(Landroid/graphics/Canvas;Landroid/graphics/RectF;I)V

    .line 1250
    iget-object v1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->currentEndBounds:Landroid/graphics/RectF;

    const v2, -0xffff01

    invoke-direct {p0, p1, v1, v2}, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->drawDebugRect(Landroid/graphics/Canvas;Landroid/graphics/RectF;I)V

    .line 1252
    :cond_2
    return-void

    .line 1224
    .end local v0    # "debugCanvasSave":I
    :cond_3
    const/4 v0, -0x1

    goto :goto_0

    .line 1240
    .restart local v0    # "debugCanvasSave":I
    :cond_4
    invoke-direct {p0, p1}, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->drawEndView(Landroid/graphics/Canvas;)V

    .line 1241
    invoke-direct {p0, p1}, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->drawStartView(Landroid/graphics/Canvas;)V

    goto :goto_1
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 1350
    const/4 v0, -0x3

    return v0
.end method

.method public setAlpha(I)V
    .locals 2
    .param p1, "alpha"    # I

    .prologue
    .line 1341
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Setting alpha on is not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 2
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1345
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Setting a color filter is not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

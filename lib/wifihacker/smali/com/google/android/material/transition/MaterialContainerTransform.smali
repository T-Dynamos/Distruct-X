.class public final Lcom/google/android/material/transition/MaterialContainerTransform;
.super Landroidx/transition/Transition;
.source "MaterialContainerTransform.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholdsGroup;,
        Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;,
        Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;,
        Lcom/google/android/material/transition/MaterialContainerTransform$FitMode;,
        Lcom/google/android/material/transition/MaterialContainerTransform$FadeMode;,
        Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDirection;
    }
.end annotation


# static fields
.field private static final DEFAULT_ENTER_THRESHOLDS:Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholdsGroup;

.field private static final DEFAULT_ENTER_THRESHOLDS_ARC:Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholdsGroup;

.field private static final DEFAULT_RETURN_THRESHOLDS:Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholdsGroup;

.field private static final DEFAULT_RETURN_THRESHOLDS_ARC:Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholdsGroup;

.field private static final ELEVATION_NOT_SET:F = -1.0f

.field public static final FADE_MODE_CROSS:I = 0x2

.field public static final FADE_MODE_IN:I = 0x0

.field public static final FADE_MODE_OUT:I = 0x1

.field public static final FADE_MODE_THROUGH:I = 0x3

.field public static final FIT_MODE_AUTO:I = 0x0

.field public static final FIT_MODE_HEIGHT:I = 0x2

.field public static final FIT_MODE_WIDTH:I = 0x1

.field private static final PROP_BOUNDS:Ljava/lang/String; = "materialContainerTransition:bounds"

.field private static final PROP_SHAPE_APPEARANCE:Ljava/lang/String; = "materialContainerTransition:shapeAppearance"

.field private static final TAG:Ljava/lang/String;

.field public static final TRANSITION_DIRECTION_AUTO:I = 0x0

.field public static final TRANSITION_DIRECTION_ENTER:I = 0x1

.field public static final TRANSITION_DIRECTION_RETURN:I = 0x2

.field private static final TRANSITION_PROPS:[Ljava/lang/String;


# instance fields
.field private appliedThemeValues:Z

.field private containerColor:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field private drawDebugEnabled:Z

.field private drawingViewId:I
    .annotation build Landroidx/annotation/IdRes;
    .end annotation
.end field

.field private elevationShadowEnabled:Z

.field private endContainerColor:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field private endElevation:F

.field private endShapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private endView:Landroid/view/View;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private endViewId:I
    .annotation build Landroidx/annotation/IdRes;
    .end annotation
.end field

.field private fadeMode:I

.field private fadeProgressThresholds:Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private fitMode:I

.field private holdAtEndEnabled:Z

.field private pathMotionCustom:Z

.field private scaleMaskProgressThresholds:Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private scaleProgressThresholds:Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private scrimColor:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field private shapeMaskProgressThresholds:Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private startContainerColor:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field private startElevation:F

.field private startShapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private startView:Landroid/view/View;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private startViewId:I
    .annotation build Landroidx/annotation/IdRes;
    .end annotation
.end field

.field private transitionDirection:I


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .prologue
    const/4 v5, 0x0

    const v10, 0x3dcccccd    # 0.1f

    const/high16 v9, 0x3f800000    # 1.0f

    const v8, 0x3f666666    # 0.9f

    const/4 v7, 0x0

    .line 193
    const-class v0, Lcom/google/android/material/transition/MaterialContainerTransform;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/material/transition/MaterialContainerTransform;->TAG:Ljava/lang/String;

    .line 196
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "materialContainerTransition:bounds"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "materialContainerTransition:shapeAppearance"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/material/transition/MaterialContainerTransform;->TRANSITION_PROPS:[Ljava/lang/String;

    .line 202
    new-instance v0, Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholdsGroup;

    new-instance v1, Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;

    const/high16 v2, 0x3e800000    # 0.25f

    invoke-direct {v1, v7, v2}, Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;-><init>(FF)V

    new-instance v2, Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;

    invoke-direct {v2, v7, v9}, Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;-><init>(FF)V

    new-instance v3, Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;

    invoke-direct {v3, v7, v9}, Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;-><init>(FF)V

    new-instance v4, Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;

    const/high16 v6, 0x3f400000    # 0.75f

    invoke-direct {v4, v7, v6}, Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;-><init>(FF)V

    invoke-direct/range {v0 .. v5}, Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholdsGroup;-><init>(Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;Lcom/google/android/material/transition/MaterialContainerTransform$1;)V

    sput-object v0, Lcom/google/android/material/transition/MaterialContainerTransform;->DEFAULT_ENTER_THRESHOLDS:Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholdsGroup;

    .line 208
    new-instance v0, Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholdsGroup;

    new-instance v1, Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;

    const v2, 0x3f19999a    # 0.6f

    invoke-direct {v1, v2, v8}, Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;-><init>(FF)V

    new-instance v2, Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;

    invoke-direct {v2, v7, v9}, Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;-><init>(FF)V

    new-instance v3, Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;

    invoke-direct {v3, v7, v8}, Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;-><init>(FF)V

    new-instance v4, Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;

    const v6, 0x3e99999a    # 0.3f

    invoke-direct {v4, v6, v8}, Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;-><init>(FF)V

    invoke-direct/range {v0 .. v5}, Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholdsGroup;-><init>(Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;Lcom/google/android/material/transition/MaterialContainerTransform$1;)V

    sput-object v0, Lcom/google/android/material/transition/MaterialContainerTransform;->DEFAULT_RETURN_THRESHOLDS:Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholdsGroup;

    .line 217
    new-instance v0, Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholdsGroup;

    new-instance v1, Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;

    const v2, 0x3ecccccd    # 0.4f

    invoke-direct {v1, v10, v2}, Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;-><init>(FF)V

    new-instance v2, Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;

    invoke-direct {v2, v10, v9}, Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;-><init>(FF)V

    new-instance v3, Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;

    invoke-direct {v3, v10, v9}, Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;-><init>(FF)V

    new-instance v4, Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;

    invoke-direct {v4, v10, v8}, Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;-><init>(FF)V

    invoke-direct/range {v0 .. v5}, Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholdsGroup;-><init>(Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;Lcom/google/android/material/transition/MaterialContainerTransform$1;)V

    sput-object v0, Lcom/google/android/material/transition/MaterialContainerTransform;->DEFAULT_ENTER_THRESHOLDS_ARC:Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholdsGroup;

    .line 223
    new-instance v0, Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholdsGroup;

    new-instance v1, Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;

    const v2, 0x3f19999a    # 0.6f

    invoke-direct {v1, v2, v8}, Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;-><init>(FF)V

    new-instance v2, Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;

    invoke-direct {v2, v7, v8}, Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;-><init>(FF)V

    new-instance v3, Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;

    invoke-direct {v3, v7, v8}, Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;-><init>(FF)V

    new-instance v4, Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;

    const v6, 0x3e4ccccd    # 0.2f

    invoke-direct {v4, v6, v8}, Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;-><init>(FF)V

    invoke-direct/range {v0 .. v5}, Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholdsGroup;-><init>(Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;Lcom/google/android/material/transition/MaterialContainerTransform$1;)V

    sput-object v0, Lcom/google/android/material/transition/MaterialContainerTransform;->DEFAULT_RETURN_THRESHOLDS_ARC:Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholdsGroup;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v2, -0x1

    const/high16 v3, -0x40800000    # -1.0f

    const/4 v0, 0x0

    .line 258
    invoke-direct {p0}, Landroidx/transition/Transition;-><init>()V

    .line 232
    iput-boolean v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->drawDebugEnabled:Z

    .line 233
    iput-boolean v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->holdAtEndEnabled:Z

    .line 234
    iput-boolean v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->pathMotionCustom:Z

    .line 235
    iput-boolean v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->appliedThemeValues:Z

    .line 236
    const v1, 0x1020002

    iput v1, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->drawingViewId:I

    .line 237
    iput v2, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->startViewId:I

    .line 238
    iput v2, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->endViewId:I

    .line 239
    iput v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->containerColor:I

    .line 240
    iput v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->startContainerColor:I

    .line 241
    iput v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->endContainerColor:I

    .line 242
    const/high16 v1, 0x52000000

    iput v1, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->scrimColor:I

    .line 243
    iput v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->transitionDirection:I

    .line 244
    iput v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->fadeMode:I

    .line 245
    iput v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->fitMode:I

    .line 254
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-lt v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->elevationShadowEnabled:Z

    .line 255
    iput v3, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->startElevation:F

    .line 256
    iput v3, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->endElevation:F

    .line 260
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "entering"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v3, -0x1

    const/high16 v4, -0x40800000    # -1.0f

    const/4 v0, 0x0

    .line 262
    invoke-direct {p0}, Landroidx/transition/Transition;-><init>()V

    .line 232
    iput-boolean v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->drawDebugEnabled:Z

    .line 233
    iput-boolean v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->holdAtEndEnabled:Z

    .line 234
    iput-boolean v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->pathMotionCustom:Z

    .line 235
    iput-boolean v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->appliedThemeValues:Z

    .line 236
    const v2, 0x1020002

    iput v2, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->drawingViewId:I

    .line 237
    iput v3, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->startViewId:I

    .line 238
    iput v3, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->endViewId:I

    .line 239
    iput v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->containerColor:I

    .line 240
    iput v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->startContainerColor:I

    .line 241
    iput v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->endContainerColor:I

    .line 242
    const/high16 v2, 0x52000000

    iput v2, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->scrimColor:I

    .line 243
    iput v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->transitionDirection:I

    .line 244
    iput v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->fadeMode:I

    .line 245
    iput v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->fitMode:I

    .line 254
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1c

    if-lt v2, v3, :cond_0

    move v0, v1

    :cond_0
    iput-boolean v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->elevationShadowEnabled:Z

    .line 255
    iput v4, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->startElevation:F

    .line 256
    iput v4, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->endElevation:F

    .line 263
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/transition/MaterialContainerTransform;->maybeApplyThemeValues(Landroid/content/Context;Z)V

    .line 264
    iput-boolean v1, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->appliedThemeValues:Z

    .line 265
    return-void
.end method

.method static synthetic access$300(Lcom/google/android/material/transition/MaterialContainerTransform;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/android/material/transition/MaterialContainerTransform;

    .prologue
    .line 121
    iget-boolean v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->holdAtEndEnabled:Z

    return v0
.end method

.method private buildThresholdsGroup(Z)Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholdsGroup;
    .locals 3
    .param p1, "entering"    # Z

    .prologue
    .line 1045
    invoke-virtual {p0}, Lcom/google/android/material/transition/MaterialContainerTransform;->getPathMotion()Landroidx/transition/PathMotion;

    move-result-object v0

    .line 1046
    .local v0, "pathMotion":Landroidx/transition/PathMotion;
    instance-of v1, v0, Landroidx/transition/ArcMotion;

    if-nez v1, :cond_0

    instance-of v1, v0, Lcom/google/android/material/transition/MaterialArcMotion;

    if-eqz v1, :cond_1

    .line 1047
    :cond_0
    sget-object v1, Lcom/google/android/material/transition/MaterialContainerTransform;->DEFAULT_ENTER_THRESHOLDS_ARC:Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholdsGroup;

    sget-object v2, Lcom/google/android/material/transition/MaterialContainerTransform;->DEFAULT_RETURN_THRESHOLDS_ARC:Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholdsGroup;

    invoke-direct {p0, p1, v1, v2}, Lcom/google/android/material/transition/MaterialContainerTransform;->getThresholdsOrDefault(ZLcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholdsGroup;Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholdsGroup;)Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholdsGroup;

    move-result-object v1

    .line 1050
    :goto_0
    return-object v1

    :cond_1
    sget-object v1, Lcom/google/android/material/transition/MaterialContainerTransform;->DEFAULT_ENTER_THRESHOLDS:Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholdsGroup;

    sget-object v2, Lcom/google/android/material/transition/MaterialContainerTransform;->DEFAULT_RETURN_THRESHOLDS:Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholdsGroup;

    invoke-direct {p0, p1, v1, v2}, Lcom/google/android/material/transition/MaterialContainerTransform;->getThresholdsOrDefault(ZLcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholdsGroup;Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholdsGroup;)Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholdsGroup;

    move-result-object v1

    goto :goto_0
.end method

.method private static calculateDrawableBounds(Landroid/view/View;Landroid/view/View;FF)Landroid/graphics/RectF;
    .locals 4
    .param p0, "drawingView"    # Landroid/view/View;
    .param p1, "boundingView"    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "offsetX"    # F
    .param p3, "offsetY"    # F

    .prologue
    const/4 v3, 0x0

    .line 1022
    if-eqz p1, :cond_0

    .line 1023
    invoke-static {p1}, Lcom/google/android/material/transition/TransitionUtils;->getLocationOnScreen(Landroid/view/View;)Landroid/graphics/RectF;

    move-result-object v0

    .line 1024
    .local v0, "drawableBounds":Landroid/graphics/RectF;
    invoke-virtual {v0, p2, p3}, Landroid/graphics/RectF;->offset(FF)V

    .line 1027
    .end local v0    # "drawableBounds":Landroid/graphics/RectF;
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    goto :goto_0
.end method

.method private static captureShapeAppearance(Landroid/view/View;Landroid/graphics/RectF;Lcom/google/android/material/shape/ShapeAppearanceModel;)Lcom/google/android/material/shape/ShapeAppearanceModel;
    .locals 2
    .param p0, "view"    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "bounds"    # Landroid/graphics/RectF;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "shapeAppearanceModelOverride"    # Lcom/google/android/material/shape/ShapeAppearanceModel;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 844
    .line 845
    invoke-static {p0, p2}, Lcom/google/android/material/transition/MaterialContainerTransform;->getShapeAppearance(Landroid/view/View;Lcom/google/android/material/shape/ShapeAppearanceModel;)Lcom/google/android/material/shape/ShapeAppearanceModel;

    move-result-object v0

    .line 846
    .local v0, "shapeAppearanceModel":Lcom/google/android/material/shape/ShapeAppearanceModel;
    invoke-static {v0, p1}, Lcom/google/android/material/transition/TransitionUtils;->convertToRelativeCornerSizes(Lcom/google/android/material/shape/ShapeAppearanceModel;Landroid/graphics/RectF;)Lcom/google/android/material/shape/ShapeAppearanceModel;

    move-result-object v1

    return-object v1
.end method

.method private static captureValues(Landroidx/transition/TransitionValues;Landroid/view/View;ILcom/google/android/material/shape/ShapeAppearanceModel;)V
    .locals 6
    .param p0, "transitionValues"    # Landroidx/transition/TransitionValues;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "viewOverride"    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "viewIdOverride"    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param
    .param p3, "shapeAppearanceModelOverride"    # Lcom/google/android/material/shape/ShapeAppearanceModel;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 814
    const/4 v3, -0x1

    if-eq p2, v3, :cond_3

    .line 815
    iget-object v3, p0, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    invoke-static {v3, p2}, Lcom/google/android/material/transition/TransitionUtils;->findDescendantOrAncestorById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    .line 827
    :cond_0
    :goto_0
    iget-object v2, p0, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    .line 829
    .local v2, "view":Landroid/view/View;
    invoke-static {v2}, Landroidx/core/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v3

    if-eqz v3, :cond_2

    .line 831
    :cond_1
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-nez v3, :cond_5

    invoke-static {v2}, Lcom/google/android/material/transition/TransitionUtils;->getRelativeBounds(Landroid/view/View;)Landroid/graphics/RectF;

    move-result-object v0

    .line 832
    .local v0, "bounds":Landroid/graphics/RectF;
    :goto_1
    iget-object v3, p0, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v4, "materialContainerTransition:bounds"

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 833
    iget-object v3, p0, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v4, "materialContainerTransition:shapeAppearance"

    .line 835
    invoke-static {v2, v0, p3}, Lcom/google/android/material/transition/MaterialContainerTransform;->captureShapeAppearance(Landroid/view/View;Landroid/graphics/RectF;Lcom/google/android/material/shape/ShapeAppearanceModel;)Lcom/google/android/material/shape/ShapeAppearanceModel;

    move-result-object v5

    .line 833
    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 837
    .end local v0    # "bounds":Landroid/graphics/RectF;
    :cond_2
    return-void

    .line 816
    .end local v2    # "view":Landroid/view/View;
    :cond_3
    if-eqz p1, :cond_4

    .line 817
    iput-object p1, p0, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    goto :goto_0

    .line 818
    :cond_4
    iget-object v3, p0, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    sget v4, Lcom/google/android/material/R$id;->mtrl_motion_snapshot_view:I

    invoke-virtual {v3, v4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Landroid/view/View;

    if-eqz v3, :cond_0

    .line 819
    iget-object v3, p0, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    sget v4, Lcom/google/android/material/R$id;->mtrl_motion_snapshot_view:I

    invoke-virtual {v3, v4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 822
    .local v1, "snapshotView":Landroid/view/View;
    iget-object v3, p0, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    sget v4, Lcom/google/android/material/R$id;->mtrl_motion_snapshot_view:I

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 825
    iput-object v1, p0, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    goto :goto_0

    .line 831
    .end local v1    # "snapshotView":Landroid/view/View;
    .restart local v2    # "view":Landroid/view/View;
    :cond_5
    invoke-static {v2}, Lcom/google/android/material/transition/TransitionUtils;->getLocationOnScreen(Landroid/view/View;)Landroid/graphics/RectF;

    move-result-object v0

    goto :goto_1
.end method

.method private static getElevationOrDefault(FLandroid/view/View;)F
    .locals 1
    .param p0, "elevation"    # F
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1017
    const/high16 v0, -0x40800000    # -1.0f

    cmpl-float v0, p0, v0

    if-eqz v0, :cond_0

    .end local p0    # "elevation":F
    :goto_0
    return p0

    .restart local p0    # "elevation":F
    :cond_0
    invoke-static {p1}, Landroidx/core/view/ViewCompat;->getElevation(Landroid/view/View;)F

    move-result p0

    goto :goto_0
.end method

.method private static getShapeAppearance(Landroid/view/View;Lcom/google/android/material/shape/ShapeAppearanceModel;)Lcom/google/android/material/shape/ShapeAppearanceModel;
    .locals 3
    .param p0, "view"    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "shapeAppearanceModelOverride"    # Lcom/google/android/material/shape/ShapeAppearanceModel;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 853
    if-eqz p1, :cond_0

    .line 871
    .end local p1    # "shapeAppearanceModelOverride":Lcom/google/android/material/shape/ShapeAppearanceModel;
    .local v0, "context":Landroid/content/Context;
    .local v1, "transitionShapeAppearanceResId":I
    :goto_0
    return-object p1

    .line 857
    .end local v0    # "context":Landroid/content/Context;
    .end local v1    # "transitionShapeAppearanceResId":I
    .restart local p1    # "shapeAppearanceModelOverride":Lcom/google/android/material/shape/ShapeAppearanceModel;
    :cond_0
    sget v2, Lcom/google/android/material/R$id;->mtrl_motion_snapshot_view:I

    invoke-virtual {p0, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/google/android/material/shape/ShapeAppearanceModel;

    if-eqz v2, :cond_1

    .line 858
    sget v2, Lcom/google/android/material/R$id;->mtrl_motion_snapshot_view:I

    invoke-virtual {p0, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/shape/ShapeAppearanceModel;

    move-object p1, v2

    goto :goto_0

    .line 861
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 862
    .restart local v0    # "context":Landroid/content/Context;
    invoke-static {v0}, Lcom/google/android/material/transition/MaterialContainerTransform;->getTransitionShapeAppearanceResId(Landroid/content/Context;)I

    move-result v1

    .line 863
    .restart local v1    # "transitionShapeAppearanceResId":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    .line 864
    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/google/android/material/shape/ShapeAppearanceModel;->builder(Landroid/content/Context;II)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->build()Lcom/google/android/material/shape/ShapeAppearanceModel;

    move-result-object p1

    goto :goto_0

    .line 867
    :cond_2
    instance-of v2, p0, Lcom/google/android/material/shape/Shapeable;

    if-eqz v2, :cond_3

    .line 868
    check-cast p0, Lcom/google/android/material/shape/Shapeable;

    .end local p0    # "view":Landroid/view/View;
    invoke-interface {p0}, Lcom/google/android/material/shape/Shapeable;->getShapeAppearanceModel()Lcom/google/android/material/shape/ShapeAppearanceModel;

    move-result-object p1

    goto :goto_0

    .line 871
    .restart local p0    # "view":Landroid/view/View;
    :cond_3
    invoke-static {}, Lcom/google/android/material/shape/ShapeAppearanceModel;->builder()Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->build()Lcom/google/android/material/shape/ShapeAppearanceModel;

    move-result-object p1

    goto :goto_0
.end method

.method private getThresholdsOrDefault(ZLcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholdsGroup;Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholdsGroup;)Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholdsGroup;
    .locals 7
    .param p1, "entering"    # Z
    .param p2, "defaultEnterThresholds"    # Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholdsGroup;
    .param p3, "defaultReturnThresholds"    # Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholdsGroup;

    .prologue
    .line 1058
    if-eqz p1, :cond_0

    move-object v6, p2

    .line 1060
    .local v6, "defaultThresholds":Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholdsGroup;
    :goto_0
    new-instance v0, Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholdsGroup;

    iget-object v1, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->fadeProgressThresholds:Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;

    .line 1061
    invoke-static {v6}, Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholdsGroup;->access$400(Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholdsGroup;)Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/material/transition/TransitionUtils;->defaultIfNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;

    iget-object v2, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->scaleProgressThresholds:Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;

    .line 1062
    invoke-static {v6}, Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholdsGroup;->access$500(Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholdsGroup;)Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/material/transition/TransitionUtils;->defaultIfNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;

    iget-object v3, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->scaleMaskProgressThresholds:Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;

    .line 1063
    invoke-static {v6}, Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholdsGroup;->access$600(Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholdsGroup;)Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/android/material/transition/TransitionUtils;->defaultIfNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;

    iget-object v4, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->shapeMaskProgressThresholds:Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;

    .line 1064
    invoke-static {v6}, Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholdsGroup;->access$700(Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholdsGroup;)Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/android/material/transition/TransitionUtils;->defaultIfNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholdsGroup;-><init>(Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;Lcom/google/android/material/transition/MaterialContainerTransform$1;)V

    .line 1060
    return-object v0

    .end local v6    # "defaultThresholds":Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholdsGroup;
    :cond_0
    move-object v6, p3

    .line 1058
    goto :goto_0
.end method

.method private static getTransitionShapeAppearanceResId(Landroid/content/Context;)I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .annotation build Landroidx/annotation/StyleRes;
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 876
    const/4 v2, 0x1

    new-array v2, v2, [I

    sget v3, Lcom/google/android/material/R$attr;->transitionShapeAppearance:I

    aput v3, v2, v4

    invoke-virtual {p0, v2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 877
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v2, -0x1

    invoke-virtual {v0, v4, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 878
    .local v1, "transitionShapeAppearanceResId":I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 879
    return v1
.end method

.method private isEntering(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z
    .locals 4
    .param p1, "startBounds"    # Landroid/graphics/RectF;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "endBounds"    # Landroid/graphics/RectF;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1032
    iget v2, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->transitionDirection:I

    packed-switch v2, :pswitch_data_0

    .line 1040
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid transition direction: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->transitionDirection:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1034
    :pswitch_0
    invoke-static {p2}, Lcom/google/android/material/transition/TransitionUtils;->calculateArea(Landroid/graphics/RectF;)F

    move-result v2

    invoke-static {p1}, Lcom/google/android/material/transition/TransitionUtils;->calculateArea(Landroid/graphics/RectF;)F

    move-result v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    .line 1038
    :goto_0
    :pswitch_1
    return v0

    :cond_0
    move v0, v1

    .line 1034
    goto :goto_0

    :pswitch_2
    move v0, v1

    .line 1038
    goto :goto_0

    .line 1032
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private maybeApplyThemeValues(Landroid/content/Context;Z)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "entering"    # Z

    .prologue
    .line 1007
    sget v0, Lcom/google/android/material/R$attr;->motionEasingStandard:I

    sget-object v1, Lcom/google/android/material/animation/AnimationUtils;->FAST_OUT_SLOW_IN_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-static {p0, p1, v0, v1}, Lcom/google/android/material/transition/TransitionUtils;->maybeApplyThemeInterpolator(Landroidx/transition/Transition;Landroid/content/Context;ILandroid/animation/TimeInterpolator;)Z

    .line 1009
    if-eqz p2, :cond_1

    sget v0, Lcom/google/android/material/R$attr;->motionDurationLong1:I

    :goto_0
    invoke-static {p0, p1, v0}, Lcom/google/android/material/transition/TransitionUtils;->maybeApplyThemeDuration(Landroidx/transition/Transition;Landroid/content/Context;I)Z

    .line 1011
    iget-boolean v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->pathMotionCustom:Z

    if-nez v0, :cond_0

    .line 1012
    sget v0, Lcom/google/android/material/R$attr;->motionPath:I

    invoke-static {p0, p1, v0}, Lcom/google/android/material/transition/TransitionUtils;->maybeApplyThemePath(Landroidx/transition/Transition;Landroid/content/Context;I)Z

    .line 1014
    :cond_0
    return-void

    .line 1009
    :cond_1
    sget v0, Lcom/google/android/material/R$attr;->motionDurationMedium2:I

    goto :goto_0
.end method


# virtual methods
.method public captureEndValues(Landroidx/transition/TransitionValues;)V
    .locals 3
    .param p1, "transitionValues"    # Landroidx/transition/TransitionValues;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 806
    iget-object v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->endView:Landroid/view/View;

    iget v1, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->endViewId:I

    iget-object v2, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->endShapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    invoke-static {p1, v0, v1, v2}, Lcom/google/android/material/transition/MaterialContainerTransform;->captureValues(Landroidx/transition/TransitionValues;Landroid/view/View;ILcom/google/android/material/shape/ShapeAppearanceModel;)V

    .line 807
    return-void
.end method

.method public captureStartValues(Landroidx/transition/TransitionValues;)V
    .locals 3
    .param p1, "transitionValues"    # Landroidx/transition/TransitionValues;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 801
    iget-object v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->startView:Landroid/view/View;

    iget v1, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->startViewId:I

    iget-object v2, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->startShapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    invoke-static {p1, v0, v1, v2}, Lcom/google/android/material/transition/MaterialContainerTransform;->captureValues(Landroidx/transition/TransitionValues;Landroid/view/View;ILcom/google/android/material/shape/ShapeAppearanceModel;)V

    .line 802
    return-void
.end method

.method public createAnimator(Landroid/view/ViewGroup;Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 33
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "startValues"    # Landroidx/transition/TransitionValues;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "endValues"    # Landroidx/transition/TransitionValues;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 888
    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 889
    :cond_0
    const/16 v25, 0x0

    .line 1003
    :goto_0
    return-object v25

    .line 892
    :cond_1
    move-object/from16 v0, p2

    iget-object v5, v0, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v9, "materialContainerTransition:bounds"

    invoke-interface {v5, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/RectF;

    .line 893
    .local v7, "startBounds":Landroid/graphics/RectF;
    move-object/from16 v0, p2

    iget-object v5, v0, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v9, "materialContainerTransition:shapeAppearance"

    .line 894
    invoke-interface {v5, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 895
    .local v8, "startShapeAppearanceModel":Lcom/google/android/material/shape/ShapeAppearanceModel;
    if-eqz v7, :cond_2

    if-nez v8, :cond_3

    .line 896
    :cond_2
    sget-object v5, Lcom/google/android/material/transition/MaterialContainerTransform;->TAG:Ljava/lang/String;

    const-string v9, "Skipping due to null start bounds. Ensure start view is laid out and measured."

    invoke-static {v5, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 897
    const/16 v25, 0x0

    goto :goto_0

    .line 900
    :cond_3
    move-object/from16 v0, p3

    iget-object v5, v0, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v9, "materialContainerTransition:bounds"

    invoke-interface {v5, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/graphics/RectF;

    .line 901
    .local v11, "endBounds":Landroid/graphics/RectF;
    move-object/from16 v0, p3

    iget-object v5, v0, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v9, "materialContainerTransition:shapeAppearance"

    .line 902
    invoke-interface {v5, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 903
    .local v12, "endShapeAppearanceModel":Lcom/google/android/material/shape/ShapeAppearanceModel;
    if-eqz v11, :cond_4

    if-nez v12, :cond_5

    .line 904
    :cond_4
    sget-object v5, Lcom/google/android/material/transition/MaterialContainerTransform;->TAG:Ljava/lang/String;

    const-string v9, "Skipping due to null end bounds. Ensure end view is laid out and measured."

    invoke-static {v5, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 905
    const/16 v25, 0x0

    goto :goto_0

    .line 908
    :cond_5
    move-object/from16 v0, p2

    iget-object v6, v0, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    .line 909
    .local v6, "startView":Landroid/view/View;
    move-object/from16 v0, p3

    iget-object v10, v0, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    .line 912
    .local v10, "endView":Landroid/view/View;
    invoke-virtual {v10}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    if-eqz v5, :cond_7

    move-object/from16 v28, v10

    .line 913
    .local v28, "drawingBaseView":Landroid/view/View;
    :goto_1
    move-object/from16 v0, p0

    iget v5, v0, Lcom/google/android/material/transition/MaterialContainerTransform;->drawingViewId:I

    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getId()I

    move-result v9

    if-ne v5, v9, :cond_8

    .line 914
    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v29

    check-cast v29, Landroid/view/View;

    .line 915
    .local v29, "drawingView":Landroid/view/View;
    move-object/from16 v26, v28

    .line 922
    .local v26, "boundingView":Landroid/view/View;
    :goto_2
    invoke-static/range {v29 .. v29}, Lcom/google/android/material/transition/TransitionUtils;->getLocationOnScreen(Landroid/view/View;)Landroid/graphics/RectF;

    move-result-object v30

    .line 923
    .local v30, "drawingViewBounds":Landroid/graphics/RectF;
    move-object/from16 v0, v30

    iget v5, v0, Landroid/graphics/RectF;->left:F

    neg-float v0, v5

    move/from16 v31, v0

    .line 924
    .local v31, "offsetX":F
    move-object/from16 v0, v30

    iget v5, v0, Landroid/graphics/RectF;->top:F

    neg-float v0, v5

    move/from16 v32, v0

    .line 925
    .local v32, "offsetY":F
    move-object/from16 v0, v29

    move-object/from16 v1, v26

    move/from16 v2, v31

    move/from16 v3, v32

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/material/transition/MaterialContainerTransform;->calculateDrawableBounds(Landroid/view/View;Landroid/view/View;FF)Landroid/graphics/RectF;

    move-result-object v27

    .line 926
    .local v27, "drawableBounds":Landroid/graphics/RectF;
    move/from16 v0, v31

    move/from16 v1, v32

    invoke-virtual {v7, v0, v1}, Landroid/graphics/RectF;->offset(FF)V

    .line 927
    move/from16 v0, v31

    move/from16 v1, v32

    invoke-virtual {v11, v0, v1}, Landroid/graphics/RectF;->offset(FF)V

    .line 929
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v11}, Lcom/google/android/material/transition/MaterialContainerTransform;->isEntering(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    move-result v18

    .line 931
    .local v18, "entering":Z
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/google/android/material/transition/MaterialContainerTransform;->appliedThemeValues:Z

    if-nez v5, :cond_6

    .line 934
    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v5, v1}, Lcom/google/android/material/transition/MaterialContainerTransform;->maybeApplyThemeValues(Landroid/content/Context;Z)V

    .line 937
    :cond_6
    new-instance v4, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;

    .line 939
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/transition/MaterialContainerTransform;->getPathMotion()Landroidx/transition/PathMotion;

    move-result-object v5

    move-object/from16 v0, p0

    iget v9, v0, Lcom/google/android/material/transition/MaterialContainerTransform;->startElevation:F

    .line 943
    invoke-static {v9, v6}, Lcom/google/android/material/transition/MaterialContainerTransform;->getElevationOrDefault(FLandroid/view/View;)F

    move-result v9

    move-object/from16 v0, p0

    iget v13, v0, Lcom/google/android/material/transition/MaterialContainerTransform;->endElevation:F

    .line 947
    invoke-static {v13, v10}, Lcom/google/android/material/transition/MaterialContainerTransform;->getElevationOrDefault(FLandroid/view/View;)F

    move-result v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/google/android/material/transition/MaterialContainerTransform;->containerColor:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/google/android/material/transition/MaterialContainerTransform;->startContainerColor:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/material/transition/MaterialContainerTransform;->endContainerColor:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/material/transition/MaterialContainerTransform;->scrimColor:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/material/transition/MaterialContainerTransform;->elevationShadowEnabled:Z

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/material/transition/MaterialContainerTransform;->fadeMode:I

    move/from16 v20, v0

    .line 954
    move/from16 v0, v20

    move/from16 v1, v18

    invoke-static {v0, v1}, Lcom/google/android/material/transition/FadeModeEvaluators;->get(IZ)Lcom/google/android/material/transition/FadeModeEvaluator;

    move-result-object v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/material/transition/MaterialContainerTransform;->fitMode:I

    move/from16 v21, v0

    .line 955
    move/from16 v0, v21

    move/from16 v1, v18

    invoke-static {v0, v1, v7, v11}, Lcom/google/android/material/transition/FitModeEvaluators;->get(IZLandroid/graphics/RectF;Landroid/graphics/RectF;)Lcom/google/android/material/transition/FitModeEvaluator;

    move-result-object v21

    .line 956
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/google/android/material/transition/MaterialContainerTransform;->buildThresholdsGroup(Z)Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholdsGroup;

    move-result-object v22

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/material/transition/MaterialContainerTransform;->drawDebugEnabled:Z

    move/from16 v23, v0

    const/16 v24, 0x0

    invoke-direct/range {v4 .. v24}, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;-><init>(Landroidx/transition/PathMotion;Landroid/view/View;Landroid/graphics/RectF;Lcom/google/android/material/shape/ShapeAppearanceModel;FLandroid/view/View;Landroid/graphics/RectF;Lcom/google/android/material/shape/ShapeAppearanceModel;FIIIIZZLcom/google/android/material/transition/FadeModeEvaluator;Lcom/google/android/material/transition/FitModeEvaluator;Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholdsGroup;ZLcom/google/android/material/transition/MaterialContainerTransform$1;)V

    .line 960
    .local v4, "transitionDrawable":Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;
    move-object/from16 v0, v27

    iget v5, v0, Landroid/graphics/RectF;->left:F

    .line 961
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    move-object/from16 v0, v27

    iget v9, v0, Landroid/graphics/RectF;->top:F

    .line 962
    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    move-object/from16 v0, v27

    iget v13, v0, Landroid/graphics/RectF;->right:F

    .line 963
    invoke-static {v13}, Ljava/lang/Math;->round(F)I

    move-result v13

    move-object/from16 v0, v27

    iget v14, v0, Landroid/graphics/RectF;->bottom:F

    .line 964
    invoke-static {v14}, Ljava/lang/Math;->round(F)I

    move-result v14

    .line 960
    invoke-virtual {v4, v5, v9, v13, v14}, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->setBounds(IIII)V

    .line 966
    const/4 v5, 0x2

    new-array v5, v5, [F

    fill-array-data v5, :array_0

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v25

    .line 967
    .local v25, "animator":Landroid/animation/ValueAnimator;
    new-instance v5, Lcom/google/android/material/transition/MaterialContainerTransform$1;

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v4}, Lcom/google/android/material/transition/MaterialContainerTransform$1;-><init>(Lcom/google/android/material/transition/MaterialContainerTransform;Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;)V

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 975
    new-instance v19, Lcom/google/android/material/transition/MaterialContainerTransform$2;

    move-object/from16 v20, p0

    move-object/from16 v21, v29

    move-object/from16 v22, v4

    move-object/from16 v23, v6

    move-object/from16 v24, v10

    invoke-direct/range {v19 .. v24}, Lcom/google/android/material/transition/MaterialContainerTransform$2;-><init>(Lcom/google/android/material/transition/MaterialContainerTransform;Landroid/view/View;Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;Landroid/view/View;Landroid/view/View;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/google/android/material/transition/MaterialContainerTransform;->addListener(Landroidx/transition/Transition$TransitionListener;)Landroidx/transition/Transition;

    goto/16 :goto_0

    .end local v4    # "transitionDrawable":Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;
    .end local v18    # "entering":Z
    .end local v25    # "animator":Landroid/animation/ValueAnimator;
    .end local v26    # "boundingView":Landroid/view/View;
    .end local v27    # "drawableBounds":Landroid/graphics/RectF;
    .end local v28    # "drawingBaseView":Landroid/view/View;
    .end local v29    # "drawingView":Landroid/view/View;
    .end local v30    # "drawingViewBounds":Landroid/graphics/RectF;
    .end local v31    # "offsetX":F
    .end local v32    # "offsetY":F
    :cond_7
    move-object/from16 v28, v6

    .line 912
    goto/16 :goto_1

    .line 917
    .restart local v28    # "drawingBaseView":Landroid/view/View;
    :cond_8
    move-object/from16 v0, p0

    iget v5, v0, Lcom/google/android/material/transition/MaterialContainerTransform;->drawingViewId:I

    move-object/from16 v0, v28

    invoke-static {v0, v5}, Lcom/google/android/material/transition/TransitionUtils;->findAncestorById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v29

    .line 918
    .restart local v29    # "drawingView":Landroid/view/View;
    const/16 v26, 0x0

    .restart local v26    # "boundingView":Landroid/view/View;
    goto/16 :goto_2

    .line 966
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public getContainerColor()I
    .locals 1
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    .prologue
    .line 486
    iget v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->containerColor:I

    return v0
.end method

.method public getDrawingViewId()I
    .locals 1
    .annotation build Landroidx/annotation/IdRes;
    .end annotation

    .prologue
    .line 458
    iget v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->drawingViewId:I

    return v0
.end method

.method public getEndContainerColor()I
    .locals 1
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    .prologue
    .line 545
    iget v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->endContainerColor:I

    return v0
.end method

.method public getEndElevation()F
    .locals 1

    .prologue
    .line 442
    iget v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->endElevation:F

    return v0
.end method

.method public getEndShapeAppearanceModel()Lcom/google/android/material/shape/ShapeAppearanceModel;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 378
    iget-object v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->endShapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    return-object v0
.end method

.method public getEndView()Landroid/view/View;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 335
    iget-object v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->endView:Landroid/view/View;

    return-object v0
.end method

.method public getEndViewId()I
    .locals 1
    .annotation build Landroidx/annotation/IdRes;
    .end annotation

    .prologue
    .line 303
    iget v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->endViewId:I

    return v0
.end method

.method public getFadeMode()I
    .locals 1

    .prologue
    .line 632
    iget v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->fadeMode:I

    return v0
.end method

.method public getFadeProgressThresholds()Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 671
    iget-object v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->fadeProgressThresholds:Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;

    return-object v0
.end method

.method public getFitMode()I
    .locals 1

    .prologue
    .line 652
    iget v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->fitMode:I

    return v0
.end method

.method public getScaleMaskProgressThresholds()Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 713
    iget-object v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->scaleMaskProgressThresholds:Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;

    return-object v0
.end method

.method public getScaleProgressThresholds()Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 692
    iget-object v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->scaleProgressThresholds:Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;

    return-object v0
.end method

.method public getScrimColor()I
    .locals 1
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    .prologue
    .line 586
    iget v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->scrimColor:I

    return v0
.end method

.method public getShapeMaskProgressThresholds()Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 735
    iget-object v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->shapeMaskProgressThresholds:Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;

    return-object v0
.end method

.method public getStartContainerColor()I
    .locals 1
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    .prologue
    .line 518
    iget v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->startContainerColor:I

    return v0
.end method

.method public getStartElevation()F
    .locals 1

    .prologue
    .line 422
    iget v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->startElevation:F

    return v0
.end method

.method public getStartShapeAppearanceModel()Lcom/google/android/material/shape/ShapeAppearanceModel;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 353
    iget-object v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->startShapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    return-object v0
.end method

.method public getStartView()Landroid/view/View;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 320
    iget-object v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->startView:Landroid/view/View;

    return-object v0
.end method

.method public getStartViewId()I
    .locals 1
    .annotation build Landroidx/annotation/IdRes;
    .end annotation

    .prologue
    .line 270
    iget v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->startViewId:I

    return v0
.end method

.method public getTransitionDirection()I
    .locals 1

    .prologue
    .line 614
    iget v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->transitionDirection:I

    return v0
.end method

.method public getTransitionProperties()[Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 796
    sget-object v0, Lcom/google/android/material/transition/MaterialContainerTransform;->TRANSITION_PROPS:[Ljava/lang/String;

    return-object v0
.end method

.method public isDrawDebugEnabled()Z
    .locals 1

    .prologue
    .line 775
    iget-boolean v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->drawDebugEnabled:Z

    return v0
.end method

.method public isElevationShadowEnabled()Z
    .locals 1

    .prologue
    .line 396
    iget-boolean v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->elevationShadowEnabled:Z

    return v0
.end method

.method public isHoldAtEndEnabled()Z
    .locals 1

    .prologue
    .line 756
    iget-boolean v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->holdAtEndEnabled:Z

    return v0
.end method

.method public setAllContainerColors(I)V
    .locals 0
    .param p1, "containerColor"    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 575
    iput p1, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->containerColor:I

    .line 576
    iput p1, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->startContainerColor:I

    .line 577
    iput p1, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->endContainerColor:I

    .line 578
    return-void
.end method

.method public setContainerColor(I)V
    .locals 0
    .param p1, "containerColor"    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 508
    iput p1, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->containerColor:I

    .line 509
    return-void
.end method

.method public setDrawDebugEnabled(Z)V
    .locals 0
    .param p1, "drawDebugEnabled"    # Z

    .prologue
    .line 784
    iput-boolean p1, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->drawDebugEnabled:Z

    .line 785
    return-void
.end method

.method public setDrawingViewId(I)V
    .locals 0
    .param p1, "drawingViewId"    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param

    .prologue
    .line 476
    iput p1, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->drawingViewId:I

    .line 477
    return-void
.end method

.method public setElevationShadowEnabled(Z)V
    .locals 0
    .param p1, "elevationShadowEnabled"    # Z

    .prologue
    .line 412
    iput-boolean p1, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->elevationShadowEnabled:Z

    .line 413
    return-void
.end method

.method public setEndContainerColor(I)V
    .locals 0
    .param p1, "containerColor"    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 560
    iput p1, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->endContainerColor:I

    .line 561
    return-void
.end method

.method public setEndElevation(F)V
    .locals 0
    .param p1, "endElevation"    # F

    .prologue
    .line 452
    iput p1, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->endElevation:F

    .line 453
    return-void
.end method

.method public setEndShapeAppearanceModel(Lcom/google/android/material/shape/ShapeAppearanceModel;)V
    .locals 0
    .param p1, "endShapeAppearanceModel"    # Lcom/google/android/material/shape/ShapeAppearanceModel;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 388
    iput-object p1, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->endShapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 389
    return-void
.end method

.method public setEndView(Landroid/view/View;)V
    .locals 0
    .param p1, "endView"    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 344
    iput-object p1, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->endView:Landroid/view/View;

    .line 345
    return-void
.end method

.method public setEndViewId(I)V
    .locals 0
    .param p1, "endViewId"    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param

    .prologue
    .line 314
    iput p1, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->endViewId:I

    .line 315
    return-void
.end method

.method public setFadeMode(I)V
    .locals 0
    .param p1, "fadeMode"    # I

    .prologue
    .line 646
    iput p1, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->fadeMode:I

    .line 647
    return-void
.end method

.method public setFadeProgressThresholds(Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;)V
    .locals 0
    .param p1, "fadeProgressThresholds"    # Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 682
    iput-object p1, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->fadeProgressThresholds:Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;

    .line 683
    return-void
.end method

.method public setFitMode(I)V
    .locals 0
    .param p1, "fitMode"    # I

    .prologue
    .line 661
    iput p1, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->fitMode:I

    .line 662
    return-void
.end method

.method public setHoldAtEndEnabled(Z)V
    .locals 0
    .param p1, "holdAtEndEnabled"    # Z

    .prologue
    .line 766
    iput-boolean p1, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->holdAtEndEnabled:Z

    .line 767
    return-void
.end method

.method public setPathMotion(Landroidx/transition/PathMotion;)V
    .locals 1
    .param p1, "pathMotion"    # Landroidx/transition/PathMotion;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 789
    invoke-super {p0, p1}, Landroidx/transition/Transition;->setPathMotion(Landroidx/transition/PathMotion;)V

    .line 790
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->pathMotionCustom:Z

    .line 791
    return-void
.end method

.method public setScaleMaskProgressThresholds(Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;)V
    .locals 0
    .param p1, "scaleMaskProgressThresholds"    # Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 725
    iput-object p1, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->scaleMaskProgressThresholds:Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;

    .line 726
    return-void
.end method

.method public setScaleProgressThresholds(Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;)V
    .locals 0
    .param p1, "scaleProgressThresholds"    # Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 703
    iput-object p1, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->scaleProgressThresholds:Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;

    .line 704
    return-void
.end method

.method public setScrimColor(I)V
    .locals 0
    .param p1, "scrimColor"    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 602
    iput p1, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->scrimColor:I

    .line 603
    return-void
.end method

.method public setShapeMaskProgressThresholds(Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;)V
    .locals 0
    .param p1, "shapeMaskProgressThresholds"    # Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 747
    iput-object p1, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->shapeMaskProgressThresholds:Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;

    .line 748
    return-void
.end method

.method public setStartContainerColor(I)V
    .locals 0
    .param p1, "containerColor"    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 535
    iput p1, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->startContainerColor:I

    .line 536
    return-void
.end method

.method public setStartElevation(F)V
    .locals 0
    .param p1, "startElevation"    # F

    .prologue
    .line 432
    iput p1, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->startElevation:F

    .line 433
    return-void
.end method

.method public setStartShapeAppearanceModel(Lcom/google/android/material/shape/ShapeAppearanceModel;)V
    .locals 0
    .param p1, "startShapeAppearanceModel"    # Lcom/google/android/material/shape/ShapeAppearanceModel;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 369
    iput-object p1, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->startShapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 370
    return-void
.end method

.method public setStartView(Landroid/view/View;)V
    .locals 0
    .param p1, "startView"    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 329
    iput-object p1, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->startView:Landroid/view/View;

    .line 330
    return-void
.end method

.method public setStartViewId(I)V
    .locals 0
    .param p1, "startViewId"    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param

    .prologue
    .line 288
    iput p1, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->startViewId:I

    .line 289
    return-void
.end method

.method public setTransitionDirection(I)V
    .locals 0
    .param p1, "transitionDirection"    # I

    .prologue
    .line 626
    iput p1, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->transitionDirection:I

    .line 627
    return-void
.end method

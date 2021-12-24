.class public final Lcom/google/android/material/transition/platform/MaterialContainerTransform;
.super Landroid/transition/Transition;
.source "MaterialContainerTransform.java"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x15
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;,
        Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;,
        Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;,
        Lcom/google/android/material/transition/platform/MaterialContainerTransform$FitMode;,
        Lcom/google/android/material/transition/platform/MaterialContainerTransform$FadeMode;,
        Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDirection;
    }
.end annotation


# static fields
.field private static final DEFAULT_ENTER_THRESHOLDS:Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;

.field private static final DEFAULT_ENTER_THRESHOLDS_ARC:Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;

.field private static final DEFAULT_RETURN_THRESHOLDS:Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;

.field private static final DEFAULT_RETURN_THRESHOLDS_ARC:Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;

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

.field private fadeProgressThresholds:Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private fitMode:I

.field private holdAtEndEnabled:Z

.field private pathMotionCustom:Z

.field private scaleMaskProgressThresholds:Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private scaleProgressThresholds:Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private scrimColor:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field private shapeMaskProgressThresholds:Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;
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

    .line 198
    const-class v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->TAG:Ljava/lang/String;

    .line 201
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "materialContainerTransition:bounds"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "materialContainerTransition:shapeAppearance"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->TRANSITION_PROPS:[Ljava/lang/String;

    .line 207
    new-instance v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;

    new-instance v1, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;

    const/high16 v2, 0x3e800000    # 0.25f

    invoke-direct {v1, v7, v2}, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;-><init>(FF)V

    new-instance v2, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;

    invoke-direct {v2, v7, v9}, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;-><init>(FF)V

    new-instance v3, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;

    invoke-direct {v3, v7, v9}, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;-><init>(FF)V

    new-instance v4, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;

    const/high16 v6, 0x3f400000    # 0.75f

    invoke-direct {v4, v7, v6}, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;-><init>(FF)V

    invoke-direct/range {v0 .. v5}, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;-><init>(Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;Lcom/google/android/material/transition/platform/MaterialContainerTransform$1;)V

    sput-object v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->DEFAULT_ENTER_THRESHOLDS:Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;

    .line 213
    new-instance v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;

    new-instance v1, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;

    const v2, 0x3f19999a    # 0.6f

    invoke-direct {v1, v2, v8}, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;-><init>(FF)V

    new-instance v2, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;

    invoke-direct {v2, v7, v9}, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;-><init>(FF)V

    new-instance v3, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;

    invoke-direct {v3, v7, v8}, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;-><init>(FF)V

    new-instance v4, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;

    const v6, 0x3e99999a    # 0.3f

    invoke-direct {v4, v6, v8}, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;-><init>(FF)V

    invoke-direct/range {v0 .. v5}, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;-><init>(Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;Lcom/google/android/material/transition/platform/MaterialContainerTransform$1;)V

    sput-object v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->DEFAULT_RETURN_THRESHOLDS:Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;

    .line 222
    new-instance v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;

    new-instance v1, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;

    const v2, 0x3ecccccd    # 0.4f

    invoke-direct {v1, v10, v2}, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;-><init>(FF)V

    new-instance v2, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;

    invoke-direct {v2, v10, v9}, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;-><init>(FF)V

    new-instance v3, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;

    invoke-direct {v3, v10, v9}, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;-><init>(FF)V

    new-instance v4, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;

    invoke-direct {v4, v10, v8}, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;-><init>(FF)V

    invoke-direct/range {v0 .. v5}, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;-><init>(Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;Lcom/google/android/material/transition/platform/MaterialContainerTransform$1;)V

    sput-object v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->DEFAULT_ENTER_THRESHOLDS_ARC:Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;

    .line 228
    new-instance v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;

    new-instance v1, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;

    const v2, 0x3f19999a    # 0.6f

    invoke-direct {v1, v2, v8}, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;-><init>(FF)V

    new-instance v2, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;

    invoke-direct {v2, v7, v8}, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;-><init>(FF)V

    new-instance v3, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;

    invoke-direct {v3, v7, v8}, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;-><init>(FF)V

    new-instance v4, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;

    const v6, 0x3e4ccccd    # 0.2f

    invoke-direct {v4, v6, v8}, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;-><init>(FF)V

    invoke-direct/range {v0 .. v5}, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;-><init>(Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;Lcom/google/android/material/transition/platform/MaterialContainerTransform$1;)V

    sput-object v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->DEFAULT_RETURN_THRESHOLDS_ARC:Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v2, -0x1

    const/high16 v3, -0x40800000    # -1.0f

    const/4 v0, 0x0

    .line 263
    invoke-direct {p0}, Landroid/transition/Transition;-><init>()V

    .line 237
    iput-boolean v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->drawDebugEnabled:Z

    .line 238
    iput-boolean v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->holdAtEndEnabled:Z

    .line 239
    iput-boolean v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->pathMotionCustom:Z

    .line 240
    iput-boolean v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->appliedThemeValues:Z

    .line 241
    const v1, 0x1020002

    iput v1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->drawingViewId:I

    .line 242
    iput v2, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->startViewId:I

    .line 243
    iput v2, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->endViewId:I

    .line 244
    iput v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->containerColor:I

    .line 245
    iput v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->startContainerColor:I

    .line 246
    iput v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->endContainerColor:I

    .line 247
    const/high16 v1, 0x52000000

    iput v1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->scrimColor:I

    .line 248
    iput v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->transitionDirection:I

    .line 249
    iput v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->fadeMode:I

    .line 250
    iput v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->fitMode:I

    .line 259
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-lt v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->elevationShadowEnabled:Z

    .line 260
    iput v3, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->startElevation:F

    .line 261
    iput v3, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->endElevation:F

    .line 265
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

    .line 267
    invoke-direct {p0}, Landroid/transition/Transition;-><init>()V

    .line 237
    iput-boolean v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->drawDebugEnabled:Z

    .line 238
    iput-boolean v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->holdAtEndEnabled:Z

    .line 239
    iput-boolean v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->pathMotionCustom:Z

    .line 240
    iput-boolean v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->appliedThemeValues:Z

    .line 241
    const v2, 0x1020002

    iput v2, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->drawingViewId:I

    .line 242
    iput v3, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->startViewId:I

    .line 243
    iput v3, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->endViewId:I

    .line 244
    iput v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->containerColor:I

    .line 245
    iput v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->startContainerColor:I

    .line 246
    iput v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->endContainerColor:I

    .line 247
    const/high16 v2, 0x52000000

    iput v2, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->scrimColor:I

    .line 248
    iput v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->transitionDirection:I

    .line 249
    iput v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->fadeMode:I

    .line 250
    iput v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->fitMode:I

    .line 259
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1c

    if-lt v2, v3, :cond_0

    move v0, v1

    :cond_0
    iput-boolean v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->elevationShadowEnabled:Z

    .line 260
    iput v4, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->startElevation:F

    .line 261
    iput v4, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->endElevation:F

    .line 268
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->maybeApplyThemeValues(Landroid/content/Context;Z)V

    .line 269
    iput-boolean v1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->appliedThemeValues:Z

    .line 270
    return-void
.end method

.method static synthetic access$300(Lcom/google/android/material/transition/platform/MaterialContainerTransform;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/android/material/transition/platform/MaterialContainerTransform;

    .prologue
    .line 126
    iget-boolean v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->holdAtEndEnabled:Z

    return v0
.end method

.method private buildThresholdsGroup(Z)Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;
    .locals 3
    .param p1, "entering"    # Z

    .prologue
    .line 1050
    invoke-virtual {p0}, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->getPathMotion()Landroid/transition/PathMotion;

    move-result-object v0

    .line 1051
    .local v0, "pathMotion":Landroid/transition/PathMotion;
    instance-of v1, v0, Landroid/transition/ArcMotion;

    if-nez v1, :cond_0

    instance-of v1, v0, Lcom/google/android/material/transition/platform/MaterialArcMotion;

    if-eqz v1, :cond_1

    .line 1052
    :cond_0
    sget-object v1, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->DEFAULT_ENTER_THRESHOLDS_ARC:Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;

    sget-object v2, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->DEFAULT_RETURN_THRESHOLDS_ARC:Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;

    invoke-direct {p0, p1, v1, v2}, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->getThresholdsOrDefault(ZLcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;)Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;

    move-result-object v1

    .line 1055
    :goto_0
    return-object v1

    :cond_1
    sget-object v1, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->DEFAULT_ENTER_THRESHOLDS:Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;

    sget-object v2, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->DEFAULT_RETURN_THRESHOLDS:Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;

    invoke-direct {p0, p1, v1, v2}, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->getThresholdsOrDefault(ZLcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;)Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;

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

    .line 1027
    if-eqz p1, :cond_0

    .line 1028
    invoke-static {p1}, Lcom/google/android/material/transition/platform/TransitionUtils;->getLocationOnScreen(Landroid/view/View;)Landroid/graphics/RectF;

    move-result-object v0

    .line 1029
    .local v0, "drawableBounds":Landroid/graphics/RectF;
    invoke-virtual {v0, p2, p3}, Landroid/graphics/RectF;->offset(FF)V

    .line 1032
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
    .line 849
    .line 850
    invoke-static {p0, p2}, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->getShapeAppearance(Landroid/view/View;Lcom/google/android/material/shape/ShapeAppearanceModel;)Lcom/google/android/material/shape/ShapeAppearanceModel;

    move-result-object v0

    .line 851
    .local v0, "shapeAppearanceModel":Lcom/google/android/material/shape/ShapeAppearanceModel;
    invoke-static {v0, p1}, Lcom/google/android/material/transition/platform/TransitionUtils;->convertToRelativeCornerSizes(Lcom/google/android/material/shape/ShapeAppearanceModel;Landroid/graphics/RectF;)Lcom/google/android/material/shape/ShapeAppearanceModel;

    move-result-object v1

    return-object v1
.end method

.method private static captureValues(Landroid/transition/TransitionValues;Landroid/view/View;ILcom/google/android/material/shape/ShapeAppearanceModel;)V
    .locals 6
    .param p0, "transitionValues"    # Landroid/transition/TransitionValues;
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
    .line 819
    const/4 v3, -0x1

    if-eq p2, v3, :cond_3

    .line 820
    iget-object v3, p0, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    invoke-static {v3, p2}, Lcom/google/android/material/transition/platform/TransitionUtils;->findDescendantOrAncestorById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    .line 832
    :cond_0
    :goto_0
    iget-object v2, p0, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    .line 834
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

    .line 836
    :cond_1
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-nez v3, :cond_5

    invoke-static {v2}, Lcom/google/android/material/transition/platform/TransitionUtils;->getRelativeBounds(Landroid/view/View;)Landroid/graphics/RectF;

    move-result-object v0

    .line 837
    .local v0, "bounds":Landroid/graphics/RectF;
    :goto_1
    iget-object v3, p0, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v4, "materialContainerTransition:bounds"

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 838
    iget-object v3, p0, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v4, "materialContainerTransition:shapeAppearance"

    .line 840
    invoke-static {v2, v0, p3}, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->captureShapeAppearance(Landroid/view/View;Landroid/graphics/RectF;Lcom/google/android/material/shape/ShapeAppearanceModel;)Lcom/google/android/material/shape/ShapeAppearanceModel;

    move-result-object v5

    .line 838
    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 842
    .end local v0    # "bounds":Landroid/graphics/RectF;
    :cond_2
    return-void

    .line 821
    .end local v2    # "view":Landroid/view/View;
    :cond_3
    if-eqz p1, :cond_4

    .line 822
    iput-object p1, p0, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    goto :goto_0

    .line 823
    :cond_4
    iget-object v3, p0, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    sget v4, Lcom/google/android/material/R$id;->mtrl_motion_snapshot_view:I

    invoke-virtual {v3, v4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Landroid/view/View;

    if-eqz v3, :cond_0

    .line 824
    iget-object v3, p0, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    sget v4, Lcom/google/android/material/R$id;->mtrl_motion_snapshot_view:I

    invoke-virtual {v3, v4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 827
    .local v1, "snapshotView":Landroid/view/View;
    iget-object v3, p0, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    sget v4, Lcom/google/android/material/R$id;->mtrl_motion_snapshot_view:I

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 830
    iput-object v1, p0, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    goto :goto_0

    .line 836
    .end local v1    # "snapshotView":Landroid/view/View;
    .restart local v2    # "view":Landroid/view/View;
    :cond_5
    invoke-static {v2}, Lcom/google/android/material/transition/platform/TransitionUtils;->getLocationOnScreen(Landroid/view/View;)Landroid/graphics/RectF;

    move-result-object v0

    goto :goto_1
.end method

.method private static getElevationOrDefault(FLandroid/view/View;)F
    .locals 1
    .param p0, "elevation"    # F
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1022
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
    .line 858
    if-eqz p1, :cond_0

    .line 876
    .end local p1    # "shapeAppearanceModelOverride":Lcom/google/android/material/shape/ShapeAppearanceModel;
    .local v0, "context":Landroid/content/Context;
    .local v1, "transitionShapeAppearanceResId":I
    :goto_0
    return-object p1

    .line 862
    .end local v0    # "context":Landroid/content/Context;
    .end local v1    # "transitionShapeAppearanceResId":I
    .restart local p1    # "shapeAppearanceModelOverride":Lcom/google/android/material/shape/ShapeAppearanceModel;
    :cond_0
    sget v2, Lcom/google/android/material/R$id;->mtrl_motion_snapshot_view:I

    invoke-virtual {p0, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/google/android/material/shape/ShapeAppearanceModel;

    if-eqz v2, :cond_1

    .line 863
    sget v2, Lcom/google/android/material/R$id;->mtrl_motion_snapshot_view:I

    invoke-virtual {p0, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/shape/ShapeAppearanceModel;

    move-object p1, v2

    goto :goto_0

    .line 866
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 867
    .restart local v0    # "context":Landroid/content/Context;
    invoke-static {v0}, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->getTransitionShapeAppearanceResId(Landroid/content/Context;)I

    move-result v1

    .line 868
    .restart local v1    # "transitionShapeAppearanceResId":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    .line 869
    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/google/android/material/shape/ShapeAppearanceModel;->builder(Landroid/content/Context;II)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->build()Lcom/google/android/material/shape/ShapeAppearanceModel;

    move-result-object p1

    goto :goto_0

    .line 872
    :cond_2
    instance-of v2, p0, Lcom/google/android/material/shape/Shapeable;

    if-eqz v2, :cond_3

    .line 873
    check-cast p0, Lcom/google/android/material/shape/Shapeable;

    .end local p0    # "view":Landroid/view/View;
    invoke-interface {p0}, Lcom/google/android/material/shape/Shapeable;->getShapeAppearanceModel()Lcom/google/android/material/shape/ShapeAppearanceModel;

    move-result-object p1

    goto :goto_0

    .line 876
    .restart local p0    # "view":Landroid/view/View;
    :cond_3
    invoke-static {}, Lcom/google/android/material/shape/ShapeAppearanceModel;->builder()Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->build()Lcom/google/android/material/shape/ShapeAppearanceModel;

    move-result-object p1

    goto :goto_0
.end method

.method private getThresholdsOrDefault(ZLcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;)Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;
    .locals 7
    .param p1, "entering"    # Z
    .param p2, "defaultEnterThresholds"    # Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;
    .param p3, "defaultReturnThresholds"    # Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;

    .prologue
    .line 1063
    if-eqz p1, :cond_0

    move-object v6, p2

    .line 1065
    .local v6, "defaultThresholds":Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;
    :goto_0
    new-instance v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;

    iget-object v1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->fadeProgressThresholds:Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;

    .line 1066
    invoke-static {v6}, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;->access$400(Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;)Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/material/transition/platform/TransitionUtils;->defaultIfNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;

    iget-object v2, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->scaleProgressThresholds:Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;

    .line 1067
    invoke-static {v6}, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;->access$500(Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;)Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/material/transition/platform/TransitionUtils;->defaultIfNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;

    iget-object v3, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->scaleMaskProgressThresholds:Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;

    .line 1068
    invoke-static {v6}, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;->access$600(Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;)Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/android/material/transition/platform/TransitionUtils;->defaultIfNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;

    iget-object v4, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->shapeMaskProgressThresholds:Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;

    .line 1069
    invoke-static {v6}, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;->access$700(Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;)Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/android/material/transition/platform/TransitionUtils;->defaultIfNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;-><init>(Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;Lcom/google/android/material/transition/platform/MaterialContainerTransform$1;)V

    .line 1065
    return-object v0

    .end local v6    # "defaultThresholds":Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;
    :cond_0
    move-object v6, p3

    .line 1063
    goto :goto_0
.end method

.method private static getTransitionShapeAppearanceResId(Landroid/content/Context;)I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .annotation build Landroidx/annotation/StyleRes;
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 881
    const/4 v2, 0x1

    new-array v2, v2, [I

    sget v3, Lcom/google/android/material/R$attr;->transitionShapeAppearance:I

    aput v3, v2, v4

    invoke-virtual {p0, v2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 882
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v2, -0x1

    invoke-virtual {v0, v4, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 883
    .local v1, "transitionShapeAppearanceResId":I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 884
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

    .line 1037
    iget v2, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->transitionDirection:I

    packed-switch v2, :pswitch_data_0

    .line 1045
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid transition direction: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->transitionDirection:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1039
    :pswitch_0
    invoke-static {p2}, Lcom/google/android/material/transition/platform/TransitionUtils;->calculateArea(Landroid/graphics/RectF;)F

    move-result v2

    invoke-static {p1}, Lcom/google/android/material/transition/platform/TransitionUtils;->calculateArea(Landroid/graphics/RectF;)F

    move-result v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    .line 1043
    :goto_0
    :pswitch_1
    return v0

    :cond_0
    move v0, v1

    .line 1039
    goto :goto_0

    :pswitch_2
    move v0, v1

    .line 1043
    goto :goto_0

    .line 1037
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
    .line 1012
    sget v0, Lcom/google/android/material/R$attr;->motionEasingStandard:I

    sget-object v1, Lcom/google/android/material/animation/AnimationUtils;->FAST_OUT_SLOW_IN_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-static {p0, p1, v0, v1}, Lcom/google/android/material/transition/platform/TransitionUtils;->maybeApplyThemeInterpolator(Landroid/transition/Transition;Landroid/content/Context;ILandroid/animation/TimeInterpolator;)Z

    .line 1014
    if-eqz p2, :cond_1

    sget v0, Lcom/google/android/material/R$attr;->motionDurationLong1:I

    :goto_0
    invoke-static {p0, p1, v0}, Lcom/google/android/material/transition/platform/TransitionUtils;->maybeApplyThemeDuration(Landroid/transition/Transition;Landroid/content/Context;I)Z

    .line 1016
    iget-boolean v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->pathMotionCustom:Z

    if-nez v0, :cond_0

    .line 1017
    sget v0, Lcom/google/android/material/R$attr;->motionPath:I

    invoke-static {p0, p1, v0}, Lcom/google/android/material/transition/platform/TransitionUtils;->maybeApplyThemePath(Landroid/transition/Transition;Landroid/content/Context;I)Z

    .line 1019
    :cond_0
    return-void

    .line 1014
    :cond_1
    sget v0, Lcom/google/android/material/R$attr;->motionDurationMedium2:I

    goto :goto_0
.end method


# virtual methods
.method public captureEndValues(Landroid/transition/TransitionValues;)V
    .locals 3
    .param p1, "transitionValues"    # Landroid/transition/TransitionValues;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 811
    iget-object v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->endView:Landroid/view/View;

    iget v1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->endViewId:I

    iget-object v2, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->endShapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    invoke-static {p1, v0, v1, v2}, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->captureValues(Landroid/transition/TransitionValues;Landroid/view/View;ILcom/google/android/material/shape/ShapeAppearanceModel;)V

    .line 812
    return-void
.end method

.method public captureStartValues(Landroid/transition/TransitionValues;)V
    .locals 3
    .param p1, "transitionValues"    # Landroid/transition/TransitionValues;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 806
    iget-object v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->startView:Landroid/view/View;

    iget v1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->startViewId:I

    iget-object v2, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->startShapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    invoke-static {p1, v0, v1, v2}, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->captureValues(Landroid/transition/TransitionValues;Landroid/view/View;ILcom/google/android/material/shape/ShapeAppearanceModel;)V

    .line 807
    return-void
.end method

.method public createAnimator(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 33
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "startValues"    # Landroid/transition/TransitionValues;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "endValues"    # Landroid/transition/TransitionValues;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 893
    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 894
    :cond_0
    const/16 v25, 0x0

    .line 1008
    :goto_0
    return-object v25

    .line 897
    :cond_1
    move-object/from16 v0, p2

    iget-object v5, v0, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v9, "materialContainerTransition:bounds"

    invoke-interface {v5, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/RectF;

    .line 898
    .local v7, "startBounds":Landroid/graphics/RectF;
    move-object/from16 v0, p2

    iget-object v5, v0, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v9, "materialContainerTransition:shapeAppearance"

    .line 899
    invoke-interface {v5, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 900
    .local v8, "startShapeAppearanceModel":Lcom/google/android/material/shape/ShapeAppearanceModel;
    if-eqz v7, :cond_2

    if-nez v8, :cond_3

    .line 901
    :cond_2
    sget-object v5, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->TAG:Ljava/lang/String;

    const-string v9, "Skipping due to null start bounds. Ensure start view is laid out and measured."

    invoke-static {v5, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 902
    const/16 v25, 0x0

    goto :goto_0

    .line 905
    :cond_3
    move-object/from16 v0, p3

    iget-object v5, v0, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v9, "materialContainerTransition:bounds"

    invoke-interface {v5, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/graphics/RectF;

    .line 906
    .local v11, "endBounds":Landroid/graphics/RectF;
    move-object/from16 v0, p3

    iget-object v5, v0, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v9, "materialContainerTransition:shapeAppearance"

    .line 907
    invoke-interface {v5, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 908
    .local v12, "endShapeAppearanceModel":Lcom/google/android/material/shape/ShapeAppearanceModel;
    if-eqz v11, :cond_4

    if-nez v12, :cond_5

    .line 909
    :cond_4
    sget-object v5, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->TAG:Ljava/lang/String;

    const-string v9, "Skipping due to null end bounds. Ensure end view is laid out and measured."

    invoke-static {v5, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 910
    const/16 v25, 0x0

    goto :goto_0

    .line 913
    :cond_5
    move-object/from16 v0, p2

    iget-object v6, v0, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    .line 914
    .local v6, "startView":Landroid/view/View;
    move-object/from16 v0, p3

    iget-object v10, v0, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    .line 917
    .local v10, "endView":Landroid/view/View;
    invoke-virtual {v10}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    if-eqz v5, :cond_7

    move-object/from16 v28, v10

    .line 918
    .local v28, "drawingBaseView":Landroid/view/View;
    :goto_1
    move-object/from16 v0, p0

    iget v5, v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->drawingViewId:I

    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getId()I

    move-result v9

    if-ne v5, v9, :cond_8

    .line 919
    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v29

    check-cast v29, Landroid/view/View;

    .line 920
    .local v29, "drawingView":Landroid/view/View;
    move-object/from16 v26, v28

    .line 927
    .local v26, "boundingView":Landroid/view/View;
    :goto_2
    invoke-static/range {v29 .. v29}, Lcom/google/android/material/transition/platform/TransitionUtils;->getLocationOnScreen(Landroid/view/View;)Landroid/graphics/RectF;

    move-result-object v30

    .line 928
    .local v30, "drawingViewBounds":Landroid/graphics/RectF;
    move-object/from16 v0, v30

    iget v5, v0, Landroid/graphics/RectF;->left:F

    neg-float v0, v5

    move/from16 v31, v0

    .line 929
    .local v31, "offsetX":F
    move-object/from16 v0, v30

    iget v5, v0, Landroid/graphics/RectF;->top:F

    neg-float v0, v5

    move/from16 v32, v0

    .line 930
    .local v32, "offsetY":F
    move-object/from16 v0, v29

    move-object/from16 v1, v26

    move/from16 v2, v31

    move/from16 v3, v32

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->calculateDrawableBounds(Landroid/view/View;Landroid/view/View;FF)Landroid/graphics/RectF;

    move-result-object v27

    .line 931
    .local v27, "drawableBounds":Landroid/graphics/RectF;
    move/from16 v0, v31

    move/from16 v1, v32

    invoke-virtual {v7, v0, v1}, Landroid/graphics/RectF;->offset(FF)V

    .line 932
    move/from16 v0, v31

    move/from16 v1, v32

    invoke-virtual {v11, v0, v1}, Landroid/graphics/RectF;->offset(FF)V

    .line 934
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v11}, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->isEntering(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    move-result v18

    .line 936
    .local v18, "entering":Z
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->appliedThemeValues:Z

    if-nez v5, :cond_6

    .line 939
    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v5, v1}, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->maybeApplyThemeValues(Landroid/content/Context;Z)V

    .line 942
    :cond_6
    new-instance v4, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;

    .line 944
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->getPathMotion()Landroid/transition/PathMotion;

    move-result-object v5

    move-object/from16 v0, p0

    iget v9, v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->startElevation:F

    .line 948
    invoke-static {v9, v6}, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->getElevationOrDefault(FLandroid/view/View;)F

    move-result v9

    move-object/from16 v0, p0

    iget v13, v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->endElevation:F

    .line 952
    invoke-static {v13, v10}, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->getElevationOrDefault(FLandroid/view/View;)F

    move-result v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->containerColor:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->startContainerColor:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->endContainerColor:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->scrimColor:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->elevationShadowEnabled:Z

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->fadeMode:I

    move/from16 v20, v0

    .line 959
    move/from16 v0, v20

    move/from16 v1, v18

    invoke-static {v0, v1}, Lcom/google/android/material/transition/platform/FadeModeEvaluators;->get(IZ)Lcom/google/android/material/transition/platform/FadeModeEvaluator;

    move-result-object v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->fitMode:I

    move/from16 v21, v0

    .line 960
    move/from16 v0, v21

    move/from16 v1, v18

    invoke-static {v0, v1, v7, v11}, Lcom/google/android/material/transition/platform/FitModeEvaluators;->get(IZLandroid/graphics/RectF;Landroid/graphics/RectF;)Lcom/google/android/material/transition/platform/FitModeEvaluator;

    move-result-object v21

    .line 961
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->buildThresholdsGroup(Z)Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;

    move-result-object v22

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->drawDebugEnabled:Z

    move/from16 v23, v0

    const/16 v24, 0x0

    invoke-direct/range {v4 .. v24}, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;-><init>(Landroid/transition/PathMotion;Landroid/view/View;Landroid/graphics/RectF;Lcom/google/android/material/shape/ShapeAppearanceModel;FLandroid/view/View;Landroid/graphics/RectF;Lcom/google/android/material/shape/ShapeAppearanceModel;FIIIIZZLcom/google/android/material/transition/platform/FadeModeEvaluator;Lcom/google/android/material/transition/platform/FitModeEvaluator;Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;ZLcom/google/android/material/transition/platform/MaterialContainerTransform$1;)V

    .line 965
    .local v4, "transitionDrawable":Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;
    move-object/from16 v0, v27

    iget v5, v0, Landroid/graphics/RectF;->left:F

    .line 966
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    move-object/from16 v0, v27

    iget v9, v0, Landroid/graphics/RectF;->top:F

    .line 967
    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    move-object/from16 v0, v27

    iget v13, v0, Landroid/graphics/RectF;->right:F

    .line 968
    invoke-static {v13}, Ljava/lang/Math;->round(F)I

    move-result v13

    move-object/from16 v0, v27

    iget v14, v0, Landroid/graphics/RectF;->bottom:F

    .line 969
    invoke-static {v14}, Ljava/lang/Math;->round(F)I

    move-result v14

    .line 965
    invoke-virtual {v4, v5, v9, v13, v14}, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->setBounds(IIII)V

    .line 971
    const/4 v5, 0x2

    new-array v5, v5, [F

    fill-array-data v5, :array_0

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v25

    .line 972
    .local v25, "animator":Landroid/animation/ValueAnimator;
    new-instance v5, Lcom/google/android/material/transition/platform/MaterialContainerTransform$1;

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v4}, Lcom/google/android/material/transition/platform/MaterialContainerTransform$1;-><init>(Lcom/google/android/material/transition/platform/MaterialContainerTransform;Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;)V

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 980
    new-instance v19, Lcom/google/android/material/transition/platform/MaterialContainerTransform$2;

    move-object/from16 v20, p0

    move-object/from16 v21, v29

    move-object/from16 v22, v4

    move-object/from16 v23, v6

    move-object/from16 v24, v10

    invoke-direct/range {v19 .. v24}, Lcom/google/android/material/transition/platform/MaterialContainerTransform$2;-><init>(Lcom/google/android/material/transition/platform/MaterialContainerTransform;Landroid/view/View;Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;Landroid/view/View;Landroid/view/View;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    goto/16 :goto_0

    .end local v4    # "transitionDrawable":Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;
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

    .line 917
    goto/16 :goto_1

    .line 922
    .restart local v28    # "drawingBaseView":Landroid/view/View;
    :cond_8
    move-object/from16 v0, p0

    iget v5, v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->drawingViewId:I

    move-object/from16 v0, v28

    invoke-static {v0, v5}, Lcom/google/android/material/transition/platform/TransitionUtils;->findAncestorById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v29

    .line 923
    .restart local v29    # "drawingView":Landroid/view/View;
    const/16 v26, 0x0

    .restart local v26    # "boundingView":Landroid/view/View;
    goto/16 :goto_2

    .line 971
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
    .line 491
    iget v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->containerColor:I

    return v0
.end method

.method public getDrawingViewId()I
    .locals 1
    .annotation build Landroidx/annotation/IdRes;
    .end annotation

    .prologue
    .line 463
    iget v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->drawingViewId:I

    return v0
.end method

.method public getEndContainerColor()I
    .locals 1
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    .prologue
    .line 550
    iget v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->endContainerColor:I

    return v0
.end method

.method public getEndElevation()F
    .locals 1

    .prologue
    .line 447
    iget v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->endElevation:F

    return v0
.end method

.method public getEndShapeAppearanceModel()Lcom/google/android/material/shape/ShapeAppearanceModel;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 383
    iget-object v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->endShapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    return-object v0
.end method

.method public getEndView()Landroid/view/View;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 340
    iget-object v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->endView:Landroid/view/View;

    return-object v0
.end method

.method public getEndViewId()I
    .locals 1
    .annotation build Landroidx/annotation/IdRes;
    .end annotation

    .prologue
    .line 308
    iget v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->endViewId:I

    return v0
.end method

.method public getFadeMode()I
    .locals 1

    .prologue
    .line 637
    iget v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->fadeMode:I

    return v0
.end method

.method public getFadeProgressThresholds()Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 676
    iget-object v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->fadeProgressThresholds:Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;

    return-object v0
.end method

.method public getFitMode()I
    .locals 1

    .prologue
    .line 657
    iget v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->fitMode:I

    return v0
.end method

.method public getScaleMaskProgressThresholds()Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 718
    iget-object v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->scaleMaskProgressThresholds:Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;

    return-object v0
.end method

.method public getScaleProgressThresholds()Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 697
    iget-object v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->scaleProgressThresholds:Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;

    return-object v0
.end method

.method public getScrimColor()I
    .locals 1
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    .prologue
    .line 591
    iget v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->scrimColor:I

    return v0
.end method

.method public getShapeMaskProgressThresholds()Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 740
    iget-object v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->shapeMaskProgressThresholds:Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;

    return-object v0
.end method

.method public getStartContainerColor()I
    .locals 1
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    .prologue
    .line 523
    iget v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->startContainerColor:I

    return v0
.end method

.method public getStartElevation()F
    .locals 1

    .prologue
    .line 427
    iget v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->startElevation:F

    return v0
.end method

.method public getStartShapeAppearanceModel()Lcom/google/android/material/shape/ShapeAppearanceModel;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 358
    iget-object v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->startShapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    return-object v0
.end method

.method public getStartView()Landroid/view/View;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 325
    iget-object v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->startView:Landroid/view/View;

    return-object v0
.end method

.method public getStartViewId()I
    .locals 1
    .annotation build Landroidx/annotation/IdRes;
    .end annotation

    .prologue
    .line 275
    iget v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->startViewId:I

    return v0
.end method

.method public getTransitionDirection()I
    .locals 1

    .prologue
    .line 619
    iget v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->transitionDirection:I

    return v0
.end method

.method public getTransitionProperties()[Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 801
    sget-object v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->TRANSITION_PROPS:[Ljava/lang/String;

    return-object v0
.end method

.method public isDrawDebugEnabled()Z
    .locals 1

    .prologue
    .line 780
    iget-boolean v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->drawDebugEnabled:Z

    return v0
.end method

.method public isElevationShadowEnabled()Z
    .locals 1

    .prologue
    .line 401
    iget-boolean v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->elevationShadowEnabled:Z

    return v0
.end method

.method public isHoldAtEndEnabled()Z
    .locals 1

    .prologue
    .line 761
    iget-boolean v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->holdAtEndEnabled:Z

    return v0
.end method

.method public setAllContainerColors(I)V
    .locals 0
    .param p1, "containerColor"    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 580
    iput p1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->containerColor:I

    .line 581
    iput p1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->startContainerColor:I

    .line 582
    iput p1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->endContainerColor:I

    .line 583
    return-void
.end method

.method public setContainerColor(I)V
    .locals 0
    .param p1, "containerColor"    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 513
    iput p1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->containerColor:I

    .line 514
    return-void
.end method

.method public setDrawDebugEnabled(Z)V
    .locals 0
    .param p1, "drawDebugEnabled"    # Z

    .prologue
    .line 789
    iput-boolean p1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->drawDebugEnabled:Z

    .line 790
    return-void
.end method

.method public setDrawingViewId(I)V
    .locals 0
    .param p1, "drawingViewId"    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param

    .prologue
    .line 481
    iput p1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->drawingViewId:I

    .line 482
    return-void
.end method

.method public setElevationShadowEnabled(Z)V
    .locals 0
    .param p1, "elevationShadowEnabled"    # Z

    .prologue
    .line 417
    iput-boolean p1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->elevationShadowEnabled:Z

    .line 418
    return-void
.end method

.method public setEndContainerColor(I)V
    .locals 0
    .param p1, "containerColor"    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 565
    iput p1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->endContainerColor:I

    .line 566
    return-void
.end method

.method public setEndElevation(F)V
    .locals 0
    .param p1, "endElevation"    # F

    .prologue
    .line 457
    iput p1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->endElevation:F

    .line 458
    return-void
.end method

.method public setEndShapeAppearanceModel(Lcom/google/android/material/shape/ShapeAppearanceModel;)V
    .locals 0
    .param p1, "endShapeAppearanceModel"    # Lcom/google/android/material/shape/ShapeAppearanceModel;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 393
    iput-object p1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->endShapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 394
    return-void
.end method

.method public setEndView(Landroid/view/View;)V
    .locals 0
    .param p1, "endView"    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 349
    iput-object p1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->endView:Landroid/view/View;

    .line 350
    return-void
.end method

.method public setEndViewId(I)V
    .locals 0
    .param p1, "endViewId"    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param

    .prologue
    .line 319
    iput p1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->endViewId:I

    .line 320
    return-void
.end method

.method public setFadeMode(I)V
    .locals 0
    .param p1, "fadeMode"    # I

    .prologue
    .line 651
    iput p1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->fadeMode:I

    .line 652
    return-void
.end method

.method public setFadeProgressThresholds(Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;)V
    .locals 0
    .param p1, "fadeProgressThresholds"    # Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 687
    iput-object p1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->fadeProgressThresholds:Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;

    .line 688
    return-void
.end method

.method public setFitMode(I)V
    .locals 0
    .param p1, "fitMode"    # I

    .prologue
    .line 666
    iput p1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->fitMode:I

    .line 667
    return-void
.end method

.method public setHoldAtEndEnabled(Z)V
    .locals 0
    .param p1, "holdAtEndEnabled"    # Z

    .prologue
    .line 771
    iput-boolean p1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->holdAtEndEnabled:Z

    .line 772
    return-void
.end method

.method public setPathMotion(Landroid/transition/PathMotion;)V
    .locals 1
    .param p1, "pathMotion"    # Landroid/transition/PathMotion;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 794
    invoke-super {p0, p1}, Landroid/transition/Transition;->setPathMotion(Landroid/transition/PathMotion;)V

    .line 795
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->pathMotionCustom:Z

    .line 796
    return-void
.end method

.method public setScaleMaskProgressThresholds(Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;)V
    .locals 0
    .param p1, "scaleMaskProgressThresholds"    # Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 730
    iput-object p1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->scaleMaskProgressThresholds:Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;

    .line 731
    return-void
.end method

.method public setScaleProgressThresholds(Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;)V
    .locals 0
    .param p1, "scaleProgressThresholds"    # Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 708
    iput-object p1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->scaleProgressThresholds:Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;

    .line 709
    return-void
.end method

.method public setScrimColor(I)V
    .locals 0
    .param p1, "scrimColor"    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 607
    iput p1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->scrimColor:I

    .line 608
    return-void
.end method

.method public setShapeMaskProgressThresholds(Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;)V
    .locals 0
    .param p1, "shapeMaskProgressThresholds"    # Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 752
    iput-object p1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->shapeMaskProgressThresholds:Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;

    .line 753
    return-void
.end method

.method public setStartContainerColor(I)V
    .locals 0
    .param p1, "containerColor"    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 540
    iput p1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->startContainerColor:I

    .line 541
    return-void
.end method

.method public setStartElevation(F)V
    .locals 0
    .param p1, "startElevation"    # F

    .prologue
    .line 437
    iput p1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->startElevation:F

    .line 438
    return-void
.end method

.method public setStartShapeAppearanceModel(Lcom/google/android/material/shape/ShapeAppearanceModel;)V
    .locals 0
    .param p1, "startShapeAppearanceModel"    # Lcom/google/android/material/shape/ShapeAppearanceModel;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 374
    iput-object p1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->startShapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 375
    return-void
.end method

.method public setStartView(Landroid/view/View;)V
    .locals 0
    .param p1, "startView"    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 334
    iput-object p1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->startView:Landroid/view/View;

    .line 335
    return-void
.end method

.method public setStartViewId(I)V
    .locals 0
    .param p1, "startViewId"    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param

    .prologue
    .line 293
    iput p1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->startViewId:I

    .line 294
    return-void
.end method

.method public setTransitionDirection(I)V
    .locals 0
    .param p1, "transitionDirection"    # I

    .prologue
    .line 631
    iput p1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->transitionDirection:I

    .line 632
    return-void
.end method

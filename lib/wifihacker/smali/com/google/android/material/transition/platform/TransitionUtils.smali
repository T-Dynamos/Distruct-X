.class Lcom/google/android/material/transition/platform/TransitionUtils;
.super Ljava/lang/Object;
.source "TransitionUtils.java"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x15
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/transition/platform/TransitionUtils$CanvasOperation;,
        Lcom/google/android/material/transition/platform/TransitionUtils$CornerSizeBinaryOperator;
    }
.end annotation


# static fields
.field private static final EASING_TYPE_CUBIC_BEZIER:Ljava/lang/String; = "cubic-bezier"

.field private static final EASING_TYPE_FORMAT_END:Ljava/lang/String; = ")"

.field private static final EASING_TYPE_FORMAT_START:Ljava/lang/String; = "("

.field private static final EASING_TYPE_PATH:Ljava/lang/String; = "path"

.field static final NO_ATTR_RES_ID:I = 0x0
    .annotation build Landroidx/annotation/AttrRes;
    .end annotation
.end field

.field static final NO_DURATION:I = -0x1

.field private static final PATH_TYPE_ARC:I = 0x1

.field private static final PATH_TYPE_LINEAR:I

.field private static final transformAlphaRectF:Landroid/graphics/RectF;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 393
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    sput-object v0, Lcom/google/android/material/transition/platform/TransitionUtils;->transformAlphaRectF:Landroid/graphics/RectF;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static calculateArea(Landroid/graphics/RectF;)F
    .locals 2
    .param p0, "bounds"    # Landroid/graphics/RectF;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 390
    invoke-virtual {p0}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/RectF;->height()F

    move-result v1

    mul-float/2addr v0, v1

    return v0
.end method

.method static convertToRelativeCornerSizes(Lcom/google/android/material/shape/ShapeAppearanceModel;Landroid/graphics/RectF;)Lcom/google/android/material/shape/ShapeAppearanceModel;
    .locals 1
    .param p0, "shapeAppearanceModel"    # Lcom/google/android/material/shape/ShapeAppearanceModel;
    .param p1, "bounds"    # Landroid/graphics/RectF;

    .prologue
    .line 193
    new-instance v0, Lcom/google/android/material/transition/platform/TransitionUtils$1;

    invoke-direct {v0, p1}, Lcom/google/android/material/transition/platform/TransitionUtils$1;-><init>(Landroid/graphics/RectF;)V

    invoke-virtual {p0, v0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->withTransformedCornerSizes(Lcom/google/android/material/shape/ShapeAppearanceModel$CornerSizeUnaryOperator;)Lcom/google/android/material/shape/ShapeAppearanceModel;

    move-result-object v0

    return-object v0
.end method

.method static createColorShader(I)Landroid/graphics/Shader;
    .locals 8
    .param p0, "color"    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x0

    .line 339
    new-instance v0, Landroid/graphics/LinearGradient;

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move v2, v1

    move v3, v1

    move v4, v1

    move v5, p0

    move v6, p0

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    return-object v0
.end method

.method static defaultIfNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;)TT;"
        }
    .end annotation

    .prologue
    .line 386
    .local p0, "value":Ljava/lang/Object;, "TT;"
    .local p1, "defaultValue":Ljava/lang/Object;, "TT;"
    if-eqz p0, :cond_0

    .end local p0    # "value":Ljava/lang/Object;, "TT;"
    :goto_0
    return-object p0

    .restart local p0    # "value":Ljava/lang/Object;, "TT;"
    :cond_0
    move-object p0, p1

    goto :goto_0
.end method

.method static findAncestorById(Landroid/view/View;I)Landroid/view/View;
    .locals 5
    .param p0, "view"    # Landroid/view/View;
    .param p1, "ancestorId"    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param

    .prologue
    .line 351
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v1

    .line 352
    .local v1, "resourceName":Ljava/lang/String;
    :goto_0
    if-eqz p0, :cond_1

    .line 353
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 354
    return-object p0

    .line 356
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 357
    .local v0, "parent":Landroid/view/ViewParent;
    instance-of v2, v0, Landroid/view/View;

    if-eqz v2, :cond_1

    move-object p0, v0

    .line 358
    check-cast p0, Landroid/view/View;

    .line 362
    goto :goto_0

    .line 363
    .end local v0    # "parent":Landroid/view/ViewParent;
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is not a valid ancestor"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method static findDescendantOrAncestorById(Landroid/view/View;I)Landroid/view/View;
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .param p1, "viewId"    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param

    .prologue
    .line 343
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 344
    .local v0, "descendant":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 347
    .end local v0    # "descendant":Landroid/view/View;
    :goto_0
    return-object v0

    .restart local v0    # "descendant":Landroid/view/View;
    :cond_0
    invoke-static {p0, p1}, Lcom/google/android/material/transition/platform/TransitionUtils;->findAncestorById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method private static getControlPoint([Ljava/lang/String;I)F
    .locals 4
    .param p0, "controlPoints"    # [Ljava/lang/String;
    .param p1, "index"    # I

    .prologue
    .line 157
    aget-object v1, p0, p1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    .line 158
    .local v0, "controlPoint":F
    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-ltz v1, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, v0, v1

    if-lez v1, :cond_1

    .line 159
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Motion easing control point value must be between 0 and 1; instead got: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 163
    :cond_1
    return v0
.end method

.method private static getEasingContent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "easingString"    # Ljava/lang/String;
    .param p1, "easingType"    # Ljava/lang/String;

    .prologue
    .line 151
    .line 152
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const-string v1, "("

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    .line 153
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, ")"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v1, v2

    .line 151
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static getLocationOnScreen(Landroid/view/View;)Landroid/graphics/RectF;
    .locals 10
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 375
    const/4 v5, 0x2

    new-array v2, v5, [I

    .line 376
    .local v2, "location":[I
    invoke-virtual {p0, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 377
    const/4 v5, 0x0

    aget v1, v2, v5

    .line 378
    .local v1, "left":I
    const/4 v5, 0x1

    aget v4, v2, v5

    .line 379
    .local v4, "top":I
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v5

    add-int v3, v1, v5

    .line 380
    .local v3, "right":I
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v5

    add-int v0, v4, v5

    .line 381
    .local v0, "bottom":I
    new-instance v5, Landroid/graphics/RectF;

    int-to-float v6, v1

    int-to-float v7, v4

    int-to-float v8, v3

    int-to-float v9, v0

    invoke-direct {v5, v6, v7, v8, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v5
.end method

.method static getRelativeBounds(Landroid/view/View;)Landroid/graphics/RectF;
    .locals 5
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 367
    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v4

    int-to-float v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v0
.end method

.method static getRelativeBoundsRect(Landroid/view/View;)Landroid/graphics/Rect;
    .locals 5
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 371
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method private static isEasingType(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p0, "easingString"    # Ljava/lang/String;
    .param p1, "easingType"    # Ljava/lang/String;

    .prologue
    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ")"

    .line 147
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 146
    :goto_0
    return v0

    .line 147
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isShapeAppearanceSignificant(Lcom/google/android/material/shape/ShapeAppearanceModel;Landroid/graphics/RectF;)Z
    .locals 2
    .param p0, "shapeAppearanceModel"    # Lcom/google/android/material/shape/ShapeAppearanceModel;
    .param p1, "bounds"    # Landroid/graphics/RectF;

    .prologue
    const/4 v1, 0x0

    .line 242
    invoke-virtual {p0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getTopLeftCornerSize()Lcom/google/android/material/shape/CornerSize;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/material/shape/CornerSize;->getCornerSize(Landroid/graphics/RectF;)F

    move-result v0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 243
    invoke-virtual {p0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getTopRightCornerSize()Lcom/google/android/material/shape/CornerSize;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/material/shape/CornerSize;->getCornerSize(Landroid/graphics/RectF;)F

    move-result v0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 244
    invoke-virtual {p0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getBottomRightCornerSize()Lcom/google/android/material/shape/CornerSize;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/material/shape/CornerSize;->getCornerSize(Landroid/graphics/RectF;)F

    move-result v0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 245
    invoke-virtual {p0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getBottomLeftCornerSize()Lcom/google/android/material/shape/CornerSize;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/material/shape/CornerSize;->getCornerSize(Landroid/graphics/RectF;)F

    move-result v0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 242
    :goto_0
    return v0

    .line 245
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static lerp(FFF)F
    .locals 1
    .param p0, "startValue"    # F
    .param p1, "endValue"    # F
    .param p2, "fraction"    # F

    .prologue
    .line 254
    sub-float v0, p1, p0

    mul-float/2addr v0, p2

    add-float/2addr v0, p0

    return v0
.end method

.method static lerp(FFFFF)F
    .locals 6
    .param p0, "startValue"    # F
    .param p1, "endValue"    # F
    .param p2, "startFraction"    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param
    .param p3, "endFraction"    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param
    .param p4, "fraction"    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    .prologue
    .line 264
    const/4 v5, 0x0

    move v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Lcom/google/android/material/transition/platform/TransitionUtils;->lerp(FFFFFZ)F

    move-result v0

    return v0
.end method

.method static lerp(FFFFFZ)F
    .locals 2
    .param p0, "startValue"    # F
    .param p1, "endValue"    # F
    .param p2, "startFraction"    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param
    .param p3, "endFraction"    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param
    .param p4, "fraction"    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
        .end annotation
    .end param
    .param p5, "allowOvershoot"    # Z

    .prologue
    .line 275
    if-eqz p5, :cond_2

    const/4 v0, 0x0

    cmpg-float v0, p4, v0

    if-ltz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p4, v0

    if-lez v0, :cond_2

    .line 276
    :cond_0
    invoke-static {p0, p1, p4}, Lcom/google/android/material/transition/platform/TransitionUtils;->lerp(FFF)F

    move-result p0

    .line 285
    .end local p0    # "startValue":F
    :cond_1
    :goto_0
    return p0

    .line 278
    .restart local p0    # "startValue":F
    :cond_2
    cmpg-float v0, p4, p2

    if-ltz v0, :cond_1

    .line 281
    cmpl-float v0, p4, p3

    if-lez v0, :cond_3

    move p0, p1

    .line 282
    goto :goto_0

    .line 285
    :cond_3
    sub-float v0, p4, p2

    sub-float v1, p3, p2

    div-float/2addr v0, v1

    invoke-static {p0, p1, v0}, Lcom/google/android/material/transition/platform/TransitionUtils;->lerp(FFF)F

    move-result p0

    goto :goto_0
.end method

.method static lerp(IIFFF)I
    .locals 4
    .param p0, "startValue"    # I
    .param p1, "endValue"    # I
    .param p2, "startFraction"    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param
    .param p3, "endFraction"    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param
    .param p4, "fraction"    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    .prologue
    .line 294
    cmpg-float v0, p4, p2

    if-gez v0, :cond_0

    .line 300
    .end local p0    # "startValue":I
    :goto_0
    return p0

    .line 297
    .restart local p0    # "startValue":I
    :cond_0
    cmpl-float v0, p4, p3

    if-lez v0, :cond_1

    move p0, p1

    .line 298
    goto :goto_0

    .line 300
    :cond_1
    int-to-float v0, p0

    int-to-float v1, p1

    sub-float v2, p4, p2

    sub-float v3, p3, p2

    div-float/2addr v2, v3

    .line 301
    invoke-static {v0, v1, v2}, Lcom/google/android/material/transition/platform/TransitionUtils;->lerp(FFF)F

    move-result v0

    float-to-int p0, v0

    .line 300
    goto :goto_0
.end method

.method static lerp(Lcom/google/android/material/shape/ShapeAppearanceModel;Lcom/google/android/material/shape/ShapeAppearanceModel;Landroid/graphics/RectF;Landroid/graphics/RectF;FFF)Lcom/google/android/material/shape/ShapeAppearanceModel;
    .locals 6
    .param p0, "startValue"    # Lcom/google/android/material/shape/ShapeAppearanceModel;
    .param p1, "endValue"    # Lcom/google/android/material/shape/ShapeAppearanceModel;
    .param p2, "startBounds"    # Landroid/graphics/RectF;
    .param p3, "endBounds"    # Landroid/graphics/RectF;
    .param p4, "startFraction"    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param
    .param p5, "endFraction"    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param
    .param p6, "fraction"    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    .prologue
    .line 312
    cmpg-float v0, p6, p4

    if-gez v0, :cond_0

    .line 319
    .end local p0    # "startValue":Lcom/google/android/material/shape/ShapeAppearanceModel;
    :goto_0
    return-object p0

    .line 315
    .restart local p0    # "startValue":Lcom/google/android/material/shape/ShapeAppearanceModel;
    :cond_0
    cmpl-float v0, p6, p5

    if-lez v0, :cond_1

    move-object p0, p1

    .line 316
    goto :goto_0

    .line 319
    :cond_1
    new-instance v0, Lcom/google/android/material/transition/platform/TransitionUtils$2;

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/google/android/material/transition/platform/TransitionUtils$2;-><init>(Landroid/graphics/RectF;Landroid/graphics/RectF;FFF)V

    invoke-static {p0, p1, p2, v0}, Lcom/google/android/material/transition/platform/TransitionUtils;->transformCornerSizes(Lcom/google/android/material/shape/ShapeAppearanceModel;Lcom/google/android/material/shape/ShapeAppearanceModel;Landroid/graphics/RectF;Lcom/google/android/material/transition/platform/TransitionUtils$CornerSizeBinaryOperator;)Lcom/google/android/material/shape/ShapeAppearanceModel;

    move-result-object p0

    goto :goto_0
.end method

.method static maybeAddTransition(Landroid/transition/TransitionSet;Landroid/transition/Transition;)V
    .locals 0
    .param p0, "transitionSet"    # Landroid/transition/TransitionSet;
    .param p1, "transition"    # Landroid/transition/Transition;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 436
    if-eqz p1, :cond_0

    .line 437
    invoke-virtual {p0, p1}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    .line 439
    :cond_0
    return-void
.end method

.method static maybeApplyThemeDuration(Landroid/transition/Transition;Landroid/content/Context;I)Z
    .locals 7
    .param p0, "transition"    # Landroid/transition/Transition;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrResId"    # I
        .annotation build Landroidx/annotation/AttrRes;
        .end annotation
    .end param

    .prologue
    const/4 v6, -0x1

    .line 88
    if-eqz p2, :cond_0

    invoke-virtual {p0}, Landroid/transition/Transition;->getDuration()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 89
    invoke-static {p1, p2, v6}, Lcom/google/android/material/resources/MaterialAttributes;->resolveInteger(Landroid/content/Context;II)I

    move-result v0

    .line 90
    .local v0, "duration":I
    if-eq v0, v6, :cond_0

    .line 91
    int-to-long v2, v0

    invoke-virtual {p0, v2, v3}, Landroid/transition/Transition;->setDuration(J)Landroid/transition/Transition;

    .line 92
    const/4 v1, 0x1

    .line 95
    .end local v0    # "duration":I
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static maybeApplyThemeInterpolator(Landroid/transition/Transition;Landroid/content/Context;ILandroid/animation/TimeInterpolator;)Z
    .locals 2
    .param p0, "transition"    # Landroid/transition/Transition;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrResId"    # I
        .annotation build Landroidx/annotation/AttrRes;
        .end annotation
    .end param
    .param p3, "defaultInterpolator"    # Landroid/animation/TimeInterpolator;

    .prologue
    .line 77
    if-eqz p2, :cond_0

    invoke-virtual {p0}, Landroid/transition/Transition;->getInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object v1

    if-nez v1, :cond_0

    .line 79
    invoke-static {p1, p2, p3}, Lcom/google/android/material/transition/platform/TransitionUtils;->resolveThemeInterpolator(Landroid/content/Context;ILandroid/animation/TimeInterpolator;)Landroid/animation/TimeInterpolator;

    move-result-object v0

    .line 80
    .local v0, "interpolator":Landroid/animation/TimeInterpolator;
    invoke-virtual {p0, v0}, Landroid/transition/Transition;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/transition/Transition;

    .line 81
    const/4 v1, 0x1

    .line 83
    .end local v0    # "interpolator":Landroid/animation/TimeInterpolator;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static maybeApplyThemePath(Landroid/transition/Transition;Landroid/content/Context;I)Z
    .locals 2
    .param p0, "transition"    # Landroid/transition/Transition;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrResId"    # I
        .annotation build Landroidx/annotation/AttrRes;
        .end annotation
    .end param

    .prologue
    .line 100
    if-eqz p2, :cond_0

    .line 101
    invoke-static {p1, p2}, Lcom/google/android/material/transition/platform/TransitionUtils;->resolveThemePath(Landroid/content/Context;I)Landroid/transition/PathMotion;

    move-result-object v0

    .line 102
    .local v0, "pathMotion":Landroid/transition/PathMotion;
    if-eqz v0, :cond_0

    .line 103
    invoke-virtual {p0, v0}, Landroid/transition/Transition;->setPathMotion(Landroid/transition/PathMotion;)V

    .line 104
    const/4 v1, 0x1

    .line 107
    .end local v0    # "pathMotion":Landroid/transition/PathMotion;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static maybeRemoveTransition(Landroid/transition/TransitionSet;Landroid/transition/Transition;)V
    .locals 0
    .param p0, "transitionSet"    # Landroid/transition/TransitionSet;
    .param p1, "transition"    # Landroid/transition/Transition;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 442
    if-eqz p1, :cond_0

    .line 443
    invoke-virtual {p0, p1}, Landroid/transition/TransitionSet;->removeTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    .line 445
    :cond_0
    return-void
.end method

.method static resolveThemeInterpolator(Landroid/content/Context;ILandroid/animation/TimeInterpolator;)Landroid/animation/TimeInterpolator;
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "attrResId"    # I
        .annotation build Landroidx/annotation/AttrRes;
        .end annotation
    .end param
    .param p2, "defaultInterpolator"    # Landroid/animation/TimeInterpolator;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x1

    .line 112
    new-instance v7, Landroid/util/TypedValue;

    invoke-direct {v7}, Landroid/util/TypedValue;-><init>()V

    .line 113
    .local v7, "easingValue":Landroid/util/TypedValue;
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v9

    invoke-virtual {v9, p1, v7, v11}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 114
    iget v9, v7, Landroid/util/TypedValue;->type:I

    if-eq v9, v12, :cond_0

    .line 115
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v10, "Motion easing theme attribute must be a string"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 118
    :cond_0
    iget-object v9, v7, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 120
    .local v6, "easingString":Ljava/lang/String;
    const-string v9, "cubic-bezier"

    invoke-static {v6, v9}, Lcom/google/android/material/transition/platform/TransitionUtils;->isEasingType(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 121
    const-string v9, "cubic-bezier"

    invoke-static {v6, v9}, Lcom/google/android/material/transition/platform/TransitionUtils;->getEasingContent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 122
    .local v1, "controlPointsString":Ljava/lang/String;
    const-string v9, ","

    invoke-virtual {v1, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 123
    .local v0, "controlPoints":[Ljava/lang/String;
    array-length v9, v0

    const/4 v10, 0x4

    if-eq v9, v10, :cond_1

    .line 124
    new-instance v9, Ljava/lang/IllegalArgumentException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Motion easing theme attribute must have 4 control points if using bezier curve format; instead got: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    array-length v11, v0

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 130
    :cond_1
    const/4 v9, 0x0

    invoke-static {v0, v9}, Lcom/google/android/material/transition/platform/TransitionUtils;->getControlPoint([Ljava/lang/String;I)F

    move-result v2

    .line 131
    .local v2, "controlX1":F
    invoke-static {v0, v11}, Lcom/google/android/material/transition/platform/TransitionUtils;->getControlPoint([Ljava/lang/String;I)F

    move-result v4

    .line 132
    .local v4, "controlY1":F
    const/4 v9, 0x2

    invoke-static {v0, v9}, Lcom/google/android/material/transition/platform/TransitionUtils;->getControlPoint([Ljava/lang/String;I)F

    move-result v3

    .line 133
    .local v3, "controlX2":F
    invoke-static {v0, v12}, Lcom/google/android/material/transition/platform/TransitionUtils;->getControlPoint([Ljava/lang/String;I)F

    move-result v5

    .line 134
    .local v5, "controlY2":F
    invoke-static {v2, v4, v3, v5}, Landroidx/core/view/animation/PathInterpolatorCompat;->create(FFFF)Landroid/view/animation/Interpolator;

    move-result-object p2

    .line 142
    .end local v0    # "controlPoints":[Ljava/lang/String;
    .end local v1    # "controlPointsString":Ljava/lang/String;
    .end local v2    # "controlX1":F
    .end local v3    # "controlX2":F
    .end local v4    # "controlY1":F
    .end local v5    # "controlY2":F
    .end local v6    # "easingString":Ljava/lang/String;
    .end local p2    # "defaultInterpolator":Landroid/animation/TimeInterpolator;
    :cond_2
    :goto_0
    return-object p2

    .line 135
    .restart local v6    # "easingString":Ljava/lang/String;
    .restart local p2    # "defaultInterpolator":Landroid/animation/TimeInterpolator;
    :cond_3
    const-string v9, "path"

    invoke-static {v6, v9}, Lcom/google/android/material/transition/platform/TransitionUtils;->isEasingType(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 136
    const-string v9, "path"

    invoke-static {v6, v9}, Lcom/google/android/material/transition/platform/TransitionUtils;->getEasingContent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 137
    .local v8, "path":Ljava/lang/String;
    invoke-static {v8}, Landroidx/core/graphics/PathParser;->createPathFromPathData(Ljava/lang/String;)Landroid/graphics/Path;

    move-result-object v9

    invoke-static {v9}, Landroidx/core/view/animation/PathInterpolatorCompat;->create(Landroid/graphics/Path;)Landroid/view/animation/Interpolator;

    move-result-object p2

    goto :goto_0

    .line 139
    .end local v8    # "path":Ljava/lang/String;
    :cond_4
    new-instance v9, Ljava/lang/IllegalArgumentException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Invalid motion easing type: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9
.end method

.method static resolveThemePath(Landroid/content/Context;I)Landroid/transition/PathMotion;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "attrResId"    # I
        .annotation build Landroidx/annotation/AttrRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x1

    .line 168
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 169
    .local v2, "pathValue":Landroid/util/TypedValue;
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    invoke-virtual {v4, p1, v2, v6}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 170
    iget v4, v2, Landroid/util/TypedValue;->type:I

    const/16 v5, 0x10

    if-ne v4, v5, :cond_3

    .line 171
    iget v0, v2, Landroid/util/TypedValue;->data:I

    .line 172
    .local v0, "pathInt":I
    if-nez v0, :cond_1

    .line 188
    .end local v0    # "pathInt":I
    :cond_0
    :goto_0
    return-object v3

    .line 175
    .restart local v0    # "pathInt":I
    :cond_1
    if-ne v0, v6, :cond_2

    .line 176
    new-instance v3, Lcom/google/android/material/transition/platform/MaterialArcMotion;

    invoke-direct {v3}, Lcom/google/android/material/transition/platform/MaterialArcMotion;-><init>()V

    goto :goto_0

    .line 178
    :cond_2
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid motion path type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 180
    .end local v0    # "pathInt":I
    :cond_3
    iget v3, v2, Landroid/util/TypedValue;->type:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_4

    .line 181
    iget-object v3, v2, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 182
    .local v1, "pathString":Ljava/lang/String;
    new-instance v3, Landroid/transition/PatternPathMotion;

    invoke-static {v1}, Landroidx/core/graphics/PathParser;->createPathFromPathData(Ljava/lang/String;)Landroid/graphics/Path;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/transition/PatternPathMotion;-><init>(Landroid/graphics/Path;)V

    goto :goto_0

    .line 184
    .end local v1    # "pathString":Ljava/lang/String;
    :cond_4
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Motion path theme attribute must either be an enum value or path data string"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private static saveLayerAlphaCompat(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)I
    .locals 7
    .param p0, "canvas"    # Landroid/graphics/Canvas;
    .param p1, "bounds"    # Landroid/graphics/Rect;
    .param p2, "alpha"    # I

    .prologue
    .line 396
    sget-object v0, Lcom/google/android/material/transition/platform/TransitionUtils;->transformAlphaRectF:Landroid/graphics/RectF;

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 397
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 398
    sget-object v0, Lcom/google/android/material/transition/platform/TransitionUtils;->transformAlphaRectF:Landroid/graphics/RectF;

    invoke-virtual {p0, v0, p2}, Landroid/graphics/Canvas;->saveLayerAlpha(Landroid/graphics/RectF;I)I

    move-result v0

    .line 400
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/google/android/material/transition/platform/TransitionUtils;->transformAlphaRectF:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    sget-object v0, Lcom/google/android/material/transition/platform/TransitionUtils;->transformAlphaRectF:Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/RectF;->top:F

    sget-object v0, Lcom/google/android/material/transition/platform/TransitionUtils;->transformAlphaRectF:Landroid/graphics/RectF;

    iget v3, v0, Landroid/graphics/RectF;->right:F

    sget-object v0, Lcom/google/android/material/transition/platform/TransitionUtils;->transformAlphaRectF:Landroid/graphics/RectF;

    iget v4, v0, Landroid/graphics/RectF;->bottom:F

    const/16 v6, 0x1f

    move-object v0, p0

    move v5, p2

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    move-result v0

    goto :goto_0
.end method

.method static transform(Landroid/graphics/Canvas;Landroid/graphics/Rect;FFFILcom/google/android/material/transition/platform/TransitionUtils$CanvasOperation;)V
    .locals 2
    .param p0, "canvas"    # Landroid/graphics/Canvas;
    .param p1, "bounds"    # Landroid/graphics/Rect;
    .param p2, "dx"    # F
    .param p3, "dy"    # F
    .param p4, "scale"    # F
    .param p5, "alpha"    # I
    .param p6, "op"    # Lcom/google/android/material/transition/platform/TransitionUtils$CanvasOperation;

    .prologue
    .line 417
    if-gtz p5, :cond_0

    .line 429
    :goto_0
    return-void

    .line 421
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 422
    .local v0, "checkpoint":I
    invoke-virtual {p0, p2, p3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 423
    invoke-virtual {p0, p4, p4}, Landroid/graphics/Canvas;->scale(FF)V

    .line 424
    const/16 v1, 0xff

    if-ge p5, v1, :cond_1

    .line 425
    invoke-static {p0, p1, p5}, Lcom/google/android/material/transition/platform/TransitionUtils;->saveLayerAlphaCompat(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)I

    .line 427
    :cond_1
    invoke-interface {p6, p0}, Lcom/google/android/material/transition/platform/TransitionUtils$CanvasOperation;->run(Landroid/graphics/Canvas;)V

    .line 428
    invoke-virtual {p0, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_0
.end method

.method static transformCornerSizes(Lcom/google/android/material/shape/ShapeAppearanceModel;Lcom/google/android/material/shape/ShapeAppearanceModel;Landroid/graphics/RectF;Lcom/google/android/material/transition/platform/TransitionUtils$CornerSizeBinaryOperator;)Lcom/google/android/material/shape/ShapeAppearanceModel;
    .locals 4
    .param p0, "shapeAppearanceModel1"    # Lcom/google/android/material/shape/ShapeAppearanceModel;
    .param p1, "shapeAppearanceModel2"    # Lcom/google/android/material/shape/ShapeAppearanceModel;
    .param p2, "shapeAppearanceModel1Bounds"    # Landroid/graphics/RectF;
    .param p3, "op"    # Lcom/google/android/material/transition/platform/TransitionUtils$CornerSizeBinaryOperator;

    .prologue
    .line 215
    .line 216
    invoke-static {p0, p2}, Lcom/google/android/material/transition/platform/TransitionUtils;->isShapeAppearanceSignificant(Lcom/google/android/material/shape/ShapeAppearanceModel;Landroid/graphics/RectF;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v0, p0

    .line 220
    .local v0, "shapeAppearanceModel":Lcom/google/android/material/shape/ShapeAppearanceModel;
    :goto_0
    invoke-virtual {v0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->toBuilder()Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object v1

    .line 223
    invoke-virtual {p0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getTopLeftCornerSize()Lcom/google/android/material/shape/CornerSize;

    move-result-object v2

    .line 224
    invoke-virtual {p1}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getTopLeftCornerSize()Lcom/google/android/material/shape/CornerSize;

    move-result-object v3

    .line 222
    invoke-interface {p3, v2, v3}, Lcom/google/android/material/transition/platform/TransitionUtils$CornerSizeBinaryOperator;->apply(Lcom/google/android/material/shape/CornerSize;Lcom/google/android/material/shape/CornerSize;)Lcom/google/android/material/shape/CornerSize;

    move-result-object v2

    .line 221
    invoke-virtual {v1, v2}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->setTopLeftCornerSize(Lcom/google/android/material/shape/CornerSize;)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object v1

    .line 227
    invoke-virtual {p0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getTopRightCornerSize()Lcom/google/android/material/shape/CornerSize;

    move-result-object v2

    .line 228
    invoke-virtual {p1}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getTopRightCornerSize()Lcom/google/android/material/shape/CornerSize;

    move-result-object v3

    .line 226
    invoke-interface {p3, v2, v3}, Lcom/google/android/material/transition/platform/TransitionUtils$CornerSizeBinaryOperator;->apply(Lcom/google/android/material/shape/CornerSize;Lcom/google/android/material/shape/CornerSize;)Lcom/google/android/material/shape/CornerSize;

    move-result-object v2

    .line 225
    invoke-virtual {v1, v2}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->setTopRightCornerSize(Lcom/google/android/material/shape/CornerSize;)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object v1

    .line 231
    invoke-virtual {p0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getBottomLeftCornerSize()Lcom/google/android/material/shape/CornerSize;

    move-result-object v2

    .line 232
    invoke-virtual {p1}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getBottomLeftCornerSize()Lcom/google/android/material/shape/CornerSize;

    move-result-object v3

    .line 230
    invoke-interface {p3, v2, v3}, Lcom/google/android/material/transition/platform/TransitionUtils$CornerSizeBinaryOperator;->apply(Lcom/google/android/material/shape/CornerSize;Lcom/google/android/material/shape/CornerSize;)Lcom/google/android/material/shape/CornerSize;

    move-result-object v2

    .line 229
    invoke-virtual {v1, v2}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->setBottomLeftCornerSize(Lcom/google/android/material/shape/CornerSize;)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object v1

    .line 235
    invoke-virtual {p0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getBottomRightCornerSize()Lcom/google/android/material/shape/CornerSize;

    move-result-object v2

    .line 236
    invoke-virtual {p1}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getBottomRightCornerSize()Lcom/google/android/material/shape/CornerSize;

    move-result-object v3

    .line 234
    invoke-interface {p3, v2, v3}, Lcom/google/android/material/transition/platform/TransitionUtils$CornerSizeBinaryOperator;->apply(Lcom/google/android/material/shape/CornerSize;Lcom/google/android/material/shape/CornerSize;)Lcom/google/android/material/shape/CornerSize;

    move-result-object v2

    .line 233
    invoke-virtual {v1, v2}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->setBottomRightCornerSize(Lcom/google/android/material/shape/CornerSize;)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object v1

    .line 237
    invoke-virtual {v1}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->build()Lcom/google/android/material/shape/ShapeAppearanceModel;

    move-result-object v1

    .line 220
    return-object v1

    .end local v0    # "shapeAppearanceModel":Lcom/google/android/material/shape/ShapeAppearanceModel;
    :cond_0
    move-object v0, p1

    .line 216
    goto :goto_0
.end method

.class Lcom/google/android/material/transition/TransitionUtils;
.super Ljava/lang/Object;
.source "TransitionUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/transition/TransitionUtils$CanvasOperation;,
        Lcom/google/android/material/transition/TransitionUtils$CornerSizeBinaryOperator;
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
    .line 388
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    sput-object v0, Lcom/google/android/material/transition/TransitionUtils;->transformAlphaRectF:Landroid/graphics/RectF;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 65
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
    .line 385
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
    .line 188
    new-instance v0, Lcom/google/android/material/transition/TransitionUtils$1;

    invoke-direct {v0, p1}, Lcom/google/android/material/transition/TransitionUtils$1;-><init>(Landroid/graphics/RectF;)V

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

    .line 334
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
    .line 381
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
    .line 346
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v1

    .line 347
    .local v1, "resourceName":Ljava/lang/String;
    :goto_0
    if-eqz p0, :cond_1

    .line 348
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 349
    return-object p0

    .line 351
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 352
    .local v0, "parent":Landroid/view/ViewParent;
    instance-of v2, v0, Landroid/view/View;

    if-eqz v2, :cond_1

    move-object p0, v0

    .line 353
    check-cast p0, Landroid/view/View;

    .line 357
    goto :goto_0

    .line 358
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
    .line 338
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 339
    .local v0, "descendant":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 342
    .end local v0    # "descendant":Landroid/view/View;
    :goto_0
    return-object v0

    .restart local v0    # "descendant":Landroid/view/View;
    :cond_0
    invoke-static {p0, p1}, Lcom/google/android/material/transition/TransitionUtils;->findAncestorById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method private static getControlPoint([Ljava/lang/String;I)F
    .locals 4
    .param p0, "controlPoints"    # [Ljava/lang/String;
    .param p1, "index"    # I

    .prologue
    .line 152
    aget-object v1, p0, p1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    .line 153
    .local v0, "controlPoint":F
    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-ltz v1, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, v0, v1

    if-lez v1, :cond_1

    .line 154
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

    .line 158
    :cond_1
    return v0
.end method

.method private static getEasingContent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "easingString"    # Ljava/lang/String;
    .param p1, "easingType"    # Ljava/lang/String;

    .prologue
    .line 146
    .line 147
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const-string v1, "("

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    .line 148
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, ")"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v1, v2

    .line 146
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static getLocationOnScreen(Landroid/view/View;)Landroid/graphics/RectF;
    .locals 10
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 370
    const/4 v5, 0x2

    new-array v2, v5, [I

    .line 371
    .local v2, "location":[I
    invoke-virtual {p0, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 372
    const/4 v5, 0x0

    aget v1, v2, v5

    .line 373
    .local v1, "left":I
    const/4 v5, 0x1

    aget v4, v2, v5

    .line 374
    .local v4, "top":I
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v5

    add-int v3, v1, v5

    .line 375
    .local v3, "right":I
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v5

    add-int v0, v4, v5

    .line 376
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
    .line 362
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
    .line 366
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
    .line 141
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

    .line 142
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 141
    :goto_0
    return v0

    .line 142
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

    .line 237
    invoke-virtual {p0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getTopLeftCornerSize()Lcom/google/android/material/shape/CornerSize;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/material/shape/CornerSize;->getCornerSize(Landroid/graphics/RectF;)F

    move-result v0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 238
    invoke-virtual {p0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getTopRightCornerSize()Lcom/google/android/material/shape/CornerSize;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/material/shape/CornerSize;->getCornerSize(Landroid/graphics/RectF;)F

    move-result v0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 239
    invoke-virtual {p0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getBottomRightCornerSize()Lcom/google/android/material/shape/CornerSize;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/material/shape/CornerSize;->getCornerSize(Landroid/graphics/RectF;)F

    move-result v0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 240
    invoke-virtual {p0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getBottomLeftCornerSize()Lcom/google/android/material/shape/CornerSize;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/material/shape/CornerSize;->getCornerSize(Landroid/graphics/RectF;)F

    move-result v0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 237
    :goto_0
    return v0

    .line 240
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
    .line 249
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
    .line 259
    const/4 v5, 0x0

    move v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Lcom/google/android/material/transition/TransitionUtils;->lerp(FFFFFZ)F

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
    .line 270
    if-eqz p5, :cond_2

    const/4 v0, 0x0

    cmpg-float v0, p4, v0

    if-ltz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p4, v0

    if-lez v0, :cond_2

    .line 271
    :cond_0
    invoke-static {p0, p1, p4}, Lcom/google/android/material/transition/TransitionUtils;->lerp(FFF)F

    move-result p0

    .line 280
    .end local p0    # "startValue":F
    :cond_1
    :goto_0
    return p0

    .line 273
    .restart local p0    # "startValue":F
    :cond_2
    cmpg-float v0, p4, p2

    if-ltz v0, :cond_1

    .line 276
    cmpl-float v0, p4, p3

    if-lez v0, :cond_3

    move p0, p1

    .line 277
    goto :goto_0

    .line 280
    :cond_3
    sub-float v0, p4, p2

    sub-float v1, p3, p2

    div-float/2addr v0, v1

    invoke-static {p0, p1, v0}, Lcom/google/android/material/transition/TransitionUtils;->lerp(FFF)F

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
    .line 289
    cmpg-float v0, p4, p2

    if-gez v0, :cond_0

    .line 295
    .end local p0    # "startValue":I
    :goto_0
    return p0

    .line 292
    .restart local p0    # "startValue":I
    :cond_0
    cmpl-float v0, p4, p3

    if-lez v0, :cond_1

    move p0, p1

    .line 293
    goto :goto_0

    .line 295
    :cond_1
    int-to-float v0, p0

    int-to-float v1, p1

    sub-float v2, p4, p2

    sub-float v3, p3, p2

    div-float/2addr v2, v3

    .line 296
    invoke-static {v0, v1, v2}, Lcom/google/android/material/transition/TransitionUtils;->lerp(FFF)F

    move-result v0

    float-to-int p0, v0

    .line 295
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
    .line 307
    cmpg-float v0, p6, p4

    if-gez v0, :cond_0

    .line 314
    .end local p0    # "startValue":Lcom/google/android/material/shape/ShapeAppearanceModel;
    :goto_0
    return-object p0

    .line 310
    .restart local p0    # "startValue":Lcom/google/android/material/shape/ShapeAppearanceModel;
    :cond_0
    cmpl-float v0, p6, p5

    if-lez v0, :cond_1

    move-object p0, p1

    .line 311
    goto :goto_0

    .line 314
    :cond_1
    new-instance v0, Lcom/google/android/material/transition/TransitionUtils$2;

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/google/android/material/transition/TransitionUtils$2;-><init>(Landroid/graphics/RectF;Landroid/graphics/RectF;FFF)V

    invoke-static {p0, p1, p2, v0}, Lcom/google/android/material/transition/TransitionUtils;->transformCornerSizes(Lcom/google/android/material/shape/ShapeAppearanceModel;Lcom/google/android/material/shape/ShapeAppearanceModel;Landroid/graphics/RectF;Lcom/google/android/material/transition/TransitionUtils$CornerSizeBinaryOperator;)Lcom/google/android/material/shape/ShapeAppearanceModel;

    move-result-object p0

    goto :goto_0
.end method

.method static maybeAddTransition(Landroidx/transition/TransitionSet;Landroidx/transition/Transition;)V
    .locals 0
    .param p0, "transitionSet"    # Landroidx/transition/TransitionSet;
    .param p1, "transition"    # Landroidx/transition/Transition;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 431
    if-eqz p1, :cond_0

    .line 432
    invoke-virtual {p0, p1}, Landroidx/transition/TransitionSet;->addTransition(Landroidx/transition/Transition;)Landroidx/transition/TransitionSet;

    .line 434
    :cond_0
    return-void
.end method

.method static maybeApplyThemeDuration(Landroidx/transition/Transition;Landroid/content/Context;I)Z
    .locals 7
    .param p0, "transition"    # Landroidx/transition/Transition;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrResId"    # I
        .annotation build Landroidx/annotation/AttrRes;
        .end annotation
    .end param

    .prologue
    const/4 v6, -0x1

    .line 83
    if-eqz p2, :cond_0

    invoke-virtual {p0}, Landroidx/transition/Transition;->getDuration()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 84
    invoke-static {p1, p2, v6}, Lcom/google/android/material/resources/MaterialAttributes;->resolveInteger(Landroid/content/Context;II)I

    move-result v0

    .line 85
    .local v0, "duration":I
    if-eq v0, v6, :cond_0

    .line 86
    int-to-long v2, v0

    invoke-virtual {p0, v2, v3}, Landroidx/transition/Transition;->setDuration(J)Landroidx/transition/Transition;

    .line 87
    const/4 v1, 0x1

    .line 90
    .end local v0    # "duration":I
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static maybeApplyThemeInterpolator(Landroidx/transition/Transition;Landroid/content/Context;ILandroid/animation/TimeInterpolator;)Z
    .locals 2
    .param p0, "transition"    # Landroidx/transition/Transition;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrResId"    # I
        .annotation build Landroidx/annotation/AttrRes;
        .end annotation
    .end param
    .param p3, "defaultInterpolator"    # Landroid/animation/TimeInterpolator;

    .prologue
    .line 72
    if-eqz p2, :cond_0

    invoke-virtual {p0}, Landroidx/transition/Transition;->getInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object v1

    if-nez v1, :cond_0

    .line 74
    invoke-static {p1, p2, p3}, Lcom/google/android/material/transition/TransitionUtils;->resolveThemeInterpolator(Landroid/content/Context;ILandroid/animation/TimeInterpolator;)Landroid/animation/TimeInterpolator;

    move-result-object v0

    .line 75
    .local v0, "interpolator":Landroid/animation/TimeInterpolator;
    invoke-virtual {p0, v0}, Landroidx/transition/Transition;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroidx/transition/Transition;

    .line 76
    const/4 v1, 0x1

    .line 78
    .end local v0    # "interpolator":Landroid/animation/TimeInterpolator;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static maybeApplyThemePath(Landroidx/transition/Transition;Landroid/content/Context;I)Z
    .locals 2
    .param p0, "transition"    # Landroidx/transition/Transition;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrResId"    # I
        .annotation build Landroidx/annotation/AttrRes;
        .end annotation
    .end param

    .prologue
    .line 95
    if-eqz p2, :cond_0

    .line 96
    invoke-static {p1, p2}, Lcom/google/android/material/transition/TransitionUtils;->resolveThemePath(Landroid/content/Context;I)Landroidx/transition/PathMotion;

    move-result-object v0

    .line 97
    .local v0, "pathMotion":Landroidx/transition/PathMotion;
    if-eqz v0, :cond_0

    .line 98
    invoke-virtual {p0, v0}, Landroidx/transition/Transition;->setPathMotion(Landroidx/transition/PathMotion;)V

    .line 99
    const/4 v1, 0x1

    .line 102
    .end local v0    # "pathMotion":Landroidx/transition/PathMotion;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static maybeRemoveTransition(Landroidx/transition/TransitionSet;Landroidx/transition/Transition;)V
    .locals 0
    .param p0, "transitionSet"    # Landroidx/transition/TransitionSet;
    .param p1, "transition"    # Landroidx/transition/Transition;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 437
    if-eqz p1, :cond_0

    .line 438
    invoke-virtual {p0, p1}, Landroidx/transition/TransitionSet;->removeTransition(Landroidx/transition/Transition;)Landroidx/transition/TransitionSet;

    .line 440
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

    .line 107
    new-instance v7, Landroid/util/TypedValue;

    invoke-direct {v7}, Landroid/util/TypedValue;-><init>()V

    .line 108
    .local v7, "easingValue":Landroid/util/TypedValue;
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v9

    invoke-virtual {v9, p1, v7, v11}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 109
    iget v9, v7, Landroid/util/TypedValue;->type:I

    if-eq v9, v12, :cond_0

    .line 110
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v10, "Motion easing theme attribute must be a string"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 113
    :cond_0
    iget-object v9, v7, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 115
    .local v6, "easingString":Ljava/lang/String;
    const-string v9, "cubic-bezier"

    invoke-static {v6, v9}, Lcom/google/android/material/transition/TransitionUtils;->isEasingType(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 116
    const-string v9, "cubic-bezier"

    invoke-static {v6, v9}, Lcom/google/android/material/transition/TransitionUtils;->getEasingContent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 117
    .local v1, "controlPointsString":Ljava/lang/String;
    const-string v9, ","

    invoke-virtual {v1, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 118
    .local v0, "controlPoints":[Ljava/lang/String;
    array-length v9, v0

    const/4 v10, 0x4

    if-eq v9, v10, :cond_1

    .line 119
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

    .line 125
    :cond_1
    const/4 v9, 0x0

    invoke-static {v0, v9}, Lcom/google/android/material/transition/TransitionUtils;->getControlPoint([Ljava/lang/String;I)F

    move-result v2

    .line 126
    .local v2, "controlX1":F
    invoke-static {v0, v11}, Lcom/google/android/material/transition/TransitionUtils;->getControlPoint([Ljava/lang/String;I)F

    move-result v4

    .line 127
    .local v4, "controlY1":F
    const/4 v9, 0x2

    invoke-static {v0, v9}, Lcom/google/android/material/transition/TransitionUtils;->getControlPoint([Ljava/lang/String;I)F

    move-result v3

    .line 128
    .local v3, "controlX2":F
    invoke-static {v0, v12}, Lcom/google/android/material/transition/TransitionUtils;->getControlPoint([Ljava/lang/String;I)F

    move-result v5

    .line 129
    .local v5, "controlY2":F
    invoke-static {v2, v4, v3, v5}, Landroidx/core/view/animation/PathInterpolatorCompat;->create(FFFF)Landroid/view/animation/Interpolator;

    move-result-object p2

    .line 137
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

    .line 130
    .restart local v6    # "easingString":Ljava/lang/String;
    .restart local p2    # "defaultInterpolator":Landroid/animation/TimeInterpolator;
    :cond_3
    const-string v9, "path"

    invoke-static {v6, v9}, Lcom/google/android/material/transition/TransitionUtils;->isEasingType(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 131
    const-string v9, "path"

    invoke-static {v6, v9}, Lcom/google/android/material/transition/TransitionUtils;->getEasingContent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 132
    .local v8, "path":Ljava/lang/String;
    invoke-static {v8}, Landroidx/core/graphics/PathParser;->createPathFromPathData(Ljava/lang/String;)Landroid/graphics/Path;

    move-result-object v9

    invoke-static {v9}, Landroidx/core/view/animation/PathInterpolatorCompat;->create(Landroid/graphics/Path;)Landroid/view/animation/Interpolator;

    move-result-object p2

    goto :goto_0

    .line 134
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

.method static resolveThemePath(Landroid/content/Context;I)Landroidx/transition/PathMotion;
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

    .line 163
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 164
    .local v2, "pathValue":Landroid/util/TypedValue;
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    invoke-virtual {v4, p1, v2, v6}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 165
    iget v4, v2, Landroid/util/TypedValue;->type:I

    const/16 v5, 0x10

    if-ne v4, v5, :cond_3

    .line 166
    iget v0, v2, Landroid/util/TypedValue;->data:I

    .line 167
    .local v0, "pathInt":I
    if-nez v0, :cond_1

    .line 183
    .end local v0    # "pathInt":I
    :cond_0
    :goto_0
    return-object v3

    .line 170
    .restart local v0    # "pathInt":I
    :cond_1
    if-ne v0, v6, :cond_2

    .line 171
    new-instance v3, Lcom/google/android/material/transition/MaterialArcMotion;

    invoke-direct {v3}, Lcom/google/android/material/transition/MaterialArcMotion;-><init>()V

    goto :goto_0

    .line 173
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

    .line 175
    .end local v0    # "pathInt":I
    :cond_3
    iget v3, v2, Landroid/util/TypedValue;->type:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_4

    .line 176
    iget-object v3, v2, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 177
    .local v1, "pathString":Ljava/lang/String;
    new-instance v3, Landroidx/transition/PatternPathMotion;

    invoke-static {v1}, Landroidx/core/graphics/PathParser;->createPathFromPathData(Ljava/lang/String;)Landroid/graphics/Path;

    move-result-object v4

    invoke-direct {v3, v4}, Landroidx/transition/PatternPathMotion;-><init>(Landroid/graphics/Path;)V

    goto :goto_0

    .line 179
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
    .line 391
    sget-object v0, Lcom/google/android/material/transition/TransitionUtils;->transformAlphaRectF:Landroid/graphics/RectF;

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 392
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 393
    sget-object v0, Lcom/google/android/material/transition/TransitionUtils;->transformAlphaRectF:Landroid/graphics/RectF;

    invoke-virtual {p0, v0, p2}, Landroid/graphics/Canvas;->saveLayerAlpha(Landroid/graphics/RectF;I)I

    move-result v0

    .line 395
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/google/android/material/transition/TransitionUtils;->transformAlphaRectF:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    sget-object v0, Lcom/google/android/material/transition/TransitionUtils;->transformAlphaRectF:Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/RectF;->top:F

    sget-object v0, Lcom/google/android/material/transition/TransitionUtils;->transformAlphaRectF:Landroid/graphics/RectF;

    iget v3, v0, Landroid/graphics/RectF;->right:F

    sget-object v0, Lcom/google/android/material/transition/TransitionUtils;->transformAlphaRectF:Landroid/graphics/RectF;

    iget v4, v0, Landroid/graphics/RectF;->bottom:F

    const/16 v6, 0x1f

    move-object v0, p0

    move v5, p2

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    move-result v0

    goto :goto_0
.end method

.method static transform(Landroid/graphics/Canvas;Landroid/graphics/Rect;FFFILcom/google/android/material/transition/TransitionUtils$CanvasOperation;)V
    .locals 2
    .param p0, "canvas"    # Landroid/graphics/Canvas;
    .param p1, "bounds"    # Landroid/graphics/Rect;
    .param p2, "dx"    # F
    .param p3, "dy"    # F
    .param p4, "scale"    # F
    .param p5, "alpha"    # I
    .param p6, "op"    # Lcom/google/android/material/transition/TransitionUtils$CanvasOperation;

    .prologue
    .line 412
    if-gtz p5, :cond_0

    .line 424
    :goto_0
    return-void

    .line 416
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 417
    .local v0, "checkpoint":I
    invoke-virtual {p0, p2, p3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 418
    invoke-virtual {p0, p4, p4}, Landroid/graphics/Canvas;->scale(FF)V

    .line 419
    const/16 v1, 0xff

    if-ge p5, v1, :cond_1

    .line 420
    invoke-static {p0, p1, p5}, Lcom/google/android/material/transition/TransitionUtils;->saveLayerAlphaCompat(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)I

    .line 422
    :cond_1
    invoke-interface {p6, p0}, Lcom/google/android/material/transition/TransitionUtils$CanvasOperation;->run(Landroid/graphics/Canvas;)V

    .line 423
    invoke-virtual {p0, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_0
.end method

.method static transformCornerSizes(Lcom/google/android/material/shape/ShapeAppearanceModel;Lcom/google/android/material/shape/ShapeAppearanceModel;Landroid/graphics/RectF;Lcom/google/android/material/transition/TransitionUtils$CornerSizeBinaryOperator;)Lcom/google/android/material/shape/ShapeAppearanceModel;
    .locals 4
    .param p0, "shapeAppearanceModel1"    # Lcom/google/android/material/shape/ShapeAppearanceModel;
    .param p1, "shapeAppearanceModel2"    # Lcom/google/android/material/shape/ShapeAppearanceModel;
    .param p2, "shapeAppearanceModel1Bounds"    # Landroid/graphics/RectF;
    .param p3, "op"    # Lcom/google/android/material/transition/TransitionUtils$CornerSizeBinaryOperator;

    .prologue
    .line 210
    .line 211
    invoke-static {p0, p2}, Lcom/google/android/material/transition/TransitionUtils;->isShapeAppearanceSignificant(Lcom/google/android/material/shape/ShapeAppearanceModel;Landroid/graphics/RectF;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v0, p0

    .line 215
    .local v0, "shapeAppearanceModel":Lcom/google/android/material/shape/ShapeAppearanceModel;
    :goto_0
    invoke-virtual {v0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->toBuilder()Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object v1

    .line 218
    invoke-virtual {p0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getTopLeftCornerSize()Lcom/google/android/material/shape/CornerSize;

    move-result-object v2

    .line 219
    invoke-virtual {p1}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getTopLeftCornerSize()Lcom/google/android/material/shape/CornerSize;

    move-result-object v3

    .line 217
    invoke-interface {p3, v2, v3}, Lcom/google/android/material/transition/TransitionUtils$CornerSizeBinaryOperator;->apply(Lcom/google/android/material/shape/CornerSize;Lcom/google/android/material/shape/CornerSize;)Lcom/google/android/material/shape/CornerSize;

    move-result-object v2

    .line 216
    invoke-virtual {v1, v2}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->setTopLeftCornerSize(Lcom/google/android/material/shape/CornerSize;)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object v1

    .line 222
    invoke-virtual {p0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getTopRightCornerSize()Lcom/google/android/material/shape/CornerSize;

    move-result-object v2

    .line 223
    invoke-virtual {p1}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getTopRightCornerSize()Lcom/google/android/material/shape/CornerSize;

    move-result-object v3

    .line 221
    invoke-interface {p3, v2, v3}, Lcom/google/android/material/transition/TransitionUtils$CornerSizeBinaryOperator;->apply(Lcom/google/android/material/shape/CornerSize;Lcom/google/android/material/shape/CornerSize;)Lcom/google/android/material/shape/CornerSize;

    move-result-object v2

    .line 220
    invoke-virtual {v1, v2}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->setTopRightCornerSize(Lcom/google/android/material/shape/CornerSize;)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object v1

    .line 226
    invoke-virtual {p0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getBottomLeftCornerSize()Lcom/google/android/material/shape/CornerSize;

    move-result-object v2

    .line 227
    invoke-virtual {p1}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getBottomLeftCornerSize()Lcom/google/android/material/shape/CornerSize;

    move-result-object v3

    .line 225
    invoke-interface {p3, v2, v3}, Lcom/google/android/material/transition/TransitionUtils$CornerSizeBinaryOperator;->apply(Lcom/google/android/material/shape/CornerSize;Lcom/google/android/material/shape/CornerSize;)Lcom/google/android/material/shape/CornerSize;

    move-result-object v2

    .line 224
    invoke-virtual {v1, v2}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->setBottomLeftCornerSize(Lcom/google/android/material/shape/CornerSize;)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object v1

    .line 230
    invoke-virtual {p0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getBottomRightCornerSize()Lcom/google/android/material/shape/CornerSize;

    move-result-object v2

    .line 231
    invoke-virtual {p1}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getBottomRightCornerSize()Lcom/google/android/material/shape/CornerSize;

    move-result-object v3

    .line 229
    invoke-interface {p3, v2, v3}, Lcom/google/android/material/transition/TransitionUtils$CornerSizeBinaryOperator;->apply(Lcom/google/android/material/shape/CornerSize;Lcom/google/android/material/shape/CornerSize;)Lcom/google/android/material/shape/CornerSize;

    move-result-object v2

    .line 228
    invoke-virtual {v1, v2}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->setBottomRightCornerSize(Lcom/google/android/material/shape/CornerSize;)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object v1

    .line 232
    invoke-virtual {v1}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->build()Lcom/google/android/material/shape/ShapeAppearanceModel;

    move-result-object v1

    .line 215
    return-object v1

    .end local v0    # "shapeAppearanceModel":Lcom/google/android/material/shape/ShapeAppearanceModel;
    :cond_0
    move-object v0, p1

    .line 211
    goto :goto_0
.end method

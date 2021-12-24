.class public Lcom/google/android/material/shadow/ShadowRenderer;
.super Ljava/lang/Object;
.source "ShadowRenderer.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field private static final COLOR_ALPHA_END:I = 0x0

.field private static final COLOR_ALPHA_MIDDLE:I = 0x14

.field private static final COLOR_ALPHA_START:I = 0x44

.field private static final cornerColors:[I

.field private static final cornerPositions:[F

.field private static final edgeColors:[I

.field private static final edgePositions:[F


# instance fields
.field private final cornerShadowPaint:Landroid/graphics/Paint;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final edgeShadowPaint:Landroid/graphics/Paint;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final scratch:Landroid/graphics/Path;

.field private shadowEndColor:I

.field private shadowMiddleColor:I

.field private final shadowPaint:Landroid/graphics/Paint;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private shadowStartColor:I

.field private transparentPaint:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x3

    .line 60
    new-array v0, v1, [I

    sput-object v0, Lcom/google/android/material/shadow/ShadowRenderer;->edgeColors:[I

    .line 62
    new-array v0, v1, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/material/shadow/ShadowRenderer;->edgePositions:[F

    .line 64
    new-array v0, v2, [I

    sput-object v0, Lcom/google/android/material/shadow/ShadowRenderer;->cornerColors:[I

    .line 66
    new-array v0, v2, [F

    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/android/material/shadow/ShadowRenderer;->cornerPositions:[F

    return-void

    .line 62
    nop

    :array_0
    .array-data 4
        0x0
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data

    .line 66
    :array_1
    .array-data 4
        0x0
        0x0
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 72
    const/high16 v0, -0x1000000

    invoke-direct {p0, v0}, Lcom/google/android/material/shadow/ShadowRenderer;-><init>(I)V

    .line 73
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "color"    # I

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/shadow/ShadowRenderer;->scratch:Landroid/graphics/Path;

    .line 69
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/shadow/ShadowRenderer;->transparentPaint:Landroid/graphics/Paint;

    .line 76
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/shadow/ShadowRenderer;->shadowPaint:Landroid/graphics/Paint;

    .line 77
    invoke-virtual {p0, p1}, Lcom/google/android/material/shadow/ShadowRenderer;->setShadowColor(I)V

    .line 79
    iget-object v0, p0, Lcom/google/android/material/shadow/ShadowRenderer;->transparentPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 80
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/material/shadow/ShadowRenderer;->cornerShadowPaint:Landroid/graphics/Paint;

    .line 81
    iget-object v0, p0, Lcom/google/android/material/shadow/ShadowRenderer;->cornerShadowPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 83
    new-instance v0, Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/google/android/material/shadow/ShadowRenderer;->cornerShadowPaint:Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v0, p0, Lcom/google/android/material/shadow/ShadowRenderer;->edgeShadowPaint:Landroid/graphics/Paint;

    .line 84
    return-void
.end method


# virtual methods
.method public drawCornerShadow(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Landroid/graphics/RectF;IFF)V
    .locals 17
    .param p1, "canvas"    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "matrix"    # Landroid/graphics/Matrix;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "bounds"    # Landroid/graphics/RectF;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "elevation"    # I
    .param p5, "startAngle"    # F
    .param p6, "sweepAngle"    # F

    .prologue
    .line 130
    const/4 v4, 0x0

    cmpg-float v4, p6, v4

    if-gez v4, :cond_0

    const/4 v14, 0x1

    .line 132
    .local v14, "drawShadowInsideBounds":Z
    :goto_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/material/shadow/ShadowRenderer;->scratch:Landroid/graphics/Path;

    .line 134
    .local v13, "arcBounds":Landroid/graphics/Path;
    if-eqz v14, :cond_1

    .line 135
    sget-object v4, Lcom/google/android/material/shadow/ShadowRenderer;->cornerColors:[I

    const/4 v5, 0x0

    const/4 v7, 0x0

    aput v7, v4, v5

    .line 136
    sget-object v4, Lcom/google/android/material/shadow/ShadowRenderer;->cornerColors:[I

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget v7, v0, Lcom/google/android/material/shadow/ShadowRenderer;->shadowEndColor:I

    aput v7, v4, v5

    .line 137
    sget-object v4, Lcom/google/android/material/shadow/ShadowRenderer;->cornerColors:[I

    const/4 v5, 0x2

    move-object/from16 v0, p0

    iget v7, v0, Lcom/google/android/material/shadow/ShadowRenderer;->shadowMiddleColor:I

    aput v7, v4, v5

    .line 138
    sget-object v4, Lcom/google/android/material/shadow/ShadowRenderer;->cornerColors:[I

    const/4 v5, 0x3

    move-object/from16 v0, p0

    iget v7, v0, Lcom/google/android/material/shadow/ShadowRenderer;->shadowStartColor:I

    aput v7, v4, v5

    .line 153
    :goto_1
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/RectF;->width()F

    move-result v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float v6, v4, v5

    .line 155
    .local v6, "radius":F
    const/4 v4, 0x0

    cmpg-float v4, v6, v4

    if-gtz v4, :cond_2

    .line 183
    :goto_2
    return-void

    .line 130
    .end local v6    # "radius":F
    .end local v13    # "arcBounds":Landroid/graphics/Path;
    .end local v14    # "drawShadowInsideBounds":Z
    :cond_0
    const/4 v14, 0x0

    goto :goto_0

    .line 141
    .restart local v13    # "arcBounds":Landroid/graphics/Path;
    .restart local v14    # "drawShadowInsideBounds":Z
    :cond_1
    invoke-virtual {v13}, Landroid/graphics/Path;->rewind()V

    .line 142
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/RectF;->centerX()F

    move-result v4

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/RectF;->centerY()F

    move-result v5

    invoke-virtual {v13, v4, v5}, Landroid/graphics/Path;->moveTo(FF)V

    .line 143
    move-object/from16 v0, p3

    move/from16 v1, p5

    move/from16 v2, p6

    invoke-virtual {v13, v0, v1, v2}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 144
    invoke-virtual {v13}, Landroid/graphics/Path;->close()V

    .line 146
    move/from16 v0, p4

    neg-int v4, v0

    int-to-float v4, v4

    move/from16 v0, p4

    neg-int v5, v0

    int-to-float v5, v5

    move-object/from16 v0, p3

    invoke-virtual {v0, v4, v5}, Landroid/graphics/RectF;->inset(FF)V

    .line 147
    sget-object v4, Lcom/google/android/material/shadow/ShadowRenderer;->cornerColors:[I

    const/4 v5, 0x0

    const/4 v7, 0x0

    aput v7, v4, v5

    .line 148
    sget-object v4, Lcom/google/android/material/shadow/ShadowRenderer;->cornerColors:[I

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget v7, v0, Lcom/google/android/material/shadow/ShadowRenderer;->shadowStartColor:I

    aput v7, v4, v5

    .line 149
    sget-object v4, Lcom/google/android/material/shadow/ShadowRenderer;->cornerColors:[I

    const/4 v5, 0x2

    move-object/from16 v0, p0

    iget v7, v0, Lcom/google/android/material/shadow/ShadowRenderer;->shadowMiddleColor:I

    aput v7, v4, v5

    .line 150
    sget-object v4, Lcom/google/android/material/shadow/ShadowRenderer;->cornerColors:[I

    const/4 v5, 0x3

    move-object/from16 v0, p0

    iget v7, v0, Lcom/google/android/material/shadow/ShadowRenderer;->shadowEndColor:I

    aput v7, v4, v5

    goto :goto_1

    .line 159
    .restart local v6    # "radius":F
    :cond_2
    const/high16 v4, 0x3f800000    # 1.0f

    move/from16 v0, p4

    int-to-float v5, v0

    div-float/2addr v5, v6

    sub-float v16, v4, v5

    .line 160
    .local v16, "startRatio":F
    const/high16 v4, 0x3f800000    # 1.0f

    sub-float v4, v4, v16

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    add-float v15, v16, v4

    .line 161
    .local v15, "midRatio":F
    sget-object v4, Lcom/google/android/material/shadow/ShadowRenderer;->cornerPositions:[F

    const/4 v5, 0x1

    aput v16, v4, v5

    .line 162
    sget-object v4, Lcom/google/android/material/shadow/ShadowRenderer;->cornerPositions:[F

    const/4 v5, 0x2

    aput v15, v4, v5

    .line 163
    new-instance v3, Landroid/graphics/RadialGradient;

    .line 164
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/RectF;->centerX()F

    move-result v4

    .line 165
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/RectF;->centerY()F

    move-result v5

    sget-object v7, Lcom/google/android/material/shadow/ShadowRenderer;->cornerColors:[I

    sget-object v8, Lcom/google/android/material/shadow/ShadowRenderer;->cornerPositions:[F

    sget-object v9, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v3 .. v9}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 170
    .local v3, "shader":Landroid/graphics/RadialGradient;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/material/shadow/ShadowRenderer;->cornerShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 171
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 172
    invoke-virtual/range {p1 .. p2}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 173
    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/RectF;->height()F

    move-result v5

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/RectF;->width()F

    move-result v7

    div-float/2addr v5, v7

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/graphics/Canvas;->scale(FF)V

    .line 175
    if-nez v14, :cond_3

    .line 176
    sget-object v4, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v4}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    .line 178
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/material/shadow/ShadowRenderer;->transparentPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 181
    :cond_3
    const/4 v11, 0x1

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/material/shadow/ShadowRenderer;->cornerShadowPaint:Landroid/graphics/Paint;

    move-object/from16 v7, p1

    move-object/from16 v8, p3

    move/from16 v9, p5

    move/from16 v10, p6

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 182
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_2
.end method

.method public drawEdgeShadow(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Landroid/graphics/RectF;I)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "transform"    # Landroid/graphics/Matrix;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "bounds"    # Landroid/graphics/RectF;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "elevation"    # I

    .prologue
    .line 96
    iget v0, p3, Landroid/graphics/RectF;->bottom:F

    int-to-float v1, p4

    add-float/2addr v0, v1

    iput v0, p3, Landroid/graphics/RectF;->bottom:F

    .line 97
    const/4 v0, 0x0

    neg-int v1, p4

    int-to-float v1, v1

    invoke-virtual {p3, v0, v1}, Landroid/graphics/RectF;->offset(FF)V

    .line 99
    sget-object v0, Lcom/google/android/material/shadow/ShadowRenderer;->edgeColors:[I

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/android/material/shadow/ShadowRenderer;->shadowEndColor:I

    aput v2, v0, v1

    .line 100
    sget-object v0, Lcom/google/android/material/shadow/ShadowRenderer;->edgeColors:[I

    const/4 v1, 0x1

    iget v2, p0, Lcom/google/android/material/shadow/ShadowRenderer;->shadowMiddleColor:I

    aput v2, v0, v1

    .line 101
    sget-object v0, Lcom/google/android/material/shadow/ShadowRenderer;->edgeColors:[I

    const/4 v1, 0x2

    iget v2, p0, Lcom/google/android/material/shadow/ShadowRenderer;->shadowStartColor:I

    aput v2, v0, v1

    .line 103
    iget-object v8, p0, Lcom/google/android/material/shadow/ShadowRenderer;->edgeShadowPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/LinearGradient;

    iget v1, p3, Landroid/graphics/RectF;->left:F

    iget v2, p3, Landroid/graphics/RectF;->top:F

    iget v3, p3, Landroid/graphics/RectF;->left:F

    iget v4, p3, Landroid/graphics/RectF;->bottom:F

    sget-object v5, Lcom/google/android/material/shadow/ShadowRenderer;->edgeColors:[I

    sget-object v6, Lcom/google/android/material/shadow/ShadowRenderer;->edgePositions:[F

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v8, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 113
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 114
    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 115
    iget-object v0, p0, Lcom/google/android/material/shadow/ShadowRenderer;->edgeShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p3, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 116
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 117
    return-void
.end method

.method public getShadowPaint()Landroid/graphics/Paint;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 187
    iget-object v0, p0, Lcom/google/android/material/shadow/ShadowRenderer;->shadowPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public setShadowColor(I)V
    .locals 2
    .param p1, "color"    # I

    .prologue
    .line 87
    const/16 v0, 0x44

    invoke-static {p1, v0}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/shadow/ShadowRenderer;->shadowStartColor:I

    .line 88
    const/16 v0, 0x14

    invoke-static {p1, v0}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/shadow/ShadowRenderer;->shadowMiddleColor:I

    .line 89
    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/shadow/ShadowRenderer;->shadowEndColor:I

    .line 90
    iget-object v0, p0, Lcom/google/android/material/shadow/ShadowRenderer;->shadowPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/google/android/material/shadow/ShadowRenderer;->shadowStartColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 91
    return-void
.end method

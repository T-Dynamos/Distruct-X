.class public Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;
.super Lcom/google/android/material/shape/EdgeTreatment;
.source "BottomAppBarTopEdgeTreatment.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static final ANGLE_LEFT:I = 0xb4

.field private static final ANGLE_UP:I = 0x10e

.field private static final ARC_HALF:I = 0xb4

.field private static final ARC_QUARTER:I = 0x5a

.field private static final ROUNDED_CORNER_FAB_OFFSET:F = 1.75f


# instance fields
.field private cradleVerticalOffset:F

.field private fabCornerSize:F

.field private fabDiameter:F

.field private fabMargin:F

.field private horizontalOffset:F

.field private roundedCornerRadius:F


# direct methods
.method public constructor <init>(FFF)V
    .locals 1
    .param p1, "fabMargin"    # F
    .param p2, "roundedCornerRadius"    # F
    .param p3, "cradleVerticalOffset"    # F

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/google/android/material/shape/EdgeTreatment;-><init>()V

    .line 53
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->fabCornerSize:F

    .line 65
    iput p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->fabMargin:F

    .line 66
    iput p2, p0, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->roundedCornerRadius:F

    .line 67
    invoke-virtual {p0, p3}, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->setCradleVerticalOffset(F)V

    .line 68
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->horizontalOffset:F

    .line 69
    return-void
.end method


# virtual methods
.method getCradleVerticalOffset()F
    .locals 1

    .prologue
    .line 223
    iget v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->cradleVerticalOffset:F

    return v0
.end method

.method public getEdgePath(FFFLcom/google/android/material/shape/ShapePath;)V
    .locals 33
    .param p1, "length"    # F
    .param p2, "center"    # F
    .param p3, "interpolation"    # F
    .param p4, "shapePath"    # Lcom/google/android/material/shape/ShapePath;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 74
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->fabDiameter:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    .line 76
    const/4 v2, 0x0

    move-object/from16 v0, p4

    move/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/material/shape/ShapePath;->lineTo(FF)V

    .line 180
    :goto_0
    return-void

    .line 80
    :cond_0
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->fabMargin:F

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->fabDiameter:F

    add-float v18, v2, v3

    .line 81
    .local v18, "cradleDiameter":F
    const/high16 v2, 0x40000000    # 2.0f

    div-float v19, v18, v2

    .line 82
    .local v19, "cradleRadius":F
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->roundedCornerRadius:F

    mul-float v29, p3, v2

    .line 83
    .local v29, "roundedCornerOffset":F
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->horizontalOffset:F

    add-float v27, p2, v2

    .line 87
    .local v27, "middle":F
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->cradleVerticalOffset:F

    mul-float v2, v2, p3

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v3, v3, p3

    mul-float v3, v3, v19

    add-float v31, v2, v3

    .line 89
    .local v31, "verticalOffset":F
    div-float v32, v31, v19

    .line 90
    .local v32, "verticalOffsetRatio":F
    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, v32, v2

    if-ltz v2, :cond_1

    .line 93
    const/4 v2, 0x0

    move-object/from16 v0, p4

    move/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/material/shape/ShapePath;->lineTo(FF)V

    goto :goto_0

    .line 103
    :cond_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->fabCornerSize:F

    mul-float v17, v2, p3

    .line 104
    .local v17, "cornerSize":F
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->fabCornerSize:F

    const/high16 v3, -0x40800000    # -1.0f

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->fabCornerSize:F

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->fabDiameter:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const v3, 0x3dcccccd    # 0.1f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_4

    :cond_2
    const/16 v30, 0x1

    .line 105
    .local v30, "useCircleCutout":Z
    :goto_1
    const/16 v16, 0x0

    .line 106
    .local v16, "arcOffset":F
    if-nez v30, :cond_3

    .line 107
    const/16 v31, 0x0

    .line 108
    const/high16 v16, 0x3fe00000    # 1.75f

    .line 111
    :cond_3
    add-float v22, v19, v29

    .line 112
    .local v22, "distanceBetweenCenters":F
    mul-float v23, v22, v22

    .line 113
    .local v23, "distanceBetweenCentersSquared":F
    add-float v25, v31, v29

    .line 114
    .local v25, "distanceY":F
    mul-float v2, v25, v25

    sub-float v2, v23, v2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v0, v2

    move/from16 v24, v0

    .line 117
    .local v24, "distanceX":F
    sub-float v26, v27, v24

    .line 118
    .local v26, "leftRoundedCornerCircleX":F
    add-float v28, v27, v24

    .line 121
    .local v28, "rightRoundedCornerCircleX":F
    div-float v2, v24, v25

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->atan(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v2

    double-to-float v8, v2

    .line 122
    .local v8, "cornerRadiusArcLength":F
    const/high16 v2, 0x42b40000    # 90.0f

    sub-float/2addr v2, v8

    add-float v20, v2, v16

    .line 125
    .local v20, "cutoutArcOffset":F
    const/4 v2, 0x0

    move-object/from16 v0, p4

    move/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Lcom/google/android/material/shape/ShapePath;->lineTo(FF)V

    .line 129
    sub-float v3, v26, v29

    const/4 v4, 0x0

    add-float v5, v26, v29

    const/high16 v2, 0x40000000    # 2.0f

    mul-float v6, v29, v2

    const/high16 v7, 0x43870000    # 270.0f

    move-object/from16 v2, p4

    invoke-virtual/range {v2 .. v8}, Lcom/google/android/material/shape/ShapePath;->addArc(FFFFFF)V

    .line 137
    if-eqz v30, :cond_5

    .line 139
    sub-float v10, v27, v19

    move/from16 v0, v19

    neg-float v2, v0

    sub-float v11, v2, v31

    add-float v12, v27, v19

    sub-float v13, v19, v31

    const/high16 v2, 0x43340000    # 180.0f

    sub-float v14, v2, v20

    const/high16 v2, 0x40000000    # 2.0f

    mul-float v2, v2, v20

    const/high16 v3, 0x43340000    # 180.0f

    sub-float v15, v2, v3

    move-object/from16 v9, p4

    invoke-virtual/range {v9 .. v15}, Lcom/google/android/material/shape/ShapePath;->addArc(FFFFFF)V

    .line 170
    :goto_2
    sub-float v3, v28, v29

    const/4 v4, 0x0

    add-float v5, v28, v29

    const/high16 v2, 0x40000000    # 2.0f

    mul-float v6, v29, v2

    const/high16 v2, 0x43870000    # 270.0f

    sub-float v7, v2, v8

    move-object/from16 v2, p4

    invoke-virtual/range {v2 .. v8}, Lcom/google/android/material/shape/ShapePath;->addArc(FFFFFF)V

    .line 179
    const/4 v2, 0x0

    move-object/from16 v0, p4

    move/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/material/shape/ShapePath;->lineTo(FF)V

    goto/16 :goto_0

    .line 104
    .end local v8    # "cornerRadiusArcLength":F
    .end local v16    # "arcOffset":F
    .end local v20    # "cutoutArcOffset":F
    .end local v22    # "distanceBetweenCenters":F
    .end local v23    # "distanceBetweenCentersSquared":F
    .end local v24    # "distanceX":F
    .end local v25    # "distanceY":F
    .end local v26    # "leftRoundedCornerCircleX":F
    .end local v28    # "rightRoundedCornerCircleX":F
    .end local v30    # "useCircleCutout":Z
    :cond_4
    const/16 v30, 0x0

    goto/16 :goto_1

    .line 147
    .restart local v8    # "cornerRadiusArcLength":F
    .restart local v16    # "arcOffset":F
    .restart local v20    # "cutoutArcOffset":F
    .restart local v22    # "distanceBetweenCenters":F
    .restart local v23    # "distanceBetweenCentersSquared":F
    .restart local v24    # "distanceX":F
    .restart local v25    # "distanceY":F
    .restart local v26    # "leftRoundedCornerCircleX":F
    .restart local v28    # "rightRoundedCornerCircleX":F
    .restart local v30    # "useCircleCutout":Z
    :cond_5
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->fabMargin:F

    const/high16 v3, 0x40000000    # 2.0f

    mul-float v3, v3, v17

    add-float v21, v2, v3

    .line 148
    .local v21, "cutoutDiameter":F
    sub-float v10, v27, v19

    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->fabMargin:F

    add-float v2, v2, v17

    neg-float v11, v2

    sub-float v2, v27, v19

    add-float v12, v2, v21

    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->fabMargin:F

    add-float v13, v2, v17

    const/high16 v2, 0x43340000    # 180.0f

    sub-float v14, v2, v20

    const/high16 v2, 0x40000000    # 2.0f

    mul-float v2, v2, v20

    const/high16 v3, 0x43340000    # 180.0f

    sub-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float v15, v2, v3

    move-object/from16 v9, p4

    invoke-virtual/range {v9 .. v15}, Lcom/google/android/material/shape/ShapePath;->addArc(FFFFFF)V

    .line 156
    add-float v2, v27, v19

    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->fabMargin:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    add-float v3, v3, v17

    sub-float/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->fabMargin:F

    add-float v3, v3, v17

    move-object/from16 v0, p4

    invoke-virtual {v0, v2, v3}, Lcom/google/android/material/shape/ShapePath;->lineTo(FF)V

    .line 159
    add-float v2, v27, v19

    const/high16 v3, 0x40000000    # 2.0f

    mul-float v3, v3, v17

    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->fabMargin:F

    add-float/2addr v3, v4

    sub-float v10, v2, v3

    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->fabMargin:F

    add-float v2, v2, v17

    neg-float v11, v2

    add-float v12, v27, v19

    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->fabMargin:F

    add-float v13, v2, v17

    const/high16 v14, 0x42b40000    # 90.0f

    const/high16 v2, -0x3d4c0000    # -90.0f

    add-float v15, v2, v20

    move-object/from16 v9, p4

    invoke-virtual/range {v9 .. v15}, Lcom/google/android/material/shape/ShapePath;->addArc(FFFFFF)V

    goto/16 :goto_2
.end method

.method public getFabCornerRadius()F
    .locals 1

    .prologue
    .line 255
    iget v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->fabCornerSize:F

    return v0
.end method

.method getFabCradleMargin()F
    .locals 1

    .prologue
    .line 239
    iget v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->fabMargin:F

    return v0
.end method

.method getFabCradleRoundedCornerRadius()F
    .locals 1

    .prologue
    .line 247
    iget v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->roundedCornerRadius:F

    return v0
.end method

.method public getFabDiameter()F
    .locals 1
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 189
    iget v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->fabDiameter:F

    return v0
.end method

.method public getHorizontalOffset()F
    .locals 1
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 214
    iget v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->horizontalOffset:F

    return v0
.end method

.method setCradleVerticalOffset(F)V
    .locals 2
    .param p1, "cradleVerticalOffset"    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
        .end annotation
    .end param

    .prologue
    .line 232
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 233
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cradleVerticalOffset must be positive."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 235
    :cond_0
    iput p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->cradleVerticalOffset:F

    .line 236
    return-void
.end method

.method public setFabCornerSize(F)V
    .locals 0
    .param p1, "size"    # F

    .prologue
    .line 259
    iput p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->fabCornerSize:F

    .line 260
    return-void
.end method

.method setFabCradleMargin(F)V
    .locals 0
    .param p1, "fabMargin"    # F

    .prologue
    .line 243
    iput p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->fabMargin:F

    .line 244
    return-void
.end method

.method setFabCradleRoundedCornerRadius(F)V
    .locals 0
    .param p1, "roundedCornerRadius"    # F

    .prologue
    .line 251
    iput p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->roundedCornerRadius:F

    .line 252
    return-void
.end method

.method public setFabDiameter(F)V
    .locals 0
    .param p1, "fabDiameter"    # F
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 199
    iput p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->fabDiameter:F

    .line 200
    return-void
.end method

.method setHorizontalOffset(F)V
    .locals 0
    .param p1, "horizontalOffset"    # F

    .prologue
    .line 204
    iput p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->horizontalOffset:F

    .line 205
    return-void
.end method

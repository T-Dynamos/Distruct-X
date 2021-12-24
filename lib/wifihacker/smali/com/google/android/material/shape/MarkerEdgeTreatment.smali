.class public final Lcom/google/android/material/shape/MarkerEdgeTreatment;
.super Lcom/google/android/material/shape/EdgeTreatment;
.source "MarkerEdgeTreatment.java"


# instance fields
.field private final radius:F


# direct methods
.method public constructor <init>(F)V
    .locals 1
    .param p1, "radius"    # F

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/google/android/material/shape/EdgeTreatment;-><init>()V

    .line 33
    const v0, 0x3a83126f    # 0.001f

    sub-float v0, p1, v0

    iput v0, p0, Lcom/google/android/material/shape/MarkerEdgeTreatment;->radius:F

    .line 34
    return-void
.end method


# virtual methods
.method forceIntersection()Z
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x1

    return v0
.end method

.method public getEdgePath(FFFLcom/google/android/material/shape/ShapePath;)V
    .locals 10
    .param p1, "length"    # F
    .param p2, "center"    # F
    .param p3, "interpolation"    # F
    .param p4, "shapePath"    # Lcom/google/android/material/shape/ShapePath;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    .line 39
    iget v2, p0, Lcom/google/android/material/shape/MarkerEdgeTreatment;->radius:F

    float-to-double v2, v2

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    div-double/2addr v2, v8

    double-to-float v0, v2

    .line 40
    .local v0, "side":F
    iget v2, p0, Lcom/google/android/material/shape/MarkerEdgeTreatment;->radius:F

    float-to-double v2, v2

    invoke-static {v2, v3, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    float-to-double v4, v0

    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    sub-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v1, v2

    .line 41
    .local v1, "side2":F
    sub-float v2, p2, v0

    iget v3, p0, Lcom/google/android/material/shape/MarkerEdgeTreatment;->radius:F

    float-to-double v4, v3

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    iget v3, p0, Lcom/google/android/material/shape/MarkerEdgeTreatment;->radius:F

    float-to-double v6, v3

    sub-double/2addr v4, v6

    neg-double v4, v4

    double-to-float v3, v4

    add-float/2addr v3, v1

    invoke-virtual {p4, v2, v3}, Lcom/google/android/material/shape/ShapePath;->reset(FF)V

    .line 42
    iget v2, p0, Lcom/google/android/material/shape/MarkerEdgeTreatment;->radius:F

    float-to-double v2, v2

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    iget v4, p0, Lcom/google/android/material/shape/MarkerEdgeTreatment;->radius:F

    float-to-double v4, v4

    sub-double/2addr v2, v4

    neg-double v2, v2

    double-to-float v2, v2

    invoke-virtual {p4, p2, v2}, Lcom/google/android/material/shape/ShapePath;->lineTo(FF)V

    .line 43
    add-float v2, p2, v0

    iget v3, p0, Lcom/google/android/material/shape/MarkerEdgeTreatment;->radius:F

    float-to-double v4, v3

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    iget v3, p0, Lcom/google/android/material/shape/MarkerEdgeTreatment;->radius:F

    float-to-double v6, v3

    sub-double/2addr v4, v6

    neg-double v4, v4

    double-to-float v3, v4

    add-float/2addr v3, v1

    invoke-virtual {p4, v2, v3}, Lcom/google/android/material/shape/ShapePath;->lineTo(FF)V

    .line 44
    return-void
.end method

.class public Lcom/google/android/material/shape/CutCornerTreatment;
.super Lcom/google/android/material/shape/CornerTreatment;
.source "CutCornerTreatment.java"


# instance fields
.field size:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/google/android/material/shape/CornerTreatment;-><init>()V

    .line 24
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/google/android/material/shape/CutCornerTreatment;->size:F

    .line 26
    return-void
.end method

.method public constructor <init>(F)V
    .locals 1
    .param p1, "size"    # F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/google/android/material/shape/CornerTreatment;-><init>()V

    .line 24
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/google/android/material/shape/CutCornerTreatment;->size:F

    .line 41
    iput p1, p0, Lcom/google/android/material/shape/CutCornerTreatment;->size:F

    .line 42
    return-void
.end method


# virtual methods
.method public getCornerPath(Lcom/google/android/material/shape/ShapePath;FFF)V
    .locals 6
    .param p1, "shapePath"    # Lcom/google/android/material/shape/ShapePath;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "angle"    # F
    .param p3, "interpolation"    # F
    .param p4, "radius"    # F

    .prologue
    const/high16 v3, 0x43340000    # 180.0f

    .line 47
    const/4 v0, 0x0

    mul-float v1, p4, p3

    sub-float v2, v3, p2

    invoke-virtual {p1, v0, v1, v3, v2}, Lcom/google/android/material/shape/ShapePath;->reset(FFFF)V

    .line 48
    float-to-double v0, p2

    .line 49
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    float-to-double v2, p4

    mul-double/2addr v0, v2

    float-to-double v2, p3

    mul-double/2addr v0, v2

    double-to-float v0, v0

    const/high16 v1, 0x42b40000    # 90.0f

    sub-float/2addr v1, p2

    float-to-double v2, v1

    .line 52
    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    float-to-double v4, p4

    mul-double/2addr v2, v4

    float-to-double v4, p3

    mul-double/2addr v2, v4

    double-to-float v1, v2

    .line 48
    invoke-virtual {p1, v0, v1}, Lcom/google/android/material/shape/ShapePath;->lineTo(FF)V

    .line 53
    return-void
.end method

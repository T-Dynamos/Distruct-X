.class public Lcom/google/android/material/shape/RoundedCornerTreatment;
.super Lcom/google/android/material/shape/CornerTreatment;
.source "RoundedCornerTreatment.java"


# instance fields
.field radius:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/google/android/material/shape/CornerTreatment;-><init>()V

    .line 24
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/google/android/material/shape/RoundedCornerTreatment;->radius:F

    .line 26
    return-void
.end method

.method public constructor <init>(F)V
    .locals 1
    .param p1, "radius"    # F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/google/android/material/shape/CornerTreatment;-><init>()V

    .line 24
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/google/android/material/shape/RoundedCornerTreatment;->radius:F

    .line 37
    iput p1, p0, Lcom/google/android/material/shape/RoundedCornerTreatment;->radius:F

    .line 38
    return-void
.end method


# virtual methods
.method public getCornerPath(Lcom/google/android/material/shape/ShapePath;FFF)V
    .locals 7
    .param p1, "shapePath"    # Lcom/google/android/material/shape/ShapePath;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "angle"    # F
    .param p3, "interpolation"    # F
    .param p4, "radius"    # F

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    const/high16 v5, 0x43340000    # 180.0f

    const/4 v1, 0x0

    .line 43
    mul-float v0, p4, p3

    sub-float v2, v5, p2

    invoke-virtual {p1, v1, v0, v5, v2}, Lcom/google/android/material/shape/ShapePath;->reset(FFFF)V

    .line 44
    mul-float v0, v4, p4

    mul-float v3, v0, p3

    mul-float v0, v4, p4

    mul-float v4, v0, p3

    move-object v0, p1

    move v2, v1

    move v6, p2

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/material/shape/ShapePath;->addArc(FFFFFF)V

    .line 45
    return-void
.end method

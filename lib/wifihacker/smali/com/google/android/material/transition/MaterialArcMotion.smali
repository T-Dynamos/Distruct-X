.class public final Lcom/google/android/material/transition/MaterialArcMotion;
.super Landroidx/transition/PathMotion;
.source "MaterialArcMotion.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Landroidx/transition/PathMotion;-><init>()V

    return-void
.end method

.method private static getControlPoint(FFFF)Landroid/graphics/PointF;
    .locals 1
    .param p0, "startX"    # F
    .param p1, "startY"    # F
    .param p2, "endX"    # F
    .param p3, "endY"    # F

    .prologue
    .line 46
    cmpl-float v0, p1, p3

    if-lez v0, :cond_0

    .line 47
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, p2, p1}, Landroid/graphics/PointF;-><init>(FF)V

    .line 49
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, p0, p3}, Landroid/graphics/PointF;-><init>(FF)V

    goto :goto_0
.end method


# virtual methods
.method public getPath(FFFF)Landroid/graphics/Path;
    .locals 4
    .param p1, "startX"    # F
    .param p2, "startY"    # F
    .param p3, "endX"    # F
    .param p4, "endY"    # F
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 37
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 38
    .local v1, "path":Landroid/graphics/Path;
    invoke-virtual {v1, p1, p2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 40
    invoke-static {p1, p2, p3, p4}, Lcom/google/android/material/transition/MaterialArcMotion;->getControlPoint(FFFF)Landroid/graphics/PointF;

    move-result-object v0

    .line 41
    .local v0, "controlPoint":Landroid/graphics/PointF;
    iget v2, v0, Landroid/graphics/PointF;->x:F

    iget v3, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v2, v3, p3, p4}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 42
    return-object v1
.end method

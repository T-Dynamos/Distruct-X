.class public final Lcom/google/android/material/transition/platform/MaterialArcMotion;
.super Landroid/transition/PathMotion;
.source "MaterialArcMotion.java"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x15
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/transition/PathMotion;-><init>()V

    return-void
.end method

.method private static getControlPoint(FFFF)Landroid/graphics/PointF;
    .locals 1
    .param p0, "startX"    # F
    .param p1, "startY"    # F
    .param p2, "endX"    # F
    .param p3, "endY"    # F

    .prologue
    .line 51
    cmpl-float v0, p1, p3

    if-lez v0, :cond_0

    .line 52
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, p2, p1}, Landroid/graphics/PointF;-><init>(FF)V

    .line 54
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
    .line 42
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 43
    .local v1, "path":Landroid/graphics/Path;
    invoke-virtual {v1, p1, p2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 45
    invoke-static {p1, p2, p3, p4}, Lcom/google/android/material/transition/platform/MaterialArcMotion;->getControlPoint(FFFF)Landroid/graphics/PointF;

    move-result-object v0

    .line 46
    .local v0, "controlPoint":Landroid/graphics/PointF;
    iget v2, v0, Landroid/graphics/PointF;->x:F

    iget v3, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v2, v3, p3, p4}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 47
    return-object v1
.end method

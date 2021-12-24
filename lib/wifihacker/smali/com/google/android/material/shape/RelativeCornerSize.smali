.class public final Lcom/google/android/material/shape/RelativeCornerSize;
.super Ljava/lang/Object;
.source "RelativeCornerSize.java"

# interfaces
.implements Lcom/google/android/material/shape/CornerSize;


# instance fields
.field private final percent:F


# direct methods
.method public constructor <init>(F)V
    .locals 0
    .param p1, "percent"    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput p1, p0, Lcom/google/android/material/shape/RelativeCornerSize;->percent:F

    .line 38
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 53
    if-ne p0, p1, :cond_1

    .line 60
    :cond_0
    :goto_0
    return v1

    .line 56
    :cond_1
    instance-of v3, p1, Lcom/google/android/material/shape/RelativeCornerSize;

    if-nez v3, :cond_2

    move v1, v2

    .line 57
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 59
    check-cast v0, Lcom/google/android/material/shape/RelativeCornerSize;

    .line 60
    .local v0, "that":Lcom/google/android/material/shape/RelativeCornerSize;
    iget v3, p0, Lcom/google/android/material/shape/RelativeCornerSize;->percent:F

    iget v4, v0, Lcom/google/android/material/shape/RelativeCornerSize;->percent:F

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public getCornerSize(Landroid/graphics/RectF;)F
    .locals 2
    .param p1, "bounds"    # Landroid/graphics/RectF;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 48
    iget v0, p0, Lcom/google/android/material/shape/RelativeCornerSize;->percent:F

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v1

    mul-float/2addr v0, v1

    return v0
.end method

.method public getRelativePercent()F
    .locals 1
    .annotation build Landroidx/annotation/FloatRange;
        from = 0.0
        to = 1.0
    .end annotation

    .prologue
    .line 43
    iget v0, p0, Lcom/google/android/material/shape/RelativeCornerSize;->percent:F

    return v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 65
    const/4 v1, 0x1

    new-array v0, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/android/material/shape/RelativeCornerSize;->percent:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v0, v1

    .line 66
    .local v0, "hashedFields":[Ljava/lang/Object;
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    return v1
.end method

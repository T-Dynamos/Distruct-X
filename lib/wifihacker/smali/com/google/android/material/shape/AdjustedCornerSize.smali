.class public final Lcom/google/android/material/shape/AdjustedCornerSize;
.super Ljava/lang/Object;
.source "AdjustedCornerSize.java"

# interfaces
.implements Lcom/google/android/material/shape/CornerSize;


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# instance fields
.field private final adjustment:F

.field private final other:Lcom/google/android/material/shape/CornerSize;


# direct methods
.method public constructor <init>(FLcom/google/android/material/shape/CornerSize;)V
    .locals 1
    .param p1, "adjustment"    # F
    .param p2, "other"    # Lcom/google/android/material/shape/CornerSize;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    :goto_0
    instance-of v0, p2, Lcom/google/android/material/shape/AdjustedCornerSize;

    if-eqz v0, :cond_0

    .line 40
    check-cast p2, Lcom/google/android/material/shape/AdjustedCornerSize;

    .end local p2    # "other":Lcom/google/android/material/shape/CornerSize;
    iget-object p2, p2, Lcom/google/android/material/shape/AdjustedCornerSize;->other:Lcom/google/android/material/shape/CornerSize;

    .restart local p2    # "other":Lcom/google/android/material/shape/CornerSize;
    move-object v0, p2

    .line 41
    check-cast v0, Lcom/google/android/material/shape/AdjustedCornerSize;

    iget v0, v0, Lcom/google/android/material/shape/AdjustedCornerSize;->adjustment:F

    add-float/2addr p1, v0

    goto :goto_0

    .line 44
    :cond_0
    iput-object p2, p0, Lcom/google/android/material/shape/AdjustedCornerSize;->other:Lcom/google/android/material/shape/CornerSize;

    .line 45
    iput p1, p0, Lcom/google/android/material/shape/AdjustedCornerSize;->adjustment:F

    .line 46
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 55
    if-ne p0, p1, :cond_1

    .line 62
    :cond_0
    :goto_0
    return v1

    .line 58
    :cond_1
    instance-of v3, p1, Lcom/google/android/material/shape/AdjustedCornerSize;

    if-nez v3, :cond_2

    move v1, v2

    .line 59
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 61
    check-cast v0, Lcom/google/android/material/shape/AdjustedCornerSize;

    .line 62
    .local v0, "that":Lcom/google/android/material/shape/AdjustedCornerSize;
    iget-object v3, p0, Lcom/google/android/material/shape/AdjustedCornerSize;->other:Lcom/google/android/material/shape/CornerSize;

    iget-object v4, v0, Lcom/google/android/material/shape/AdjustedCornerSize;->other:Lcom/google/android/material/shape/CornerSize;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget v3, p0, Lcom/google/android/material/shape/AdjustedCornerSize;->adjustment:F

    iget v4, v0, Lcom/google/android/material/shape/AdjustedCornerSize;->adjustment:F

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public getCornerSize(Landroid/graphics/RectF;)F
    .locals 3
    .param p1, "bounds"    # Landroid/graphics/RectF;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 50
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/material/shape/AdjustedCornerSize;->other:Lcom/google/android/material/shape/CornerSize;

    invoke-interface {v1, p1}, Lcom/google/android/material/shape/CornerSize;->getCornerSize(Landroid/graphics/RectF;)F

    move-result v1

    iget v2, p0, Lcom/google/android/material/shape/AdjustedCornerSize;->adjustment:F

    add-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 67
    const/4 v1, 0x2

    new-array v0, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/material/shape/AdjustedCornerSize;->other:Lcom/google/android/material/shape/CornerSize;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/google/android/material/shape/AdjustedCornerSize;->adjustment:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v0, v1

    .line 68
    .local v0, "hashedFields":[Ljava/lang/Object;
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    return v1
.end method

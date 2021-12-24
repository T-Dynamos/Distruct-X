.class public final Lcom/google/android/material/shape/AbsoluteCornerSize;
.super Ljava/lang/Object;
.source "AbsoluteCornerSize.java"

# interfaces
.implements Lcom/google/android/material/shape/CornerSize;


# instance fields
.field private final size:F


# direct methods
.method public constructor <init>(F)V
    .locals 0
    .param p1, "size"    # F

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput p1, p0, Lcom/google/android/material/shape/AbsoluteCornerSize;->size:F

    .line 30
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 46
    if-ne p0, p1, :cond_1

    .line 53
    :cond_0
    :goto_0
    return v1

    .line 49
    :cond_1
    instance-of v3, p1, Lcom/google/android/material/shape/AbsoluteCornerSize;

    if-nez v3, :cond_2

    move v1, v2

    .line 50
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 52
    check-cast v0, Lcom/google/android/material/shape/AbsoluteCornerSize;

    .line 53
    .local v0, "that":Lcom/google/android/material/shape/AbsoluteCornerSize;
    iget v3, p0, Lcom/google/android/material/shape/AbsoluteCornerSize;->size:F

    iget v4, v0, Lcom/google/android/material/shape/AbsoluteCornerSize;->size:F

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public getCornerSize()F
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lcom/google/android/material/shape/AbsoluteCornerSize;->size:F

    return v0
.end method

.method public getCornerSize(Landroid/graphics/RectF;)F
    .locals 1
    .param p1, "bounds"    # Landroid/graphics/RectF;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 34
    iget v0, p0, Lcom/google/android/material/shape/AbsoluteCornerSize;->size:F

    return v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 58
    const/4 v1, 0x1

    new-array v0, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/android/material/shape/AbsoluteCornerSize;->size:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v0, v1

    .line 59
    .local v0, "hashedFields":[Ljava/lang/Object;
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    return v1
.end method

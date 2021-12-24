.class Landroidx/transition/TransitionUtils$MatrixEvaluator;
.super Ljava/lang/Object;
.source "TransitionUtils.java"

# interfaces
.implements Landroid/animation/TypeEvaluator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/transition/TransitionUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MatrixEvaluator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/animation/TypeEvaluator",
        "<",
        "Landroid/graphics/Matrix;",
        ">;"
    }
.end annotation


# instance fields
.field final mTempEndValues:[F

.field final mTempMatrix:Landroid/graphics/Matrix;

.field final mTempStartValues:[F


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0x9

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    new-array v0, v1, [F

    iput-object v0, p0, Landroidx/transition/TransitionUtils$MatrixEvaluator;->mTempStartValues:[F

    .line 159
    new-array v0, v1, [F

    iput-object v0, p0, Landroidx/transition/TransitionUtils$MatrixEvaluator;->mTempEndValues:[F

    .line 161
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroidx/transition/TransitionUtils$MatrixEvaluator;->mTempMatrix:Landroid/graphics/Matrix;

    return-void
.end method


# virtual methods
.method public evaluate(FLandroid/graphics/Matrix;Landroid/graphics/Matrix;)Landroid/graphics/Matrix;
    .locals 5
    .param p1, "fraction"    # F
    .param p2, "startValue"    # Landroid/graphics/Matrix;
    .param p3, "endValue"    # Landroid/graphics/Matrix;

    .prologue
    .line 165
    iget-object v2, p0, Landroidx/transition/TransitionUtils$MatrixEvaluator;->mTempStartValues:[F

    invoke-virtual {p2, v2}, Landroid/graphics/Matrix;->getValues([F)V

    .line 166
    iget-object v2, p0, Landroidx/transition/TransitionUtils$MatrixEvaluator;->mTempEndValues:[F

    invoke-virtual {p3, v2}, Landroid/graphics/Matrix;->getValues([F)V

    .line 167
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v2, 0x9

    if-ge v1, v2, :cond_0

    .line 168
    iget-object v2, p0, Landroidx/transition/TransitionUtils$MatrixEvaluator;->mTempEndValues:[F

    aget v2, v2, v1

    iget-object v3, p0, Landroidx/transition/TransitionUtils$MatrixEvaluator;->mTempStartValues:[F

    aget v3, v3, v1

    sub-float v0, v2, v3

    .line 169
    .local v0, "diff":F
    iget-object v2, p0, Landroidx/transition/TransitionUtils$MatrixEvaluator;->mTempEndValues:[F

    iget-object v3, p0, Landroidx/transition/TransitionUtils$MatrixEvaluator;->mTempStartValues:[F

    aget v3, v3, v1

    mul-float v4, p1, v0

    add-float/2addr v3, v4

    aput v3, v2, v1

    .line 167
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 171
    .end local v0    # "diff":F
    :cond_0
    iget-object v2, p0, Landroidx/transition/TransitionUtils$MatrixEvaluator;->mTempMatrix:Landroid/graphics/Matrix;

    iget-object v3, p0, Landroidx/transition/TransitionUtils$MatrixEvaluator;->mTempEndValues:[F

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->setValues([F)V

    .line 172
    iget-object v2, p0, Landroidx/transition/TransitionUtils$MatrixEvaluator;->mTempMatrix:Landroid/graphics/Matrix;

    return-object v2
.end method

.method public bridge synthetic evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 155
    check-cast p2, Landroid/graphics/Matrix;

    check-cast p3, Landroid/graphics/Matrix;

    invoke-virtual {p0, p1, p2, p3}, Landroidx/transition/TransitionUtils$MatrixEvaluator;->evaluate(FLandroid/graphics/Matrix;Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    move-result-object v0

    return-object v0
.end method

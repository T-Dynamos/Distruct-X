.class public final Lcom/google/android/material/transition/FadeThroughProvider;
.super Ljava/lang/Object;
.source "FadeThroughProvider.java"

# interfaces
.implements Lcom/google/android/material/transition/VisibilityAnimatorProvider;


# static fields
.field static final FADE_THROUGH_THRESHOLD:F = 0.35f


# instance fields
.field private progressThreshold:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const v0, 0x3eb33333    # 0.35f

    iput v0, p0, Lcom/google/android/material/transition/FadeThroughProvider;->progressThreshold:F

    return-void
.end method

.method private static createFadeThroughAnimator(Landroid/view/View;FFFFF)Landroid/animation/Animator;
    .locals 7
    .param p0, "view"    # Landroid/view/View;
    .param p1, "startValue"    # F
    .param p2, "endValue"    # F
    .param p3, "startFraction"    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param
    .param p4, "endFraction"    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param
    .param p5, "originalAlpha"    # F

    .prologue
    .line 95
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v6

    .line 96
    .local v6, "animator":Landroid/animation/ValueAnimator;
    new-instance v0, Lcom/google/android/material/transition/FadeThroughProvider$1;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/material/transition/FadeThroughProvider$1;-><init>(Landroid/view/View;FFFF)V

    invoke-virtual {v6, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 104
    new-instance v0, Lcom/google/android/material/transition/FadeThroughProvider$2;

    invoke-direct {v0, p0, p5}, Lcom/google/android/material/transition/FadeThroughProvider$2;-><init>(Landroid/view/View;F)V

    invoke-virtual {v6, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 112
    return-object v6

    .line 95
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public createAppear(Landroid/view/ViewGroup;Landroid/view/View;)Landroid/animation/Animator;
    .locals 6
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "view"    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 65
    invoke-virtual {p2}, Landroid/view/View;->getAlpha()F

    move-result v0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    move v2, v4

    .line 66
    .local v2, "originalAlpha":F
    :goto_0
    iget v3, p0, Lcom/google/android/material/transition/FadeThroughProvider;->progressThreshold:F

    move-object v0, p2

    move v5, v2

    invoke-static/range {v0 .. v5}, Lcom/google/android/material/transition/FadeThroughProvider;->createFadeThroughAnimator(Landroid/view/View;FFFFF)Landroid/animation/Animator;

    move-result-object v0

    return-object v0

    .line 65
    .end local v2    # "originalAlpha":F
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getAlpha()F

    move-result v2

    goto :goto_0
.end method

.method public createDisappear(Landroid/view/ViewGroup;Landroid/view/View;)Landroid/animation/Animator;
    .locals 6
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "view"    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 78
    invoke-virtual {p2}, Landroid/view/View;->getAlpha()F

    move-result v0

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 79
    .local v1, "originalAlpha":F
    :goto_0
    iget v4, p0, Lcom/google/android/material/transition/FadeThroughProvider;->progressThreshold:F

    move-object v0, p2

    move v3, v2

    move v5, v1

    invoke-static/range {v0 .. v5}, Lcom/google/android/material/transition/FadeThroughProvider;->createFadeThroughAnimator(Landroid/view/View;FFFFF)Landroid/animation/Animator;

    move-result-object v0

    return-object v0

    .line 78
    .end local v1    # "originalAlpha":F
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getAlpha()F

    move-result v1

    goto :goto_0
.end method

.method public getProgressThreshold()F
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lcom/google/android/material/transition/FadeThroughProvider;->progressThreshold:F

    return v0
.end method

.method public setProgressThreshold(F)V
    .locals 0
    .param p1, "progressThreshold"    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    .prologue
    .line 59
    iput p1, p0, Lcom/google/android/material/transition/FadeThroughProvider;->progressThreshold:F

    .line 60
    return-void
.end method

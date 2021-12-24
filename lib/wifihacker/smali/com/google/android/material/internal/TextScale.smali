.class public Lcom/google/android/material/internal/TextScale;
.super Landroidx/transition/Transition;
.source "TextScale.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field private static final PROPNAME_SCALE:Ljava/lang/String; = "android:textscale:scale"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Landroidx/transition/Transition;-><init>()V

    return-void
.end method

.method private captureValues(Landroidx/transition/TransitionValues;)V
    .locals 4
    .param p1, "transitionValues"    # Landroidx/transition/TransitionValues;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 48
    iget-object v1, p1, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    instance-of v1, v1, Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 49
    iget-object v0, p1, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    .line 50
    .local v0, "textview":Landroid/widget/TextView;
    iget-object v1, p1, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v2, "android:textscale:scale"

    invoke-virtual {v0}, Landroid/widget/TextView;->getScaleX()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .end local v0    # "textview":Landroid/widget/TextView;
    :cond_0
    return-void
.end method


# virtual methods
.method public captureEndValues(Landroidx/transition/TransitionValues;)V
    .locals 0
    .param p1, "transitionValues"    # Landroidx/transition/TransitionValues;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/google/android/material/internal/TextScale;->captureValues(Landroidx/transition/TransitionValues;)V

    .line 45
    return-void
.end method

.method public captureStartValues(Landroidx/transition/TransitionValues;)V
    .locals 0
    .param p1, "transitionValues"    # Landroidx/transition/TransitionValues;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/google/android/material/internal/TextScale;->captureValues(Landroidx/transition/TransitionValues;)V

    .line 40
    return-void
.end method

.method public createAnimator(Landroid/view/ViewGroup;Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 8
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "startValues"    # Landroidx/transition/TransitionValues;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "endValues"    # Landroidx/transition/TransitionValues;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    .line 59
    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    iget-object v6, p2, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    instance-of v6, v6, Landroid/widget/TextView;

    if-eqz v6, :cond_0

    iget-object v6, p3, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    instance-of v6, v6, Landroid/widget/TextView;

    if-nez v6, :cond_1

    .line 87
    :cond_0
    :goto_0
    return-object v0

    .line 65
    :cond_1
    iget-object v5, p3, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    check-cast v5, Landroid/widget/TextView;

    .line 66
    .local v5, "view":Landroid/widget/TextView;
    iget-object v4, p2, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    .line 67
    .local v4, "startVals":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v2, p3, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    .line 68
    .local v2, "endVals":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v6, "android:textscale:scale"

    .line 69
    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_2

    const-string v6, "android:textscale:scale"

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v3

    .line 70
    .local v3, "startSize":F
    :goto_1
    const-string v6, "android:textscale:scale"

    .line 71
    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_3

    const-string v6, "android:textscale:scale"

    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 72
    .local v1, "endSize":F
    :goto_2
    cmpl-float v6, v3, v1

    if-eqz v6, :cond_0

    .line 76
    const/4 v6, 0x2

    new-array v6, v6, [F

    const/4 v7, 0x0

    aput v3, v6, v7

    const/4 v7, 0x1

    aput v1, v6, v7

    invoke-static {v6}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 78
    .local v0, "animator":Landroid/animation/ValueAnimator;
    new-instance v6, Lcom/google/android/material/internal/TextScale$1;

    invoke-direct {v6, p0, v5}, Lcom/google/android/material/internal/TextScale$1;-><init>(Lcom/google/android/material/internal/TextScale;Landroid/widget/TextView;)V

    invoke-virtual {v0, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    goto :goto_0

    .end local v0    # "animator":Landroid/animation/ValueAnimator;
    .end local v1    # "endSize":F
    .end local v3    # "startSize":F
    :cond_2
    move v3, v7

    .line 69
    goto :goto_1

    .restart local v3    # "startSize":F
    :cond_3
    move v1, v7

    .line 71
    goto :goto_2
.end method

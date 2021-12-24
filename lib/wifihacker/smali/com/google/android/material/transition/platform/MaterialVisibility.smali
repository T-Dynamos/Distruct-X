.class abstract Lcom/google/android/material/transition/platform/MaterialVisibility;
.super Landroid/transition/Visibility;
.source "MaterialVisibility.java"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x15
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<P::",
        "Lcom/google/android/material/transition/platform/VisibilityAnimatorProvider;",
        ">",
        "Landroid/transition/Visibility;"
    }
.end annotation


# instance fields
.field private final additionalAnimatorProviders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/material/transition/platform/VisibilityAnimatorProvider;",
            ">;"
        }
    .end annotation
.end field

.field private final primaryAnimatorProvider:Lcom/google/android/material/transition/platform/VisibilityAnimatorProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TP;"
        }
    .end annotation
.end field

.field private secondaryAnimatorProvider:Lcom/google/android/material/transition/platform/VisibilityAnimatorProvider;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/google/android/material/transition/platform/VisibilityAnimatorProvider;Lcom/google/android/material/transition/platform/VisibilityAnimatorProvider;)V
    .locals 1
    .param p2, "secondaryAnimatorProvider"    # Lcom/google/android/material/transition/platform/VisibilityAnimatorProvider;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TP;",
            "Lcom/google/android/material/transition/platform/VisibilityAnimatorProvider;",
            ")V"
        }
    .end annotation

    .prologue
    .line 48
    .local p0, "this":Lcom/google/android/material/transition/platform/MaterialVisibility;, "Lcom/google/android/material/transition/platform/MaterialVisibility<TP;>;"
    .local p1, "primaryAnimatorProvider":Lcom/google/android/material/transition/platform/VisibilityAnimatorProvider;, "TP;"
    invoke-direct {p0}, Landroid/transition/Visibility;-><init>()V

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/transition/platform/MaterialVisibility;->additionalAnimatorProviders:Ljava/util/List;

    .line 49
    iput-object p1, p0, Lcom/google/android/material/transition/platform/MaterialVisibility;->primaryAnimatorProvider:Lcom/google/android/material/transition/platform/VisibilityAnimatorProvider;

    .line 50
    iput-object p2, p0, Lcom/google/android/material/transition/platform/MaterialVisibility;->secondaryAnimatorProvider:Lcom/google/android/material/transition/platform/VisibilityAnimatorProvider;

    .line 51
    return-void
.end method

.method private static addAnimatorIfNeeded(Ljava/util/List;Lcom/google/android/material/transition/platform/VisibilityAnimatorProvider;Landroid/view/ViewGroup;Landroid/view/View;Z)V
    .locals 1
    .param p1, "animatorProvider"    # Lcom/google/android/material/transition/platform/VisibilityAnimatorProvider;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p3, "view"    # Landroid/view/View;
    .param p4, "appearing"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator;",
            ">;",
            "Lcom/google/android/material/transition/platform/VisibilityAnimatorProvider;",
            "Landroid/view/ViewGroup;",
            "Landroid/view/View;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 152
    .local p0, "animators":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    if-nez p1, :cond_1

    .line 162
    :cond_0
    :goto_0
    return-void

    .line 155
    :cond_1
    if-eqz p4, :cond_2

    .line 157
    invoke-interface {p1, p2, p3}, Lcom/google/android/material/transition/platform/VisibilityAnimatorProvider;->createAppear(Landroid/view/ViewGroup;Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v0

    .line 159
    .local v0, "animator":Landroid/animation/Animator;
    :goto_1
    if-eqz v0, :cond_0

    .line 160
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 158
    .end local v0    # "animator":Landroid/animation/Animator;
    :cond_2
    invoke-interface {p1, p2, p3}, Lcom/google/android/material/transition/platform/VisibilityAnimatorProvider;->createDisappear(Landroid/view/ViewGroup;Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v0

    goto :goto_1
.end method

.method private createAnimator(Landroid/view/ViewGroup;Landroid/view/View;Z)Landroid/animation/Animator;
    .locals 5
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "view"    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "appearing"    # Z

    .prologue
    .line 129
    .local p0, "this":Lcom/google/android/material/transition/platform/MaterialVisibility;, "Lcom/google/android/material/transition/platform/MaterialVisibility<TP;>;"
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 130
    .local v2, "set":Landroid/animation/AnimatorSet;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 132
    .local v1, "animators":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    iget-object v3, p0, Lcom/google/android/material/transition/platform/MaterialVisibility;->primaryAnimatorProvider:Lcom/google/android/material/transition/platform/VisibilityAnimatorProvider;

    invoke-static {v1, v3, p1, p2, p3}, Lcom/google/android/material/transition/platform/MaterialVisibility;->addAnimatorIfNeeded(Ljava/util/List;Lcom/google/android/material/transition/platform/VisibilityAnimatorProvider;Landroid/view/ViewGroup;Landroid/view/View;Z)V

    .line 134
    iget-object v3, p0, Lcom/google/android/material/transition/platform/MaterialVisibility;->secondaryAnimatorProvider:Lcom/google/android/material/transition/platform/VisibilityAnimatorProvider;

    invoke-static {v1, v3, p1, p2, p3}, Lcom/google/android/material/transition/platform/MaterialVisibility;->addAnimatorIfNeeded(Ljava/util/List;Lcom/google/android/material/transition/platform/VisibilityAnimatorProvider;Landroid/view/ViewGroup;Landroid/view/View;Z)V

    .line 136
    iget-object v3, p0, Lcom/google/android/material/transition/platform/MaterialVisibility;->additionalAnimatorProviders:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/transition/platform/VisibilityAnimatorProvider;

    .line 137
    .local v0, "additionalAnimatorProvider":Lcom/google/android/material/transition/platform/VisibilityAnimatorProvider;
    invoke-static {v1, v0, p1, p2, p3}, Lcom/google/android/material/transition/platform/MaterialVisibility;->addAnimatorIfNeeded(Ljava/util/List;Lcom/google/android/material/transition/platform/VisibilityAnimatorProvider;Landroid/view/ViewGroup;Landroid/view/View;Z)V

    goto :goto_0

    .line 140
    .end local v0    # "additionalAnimatorProvider":Lcom/google/android/material/transition/platform/VisibilityAnimatorProvider;
    :cond_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {p0, v3, p3}, Lcom/google/android/material/transition/platform/MaterialVisibility;->maybeApplyThemeValues(Landroid/content/Context;Z)V

    .line 142
    invoke-static {v2, v1}, Lcom/google/android/material/animation/AnimatorSetCompat;->playTogether(Landroid/animation/AnimatorSet;Ljava/util/List;)V

    .line 143
    return-object v2
.end method

.method private maybeApplyThemeValues(Landroid/content/Context;Z)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "appearing"    # Z

    .prologue
    .line 165
    .local p0, "this":Lcom/google/android/material/transition/platform/MaterialVisibility;, "Lcom/google/android/material/transition/platform/MaterialVisibility<TP;>;"
    invoke-virtual {p0, p2}, Lcom/google/android/material/transition/platform/MaterialVisibility;->getDurationThemeAttrResId(Z)I

    move-result v0

    invoke-static {p0, p1, v0}, Lcom/google/android/material/transition/platform/TransitionUtils;->maybeApplyThemeDuration(Landroid/transition/Transition;Landroid/content/Context;I)Z

    .line 167
    invoke-virtual {p0, p2}, Lcom/google/android/material/transition/platform/MaterialVisibility;->getEasingThemeAttrResId(Z)I

    move-result v0

    invoke-virtual {p0, p2}, Lcom/google/android/material/transition/platform/MaterialVisibility;->getDefaultEasingInterpolator(Z)Landroid/animation/TimeInterpolator;

    move-result-object v1

    .line 166
    invoke-static {p0, p1, v0, v1}, Lcom/google/android/material/transition/platform/TransitionUtils;->maybeApplyThemeInterpolator(Landroid/transition/Transition;Landroid/content/Context;ILandroid/animation/TimeInterpolator;)Z

    .line 168
    return-void
.end method


# virtual methods
.method public addAdditionalAnimatorProvider(Lcom/google/android/material/transition/platform/VisibilityAnimatorProvider;)V
    .locals 1
    .param p1, "additionalAnimatorProvider"    # Lcom/google/android/material/transition/platform/VisibilityAnimatorProvider;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 92
    .local p0, "this":Lcom/google/android/material/transition/platform/MaterialVisibility;, "Lcom/google/android/material/transition/platform/MaterialVisibility<TP;>;"
    iget-object v0, p0, Lcom/google/android/material/transition/platform/MaterialVisibility;->additionalAnimatorProviders:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    return-void
.end method

.method public clearAdditionalAnimatorProvider()V
    .locals 1

    .prologue
    .line 112
    .local p0, "this":Lcom/google/android/material/transition/platform/MaterialVisibility;, "Lcom/google/android/material/transition/platform/MaterialVisibility<TP;>;"
    iget-object v0, p0, Lcom/google/android/material/transition/platform/MaterialVisibility;->additionalAnimatorProviders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 113
    return-void
.end method

.method getDefaultEasingInterpolator(Z)Landroid/animation/TimeInterpolator;
    .locals 1
    .param p1, "appearing"    # Z
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 182
    .local p0, "this":Lcom/google/android/material/transition/platform/MaterialVisibility;, "Lcom/google/android/material/transition/platform/MaterialVisibility<TP;>;"
    sget-object v0, Lcom/google/android/material/animation/AnimationUtils;->FAST_OUT_SLOW_IN_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    return-object v0
.end method

.method getDurationThemeAttrResId(Z)I
    .locals 1
    .param p1, "appearing"    # Z
    .annotation build Landroidx/annotation/AttrRes;
    .end annotation

    .prologue
    .line 172
    .local p0, "this":Lcom/google/android/material/transition/platform/MaterialVisibility;, "Lcom/google/android/material/transition/platform/MaterialVisibility<TP;>;"
    const/4 v0, 0x0

    return v0
.end method

.method getEasingThemeAttrResId(Z)I
    .locals 1
    .param p1, "appearing"    # Z
    .annotation build Landroidx/annotation/AttrRes;
    .end annotation

    .prologue
    .line 177
    .local p0, "this":Lcom/google/android/material/transition/platform/MaterialVisibility;, "Lcom/google/android/material/transition/platform/MaterialVisibility<TP;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public getPrimaryAnimatorProvider()Lcom/google/android/material/transition/platform/VisibilityAnimatorProvider;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TP;"
        }
    .end annotation

    .prologue
    .line 59
    .local p0, "this":Lcom/google/android/material/transition/platform/MaterialVisibility;, "Lcom/google/android/material/transition/platform/MaterialVisibility<TP;>;"
    iget-object v0, p0, Lcom/google/android/material/transition/platform/MaterialVisibility;->primaryAnimatorProvider:Lcom/google/android/material/transition/platform/VisibilityAnimatorProvider;

    return-object v0
.end method

.method public getSecondaryAnimatorProvider()Lcom/google/android/material/transition/platform/VisibilityAnimatorProvider;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 70
    .local p0, "this":Lcom/google/android/material/transition/platform/MaterialVisibility;, "Lcom/google/android/material/transition/platform/MaterialVisibility<TP;>;"
    iget-object v0, p0, Lcom/google/android/material/transition/platform/MaterialVisibility;->secondaryAnimatorProvider:Lcom/google/android/material/transition/platform/VisibilityAnimatorProvider;

    return-object v0
.end method

.method public onAppear(Landroid/view/ViewGroup;Landroid/view/View;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 1
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "startValues"    # Landroid/transition/TransitionValues;
    .param p4, "endValues"    # Landroid/transition/TransitionValues;

    .prologue
    .line 118
    .local p0, "this":Lcom/google/android/material/transition/platform/MaterialVisibility;, "Lcom/google/android/material/transition/platform/MaterialVisibility<TP;>;"
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/transition/platform/MaterialVisibility;->createAnimator(Landroid/view/ViewGroup;Landroid/view/View;Z)Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method

.method public onDisappear(Landroid/view/ViewGroup;Landroid/view/View;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 1
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "startValues"    # Landroid/transition/TransitionValues;
    .param p4, "endValues"    # Landroid/transition/TransitionValues;

    .prologue
    .line 124
    .local p0, "this":Lcom/google/android/material/transition/platform/MaterialVisibility;, "Lcom/google/android/material/transition/platform/MaterialVisibility<TP;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/transition/platform/MaterialVisibility;->createAnimator(Landroid/view/ViewGroup;Landroid/view/View;Z)Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method

.method public removeAdditionalAnimatorProvider(Lcom/google/android/material/transition/platform/VisibilityAnimatorProvider;)Z
    .locals 1
    .param p1, "additionalAnimatorProvider"    # Lcom/google/android/material/transition/platform/VisibilityAnimatorProvider;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 102
    .local p0, "this":Lcom/google/android/material/transition/platform/MaterialVisibility;, "Lcom/google/android/material/transition/platform/MaterialVisibility<TP;>;"
    iget-object v0, p0, Lcom/google/android/material/transition/platform/MaterialVisibility;->additionalAnimatorProviders:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setSecondaryAnimatorProvider(Lcom/google/android/material/transition/platform/VisibilityAnimatorProvider;)V
    .locals 0
    .param p1, "secondaryAnimatorProvider"    # Lcom/google/android/material/transition/platform/VisibilityAnimatorProvider;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 79
    .local p0, "this":Lcom/google/android/material/transition/platform/MaterialVisibility;, "Lcom/google/android/material/transition/platform/MaterialVisibility<TP;>;"
    iput-object p1, p0, Lcom/google/android/material/transition/platform/MaterialVisibility;->secondaryAnimatorProvider:Lcom/google/android/material/transition/platform/VisibilityAnimatorProvider;

    .line 80
    return-void
.end method

.class public Lcom/google/android/material/transformation/FabTransformationScrimBehavior;
.super Lcom/google/android/material/transformation/ExpandableTransformationBehavior;
.source "FabTransformationScrimBehavior.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final COLLAPSE_DELAY:J = 0x0L

.field public static final COLLAPSE_DURATION:J = 0x96L

.field public static final EXPAND_DELAY:J = 0x4bL

.field public static final EXPAND_DURATION:J = 0x96L


# instance fields
.field private final collapseTiming:Lcom/google/android/material/animation/MotionTiming;

.field private final expandTiming:Lcom/google/android/material/animation/MotionTiming;


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x96

    .line 55
    invoke-direct {p0}, Lcom/google/android/material/transformation/ExpandableTransformationBehavior;-><init>()V

    .line 52
    new-instance v0, Lcom/google/android/material/animation/MotionTiming;

    const-wide/16 v2, 0x4b

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/google/android/material/animation/MotionTiming;-><init>(JJ)V

    iput-object v0, p0, Lcom/google/android/material/transformation/FabTransformationScrimBehavior;->expandTiming:Lcom/google/android/material/animation/MotionTiming;

    .line 53
    new-instance v0, Lcom/google/android/material/animation/MotionTiming;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/google/android/material/animation/MotionTiming;-><init>(JJ)V

    iput-object v0, p0, Lcom/google/android/material/transformation/FabTransformationScrimBehavior;->collapseTiming:Lcom/google/android/material/animation/MotionTiming;

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const-wide/16 v4, 0x96

    .line 58
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/transformation/ExpandableTransformationBehavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 52
    new-instance v0, Lcom/google/android/material/animation/MotionTiming;

    const-wide/16 v2, 0x4b

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/google/android/material/animation/MotionTiming;-><init>(JJ)V

    iput-object v0, p0, Lcom/google/android/material/transformation/FabTransformationScrimBehavior;->expandTiming:Lcom/google/android/material/animation/MotionTiming;

    .line 53
    new-instance v0, Lcom/google/android/material/animation/MotionTiming;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/google/android/material/animation/MotionTiming;-><init>(JJ)V

    iput-object v0, p0, Lcom/google/android/material/transformation/FabTransformationScrimBehavior;->collapseTiming:Lcom/google/android/material/animation/MotionTiming;

    .line 59
    return-void
.end method

.method private createScrimAnimation(Landroid/view/View;ZZLjava/util/List;Ljava/util/List;)V
    .locals 6
    .param p1, "child"    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "expanded"    # Z
    .param p3, "currentlyAnimating"    # Z
    .param p4    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "ZZ",
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator$AnimatorListener;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p4, "animations":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    .local p5, "unusedListeners":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator$AnimatorListener;>;"
    const/4 v3, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 112
    if-eqz p2, :cond_1

    iget-object v1, p0, Lcom/google/android/material/transformation/FabTransformationScrimBehavior;->expandTiming:Lcom/google/android/material/animation/MotionTiming;

    .line 115
    .local v1, "timing":Lcom/google/android/material/animation/MotionTiming;
    :goto_0
    if-eqz p2, :cond_2

    .line 116
    if-nez p3, :cond_0

    .line 117
    invoke-virtual {p1, v4}, Landroid/view/View;->setAlpha(F)V

    .line 119
    :cond_0
    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v3, v3, [F

    const/high16 v4, 0x3f800000    # 1.0f

    aput v4, v3, v5

    invoke-static {p1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 124
    .local v0, "animator":Landroid/animation/Animator;
    :goto_1
    invoke-virtual {v1, v0}, Lcom/google/android/material/animation/MotionTiming;->apply(Landroid/animation/Animator;)V

    .line 125
    invoke-interface {p4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 126
    return-void

    .line 112
    .end local v0    # "animator":Landroid/animation/Animator;
    .end local v1    # "timing":Lcom/google/android/material/animation/MotionTiming;
    :cond_1
    iget-object v1, p0, Lcom/google/android/material/transformation/FabTransformationScrimBehavior;->collapseTiming:Lcom/google/android/material/animation/MotionTiming;

    goto :goto_0

    .line 121
    .restart local v1    # "timing":Lcom/google/android/material/animation/MotionTiming;
    :cond_2
    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v3, v3, [F

    aput v4, v3, v5

    invoke-static {p1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .restart local v0    # "animator":Landroid/animation/Animator;
    goto :goto_1
.end method


# virtual methods
.method public layoutDependsOn(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z
    .locals 1
    .param p1, "parent"    # Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "dependency"    # Landroid/view/View;

    .prologue
    .line 63
    instance-of v0, p3, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    return v0
.end method

.method protected onCreateExpandedStateChangeAnimation(Landroid/view/View;Landroid/view/View;ZZ)Landroid/animation/AnimatorSet;
    .locals 7
    .param p1, "dependency"    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "child"    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "expanded"    # Z
    .param p4, "isAnimating"    # Z
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 80
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 81
    .local v4, "animations":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .local v5, "listeners":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator$AnimatorListener;>;"
    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v3, p4

    .line 83
    invoke-direct/range {v0 .. v5}, Lcom/google/android/material/transformation/FabTransformationScrimBehavior;->createScrimAnimation(Landroid/view/View;ZZLjava/util/List;Ljava/util/List;)V

    .line 85
    new-instance v6, Landroid/animation/AnimatorSet;

    invoke-direct {v6}, Landroid/animation/AnimatorSet;-><init>()V

    .line 86
    .local v6, "set":Landroid/animation/AnimatorSet;
    invoke-static {v6, v4}, Lcom/google/android/material/animation/AnimatorSetCompat;->playTogether(Landroid/animation/AnimatorSet;Ljava/util/List;)V

    .line 87
    new-instance v0, Lcom/google/android/material/transformation/FabTransformationScrimBehavior$1;

    invoke-direct {v0, p0, p3, p2}, Lcom/google/android/material/transformation/FabTransformationScrimBehavior$1;-><init>(Lcom/google/android/material/transformation/FabTransformationScrimBehavior;ZLandroid/view/View;)V

    invoke-virtual {v6, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 103
    return-object v6
.end method

.method public onTouchEvent(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "parent"    # Landroidx/coordinatorlayout/widget/CoordinatorLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "child"    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "ev"    # Landroid/view/MotionEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 70
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/material/transformation/ExpandableTransformationBehavior;->onTouchEvent(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

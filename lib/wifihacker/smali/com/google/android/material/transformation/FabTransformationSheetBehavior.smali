.class public Lcom/google/android/material/transformation/FabTransformationSheetBehavior;
.super Lcom/google/android/material/transformation/FabTransformationBehavior;
.source "FabTransformationSheetBehavior.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private importantForAccessibilityMap:Ljava/util/Map;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/google/android/material/transformation/FabTransformationBehavior;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/transformation/FabTransformationBehavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 57
    return-void
.end method

.method private updateImportantForAccessibility(Landroid/view/View;Z)V
    .locals 9
    .param p1, "sheet"    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "expanded"    # Z

    .prologue
    const/16 v8, 0x10

    .line 84
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    .line 85
    .local v5, "viewParent":Landroid/view/ViewParent;
    instance-of v6, v5, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    if-nez v6, :cond_1

    .line 127
    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v4, v5

    .line 89
    check-cast v4, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 90
    .local v4, "parent":Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    invoke-virtual {v4}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getChildCount()I

    move-result v1

    .line 91
    .local v1, "childCount":I
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v6, v8, :cond_2

    if-eqz p2, :cond_2

    .line 92
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v6, p0, Lcom/google/android/material/transformation/FabTransformationSheetBehavior;->importantForAccessibilityMap:Ljava/util/Map;

    .line 95
    :cond_2
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v1, :cond_8

    .line 96
    invoke-virtual {v4, v3}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 100
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    instance-of v6, v6, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    if-eqz v6, :cond_4

    .line 101
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    invoke-virtual {v6}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->getBehavior()Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    move-result-object v6

    instance-of v6, v6, Lcom/google/android/material/transformation/FabTransformationScrimBehavior;

    if-eqz v6, :cond_4

    const/4 v2, 0x1

    .line 103
    .local v2, "hasScrimBehavior":Z
    :goto_2
    if-eq v0, p1, :cond_3

    if-eqz v2, :cond_5

    .line 95
    :cond_3
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 101
    .end local v2    # "hasScrimBehavior":Z
    :cond_4
    const/4 v2, 0x0

    goto :goto_2

    .line 107
    .restart local v2    # "hasScrimBehavior":Z
    :cond_5
    if-nez p2, :cond_6

    .line 108
    iget-object v6, p0, Lcom/google/android/material/transformation/FabTransformationSheetBehavior;->importantForAccessibilityMap:Ljava/util/Map;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/google/android/material/transformation/FabTransformationSheetBehavior;->importantForAccessibilityMap:Ljava/util/Map;

    .line 109
    invoke-interface {v6, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 111
    iget-object v6, p0, Lcom/google/android/material/transformation/FabTransformationSheetBehavior;->importantForAccessibilityMap:Ljava/util/Map;

    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v0, v6}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    goto :goto_3

    .line 115
    :cond_6
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v6, v8, :cond_7

    .line 116
    iget-object v6, p0, Lcom/google/android/material/transformation/FabTransformationSheetBehavior;->importantForAccessibilityMap:Ljava/util/Map;

    invoke-virtual {v0}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    :cond_7
    const/4 v6, 0x4

    invoke-static {v0, v6}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    goto :goto_3

    .line 124
    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "hasScrimBehavior":Z
    :cond_8
    if-nez p2, :cond_0

    .line 125
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/google/android/material/transformation/FabTransformationSheetBehavior;->importantForAccessibilityMap:Ljava/util/Map;

    goto :goto_0
.end method


# virtual methods
.method protected onCreateMotionSpec(Landroid/content/Context;Z)Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "expanded"    # Z
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 63
    if-eqz p2, :cond_0

    .line 64
    sget v1, Lcom/google/android/material/R$animator;->mtrl_fab_transformation_sheet_expand_spec:I

    .line 69
    .local v1, "specRes":I
    :goto_0
    new-instance v0, Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;

    invoke-direct {v0}, Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;-><init>()V

    .line 70
    .local v0, "spec":Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;
    invoke-static {p1, v1}, Lcom/google/android/material/animation/MotionSpec;->createFromResource(Landroid/content/Context;I)Lcom/google/android/material/animation/MotionSpec;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;->timings:Lcom/google/android/material/animation/MotionSpec;

    .line 71
    new-instance v2, Lcom/google/android/material/animation/Positioning;

    const/16 v3, 0x11

    invoke-direct {v2, v3, v4, v4}, Lcom/google/android/material/animation/Positioning;-><init>(IFF)V

    iput-object v2, v0, Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;->positioning:Lcom/google/android/material/animation/Positioning;

    .line 72
    return-object v0

    .line 66
    .end local v0    # "spec":Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;
    .end local v1    # "specRes":I
    :cond_0
    sget v1, Lcom/google/android/material/R$animator;->mtrl_fab_transformation_sheet_collapse_spec:I

    .restart local v1    # "specRes":I
    goto :goto_0
.end method

.method protected onExpandedStateChange(Landroid/view/View;Landroid/view/View;ZZ)Z
    .locals 1
    .param p1, "dependency"    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "child"    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "expanded"    # Z
    .param p4, "animated"    # Z
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .prologue
    .line 79
    invoke-direct {p0, p2, p3}, Lcom/google/android/material/transformation/FabTransformationSheetBehavior;->updateImportantForAccessibility(Landroid/view/View;Z)V

    .line 80
    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/android/material/transformation/FabTransformationBehavior;->onExpandedStateChange(Landroid/view/View;Landroid/view/View;ZZ)Z

    move-result v0

    return v0
.end method

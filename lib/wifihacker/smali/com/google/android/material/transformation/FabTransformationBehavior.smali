.class public abstract Lcom/google/android/material/transformation/FabTransformationBehavior;
.super Lcom/google/android/material/transformation/ExpandableTransformationBehavior;
.source "FabTransformationBehavior.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private dependencyOriginalTranslationX:F

.field private dependencyOriginalTranslationY:F

.field private final tmpArray:[I

.field private final tmpRect:Landroid/graphics/Rect;

.field private final tmpRectF1:Landroid/graphics/RectF;

.field private final tmpRectF2:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/google/android/material/transformation/ExpandableTransformationBehavior;-><init>()V

    .line 79
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->tmpRect:Landroid/graphics/Rect;

    .line 80
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->tmpRectF1:Landroid/graphics/RectF;

    .line 81
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->tmpRectF2:Landroid/graphics/RectF;

    .line 82
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->tmpArray:[I

    .line 89
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 92
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/transformation/ExpandableTransformationBehavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 79
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->tmpRect:Landroid/graphics/Rect;

    .line 80
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->tmpRectF1:Landroid/graphics/RectF;

    .line 81
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->tmpRectF2:Landroid/graphics/RectF;

    .line 82
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->tmpArray:[I

    .line 93
    return-void
.end method

.method private calculateChildContentContainer(Landroid/view/View;)Landroid/view/ViewGroup;
    .locals 2
    .param p1, "view"    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 710
    sget v1, Lcom/google/android/material/R$id;->mtrl_child_content_container:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 711
    .local v0, "childContentContainer":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 712
    invoke-direct {p0, v0}, Lcom/google/android/material/transformation/FabTransformationBehavior;->toViewGroupOrNull(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v1

    .line 722
    .end local p1    # "view":Landroid/view/View;
    :goto_0
    return-object v1

    .line 716
    .restart local p1    # "view":Landroid/view/View;
    :cond_0
    instance-of v1, p1, Lcom/google/android/material/transformation/TransformationChildLayout;

    if-nez v1, :cond_1

    instance-of v1, p1, Lcom/google/android/material/transformation/TransformationChildCard;

    if-eqz v1, :cond_2

    .line 717
    :cond_1
    check-cast p1, Landroid/view/ViewGroup;

    .end local p1    # "view":Landroid/view/View;
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 718
    invoke-direct {p0, v0}, Lcom/google/android/material/transformation/FabTransformationBehavior;->toViewGroupOrNull(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v1

    goto :goto_0

    .line 722
    .restart local p1    # "view":Landroid/view/View;
    :cond_2
    invoke-direct {p0, p1}, Lcom/google/android/material/transformation/FabTransformationBehavior;->toViewGroupOrNull(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v1

    goto :goto_0
.end method

.method private calculateChildVisibleBoundsAtEndOfExpansion(Landroid/view/View;Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;Lcom/google/android/material/animation/MotionTiming;Lcom/google/android/material/animation/MotionTiming;FFFFLandroid/graphics/RectF;)V
    .locals 5
    .param p1, "child"    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "spec"    # Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "translationXTiming"    # Lcom/google/android/material/animation/MotionTiming;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "translationYTiming"    # Lcom/google/android/material/animation/MotionTiming;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5, "fromX"    # F
    .param p6, "fromY"    # F
    .param p7, "toX"    # F
    .param p8, "toY"    # F
    .param p9, "childBounds"    # Landroid/graphics/RectF;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 668
    .line 669
    invoke-direct {p0, p2, p3, p5, p7}, Lcom/google/android/material/transformation/FabTransformationBehavior;->calculateValueOfAnimationAtEndOfExpansion(Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;Lcom/google/android/material/animation/MotionTiming;FF)F

    move-result v1

    .line 671
    .local v1, "translationX":F
    invoke-direct {p0, p2, p4, p6, p8}, Lcom/google/android/material/transformation/FabTransformationBehavior;->calculateValueOfAnimationAtEndOfExpansion(Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;Lcom/google/android/material/animation/MotionTiming;FF)F

    move-result v2

    .line 674
    .local v2, "translationY":F
    iget-object v3, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->tmpRect:Landroid/graphics/Rect;

    .line 675
    .local v3, "window":Landroid/graphics/Rect;
    invoke-virtual {p1, v3}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 676
    iget-object v4, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->tmpRectF1:Landroid/graphics/RectF;

    .line 677
    .local v4, "windowF":Landroid/graphics/RectF;
    invoke-virtual {v4, v3}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 680
    iget-object v0, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->tmpRectF2:Landroid/graphics/RectF;

    .line 681
    .local v0, "childVisibleBounds":Landroid/graphics/RectF;
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/transformation/FabTransformationBehavior;->calculateWindowBounds(Landroid/view/View;Landroid/graphics/RectF;)V

    .line 682
    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->offset(FF)V

    .line 683
    invoke-virtual {v0, v4}, Landroid/graphics/RectF;->intersect(Landroid/graphics/RectF;)Z

    .line 685
    invoke-virtual {p9, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 686
    return-void
.end method

.method private calculateDependencyWindowBounds(Landroid/view/View;Landroid/graphics/RectF;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "rect"    # Landroid/graphics/RectF;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 626
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/transformation/FabTransformationBehavior;->calculateWindowBounds(Landroid/view/View;Landroid/graphics/RectF;)V

    .line 627
    iget v0, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->dependencyOriginalTranslationX:F

    iget v1, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->dependencyOriginalTranslationY:F

    invoke-virtual {p2, v0, v1}, Landroid/graphics/RectF;->offset(FF)V

    .line 628
    return-void
.end method

.method private calculateMotionTiming(FFZLcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;)Landroid/util/Pair;
    .locals 4
    .param p1, "translationX"    # F
    .param p2, "translationY"    # F
    .param p3, "expanded"    # Z
    .param p4, "spec"    # Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FFZ",
            "Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Lcom/google/android/material/animation/MotionTiming;",
            "Lcom/google/android/material/animation/MotionTiming;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 542
    cmpl-float v2, p1, v3

    if-eqz v2, :cond_0

    cmpl-float v2, p2, v3

    if-nez v2, :cond_1

    .line 544
    :cond_0
    iget-object v2, p4, Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;->timings:Lcom/google/android/material/animation/MotionSpec;

    const-string v3, "translationXLinear"

    invoke-virtual {v2, v3}, Lcom/google/android/material/animation/MotionSpec;->getTiming(Ljava/lang/String;)Lcom/google/android/material/animation/MotionTiming;

    move-result-object v0

    .line 545
    .local v0, "translationXTiming":Lcom/google/android/material/animation/MotionTiming;
    iget-object v2, p4, Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;->timings:Lcom/google/android/material/animation/MotionSpec;

    const-string v3, "translationYLinear"

    invoke-virtual {v2, v3}, Lcom/google/android/material/animation/MotionSpec;->getTiming(Ljava/lang/String;)Lcom/google/android/material/animation/MotionTiming;

    move-result-object v1

    .line 556
    .local v1, "translationYTiming":Lcom/google/android/material/animation/MotionTiming;
    :goto_0
    new-instance v2, Landroid/util/Pair;

    invoke-direct {v2, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2

    .line 546
    .end local v0    # "translationXTiming":Lcom/google/android/material/animation/MotionTiming;
    .end local v1    # "translationYTiming":Lcom/google/android/material/animation/MotionTiming;
    :cond_1
    if-eqz p3, :cond_2

    cmpg-float v2, p2, v3

    if-ltz v2, :cond_3

    :cond_2
    if-nez p3, :cond_4

    cmpl-float v2, p2, v3

    if-lez v2, :cond_4

    .line 548
    :cond_3
    iget-object v2, p4, Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;->timings:Lcom/google/android/material/animation/MotionSpec;

    const-string v3, "translationXCurveUpwards"

    invoke-virtual {v2, v3}, Lcom/google/android/material/animation/MotionSpec;->getTiming(Ljava/lang/String;)Lcom/google/android/material/animation/MotionTiming;

    move-result-object v0

    .line 549
    .restart local v0    # "translationXTiming":Lcom/google/android/material/animation/MotionTiming;
    iget-object v2, p4, Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;->timings:Lcom/google/android/material/animation/MotionSpec;

    const-string v3, "translationYCurveUpwards"

    invoke-virtual {v2, v3}, Lcom/google/android/material/animation/MotionSpec;->getTiming(Ljava/lang/String;)Lcom/google/android/material/animation/MotionTiming;

    move-result-object v1

    .restart local v1    # "translationYTiming":Lcom/google/android/material/animation/MotionTiming;
    goto :goto_0

    .line 552
    .end local v0    # "translationXTiming":Lcom/google/android/material/animation/MotionTiming;
    .end local v1    # "translationYTiming":Lcom/google/android/material/animation/MotionTiming;
    :cond_4
    iget-object v2, p4, Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;->timings:Lcom/google/android/material/animation/MotionSpec;

    const-string v3, "translationXCurveDownwards"

    invoke-virtual {v2, v3}, Lcom/google/android/material/animation/MotionSpec;->getTiming(Ljava/lang/String;)Lcom/google/android/material/animation/MotionTiming;

    move-result-object v0

    .line 553
    .restart local v0    # "translationXTiming":Lcom/google/android/material/animation/MotionTiming;
    iget-object v2, p4, Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;->timings:Lcom/google/android/material/animation/MotionSpec;

    const-string v3, "translationYCurveDownwards"

    invoke-virtual {v2, v3}, Lcom/google/android/material/animation/MotionSpec;->getTiming(Ljava/lang/String;)Lcom/google/android/material/animation/MotionTiming;

    move-result-object v1

    .restart local v1    # "translationYTiming":Lcom/google/android/material/animation/MotionTiming;
    goto :goto_0
.end method

.method private calculateRevealCenterX(Landroid/view/View;Landroid/view/View;Lcom/google/android/material/animation/Positioning;)F
    .locals 5
    .param p1, "dependency"    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "child"    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "positioning"    # Lcom/google/android/material/animation/Positioning;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 632
    iget-object v1, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->tmpRectF1:Landroid/graphics/RectF;

    .line 633
    .local v1, "dependencyBounds":Landroid/graphics/RectF;
    iget-object v0, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->tmpRectF2:Landroid/graphics/RectF;

    .line 635
    .local v0, "childBounds":Landroid/graphics/RectF;
    invoke-direct {p0, p1, v1}, Lcom/google/android/material/transformation/FabTransformationBehavior;->calculateDependencyWindowBounds(Landroid/view/View;Landroid/graphics/RectF;)V

    .line 636
    invoke-direct {p0, p2, v0}, Lcom/google/android/material/transformation/FabTransformationBehavior;->calculateWindowBounds(Landroid/view/View;Landroid/graphics/RectF;)V

    .line 638
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/material/transformation/FabTransformationBehavior;->calculateTranslationX(Landroid/view/View;Landroid/view/View;Lcom/google/android/material/animation/Positioning;)F

    move-result v2

    .line 639
    .local v2, "translationX":F
    neg-float v3, v2

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/graphics/RectF;->offset(FF)V

    .line 641
    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    iget v4, v0, Landroid/graphics/RectF;->left:F

    sub-float/2addr v3, v4

    return v3
.end method

.method private calculateRevealCenterY(Landroid/view/View;Landroid/view/View;Lcom/google/android/material/animation/Positioning;)F
    .locals 5
    .param p1, "dependency"    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "child"    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "positioning"    # Lcom/google/android/material/animation/Positioning;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 646
    iget-object v1, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->tmpRectF1:Landroid/graphics/RectF;

    .line 647
    .local v1, "dependencyBounds":Landroid/graphics/RectF;
    iget-object v0, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->tmpRectF2:Landroid/graphics/RectF;

    .line 649
    .local v0, "childBounds":Landroid/graphics/RectF;
    invoke-direct {p0, p1, v1}, Lcom/google/android/material/transformation/FabTransformationBehavior;->calculateDependencyWindowBounds(Landroid/view/View;Landroid/graphics/RectF;)V

    .line 650
    invoke-direct {p0, p2, v0}, Lcom/google/android/material/transformation/FabTransformationBehavior;->calculateWindowBounds(Landroid/view/View;Landroid/graphics/RectF;)V

    .line 652
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/material/transformation/FabTransformationBehavior;->calculateTranslationY(Landroid/view/View;Landroid/view/View;Lcom/google/android/material/animation/Positioning;)F

    move-result v2

    .line 653
    .local v2, "translationY":F
    const/4 v3, 0x0

    neg-float v4, v2

    invoke-virtual {v0, v3, v4}, Landroid/graphics/RectF;->offset(FF)V

    .line 655
    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    iget v4, v0, Landroid/graphics/RectF;->top:F

    sub-float/2addr v3, v4

    return v3
.end method

.method private calculateTranslationX(Landroid/view/View;Landroid/view/View;Lcom/google/android/material/animation/Positioning;)F
    .locals 5
    .param p1, "dependency"    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "child"    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "positioning"    # Lcom/google/android/material/animation/Positioning;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 561
    iget-object v1, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->tmpRectF1:Landroid/graphics/RectF;

    .line 562
    .local v1, "dependencyBounds":Landroid/graphics/RectF;
    iget-object v0, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->tmpRectF2:Landroid/graphics/RectF;

    .line 564
    .local v0, "childBounds":Landroid/graphics/RectF;
    invoke-direct {p0, p1, v1}, Lcom/google/android/material/transformation/FabTransformationBehavior;->calculateDependencyWindowBounds(Landroid/view/View;Landroid/graphics/RectF;)V

    .line 565
    invoke-direct {p0, p2, v0}, Lcom/google/android/material/transformation/FabTransformationBehavior;->calculateWindowBounds(Landroid/view/View;Landroid/graphics/RectF;)V

    .line 567
    const/4 v2, 0x0

    .line 568
    .local v2, "translationX":F
    iget v3, p3, Lcom/google/android/material/animation/Positioning;->gravity:I

    and-int/lit8 v3, v3, 0x7

    packed-switch v3, :pswitch_data_0

    .line 581
    :goto_0
    :pswitch_0
    iget v3, p3, Lcom/google/android/material/animation/Positioning;->xAdjustment:F

    add-float/2addr v2, v3

    .line 582
    return v2

    .line 570
    :pswitch_1
    iget v3, v0, Landroid/graphics/RectF;->left:F

    iget v4, v1, Landroid/graphics/RectF;->left:F

    sub-float v2, v3, v4

    .line 571
    goto :goto_0

    .line 573
    :pswitch_2
    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v4

    sub-float v2, v3, v4

    .line 574
    goto :goto_0

    .line 576
    :pswitch_3
    iget v3, v0, Landroid/graphics/RectF;->right:F

    iget v4, v1, Landroid/graphics/RectF;->right:F

    sub-float v2, v3, v4

    .line 577
    goto :goto_0

    .line 568
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private calculateTranslationY(Landroid/view/View;Landroid/view/View;Lcom/google/android/material/animation/Positioning;)F
    .locals 5
    .param p1, "dependency"    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "child"    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "positioning"    # Lcom/google/android/material/animation/Positioning;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 587
    iget-object v1, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->tmpRectF1:Landroid/graphics/RectF;

    .line 588
    .local v1, "dependencyBounds":Landroid/graphics/RectF;
    iget-object v0, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->tmpRectF2:Landroid/graphics/RectF;

    .line 590
    .local v0, "childBounds":Landroid/graphics/RectF;
    invoke-direct {p0, p1, v1}, Lcom/google/android/material/transformation/FabTransformationBehavior;->calculateDependencyWindowBounds(Landroid/view/View;Landroid/graphics/RectF;)V

    .line 591
    invoke-direct {p0, p2, v0}, Lcom/google/android/material/transformation/FabTransformationBehavior;->calculateWindowBounds(Landroid/view/View;Landroid/graphics/RectF;)V

    .line 593
    const/4 v2, 0x0

    .line 594
    .local v2, "translationY":F
    iget v3, p3, Lcom/google/android/material/animation/Positioning;->gravity:I

    and-int/lit8 v3, v3, 0x70

    sparse-switch v3, :sswitch_data_0

    .line 607
    :goto_0
    iget v3, p3, Lcom/google/android/material/animation/Positioning;->yAdjustment:F

    add-float/2addr v2, v3

    .line 608
    return v2

    .line 596
    :sswitch_0
    iget v3, v0, Landroid/graphics/RectF;->top:F

    iget v4, v1, Landroid/graphics/RectF;->top:F

    sub-float v2, v3, v4

    .line 597
    goto :goto_0

    .line 599
    :sswitch_1
    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v4

    sub-float v2, v3, v4

    .line 600
    goto :goto_0

    .line 602
    :sswitch_2
    iget v3, v0, Landroid/graphics/RectF;->bottom:F

    iget v4, v1, Landroid/graphics/RectF;->bottom:F

    sub-float v2, v3, v4

    .line 603
    goto :goto_0

    .line 594
    nop

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_1
        0x30 -> :sswitch_0
        0x50 -> :sswitch_2
    .end sparse-switch
.end method

.method private calculateValueOfAnimationAtEndOfExpansion(Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;Lcom/google/android/material/animation/MotionTiming;FF)F
    .locals 14
    .param p1, "spec"    # Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "timing"    # Lcom/google/android/material/animation/MotionTiming;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "from"    # F
    .param p4, "to"    # F

    .prologue
    .line 690
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/material/animation/MotionTiming;->getDelay()J

    move-result-wide v2

    .line 691
    .local v2, "delay":J
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/material/animation/MotionTiming;->getDuration()J

    move-result-wide v4

    .line 694
    .local v4, "duration":J
    iget-object v10, p1, Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;->timings:Lcom/google/android/material/animation/MotionSpec;

    const-string v11, "expansion"

    invoke-virtual {v10, v11}, Lcom/google/android/material/animation/MotionSpec;->getTiming(Ljava/lang/String;)Lcom/google/android/material/animation/MotionTiming;

    move-result-object v8

    .line 695
    .local v8, "expansionTiming":Lcom/google/android/material/animation/MotionTiming;
    invoke-virtual {v8}, Lcom/google/android/material/animation/MotionTiming;->getDelay()J

    move-result-wide v10

    invoke-virtual {v8}, Lcom/google/android/material/animation/MotionTiming;->getDuration()J

    move-result-wide v12

    add-long v6, v10, v12

    .line 698
    .local v6, "expansionEnd":J
    const-wide/16 v10, 0x11

    add-long/2addr v6, v10

    .line 699
    sub-long v10, v6, v2

    long-to-float v10, v10

    long-to-float v11, v4

    div-float v9, v10, v11

    .line 702
    .local v9, "fraction":F
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/material/animation/MotionTiming;->getInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object v10

    invoke-interface {v10, v9}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result v9

    .line 703
    move/from16 v0, p3

    move/from16 v1, p4

    invoke-static {v0, v1, v9}, Lcom/google/android/material/animation/AnimationUtils;->lerp(FFF)F

    move-result v10

    return v10
.end method

.method private calculateWindowBounds(Landroid/view/View;Landroid/graphics/RectF;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "rect"    # Landroid/graphics/RectF;

    .prologue
    const/4 v4, 0x0

    .line 612
    move-object v0, p2

    .line 613
    .local v0, "windowBounds":Landroid/graphics/RectF;
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v4, v4, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 615
    iget-object v1, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->tmpArray:[I

    .line 616
    .local v1, "windowLocation":[I
    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 618
    const/4 v2, 0x0

    aget v2, v1, v2

    int-to-float v2, v2

    const/4 v3, 0x1

    aget v3, v1, v3

    int-to-float v3, v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/RectF;->offsetTo(FF)V

    .line 622
    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result v2

    neg-float v2, v2

    float-to-int v2, v2

    int-to-float v2, v2

    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result v3

    neg-float v3, v3

    float-to-int v3, v3

    int-to-float v3, v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/RectF;->offset(FF)V

    .line 623
    return-void
.end method

.method private createChildrenFadeAnimation(Landroid/view/View;Landroid/view/View;ZZLcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;Ljava/util/List;Ljava/util/List;)V
    .locals 8
    .param p1, "unusedDependency"    # Landroid/view/View;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "expanded"    # Z
    .param p4, "currentlyAnimating"    # Z
    .param p5, "spec"    # Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/view/View;",
            "ZZ",
            "Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;",
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
    .local p6, "animations":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    .local p7, "unusedListeners":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator$AnimatorListener;>;"
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 502
    instance-of v3, p2, Landroid/view/ViewGroup;

    if-nez v3, :cond_1

    .line 532
    :cond_0
    :goto_0
    return-void

    .line 505
    :cond_1
    instance-of v3, p2, Lcom/google/android/material/circularreveal/CircularRevealWidget;

    if-eqz v3, :cond_2

    sget v3, Lcom/google/android/material/circularreveal/CircularRevealHelper;->STRATEGY:I

    if-eqz v3, :cond_0

    .line 511
    :cond_2
    invoke-direct {p0, p2}, Lcom/google/android/material/transformation/FabTransformationBehavior;->calculateChildContentContainer(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v1

    .line 512
    .local v1, "childContentContainer":Landroid/view/ViewGroup;
    if-eqz v1, :cond_0

    .line 518
    if-eqz p3, :cond_4

    .line 519
    if-nez p4, :cond_3

    .line 520
    sget-object v3, Lcom/google/android/material/animation/ChildrenAlphaProperty;->CHILDREN_ALPHA:Landroid/util/Property;

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Landroid/util/Property;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 522
    :cond_3
    sget-object v3, Lcom/google/android/material/animation/ChildrenAlphaProperty;->CHILDREN_ALPHA:Landroid/util/Property;

    new-array v4, v7, [F

    const/high16 v5, 0x3f800000    # 1.0f

    aput v5, v4, v6

    .line 523
    invoke-static {v1, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 529
    .local v0, "animator":Landroid/animation/Animator;
    :goto_1
    iget-object v3, p5, Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;->timings:Lcom/google/android/material/animation/MotionSpec;

    const-string v4, "contentFade"

    invoke-virtual {v3, v4}, Lcom/google/android/material/animation/MotionSpec;->getTiming(Ljava/lang/String;)Lcom/google/android/material/animation/MotionTiming;

    move-result-object v2

    .line 530
    .local v2, "timing":Lcom/google/android/material/animation/MotionTiming;
    invoke-virtual {v2, v0}, Lcom/google/android/material/animation/MotionTiming;->apply(Landroid/animation/Animator;)V

    .line 531
    invoke-interface {p6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 525
    .end local v0    # "animator":Landroid/animation/Animator;
    .end local v2    # "timing":Lcom/google/android/material/animation/MotionTiming;
    :cond_4
    sget-object v3, Lcom/google/android/material/animation/ChildrenAlphaProperty;->CHILDREN_ALPHA:Landroid/util/Property;

    new-array v4, v7, [F

    aput v5, v4, v6

    .line 526
    invoke-static {v1, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .restart local v0    # "animator":Landroid/animation/Animator;
    goto :goto_1
.end method

.method private createColorAnimation(Landroid/view/View;Landroid/view/View;ZZLcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;Ljava/util/List;Ljava/util/List;)V
    .locals 8
    .param p1, "dependency"    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "child"    # Landroid/view/View;
    .param p3, "expanded"    # Z
    .param p4, "currentlyAnimating"    # Z
    .param p5, "spec"    # Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/view/View;",
            "ZZ",
            "Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;",
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
    .local p6, "animations":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    .local p7, "unusedListeners":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator$AnimatorListener;>;"
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 462
    instance-of v5, p2, Lcom/google/android/material/circularreveal/CircularRevealWidget;

    if-nez v5, :cond_0

    .line 492
    :goto_0
    return-void

    :cond_0
    move-object v1, p2

    .line 465
    check-cast v1, Lcom/google/android/material/circularreveal/CircularRevealWidget;

    .line 467
    .local v1, "circularRevealChild":Lcom/google/android/material/circularreveal/CircularRevealWidget;
    invoke-direct {p0, p1}, Lcom/google/android/material/transformation/FabTransformationBehavior;->getBackgroundTint(Landroid/view/View;)I

    move-result v3

    .line 468
    .local v3, "tint":I
    const v5, 0xffffff

    and-int v4, v3, v5

    .line 471
    .local v4, "transparent":I
    if-eqz p3, :cond_2

    .line 472
    if-nez p4, :cond_1

    .line 473
    invoke-interface {v1, v3}, Lcom/google/android/material/circularreveal/CircularRevealWidget;->setCircularRevealScrimColor(I)V

    .line 475
    :cond_1
    sget-object v5, Lcom/google/android/material/circularreveal/CircularRevealWidget$CircularRevealScrimColorProperty;->CIRCULAR_REVEAL_SCRIM_COLOR:Landroid/util/Property;

    new-array v6, v6, [I

    aput v4, v6, v7

    .line 476
    invoke-static {v1, v5, v6}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 488
    .local v0, "animator":Landroid/animation/ObjectAnimator;
    :goto_1
    invoke-static {}, Lcom/google/android/material/animation/ArgbEvaluatorCompat;->getInstance()Lcom/google/android/material/animation/ArgbEvaluatorCompat;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/animation/ObjectAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    .line 489
    iget-object v5, p5, Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;->timings:Lcom/google/android/material/animation/MotionSpec;

    const-string v6, "color"

    invoke-virtual {v5, v6}, Lcom/google/android/material/animation/MotionSpec;->getTiming(Ljava/lang/String;)Lcom/google/android/material/animation/MotionTiming;

    move-result-object v2

    .line 490
    .local v2, "timing":Lcom/google/android/material/animation/MotionTiming;
    invoke-virtual {v2, v0}, Lcom/google/android/material/animation/MotionTiming;->apply(Landroid/animation/Animator;)V

    .line 491
    invoke-interface {p6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 481
    .end local v0    # "animator":Landroid/animation/ObjectAnimator;
    .end local v2    # "timing":Lcom/google/android/material/animation/MotionTiming;
    :cond_2
    sget-object v5, Lcom/google/android/material/circularreveal/CircularRevealWidget$CircularRevealScrimColorProperty;->CIRCULAR_REVEAL_SCRIM_COLOR:Landroid/util/Property;

    new-array v6, v6, [I

    aput v3, v6, v7

    .line 482
    invoke-static {v1, v5, v6}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .restart local v0    # "animator":Landroid/animation/ObjectAnimator;
    goto :goto_1
.end method

.method private createDependencyTranslationAnimation(Landroid/view/View;Landroid/view/View;ZLcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;Ljava/util/List;)V
    .locals 10
    .param p1, "dependency"    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "child"    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "expanded"    # Z
    .param p4, "spec"    # Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/view/View;",
            "Z",
            "Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;",
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 230
    .local p5, "animations":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    iget-object v7, p4, Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;->positioning:Lcom/google/android/material/animation/Positioning;

    invoke-direct {p0, p1, p2, v7}, Lcom/google/android/material/transformation/FabTransformationBehavior;->calculateTranslationX(Landroid/view/View;Landroid/view/View;Lcom/google/android/material/animation/Positioning;)F

    move-result v1

    .line 231
    .local v1, "translationX":F
    iget-object v7, p4, Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;->positioning:Lcom/google/android/material/animation/Positioning;

    invoke-direct {p0, p1, p2, v7}, Lcom/google/android/material/transformation/FabTransformationBehavior;->calculateTranslationY(Landroid/view/View;Landroid/view/View;Lcom/google/android/material/animation/Positioning;)F

    move-result v4

    .line 237
    .local v4, "translationY":F
    invoke-direct {p0, v1, v4, p3, p4}, Lcom/google/android/material/transformation/FabTransformationBehavior;->calculateMotionTiming(FFZLcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;)Landroid/util/Pair;

    move-result-object v0

    .line 238
    .local v0, "motionTiming":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/google/android/material/animation/MotionTiming;Lcom/google/android/material/animation/MotionTiming;>;"
    iget-object v3, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Lcom/google/android/material/animation/MotionTiming;

    .line 239
    .local v3, "translationXTiming":Lcom/google/android/material/animation/MotionTiming;
    iget-object v6, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Lcom/google/android/material/animation/MotionTiming;

    .line 241
    .local v6, "translationYTiming":Lcom/google/android/material/animation/MotionTiming;
    sget-object v7, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    const/4 v8, 0x1

    new-array v8, v8, [F

    const/4 v9, 0x0

    if-eqz p3, :cond_0

    .end local v1    # "translationX":F
    :goto_0
    aput v1, v8, v9

    .line 242
    invoke-static {p1, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 246
    .local v2, "translationXAnimator":Landroid/animation/ValueAnimator;
    sget-object v7, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v8, 0x1

    new-array v8, v8, [F

    const/4 v9, 0x0

    if-eqz p3, :cond_1

    .end local v4    # "translationY":F
    :goto_1
    aput v4, v8, v9

    .line 247
    invoke-static {p1, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 252
    .local v5, "translationYAnimator":Landroid/animation/ValueAnimator;
    invoke-virtual {v3, v2}, Lcom/google/android/material/animation/MotionTiming;->apply(Landroid/animation/Animator;)V

    .line 253
    invoke-virtual {v6, v5}, Lcom/google/android/material/animation/MotionTiming;->apply(Landroid/animation/Animator;)V

    .line 254
    invoke-interface {p5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 255
    invoke-interface {p5, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 256
    return-void

    .line 241
    .end local v2    # "translationXAnimator":Landroid/animation/ValueAnimator;
    .end local v5    # "translationYAnimator":Landroid/animation/ValueAnimator;
    .restart local v1    # "translationX":F
    .restart local v4    # "translationY":F
    :cond_0
    iget v1, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->dependencyOriginalTranslationX:F

    goto :goto_0

    .line 246
    .end local v1    # "translationX":F
    .restart local v2    # "translationXAnimator":Landroid/animation/ValueAnimator;
    :cond_1
    iget v4, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->dependencyOriginalTranslationY:F

    goto :goto_1
.end method

.method private createElevationAnimation(Landroid/view/View;Landroid/view/View;ZZLcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;Ljava/util/List;Ljava/util/List;)V
    .locals 7
    .param p1, "dependency"    # Landroid/view/View;
    .param p2, "child"    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "expanded"    # Z
    .param p4, "currentlyAnimating"    # Z
    .param p5, "spec"    # Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/view/View;",
            "ZZ",
            "Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;",
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
    .local p6, "animations":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    .local p7, "unusedListeners":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator$AnimatorListener;>;"
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 207
    invoke-static {p2}, Landroidx/core/view/ViewCompat;->getElevation(Landroid/view/View;)F

    move-result v3

    invoke-static {p1}, Landroidx/core/view/ViewCompat;->getElevation(Landroid/view/View;)F

    move-result v4

    sub-float v2, v3, v4

    .line 210
    .local v2, "translationZ":F
    if-eqz p3, :cond_1

    .line 211
    if-nez p4, :cond_0

    .line 212
    neg-float v3, v2

    invoke-virtual {p2, v3}, Landroid/view/View;->setTranslationZ(F)V

    .line 214
    :cond_0
    sget-object v3, Landroid/view/View;->TRANSLATION_Z:Landroid/util/Property;

    new-array v4, v5, [F

    const/4 v5, 0x0

    aput v5, v4, v6

    invoke-static {p2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 219
    .local v0, "animator":Landroid/animation/Animator;
    :goto_0
    iget-object v3, p5, Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;->timings:Lcom/google/android/material/animation/MotionSpec;

    const-string v4, "elevation"

    invoke-virtual {v3, v4}, Lcom/google/android/material/animation/MotionSpec;->getTiming(Ljava/lang/String;)Lcom/google/android/material/animation/MotionTiming;

    move-result-object v1

    .line 220
    .local v1, "timing":Lcom/google/android/material/animation/MotionTiming;
    invoke-virtual {v1, v0}, Lcom/google/android/material/animation/MotionTiming;->apply(Landroid/animation/Animator;)V

    .line 221
    invoke-interface {p6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 222
    return-void

    .line 216
    .end local v0    # "animator":Landroid/animation/Animator;
    .end local v1    # "timing":Lcom/google/android/material/animation/MotionTiming;
    :cond_1
    sget-object v3, Landroid/view/View;->TRANSLATION_Z:Landroid/util/Property;

    new-array v4, v5, [F

    neg-float v5, v2

    aput v5, v4, v6

    invoke-static {p2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .restart local v0    # "animator":Landroid/animation/Animator;
    goto :goto_0
.end method

.method private createExpansionAnimation(Landroid/view/View;Landroid/view/View;ZZLcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;FFLjava/util/List;Ljava/util/List;)V
    .locals 30
    .param p1, "dependency"    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "child"    # Landroid/view/View;
    .param p3, "expanded"    # Z
    .param p4, "currentlyAnimating"    # Z
    .param p5, "spec"    # Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6, "childWidth"    # F
    .param p7, "childHeight"    # F
    .param p8    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p9    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/view/View;",
            "ZZ",
            "Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;",
            "FF",
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
    .line 377
    .local p8, "animations":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    .local p9, "listeners":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator$AnimatorListener;>;"
    move-object/from16 v0, p2

    instance-of v6, v0, Lcom/google/android/material/circularreveal/CircularRevealWidget;

    if-nez v6, :cond_0

    .line 452
    .end local p1    # "dependency":Landroid/view/View;
    :goto_0
    return-void

    .restart local p1    # "dependency":Landroid/view/View;
    :cond_0
    move-object/from16 v27, p2

    .line 380
    check-cast v27, Lcom/google/android/material/circularreveal/CircularRevealWidget;

    .line 382
    .local v27, "circularRevealChild":Lcom/google/android/material/circularreveal/CircularRevealWidget;
    move-object/from16 v0, p5

    iget-object v6, v0, Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;->positioning:Lcom/google/android/material/animation/Positioning;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2, v6}, Lcom/google/android/material/transformation/FabTransformationBehavior;->calculateRevealCenterX(Landroid/view/View;Landroid/view/View;Lcom/google/android/material/animation/Positioning;)F

    move-result v4

    .line 383
    .local v4, "revealCenterX":F
    move-object/from16 v0, p5

    iget-object v6, v0, Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;->positioning:Lcom/google/android/material/animation/Positioning;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2, v6}, Lcom/google/android/material/transformation/FabTransformationBehavior;->calculateRevealCenterY(Landroid/view/View;Landroid/view/View;Lcom/google/android/material/animation/Positioning;)F

    move-result v5

    .line 384
    .local v5, "revealCenterY":F
    check-cast p1, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .end local p1    # "dependency":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/material/transformation/FabTransformationBehavior;->tmpRect:Landroid/graphics/Rect;

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getContentRect(Landroid/graphics/Rect;)Z

    .line 385
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/material/transformation/FabTransformationBehavior;->tmpRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v6, v6

    const/high16 v7, 0x40000000    # 2.0f

    div-float v28, v6, v7

    .line 388
    .local v28, "dependencyRadius":F
    move-object/from16 v0, p5

    iget-object v6, v0, Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;->timings:Lcom/google/android/material/animation/MotionSpec;

    const-string v7, "expansion"

    invoke-virtual {v6, v7}, Lcom/google/android/material/animation/MotionSpec;->getTiming(Ljava/lang/String;)Lcom/google/android/material/animation/MotionTiming;

    move-result-object v29

    .line 390
    .local v29, "timing":Lcom/google/android/material/animation/MotionTiming;
    if-eqz p3, :cond_3

    .line 391
    if-nez p4, :cond_1

    .line 392
    new-instance v6, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;

    move/from16 v0, v28

    invoke-direct {v6, v4, v5, v0}, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;-><init>(FFF)V

    move-object/from16 v0, v27

    invoke-interface {v0, v6}, Lcom/google/android/material/circularreveal/CircularRevealWidget;->setRevealInfo(Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;)V

    .line 395
    :cond_1
    if-eqz p4, :cond_2

    .line 396
    invoke-interface/range {v27 .. v27}, Lcom/google/android/material/circularreveal/CircularRevealWidget;->getRevealInfo()Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;

    move-result-object v6

    iget v12, v6, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;->radius:F

    .line 397
    .local v12, "fromRadius":F
    :goto_1
    const/4 v6, 0x0

    const/4 v7, 0x0

    move/from16 v8, p6

    move/from16 v9, p7

    .line 398
    invoke-static/range {v4 .. v9}, Lcom/google/android/material/math/MathUtils;->distanceToFurthestCorner(FFFFFF)F

    move-result v24

    .line 402
    .local v24, "toRadius":F
    move-object/from16 v0, v27

    move/from16 v1, v24

    invoke-static {v0, v4, v5, v1}, Lcom/google/android/material/circularreveal/CircularRevealCompat;->createCircularReveal(Lcom/google/android/material/circularreveal/CircularRevealWidget;FFF)Landroid/animation/Animator;

    move-result-object v26

    .line 404
    .local v26, "animator":Landroid/animation/Animator;
    new-instance v6, Lcom/google/android/material/transformation/FabTransformationBehavior$4;

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v6, v0, v1}, Lcom/google/android/material/transformation/FabTransformationBehavior$4;-><init>(Lcom/google/android/material/transformation/FabTransformationBehavior;Lcom/google/android/material/circularreveal/CircularRevealWidget;)V

    move-object/from16 v0, v26

    invoke-virtual {v0, v6}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 418
    invoke-virtual/range {v29 .. v29}, Lcom/google/android/material/animation/MotionTiming;->getDelay()J

    move-result-wide v8

    float-to-int v10, v4

    float-to-int v11, v5

    move-object/from16 v6, p0

    move-object/from16 v7, p2

    move-object/from16 v13, p8

    .line 416
    invoke-direct/range {v6 .. v13}, Lcom/google/android/material/transformation/FabTransformationBehavior;->createPreFillRadialExpansion(Landroid/view/View;JIIFLjava/util/List;)V

    .line 449
    :goto_2
    move-object/from16 v0, v29

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/google/android/material/animation/MotionTiming;->apply(Landroid/animation/Animator;)V

    .line 450
    move-object/from16 v0, p8

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 451
    invoke-static/range {v27 .. v27}, Lcom/google/android/material/circularreveal/CircularRevealCompat;->createCircularRevealListener(Lcom/google/android/material/circularreveal/CircularRevealWidget;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v6

    move-object/from16 v0, p9

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .end local v12    # "fromRadius":F
    .end local v24    # "toRadius":F
    .end local v26    # "animator":Landroid/animation/Animator;
    :cond_2
    move/from16 v12, v28

    .line 396
    goto :goto_1

    .line 425
    :cond_3
    invoke-interface/range {v27 .. v27}, Lcom/google/android/material/circularreveal/CircularRevealWidget;->getRevealInfo()Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;

    move-result-object v6

    iget v12, v6, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;->radius:F

    .line 426
    .restart local v12    # "fromRadius":F
    move/from16 v24, v28

    .line 428
    .restart local v24    # "toRadius":F
    move-object/from16 v0, v27

    move/from16 v1, v24

    invoke-static {v0, v4, v5, v1}, Lcom/google/android/material/circularreveal/CircularRevealCompat;->createCircularReveal(Lcom/google/android/material/circularreveal/CircularRevealWidget;FFF)Landroid/animation/Animator;

    move-result-object v26

    .line 433
    .restart local v26    # "animator":Landroid/animation/Animator;
    invoke-virtual/range {v29 .. v29}, Lcom/google/android/material/animation/MotionTiming;->getDelay()J

    move-result-wide v8

    float-to-int v10, v4

    float-to-int v11, v5

    move-object/from16 v6, p0

    move-object/from16 v7, p2

    move-object/from16 v13, p8

    .line 431
    invoke-direct/range {v6 .. v13}, Lcom/google/android/material/transformation/FabTransformationBehavior;->createPreFillRadialExpansion(Landroid/view/View;JIIFLjava/util/List;)V

    .line 440
    invoke-virtual/range {v29 .. v29}, Lcom/google/android/material/animation/MotionTiming;->getDelay()J

    move-result-wide v16

    .line 441
    invoke-virtual/range {v29 .. v29}, Lcom/google/android/material/animation/MotionTiming;->getDuration()J

    move-result-wide v18

    move-object/from16 v0, p5

    iget-object v6, v0, Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;->timings:Lcom/google/android/material/animation/MotionSpec;

    .line 442
    invoke-virtual {v6}, Lcom/google/android/material/animation/MotionSpec;->getTotalDuration()J

    move-result-wide v20

    float-to-int v0, v4

    move/from16 v22, v0

    float-to-int v0, v5

    move/from16 v23, v0

    move-object/from16 v14, p0

    move-object/from16 v15, p2

    move-object/from16 v25, p8

    .line 438
    invoke-direct/range {v14 .. v25}, Lcom/google/android/material/transformation/FabTransformationBehavior;->createPostFillRadialExpansion(Landroid/view/View;JJJIIFLjava/util/List;)V

    goto :goto_2
.end method

.method private createIconFadeAnimation(Landroid/view/View;Landroid/view/View;ZZLcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;Ljava/util/List;Ljava/util/List;)V
    .locals 10
    .param p1, "dependency"    # Landroid/view/View;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "expanded"    # Z
    .param p4, "currentlyAnimating"    # Z
    .param p5, "spec"    # Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p7    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/view/View;",
            "ZZ",
            "Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;",
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
    .line 315
    .local p6, "animations":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    .local p7, "listeners":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator$AnimatorListener;>;"
    instance-of v6, p2, Lcom/google/android/material/circularreveal/CircularRevealWidget;

    if-eqz v6, :cond_0

    instance-of v6, p1, Landroid/widget/ImageView;

    if-nez v6, :cond_1

    .line 365
    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v2, p2

    .line 319
    check-cast v2, Lcom/google/android/material/circularreveal/CircularRevealWidget;

    .local v2, "circularRevealChild":Lcom/google/android/material/circularreveal/CircularRevealWidget;
    move-object v3, p1

    .line 320
    check-cast v3, Landroid/widget/ImageView;

    .line 321
    .local v3, "dependencyImageView":Landroid/widget/ImageView;
    invoke-virtual {v3}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 323
    .local v4, "icon":Landroid/graphics/drawable/Drawable;
    if-eqz v4, :cond_0

    .line 326
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 330
    if-eqz p3, :cond_3

    .line 331
    if-nez p4, :cond_2

    .line 332
    const/16 v6, 0xff

    invoke-virtual {v4, v6}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 334
    :cond_2
    sget-object v6, Lcom/google/android/material/animation/DrawableAlphaProperty;->DRAWABLE_ALPHA_COMPAT:Landroid/util/Property;

    const/4 v7, 0x1

    new-array v7, v7, [I

    const/4 v8, 0x0

    const/4 v9, 0x0

    aput v9, v7, v8

    invoke-static {v4, v6, v7}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 341
    .local v1, "animator":Landroid/animation/ObjectAnimator;
    :goto_1
    new-instance v6, Lcom/google/android/material/transformation/FabTransformationBehavior$2;

    invoke-direct {v6, p0, p2}, Lcom/google/android/material/transformation/FabTransformationBehavior$2;-><init>(Lcom/google/android/material/transformation/FabTransformationBehavior;Landroid/view/View;)V

    invoke-virtual {v1, v6}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 349
    iget-object v6, p5, Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;->timings:Lcom/google/android/material/animation/MotionSpec;

    const-string v7, "iconFade"

    invoke-virtual {v6, v7}, Lcom/google/android/material/animation/MotionSpec;->getTiming(Ljava/lang/String;)Lcom/google/android/material/animation/MotionTiming;

    move-result-object v5

    .line 350
    .local v5, "timing":Lcom/google/android/material/animation/MotionTiming;
    invoke-virtual {v5, v1}, Lcom/google/android/material/animation/MotionTiming;->apply(Landroid/animation/Animator;)V

    .line 351
    move-object/from16 v0, p6

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 352
    new-instance v6, Lcom/google/android/material/transformation/FabTransformationBehavior$3;

    invoke-direct {v6, p0, v2, v4}, Lcom/google/android/material/transformation/FabTransformationBehavior$3;-><init>(Lcom/google/android/material/transformation/FabTransformationBehavior;Lcom/google/android/material/circularreveal/CircularRevealWidget;Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v0, p7

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 336
    .end local v1    # "animator":Landroid/animation/ObjectAnimator;
    .end local v5    # "timing":Lcom/google/android/material/animation/MotionTiming;
    :cond_3
    sget-object v6, Lcom/google/android/material/animation/DrawableAlphaProperty;->DRAWABLE_ALPHA_COMPAT:Landroid/util/Property;

    const/4 v7, 0x1

    new-array v7, v7, [I

    const/4 v8, 0x0

    const/16 v9, 0xff

    aput v9, v7, v8

    invoke-static {v4, v6, v7}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .restart local v1    # "animator":Landroid/animation/ObjectAnimator;
    goto :goto_1
.end method

.method private createPostFillRadialExpansion(Landroid/view/View;JJJIIFLjava/util/List;)V
    .locals 4
    .param p1, "child"    # Landroid/view/View;
    .param p2, "delay"    # J
    .param p4, "duration"    # J
    .param p6, "totalDuration"    # J
    .param p8, "revealCenterX"    # I
    .param p9, "revealCenterY"    # I
    .param p10, "toRadius"    # F
    .param p11    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "JJJIIF",
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 774
    .local p11, "animations":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    .line 776
    add-long v2, p2, p4

    cmp-long v1, v2, p6

    if-gez v1, :cond_0

    .line 778
    invoke-static {p1, p8, p9, p10, p10}, Landroid/view/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    move-result-object v0

    .line 780
    .local v0, "animator":Landroid/animation/Animator;
    add-long v2, p2, p4

    invoke-virtual {v0, v2, v3}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 781
    add-long v2, p2, p4

    sub-long v2, p6, v2

    invoke-virtual {v0, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 782
    invoke-interface {p11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 785
    .end local v0    # "animator":Landroid/animation/Animator;
    :cond_0
    return-void
.end method

.method private createPreFillRadialExpansion(Landroid/view/View;JIIFLjava/util/List;)V
    .locals 6
    .param p1, "child"    # Landroid/view/View;
    .param p2, "delay"    # J
    .param p4, "revealCenterX"    # I
    .param p5, "revealCenterY"    # I
    .param p6, "fromRadius"    # F
    .param p7    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "JIIF",
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p7, "animations":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    const-wide/16 v4, 0x0

    .line 751
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    .line 753
    cmp-long v1, p2, v4

    if-lez v1, :cond_0

    .line 755
    invoke-static {p1, p4, p5, p6, p6}, Landroid/view/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    move-result-object v0

    .line 757
    .local v0, "animator":Landroid/animation/Animator;
    invoke-virtual {v0, v4, v5}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 758
    invoke-virtual {v0, p2, p3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 759
    invoke-interface {p7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 762
    .end local v0    # "animator":Landroid/animation/Animator;
    :cond_0
    return-void
.end method

.method private createTranslationAnimation(Landroid/view/View;Landroid/view/View;ZZLcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;Ljava/util/List;Ljava/util/List;Landroid/graphics/RectF;)V
    .locals 19
    .param p1, "dependency"    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "child"    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "expanded"    # Z
    .param p4, "currentlyAnimating"    # Z
    .param p5, "spec"    # Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p8, "childBounds"    # Landroid/graphics/RectF;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/view/View;",
            "ZZ",
            "Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;",
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator$AnimatorListener;",
            ">;",
            "Landroid/graphics/RectF;",
            ")V"
        }
    .end annotation

    .prologue
    .line 267
    .local p6, "animations":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    .local p7, "unusedListeners":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator$AnimatorListener;>;"
    move-object/from16 v0, p5

    iget-object v4, v0, Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;->positioning:Lcom/google/android/material/animation/Positioning;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2, v4}, Lcom/google/android/material/transformation/FabTransformationBehavior;->calculateTranslationX(Landroid/view/View;Landroid/view/View;Lcom/google/android/material/animation/Positioning;)F

    move-result v15

    .line 268
    .local v15, "translationX":F
    move-object/from16 v0, p5

    iget-object v4, v0, Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;->positioning:Lcom/google/android/material/animation/Positioning;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2, v4}, Lcom/google/android/material/transformation/FabTransformationBehavior;->calculateTranslationY(Landroid/view/View;Landroid/view/View;Lcom/google/android/material/animation/Positioning;)F

    move-result v17

    .line 274
    .local v17, "translationY":F
    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, p3

    move-object/from16 v3, p5

    invoke-direct {v0, v15, v1, v2, v3}, Lcom/google/android/material/transformation/FabTransformationBehavior;->calculateMotionTiming(FFZLcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;)Landroid/util/Pair;

    move-result-object v14

    .line 275
    .local v14, "motionTiming":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/google/android/material/animation/MotionTiming;Lcom/google/android/material/animation/MotionTiming;>;"
    iget-object v7, v14, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Lcom/google/android/material/animation/MotionTiming;

    .line 276
    .local v7, "translationXTiming":Lcom/google/android/material/animation/MotionTiming;
    iget-object v8, v14, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v8, Lcom/google/android/material/animation/MotionTiming;

    .line 278
    .local v8, "translationYTiming":Lcom/google/android/material/animation/MotionTiming;
    if-eqz p3, :cond_1

    .line 279
    if-nez p4, :cond_0

    .line 280
    neg-float v4, v15

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/view/View;->setTranslationX(F)V

    .line 281
    move/from16 v0, v17

    neg-float v4, v0

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/view/View;->setTranslationY(F)V

    .line 283
    :cond_0
    sget-object v4, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    const/4 v5, 0x1

    new-array v5, v5, [F

    const/4 v6, 0x0

    const/4 v9, 0x0

    aput v9, v5, v6

    move-object/from16 v0, p2

    invoke-static {v0, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v16

    .line 284
    .local v16, "translationXAnimator":Landroid/animation/ValueAnimator;
    sget-object v4, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v5, 0x1

    new-array v5, v5, [F

    const/4 v6, 0x0

    const/4 v9, 0x0

    aput v9, v5, v6

    move-object/from16 v0, p2

    invoke-static {v0, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v18

    .line 286
    .local v18, "translationYAnimator":Landroid/animation/ValueAnimator;
    neg-float v9, v15

    move/from16 v0, v17

    neg-float v10, v0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v4, p0

    move-object/from16 v5, p2

    move-object/from16 v6, p5

    move-object/from16 v13, p8

    invoke-direct/range {v4 .. v13}, Lcom/google/android/material/transformation/FabTransformationBehavior;->calculateChildVisibleBoundsAtEndOfExpansion(Landroid/view/View;Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;Lcom/google/android/material/animation/MotionTiming;Lcom/google/android/material/animation/MotionTiming;FFFFLandroid/graphics/RectF;)V

    .line 301
    :goto_0
    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Lcom/google/android/material/animation/MotionTiming;->apply(Landroid/animation/Animator;)V

    .line 302
    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Lcom/google/android/material/animation/MotionTiming;->apply(Landroid/animation/Animator;)V

    .line 303
    move-object/from16 v0, p6

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 304
    move-object/from16 v0, p6

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 305
    return-void

    .line 297
    .end local v16    # "translationXAnimator":Landroid/animation/ValueAnimator;
    .end local v18    # "translationYAnimator":Landroid/animation/ValueAnimator;
    :cond_1
    sget-object v4, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    const/4 v5, 0x1

    new-array v5, v5, [F

    const/4 v6, 0x0

    neg-float v9, v15

    aput v9, v5, v6

    move-object/from16 v0, p2

    invoke-static {v0, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v16

    .line 298
    .restart local v16    # "translationXAnimator":Landroid/animation/ValueAnimator;
    sget-object v4, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v5, 0x1

    new-array v5, v5, [F

    const/4 v6, 0x0

    move/from16 v0, v17

    neg-float v9, v0

    aput v9, v5, v6

    move-object/from16 v0, p2

    invoke-static {v0, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v18

    .restart local v18    # "translationYAnimator":Landroid/animation/ValueAnimator;
    goto :goto_0
.end method

.method private getBackgroundTint(Landroid/view/View;)I
    .locals 3
    .param p1, "view"    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 735
    invoke-static {p1}, Landroidx/core/view/ViewCompat;->getBackgroundTintList(Landroid/view/View;)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 736
    .local v0, "tintList":Landroid/content/res/ColorStateList;
    if-eqz v0, :cond_0

    .line 737
    invoke-virtual {p1}, Landroid/view/View;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    .line 739
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private toViewGroupOrNull(Landroid/view/View;)Landroid/view/ViewGroup;
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 727
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 728
    check-cast p1, Landroid/view/ViewGroup;

    .line 730
    .end local p1    # "view":Landroid/view/View;
    :goto_0
    return-object p1

    .restart local p1    # "view":Landroid/view/View;
    :cond_0
    const/4 p1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public layoutDependsOn(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z
    .locals 4
    .param p1, "parent"    # Landroidx/coordinatorlayout/widget/CoordinatorLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "child"    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "dependency"    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 99
    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_0

    .line 100
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "This behavior cannot be attached to a GONE view. Set the view to INVISIBLE instead."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 104
    :cond_0
    instance-of v2, p3, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    if-eqz v2, :cond_2

    .line 105
    check-cast p3, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 106
    .end local p3    # "dependency":Landroid/view/View;
    invoke-virtual {p3}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getExpandedComponentIdHint()I

    move-result v0

    .line 107
    .local v0, "expandedComponentIdHint":I
    if-eqz v0, :cond_1

    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v2

    if-ne v0, v2, :cond_2

    :cond_1
    const/4 v1, 0x1

    .line 109
    .end local v0    # "expandedComponentIdHint":I
    :cond_2
    return v1
.end method

.method public onAttachedToLayoutParams(Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;)V
    .locals 1
    .param p1, "lp"    # Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .prologue
    .line 115
    iget v0, p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->dodgeInsetEdges:I

    if-nez v0, :cond_0

    .line 118
    const/16 v0, 0x50

    iput v0, p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->dodgeInsetEdges:I

    .line 120
    :cond_0
    return-void
.end method

.method protected onCreateExpandedStateChangeAnimation(Landroid/view/View;Landroid/view/View;ZZ)Landroid/animation/AnimatorSet;
    .locals 26
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
    .line 129
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v4, v1}, Lcom/google/android/material/transformation/FabTransformationBehavior;->onCreateMotionSpec(Landroid/content/Context;Z)Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;

    move-result-object v9

    .line 131
    .local v9, "spec":Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;
    if-eqz p3, :cond_0

    .line 132
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTranslationX()F

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/google/android/material/transformation/FabTransformationBehavior;->dependencyOriginalTranslationX:F

    .line 133
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTranslationY()F

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/google/android/material/transformation/FabTransformationBehavior;->dependencyOriginalTranslationY:F

    .line 136
    :cond_0
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 137
    .local v10, "animations":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 139
    .local v11, "listeners":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator$AnimatorListener;>;"
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-lt v4, v5, :cond_1

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move/from16 v7, p3

    move/from16 v8, p4

    .line 140
    invoke-direct/range {v4 .. v11}, Lcom/google/android/material/transformation/FabTransformationBehavior;->createElevationAnimation(Landroid/view/View;Landroid/view/View;ZZLcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;Ljava/util/List;Ljava/util/List;)V

    .line 144
    :cond_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/material/transformation/FabTransformationBehavior;->tmpRectF1:Landroid/graphics/RectF;

    .local v12, "childBounds":Landroid/graphics/RectF;
    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move/from16 v7, p3

    move/from16 v8, p4

    .line 145
    invoke-direct/range {v4 .. v12}, Lcom/google/android/material/transformation/FabTransformationBehavior;->createTranslationAnimation(Landroid/view/View;Landroid/view/View;ZZLcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;Ljava/util/List;Ljava/util/List;Landroid/graphics/RectF;)V

    .line 147
    invoke-virtual {v12}, Landroid/graphics/RectF;->width()F

    move-result v19

    .line 148
    .local v19, "childWidth":F
    invoke-virtual {v12}, Landroid/graphics/RectF;->height()F

    move-result v20

    .local v20, "childHeight":F
    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move/from16 v8, p3

    .line 150
    invoke-direct/range {v5 .. v10}, Lcom/google/android/material/transformation/FabTransformationBehavior;->createDependencyTranslationAnimation(Landroid/view/View;Landroid/view/View;ZLcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;Ljava/util/List;)V

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move/from16 v7, p3

    move/from16 v8, p4

    .line 151
    invoke-direct/range {v4 .. v11}, Lcom/google/android/material/transformation/FabTransformationBehavior;->createIconFadeAnimation(Landroid/view/View;Landroid/view/View;ZZLcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;Ljava/util/List;Ljava/util/List;)V

    move-object/from16 v13, p0

    move-object/from16 v14, p1

    move-object/from16 v15, p2

    move/from16 v16, p3

    move/from16 v17, p4

    move-object/from16 v18, v9

    move-object/from16 v21, v10

    move-object/from16 v22, v11

    .line 152
    invoke-direct/range {v13 .. v22}, Lcom/google/android/material/transformation/FabTransformationBehavior;->createExpansionAnimation(Landroid/view/View;Landroid/view/View;ZZLcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;FFLjava/util/List;Ljava/util/List;)V

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move/from16 v7, p3

    move/from16 v8, p4

    .line 162
    invoke-direct/range {v4 .. v11}, Lcom/google/android/material/transformation/FabTransformationBehavior;->createColorAnimation(Landroid/view/View;Landroid/view/View;ZZLcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;Ljava/util/List;Ljava/util/List;)V

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move/from16 v7, p3

    move/from16 v8, p4

    .line 163
    invoke-direct/range {v4 .. v11}, Lcom/google/android/material/transformation/FabTransformationBehavior;->createChildrenFadeAnimation(Landroid/view/View;Landroid/view/View;ZZLcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;Ljava/util/List;Ljava/util/List;)V

    .line 166
    new-instance v25, Landroid/animation/AnimatorSet;

    invoke-direct/range {v25 .. v25}, Landroid/animation/AnimatorSet;-><init>()V

    .line 167
    .local v25, "set":Landroid/animation/AnimatorSet;
    move-object/from16 v0, v25

    invoke-static {v0, v10}, Lcom/google/android/material/animation/AnimatorSetCompat;->playTogether(Landroid/animation/AnimatorSet;Ljava/util/List;)V

    .line 168
    new-instance v4, Lcom/google/android/material/transformation/FabTransformationBehavior$1;

    move-object/from16 v0, p0

    move/from16 v1, p3

    move-object/from16 v2, p2

    move-object/from16 v3, p1

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/google/android/material/transformation/FabTransformationBehavior$1;-><init>(Lcom/google/android/material/transformation/FabTransformationBehavior;ZLandroid/view/View;Landroid/view/View;)V

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 190
    const/16 v24, 0x0

    .local v24, "i":I
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v23

    .local v23, "count":I
    :goto_0
    move/from16 v0, v24

    move/from16 v1, v23

    if-ge v0, v1, :cond_2

    .line 191
    move/from16 v0, v24

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/animation/Animator$AnimatorListener;

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 190
    add-int/lit8 v24, v24, 0x1

    goto :goto_0

    .line 193
    :cond_2
    return-object v25
.end method

.method protected abstract onCreateMotionSpec(Landroid/content/Context;Z)Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;
.end method

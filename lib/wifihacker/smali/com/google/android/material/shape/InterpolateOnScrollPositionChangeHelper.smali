.class public Lcom/google/android/material/shape/InterpolateOnScrollPositionChangeHelper;
.super Ljava/lang/Object;
.source "InterpolateOnScrollPositionChangeHelper.java"


# instance fields
.field private final containerLocation:[I

.field private containingScrollView:Landroid/widget/ScrollView;

.field private materialShapeDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

.field private final scrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

.field private final scrollLocation:[I

.field private shapedView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/google/android/material/shape/MaterialShapeDrawable;Landroid/widget/ScrollView;)V
    .locals 2
    .param p1, "shapedView"    # Landroid/view/View;
    .param p2, "materialShapeDrawable"    # Lcom/google/android/material/shape/MaterialShapeDrawable;
    .param p3, "containingScrollView"    # Landroid/widget/ScrollView;

    .prologue
    const/4 v1, 0x2

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/google/android/material/shape/InterpolateOnScrollPositionChangeHelper;->scrollLocation:[I

    .line 32
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/google/android/material/shape/InterpolateOnScrollPositionChangeHelper;->containerLocation:[I

    .line 33
    new-instance v0, Lcom/google/android/material/shape/InterpolateOnScrollPositionChangeHelper$1;

    invoke-direct {v0, p0}, Lcom/google/android/material/shape/InterpolateOnScrollPositionChangeHelper$1;-><init>(Lcom/google/android/material/shape/InterpolateOnScrollPositionChangeHelper;)V

    iput-object v0, p0, Lcom/google/android/material/shape/InterpolateOnScrollPositionChangeHelper;->scrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 53
    iput-object p1, p0, Lcom/google/android/material/shape/InterpolateOnScrollPositionChangeHelper;->shapedView:Landroid/view/View;

    .line 54
    iput-object p2, p0, Lcom/google/android/material/shape/InterpolateOnScrollPositionChangeHelper;->materialShapeDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 55
    iput-object p3, p0, Lcom/google/android/material/shape/InterpolateOnScrollPositionChangeHelper;->containingScrollView:Landroid/widget/ScrollView;

    .line 56
    return-void
.end method


# virtual methods
.method public setContainingScrollView(Landroid/widget/ScrollView;)V
    .locals 0
    .param p1, "containingScrollView"    # Landroid/widget/ScrollView;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/google/android/material/shape/InterpolateOnScrollPositionChangeHelper;->containingScrollView:Landroid/widget/ScrollView;

    .line 74
    return-void
.end method

.method public setMaterialShapeDrawable(Lcom/google/android/material/shape/MaterialShapeDrawable;)V
    .locals 0
    .param p1, "materialShapeDrawable"    # Lcom/google/android/material/shape/MaterialShapeDrawable;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/google/android/material/shape/InterpolateOnScrollPositionChangeHelper;->materialShapeDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 65
    return-void
.end method

.method public startListeningForScrollChanges(Landroid/view/ViewTreeObserver;)V
    .locals 1
    .param p1, "viewTreeObserver"    # Landroid/view/ViewTreeObserver;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 83
    iget-object v0, p0, Lcom/google/android/material/shape/InterpolateOnScrollPositionChangeHelper;->scrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 84
    return-void
.end method

.method public stopListeningForScrollChanges(Landroid/view/ViewTreeObserver;)V
    .locals 1
    .param p1, "viewTreeObserver"    # Landroid/view/ViewTreeObserver;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 93
    iget-object v0, p0, Lcom/google/android/material/shape/InterpolateOnScrollPositionChangeHelper;->scrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 94
    return-void
.end method

.method public updateInterpolationForScreenPosition()V
    .locals 9

    .prologue
    const/4 v6, 0x1

    const/4 v8, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    .line 101
    iget-object v4, p0, Lcom/google/android/material/shape/InterpolateOnScrollPositionChangeHelper;->containingScrollView:Landroid/widget/ScrollView;

    if-nez v4, :cond_1

    .line 131
    :cond_0
    :goto_0
    return-void

    .line 105
    :cond_1
    iget-object v4, p0, Lcom/google/android/material/shape/InterpolateOnScrollPositionChangeHelper;->containingScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v4}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v4

    if-nez v4, :cond_2

    .line 107
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Scroll bar must contain a child to calculate interpolation."

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 111
    :cond_2
    iget-object v4, p0, Lcom/google/android/material/shape/InterpolateOnScrollPositionChangeHelper;->containingScrollView:Landroid/widget/ScrollView;

    iget-object v5, p0, Lcom/google/android/material/shape/InterpolateOnScrollPositionChangeHelper;->scrollLocation:[I

    invoke-virtual {v4, v5}, Landroid/widget/ScrollView;->getLocationInWindow([I)V

    .line 112
    iget-object v4, p0, Lcom/google/android/material/shape/InterpolateOnScrollPositionChangeHelper;->containingScrollView:Landroid/widget/ScrollView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/material/shape/InterpolateOnScrollPositionChangeHelper;->containerLocation:[I

    invoke-virtual {v4, v5}, Landroid/view/View;->getLocationInWindow([I)V

    .line 113
    iget-object v4, p0, Lcom/google/android/material/shape/InterpolateOnScrollPositionChangeHelper;->shapedView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    iget-object v5, p0, Lcom/google/android/material/shape/InterpolateOnScrollPositionChangeHelper;->scrollLocation:[I

    aget v5, v5, v6

    sub-int/2addr v4, v5

    iget-object v5, p0, Lcom/google/android/material/shape/InterpolateOnScrollPositionChangeHelper;->containerLocation:[I

    aget v5, v5, v6

    add-int v3, v4, v5

    .line 114
    .local v3, "y":I
    iget-object v4, p0, Lcom/google/android/material/shape/InterpolateOnScrollPositionChangeHelper;->shapedView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 115
    .local v1, "viewHeight":I
    iget-object v4, p0, Lcom/google/android/material/shape/InterpolateOnScrollPositionChangeHelper;->containingScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v4}, Landroid/widget/ScrollView;->getHeight()I

    move-result v2

    .line 118
    .local v2, "windowHeight":I
    if-gez v3, :cond_3

    .line 119
    iget-object v4, p0, Lcom/google/android/material/shape/InterpolateOnScrollPositionChangeHelper;->materialShapeDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    int-to-float v5, v3

    int-to-float v6, v1

    div-float/2addr v5, v6

    add-float/2addr v5, v7

    .line 120
    invoke-static {v7, v5}, Ljava/lang/Math;->min(FF)F

    move-result v5

    invoke-static {v8, v5}, Ljava/lang/Math;->max(FF)F

    move-result v5

    .line 119
    invoke-virtual {v4, v5}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setInterpolation(F)V

    .line 121
    iget-object v4, p0, Lcom/google/android/material/shape/InterpolateOnScrollPositionChangeHelper;->shapedView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->invalidate()V

    goto :goto_0

    .line 122
    :cond_3
    add-int v4, v3, v1

    if-le v4, v2, :cond_4

    .line 123
    add-int v4, v3, v1

    sub-int v0, v4, v2

    .line 124
    .local v0, "distanceOffScreen":I
    iget-object v4, p0, Lcom/google/android/material/shape/InterpolateOnScrollPositionChangeHelper;->materialShapeDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    int-to-float v5, v0

    int-to-float v6, v1

    div-float/2addr v5, v6

    sub-float v5, v7, v5

    .line 125
    invoke-static {v7, v5}, Ljava/lang/Math;->min(FF)F

    move-result v5

    invoke-static {v8, v5}, Ljava/lang/Math;->max(FF)F

    move-result v5

    .line 124
    invoke-virtual {v4, v5}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setInterpolation(F)V

    .line 126
    iget-object v4, p0, Lcom/google/android/material/shape/InterpolateOnScrollPositionChangeHelper;->shapedView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->invalidate()V

    goto :goto_0

    .line 127
    .end local v0    # "distanceOffScreen":I
    :cond_4
    iget-object v4, p0, Lcom/google/android/material/shape/InterpolateOnScrollPositionChangeHelper;->materialShapeDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-virtual {v4}, Lcom/google/android/material/shape/MaterialShapeDrawable;->getInterpolation()F

    move-result v4

    cmpl-float v4, v4, v7

    if-eqz v4, :cond_0

    .line 128
    iget-object v4, p0, Lcom/google/android/material/shape/InterpolateOnScrollPositionChangeHelper;->materialShapeDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-virtual {v4, v7}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setInterpolation(F)V

    .line 129
    iget-object v4, p0, Lcom/google/android/material/shape/InterpolateOnScrollPositionChangeHelper;->shapedView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->invalidate()V

    goto/16 :goto_0
.end method

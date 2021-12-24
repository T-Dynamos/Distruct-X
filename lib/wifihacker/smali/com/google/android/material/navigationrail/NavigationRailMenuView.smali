.class public Lcom/google/android/material/navigationrail/NavigationRailMenuView;
.super Lcom/google/android/material/navigation/NavigationBarMenuView;
.source "NavigationRailMenuView.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# instance fields
.field private final layoutParams:Landroid/widget/FrameLayout$LayoutParams;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/google/android/material/navigation/NavigationBarMenuView;-><init>(Landroid/content/Context;)V

    .line 39
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/google/android/material/navigationrail/NavigationRailMenuView;->layoutParams:Landroid/widget/FrameLayout$LayoutParams;

    .line 45
    iget-object v0, p0, Lcom/google/android/material/navigationrail/NavigationRailMenuView;->layoutParams:Landroid/widget/FrameLayout$LayoutParams;

    const/16 v1, 0x31

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 46
    iget-object v0, p0, Lcom/google/android/material/navigationrail/NavigationRailMenuView;->layoutParams:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0, v0}, Lcom/google/android/material/navigationrail/NavigationRailMenuView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 47
    return-void
.end method

.method private makeSharedHeightSpec(III)I
    .locals 3
    .param p1, "parentWidthSpec"    # I
    .param p2, "maxHeight"    # I
    .param p3, "shareCount"    # I

    .prologue
    .line 90
    const/4 v1, 0x1

    invoke-static {v1, p3}, Ljava/lang/Math;->max(II)I

    move-result v1

    div-int v0, p2, v1

    .line 92
    .local v0, "maxAvailable":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, 0x0

    .line 91
    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    return v1
.end method

.method private measureChildHeight(Landroid/view/View;II)I
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "widthMeasureSpec"    # I
    .param p3, "heightMeasureSpec"    # I

    .prologue
    .line 136
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 137
    invoke-virtual {p1, p2, p3}, Landroid/view/View;->measure(II)V

    .line 138
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 141
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private measureSharedChildHeights(IIILandroid/view/View;)I
    .locals 7
    .param p1, "widthMeasureSpec"    # I
    .param p2, "maxHeight"    # I
    .param p3, "shareCount"    # I
    .param p4, "selectedView"    # Landroid/view/View;

    .prologue
    .line 112
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/material/navigationrail/NavigationRailMenuView;->makeSharedHeightSpec(III)I

    move-result v2

    .line 113
    .local v2, "childHeightSpec":I
    if-nez p4, :cond_1

    .line 114
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/material/navigationrail/NavigationRailMenuView;->makeSharedHeightSpec(III)I

    move-result v2

    .line 123
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/material/navigationrail/NavigationRailMenuView;->getChildCount()I

    move-result v1

    .line 124
    .local v1, "childCount":I
    const/4 v4, 0x0

    .line 125
    .local v4, "totalHeight":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v1, :cond_2

    .line 126
    invoke-virtual {p0, v3}, Lcom/google/android/material/navigationrail/NavigationRailMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 127
    .local v0, "child":Landroid/view/View;
    if-eq v0, p4, :cond_0

    .line 128
    invoke-direct {p0, v0, p1, v2}, Lcom/google/android/material/navigationrail/NavigationRailMenuView;->measureChildHeight(Landroid/view/View;II)I

    move-result v5

    add-int/2addr v4, v5

    .line 125
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 120
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "childCount":I
    .end local v3    # "i":I
    .end local v4    # "totalHeight":I
    :cond_1
    invoke-virtual {p4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    goto :goto_0

    .line 132
    .restart local v1    # "childCount":I
    .restart local v3    # "i":I
    .restart local v4    # "totalHeight":I
    :cond_2
    return v4
.end method

.method private measureShiftingChildHeights(III)I
    .locals 4
    .param p1, "widthMeasureSpec"    # I
    .param p2, "maxHeight"    # I
    .param p3, "shareCount"    # I

    .prologue
    .line 96
    const/4 v2, 0x0

    .line 98
    .local v2, "selectedViewHeight":I
    invoke-virtual {p0}, Lcom/google/android/material/navigationrail/NavigationRailMenuView;->getSelectedItemPosition()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/google/android/material/navigationrail/NavigationRailMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 99
    .local v1, "selectedView":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 100
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/material/navigationrail/NavigationRailMenuView;->makeSharedHeightSpec(III)I

    move-result v0

    .line 101
    .local v0, "childHeightSpec":I
    invoke-direct {p0, v1, p1, v0}, Lcom/google/android/material/navigationrail/NavigationRailMenuView;->measureChildHeight(Landroid/view/View;II)I

    move-result v2

    .line 102
    sub-int/2addr p2, v2

    .line 103
    add-int/lit8 p3, p3, -0x1

    .line 107
    .end local v0    # "childHeightSpec":I
    :cond_0
    invoke-direct {p0, p1, p2, p3, v1}, Lcom/google/android/material/navigationrail/NavigationRailMenuView;->measureSharedChildHeights(IIILandroid/view/View;)I

    move-result v3

    add-int/2addr v3, v2

    .line 106
    return v3
.end method


# virtual methods
.method protected createNavigationBarItemView(Landroid/content/Context;)Lcom/google/android/material/navigation/NavigationBarItemView;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 86
    new-instance v0, Lcom/google/android/material/navigationrail/NavigationRailItemView;

    invoke-direct {v0, p1}, Lcom/google/android/material/navigationrail/NavigationRailItemView;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method getMenuGravity()I
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/google/android/material/navigationrail/NavigationRailMenuView;->layoutParams:Landroid/widget/FrameLayout$LayoutParams;

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    return v0
.end method

.method isTopGravity()Z
    .locals 2

    .prologue
    .line 156
    iget-object v0, p0, Lcom/google/android/material/navigationrail/NavigationRailMenuView;->layoutParams:Landroid/widget/FrameLayout$LayoutParams;

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    and-int/lit8 v0, v0, 0x70

    const/16 v1, 0x30

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 8
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 70
    invoke-virtual {p0}, Lcom/google/android/material/navigationrail/NavigationRailMenuView;->getChildCount()I

    move-result v2

    .line 71
    .local v2, "count":I
    sub-int v5, p4, p2

    .line 72
    .local v5, "width":I
    const/4 v4, 0x0

    .line 73
    .local v4, "used":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 74
    invoke-virtual {p0, v3}, Lcom/google/android/material/navigationrail/NavigationRailMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 75
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v6

    const/16 v7, 0x8

    if-eq v6, v7, :cond_0

    .line 76
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 77
    .local v1, "childHeight":I
    const/4 v6, 0x0

    add-int v7, v1, v4

    invoke-virtual {v0, v6, v4, v5, v7}, Landroid/view/View;->layout(IIII)V

    .line 78
    add-int/2addr v4, v1

    .line 73
    .end local v1    # "childHeight":I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 81
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 6
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v5, 0x0

    .line 51
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 52
    .local v0, "maxHeight":I
    invoke-virtual {p0}, Lcom/google/android/material/navigationrail/NavigationRailMenuView;->getMenu()Landroidx/appcompat/view/menu/MenuBuilder;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/appcompat/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 55
    .local v3, "visibleCount":I
    const/4 v4, 0x1

    if-le v3, v4, :cond_0

    invoke-virtual {p0}, Lcom/google/android/material/navigationrail/NavigationRailMenuView;->getLabelVisibilityMode()I

    move-result v4

    invoke-virtual {p0, v4, v3}, Lcom/google/android/material/navigationrail/NavigationRailMenuView;->isShifting(II)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 56
    invoke-direct {p0, p1, v0, v3}, Lcom/google/android/material/navigationrail/NavigationRailMenuView;->measureShiftingChildHeights(III)I

    move-result v1

    .line 62
    .local v1, "measuredHeight":I
    :goto_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 64
    .local v2, "parentWidth":I
    invoke-static {v2, p1, v5}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v4

    .line 65
    invoke-static {v1, p2, v5}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v5

    .line 63
    invoke-virtual {p0, v4, v5}, Lcom/google/android/material/navigationrail/NavigationRailMenuView;->setMeasuredDimension(II)V

    .line 66
    return-void

    .line 58
    .end local v1    # "measuredHeight":I
    .end local v2    # "parentWidth":I
    :cond_0
    const/4 v4, 0x0

    invoke-direct {p0, p1, v0, v3, v4}, Lcom/google/android/material/navigationrail/NavigationRailMenuView;->measureSharedChildHeights(IIILandroid/view/View;)I

    move-result v1

    .restart local v1    # "measuredHeight":I
    goto :goto_0
.end method

.method setMenuGravity(I)V
    .locals 1
    .param p1, "gravity"    # I

    .prologue
    .line 145
    iget-object v0, p0, Lcom/google/android/material/navigationrail/NavigationRailMenuView;->layoutParams:Landroid/widget/FrameLayout$LayoutParams;

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    if-eq v0, p1, :cond_0

    .line 146
    iget-object v0, p0, Lcom/google/android/material/navigationrail/NavigationRailMenuView;->layoutParams:Landroid/widget/FrameLayout$LayoutParams;

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 147
    iget-object v0, p0, Lcom/google/android/material/navigationrail/NavigationRailMenuView;->layoutParams:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0, v0}, Lcom/google/android/material/navigationrail/NavigationRailMenuView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 149
    :cond_0
    return-void
.end method

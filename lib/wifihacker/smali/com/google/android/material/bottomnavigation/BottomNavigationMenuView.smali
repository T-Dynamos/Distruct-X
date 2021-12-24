.class public Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;
.super Lcom/google/android/material/navigation/NavigationBarMenuView;
.source "BottomNavigationMenuView.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# instance fields
.field private final activeItemMaxWidth:I

.field private final activeItemMinWidth:I

.field private final inactiveItemMaxWidth:I

.field private final inactiveItemMinWidth:I

.field private final itemHeight:I

.field private itemHorizontalTranslationEnabled:Z

.field private tempChildWidths:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v2, -0x2

    .line 49
    invoke-direct {p0, p1}, Lcom/google/android/material/navigation/NavigationBarMenuView;-><init>(Landroid/content/Context;)V

    .line 51
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 54
    .local v0, "params":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v2, 0x11

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 55
    invoke-virtual {p0, v0}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 57
    invoke-virtual {p0}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 58
    .local v1, "res":Landroid/content/res/Resources;
    sget v2, Lcom/google/android/material/R$dimen;->design_bottom_navigation_item_max_width:I

    .line 59
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->inactiveItemMaxWidth:I

    .line 60
    sget v2, Lcom/google/android/material/R$dimen;->design_bottom_navigation_item_min_width:I

    .line 61
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->inactiveItemMinWidth:I

    .line 62
    sget v2, Lcom/google/android/material/R$dimen;->design_bottom_navigation_active_item_max_width:I

    .line 63
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->activeItemMaxWidth:I

    .line 64
    sget v2, Lcom/google/android/material/R$dimen;->design_bottom_navigation_active_item_min_width:I

    .line 65
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->activeItemMinWidth:I

    .line 66
    sget v2, Lcom/google/android/material/R$dimen;->design_bottom_navigation_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->itemHeight:I

    .line 68
    const/4 v2, 0x5

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->tempChildWidths:[I

    .line 69
    return-void
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
    .line 197
    new-instance v0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;

    invoke-direct {v0, p1}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public isItemHorizontalTranslationEnabled()Z
    .locals 1

    .prologue
    .line 191
    iget-boolean v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->itemHorizontalTranslationEnabled:Z

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 9
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    const/4 v8, 0x0

    .line 153
    invoke-virtual {p0}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->getChildCount()I

    move-result v1

    .line 154
    .local v1, "count":I
    sub-int v5, p4, p2

    .line 155
    .local v5, "width":I
    sub-int v2, p5, p3

    .line 156
    .local v2, "height":I
    const/4 v4, 0x0

    .line 157
    .local v4, "used":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_2

    .line 158
    invoke-virtual {p0, v3}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 159
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v6

    const/16 v7, 0x8

    if-ne v6, v7, :cond_0

    .line 157
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 162
    :cond_0
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_1

    .line 163
    sub-int v6, v5, v4

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    sub-int/2addr v6, v7

    sub-int v7, v5, v4

    invoke-virtual {v0, v6, v8, v7, v2}, Landroid/view/View;->layout(IIII)V

    .line 167
    :goto_2
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    add-int/2addr v4, v6

    goto :goto_1

    .line 165
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    add-int/2addr v6, v4

    invoke-virtual {v0, v4, v8, v6, v2}, Landroid/view/View;->layout(IIII)V

    goto :goto_2

    .line 169
    .end local v0    # "child":Landroid/view/View;
    :cond_2
    return-void
.end method

.method protected onMeasure(II)V
    .locals 25
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 73
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->getMenu()Landroidx/appcompat/view/menu/MenuBuilder;

    move-result-object v16

    .line 74
    .local v16, "menu":Landroidx/appcompat/view/menu/MenuBuilder;
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v21

    .line 76
    .local v21, "width":I
    invoke-virtual/range {v16 .. v16}, Landroidx/appcompat/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v20

    .line 78
    .local v20, "visibleCount":I
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->getChildCount()I

    move-result v18

    .line 80
    .local v18, "totalCount":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->itemHeight:I

    move/from16 v22, v0

    const/high16 v23, 0x40000000    # 2.0f

    invoke-static/range {v22 .. v23}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    .line 82
    .local v10, "heightSpec":I
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->getLabelVisibilityMode()I

    move-result v22

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->isShifting(II)Z

    move-result v22

    if-eqz v22, :cond_6

    .line 83
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->isItemHorizontalTranslationEnabled()Z

    move-result v22

    if-eqz v22, :cond_6

    .line 84
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->getSelectedItemPosition()I

    move-result v22

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 85
    .local v3, "activeChild":Landroid/view/View;
    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->activeItemMinWidth:I

    .line 86
    .local v4, "activeItemWidth":I
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v22

    const/16 v23, 0x8

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_0

    .line 89
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->activeItemMaxWidth:I

    move/from16 v22, v0

    const/high16 v23, -0x80000000

    .line 90
    invoke-static/range {v22 .. v23}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v22

    .line 89
    move/from16 v0, v22

    invoke-virtual {v3, v0, v10}, Landroid/view/View;->measure(II)V

    .line 91
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v22

    move/from16 v0, v22

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 93
    :cond_0
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v22

    const/16 v23, 0x8

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_2

    const/16 v22, 0x1

    :goto_0
    sub-int v12, v20, v22

    .line 94
    .local v12, "inactiveCount":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->inactiveItemMinWidth:I

    move/from16 v22, v0

    mul-int v22, v22, v12

    sub-int v5, v21, v22

    .line 95
    .local v5, "activeMaxAvailable":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->activeItemMaxWidth:I

    move/from16 v22, v0

    .line 96
    move/from16 v0, v22

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v22

    move/from16 v0, v22

    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 97
    .local v6, "activeWidth":I
    sub-int v23, v21, v6

    if-nez v12, :cond_3

    const/16 v22, 0x1

    :goto_1
    div-int v13, v23, v22

    .line 99
    .local v13, "inactiveMaxAvailable":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->inactiveItemMaxWidth:I

    move/from16 v22, v0

    move/from16 v0, v22

    invoke-static {v13, v0}, Ljava/lang/Math;->min(II)I

    move-result v14

    .line 100
    .local v14, "inactiveWidth":I
    sub-int v22, v21, v6

    mul-int v23, v14, v12

    sub-int v9, v22, v23

    .line 102
    .local v9, "extra":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_2
    move/from16 v0, v18

    if-ge v11, v0, :cond_a

    .line 103
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getVisibility()I

    move-result v22

    const/16 v23, 0x8

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_5

    .line 104
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->tempChildWidths:[I

    move-object/from16 v23, v0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->getSelectedItemPosition()I

    move-result v22

    move/from16 v0, v22

    if-ne v11, v0, :cond_4

    move/from16 v22, v6

    :goto_3
    aput v22, v23, v11

    .line 108
    if-lez v9, :cond_1

    .line 109
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->tempChildWidths:[I

    move-object/from16 v22, v0

    aget v23, v22, v11

    add-int/lit8 v23, v23, 0x1

    aput v23, v22, v11

    .line 110
    add-int/lit8 v9, v9, -0x1

    .line 102
    :cond_1
    :goto_4
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 93
    .end local v5    # "activeMaxAvailable":I
    .end local v6    # "activeWidth":I
    .end local v9    # "extra":I
    .end local v11    # "i":I
    .end local v12    # "inactiveCount":I
    .end local v13    # "inactiveMaxAvailable":I
    .end local v14    # "inactiveWidth":I
    :cond_2
    const/16 v22, 0x0

    goto :goto_0

    .restart local v5    # "activeMaxAvailable":I
    .restart local v6    # "activeWidth":I
    .restart local v12    # "inactiveCount":I
    :cond_3
    move/from16 v22, v12

    .line 97
    goto :goto_1

    .restart local v9    # "extra":I
    .restart local v11    # "i":I
    .restart local v13    # "inactiveMaxAvailable":I
    .restart local v14    # "inactiveWidth":I
    :cond_4
    move/from16 v22, v14

    .line 104
    goto :goto_3

    .line 113
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->tempChildWidths:[I

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aput v23, v22, v11

    goto :goto_4

    .line 117
    .end local v3    # "activeChild":Landroid/view/View;
    .end local v4    # "activeItemWidth":I
    .end local v5    # "activeMaxAvailable":I
    .end local v6    # "activeWidth":I
    .end local v9    # "extra":I
    .end local v11    # "i":I
    .end local v12    # "inactiveCount":I
    .end local v13    # "inactiveMaxAvailable":I
    .end local v14    # "inactiveWidth":I
    :cond_6
    if-nez v20, :cond_8

    const/16 v22, 0x1

    :goto_5
    div-int v15, v21, v22

    .line 118
    .local v15, "maxAvailable":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->activeItemMaxWidth:I

    move/from16 v22, v0

    move/from16 v0, v22

    invoke-static {v15, v0}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 119
    .local v8, "childWidth":I
    mul-int v22, v8, v20

    sub-int v9, v21, v22

    .line 120
    .restart local v9    # "extra":I
    const/4 v11, 0x0

    .restart local v11    # "i":I
    :goto_6
    move/from16 v0, v18

    if-ge v11, v0, :cond_a

    .line 121
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getVisibility()I

    move-result v22

    const/16 v23, 0x8

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_9

    .line 122
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->tempChildWidths:[I

    move-object/from16 v22, v0

    aput v8, v22, v11

    .line 123
    if-lez v9, :cond_7

    .line 124
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->tempChildWidths:[I

    move-object/from16 v22, v0

    aget v23, v22, v11

    add-int/lit8 v23, v23, 0x1

    aput v23, v22, v11

    .line 125
    add-int/lit8 v9, v9, -0x1

    .line 120
    :cond_7
    :goto_7
    add-int/lit8 v11, v11, 0x1

    goto :goto_6

    .end local v8    # "childWidth":I
    .end local v9    # "extra":I
    .end local v11    # "i":I
    .end local v15    # "maxAvailable":I
    :cond_8
    move/from16 v22, v20

    .line 117
    goto :goto_5

    .line 128
    .restart local v8    # "childWidth":I
    .restart local v9    # "extra":I
    .restart local v11    # "i":I
    .restart local v15    # "maxAvailable":I
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->tempChildWidths:[I

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aput v23, v22, v11

    goto :goto_7

    .line 133
    .end local v8    # "childWidth":I
    .end local v15    # "maxAvailable":I
    :cond_a
    const/16 v19, 0x0

    .line 134
    .local v19, "totalWidth":I
    const/4 v11, 0x0

    :goto_8
    move/from16 v0, v18

    if-ge v11, v0, :cond_c

    .line 135
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 136
    .local v7, "child":Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v22

    const/16 v23, 0x8

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_b

    .line 134
    :goto_9
    add-int/lit8 v11, v11, 0x1

    goto :goto_8

    .line 139
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->tempChildWidths:[I

    move-object/from16 v22, v0

    aget v22, v22, v11

    const/high16 v23, 0x40000000    # 2.0f

    .line 140
    invoke-static/range {v22 .. v23}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v22

    .line 139
    move/from16 v0, v22

    invoke-virtual {v7, v0, v10}, Landroid/view/View;->measure(II)V

    .line 141
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v17

    .line 142
    .local v17, "params":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, v17

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 143
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v22

    add-int v19, v19, v22

    goto :goto_9

    .line 145
    .end local v7    # "child":Landroid/view/View;
    .end local v17    # "params":Landroid/view/ViewGroup$LayoutParams;
    :cond_c
    const/high16 v22, 0x40000000    # 2.0f

    .line 147
    move/from16 v0, v19

    move/from16 v1, v22

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v22

    const/16 v23, 0x0

    .line 146
    move/from16 v0, v19

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-static {v0, v1, v2}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->itemHeight:I

    move/from16 v23, v0

    const/16 v24, 0x0

    .line 148
    move/from16 v0, v23

    move/from16 v1, v24

    invoke-static {v0, v10, v1}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v23

    .line 145
    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->setMeasuredDimension(II)V

    .line 149
    return-void
.end method

.method public setItemHorizontalTranslationEnabled(Z)V
    .locals 0
    .param p1, "itemHorizontalTranslationEnabled"    # Z

    .prologue
    .line 180
    iput-boolean p1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->itemHorizontalTranslationEnabled:Z

    .line 181
    return-void
.end method

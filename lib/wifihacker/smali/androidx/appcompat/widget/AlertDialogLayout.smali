.class public Landroidx/appcompat/widget/AlertDialogLayout;
.super Landroidx/appcompat/widget/LinearLayoutCompat;
.source "AlertDialogLayout.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 55
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/LinearLayoutCompat;-><init>(Landroid/content/Context;)V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/LinearLayoutCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 60
    return-void
.end method

.method private forceUniformWidth(II)V
    .locals 9
    .param p1, "count"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v3, 0x0

    .line 217
    .line 218
    invoke-virtual {p0}, Landroidx/appcompat/widget/AlertDialogLayout;->getMeasuredWidth()I

    move-result v0

    const/high16 v4, 0x40000000    # 2.0f

    .line 217
    invoke-static {v0, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 220
    .local v2, "uniformMeasureSpec":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, p1, :cond_1

    .line 221
    invoke-virtual {p0, v6}, Landroidx/appcompat/widget/AlertDialogLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 222
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v4, 0x8

    if-eq v0, v4, :cond_0

    .line 223
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    .line 224
    .local v7, "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    iget v0, v7, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->width:I

    const/4 v4, -0x1

    if-ne v0, v4, :cond_0

    .line 227
    iget v8, v7, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->height:I

    .line 228
    .local v8, "oldHeight":I
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iput v0, v7, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->height:I

    move-object v0, p0

    move v4, p2

    move v5, v3

    .line 231
    invoke-virtual/range {v0 .. v5}, Landroidx/appcompat/widget/AlertDialogLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 232
    iput v8, v7, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->height:I

    .line 220
    .end local v7    # "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    .end local v8    # "oldHeight":I
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 236
    .end local v1    # "child":Landroid/view/View;
    :cond_1
    return-void
.end method

.method private static resolveMinimumHeight(Landroid/view/View;)I
    .locals 5
    .param p0, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 248
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v0

    .line 249
    .local v0, "minHeight":I
    if-lez v0, :cond_0

    .line 260
    .end local v0    # "minHeight":I
    :goto_0
    return v0

    .line 253
    .restart local v0    # "minHeight":I
    :cond_0
    instance-of v3, p0, Landroid/view/ViewGroup;

    if-eqz v3, :cond_1

    move-object v1, p0

    .line 254
    check-cast v1, Landroid/view/ViewGroup;

    .line 255
    .local v1, "vg":Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 256
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Landroidx/appcompat/widget/AlertDialogLayout;->resolveMinimumHeight(Landroid/view/View;)I

    move-result v0

    goto :goto_0

    .end local v1    # "vg":Landroid/view/ViewGroup;
    :cond_1
    move v0, v2

    .line 260
    goto :goto_0
.end method

.method private setChildFrame(Landroid/view/View;IIII)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I

    .prologue
    .line 348
    add-int v0, p2, p4

    add-int v1, p3, p5

    invoke-virtual {p1, p2, p3, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 349
    return-void
.end method

.method private tryOnMeasure(II)Z
    .locals 26
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 71
    const/16 v20, 0x0

    .line 72
    .local v20, "topPanel":Landroid/view/View;
    const/4 v4, 0x0

    .line 73
    .local v4, "buttonPanel":Landroid/view/View;
    const/16 v18, 0x0

    .line 75
    .local v18, "middlePanel":Landroid/view/View;
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/AlertDialogLayout;->getChildCount()I

    move-result v9

    .line 76
    .local v9, "count":I
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_0
    if-ge v14, v9, :cond_6

    .line 77
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroidx/appcompat/widget/AlertDialogLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 78
    .local v6, "child":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v24

    const/16 v25, 0x8

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_0

    .line 76
    :goto_1
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 82
    :cond_0
    invoke-virtual {v6}, Landroid/view/View;->getId()I

    move-result v15

    .line 83
    .local v15, "id":I
    sget v24, Landroidx/appcompat/R$id;->topPanel:I

    move/from16 v0, v24

    if-ne v15, v0, :cond_1

    .line 84
    move-object/from16 v20, v6

    goto :goto_1

    .line 85
    :cond_1
    sget v24, Landroidx/appcompat/R$id;->buttonPanel:I

    move/from16 v0, v24

    if-ne v15, v0, :cond_2

    .line 86
    move-object v4, v6

    goto :goto_1

    .line 87
    :cond_2
    sget v24, Landroidx/appcompat/R$id;->contentPanel:I

    move/from16 v0, v24

    if-eq v15, v0, :cond_3

    sget v24, Landroidx/appcompat/R$id;->customPanel:I

    move/from16 v0, v24

    if-ne v15, v0, :cond_5

    .line 88
    :cond_3
    if-eqz v18, :cond_4

    .line 90
    const/16 v24, 0x0

    .line 206
    .end local v6    # "child":Landroid/view/View;
    .end local v15    # "id":I
    :goto_2
    return v24

    .line 92
    .restart local v6    # "child":Landroid/view/View;
    .restart local v15    # "id":I
    :cond_4
    move-object/from16 v18, v6

    goto :goto_1

    .line 95
    :cond_5
    const/16 v24, 0x0

    goto :goto_2

    .line 99
    .end local v6    # "child":Landroid/view/View;
    .end local v15    # "id":I
    :cond_6
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v10

    .line 100
    .local v10, "heightMode":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v11

    .line 101
    .local v11, "heightSize":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v22

    .line 103
    .local v22, "widthMode":I
    const/4 v8, 0x0

    .line 104
    .local v8, "childState":I
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/AlertDialogLayout;->getPaddingTop()I

    move-result v24

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/AlertDialogLayout;->getPaddingBottom()I

    move-result v25

    add-int v21, v24, v25

    .line 106
    .local v21, "usedHeight":I
    if-eqz v20, :cond_7

    .line 107
    const/16 v24, 0x0

    move-object/from16 v0, v20

    move/from16 v1, p1

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    .line 109
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getMeasuredHeight()I

    move-result v24

    add-int v21, v21, v24

    .line 110
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getMeasuredState()I

    move-result v24

    move/from16 v0, v24

    invoke-static {v8, v0}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v8

    .line 113
    :cond_7
    const/4 v3, 0x0

    .line 114
    .local v3, "buttonHeight":I
    const/4 v5, 0x0

    .line 115
    .local v5, "buttonWantsHeight":I
    if-eqz v4, :cond_8

    .line 116
    const/16 v24, 0x0

    move/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v4, v0, v1}, Landroid/view/View;->measure(II)V

    .line 117
    invoke-static {v4}, Landroidx/appcompat/widget/AlertDialogLayout;->resolveMinimumHeight(Landroid/view/View;)I

    move-result v3

    .line 118
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v24

    sub-int v5, v24, v3

    .line 120
    add-int v21, v21, v3

    .line 121
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredState()I

    move-result v24

    move/from16 v0, v24

    invoke-static {v8, v0}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v8

    .line 124
    :cond_8
    const/16 v17, 0x0

    .line 125
    .local v17, "middleHeight":I
    if-eqz v18, :cond_9

    .line 127
    if-nez v10, :cond_e

    .line 128
    const/4 v7, 0x0

    .line 134
    .local v7, "childHeightSpec":I
    :goto_3
    move-object/from16 v0, v18

    move/from16 v1, p1

    invoke-virtual {v0, v1, v7}, Landroid/view/View;->measure(II)V

    .line 135
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getMeasuredHeight()I

    move-result v17

    .line 137
    add-int v21, v21, v17

    .line 138
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getMeasuredState()I

    move-result v24

    move/from16 v0, v24

    invoke-static {v8, v0}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v8

    .line 141
    .end local v7    # "childHeightSpec":I
    :cond_9
    sub-int v19, v11, v21

    .line 146
    .local v19, "remainingHeight":I
    if-eqz v4, :cond_b

    .line 147
    sub-int v21, v21, v3

    .line 149
    move/from16 v0, v19

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 150
    .local v13, "heightToGive":I
    if-lez v13, :cond_a

    .line 151
    sub-int v19, v19, v13

    .line 152
    add-int/2addr v3, v13

    .line 155
    :cond_a
    const/high16 v24, 0x40000000    # 2.0f

    move/from16 v0, v24

    invoke-static {v3, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 157
    .restart local v7    # "childHeightSpec":I
    move/from16 v0, p1

    invoke-virtual {v4, v0, v7}, Landroid/view/View;->measure(II)V

    .line 159
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v24

    add-int v21, v21, v24

    .line 160
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredState()I

    move-result v24

    move/from16 v0, v24

    invoke-static {v8, v0}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v8

    .line 165
    .end local v7    # "childHeightSpec":I
    .end local v13    # "heightToGive":I
    :cond_b
    if-eqz v18, :cond_c

    if-lez v19, :cond_c

    .line 166
    sub-int v21, v21, v17

    .line 168
    move/from16 v13, v19

    .line 169
    .restart local v13    # "heightToGive":I
    sub-int v19, v19, v13

    .line 170
    add-int v17, v17, v13

    .line 175
    move/from16 v0, v17

    invoke-static {v0, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 177
    .restart local v7    # "childHeightSpec":I
    move-object/from16 v0, v18

    move/from16 v1, p1

    invoke-virtual {v0, v1, v7}, Landroid/view/View;->measure(II)V

    .line 179
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getMeasuredHeight()I

    move-result v24

    add-int v21, v21, v24

    .line 180
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getMeasuredState()I

    move-result v24

    move/from16 v0, v24

    invoke-static {v8, v0}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v8

    .line 184
    .end local v7    # "childHeightSpec":I
    .end local v13    # "heightToGive":I
    :cond_c
    const/16 v16, 0x0

    .line 185
    .local v16, "maxWidth":I
    const/4 v14, 0x0

    :goto_4
    if-ge v14, v9, :cond_f

    .line 186
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroidx/appcompat/widget/AlertDialogLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 187
    .restart local v6    # "child":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v24

    const/16 v25, 0x8

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_d

    .line 188
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v24

    move/from16 v0, v16

    move/from16 v1, v24

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v16

    .line 185
    :cond_d
    add-int/lit8 v14, v14, 0x1

    goto :goto_4

    .line 130
    .end local v6    # "child":Landroid/view/View;
    .end local v16    # "maxWidth":I
    .end local v19    # "remainingHeight":I
    :cond_e
    const/16 v24, 0x0

    sub-int v25, v11, v21

    .line 131
    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->max(II)I

    move-result v24

    .line 130
    move/from16 v0, v24

    invoke-static {v0, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .restart local v7    # "childHeightSpec":I
    goto/16 :goto_3

    .line 192
    .end local v7    # "childHeightSpec":I
    .restart local v16    # "maxWidth":I
    .restart local v19    # "remainingHeight":I
    :cond_f
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/AlertDialogLayout;->getPaddingLeft()I

    move-result v24

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/AlertDialogLayout;->getPaddingRight()I

    move-result v25

    add-int v24, v24, v25

    add-int v16, v16, v24

    .line 194
    move/from16 v0, v16

    move/from16 v1, p1

    invoke-static {v0, v1, v8}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v23

    .line 196
    .local v23, "widthSizeAndState":I
    const/16 v24, 0x0

    move/from16 v0, v21

    move/from16 v1, p2

    move/from16 v2, v24

    invoke-static {v0, v1, v2}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v12

    .line 198
    .local v12, "heightSizeAndState":I
    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1, v12}, Landroidx/appcompat/widget/AlertDialogLayout;->setMeasuredDimension(II)V

    .line 202
    const/high16 v24, 0x40000000    # 2.0f

    move/from16 v0, v22

    move/from16 v1, v24

    if-eq v0, v1, :cond_10

    .line 203
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v9, v1}, Landroidx/appcompat/widget/AlertDialogLayout;->forceUniformWidth(II)V

    .line 206
    :cond_10
    const/16 v24, 0x1

    goto/16 :goto_2
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 24
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 265
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/AlertDialogLayout;->getPaddingLeft()I

    move-result v20

    .line 268
    .local v20, "paddingLeft":I
    sub-int v22, p4, p2

    .line 269
    .local v22, "width":I
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/AlertDialogLayout;->getPaddingRight()I

    move-result v1

    sub-int v8, v22, v1

    .line 272
    .local v8, "childRight":I
    sub-int v1, v22, v20

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/AlertDialogLayout;->getPaddingRight()I

    move-result v23

    sub-int v9, v1, v23

    .line 274
    .local v9, "childSpace":I
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/AlertDialogLayout;->getMeasuredHeight()I

    move-result v21

    .line 275
    .local v21, "totalLength":I
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/AlertDialogLayout;->getChildCount()I

    move-result v10

    .line 276
    .local v10, "count":I
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/AlertDialogLayout;->getGravity()I

    move-result v13

    .line 277
    .local v13, "gravity":I
    and-int/lit8 v18, v13, 0x70

    .line 278
    .local v18, "majorGravity":I
    const v1, 0x800007

    and-int v19, v13, v1

    .line 281
    .local v19, "minorGravity":I
    sparse-switch v18, :sswitch_data_0

    .line 294
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/AlertDialogLayout;->getPaddingTop()I

    move-result v4

    .line 298
    .local v4, "childTop":I
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/AlertDialogLayout;->getDividerDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v11

    .line 299
    .local v11, "dividerDrawable":Landroid/graphics/drawable/Drawable;
    if-nez v11, :cond_3

    .line 300
    const/4 v12, 0x0

    .line 302
    .local v12, "dividerHeight":I
    :goto_1
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_2
    if-ge v14, v10, :cond_4

    .line 303
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroidx/appcompat/widget/AlertDialogLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 304
    .local v2, "child":Landroid/view/View;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v23, 0x8

    move/from16 v0, v23

    if-eq v1, v0, :cond_2

    .line 305
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    .line 306
    .local v5, "childWidth":I
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    .line 309
    .local v6, "childHeight":I
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v17

    check-cast v17, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    .line 311
    .local v17, "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    move-object/from16 v0, v17

    iget v0, v0, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->gravity:I

    move/from16 v16, v0

    .line 312
    .local v16, "layoutGravity":I
    if-gez v16, :cond_0

    .line 313
    move/from16 v16, v19

    .line 315
    :cond_0
    invoke-static/range {p0 .. p0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v15

    .line 316
    .local v15, "layoutDirection":I
    move/from16 v0, v16

    invoke-static {v0, v15}, Landroidx/core/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v7

    .line 320
    .local v7, "absoluteGravity":I
    and-int/lit8 v1, v7, 0x7

    sparse-switch v1, :sswitch_data_1

    .line 332
    move-object/from16 v0, v17

    iget v1, v0, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    add-int v3, v20, v1

    .line 336
    .local v3, "childLeft":I
    :goto_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroidx/appcompat/widget/AlertDialogLayout;->hasDividerBeforeChildAt(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 337
    add-int/2addr v4, v12

    .line 340
    :cond_1
    move-object/from16 v0, v17

    iget v1, v0, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->topMargin:I

    add-int/2addr v4, v1

    move-object/from16 v1, p0

    .line 341
    invoke-direct/range {v1 .. v6}, Landroidx/appcompat/widget/AlertDialogLayout;->setChildFrame(Landroid/view/View;IIII)V

    .line 342
    move-object/from16 v0, v17

    iget v1, v0, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->bottomMargin:I

    add-int/2addr v1, v6

    add-int/2addr v4, v1

    .line 302
    .end local v3    # "childLeft":I
    .end local v5    # "childWidth":I
    .end local v6    # "childHeight":I
    .end local v7    # "absoluteGravity":I
    .end local v15    # "layoutDirection":I
    .end local v16    # "layoutGravity":I
    .end local v17    # "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    :cond_2
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 284
    .end local v2    # "child":Landroid/view/View;
    .end local v4    # "childTop":I
    .end local v11    # "dividerDrawable":Landroid/graphics/drawable/Drawable;
    .end local v12    # "dividerHeight":I
    .end local v14    # "i":I
    :sswitch_0
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/AlertDialogLayout;->getPaddingTop()I

    move-result v1

    add-int v1, v1, p5

    sub-int v1, v1, p3

    sub-int v4, v1, v21

    .line 285
    .restart local v4    # "childTop":I
    goto :goto_0

    .line 289
    .end local v4    # "childTop":I
    :sswitch_1
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/AlertDialogLayout;->getPaddingTop()I

    move-result v1

    sub-int v23, p5, p3

    sub-int v23, v23, v21

    div-int/lit8 v23, v23, 0x2

    add-int v4, v1, v23

    .line 290
    .restart local v4    # "childTop":I
    goto :goto_0

    .line 300
    .restart local v11    # "dividerDrawable":Landroid/graphics/drawable/Drawable;
    :cond_3
    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v12

    goto :goto_1

    .line 322
    .restart local v2    # "child":Landroid/view/View;
    .restart local v5    # "childWidth":I
    .restart local v6    # "childHeight":I
    .restart local v7    # "absoluteGravity":I
    .restart local v12    # "dividerHeight":I
    .restart local v14    # "i":I
    .restart local v15    # "layoutDirection":I
    .restart local v16    # "layoutGravity":I
    .restart local v17    # "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    :sswitch_2
    sub-int v1, v9, v5

    div-int/lit8 v1, v1, 0x2

    add-int v1, v1, v20

    move-object/from16 v0, v17

    iget v0, v0, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    move/from16 v23, v0

    add-int v1, v1, v23

    move-object/from16 v0, v17

    iget v0, v0, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    move/from16 v23, v0

    sub-int v3, v1, v23

    .line 324
    .restart local v3    # "childLeft":I
    goto :goto_3

    .line 327
    .end local v3    # "childLeft":I
    :sswitch_3
    sub-int v1, v8, v5

    move-object/from16 v0, v17

    iget v0, v0, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    move/from16 v23, v0

    sub-int v3, v1, v23

    .line 328
    .restart local v3    # "childLeft":I
    goto :goto_3

    .line 345
    .end local v2    # "child":Landroid/view/View;
    .end local v3    # "childLeft":I
    .end local v5    # "childWidth":I
    .end local v6    # "childHeight":I
    .end local v7    # "absoluteGravity":I
    .end local v15    # "layoutDirection":I
    .end local v16    # "layoutGravity":I
    .end local v17    # "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    :cond_4
    return-void

    .line 281
    nop

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_1
        0x50 -> :sswitch_0
    .end sparse-switch

    .line 320
    :sswitch_data_1
    .sparse-switch
        0x1 -> :sswitch_2
        0x5 -> :sswitch_3
    .end sparse-switch
.end method

.method protected onMeasure(II)V
    .locals 1
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 64
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AlertDialogLayout;->tryOnMeasure(II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 66
    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/LinearLayoutCompat;->onMeasure(II)V

    .line 68
    :cond_0
    return-void
.end method

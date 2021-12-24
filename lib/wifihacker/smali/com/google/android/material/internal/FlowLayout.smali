.class public Lcom/google/android/material/internal/FlowLayout;
.super Landroid/view/ViewGroup;
.source "FlowLayout.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# instance fields
.field private itemSpacing:I

.field private lineSpacing:I

.field private rowCount:I

.field private singleLine:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 50
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/material/internal/FlowLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 54
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/internal/FlowLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 58
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 59
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/material/internal/FlowLayout;->singleLine:Z

    .line 60
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/internal/FlowLayout;->loadFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 66
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 67
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/material/internal/FlowLayout;->singleLine:Z

    .line 68
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/internal/FlowLayout;->loadFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 69
    return-void
.end method

.method private static getMeasuredDimension(III)I
    .locals 0
    .param p0, "size"    # I
    .param p1, "mode"    # I
    .param p2, "childrenEdge"    # I

    .prologue
    .line 178
    sparse-switch p1, :sswitch_data_0

    move p0, p2

    .line 184
    .end local p0    # "size":I
    :goto_0
    :sswitch_0
    return p0

    .line 182
    .restart local p0    # "size":I
    :sswitch_1
    invoke-static {p2, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    goto :goto_0

    .line 178
    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x40000000 -> :sswitch_0
    .end sparse-switch
.end method

.method private loadFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v3, 0x0

    .line 72
    .line 73
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget-object v2, Lcom/google/android/material/R$styleable;->FlowLayout:[I

    invoke-virtual {v1, p2, v2, v3, v3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 74
    .local v0, "array":Landroid/content/res/TypedArray;
    sget v1, Lcom/google/android/material/R$styleable;->FlowLayout_lineSpacing:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/google/android/material/internal/FlowLayout;->lineSpacing:I

    .line 75
    sget v1, Lcom/google/android/material/R$styleable;->FlowLayout_itemSpacing:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/google/android/material/internal/FlowLayout;->itemSpacing:I

    .line 76
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 77
    return-void
.end method


# virtual methods
.method protected getItemSpacing()I
    .locals 1

    .prologue
    .line 88
    iget v0, p0, Lcom/google/android/material/internal/FlowLayout;->itemSpacing:I

    return v0
.end method

.method protected getLineSpacing()I
    .locals 1

    .prologue
    .line 80
    iget v0, p0, Lcom/google/android/material/internal/FlowLayout;->lineSpacing:I

    return v0
.end method

.method protected getRowCount()I
    .locals 1

    .prologue
    .line 248
    iget v0, p0, Lcom/google/android/material/internal/FlowLayout;->rowCount:I

    return v0
.end method

.method public getRowIndex(Landroid/view/View;)I
    .locals 2
    .param p1, "child"    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 253
    sget v1, Lcom/google/android/material/R$id;->row_index_key:I

    invoke-virtual {p1, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 254
    .local v0, "index":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/Integer;

    if-nez v1, :cond_0

    .line 255
    const/4 v1, -0x1

    .line 257
    .end local v0    # "index":Ljava/lang/Object;
    :goto_0
    return v1

    .restart local v0    # "index":Ljava/lang/Object;
    :cond_0
    check-cast v0, Ljava/lang/Integer;

    .end local v0    # "index":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0
.end method

.method public isSingleLine()Z
    .locals 1

    .prologue
    .line 97
    iget-boolean v0, p0, Lcom/google/android/material/internal/FlowLayout;->singleLine:Z

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 17
    .param p1, "sizeChanged"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 190
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/internal/FlowLayout;->getChildCount()I

    move-result v15

    if-nez v15, :cond_1

    .line 192
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput v15, v0, Lcom/google/android/material/internal/FlowLayout;->rowCount:I

    .line 245
    :cond_0
    return-void

    .line 195
    :cond_1
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput v15, v0, Lcom/google/android/material/internal/FlowLayout;->rowCount:I

    .line 197
    invoke-static/range {p0 .. p0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_2

    const/4 v8, 0x1

    .line 198
    .local v8, "isRtl":Z
    :goto_0
    if-eqz v8, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/internal/FlowLayout;->getPaddingRight()I

    move-result v13

    .line 199
    .local v13, "paddingStart":I
    :goto_1
    if-eqz v8, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/internal/FlowLayout;->getPaddingLeft()I

    move-result v12

    .line 200
    .local v12, "paddingEnd":I
    :goto_2
    move v4, v13

    .line 201
    .local v4, "childStart":I
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/internal/FlowLayout;->getPaddingTop()I

    move-result v5

    .line 202
    .local v5, "childTop":I
    move v2, v5

    .line 205
    .local v2, "childBottom":I
    sub-int v15, p4, p2

    sub-int v11, v15, v12

    .line 207
    .local v11, "maxChildEnd":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/internal/FlowLayout;->getChildCount()I

    move-result v15

    if-ge v7, v15, :cond_0

    .line 208
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/google/android/material/internal/FlowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 210
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v15

    const/16 v16, 0x8

    move/from16 v0, v16

    if-ne v15, v0, :cond_5

    .line 211
    sget v15, Lcom/google/android/material/R$id;->row_index_key:I

    const/16 v16, -0x1

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v1, v15, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 207
    :goto_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 197
    .end local v1    # "child":Landroid/view/View;
    .end local v2    # "childBottom":I
    .end local v4    # "childStart":I
    .end local v5    # "childTop":I
    .end local v7    # "i":I
    .end local v8    # "isRtl":Z
    .end local v11    # "maxChildEnd":I
    .end local v12    # "paddingEnd":I
    .end local v13    # "paddingStart":I
    :cond_2
    const/4 v8, 0x0

    goto :goto_0

    .line 198
    .restart local v8    # "isRtl":Z
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/internal/FlowLayout;->getPaddingLeft()I

    move-result v13

    goto :goto_1

    .line 199
    .restart local v13    # "paddingStart":I
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/internal/FlowLayout;->getPaddingRight()I

    move-result v12

    goto :goto_2

    .line 215
    .restart local v1    # "child":Landroid/view/View;
    .restart local v2    # "childBottom":I
    .restart local v4    # "childStart":I
    .restart local v5    # "childTop":I
    .restart local v7    # "i":I
    .restart local v11    # "maxChildEnd":I
    .restart local v12    # "paddingEnd":I
    :cond_5
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    .line 216
    .local v9, "lp":Landroid/view/ViewGroup$LayoutParams;
    const/4 v14, 0x0

    .line 217
    .local v14, "startMargin":I
    const/4 v6, 0x0

    .line 218
    .local v6, "endMargin":I
    instance-of v15, v9, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v15, :cond_6

    move-object v10, v9

    .line 219
    check-cast v10, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 220
    .local v10, "marginLp":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-static {v10}, Landroidx/core/view/MarginLayoutParamsCompat;->getMarginStart(Landroid/view/ViewGroup$MarginLayoutParams;)I

    move-result v14

    .line 221
    invoke-static {v10}, Landroidx/core/view/MarginLayoutParamsCompat;->getMarginEnd(Landroid/view/ViewGroup$MarginLayoutParams;)I

    move-result v6

    .line 224
    .end local v10    # "marginLp":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_6
    add-int v15, v4, v14

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v16

    add-int v3, v15, v16

    .line 226
    .local v3, "childEnd":I
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/google/android/material/internal/FlowLayout;->singleLine:Z

    if-nez v15, :cond_7

    if-le v3, v11, :cond_7

    .line 227
    move v4, v13

    .line 228
    move-object/from16 v0, p0

    iget v15, v0, Lcom/google/android/material/internal/FlowLayout;->lineSpacing:I

    add-int v5, v2, v15

    .line 229
    move-object/from16 v0, p0

    iget v15, v0, Lcom/google/android/material/internal/FlowLayout;->rowCount:I

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, p0

    iput v15, v0, Lcom/google/android/material/internal/FlowLayout;->rowCount:I

    .line 231
    :cond_7
    sget v15, Lcom/google/android/material/R$id;->row_index_key:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/material/internal/FlowLayout;->rowCount:I

    move/from16 v16, v0

    add-int/lit8 v16, v16, -0x1

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v1, v15, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 233
    add-int v15, v4, v14

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v16

    add-int v3, v15, v16

    .line 234
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    add-int v2, v5, v15

    .line 236
    if-eqz v8, :cond_8

    .line 237
    sub-int v15, v11, v3

    sub-int v16, v11, v4

    sub-int v16, v16, v14

    move/from16 v0, v16

    invoke-virtual {v1, v15, v5, v0, v2}, Landroid/view/View;->layout(IIII)V

    .line 243
    :goto_5
    add-int v15, v14, v6

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v16

    add-int v15, v15, v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/material/internal/FlowLayout;->itemSpacing:I

    move/from16 v16, v0

    add-int v15, v15, v16

    add-int/2addr v4, v15

    goto/16 :goto_4

    .line 240
    :cond_8
    add-int v15, v4, v14

    invoke-virtual {v1, v15, v5, v3, v2}, Landroid/view/View;->layout(IIII)V

    goto :goto_5
.end method

.method protected onMeasure(II)V
    .locals 24
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 107
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v20

    .line 108
    .local v20, "width":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v21

    .line 110
    .local v21, "widthMode":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v10

    .line 111
    .local v10, "height":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v11

    .line 113
    .local v11, "heightMode":I
    const/high16 v22, -0x80000000

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_0

    const/high16 v22, 0x40000000    # 2.0f

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_2

    :cond_0
    move/from16 v18, v20

    .line 118
    .local v18, "maxWidth":I
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/internal/FlowLayout;->getPaddingLeft()I

    move-result v5

    .line 119
    .local v5, "childLeft":I
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/internal/FlowLayout;->getPaddingTop()I

    move-result v7

    .line 120
    .local v7, "childTop":I
    move v4, v7

    .line 121
    .local v4, "childBottom":I
    move v6, v5

    .line 122
    .local v6, "childRight":I
    const/16 v16, 0x0

    .line 123
    .local v16, "maxChildRight":I
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/internal/FlowLayout;->getPaddingRight()I

    move-result v22

    sub-int v17, v18, v22

    .line 124
    .local v17, "maxRight":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/internal/FlowLayout;->getChildCount()I

    move-result v22

    move/from16 v0, v22

    if-ge v12, v0, :cond_7

    .line 125
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/google/android/material/internal/FlowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 127
    .local v3, "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v22

    const/16 v23, 0x8

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_3

    .line 124
    :cond_1
    :goto_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 113
    .end local v3    # "child":Landroid/view/View;
    .end local v4    # "childBottom":I
    .end local v5    # "childLeft":I
    .end local v6    # "childRight":I
    .end local v7    # "childTop":I
    .end local v12    # "i":I
    .end local v16    # "maxChildRight":I
    .end local v17    # "maxRight":I
    .end local v18    # "maxWidth":I
    :cond_2
    const v18, 0x7fffffff

    goto :goto_0

    .line 130
    .restart local v3    # "child":Landroid/view/View;
    .restart local v4    # "childBottom":I
    .restart local v5    # "childLeft":I
    .restart local v6    # "childRight":I
    .restart local v7    # "childTop":I
    .restart local v12    # "i":I
    .restart local v16    # "maxChildRight":I
    .restart local v17    # "maxRight":I
    .restart local v18    # "maxWidth":I
    :cond_3
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual {v0, v3, v1, v2}, Lcom/google/android/material/internal/FlowLayout;->measureChild(Landroid/view/View;II)V

    .line 132
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    .line 133
    .local v14, "lp":Landroid/view/ViewGroup$LayoutParams;
    const/4 v13, 0x0

    .line 134
    .local v13, "leftMargin":I
    const/16 v19, 0x0

    .line 135
    .local v19, "rightMargin":I
    instance-of v0, v14, Landroid/view/ViewGroup$MarginLayoutParams;

    move/from16 v22, v0

    if-eqz v22, :cond_4

    move-object v15, v14

    .line 136
    check-cast v15, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 137
    .local v15, "marginLp":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v0, v15, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move/from16 v22, v0

    add-int v13, v13, v22

    .line 138
    iget v0, v15, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move/from16 v22, v0

    add-int v19, v19, v22

    .line 141
    .end local v15    # "marginLp":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_4
    add-int v22, v5, v13

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v23

    add-int v6, v22, v23

    .line 146
    move/from16 v0, v17

    if-le v6, v0, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/internal/FlowLayout;->isSingleLine()Z

    move-result v22

    if-nez v22, :cond_5

    .line 147
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/internal/FlowLayout;->getPaddingLeft()I

    move-result v5

    .line 148
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/material/internal/FlowLayout;->lineSpacing:I

    move/from16 v22, v0

    add-int v7, v4, v22

    .line 151
    :cond_5
    add-int v22, v5, v13

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v23

    add-int v6, v22, v23

    .line 152
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v22

    add-int v4, v7, v22

    .line 155
    move/from16 v0, v16

    if-le v6, v0, :cond_6

    .line 156
    move/from16 v16, v6

    .line 159
    :cond_6
    add-int v22, v13, v19

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v23

    add-int v22, v22, v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/material/internal/FlowLayout;->itemSpacing:I

    move/from16 v23, v0

    add-int v22, v22, v23

    add-int v5, v5, v22

    .line 164
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/internal/FlowLayout;->getChildCount()I

    move-result v22

    add-int/lit8 v22, v22, -0x1

    move/from16 v0, v22

    if-ne v12, v0, :cond_1

    .line 165
    add-int v16, v16, v19

    goto :goto_2

    .line 169
    .end local v3    # "child":Landroid/view/View;
    .end local v13    # "leftMargin":I
    .end local v14    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v19    # "rightMargin":I
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/internal/FlowLayout;->getPaddingRight()I

    move-result v22

    add-int v16, v16, v22

    .line 170
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/internal/FlowLayout;->getPaddingBottom()I

    move-result v22

    add-int v4, v4, v22

    .line 172
    move/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v16

    invoke-static {v0, v1, v2}, Lcom/google/android/material/internal/FlowLayout;->getMeasuredDimension(III)I

    move-result v9

    .line 173
    .local v9, "finalWidth":I
    invoke-static {v10, v11, v4}, Lcom/google/android/material/internal/FlowLayout;->getMeasuredDimension(III)I

    move-result v8

    .line 174
    .local v8, "finalHeight":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v8}, Lcom/google/android/material/internal/FlowLayout;->setMeasuredDimension(II)V

    .line 175
    return-void
.end method

.method protected setItemSpacing(I)V
    .locals 0
    .param p1, "itemSpacing"    # I

    .prologue
    .line 92
    iput p1, p0, Lcom/google/android/material/internal/FlowLayout;->itemSpacing:I

    .line 93
    return-void
.end method

.method protected setLineSpacing(I)V
    .locals 0
    .param p1, "lineSpacing"    # I

    .prologue
    .line 84
    iput p1, p0, Lcom/google/android/material/internal/FlowLayout;->lineSpacing:I

    .line 85
    return-void
.end method

.method public setSingleLine(Z)V
    .locals 0
    .param p1, "singleLine"    # Z

    .prologue
    .line 102
    iput-boolean p1, p0, Lcom/google/android/material/internal/FlowLayout;->singleLine:Z

    .line 103
    return-void
.end method

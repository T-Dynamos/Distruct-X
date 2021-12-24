.class final Lcom/google/android/material/datepicker/CalendarItemStyle;
.super Ljava/lang/Object;
.source "CalendarItemStyle.java"


# instance fields
.field private final backgroundColor:Landroid/content/res/ColorStateList;

.field private final insets:Landroid/graphics/Rect;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final itemShape:Lcom/google/android/material/shape/ShapeAppearanceModel;

.field private final strokeColor:Landroid/content/res/ColorStateList;

.field private final strokeWidth:I

.field private final textColor:Landroid/content/res/ColorStateList;


# direct methods
.method private constructor <init>(Landroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;ILcom/google/android/material/shape/ShapeAppearanceModel;Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "backgroundColor"    # Landroid/content/res/ColorStateList;
    .param p2, "textColor"    # Landroid/content/res/ColorStateList;
    .param p3, "strokeColor"    # Landroid/content/res/ColorStateList;
    .param p4, "strokeWidth"    # I
    .param p5, "itemShape"    # Lcom/google/android/material/shape/ShapeAppearanceModel;
    .param p6, "insets"    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iget v0, p6, Landroid/graphics/Rect;->left:I

    invoke-static {v0}, Landroidx/core/util/Preconditions;->checkArgumentNonnegative(I)I

    .line 68
    iget v0, p6, Landroid/graphics/Rect;->top:I

    invoke-static {v0}, Landroidx/core/util/Preconditions;->checkArgumentNonnegative(I)I

    .line 69
    iget v0, p6, Landroid/graphics/Rect;->right:I

    invoke-static {v0}, Landroidx/core/util/Preconditions;->checkArgumentNonnegative(I)I

    .line 70
    iget v0, p6, Landroid/graphics/Rect;->bottom:I

    invoke-static {v0}, Landroidx/core/util/Preconditions;->checkArgumentNonnegative(I)I

    .line 72
    iput-object p6, p0, Lcom/google/android/material/datepicker/CalendarItemStyle;->insets:Landroid/graphics/Rect;

    .line 73
    iput-object p2, p0, Lcom/google/android/material/datepicker/CalendarItemStyle;->textColor:Landroid/content/res/ColorStateList;

    .line 74
    iput-object p1, p0, Lcom/google/android/material/datepicker/CalendarItemStyle;->backgroundColor:Landroid/content/res/ColorStateList;

    .line 75
    iput-object p3, p0, Lcom/google/android/material/datepicker/CalendarItemStyle;->strokeColor:Landroid/content/res/ColorStateList;

    .line 76
    iput p4, p0, Lcom/google/android/material/datepicker/CalendarItemStyle;->strokeWidth:I

    .line 77
    iput-object p5, p0, Lcom/google/android/material/datepicker/CalendarItemStyle;->itemShape:Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 78
    return-void
.end method

.method static create(Landroid/content/Context;I)Lcom/google/android/material/datepicker/CalendarItemStyle;
    .locals 17
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "materialCalendarItemStyle"    # I
        .annotation build Landroidx/annotation/StyleRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 87
    if-eqz p1, :cond_0

    const/4 v2, 0x1

    :goto_0
    const-string v16, "Cannot create a CalendarItemStyle with a styleResId of 0"

    move-object/from16 v0, v16

    invoke-static {v2, v0}, Landroidx/core/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 90
    sget-object v2, Lcom/google/android/material/R$styleable;->MaterialCalendarItem:[I

    .line 91
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v15

    .line 92
    .local v15, "styleableArray":Landroid/content/res/TypedArray;
    sget v2, Lcom/google/android/material/R$styleable;->MaterialCalendarItem_android_insetLeft:I

    const/16 v16, 0x0

    .line 93
    move/from16 v0, v16

    invoke-virtual {v15, v2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v10

    .line 95
    .local v10, "insetLeft":I
    sget v2, Lcom/google/android/material/R$styleable;->MaterialCalendarItem_android_insetTop:I

    const/16 v16, 0x0

    .line 96
    move/from16 v0, v16

    invoke-virtual {v15, v2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v12

    .line 98
    .local v12, "insetTop":I
    sget v2, Lcom/google/android/material/R$styleable;->MaterialCalendarItem_android_insetRight:I

    const/16 v16, 0x0

    .line 99
    move/from16 v0, v16

    invoke-virtual {v15, v2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v11

    .line 101
    .local v11, "insetRight":I
    sget v2, Lcom/google/android/material/R$styleable;->MaterialCalendarItem_android_insetBottom:I

    const/16 v16, 0x0

    .line 102
    move/from16 v0, v16

    invoke-virtual {v15, v2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v9

    .line 104
    .local v9, "insetBottom":I
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8, v10, v12, v11, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 106
    .local v8, "insets":Landroid/graphics/Rect;
    sget v2, Lcom/google/android/material/R$styleable;->MaterialCalendarItem_itemFillColor:I

    .line 107
    move-object/from16 v0, p0

    invoke-static {v0, v15, v2}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v3

    .line 109
    .local v3, "backgroundColor":Landroid/content/res/ColorStateList;
    sget v2, Lcom/google/android/material/R$styleable;->MaterialCalendarItem_itemTextColor:I

    .line 110
    move-object/from16 v0, p0

    invoke-static {v0, v15, v2}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v4

    .line 112
    .local v4, "textColor":Landroid/content/res/ColorStateList;
    sget v2, Lcom/google/android/material/R$styleable;->MaterialCalendarItem_itemStrokeColor:I

    .line 113
    move-object/from16 v0, p0

    invoke-static {v0, v15, v2}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v5

    .line 115
    .local v5, "strokeColor":Landroid/content/res/ColorStateList;
    sget v2, Lcom/google/android/material/R$styleable;->MaterialCalendarItem_itemStrokeWidth:I

    const/16 v16, 0x0

    .line 116
    move/from16 v0, v16

    invoke-virtual {v15, v2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    .line 118
    .local v6, "strokeWidth":I
    sget v2, Lcom/google/android/material/R$styleable;->MaterialCalendarItem_itemShapeAppearance:I

    const/16 v16, 0x0

    .line 119
    move/from16 v0, v16

    invoke-virtual {v15, v2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v14

    .line 120
    .local v14, "shapeAppearanceResId":I
    sget v2, Lcom/google/android/material/R$styleable;->MaterialCalendarItem_itemShapeAppearanceOverlay:I

    const/16 v16, 0x0

    .line 121
    move/from16 v0, v16

    invoke-virtual {v15, v2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v13

    .line 125
    .local v13, "shapeAppearanceOverlayResId":I
    move-object/from16 v0, p0

    invoke-static {v0, v14, v13}, Lcom/google/android/material/shape/ShapeAppearanceModel;->builder(Landroid/content/Context;II)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object v2

    .line 126
    invoke-virtual {v2}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->build()Lcom/google/android/material/shape/ShapeAppearanceModel;

    move-result-object v7

    .line 128
    .local v7, "itemShape":Lcom/google/android/material/shape/ShapeAppearanceModel;
    invoke-virtual {v15}, Landroid/content/res/TypedArray;->recycle()V

    .line 130
    new-instance v2, Lcom/google/android/material/datepicker/CalendarItemStyle;

    invoke-direct/range {v2 .. v8}, Lcom/google/android/material/datepicker/CalendarItemStyle;-><init>(Landroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;ILcom/google/android/material/shape/ShapeAppearanceModel;Landroid/graphics/Rect;)V

    return-object v2

    .line 87
    .end local v3    # "backgroundColor":Landroid/content/res/ColorStateList;
    .end local v4    # "textColor":Landroid/content/res/ColorStateList;
    .end local v5    # "strokeColor":Landroid/content/res/ColorStateList;
    .end local v6    # "strokeWidth":I
    .end local v7    # "itemShape":Lcom/google/android/material/shape/ShapeAppearanceModel;
    .end local v8    # "insets":Landroid/graphics/Rect;
    .end local v9    # "insetBottom":I
    .end local v10    # "insetLeft":I
    .end local v11    # "insetRight":I
    .end local v12    # "insetTop":I
    .end local v13    # "shapeAppearanceOverlayResId":I
    .end local v14    # "shapeAppearanceResId":I
    .end local v15    # "styleableArray":Landroid/content/res/TypedArray;
    :cond_0
    const/4 v2, 0x0

    goto/16 :goto_0
.end method


# virtual methods
.method getBottomInset()I
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/google/android/material/datepicker/CalendarItemStyle;->insets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    return v0
.end method

.method getLeftInset()I
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/google/android/material/datepicker/CalendarItemStyle;->insets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    return v0
.end method

.method getRightInset()I
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/google/android/material/datepicker/CalendarItemStyle;->insets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    return v0
.end method

.method getTopInset()I
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/google/android/material/datepicker/CalendarItemStyle;->insets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    return v0
.end method

.method styleItem(Landroid/widget/TextView;)V
    .locals 8
    .param p1, "item"    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 136
    new-instance v6, Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-direct {v6}, Lcom/google/android/material/shape/MaterialShapeDrawable;-><init>()V

    .line 137
    .local v6, "backgroundDrawable":Lcom/google/android/material/shape/MaterialShapeDrawable;
    new-instance v7, Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-direct {v7}, Lcom/google/android/material/shape/MaterialShapeDrawable;-><init>()V

    .line 138
    .local v7, "shapeMask":Lcom/google/android/material/shape/MaterialShapeDrawable;
    iget-object v0, p0, Lcom/google/android/material/datepicker/CalendarItemStyle;->itemShape:Lcom/google/android/material/shape/ShapeAppearanceModel;

    invoke-virtual {v6, v0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setShapeAppearanceModel(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    .line 139
    iget-object v0, p0, Lcom/google/android/material/datepicker/CalendarItemStyle;->itemShape:Lcom/google/android/material/shape/ShapeAppearanceModel;

    invoke-virtual {v7, v0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setShapeAppearanceModel(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    .line 140
    iget-object v0, p0, Lcom/google/android/material/datepicker/CalendarItemStyle;->backgroundColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v6, v0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setFillColor(Landroid/content/res/ColorStateList;)V

    .line 141
    iget v0, p0, Lcom/google/android/material/datepicker/CalendarItemStyle;->strokeWidth:I

    int-to-float v0, v0

    iget-object v2, p0, Lcom/google/android/material/datepicker/CalendarItemStyle;->strokeColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v6, v0, v2}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setStroke(FLandroid/content/res/ColorStateList;)V

    .line 142
    iget-object v0, p0, Lcom/google/android/material/datepicker/CalendarItemStyle;->textColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 144
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v0, v2, :cond_0

    .line 145
    new-instance v1, Landroid/graphics/drawable/RippleDrawable;

    iget-object v0, p0, Lcom/google/android/material/datepicker/CalendarItemStyle;->textColor:Landroid/content/res/ColorStateList;

    const/16 v2, 0x1e

    invoke-virtual {v0, v2}, Landroid/content/res/ColorStateList;->withAlpha(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-direct {v1, v0, v6, v7}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 149
    .local v1, "d":Landroid/graphics/drawable/Drawable;
    :goto_0
    new-instance v0, Landroid/graphics/drawable/InsetDrawable;

    iget-object v2, p0, Lcom/google/android/material/datepicker/CalendarItemStyle;->insets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/google/android/material/datepicker/CalendarItemStyle;->insets:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lcom/google/android/material/datepicker/CalendarItemStyle;->insets:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    iget-object v5, p0, Lcom/google/android/material/datepicker/CalendarItemStyle;->insets:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    invoke-direct/range {v0 .. v5}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    invoke-static {p1, v0}, Landroidx/core/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 151
    return-void

    .line 147
    .end local v1    # "d":Landroid/graphics/drawable/Drawable;
    :cond_0
    move-object v1, v6

    .restart local v1    # "d":Landroid/graphics/drawable/Drawable;
    goto :goto_0
.end method

.class final Lcom/google/android/material/datepicker/MaterialCalendarGridView;
.super Landroid/widget/GridView;
.source "MaterialCalendarGridView.java"


# instance fields
.field private final dayCompute:Ljava/util/Calendar;

.field private final nestedScrollable:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 46
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 50
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 54
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    invoke-static {}, Lcom/google/android/material/datepicker/UtcDates;->getUtcCalendar()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->dayCompute:Ljava/util/Calendar;

    .line 55
    invoke-virtual {p0}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/material/datepicker/MaterialDatePicker;->isFullscreen(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    sget v0, Lcom/google/android/material/R$id;->cancel_button:I

    invoke-virtual {p0, v0}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->setNextFocusLeftId(I)V

    .line 57
    sget v0, Lcom/google/android/material/R$id;->confirm_button:I

    invoke-virtual {p0, v0}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->setNextFocusRightId(I)V

    .line 59
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/material/datepicker/MaterialDatePicker;->isNestedScrollable(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->nestedScrollable:Z

    .line 60
    new-instance v0, Lcom/google/android/material/datepicker/MaterialCalendarGridView$1;

    invoke-direct {v0, p0}, Lcom/google/android/material/datepicker/MaterialCalendarGridView$1;-><init>(Lcom/google/android/material/datepicker/MaterialCalendarGridView;)V

    invoke-static {p0, v0}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    .line 71
    return-void
.end method

.method private gainFocus(ILandroid/graphics/Rect;)V
    .locals 1
    .param p1, "direction"    # I
    .param p2, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    .line 221
    const/16 v0, 0x21

    if-ne p1, v0, :cond_0

    .line 222
    invoke-virtual {p0}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->getAdapter()Lcom/google/android/material/datepicker/MonthAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/datepicker/MonthAdapter;->lastPositionInMonth()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->setSelection(I)V

    .line 228
    :goto_0
    return-void

    .line 223
    :cond_0
    const/16 v0, 0x82

    if-ne p1, v0, :cond_1

    .line 224
    invoke-virtual {p0}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->getAdapter()Lcom/google/android/material/datepicker/MonthAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/datepicker/MonthAdapter;->firstPositionInMonth()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->setSelection(I)V

    goto :goto_0

    .line 226
    :cond_1
    const/4 v0, 0x1

    invoke-super {p0, v0, p1, p2}, Landroid/widget/GridView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    goto :goto_0
.end method

.method private static horizontalMidPoint(Landroid/view/View;)I
    .locals 2
    .param p0, "view"    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 242
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    return v0
.end method

.method private static skipMonth(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;)Z
    .locals 6
    .param p0, "firstOfMonth"    # Ljava/lang/Long;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p1, "lastOfMonth"    # Ljava/lang/Long;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "startDay"    # Ljava/lang/Long;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "endDay"    # Ljava/lang/Long;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x1

    .line 235
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 238
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-gtz v1, :cond_0

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-ltz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public bridge synthetic getAdapter()Landroid/widget/Adapter;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 40
    invoke-virtual {p0}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->getAdapter()Lcom/google/android/material/datepicker/MonthAdapter;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getAdapter()Landroid/widget/ListAdapter;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 40
    invoke-virtual {p0}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->getAdapter()Lcom/google/android/material/datepicker/MonthAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Lcom/google/android/material/datepicker/MonthAdapter;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 108
    invoke-super {p0}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/datepicker/MonthAdapter;

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 75
    invoke-super {p0}, Landroid/widget/GridView;->onAttachedToWindow()V

    .line 76
    invoke-virtual {p0}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->getAdapter()Lcom/google/android/material/datepicker/MonthAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/datepicker/MonthAdapter;->notifyDataSetChanged()V

    .line 77
    return-void
.end method

.method protected final onDraw(Landroid/graphics/Canvas;)V
    .locals 34
    .param p1, "canvas"    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 125
    invoke-super/range {p0 .. p1}, Landroid/widget/GridView;->onDraw(Landroid/graphics/Canvas;)V

    .line 126
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->getAdapter()Lcom/google/android/material/datepicker/MonthAdapter;

    move-result-object v24

    .line 127
    .local v24, "monthAdapter":Lcom/google/android/material/datepicker/MonthAdapter;
    move-object/from16 v0, v24

    iget-object v10, v0, Lcom/google/android/material/datepicker/MonthAdapter;->dateSelector:Lcom/google/android/material/datepicker/DateSelector;

    .line 128
    .local v10, "dateSelector":Lcom/google/android/material/datepicker/DateSelector;, "Lcom/google/android/material/datepicker/DateSelector<*>;"
    move-object/from16 v0, v24

    iget-object v9, v0, Lcom/google/android/material/datepicker/MonthAdapter;->calendarStyle:Lcom/google/android/material/datepicker/CalendarStyle;

    .line 129
    .local v9, "calendarStyle":Lcom/google/android/material/datepicker/CalendarStyle;
    invoke-virtual/range {v24 .. v24}, Lcom/google/android/material/datepicker/MonthAdapter;->firstPositionInMonth()I

    move-result v2

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Lcom/google/android/material/datepicker/MonthAdapter;->getItem(I)Ljava/lang/Long;

    move-result-object v14

    .line 130
    .local v14, "firstOfMonth":Ljava/lang/Long;
    invoke-virtual/range {v24 .. v24}, Lcom/google/android/material/datepicker/MonthAdapter;->lastPositionInMonth()I

    move-result v2

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Lcom/google/android/material/datepicker/MonthAdapter;->getItem(I)Ljava/lang/Long;

    move-result-object v20

    .line 132
    .local v20, "lastOfMonth":Ljava/lang/Long;
    invoke-interface {v10}, Lcom/google/android/material/datepicker/DateSelector;->getSelectedRanges()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v33

    :cond_0
    invoke-interface/range {v33 .. v33}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface/range {v33 .. v33}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroidx/core/util/Pair;

    .line 133
    .local v25, "range":Landroidx/core/util/Pair;, "Landroidx/core/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    move-object/from16 v0, v25

    iget-object v2, v0, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    if-eqz v2, :cond_0

    move-object/from16 v0, v25

    iget-object v2, v0, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    if-eqz v2, :cond_0

    .line 136
    move-object/from16 v0, v25

    iget-object v2, v0, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v30

    .line 137
    .local v30, "startItem":J
    move-object/from16 v0, v25

    iget-object v2, v0, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    .line 139
    .local v12, "endItem":J
    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-static {v14, v0, v2, v3}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->skipMonth(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 142
    invoke-static/range {p0 .. p0}, Lcom/google/android/material/internal/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v18

    .line 145
    .local v18, "isRtl":Z
    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v2, v30, v2

    if-gez v2, :cond_3

    .line 146
    invoke-virtual/range {v24 .. v24}, Lcom/google/android/material/datepicker/MonthAdapter;->firstPositionInMonth()I

    move-result v11

    .line 148
    .local v11, "firstHighlightPosition":I
    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Lcom/google/android/material/datepicker/MonthAdapter;->isFirstInRow(I)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v27, 0x0

    .line 161
    .local v27, "rangeHighlightStart":I
    :goto_0
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v2, v12, v2

    if-lez v2, :cond_6

    .line 162
    invoke-virtual/range {v24 .. v24}, Lcom/google/android/material/datepicker/MonthAdapter;->lastPositionInMonth()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v19

    .line 164
    .local v19, "lastHighlightPosition":I
    move-object/from16 v0, v24

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/google/android/material/datepicker/MonthAdapter;->isLastInRow(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 165
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->getWidth()I

    move-result v26

    .line 175
    .local v26, "rangeHighlightEnd":I
    :goto_1
    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Lcom/google/android/material/datepicker/MonthAdapter;->getItemId(I)J

    move-result-wide v2

    long-to-int v0, v2

    move/from16 v16, v0

    .line 176
    .local v16, "firstRow":I
    move-object/from16 v0, v24

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/google/android/material/datepicker/MonthAdapter;->getItemId(I)J

    move-result-wide v2

    long-to-int v0, v2

    move/from16 v22, v0

    .line 177
    .local v22, "lastRow":I
    move/from16 v29, v16

    .local v29, "row":I
    :goto_2
    move/from16 v0, v29

    move/from16 v1, v22

    if-gt v0, v1, :cond_0

    .line 178
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->getNumColumns()I

    move-result v2

    mul-int v15, v29, v2

    .line 179
    .local v15, "firstPositionInRow":I
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->getNumColumns()I

    move-result v2

    add-int/2addr v2, v15

    add-int/lit8 v21, v2, -0x1

    .line 180
    .local v21, "lastPositionInRow":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v17

    .line 181
    .local v17, "firstView":Landroid/view/View;
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getTop()I

    move-result v2

    iget-object v3, v9, Lcom/google/android/material/datepicker/CalendarStyle;->day:Lcom/google/android/material/datepicker/CalendarItemStyle;

    invoke-virtual {v3}, Lcom/google/android/material/datepicker/CalendarItemStyle;->getTopInset()I

    move-result v3

    add-int v32, v2, v3

    .line 182
    .local v32, "top":I
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getBottom()I

    move-result v2

    iget-object v3, v9, Lcom/google/android/material/datepicker/CalendarStyle;->day:Lcom/google/android/material/datepicker/CalendarItemStyle;

    invoke-virtual {v3}, Lcom/google/android/material/datepicker/CalendarItemStyle;->getBottomInset()I

    move-result v3

    sub-int v8, v2, v3

    .line 185
    .local v8, "bottom":I
    if-nez v18, :cond_9

    .line 186
    if-le v15, v11, :cond_7

    const/16 v23, 0x0

    .line 187
    .local v23, "left":I
    :goto_3
    move/from16 v0, v19

    move/from16 v1, v21

    if-le v0, v1, :cond_8

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->getWidth()I

    move-result v28

    .line 192
    .local v28, "right":I
    :goto_4
    move/from16 v0, v23

    int-to-float v3, v0

    move/from16 v0, v32

    int-to-float v4, v0

    move/from16 v0, v28

    int-to-float v5, v0

    int-to-float v6, v8

    iget-object v7, v9, Lcom/google/android/material/datepicker/CalendarStyle;->rangeFill:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 177
    add-int/lit8 v29, v29, 0x1

    goto :goto_2

    .line 148
    .end local v8    # "bottom":I
    .end local v15    # "firstPositionInRow":I
    .end local v16    # "firstRow":I
    .end local v17    # "firstView":Landroid/view/View;
    .end local v19    # "lastHighlightPosition":I
    .end local v21    # "lastPositionInRow":I
    .end local v22    # "lastRow":I
    .end local v23    # "left":I
    .end local v26    # "rangeHighlightEnd":I
    .end local v27    # "rangeHighlightStart":I
    .end local v28    # "right":I
    .end local v29    # "row":I
    .end local v32    # "top":I
    :cond_1
    if-nez v18, :cond_2

    add-int/lit8 v2, v11, -0x1

    .line 151
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v27

    goto/16 :goto_0

    :cond_2
    add-int/lit8 v2, v11, -0x1

    .line 152
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v27

    goto/16 :goto_0

    .line 154
    .end local v11    # "firstHighlightPosition":I
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->dayCompute:Ljava/util/Calendar;

    move-wide/from16 v0, v30

    invoke-virtual {v2, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 155
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->dayCompute:Ljava/util/Calendar;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Lcom/google/android/material/datepicker/MonthAdapter;->dayToPosition(I)I

    move-result v11

    .line 156
    .restart local v11    # "firstHighlightPosition":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->horizontalMidPoint(Landroid/view/View;)I

    move-result v27

    .restart local v27    # "rangeHighlightStart":I
    goto/16 :goto_0

    .line 165
    .restart local v19    # "lastHighlightPosition":I
    :cond_4
    if-nez v18, :cond_5

    .line 167
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v26

    goto/16 :goto_1

    .line 168
    :cond_5
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v26

    goto/16 :goto_1

    .line 170
    .end local v19    # "lastHighlightPosition":I
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->dayCompute:Ljava/util/Calendar;

    invoke-virtual {v2, v12, v13}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 171
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->dayCompute:Ljava/util/Calendar;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Lcom/google/android/material/datepicker/MonthAdapter;->dayToPosition(I)I

    move-result v19

    .line 172
    .restart local v19    # "lastHighlightPosition":I
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->horizontalMidPoint(Landroid/view/View;)I

    move-result v26

    .restart local v26    # "rangeHighlightEnd":I
    goto/16 :goto_1

    .restart local v8    # "bottom":I
    .restart local v15    # "firstPositionInRow":I
    .restart local v16    # "firstRow":I
    .restart local v17    # "firstView":Landroid/view/View;
    .restart local v21    # "lastPositionInRow":I
    .restart local v22    # "lastRow":I
    .restart local v29    # "row":I
    .restart local v32    # "top":I
    :cond_7
    move/from16 v23, v27

    .line 186
    goto/16 :goto_3

    .restart local v23    # "left":I
    :cond_8
    move/from16 v28, v26

    .line 187
    goto/16 :goto_4

    .line 189
    .end local v23    # "left":I
    :cond_9
    move/from16 v0, v19

    move/from16 v1, v21

    if-le v0, v1, :cond_a

    const/16 v23, 0x0

    .line 190
    .restart local v23    # "left":I
    :goto_5
    if-le v15, v11, :cond_b

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->getWidth()I

    move-result v28

    .restart local v28    # "right":I
    :goto_6
    goto/16 :goto_4

    .end local v23    # "left":I
    .end local v28    # "right":I
    :cond_a
    move/from16 v23, v26

    .line 189
    goto :goto_5

    .restart local v23    # "left":I
    :cond_b
    move/from16 v28, v27

    .line 190
    goto :goto_6

    .line 195
    .end local v8    # "bottom":I
    .end local v11    # "firstHighlightPosition":I
    .end local v12    # "endItem":J
    .end local v15    # "firstPositionInRow":I
    .end local v16    # "firstRow":I
    .end local v17    # "firstView":Landroid/view/View;
    .end local v18    # "isRtl":Z
    .end local v19    # "lastHighlightPosition":I
    .end local v21    # "lastPositionInRow":I
    .end local v22    # "lastRow":I
    .end local v23    # "left":I
    .end local v25    # "range":Landroidx/core/util/Pair;, "Landroidx/core/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    .end local v26    # "rangeHighlightEnd":I
    .end local v27    # "rangeHighlightStart":I
    .end local v29    # "row":I
    .end local v30    # "startItem":J
    .end local v32    # "top":I
    :cond_c
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 1
    .param p1, "gainFocus"    # Z
    .param p2, "direction"    # I
    .param p3, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    .line 213
    if-eqz p1, :cond_0

    .line 214
    invoke-direct {p0, p2, p3}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->gainFocus(ILandroid/graphics/Rect;)V

    .line 218
    :goto_0
    return-void

    .line 216
    :cond_0
    const/4 v0, 0x0

    invoke-super {p0, v0, p2, p3}, Landroid/widget/GridView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 5
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 90
    invoke-super {p0, p1, p2}, Landroid/widget/GridView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 91
    .local v0, "result":Z
    if-nez v0, :cond_1

    .line 102
    :cond_0
    :goto_0
    return v1

    .line 94
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->getSelectedItemPosition()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    .line 95
    invoke-virtual {p0}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->getSelectedItemPosition()I

    move-result v3

    invoke-virtual {p0}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->getAdapter()Lcom/google/android/material/datepicker/MonthAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/material/datepicker/MonthAdapter;->firstPositionInMonth()I

    move-result v4

    if-lt v3, v4, :cond_3

    :cond_2
    move v1, v2

    .line 96
    goto :goto_0

    .line 98
    :cond_3
    const/16 v3, 0x13

    if-ne v3, p1, :cond_0

    .line 99
    invoke-virtual {p0}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->getAdapter()Lcom/google/android/material/datepicker/MonthAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/material/datepicker/MonthAdapter;->firstPositionInMonth()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->setSelection(I)V

    move v1, v2

    .line 100
    goto :goto_0
.end method

.method public onMeasure(II)V
    .locals 4
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 199
    iget-boolean v2, p0, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->nestedScrollable:Z

    if-eqz v2, :cond_0

    .line 202
    const v2, 0xffffff

    const/high16 v3, -0x80000000

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 203
    .local v0, "expandSpec":I
    invoke-super {p0, p1, v0}, Landroid/widget/GridView;->onMeasure(II)V

    .line 204
    invoke-virtual {p0}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 205
    .local v1, "params":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p0}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->getMeasuredHeight()I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 209
    .end local v0    # "expandSpec":I
    .end local v1    # "params":Landroid/view/ViewGroup$LayoutParams;
    :goto_0
    return-void

    .line 207
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/GridView;->onMeasure(II)V

    goto :goto_0
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0

    .prologue
    .line 40
    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public final setAdapter(Landroid/widget/ListAdapter;)V
    .locals 5
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .prologue
    .line 113
    instance-of v0, p1, Lcom/google/android/material/datepicker/MonthAdapter;

    if-nez v0, :cond_0

    .line 114
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "%1$s must have its Adapter set to a %2$s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-class v4, Lcom/google/android/material/datepicker/MaterialCalendarGridView;

    .line 117
    invoke-virtual {v4}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Lcom/google/android/material/datepicker/MonthAdapter;

    .line 118
    invoke-virtual {v4}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 115
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 120
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 121
    return-void
.end method

.method public setSelection(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 81
    invoke-virtual {p0}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->getAdapter()Lcom/google/android/material/datepicker/MonthAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/datepicker/MonthAdapter;->firstPositionInMonth()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 82
    invoke-virtual {p0}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->getAdapter()Lcom/google/android/material/datepicker/MonthAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/datepicker/MonthAdapter;->firstPositionInMonth()I

    move-result v0

    invoke-super {p0, v0}, Landroid/widget/GridView;->setSelection(I)V

    .line 86
    :goto_0
    return-void

    .line 84
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/GridView;->setSelection(I)V

    goto :goto_0
.end method

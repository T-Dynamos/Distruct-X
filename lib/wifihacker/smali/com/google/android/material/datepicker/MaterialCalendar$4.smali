.class Lcom/google/android/material/datepicker/MaterialCalendar$4;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "MaterialCalendar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/datepicker/MaterialCalendar;->createItemDecoration()Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final endItem:Ljava/util/Calendar;

.field private final startItem:Ljava/util/Calendar;

.field final synthetic this$0:Lcom/google/android/material/datepicker/MaterialCalendar;


# direct methods
.method constructor <init>(Lcom/google/android/material/datepicker/MaterialCalendar;)V
    .locals 1
    .param p1, "this$0"    # Lcom/google/android/material/datepicker/MaterialCalendar;

    .prologue
    .line 232
    .local p0, "this":Lcom/google/android/material/datepicker/MaterialCalendar$4;, "Lcom/google/android/material/datepicker/MaterialCalendar$4;"
    iput-object p1, p0, Lcom/google/android/material/datepicker/MaterialCalendar$4;->this$0:Lcom/google/android/material/datepicker/MaterialCalendar;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 234
    invoke-static {}, Lcom/google/android/material/datepicker/UtcDates;->getUtcCalendar()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/datepicker/MaterialCalendar$4;->startItem:Ljava/util/Calendar;

    .line 235
    invoke-static {}, Lcom/google/android/material/datepicker/UtcDates;->getUtcCalendar()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/datepicker/MaterialCalendar$4;->endItem:Ljava/util/Calendar;

    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 25
    .param p1, "canvas"    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "recyclerView"    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "state"    # Landroidx/recyclerview/widget/RecyclerView$State;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 240
    .local p0, "this":Lcom/google/android/material/datepicker/MaterialCalendar$4;, "Lcom/google/android/material/datepicker/MaterialCalendar$4;"
    invoke-virtual/range {p2 .. p2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v2

    instance-of v2, v2, Lcom/google/android/material/datepicker/YearGridAdapter;

    if-eqz v2, :cond_0

    .line 241
    invoke-virtual/range {p2 .. p2}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v2

    instance-of v2, v2, Landroidx/recyclerview/widget/GridLayoutManager;

    if-nez v2, :cond_1

    .line 278
    :cond_0
    return-void

    .line 244
    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v8

    check-cast v8, Lcom/google/android/material/datepicker/YearGridAdapter;

    .line 245
    .local v8, "adapter":Lcom/google/android/material/datepicker/YearGridAdapter;
    invoke-virtual/range {p2 .. p2}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v17

    check-cast v17, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 247
    .local v17, "layoutManager":Landroidx/recyclerview/widget/GridLayoutManager;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/material/datepicker/MaterialCalendar$4;->this$0:Lcom/google/android/material/datepicker/MaterialCalendar;

    invoke-static {v2}, Lcom/google/android/material/datepicker/MaterialCalendar;->access$200(Lcom/google/android/material/datepicker/MaterialCalendar;)Lcom/google/android/material/datepicker/DateSelector;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/material/datepicker/DateSelector;->getSelectedRanges()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v24

    :cond_2
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroidx/core/util/Pair;

    .line 248
    .local v19, "range":Landroidx/core/util/Pair;, "Landroidx/core/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    move-object/from16 v0, v19

    iget-object v2, v0, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    if-eqz v2, :cond_2

    move-object/from16 v0, v19

    iget-object v2, v0, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    if-eqz v2, :cond_2

    .line 251
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/material/datepicker/MaterialCalendar$4;->startItem:Ljava/util/Calendar;

    move-object/from16 v0, v19

    iget-object v2, v0, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 252
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/material/datepicker/MaterialCalendar$4;->endItem:Ljava/util/Calendar;

    move-object/from16 v0, v19

    iget-object v2, v0, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 254
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/material/datepicker/MaterialCalendar$4;->startItem:Ljava/util/Calendar;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v8, v2}, Lcom/google/android/material/datepicker/YearGridAdapter;->getPositionForYear(I)I

    move-result v10

    .line 255
    .local v10, "firstHighlightPosition":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/material/datepicker/MaterialCalendar$4;->endItem:Ljava/util/Calendar;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v8, v2}, Lcom/google/android/material/datepicker/YearGridAdapter;->getPositionForYear(I)I

    move-result v14

    .line 256
    .local v14, "lastHighlightPosition":I
    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Landroidx/recyclerview/widget/GridLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v13

    .line 257
    .local v13, "firstView":Landroid/view/View;
    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Landroidx/recyclerview/widget/GridLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v16

    .line 259
    .local v16, "lastView":Landroid/view/View;
    invoke-virtual/range {v17 .. v17}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    move-result v2

    div-int v12, v10, v2

    .line 260
    .local v12, "firstRow":I
    invoke-virtual/range {v17 .. v17}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    move-result v2

    div-int v15, v14, v2

    .line 262
    .local v15, "lastRow":I
    move/from16 v21, v12

    .local v21, "row":I
    :goto_0
    move/from16 v0, v21

    if-gt v0, v15, :cond_2

    .line 263
    invoke-virtual/range {v17 .. v17}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    move-result v2

    mul-int v11, v21, v2

    .line 264
    .local v11, "firstPositionInRow":I
    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Landroidx/recyclerview/widget/GridLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v23

    .line 265
    .local v23, "viewInRow":Landroid/view/View;
    if-nez v23, :cond_3

    .line 262
    :goto_1
    add-int/lit8 v21, v21, 0x1

    goto :goto_0

    .line 268
    :cond_3
    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getTop()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/material/datepicker/MaterialCalendar$4;->this$0:Lcom/google/android/material/datepicker/MaterialCalendar;

    invoke-static {v3}, Lcom/google/android/material/datepicker/MaterialCalendar;->access$400(Lcom/google/android/material/datepicker/MaterialCalendar;)Lcom/google/android/material/datepicker/CalendarStyle;

    move-result-object v3

    iget-object v3, v3, Lcom/google/android/material/datepicker/CalendarStyle;->year:Lcom/google/android/material/datepicker/CalendarItemStyle;

    invoke-virtual {v3}, Lcom/google/android/material/datepicker/CalendarItemStyle;->getTopInset()I

    move-result v3

    add-int v22, v2, v3

    .line 269
    .local v22, "top":I
    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getBottom()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/material/datepicker/MaterialCalendar$4;->this$0:Lcom/google/android/material/datepicker/MaterialCalendar;

    invoke-static {v3}, Lcom/google/android/material/datepicker/MaterialCalendar;->access$400(Lcom/google/android/material/datepicker/MaterialCalendar;)Lcom/google/android/material/datepicker/CalendarStyle;

    move-result-object v3

    iget-object v3, v3, Lcom/google/android/material/datepicker/CalendarStyle;->year:Lcom/google/android/material/datepicker/CalendarItemStyle;

    invoke-virtual {v3}, Lcom/google/android/material/datepicker/CalendarItemStyle;->getBottomInset()I

    move-result v3

    sub-int v9, v2, v3

    .line 270
    .local v9, "bottom":I
    move/from16 v0, v21

    if-ne v0, v12, :cond_4

    invoke-virtual {v13}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {v13}, Landroid/view/View;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int v18, v2, v3

    .line 271
    .local v18, "left":I
    :goto_2
    move/from16 v0, v21

    if-ne v0, v15, :cond_5

    .line 273
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int v20, v2, v3

    .line 275
    .local v20, "right":I
    :goto_3
    move/from16 v0, v18

    int-to-float v3, v0

    move/from16 v0, v22

    int-to-float v4, v0

    move/from16 v0, v20

    int-to-float v5, v0

    int-to-float v6, v9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/material/datepicker/MaterialCalendar$4;->this$0:Lcom/google/android/material/datepicker/MaterialCalendar;

    invoke-static {v2}, Lcom/google/android/material/datepicker/MaterialCalendar;->access$400(Lcom/google/android/material/datepicker/MaterialCalendar;)Lcom/google/android/material/datepicker/CalendarStyle;

    move-result-object v2

    iget-object v7, v2, Lcom/google/android/material/datepicker/CalendarStyle;->rangeFill:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 270
    .end local v18    # "left":I
    .end local v20    # "right":I
    :cond_4
    const/16 v18, 0x0

    goto :goto_2

    .line 274
    .restart local v18    # "left":I
    :cond_5
    invoke-virtual/range {p2 .. p2}, Landroidx/recyclerview/widget/RecyclerView;->getWidth()I

    move-result v20

    goto :goto_3
.end method

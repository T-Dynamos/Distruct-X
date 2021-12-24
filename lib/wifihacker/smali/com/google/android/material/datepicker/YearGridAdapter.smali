.class Lcom/google/android/material/datepicker/YearGridAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "YearGridAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/datepicker/YearGridAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter",
        "<",
        "Lcom/google/android/material/datepicker/YearGridAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private final materialCalendar:Lcom/google/android/material/datepicker/MaterialCalendar;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/material/datepicker/MaterialCalendar",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/material/datepicker/MaterialCalendar;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/material/datepicker/MaterialCalendar",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 45
    .local p1, "materialCalendar":Lcom/google/android/material/datepicker/MaterialCalendar;, "Lcom/google/android/material/datepicker/MaterialCalendar<*>;"
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/google/android/material/datepicker/YearGridAdapter;->materialCalendar:Lcom/google/android/material/datepicker/MaterialCalendar;

    .line 47
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/material/datepicker/YearGridAdapter;)Lcom/google/android/material/datepicker/MaterialCalendar;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/material/datepicker/YearGridAdapter;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/google/android/material/datepicker/YearGridAdapter;->materialCalendar:Lcom/google/android/material/datepicker/MaterialCalendar;

    return-object v0
.end method

.method private createYearClickListener(I)Landroid/view/View$OnClickListener;
    .locals 1
    .param p1, "year"    # I
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 84
    new-instance v0, Lcom/google/android/material/datepicker/YearGridAdapter$1;

    invoke-direct {v0, p0, p1}, Lcom/google/android/material/datepicker/YearGridAdapter$1;-><init>(Lcom/google/android/material/datepicker/YearGridAdapter;I)V

    return-object v0
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/google/android/material/datepicker/YearGridAdapter;->materialCalendar:Lcom/google/android/material/datepicker/MaterialCalendar;

    invoke-virtual {v0}, Lcom/google/android/material/datepicker/MaterialCalendar;->getCalendarConstraints()Lcom/google/android/material/datepicker/CalendarConstraints;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/datepicker/CalendarConstraints;->getYearSpan()I

    move-result v0

    return v0
.end method

.method getPositionForYear(I)I
    .locals 1
    .param p1, "year"    # I

    .prologue
    .line 102
    iget-object v0, p0, Lcom/google/android/material/datepicker/YearGridAdapter;->materialCalendar:Lcom/google/android/material/datepicker/MaterialCalendar;

    invoke-virtual {v0}, Lcom/google/android/material/datepicker/MaterialCalendar;->getCalendarConstraints()Lcom/google/android/material/datepicker/CalendarConstraints;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/datepicker/CalendarConstraints;->getStart()Lcom/google/android/material/datepicker/Month;

    move-result-object v0

    iget v0, v0, Lcom/google/android/material/datepicker/Month;->year:I

    sub-int v0, p1, v0

    return v0
.end method

.method getYearForPosition(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 106
    iget-object v0, p0, Lcom/google/android/material/datepicker/YearGridAdapter;->materialCalendar:Lcom/google/android/material/datepicker/MaterialCalendar;

    invoke-virtual {v0}, Lcom/google/android/material/datepicker/MaterialCalendar;->getCalendarConstraints()Lcom/google/android/material/datepicker/CalendarConstraints;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/datepicker/CalendarConstraints;->getStart()Lcom/google/android/material/datepicker/Month;

    move-result-object v0

    iget v0, v0, Lcom/google/android/material/datepicker/Month;->year:I

    add-int/2addr v0, p1

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 31
    check-cast p1, Lcom/google/android/material/datepicker/YearGridAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/datepicker/YearGridAdapter;->onBindViewHolder(Lcom/google/android/material/datepicker/YearGridAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/google/android/material/datepicker/YearGridAdapter$ViewHolder;I)V
    .locals 13
    .param p1, "viewHolder"    # Lcom/google/android/material/datepicker/YearGridAdapter$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "position"    # I

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 61
    invoke-virtual {p0, p2}, Lcom/google/android/material/datepicker/YearGridAdapter;->getYearForPosition(I)I

    move-result v5

    .line 62
    .local v5, "year":I
    iget-object v6, p1, Lcom/google/android/material/datepicker/YearGridAdapter$ViewHolder;->textView:Landroid/widget/TextView;

    .line 65
    invoke-virtual {v6}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v6

    sget v7, Lcom/google/android/material/R$string;->mtrl_picker_navigate_to_year_description:I

    .line 66
    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 67
    .local v2, "navigateYear":Ljava/lang/String;
    iget-object v6, p1, Lcom/google/android/material/datepicker/YearGridAdapter$ViewHolder;->textView:Landroid/widget/TextView;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    const-string v8, "%d"

    new-array v9, v11, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v12

    invoke-static {v7, v8, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    iget-object v6, p1, Lcom/google/android/material/datepicker/YearGridAdapter$ViewHolder;->textView:Landroid/widget/TextView;

    new-array v7, v11, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v12

    invoke-static {v2, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 69
    iget-object v6, p0, Lcom/google/android/material/datepicker/YearGridAdapter;->materialCalendar:Lcom/google/android/material/datepicker/MaterialCalendar;

    invoke-virtual {v6}, Lcom/google/android/material/datepicker/MaterialCalendar;->getCalendarStyle()Lcom/google/android/material/datepicker/CalendarStyle;

    move-result-object v4

    .line 70
    .local v4, "styles":Lcom/google/android/material/datepicker/CalendarStyle;
    invoke-static {}, Lcom/google/android/material/datepicker/UtcDates;->getTodayCalendar()Ljava/util/Calendar;

    move-result-object v0

    .line 71
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {v0, v11}, Ljava/util/Calendar;->get(I)I

    move-result v6

    if-ne v6, v5, :cond_1

    iget-object v3, v4, Lcom/google/android/material/datepicker/CalendarStyle;->todayYear:Lcom/google/android/material/datepicker/CalendarItemStyle;

    .line 72
    .local v3, "style":Lcom/google/android/material/datepicker/CalendarItemStyle;
    :goto_0
    iget-object v6, p0, Lcom/google/android/material/datepicker/YearGridAdapter;->materialCalendar:Lcom/google/android/material/datepicker/MaterialCalendar;

    invoke-virtual {v6}, Lcom/google/android/material/datepicker/MaterialCalendar;->getDateSelector()Lcom/google/android/material/datepicker/DateSelector;

    move-result-object v6

    invoke-interface {v6}, Lcom/google/android/material/datepicker/DateSelector;->getSelectedDays()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 73
    .local v1, "day":Ljava/lang/Long;
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {v0, v8, v9}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 74
    invoke-virtual {v0, v11}, Ljava/util/Calendar;->get(I)I

    move-result v7

    if-ne v7, v5, :cond_0

    .line 75
    iget-object v3, v4, Lcom/google/android/material/datepicker/CalendarStyle;->selectedYear:Lcom/google/android/material/datepicker/CalendarItemStyle;

    goto :goto_1

    .line 71
    .end local v1    # "day":Ljava/lang/Long;
    .end local v3    # "style":Lcom/google/android/material/datepicker/CalendarItemStyle;
    :cond_1
    iget-object v3, v4, Lcom/google/android/material/datepicker/CalendarStyle;->year:Lcom/google/android/material/datepicker/CalendarItemStyle;

    goto :goto_0

    .line 78
    .restart local v3    # "style":Lcom/google/android/material/datepicker/CalendarItemStyle;
    :cond_2
    iget-object v6, p1, Lcom/google/android/material/datepicker/YearGridAdapter$ViewHolder;->textView:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Lcom/google/android/material/datepicker/CalendarItemStyle;->styleItem(Landroid/widget/TextView;)V

    .line 79
    iget-object v6, p1, Lcom/google/android/material/datepicker/YearGridAdapter$ViewHolder;->textView:Landroid/widget/TextView;

    invoke-direct {p0, v5}, Lcom/google/android/material/datepicker/YearGridAdapter;->createYearClickListener(I)Landroid/view/View$OnClickListener;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 1
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 31
    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/datepicker/YearGridAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/google/android/material/datepicker/YearGridAdapter$ViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/google/android/material/datepicker/YearGridAdapter$ViewHolder;
    .locals 4
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "viewType"    # I
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 52
    .line 54
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/google/android/material/R$layout;->mtrl_calendar_year:I

    const/4 v3, 0x0

    .line 55
    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 56
    .local v0, "yearTextView":Landroid/widget/TextView;
    new-instance v1, Lcom/google/android/material/datepicker/YearGridAdapter$ViewHolder;

    invoke-direct {v1, v0}, Lcom/google/android/material/datepicker/YearGridAdapter$ViewHolder;-><init>(Landroid/widget/TextView;)V

    return-object v1
.end method

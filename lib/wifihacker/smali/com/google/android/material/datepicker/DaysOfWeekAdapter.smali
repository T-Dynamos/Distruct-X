.class Lcom/google/android/material/datepicker/DaysOfWeekAdapter;
.super Landroid/widget/BaseAdapter;
.source "DaysOfWeekAdapter.java"


# static fields
.field private static final CALENDAR_DAY_STYLE:I

.field private static final NARROW_FORMAT:I = 0x4


# instance fields
.field private final calendar:Ljava/util/Calendar;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final daysInWeek:I

.field private final firstDayOfWeek:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 49
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    const/4 v0, 0x4

    :goto_0
    sput v0, Lcom/google/android/material/datepicker/DaysOfWeekAdapter;->CALENDAR_DAY_STYLE:I

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 52
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 53
    invoke-static {}, Lcom/google/android/material/datepicker/UtcDates;->getUtcCalendar()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/datepicker/DaysOfWeekAdapter;->calendar:Ljava/util/Calendar;

    .line 54
    iget-object v0, p0, Lcom/google/android/material/datepicker/DaysOfWeekAdapter;->calendar:Ljava/util/Calendar;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->getMaximum(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/datepicker/DaysOfWeekAdapter;->daysInWeek:I

    .line 55
    iget-object v0, p0, Lcom/google/android/material/datepicker/DaysOfWeekAdapter;->calendar:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result v0

    iput v0, p0, Lcom/google/android/material/datepicker/DaysOfWeekAdapter;->firstDayOfWeek:I

    .line 56
    return-void
.end method

.method private positionToDayOfWeek(I)I
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 101
    iget v1, p0, Lcom/google/android/material/datepicker/DaysOfWeekAdapter;->firstDayOfWeek:I

    add-int v0, p1, v1

    .line 102
    .local v0, "dayConstant":I
    iget v1, p0, Lcom/google/android/material/datepicker/DaysOfWeekAdapter;->daysInWeek:I

    if-le v0, v1, :cond_0

    .line 103
    iget v1, p0, Lcom/google/android/material/datepicker/DaysOfWeekAdapter;->daysInWeek:I

    sub-int/2addr v0, v1

    .line 105
    :cond_0
    return v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 75
    iget v0, p0, Lcom/google/android/material/datepicker/DaysOfWeekAdapter;->daysInWeek:I

    return v0
.end method

.method public getItem(I)Ljava/lang/Integer;
    .locals 1
    .param p1, "position"    # I
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 61
    iget v0, p0, Lcom/google/android/material/datepicker/DaysOfWeekAdapter;->daysInWeek:I

    if-lt p1, v0, :cond_0

    .line 62
    const/4 v0, 0x0

    .line 64
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/material/datepicker/DaysOfWeekAdapter;->positionToDayOfWeek(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 41
    invoke-virtual {p0, p1}, Lcom/google/android/material/datepicker/DaysOfWeekAdapter;->getItem(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 70
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "parent"    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x7

    .line 82
    move-object v0, p2

    check-cast v0, Landroid/widget/TextView;

    .line 83
    .local v0, "dayOfWeek":Landroid/widget/TextView;
    if-nez p2, :cond_0

    .line 84
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 85
    .local v1, "layoutInflater":Landroid/view/LayoutInflater;
    sget v3, Lcom/google/android/material/R$layout;->mtrl_calendar_day_of_week:I

    .line 86
    invoke-virtual {v1, v3, p3, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .end local v0    # "dayOfWeek":Landroid/widget/TextView;
    check-cast v0, Landroid/widget/TextView;

    .line 88
    .end local v1    # "layoutInflater":Landroid/view/LayoutInflater;
    .restart local v0    # "dayOfWeek":Landroid/widget/TextView;
    :cond_0
    iget-object v3, p0, Lcom/google/android/material/datepicker/DaysOfWeekAdapter;->calendar:Ljava/util/Calendar;

    invoke-direct {p0, p1}, Lcom/google/android/material/datepicker/DaysOfWeekAdapter;->positionToDayOfWeek(I)I

    move-result v4

    invoke-virtual {v3, v8, v4}, Ljava/util/Calendar;->set(II)V

    .line 89
    invoke-virtual {v0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget-object v2, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 90
    .local v2, "locale":Ljava/util/Locale;
    iget-object v3, p0, Lcom/google/android/material/datepicker/DaysOfWeekAdapter;->calendar:Ljava/util/Calendar;

    sget v4, Lcom/google/android/material/datepicker/DaysOfWeekAdapter;->CALENDAR_DAY_STYLE:I

    .line 91
    invoke-virtual {v3, v8, v4, v2}, Ljava/util/Calendar;->getDisplayName(IILjava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    .line 90
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/google/android/material/R$string;->mtrl_picker_day_of_week_column_header:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/google/android/material/datepicker/DaysOfWeekAdapter;->calendar:Ljava/util/Calendar;

    const/4 v6, 0x2

    .line 95
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    invoke-virtual {v5, v8, v6, v7}, Ljava/util/Calendar;->getDisplayName(IILjava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v9

    .line 93
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 92
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 96
    return-object v0
.end method

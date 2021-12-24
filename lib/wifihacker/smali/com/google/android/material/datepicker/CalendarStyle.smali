.class final Lcom/google/android/material/datepicker/CalendarStyle;
.super Ljava/lang/Object;
.source "CalendarStyle.java"


# instance fields
.field final day:Lcom/google/android/material/datepicker/CalendarItemStyle;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field final invalidDay:Lcom/google/android/material/datepicker/CalendarItemStyle;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field final rangeFill:Landroid/graphics/Paint;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field final selectedDay:Lcom/google/android/material/datepicker/CalendarItemStyle;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field final selectedYear:Lcom/google/android/material/datepicker/CalendarItemStyle;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field final todayDay:Lcom/google/android/material/datepicker/CalendarItemStyle;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field final todayYear:Lcom/google/android/material/datepicker/CalendarItemStyle;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field final year:Lcom/google/android/material/datepicker/CalendarItemStyle;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v5, 0x0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    sget v3, Lcom/google/android/material/R$attr;->materialCalendarStyle:I

    const-class v4, Lcom/google/android/material/datepicker/MaterialCalendar;

    .line 77
    invoke-virtual {v4}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v4

    .line 76
    invoke-static {p1, v3, v4}, Lcom/google/android/material/resources/MaterialAttributes;->resolveOrThrow(Landroid/content/Context;ILjava/lang/String;)I

    move-result v1

    .line 78
    .local v1, "calendarStyle":I
    sget-object v3, Lcom/google/android/material/R$styleable;->MaterialCalendar:[I

    .line 79
    invoke-virtual {p1, v1, v3}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 81
    .local v0, "calendarAttributes":Landroid/content/res/TypedArray;
    sget v3, Lcom/google/android/material/R$styleable;->MaterialCalendar_dayStyle:I

    .line 83
    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 82
    invoke-static {p1, v3}, Lcom/google/android/material/datepicker/CalendarItemStyle;->create(Landroid/content/Context;I)Lcom/google/android/material/datepicker/CalendarItemStyle;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/material/datepicker/CalendarStyle;->day:Lcom/google/android/material/datepicker/CalendarItemStyle;

    .line 84
    sget v3, Lcom/google/android/material/R$styleable;->MaterialCalendar_dayInvalidStyle:I

    .line 87
    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 85
    invoke-static {p1, v3}, Lcom/google/android/material/datepicker/CalendarItemStyle;->create(Landroid/content/Context;I)Lcom/google/android/material/datepicker/CalendarItemStyle;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/material/datepicker/CalendarStyle;->invalidDay:Lcom/google/android/material/datepicker/CalendarItemStyle;

    .line 88
    sget v3, Lcom/google/android/material/R$styleable;->MaterialCalendar_daySelectedStyle:I

    .line 91
    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 89
    invoke-static {p1, v3}, Lcom/google/android/material/datepicker/CalendarItemStyle;->create(Landroid/content/Context;I)Lcom/google/android/material/datepicker/CalendarItemStyle;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/material/datepicker/CalendarStyle;->selectedDay:Lcom/google/android/material/datepicker/CalendarItemStyle;

    .line 92
    sget v3, Lcom/google/android/material/R$styleable;->MaterialCalendar_dayTodayStyle:I

    .line 95
    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 93
    invoke-static {p1, v3}, Lcom/google/android/material/datepicker/CalendarItemStyle;->create(Landroid/content/Context;I)Lcom/google/android/material/datepicker/CalendarItemStyle;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/material/datepicker/CalendarStyle;->todayDay:Lcom/google/android/material/datepicker/CalendarItemStyle;

    .line 96
    sget v3, Lcom/google/android/material/R$styleable;->MaterialCalendar_rangeFillColor:I

    .line 97
    invoke-static {p1, v0, v3}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 100
    .local v2, "rangeFillColorList":Landroid/content/res/ColorStateList;
    sget v3, Lcom/google/android/material/R$styleable;->MaterialCalendar_yearStyle:I

    .line 102
    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 101
    invoke-static {p1, v3}, Lcom/google/android/material/datepicker/CalendarItemStyle;->create(Landroid/content/Context;I)Lcom/google/android/material/datepicker/CalendarItemStyle;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/material/datepicker/CalendarStyle;->year:Lcom/google/android/material/datepicker/CalendarItemStyle;

    .line 103
    sget v3, Lcom/google/android/material/R$styleable;->MaterialCalendar_yearSelectedStyle:I

    .line 106
    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 104
    invoke-static {p1, v3}, Lcom/google/android/material/datepicker/CalendarItemStyle;->create(Landroid/content/Context;I)Lcom/google/android/material/datepicker/CalendarItemStyle;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/material/datepicker/CalendarStyle;->selectedYear:Lcom/google/android/material/datepicker/CalendarItemStyle;

    .line 107
    sget v3, Lcom/google/android/material/R$styleable;->MaterialCalendar_yearTodayStyle:I

    .line 110
    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 108
    invoke-static {p1, v3}, Lcom/google/android/material/datepicker/CalendarItemStyle;->create(Landroid/content/Context;I)Lcom/google/android/material/datepicker/CalendarItemStyle;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/material/datepicker/CalendarStyle;->todayYear:Lcom/google/android/material/datepicker/CalendarItemStyle;

    .line 112
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lcom/google/android/material/datepicker/CalendarStyle;->rangeFill:Landroid/graphics/Paint;

    .line 113
    iget-object v3, p0, Lcom/google/android/material/datepicker/CalendarStyle;->rangeFill:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 115
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 116
    return-void
.end method

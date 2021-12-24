.class final Lcom/google/android/material/datepicker/Month;
.super Ljava/lang/Object;
.source "Month.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/google/android/material/datepicker/Month;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/material/datepicker/Month;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final daysInMonth:I

.field final daysInWeek:I

.field private final firstOfMonth:Ljava/util/Calendar;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private longName:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field final month:I

.field final timeInMillis:J

.field final year:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 202
    new-instance v0, Lcom/google/android/material/datepicker/Month$1;

    invoke-direct {v0}, Lcom/google/android/material/datepicker/Month$1;-><init>()V

    sput-object v0, Lcom/google/android/material/datepicker/Month;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Ljava/util/Calendar;)V
    .locals 4
    .param p1, "rawCalendar"    # Ljava/util/Calendar;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v3, 0x5

    const/4 v2, 0x1

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    invoke-virtual {p1, v3, v2}, Ljava/util/Calendar;->set(II)V

    .line 62
    invoke-static {p1}, Lcom/google/android/material/datepicker/UtcDates;->getDayCopy(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/datepicker/Month;->firstOfMonth:Ljava/util/Calendar;

    .line 63
    iget-object v0, p0, Lcom/google/android/material/datepicker/Month;->firstOfMonth:Ljava/util/Calendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/datepicker/Month;->month:I

    .line 64
    iget-object v0, p0, Lcom/google/android/material/datepicker/Month;->firstOfMonth:Ljava/util/Calendar;

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/datepicker/Month;->year:I

    .line 65
    iget-object v0, p0, Lcom/google/android/material/datepicker/Month;->firstOfMonth:Ljava/util/Calendar;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->getMaximum(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/datepicker/Month;->daysInWeek:I

    .line 66
    iget-object v0, p0, Lcom/google/android/material/datepicker/Month;->firstOfMonth:Ljava/util/Calendar;

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/datepicker/Month;->daysInMonth:I

    .line 67
    iget-object v0, p0, Lcom/google/android/material/datepicker/Month;->firstOfMonth:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/material/datepicker/Month;->timeInMillis:J

    .line 68
    return-void
.end method

.method static create(II)Lcom/google/android/material/datepicker/Month;
    .locals 2
    .param p0, "year"    # I
    .param p1, "month"    # I
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 91
    invoke-static {}, Lcom/google/android/material/datepicker/UtcDates;->getUtcCalendar()Ljava/util/Calendar;

    move-result-object v0

    .line 92
    .local v0, "calendar":Ljava/util/Calendar;
    const/4 v1, 0x1

    invoke-virtual {v0, v1, p0}, Ljava/util/Calendar;->set(II)V

    .line 93
    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    .line 94
    new-instance v1, Lcom/google/android/material/datepicker/Month;

    invoke-direct {v1, v0}, Lcom/google/android/material/datepicker/Month;-><init>(Ljava/util/Calendar;)V

    return-object v1
.end method

.method static create(J)Lcom/google/android/material/datepicker/Month;
    .locals 2
    .param p0, "timeInMillis"    # J
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 76
    invoke-static {}, Lcom/google/android/material/datepicker/UtcDates;->getUtcCalendar()Ljava/util/Calendar;

    move-result-object v0

    .line 77
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 78
    new-instance v1, Lcom/google/android/material/datepicker/Month;

    invoke-direct {v1, v0}, Lcom/google/android/material/datepicker/Month;-><init>(Ljava/util/Calendar;)V

    return-object v1
.end method

.method static current()Lcom/google/android/material/datepicker/Month;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 103
    new-instance v0, Lcom/google/android/material/datepicker/Month;

    invoke-static {}, Lcom/google/android/material/datepicker/UtcDates;->getTodayCalendar()Ljava/util/Calendar;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/material/datepicker/Month;-><init>(Ljava/util/Calendar;)V

    return-object v0
.end method


# virtual methods
.method public compareTo(Lcom/google/android/material/datepicker/Month;)I
    .locals 2
    .param p1, "other"    # Lcom/google/android/material/datepicker/Month;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 134
    iget-object v0, p0, Lcom/google/android/material/datepicker/Month;->firstOfMonth:Ljava/util/Calendar;

    iget-object v1, p1, Lcom/google/android/material/datepicker/Month;->firstOfMonth:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->compareTo(Ljava/util/Calendar;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 31
    check-cast p1, Lcom/google/android/material/datepicker/Month;

    invoke-virtual {p0, p1}, Lcom/google/android/material/datepicker/Month;->compareTo(Lcom/google/android/material/datepicker/Month;)I

    move-result v0

    return v0
.end method

.method daysFromStartOfWeekToFirstOfMonth()I
    .locals 3

    .prologue
    .line 107
    iget-object v1, p0, Lcom/google/android/material/datepicker/Month;->firstOfMonth:Ljava/util/Calendar;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iget-object v2, p0, Lcom/google/android/material/datepicker/Month;->firstOfMonth:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result v2

    sub-int v0, v1, v2

    .line 108
    .local v0, "difference":I
    if-gez v0, :cond_0

    .line 109
    iget v1, p0, Lcom/google/android/material/datepicker/Month;->daysInWeek:I

    add-int/2addr v0, v1

    .line 111
    :cond_0
    return v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 221
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 116
    if-ne p0, p1, :cond_1

    .line 123
    :cond_0
    :goto_0
    return v1

    .line 119
    :cond_1
    instance-of v3, p1, Lcom/google/android/material/datepicker/Month;

    if-nez v3, :cond_2

    move v1, v2

    .line 120
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 122
    check-cast v0, Lcom/google/android/material/datepicker/Month;

    .line 123
    .local v0, "that":Lcom/google/android/material/datepicker/Month;
    iget v3, p0, Lcom/google/android/material/datepicker/Month;->month:I

    iget v4, v0, Lcom/google/android/material/datepicker/Month;->month:I

    if-ne v3, v4, :cond_3

    iget v3, p0, Lcom/google/android/material/datepicker/Month;->year:I

    iget v4, v0, Lcom/google/android/material/datepicker/Month;->year:I

    if-eq v3, v4, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method getDay(I)J
    .locals 4
    .param p1, "day"    # I

    .prologue
    .line 168
    iget-object v1, p0, Lcom/google/android/material/datepicker/Month;->firstOfMonth:Ljava/util/Calendar;

    invoke-static {v1}, Lcom/google/android/material/datepicker/UtcDates;->getDayCopy(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v0

    .line 169
    .local v0, "dayCalendar":Ljava/util/Calendar;
    const/4 v1, 0x5

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    .line 170
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    return-wide v2
.end method

.method getDayOfMonth(J)I
    .locals 3
    .param p1, "date"    # J

    .prologue
    .line 174
    iget-object v1, p0, Lcom/google/android/material/datepicker/Month;->firstOfMonth:Ljava/util/Calendar;

    invoke-static {v1}, Lcom/google/android/material/datepicker/UtcDates;->getDayCopy(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v0

    .line 175
    .local v0, "dayCalendar":Ljava/util/Calendar;
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 176
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    return v1
.end method

.method getLongName(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 193
    iget-object v0, p0, Lcom/google/android/material/datepicker/Month;->longName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/google/android/material/datepicker/Month;->firstOfMonth:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/google/android/material/datepicker/DateStrings;->getYearMonth(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/datepicker/Month;->longName:Ljava/lang/String;

    .line 196
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/datepicker/Month;->longName:Ljava/lang/String;

    return-object v0
.end method

.method getStableId()J
    .locals 2

    .prologue
    .line 155
    iget-object v0, p0, Lcom/google/android/material/datepicker/Month;->firstOfMonth:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 128
    const/4 v1, 0x2

    new-array v0, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/android/material/datepicker/Month;->month:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/google/android/material/datepicker/Month;->year:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 129
    .local v0, "hashedFields":[Ljava/lang/Object;
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    return v1
.end method

.method monthsLater(I)Lcom/google/android/material/datepicker/Month;
    .locals 2
    .param p1, "months"    # I
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 185
    iget-object v1, p0, Lcom/google/android/material/datepicker/Month;->firstOfMonth:Ljava/util/Calendar;

    invoke-static {v1}, Lcom/google/android/material/datepicker/UtcDates;->getDayCopy(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v0

    .line 186
    .local v0, "laterMonth":Ljava/util/Calendar;
    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->add(II)V

    .line 187
    new-instance v1, Lcom/google/android/material/datepicker/Month;

    invoke-direct {v1, v0}, Lcom/google/android/material/datepicker/Month;-><init>(Ljava/util/Calendar;)V

    return-object v1
.end method

.method monthsUntil(Lcom/google/android/material/datepicker/Month;)I
    .locals 3
    .param p1, "other"    # Lcom/google/android/material/datepicker/Month;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 147
    iget-object v0, p0, Lcom/google/android/material/datepicker/Month;->firstOfMonth:Ljava/util/Calendar;

    instance-of v0, v0, Ljava/util/GregorianCalendar;

    if-eqz v0, :cond_0

    .line 148
    iget v0, p1, Lcom/google/android/material/datepicker/Month;->year:I

    iget v1, p0, Lcom/google/android/material/datepicker/Month;->year:I

    sub-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0xc

    iget v1, p1, Lcom/google/android/material/datepicker/Month;->month:I

    iget v2, p0, Lcom/google/android/material/datepicker/Month;->month:I

    sub-int/2addr v1, v2

    add-int/2addr v0, v1

    return v0

    .line 150
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Only Gregorian calendars are supported."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "flags"    # I

    .prologue
    .line 226
    iget v0, p0, Lcom/google/android/material/datepicker/Month;->year:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 227
    iget v0, p0, Lcom/google/android/material/datepicker/Month;->month:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 228
    return-void
.end method

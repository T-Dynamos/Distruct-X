.class public Lcom/google/android/material/datepicker/DateValidatorPointBackward;
.super Ljava/lang/Object;
.source "DateValidatorPointBackward.java"

# interfaces
.implements Lcom/google/android/material/datepicker/CalendarConstraints$DateValidator;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/material/datepicker/DateValidatorPointBackward;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final point:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    new-instance v0, Lcom/google/android/material/datepicker/DateValidatorPointBackward$1;

    invoke-direct {v0}, Lcom/google/android/material/datepicker/DateValidatorPointBackward$1;-><init>()V

    sput-object v0, Lcom/google/android/material/datepicker/DateValidatorPointBackward;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(J)V
    .locals 1
    .param p1, "point"    # J

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-wide p1, p0, Lcom/google/android/material/datepicker/DateValidatorPointBackward;->point:J

    .line 37
    return-void
.end method

.method synthetic constructor <init>(JLcom/google/android/material/datepicker/DateValidatorPointBackward$1;)V
    .locals 1
    .param p1, "x0"    # J
    .param p3, "x1"    # Lcom/google/android/material/datepicker/DateValidatorPointBackward$1;

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/datepicker/DateValidatorPointBackward;-><init>(J)V

    return-void
.end method

.method public static before(J)Lcom/google/android/material/datepicker/DateValidatorPointBackward;
    .locals 2
    .param p0, "point"    # J
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 45
    new-instance v0, Lcom/google/android/material/datepicker/DateValidatorPointBackward;

    invoke-direct {v0, p0, p1}, Lcom/google/android/material/datepicker/DateValidatorPointBackward;-><init>(J)V

    return-object v0
.end method

.method public static now()Lcom/google/android/material/datepicker/DateValidatorPointBackward;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 54
    invoke-static {}, Lcom/google/android/material/datepicker/UtcDates;->getTodayCalendar()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/material/datepicker/DateValidatorPointBackward;->before(J)Lcom/google/android/material/datepicker/DateValidatorPointBackward;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 80
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 90
    if-ne p0, p1, :cond_1

    .line 98
    :cond_0
    :goto_0
    return v1

    .line 93
    :cond_1
    instance-of v3, p1, Lcom/google/android/material/datepicker/DateValidatorPointBackward;

    if-nez v3, :cond_2

    move v1, v2

    .line 94
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 97
    check-cast v0, Lcom/google/android/material/datepicker/DateValidatorPointBackward;

    .line 98
    .local v0, "that":Lcom/google/android/material/datepicker/DateValidatorPointBackward;
    iget-wide v4, p0, Lcom/google/android/material/datepicker/DateValidatorPointBackward;->point:J

    iget-wide v6, v0, Lcom/google/android/material/datepicker/DateValidatorPointBackward;->point:J

    cmp-long v3, v4, v6

    if-eqz v3, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 103
    const/4 v1, 0x1

    new-array v0, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-wide v2, p0, Lcom/google/android/material/datepicker/DateValidatorPointBackward;->point:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    .line 104
    .local v0, "hashedFields":[Ljava/lang/Object;
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    return v1
.end method

.method public isValid(J)Z
    .locals 3
    .param p1, "date"    # J

    .prologue
    .line 75
    iget-wide v0, p0, Lcom/google/android/material/datepicker/DateValidatorPointBackward;->point:J

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "flags"    # I

    .prologue
    .line 85
    iget-wide v0, p0, Lcom/google/android/material/datepicker/DateValidatorPointBackward;->point:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 86
    return-void
.end method

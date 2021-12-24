.class public Lcom/google/android/material/datepicker/DateValidatorPointForward;
.super Ljava/lang/Object;
.source "DateValidatorPointForward.java"

# interfaces
.implements Lcom/google/android/material/datepicker/CalendarConstraints$DateValidator;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/material/datepicker/DateValidatorPointForward;",
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
    .line 57
    new-instance v0, Lcom/google/android/material/datepicker/DateValidatorPointForward$1;

    invoke-direct {v0}, Lcom/google/android/material/datepicker/DateValidatorPointForward$1;-><init>()V

    sput-object v0, Lcom/google/android/material/datepicker/DateValidatorPointForward;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(J)V
    .locals 1
    .param p1, "point"    # J

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-wide p1, p0, Lcom/google/android/material/datepicker/DateValidatorPointForward;->point:J

    .line 36
    return-void
.end method

.method synthetic constructor <init>(JLcom/google/android/material/datepicker/DateValidatorPointForward$1;)V
    .locals 1
    .param p1, "x0"    # J
    .param p3, "x1"    # Lcom/google/android/material/datepicker/DateValidatorPointForward$1;

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/datepicker/DateValidatorPointForward;-><init>(J)V

    return-void
.end method

.method public static from(J)Lcom/google/android/material/datepicker/DateValidatorPointForward;
    .locals 2
    .param p0, "point"    # J
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 44
    new-instance v0, Lcom/google/android/material/datepicker/DateValidatorPointForward;

    invoke-direct {v0, p0, p1}, Lcom/google/android/material/datepicker/DateValidatorPointForward;-><init>(J)V

    return-object v0
.end method

.method public static now()Lcom/google/android/material/datepicker/DateValidatorPointForward;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 53
    invoke-static {}, Lcom/google/android/material/datepicker/UtcDates;->getTodayCalendar()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/material/datepicker/DateValidatorPointForward;->from(J)Lcom/google/android/material/datepicker/DateValidatorPointForward;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 79
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 89
    if-ne p0, p1, :cond_1

    .line 96
    :cond_0
    :goto_0
    return v1

    .line 92
    :cond_1
    instance-of v3, p1, Lcom/google/android/material/datepicker/DateValidatorPointForward;

    if-nez v3, :cond_2

    move v1, v2

    .line 93
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 95
    check-cast v0, Lcom/google/android/material/datepicker/DateValidatorPointForward;

    .line 96
    .local v0, "that":Lcom/google/android/material/datepicker/DateValidatorPointForward;
    iget-wide v4, p0, Lcom/google/android/material/datepicker/DateValidatorPointForward;->point:J

    iget-wide v6, v0, Lcom/google/android/material/datepicker/DateValidatorPointForward;->point:J

    cmp-long v3, v4, v6

    if-eqz v3, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 101
    const/4 v1, 0x1

    new-array v0, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-wide v2, p0, Lcom/google/android/material/datepicker/DateValidatorPointForward;->point:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    .line 102
    .local v0, "hashedFields":[Ljava/lang/Object;
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    return v1
.end method

.method public isValid(J)Z
    .locals 3
    .param p1, "date"    # J

    .prologue
    .line 74
    iget-wide v0, p0, Lcom/google/android/material/datepicker/DateValidatorPointForward;->point:J

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

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
    .line 84
    iget-wide v0, p0, Lcom/google/android/material/datepicker/DateValidatorPointForward;->point:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 85
    return-void
.end method

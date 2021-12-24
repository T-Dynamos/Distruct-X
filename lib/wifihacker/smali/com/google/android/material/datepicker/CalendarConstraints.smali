.class public final Lcom/google/android/material/datepicker/CalendarConstraints;
.super Ljava/lang/Object;
.source "CalendarConstraints.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/datepicker/CalendarConstraints$Builder;,
        Lcom/google/android/material/datepicker/CalendarConstraints$DateValidator;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/material/datepicker/CalendarConstraints;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final end:Lcom/google/android/material/datepicker/Month;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final monthSpan:I

.field private openAt:Lcom/google/android/material/datepicker/Month;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final start:Lcom/google/android/material/datepicker/Month;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final validator:Lcom/google/android/material/datepicker/CalendarConstraints$DateValidator;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final yearSpan:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 149
    new-instance v0, Lcom/google/android/material/datepicker/CalendarConstraints$1;

    invoke-direct {v0}, Lcom/google/android/material/datepicker/CalendarConstraints$1;-><init>()V

    sput-object v0, Lcom/google/android/material/datepicker/CalendarConstraints;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/material/datepicker/Month;Lcom/google/android/material/datepicker/Month;Lcom/google/android/material/datepicker/CalendarConstraints$DateValidator;Lcom/google/android/material/datepicker/Month;)V
    .locals 2
    .param p1, "start"    # Lcom/google/android/material/datepicker/Month;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "end"    # Lcom/google/android/material/datepicker/Month;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "validator"    # Lcom/google/android/material/datepicker/CalendarConstraints$DateValidator;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "openAt"    # Lcom/google/android/material/datepicker/Month;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/google/android/material/datepicker/CalendarConstraints;->start:Lcom/google/android/material/datepicker/Month;

    .line 62
    iput-object p2, p0, Lcom/google/android/material/datepicker/CalendarConstraints;->end:Lcom/google/android/material/datepicker/Month;

    .line 63
    iput-object p4, p0, Lcom/google/android/material/datepicker/CalendarConstraints;->openAt:Lcom/google/android/material/datepicker/Month;

    .line 64
    iput-object p3, p0, Lcom/google/android/material/datepicker/CalendarConstraints;->validator:Lcom/google/android/material/datepicker/CalendarConstraints$DateValidator;

    .line 65
    if-eqz p4, :cond_0

    invoke-virtual {p1, p4}, Lcom/google/android/material/datepicker/Month;->compareTo(Lcom/google/android/material/datepicker/Month;)I

    move-result v0

    if-lez v0, :cond_0

    .line 66
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "start Month cannot be after current Month"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 68
    :cond_0
    if-eqz p4, :cond_1

    invoke-virtual {p4, p2}, Lcom/google/android/material/datepicker/Month;->compareTo(Lcom/google/android/material/datepicker/Month;)I

    move-result v0

    if-lez v0, :cond_1

    .line 69
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "current Month cannot be after end Month"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 71
    :cond_1
    invoke-virtual {p1, p2}, Lcom/google/android/material/datepicker/Month;->monthsUntil(Lcom/google/android/material/datepicker/Month;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/material/datepicker/CalendarConstraints;->monthSpan:I

    .line 72
    iget v0, p2, Lcom/google/android/material/datepicker/Month;->year:I

    iget v1, p1, Lcom/google/android/material/datepicker/Month;->year:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/material/datepicker/CalendarConstraints;->yearSpan:I

    .line 73
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/material/datepicker/Month;Lcom/google/android/material/datepicker/Month;Lcom/google/android/material/datepicker/CalendarConstraints$DateValidator;Lcom/google/android/material/datepicker/Month;Lcom/google/android/material/datepicker/CalendarConstraints$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/android/material/datepicker/Month;
    .param p2, "x1"    # Lcom/google/android/material/datepicker/Month;
    .param p3, "x2"    # Lcom/google/android/material/datepicker/CalendarConstraints$DateValidator;
    .param p4, "x3"    # Lcom/google/android/material/datepicker/Month;
    .param p5, "x4"    # Lcom/google/android/material/datepicker/CalendarConstraints$1;

    .prologue
    .line 33
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/material/datepicker/CalendarConstraints;-><init>(Lcom/google/android/material/datepicker/Month;Lcom/google/android/material/datepicker/Month;Lcom/google/android/material/datepicker/CalendarConstraints$DateValidator;Lcom/google/android/material/datepicker/Month;)V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/material/datepicker/CalendarConstraints;)Lcom/google/android/material/datepicker/Month;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/material/datepicker/CalendarConstraints;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/android/material/datepicker/CalendarConstraints;->start:Lcom/google/android/material/datepicker/Month;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/material/datepicker/CalendarConstraints;)Lcom/google/android/material/datepicker/Month;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/material/datepicker/CalendarConstraints;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/android/material/datepicker/CalendarConstraints;->end:Lcom/google/android/material/datepicker/Month;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/material/datepicker/CalendarConstraints;)Lcom/google/android/material/datepicker/Month;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/material/datepicker/CalendarConstraints;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/android/material/datepicker/CalendarConstraints;->openAt:Lcom/google/android/material/datepicker/Month;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/material/datepicker/CalendarConstraints;)Lcom/google/android/material/datepicker/CalendarConstraints$DateValidator;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/material/datepicker/CalendarConstraints;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/android/material/datepicker/CalendarConstraints;->validator:Lcom/google/android/material/datepicker/CalendarConstraints$DateValidator;

    return-object v0
.end method


# virtual methods
.method clamp(Lcom/google/android/material/datepicker/Month;)Lcom/google/android/material/datepicker/Month;
    .locals 1
    .param p1, "month"    # Lcom/google/android/material/datepicker/Month;

    .prologue
    .line 185
    iget-object v0, p0, Lcom/google/android/material/datepicker/CalendarConstraints;->start:Lcom/google/android/material/datepicker/Month;

    invoke-virtual {p1, v0}, Lcom/google/android/material/datepicker/Month;->compareTo(Lcom/google/android/material/datepicker/Month;)I

    move-result v0

    if-gez v0, :cond_1

    .line 186
    iget-object p1, p0, Lcom/google/android/material/datepicker/CalendarConstraints;->start:Lcom/google/android/material/datepicker/Month;

    .line 193
    .end local p1    # "month":Lcom/google/android/material/datepicker/Month;
    :cond_0
    :goto_0
    return-object p1

    .line 189
    .restart local p1    # "month":Lcom/google/android/material/datepicker/Month;
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/datepicker/CalendarConstraints;->end:Lcom/google/android/material/datepicker/Month;

    invoke-virtual {p1, v0}, Lcom/google/android/material/datepicker/Month;->compareTo(Lcom/google/android/material/datepicker/Month;)I

    move-result v0

    if-lez v0, :cond_0

    .line 190
    iget-object p1, p0, Lcom/google/android/material/datepicker/CalendarConstraints;->end:Lcom/google/android/material/datepicker/Month;

    goto :goto_0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 170
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 127
    if-ne p0, p1, :cond_1

    .line 134
    :cond_0
    :goto_0
    return v1

    .line 130
    :cond_1
    instance-of v3, p1, Lcom/google/android/material/datepicker/CalendarConstraints;

    if-nez v3, :cond_2

    move v1, v2

    .line 131
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 133
    check-cast v0, Lcom/google/android/material/datepicker/CalendarConstraints;

    .line 134
    .local v0, "that":Lcom/google/android/material/datepicker/CalendarConstraints;
    iget-object v3, p0, Lcom/google/android/material/datepicker/CalendarConstraints;->start:Lcom/google/android/material/datepicker/Month;

    iget-object v4, v0, Lcom/google/android/material/datepicker/CalendarConstraints;->start:Lcom/google/android/material/datepicker/Month;

    invoke-virtual {v3, v4}, Lcom/google/android/material/datepicker/Month;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/android/material/datepicker/CalendarConstraints;->end:Lcom/google/android/material/datepicker/Month;

    iget-object v4, v0, Lcom/google/android/material/datepicker/CalendarConstraints;->end:Lcom/google/android/material/datepicker/Month;

    .line 135
    invoke-virtual {v3, v4}, Lcom/google/android/material/datepicker/Month;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/android/material/datepicker/CalendarConstraints;->openAt:Lcom/google/android/material/datepicker/Month;

    iget-object v4, v0, Lcom/google/android/material/datepicker/CalendarConstraints;->openAt:Lcom/google/android/material/datepicker/Month;

    .line 136
    invoke-static {v3, v4}, Landroidx/core/util/ObjectsCompat;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/android/material/datepicker/CalendarConstraints;->validator:Lcom/google/android/material/datepicker/CalendarConstraints$DateValidator;

    iget-object v4, v0, Lcom/google/android/material/datepicker/CalendarConstraints;->validator:Lcom/google/android/material/datepicker/CalendarConstraints$DateValidator;

    .line 137
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public getDateValidator()Lcom/google/android/material/datepicker/CalendarConstraints$DateValidator;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/google/android/material/datepicker/CalendarConstraints;->validator:Lcom/google/android/material/datepicker/CalendarConstraints$DateValidator;

    return-object v0
.end method

.method getEnd()Lcom/google/android/material/datepicker/Month;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 95
    iget-object v0, p0, Lcom/google/android/material/datepicker/CalendarConstraints;->end:Lcom/google/android/material/datepicker/Month;

    return-object v0
.end method

.method getMonthSpan()I
    .locals 1

    .prologue
    .line 114
    iget v0, p0, Lcom/google/android/material/datepicker/CalendarConstraints;->monthSpan:I

    return v0
.end method

.method getOpenAt()Lcom/google/android/material/datepicker/Month;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 101
    iget-object v0, p0, Lcom/google/android/material/datepicker/CalendarConstraints;->openAt:Lcom/google/android/material/datepicker/Month;

    return-object v0
.end method

.method getStart()Lcom/google/android/material/datepicker/Month;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 89
    iget-object v0, p0, Lcom/google/android/material/datepicker/CalendarConstraints;->start:Lcom/google/android/material/datepicker/Month;

    return-object v0
.end method

.method getYearSpan()I
    .locals 1

    .prologue
    .line 122
    iget v0, p0, Lcom/google/android/material/datepicker/CalendarConstraints;->yearSpan:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 142
    const/4 v1, 0x4

    new-array v0, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/material/datepicker/CalendarConstraints;->start:Lcom/google/android/material/datepicker/Month;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/material/datepicker/CalendarConstraints;->end:Lcom/google/android/material/datepicker/Month;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/material/datepicker/CalendarConstraints;->openAt:Lcom/google/android/material/datepicker/Month;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/material/datepicker/CalendarConstraints;->validator:Lcom/google/android/material/datepicker/CalendarConstraints$DateValidator;

    aput-object v2, v0, v1

    .line 143
    .local v0, "hashedFields":[Ljava/lang/Object;
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    return v1
.end method

.method isWithinBounds(J)Z
    .locals 5
    .param p1, "date"    # J

    .prologue
    const/4 v0, 0x1

    .line 76
    iget-object v1, p0, Lcom/google/android/material/datepicker/CalendarConstraints;->start:Lcom/google/android/material/datepicker/Month;

    invoke-virtual {v1, v0}, Lcom/google/android/material/datepicker/Month;->getDay(I)J

    move-result-wide v2

    cmp-long v1, v2, p1

    if-gtz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/material/datepicker/CalendarConstraints;->end:Lcom/google/android/material/datepicker/Month;

    iget-object v2, p0, Lcom/google/android/material/datepicker/CalendarConstraints;->end:Lcom/google/android/material/datepicker/Month;

    iget v2, v2, Lcom/google/android/material/datepicker/Month;->daysInMonth:I

    invoke-virtual {v1, v2}, Lcom/google/android/material/datepicker/Month;->getDay(I)J

    move-result-wide v2

    cmp-long v1, p1, v2

    if-gtz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method setOpenAt(Lcom/google/android/material/datepicker/Month;)V
    .locals 0
    .param p1, "openAt"    # Lcom/google/android/material/datepicker/Month;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 106
    iput-object p1, p0, Lcom/google/android/material/datepicker/CalendarConstraints;->openAt:Lcom/google/android/material/datepicker/Month;

    .line 107
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x0

    .line 175
    iget-object v0, p0, Lcom/google/android/material/datepicker/CalendarConstraints;->start:Lcom/google/android/material/datepicker/Month;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 176
    iget-object v0, p0, Lcom/google/android/material/datepicker/CalendarConstraints;->end:Lcom/google/android/material/datepicker/Month;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 177
    iget-object v0, p0, Lcom/google/android/material/datepicker/CalendarConstraints;->openAt:Lcom/google/android/material/datepicker/Month;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 178
    iget-object v0, p0, Lcom/google/android/material/datepicker/CalendarConstraints;->validator:Lcom/google/android/material/datepicker/CalendarConstraints$DateValidator;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 179
    return-void
.end method

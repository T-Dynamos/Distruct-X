.class Lcom/google/android/material/timepicker/TimeModel;
.super Ljava/lang/Object;
.source "TimeModel.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/material/timepicker/TimeModel;",
            ">;"
        }
    .end annotation
.end field

.field public static final NUMBER_FORMAT:Ljava/lang/String; = "%d"

.field public static final ZERO_LEADING_NUMBER_FORMAT:Ljava/lang/String; = "%02d"


# instance fields
.field final format:I

.field hour:I

.field private final hourInputValidator:Lcom/google/android/material/timepicker/MaxInputValidator;

.field minute:I

.field private final minuteInputValidator:Lcom/google/android/material/timepicker/MaxInputValidator;

.field period:I

.field selection:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 159
    new-instance v0, Lcom/google/android/material/timepicker/TimeModel$1;

    invoke-direct {v0}, Lcom/google/android/material/timepicker/TimeModel$1;-><init>()V

    sput-object v0, Lcom/google/android/material/timepicker/TimeModel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/material/timepicker/TimeModel;-><init>(I)V

    .line 53
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "format"    # I

    .prologue
    const/4 v1, 0x0

    .line 56
    const/16 v0, 0xa

    invoke-direct {p0, v1, v1, v0, p1}, Lcom/google/android/material/timepicker/TimeModel;-><init>(IIII)V

    .line 57
    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 2
    .param p1, "hour"    # I
    .param p2, "minute"    # I
    .param p3, "selection"    # I
    .param p4, "format"    # I

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput p1, p0, Lcom/google/android/material/timepicker/TimeModel;->hour:I

    .line 61
    iput p2, p0, Lcom/google/android/material/timepicker/TimeModel;->minute:I

    .line 62
    iput p3, p0, Lcom/google/android/material/timepicker/TimeModel;->selection:I

    .line 63
    iput p4, p0, Lcom/google/android/material/timepicker/TimeModel;->format:I

    .line 64
    invoke-static {p1}, Lcom/google/android/material/timepicker/TimeModel;->getPeriod(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/timepicker/TimeModel;->period:I

    .line 65
    new-instance v0, Lcom/google/android/material/timepicker/MaxInputValidator;

    const/16 v1, 0x3b

    invoke-direct {v0, v1}, Lcom/google/android/material/timepicker/MaxInputValidator;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/material/timepicker/TimeModel;->minuteInputValidator:Lcom/google/android/material/timepicker/MaxInputValidator;

    .line 66
    new-instance v1, Lcom/google/android/material/timepicker/MaxInputValidator;

    const/4 v0, 0x1

    if-ne p4, v0, :cond_0

    const/16 v0, 0x18

    :goto_0
    invoke-direct {v1, v0}, Lcom/google/android/material/timepicker/MaxInputValidator;-><init>(I)V

    iput-object v1, p0, Lcom/google/android/material/timepicker/TimeModel;->hourInputValidator:Lcom/google/android/material/timepicker/MaxInputValidator;

    .line 67
    return-void

    .line 66
    :cond_0
    const/16 v0, 0xc

    goto :goto_0
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/android/material/timepicker/TimeModel;-><init>(IIII)V

    .line 71
    return-void
.end method

.method public static formatText(Landroid/content/res/Resources;Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 1
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 183
    const-string v0, "%02d"

    invoke-static {p0, p1, v0}, Lcom/google/android/material/timepicker/TimeModel;->formatText(Landroid/content/res/Resources;Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatText(Landroid/content/res/Resources;Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "format"    # Ljava/lang/String;

    .prologue
    .line 187
    .line 188
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 190
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 187
    invoke-static {v0, p2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getPeriod(I)I
    .locals 1
    .param p0, "hourOfDay"    # I

    .prologue
    .line 81
    const/16 v0, 0xc

    if-lt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 147
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 130
    if-ne p0, p1, :cond_1

    .line 139
    :cond_0
    :goto_0
    return v1

    .line 134
    :cond_1
    instance-of v3, p1, Lcom/google/android/material/timepicker/TimeModel;

    if-nez v3, :cond_2

    move v1, v2

    .line 135
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 138
    check-cast v0, Lcom/google/android/material/timepicker/TimeModel;

    .line 139
    .local v0, "that":Lcom/google/android/material/timepicker/TimeModel;
    iget v3, p0, Lcom/google/android/material/timepicker/TimeModel;->hour:I

    iget v4, v0, Lcom/google/android/material/timepicker/TimeModel;->hour:I

    if-ne v3, v4, :cond_3

    iget v3, p0, Lcom/google/android/material/timepicker/TimeModel;->minute:I

    iget v4, v0, Lcom/google/android/material/timepicker/TimeModel;->minute:I

    if-ne v3, v4, :cond_3

    iget v3, p0, Lcom/google/android/material/timepicker/TimeModel;->format:I

    iget v4, v0, Lcom/google/android/material/timepicker/TimeModel;->format:I

    if-ne v3, v4, :cond_3

    iget v3, p0, Lcom/google/android/material/timepicker/TimeModel;->selection:I

    iget v4, v0, Lcom/google/android/material/timepicker/TimeModel;->selection:I

    if-eq v3, v4, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public getHourForDisplay()I
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 99
    iget v0, p0, Lcom/google/android/material/timepicker/TimeModel;->format:I

    if-ne v0, v1, :cond_0

    .line 100
    iget v0, p0, Lcom/google/android/material/timepicker/TimeModel;->hour:I

    rem-int/lit8 v0, v0, 0x18

    .line 111
    :goto_0
    return v0

    .line 103
    :cond_0
    iget v0, p0, Lcom/google/android/material/timepicker/TimeModel;->hour:I

    rem-int/lit8 v0, v0, 0xc

    if-nez v0, :cond_1

    .line 104
    const/16 v0, 0xc

    goto :goto_0

    .line 107
    :cond_1
    iget v0, p0, Lcom/google/android/material/timepicker/TimeModel;->period:I

    if-ne v0, v1, :cond_2

    .line 108
    iget v0, p0, Lcom/google/android/material/timepicker/TimeModel;->hour:I

    add-int/lit8 v0, v0, -0xc

    goto :goto_0

    .line 111
    :cond_2
    iget v0, p0, Lcom/google/android/material/timepicker/TimeModel;->hour:I

    goto :goto_0
.end method

.method public getHourInputValidator()Lcom/google/android/material/timepicker/MaxInputValidator;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/google/android/material/timepicker/TimeModel;->hourInputValidator:Lcom/google/android/material/timepicker/MaxInputValidator;

    return-object v0
.end method

.method public getMinuteInputValidator()Lcom/google/android/material/timepicker/MaxInputValidator;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/google/android/material/timepicker/TimeModel;->minuteInputValidator:Lcom/google/android/material/timepicker/MaxInputValidator;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 124
    const/4 v1, 0x4

    new-array v0, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/android/material/timepicker/TimeModel;->format:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/google/android/material/timepicker/TimeModel;->hour:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget v2, p0, Lcom/google/android/material/timepicker/TimeModel;->minute:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget v2, p0, Lcom/google/android/material/timepicker/TimeModel;->selection:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 125
    .local v0, "hashedFields":[Ljava/lang/Object;
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    return v1
.end method

.method public setHour(I)V
    .locals 3
    .param p1, "hour"    # I

    .prologue
    const/4 v2, 0x1

    .line 86
    iget v0, p0, Lcom/google/android/material/timepicker/TimeModel;->format:I

    if-ne v0, v2, :cond_0

    .line 87
    iput p1, p0, Lcom/google/android/material/timepicker/TimeModel;->hour:I

    .line 92
    :goto_0
    return-void

    .line 91
    :cond_0
    rem-int/lit8 v1, p1, 0xc

    iget v0, p0, Lcom/google/android/material/timepicker/TimeModel;->period:I

    if-ne v0, v2, :cond_1

    const/16 v0, 0xc

    :goto_1
    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/material/timepicker/TimeModel;->hour:I

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public setHourOfDay(I)V
    .locals 1
    .param p1, "hour"    # I

    .prologue
    .line 75
    invoke-static {p1}, Lcom/google/android/material/timepicker/TimeModel;->getPeriod(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/timepicker/TimeModel;->period:I

    .line 76
    iput p1, p0, Lcom/google/android/material/timepicker/TimeModel;->hour:I

    .line 77
    return-void
.end method

.method public setMinute(I)V
    .locals 1
    .param p1, "minute"    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
            to = 0x3cL
        .end annotation
    .end param

    .prologue
    .line 95
    rem-int/lit8 v0, p1, 0x3c

    iput v0, p0, Lcom/google/android/material/timepicker/TimeModel;->minute:I

    .line 96
    return-void
.end method

.method public setPeriod(I)V
    .locals 2
    .param p1, "period"    # I

    .prologue
    const/16 v1, 0xc

    .line 172
    iget v0, p0, Lcom/google/android/material/timepicker/TimeModel;->period:I

    if-eq p1, v0, :cond_0

    .line 173
    iput p1, p0, Lcom/google/android/material/timepicker/TimeModel;->period:I

    .line 174
    iget v0, p0, Lcom/google/android/material/timepicker/TimeModel;->hour:I

    if-ge v0, v1, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 175
    iget v0, p0, Lcom/google/android/material/timepicker/TimeModel;->hour:I

    add-int/lit8 v0, v0, 0xc

    iput v0, p0, Lcom/google/android/material/timepicker/TimeModel;->hour:I

    .line 180
    :cond_0
    :goto_0
    return-void

    .line 176
    :cond_1
    iget v0, p0, Lcom/google/android/material/timepicker/TimeModel;->hour:I

    if-lt v0, v1, :cond_0

    if-nez p1, :cond_0

    .line 177
    iget v0, p0, Lcom/google/android/material/timepicker/TimeModel;->hour:I

    add-int/lit8 v0, v0, -0xc

    iput v0, p0, Lcom/google/android/material/timepicker/TimeModel;->hour:I

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 152
    iget v0, p0, Lcom/google/android/material/timepicker/TimeModel;->hour:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 153
    iget v0, p0, Lcom/google/android/material/timepicker/TimeModel;->minute:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 154
    iget v0, p0, Lcom/google/android/material/timepicker/TimeModel;->selection:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 155
    iget v0, p0, Lcom/google/android/material/timepicker/TimeModel;->format:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 156
    return-void
.end method

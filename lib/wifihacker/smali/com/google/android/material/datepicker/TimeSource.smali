.class Lcom/google/android/material/datepicker/TimeSource;
.super Ljava/lang/Object;
.source "TimeSource.java"


# static fields
.field private static final SYSTEM_TIME_SOURCE:Lcom/google/android/material/datepicker/TimeSource;


# instance fields
.field private final fixedTimeMs:Ljava/lang/Long;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final fixedTimeZone:Ljava/util/TimeZone;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 25
    new-instance v0, Lcom/google/android/material/datepicker/TimeSource;

    invoke-direct {v0, v1, v1}, Lcom/google/android/material/datepicker/TimeSource;-><init>(Ljava/lang/Long;Ljava/util/TimeZone;)V

    sput-object v0, Lcom/google/android/material/datepicker/TimeSource;->SYSTEM_TIME_SOURCE:Lcom/google/android/material/datepicker/TimeSource;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Long;Ljava/util/TimeZone;)V
    .locals 0
    .param p1, "fixedTimeMs"    # Ljava/lang/Long;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "fixedTimeZone"    # Ljava/util/TimeZone;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/google/android/material/datepicker/TimeSource;->fixedTimeMs:Ljava/lang/Long;

    .line 33
    iput-object p2, p0, Lcom/google/android/material/datepicker/TimeSource;->fixedTimeZone:Ljava/util/TimeZone;

    .line 34
    return-void
.end method

.method static fixed(J)Lcom/google/android/material/datepicker/TimeSource;
    .locals 4
    .param p0, "epochMs"    # J

    .prologue
    .line 75
    new-instance v0, Lcom/google/android/material/datepicker/TimeSource;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/material/datepicker/TimeSource;-><init>(Ljava/lang/Long;Ljava/util/TimeZone;)V

    return-object v0
.end method

.method static fixed(JLjava/util/TimeZone;)Lcom/google/android/material/datepicker/TimeSource;
    .locals 2
    .param p0, "epochMs"    # J
    .param p2, "timeZone"    # Ljava/util/TimeZone;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 60
    new-instance v0, Lcom/google/android/material/datepicker/TimeSource;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lcom/google/android/material/datepicker/TimeSource;-><init>(Ljava/lang/Long;Ljava/util/TimeZone;)V

    return-object v0
.end method

.method static system()Lcom/google/android/material/datepicker/TimeSource;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/google/android/material/datepicker/TimeSource;->SYSTEM_TIME_SOURCE:Lcom/google/android/material/datepicker/TimeSource;

    return-object v0
.end method


# virtual methods
.method now()Ljava/util/Calendar;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/google/android/material/datepicker/TimeSource;->fixedTimeZone:Ljava/util/TimeZone;

    invoke-virtual {p0, v0}, Lcom/google/android/material/datepicker/TimeSource;->now(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    return-object v0
.end method

.method now(Ljava/util/TimeZone;)Ljava/util/Calendar;
    .locals 4
    .param p1, "timeZone"    # Ljava/util/TimeZone;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 90
    if-nez p1, :cond_1

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 91
    .local v0, "calendar":Ljava/util/Calendar;
    :goto_0
    iget-object v1, p0, Lcom/google/android/material/datepicker/TimeSource;->fixedTimeMs:Ljava/lang/Long;

    if-eqz v1, :cond_0

    .line 92
    iget-object v1, p0, Lcom/google/android/material/datepicker/TimeSource;->fixedTimeMs:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 95
    :cond_0
    return-object v0

    .line 90
    .end local v0    # "calendar":Ljava/util/Calendar;
    :cond_1
    invoke-static {p1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    goto :goto_0
.end method

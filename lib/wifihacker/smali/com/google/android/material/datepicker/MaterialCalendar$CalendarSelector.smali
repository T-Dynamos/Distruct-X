.class final enum Lcom/google/android/material/datepicker/MaterialCalendar$CalendarSelector;
.super Ljava/lang/Enum;
.source "MaterialCalendar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/datepicker/MaterialCalendar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "CalendarSelector"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/material/datepicker/MaterialCalendar$CalendarSelector;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/material/datepicker/MaterialCalendar$CalendarSelector;

.field public static final enum DAY:Lcom/google/android/material/datepicker/MaterialCalendar$CalendarSelector;

.field public static final enum YEAR:Lcom/google/android/material/datepicker/MaterialCalendar$CalendarSelector;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 64
    new-instance v0, Lcom/google/android/material/datepicker/MaterialCalendar$CalendarSelector;

    const-string v1, "DAY"

    invoke-direct {v0, v1, v2}, Lcom/google/android/material/datepicker/MaterialCalendar$CalendarSelector;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/material/datepicker/MaterialCalendar$CalendarSelector;->DAY:Lcom/google/android/material/datepicker/MaterialCalendar$CalendarSelector;

    .line 65
    new-instance v0, Lcom/google/android/material/datepicker/MaterialCalendar$CalendarSelector;

    const-string v1, "YEAR"

    invoke-direct {v0, v1, v3}, Lcom/google/android/material/datepicker/MaterialCalendar$CalendarSelector;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/material/datepicker/MaterialCalendar$CalendarSelector;->YEAR:Lcom/google/android/material/datepicker/MaterialCalendar$CalendarSelector;

    .line 63
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/android/material/datepicker/MaterialCalendar$CalendarSelector;

    sget-object v1, Lcom/google/android/material/datepicker/MaterialCalendar$CalendarSelector;->DAY:Lcom/google/android/material/datepicker/MaterialCalendar$CalendarSelector;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/material/datepicker/MaterialCalendar$CalendarSelector;->YEAR:Lcom/google/android/material/datepicker/MaterialCalendar$CalendarSelector;

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/android/material/datepicker/MaterialCalendar$CalendarSelector;->$VALUES:[Lcom/google/android/material/datepicker/MaterialCalendar$CalendarSelector;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 63
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/material/datepicker/MaterialCalendar$CalendarSelector;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 63
    const-class v0, Lcom/google/android/material/datepicker/MaterialCalendar$CalendarSelector;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/datepicker/MaterialCalendar$CalendarSelector;

    return-object v0
.end method

.method public static values()[Lcom/google/android/material/datepicker/MaterialCalendar$CalendarSelector;
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lcom/google/android/material/datepicker/MaterialCalendar$CalendarSelector;->$VALUES:[Lcom/google/android/material/datepicker/MaterialCalendar$CalendarSelector;

    invoke-virtual {v0}, [Lcom/google/android/material/datepicker/MaterialCalendar$CalendarSelector;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/material/datepicker/MaterialCalendar$CalendarSelector;

    return-object v0
.end method

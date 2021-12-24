.class public final Lcom/google/android/material/datepicker/MaterialCalendar;
.super Lcom/google/android/material/datepicker/PickerFragment;
.source "MaterialCalendar.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/datepicker/MaterialCalendar$OnDayClickListener;,
        Lcom/google/android/material/datepicker/MaterialCalendar$CalendarSelector;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/material/datepicker/PickerFragment",
        "<TS;>;"
    }
.end annotation


# static fields
.field private static final CALENDAR_CONSTRAINTS_KEY:Ljava/lang/String; = "CALENDAR_CONSTRAINTS_KEY"

.field private static final CURRENT_MONTH_KEY:Ljava/lang/String; = "CURRENT_MONTH_KEY"

.field private static final GRID_SELECTOR_KEY:Ljava/lang/String; = "GRID_SELECTOR_KEY"

.field static final MONTHS_VIEW_GROUP_TAG:Ljava/lang/Object;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final NAVIGATION_NEXT_TAG:Ljava/lang/Object;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final NAVIGATION_PREV_TAG:Ljava/lang/Object;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final SELECTOR_TOGGLE_TAG:Ljava/lang/Object;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private static final SMOOTH_SCROLL_MAX:I = 0x3

.field private static final THEME_RES_ID_KEY:Ljava/lang/String; = "THEME_RES_ID_KEY"


# instance fields
.field private calendarConstraints:Lcom/google/android/material/datepicker/CalendarConstraints;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private calendarSelector:Lcom/google/android/material/datepicker/MaterialCalendar$CalendarSelector;

.field private calendarStyle:Lcom/google/android/material/datepicker/CalendarStyle;

.field private current:Lcom/google/android/material/datepicker/Month;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private dateSelector:Lcom/google/android/material/datepicker/DateSelector;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/material/datepicker/DateSelector",
            "<TS;>;"
        }
    .end annotation
.end field

.field private dayFrame:Landroid/view/View;

.field private recyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private themeResId:I
    .annotation build Landroidx/annotation/StyleRes;
    .end annotation
.end field

.field private yearFrame:Landroid/view/View;

.field private yearSelector:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 74
    const-string v0, "MONTHS_VIEW_GROUP_TAG"

    sput-object v0, Lcom/google/android/material/datepicker/MaterialCalendar;->MONTHS_VIEW_GROUP_TAG:Ljava/lang/Object;

    .line 76
    const-string v0, "NAVIGATION_PREV_TAG"

    sput-object v0, Lcom/google/android/material/datepicker/MaterialCalendar;->NAVIGATION_PREV_TAG:Ljava/lang/Object;

    .line 78
    const-string v0, "NAVIGATION_NEXT_TAG"

    sput-object v0, Lcom/google/android/material/datepicker/MaterialCalendar;->NAVIGATION_NEXT_TAG:Ljava/lang/Object;

    .line 80
    const-string v0, "SELECTOR_TOGGLE_TAG"

    sput-object v0, Lcom/google/android/material/datepicker/MaterialCalendar;->SELECTOR_TOGGLE_TAG:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 60
    .local p0, "this":Lcom/google/android/material/datepicker/MaterialCalendar;, "Lcom/google/android/material/datepicker/MaterialCalendar<TS;>;"
    invoke-direct {p0}, Lcom/google/android/material/datepicker/PickerFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/material/datepicker/MaterialCalendar;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/material/datepicker/MaterialCalendar;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/material/datepicker/MaterialCalendar;)Lcom/google/android/material/datepicker/CalendarConstraints;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/material/datepicker/MaterialCalendar;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->calendarConstraints:Lcom/google/android/material/datepicker/CalendarConstraints;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/material/datepicker/MaterialCalendar;)Lcom/google/android/material/datepicker/DateSelector;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/material/datepicker/MaterialCalendar;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->dateSelector:Lcom/google/android/material/datepicker/DateSelector;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/material/datepicker/MaterialCalendar;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/material/datepicker/MaterialCalendar;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->yearSelector:Landroidx/recyclerview/widget/RecyclerView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/material/datepicker/MaterialCalendar;)Lcom/google/android/material/datepicker/CalendarStyle;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/material/datepicker/MaterialCalendar;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->calendarStyle:Lcom/google/android/material/datepicker/CalendarStyle;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/material/datepicker/MaterialCalendar;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/material/datepicker/MaterialCalendar;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->dayFrame:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$602(Lcom/google/android/material/datepicker/MaterialCalendar;Lcom/google/android/material/datepicker/Month;)Lcom/google/android/material/datepicker/Month;
    .locals 0
    .param p0, "x0"    # Lcom/google/android/material/datepicker/MaterialCalendar;
    .param p1, "x1"    # Lcom/google/android/material/datepicker/Month;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->current:Lcom/google/android/material/datepicker/Month;

    return-object p1
.end method

.method private addActionsToMonthNavigation(Landroid/view/View;Lcom/google/android/material/datepicker/MonthsPagerAdapter;)V
    .locals 5
    .param p1, "root"    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "monthsPagerAdapter"    # Lcom/google/android/material/datepicker/MonthsPagerAdapter;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 366
    .local p0, "this":Lcom/google/android/material/datepicker/MaterialCalendar;, "Lcom/google/android/material/datepicker/MaterialCalendar<TS;>;"
    sget v3, Lcom/google/android/material/R$id;->month_navigation_fragment_toggle:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/button/MaterialButton;

    .line 367
    .local v0, "monthDropSelect":Lcom/google/android/material/button/MaterialButton;
    sget-object v3, Lcom/google/android/material/datepicker/MaterialCalendar;->SELECTOR_TOGGLE_TAG:Ljava/lang/Object;

    invoke-virtual {v0, v3}, Lcom/google/android/material/button/MaterialButton;->setTag(Ljava/lang/Object;)V

    .line 368
    new-instance v3, Lcom/google/android/material/datepicker/MaterialCalendar$5;

    invoke-direct {v3, p0}, Lcom/google/android/material/datepicker/MaterialCalendar$5;-><init>(Lcom/google/android/material/datepicker/MaterialCalendar;)V

    invoke-static {v0, v3}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    .line 383
    sget v3, Lcom/google/android/material/R$id;->month_navigation_previous:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/button/MaterialButton;

    .line 384
    .local v2, "monthPrev":Lcom/google/android/material/button/MaterialButton;
    sget-object v3, Lcom/google/android/material/datepicker/MaterialCalendar;->NAVIGATION_PREV_TAG:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Lcom/google/android/material/button/MaterialButton;->setTag(Ljava/lang/Object;)V

    .line 385
    sget v3, Lcom/google/android/material/R$id;->month_navigation_next:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/button/MaterialButton;

    .line 386
    .local v1, "monthNext":Lcom/google/android/material/button/MaterialButton;
    sget-object v3, Lcom/google/android/material/datepicker/MaterialCalendar;->NAVIGATION_NEXT_TAG:Ljava/lang/Object;

    invoke-virtual {v1, v3}, Lcom/google/android/material/button/MaterialButton;->setTag(Ljava/lang/Object;)V

    .line 388
    sget v3, Lcom/google/android/material/R$id;->mtrl_calendar_year_selector_frame:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->yearFrame:Landroid/view/View;

    .line 389
    sget v3, Lcom/google/android/material/R$id;->mtrl_calendar_day_selector_frame:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->dayFrame:Landroid/view/View;

    .line 390
    sget-object v3, Lcom/google/android/material/datepicker/MaterialCalendar$CalendarSelector;->DAY:Lcom/google/android/material/datepicker/MaterialCalendar$CalendarSelector;

    invoke-virtual {p0, v3}, Lcom/google/android/material/datepicker/MaterialCalendar;->setSelector(Lcom/google/android/material/datepicker/MaterialCalendar$CalendarSelector;)V

    .line 391
    iget-object v3, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->current:Lcom/google/android/material/datepicker/Month;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/material/datepicker/Month;->getLongName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/android/material/button/MaterialButton;->setText(Ljava/lang/CharSequence;)V

    .line 392
    iget-object v3, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v4, Lcom/google/android/material/datepicker/MaterialCalendar$6;

    invoke-direct {v4, p0, p2, v0}, Lcom/google/android/material/datepicker/MaterialCalendar$6;-><init>(Lcom/google/android/material/datepicker/MaterialCalendar;Lcom/google/android/material/datepicker/MonthsPagerAdapter;Lcom/google/android/material/button/MaterialButton;)V

    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 419
    new-instance v3, Lcom/google/android/material/datepicker/MaterialCalendar$7;

    invoke-direct {v3, p0}, Lcom/google/android/material/datepicker/MaterialCalendar$7;-><init>(Lcom/google/android/material/datepicker/MaterialCalendar;)V

    invoke-virtual {v0, v3}, Lcom/google/android/material/button/MaterialButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 427
    new-instance v3, Lcom/google/android/material/datepicker/MaterialCalendar$8;

    invoke-direct {v3, p0, p2}, Lcom/google/android/material/datepicker/MaterialCalendar$8;-><init>(Lcom/google/android/material/datepicker/MaterialCalendar;Lcom/google/android/material/datepicker/MonthsPagerAdapter;)V

    invoke-virtual {v1, v3}, Lcom/google/android/material/button/MaterialButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 437
    new-instance v3, Lcom/google/android/material/datepicker/MaterialCalendar$9;

    invoke-direct {v3, p0, p2}, Lcom/google/android/material/datepicker/MaterialCalendar$9;-><init>(Lcom/google/android/material/datepicker/MaterialCalendar;Lcom/google/android/material/datepicker/MonthsPagerAdapter;)V

    invoke-virtual {v2, v3}, Lcom/google/android/material/button/MaterialButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 447
    return-void
.end method

.method private createItemDecoration()Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 232
    .local p0, "this":Lcom/google/android/material/datepicker/MaterialCalendar;, "Lcom/google/android/material/datepicker/MaterialCalendar<TS;>;"
    new-instance v0, Lcom/google/android/material/datepicker/MaterialCalendar$4;

    invoke-direct {v0, p0}, Lcom/google/android/material/datepicker/MaterialCalendar$4;-><init>(Lcom/google/android/material/datepicker/MaterialCalendar;)V

    return-object v0
.end method

.method static getDayHeight(Landroid/content/Context;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Px;
    .end annotation

    .prologue
    .line 335
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/android/material/R$dimen;->mtrl_calendar_day_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method public static newInstance(Lcom/google/android/material/datepicker/DateSelector;ILcom/google/android/material/datepicker/CalendarConstraints;)Lcom/google/android/material/datepicker/MaterialCalendar;
    .locals 4
    .param p0    # Lcom/google/android/material/datepicker/DateSelector;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "themeResId"    # I
        .annotation build Landroidx/annotation/StyleRes;
        .end annotation
    .end param
    .param p2, "calendarConstraints"    # Lcom/google/android/material/datepicker/CalendarConstraints;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/material/datepicker/DateSelector",
            "<TT;>;I",
            "Lcom/google/android/material/datepicker/CalendarConstraints;",
            ")",
            "Lcom/google/android/material/datepicker/MaterialCalendar",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 98
    .local p0, "dateSelector":Lcom/google/android/material/datepicker/DateSelector;, "Lcom/google/android/material/datepicker/DateSelector<TT;>;"
    new-instance v1, Lcom/google/android/material/datepicker/MaterialCalendar;

    invoke-direct {v1}, Lcom/google/android/material/datepicker/MaterialCalendar;-><init>()V

    .line 99
    .local v1, "materialCalendar":Lcom/google/android/material/datepicker/MaterialCalendar;, "Lcom/google/android/material/datepicker/MaterialCalendar<TT;>;"
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 100
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "THEME_RES_ID_KEY"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 101
    const-string v2, "GRID_SELECTOR_KEY"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 102
    const-string v2, "CALENDAR_CONSTRAINTS_KEY"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 103
    const-string v2, "CURRENT_MONTH_KEY"

    invoke-virtual {p2}, Lcom/google/android/material/datepicker/CalendarConstraints;->getOpenAt()Lcom/google/android/material/datepicker/Month;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 104
    invoke-virtual {v1, v0}, Lcom/google/android/material/datepicker/MaterialCalendar;->setArguments(Landroid/os/Bundle;)V

    .line 105
    return-object v1
.end method

.method private postSmoothRecyclerViewScroll(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 450
    .local p0, "this":Lcom/google/android/material/datepicker/MaterialCalendar;, "Lcom/google/android/material/datepicker/MaterialCalendar<TS;>;"
    iget-object v0, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/google/android/material/datepicker/MaterialCalendar$10;

    invoke-direct {v1, p0, p1}, Lcom/google/android/material/datepicker/MaterialCalendar$10;-><init>(Lcom/google/android/material/datepicker/MaterialCalendar;I)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->post(Ljava/lang/Runnable;)Z

    .line 457
    return-void
.end method


# virtual methods
.method public addOnSelectionChangedListener(Lcom/google/android/material/datepicker/OnSelectionChangedListener;)Z
    .locals 1
    .param p1    # Lcom/google/android/material/datepicker/OnSelectionChangedListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/material/datepicker/OnSelectionChangedListener",
            "<TS;>;)Z"
        }
    .end annotation

    .prologue
    .line 466
    .local p0, "this":Lcom/google/android/material/datepicker/MaterialCalendar;, "Lcom/google/android/material/datepicker/MaterialCalendar<TS;>;"
    .local p1, "listener":Lcom/google/android/material/datepicker/OnSelectionChangedListener;, "Lcom/google/android/material/datepicker/OnSelectionChangedListener<TS;>;"
    invoke-super {p0, p1}, Lcom/google/android/material/datepicker/PickerFragment;->addOnSelectionChangedListener(Lcom/google/android/material/datepicker/OnSelectionChangedListener;)Z

    move-result v0

    return v0
.end method

.method getCalendarConstraints()Lcom/google/android/material/datepicker/CalendarConstraints;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 290
    .local p0, "this":Lcom/google/android/material/datepicker/MaterialCalendar;, "Lcom/google/android/material/datepicker/MaterialCalendar<TS;>;"
    iget-object v0, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->calendarConstraints:Lcom/google/android/material/datepicker/CalendarConstraints;

    return-object v0
.end method

.method getCalendarStyle()Lcom/google/android/material/datepicker/CalendarStyle;
    .locals 1

    .prologue
    .line 324
    .local p0, "this":Lcom/google/android/material/datepicker/MaterialCalendar;, "Lcom/google/android/material/datepicker/MaterialCalendar<TS;>;"
    iget-object v0, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->calendarStyle:Lcom/google/android/material/datepicker/CalendarStyle;

    return-object v0
.end method

.method getCurrentMonth()Lcom/google/android/material/datepicker/Month;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 284
    .local p0, "this":Lcom/google/android/material/datepicker/MaterialCalendar;, "Lcom/google/android/material/datepicker/MaterialCalendar<TS;>;"
    iget-object v0, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->current:Lcom/google/android/material/datepicker/Month;

    return-object v0
.end method

.method public getDateSelector()Lcom/google/android/material/datepicker/DateSelector;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/material/datepicker/DateSelector",
            "<TS;>;"
        }
    .end annotation

    .prologue
    .line 320
    .local p0, "this":Lcom/google/android/material/datepicker/MaterialCalendar;, "Lcom/google/android/material/datepicker/MaterialCalendar<TS;>;"
    iget-object v0, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->dateSelector:Lcom/google/android/material/datepicker/DateSelector;

    return-object v0
.end method

.method getLayoutManager()Landroidx/recyclerview/widget/LinearLayoutManager;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 461
    .local p0, "this":Lcom/google/android/material/datepicker/MaterialCalendar;, "Lcom/google/android/material/datepicker/MaterialCalendar<TS;>;"
    iget-object v0, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "bundle"    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 119
    .local p0, "this":Lcom/google/android/material/datepicker/MaterialCalendar;, "Lcom/google/android/material/datepicker/MaterialCalendar<TS;>;"
    invoke-super {p0, p1}, Lcom/google/android/material/datepicker/PickerFragment;->onCreate(Landroid/os/Bundle;)V

    .line 120
    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/material/datepicker/MaterialCalendar;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 121
    .local v0, "activeBundle":Landroid/os/Bundle;
    :goto_0
    const-string v1, "THEME_RES_ID_KEY"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->themeResId:I

    .line 122
    const-string v1, "GRID_SELECTOR_KEY"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/datepicker/DateSelector;

    iput-object v1, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->dateSelector:Lcom/google/android/material/datepicker/DateSelector;

    .line 123
    const-string v1, "CALENDAR_CONSTRAINTS_KEY"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/datepicker/CalendarConstraints;

    iput-object v1, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->calendarConstraints:Lcom/google/android/material/datepicker/CalendarConstraints;

    .line 124
    const-string v1, "CURRENT_MONTH_KEY"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/datepicker/Month;

    iput-object v1, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->current:Lcom/google/android/material/datepicker/Month;

    .line 125
    return-void

    .end local v0    # "activeBundle":Landroid/os/Bundle;
    :cond_0
    move-object v0, p1

    .line 120
    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 15
    .param p1, "layoutInflater"    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "viewGroup"    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "bundle"    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 133
    .local p0, "this":Lcom/google/android/material/datepicker/MaterialCalendar;, "Lcom/google/android/material/datepicker/MaterialCalendar<TS;>;"
    new-instance v13, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Lcom/google/android/material/datepicker/MaterialCalendar;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->themeResId:I

    invoke-direct {v13, v2, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 134
    .local v13, "themedContext":Landroid/view/ContextThemeWrapper;
    new-instance v2, Lcom/google/android/material/datepicker/CalendarStyle;

    invoke-direct {v2, v13}, Lcom/google/android/material/datepicker/CalendarStyle;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->calendarStyle:Lcom/google/android/material/datepicker/CalendarStyle;

    .line 135
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v14

    .line 137
    .local v14, "themedInflater":Landroid/view/LayoutInflater;
    iget-object v2, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->calendarConstraints:Lcom/google/android/material/datepicker/CalendarConstraints;

    invoke-virtual {v2}, Lcom/google/android/material/datepicker/CalendarConstraints;->getStart()Lcom/google/android/material/datepicker/Month;

    move-result-object v9

    .line 141
    .local v9, "earliestMonth":Lcom/google/android/material/datepicker/Month;
    invoke-static {v13}, Lcom/google/android/material/datepicker/MaterialDatePicker;->isFullscreen(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 142
    sget v10, Lcom/google/android/material/R$layout;->mtrl_calendar_vertical:I

    .line 143
    .local v10, "layout":I
    const/4 v4, 0x1

    .line 149
    .local v4, "orientation":I
    :goto_0
    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v14, v10, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v12

    .line 150
    .local v12, "root":Landroid/view/View;
    sget v2, Lcom/google/android/material/R$id;->mtrl_calendar_days_of_week:I

    invoke-virtual {v12, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/GridView;

    .line 151
    .local v8, "daysHeader":Landroid/widget/GridView;
    new-instance v2, Lcom/google/android/material/datepicker/MaterialCalendar$1;

    invoke-direct {v2, p0}, Lcom/google/android/material/datepicker/MaterialCalendar$1;-><init>(Lcom/google/android/material/datepicker/MaterialCalendar;)V

    invoke-static {v8, v2}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    .line 162
    new-instance v2, Lcom/google/android/material/datepicker/DaysOfWeekAdapter;

    invoke-direct {v2}, Lcom/google/android/material/datepicker/DaysOfWeekAdapter;-><init>()V

    invoke-virtual {v8, v2}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 163
    iget v2, v9, Lcom/google/android/material/datepicker/Month;->daysInWeek:I

    invoke-virtual {v8, v2}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 164
    const/4 v2, 0x0

    invoke-virtual {v8, v2}, Landroid/widget/GridView;->setEnabled(Z)V

    .line 166
    sget v2, Lcom/google/android/material/R$id;->mtrl_calendar_months:I

    invoke-virtual {v12, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v2, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 168
    new-instance v1, Lcom/google/android/material/datepicker/MaterialCalendar$2;

    .line 169
    invoke-virtual {p0}, Lcom/google/android/material/datepicker/MaterialCalendar;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v5, 0x0

    move-object v2, p0

    move v6, v4

    invoke-direct/range {v1 .. v6}, Lcom/google/android/material/datepicker/MaterialCalendar$2;-><init>(Lcom/google/android/material/datepicker/MaterialCalendar;Landroid/content/Context;IZI)V

    .line 181
    .local v1, "layoutManager":Lcom/google/android/material/datepicker/SmoothCalendarLayoutManager;
    iget-object v2, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 182
    iget-object v2, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    sget-object v3, Lcom/google/android/material/datepicker/MaterialCalendar;->MONTHS_VIEW_GROUP_TAG:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->setTag(Ljava/lang/Object;)V

    .line 184
    new-instance v11, Lcom/google/android/material/datepicker/MonthsPagerAdapter;

    iget-object v2, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->dateSelector:Lcom/google/android/material/datepicker/DateSelector;

    iget-object v3, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->calendarConstraints:Lcom/google/android/material/datepicker/CalendarConstraints;

    new-instance v5, Lcom/google/android/material/datepicker/MaterialCalendar$3;

    invoke-direct {v5, p0}, Lcom/google/android/material/datepicker/MaterialCalendar$3;-><init>(Lcom/google/android/material/datepicker/MaterialCalendar;)V

    invoke-direct {v11, v13, v2, v3, v5}, Lcom/google/android/material/datepicker/MonthsPagerAdapter;-><init>(Landroid/content/Context;Lcom/google/android/material/datepicker/DateSelector;Lcom/google/android/material/datepicker/CalendarConstraints;Lcom/google/android/material/datepicker/MaterialCalendar$OnDayClickListener;)V

    .line 206
    .local v11, "monthsPagerAdapter":Lcom/google/android/material/datepicker/MonthsPagerAdapter;
    iget-object v2, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v11}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 209
    invoke-virtual {v13}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/google/android/material/R$integer;->mtrl_calendar_year_selector_span:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    .line 210
    .local v7, "columns":I
    sget v2, Lcom/google/android/material/R$id;->mtrl_calendar_year_selector_frame:I

    invoke-virtual {v12, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v2, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->yearSelector:Landroidx/recyclerview/widget/RecyclerView;

    .line 211
    iget-object v2, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->yearSelector:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v2, :cond_0

    .line 212
    iget-object v2, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->yearSelector:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 213
    iget-object v2, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->yearSelector:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v3, Landroidx/recyclerview/widget/GridLayoutManager;

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-direct {v3, v13, v7, v5, v6}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;IIZ)V

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 215
    iget-object v2, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->yearSelector:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v3, Lcom/google/android/material/datepicker/YearGridAdapter;

    invoke-direct {v3, p0}, Lcom/google/android/material/datepicker/YearGridAdapter;-><init>(Lcom/google/android/material/datepicker/MaterialCalendar;)V

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 216
    iget-object v2, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->yearSelector:Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {p0}, Lcom/google/android/material/datepicker/MaterialCalendar;->createItemDecoration()Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 219
    :cond_0
    sget v2, Lcom/google/android/material/R$id;->month_navigation_fragment_toggle:I

    invoke-virtual {v12, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 220
    invoke-direct {p0, v12, v11}, Lcom/google/android/material/datepicker/MaterialCalendar;->addActionsToMonthNavigation(Landroid/view/View;Lcom/google/android/material/datepicker/MonthsPagerAdapter;)V

    .line 223
    :cond_1
    invoke-static {v13}, Lcom/google/android/material/datepicker/MaterialDatePicker;->isFullscreen(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 224
    new-instance v2, Landroidx/recyclerview/widget/PagerSnapHelper;

    invoke-direct {v2}, Landroidx/recyclerview/widget/PagerSnapHelper;-><init>()V

    iget-object v3, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/PagerSnapHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 226
    :cond_2
    iget-object v2, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v3, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->current:Lcom/google/android/material/datepicker/Month;

    invoke-virtual {v11, v3}, Lcom/google/android/material/datepicker/MonthsPagerAdapter;->getPosition(Lcom/google/android/material/datepicker/Month;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 227
    return-object v12

    .line 145
    .end local v1    # "layoutManager":Lcom/google/android/material/datepicker/SmoothCalendarLayoutManager;
    .end local v4    # "orientation":I
    .end local v7    # "columns":I
    .end local v8    # "daysHeader":Landroid/widget/GridView;
    .end local v10    # "layout":I
    .end local v11    # "monthsPagerAdapter":Lcom/google/android/material/datepicker/MonthsPagerAdapter;
    .end local v12    # "root":Landroid/view/View;
    :cond_3
    sget v10, Lcom/google/android/material/R$layout;->mtrl_calendar_horizontal:I

    .line 146
    .restart local v10    # "layout":I
    const/4 v4, 0x0

    .restart local v4    # "orientation":I
    goto/16 :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "bundle"    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 110
    .local p0, "this":Lcom/google/android/material/datepicker/MaterialCalendar;, "Lcom/google/android/material/datepicker/MaterialCalendar<TS;>;"
    invoke-super {p0, p1}, Lcom/google/android/material/datepicker/PickerFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 111
    const-string v0, "THEME_RES_ID_KEY"

    iget v1, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->themeResId:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 112
    const-string v0, "GRID_SELECTOR_KEY"

    iget-object v1, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->dateSelector:Lcom/google/android/material/datepicker/DateSelector;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 113
    const-string v0, "CALENDAR_CONSTRAINTS_KEY"

    iget-object v1, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->calendarConstraints:Lcom/google/android/material/datepicker/CalendarConstraints;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 114
    const-string v0, "CURRENT_MONTH_KEY"

    iget-object v1, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->current:Lcom/google/android/material/datepicker/Month;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 115
    return-void
.end method

.method setCurrentMonth(Lcom/google/android/material/datepicker/Month;)V
    .locals 8
    .param p1, "moveTo"    # Lcom/google/android/material/datepicker/Month;

    .prologue
    .local p0, "this":Lcom/google/android/material/datepicker/MaterialCalendar;, "Lcom/google/android/material/datepicker/MaterialCalendar<TS;>;"
    const/4 v2, 0x1

    const/4 v5, 0x0

    .line 300
    iget-object v6, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v6}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/datepicker/MonthsPagerAdapter;

    .line 301
    .local v0, "adapter":Lcom/google/android/material/datepicker/MonthsPagerAdapter;
    invoke-virtual {v0, p1}, Lcom/google/android/material/datepicker/MonthsPagerAdapter;->getPosition(Lcom/google/android/material/datepicker/Month;)I

    move-result v4

    .line 302
    .local v4, "moveToPosition":I
    iget-object v6, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->current:Lcom/google/android/material/datepicker/Month;

    invoke-virtual {v0, v6}, Lcom/google/android/material/datepicker/MonthsPagerAdapter;->getPosition(Lcom/google/android/material/datepicker/Month;)I

    move-result v6

    sub-int v1, v4, v6

    .line 303
    .local v1, "distance":I
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v6

    const/4 v7, 0x3

    if-le v6, v7, :cond_0

    move v3, v2

    .line 304
    .local v3, "jump":Z
    :goto_0
    if-lez v1, :cond_1

    .line 305
    .local v2, "isForward":Z
    :goto_1
    iput-object p1, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->current:Lcom/google/android/material/datepicker/Month;

    .line 306
    if-eqz v3, :cond_2

    if-eqz v2, :cond_2

    .line 307
    iget-object v5, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    add-int/lit8 v6, v4, -0x3

    invoke-virtual {v5, v6}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 308
    invoke-direct {p0, v4}, Lcom/google/android/material/datepicker/MaterialCalendar;->postSmoothRecyclerViewScroll(I)V

    .line 315
    :goto_2
    return-void

    .end local v2    # "isForward":Z
    .end local v3    # "jump":Z
    :cond_0
    move v3, v5

    .line 303
    goto :goto_0

    .restart local v3    # "jump":Z
    :cond_1
    move v2, v5

    .line 304
    goto :goto_1

    .line 309
    .restart local v2    # "isForward":Z
    :cond_2
    if-eqz v3, :cond_3

    .line 310
    iget-object v5, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    add-int/lit8 v6, v4, 0x3

    invoke-virtual {v5, v6}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 311
    invoke-direct {p0, v4}, Lcom/google/android/material/datepicker/MaterialCalendar;->postSmoothRecyclerViewScroll(I)V

    goto :goto_2

    .line 313
    :cond_3
    invoke-direct {p0, v4}, Lcom/google/android/material/datepicker/MaterialCalendar;->postSmoothRecyclerViewScroll(I)V

    goto :goto_2
.end method

.method setSelector(Lcom/google/android/material/datepicker/MaterialCalendar$CalendarSelector;)V
    .locals 5
    .param p1, "selector"    # Lcom/google/android/material/datepicker/MaterialCalendar$CalendarSelector;

    .prologue
    .local p0, "this":Lcom/google/android/material/datepicker/MaterialCalendar;, "Lcom/google/android/material/datepicker/MaterialCalendar<TS;>;"
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 339
    iput-object p1, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->calendarSelector:Lcom/google/android/material/datepicker/MaterialCalendar$CalendarSelector;

    .line 340
    sget-object v0, Lcom/google/android/material/datepicker/MaterialCalendar$CalendarSelector;->YEAR:Lcom/google/android/material/datepicker/MaterialCalendar$CalendarSelector;

    if-ne p1, v0, :cond_1

    .line 341
    iget-object v0, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->yearSelector:Landroidx/recyclerview/widget/RecyclerView;

    .line 342
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->yearSelector:Landroidx/recyclerview/widget/RecyclerView;

    .line 344
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/datepicker/YearGridAdapter;

    iget-object v2, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->current:Lcom/google/android/material/datepicker/Month;

    iget v2, v2, Lcom/google/android/material/datepicker/Month;->year:I

    invoke-virtual {v0, v2}, Lcom/google/android/material/datepicker/YearGridAdapter;->getPositionForYear(I)I

    move-result v0

    .line 343
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->scrollToPosition(I)V

    .line 345
    iget-object v0, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->yearFrame:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 346
    iget-object v0, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->dayFrame:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 354
    :cond_0
    :goto_0
    return-void

    .line 347
    :cond_1
    sget-object v0, Lcom/google/android/material/datepicker/MaterialCalendar$CalendarSelector;->DAY:Lcom/google/android/material/datepicker/MaterialCalendar$CalendarSelector;

    if-ne p1, v0, :cond_0

    .line 348
    iget-object v0, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->yearFrame:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 349
    iget-object v0, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->dayFrame:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 352
    iget-object v0, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->current:Lcom/google/android/material/datepicker/Month;

    invoke-virtual {p0, v0}, Lcom/google/android/material/datepicker/MaterialCalendar;->setCurrentMonth(Lcom/google/android/material/datepicker/Month;)V

    goto :goto_0
.end method

.method toggleVisibleSelector()V
    .locals 2

    .prologue
    .line 357
    .local p0, "this":Lcom/google/android/material/datepicker/MaterialCalendar;, "Lcom/google/android/material/datepicker/MaterialCalendar<TS;>;"
    iget-object v0, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->calendarSelector:Lcom/google/android/material/datepicker/MaterialCalendar$CalendarSelector;

    sget-object v1, Lcom/google/android/material/datepicker/MaterialCalendar$CalendarSelector;->YEAR:Lcom/google/android/material/datepicker/MaterialCalendar$CalendarSelector;

    if-ne v0, v1, :cond_1

    .line 358
    sget-object v0, Lcom/google/android/material/datepicker/MaterialCalendar$CalendarSelector;->DAY:Lcom/google/android/material/datepicker/MaterialCalendar$CalendarSelector;

    invoke-virtual {p0, v0}, Lcom/google/android/material/datepicker/MaterialCalendar;->setSelector(Lcom/google/android/material/datepicker/MaterialCalendar$CalendarSelector;)V

    .line 362
    :cond_0
    :goto_0
    return-void

    .line 359
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->calendarSelector:Lcom/google/android/material/datepicker/MaterialCalendar$CalendarSelector;

    sget-object v1, Lcom/google/android/material/datepicker/MaterialCalendar$CalendarSelector;->DAY:Lcom/google/android/material/datepicker/MaterialCalendar$CalendarSelector;

    if-ne v0, v1, :cond_0

    .line 360
    sget-object v0, Lcom/google/android/material/datepicker/MaterialCalendar$CalendarSelector;->YEAR:Lcom/google/android/material/datepicker/MaterialCalendar$CalendarSelector;

    invoke-virtual {p0, v0}, Lcom/google/android/material/datepicker/MaterialCalendar;->setSelector(Lcom/google/android/material/datepicker/MaterialCalendar$CalendarSelector;)V

    goto :goto_0
.end method

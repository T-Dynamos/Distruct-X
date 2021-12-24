.class public final Lcom/google/android/material/datepicker/MaterialDatePicker;
.super Landroidx/fragment/app/DialogFragment;
.source "MaterialDatePicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/datepicker/MaterialDatePicker$Builder;,
        Lcom/google/android/material/datepicker/MaterialDatePicker$InputMode;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/fragment/app/DialogFragment;"
    }
.end annotation


# static fields
.field private static final CALENDAR_CONSTRAINTS_KEY:Ljava/lang/String; = "CALENDAR_CONSTRAINTS_KEY"

.field static final CANCEL_BUTTON_TAG:Ljava/lang/Object;

.field static final CONFIRM_BUTTON_TAG:Ljava/lang/Object;

.field private static final DATE_SELECTOR_KEY:Ljava/lang/String; = "DATE_SELECTOR_KEY"

.field public static final INPUT_MODE_CALENDAR:I = 0x0

.field private static final INPUT_MODE_KEY:Ljava/lang/String; = "INPUT_MODE_KEY"

.field public static final INPUT_MODE_TEXT:I = 0x1

.field private static final OVERRIDE_THEME_RES_ID:Ljava/lang/String; = "OVERRIDE_THEME_RES_ID"

.field private static final TITLE_TEXT_KEY:Ljava/lang/String; = "TITLE_TEXT_KEY"

.field private static final TITLE_TEXT_RES_ID_KEY:Ljava/lang/String; = "TITLE_TEXT_RES_ID_KEY"

.field static final TOGGLE_BUTTON_TAG:Ljava/lang/Object;


# instance fields
.field private background:Lcom/google/android/material/shape/MaterialShapeDrawable;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private calendar:Lcom/google/android/material/datepicker/MaterialCalendar;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/material/datepicker/MaterialCalendar",
            "<TS;>;"
        }
    .end annotation
.end field

.field private calendarConstraints:Lcom/google/android/material/datepicker/CalendarConstraints;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private confirmButton:Landroid/widget/Button;

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

.field private fullscreen:Z

.field private headerSelectionText:Landroid/widget/TextView;

.field private headerToggleButton:Lcom/google/android/material/internal/CheckableImageButton;

.field private inputMode:I

.field private final onCancelListeners:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet",
            "<",
            "Landroid/content/DialogInterface$OnCancelListener;",
            ">;"
        }
    .end annotation
.end field

.field private final onDismissListeners:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet",
            "<",
            "Landroid/content/DialogInterface$OnDismissListener;",
            ">;"
        }
    .end annotation
.end field

.field private final onNegativeButtonClickListeners:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet",
            "<",
            "Landroid/view/View$OnClickListener;",
            ">;"
        }
    .end annotation
.end field

.field private final onPositiveButtonClickListeners:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet",
            "<",
            "Lcom/google/android/material/datepicker/MaterialPickerOnPositiveButtonClickListener",
            "<-TS;>;>;"
        }
    .end annotation
.end field

.field private overrideThemeResId:I
    .annotation build Landroidx/annotation/StyleRes;
    .end annotation
.end field

.field private pickerFragment:Lcom/google/android/material/datepicker/PickerFragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/material/datepicker/PickerFragment",
            "<TS;>;"
        }
    .end annotation
.end field

.field private titleText:Ljava/lang/CharSequence;

.field private titleTextResId:I
    .annotation build Landroidx/annotation/StringRes;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 71
    const-string v0, "CONFIRM_BUTTON_TAG"

    sput-object v0, Lcom/google/android/material/datepicker/MaterialDatePicker;->CONFIRM_BUTTON_TAG:Ljava/lang/Object;

    .line 72
    const-string v0, "CANCEL_BUTTON_TAG"

    sput-object v0, Lcom/google/android/material/datepicker/MaterialDatePicker;->CANCEL_BUTTON_TAG:Ljava/lang/Object;

    .line 73
    const-string v0, "TOGGLE_BUTTON_TAG"

    sput-object v0, Lcom/google/android/material/datepicker/MaterialDatePicker;->TOGGLE_BUTTON_TAG:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 62
    .local p0, "this":Lcom/google/android/material/datepicker/MaterialDatePicker;, "Lcom/google/android/material/datepicker/MaterialDatePicker<TS;>;"
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    .line 108
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->onPositiveButtonClickListeners:Ljava/util/LinkedHashSet;

    .line 110
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->onNegativeButtonClickListeners:Ljava/util/LinkedHashSet;

    .line 112
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->onCancelListeners:Ljava/util/LinkedHashSet;

    .line 114
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->onDismissListeners:Ljava/util/LinkedHashSet;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/material/datepicker/MaterialDatePicker;)Ljava/util/LinkedHashSet;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/material/datepicker/MaterialDatePicker;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->onPositiveButtonClickListeners:Ljava/util/LinkedHashSet;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/material/datepicker/MaterialDatePicker;)Ljava/util/LinkedHashSet;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/material/datepicker/MaterialDatePicker;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->onNegativeButtonClickListeners:Ljava/util/LinkedHashSet;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/material/datepicker/MaterialDatePicker;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/material/datepicker/MaterialDatePicker;

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/google/android/material/datepicker/MaterialDatePicker;->updateHeader()V

    return-void
.end method

.method static synthetic access$300(Lcom/google/android/material/datepicker/MaterialDatePicker;)Lcom/google/android/material/datepicker/DateSelector;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/material/datepicker/MaterialDatePicker;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->dateSelector:Lcom/google/android/material/datepicker/DateSelector;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/material/datepicker/MaterialDatePicker;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/material/datepicker/MaterialDatePicker;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->confirmButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/material/datepicker/MaterialDatePicker;)Lcom/google/android/material/internal/CheckableImageButton;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/material/datepicker/MaterialDatePicker;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->headerToggleButton:Lcom/google/android/material/internal/CheckableImageButton;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/android/material/datepicker/MaterialDatePicker;Lcom/google/android/material/internal/CheckableImageButton;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/material/datepicker/MaterialDatePicker;
    .param p1, "x1"    # Lcom/google/android/material/internal/CheckableImageButton;

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/google/android/material/datepicker/MaterialDatePicker;->updateToggleContentDescription(Lcom/google/android/material/internal/CheckableImageButton;)V

    return-void
.end method

.method static synthetic access$700(Lcom/google/android/material/datepicker/MaterialDatePicker;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/material/datepicker/MaterialDatePicker;

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/google/android/material/datepicker/MaterialDatePicker;->startPickerFragment()V

    return-void
.end method

.method private static createHeaderToggleDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 395
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 396
    .local v0, "toggleDrawable":Landroid/graphics/drawable/StateListDrawable;
    const/4 v1, 0x1

    new-array v1, v1, [I

    const v2, 0x10100a0

    aput v2, v1, v3

    sget v2, Lcom/google/android/material/R$drawable;->material_ic_calendar_black_24dp:I

    .line 398
    invoke-static {p0, v2}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 396
    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 399
    new-array v1, v3, [I

    sget v2, Lcom/google/android/material/R$drawable;->material_ic_edit_black_24dp:I

    .line 401
    invoke-static {p0, v2}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 399
    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 402
    return-object v0
.end method

.method private static getDialogPickerHeight(Landroid/content/Context;)I
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 425
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 426
    .local v4, "resources":Landroid/content/res/Resources;
    sget v5, Lcom/google/android/material/R$dimen;->mtrl_calendar_navigation_height:I

    .line 427
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    sget v6, Lcom/google/android/material/R$dimen;->mtrl_calendar_navigation_top_padding:I

    .line 428
    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v6

    add-int/2addr v5, v6

    sget v6, Lcom/google/android/material/R$dimen;->mtrl_calendar_navigation_bottom_padding:I

    .line 429
    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v6

    add-int v3, v5, v6

    .line 430
    .local v3, "navigationHeight":I
    sget v5, Lcom/google/android/material/R$dimen;->mtrl_calendar_days_of_week_height:I

    .line 431
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 432
    .local v2, "daysOfWeekHeight":I
    sget v5, Lcom/google/android/material/datepicker/MonthAdapter;->MAXIMUM_WEEKS:I

    sget v6, Lcom/google/android/material/R$dimen;->mtrl_calendar_day_height:I

    .line 434
    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    mul-int/2addr v5, v6

    sget v6, Lcom/google/android/material/datepicker/MonthAdapter;->MAXIMUM_WEEKS:I

    add-int/lit8 v6, v6, -0x1

    sget v7, Lcom/google/android/material/R$dimen;->mtrl_calendar_month_vertical_padding:I

    .line 436
    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v7

    mul-int/2addr v6, v7

    add-int v0, v5, v6

    .line 437
    .local v0, "calendarHeight":I
    sget v5, Lcom/google/android/material/R$dimen;->mtrl_calendar_bottom_padding:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    .line 438
    .local v1, "calendarPadding":I
    add-int v5, v3, v2

    add-int/2addr v5, v0

    add-int/2addr v5, v1

    return v5
.end method

.method private static getPaddedPickerWidth(Landroid/content/Context;)I
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 442
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 443
    .local v4, "resources":Landroid/content/res/Resources;
    sget v5, Lcom/google/android/material/R$dimen;->mtrl_calendar_content_padding:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    .line 444
    .local v3, "padding":I
    invoke-static {}, Lcom/google/android/material/datepicker/Month;->current()Lcom/google/android/material/datepicker/Month;

    move-result-object v5

    iget v1, v5, Lcom/google/android/material/datepicker/Month;->daysInWeek:I

    .line 445
    .local v1, "daysInWeek":I
    sget v5, Lcom/google/android/material/R$dimen;->mtrl_calendar_day_width:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 446
    .local v0, "dayWidth":I
    sget v5, Lcom/google/android/material/R$dimen;->mtrl_calendar_month_horizontal_padding:I

    .line 447
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    .line 448
    .local v2, "horizontalSpace":I
    mul-int/lit8 v5, v3, 0x2

    mul-int v6, v1, v0

    add-int/2addr v5, v6

    add-int/lit8 v6, v1, -0x1

    mul-int/2addr v6, v2

    add-int/2addr v5, v6

    return v5
.end method

.method private getThemeResId(Landroid/content/Context;)I
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 175
    .local p0, "this":Lcom/google/android/material/datepicker/MaterialDatePicker;, "Lcom/google/android/material/datepicker/MaterialDatePicker<TS;>;"
    iget v0, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->overrideThemeResId:I

    if-eqz v0, :cond_0

    .line 176
    iget v0, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->overrideThemeResId:I

    .line 178
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->dateSelector:Lcom/google/android/material/datepicker/DateSelector;

    invoke-interface {v0, p1}, Lcom/google/android/material/datepicker/DateSelector;->getDefaultThemeResId(Landroid/content/Context;)I

    move-result v0

    goto :goto_0
.end method

.method private initHeaderToggle(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 362
    .local p0, "this":Lcom/google/android/material/datepicker/MaterialDatePicker;, "Lcom/google/android/material/datepicker/MaterialDatePicker<TS;>;"
    iget-object v0, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->headerToggleButton:Lcom/google/android/material/internal/CheckableImageButton;

    sget-object v1, Lcom/google/android/material/datepicker/MaterialDatePicker;->TOGGLE_BUTTON_TAG:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/google/android/material/internal/CheckableImageButton;->setTag(Ljava/lang/Object;)V

    .line 363
    iget-object v0, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->headerToggleButton:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-static {p1}, Lcom/google/android/material/datepicker/MaterialDatePicker;->createHeaderToggleDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/internal/CheckableImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 364
    iget-object v1, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->headerToggleButton:Lcom/google/android/material/internal/CheckableImageButton;

    iget v0, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->inputMode:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/google/android/material/internal/CheckableImageButton;->setChecked(Z)V

    .line 368
    iget-object v0, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->headerToggleButton:Lcom/google/android/material/internal/CheckableImageButton;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    .line 369
    iget-object v0, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->headerToggleButton:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-direct {p0, v0}, Lcom/google/android/material/datepicker/MaterialDatePicker;->updateToggleContentDescription(Lcom/google/android/material/internal/CheckableImageButton;)V

    .line 370
    iget-object v0, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->headerToggleButton:Lcom/google/android/material/internal/CheckableImageButton;

    new-instance v1, Lcom/google/android/material/datepicker/MaterialDatePicker$4;

    invoke-direct {v1, p0}, Lcom/google/android/material/datepicker/MaterialDatePicker$4;-><init>(Lcom/google/android/material/datepicker/MaterialDatePicker;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/internal/CheckableImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 382
    return-void

    .line 364
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static isFullscreen(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 406
    const v0, 0x101020d

    invoke-static {p0, v0}, Lcom/google/android/material/datepicker/MaterialDatePicker;->readMaterialCalendarStyleBoolean(Landroid/content/Context;I)Z

    move-result v0

    return v0
.end method

.method static isNestedScrollable(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 410
    sget v0, Lcom/google/android/material/R$attr;->nestedScrollable:I

    invoke-static {p0, v0}, Lcom/google/android/material/datepicker/MaterialDatePicker;->readMaterialCalendarStyleBoolean(Landroid/content/Context;I)Z

    move-result v0

    return v0
.end method

.method static newInstance(Lcom/google/android/material/datepicker/MaterialDatePicker$Builder;)Lcom/google/android/material/datepicker/MaterialDatePicker;
    .locals 4
    .param p0    # Lcom/google/android/material/datepicker/MaterialDatePicker$Builder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/material/datepicker/MaterialDatePicker$Builder",
            "<TS;>;)",
            "Lcom/google/android/material/datepicker/MaterialDatePicker",
            "<TS;>;"
        }
    .end annotation

    .prologue
    .line 134
    .local p0, "options":Lcom/google/android/material/datepicker/MaterialDatePicker$Builder;, "Lcom/google/android/material/datepicker/MaterialDatePicker$Builder<TS;>;"
    new-instance v1, Lcom/google/android/material/datepicker/MaterialDatePicker;

    invoke-direct {v1}, Lcom/google/android/material/datepicker/MaterialDatePicker;-><init>()V

    .line 135
    .local v1, "materialDatePickerDialogFragment":Lcom/google/android/material/datepicker/MaterialDatePicker;, "Lcom/google/android/material/datepicker/MaterialDatePicker<TS;>;"
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 136
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "OVERRIDE_THEME_RES_ID"

    iget v3, p0, Lcom/google/android/material/datepicker/MaterialDatePicker$Builder;->overrideThemeResId:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 137
    const-string v2, "DATE_SELECTOR_KEY"

    iget-object v3, p0, Lcom/google/android/material/datepicker/MaterialDatePicker$Builder;->dateSelector:Lcom/google/android/material/datepicker/DateSelector;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 138
    const-string v2, "CALENDAR_CONSTRAINTS_KEY"

    iget-object v3, p0, Lcom/google/android/material/datepicker/MaterialDatePicker$Builder;->calendarConstraints:Lcom/google/android/material/datepicker/CalendarConstraints;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 139
    const-string v2, "TITLE_TEXT_RES_ID_KEY"

    iget v3, p0, Lcom/google/android/material/datepicker/MaterialDatePicker$Builder;->titleTextResId:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 140
    const-string v2, "TITLE_TEXT_KEY"

    iget-object v3, p0, Lcom/google/android/material/datepicker/MaterialDatePicker$Builder;->titleText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 141
    const-string v2, "INPUT_MODE_KEY"

    iget v3, p0, Lcom/google/android/material/datepicker/MaterialDatePicker$Builder;->inputMode:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 142
    invoke-virtual {v1, v0}, Lcom/google/android/material/datepicker/MaterialDatePicker;->setArguments(Landroid/os/Bundle;)V

    .line 143
    return-object v1
.end method

.method static readMaterialCalendarStyleBoolean(Landroid/content/Context;I)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "attributeResId"    # I

    .prologue
    const/4 v6, 0x0

    .line 414
    sget v4, Lcom/google/android/material/R$attr;->materialCalendarStyle:I

    const-class v5, Lcom/google/android/material/datepicker/MaterialCalendar;

    .line 416
    invoke-virtual {v5}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v5

    .line 415
    invoke-static {p0, v4, v5}, Lcom/google/android/material/resources/MaterialAttributes;->resolveOrThrow(Landroid/content/Context;ILjava/lang/String;)I

    move-result v3

    .line 417
    .local v3, "calendarStyle":I
    const/4 v4, 0x1

    new-array v2, v4, [I

    aput p1, v2, v6

    .line 418
    .local v2, "attrs":[I
    invoke-virtual {p0, v3, v2}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 419
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v6, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 420
    .local v1, "attributeValue":Z
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 421
    return v1
.end method

.method private startPickerFragment()V
    .locals 4

    .prologue
    .line 334
    .local p0, "this":Lcom/google/android/material/datepicker/MaterialDatePicker;, "Lcom/google/android/material/datepicker/MaterialDatePicker<TS;>;"
    invoke-virtual {p0}, Lcom/google/android/material/datepicker/MaterialDatePicker;->requireContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/android/material/datepicker/MaterialDatePicker;->getThemeResId(Landroid/content/Context;)I

    move-result v1

    .line 335
    .local v1, "themeResId":I
    iget-object v2, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->dateSelector:Lcom/google/android/material/datepicker/DateSelector;

    iget-object v3, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->calendarConstraints:Lcom/google/android/material/datepicker/CalendarConstraints;

    invoke-static {v2, v1, v3}, Lcom/google/android/material/datepicker/MaterialCalendar;->newInstance(Lcom/google/android/material/datepicker/DateSelector;ILcom/google/android/material/datepicker/CalendarConstraints;)Lcom/google/android/material/datepicker/MaterialCalendar;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->calendar:Lcom/google/android/material/datepicker/MaterialCalendar;

    .line 336
    iget-object v2, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->headerToggleButton:Lcom/google/android/material/internal/CheckableImageButton;

    .line 337
    invoke-virtual {v2}, Lcom/google/android/material/internal/CheckableImageButton;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->dateSelector:Lcom/google/android/material/datepicker/DateSelector;

    iget-object v3, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->calendarConstraints:Lcom/google/android/material/datepicker/CalendarConstraints;

    .line 338
    invoke-static {v2, v1, v3}, Lcom/google/android/material/datepicker/MaterialTextInputPicker;->newInstance(Lcom/google/android/material/datepicker/DateSelector;ILcom/google/android/material/datepicker/CalendarConstraints;)Lcom/google/android/material/datepicker/MaterialTextInputPicker;

    move-result-object v2

    :goto_0
    iput-object v2, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->pickerFragment:Lcom/google/android/material/datepicker/PickerFragment;

    .line 340
    invoke-direct {p0}, Lcom/google/android/material/datepicker/MaterialDatePicker;->updateHeader()V

    .line 342
    invoke-virtual {p0}, Lcom/google/android/material/datepicker/MaterialDatePicker;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 343
    .local v0, "fragmentTransaction":Landroidx/fragment/app/FragmentTransaction;
    sget v2, Lcom/google/android/material/R$id;->mtrl_calendar_frame:I

    iget-object v3, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->pickerFragment:Lcom/google/android/material/datepicker/PickerFragment;

    invoke-virtual {v0, v2, v3}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 344
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitNow()V

    .line 346
    iget-object v2, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->pickerFragment:Lcom/google/android/material/datepicker/PickerFragment;

    new-instance v3, Lcom/google/android/material/datepicker/MaterialDatePicker$3;

    invoke-direct {v3, p0}, Lcom/google/android/material/datepicker/MaterialDatePicker$3;-><init>(Lcom/google/android/material/datepicker/MaterialDatePicker;)V

    invoke-virtual {v2, v3}, Lcom/google/android/material/datepicker/PickerFragment;->addOnSelectionChangedListener(Lcom/google/android/material/datepicker/OnSelectionChangedListener;)Z

    .line 359
    return-void

    .line 338
    .end local v0    # "fragmentTransaction":Landroidx/fragment/app/FragmentTransaction;
    :cond_0
    iget-object v2, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->calendar:Lcom/google/android/material/datepicker/MaterialCalendar;

    goto :goto_0
.end method

.method public static thisMonthInUtcMilliseconds()J
    .locals 2

    .prologue
    .line 96
    invoke-static {}, Lcom/google/android/material/datepicker/Month;->current()Lcom/google/android/material/datepicker/Month;

    move-result-object v0

    iget-wide v0, v0, Lcom/google/android/material/datepicker/Month;->timeInMillis:J

    return-wide v0
.end method

.method public static todayInUtcMilliseconds()J
    .locals 2

    .prologue
    .line 89
    invoke-static {}, Lcom/google/android/material/datepicker/UtcDates;->getTodayCalendar()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method private updateHeader()V
    .locals 5

    .prologue
    .line 327
    .local p0, "this":Lcom/google/android/material/datepicker/MaterialDatePicker;, "Lcom/google/android/material/datepicker/MaterialDatePicker<TS;>;"
    invoke-virtual {p0}, Lcom/google/android/material/datepicker/MaterialDatePicker;->getHeaderText()Ljava/lang/String;

    move-result-object v0

    .line 328
    .local v0, "headerText":Ljava/lang/String;
    iget-object v1, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->headerSelectionText:Landroid/widget/TextView;

    sget v2, Lcom/google/android/material/R$string;->mtrl_picker_announce_current_selection:I

    .line 329
    invoke-virtual {p0, v2}, Lcom/google/android/material/datepicker/MaterialDatePicker;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 328
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 330
    iget-object v1, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->headerSelectionText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 331
    return-void
.end method

.method private updateToggleContentDescription(Lcom/google/android/material/internal/CheckableImageButton;)V
    .locals 3
    .param p1, "toggle"    # Lcom/google/android/material/internal/CheckableImageButton;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 385
    .local p0, "this":Lcom/google/android/material/datepicker/MaterialDatePicker;, "Lcom/google/android/material/datepicker/MaterialDatePicker<TS;>;"
    iget-object v1, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->headerToggleButton:Lcom/google/android/material/internal/CheckableImageButton;

    .line 386
    invoke-virtual {v1}, Lcom/google/android/material/internal/CheckableImageButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 387
    invoke-virtual {p1}, Lcom/google/android/material/internal/CheckableImageButton;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/google/android/material/R$string;->mtrl_picker_toggle_to_calendar_input_mode:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 389
    .local v0, "contentDescription":Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->headerToggleButton:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v1, v0}, Lcom/google/android/material/internal/CheckableImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 390
    return-void

    .line 388
    .end local v0    # "contentDescription":Ljava/lang/String;
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/material/internal/CheckableImageButton;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/google/android/material/R$string;->mtrl_picker_toggle_to_text_input_mode:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public addOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Z
    .locals 1
    .param p1, "onCancelListener"    # Landroid/content/DialogInterface$OnCancelListener;

    .prologue
    .line 502
    .local p0, "this":Lcom/google/android/material/datepicker/MaterialDatePicker;, "Lcom/google/android/material/datepicker/MaterialDatePicker<TS;>;"
    iget-object v0, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->onCancelListeners:Ljava/util/LinkedHashSet;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public addOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Z
    .locals 1
    .param p1, "onDismissListener"    # Landroid/content/DialogInterface$OnDismissListener;

    .prologue
    .line 520
    .local p0, "this":Lcom/google/android/material/datepicker/MaterialDatePicker;, "Lcom/google/android/material/datepicker/MaterialDatePicker<TS;>;"
    iget-object v0, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->onDismissListeners:Ljava/util/LinkedHashSet;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public addOnNegativeButtonClickListener(Landroid/view/View$OnClickListener;)Z
    .locals 1
    .param p1, "onNegativeButtonClickListener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 476
    .local p0, "this":Lcom/google/android/material/datepicker/MaterialDatePicker;, "Lcom/google/android/material/datepicker/MaterialDatePicker<TS;>;"
    iget-object v0, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->onNegativeButtonClickListeners:Ljava/util/LinkedHashSet;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public addOnPositiveButtonClickListener(Lcom/google/android/material/datepicker/MaterialPickerOnPositiveButtonClickListener;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/material/datepicker/MaterialPickerOnPositiveButtonClickListener",
            "<-TS;>;)Z"
        }
    .end annotation

    .prologue
    .line 454
    .local p0, "this":Lcom/google/android/material/datepicker/MaterialDatePicker;, "Lcom/google/android/material/datepicker/MaterialDatePicker<TS;>;"
    .local p1, "onPositiveButtonClickListener":Lcom/google/android/material/datepicker/MaterialPickerOnPositiveButtonClickListener;, "Lcom/google/android/material/datepicker/MaterialPickerOnPositiveButtonClickListener<-TS;>;"
    iget-object v0, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->onPositiveButtonClickListeners:Ljava/util/LinkedHashSet;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public clearOnCancelListeners()V
    .locals 1

    .prologue
    .line 512
    .local p0, "this":Lcom/google/android/material/datepicker/MaterialDatePicker;, "Lcom/google/android/material/datepicker/MaterialDatePicker<TS;>;"
    iget-object v0, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->onCancelListeners:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->clear()V

    .line 513
    return-void
.end method

.method public clearOnDismissListeners()V
    .locals 1

    .prologue
    .line 530
    .local p0, "this":Lcom/google/android/material/datepicker/MaterialDatePicker;, "Lcom/google/android/material/datepicker/MaterialDatePicker<TS;>;"
    iget-object v0, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->onDismissListeners:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->clear()V

    .line 531
    return-void
.end method

.method public clearOnNegativeButtonClickListeners()V
    .locals 1

    .prologue
    .line 492
    .local p0, "this":Lcom/google/android/material/datepicker/MaterialDatePicker;, "Lcom/google/android/material/datepicker/MaterialDatePicker<TS;>;"
    iget-object v0, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->onNegativeButtonClickListeners:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->clear()V

    .line 493
    return-void
.end method

.method public clearOnPositiveButtonClickListeners()V
    .locals 1

    .prologue
    .line 470
    .local p0, "this":Lcom/google/android/material/datepicker/MaterialDatePicker;, "Lcom/google/android/material/datepicker/MaterialDatePicker<TS;>;"
    iget-object v0, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->onPositiveButtonClickListeners:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->clear()V

    .line 471
    return-void
.end method

.method public getHeaderText()Ljava/lang/String;
    .locals 2

    .prologue
    .line 105
    .local p0, "this":Lcom/google/android/material/datepicker/MaterialDatePicker;, "Lcom/google/android/material/datepicker/MaterialDatePicker<TS;>;"
    iget-object v0, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->dateSelector:Lcom/google/android/material/datepicker/DateSelector;

    invoke-virtual {p0}, Lcom/google/android/material/datepicker/MaterialDatePicker;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/material/datepicker/DateSelector;->getSelectionDisplayString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getSelection()Ljava/lang/Object;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TS;"
        }
    .end annotation

    .prologue
    .line 323
    .local p0, "this":Lcom/google/android/material/datepicker/MaterialDatePicker;, "Lcom/google/android/material/datepicker/MaterialDatePicker<TS;>;"
    iget-object v0, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->dateSelector:Lcom/google/android/material/datepicker/DateSelector;

    invoke-interface {v0}, Lcom/google/android/material/datepicker/DateSelector;->getSelection()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 3
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 299
    .local p0, "this":Lcom/google/android/material/datepicker/MaterialDatePicker;, "Lcom/google/android/material/datepicker/MaterialDatePicker<TS;>;"
    iget-object v1, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->onCancelListeners:Ljava/util/LinkedHashSet;

    invoke-virtual {v1}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/DialogInterface$OnCancelListener;

    .line 300
    .local v0, "listener":Landroid/content/DialogInterface$OnCancelListener;
    invoke-interface {v0, p1}, Landroid/content/DialogInterface$OnCancelListener;->onCancel(Landroid/content/DialogInterface;)V

    goto :goto_0

    .line 302
    .end local v0    # "listener":Landroid/content/DialogInterface$OnCancelListener;
    :cond_0
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    .line 303
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "bundle"    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 164
    .local p0, "this":Lcom/google/android/material/datepicker/MaterialDatePicker;, "Lcom/google/android/material/datepicker/MaterialDatePicker<TS;>;"
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 165
    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/material/datepicker/MaterialDatePicker;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 166
    .local v0, "activeBundle":Landroid/os/Bundle;
    :goto_0
    const-string v1, "OVERRIDE_THEME_RES_ID"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->overrideThemeResId:I

    .line 167
    const-string v1, "DATE_SELECTOR_KEY"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/datepicker/DateSelector;

    iput-object v1, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->dateSelector:Lcom/google/android/material/datepicker/DateSelector;

    .line 168
    const-string v1, "CALENDAR_CONSTRAINTS_KEY"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/datepicker/CalendarConstraints;

    iput-object v1, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->calendarConstraints:Lcom/google/android/material/datepicker/CalendarConstraints;

    .line 169
    const-string v1, "TITLE_TEXT_RES_ID_KEY"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->titleTextResId:I

    .line 170
    const-string v1, "TITLE_TEXT_KEY"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->titleText:Ljava/lang/CharSequence;

    .line 171
    const-string v1, "INPUT_MODE_KEY"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->inputMode:I

    .line 172
    return-void

    .end local v0    # "activeBundle":Landroid/os/Bundle;
    :cond_0
    move-object v0, p1

    .line 165
    goto :goto_0
.end method

.method public final onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 7
    .param p1, "bundle"    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 184
    .local p0, "this":Lcom/google/android/material/datepicker/MaterialDatePicker;, "Lcom/google/android/material/datepicker/MaterialDatePicker<TS;>;"
    new-instance v1, Landroid/app/Dialog;

    invoke-virtual {p0}, Lcom/google/android/material/datepicker/MaterialDatePicker;->requireContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/android/material/datepicker/MaterialDatePicker;->requireContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/google/android/material/datepicker/MaterialDatePicker;->getThemeResId(Landroid/content/Context;)I

    move-result v4

    invoke-direct {v1, v3, v4}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 185
    .local v1, "dialog":Landroid/app/Dialog;
    invoke-virtual {v1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 186
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Lcom/google/android/material/datepicker/MaterialDatePicker;->isFullscreen(Landroid/content/Context;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->fullscreen:Z

    .line 187
    sget v3, Lcom/google/android/material/R$attr;->colorSurface:I

    const-class v4, Lcom/google/android/material/datepicker/MaterialDatePicker;

    .line 189
    invoke-virtual {v4}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v4

    .line 188
    invoke-static {v0, v3, v4}, Lcom/google/android/material/resources/MaterialAttributes;->resolveOrThrow(Landroid/content/Context;ILjava/lang/String;)I

    move-result v2

    .line 190
    .local v2, "surfaceColor":I
    new-instance v3, Lcom/google/android/material/shape/MaterialShapeDrawable;

    const/4 v4, 0x0

    sget v5, Lcom/google/android/material/R$attr;->materialCalendarStyle:I

    sget v6, Lcom/google/android/material/R$style;->Widget_MaterialComponents_MaterialCalendar:I

    invoke-direct {v3, v0, v4, v5, v6}, Lcom/google/android/material/shape/MaterialShapeDrawable;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object v3, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->background:Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 196
    iget-object v3, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->background:Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-virtual {v3, v0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->initializeElevationOverlay(Landroid/content/Context;)V

    .line 197
    iget-object v3, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->background:Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setFillColor(Landroid/content/res/ColorStateList;)V

    .line 198
    iget-object v3, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->background:Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v4

    invoke-static {v4}, Landroidx/core/view/ViewCompat;->getElevation(Landroid/view/View;)F

    move-result v4

    invoke-virtual {v3, v4}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setElevation(F)V

    .line 199
    return-object v1
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 11
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
    .local p0, "this":Lcom/google/android/material/datepicker/MaterialDatePicker;, "Lcom/google/android/material/datepicker/MaterialDatePicker<TS;>;"
    const/4 v10, 0x1

    .line 208
    iget-boolean v7, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->fullscreen:Z

    if-eqz v7, :cond_0

    sget v3, Lcom/google/android/material/R$layout;->mtrl_picker_fullscreen:I

    .line 209
    .local v3, "layout":I
    :goto_0
    invoke-virtual {p1, v3, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 210
    .local v5, "root":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 212
    .local v1, "context":Landroid/content/Context;
    iget-boolean v7, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->fullscreen:Z

    if-eqz v7, :cond_1

    .line 213
    sget v7, Lcom/google/android/material/R$id;->mtrl_calendar_frame:I

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 214
    .local v2, "frame":Landroid/view/View;
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    .line 215
    invoke-static {v1}, Lcom/google/android/material/datepicker/MaterialDatePicker;->getPaddedPickerWidth(Landroid/content/Context;)I

    move-result v8

    const/4 v9, -0x2

    invoke-direct {v7, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 214
    invoke-virtual {v2, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 224
    :goto_1
    sget v7, Lcom/google/android/material/R$id;->mtrl_picker_header_selection_text:I

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->headerSelectionText:Landroid/widget/TextView;

    .line 225
    iget-object v7, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->headerSelectionText:Landroid/widget/TextView;

    invoke-static {v7, v10}, Landroidx/core/view/ViewCompat;->setAccessibilityLiveRegion(Landroid/view/View;I)V

    .line 227
    sget v7, Lcom/google/android/material/R$id;->mtrl_picker_header_toggle:I

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/google/android/material/internal/CheckableImageButton;

    iput-object v7, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->headerToggleButton:Lcom/google/android/material/internal/CheckableImageButton;

    .line 228
    sget v7, Lcom/google/android/material/R$id;->mtrl_picker_title_text:I

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 229
    .local v6, "titleTextView":Landroid/widget/TextView;
    iget-object v7, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->titleText:Ljava/lang/CharSequence;

    if-eqz v7, :cond_2

    .line 230
    iget-object v7, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->titleText:Ljava/lang/CharSequence;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 234
    :goto_2
    invoke-direct {p0, v1}, Lcom/google/android/material/datepicker/MaterialDatePicker;->initHeaderToggle(Landroid/content/Context;)V

    .line 236
    sget v7, Lcom/google/android/material/R$id;->confirm_button:I

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    iput-object v7, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->confirmButton:Landroid/widget/Button;

    .line 237
    iget-object v7, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->dateSelector:Lcom/google/android/material/datepicker/DateSelector;

    invoke-interface {v7}, Lcom/google/android/material/datepicker/DateSelector;->isSelectionComplete()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 238
    iget-object v7, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->confirmButton:Landroid/widget/Button;

    invoke-virtual {v7, v10}, Landroid/widget/Button;->setEnabled(Z)V

    .line 242
    :goto_3
    iget-object v7, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->confirmButton:Landroid/widget/Button;

    sget-object v8, Lcom/google/android/material/datepicker/MaterialDatePicker;->CONFIRM_BUTTON_TAG:Ljava/lang/Object;

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 243
    iget-object v7, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->confirmButton:Landroid/widget/Button;

    new-instance v8, Lcom/google/android/material/datepicker/MaterialDatePicker$1;

    invoke-direct {v8, p0}, Lcom/google/android/material/datepicker/MaterialDatePicker$1;-><init>(Lcom/google/android/material/datepicker/MaterialDatePicker;)V

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 255
    sget v7, Lcom/google/android/material/R$id;->cancel_button:I

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 256
    .local v0, "cancelButton":Landroid/widget/Button;
    sget-object v7, Lcom/google/android/material/datepicker/MaterialDatePicker;->CANCEL_BUTTON_TAG:Ljava/lang/Object;

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 257
    new-instance v7, Lcom/google/android/material/datepicker/MaterialDatePicker$2;

    invoke-direct {v7, p0}, Lcom/google/android/material/datepicker/MaterialDatePicker$2;-><init>(Lcom/google/android/material/datepicker/MaterialDatePicker;)V

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 267
    return-object v5

    .line 208
    .end local v0    # "cancelButton":Landroid/widget/Button;
    .end local v1    # "context":Landroid/content/Context;
    .end local v2    # "frame":Landroid/view/View;
    .end local v3    # "layout":I
    .end local v5    # "root":Landroid/view/View;
    .end local v6    # "titleTextView":Landroid/widget/TextView;
    :cond_0
    sget v3, Lcom/google/android/material/R$layout;->mtrl_picker_dialog:I

    goto/16 :goto_0

    .line 217
    .restart local v1    # "context":Landroid/content/Context;
    .restart local v3    # "layout":I
    .restart local v5    # "root":Landroid/view/View;
    :cond_1
    sget v7, Lcom/google/android/material/R$id;->mtrl_calendar_main_pane:I

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 218
    .local v4, "pane":Landroid/view/View;
    sget v7, Lcom/google/android/material/R$id;->mtrl_calendar_frame:I

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 219
    .restart local v2    # "frame":Landroid/view/View;
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    .line 220
    invoke-static {v1}, Lcom/google/android/material/datepicker/MaterialDatePicker;->getPaddedPickerWidth(Landroid/content/Context;)I

    move-result v8

    const/4 v9, -0x1

    invoke-direct {v7, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 219
    invoke-virtual {v4, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 221
    invoke-virtual {p0}, Lcom/google/android/material/datepicker/MaterialDatePicker;->requireContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/material/datepicker/MaterialDatePicker;->getDialogPickerHeight(Landroid/content/Context;)I

    move-result v7

    invoke-virtual {v2, v7}, Landroid/view/View;->setMinimumHeight(I)V

    goto/16 :goto_1

    .line 232
    .end local v4    # "pane":Landroid/view/View;
    .restart local v6    # "titleTextView":Landroid/widget/TextView;
    :cond_2
    iget v7, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->titleTextResId:I

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    .line 240
    :cond_3
    iget-object v7, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->confirmButton:Landroid/widget/Button;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_3
.end method

.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 4
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 307
    .local p0, "this":Lcom/google/android/material/datepicker/MaterialDatePicker;, "Lcom/google/android/material/datepicker/MaterialDatePicker<TS;>;"
    iget-object v2, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->onDismissListeners:Ljava/util/LinkedHashSet;

    invoke-virtual {v2}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/DialogInterface$OnDismissListener;

    .line 308
    .local v0, "listener":Landroid/content/DialogInterface$OnDismissListener;
    invoke-interface {v0, p1}, Landroid/content/DialogInterface$OnDismissListener;->onDismiss(Landroid/content/DialogInterface;)V

    goto :goto_0

    .line 310
    .end local v0    # "listener":Landroid/content/DialogInterface$OnDismissListener;
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/datepicker/MaterialDatePicker;->getView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 311
    .local v1, "viewGroup":Landroid/view/ViewGroup;
    if-eqz v1, :cond_1

    .line 312
    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 314
    :cond_1
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 315
    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "bundle"    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 148
    .local p0, "this":Lcom/google/android/material/datepicker/MaterialDatePicker;, "Lcom/google/android/material/datepicker/MaterialDatePicker<TS;>;"
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 149
    const-string v1, "OVERRIDE_THEME_RES_ID"

    iget v2, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->overrideThemeResId:I

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 150
    const-string v1, "DATE_SELECTOR_KEY"

    iget-object v2, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->dateSelector:Lcom/google/android/material/datepicker/DateSelector;

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 152
    new-instance v0, Lcom/google/android/material/datepicker/CalendarConstraints$Builder;

    iget-object v1, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->calendarConstraints:Lcom/google/android/material/datepicker/CalendarConstraints;

    invoke-direct {v0, v1}, Lcom/google/android/material/datepicker/CalendarConstraints$Builder;-><init>(Lcom/google/android/material/datepicker/CalendarConstraints;)V

    .line 154
    .local v0, "constraintsBuilder":Lcom/google/android/material/datepicker/CalendarConstraints$Builder;
    iget-object v1, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->calendar:Lcom/google/android/material/datepicker/MaterialCalendar;

    invoke-virtual {v1}, Lcom/google/android/material/datepicker/MaterialCalendar;->getCurrentMonth()Lcom/google/android/material/datepicker/Month;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 155
    iget-object v1, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->calendar:Lcom/google/android/material/datepicker/MaterialCalendar;

    invoke-virtual {v1}, Lcom/google/android/material/datepicker/MaterialCalendar;->getCurrentMonth()Lcom/google/android/material/datepicker/Month;

    move-result-object v1

    iget-wide v2, v1, Lcom/google/android/material/datepicker/Month;->timeInMillis:J

    invoke-virtual {v0, v2, v3}, Lcom/google/android/material/datepicker/CalendarConstraints$Builder;->setOpenAt(J)Lcom/google/android/material/datepicker/CalendarConstraints$Builder;

    .line 157
    :cond_0
    const-string v1, "CALENDAR_CONSTRAINTS_KEY"

    invoke-virtual {v0}, Lcom/google/android/material/datepicker/CalendarConstraints$Builder;->build()Lcom/google/android/material/datepicker/CalendarConstraints;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 158
    const-string v1, "TITLE_TEXT_RES_ID_KEY"

    iget v2, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->titleTextResId:I

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 159
    const-string v1, "TITLE_TEXT_KEY"

    iget-object v2, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->titleText:Ljava/lang/CharSequence;

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 160
    return-void
.end method

.method public onStart()V
    .locals 8

    .prologue
    .local p0, "this":Lcom/google/android/material/datepicker/MaterialDatePicker;, "Lcom/google/android/material/datepicker/MaterialDatePicker<TS;>;"
    const/4 v3, -0x1

    const/4 v1, -0x2

    .line 272
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onStart()V

    .line 273
    invoke-virtual {p0}, Lcom/google/android/material/datepicker/MaterialDatePicker;->requireDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v7

    .line 275
    .local v7, "window":Landroid/view/Window;
    iget-boolean v0, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->fullscreen:Z

    if-eqz v0, :cond_0

    .line 276
    invoke-virtual {v7, v3, v3}, Landroid/view/Window;->setLayout(II)V

    .line 277
    iget-object v0, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->background:Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-virtual {v7, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 288
    :goto_0
    invoke-direct {p0}, Lcom/google/android/material/datepicker/MaterialDatePicker;->startPickerFragment()V

    .line 289
    return-void

    .line 279
    :cond_0
    invoke-virtual {v7, v1, v1}, Landroid/view/Window;->setLayout(II)V

    .line 281
    invoke-virtual {p0}, Lcom/google/android/material/datepicker/MaterialDatePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/android/material/R$dimen;->mtrl_calendar_dialog_background_inset:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    .line 282
    .local v2, "inset":I
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6, v2, v2, v2, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 283
    .local v6, "insets":Landroid/graphics/Rect;
    new-instance v0, Landroid/graphics/drawable/InsetDrawable;

    iget-object v1, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->background:Lcom/google/android/material/shape/MaterialShapeDrawable;

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-direct/range {v0 .. v5}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    invoke-virtual {v7, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 285
    invoke-virtual {v7}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/google/android/material/dialog/InsetDialogOnTouchListener;

    .line 286
    invoke-virtual {p0}, Lcom/google/android/material/datepicker/MaterialDatePicker;->requireDialog()Landroid/app/Dialog;

    move-result-object v3

    invoke-direct {v1, v3, v6}, Lcom/google/android/material/dialog/InsetDialogOnTouchListener;-><init>(Landroid/app/Dialog;Landroid/graphics/Rect;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_0
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 293
    .local p0, "this":Lcom/google/android/material/datepicker/MaterialDatePicker;, "Lcom/google/android/material/datepicker/MaterialDatePicker<TS;>;"
    iget-object v0, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->pickerFragment:Lcom/google/android/material/datepicker/PickerFragment;

    invoke-virtual {v0}, Lcom/google/android/material/datepicker/PickerFragment;->clearOnSelectionChangedListeners()V

    .line 294
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onStop()V

    .line 295
    return-void
.end method

.method public removeOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Z
    .locals 1
    .param p1, "onCancelListener"    # Landroid/content/DialogInterface$OnCancelListener;

    .prologue
    .line 507
    .local p0, "this":Lcom/google/android/material/datepicker/MaterialDatePicker;, "Lcom/google/android/material/datepicker/MaterialDatePicker<TS;>;"
    iget-object v0, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->onCancelListeners:Ljava/util/LinkedHashSet;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashSet;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public removeOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Z
    .locals 1
    .param p1, "onDismissListener"    # Landroid/content/DialogInterface$OnDismissListener;

    .prologue
    .line 525
    .local p0, "this":Lcom/google/android/material/datepicker/MaterialDatePicker;, "Lcom/google/android/material/datepicker/MaterialDatePicker<TS;>;"
    iget-object v0, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->onDismissListeners:Ljava/util/LinkedHashSet;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashSet;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public removeOnNegativeButtonClickListener(Landroid/view/View$OnClickListener;)Z
    .locals 1
    .param p1, "onNegativeButtonClickListener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 485
    .local p0, "this":Lcom/google/android/material/datepicker/MaterialDatePicker;, "Lcom/google/android/material/datepicker/MaterialDatePicker<TS;>;"
    iget-object v0, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->onNegativeButtonClickListeners:Ljava/util/LinkedHashSet;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashSet;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public removeOnPositiveButtonClickListener(Lcom/google/android/material/datepicker/MaterialPickerOnPositiveButtonClickListener;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/material/datepicker/MaterialPickerOnPositiveButtonClickListener",
            "<-TS;>;)Z"
        }
    .end annotation

    .prologue
    .line 463
    .local p0, "this":Lcom/google/android/material/datepicker/MaterialDatePicker;, "Lcom/google/android/material/datepicker/MaterialDatePicker<TS;>;"
    .local p1, "onPositiveButtonClickListener":Lcom/google/android/material/datepicker/MaterialPickerOnPositiveButtonClickListener;, "Lcom/google/android/material/datepicker/MaterialPickerOnPositiveButtonClickListener<-TS;>;"
    iget-object v0, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->onPositiveButtonClickListeners:Ljava/util/LinkedHashSet;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashSet;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.class public final Lcom/google/android/material/datepicker/MaterialTextInputPicker;
.super Lcom/google/android/material/datepicker/PickerFragment;
.source "MaterialTextInputPicker.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
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

.field private static final DATE_SELECTOR_KEY:Ljava/lang/String; = "DATE_SELECTOR_KEY"

.field private static final THEME_RES_ID_KEY:Ljava/lang/String; = "THEME_RES_ID_KEY"


# instance fields
.field private calendarConstraints:Lcom/google/android/material/datepicker/CalendarConstraints;
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

.field private themeResId:I
    .annotation build Landroidx/annotation/StyleRes;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    .local p0, "this":Lcom/google/android/material/datepicker/MaterialTextInputPicker;, "Lcom/google/android/material/datepicker/MaterialTextInputPicker<TS;>;"
    invoke-direct {p0}, Lcom/google/android/material/datepicker/PickerFragment;-><init>()V

    return-void
.end method

.method static newInstance(Lcom/google/android/material/datepicker/DateSelector;ILcom/google/android/material/datepicker/CalendarConstraints;)Lcom/google/android/material/datepicker/MaterialTextInputPicker;
    .locals 3
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
            "Lcom/google/android/material/datepicker/MaterialTextInputPicker",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 50
    .local p0, "dateSelector":Lcom/google/android/material/datepicker/DateSelector;, "Lcom/google/android/material/datepicker/DateSelector<TT;>;"
    new-instance v1, Lcom/google/android/material/datepicker/MaterialTextInputPicker;

    invoke-direct {v1}, Lcom/google/android/material/datepicker/MaterialTextInputPicker;-><init>()V

    .line 51
    .local v1, "materialCalendar":Lcom/google/android/material/datepicker/MaterialTextInputPicker;, "Lcom/google/android/material/datepicker/MaterialTextInputPicker<TT;>;"
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 52
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "THEME_RES_ID_KEY"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 53
    const-string v2, "DATE_SELECTOR_KEY"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 54
    const-string v2, "CALENDAR_CONSTRAINTS_KEY"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 55
    invoke-virtual {v1, v0}, Lcom/google/android/material/datepicker/MaterialTextInputPicker;->setArguments(Landroid/os/Bundle;)V

    .line 56
    return-object v1
.end method


# virtual methods
.method public getDateSelector()Lcom/google/android/material/datepicker/DateSelector;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/material/datepicker/DateSelector",
            "<TS;>;"
        }
    .end annotation

    .prologue
    .line 109
    .local p0, "this":Lcom/google/android/material/datepicker/MaterialTextInputPicker;, "Lcom/google/android/material/datepicker/MaterialTextInputPicker<TS;>;"
    iget-object v0, p0, Lcom/google/android/material/datepicker/MaterialTextInputPicker;->dateSelector:Lcom/google/android/material/datepicker/DateSelector;

    if-nez v0, :cond_0

    .line 110
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "dateSelector should not be null. Use MaterialTextInputPicker#newInstance() to create this fragment with a DateSelector, and call this method after the fragment has been created."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/datepicker/MaterialTextInputPicker;->dateSelector:Lcom/google/android/material/datepicker/DateSelector;

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "bundle"    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 69
    .local p0, "this":Lcom/google/android/material/datepicker/MaterialTextInputPicker;, "Lcom/google/android/material/datepicker/MaterialTextInputPicker<TS;>;"
    invoke-super {p0, p1}, Lcom/google/android/material/datepicker/PickerFragment;->onCreate(Landroid/os/Bundle;)V

    .line 70
    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/material/datepicker/MaterialTextInputPicker;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 71
    .local v0, "activeBundle":Landroid/os/Bundle;
    :goto_0
    const-string v1, "THEME_RES_ID_KEY"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/google/android/material/datepicker/MaterialTextInputPicker;->themeResId:I

    .line 72
    const-string v1, "DATE_SELECTOR_KEY"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/datepicker/DateSelector;

    iput-object v1, p0, Lcom/google/android/material/datepicker/MaterialTextInputPicker;->dateSelector:Lcom/google/android/material/datepicker/DateSelector;

    .line 73
    const-string v1, "CALENDAR_CONSTRAINTS_KEY"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/datepicker/CalendarConstraints;

    iput-object v1, p0, Lcom/google/android/material/datepicker/MaterialTextInputPicker;->calendarConstraints:Lcom/google/android/material/datepicker/CalendarConstraints;

    .line 74
    return-void

    .end local v0    # "activeBundle":Landroid/os/Bundle;
    :cond_0
    move-object v0, p1

    .line 70
    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7
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
    .line 82
    .local p0, "this":Lcom/google/android/material/datepicker/MaterialTextInputPicker;, "Lcom/google/android/material/datepicker/MaterialTextInputPicker<TS;>;"
    new-instance v6, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Lcom/google/android/material/datepicker/MaterialTextInputPicker;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v2, p0, Lcom/google/android/material/datepicker/MaterialTextInputPicker;->themeResId:I

    invoke-direct {v6, v0, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 83
    .local v6, "themedContext":Landroid/view/ContextThemeWrapper;
    invoke-virtual {p1, v6}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 84
    .local v1, "themedInflater":Landroid/view/LayoutInflater;
    iget-object v0, p0, Lcom/google/android/material/datepicker/MaterialTextInputPicker;->dateSelector:Lcom/google/android/material/datepicker/DateSelector;

    iget-object v4, p0, Lcom/google/android/material/datepicker/MaterialTextInputPicker;->calendarConstraints:Lcom/google/android/material/datepicker/CalendarConstraints;

    new-instance v5, Lcom/google/android/material/datepicker/MaterialTextInputPicker$1;

    invoke-direct {v5, p0}, Lcom/google/android/material/datepicker/MaterialTextInputPicker$1;-><init>(Lcom/google/android/material/datepicker/MaterialTextInputPicker;)V

    move-object v2, p2

    move-object v3, p3

    invoke-interface/range {v0 .. v5}, Lcom/google/android/material/datepicker/DateSelector;->onCreateTextInputView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;Lcom/google/android/material/datepicker/CalendarConstraints;Lcom/google/android/material/datepicker/OnSelectionChangedListener;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "bundle"    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 61
    .local p0, "this":Lcom/google/android/material/datepicker/MaterialTextInputPicker;, "Lcom/google/android/material/datepicker/MaterialTextInputPicker<TS;>;"
    invoke-super {p0, p1}, Lcom/google/android/material/datepicker/PickerFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 62
    const-string v0, "THEME_RES_ID_KEY"

    iget v1, p0, Lcom/google/android/material/datepicker/MaterialTextInputPicker;->themeResId:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 63
    const-string v0, "DATE_SELECTOR_KEY"

    iget-object v1, p0, Lcom/google/android/material/datepicker/MaterialTextInputPicker;->dateSelector:Lcom/google/android/material/datepicker/DateSelector;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 64
    const-string v0, "CALENDAR_CONSTRAINTS_KEY"

    iget-object v1, p0, Lcom/google/android/material/datepicker/MaterialTextInputPicker;->calendarConstraints:Lcom/google/android/material/datepicker/CalendarConstraints;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 65
    return-void
.end method

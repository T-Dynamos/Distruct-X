.class public Lcom/google/android/material/datepicker/MaterialStyledDatePickerDialog;
.super Landroid/app/DatePickerDialog;
.source "MaterialStyledDatePickerDialog.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;,
        .enum Landroidx/annotation/RestrictTo$Scope;->TESTS:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field private static final DEF_STYLE_ATTR:I = 0x101035c
    .annotation build Landroidx/annotation/AttrRes;
    .end annotation
.end field

.field private static final DEF_STYLE_RES:I
    .annotation build Landroidx/annotation/StyleRes;
    .end annotation
.end field


# instance fields
.field private final background:Landroid/graphics/drawable/Drawable;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final backgroundInsets:Landroid/graphics/Rect;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    sget v0, Lcom/google/android/material/R$style;->MaterialAlertDialog_MaterialComponents_Picker_Date_Spinner:I

    sput v0, Lcom/google/android/material/datepicker/MaterialStyledDatePickerDialog;->DEF_STYLE_RES:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 59
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/material/datepicker/MaterialStyledDatePickerDialog;-><init>(Landroid/content/Context;I)V

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "themeResId"    # I

    .prologue
    const/4 v4, -0x1

    .line 63
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v5, v4

    move v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/material/datepicker/MaterialStyledDatePickerDialog;-><init>(Landroid/content/Context;ILandroid/app/DatePickerDialog$OnDateSetListener;III)V

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILandroid/app/DatePickerDialog$OnDateSetListener;III)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "themeResId"    # I
    .param p3, "listener"    # Landroid/app/DatePickerDialog$OnDateSetListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "year"    # I
    .param p5, "monthOfYear"    # I
    .param p6, "dayOfMonth"    # I

    .prologue
    const v5, 0x101035c

    .line 83
    invoke-direct/range {p0 .. p6}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;ILandroid/app/DatePickerDialog$OnDateSetListener;III)V

    .line 84
    invoke-virtual {p0}, Lcom/google/android/material/datepicker/MaterialStyledDatePickerDialog;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 88
    invoke-virtual {p0}, Lcom/google/android/material/datepicker/MaterialStyledDatePickerDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/google/android/material/R$attr;->colorSurface:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v4

    .line 87
    invoke-static {v2, v3, v4}, Lcom/google/android/material/resources/MaterialAttributes;->resolveOrThrow(Landroid/content/Context;ILjava/lang/String;)I

    move-result v1

    .line 90
    .local v1, "surfaceColor":I
    new-instance v0, Lcom/google/android/material/shape/MaterialShapeDrawable;

    const/4 v2, 0x0

    sget v3, Lcom/google/android/material/datepicker/MaterialStyledDatePickerDialog;->DEF_STYLE_RES:I

    invoke-direct {v0, p1, v2, v5, v3}, Lcom/google/android/material/shape/MaterialShapeDrawable;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 93
    .local v0, "materialShapeDrawable":Lcom/google/android/material/shape/MaterialShapeDrawable;
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_0

    .line 94
    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setFillColor(Landroid/content/res/ColorStateList;)V

    .line 99
    :goto_0
    sget v2, Lcom/google/android/material/datepicker/MaterialStyledDatePickerDialog;->DEF_STYLE_RES:I

    .line 100
    invoke-static {p1, v5, v2}, Lcom/google/android/material/dialog/MaterialDialogs;->getDialogBackgroundInsets(Landroid/content/Context;II)Landroid/graphics/Rect;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/material/datepicker/MaterialStyledDatePickerDialog;->backgroundInsets:Landroid/graphics/Rect;

    .line 101
    iget-object v2, p0, Lcom/google/android/material/datepicker/MaterialStyledDatePickerDialog;->backgroundInsets:Landroid/graphics/Rect;

    invoke-static {v0, v2}, Lcom/google/android/material/dialog/MaterialDialogs;->insetDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)Landroid/graphics/drawable/InsetDrawable;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/material/datepicker/MaterialStyledDatePickerDialog;->background:Landroid/graphics/drawable/Drawable;

    .line 102
    return-void

    .line 96
    :cond_0
    const/4 v2, 0x0

    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setFillColor(Landroid/content/res/ColorStateList;)V

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "listener"    # Landroid/app/DatePickerDialog$OnDateSetListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "year"    # I
    .param p4, "month"    # I
    .param p5, "dayOfMonth"    # I

    .prologue
    .line 72
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/material/datepicker/MaterialStyledDatePickerDialog;-><init>(Landroid/content/Context;ILandroid/app/DatePickerDialog$OnDateSetListener;III)V

    .line 73
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 106
    invoke-super {p0, p1}, Landroid/app/DatePickerDialog;->onCreate(Landroid/os/Bundle;)V

    .line 107
    invoke-virtual {p0}, Lcom/google/android/material/datepicker/MaterialStyledDatePickerDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/datepicker/MaterialStyledDatePickerDialog;->background:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 108
    invoke-virtual {p0}, Lcom/google/android/material/datepicker/MaterialStyledDatePickerDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 109
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/google/android/material/dialog/InsetDialogOnTouchListener;

    iget-object v2, p0, Lcom/google/android/material/datepicker/MaterialStyledDatePickerDialog;->backgroundInsets:Landroid/graphics/Rect;

    invoke-direct {v1, p0, v2}, Lcom/google/android/material/dialog/InsetDialogOnTouchListener;-><init>(Landroid/app/Dialog;Landroid/graphics/Rect;)V

    .line 110
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 111
    return-void
.end method

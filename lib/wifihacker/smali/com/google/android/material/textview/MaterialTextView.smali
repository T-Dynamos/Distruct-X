.class public Lcom/google/android/material/textview/MaterialTextView;
.super Landroidx/appcompat/widget/AppCompatTextView;
.source "MaterialTextView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 79
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/material/textview/MaterialTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 80
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 83
    const v0, 0x1010084

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/textview/MaterialTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 84
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 88
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/material/textview/MaterialTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 89
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 93
    invoke-static {p1, p2, p3, p4}, Lcom/google/android/material/theme/overlay/MaterialThemeOverlay;->wrap(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;

    move-result-object v2

    invoke-direct {p0, v2, p2, p3}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 95
    invoke-virtual {p0}, Lcom/google/android/material/textview/MaterialTextView;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 97
    invoke-static {p1}, Lcom/google/android/material/textview/MaterialTextView;->canApplyTextAppearanceLineHeight(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 98
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    .line 100
    .local v1, "theme":Landroid/content/res/Resources$Theme;
    invoke-static {p1, v1, p2, p3, p4}, Lcom/google/android/material/textview/MaterialTextView;->viewAttrsHasLineHeight(Landroid/content/Context;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;II)Z

    move-result v2

    if-nez v2, :cond_0

    .line 101
    invoke-static {v1, p2, p3, p4}, Lcom/google/android/material/textview/MaterialTextView;->findViewAppearanceResourceId(Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;II)I

    move-result v0

    .line 102
    .local v0, "resId":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 103
    invoke-direct {p0, v1, v0}, Lcom/google/android/material/textview/MaterialTextView;->applyLineHeightFromViewAppearance(Landroid/content/res/Resources$Theme;I)V

    .line 107
    .end local v0    # "resId":I
    .end local v1    # "theme":Landroid/content/res/Resources$Theme;
    :cond_0
    return-void
.end method

.method private applyLineHeightFromViewAppearance(Landroid/content/res/Resources$Theme;I)V
    .locals 6
    .param p1, "theme"    # Landroid/content/res/Resources$Theme;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "resId"    # I

    .prologue
    .line 119
    sget-object v2, Lcom/google/android/material/R$styleable;->MaterialTextAppearance:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 122
    .local v0, "attributes":Landroid/content/res/TypedArray;
    invoke-virtual {p0}, Lcom/google/android/material/textview/MaterialTextView;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [I

    const/4 v4, 0x0

    sget v5, Lcom/google/android/material/R$styleable;->MaterialTextAppearance_android_lineHeight:I

    aput v5, v3, v4

    const/4 v4, 0x1

    sget v5, Lcom/google/android/material/R$styleable;->MaterialTextAppearance_lineHeight:I

    aput v5, v3, v4

    .line 121
    invoke-static {v2, v0, v3}, Lcom/google/android/material/textview/MaterialTextView;->readFirstAvailableDimension(Landroid/content/Context;Landroid/content/res/TypedArray;[I)I

    move-result v1

    .line 126
    .local v1, "lineHeight":I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 128
    if-ltz v1, :cond_0

    .line 129
    invoke-virtual {p0, v1}, Lcom/google/android/material/textview/MaterialTextView;->setLineHeight(I)V

    .line 131
    :cond_0
    return-void
.end method

.method private static canApplyTextAppearanceLineHeight(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 134
    sget v0, Lcom/google/android/material/R$attr;->textAppearanceLineHeightEnabled:I

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/google/android/material/resources/MaterialAttributes;->resolveBoolean(Landroid/content/Context;IZ)Z

    move-result v0

    return v0
.end method

.method private static findViewAppearanceResourceId(Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;II)I
    .locals 4
    .param p0, "theme"    # Landroid/content/res/Resources$Theme;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "defStyleAttr"    # I
    .param p3, "defStyleRes"    # I

    .prologue
    .line 172
    sget-object v2, Lcom/google/android/material/R$styleable;->MaterialTextView:[I

    .line 173
    invoke-virtual {p0, p1, v2, p2, p3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 175
    .local v1, "attributes":Landroid/content/res/TypedArray;
    sget v2, Lcom/google/android/material/R$styleable;->MaterialTextView_android_textAppearance:I

    const/4 v3, -0x1

    .line 176
    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 177
    .local v0, "appearanceAttrId":I
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 178
    return v0
.end method

.method private static varargs readFirstAvailableDimension(Landroid/content/Context;Landroid/content/res/TypedArray;[I)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "attributes"    # Landroid/content/res/TypedArray;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "indices"    # [I
        .annotation build Landroidx/annotation/NonNull;
        .end annotation

        .annotation build Landroidx/annotation/StyleableRes;
        .end annotation
    .end param

    .prologue
    .line 141
    const/4 v1, -0x1

    .line 143
    .local v1, "lineHeight":I
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_0
    array-length v2, p2

    if-ge v0, v2, :cond_0

    if-gez v1, :cond_0

    .line 144
    aget v2, p2, v0

    const/4 v3, -0x1

    invoke-static {p0, p1, v2, v3}, Lcom/google/android/material/resources/MaterialResources;->getDimensionPixelSize(Landroid/content/Context;Landroid/content/res/TypedArray;II)I

    move-result v1

    .line 143
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 147
    :cond_0
    return v1
.end method

.method private static viewAttrsHasLineHeight(Landroid/content/Context;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;II)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "theme"    # Landroid/content/res/Resources$Theme;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 156
    sget-object v4, Lcom/google/android/material/R$styleable;->MaterialTextView:[I

    .line 157
    invoke-virtual {p1, p2, v4, p3, p4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 159
    .local v0, "attributes":Landroid/content/res/TypedArray;
    const/4 v4, 0x2

    new-array v4, v4, [I

    sget v5, Lcom/google/android/material/R$styleable;->MaterialTextView_android_lineHeight:I

    aput v5, v4, v3

    sget v5, Lcom/google/android/material/R$styleable;->MaterialTextView_lineHeight:I

    aput v5, v4, v2

    .line 160
    invoke-static {p0, v0, v4}, Lcom/google/android/material/textview/MaterialTextView;->readFirstAvailableDimension(Landroid/content/Context;Landroid/content/res/TypedArray;[I)I

    move-result v1

    .line 165
    .local v1, "lineHeight":I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 167
    const/4 v4, -0x1

    if-eq v1, v4, :cond_0

    :goto_0
    return v2

    :cond_0
    move v2, v3

    goto :goto_0
.end method


# virtual methods
.method public setTextAppearance(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "resId"    # I

    .prologue
    .line 111
    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatTextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 113
    invoke-static {p1}, Lcom/google/android/material/textview/MaterialTextView;->canApplyTextAppearanceLineHeight(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/google/android/material/textview/MaterialTextView;->applyLineHeightFromViewAppearance(Landroid/content/res/Resources$Theme;I)V

    .line 116
    :cond_0
    return-void
.end method

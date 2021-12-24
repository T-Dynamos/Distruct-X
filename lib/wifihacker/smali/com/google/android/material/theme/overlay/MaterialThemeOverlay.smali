.class public Lcom/google/android/material/theme/overlay/MaterialThemeOverlay;
.super Ljava/lang/Object;
.source "MaterialThemeOverlay.java"


# static fields
.field private static final ANDROID_THEME_OVERLAY_ATTRS:[I

.field private static final MATERIAL_THEME_OVERLAY_ATTR:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 48
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/high16 v1, 0x1010000

    aput v1, v0, v2

    sget v1, Lcom/google/android/material/R$attr;->theme:I

    aput v1, v0, v3

    sput-object v0, Lcom/google/android/material/theme/overlay/MaterialThemeOverlay;->ANDROID_THEME_OVERLAY_ATTRS:[I

    .line 51
    new-array v0, v3, [I

    sget v1, Lcom/google/android/material/R$attr;->materialThemeOverlay:I

    aput v1, v0, v2

    sput-object v0, Lcom/google/android/material/theme/overlay/MaterialThemeOverlay;->MATERIAL_THEME_OVERLAY_ATTR:[I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    return-void
.end method

.method private static obtainAndroidThemeOverlayId(Landroid/content/Context;Landroid/util/AttributeSet;)I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "attrs"    # Landroid/util/AttributeSet;
    .annotation build Landroidx/annotation/StyleRes;
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 94
    sget-object v3, Lcom/google/android/material/theme/overlay/MaterialThemeOverlay;->ANDROID_THEME_OVERLAY_ATTRS:[I

    invoke-virtual {p0, p1, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 95
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v4, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 96
    .local v1, "androidThemeId":I
    const/4 v3, 0x1

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 97
    .local v2, "appThemeId":I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 99
    if-eqz v1, :cond_0

    .end local v1    # "androidThemeId":I
    :goto_0
    return v1

    .restart local v1    # "androidThemeId":I
    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method private static obtainMaterialThemeOverlayId(Landroid/content/Context;Landroid/util/AttributeSet;II)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "defStyleAttr"    # I
        .annotation build Landroidx/annotation/AttrRes;
        .end annotation
    .end param
    .param p3, "defStyleRes"    # I
        .annotation build Landroidx/annotation/StyleRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/StyleRes;
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 112
    sget-object v2, Lcom/google/android/material/theme/overlay/MaterialThemeOverlay;->MATERIAL_THEME_OVERLAY_ATTR:[I

    .line 113
    invoke-virtual {p0, p1, v2, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 115
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 116
    .local v1, "materialThemeOverlayId":I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 118
    return v1
.end method

.method public static wrap(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "defStyleAttr"    # I
        .annotation build Landroidx/annotation/AttrRes;
        .end annotation
    .end param
    .param p3, "defStyleRes"    # I
        .annotation build Landroidx/annotation/StyleRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 66
    .line 67
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/material/theme/overlay/MaterialThemeOverlay;->obtainMaterialThemeOverlayId(Landroid/content/Context;Landroid/util/AttributeSet;II)I

    move-result v3

    .line 68
    .local v3, "materialThemeOverlayId":I
    instance-of v4, p0, Landroidx/appcompat/view/ContextThemeWrapper;

    if-eqz v4, :cond_2

    move-object v4, p0

    check-cast v4, Landroidx/appcompat/view/ContextThemeWrapper;

    .line 69
    invoke-virtual {v4}, Landroidx/appcompat/view/ContextThemeWrapper;->getThemeResId()I

    move-result v4

    if-ne v4, v3, :cond_2

    move v1, v5

    .line 71
    .local v1, "contextHasOverlay":Z
    :goto_0
    if-eqz v3, :cond_0

    if-eqz v1, :cond_3

    :cond_0
    move-object v2, p0

    .line 84
    :cond_1
    :goto_1
    return-object v2

    .line 69
    .end local v1    # "contextHasOverlay":Z
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 75
    .restart local v1    # "contextHasOverlay":Z
    :cond_3
    new-instance v2, Landroidx/appcompat/view/ContextThemeWrapper;

    invoke-direct {v2, p0, v3}, Landroidx/appcompat/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 79
    .local v2, "contextThemeWrapper":Landroid/content/Context;
    invoke-static {p0, p1}, Lcom/google/android/material/theme/overlay/MaterialThemeOverlay;->obtainAndroidThemeOverlayId(Landroid/content/Context;Landroid/util/AttributeSet;)I

    move-result v0

    .line 80
    .local v0, "androidThemeOverlayId":I
    if-eqz v0, :cond_1

    .line 81
    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    invoke-virtual {v4, v0, v5}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    goto :goto_1
.end method

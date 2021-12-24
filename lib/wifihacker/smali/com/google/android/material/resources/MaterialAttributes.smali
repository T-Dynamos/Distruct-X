.class public Lcom/google/android/material/resources/MaterialAttributes;
.super Ljava/lang/Object;
.source "MaterialAttributes.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static resolve(Landroid/content/Context;I)Landroid/util/TypedValue;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "attributeResId"    # I
        .annotation build Landroidx/annotation/AttrRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 46
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 47
    .local v0, "typedValue":Landroid/util/TypedValue;
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 50
    .end local v0    # "typedValue":Landroid/util/TypedValue;
    :goto_0
    return-object v0

    .restart local v0    # "typedValue":Landroid/util/TypedValue;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static resolveBoolean(Landroid/content/Context;IZ)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "attributeResId"    # I
        .annotation build Landroidx/annotation/AttrRes;
        .end annotation
    .end param
    .param p2, "defaultValue"    # Z

    .prologue
    .line 106
    invoke-static {p0, p1}, Lcom/google/android/material/resources/MaterialAttributes;->resolve(Landroid/content/Context;I)Landroid/util/TypedValue;

    move-result-object v0

    .line 107
    .local v0, "typedValue":Landroid/util/TypedValue;
    if-eqz v0, :cond_0

    iget v1, v0, Landroid/util/TypedValue;->type:I

    const/16 v2, 0x12

    if-ne v1, v2, :cond_0

    iget v1, v0, Landroid/util/TypedValue;->data:I

    if-eqz v1, :cond_1

    const/4 p2, 0x1

    .end local p2    # "defaultValue":Z
    :cond_0
    :goto_0
    return p2

    .restart local p2    # "defaultValue":Z
    :cond_1
    const/4 p2, 0x0

    goto :goto_0
.end method

.method public static resolveBooleanOrThrow(Landroid/content/Context;ILjava/lang/String;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "attributeResId"    # I
        .annotation build Landroidx/annotation/AttrRes;
        .end annotation
    .end param
    .param p2, "errorMessageComponent"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 97
    invoke-static {p0, p1, p2}, Lcom/google/android/material/resources/MaterialAttributes;->resolveOrThrow(Landroid/content/Context;ILjava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static resolveDimension(Landroid/content/Context;II)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "attributeResId"    # I
        .annotation build Landroidx/annotation/AttrRes;
        .end annotation
    .end param
    .param p2, "defaultDimenResId"    # I
        .annotation build Landroidx/annotation/DimenRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Px;
    .end annotation

    .prologue
    .line 138
    invoke-static {p0, p1}, Lcom/google/android/material/resources/MaterialAttributes;->resolve(Landroid/content/Context;I)Landroid/util/TypedValue;

    move-result-object v0

    .line 139
    .local v0, "dimensionValue":Landroid/util/TypedValue;
    if-eqz v0, :cond_0

    iget v1, v0, Landroid/util/TypedValue;->type:I

    const/4 v2, 0x5

    if-eq v1, v2, :cond_1

    .line 140
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    .line 142
    :goto_0
    return v1

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    goto :goto_0
.end method

.method public static resolveInteger(Landroid/content/Context;II)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "attributeResId"    # I
        .annotation build Landroidx/annotation/AttrRes;
        .end annotation
    .end param
    .param p2, "defaultValue"    # I

    .prologue
    .line 118
    invoke-static {p0, p1}, Lcom/google/android/material/resources/MaterialAttributes;->resolve(Landroid/content/Context;I)Landroid/util/TypedValue;

    move-result-object v0

    .line 119
    .local v0, "typedValue":Landroid/util/TypedValue;
    if-eqz v0, :cond_0

    iget v1, v0, Landroid/util/TypedValue;->type:I

    const/16 v2, 0x10

    if-ne v1, v2, :cond_0

    iget p2, v0, Landroid/util/TypedValue;->data:I

    .end local p2    # "defaultValue":I
    :cond_0
    return p2
.end method

.method public static resolveMinimumAccessibleTouchTarget(Landroid/content/Context;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Px;
    .end annotation

    .prologue
    .line 127
    sget v0, Lcom/google/android/material/R$attr;->minTouchTargetSize:I

    sget v1, Lcom/google/android/material/R$dimen;->mtrl_min_touch_target_size:I

    invoke-static {p0, v0, v1}, Lcom/google/android/material/resources/MaterialAttributes;->resolveDimension(Landroid/content/Context;II)I

    move-result v0

    return v0
.end method

.method public static resolveOrThrow(Landroid/content/Context;ILjava/lang/String;)I
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "attributeResId"    # I
        .annotation build Landroidx/annotation/AttrRes;
        .end annotation
    .end param
    .param p2, "errorMessageComponent"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 62
    invoke-static {p0, p1}, Lcom/google/android/material/resources/MaterialAttributes;->resolve(Landroid/content/Context;I)Landroid/util/TypedValue;

    move-result-object v1

    .line 63
    .local v1, "typedValue":Landroid/util/TypedValue;
    if-nez v1, :cond_0

    .line 64
    const-string v0, "%1$s requires a value for the %2$s attribute to be set in your app theme. You can either set the attribute in your theme or update your theme to inherit from Theme.MaterialComponents (or a descendant)."

    .line 68
    .local v0, "errorMessage":Ljava/lang/String;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    const/4 v4, 0x1

    .line 72
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 69
    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 74
    .end local v0    # "errorMessage":Ljava/lang/String;
    :cond_0
    iget v2, v1, Landroid/util/TypedValue;->data:I

    return v2
.end method

.method public static resolveOrThrow(Landroid/view/View;I)I
    .locals 2
    .param p0, "componentView"    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "attributeResId"    # I
        .annotation build Landroidx/annotation/AttrRes;
        .end annotation
    .end param

    .prologue
    .line 84
    .line 85
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    .line 84
    invoke-static {v0, p1, v1}, Lcom/google/android/material/resources/MaterialAttributes;->resolveOrThrow(Landroid/content/Context;ILjava/lang/String;)I

    move-result v0

    return v0
.end method
